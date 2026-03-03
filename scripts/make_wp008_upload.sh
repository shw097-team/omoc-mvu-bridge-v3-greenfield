#!/usr/bin/env bash
set -euo pipefail

# Create WP-008 evidence upload summary in the acceptance upload dir and copy to repo root
OMOC_TS="${OMOC_TS:-}"
if [[ -z "$OMOC_TS" ]]; then
  OMOC_TS=$(ls -1 evidence/_acceptance 2>/dev/null | grep -E '^[0-9]{8}T[0-9]{6}Z$' | sort | tail -n1 || true)
fi
[[ -n "$OMOC_TS" ]] || { echo "no OMOC_TS detected" >&2; exit 1; }
ADIR="evidence/_acceptance/$OMOC_TS"
[[ -d "$ADIR" ]] || { echo "missing ADIR: $ADIR" >&2; exit 1; }

git_head=$(git rev-parse --verify --short HEAD 2>/dev/null || git rev-parse --verify HEAD 2>/dev/null || true)
validator_rc=$(cat "$ADIR/rc/validator.rc" 2>/dev/null || echo MISSING)

ls_triplet_and_bundle=$( (ls -ld evidence || true; ls -l evidence/evidence_bundle.tgz 2>/dev/null || true; ls -l evidence_bundle.tgz 2>/dev/null || true) | sed -n '1,200p' )

tar_members_acceptance_prefix_probe=$(tar -tzf evidence_bundle.tgz 2>/dev/null | rg -n "evidence/_acceptance/$OMOC_TS/" 2>/dev/null || true)

bundle_audit_result_probe=$(jq -r '.result // empty' evidence/bundle_audit.json 2>/dev/null || echo MISSING)

secrets_scan_probe=$(head -n 80 "$ADIR/log/secrets_scan.log" 2>/dev/null || true)

validator_log_tail=$(tail -n 80 "$ADIR/log/validator.log" 2>/dev/null || true)

OUT="$ADIR/upload/WP-008_evidence_upload.txt"
mkdir -p "$(dirname "$OUT")"
cat > "$OUT" <<EOF
TS: $OMOC_TS
git_head: ${git_head:-}
validator_rc: $validator_rc

ls_triplet_and_bundle:
$ls_triplet_and_bundle

tar_members_acceptance_prefix_probe:
$tar_members_acceptance_prefix_probe

bundle_audit_result_probe: $bundle_audit_result_probe

secrets_scan_probe (first 80 lines):
$secrets_scan_probe

validator_log_tail (last 80 lines):
$validator_log_tail

EOF

# copy to repo root
cp -f "$OUT" ./WP-008_evidence_upload.txt || true
echo "Wrote $OUT and ./WP-008_evidence_upload.txt"

exit 0
