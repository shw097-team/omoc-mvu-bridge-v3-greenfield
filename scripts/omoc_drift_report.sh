#!/usr/bin/env bash
set -euo pipefail

TS="${OMOC_TS:-$(date -u +%Y%m%dT%H%M%SZ)}"
LAST_VERIFIED_AT="${OMOC_WEB_LAST_VERIFIED_AT:-REDACTED}"
DRIFT_ACTION="${OMOC_DRIFT_ACTION:-NEEDS-TEST}"

export TS LAST_VERIFIED_AT DRIFT_ACTION

python3 << 'PYTHON'
import json
import os
import sys

ts = os.environ.get('TS', 'UNKNOWN')
last_verified = os.environ.get('LAST_VERIFIED_AT', 'REDACTED')
drift_action = os.environ.get('DRIFT_ACTION', 'NEEDS-TEST')

drift_report = f"""# drift_report (RIP-A) — {ts}

- last_verified_at: {last_verified}
- drift_action: {drift_action}
- notes:
  - Any platform behavior claims are SUPPORT-only and must be verified in environment.
"""

try:
    with open('drift_report.md', 'w') as f:
        f.write(drift_report)
    with open('tt_export.json', 'w') as f:
        json.dump({}, f)
    sys.exit(0)
except Exception as e:
    print(f"[ERROR] Failed to write drift report: {e}", file=sys.stderr)
    sys.exit(1)
PYTHON

exit_code=$?
if [ $exit_code -eq 0 ]; then
    echo "DRIFT_REPORT_GENERATED=1"
else
    echo "DRIFT_REPORT_GENERATION_FAILED=1" >&2
    exit 1
fi
