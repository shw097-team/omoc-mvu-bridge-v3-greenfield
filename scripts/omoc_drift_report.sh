#!/usr/bin/env bash
set -euo pipefail

# Drift report (WP-014 aligned; skeleton; SUPPORT-only facts must include dates)
TS="${OMOC_TS:-$(date -u +%Y%m%dT%H%M%SZ)}"
LAST_VERIFIED_AT="${OMOC_WEB_LAST_VERIFIED_AT:-REDACTED}"
DRIFT_ACTION="${OMOC_DRIFT_ACTION:-NEEDS-TEST}"

cat > drift_report.md <<'MD'
# Safety: detect malformed shell tokens in this script
if grep -q "cat '>'\|cat '<<JSON'" "$0"; then
  echo '[ERROR] omoc_drift_report.sh: detected unsafe shell token patterns. Aborting.' >&2
  exit 2
fi

cat > drift_report.md <<'MD'
# drift_report (RIP-A) — ${TS}

- last_verified_at: ${LAST_VERIFIED_AT}
- drift_action: ${DRIFT_ACTION}
- notes:
  - Any platform behavior claims are SUPPORT-only and must be verified in environment.
MD

cat > tt_export.json <<'JSON'
{}
JSON
