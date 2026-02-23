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

if [ ! -f config/mcp_endpoints.hash ]; then
  echo "MISSING: config/mcp_endpoints.hash" >&2
  # No endpoints.hash present — will continue but treat as HASH_OK=0 so enforcement defaults to conservative behaviour
  HASH_OK=0
else
  expected=$(cut -d' ' -f1 config/mcp_endpoints.hash)
  actual=$(sha256sum -b config/mcp_endpoints.json | awk '{print $1}')
  if [ "${expected}" != "${actual}" ]; then
    echo "HASH_MISMATCH expected=${expected} actual=${actual}" >&2
    HASH_OK=0
  else
    echo "HASH_OK" >&2
    HASH_OK=1
  fi
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
