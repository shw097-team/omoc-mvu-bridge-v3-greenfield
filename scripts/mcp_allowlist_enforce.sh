#!/usr/bin/env bash
set -euo pipefail
OMOC_TS=${OMOC_TS:-$(date -u +%Y%m%dT%H%M%SZ)}
OUTDIR="evidence/_drift_guard/${OMOC_TS}"
mkdir -p "$OUTDIR"
LOG="$OUTDIR/allowlist_enforce.log"
DEC="$OUTDIR/allowlist_decisions.jsonl"
exec >"$LOG" 2>&1
echo "mcp_allowlist_enforce.sh start: $(date -u +%Y-%m-%dT%H:%M:%SZ)"

if [ ! -f config/mcp_endpoints.json ]; then
  echo "MISSING: config/mcp_endpoints.json" >&2
  exit 2
fi

expected=""
actual=""
if [ ! -f config/mcp_endpoints.hash ]; then
  echo "MISSING: config/mcp_endpoints.hash" >&2
  HASH_OK=0
else
  expected=$(cut -d' ' -f1 config/mcp_endpoints.hash || true)
  actual=$(sha256sum -b config/mcp_endpoints.json | awk '{print $1}')
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
  done < <(jq -c '.endpoints[]' config/mcp_endpoints.json 2>/dev/null || python3 -c "import json,sys
print('\n'.join([json.dumps(e) for e in json.load(open('config/mcp_endpoints.json')).get('endpoints',[]) ]))")

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
  exit 42
fi

echo "Preparing decisions file: $DEC"
>"$DEC"

python3 - <<'PY' > "$DEC"
import json

eps = json.load(open('config/mcp_endpoints.json'))
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
exit 0
