#!/usr/bin/env bash
set -euo pipefail
OMOC_TS=${OMOC_TS:-$(date -u +%Y%m%dT%H%M%SZ)}
OUTDIR="evidence/_drift_guard/${OMOC_TS}"
mkdir -p "$OUTDIR"

echo "Starting tamper test at $(date -u +%Y-%m-%dT%H:%M:%SZ)"

# Ensure no accidental literal file named $DEC (safe check; guard against unbound variable)
DEC_VAR='\$DEC'
if [ -f "$DEC_VAR" ]; then
  echo "Removing accidental literal file named $DEC_VAR"
  rm -f "$DEC_VAR"
fi

cp config/mcp_endpoints.json /tmp/mcp_endpoints.json.bak

echo "Tampering config/mcp_endpoints.json"
python3 - <<'PY'
import json
p='config/mcp_endpoints.json'
d=json.load(open(p,'r',encoding='utf-8'))
if isinstance(d, dict) and 'endpoints' in d and len(d['endpoints'])>0:
    d['endpoints'][0]['url']=d['endpoints'][0].get('url','')+'?tamper=1'
json.dump(d,open(p,'w',encoding='utf-8'),ensure_ascii=False,indent=2)
print('tampered')
PY

echo "Run enforcement (tampered, no hash update)"
OMOC_TS=${OMOC_TS} bash scripts/mcp_allowlist_enforce.sh
tamper_rc=$?
echo "tamper rc=${tamper_rc}"
# move tamper artifacts to deterministic names
mv evidence/_drift_guard/${OMOC_TS}/allowlist_enforce.log evidence/_drift_guard/${OMOC_TS}/allowlist_enforce_tamper.log || true
mv evidence/_drift_guard/${OMOC_TS}/allowlist_decisions.jsonl evidence/_drift_guard/${OMOC_TS}/allowlist_decisions_tamper.jsonl || true

echo "Restore original config and update hash"
mv /tmp/mcp_endpoints.json.bak config/mcp_endpoints.json
sha256sum -b config/mcp_endpoints.json | awk '{print $1" " $2}' > config/mcp_endpoints.hash

echo "Run enforcement (restored, hash updated)"
OMOC_TS=${OMOC_TS} bash scripts/mcp_allowlist_enforce.sh
restore_rc=$?
echo "restore rc=${restore_rc}"
mv evidence/_drift_guard/${OMOC_TS}/allowlist_enforce.log evidence/_drift_guard/${OMOC_TS}/allowlist_enforce_restore.log || true
mv evidence/_drift_guard/${OMOC_TS}/allowlist_decisions.jsonl evidence/_drift_guard/${OMOC_TS}/allowlist_decisions_restore.jsonl || true

echo "Tamper test complete; tamper_rc=${tamper_rc}, restore_rc=${restore_rc}"
# Exit non-zero if tamper run failed as expected (enforce should fail-closed)
if [ "${tamper_rc:-0}" -ne 0 ]; then
  exit ${tamper_rc}
fi
exit 0
