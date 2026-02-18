#!/usr/bin/env bash
set -euo pipefail

# Create an evidence_bundle.tgz that contains only the required root artifacts
# and a single TS acceptance dir under evidence/_acceptance/<TS>/.
# Usage: OMOC_TS=20260216T071622Z ./scripts/pack/create_evidence_bundle.sh

ROOT="$(git rev-parse --show-toplevel 2>/dev/null || pwd)"
cd "$ROOT"

TS="${OMOC_TS:-}" 
if [[ -z "$TS" ]]; then
  echo "OMOC_TS must be set (e.g. OMOC_TS=20260216T071622Z)" >&2
  exit 1
fi

ADIR="evidence/_acceptance/$TS"
if [[ ! -d "$ADIR" ]]; then
  echo "missing acceptance dir: $ADIR" >&2
  exit 1
fi

for f in verdict.json checks_manifest.json evidence_index.md bundle_audit.json; do
  [[ -f "$f" ]] || { echo "missing root artifact: $f" >&2; exit 1; }
done

tmpd=$(mktemp -d)
trap 'rm -rf "$tmpd"' EXIT

# replicate required layout
mkdir -p "$tmpd/evidence/_acceptance"
cp verdict.json checks_manifest.json evidence_index.md bundle_audit.json "$tmpd/"
cp -a "$ADIR" "$tmpd/evidence/_acceptance/"

# create bundle from tmpdir so paths are deterministic and only include desired entries
tar -C "$tmpd" -czf evidence_bundle.tgz verdict.json checks_manifest.json evidence_index.md bundle_audit.json evidence/_acceptance/"$TS"

# compute sha & size
if command -v sha256sum >/dev/null 2>&1; then
  sha256=$(sha256sum evidence_bundle.tgz | awk '{print $1}')
else
  sha256=$(shasum -a 256 evidence_bundle.tgz | awk '{print $1}')
fi
size=$(wc -c < evidence_bundle.tgz | tr -d '[:space:]')
echo "$sha256  $size" > "evidence/_acceptance/$TS/log/evidence_bundle.sha256.size.txt"

echo "evidence_bundle.tgz created: sha256=$sha256 size=$size"

exit 0
