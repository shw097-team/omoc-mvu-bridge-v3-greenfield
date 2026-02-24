#!/usr/bin/env bash
set -euo pipefail

# RIP-F required checks contract guard
# Reads config/required_checks_contract.json and ensures required workflows
# do not contain trigger-level 'paths-ignore:' entries. Fail-closed on any
# missing files or violations.

CONF=config/required_checks_contract.json
if [ ! -f "$CONF" ]; then
  echo "MISSING_CONTRACT: $CONF" >&2
  exit 2
fi

# Extract paths from JSON safely
# Safely load JSON from the config file passed as an argument to the python
# heredoc. Previously the here-doc attempted to execute the filename which can
# lead to permission errors (rc=126) if the file is not executable. We instead
# pass the path as sys.argv[1] and ensure the heredoc cannot perform shell
# interpolation by using a quoted 'PY' limiter.
paths=$(python3 - "$CONF" <<'PY'
import json,sys
try:
    j=json.load(open(sys.argv[1]))
    p=[]
    for k,v in (j.get('paths') or {}).items():
        p += (v or [])
    print('\n'.join(p))
except Exception as e:
    print('JSON_ERROR:'+str(e))
    sys.exit(2)
PY
)

if echo "$paths" | grep -q '^JSON_ERROR:'; then
  echo "$paths" >&2
  exit 2
fi

fail=0
echo "paths_total=$(echo "$paths" | sed -n '$=' )"
while IFS= read -r p; do
  [ -z "$p" ] && continue
  if [ ! -f "$p" ]; then
    echo "MISSING: $p" >&2
    fail=1
    continue
  fi
  # scan for trigger-level paths-ignore (simple heuristic: any 'paths-ignore:' token)
  if rg -n "paths-ignore:" "$p" -S >/dev/null 2>&1; then
    echo "VIOLATION: paths-ignore found in $p" >&2
    rg -n "paths-ignore:" "$p" -S | sed -n '1,200p' >&2
    fail=1
  fi
done <<EOF
$paths
EOF

if [ "$fail" -ne 0 ]; then
  echo "FAIL_CLOSED: required checks contract guard detected violations" >&2
  exit 2
fi

echo "PASS: required checks contract guard" 
exit 0
