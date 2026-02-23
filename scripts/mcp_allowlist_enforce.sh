#!/usr/bin/env bash
set -euo pipefail
OMOC_TS=${OMOC_TS:-$(date -u +%Y%m%dT%H%M%SZ)}
OUTDIR="evidence/_drift_guard/${OMOC_TS}"
mkdir -p "$OUTDIR"
# Allow overriding the config and hash paths for safe testing (tests may set CONFIG_PATH/HASH_PATH)
CONFIG_PATH=${CONFIG_PATH:-config/mcp_endpoints.json}
HASH_PATH=${HASH_PATH:-config/mcp_endpoints.hash}
LOG="$OUTDIR/allowlist_enforce.log"
DEC="$OUTDIR/allowlist_decisions.jsonl"
exec >"$LOG" 2>&1
echo "mcp_allowlist_enforce.sh start: $(date -u +%Y-%m-%dT%H:%M:%SZ)"

if [ ! -f "$CONFIG_PATH" ]; then
  echo "MISSING: $CONFIG_PATH" >&2
  exit 2
fi

expected=""
actual=""
if [ ! -f "$HASH_PATH" ]; then
  echo "MISSING: $HASH_PATH" >&2
  HASH_OK=0
else
  expected=$(cut -d' ' -f1 "$HASH_PATH" || true)
  actual=$(sha256sum -b "$CONFIG_PATH" | awk '{print $1}')
  if [ "${expected}" != "${actual}" ]; then
    echo "HASH_MISMATCH expected=${expected} actual=${actual}" >&2
    HASH_OK=0
  else
    echo "HASH_OK" >&2
    HASH_OK=1
  fi
fi

# If hash mismatch or missing, fail-closed per RIPB-REQ-005: write BLOCK decisions, emit TT, and exit 42
if [ "${HASH_OK}" -ne 1 ]; then
  echo "Fail-closed: HASH mismatch or missing; writing BLOCK decisions, emitting TT, and exiting 42" >&2
  : > "$DEC"
  # write BLOCK decisions for each endpoint
  while read -r line; do
    endpoint_ref=$(echo "$line" | sed -n "s/.*\"endpoint_ref\"\s*:\s*\"\([^\"]*\)\".*/\1/p")
    url=$(echo "$line" | sed -n "s/.*\"url\"\s*:\s*\"\([^\"]*\)\".*/\1/p")
    out="{\"endpoint_ref\": \"${endpoint_ref}\", \"url\": \"${url}\", \"decision\": \"BLOCK\", \"reason\": \"HASH_MISMATCH\"}"
    echo "$out"
    echo "$out" >> "$DEC"
  done < <(jq -c '.endpoints[]' "$CONFIG_PATH" 2>/dev/null || python3 -c "import json,sys,os
print('\\n'.join([json.dumps(e) for e in json.load(open(os.environ.get('CONFIG_PATH','config/mcp_endpoints.json'))).get('endpoints',[]) ]))")

  # Emit TT snippet required by RIPB-REQ-005
  TT_FILE="$OUTDIR/TT-RIPB-ENDPOINTS-DISCOVER-001.json"
  cat > "$TT_FILE" <<TTJSON
{
  "id": "TT-RIPB-ENDPOINTS-DISCOVER-001",
  "title": "Endpoints hash mismatch or missing",
  "close_criteria": "Update config/mcp_endpoints.hash to match config/mcp_endpoints.json or restore audited endpoints",
  "test_probe": "Run scripts/mcp_allowlist_enforce.sh with OMOC_TS=<TS> and observe exit code 42; verify decision=BLOCK",
  "evidence_expected": ["evidence/_drift_guard/<TS>/allowlist_enforce.log","evidence/_drift_guard/<TS>/allowlist_decisions.jsonl"]
}
TTJSON

  # also write a concise TT line into DEC for machine-readability
  echo "{\"tt\": [\"TT-RIPB-ENDPOINTS-DISCOVER-001\"]}" >> "$DEC"

  # enforce fail-closed exit code per RIPB-REQ-005
  # record observed enforcer rc in the drift_guard for this run
  printf "%s" 42 > "$OUTDIR/allowlist_enforce_rc.txt" 2>/dev/null || true
  exit 42
fi

echo "Preparing decisions file: $DEC"
>"$DEC"

python3 - <<'PY' > "$DEC"
import json

import os
eps = json.load(open(os.environ.get('CONFIG_PATH','config/mcp_endpoints.json')))
try:
    allow = json.load(open('allowlist.lock.json'))
except Exception:
    allow = {'servers': []}

servers = {s.get('endpoint_ref'): s for s in allow.get('servers', [])}

for e in eps.get('endpoints', []):
    endpoint_ref = e.get('endpoint_ref')
    url = e.get('url')
    decision = 'ALLOW' if endpoint_ref in servers else 'BLOCK'
    out = {'endpoint_ref': endpoint_ref, 'url': url, 'decision': decision}
    print(json.dumps(out))

PY

echo "Completed allowlist enforcement run"
# record success rc
printf "%s" 0 > "$OUTDIR/allowlist_enforce_rc.txt" 2>/dev/null || true
exit 0
