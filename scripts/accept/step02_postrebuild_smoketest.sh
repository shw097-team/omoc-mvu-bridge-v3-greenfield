#!/usr/bin/env bash
set -u

ACC_UTC="${ACC_UTC:-$(date -u +%Y%m%dT%H%M%SZ)}"
STEP_ID="step-02"
ACC_DIR="evidence/_acceptance/${ACC_UTC}/${STEP_ID}"
LOG_DIR="${ACC_DIR}/logs"
ART_DIR="${ACC_DIR}/artifacts"
mkdir -p "${LOG_DIR}" "${ART_DIR}"

have(){ command -v "$1" >/dev/null 2>&1; }

tmo(){
  local s="$1"; shift
  if have timeout; then timeout --preserve-status "${s}s" "$@"; else "$@"; fi
}

{
  echo "UTC_NOW=$(date -u +%Y-%m-%dT%H:%M:%SZ)"
  echo "PWD=$(pwd)"
  echo "IN_DOCKER=$([ -f /.dockerenv ] && echo YES || echo NO)"
  echo
  echo "== tool versions =="
  (have git && git --version) || echo "git=MISSING"
  (have gh && gh --version) || echo "gh=MISSING"
  (have docker && docker --version) || echo "docker=MISSING"
  (have opencode && opencode --version) || echo "opencode=MISSING"
  echo
  echo "== docker smoke =="
  if have docker; then
    tmo 10 docker version 2>&1 || true
    echo
    tmo 10 docker ps 2>&1 || true
  fi
  echo
  echo "== devcontainer config snippet =="
  if [ -f .devcontainer/devcontainer.json ]; then
    ls -la .devcontainer/devcontainer.json
    sed -n '1,160p' .devcontainer/devcontainer.json
  else
    echo ".devcontainer/devcontainer.json=MISSING"
  fi
} > "${ART_DIR}/postrebuild_probe.txt" 2> "${LOG_DIR}/postrebuild_probe.stderr.log"

# Validate JSON using perl JSON::PP if available (no jq/python)
json_ok="FAIL"
if have perl; then
  perl -MJSON::PP -e 'local $/; open my $fh,"<",".devcontainer/devcontainer.json" or die; JSON::PP->new->decode(<$fh>); print "JSON_OK\n";' \
    > "${ART_DIR}/json_validate.txt" 2> "${LOG_DIR}/perl_jsonpp.stderr.log" || true
  if grep -q "JSON_OK" "${ART_DIR}/json_validate.txt" 2>/dev/null; then json_ok="PASS"; fi
else
  echo "perl=MISSING" > "${ART_DIR}/json_validate.txt"
fi

docker_ok="FAIL"
if have docker; then
  if tmo 8 docker ps >/dev/null 2>&1; then docker_ok="PASS"; fi
fi

# opencode delegation evidence: prefer verified YOLO mechanism, but also record whether --auto-approve exists
auto_approve_flag="UNVERIFIED"
yolo_supported="UNVERIFIED"
if have opencode; then
  tmo 10 opencode run --help > "${ART_DIR}/opencode_run_help.txt" 2> "${LOG_DIR}/opencode_run_help.stderr.log" || true
  if grep -q -- "--auto-approve" "${ART_DIR}/opencode_run_help.txt" 2>/dev/null; then auto_approve_flag="PRESENT"; else auto_approve_flag="ABSENT"; fi
  tmo 10 opencode --help > "${ART_DIR}/opencode_help.txt" 2> "${LOG_DIR}/opencode_help.stderr.log" || true
  if grep -q -- "--yolo" "${ART_DIR}/opencode_help.txt" 2>/dev/null; then yolo_supported="PRESENT"; else yolo_supported="ABSENT"; fi
fi

cat > "${ACC_DIR}/checks_manifest.json" <<JSON
{
  "step_id":"${STEP_ID}",
  "acc_utc":"${ACC_UTC}",
  "checks":[
    {"id":"devcontainer.json_valid","result":"${json_ok}","evidence":"artifacts/json_validate.txt"},
    {"id":"docker.ps_works","result":"${docker_ok}","evidence":"artifacts/postrebuild_probe.txt"},
    {"id":"opencode.run_help.has_auto_approve_flag","result":"${auto_approve_flag}","evidence":"artifacts/opencode_run_help.txt"},
    {"id":"opencode.help.has_yolo_flag","result":"${yolo_supported}","evidence":"artifacts/opencode_help.txt"}
  ]
}
JSON

verdict="FAIL_CLOSED"
# PASS condition for Step-02: JSON_OK + docker ps works. (opencode flags are evidence-only and may be ABSENT)
if [ "${json_ok}" = "PASS" ] && [ "${docker_ok}" = "PASS" ]; then verdict="PASS"; fi

cat > "${ACC_DIR}/verdict.json" <<JSON
{
  "step_id":"${STEP_ID}",
  "acc_utc":"${ACC_UTC}",
  "verdict":"${verdict}",
  "pass_criteria":["devcontainer.json_valid=PASS","docker.ps_works=PASS"],
  "notes":[
    "opencode auto-approve flag is treated as evidence-only; if absent, YOLO is the verified delegation mechanism."
  ]
}
JSON

cat > "${ACC_DIR}/evidence_index.md" <<MD
# Evidence Index — ${STEP_ID}
- acc_utc: \`${ACC_UTC}\`
- acc_dir: \`${ACC_DIR}\`

## Core
- verdict.json
- checks_manifest.json

## Artifacts
- artifacts/postrebuild_probe.txt
- artifacts/json_validate.txt
- artifacts/opencode_help.txt
- artifacts/opencode_run_help.txt

## Logs
- logs/postrebuild_probe.stderr.log
- logs/perl_jsonpp.stderr.log
- logs/opencode_help.stderr.log
- logs/opencode_run_help.stderr.log
MD

cat > "${ACC_DIR}/step_report.md" <<MD
# Step-02 Report
## What you did
1) Rebuilt Dev Container (manual UI action)
2) Ran post-rebuild smoke test script to verify docker + JSON validity
3) Captured opencode delegation evidence (auto-approve flag presence + yolo support)

## Fail-Closed
- PASS requires docker ps works + JSON_OK.
- Opencode delegation flag \`--auto-approve\` is NOT assumed; we record its presence/absence from help output.
- If \`--auto-approve\` is absent, use verified YOLO delegation: \`opencode --yolo\` or \`OPENCODE_YOLO=true\` or config \`\"yolo\": true\`.
MD

echo "DONE: ${ACC_DIR}"
