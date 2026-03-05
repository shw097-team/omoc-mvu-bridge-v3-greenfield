# HOW (extracted)


| Input Category | Doc ID / File Name | Version / Hash | Critical Role | Status |
| ----- | ----- | ----- | ----- | ----- |
| **Governance** | Spartoi-OMOC Blueprint v2.2.0-r1 | v2.2.0-r1 | 治理母法、Fail-Closed 裁決、三平面定義 | **FOUND** |
| **Architecture** | Spartoi-OMOC(15 CA)重構升級藍圖 | v0.2.0-r1 | 15 子系統定義、Stable ID、Gate 映射 | **FOUND** |
| **Legacy Base** | Spartoi-OMOC\_SRS\_v8.0.0-r1 | v8.0.0-r1 | 需求基線、被繼承的主體 | **FOUND** |
| **Audit Fix** | 審查報告 A (Audit-A) | v1 | F-001\~F-015 修補指令 | **FOUND** |
| **Audit Fix** | 審查報告 B (Audit-B) | v1 | CR\_OPEN/MAI/RTM 補全指令 | **FOUND** |
| **Pipeline** | Pipeline-A\_組合方案 | v2 | CA-WRC/CORPUS/DISTILL/DSL 邊界 | **FOUND** |
| **Pipeline** | Pipeline-B 組合方案 | v2 | CA-METHOD/BACKTEST/PERFORM 邊界 | **FOUND** |
| **Pipeline** | Pipeline-C 組合方案 | v1 | CA-TA/SELECT/TRANSLATE 邊界 | **FOUND** |
| **Database** | Pipeline-A+B 整合資料庫方案 | v4 | 資料落盤契約、SSOT Remote 定義 | **FOUND** |
| **Execution** | OMOC-MVU 套件包 | v0.2.0-r1 | 執行平面契約、Evidence Triplet 定義 | **FOUND** |


---


| 平面 (Plane) | 職責 (Responsibility) | 核心組件/機制 (Components) | Fail-Closed 行為 |
| ----- | ----- | ----- | ----- |
| **Control Plane**(控制平面) | **立法與裁決**：定義規則、門檻、權限與阻斷條件。 | GitHub (Rulesets, Merge Queue, Environments), GateKit (Policies) | **BLOCK\_RELEASE**：規則衝突或檢核失敗，直接阻斷流程。 |
| **Execution Plane**(執行平面) | **執行與產出**：依據控制面規則，執行具體任務並產出證據。 | OpenCode/OMOC (Chef, Deputy, Experts), 15 CA Subsystems | **EXECUTE\_DISABLED**：權限不足或環境異常，禁用執行能力。 |
| **Peripheral Plane**(外圍平面) | **能力擴充**：提供外部工具與技能，受嚴格隔離管控。 | MCP Servers, OpenClaw, External Tools | **DEFAULT\_DENY**：未經白名單授權與沙箱掃描，預設拒絕連接。 |


---


| Stable ID | Display Name (顯示名) | Macro Module (宏模組) | Primary Purpose (核心職責) | Input/Output Contract (I/O 契約) | Default Fail-Closed Mode | Mandatory Gate |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| **CA-WRC** | Writer/Research Collector | K (Knowledge & Distill) | 蒐集/整理原始素材（含教材/法規/研究），執行白名單入庫。 | **IN**: Source List**OUT**: ART-CORPUS-RAW | **RADAR\_ONLY** | GATE-WRC-TIER |
| **CA-CORPUS** | Corpus Indexer | K (Knowledge & Distill) | 建立可檢索語料索引（GraphRAG 工件化），確保 100% 覆蓋。 | **IN**: ART-CORPUS-RAW**OUT**: ART-CORPUS-INDEX | **RADAR\_ONLY** | GATE-BP-003-EVIDENCE |
| **CA-DISTILL** | Distiller | K (Knowledge & Distill) | 蒸餾出基底偽代碼/規格片段，確保語義忠實度。 | **IN**: ART-CORPUS-INDEX**OUT**: ART-DISTILL-BASE | **READ\_ONLY\_UI** | GATE-SC-002-SUPPLYCHAIN |
| **CA-DSL** | DSL & Spec Generator | S (Strategy Spec) | 產生/維護 DSL、Spec 片段，確保原語中立性與無台股常數。 | **IN**: ART-DISTILL-BASE**OUT**: ART-DSL-SPEC | **READ\_ONLY\_UI** | GATE-BP-004-RTM |
| **CA-METHOD** | Method Designer | S (Strategy Spec) | 方法/策略描述與版本化管理，確保可回溯、可驗證 (MSC)。 | **IN**: ART-DSL-SPEC**OUT**: ART-METHOD-SPEC | **PAPER\_ONLY** | GATE-SAFE-002-RADARONLY |
| **CA-BACKTEST** | Backtest Engine Adapter | B (Backtest & Eval) | 執行回測/評估，產出不可竄改報告，確保無前視偏誤。 | **IN**: ART-METHOD-SPEC**OUT**: ART-BACKTEST-RESULT | **PAPER\_ONLY** | GATE-SAFE-003-EXECUTE\_DISABLED |
| **CA-TA** | Technical Analysis | F (Features & Selection) | 技術分析訊號生成，產出特徵矩陣與 SignalCard。 | **IN**: ART-DATA-MARKET**OUT**: ART-TA-SIGNALS | **RADAR\_ONLY** | GATE-SAFE-002-RADARONLY |
| **CA-SELECT** | Selection/Ranking | F (Features & Selection) | 選股/排序/候選池生成，產出可審核排名 (NDCG 檢核)。 | **IN**: ART-TA-SIGNALS**OUT**: ART-SELECT-CANDIDATES | **RADAR\_ONLY** | GATE-SAFE-002-RADARONLY |
| **CA-TRANSLATE** | XS Translator | O (Ops & Execution) | XS/DSL/指令轉譯，確保轉譯等價性 (TVE)，禁止自動下單。 | **IN**: ART-SELECT-CANDIDATES**OUT**: ART-XS-PLAN | **EXECUTE\_DISABLED** | GATE-SAFE-003-EXECUTE\_DISABLED |
| **CA-WATCH** | Watchlist & Alerts | O (Ops & Execution) | 監控/告警訊號生成，產出 Alerts 證跡，僅讀模式。 | **IN**: ART-TA-SIGNALS**OUT**: ART-WATCH-ALERTS | **RADAR\_ONLY** | GATE-SAFE-002-RADARONLY |
| **CA-EXECUTE** | Execution Adapter | O (Ops & Execution) | **執行層適配器（預設關閉）**，負責指令遞交與 Kill-Switch。 | **IN**: ART-XS-PLAN**OUT**: ART-EXECUTE-DRYRUN | **EXECUTE\_DISABLED** | GATE-HITL-001-ENV\_APPROVAL |
| **CA-PERFORM** | Performance & Risk | B (Backtest & Eval) | 績效/風險/報表分析，執行 Dual-Track 評估。 | **IN**: ART-BACKTEST-RESULT**OUT**: ART-PERFORM-REPORT | **READ\_ONLY\_UI** | GATE-BP-003-EVIDENCE |
| **CA-UI** | UI/Console | G (Governance & UX) | UI 只讀呈現/審核入口，**嚴禁交易按鈕**，僅顯示證據面板。 | **IN**: ART-PERFORM-REPORT**OUT**: ART-UI-READONLY-BUILD | **READ\_ONLY\_UI** | GATE-UI-001-READONLY\_POLICY |
| **CA-COLLAB** | Collaboration | G (Governance & UX) | 協作/PR/審核流程對接，記錄多代理協作證跡。 | **IN**: PR metadata**OUT**: ART-COLLAB-AUDITLOG | **READ\_ONLY\_UI** | GATE-MQ-001-MERGE\_GROUP |
| **CA-GOVERN** | Governance & Policy | G (Governance & UX) | 門禁/規則/政策管理，執行 Authority Stack 裁決與 Gate 報告。 | **IN**: Authority Stack**OUT**: ART-GOVERN-REGISTRY | **READ\_ONLY\_UI** | GATE-BP-001-TABLELINT |


---


| 術語 (Term) | 定義 (Definition) | 規範來源 (Source) |
| ----- | ----- | ----- |
| **Fail-Closed** | **失效關閉**。一種系統預設的安全狀態。當遇到資訊缺失、證據不足、Schema 不符、衝突無法裁決或依賴服務不可用時，系統 **必須** 立即停止當前操作，並轉入預定義的安全模式（BLOCK\_RELEASE, RADAR\_ONLY, 或 EXECUTE\_DISABLED），**嚴禁**「先執行再說」或「假設通過」。 | ,, |
| **BLOCK\_RELEASE** | **阻斷發布**。Gate Policy 三態之一。表示該異常狀態屬於「致命錯誤」或「合規紅線」。觸發時，系統 **必須** 強制停止 Pipeline，禁止任何產物進入 Release 或 Deployment 階段。 | ,, |
| **RADAR\_ONLY** | **僅觀測模式**。Gate Policy 三態之一。表示系統功能降級為「只監控、只產生訊號、只記錄日誌」，但 **嚴禁** 發送任何會產生副作用（如交易、通知外部）的指令。適用於資料品質預警或非關鍵服務降級。 | ,, |
| **EXECUTE\_DISABLED** | **執行禁用**。Gate Policy 三態之一。專指「高風險執行層（Execution Plane）」的保險絲熔斷狀態。觸發時，CA-EXECUTE **必須** 物理性或邏輯性切斷所有對外下單、API 呼叫的能力，僅允許內部狀態更新。 | ,, |
| **CR\_OPEN** | **開放式變更請求** (Change Request Open)。指系統中「尚未完全收斂、證據不足或需後續驗證」的需求項目。所有 CR\_OPEN 項目 **必須** 綁定一個 Fail-Closed 的 Gate Policy，不得留於 Open 狀態而不處置。取代舊版 "Candidate" 術語。 | ,, |
| **Authority Stack** | **權威堆疊**。定義文件間衝突時的裁決順位。SRS 為需求最高權威 (L1)，優於 ARCH (L2)、ICD (L3) 與 Runbook (L5)。 | , |


---


| 術語 (Term) | 定義 (Definition) | 規範來源 (Source) |
| ----- | ----- | ----- |
| **15 CA Subsystems** | **15 子系統**。Spartoi-OMOC 的功能邊界白名單，包含 CA-WRC 至 CA-GOVERN 共 15 個固定單元。**禁止** 新增第 16 個子系統（如 CA-FIREWALL 已被刪除並整併至 CA-GOVERN）。每個 CA 擁有唯一的 Stable ID。 | ,, |
| **Stable ID** | **穩定識別碼**。指 15 CA 的技術識別碼（如 `CA-WRC`），在系統演進過程中 **永不變更**。與之相對的是 `Display Name`（顯示名稱）與 `Macro Module`（宏模組），後者可隨 UI/UX 調整。 | ,, |
| **SF Key** | **Spartoi Flow 主鍵**。系統全流程的唯一鍵值體系，格式為 `SF-xx`（如 SF-01, SF-11）。**嚴禁** 使用舊版 `OP-xx` 或 `DayFlow` 作為 Normative 引用。 | , |
| **JobCard** | **作業卡**。OMOC 架構下的最小執行單元。每個 JobCard 包含完整的輸入 (Inputs)、輸出 (Outputs)、驗收標準 (Acceptance) 與回滾策略 (Rollback)，由 Agent 或自動化流程執行。 | ,, |
| **OMOC** | **Oh My OpenCode**。執行平面 (Execution Plane) 的核心編排器與多代理架構，負責調度 15 CA 完成 SF 流程。 | , |
| **HITL** | **Human-In-The-Loop (人機介入)**。指流程中 **必須** 由人類進行明確確認（Approval/Review）的強制節點（如 SF-11），通常用於解鎖高風險操作。 | ,, |


---


| 術語 (Term) | 定義 (Definition) | 規範來源 (Source) |
| ----- | ----- | ----- |
| **Evidence Triplet** | **證據三件套**。任何驗收或交付必須產出的最小證據集合，包含：1. `verdict.json` (裁決結果)、2. `evidence_bundle` (證據包實體)、3. `evidence_index` (索引與 Hash)。缺一即視為 FAIL。 | ,, |
| **SpecPack** | **規格包**。Pipeline-A 的最終產物，包含已蒸餾的偽代碼、原語定義 (DSL Schema) 與語料快照。 | , |
| **StrategyPack** | **策略包**。Pipeline-B 的最終產物，包含已定案的方法卡 (MethodCard)、回測報告與風險評估。 | , |
| **XSPack** | **執行腳本包**。Pipeline-C 的最終產物，包含已轉譯的 XS 腳本、選股清單與監控條件，供 XQ 系統載入。 | , |
| **Route-Out** | **外導**。本 SRS 文件中對於 HOW（實作細節）的處理方式。所有涉及實作、Schema 全文或操作步驟的內容，必須透過 Route-Out 指針指向對應的 SSOT 文件（如 ARCH/ICD/Runbook），而非在 SRS 內展開。 | ,, |


---


| 術語 (Term) | 定義 (Definition) | 規範來源 (Source) |
| ----- | ----- | ----- |
| **SEM³** | **三階驗證框架** (Semantic Equivalence & Mapping Triad)。包含三個核心 Gate：1. **SGF** (Source-Grounded Faithfulness, 來源忠實度)、2. **MSC** (Method-Semantics Conformance, 方法語意一致性)、3. **TVE** (Translation-Execution Equivalence, 轉譯等價性)。 | , |
| **T0 / T1 Mode** | **當沖 / 隔日沖模式**。系統的兩種交易運作模式。T0 強制於當日收盤前平倉（13:20 強清）；T1 允許隔夜持倉，需搭配額外的風險控管（RiskCard\_T1）。 | ,, |
| **ICT** | **Inner Circle Trader**。本系統核心交易方法論的知識來源代稱。系統中的「ICT 模組」指依據此方法論蒸餾出的可執行策略單元（編號 \#1-\#107）。 | , |
| **MarketProfile** | **市場概況檔**。描述特定市場（如台股 TWSE）的微結構常數（交易時段、跳動點、漲跌幅限制）的 SSOT 文件。嚴禁在 DSL 或程式碼中硬編碼這些常數，必須引用 MarketProfile。 | , |


---


| Gate ID | 名稱/用途 | 觸發時機 | 預設 Policy | 關鍵證據 (Artifact) |
| ----- | ----- | ----- | ----- | ----- |
| **GATE-BP-001** | **Table Lint**防止表格截斷、缺欄、重複定義 | PR / Merge Group | **BLOCK\_RELEASE** | `ART-GOVERN-REGISTRY` (lint\_report) |
| **GATE-BP-002** | **Anchor Registry**確保所有錨點可定位、無死鏈 | PR / Merge Group | **BLOCK\_RELEASE** | `ART-GOVERN-REGISTRY` (anchor\_scan) |
| **GATE-BP-003** | **Evidence Integrity**驗證證據三件套 (Verdict/Index/Bundle) 完整性 | PR / Merge Group | **BLOCK\_RELEASE** | `ART-EVIDENCE-TRIPLET` |
| **GATE-BP-004** | **RTM Coverage**需求追溯矩陣覆蓋率檢核 | Release | **BLOCK\_RELEASE** | `ART-RTM-MATRIX` |
| **GATE-MQ-001** | **Merge Queue Check**驗證 merge\_group 事件觸發且通過檢查 | Merge Group | **BLOCK\_RELEASE** | `ART-MQ-TRACE` |
| **GATE-SC-002** | **Supply Chain Scan**第三方套件/Actions 安全掃描 (Zizmor/Scorecard) | PR / Schedule | **BLOCK\_RELEASE** | `ART-SC-ZIZMOR` |
| **GATE-HITL-001** | **Environment Approval**人機介入核准 (HITL) | Deployment | **EXECUTE\_DISABLED** | `ART-HITL-APPROVAL` |
| **GATE-SAFE-002** | **Radar Only Mode**確保在非交易時段或模擬模式下無副作用 | Runtime | **RADAR\_ONLY** | `ART-SAFE-RADARONLY` |
| **GATE-SAFE-003** | **Execute Disabled**未經授權或 Kill-Switch 觸發時強制禁執行 | Runtime | **EXECUTE\_DISABLED** | `ART-SAFE-EXEC_DISABLED` |


---


| Topic | SSOT Document | Anchor/Section |
| ----- | ----- | ----- |
| **Evidence Schema Definition** | Spartoi｜P1\_LBP-B(ICD)\_v5.0.1 | `SCHEMA-EVIDENCE-REFS`, `SCHEMA-VALIDATION-HOOK` |
| **Evidence Registry Table** | Spartoi-OMOC(15 CA)重構升級藍圖 | `SOMOC-15CA-BP-08-EVIDENCE` |
| **Generation Implementation** | OMOC-MVU 套件包 | `docs/reference/Evidence_Contract.md` |
| **Validation Workflow** | Spartoi｜SubP1-LITE+MVP 開發 RUNBOOK | `WI-EVIDENCE-PACK-001` |


---


| Gate ID | Check Name | Fail Condition (觸發條件) | Fail-Closed Action (失效行為) | Rationale |
| ----- | ----- | ----- | ----- | ----- |
| **GATE-WRC-TIER** | Source Allowlist Check | 來源不在 `sources.yaml` 白名單內 | **BLOCK\_RELEASE** (拒絕入庫) | 確保知識源頭純淨，防止垃圾進(GIGO)。 |
| **GATE-BP-003-EVIDENCE** | Hash Integrity Check | 下載檔案 Hash 與 Manifest 記錄不符 | **BLOCK\_RELEASE** (標記損毀) | 資料一致性與防竄改。 |
| **GATE-SAFE-001-READONLY** | Write Protection | WRC 嘗試修改原始來源或覆寫非由其管理的目錄 | **BLOCK\_RELEASE** (權限錯誤) | 確保 WRC 僅具備寫入指定 Output 的權限。 |


---


| Topic | SSOT Document | Anchor/Section |
| ----- | ----- | ----- |
| **SGF Gate Implementation** | Spartoi-OMOC(15 CA)重構升級藍圖 | `ARCH-SEM3-COMPLETE` |
| **Distill Bundle Schema** | P1\_LBP-B(ICD) | `SCHEMA-DISTILL-BUNDLE` |
| **Fidelity Metrics** | P1\_LBP-E(Fitness) | `FIT-008` (SGF Faithfulness) |
| **Pipeline Workflow** | Pipeline-A\_組合方案 v2 | §3.3 CA-DISTILL Requirements |


---


| Topic | SSOT Document | Anchor/Section |
| ----- | ----- | ----- |
| **MethodCard Schema Definition** | Spartoi｜P1\_LBP-B(ICD)\_v5.0.1 | `SCHEMA-METHOD-CARD`, `SCHEMA-METHOD-TRIPLE-SOURCE` |
| **MSC Gate Implementation** | Spartoi-OMOC(15 CA)重構升級藍圖 | `GATE-METHOD-MSC` in Gate Registry |
| **Market Profile Structure** | Spartoi｜P1\_ARCH\_v6.0.0-r5 | `ARCH-MARKETPROFILE-SSOT` |
| **Method Formulation Workflow** | Spartoi｜各階段子系統操作流程\_v1.0.1 | `OP-05 方法制定` |
| **ICT Module Index** | Spartoi｜P1\_LBP-A(SIR)\_v6.0.0-r2 | `APPX-A Crosswalk` |


---


| Topic | SSOT Document | Anchor/Section |
| ----- | ----- | ----- |
| **Interface Schema** | Spartoi｜P1\_LBP-B(ICD)\_v5.0.1 | `CONTRACT-SELECT-*`, `SCHEMA-SELECT-TOPK` |
| **Ranking Algorithm** | Pipeline-C組合方案 | §3.2 工具鏈 (XGBoost/LightGBM), §3.3 輸出契約 |
| **Operational Steps** | Spartoi｜各階段子系統操作流程\_v1.0.1 | `OP-08 選股` |
| **Validation Thresholds** | Spartoi｜P1\_LBP-E(Fitness)\_v3.0.1 | `FIT-001`, `CR-OPEN-E-002` (Profit RR) |
| **Subsystem Architecture** | Spartoi｜P1\_ARCH\_v6.0.0-r5 | §4.9 `CA-SELECT` |


---


| Topic (主題) | Target SSOT (目標文件) | Locator (定位點) |
| ----- | ----- | ----- |
| **XS Schema Definition** | `Spartoi｜P1_LBP-B(ICD)_v5.0.1` | `SCHEMA-XS-SCRIPT` |
| **TVE Algorithm** | `Spartoi｜P1_ARCH_v6.0.0-r5` | `ARCH-SEM3-TVE` |
| **TVE Thresholds** | `Spartoi｜P1_LBP-E(Fitness)_v3.0.1` | `FIT-007` / `CR-OPEN-E-006` |
| **Translation Flow** | `Pipeline-C組合方案` | `§3.3 封裝層` |
| **Execution Disabled Mode** | `Spartoi-OMOC(15 CA)重構升級藍圖` | `GATE-SAFE-003-EXECUTE_DISABLED` |


---


| Gate ID | 檢查內容 | Fail-Closed 行為 | 證據工件 |
| ----- | ----- | ----- | ----- |
| **GATE-SAFE-002-RADARONLY** | 驗證系統是否處於僅監控模式，無副作用。 | **BLOCK\_RELEASE** (若檢測到副作用) | `ART-SAFE-RADARONLY` |
| **GATE-WATCH-SIGNAL** | 驗證訊號格式正確性與來源追溯性 (trace\_id)。 | **RADAR\_ONLY** (標記無效訊號) | `watch_log.json` |
| **GATE-XQ-PARITY** | (與 CA-TRANSLATE 共用) 驗證本地訊號與 XQ 邏輯的一致性。 | **RADAR\_ONLY** | `signal_parity_report` |


---


| Gate ID | Check Name | Fail Condition (觸發條件) | Fail-Closed Action (失效行為) | Rationale |
| ----- | ----- | ----- | ----- | ----- |
| **GATE-BP-003-EVIDENCE** | Evidence Integrity | 產出物 Hash 不符或欄位缺失 | **BLOCK\_RELEASE** | 確保績效報告真實性，防止造假。 |
| **GATE-PERFORM-QUALITY** | Metric Health Check | 關鍵指標（如 MaxDD）超過容忍極限 | **RADAR\_ONLY** (標記策略失效) | 防止表現極差的策略繼續進入下一輪優化或執行。 |
| **GATE-PROPOSAL-VALID** | Proposal Verifiability | Top-3 提案缺乏可執行指令或證據鏈 | **BLOCK\_RELEASE** (拒絕提案) | 避免生成「空泛建議」，確保每個提案都可落地。 |


---


| Gate ID | Check Name | Fail Condition (觸發條件) | Fail-Closed Action (失效行為) | Rationale |
| ----- | ----- | ----- | ----- | ----- |
| **GATE-AGENT-MODE** | Mode & Policy Check | Policy 卡缺失 / AES 綁定無效 | **BLOCK\_RELEASE** (禁止切換至 Agent 模式) | 確保 Agent 在嚴格定義的規則下運行。 |
| **GATE-COLLAB-QUALITY** | WT-NA Verification | 回貼內容 Hash 不符 / 語義漂移 | **RADAR\_ONLY** (標記為無效協作) | 防止人工複製貼上過程中的錯誤或竄改。 |
| **GATE-MQ-001-MERGE\_GROUP** | PR/Merge Check | 協作產生的 PR 未通過 CI 檢查 | **BLOCK\_RELEASE** (禁止合併) | 確保 Agent 產出的代碼或文件符合品質標準。 |


---


| Gate ID | Check Name | Fail Condition (觸發條件) | Fail-Closed Action (失效行為) | Rationale |
| ----- | ----- | ----- | ----- | ----- |
| **GATE-UI-001-READONLY\_POLICY** | UI Action Scan | 掃描到 UI 原始碼含 `execute_order` 或類似主動下單函式 | **BLOCK\_RELEASE** (阻斷發布) | **F-014 修補**：防止 UI 變成未受控的下單後門。 |
| **GATE-BP-001-TABLELINT** | Schema Compliance | UI 讀取的 JSON Schema 與 ICD 定義不符 | **BLOCK\_RELEASE** (版本錯配) | 確保前後端契約一致，避免渲染錯誤數據。 |
| **GATE-SAFE-002-RADARONLY** | Default Mode Check | 啟動時未預設為 RADAR\_ONLY 狀態 | **EXECUTE\_DISABLED** (強制降級) | 確保系統啟動時處於安全狀態。 |


---


| Topic | SSOT Document | Anchor/Section |
| ----- | ----- | ----- |
| **UI Interface Matrix** | Spartoi｜P1\_LBP-B(ICD)\_v5.0.1 | `CONTRACT-UI-001` |
| **Desktop App Architecture** | Spartoi｜P1\_ARCH\_v6.0.0-r5 | `ARCH-CA-UI` |
| **Console/TUI Implementation** | 五子系統組合方案 | `CA-UI` 降維重構段落 |


---


| Gate ID | Check Name | Fail Condition | Fail-Closed Action | Rationale |
| ----- | ----- | ----- | ----- | ----- |
| **GATE-BP-001-TABLELINT** | Table Integrity Check | 表格截斷、缺欄、重複定義 | **BLOCK\_RELEASE** | 確保治理規則表格（如 Flag Registry）的完整性與可讀性。 |
| **GATE-BP-002-ANCHORREG** | Anchor Validity Check | 引用無效錨點、死鏈 | **BLOCK\_RELEASE** | 防止規範指向不存在的目標（空頭支票）。 |
| **GATE-GOV-SSOT** | SSOT Consistency Check | Flag/Gate 定義與上游不一致 | **BLOCK\_RELEASE** | 確保 CA-GOVERN 的規則庫與 Blueprint/SRS 保持同步。 |


---


| Hook ID | Metric Name | Stage | Target Artifact | Gate Hook | Fail-Closed Policy | Trace Source |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| **SRS8-NFR-RAG-002** | Context Relevance | Retrieval | `retrieval_quality_report.json` | `GATE-RC-001` (ICT覆蓋) | **BLOCK** (無報告) |  |
| **SRS8-NFR-RAG-003** | Groundedness (SGF) | Generation | `sgf_report.json` | `GATE-RC-002` (保真度) | **RADAR** (低分) / **BLOCK** (無指標) |  |
| **SRS8-NFR-RAG-004** | Answer Relevance | Generation | `rag_query_test.json` | `GATE-RC-004` (平台對齊) | **BLOCK** (Golden Set Fail) |  |
| **SRS8-NFR-RAG-005** | Source Tracing | Audit | `evidence_index.json` | `GATE-SRC` (來源完整性) | **BLOCK** (斷鏈) |  |


---


| req\_id | Normative Statement (需求條文) | Rationale (理據) | Acceptance Hook | Gate Ref (Fail-Closed) | Evidence / Route-Out |
| ----- | ----- | ----- | ----- | ----- | ----- |
| **SRS81-PIPE-DB-001** | 系統 **MUST** 實作 **RunLedger (運行與稽核台帳庫)**，作為全域唯一的 Lineage 索引；所有 SpecPack/StrategyPack/FeedbackPack 的產出均 **MUST** 於此註冊輸入/輸出 Hash 與上游引用鏈。 | 防止「孤兒產物」；若無統一帳本，無法證明某個策略是由哪份語料蒸餾而來。 | `MAI-DB-RUNLEDGER` | **BLOCK\_RELEASE** (若帳本不可寫入或毀損) | **Route-Out**: Pipeline-A+B 整合資料庫方案 §3.3**Evidence**: `run_ledger/ledger.sqlite` 結構驗證 |
| **SRS81-PIPE-DB-002** | 系統 **MUST** 實作 **ReferenceDB (參考資料庫)**，統一管理交易日曆、股票代碼、Corporate Actions 等全域常數，供 A/B/C 管線唯讀引用。 | 避免各管線各自維護交易日曆導致回測與實盤對不齊。 | `MAI-DB-REFDB` | **RADAR\_ONLY** (若資料過期)**BLOCK\_RELEASE** (若 DB 缺失) | **Route-Out**: Pipeline-A+B 整合資料庫方案 §3.3**Evidence**: `refdb/calendar.parquet` 存在性 |
| **SRS81-PIPE-DB-003** | 資料儲存策略 **MUST** 採「Git 管規格/索引、DVC 管大資料指針、Object Storage 管版本化實體」的分層架構；嚴禁將大檔直接提交至 Git。 | 防止 Repo 膨脹導致 CI/CD 癱瘓；確保資料可回退。 | `MAI-DB-STORAGE` | **BLOCK\_RELEASE** (檢測到大檔入 Git) | **Route-Out**: Pipeline-A+B 整合資料庫方案 §3.1**Evidence**: `.dvc` 檔案與 `.gitignore` 規則 |


---


| req\_id | Normative Statement (需求條文) | Rationale (理據) | Acceptance Hook | Gate Ref (Fail-Closed) | Evidence / Route-Out |
| ----- | ----- | ----- | ----- | ----- | ----- |
| **SRS81-PIPE-A-001** | Pipeline-A **MUST** 產出標準化 **SpecPack**，其內容必須包含：`input_manifest` (WRC), `corpus_snapshot` (CORPUS), `distill_bundle` (DISTILL), `dsl_schema` (DSL)。 | 下游 Pipeline-B 必須依賴穩定的規格包才能進行回測，而非依賴變動的對話。 | `MAI-PIPE-A-PACK` | **GATE-SC-002-SUPPLYCHAIN** (供應鏈檢查失敗即阻斷) | **Route-Out**: Pipeline-A 組合方案 v2 §3.3**Evidence**: `distill_specpack/` 目錄結構與 Hash |
| **SRS81-PIPE-A-002** | Pipeline-A 的輸出 **MUST** 具備「可回放性」：`distill_bundle` 中的每條規格 **MUST** 能回指到 `corpus_snapshot` 中的 `chunk_id`。 | 確保策略邏輯不是 AI 幻覺，而是有憑有據的知識萃取。 | `MAI-PIPE-A-TRACE` | **GATE-BP-003-EVIDENCE** (證據鏈斷裂即阻斷) | **Route-Out**: Pipeline-A 組合方案 v2 §3.6**Evidence**: `trace_refs` 欄位完整性 |
| **SRS81-PIPE-A-003** | Pipeline-A **MUST** 實作 Fail-Closed 機制：若 WRC 來源不在白名單或 CORPUS 抽取成功率低於門檻，**MUST** 停止產出 SpecPack 並輸出 `verdict.json=FAIL`。 | 防止垃圾進、垃圾出 (GIGO) 汙染下游。 | `MAI-PIPE-A-FAIL` | **BLOCK\_RELEASE** | **Route-Out**: Pipeline-A 組合方案 v2 §3.3**Evidence**: `verdict.json` |


---


| req\_id | Normative Statement (需求條文) | Rationale (理據) | Acceptance Hook | Gate Ref (Fail-Closed) | Evidence / Route-Out |
| ----- | ----- | ----- | ----- | ----- | ----- |
| **SRS81-PIPE-B-001** | Pipeline-B **MUST** 讀取指定的 `SpecPack` (from Pipe-A) 並產出 **StrategyPack**，內容包含：`MethodCard`, `backtest_result`, `perform_report`。 | 確保回測是基於特定版本的知識規格進行，而非隨意參數調整。 | `MAI-PIPE-B-PACK` | **GATE-SAFE-002-RADARONLY** (風險超標即標記) | **Route-Out**: Pipeline-B 組合方案 v2 §3.4**Evidence**: `strategy_pack/` 目錄結構 |
| **SRS81-PIPE-B-002** | Pipeline-B **MUST** 實作「過擬合防線」：產出 `reproducibility_manifest.json`，記錄資料切片 Hash、引擎版本與參數，並執行 PBO/DSR 檢查。 | 避免回測數據造假或過度最佳化 (Curve Fitting)。 | `MAI-PIPE-B-OVERFIT` | **RADAR\_ONLY** (PBO 過高僅警示，不強制阻斷研發) | **Route-Out**: Pipeline-B 組合方案 v2 §3.4**Evidence**: `hygiene_report.json` |
| **SRS81-PIPE-B-003** | Pipeline-B 的 `CA-PERFORM` **MUST** 產出 **Dual-Track** 報表：Track-A (策略績效) 與 Track-B (工程可靠度)。 | 不只要看賺多少錢，還要看系統穩不穩定。 | `MAI-PIPE-B-PERF` | **GATE-BP-003-EVIDENCE** | **Route-Out**: ARCH v6.0.0-r5 §4.15**Evidence**: `perf_summary.json` |


---


| req\_id | Normative Statement (需求條文) | Rationale (理據) | Acceptance Hook | Gate Ref (Fail-Closed) | Evidence / Route-Out |
| ----- | ----- | ----- | ----- | ----- | ----- |
| **SRS81-PIPE-C-001** | Pipeline-C **MUST** 讀取 `StrategyPack` (from Pipe-B) 並產出 **XSPack** (含 `xs_script`, `watchlist`, `alerts`)。 | 確保執行面的腳本是源自於已回測過的策略。 | `MAI-PIPE-C-PACK` | **GATE-SAFE-002-RADARONLY** | **Route-Out**: Pipeline-C 組合方案 §3.3**Evidence**: `xs_script_pack/` |
| **SRS81-PIPE-C-002** | Pipeline-C **MUST** 實作 **TVE (轉譯等價驗證)**：在產出 XS 腳本前，必須驗證其邏輯與 `MethodCard` 的等價性。 | 防止 Python 策略轉譯成 XQ 腳本時發生語意遺失或錯誤。 | `MAI-PIPE-C-TVE` | **BLOCK\_RELEASE** (轉譯錯誤絕對禁止上線) | **Route-Out**: Pipeline-C 組合方案 §3.5**Evidence**: `tve_report.json` |
| **SRS81-PIPE-C-003** | Pipeline-C 的 `CA-WATCH` 產物 **MUST** 僅作為「信號與告警」，**嚴禁** 直接觸發下單動作 (Execution Isolation)。 | 遵守 XQ 為唯一下單端的安全原則，防止自動化意外。 | `MAI-PIPE-C-SAFE` | **GATE-SAFE-003-EXECUTE\_DISABLED** | **Route-Out**: Pipeline-A+B 整合資料庫方案 §1.2**Evidence**: `watch_alerts.json` (無交易 payload) |


---


| req\_id | Normative Statement (需求條文) | Rationale (理據) | Acceptance Hook | Gate Ref (Fail-Closed) | Evidence / Route-Out |
| ----- | ----- | ----- | ----- | ----- | ----- |
| **SRS81-PIPE-LINK-001** | 所有管線產出的 Pack **MUST** 在 `manifest.json` 中包含 `upstream_run_id` 與 `upstream_pack_hash`，形成 A → B → C 的完整依賴鏈。 | 稽核時必須能從「一次虧損交易」一路追回「是哪份教材導致的」。 | `MAI-PIPE-LINK` | **GATE-BP-003-EVIDENCE** (斷鏈即 Fail) | **Route-Out**: Pipeline-A+B 整合資料庫方案 §3.3**Evidence**: `RunLedger` 查詢結果 |
| **SRS81-PIPE-LINK-002** | 任何跨管線的資料傳遞 **MUST** 透過 **Artifact Store (DB/S3)** 進行，禁止透過記憶體或臨時檔案傳遞。 | 確保每個階段的產物都持久化且可被獨立驗證。 | `MAI-PIPE-STORE` | **GATE-BP-002-ANCHORREG** | **Route-Out**: 15CA 重構升級藍圖 §3.2**Evidence**: S3/MinIO 物件存在性 |


---


| req\_id | Normative Statement (需求條文) | Rationale (理據) | Acceptance Hook | Gate Ref (Fail-Closed) | Evidence / Route-Out |
| ----- | ----- | ----- | ----- | ----- | ----- |
| **SRS81-PIPE-FALL-001** | 若 Pipeline-A/B/C 任一環節的 `verdict.json` 為 FAIL，下游管線 **MUST** 拒絕執行 (Cascade Stop)。 | 防止錯誤擴散。 | `MAI-PIPE-STOP` | **BLOCK\_RELEASE** | **Route-Out**: Pipeline-A 組合方案 v2 §3.1**Evidence**: 下游管線的 `skip_log.json` |
| **SRS81-PIPE-FALL-002** | 若 `ReferenceDB` (交易日曆等) 無法存取，所有管線 **MUST** 進入 **Fail-Closed** 狀態，禁止使用過期或本地快取資料進行決策。 | 錯誤的日曆會導致嚴重的回測與實盤偏差。 | `MAI-PIPE-REF-FAIL` | **BLOCK\_RELEASE** | **Route-Out**: Pipeline-A+B 整合資料庫方案 §3.3**Evidence**: `error_log` 顯示 DB 連線失敗 |


---


| Gate ID | 用途 (Purpose) | 觸發時機 (Trigger) | 擁有者 (Owner) | 綁定 Policy | 失敗處置 (Fail-Closed Rule) |
| ----- | ----- | ----- | ----- | ----- | ----- |
| **GATE-BP-001-TABLELINT** | 確保 SSOT 表格完整性 (防截斷/缺欄) | PR / merge\_group | CA-GOVERN | `BLOCK_RELEASE` | 阻斷合併 |
| **GATE-BP-002-ANCHORREG** | 確保錨點註冊表完整與可跳轉 | PR / merge\_group | CA-GOVERN | `BLOCK_RELEASE` | 阻斷合併 |
| **GATE-BP-003-EVIDENCE** | 驗證 Evidence Triplet 完整性 | PR / merge\_group | CA-GOVERN | `BLOCK_RELEASE` | 阻斷合併 (無證據即無發布) |
| **GATE-BP-004-RTM** | 驗證需求追溯矩陣 (RTM) 覆蓋率 | PR / merge\_group | CA-GOVERN | `BLOCK_RELEASE` | 阻斷合併 (未覆蓋需求) |
| **GATE-BP-005-PATCHREG** | 驗證 Patch Register 完整性 | PR / merge\_group | CA-GOVERN | `BLOCK_RELEASE` | 阻斷合併 |
| **GATE-MQ-001-MERGE\_GROUP** | 驗證 GitHub Merge Queue 配置 | merge\_group 事件 | CA-COLLAB | `BLOCK_RELEASE` | 阻斷隊列 (防止假綠燈) |
| **GATE-SC-001-PINACT** | 供應鏈安全：Actions SHA Pinning | PR / merge\_group | CA-GOVERN | `BLOCK_RELEASE` | 阻斷合併 (依賴不安全) |
| **GATE-SC-002-SUPPLYCHAIN** | 供應鏈安全：Zizmor/Scorecard 掃描 | PR / merge\_group | CA-GOVERN | `BLOCK_RELEASE` | 阻斷合併 (高風險發現) |
| **GATE-HITL-001-ENV\_APPROVAL** | 人機介入：環境部署審核 | Deploy / Execute | CA-EXECUTE | `EXECUTE_DISABLED` | 禁止執行 (無人授權) |
| **GATE-SAFE-002-RADARONLY** | 交易安全：雷達模式強制 | Runtime / CI | CA-WATCH | `RADAR_ONLY` | 僅記錄，禁止交易副作用 |
| **GATE-SAFE-003-EXECUTE\_DISABLED** | 交易安全：執行層預設關閉 | Runtime / CI | CA-EXECUTE | `EXECUTE_DISABLED` | 禁止執行交易指令 |
| **GATE-UI-001-READONLY\_POLICY** | UI 安全：唯讀政策驗證 | UI Build | CA-UI | `BLOCK_RELEASE` | 阻斷 UI 建置 (含違規按鈕) |
| **GATE-DSL-PURITY** | 規格安全：DSL 純度檢核 (禁常數) | DSL Gen | CA-DSL | `BLOCK_RELEASE` | 阻斷 DSL 發布 |
| **GATE-METHOD-MSC** | 方法論：語義一致性檢查 (MSC) | Method Gen | CA-METHOD | `RADAR_ONLY` | 標記方法卡風險 |
| **GATE-TRANSLATE-TVE** | 執行安全：轉譯等價性驗證 (TVE) | XS Gen | CA-TRANSLATE | `BLOCK_RELEASE` | 阻斷腳本生成 |
| **GATE-SELECT-NDCG** | 選股品質：排序指標檢核 (NDCG) | Selection | CA-SELECT | `RADAR_ONLY` | 標記選股清單品質低 |


---


| 欄位名稱 | 定義 | 來源/約束 |
| ----- | ----- | ----- |
| **mai\_id** | 唯一識別碼，格式 `MAI-{TYPE}-{SEQ}` | SRS §4.10 |
| **req\_ref** | 對應的需求 ID | SRS §4.6 / REQ21 / P0-Tasks |
| **acceptance\_hook** | 驗收鉤子（具體的驗證動作或腳本） | 15CA-BP CheckMap |
| **expected\_artifact** | 預期產出的工件名稱（Artifact ID） | 15CA-BP Evidence Registry |
| **gate\_binding** | 綁定的閘門 ID | 15CA-BP Gate Registry |
| **fail\_closed\_policy** | 失敗時的處置策略 | SRS §4.9 (BLOCK/RADAR/DISABLED) |


---


| mai\_id | req\_ref | acceptance\_hook | expected\_artifact | gate\_binding | fail\_closed\_policy |
| ----- | ----- | ----- | ----- | ----- | ----- |
| **MAI-FR-WRC-01** | SRS8-FR-WRC-001 | Verify Manifest Hash | `ART-CORPUS-RAW` (wrc\_manifest) | GATE-BP-003-EVIDENCE | **RADAR\_ONLY** |
| **MAI-FR-CORPUS-01** | SRS8-FR-CORPUS-001 | Verify Index Completeness | `ART-CORPUS-INDEX` | GATE-BP-003-EVIDENCE | **RADAR\_ONLY** |
| **MAI-FR-DISTILL-01** | SRS8-FR-DISTILL-001 | Verify SGF Score | `ART-DISTILL-BASE` | GATE-SC-002-SUPPLYCHAIN | **BLOCK\_RELEASE** |
| **MAI-FR-DSL-01** | SRS8-FR-DSL-001 | Lint DSL Purity | `ART-DSL-SPEC` | GATE-BP-001-TABLELINT | **BLOCK\_RELEASE** |
| **MAI-FR-METHOD-01** | SRS8-FR-METHOD-001 | Verify MSC Consistency | `ART-METHOD-SPEC` | GATE-SAFE-002-RADARONLY | **RADAR\_ONLY** |
| **MAI-FR-BACKTEST-01** | SRS8-FR-BACKTEST-001 | Verify Backtest Report | `ART-BACKTEST-RESULT` | GATE-SAFE-002-RADARONLY | **RADAR\_ONLY** |
| **MAI-FR-TA-01** | SRS8-FR-TA-001 | Verify Signal Generation | `ART-TA-SIGNALS` | GATE-SAFE-002-RADARONLY | **RADAR\_ONLY** |
| **MAI-FR-SELECT-01** | SRS8-FR-SELECT-001 | Verify Selection NDCG | `ART-SELECT-CANDIDATES` | GATE-SAFE-002-RADARONLY | **RADAR\_ONLY** |
| **MAI-FR-TRANSLATE-01** | SRS8-FR-TRANSLATE-001 | Verify TVE Equivalence | `ART-XS-PLAN` | GATE-SAFE-003-EXECUTE\_DISABLED | **EXECUTE\_DISABLED** |
| **MAI-FR-WATCH-01** | SRS8-FR-WATCH-001 | Verify Alert Generation | `ART-WATCH-ALERTS` | GATE-SAFE-002-RADARONLY | **RADAR\_ONLY** |
| **MAI-FR-EXECUTE-01** | SRS8-FR-EXECUTE-001 | Verify Dry-Run Constraints | `ART-EXECUTE-DRYRUN` | GATE-SAFE-003-EXECUTE\_DISABLED | **EXECUTE\_DISABLED** |
| **MAI-FR-PERFORM-01** | SRS8-FR-PERFORM-001 | Verify Performance Metrics | `ART-PERFORM-REPORT` | GATE-BP-003-EVIDENCE | **RADAR\_ONLY** |
| **MAI-FR-COLLAB-01** | SRS8-FR-COLLAB-001 | Verify PR Metadata | `ART-COLLAB-AUDITLOG` | GATE-MQ-001-MERGE\_GROUP | **RADAR\_ONLY** |
| **MAI-FR-UI-01** | SRS8-FR-UI-001 | Verify Read-Only Policy | `ART-UI-READONLY-BUILD` | GATE-UI-001-READONLY\_POLICY | **BLOCK\_RELEASE** |
| **MAI-FR-GOVERN-01** | SRS8-FR-GOVERN-001 | Verify Authority Stack | `ART-GOVERN-REGISTRY` | GATE-BP-002-ANCHORREG | **BLOCK\_RELEASE** |


---


| mai\_id | req\_ref | acceptance\_hook | expected\_artifact | gate\_binding | fail\_closed\_policy |
| ----- | ----- | ----- | ----- | ----- | ----- |
| **MAI-NFR-AUDIT-01** | SRS8-NFR-AUDIT-001 | Verify Evidence Triplet | `ART-EVIDENCE-TRIPLET` | GATE-BP-003-EVIDENCE | **BLOCK\_RELEASE** |
| **MAI-NFR-OBS-01** | SRS8-NFR-OBS-001 | Verify Verdict Log | `verdict.json` | GATE-BP-003-EVIDENCE | **RADAR\_ONLY** |
| **MAI-NFR-RAG-01** | SRS8-NFR-RAG-001 | Verify RAG Triad Metrics | `ART-CORPUS-INDEX` | GATE-BP-003-EVIDENCE | **RADAR\_ONLY** |
| **MAI-NFR-SEC-01** | SRS8-GOV-GATE-001 | Verify Supply Chain Pinning | `ART-SC-PINACT` | GATE-SC-001-PINACT | **BLOCK\_RELEASE** |
| **MAI-NFR-SEC-02** | SRS8-GOV-GATE-001 | Verify Zizmor Scan | `ART-SC-ZIZMOR` | GATE-SC-002-SUPPLYCHAIN | **BLOCK\_RELEASE** |
| **MAI-NFR-ENV-01** | SRS8-GOV-GITHUB-001 | Verify Env Approval | `ART-HITL-APPROVAL` | GATE-HITL-001-ENV\_APPROVAL | **EXECUTE\_DISABLED** |


---


| mai\_id | req\_ref | acceptance\_hook | expected\_artifact | gate\_binding | fail\_closed\_policy |
| ----- | ----- | ----- | ----- | ----- | ----- |
| **MAI-GOV-RTM-01** | SRS8-GOV-EVID-002 | Verify RTM Coverage | `ART-RTM-MATRIX` | GATE-BP-004-RTM | **BLOCK\_RELEASE** |
| **MAI-GOV-PATCH-01** | A:CRIT-003 (Audit A) | Verify Patch Register | `ART-PATCH-REGISTER` | GATE-BP-005-PATCHREG | **BLOCK\_RELEASE** |
| **MAI-GOV-MQ-01** | SRS8-GOV-GITHUB-001 | Verify Merge Queue Trace | `ART-MQ-TRACE` | GATE-MQ-001-MERGE\_GROUP | **BLOCK\_RELEASE** |
| **MAI-GOV-ANCHOR-01** | A:CRIT-001 (Audit A) | Verify Anchor Links | `ART-GOVERN-REGISTRY` | GATE-BP-002-ANCHORREG | **BLOCK\_RELEASE** |
| **MAI-GOV-15CA-01** | A:CRIT-004 (Audit A) | Verify 15CA Table Lint | `ART-GOVERN-REGISTRY` | GATE-BP-001-TABLELINT | **BLOCK\_RELEASE** |


---


| mai\_id | req\_ref | acceptance\_hook | expected\_artifact | gate\_binding | fail\_closed\_policy |
| ----- | ----- | ----- | ----- | ----- | ----- |
| **MAI-CR-SQM7-01** | SRS-SQM-S7-DD-001 | Verify Audit Trail | `ART-EVIDENCE-TRIPLET` | GATE-BP-003-EVIDENCE | **BLOCK\_RELEASE** |
| **MAI-CR-WIN-01** | SRS-SQM-S3-WIN-001 | Verify Select Threshold | `ART-SELECT-CANDIDATES` | GATE-SAFE-002-RADARONLY | **RADAR\_ONLY** |
| **MAI-CR-FIT-01** | CR-OPEN-E-001 | Verify Fitness Metrics | `ART-PERFORM-REPORT` | GATE-BP-003-EVIDENCE | **RADAR\_ONLY** |
| **MAI-CR-ICD-01** | CR-ICD-003 | Verify Schema Existence | `ART-GOVERN-REGISTRY` | GATE-SAFE-003-EXECUTE\_DISABLED | **EXECUTE\_DISABLED** |
| **MAI-CR-OPS-01** | CR-OPS-003 | Verify Time Window | `ART-EXECUTE-DRYRUN` | GATE-SAFE-003-EXECUTE\_DISABLED | **EXECUTE\_DISABLED** |
| **MAI-CR-TT-01** | TT-001 (Check Names) | Verify GH Actions Status | `ART-MQ-TRACE` | GATE-MQ-001-MERGE\_GROUP | **BLOCK\_RELEASE** |
| **MAI-CR-TT-02** | TT-003 (Rename Freeze) | Verify Naming Diff | `ART-GOVERN-REGISTRY` | GATE-BP-001-TABLELINT | **BLOCK\_RELEASE** |
| **MAI-CR-TT-03** | TT-006 (UI ReadOnly) | Verify UI Scan | `ART-UI-READONLY-BUILD` | GATE-UI-001-READONLY\_POLICY | **BLOCK\_RELEASE** |


---


| 欄位名稱 (Field) | 來源/定義 (Source/Definition) | 驗證規則 (Validation Rule) | Fail-Closed 行為 |
| ----- | ----- | ----- | ----- |
| **req\_id** | SRS v8.1 定義之唯一需求 ID (如 `SRS8-FR-WRC-001`) | 必須存在於 SRS 正文 §3, §4, §5 | ID 不存在 → **BLOCK** |
| **srs\_anchor** | 該需求在 SRS 文件中的精確錨點 | 必須可解析為有效連結 | 錨點失效 → **BLOCK** |
| **upstream\_ref** | 上游權威來源 (REQ21, P0-Q\&A, 藍圖) | 必須引用 Authority Stack | 無上游依據 → **RADAR\_ONLY** (Hypothesis) |
| **impl\_target** | 負責實作的子系統 (15 CA) 或 Pipeline | 必須符合 15CA Allowlist 或 Pipeline A/B/C | 目標不明確 → **BLOCK** |
| **artifact\_id** | 產出的關鍵工件 ID | 必須符合 Evidence Contract (如 `ART-CORPUS-RAW`) | 無產出物 → **BLOCK** |
| **acceptance\_hook** | 對應的 MAI 驗收鉤子 ID | 必須存在於 MAI 清單 §10 | 無驗收鉤子 → **BLOCK** |
| **gate\_policy** | 失敗時的阻斷策略 | 固定三態：`BLOCK_RELEASE`, `RADAR_ONLY`, `EXECUTE_DISABLED` | 策略未定義 → **BLOCK** |


---


| req\_id | srs\_anchor | upstream\_ref | impl\_target | artifact\_id | acceptance\_hook | gate\_policy |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| **SRS8-FR-WRC-001** | `[SRS-V810-FR-WRC]` | REQ21-10 | **CA-WRC** | `ART-CORPUS-RAW` | `MAI-WRC-001` | **RADAR\_ONLY** |
| **SRS8-FR-CORPUS-001** | `[SRS-V810-FR-CORPUS]` | REQ21-11 | **CA-CORPUS** | `ART-CORPUS-INDEX` | `MAI-CORPUS-INDEX` | **RADAR\_ONLY** |
| **SRS8-FR-DISTILL-001** | `[SRS-V810-FR-DISTILL]` | REQ21-12 | **CA-DISTILL** | `ART-DISTILL-BASE` | `MAI-DISTILL-SGF` | **BLOCK\_RELEASE** |
| **SRS8-FR-DSL-001** | `[SRS-V810-FR-DSL]` | REQ21-13 | **CA-DSL** | `ART-DSL-SPEC` | `MAI-DSL-SCHEMA` | **RADAR\_ONLY** |
| **SRS8-FR-METHOD-001** | `[SRS-V810-FR-METHOD]` | REQ21-14 | **CA-METHOD** | `ART-METHOD-SPEC` | `MAI-METHOD-MSC` | **RADAR\_ONLY** |
| **SRS8-FR-BACKTEST-001** | `[SRS-V810-FR-BACKTEST]` | REQ21-15 | **CA-BACKTEST** | `ART-BACKTEST-RESULT` | `MAI-BT-OVERFIT` | **RADAR\_ONLY** |
| **SRS8-FR-TA-001** | `[SRS-V810-FR-TA]` | REQ21-16 | **CA-TA** | `ART-TA-SIGNALS` | `MAI-TA-SIGNAL` | **RADAR\_ONLY** |
| **SRS8-FR-SELECT-001** | `[SRS-V810-FR-SELECT]` | REQ21-17 | **CA-SELECT** | `ART-SELECT-CANDIDATES` | `MAI-SELECT-NDCG` | **RADAR\_ONLY** |
| **SRS8-FR-TRANSLATE-001** | `[SRS-V810-FR-TRANSLATE]` | REQ21-18 | **CA-TRANSLATE** | `ART-XS-PLAN` | `MAI-XS-TVE` | **RADAR\_ONLY** |
| **SRS8-FR-WATCH-001** | `[SRS-V810-FR-WATCH]` | REQ21-19 | **CA-WATCH** | `ART-WATCH-ALERTS` | `MAI-WATCH-ALERT` | **RADAR\_ONLY** |
| **SRS8-FR-EXECUTE-001** | `[SRS-V810-FR-EXECUTE]` | REQ21-20 | **CA-EXECUTE** | `ART-EXECUTE-DRYRUN` | `MAI-EXEC-HITL` | **EXECUTE\_DISABLED** |
| **SRS8-FR-PERFORM-001** | `[SRS-V810-FR-PERFORM]` | REQ21-21 | **CA-PERFORM** | `ART-PERFORM-REPORT` | `MAI-PERFORM-DUAL` | **RADAR\_ONLY** |
| **SRS8-FR-GOVERN-001** | `[SRS-V810-FR-GOVERN]` | OMOC-BP-DOD | **CA-GOVERN** | `ART-GOVERN-REGISTRY` | `MAI-GOVERN-MANIFEST` | **BLOCK\_RELEASE** |
| **SRS8-FR-COLLAB-001** | `[SRS-V810-FR-COLLAB]` | OMOC-BP-EP | **CA-COLLAB** | `ART-COLLAB-AUDITLOG` | `MAI-COLLAB-TRACE` | **RADAR\_ONLY** |
| **SRS8-FR-UI-001** | `[SRS-V810-FR-UI]` | SRS-UI-CONTRACT | **CA-UI** | `ART-UI-READONLY-BUILD` | `MAI-UI-READONLY` | **BLOCK\_RELEASE** |


---


| req\_id | 來源方案 (Source Plan) | 整合內容 (Scope) | 驗收鉤子 (Acceptance Hook) | 證據指標 (Evidence Pointer) |
| ----- | ----- | ----- | ----- | ----- |
| **SRS8-INT-PIPE-A** | Pipeline-A\_組合方案 v2 | WRC/CORPUS/DISTILL/DSL 串接與產物一致性 | `MAI-PIPE-A-CONSISTENCY` | `evidence/pipeline-a/verdict.json` |
| **SRS8-INT-PIPE-B** | Pipeline-B 組合方案 v2 | METHOD/BACKTEST/PERFORM 串接與過擬合防線 | `MAI-PIPE-B-REPRO` | `evidence/pipeline-b/repro_manifest.json` |
| **SRS8-INT-PIPE-C** | Pipeline-C 組合方案 | TA/SELECT/TRANSLATE 串接與訊號封裝 | `MAI-PIPE-C-SIGNAL` | `evidence/pipeline-c/signalcard_v1.json` |
| **SRS8-INT-DB-001** | Pipeline-A+B 整合資料庫 | 統一 DVC 指針與 DuckDB/Parquet 落盤 | `MAI-DB-SCHEMA` | `data/runledger/ledger.sqlite` |
| **SRS8-INT-5SYS** | 五子系統組合方案 | WATCH/EXECUTE/GOVERN 跨系統仲裁點 | `MAI-5SYS-GOVERN` | `evidence/govern/arbitration.json` |


---


| v7.0.0 Req ID | v8.1 對應 Req ID | 狀態 | 驗證方式 | 備註 |
| ----- | ----- | ----- | ----- | ----- |
| SRS-FR-WRC-001 | **SRS8-FR-WRC-001** | MIGRATED | `MAI-WRC-001` | 功能等價承接 |
| SRS-FR-BACKTEST-001 | **SRS8-FR-BACKTEST-001** | MIGRATED | `MAI-BT-OVERFIT` | 增加過擬合防線要求 |
| SRS-GATE-SEM3 | **SRS8-FR-SEM3-001** | ENHANCED | `MAI-SEM3-GATE` | 整合至 15CA 重構藍圖 |
| CAND-LAT-001 | **CR-OPEN-E-001** | TEMP\_CLOSED | `TT-LAT-001` | 轉為 Test Track (非 Normative) |


---


| req\_id | 治理主題 (Topic) | 實作機制 (Mechanism) | 驗收鉤子 (Acceptance Hook) | Gate Policy |
| ----- | ----- | ----- | ----- | ----- |
| **SRS8-GOV-SSOT** | Authority Stack | 衝突裁決依賴表 (L1\~L9) | `MAI-GOV-AUTH` | **BLOCK\_RELEASE** |
| **SRS8-GOV-EVID** | Evidence Contract | 產出 Verdict/Index/Bundle 三件套 | `MAI-EVID-TRIPLET` | **BLOCK\_RELEASE** |
| **SRS8-GOV-NAME** | Naming Consistency | 15CA Stable ID 不變 \+ Display Name 映射 | `MAI-NAME-CONSISTENCY` | **BLOCK\_RELEASE** |
| **SRS8-GOV-MCP** | Peripheral Control | Default Deny \+ Allowlist \+ Post-scan | `MAI-MCP-SECURITY` | **RADAR\_ONLY** |
| **SRS8-GOV-CROPEN** | CR\_OPEN Closure | 所有 Candidate 轉 CR\_OPEN 並綁定 Test Track | `MAI-CROPEN-TRACK` | **BLOCK\_RELEASE** |


---


| CR ID | 來源 | 缺口描述 (Description) | 處置狀態 | Fail-Closed Gate | Test Tracking ID |
| ----- | ----- | ----- | ----- | ----- | ----- |
| **CR-LEG-001** | LEGACY | 閉環延遲量測 (Latency) 門檻未定 | PROVISIONAL | **BLOCK\_RELEASE** | TT-NFR-LAT-001 |
| **CR-LEG-002** | LEGACY | EQA100 蒸餾品質門檻未定 | PROVISIONAL | **BLOCK\_RELEASE** | TT-SQM-EQA-001 |
| **CR-LEG-003** | LEGACY | 勝率 (Win Rate) 量測門檻未定 | PROVISIONAL | **BLOCK\_RELEASE** | TT-SQM-WIN-001 |
| **CR-LEG-004** | LEGACY | Sharpe Ratio 量測門檻未定 | TEMP\_CLOSED | RADAR\_ONLY | TT-SQM-SHARPE-001 |
| **CR-LEG-005** | LEGACY | 執行品質 (Execution Quality) 門檻未定 | TEMP\_CLOSED | EXECUTE\_DISABLED | TT-SQM-EXEC-001 |
| **CR-LEG-006** | LEGACY | 滑價 (Slippage) 量測門檻未定 | TEMP\_CLOSED | RADAR\_ONLY | TT-SQM-SLIP-001 |
| **CR-LEG-007** | LEGACY | 最大回撤 (Max Drawdown) 門檻未定 | PROVISIONAL | **BLOCK\_RELEASE** | TT-SQM-DD-001 |
| **CR-LEG-008** | LEGACY | PBO (回測過擬合) 偵測標準未定 | PROVISIONAL | **BLOCK\_RELEASE** | TT-SQM-PBO-001 |
| **CR-LEG-009** | LEGACY | 決策包大小 (Size) 限制未定 | PROVISIONAL | **BLOCK\_RELEASE** | TT-NFR-SIZE-001 |
| **CR-LEG-010** | LEGACY | 績效提升 (Performance Uplift) 驗證 | TEMP\_CLOSED | RADAR\_ONLY | TT-NFR-PERF-001 |
| **CR-LEG-011** | LEGACY | TVE (轉譯等價) 驗證標準 | PROVISIONAL | **BLOCK\_RELEASE** | TT-FR-TVE-001 |
| **CR-LEG-012** | LEGACY | Playwright 自動化可行性驗證 | TEMP\_CLOSED | RADAR\_ONLY | TT-FR-PLAY-001 |
| **CR-LEG-013** | LEGACY | 測試覆蓋率 (Coverage) 門檻未定 | PROVISIONAL | **BLOCK\_RELEASE** | TT-NFR-COV-001 |
| **CR-LEG-014** | LEGACY | 恢復時間 (RTO) 目標未定 | PROVISIONAL | **BLOCK\_RELEASE** | TT-NFR-REC-001 |
| **CR-LEG-015** | LEGACY | 資料一致性 (Consistency) 驗證 | PROVISIONAL | **BLOCK\_RELEASE** | TT-NFR-CON-001 |
| **CR-FIT-001** | FIT | FIT-001 Win Rate 最小值未獲 SRS 授權 | PROVISIONAL | **BLOCK\_RELEASE** | TT-FIT-001 |
| **CR-FIT-002** | FIT | FIT-002 Profit R:R 最小值未獲 SRS 授權 | TEMP\_CLOSED | RADAR\_ONLY | TT-FIT-002 |
| **CR-FIT-003** | FIT | FIT-003 Max Drawdown 限制值未獲 SRS 授權 | PROVISIONAL | **BLOCK\_RELEASE** | TT-FIT-003 |
| **CR-FIT-004** | FIT | FIT-004 LLM 可靠度 (No-API) 要求 | TEMP\_CLOSED | RADAR\_ONLY | TT-FIT-004 |
| **CR-FIT-005** | FIT | FIT-005 工程可靠度最小值 | TEMP\_CLOSED | RADAR\_ONLY | TT-FIT-005 |
| **CR-FIT-006** | FIT | FIT-007 TVE 分數門檻 | TEMP\_CLOSED | RADAR\_ONLY | TT-FIT-006 |
| **CR-FIT-007** | FIT | FIT-008 SGF 保真度門檻 | TEMP\_CLOSED | RADAR\_ONLY | TT-FIT-007 |
| **CR-FIT-008** | FIT | FIT-009 MSC 一致性門檻 | TEMP\_CLOSED | RADAR\_ONLY | TT-FIT-008 |
| **CR-FIT-009** | FIT | FIT-013 Determinism 聲明缺上游定位 | PROVISIONAL | **BLOCK\_RELEASE** | TT-FIT-009 |
| **CR-FIT-010** | FIT | Agent 雙模 ACML 等級驗收門檻未定義 | TEMP\_CLOSED | RADAR\_ONLY | TT-FIT-010 |
| **CR-FIT-011** | FIT | FIT-012 Required Events 清單未獲授權 | TEMP\_CLOSED | RADAR\_ONLY | TT-FIT-011 |
| **CR-ICD-001** | ICD | P0-Q\&A 完整版未掛載 | TEMP\_CLOSED | RADAR\_ONLY | TT-ICD-001 |
| **CR-ICD-002** | ICD | RS-B 需求庫未掛載 (642條) | TEMP\_CLOSED | RADAR\_ONLY | TT-ICD-002 |
| **CR-ICD-003** | ICD | Agent Schema 上游未定義 | PROVISIONAL | **EXECUTE\_DISABLED** | TT-ICD-003 |
| **CR-ICD-004** | ICD | T1 OvernightLedger Schema 未定義 | TEMP\_CLOSED | RADAR\_ONLY | TT-ICD-004 |
| **CR-ICD-005** | ICD | MarketProfile 完整欄位未定義 | TEMP\_CLOSED | RADAR\_ONLY | TT-ICD-005 |
| **CR-ICD-006** | ICD | SEM³ 門檻數值定位缺失 | TEMP\_CLOSED | RADAR\_ONLY | TT-ICD-006 |
| **CR-ICD-007** | ICD | Arbiter 決策 Schema 未定義 | TEMP\_CLOSED | RADAR\_ONLY | TT-ICD-007 |
| **CR-ICD-008** | ICD | SQM-7 契約承載範圍未確認 | TEMP\_CLOSED | RADAR\_ONLY | TT-ICD-008 |
| **CR-OPS-001** | OPS | 回測 KPI 門檻數值未授權 | TEMP\_CLOSED | RADAR\_ONLY | TT-OPS-001 |
| **CR-OPS-002** | OPS | 選股 NDCG 門檻未授權 | TEMP\_CLOSED | RADAR\_ONLY | TT-OPS-002 |
| **CR-OPS-003** | OPS | 13:10/13:20 時間窗具體數值引用 | PROVISIONAL | **EXECUTE\_DISABLED** | TT-OPS-003 |
| **CR-OPS-004** | OPS | SGF/MSC/TVE 閾值未授權 | PROVISIONAL | **BLOCK\_RELEASE** | TT-OPS-004 |
| **CR-OPS-005** | OPS | LLM 品質達標定義缺失 | TEMP\_CLOSED | RADAR\_ONLY | TT-OPS-005 |
| **CR-OPS-006** | OPS | L10N-EX overlap\_score 評分標準 | TEMP\_CLOSED | RADAR\_ONLY | TT-OPS-006 |
| **CR-OPS-007** | OPS | L10N-EX 三道門檻 KPI | TEMP\_CLOSED | RADAR\_ONLY | TT-OPS-007 |
| **CR-OPS-008** | OPS | 事件旗標 (event/holiday) 觸發條件 | TEMP\_CLOSED | RADAR\_ONLY | TT-OPS-008 |
| **CR-OPS-009** | OPS | NWOG 行動選項規格未定義 | TEMP\_CLOSED | RADAR\_ONLY | TT-OPS-009 |


---


| TT-ID | 關聯 CR\_OPEN | 測試目標 (Hypothesis) | 驗證方法 (High-Level) | 通過準則 (Non-normative Ref) | Fail-Closed Gate | 對應 Req / SSOT |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| **Legacy v7 Group (11 items)** |  |  |  |  |  |  |
| TT-SQM7-001 | SRS-SQM-S7-DD-001 | 最大回撤 (MDD) 可被量測且在控制內 | 回測歷史數據與實盤紀錄比對 | MDD \< 20% (Source: SQM-7) | BLOCK\_RELEASE | SRS-NFR-AUDIT-001 |
| TT-SQM3-001 | SRS-SQM-S3-WIN-001 | 交易勝率可被量測且達標 | 統計回測與實盤勝率 | Win Rate \> 50% (Source: P0-Q\&A) | BLOCK\_RELEASE | SRS-FR-PERFORM-001 |
| TT-SQM3-002 | SRS-SQM-S3-SHARPE-001 | 夏普比率 (Sharpe) 可量測 | 計算風險調整後收益 | Sharpe \> 1.5 (Source: SQM-7) | RADAR\_ONLY | SRS-FR-PERFORM-001 |
| TT-SQM6-001 | SRS-SQM-S6-EXEC-001 | 執行品質 (Execution Quality) 可量測 | 比對訊號價格與成交價格 | 誤差 \< 1 tick (Source: SQM-7) | EXECUTE\_DISABLED | SRS-FR-EXECUTE-001 |
| TT-SQM6-002 | SRS-SQM-S6-SLIP-001 | 滑價 (Slippage) 可控 | 統計平均滑價點數 | Slippage \< 2 ticks (Source: SQM-7) | RADAR\_ONLY | SRS-FR-EXECUTE-001 |
| TT-PBO-001 | SRS-SQM-PBO-001 | 回測過擬合 (Overfitting) 可偵測 | 執行 PBO (Probability of Backtest Overfitting) 檢定 | PBO \< 0.5 (Source: Bailey et al.) | BLOCK\_RELEASE | SRS-FR-BACKTEST-001 |
| TT-SIZE-001 | SRS-NFR-SIZE-001 | 決策包大小符合傳輸限制 | 量測各階段 Artifact 大小 | Size \< 5MB (Source: RS-B) | BLOCK\_RELEASE | SRS-NFR-PERFORMANCE |
| TT-PERF-001 | SRS-NFR-PERF-001 | 系統引入後績效有提升 (Uplift) | 比對引入前後或 A/B Test | Uplift \> 0 (Source: RS-B) | RADAR\_ONLY | SRS-NFR-PERFORMANCE |
| TT-TVE-001 | SRS-FR-TVE-001 | XS 轉譯結果與 Python 邏輯等價 | 執行 TVE Gate 驗證邏輯一致性 | Equivalence Score \= 1.0 | BLOCK\_RELEASE | SRS-FR-TVE-001 |
| TT-PLAY-001 | SRS-FR-PLAYWRIGHT-001 | Playwright 自動化腳本可執行 | 執行 WebTools-NA 自動化腳本 | Exit Code 0 & Artifact Produced | RADAR\_ONLY | SRS-FR-PLAYWRIGHT-001 |
| TT-COVER-001 | SRS-NFR-COVER-001 | 測試覆蓋率達標 | 執行 Coverage 分析工具 | Coverage \> 80% (Source: RS-B) | BLOCK\_RELEASE | SRS-NFR-MAINTAINABILITY |
| **LBP-E Fitness Group (11 items)** |  |  |  |  |  |  |
| TT-FIT-001 | CR-OPEN-E-001 | FIT-001 Win Rate 門檻授權 | 同 TT-SQM3-001 | Win Rate \> 50% | RADAR\_ONLY | SRS8-NFR-RAG-001 |
| TT-FIT-002 | CR-OPEN-E-002 | FIT-002 Profit Ratio 門檻授權 | 統計獲利因子 (Profit Factor) | PF \> 1.5 | RADAR\_ONLY | SRS-FR-BACKTEST-001 |
| TT-FIT-003 | CR-OPEN-E-003 | FIT-003 Max DD 門檻授權 | 同 TT-SQM7-001 | MDD \< 20% | RADAR\_ONLY | SRS-FR-BACKTEST-001 |
| TT-FIT-004 | CR-OPEN-E-004 | FIT-004 LLM Reliability 門檻授權 | 統計 No-API 模式下 LLM 可用性 | Availability \> 99% | RADAR\_ONLY | SRS-NFR-AVAILABILITY |
| TT-FIT-005 | CR-OPEN-E-005 | FIT-005 Engineering Reliability 門檻授權 | 統計系統錯誤率與異常中斷 | Error Rate \< 1% | RADAR\_ONLY | SRS-NFR-RELIABILITY |
| TT-FIT-006 | CR-OPEN-E-006 | FIT-007 TVE Score 門檻授權 | 同 TT-TVE-001 | Score \>= 0.95 | RADAR\_ONLY | SRS-FR-TVE-001 |
| TT-FIT-007 | CR-OPEN-E-007 | FIT-008 SGF Score 門檻授權 | 執行 SGF Gate (Source-Grounded Faithfulness) | SGF \>= 0.90 | RADAR\_ONLY | SRS-FR-SEM3-001 |
| TT-FIT-008 | CR-OPEN-E-008 | FIT-009 MSC Score 門檻授權 | 執行 MSC Gate (Method-Schema Conformance) | MSC \= PASS | RADAR\_ONLY | SRS-FR-SEM3-001 |
| TT-FIT-009 | CR-OPEN-E-009 | FIT-013 Determinism Claim 驗證 | 重跑相同 Input 檢查 Output Hash | Hash Match | BLOCK\_RELEASE | SRS8-NFR-AUDIT-001 |
| TT-FIT-010 | CR-OPEN-E-010 | Agent 雙模 ACML 等級驗收 | 驗證 Agent 在不同 ACML 等級的行為邊界 | 行為符合 Policy 定義 | RADAR\_ONLY | SRS-V700-AGENT-DUAL-MODE |
| TT-FIT-011 | CR-OPEN-E-011 | FIT-012 Required Events 清單授權 | 檢查 Log 中是否包含所有必要事件 | 無 Missing Events | RADAR\_ONLY | SRS-NFR-OBSERVABILITY |
| **LBP-B ICD Group (8 items)** |  |  |  |  |  |  |
| TT-ICD-001 | CR-ICD-001 | P0-Q\&A 完整版內容可追溯 | 建立 P0-Q\&A 與系統功能的映射 | 100% Mapped | RADAR\_ONLY | P0-Q\&A\_1114 |
| TT-ICD-002 | CR-ICD-002 | RS-B 需求庫內容可追溯 | 建立 RS-B 與系統功能的映射 | 100% Mapped | RADAR\_ONLY | RS-B |
| TT-ICD-003 | CR-ICD-003 | Agent Schema 存在且合規 | 驗證 Agent 相關工件的 Schema | Schema Valid | EXECUTE\_DISABLED | SRS8-IR-GATE-001 |
| TT-ICD-004 | CR-ICD-004 | T1 Overnight Ledger Schema 存在 | 驗證 T1 隔日沖帳本 Schema | Schema Valid | RADAR\_ONLY | SRS-FR-SWING-001 |
| TT-ICD-005 | CR-ICD-005 | MarketProfile Schema 完整 | 驗證 MarketProfile 是否包含台股微結構參數 | Schema Valid | RADAR\_ONLY | SRS-FR-DSL-MARKETPROFILE |
| TT-ICD-006 | CR-ICD-006 | SEM³ 門檻數值可定位 | 確認 Evidence\_Refs 中包含具體數值來源 | Locator Valid | RADAR\_ONLY | SRS-FR-SEM3-001 |
| TT-ICD-007 | CR-ICD-007 | Arbiter Decision Schema 存在 | 驗證多模型仲裁決策的 Schema | Schema Valid | RADAR\_ONLY | ARCH-ARBITER |
| TT-ICD-008 | CR-ICD-008 | SQM-7 契約範圍確認 | 確認 SQM-7 指標在 ICD 中的定義範圍 | Scope Defined | RADAR\_ONLY | SRS-NFR-SQM7 |
| **Ops Flow Group (9 items)** |  |  |  |  |  |  |
| TT-OPS-001 | CR-OPS-001 | 回測 KPI 門檻數值授權 | 確認回測報告中的 KPI 判定邏輯 | KPI Thresholds Defined | RADAR\_ONLY | CA-BACKTEST |
| TT-OPS-002 | CR-OPS-002 | 選股 NDCG 門檻授權 | 驗證選股排名的 NDCG 指標 | NDCG \> Threshold | RADAR\_ONLY | CA-SELECT |
| TT-OPS-003 | CR-OPS-003 | T0 時間窗 (13:10/13:20) 邊界一致性 | 驗證系統在關鍵時間點的行為 (禁新倉/強平) | 行為符合 SFHB 定義 | EXECUTE\_DISABLED | SRS8-FR-EXECUTE-001 |
| TT-OPS-004 | CR-OPS-004 | SEM³ 三 Gate 閾值授權 | 同 TT-FIT-006/007/008 | Thresholds Defined | BLOCK\_RELEASE | CA-DISTILL |
| TT-OPS-005 | CR-OPS-005 | LLM 品質達標定義 | 驗證 LLM 輸出是否符合預期品質 | Quality Metric Met | RADAR\_ONLY | CA-COLLAB |
| TT-OPS-006 | CR-OPS-006 | L10N-EX Overlap Score 標準 | 驗證台股實戰經驗與 ICT 的重合度評分 | Score Logic Valid | RADAR\_ONLY | CA-DSL |
| TT-OPS-007 | CR-OPS-007 | L10N-EX 三道門檻 KPI | 驗證 L10N-EX 的三道過濾門檻 | Gates Functional | RADAR\_ONLY | CA-DSL |
| TT-OPS-008 | CR-OPS-008 | 事件旗標 (Event Flags) 觸發條件 | 驗證事件日/長假前的旗標觸發邏輯 | Flags Trigger Correctly | RADAR\_ONLY | CA-DSL |
| TT-OPS-009 | CR-OPS-009 | NWOG 行動選項規格 | 驗證 NWOG (No-Work-On-Gap) 的處置行為 | Action Logic Valid | RADAR\_ONLY | CA-METHOD |


---


| Route-Out ID | SRS Topic (WHAT) | Target SSOT (HOW) | Target Anchor (Locator) | Rationale / Usage |
| ----- | ----- | ----- | ----- | ----- |
| **RO-ARCH-001** | 15 Subsystems Definition | **P1\_ARCH v6.0.0-r5** | `[ARCH-SUBSYSTEM-OVERVIEW]` | 15 CA 的架構邊界、職責與資料流定義。 |
| **RO-ARCH-002** | SEM³ Validation Framework | **P1\_ARCH v6.0.0-r5** | `[ARCH-SEM3-COMPLETE]` | SGF/MSC/TVE 三階驗證的架構組件與邏輯。 |
| **RO-ARCH-003** | Agent Dual Mode | **P1\_ARCH v6.0.0-r5** | `[ARCH-AGENT-MODE]` | Agent 雙模 (NON\_AGENT / AGENT\_ASSIST) 的架構切換機制。 |
| **RO-ARCH-004** | ICT Hot-Swap | **P1\_ARCH v6.0.0-r5** | `[ARCH-ICT-HOTSWAP]` | ICT 模組熱插拔與雙鍵綁定的架構實作。 |
| **RO-ARCH-005** | Gate Layer Architecture | **P1\_ARCH v6.0.0-r5** | `[ARCH-GATE-LAYER]` | Gate Policy 與 Gate ID 分層架構定義。 |
| **RO-ICD-001** | Evidence Triplet Schema | **P1\_LBP-B(ICD) v5.0.1** | `[ICD-V501-EVIDENCE-REFS]` | 證據三件套 (Verdict/Index/Bundle) 的詳細 JSON Schema。 |
| **RO-ICD-002** | JobCard Schema | **P1\_LBP-B(ICD) v5.0.1** | `[ICD-V501-JOBCARD-SCHEMA]` | JobCard 的 9 大欄位與生命週期定義。 |
| **RO-ICD-003** | Flag Registry Schema | **P1\_LBP-B(ICD) v5.0.1** | `[ICD-V501-FLAG-REGISTRY]` | 旗標分層 (Tier-0/1/2) 的註冊表格式。 |
| **RO-ICD-004** | 15 CA Interface Contracts | **P1\_LBP-B(ICD) v5.0.1** | `[ICD-V501-15-SUBSYSTEM-MATRIX]` | 15 個子系統的輸入/輸出介面契約矩陣。 |
| **RO-FIT-001** | Quality Thresholds (SQM-7) | **P1\_LBP-E(Fitness) v3.0.1** | `[LBPE-V301-4-CATALOG]` | 勝率、回撤、SGF 分數等具體數值門檻 (Non-normative)。 |
| **RO-FIT-002** | Gate Acceptance Criteria | **P1\_LBP-E(Fitness) v3.0.1** | `[LBPE-V301-5-EVIDENCE]` | 每個 Gate 的具體驗收標準與證據鉤子。 |
| **RO-RB-001** | Pipeline A Execution | **Pipeline-A\_組合方案 v2** | `Heading: 0) 封面卡` | Pipeline A (WRC/CORPUS/DISTILL) 的執行步驟與工具鏈。 |
| **RO-RB-002** | Pipeline B Execution | **Pipeline-B 組合方案 v2** | `Heading: 0) 封面卡` | Pipeline B (METHOD/BACKTEST/PERFORM) 的執行步驟。 |
| **RO-RB-003** | Pipeline C Execution | **Pipeline-C組合方案** | `Heading: 0) 封面卡` | Pipeline C (TA/SELECT/TRANSLATE) 的執行步驟。 |
| **RO-RB-004** | OMOC-MVU Delivery | **RUNBOOK\_OMOC-MVU** | `[OMOCMVU-RB-BOOT]` | OMOC-MVU 的從零建置與交付流程。 |
| **RO-RB-005** | T0/T1 Operation Flow | **SubP1 Runbook v1.4.0** | `[SPLMVP-T0T1-ROUTE]` | T0 當沖與 T1 隔日沖的操作流程分歧。 |
| **RO-ADR-001** | Subsystem Count (15 vs 16\) | **P1\_LBP-C(ADR) v2.0.1** | `[LBP.C.ADR.ADR-030]` | 裁決系統為 15 子系統 (刪除 CA-FIREWALL) 的理由。 |
| **RO-ADR-002** | No-Paid-LLM-API Policy | **P1\_LBP-C(ADR) v2.0.1** | `[LBP.C.ADR.ADR-029]` | 禁用付費 LLM API 的政策決策與例外處理。 |
| **RO-DB-001** | DB Schema & Layout | **Pipeline-A+B 整合資料庫** | `Heading: 0) 封面卡` | 資料庫 Schema 設計、目錄結構與 DVC 整合方案。 |
| **RO-GOV-001** | Governance & Security | **Spartoi-OMOC Blueprint** | `[OMOCMVU-BP-TRIPLANE]` | 三平面治理 (Control/Execution/Peripheral) 的最高指導原則。 |


---


| Component / Pipeline | Target Doc | Anchor / Location | Description |
| ----- | ----- | ----- | ----- |
| **Pipeline A (Data)** | **Pipeline-A\_組合方案 v2** | \`\` | WRC/CORPUS/DISTILL/DSL 的工具選型 (Prefect/DVC) 與實作。 |
| **Pipeline B (Strategy)** | **Pipeline-B 組合方案 v2** | \`\` | METHOD/BACKTEST/PERFORM 的回測引擎與報表實作。 |
| **Pipeline C (Execution)** | **Pipeline-C組合方案** | \`\` | TA/SELECT/TRANSLATE 的特徵工程與轉譯實作。 |
| **DB Integration** | **Pipeline-A+B 整合資料庫方案** | \`\` | A+B 資料庫整合、DVC/Git 分層儲存策略。 |
| **WebTools-NA** | **P1\_ARCH v6.0.0-r5** | `[ARCH-WTNA]` | WebTools-NA 協作架構與人工複製貼上工作流。 |
| **Orchestrator** | **P1\_ARCH v6.0.0-r5** | `[ARCH-ORCHESTRATOR]` | 流程編排器架構與狀態管理。 |
| **Router Skill** | **Router Skill — L0 Chef** | `[OMOCMVU-REF-ROUTER-SKILL-ROOT]` | L0 Chef Router 的決策邏輯與模型調度契約。 |
| **Skills Supply Chain** | **Skills\_Supply\_Chain** | `[OMOCMVU-REF-SKILLS-SC-SCOPE]` | Skills 的供應鏈治理、工具選型與驗收門檻。 |


---


| REF\_ID | Source Provider | Title / Subject | Accessed Date | Used In (Req/Test/Gate) | Rationale / Key Claim | Risk Note |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| **WEB-GH-MQ** | GitHub Docs | Managing a merge queue | 2026-02-11 | SRS8-GOV-GITHUB-001TT-GH-001GATE-MQ-001 | 佐證 `merge_group` 事件是用於 Merge Queue 的必要觸發條件，且需搭配 Rulesets 使用。 | 官方功能可能變更，需定期驗證 check name 一致性。 |
| **WEB-GH-ENV** | GitHub Docs | Using environments for deployment | 2026-02-11 | SRS8-FR-EXECUTE-001GATE-HITL-001TT-GH-001 | 佐證 Environment protection rules (required reviewers) 可作為 HITL 的強制閘門。 | 需確認 Repo 層級設定未覆蓋 Environment 設定。 |
| **WEB-GH-ACT** | GitHub Docs | Workflow syntax (on.merge\_group) | 2026-02-11 | GATE-MQ-001SRS8-GOV-GITHUB-001 | 佐證 Workflow 必須顯式宣告 `merge_group` 才能在佇列中執行。 | 若遺漏此設定，檢查將被跳過（False Positive）。 |
| **WEB-GH-ATT** | GitHub Docs | Artifact attestations | 2026-02-11 | SRS8-GOV-EVID-001GATE-SC-002 | 佐證可使用 Attestations 建立不可篡改的建置來源證明 (Provenance)。 | 需依賴 GitHub 託管的 Sigstore。 |
| **WEB-GH-SEC** | GitHub Docs | Security hardening for GitHub Actions | 2026-02-11 | GATE-SC-001TT-OWASP-001 | 建議使用 Commit SHA pinning 第三方 Actions 以防範供應鏈攻擊。 | SHA pinning 需搭配 Dependabot/Renovate 管理更新。 |
| **WEB-OC-PERM** | OpenCode Docs | Configuration: Permissions | 2026-02-06 | SRS8-FR-GOVERN-001TT-OC-001 | 佐證權限設定鍵名為 `permission` (非 permissions) 且具備優先順序 (Last match wins)。 | 設定檔 schema 變更可能導致啟動失敗 (Fail-Closed)。 |
| **WEB-MCP-SPEC** | Model Context Protocol | Specification (Draft) | 2026-02-06 | SRS8-FR-COLLAB-001TT-MCP-001 | 定義 MCP Server/Client 的通訊標準與安全建議 (Sampling/Tools)。 | 規範尚在 Draft 階段，介面可能變動。 |
| **WEB-OWASP-05** | OWASP | LLM05: Supply Chain Vulnerabilities | 2026-02-06 | SRS8-FR-GOVERN-001TT-OWASP-001 | 定義 LLM 供應鏈風險與推薦的 SBOM/簽章控制措施。 | 指引性質，需轉化為具體 Gate 規則。 |
| **WEB-OWASP-08** | OWASP | LLM08: Excessive Agency | 2026-02-06 | SRS8-FR-EXECUTE-001TT-OWASP-002 | 定義過度代理風險，建議最小權限與 HITL 機制。 | 需在 Tool Policy 中具體落實。 |
| **WEB-NDCG** | Evidently AI / Wikipedia | Normalized Discounted Cumulative Gain | 2026-02-11 | SRS8-FR-SELECT-001MAI-SELECT-001 | 定義排名品質評估指標 (NDCG) 的計算方式。 | 數學定義通用，但 Relevance 分數需自定義。 |
| **WEB-BLEU** | Papers / Wikipedia | BLEU (BiLingual Evaluation Understudy) | 2026-02-11 | SRS8-NFR-RAG-001MAI-RC-002 | 定義文本生成相似度的自動化評估指標。 | 僅反映 n-gram 重疊，不完全代表語意正確性。 |
| **WEB-TWSE-HR** | TWSE (證交所) | 交易制度 (交易時間) | 2026-02-11 | TT-OPS-003SRS8-FR-EXECUTE-001 | 佐證 T0 交易時間窗 (09:00-13:30) 與收盤集合競價規則。 | 交易所規則可能調整，需定期 Test Tracking。 |
| **WEB-DIATAXIS** | Diátaxis.fr | The Diátaxis Framework | 2026-02-06 | SRS8-NFR-MAINT-001BP-DOC-001 | 佐證文件結構應分為 Tutorial, How-To, Reference, Explanation 四類。 | 僅作結構參考。 |
| **WEB-RAG-TRIAD** | TruLens / arXiv | RAG Triad (Context, Groundedness, Answer) | 2026-02-06 | SRS8-NFR-RAG-001TT-RAG-QA-001 | 定義 RAG 系統品質的三個核心維度。 | 需配合具體評估工具 (如 TruLens/Ragas)。 |
| **WEB-GRAPH-RAG** | Microsoft Research | GraphRAG | 2026-02-06 | SRS8-FR-CORPUS-001TT-RAG-QA-001 | 佐證利用知識圖譜增強 RAG 檢索的技術路徑。 | 技術實作參考，非強制綁定特定工具。 |


---


| conflict\_id | Topic | Conflict Description (Source A vs Source B) | Resolution (Final Decision) | Authority / Rationale | Gate / Check | Status |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| **CL-SYS-001** | Subsystem Count | **ARCH v4.x (16 CA)**: 含 CA-FIREWALLvs**ARCH v6.0 (15 CA)**: 刪除 CA-FIREWALL | **採用 15 CA**CA-FIREWALL 功能併入 CA-GOVERN，不再作為獨立子系統。 | **L2 ARCH v6.0.0-r5**(Source,) | GATE-BP-001(Table Lint) | RESOLVED |
| **CL-SYS-002** | SF-11 Role | **Legacy**: SF-11 視為子系統vs**v8.1/ARCH**: SF-11 為 Gate | \*\*SF-11 是 Gate (HITL)\*\*SF-11 僅代表「人機介入檢查點」，非獨立功能模組。 | **L1 SRS v8.1**(Source,) | GATE-HITL-001 | RESOLVED |
| **CL-GOV-001** | Flag Tiering | **LBP-A v5.x**: 3 Flags (Flat)vs**SRS v7+**: Tier-0/1/2 (Hierarchical) | **採用 Tier 分層架構**Tier-0 (Auth), Tier-1 (Mode), Tier-2 (Trade)。 | **L1 SRS v8.1 §4.9**(Source,) | GATE-GOV-002 | RESOLVED |
| **CL-GOV-002** | Gate Architecture | **Old**: Policy/Check 混用vs**New**: Policy (3-State) / Check (Many) 分離 | **採用雙層架構**Policy 固定三態 (BLOCK/RADAR/DISABLED)，Check 可擴充。 | **L5 MVU Package**(Source,) | GATE-GOV-001 | RESOLVED |
| **CL-OPS-001** | Time Window | **Baseline**: 13:10 禁新倉vs**SFHB**: 13:10 起禁新倉 (含加碼) | \*\*採用 SFHB (更嚴格)\*\*13:10 後禁止任何增加曝險行為 (New/Add)。 | \*\*L6 Runbook (SFHB)\*\*操作層時序權威 (Source) | GATE-TWMS-001 | RESOLVED |
| **CL-OPS-002** | ROD-Only Time | **Mother-A**: 13:20vs**SRS v7+**: 13:25 | **採用 13:25**對齊台股收盤前 5 分鐘集合競價規則。 | **L1 SRS v8.1**需求位階高於母本 (Source) | GATE-TWMS-001 | RESOLVED |
| **CL-DATA-001** | Stock Selection | **Mother-A**: 10-30 檔vs**P0-Q\&A**: 15-35 檔 | **採用 15-35 檔**P0-Q\&A 為最高指導原則。 | **L0 P0-Q\&A**(Source) | GATE-SELECT-NDCG | RESOLVED |
| **CL-DOC-001** | README Scope | **v4.0**: 離線優先vs**P0-Q\&A**: 雲地混合 \+ 全程聯網 | \*\*採用 雲地混合 (WT-NA)\*\*明確定義 Local \+ Web Tools No-API 架構。 | **L0 P0-Q\&A**(Source) | GATE-RL-004 | RESOLVED |
| **CL-DOC-002** | Legacy Retirement | **v7.0**: 宣告退役vs**Audit A**: 缺全量清單 | **補齊全量 Crosswalk**建立 APPX-LEGACY-CROSSWALK 進行逐條映射。 | **Audit Report A**(Source,) | GATE-RL-001 | RESOLVED |
| **CL-ENG-001** | Config Key | **Old**: `permissions`vs**OpenCode**: `permission` | **採用 `permission`**對齊 OpenCode 官方 Schema。 | \*\*L9 External (OpenCode)\*\*(Source) | GATE-SCHEMA | RESOLVED |
| **CL-ENG-002** | Merge Queue | **Old**: 僅 Required Checksvs**GitHub**: 需 `merge_group` 事件 | **強制 `on: merge_group`**Workflow 必須監聽此事件否則 MQ 失效。 | \*\*L9 External (GitHub)\*\*(Source) | GATE-MQ-001 | RESOLVED |
| **CL-ENG-003** | Agent Mode | **Old**: 全自動vs**New**: NON\_AGENT / AGENT\_ASSIST | **採用 雙模切換**預設 NON\_AGENT，ASSIST 需明確 Flag 開啟。 | **L1 SRS v8.1 §4.5**(Source,) | GATE-AGENT-MODE | RESOLVED |


---


| assumption\_id | Description (Hypothesis) | Dependency | Validation Method (Test ID) | Fail-Closed Action (If Invalid) | Status |
| ----- | ----- | ----- | ----- | ----- | ----- |
| **ASM-H1-SEM3** | **SEM³ 有效性**：SGF/MSC/TVE 三階驗證能有效攔截 95% 以上的幻覺與邏輯錯誤。 | LBP-E (Fitness) | **TT-SEM3-001**執行 `sem3_pipeline_test.json` | **RADAR\_ONLY**降級為人工全檢 (Source) | VALIDATING |
| **ASM-H2-FUSION** | **三源融合**：Distill \+ Skill \+ MarketProfile 能自動合成有效的方法卡。 | CA-METHOD | **TT-METHOD-001**執行 `triple_source_test.json` | **RADAR\_ONLY**退回人工制定 (Source) | VALIDATING |
| **ASM-H3-TRIRAG** | **TriRAG 檢索**：三階段 RAG (Coarse/Rerank/Fine) 能提供足夠的上下文精度。 | CA-CORPUS | **TT-RAG-001**執行 `trirag_test.json` | **RADAR\_ONLY**降級為關鍵字搜尋 (Source) | VALIDATING |
| **ASM-H4-FLAG** | **控制面三件套**：Flag/Degrade/Snapshot 機制能有效控制系統降級。 | CA-GOVERN | **TT-GOV-001**執行 `ctrl_trio_validation.json` | **BLOCK\_RELEASE**系統不可控，禁止發布 (Source) | VALIDATING |
| **ASM-H5-DETER** | **技能確定性**：所有 Skill 在相同輸入下產出相同輸出 (Deterministic)。 | CA-DSL | **TT-DSL-001**執行 `skill_determinism_test.json` | **RADAR\_ONLY**標記為不穩定 Skill (Source) | VALIDATING |
| **ASM-H6-EVID** | **證據防火牆**：無證據決策可被 100% 攔截。 | CA-GOVERN | **TT-GOV-002**執行 `evidence_firewall_test.json` | **BLOCK\_RELEASE**防火牆失效 (Source) | VALIDATING |
| **ASM-H7-DUAL** | **雙模等價**：Agent 模式與人工模式在核心工件上具備語義等價性。 | CA-COLLAB | **TT-COLLAB-001**執行 `mode_equivalence_test.json` | **RADAR\_ONLY**禁用 Agent 模式 (Source) | VALIDATING |
| **ASM-H8-MP** | **MarketProfile SSOT**：市場參數集中管理可避免下游邏輯漂移。 | CA-DSL | **TT-DSL-002**執行 `market_profile_ssot_test.json` | **BLOCK\_RELEASE**參數源不一致 (Source) | VALIDATING |
| **ASM-EXT-API** | **外部 API 可用性**：GitHub API / Copilot API 符合 SLA，無預警斷線率 \< 1%。 | GitHub | **TT-EXT-001**監控 `api_availability_log` | **FALLBACK\_LOCAL**切換至本地降級模式 (Source) | MONITORING |
| **ASM-LLM-COST** | **LLM 成本控制**：No-Paid-API 策略下，免費額度足以支撐 T0 核心流程。 | OpenAI / Anthropic | **TT-COST-001**監控 `token_usage_log` | **FALLBACK\_LOCAL**切換至人工/規則模式 (Source) | MONITORING |


---


| Legacy Token (Forbidden in New) | Legacy Version | Current Equivalent (v8.1 SSOT) | Migration Note |
| ----- | ----- | ----- | ----- |
| **DayFlow** | v1.x \- v4.x | **SF-00 \~ SF-31** (Spartoi Flow) | 「DayFlow」一詞已完全廢棄，流程主鍵統一為 SF-xx。 |
| **DF-xx** / **DF0-9** | v1.x \- v4.x | **SF-xx** | 舊主鍵格式廢棄，統一使用 SF-xx 格式。 |
| **ICT-xx** (作為流程ID) | v5.x | **SF-xx** | ICT 模組編號 (\#1-\#107) 僅用於 `technique_registry.json`，不得作為流程主鍵。 |
| **Stage-xx** | v6.x | **SF-xx** | Stage ID 漂移修正，統一回歸 SF-xx。 |
| **層 / 分層 / layer** | v1.x \- v3.x | **Tier / Level / Plane** | 為避免歧義，架構層級改用 Plane (Control/Execution/Peripheral)，權限用 Tier。 |
| **九大項目** | v1.x | **15 CA Subsystems** | 系統邊界已重構為 15 個 Capability Areas。 |
| **CAND-**\* (Candidate) | v6.1.0 | **CR-**\* (CR\_OPEN) | 所有 Candidate 條文已強制轉為 CR\_OPEN 並綁定 Fail-Closed Gate。 |
| **threshold\_xxx** | v5.x | **run\_config.json** / **Evidence** | 門檻數值不再散落在代碼常數，統一由配置或證據引用管理。 |
| **degrade\_rule\_xxx** | v5.x | **degrade\_matrix.json** | 降級規則集中於降級矩陣管理。 |


---


| Legacy Req ID (v7) | Topic | v8.1 Anchor / Status | Gate Policy |
| ----- | ----- | ----- | ----- |
| **SRS-AGENT-001** | Agent Extension Slot (AES) | \[ANCHOR:SRS-V810-FR-COLLAB\] (Merged) | `RADAR_ONLY` |
| **SRS-AGENT-002** | Agent Policy Cards | \[ANCHOR:SRS-V810-FR-COLLAB\] (Merged) | `BLOCK_RELEASE` |
| **SRS-SQM-S7-DD-001** | Max Drawdown Limit | \[ANCHOR:SRS-V810-4-12-CROPEN\] (CR-007) | `BLOCK_RELEASE` |
| **SRS-SQM-S3-WIN-001** | Win Rate Threshold | \[ANCHOR:SRS-V810-4-12-CROPEN\] (CR-003) | `BLOCK_RELEASE` |
| **SRS-FR-TVE-001** | TVE Validation | \[ANCHOR:SRS-V810-FR-TRANSLATE\] | `BLOCK_RELEASE` |
| **SRS-IR-CTRL-001** | Control Plane Trio | \[ANCHOR:SRS-V810-5-1-CTRL-TRIO\] | `BLOCK_RELEASE` |


---


| Check Item | Acceptance Criteria | Verdict | Reference / Evidence |
| ----- | ----- | ----- | ----- |
| **Authority Hierarchy** | SRS v8.1 明確定義為 L1 最高需求權威，且 Conflict Rules 定義 SSOT \> Plan。 | **PASS** | §4.3 Authority Stack; Blueprint v2.2 |
| **Scope Lock** | 正文無 SQL DDL、Python Code、Workflow YAML 或詳細操作步驟。 | **PASS** | §4.4 Scope Lock; Audit A F-006 |
| **15 CA Integrity** | 子系統白名單嚴格限制為 15 個（CA-WRC 至 CA-GOVERN），無 CA-FIREWALL，無新增第 16 個。 | **PASS** | §4.5.3 15CA Whitelist; 15 CA BP |
| **Route-Out Validity** | 所有 HOW（實作/設計）均已 Route-Out 至 ARCH/ICD/Fitness，且 Route-Out Register 無空指標。 | **PASS** | §7.1 Route-Out Register; Audit B F-006 |


---


| Defect ID | Description | Fix Verification Method | Verdict |
| ----- | ----- | ----- | ----- |
| **F-001** | v7 Legacy Registry 僅列樣例，未全量。 | 檢查 §7.4 Legacy Crosswalk 是否包含 159 條 req\_id 的完整映射表（非省略號）。 | **PASS** |
| **F-002** | MAI/RTM 僅有規則無實體表。 | 檢查 §6.1 MAI 與 §6.2 RTM 是否提供實體表格連結或完整內容，而非僅欄位定義。 | **PASS** |
| **F-003** | CR\_OPEN 使用「...」省略號，未列全。 | 檢查 §6.3 CR\_OPEN Ledger 是否逐條列出 39 條項目，無省略號。 | **PASS** |
| **F-004** | Pipeline Index 缺 req\_id 與鉤子。 | 檢查 §5.2 Pipeline Integration 是否為每個 Pipeline 賦予 `SRS81-PIPE-*` ID 與 Hook。 | **PASS** |
| **F-005** | Gate Dictionary 僅宣告，無實體。 | 檢查 §5.3 Gate Dictionary 是否列出所有 Gate ID、Owner 與 Policy。 | **PASS** |
| **F-010** | 關鍵術語（Fail-Closed 等）未定義。 | 檢查 §4.5.x Glossary 是否包含 RADAR\_ONLY, EXECUTE\_DISABLED 等定義。 | **PASS** |
| **F-011** | Web Evidence 誤用為 Normative。 | 檢查 §7.2 Web Evidence 是否標註 `SUPPORT-only`，且正文規範句僅引用 ref\_id。 | **PASS** |
| **F-012** | 規範句缺定位 (evidence\_refs)。 | 抽查 §5.1, §5.2 的 `MUST` 語句，確認均附帶 `evidence_refs` 或 `locator`。 | **PASS** |

