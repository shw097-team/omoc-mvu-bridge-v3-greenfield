TS: 20260406T104257Z

# 子系統修復路徑（CA-DISTILL + CA-METHOD）

概要
- 本文件根據 evidence/_audit/20260406T104257Z/freeze_decision.json（FAIL_CLOSED）與 owner_truth 矩陣，制定在「不得重新執行（no-rerun）」條件下的修復/閉環路徑。
- 關鍵前提：CA-DISTILL 僅允許「reuse（引用/指向）」已凍結產物；不得執行 rollback/release/promotion。CA-METHOD 僅允許 closure-only（兩條路徑：A. 找到 Package D owner proof；B. 進行 scope adjudication）。

a) CA-DISTILL 當前狀態
- Freeze 決策： evi­dence/_audit/20260406T104257Z/freeze_decision.json -> "FAIL_CLOSED"（2026-04-06T11:06:38Z）
  - 何者被冻结：CA-DISTILL 產物（ART-DISTILL-BASE / distill_bundle / sgf_report 等）視為 read-only / frozen-for-reuse；不可透過 rerun 或重新 materialize 改寫。
  - 為何冻结：缺少必需 inputs 與 owner-side bundles（CR-OTCM-001/002/003 未 mount）且 owner_truth 多筆 UNVERIFIED（freeze_decision.json lines 6..21）。
  - 鎖定可重用的證據/工件（locked for reuse）：
    * evidence/_acceptance/* （多個時間戳目錄，例 evidence/_acceptance/20260309T075722Z/, 20260330T013431Z/ 等）中的 root_role_map.tsv、canonical_roster.tsv、subsystem_contracts.index.md、zone_bootstrap_manifest.json
    * evidence/_acceptance/20260402T054030Z/full_return_contract.txt（指示 CA-DISTILL materialization expectation）
    * docs/_staging / docs/ssot 中定義的 ART-DISTILL-BASE, sgf_report.json 路徑/命名慣例（參見 docs/_staging/**、docs/ssot/** 搜尋結果）
  - 需要的接線（wiring / pointers）：
    * acceptance_report -> 引用 evidence/_acceptance/<TS>/* 中的 canonical_roster.tsv 與 root_role_map.tsv
    * RC_PACK / release/current/rc_pack/（尚未準備）應保留對 distill bundle 的只讀 pointer（hash + path），不得重建
    * HANDOFF_MANIFEST / task handoff 文件應指向 docs/_inputs/otcm/ 的原始 owner-export 或缺失記錄
  - 禁止執行：不得 rerun distill、不得執行 rollback/release/promotion（Fail-Closed 條款）。

b) CA-METHOD 當前狀態
- TT-PKG-D-001 狀態：OPEN_OWNER_TRUTH / PENDING（owner_truth_matrix.tsv / evidence/_audit/20260406T104257Z/owner_truth_preflight_report.md 皆標示 MISSING）
- Allowed closure-only 路徑（二擇一）：
  Path A — 搜尋 Package D owner proof（首選）
    * 在哪裡搜尋（repo 內部明確範圍，請勿假定外部檔案存在）：
      - docs/_inputs/otcm/governance/owner_truth/（owner_truth_matrix.tsv、donor_admissibility.tsv 等）
      - docs/_inputs/otcm/（OTCM_v2 全線修補藍圖、全線修補藍圖筆記等）
      - evidence/_acceptance/（歷史 acceptance 與 root_role_map、canonical_roster）
      - release/_contracts/inputs_absorption_manifest.tsv、release/_contracts/acceptance_matrix.tsv
      - docs/packages/*（Subsystem Delivery Pack）
      - .github/workflows/（若 owner-export bundle 被作為 workflow artifact 或注記）
    * 可接受的 proof 格式（需能被驗證）：
      - owner export bundle（machine-readable archive）包含：manifest.json 或 export_manifest.tsv、signed_hash、owner_identifier（org/team/agent）、export_timestamp、list of package files with SHA256、verification_script 或 validation_report.json
      - task_handoff_report_ca_method_*.md（含 success-criteria 與 owner export bundle verification anchor，例 task_handoff_report_ca_method_20260403T192306+0800.md#success-criteria）
      - 證據內需欄位：package_id (Package D), owner_id, export_hash, signature/location, verification_instructions
    * 若找到：準備吸收（absorb）流程 — 不執行 rerun；採取 pointer 注入（把 proof 的 hash 與 path 寫入 acceptance registry / owner_truth exports），並進行 authoritative reconciliation（scripts/validate_owner_export_bundle.py 相當動作；注意：repo 中 scripts 可能缺失，請參照 docs/_inputs/otcm/scripts/ 來源）
    * 若找不到：移至 Path B

  Path B — Scope adjudication（fallback）
    * 誰有權宣告 Package D 為 out-of-scope：
      - OTCM Architect（decision_authority 在 freeze_decision.json 為 "OTCM Architect (Sisyphus RIP-C v3)"）或由 governance/owner_truth 中所列的 Owner Authority Panel（若存在）
      - 若 governance/owner_truth 尚未準備，須由 OTCM Architect 或授權的 Governance Chair 發布正式 adjudication memo
    * 形式（adjudication output）：
      - 決策備忘（Decision Memo / adjudication.md）包含：reasoning, signature/approval, effective TS, scope designation (SCOPED_OUT), references to owner_truth_matrix row(s) and acceptance evidence
      - TT record：在 TT 系統內建記錄，例如在 evidence/_audit/<TS>/ 中產生 adjudication_record.json 並更新 owner_truth_matrix.tsv 狀態為 SCOPED_OUT
    * 若 adjudication 批准：把 TT-PKG-D-001 標記為 SCOPED_OUT，並在 acceptance registry 註記不可進入 CA-METHOD（TEMP_CLOSED -> closure）。

- 當前狀態總結：
  - TT-PKG-D-001 尚未被任何一條閉環路徑（A 或 B）激活；owner proof 未找到（evidence/_audit/20260406T104257Z/owner_truth_preflight_report.md / freeze_decision.json 描述）

c) 修復序列（Sequencing） — 嚴格不執行 rerun
前置條件（硬性）：
  - Deploy FULL scaffold（Phase B）：repo 必須先 mount docs/_inputs/otcm 內列出的缺失 inputs 且建立 governance/owner_truth/ 以及 release/current/rc_pack/ 指定結構（freeze_decision.json action_items）。

執行步驟（序列）
  Step 0 (準備，不為 rerun)：完成 inputs mount 與 RC_PACK pointer 建立（手動或由 release team 按 docs 指令），但不對 CA-DISTILL 產物執行任何生成。確認 evidence/_acceptance/* 中的 canonical_roster.tsv 與 root_role_map.tsv 可讀。
  Step 1: 執行 preflight（OWNER-TRUTH-PREFLIGHT）使用新的 contracts 與 acceptance registry（注意：preflight 只做驗證、登記、指向，不做 rerun）。
  Step 2 (parallel): 同時啟動 CA-METHOD proof search（Path A）— 在明確 scope 內搜尋 owner export bundle，產出 search_report（evidence/_audit/<TS>/ca_method_proof_search_report.md）
  Step 3: 決策分岔
    - 若 Step 2 找到可驗證 proof → 吸收（absorb pointers）：把 proof hash 與 path 注入 owner_truth_registry / acceptance_report，並標記 TT-PKG-D-001 = RESOLVED_BY_PROOF；執行 authoritative reconciliation（記錄但不 rerun CA-METHOD）
    - 若未找到 → 提交 scope adjudication（Path B）：發起 Governance adjudication 工作流（documented decision memo + TT record），若批准則標記 TT-PKG-D-001 = SCOPED_OUT
  Step 4: Lock（finalize）並移入 reconciliation 與 release 路徑（若已 RESOLVED_BY_PROOF 或 SCOPED_OUT）；更新 acceptance registry 與 evidence/_audit/<TS>/* 檔案，產出 closure_report

d) Drift 觸發條件（何時打開 ops-exec）
- CA-DISTILL
  - 條件：若發現「已重用的 frozen artifacts」之 hash 或內容在 runtime/production 出現偏移（drift）或引用 pointer 失效 -> 開啟 ops-exec 視窗 WI-OPS-REUSE-PROBE
  - 目的：判定是否為環境差異（pointer mis-configuration）或 artifact corruption（需人為回溯），但仍不得以 rerun 取代 owner-side proof

- CA-METHOD
  - 條件：若 runtime 使用時發現 owner proof 被 invalidated（簽章失效、hash mismatch、artifact missing）-> 開啟 ops-exec WI-OPS-METHOD-REPROBE
  - 目的：最小化現場修復（pointer 修正、補掛已獲批的 owner bundle），不做任何 distill/method rerun 或 release/promotion

附錄與參考（repo 內文件）
- evidence/_audit/20260406T104257Z/freeze_decision.json
- evidence/_audit/20260406T104257Z/owner_truth_preflight_report.md
- governance/owner_truth/owner_truth_matrix.tsv
- docs/_inputs/otcm/（OTCM_v2 等，需 mount 至 repo root）
- evidence/_acceptance/20260309T075722Z/ (root_role_map.tsv, canonical_roster.tsv)

注意事項
- 不要在任何情況下重新執行 CA-DISTILL / CA-METHOD 生成步驟以嘗試自動回補 owner truth。所有 closure 必須基於「現存可驗證的 owner export bundle」或「明確授權的 scope adjudication」。
