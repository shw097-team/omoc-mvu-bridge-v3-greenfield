#\!/usr/bin/env bash  
set -euo pipefail

# Superseded scan (WP-014 aligned; skeleton)  
# hits=0 required; if a forbidden legacy reference is found \=\> FAIL_CLOSED

HITS=0  
FORBIDDEN=(  
  "OMOC_實作\\+WP總表_v4\\.0\\.1-r1"  
  "v4\\.0\\.1-r1\\+wpmap"  
)

for p in "${FORBIDDEN[@]}"; do  
  if rg -n --hidden --glob '\!.git/*' -e "$p" . \>/dev/null 2\>&1; then  
    c="$(rg -n --hidden --glob '\!.git/*' -e "$p" . | wc -l | tr -d ' ')"  
    HITS=$((HITS \+ c))  
  fi  
done

echo "superseded_scan.hits=${HITS}" \> superseded_scan.txt

if [[ "${HITS}" -ne 0 ]]; then  
  echo "[FAIL] superseded scan hits \!= 0 (WP-014: superseded contamination)" \>&2  
  exit 13  
fi  
echo "[PASS] superseded scan hits=0"

