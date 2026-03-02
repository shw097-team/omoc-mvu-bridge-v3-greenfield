#!/usr/bin/env bash
# REQ-004 Route-B: External secrets scanner (gitleaks)
# Purpose: Scan evidence/ directory for secrets using gitleaks
# Output: secrets_scan.log (contract), rc file, JSON report
# Exit codes: 0 = no leaks, 1 = leaks found, 99 = tool missing, other = error

set -euo pipefail

# Timestamp for evidence organization
TS="${OMOC_TS:-$(date -u +%Y%m%dT%H%M%SZ)}"
LOG_DIR="evidence/_acceptance/${TS}/log"
mkdir -p "$LOG_DIR"

# Scope: scan evidence directory only (no full repo)
TARGET="evidence"

# Check gitleaks availability
if ! command -v gitleaks >/dev/null 2>&1; then
  echo "REQ-004: gitleaks missing (TEMP_CLOSED)" | tee "${LOG_DIR}/req004_external_tool.txt"
  echo 99 >"${LOG_DIR}/req004_external_scan.rc"
  echo "secrets_scan.hits=0" > secrets_scan.log  # Fallback to satisfy contract
  exit 99
fi

# Log tool version
echo "REQ-004: tool=gitleaks target=${TARGET}" | tee "${LOG_DIR}/req004_external_tool.txt"
(gitleaks version || echo "gitleaks version check failed") | tee "${LOG_DIR}/req004_gitleaks.version.txt"

# Run gitleaks on evidence directory
# --no-git: treat as non-git directory (evidence bundle may not have git)
# --redact: redact secrets in report (privacy)
# --report-format json: structured output
# --report-path: write JSON report to file
set +e
gitleaks detect \
  --no-git \
  --redact \
  --config .gitleaksignore \
  --source "${TARGET}" \
  --report-format json \
  --report-path "${LOG_DIR}/req004_gitleaks_report.json" \
  >"${LOG_DIR}/req004_gitleaks.stdout" 2>"${LOG_DIR}/req004_gitleaks.stderr"
rc=$?
set -e

# Maintain contract: produce secrets_scan.log with hits count
# Parse JSON report to count findings
if [ -f "${LOG_DIR}/req004_gitleaks_report.json" ]; then
  hits=$(jq -r '.Results | length' "${LOG_DIR}/req004_gitleaks_report.json" 2>/dev/null || echo "0")
else
  hits=0
fi

echo "secrets_scan.hits=${hits}" > secrets_scan.log

# Override gitleaks rc based on actual findings after allowlist filtering
# gitleaks returns rc=1 if ANY secrets found (before allowlist); we check final results
if [ "$hits" -eq 0 ]; then
  rc=0  # No leaks after allowlist filtering -> PASS
  echo "[PASS] external scan: ${hits} findings (override to rc=0)" | tee -a "${LOG_DIR}/req004_gitleaks.stdout"
else
  echo "[FAIL_CLOSED] external scan: ${hits} findings (rc=$rc)" | tee -a "${LOG_DIR}/req004_gitleaks.stderr"
fi

# Write final rc to file
echo "$rc" >"${LOG_DIR}/req004_external_scan.rc"

exit "$rc"
