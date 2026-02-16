#!/usr/bin/env bash
set -euo pipefail

# Usage: omoc_phase0_required_contexts_probe.sh <TS> <owner> <repo>
TS=${1:-$(date -u +"%Y%m%dT%H%M%SZ")}
OWNER=${2:-}
REPO=${3:-}

workdir="evidence/_acceptance/${TS}"
snapdir="$workdir/snapshots"
mkdir -p "$snapdir"

# determine owner/repo if not provided
if [ -z "$OWNER" ] || [ -z "$REPO" ]; then
  remote_url=$(git remote get-url origin 2>/dev/null || true)
  if [[ "$remote_url" =~ ^git@github.com:(.+)/(.+)\.git$ ]]; then
    OWNER=${BASH_REMATCH[1]}
    REPO=${BASH_REMATCH[2]}
  elif [[ "$remote_url" =~ ^https?://[^/]+/(.+)/(.+)\.git$ ]]; then
    OWNER=${BASH_REMATCH[1]}
    REPO=${BASH_REMATCH[2]}
  fi
fi

if [ -z "$OWNER" ] || [ -z "$REPO" ]; then
  echo "Failed to determine owner/repo. Provide as args or configure git remote origin." >&2
  exit 2
fi

sha=$(git rev-parse HEAD)

echo "Probing ruleset and check-runs for $OWNER/$REPO @ $sha"

# Fetch ruleset snapshot
ruleset_id=12793412
gh api "repos/${OWNER}/${REPO}/rulesets/${ruleset_id}" > "$snapdir/ruleset_${ruleset_id}.json" || {
  echo "gh api ruleset fetch failed" >&2
}

# Extract expected contexts from ruleset JSON using jq
expected_out="$workdir/required_contexts_expected.json"
observed_out="$workdir/required_contexts_observed.json"
# Extract contexts robustly: navigate rules[*].parameters.required_status_checks[].context
if jq -e '.rules[]? | select(.type=="required_status_checks") | .parameters.required_status_checks[]?.context' "$snapdir/ruleset_${ruleset_id}.json" >/dev/null 2>&1; then
  jq -r '.rules[]? | select(.type=="required_status_checks") | .parameters.required_status_checks[]?.context' "$snapdir/ruleset_${ruleset_id}.json" | sed -E 's/^\s+|\s+$//g' | sort -u | awk 'NF' | jq -R -s -c 'split("\n")[:-1]' > "$expected_out" || jq -c '[]' > "$expected_out"
else
  # fallback to previous traversal
  jq -r '(.rules[]? // {} ) | ( .conditions? // {} ) | .. | objects | .contexts? // empty | .[]' "$snapdir/ruleset_${ruleset_id}.json" 2>/dev/null | sed -E 's/^\s+|\s+$//g' | sort -u | jq -R -s -c 'split("\n")[:-1]' > "$expected_out" || jq -c '[]' > "$expected_out"
fi

# Fetch observed check runs for the current commit
obs_raw="$snapdir/commit_${sha}_check_runs.json"
if gh api "repos/${OWNER}/${REPO}/commits/${sha}/check-runs" > "$obs_raw" 2>/dev/null; then
  jq -r '.check_runs[]?.name' "$obs_raw" 2>/dev/null | sed -E 's/^\s+|\s+$//g' | sort -u | awk 'NF' | jq -R -s -c 'split("\n")[:-1]' > "$observed_out" || jq -c '[]' > "$observed_out"
else
  echo "Warning: commit-level check-runs fetch returned non-zero; attempting fallback to recent workflow runs" >&2
  runs_raw="$snapdir/recent_workflow_runs.json"
  gh api "repos/${OWNER}/${REPO}/actions/runs?per_page=10" > "$runs_raw" 2>/dev/null || echo '{}' > "$runs_raw"
  rm -f "$snapdir/observed_names.tmp" || true
  jq -r '.workflow_runs[]?.id' "$runs_raw" 2>/dev/null | while read -r runid; do
    jobsf="$snapdir/run_${runid}_jobs.json"
    gh api "repos/${OWNER}/${REPO}/actions/runs/${runid}/jobs" > "$jobsf" 2>/dev/null || continue
    jq -r '.jobs[]?.name' "$jobsf" 2>/dev/null | sed -E 's/^\s+|\s+$//g' >> "$snapdir/observed_names.tmp" || true
  done
  if [ -f "$snapdir/observed_names.tmp" ]; then
    sort -u "$snapdir/observed_names.tmp" | awk 'NF' | jq -R -s -c 'split("\n")[:-1]' > "$observed_out" || jq -n '[]' > "$observed_out"
  else
    jq -n '[]' > "$workdir/required_contexts_observed.json"
  fi
fi

# Generate diff: expected not in observed, observed not in expected
diff_out="$workdir/required_contexts_diff.json"
# Use a portable jq invocation: slurp both files as JSON values (arrays) and compute set differences
if [ ! -f "$expected_out" ]; then echo '[]' > "$expected_out"; fi
if [ ! -f "$observed_out" ]; then echo '[]' > "$observed_out"; fi
jq -s '.[0] as $e | .[1] as $o | {expected: $e, observed: $o, missing: ($e - $o), extra: ($o - $e)}' "$expected_out" "$observed_out" > "$diff_out" || \
  jq -n --argfile e "$expected_out" --argfile o "$observed_out" '{expected: $e, observed: $o}' > "$diff_out"

echo "Probe completed: $workdir"
echo "expected -> $expected_out"
echo "observed -> $observed_out"
echo "diff -> $diff_out"

exit 0
