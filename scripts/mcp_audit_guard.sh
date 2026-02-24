#!/usr/bin/env bash
set -euo pipefail

TS="${OMOC_TS:-$(date -u +%Y%m%dT%H%M%SZ)}"
OUTDIR="evidence/_drift_guard/${TS}"
mkdir -p "${OUTDIR}"

AUDIT_PATH="${RIPB_AUDIT_LOG_PATH:-evidence/_audit/auditlog.redacted.jsonl}"

# Default
ready="false"
reason="not_evaluated"

# If an explicit audit_ready.json exists in OUTDIR, prefer it (test harness / manual override)
if [ -f "${OUTDIR}/audit_ready.json" ]; then
  # read audit_ready boolean from the file using argv-based python (avoid heredoc/token pitfalls)
  ready=$(python3 - "${OUTDIR}/audit_ready.json" <<'PY'
import json,sys
try:
    j=json.load(open(sys.argv[1]))
    print("true" if bool(j.get("audit_ready")) else "false")
except Exception:
    print("false")
PY
)
  reason="overridden_by_drift_guard"
else
  # audit_ready = file exists and writable directory and not symlink
  if [ -L "${AUDIT_PATH}" ]; then
    ready="false"; reason="audit_path_symlink"
  elif [ ! -e "${AUDIT_PATH}" ]; then
    # allow creating the file if directory exists and writable
    d=$(dirname "${AUDIT_PATH}")
    if [ ! -d "${d}" ]; then
      ready="false"; reason="audit_dir_missing"
    elif [ ! -w "${d}" ]; then
      ready="false"; reason="audit_dir_not_writable"
    else
      # Path parent exists and writable but file missing -> not ready
      ready="false"; reason="audit_file_missing"
    fi
  else
    d=$(dirname "${AUDIT_PATH}")
    if [ ! -w "${d}" ]; then
      ready="false"; reason="audit_dir_not_writable"
    else
      # file exists and dir writable -> ready
      ready="true"; reason="audit_path_present"
    fi
  fi
fi

# Emit audit_ready.json into OUTDIR (canonical record)
printf '{"audit_ready": %s, "reason": "%s", "audit_path": "%s"}\n' "${ready}" "${reason}" "${AUDIT_PATH}" > "${OUTDIR}/audit_ready.json"

# Write a decisions line for downstream tracing: audit_decisions.jsonl
decision_file="${OUTDIR}/audit_decisions.jsonl"
ts_now=$(date -u +%Y-%m-%dT%H:%M:%SZ)
if [ "${ready}" != "true" ]; then
  printf '%s\n' "{\"ts\":\"${ts_now}\",\"decision\":\"BLOCK\",\"reason\":\"AUDIT_NOT_READY\",\"audit_ready\":false}" >> "${decision_file}"
  # HARD RULE: if not ready => block sensitive tools by failing with rc=3
  exit 3
else
  printf '%s\n' "{\"ts\":\"${ts_now}\",\"decision\":\"ALLOW\",\"reason\":\"AUDIT_OK\",\"audit_ready\":true}" >> "${decision_file}"
  exit 0
fi
