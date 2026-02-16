#!/usr/bin/env bash
set -euo pipefail

# Usage: omoc_phase0_canonicalize_json.sh <input.json> <output.json>
in=${1:-}
out=${2:-}

if [ -z "$in" ] || [ -z "$out" ]; then
  echo "Usage: $0 <input.json> <output.json>" >&2
  exit 2
fi

if [ ! -f "$in" ]; then
  echo "Input file not found: $in" >&2
  exit 2
fi

# Use jq to parse and re-emit canonical JSON
# Trim strings, remove wrapping double-quoted JSON strings, dedupe arrays, sort


# Conservative, jq-1.7-compatible canonicalization.
# 1) If input is valid JSON and is an array of scalars -> trim each string, unique, sort
# 2) If input is valid JSON but not an array of scalars -> emit sorted JSON
# 3) If input is invalid JSON -> emit empty array [] (via jq)

if jq -e . "$in" >/dev/null 2>&1; then
  # detect top-level array of scalars (strings/numbers)
  if jq -e 'type=="array" and (length==0 or ([.[0]] | map(type) | all(. == "string" or . == "number")))' "$in" >/dev/null 2>&1; then
    jq '[.[] | tostring | gsub("^[ \t\n\r]+|[ \t\n\r]+$"; "") ] | unique | sort' "$in" | jq -S . > "$out"
  else
    jq -S . "$in" > "$out"
  fi
else
  jq -n '[]' > "$out"
fi

echo "Canonicalized $in -> $out"

exit 0
