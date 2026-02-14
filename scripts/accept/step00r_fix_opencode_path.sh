#!/usr/bin/env bash
set -euo pipefail

seg="${1:-}"
if [[ -z "${seg}" ]]; then
  echo "usage: $0 <seg1|seg2|seg3>" >&2
  exit 2
fi

UTC_NOW="$(date -u +%Y%m%dT%H%M%SZ)"
STEP_ID="step-00R"
ACC_DIR="evidence/_acceptance/${UTC_NOW}/${STEP_ID}"
LOG_DIR="${ACC_DIR}/logs"
ART_DIR="${ACC_DIR}/artifacts"

mkdir -p "${LOG_DIR}" "${ART_DIR}"

log() { echo "[$(date -u +%H:%M:%SZ)] $*"; }

case "${seg}" in
  seg1)
    # --- seg1: PATH / binary existence probe (no secrets)
    {
      log "pwd=$(pwd)"
      log "whoami=$(whoami)"
      log "PATH=${PATH}"
      echo
      echo "## command -v opencode"
      command -v opencode || true
      echo
      echo "## ls candidate locations"
      ls -la "$HOME/.opencode/bin/opencode" 2>/dev/null || true
      ls -la "$HOME/.local/bin/opencode" 2>/dev/null || true
      ls -la "$HOME/.bun/bin/opencode" 2>/dev/null || true
      ls -la "/usr/local/bin/opencode" 2>/dev/null || true
      echo
      echo "## current shell rc hints"
      (grep -n "opencode" "$HOME/.bashrc" 2>/dev/null || true)
      (grep -n "opencode" "$HOME/.profile" 2>/dev/null || true)
      (grep -n "opencode" "$HOME/.zshrc" 2>/dev/null || true)
    } > "${LOG_DIR}/seg1_path_probe.log" 2> "${LOG_DIR}/seg1_path_probe.stderr.log"

    # lightweight manifest
    {
      echo "{"
      echo "  \"step_id\": \"${STEP_ID}\","
      echo "  \"acc_utc\": \"${UTC_NOW}\","
      echo "  \"seg1\": {"
      echo "    \"opencode_in_path\": \"$(command -v opencode >/dev/null 2>&1 && echo YES || echo NO)\","
      echo "    \"opencode_home_bin_exists\": \"$(test -x "$HOME/.opencode/bin/opencode" && echo YES || echo NO)\""
      echo "  }"
      echo "}"
    } > "${ART_DIR}/checks_manifest.seg1.json"
    ;;

  seg2)
    # --- seg2: minimal repair (prefer PATH fix if binary exists; else install)
    : > "${LOG_DIR}/seg2_install.log"
    : > "${LOG_DIR}/seg2_install.stderr.log"  # <-- hard contract: must exist

    # If opencode exists but not in PATH, add PATH export into ~/.bashrc (minimal, reversible)
    if ! command -v opencode >/dev/null 2>&1 && test -x "$HOME/.opencode/bin/opencode"; then
      {
        log "opencode binary exists at ~/.opencode/bin/opencode but not in PATH -> patch ~/.bashrc"
        echo
        echo "# --- OMOC: ensure opencode in PATH (step-00R) ---"
        echo 'export PATH="$HOME/.opencode/bin:$PATH"'
      } >> "${HOME}/.bashrc"
    fi

    # Re-source bashrc best-effort (non-fatal)
    set +e
    source "${HOME}/.bashrc" >/dev/null 2>&1
    set -e

    # If still missing, install via official script (time-bounded)
    if ! command -v opencode >/dev/null 2>&1; then
      {
        log "opencode still not found -> install via official script (timeout 120s)"
        echo "CMD: timeout 120s curl -fsSL https://opencode.ai/install | bash"
      } >> "${LOG_DIR}/seg2_install.log"
      # NOTE: install may write to stdout/stderr; we capture both separately
      timeout 120s bash -lc 'curl -fsSL https://opencode.ai/install | bash' \
        >> "${LOG_DIR}/seg2_install.log" 2>> "${LOG_DIR}/seg2_install.stderr.log" || true
    else
      log "opencode already in PATH; skip install" >> "${LOG_DIR}/seg2_install.log"
    fi

    # Post-check
    {
      echo "## command -v opencode"
      command -v opencode || true
      echo
      echo "## opencode --version"
      (opencode --version || true)
    } > "${ART_DIR}/opencode_version.txt" 2> "${ART_DIR}/opencode_version.stderr.txt"

    ;;

  seg3)
    # --- seg3: acceptance checks + triplet (never empty)
    {
      echo "## opencode run --help"
      opencode run --help || true
    } > "${ART_DIR}/opencode_run_help.txt" 2> "${ART_DIR}/opencode_run_help.stderr.txt"

    OPENCODE_OK="$(command -v opencode >/dev/null 2>&1 && echo PASS || echo FAIL)"
    HAS_DIR_FLAG="$(grep -q -- "--dir" "${ART_DIR}/opencode_run_help.txt" && echo YES || echo NO)"

    # checks_manifest (single file)
    {
      echo "{"
      echo "  \"step_id\": \"${STEP_ID}\","
      echo "  \"acc_utc\": \"${UTC_NOW}\","
      echo "  \"checks\": {"
      echo "    \"opencode_in_path\": \"${OPENCODE_OK}\","
      echo "    \"opencode_run_help_has_dir\": \"${HAS_DIR_FLAG}\","
      echo "    \"seg2_install_stderr_exists\": \"$(test -f "${LOG_DIR}/seg2_install.stderr.log" && echo YES || echo NO)\","
      echo "    \"seg2_install_stderr_nonempty\": \"$(test -s "${LOG_DIR}/seg2_install.stderr.log" && echo YES || echo NO)\""
      echo "  }"
      echo "}"
    } > "${ART_DIR}/checks_manifest.json"

    # verdict (Fail-Closed)
    VERDICT="FAIL_CLOSED"
    if [[ "${OPENCODE_OK}" == "PASS" && "${HAS_DIR_FLAG}" == "YES" && -f "${LOG_DIR}/seg2_install.stderr.log" ]]; then
      VERDICT="PASS"
    fi

    {
      echo "{"
      echo "  \"step_id\": \"${STEP_ID}\","
      echo "  \"acc_utc\": \"${UTC_NOW}\","
      echo "  \"verdict\": \"${VERDICT}\","
      echo "  \"rule\": \"Missing/Unverified evidence file => FAIL_CLOSED\","
      echo "  \"notes\": ["
      echo "    \"seg2_install.stderr.log is required to exist (may be empty if install produced no stderr).\","
      echo "    \"PASS requires: opencode in PATH + run --help contains --dir + stderr log exists.\""
      echo "  ]"
      echo "}"
    } > "${ART_DIR}/verdict.json"

    # evidence_index
    {
      echo "# Evidence Index (${STEP_ID})"
      echo
      echo "- acc_dir: ${ACC_DIR}"
      echo "- logs:"
      echo "  - ${LOG_DIR}/seg1_path_probe.log"
      echo "  - ${LOG_DIR}/seg1_path_probe.stderr.log"
      echo "  - ${LOG_DIR}/seg2_install.log"
      echo "  - ${LOG_DIR}/seg2_install.stderr.log"
      echo "- artifacts:"
      echo "  - ${ART_DIR}/opencode_version.txt"
      echo "  - ${ART_DIR}/opencode_version.stderr.txt"
      echo "  - ${ART_DIR}/opencode_run_help.txt"
      echo "  - ${ART_DIR}/opencode_run_help.stderr.txt"
      echo "  - ${ART_DIR}/checks_manifest.json"
      echo "  - ${ART_DIR}/verdict.json"
      echo
      echo "## Purpose"
      echo "- Proves whether opencode is executable and whether CLI supports --dir (compat checkpoint)."
    } > "${ACC_DIR}/evidence_index.md"

    # step_report
    {
      echo "# Step-00R Report"
      echo
      echo "## Decision"
      echo "- Method: bash (segmented, low terminal-risk)"
      echo "- Goal: restore/verify opencode availability; force-create seg2_install.stderr.log"
      echo
      echo "## Acceptance"
      echo "- opencode in PATH (command -v opencode)"
      echo "- opencode run --help contains --dir"
      echo "- seg2_install.stderr.log exists"
      echo
      echo "## Notes"
      echo "- If opencode was previously installed but PATH drifted, we only patch ~/.bashrc minimally."
      echo "- If missing entirely, install uses official script with timeout."
    } > "${ACC_DIR}/step_report.md"

    echo "ACC_DIR=${ACC_DIR}" | tee "${ACC_DIR}/_statusline.txt"
    ;;

  *)
    echo "unknown segment: ${seg}" >&2
    exit 2
    ;;
esac
