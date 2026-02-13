#!/usr/bin/env bash
set -euo pipefail
UTC="$(date -u +%Y%m%dT%H%M%SZ)"
OUT="evidence/_acceptance/${UTC}/cp1"
mkdir -p "${OUT}/logs" "${OUT}/bundle"
echo "utc=${UTC}" | tee "${OUT}/logs/meta.txt"
echo "pwd=$(pwd)" | tee -a "${OUT}/logs/meta.txt"
echo "git_rev=$(git rev-parse HEAD 2>/dev/null || echo UNVERIFIED)" | tee -a "${OUT}/logs/meta.txt"

miss=0
for p in .devcontainer scripts .github/workflows; do
  if [ -e "$p" ]; then echo "FOUND: $p" | tee -a "${OUT}/logs/paths.txt"
  else echo "MISSING: $p" | tee -a "${OUT}/logs/paths.txt"; miss=1; fi
done

if [ "${miss}" -eq 0 ]; then verdict="PASS"; else verdict="FAIL"; fi
printf '{ "verdict": "%s", "utc": "%s", "paths_log": "%s" }\n' \
  "${verdict}" "${UTC}" "evidence/_acceptance/${UTC}/cp1/logs/paths.txt" \
  > "${OUT}/verdict.json"

{
  echo "# evidence_index"
  echo "- utc: ${UTC}"
  echo "- verdict: ${verdict}"
  echo "- files:"
  (cd "${OUT}" && find . -maxdepth 3 -type f | sort | sed 's|^\./||' | sed 's|^|- |')
} > "${OUT}/evidence_index.md"

tar -czf "${OUT}/bundle/evidence_bundle.tgz" -C "${OUT}" verdict.json evidence_index.md logs
sha256sum "${OUT}/bundle/evidence_bundle.tgz" > "${OUT}/bundle/bundle_sha256.txt"
echo "DONE: ${OUT} verdict=${verdict}"
