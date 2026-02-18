#!/bin/bash
echo "--- OMOC DRIFT GUARD REPORT ---"
echo "Check Date: $(date -u)"

# 1. 檢查工作流檔案數量 (SSOT 要求應為 3)
WF_COUNT=$(ls .github/workflows/*.yml | wc -l)
if [ "$WF_COUNT" -ne 3 ]; then
  echo "[ALERT] Workflow drift detected! Expected 3, found $WF_COUNT."
  ls .github/workflows/*.yml
else
  echo "[PASS] Workflow file count aligned."
fi

# 2. 檢查 GitHub Ruleset 狀態
echo "[INFO] Probing Remote Ruleset $1..."
gh api "repos/:owner/:repo/rulesets/$1" --jq '.enforcement' | grep -q "active" && echo "[PASS] Ruleset is ACTIVE." || echo "[ALERT] Ruleset drift! Not active."
