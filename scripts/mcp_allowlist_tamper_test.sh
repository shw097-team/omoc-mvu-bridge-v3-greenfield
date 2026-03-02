#!/usr/bin/env bash
set -euo pipefail
OMOC_TS=${OMOC_TS:-$(date -u +%Y%m%dT%H%M%SZ)}
OUTDIR="evidence/_drift_guard/${OMOC_TS}"
mkdir -p "$OUTDIR"

echo "Starting tamper test at $(date -u +%Y-%m-%dT%H:%M:%SZ)"

# Ensure restore even if enforcer exits non-zero (trap)
trap 'mv -f /tmp/mcp_endpoints.json.bak config/mcp_endpoints.json 2>/dev/null || true; sha256sum -b config/mcp_endpoints.json | cut -d " " -f1 > config/mcp_endpoints.hash 2>/dev/null || true' EXIT

# Ensure no accidental literal file named $DEC (safe check; guard against unbound variable)
DEC_VAR='\$DEC'
if [ -f "$DEC_VAR" ]; then
  echo "Removing accidental literal file named $DEC_VAR"
  rm -f "$DEC_VAR"
fi

cp config/mcp_endpoints.json /tmp/mcp_endpoints.json.bak
# Operate on a temporary config path to avoid mutating repo state during tests
TMP_CONFIG="/tmp/mcp_endpoints.json.tampered"
cp /tmp/mcp_endpoints.json.bak "$TMP_CONFIG"
# export so subprocess Python can access it via os.environ
export TMP_CONFIG

echo "Tampering config/mcp_endpoints.json (single deterministic tamper based on backup original)"
# Use backup to get original URL, strip any repeated '?tamper=1' suffixes, then set tampered URL == base + '?tamper=1'
python3 - <<'PY'
import os, json, re
orig = json.load(open('/tmp/mcp_endpoints.json.bak','r',encoding='utf-8'))
try:
    base_url = orig['endpoints'][0].get('url','')
except Exception:
    base_url = ''
# strip repeated '?tamper=1' occurrences if present
base_url = re.sub(r'(?:\?tamper=1)+$', '', base_url)
tampered_url = base_url + '?tamper=1' if base_url else base_url
tmp = os.environ.get('TMP_CONFIG', '/tmp/mcp_endpoints.json.tampered')
with open(tmp, 'r', encoding='utf-8') as fh:
    d = json.load(fh)
if isinstance(d, dict) and 'endpoints' in d and len(d['endpoints'])>0:
    d['endpoints'][0]['url'] = tampered_url
with open(tmp, 'w', encoding='utf-8') as fh:
    json.dump(d, fh, ensure_ascii=False, indent=2)
print('tampered')
PY

echo "Run enforcement (tampered, no hash update) against temp config"
# Run enforcer against the temporary config; pass CONFIG_PATH so repo config is not overwritten
# Temporarily disable errexit so we can capture enforcer's non-zero exit code without aborting the harness
set +e
CONFIG_PATH="$TMP_CONFIG" HASH_PATH="config/mcp_endpoints.hash" OMOC_TS=${OMOC_TS} bash scripts/mcp_allowlist_enforce.sh
tamper_rc=$?
set -e
echo "tamper_test rc=${tamper_rc}"
# record tamper rc into drift_guard
printf "%s" "$tamper_rc" > "${OUTDIR}/tamper_harness_rc.txt" 2>/dev/null || true
# If the enforcer wrote its own rc file for this run, copy it into the OUTDIR with a
# tamper-specific name so we preserve the enforcer-observed rc (do not overwrite).
if [ -f "evidence/_drift_guard/${OMOC_TS}/allowlist_enforce_rc.txt" ]; then
  cp -n "evidence/_drift_guard/${OMOC_TS}/allowlist_enforce_rc.txt" "${OUTDIR}/allowlist_enforce_tamper_rc.txt" 2>/dev/null || true
fi
# Do not assume separate *_tamper files unless enforcer created them; capture what exists
if [ -f "evidence/_drift_guard/${OMOC_TS}/allowlist_enforce.log" ]; then
  cp "evidence/_drift_guard/${OMOC_TS}/allowlist_enforce.log" "${OUTDIR}/allowlist_enforce_tamper.log" 2>/dev/null || true
fi
if [ -f "evidence/_drift_guard/${OMOC_TS}/allowlist_decisions.jsonl" ]; then
  cp "evidence/_drift_guard/${OMOC_TS}/allowlist_decisions.jsonl" "${OUTDIR}/allowlist_decisions_tamper.jsonl" 2>/dev/null || true
fi

echo "Restore original config and update hash"
# No repo config mutated; just recompute hash from the original backup into repo hash
mv -f /tmp/mcp_endpoints.json.bak config/mcp_endpoints.json 2>/dev/null || true
# recompute hash into repo hash file (write hash only)
sha256sum -b config/mcp_endpoints.json | cut -d ' ' -f1 > config/mcp_endpoints.hash
# Do NOT pre-write allowlist_enforce_rc.txt here. The enforcer itself records its rc to
# evidence/_drift_guard/${OMOC_TS}/allowlist_enforce_rc.txt. Pre-writing risks clobbering
# the enforcer's observed rc and can mask real failures (observed as post-restore anomalies).

echo "Run enforcement (restored, hash updated)"
# capture restore rc without failing the harness unexpectedly
set +e
OMOC_TS=${OMOC_TS} bash scripts/mcp_allowlist_enforce.sh
restore_rc=$?
set -e
echo "restore rc=${restore_rc}"
# If the enforcer wrote its rc file for the restore run, copy it into OUTDIR with a restore-specific name
if [ -f "evidence/_drift_guard/${OMOC_TS}/allowlist_enforce_rc.txt" ]; then
  cp -n "evidence/_drift_guard/${OMOC_TS}/allowlist_enforce_rc.txt" "${OUTDIR}/allowlist_enforce_restore_rc.txt" 2>/dev/null || true
fi
if [ -f "evidence/_drift_guard/${OMOC_TS}/allowlist_enforce.log" ]; then
  cp "evidence/_drift_guard/${OMOC_TS}/allowlist_enforce.log" "${OUTDIR}/allowlist_enforce_restore.log" 2>/dev/null || true
fi
if [ -f "evidence/_drift_guard/${OMOC_TS}/allowlist_decisions.jsonl" ]; then
  cp "evidence/_drift_guard/${OMOC_TS}/allowlist_decisions.jsonl" "${OUTDIR}/allowlist_decisions_restore.jsonl" 2>/dev/null || true
fi

echo "Tamper test complete; tamper_rc=${tamper_rc}, restore_rc=${restore_rc}"
# The tamper test harness expects the enforcer to fail-closed with rc=42.
if [ "${tamper_rc:-0}" -eq 42 ]; then
  # Success: enforcer failed as expected
  exit 0
else
  # Unexpected: enforcer did not fail-closed. Propagate non-zero to indicate test failure.
  echo "Unexpected tamper enforcer rc=${tamper_rc}; expected=42" >&2
  exit ${tamper_rc:-1}
fi
