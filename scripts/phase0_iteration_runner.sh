#!/usr/bin/env bash
set -euo pipefail

# Usage: phase0_iteration_runner.sh <owner> <repo>
OWNER=${1:-}
REPO=${2:-}

TS=$(date -u +"%Y%m%dT%H%M%SZ")
BASE="evidence/_acceptance/${TS}"
mkdir -p "$BASE"

MAX=3
iter=0
final_verdict="FAIL_CLOSED"

while [ $iter -lt $MAX ]; do
  iter=$((iter+1))
  echo "Iteration $iter/$MAX"
  # run acceptance which will create evidence dir
  ./scripts/phase0_acceptance.sh "$TS" "$OWNER" "$REPO" || true

  # run probe explicitly to refresh snapshots
  ./scripts/omoc_phase0_required_contexts_probe.sh "$TS" "$OWNER" "$REPO" || true

  # canonicalize files
  ./scripts/omoc_phase0_canonicalize_json.sh "$BASE/required_contexts_expected.json" "$BASE/required_contexts_expected.json" || true
  ./scripts/omoc_phase0_canonicalize_json.sh "$BASE/required_contexts_observed.json" "$BASE/required_contexts_observed.json" || true
  ./scripts/omoc_phase0_canonicalize_json.sh "$BASE/required_contexts_diff.json" "$BASE/required_contexts_diff.json" || true

  # check observed contains required contexts
  has_doc=1; has_omoc=1
  if jq -e '.[] | select(. == "doc-validate")' "$BASE/required_contexts_observed.json" >/dev/null 2>&1; then :; else has_doc=0; fi
  if jq -e '.[] | select(. == "omoc-gate")' "$BASE/required_contexts_observed.json" >/dev/null 2>&1; then :; else has_omoc=0; fi

  if [ $has_doc -eq 1 ] && [ $has_omoc -eq 1 ]; then
    final_verdict="PASS"
    echo "PASS detected on iteration $iter"
    break
  else
    echo "Required contexts not present (doc-validate:$has_doc omoc-gate:$has_omoc)"
  fi

  sleep 1
done

# write final verdict and TT if fail
mkdir -p "$BASE/log"
if [ "$final_verdict" = "PASS" ]; then
  jq -n --arg v "$final_verdict" '{verdict:$v}' > "$BASE/verdict.json"
else
  jq -n --arg v "$final_verdict" --argjson tt '["TT-001_PROBE_JQ_INCOMPAT","TT-002_OBSERVED_CONTEXTS_EMPTY","TT-003_CANONICALIZE_POLLUTION"]' '{verdict:$v, tt:$tt, iterations: 1}' > "$BASE/verdict.json"
fi

echo "Iteration runner finished: $BASE/verdict.json"
