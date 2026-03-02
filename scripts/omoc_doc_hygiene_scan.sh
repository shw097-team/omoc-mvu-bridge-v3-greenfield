#\!/usr/bin/env bash  
set -euo pipefail

# Doc Hygiene gate (WP-008 aligned; skeleton)  
# Expected hits=0; otherwise FAIL_CLOSED

HITS=0  
TARGETS=(  
  "."  
)

PATTERNS=(  
  "oaicite"  
  "contentReference"  
  "chatgpt.com"  
)

for t in "${TARGETS[@]}"; do  
  for p in "${PATTERNS[@]}"; do  
    if rg -n --hidden --glob '\!.git/*' "$p" "$t" \>/dev/null 2\>&1; then  
      # Count without printing matches (avoid leaking sensitive content)  
      c="$(rg -n --hidden --glob '\!.git/*' "$p" "$t" | wc -l | tr -d ' ')"  
      HITS=$((HITS \+ c))  
    fi  
  done  
done

echo "doc_hygiene.hits=${HITS}" \> doc_hygiene_scan.txt

if [[ "${HITS}" -ne 0 ]]; then  
  echo "[FAIL] doc hygiene hits \!= 0" \>&2  
  exit 11  
fi  
echo "[PASS] doc hygiene hits=0"

