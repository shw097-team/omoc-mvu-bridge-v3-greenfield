#!/usr/bin/env bash
set -euo pipefail
# - MUST be executed in a feature branch and delivered via PR (PR-only).  
# - Writes repo artifacts for RIP-A gate workflows/scripts/policy.  
# - DOES NOT set secrets or modify GitHub UI.

TS="${OMOC_TS:-$(date -u \+%Y%m%dT%H%M%SZ)}"  
OUT_DIR="evidence/_acceptance/${TS}/log"  
mkdir -p "${OUT_DIR}"

echo "[omoc_install_rip_a] TS=${TS}" | tee "${OUT_DIR}/install.log"  
echo "NOTE: This installer is a skeleton. Commit changes via PR only." | tee -a "${OUT_DIR}/install.log"

# Minimal inventory (machine-readable)  
cat \> "${OUT_DIR}/rip_a_install_inventory.json" \<\<'JSON'  
{  
  "rip_id":"OMOC_RIP-A",  
  "version":"v1.1.0",  
  "artifacts_expected":[  
    ".github/workflows/omoc-gate.yml",  
    "scripts/omoc_validate_contracts.sh",  
    "scripts/omoc_collect_checks_manifest.sh",  
    "scripts/omoc_pack_evidence.sh",  
    "scripts/omoc_secrets_scan.sh",  
    "scripts/omoc_doc_hygiene_scan.sh",  
    "scripts/omoc_superseded_scan.sh",  
    "scripts/omoc_drift_report.sh",  
    "scripts/omoc_tt_export.sh",  
    "scripts/omoc_pinned_actions_report.sh",  
    "policy/omoc_agent_policy.yml",  
    "policy/candidates_manifest.yaml"  
  ]  
}  
JSON

echo "[omoc_install_rip_a] DONE (inventory written)."
