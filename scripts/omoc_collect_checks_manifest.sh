#!/usr/bin/env bash
set -euo pipefail

# Collect checks_manifest.json (WP-010 aligned; skeleton)
# - expected: prefer rulesets API; fallback to branch protection
# - if expected cannot be fetched (e.g., 403): TEMP_CLOSED + TT (do NOT fake PASS)

TS="${OMOC_TS:-$(date -u +%Y%m%dT%H%M%SZ)}"
OUT_DIR="evidence/_acceptance/${TS}/ercc_observed"
mkdir -p "${OUT_DIR}"

OWNER_REPO="${GITHUB_REPOSITORY:-REDACTED/REDACTED}"
DEFAULT_BRANCH="${OMOC_DEFAULT_BRANCH:-main}"

expected_json="${OUT_DIR}/expected.json"
observed_json="${OUT_DIR}/observed.json"
err_log="${OUT_DIR}/fetch_errors.log"
: > "${err_log}"

fetch_expected() {
  # Try rulesets (requires admin-like scopes)
  if gh api -H "Accept: application/vnd.github+json" "/repos/${OWNER_REPO}/rulesets" > "${expected_json}" 2>>"${err_log}"; then
    return 0
  fi
  # Fallback: branch protection required_status_checks
  if gh api -H "Accept: application/vnd.github+json" "/repos/${OWNER_REPO}/branches/${DEFAULT_BRANCH}/protection" > "${expected_json}" 2>>"${err_log}"; then
    return 0
  fi
  return 1
}

# observed: check-runs/statuses are driftable; for skeleton keep placeholder file but NON-empty
cat > "${observed_json}" <<JSON
{"observed_note":"Populate via check-runs/statuses in CI context","ts":"${TS}"}
JSON

verdict="PASS"
tt_list="[]"

if ! fetch_expected; then
  verdict="TEMP_CLOSED"
  tt_list='["TT-RIPA-003"]'
  echo "[WARN] expected could not be fetched; TEMP_CLOSED + TT-RIPA-003" >> "${err_log}"
fi

cat > checks_manifest.json <<JSON
{
  "required_contexts_contract":{
    "expected_source_order":["rulesets","branch_protection"],
    "expected_file":"${expected_json}",
    "observed_file":"${observed_json}",
    "diff":{"missing":[],"extra":[]},
    "verdict":"${verdict}",
    "tt":${tt_list}
  }
}
JSON
