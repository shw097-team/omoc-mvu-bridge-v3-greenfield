#\!/usr/bin/env bash  
set -euo pipefail

# TT export (WP-014 aligned; skeleton)  
# CR_OPEN must be 0 in this document; runtime TT may still be OPEN as TEMP_CLOSED backlog.

cat \> tt_export.json \<\<'JSON'  
{  
  "schema":"omoc.tt_export.v1",  
  "generated_at":"REDACTED",  
  "items":[  
    {"tt_id":"TT-RIPA-001","status":"OPEN","owner_role":"CI Governance Auditor","closure_criteria":"至少一次 issue-\>PR-\>reviewer check 回報-\>evidence minset 真實產出（非 stub）","retest_steps":["Run omoc-gate on PR and capture artifacts"]},  
    {"tt_id":"TT-RIPA-002","status":"OPEN","owner_role":"Gatekeeper","closure_criteria":"WP-008 hard minset 齊備且 bundle_audit.result=PASS 且 secrets_scan=0","retest_steps":["Run pack+scan; verify validator PASS"]},  
    {"tt_id":"TT-RIPA-003","status":"OPEN","owner_role":"Evidence Auditor","closure_criteria":"checks_manifest expected/observed/diff/verdict/tt 欄位齊備且 expected 非空；不可得則 TEMP_CLOSED+TT 並附 403 證據","retest_steps":["Attempt gh api; store 403 evidence"]},  
    {"tt_id":"TT-RIPA-004","status":"OPEN","owner_role":"CI Governance Auditor","closure_criteria":"PR+merge_group 兩情境同名 required check 均回報且不被 skip","retest_steps":["WP-012 Mode A MQ probe"]},  
    {"tt_id":"TT-RIPA-006","status":"OPEN","owner_role":"Supply-chain/Sec Auditor","closure_criteria":"secrets_scan=0 且 forbidden patterns=0（含反例測試）","retest_steps":["Insert fake token; expect FAIL_CLOSED"]},  
    {"tt_id":"TT-RIPA-DOC-001","status":"OPEN","owner_role":"Docs-as-Code Auditor","closure_criteria":"doc hygiene scan=0","retest_steps":["Insert oaicite; expect FAIL_CLOSED"]},  
    {"tt_id":"TT-RIPA-DRIFT-001","status":"OPEN","owner_role":"Drift Guard Officer","closure_criteria":"superseded_scan/drift_report/tt_export 三件套可生成","retest_steps":["Run WP-014 quickpath subset"]}  
  ]  
}  
JSON

