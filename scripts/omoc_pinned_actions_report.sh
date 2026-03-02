#\!/usr/bin/env bash  
set -euo pipefail

# Pinned actions report (skeleton)  
# Detect whether "uses:" lines are pinned to a full commit SHA (40 hex)  
# Output: pinned_actions_report.json

SHA_RE='@[0-9a-fA-F]{40}$'  
HITS_UNPINNED=0

# Only scan workflow and composite action files  
mapfile -t files < <(find .github/workflows -type f \( -name "*.yml" -o -name "*.yaml" \) 2>/dev/null || true)

details="[]"  
for f in "${files[@]}"; do  
  # naive grep; keep skeleton  
  while IFS= read -r line; do
    # Example: uses: owner/repo@ref  
    if echo "$line" | rg -q "uses:\s+[^@]+@[^ ]+"; then
      if echo "$line" | rg -q "${SHA_RE}"; then  
        :  
      else  
        HITS_UNPINNED=$((HITS_UNPINNED+1))  
      fi  
    fi  
  done < "$f"
done

cat > pinned_actions_report.json <<JSON
{  
  "schema":"omoc.pinned_actions_report.v1",  
  "unpinned_uses_count": ${HITS_UNPINNED},  
  "verdict": "$( [[ ${HITS_UNPINNED} -eq 0 ]] && echo PASS || echo TEMP_CLOSED )",  
  "notes": "PASS requires all uses pinned to commit SHA; otherwise treat as TEMP_CLOSED and route to supply-chain remediation (e.g., pinact)."  
}  
JSON
