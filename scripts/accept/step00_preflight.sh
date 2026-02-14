#!/usr/bin/env bash
set -u

SEG="${1:-seg1}"

# Allow caller to pin one UTC run id across segments
ACC_UTC="${ACC_UTC:-$(date -u +%Y%m%dT%H%M%SZ)}"
STEP_ID="step-00"
ACC_DIR="evidence/_acceptance/${ACC_UTC}/${STEP_ID}"
LOG_DIR="${ACC_DIR}/logs"

have() { command -v "$1" >/dev/null 2>&1; }

tmo() {
  # tmo <seconds> <cmd...>
  local s="$1"; shift
  if have timeout; then
    timeout --preserve-status "${s}s" "$@"
  else
    "$@"
  fi
}

ensure_dirs() {
  mkdir -p "${LOG_DIR}"
}

repo_root() {
  if git rev-parse --show-toplevel >/dev/null 2>&1; then
    git rev-parse --show-toplevel
  else
    pwd
  fi
}

seg1() {
  ensure_dirs
  local root; root="$(repo_root)"
  cd "${root}" || exit 2

  {
    echo "== SEG1: env + repo =="
    echo "UTC_NOW=$(date -u +%Y-%m-%dT%H:%M:%SZ)"
    echo "PWD=$(pwd)"
    echo "WHOAMI=$(whoami 2>/dev/null || true)"
    echo "SHELL=${SHELL:-}"
    echo "TERM=${TERM:-}"
    echo "CODESPACES=${CODESPACES:-}"
    echo "REMOTE_CONTAINERS=${REMOTE_CONTAINERS:-}"
    echo "DEVCONTAINER=${DEVCONTAINER:-}"
    echo "IN_DOCKER=$([ -f /.dockerenv ] && echo YES || echo NO)"
    echo

    echo "== Git sanity =="
    git rev-parse --is-inside-work-tree 2>/dev/null && echo "GIT_WORKTREE=YES" || echo "GIT_WORKTREE=NO"
    git rev-parse --show-toplevel 2>/dev/null || true
    git remote -v 2>/dev/null || true
    git status -sb 2>/dev/null || true
    git rev-parse HEAD 2>/dev/null || true
    echo

    echo "== Repo structure quick scan =="
    ls -la . 2>/dev/null || true
    echo
    echo "-- .github/workflows --"
    ls -la .github/workflows 2>/dev/null || echo "(MISSING .github/workflows)"
    echo
    echo "-- .devcontainer --"
    ls -la .devcontainer 2>/dev/null || echo "(MISSING .devcontainer)"
    echo
    echo "-- evidence/_acceptance --"
    mkdir -p evidence/_acceptance 2>/dev/null || true
    ls -la evidence/_acceptance 2>/dev/null || true
    echo

    echo "== Token presence (NO VALUE) =="
    if [ -n "${GH_TOKEN:-}" ]; then echo "GH_TOKEN_SET=YES len=${#GH_TOKEN}"; else echo "GH_TOKEN_SET=NO"; fi
    if [ -n "${GITHUB_TOKEN:-}" ]; then echo "GITHUB_TOKEN_SET=YES len=${#GITHUB_TOKEN}"; else echo "GITHUB_TOKEN_SET=NO"; fi
  } > "${ACC_DIR}/repo_status.txt" 2> "${LOG_DIR}/seg1.stderr.log"

  echo "SEG1_OK=1" > "${ACC_DIR}/seg1.rc"
}

seg2() {
  ensure_dirs
  local root; root="$(repo_root)"
  cd "${root}" || exit 2

  {
    echo "== SEG2: toolchain versions =="
    echo "UTC_NOW=$(date -u +%Y-%m-%dT%H:%M:%SZ)"
    echo

    echo "-- core --"
    (have git && git --version) || echo "git=MISSING"
    (have bash && bash --version | head -n 1) || true
    (have uname && uname -a) || true
    echo

    echo "-- gh (GitHub CLI) --"
    (have gh && gh --version) || echo "gh=MISSING"
    # auth status may fail; do not block
    if have gh; then
      tmo 8 gh auth status 2>&1 | sed -E 's/([Tt]oken: ).+/\1***MASKED***/g' || true
    fi
    echo

    echo "-- docker --"
    if have docker; then
      tmo 8 docker version 2>&1 || true
      tmo 8 docker info 2>&1 || true
    else
      echo "docker=MISSING"
    fi
    echo

    echo "-- node/perl/jq/python (presence only) --"
    (have node && node -v) || echo "node=MISSING"
    (have perl && perl -v | head -n 2) || echo "perl=MISSING"
    (have jq && jq --version) || echo "jq=MISSING"
    (have python3 && python3 --version) || echo "python3=MISSING"
    (have python && python --version) || echo "python=MISSING"
    echo

    echo "-- opencode/bun --"
    (have opencode && opencode --version) || echo "opencode=MISSING"
    (have bun && bun --version) || echo "bun=MISSING"

    echo
    echo "-- timeout/tee --"
    (have timeout && timeout --version | head -n 1) || echo "timeout=MISSING"
    (have tee && tee --version | head -n 1) || echo "tee=MISSING"
  } > "${ACC_DIR}/tool_versions.txt" 2> "${LOG_DIR}/seg2.stderr.log"

  echo "SEG2_OK=1" > "${ACC_DIR}/seg2.rc"
}

json_top_keys() {
  # best-effort: print top-level keys without dumping secrets
  local f="$1"
  if [ ! -f "$f" ]; then return 0; fi
  if have node; then
    node - <<'NODE' "$f" 2>/dev/null || true
const fs = require("fs");
const p = process.argv[1];
try {
  const o = JSON.parse(fs.readFileSync(p, "utf8"));
  const keys = Object.keys(o).sort();
  console.log(keys.join(","));
} catch (e) {
  console.log("(JSON_PARSE_FAIL)");
}
NODE
  elif have perl; then
    perl -0777 -ne '
      eval { require JSON::PP; 1 } or do { print "(JSON_PP_MISSING)\n"; exit 0 };
      my $p = $ARGV[0];
      open my $fh, "<", $p or do { print "(OPEN_FAIL)\n"; exit 0 };
      local $/; my $s=<$fh>;
      my $o = eval { JSON::PP->new->decode($s) };
      if (!$o || ref($o) ne "HASH") { print "(JSON_PARSE_FAIL)\n"; exit 0 }
      my @k = sort keys %$o;
      print join(",", @k)."\n";
    ' "$f" 2>/dev/null || true
  else
    echo "(NO_NODE_NO_PERL)"
  fi
}

seg3() {
  ensure_dirs
  local root; root="$(repo_root)"
  cd "${root}" || exit 2

  local CFG_GLOBAL="${HOME}/.config/opencode/opencode.json"
  local CFG_REPO_1="${root}/opencode.json"
  local CFG_REPO_2="${root}/.opencode/opencode.json"
  local AUTH_FILE="${HOME}/.local/share/opencode/auth.json"

  {
    echo "== SEG3: opencode preflight (non-interactive) =="
    echo "UTC_NOW=$(date -u +%Y-%m-%dT%H:%M:%SZ)"
    echo

    echo "-- config file presence (NO CONTENT) --"
    for f in "${CFG_GLOBAL}" "${CFG_REPO_1}" "${CFG_REPO_2}"; do
      if [ -f "$f" ]; then
        echo "FOUND: $f"
        ls -l "$f" || true
        if have sha256sum; then sha256sum "$f" || true; fi
        echo -n "TOP_KEYS: "; json_top_keys "$f"
      else
        echo "MISSING: $f"
      fi
      echo
    done

    echo "-- auth.json presence (NO CONTENT) --"
    if [ -f "${AUTH_FILE}" ]; then
      echo "FOUND: ${AUTH_FILE}"
      ls -l "${AUTH_FILE}" || true
      if have sha256sum; then sha256sum "${AUTH_FILE}" || true; fi
    else
      echo "MISSING: ${AUTH_FILE}"
    fi
    echo

    echo "-- opencode CLI probes (timeouts applied) --"
    if have opencode; then
      echo "[opencode --help]"
      tmo 10 opencode --help 2>&1 | head -n 120 || true
      echo

      echo "[opencode run --help] (verify --dir existence via help)"
      tmo 10 opencode run --help 2>&1 | head -n 160 || true
      echo

      echo "[opencode auth ls] (NO secrets)"
      tmo 10 opencode auth ls 2>&1 || true
      echo

      echo "[opencode agent list]"
      tmo 10 opencode agent list 2>&1 || true
      echo

      echo "[opencode models --verbose] (may be slow; capped)"
      tmo 12 opencode models --verbose 2>&1 | head -n 160 || true
      echo
    else
      echo "opencode=MISSING"
    fi
  } > "${ACC_DIR}/opencode_probe.txt" 2> "${LOG_DIR}/seg3.stderr.log"

  # lightweight docker probe file (separate artifact)
  {
    echo "== Docker probe summary =="
    echo "UTC_NOW=$(date -u +%Y-%m-%dT%H:%M:%SZ)"
    if have docker; then
      tmo 6 docker ps 2>&1 || true
    else
      echo "docker=MISSING"
    fi
  } > "${ACC_DIR}/docker_probe.txt" 2> "${LOG_DIR}/docker_probe.stderr.log"

  # checks_manifest + verdict + index (no jq/python)
  local repo_ok="FAIL"
  git rev-parse --is-inside-work-tree >/dev/null 2>&1 && repo_ok="PASS"

  local opencode_present="FAIL"
  have opencode && opencode_present="PASS"

  local opencode_config_load="UNVERIFIED"
  if have opencode; then
    # if config is invalid, many subcommands will error; we treat that as evidence but mark FAIL
    tmo 8 opencode run --help >/dev/null 2>&1
    rc=$?
    if [ "$rc" -eq 0 ]; then opencode_config_load="PASS"; else opencode_config_load="FAIL"; fi
  fi

  local auth_present="FAIL"
  [ -f "${AUTH_FILE}" ] && auth_present="PASS"

  cat > "${ACC_DIR}/checks_manifest.json" <<JSON
{
  "step_id": "${STEP_ID}",
  "acc_utc": "${ACC_UTC}",
  "checks": [
    {"id":"repo.git_worktree","result":"${repo_ok}","evidence":"repo_status.txt"},
    {"id":"tool.opencode.present","result":"${opencode_present}","evidence":"tool_versions.txt"},
    {"id":"tool.opencode.config_load","result":"${opencode_config_load}","evidence":"opencode_probe.txt"},
    {"id":"opencode.auth_json.present","result":"${auth_present}","evidence":"opencode_probe.txt"},
    {"id":"tool.docker.present","result":"$(have docker && echo PASS || echo FAIL)","evidence":"docker_probe.txt"}
  ]
}
JSON

  # Step verdict: PASS only if minimum evidence files exist (health may still be FAIL inside manifest)
  local verdict="PASS"
  for f in "${ACC_DIR}/repo_status.txt" "${ACC_DIR}/tool_versions.txt" "${ACC_DIR}/opencode_probe.txt" "${ACC_DIR}/docker_probe.txt" "${ACC_DIR}/checks_manifest.json"; do
    [ -s "$f" ] || verdict="FAIL_CLOSED"
  done

  cat > "${ACC_DIR}/verdict.json" <<JSON
{
  "step_id": "${STEP_ID}",
  "acc_utc": "${ACC_UTC}",
  "verdict": "${verdict}",
  "rule": "Missing/Unverified evidence file => FAIL_CLOSED",
  "notes": [
    "This verdict only states whether Step-00 evidence was successfully written and non-empty.",
    "Tool health results are inside checks_manifest.json."
  ]
}
JSON

  cat > "${ACC_DIR}/evidence_index.md" <<MD
# Evidence Index — ${STEP_ID}
- acc_utc: \`${ACC_UTC}\`
- acc_dir: \`${ACC_DIR}\`

## Artifacts
- repo_status.txt
- tool_versions.txt
- opencode_probe.txt
- docker_probe.txt
- checks_manifest.json
- verdict.json

## Logs
- logs/seg1.stderr.log
- logs/seg2.stderr.log
- logs/seg3.stderr.log
- logs/docker_probe.stderr.log
MD

  cat > "${ACC_DIR}/step_report.md" <<MD
# Step-00 Preflight Report

## Decision
- Method: bash (segmented, low terminal-risk)
- Goal: capture repo + toolchain + opencode compatibility evidence (no secrets)

## What you ran
- scripts/accept/step00_preflight.sh seg1
- scripts/accept/step00_preflight.sh seg2
- scripts/accept/step00_preflight.sh seg3

## What to return (Minimum Evidence Set)
Return the files listed in evidence_index.md (and the stderr logs).

## Notes (supporting facts)
- OpenCode uses \`permission\` as the formal tool access control; legacy \`tools\` is deprecated/merged.
- \`mode\` is deprecated; use \`agent\`.
- Provider credentials are stored at \`~/.local/share/opencode/auth.json\`.
MD

  echo "SEG3_OK=1" > "${ACC_DIR}/seg3.rc"
}

case "${SEG}" in
  seg1) seg1 ;;
  seg2) seg2 ;;
  seg3) seg3 ;;
  *) echo "Usage: $0 {seg1|seg2|seg3}" ; exit 64 ;;
esac

