#!/usr/bin/env bash
set -euo pipefail

TS="${OMOC_TS:-$(date -u +%Y%m%dT%H%M%SZ)}"
LAST_VERIFIED_AT="${OMOC_WEB_LAST_VERIFIED_AT:-REDACTED}"
DRIFT_ACTION="${OMOC_DRIFT_ACTION:-NEEDS-TEST}"

python3 << 'PYTHON'
import json
import os

ts = os.environ.get('TS', 'UNKNOWN')
last_verified = os.environ.get('LAST_VERIFIED_AT', 'REDACTED')
drift_action = os.environ.get('DRIFT_ACTION', 'NEEDS-TEST')

drift_report = f"""# drift_report (RIP-A) — {ts}

- last_verified_at: {last_verified}
- drift_action: {drift_action}
- notes:
  - Any platform behavior claims are SUPPORT-only and must be verified in environment.
"""

with open('drift_report.md', 'w') as f:
    f.write(drift_report)

with open('tt_export.json', 'w') as f:
    json.dump({}, f)

print(f"DRIFT_REPORT_SH_SHA256=$(sha256sum \"$0\" | awk '{{print $1}}')")
PYTHON

echo "DRIFT_REPORT_GENERATED=1"
