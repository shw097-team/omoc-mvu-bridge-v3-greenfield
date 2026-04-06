TS: 20260406T104257Z

# CA-METHOD: Package D owner proof 搜索檢查表

目的：列出在 repo 內可檢索的路徑與接受性標準，供 Path A（尋找 owner proof）使用。明確限定搜尋範圍為 repo 內檔案，不假定外部位置存在。

搜尋範圍（repo 內）
- docs/_inputs/otcm/governance/owner_truth/
- docs/_inputs/otcm/ （OTCM_v2 文檔、全線修補藍圖筆記）
- evidence/_acceptance/（歷史 acceptance 與 root_role_map, canonical_roster）
- evidence/_audit/（先前 audit 報告與 freeze_decision.json）
- release/_contracts/（inputs_absorption_manifest.tsv、acceptance_matrix.tsv）
- docs/packages/（Subsystem Delivery Pack 文檔）
- .github/workflows/（可能包含 artifact 生成或標記）
- docs/_staging, docs/ssot（架構單一來源文件，檢查引用與 anchor）

具體檔案（優先順序）
1. docs/_inputs/otcm/governance/owner_truth/owner_truth_matrix.tsv
2. docs/_inputs/otcm/governance/owner_truth/donor_admissibility.tsv
3. docs/_inputs/otcm/task_handoff_report_ca_method_*.md（若存在）
4. evidence/_acceptance/*/root_role_map.tsv, canonical_roster.tsv
5. release/_contracts/inputs_absorption_manifest.tsv
6. docs/_inputs/otcm/OTCM_v2_全線修補RBWI_PATCHED_v2_2.md 和 全線修補藍圖筆記-*.md
7. docs/packages/E_subsystem_delivery/*（檢查 TT-PKG-D-001 列表）

Proof 接受準則（acceptance criteria）
- 必填欄位（bundle 或手動報告需包含）：
  1. package_id == "Package D"
  2. owner_id（組織或團隊識別）
  3. export_manifest（list of files + SHA256 hashes）或 manifest.json
  4. signed_hash 或可驗證的 checksum string
  5. export_timestamp
  6. verification_report or validation_report.json（簡短說明驗證步驟與結果）
  7. 明確對應 owner_truth_matrix 的 row reference（例如 task_handoff_report_ca_method_20260403T192306+0800.md#success-criteria）

可接受格式示例
- archive: package_d_owner_export_20260402T... .tar.gz + manifest.json + signature.txt
- markdown handoff: task_handoff_report_ca_method_20260403T192306+0800.md 包含 success-criteria 與 verification anchor 並指向 export bundle 在 docs/_inputs/otcm/exports/
- JSON manifest: export_manifest.json 包含 file list + sha256 + owner metadata

不可接受或需額外驗證的情況
- 只有 CA-DISTILL rollback drill / rollback_receipt（donor_admissibility.tsv 明確標註為 not reusable）
- 口頭/issue 註記無對應 manifest/sha256
- external URL references without in-repo persisted artifact與hash

若 proof 找到後的最低動作清單
1. 生成 search_report（evidence/_audit/<TS>/ca_method_proof_search_report.md）列出 proof 路徑、hash、符合性欄位
2. 在 owner_truth_registry/acceptance_report 中注入 pointer（path + hash），標記 TT-PKG-D-001 = RESOLVED_BY_PROOF
3. 記錄 validation steps 與 decision author（append to evidence/_audit/<TS>/）

Fallback
- 若在上述範圍內找不到可接受 proof，請立即轉 Path B（scope adjudication）。在任何情況下，不得透過重新執行 CA-DISTILL/CA-METHOD 來生成 proof。
