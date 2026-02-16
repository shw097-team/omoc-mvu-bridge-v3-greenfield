#!/usr/bin/env bash
set -euo pipefail

TS=${1:-$(date -u +"%Y%m%dT%H%M%SZ")}
OWNER=${2:-}
REPO=${3:-}

base="evidence/_acceptance/${TS}"
mkdir -p "$base/snapshots" "$base/log"

echo "Recording tool versions"
cat > "$base/log/tool_versions.txt" <<EOF
gh: $(gh --version 2>/dev/null || echo UNVERIFIED)
git: $(git --version 2>/dev/null || echo UNVERIFIED)
node: $(node --version 2>/dev/null || echo UNVERIFIED)
npm: $(npm --version 2>/dev/null || echo UNVERIFIED)
python3: $(python3 --version 2>/dev/null || echo UNVERIFIED)
jq: $(jq --version 2>/dev/null || echo UNVERIFIED)
rg: $(rg --version 2>/dev/null || echo UNVERIFIED)
oh-my-opencode: UNVERIFIED
EOF

./scripts/omoc_phase0_required_contexts_probe.sh "$TS" "$OWNER" "$REPO"

# canonicalize outputs
./scripts/omoc_phase0_canonicalize_json.sh "$base/required_contexts_expected.json" "$base/required_contexts_expected.json.canonical" || true
./scripts/omoc_phase0_canonicalize_json.sh "$base/required_contexts_observed.json" "$base/required_contexts_observed.json.canonical" || true
./scripts/omoc_phase0_canonicalize_json.sh "$base/required_contexts_diff.json" "$base/required_contexts_diff.json.canonical" || true

# move canonicalized files into main names
mv -f "$base/required_contexts_expected.json.canonical" "$base/required_contexts_expected.json" || true
mv -f "$base/required_contexts_observed.json.canonical" "$base/required_contexts_observed.json" || true
mv -f "$base/required_contexts_diff.json.canonical" "$base/required_contexts_diff.json" || true

# produce verdict placeholder
cat > "$base/verdict.json" <<EOF
{"verdict":"UNVERIFIED"}
EOF

# checks manifest
cat > "$base/checks_manifest.json" <<EOF
{"checks":["doc-validate","omoc-gate"], "ruleset_id":12793412}
EOF

# evidence index
cat > "$base/evidence_index.md" <<EOF
# Evidence Index

- snapshots/ruleset_12793412.json
- required_contexts_expected.json
- required_contexts_observed.json
- required_contexts_diff.json
EOF

# bundle audit
cat > "$base/bundle_audit.json" <<EOF
{"bundled_at":"$TS","files":[]}
EOF

# call evidence collector (probe already ran above; ensure snapshots present)
./scripts/omoc_phase0_required_contexts_probe.sh "$TS" "$OWNER" "$REPO" >/dev/null 2>&1 || true

echo "Phase0 acceptance artifacts created at $base"

exit 0
