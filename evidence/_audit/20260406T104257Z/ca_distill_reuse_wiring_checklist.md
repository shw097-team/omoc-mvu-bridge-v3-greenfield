TS: 20260406T104257Z

# CA-DISTILL: frozen artifacts 與 wiring checklist

目的：列出 CA-DISTILL 當前被 "freeze" 的 artifact 以及每件 artifact 在 acceptance/release 流程中應指向的位置（wiring）。強調：僅更新 pointer/reference，不得修改工件內容或重新執行。

已凍結工件（locked_for_reuse）— 來源於 repo 搜索與 acceptance 記錄
1. ART-DISTILL-BASE / distill_bundle.json（evidence/distill/{run_id}/ 或 docs/_staging 路徑）
   - wired to: acceptance_report.distill_bundle_ref, release/current/rc_pack/distill_bundle_manifest.tsv, HANDOFF_MANIFEST
2. sgf_report.json（SGF 驗證結果）
   - wired to: acceptance_report.sgf_report_ref, evidence/_acceptance/<TS>/sgf_reports/
3. claim_registry.json / evidence_chain.jsonl（distill claims 與 evidence triplet）
   - wired to: acceptance_registry.claim_index, HANDOFF_MANIFEST, TT_EXPORT
4. alignment_matrix.tsv / reader_quadrants.md
   - wired to: RC_PACK/alignments.tsv, acceptance_report.metadata
5. corpus_snapshot.json / ART-CORPUS-INDEX（只讀）
   - wired to: acceptance_report.corpus_snapshot_ref, evidence/corpus/{run_id}/

每個工件 - 目標指向清單（wiring targets）
- acceptance_report (evidence/_acceptance/<TS>/.../20260406T104257Z_acceptance_report.json 或相應 md)
  - fields: distill_bundle_ref (path + sha256), sgf_report_ref, claim_registry_ref
- RC_PACK / release/current/rc_pack/
  - fields: rc_manifest.tsv（包含 distill bundle hash、distill run_id、linked acceptance TS）
- HANDOFF_MANIFEST / docs/_inputs/otcm/handoffs/
  - fields: handoff_entry.md 指向 proof 或 export bundle
- TT_EXPORT / governance/owner_truth/exports/
  - fields: owner_export_pointer.tsv（package_id, owner_id, path, sha256, ts）

具體工作（pointer 更新，非重建）
1. 為每個 listed artifact 驗證存在性（path readable）與 hash（sha256 調查，若 manifest 中已有則比對；若無則記錄 missing_hash）
2. 在 acceptance registry 中登記 pointer（path + sha256 + evidence acceptance TS）並 commit 作為 audit record（不要修改 artifact 文件內容）
3. 若 target rc_pack 目錄不存在，建立目錄結構並在 rc_manifest.tsv 中登記 pointer（不含 artifact copy，僅 pointer 與 hash）

注意與限制
- 絕對禁止：對任何 frozen artifact 執行重新生成、補丁或替換；所有修復必須透過 pointer 更新或 governance adjudication
- 若發現 artifact file missing 或 hash mismatch，依照 remediation path 中 Drift 觸發條款開啟 ops-exec（WI-OPS-REUSE-PROBE），而非 rerun
