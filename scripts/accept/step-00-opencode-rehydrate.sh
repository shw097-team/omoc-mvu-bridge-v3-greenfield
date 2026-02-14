#!/usr/bin/env bash
set -euo pipefail

STEP_ID="step-00"
UTC_NOW="$(date -u +%Y%m%dT%H%M%SZ)"
RUN_DIR="evidence/_acceptance/${UTC_NOW}/${STEP_ID}"
LOG_DIR="${RUN_DIR}/logs"
ART_DIR="${RUN_DIR}/artifacts"
mkdir -p "${LOG_DIR}" "${ART_DIR}"

log(){ echo "[$(date -u +%H:%M:%SZ)] $*" | tee -a "${LOG_DIR}/_timeline.log" >/dev/null; }

log "PWD=$(pwd)"
log "WHOAMI=$(whoami)"
log "PATH=$PATH" | tee "${ART_DIR}/path.txt" >/dev/null
command -v timeout >/dev/null 2>&1 && timeout --version | head -n 1 | tee "${ART_DIR}/timeout_version.txt" >/dev/null || true
command -v curl >/dev/null 2>&1 && curl --version | head -n 1 | tee "${ART_DIR}/curl_version.txt" >/dev/null || true

# SEG1: presence probe
{
  echo "== opencode presence probe =="
  date -u
  echo "command -v opencode:"
  command -v opencode || true
  echo "ls common locations:"
  ls -la "$HOME/.local/bin" 2>/dev/null || true
  ls -la "/usr/local/bin" 2>/dev/null | sed -n '1,30p' || true
} | tee "${LOG_DIR}/seg1_probe.log" >/dev/null

if command -v opencode >/dev/null 2>&1; then
  log "opencode found in PATH already"
else
  log "opencode NOT found -> installing via official script"
  # SEG2: install (official)
  # Source: opencode.ai download page shows install script: curl -fsSL https://opencode.ai/install | bash
  # Add timeout to avoid terminal hang.
  ( set -x
    timeout 180 bash -lc "curl -fsSL https://opencode.ai/install | bash"
  ) >"${LOG_DIR}/seg2_install.stdout.log" 2>"${LOG_DIR}/seg2_install.stderr.log" || true

  # re-probe PATH
  {
    echo "== post-install probe =="
    date -u
    echo "command -v opencode:"
    command -v opencode || true
    echo "find likely opencode binary (depth-limited):"
    find "$HOME" -maxdepth 4 -type f -name 'opencode' 2>/dev/null | sed -n '1,40p' || true
    find "/usr" -maxdepth 4 -type f -name 'opencode' 2>/dev/null | sed -n '1,40p' || true
  } | tee "${LOG_DIR}/seg3_postinstall_probe.log" >/dev/null
fi

# SEG4: version/help evidence (Fail-Closed if still missing)
if ! command -v opencode >/dev/null 2>&1; then
  log "FAIL_CLOSED: opencode still missing after install attempt"
  cat > "${ART_DIR}/checks_manifest.json" <<JSON
{"step_id":"${STEP_ID}","acc_utc":"${UTC_NOW}","opencode_in_path":false,"install_attempted":true}
JSON
  cat > "${ART_DIR}/verdict.json" <<JSON
{"step_id":"${STEP_ID}","acc_utc":"${UTC_NOW}","verdict":"FAIL_CLOSED","reason":"opencode_not_found_after_install","notes":["do_not_proceed_to_swarm_until_opencode_exists"]}
JSON
else
  log "Collecting opencode version/help"
  ( set -x; timeout 20 opencode --version ) >"${ART_DIR}/opencode_version.txt" 2>"${LOG_DIR}/seg4_version.stderr.log" || true
  ( set -x; timeout 20 opencode run --help ) >"${ART_DIR}/opencode_run_help.txt" 2>"${LOG_DIR}/seg4_run_help.stderr.log" || true
  ( set -x; timeout 20 opencode --help ) >"${ART_DIR}/opencode_help.txt" 2>"${LOG_DIR}/seg4_help.stderr.log" || true

  # Minimal machine checks: confirm --dir appears in run help
  HAS_DIR="NO"
  grep -q -- "--dir" "${ART_DIR}/opencode_run_help.txt" && HAS_DIR="YES" || true

  cat > "${ART_DIR}/checks_manifest.json" <<JSON
{"step_id":"${STEP_ID}","acc_utc":"${UTC_NOW}","opencode_in_path":true,"has_run_dir_flag":"${HAS_DIR}"}
JSON

  VERDICT="PASS"
  if [ "${HAS_DIR}" != "YES" ]; then VERDICT="FAIL_CLOSED"; fi

  cat > "${ART_DIR}/verdict.json" <<JSON
{"step_id":"${STEP_ID}","acc_utc":"${UTC_NOW}","verdict":"${VERDICT}","pass_criteria":["opencode_in_path=PASS","opencode_run_help_has_dir=${HAS_DIR}"]}
JSON
fi

# step report + index
cat > "${RUN_DIR}/step_report.md" <<MD
# Step-00 Tooling Rehydrate Report
- utc: ${UTC_NOW}
- goal: restore opencode executable + capture minimal CLI evidence (version/help, run --help contains --dir)
- method: bash, non-interactive, timeouts applied
- outputs:
  - artifacts/opencode_version.txt (if PASS)
  - artifacts/opencode_run_help.txt (if PASS)
  - artifacts/checks_manifest.json
  - artifacts/verdict.json
  - logs/_timeline.log + seg*.log
MD

cat > "${RUN_DIR}/evidence_index.md" <<MD
# evidence_index (Step-00)
- ${RUN_DIR}/artifacts/path.txt : PATH snapshot
- ${RUN_DIR}/logs/seg1_probe.log : initial presence probe
- ${RUN_DIR}/logs/seg2_install.stdout.log : install stdout (if attempted)
- ${RUN_DIR}/logs/seg2_install.stderr.log : install stderr (if attempted)
- ${RUN_DIR}/logs/seg3_postinstall_probe.log : post-install probe
- ${RUN_DIR}/artifacts/opencode_version.txt : opencode --version output (if present)
- ${RUN_DIR}/artifacts/opencode_run_help.txt : opencode run --help output (if present)
- ${RUN_DIR}/artifacts/checks_manifest.json : machine checks
- ${RUN_DIR}/artifacts/verdict.json : fail-closed verdict
- ${RUN_DIR}/step_report.md : step report
MD

log "DONE. Evidence dir: ${RUN_DIR}"
