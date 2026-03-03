#!/usr/bin/env bash
set -euo pipefail

# timestamp (UTC-ish). 若你已有 OMOC_TS 可自行 export；否則自動生成
OMOC_TS="${OMOC_TS:-$(date -u +%Y%m%dT%H%M%SZ)}"

OUT_DIR="evidence/_acceptance/${OMOC_TS}/upload"
OUT_TXT="${OUT_DIR}/WP-006__ERCC__single_upload.txt"
mkdir -p "${OUT_DIR}"

repo="$(gh repo view --json nameWithOwner -q .nameWithOwner)"
pr="${PR_NUMBER:-7}"
head_sha="$(gh pr view "$pr" --json headRefOid -q .headRefOid)"

{
  echo "=== OMOC WP-006 ERCC single upload ==="
  echo "ts=${OMOC_TS}"
  echo "repo=${repo}"
  echo "pr_number=${pr}"
  echo "head_sha=${head_sha}"
  echo

  echo "## (A) gh pr checks"
  gh pr checks "$pr" || true
  echo

  echo "## (B) check-runs.name (sorted unique)"
  gh api -H "Accept: application/vnd.github+json" \
    "repos/${repo}/commits/${head_sha}/check-runs" \
    | jq -r '.check_runs[].name' | sort -u
  echo

  echo "## (C) workflow snippet: .github/workflows/doc-validate.yml (top 120 lines)"
  if [ -f .github/workflows/doc-validate.yml ]; then
    sed -n '1,120p' .github/workflows/doc-validate.yml
  else
    echo "[MISSING] .github/workflows/doc-validate.yml not found"
  fi
  echo

  echo "## (D) local existing evidence files (if present)"
  for f in \
    WP-006_PRfix_observed_names_evidence_upload.txt \
    WP-006_ERCC_after_fix_evidence_upload.txt \
    WP-006_fix_doc_validate_evidence_upload.txt \
    bash反饋.txt
  do
    if [ -f "${f}" ]; then
      echo "--- FILE: ${f} ---"
      sed -n '1,200p' "${f}"
      echo
    fi
  done

  echo "=== END ==="
} | perl -pe 's/\e\][0-9;]*[a-zA-Z]//g; s/\r//g' > "${OUT_TXT}"

echo "OK: wrote ${OUT_TXT}"
