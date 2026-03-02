#!/usr/bin/env bash
set -euo pipefail

TS="${TS:-$(date -u +%Y%m%dT%H%M%SZ)}"
EV_DIR="evidence/_acceptance/${TS}"
mkdir -p "${EV_DIR}/bundle" "${EV_DIR}/log" "${EV_DIR}/secrets_scan"

# verdict.json (Fail-Closed default unless explicitly pass)
cat > "${EV_DIR}/verdict.json" <<'JSON'
{
  "status": "TEMP_CLOSED",
  "reason": "Evidence skeleton emitted. Promote to PASS only after full checks_manifest + bundle_audit + secrets_scan are populated.",
  "fail_closed": true
}
JSON

# checks_manifest.json (placeholder)
cat > "${EV_DIR}/chec:contentReference[oaicite:28]{index=28}JSON'
{
  "required_checks": [],
  "observed": [],
  "diff": [],
  "notes": "Populate with your repo required checks snapshot + merge_group coverage evidence."
}
JSON

# evidence_index.md
cat > "${EV_DIR}/evidence_index.md" <<'MD'
# evidence_index
- verdict.json
- checks_manifest.json
- evidence_index.md
- bundle/
- bundle_audit.json
- secrets_scan/
MD

# bundle_audit.json (placeholder; fill with sha256 digests in your CI)
cat > "${EV_DIR}/bundle_audit.json" <<'JSON'
{
  "bundle_digest": "UNSET",
  "notes": "Compute sha256 for bundle/ and record here. Missing digest should keep FAIL_CLOSED/TEMP_CLOSED."
}
JSON

# secrets_scan marker
echo "secrets_scan: UNSET (run gitleaks/trufflehog and place outputs here)" > "${EV_DIR}/secrets_scan/README.txt"

echo "OK: Evidence Minset skeleton emitted at ${EV_DIR}"