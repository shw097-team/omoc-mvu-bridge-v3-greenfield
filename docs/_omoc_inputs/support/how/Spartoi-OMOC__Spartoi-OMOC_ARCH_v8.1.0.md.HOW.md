# HOW (extracted)


| Input Category | Doc ID / File Name | Version / Hash | Critical Role | Locator Proof (Anchor) | Status |
| ----- | ----- | ----- | ----- | ----- | ----- |
| **Governance (L1)** | Spartoi-OMOC Blueprint v2.2.0-r1 | v2.2.0-r1 | 治理母法、三平面定義 | `[ANCHOR:BP-TRIPLANE]` | **FOUND** |
| **Requirements (L1)** | Spartoi-OMOC\_SRS\_v8.1.0 | v8.1.0 | 需求契約、Gate Policy | `[ANCHOR:SRS-V810-TOC]` | **FOUND** |
| **Architecture (L2)** | Spartoi-OMOC(15 CA)重構升級藍圖 | v0.2.0-r1 | 15 CA 定義、Stable ID | `[ANCHOR:SOMOC-15CA-BP-05-CA-MAP]` | **FOUND** |
| **Interface (L3)** | Spartoi｜P1\_LBP-B(ICD) | v5.0.1 | 介面 Schema、Evidence 契約 | `[ANCHOR:ICD-V501-15-SUBSYSTEM-MATRIX]` | **FOUND** |
| **Fitness (L4)** | Spartoi｜P1\_LBP-E(Fitness) | v3.0.1 | 驗收門檻、SQM-7 | `[ANCHOR:LBPE-V301-4-CATALOG]` | **FOUND** |
| **Data Plane** | Pipeline-A+B 整合資料庫方案 | v4 | 資料落盤契約、DVC 分層 | `## 0) 封面卡` | **FOUND** |
| **Execution Plane** | OMOC-MVU 套件包 | v0.2.0-r1 | 執行平面契約、Agent 治理 | `[ANCHOR:OMOCMVU-REF-AGENT-GOV]` | **FOUND** |


---


| Topic | Target SSOT | Reference Anchor |
| ----- | ----- | ----- |
| **需求與驗收** | SRS v8.1.0 | `[ANCHOR:SRS-V810-TOC]` |
| **介面契約** | LBP-B(ICD) v5.0.1 | `[ANCHOR:ICD-V501-15-SUBSYSTEM-MATRIX]` |
| **量化門檻** | LBP-E(Fitness) v3.0.1 | `[ANCHOR:LBPE-V301-4-CATALOG]` |
| **操作流程** | SubP1 Runbook v1.4.0 | `[ANCHOR:SPLMVP-S4-RUNBOOK]` |
| **資料庫設計** | Pipeline-A+B 整合資料庫方案 | `## 3.4 目錄與規格` |
| **Agent 治理** | OMOC-MVU 套件包 | `[ANCHOR:OMOCMVU-REF-AGENT-GOV]` |


---


| 哲學 (Philosophy) | 定義與架構落點 (Definition & Mapping) | 來源依據 (Provenance) |
| ----- | ----- | ----- |
| **Fail-Closed by Default**(預設失效關閉) | 當系統遭遇資料缺口、外部 API 異常、驗證失敗或狀態不明時，預設行為必須是 **BLOCK\_RELEASE**（阻斷發布）或 **EXECUTE\_DISABLED**（禁用執行），嚴禁「先跑再說」。*Mapping: CA-GOVERN Gate Logic, CA-EXECUTE Kill-Switch* | SRS v8.1 §1.3.1ARCH v6.0 §11Blueprint v2.2 |
| **XQ Sole Order Endpoint**(XQ 唯一下單端) | 本地系統（Spartoi）僅負責產生訊號（Signals）、計畫（Plans）與指令文件（Scripts）。實際的資金交割與下單動作，**必須且只能** 在 XQ 全球贏家終端完成。禁止本地 Python 腳本直接呼叫券商 API 進行無人值守下單。*Mapping: CA-EXECUTE, CA-TRANSLATE* | SRS v8.1 §1.1.4台股當沖隔日沖流程 §3.3Audit Report A \[F-016\] |
| **Attended-First Strategy**(人工優先策略) | 系統預設運行於 **NON\_AGENT** 模式或 **AGENT\_ASSIST** 模式，關鍵節點（SF-11 HITL）強制要求人工介入確認。全自動模式（Unattended）僅在通過嚴格的 **Upgrade Gate** 與 **Environment Review** 後方可於沙盒中開啟。*Mapping: CA-COLLAB, CA-UI* | SRS v8.1 §2.3.1ARCH v6.0-r5 §8.5OMOC-MVU Package |
| **No-Paid-LLM-API**(非付費 API 政策) | 核心流程與日常運作不得依賴付費的雲端 LLM API（如 GPT-4 API）。所有 AI 協作必須支援 **WT-NA (WebTools No-API)** 模式，透過人工複製貼上或瀏覽器自動化（在合規範圍內）完成，或使用本地模型（Local LLM）。*Mapping: CA-COLLAB (WT-NA Wizard)* | P0-Q\&ALBP-C(ADR) ADR-029SRS v8.1 §2.3.5 |


---


| 驅動因子 (Driver) | 定義與架構落點 (Definition & Architectural Mapping) | 來源追溯 (Traceability) |
| ----- | ----- | ----- |
| **D1: Fail-Closed by Default**(預設失效關閉) | **定義**：面對資訊缺失、證據不足、Schema 不符、衝突無法裁決或依賴服務不可用時，系統必須預設進入阻斷（BLOCK\_RELEASE）或降級（RADAR\_ONLY）狀態，嚴禁「先跑再說」。**架構映射**：1. **Control Plane**：CA-GOVERN 透過 Gate Policy 強制執行阻斷邏輯。2. **Evidence Chain**：Pipeline 產出若缺 `verdict.json`，下游自動拒收。 | SRS v8.1 §1.3.1SRS v8.1 §2.1.2Blueprint v2.2 |
| **D2: Evidence-Driven Governance**(證據驅動治理) | **定義**：所有關鍵操作（決策、交易、發布）必須產出可被機械驗證的「證據三件套（Evidence Triplet）」，否則視為無效。**架構映射**：1. **Unified Data Backbone**：實作 RunLedger 以記錄血緣（Lineage）。2. **Registry**：CA-GOVERN 維護 Artifact Registry，強制要求所有產物註冊。 | SRS v8.1 §2.2SRS v8.1 §4.115CA BP §8 |
| **D3: XQ Sole Order Endpoint**(XQ 唯一下單端) | **定義**：本地系統（Spartoi）僅作為決策輔助與訊號生成端，**嚴禁** 直接對接券商 API 進行自動下單。實際資金操作必須且只能在 XQ 全球贏家終端完成。**架構映射**：1. **Physical Isolation**：CA-EXECUTE 與 XQ 之間無 API 連線，僅透過檔案交換（XS Script）。2. **HITL Gate**：交易指令產生前必須通過 GATE-HITL-001 人工確認。 | SRS v8.1 §1.1.4SubP1 RunbookAudit A |
| **D4: No-Paid-LLM-API**(零付費 API 政策) | **定義**：核心流程與日常運作不得依賴額外付費的雲端 LLM API（如 GPT-4 API），以確保低成本與可持續性。優先使用 WebTools 或 Local LLM。**架構映射**：1. **CA-COLLAB**：實作 **WT-NA (WebTools No-API)** 架構，支援剪貼簿橋接。2. **Router Skill**：L0 Chef 優先調度本地或已訂閱的 Copilot 模型。 | SRS v8.1 §2.3.5ADR-029ARCH v6.0 §4.19 |


---


| Driver | 核心實作組件 (Component) | 關鍵機制 (Mechanism) |
| ----- | ----- | ----- |
| **D1: Fail-Closed** | **CA-GOVERN**, **GateKit** | Policy-Check Separation, Blocking Gates |
| **D2: Evidence-Driven** | **Unified Data Backbone** | RunLedger, Artifact Registry |
| **D3: XQ-Only** | **CA-EXECUTE**, **CA-TRANSLATE** | HITL Gate, No-Auto-Order Constraint |
| **D4: No-Paid-API** | **CA-COLLAB**, **CA-WRC** | WT-NA Wizard, Manual Copy-Paste Flow |
| **D5: Complexity** | **OMOC Orchestrator** | JobCard, Standardized Inputs/Outputs |
| **D6: Observability** | **CA-PERFORM**, **CA-UI** | Logs/Events/Metrics Channels |
| **D7: Semantic Fidelity** | **CA-DISTILL**, **CA-METHOD** | SEM³ Gates (SGF, MSC, TVE) |
| **D8: Hot-Swap** | **CA-DSL**, **CA-METHOD** | Technique Registry, Dual-Key Binding |
| **D9: Risk Control** | **CA-WATCH**, **CA-GOVERN** | Kill-Switch, Degrade Matrix |


---


| 視點 ID | 視點名稱 (Viewpoint Name) | 關注點 (Concerns) | 涵蓋模型/符號 | 解決需求/來源 (Traceability) |
| ----- | ----- | ----- | ----- | ----- |
| **VP-01** | **Context & Governance Viewpoint**(情境與治理視點) | 系統邊界、**三平面治理 (Tri-Plane)**、外部系統互動 (XQ, GitHub, LLMs)。 | C4 Level 1 (System Context)Governance Plane Map | **BP v2.2.0-r1** (Tri-Plane)**SRS v8.1 §1.1.2** |
| **VP-02** | **Container & 15CA Viewpoint**(容器與子系統視點) | **15 個子系統 (15 CA)** 的職責邊界、**Pipeline A/B/C** 的資料流向、**Data Backbone** 落點。 | C4 Level 2 (Container)Pipeline Topology | **15CA BP v0.2.0-r1SRS v8.1 §1.2** (15CA) |
| **VP-03** | **Deployment & Physical Viewpoint**(部署與物理視點) | 運行環境 (Codespaces, Local)、控制中樞 (GitHub)、**唯一下單端 (XQ)** 的物理隔離。 | Deployment DiagramNetwork Boundaries | **SRS v8.1 §1.1.4** (XQ Only)**Delivery Plan** (MVO) |
| **VP-04** | **Observability Viewpoint**(可觀測性視點) | **三通道 (Logs, Events, Metrics)** 資料流、**RunLedger** 寫入點、系統健康度監控。 | Data Flow DiagramTelemetry Schema | **SRS v8.1 §4.2** (Observability)**ARCH v6.0 §10.1** |
| **VP-05** | **Security & Supply Chain Viewpoint**(安全與供應鏈視點) | **工具白名單 (Allowlist)**、**依賴釘選 (Pinning)**、**權限邊界 (Permissions)**、**MCP 隔離**。 | Security ModelTrust Boundary Map | **Audit A:F-009SRS v8.1 §2.3.4OMOC-MVU Package** |
| **VP-06** | **Semantic Validation Viewpoint**(語意驗證視點) | **SEM³ (SGF/MSC/TVE)** 驗證流程、**Gate** 攔截點、知識蒸餾保真度。 | Validation FlowGate Logic Map | **SRS v8.1 §1.3.4** (SEM³)**15CA BP v0.2.0-r1** |


---


| View ID | 視圖名稱 (View Name) | 關注點 (Concerns) | 主要利害關係人 (Stakeholders) | 權威來源 (Authority) |
| ----- | ----- | ----- | ----- | ----- |
| **V1** | **Context View** (情境視圖) | 系統邊界、三平面治理結構、外部實體互動 | Owner, Architect | \[Blueprint v2.2 §3.2\], \[SRS v8.1 §1.1.2\] |
| **V2** | **Container View** (容器視圖) | 15 CA 子系統拓撲、Pipeline 資料流、資料骨幹 | Architect, Developers | \[15CA BP §4\], \[Pipeline-A+B\] |
| **V3** | **Deployment View** (部署視圖) | GitHub 控制面、本地 Runtime、證據儲存落點 | DevOps, Auditors | \[SRS v8.1 §5.1\], \[Delivery Plan §3.2\] |
| **V4** | **Observability View** (觀測視圖) | Logs/Events/Metrics 三通道、血緣追溯 | Operators, Auditors | \[SRS v8.1 §4.2\], \[ARCH v6.0 §10.1\] |
| **V5** | **Security View** (安全視圖) | 供應鏈安全、權限邊界、Fail-Closed 機制 | Security Officer | \[OMOC-MVU Package\], \[SRS v8.1 §2.3.4\] |


---


| 術語 (Term) | 定義 (Definition) | 架構約束 | 來源引用 |
| ----- | ----- | ----- | ----- |
| **15 CA Subsystems** | 構成系統邊界的 15 個功能子系統（Capability Areas）。嚴禁新增第 16 個子系統（如舊版 CA-FIREWALL 已刪除）。每個 CA 代表一個獨立的責任邊界與資料落點。 | 數量固定為 15；架構圖必須完整呈現 15 個節點。 | SRS v8.1 §1.3.2, 15CA BP §4 |
| **Stable ID** | 15 CA 的技術唯一識別碼（如 `CA-WRC`），在系統生命週期內 **永不變更**。與之相對的是 Display Name（可隨 UI/UX 調整）。 | 程式碼、API 路徑、Gate 綁定必須使用 Stable ID。 | SRS v8.1 §1.2.1, 15CA BP §0 |
| **Tri-Plane** | 系統的三大治理平面：**Control Plane** (立法與裁決)、**Execution Plane** (執行與產出)、**Peripheral Plane** (能力擴充)。 | 跨平面互動必須經過明確的介面契約。 | BP v2.2 §2.2, SRS v8.1 §1.1.2 |
| **Data Backbone** | 統一的資料儲存與流轉架構，包含 Git (規格)、DVC (指針)、Object Storage (實體)。確保跨 Pipeline 的資料一致性與可追溯性。 | 嚴禁建立私有資料孤島；所有產物必須落入 Backbone。 | ARCH v8.1 §5.2, DB Plan |
| **OMOC** | **Oh My OpenCode**。執行平面 (Execution Plane) 的核心編排器與多代理架構，負責調度 15 CA 完成 SF 流程。 | 僅作為執行引擎，不得承擔治理裁決職責。 | SRS v8.1 §1.3.2, Delivery Plan |


---


| 術語 (Term) | 定義 (Definition) | 架構約束 | 來源引用 |
| ----- | ----- | ----- | ----- |
| **Fail-Closed** | **失效關閉**。當系統遇到資訊缺失、證據不足或衝突時，預設採取的安全狀態（阻斷或降級），嚴禁「先執行再說」。 | 所有 Gate 與 API 必須實作此邏輯。 | SRS v8.1 §1.3.1, ARCH v6.0 §8 |
| **Gate** | **閘門**。系統中的強制檢查點，分為 **Policy** (裁決層: BLOCK/RADAR/DISABLED) 與 **Check** (檢核層: 具體邏輯)。 | Gate 必須產出 Evidence Triplet 才能視為通過。 | SRS v8.1 §2.1.1, 15CA BP §7 |
| **Evidence Triplet** | **證據三件套**。最小可稽核證據單元，由 **Verdict** (裁決檔)、**Bundle** (實體包)、**Index** (索引檔) 組成。缺一即視為無效證據。 | 所有 Pipeline 產出必須符合此結構。 | SRS v8.1 §2.2.1, 15CA BP §8 |
| **Route-Out** | **外導**。將「實作細節 (HOW)」從架構文件指針化導向 SSOT (Runbook/ICD) 的機制。 | ARCH 文件禁止包含可執行代碼，必須 Route-Out。 | SRS v8.1 §1.3.3, BP v2.2 Route-Out Rules |
| **Control Plane Trio** | **控制面三件套**。指 **Flag Registry** (開關)、**Degrade Matrix** (降級規則)、**Run Config Snapshot** (執行快照) 三個核心治理工件。 | 必須由 CA-GOVERN 統一管理與版本化。 | SRS v8.1 §5.1, ARCH v6.0 §6.2 |


---


| 術語 (Term) | 定義 (Definition) | 架構約束 | 來源引用 |
| ----- | ----- | ----- | ----- |
| **SF Key** | **Spartoi Flow 主鍵**。系統全流程的唯一鍵值體系 (SF-00 \~ SF-31)。取代舊版 OP-xx 或 DayFlow。 | 流程編排與 JobCard 必須使用 SF Key 作為索引。 | SRS v8.1 §1.3.2, Runbook v1.4 |
| **JobCard** | **作業卡**。OMOC 架構下的最小執行單元，封裝了輸入、輸出、驗收標準與回滾策略。 | 每個 SF 節點執行時必須實例化一張 JobCard。 | SRS v8.1 §1.3.2, ARCH v6.0 §5.6 |
| **HITL** | **Human-In-The-Loop** (人機介入)。流程中必須由人類進行明確確認 (Approval) 的強制節點，通常用於解鎖高風險操作。 | CA-EXECUTE 必須在 HITL 確認後才能執行。 | SRS v8.1 §1.3.2, Runbook v1.4 |
| **SEM³** | **三階驗證框架**。包含 **SGF** (來源忠實度)、**MSC** (方法一致性)、**TVE** (轉譯等價性) 三個核心 Gate。 | 知識蒸餾、方法制定、轉譯執行必須分別通過此三階驗證。 | SRS v8.1 §1.3.4, 15CA BP §6.8 |
| **WT-NA** | **WebTools No-API**。一種操作模式，利用 Web 介面與剪貼簿進行 LLM 協作，不依賴付費 API。 | 需搭配 Hash 驗證確保內容未被竄改。 | SRS v8.1 §3.13.1, ARCH v6.0 §4.19 |


---


| 外部實體 (Entity) | 角色與職責 (Role) | 互動契約與約束 (Contract & Constraints) | 來源依據 |
| ----- | ----- | ----- | ----- |
| **Solo Trader**(人類操作者) | \*\*最終決策者 (Decision Maker)\*\*負責定義目標、審核 Gate、執行 HITL 確認。 | **Interaction**: 透過 GitHub PR/Issues 進行治理；透過 CA-UI 進行操作。**Constraint**: 不得繞過 Gate 直接修改 SSOT 資料；高風險操作需雙重確認。 | ARCH v6.0 §1.3SRS v8.1 §1.3 |
| **GitHub Platform** | \*\*控制面宿主 (Control Plane Host)\*\*提供 Rulesets, Environments, Actions, Artifact Store。 | **Interaction**: 透過 `.github/workflows` 定義行為；透過 Commit/PR 觸發流程。**Constraint**: 必須啟用 **Merge Queue** 與 **Branch Protection**。所有變更必須留痕 (Audit Trail)。 | Blueprint v2.2 §3OMOC-MVU Package |
| **XQ Global Winner**(XQ 全球贏家) | \*\*唯一下單端 (Sole Order Endpoint)\*\*負責真實市場的撮合與資金交割。 | **Interaction**: 單向接收 `.xs` 腳本或 `.csv` 清單；匯出成交回報。**Constraint (Hard)**: **禁止** 本地程式碼直接呼叫券商 API 進行無人值守下單。所有交易必須經由 XQ 介面確認。 | SRS v8.1 §1.1.4Audit Report A \[F-016\] |
| **LLM Providers**(OpenAI/Anthropic) | \*\*推論引擎 (Inference Engine)\*\*提供語言理解與生成能力。 | **Interaction**: 透過 `CA-COLLAB` (WT-NA/API) 進行請求。**Constraint**: **No-Paid-API**。核心流程不得依賴額外付費 API，優先使用 GitHub Copilot 協議內模型或本地模型。 | LBP-C(ADR) ADR-029SRS v8.1 §2.3.5 |
| **Web Resources** | \*\*知識來源 (Knowledge Source)\*\*提供教材、新聞、財報。 | **Interaction**: 透過 `CA-WRC` 進行白名單抓取。**Constraint**: **Whitelist-Only**。嚴禁 Agent 自主漫遊爬蟲；所有來源必須預先定義於 `sources.yaml`。 | SRS v8.1 §3.115CA BP §4.1 |


---


| 容器名稱 | 技術選型 | 儲存內容 (SSOT Content) | 架構屬性 |
| ----- | ----- | ----- | ----- |
| **Git Repository** | GitHub | 程式碼、規格 (Specs)、配置 (Configs)、索引 (Indexes)、MethodCards | **Versioned, Text-based** |
| **DVC Cache** | DVC | 大檔指針 (Pointers)、資料雜湊 (Hashes) | **Bridge** |
| **Object Storage** | S3 / MinIO | 原始教材 (PDF)、語料快照、回測數據 (Parquet)、證據包 (Bundle) | **Immutable, Blob** |
| **ReferenceDB** | DuckDB / Parquet | 交易日曆、股票代碼表 (Instrument Master)、Corporate Actions | **Read-Only Reference** |
| **RunLedger** | SQLite / DuckDB | 執行紀錄 (Lineage)、證據索引、版本清單 (Version Manifests) | **Append-Only Log** |


---


| 配置模式 (Profile) | 適用場景 | 執行環境 | 資料存取 | 外部連線 |
| :---- | :---- | :---- | :---- | :---- |
| **Profile-Dev (開發/回測)** | 策略研發、回測驗證、文件生成 | **Dev Container Runtime**  （可落於 GitHub Codespaces 或本地 VS Code Dev Containers \+ Docker 等） | Full Access（Dev） | 白名單（PyPI, GitHub） |
| **Profile-Ops (生產/產出)** | 技術分析、訊號生成、XS轉譯 | Local Secure Runtime | Local Cache \+ Sync | **嚴格白名單（無自動更新）** |


---


| 通道 (Channel) | 定義與職責 (Definition & Scope) | 寫入頻率 | 儲存策略 (Data Backbone) | 主要消費者 |
| ----- | ----- | ----- | ----- | ----- |
| **C1: Logs**(系統日誌) | **定義**：紀錄程式執行過程中的非結構化或半結構化訊息（Debug, Info, Warn, Error）。**職責**：故障排除（Troubleshooting）與執行細節追蹤。**內容**：Stack trace, API calls, I/O latency。 | 高頻 (Real-time) | **Local/Ephemeral**路徑：`/logs/{subsystem}/{run_id}.log`保留：依 Runbook 定義定期輪替 (Rotate) | System Builders(Debug) |
| **C2: Events**(業務事件) | **定義**：紀錄具有業務意義或狀態變更的結構化事實（State Changes, Milestones）。**職責**：審計（Auditing）與流程還原（Replay）。**內容**：Gate Verdicts, Flag Toggles, Order Status Changes, Agent Mode Switch。 | 中頻 (Transactional) | **Immutable/Persistent**路徑：`/events/{date}/{event_type}.jsonl`保留：**永久保存** (Perpetual) | AuditorsCA-GOVERN |
| **C3: Metrics**(效能指標) | **定義**：紀錄可聚合、可量化的數值型資料（Quantifiable Measures）。**職責**：趨勢分析（Trend Analysis）與健康度監控（Health Check）。**內容**：SGF Score, PBO, Win Rate, API Latency, Token Usage。 | 週期性 (Batch/Aggregated) | **Time-Series/Columnar**路徑：`/metrics/{date}/{metric_group}.parquet`保留：依 Fitness 週期存檔 | CA-PERFORMCA-UI (Dashboard) |


---


| OWASP ID | 威脅名稱 | 架構對策 (Architectural Countermeasure) | 驗證 Gate |
| ----- | ----- | ----- | ----- |
| **LLM05** | Supply Chain Vulnerabilities | **Pinning Enforcement** (3.5.1) \+ **Skill Registry** (3.5.1) | GATE-SC-001 |
| **LLM08** | Excessive Agency | **Role-Based Orchestration** (Chef-Only Delegate) \+ **Default Deny** (3.5.2) | GATE-SC-002 |
| **LLM02** | Insecure Output Handling | **SEM³ Validation (TVE)** \+ **Route-Out** (To Runbook) | GATE-TRANSLATE-TVE |


---


| 介面類型 | 契約項目 | 規格/Artifact ID | 說明 |
| ----- | ----- | ----- | ----- |
| **Input** | **Source Allowlist** | `sources.yaml` | 定義允許的 URL/Path、預期 Hash、Tier 分級。 |
| **Output** | **Raw Corpus Artifact** | `ART-CORPUS-RAW` | 包含原始檔實體 (`wrc_snapshot.zip`) 與清單 (`input_manifest.json`)。 |
| **Output** | **Evidence Triplet** | `ART-EVIDENCE-TRIPLET` | 包含 `verdict.json` (入庫結果)、`evidence_index.json` (指紋索引)。 |
| **Storage** | **Data Backbone Zone** | `DB:CORPUS/RAW` | 落點於 `data/pipeline-a/wrc_raw/` (DVC Tracked)。 |


---


| Gate ID | 檢查項目 | 綁定 Policy | Route-Out |
| ----- | ----- | ----- | ----- |
| **GATE-WRC-TIER** | 來源是否在白名單內？Tier 分級是否正確？ | BLOCK\_RELEASE | SRS §3.1.4 |
| **GATE-BP-003-EVIDENCE** | Evidence Triplet 是否完整？Hash 是否一致？ | BLOCK\_RELEASE | SRS §2.2.1 |
| **GATE-SAFE-001-READONLY** | 是否僅寫入 Output 目錄（不覆寫 Source）？ | BLOCK\_RELEASE | 15CA BP §4 |


---


| Component | Responsibility | SRS Trace | Implementation Pointer |
| ----- | ----- | ----- | ----- |
| **Ingest Controller** | 讀取 `input_manifest`，驗證來源 Hash 一致性，防止換料欺詐（Bait-and-Switch）。 | SRS81-FR-CORPUS-001 | Pipeline-A v2 §3.3 |
| **Content Router** | 依據 MIME type 與內容特徵，將資料流導向 Text/Table/Visual/Video 四大處理路徑。 | SRS81-FR-CORPUS-003 | ARCH v6.0 §4.2.5 |
| **Table Parser** | 專責處理表格結構復原（Structure Recovery），產出保留行列關係的結構化數據（非純文本）。 | SRS81-FR-CORPUS-004 | Pipeline-A v2 §3.6 |
| **Canonical Indexer** | 將各路徑產出彙整為 `corpus_snapshot`，生成全域唯一 ID（DocID \+ ChunkID）與 `provenance_ptr`。 | SRS81-FR-CORPUS-005 | SRS v8.1 §3.2.1 |
| **Cache Manager** | (Accelerator) 管理向量資料庫（Qdrant/Chroma）的 Embedding 生成與寫入，標記為 Ephemeral（可重建）。 | SRS81-FR-CORPUS-001 | Pipeline-A v2 §3.3 |


---


| Gate ID | Check Focus (檢核點) | Fail-Closed Behavior | Trace Ref |
| ----- | ----- | ----- | ----- |
| **GATE-CORPUS-COVERAGE** | **完整性**：驗證 `corpus_snapshot` 是否 100% 覆蓋 `input_manifest` 的有效條目。 | **BLOCK\_RELEASE**: 若有檔案未被索引且無 Error Log，阻斷 Pipeline-A。 | SRS §3.2.1 |
| **GATE-BP-003-EVIDENCE** | **可信度**：驗證 Evidence Triplet (Verdict/Index/Bundle) 是否完整且 Hash 一致。 | **BLOCK\_RELEASE**: 缺證據即視為未執行。 | Blueprint §4 |
| **GATE-DQ-001** | **資料品質**：驗證表格結構的 Schema 合規性（使用 Great Expectations）。 | **RADAR\_ONLY**: 標記品質異常，人工介入確認。 | SRS §3.2.2 |


---


| SRS Req ID | Requirement Summary | ARCH Solution | Evidence Pointer (Hook) |
| ----- | ----- | ----- | ----- |
| **SRS81-FR-CORPUS-001** | Corpus Snapshot as SSOT | §4.2.1 SSOT Guardianship; §4.2.3 Output Contract | `corpus_snapshot.jsonl` |
| **SRS81-FR-CORPUS-002** | 100% Extraction Coverage | §4.2.4 GATE-CORPUS-COVERAGE | `verdict.json` (coverage\_rate) |
| **SRS81-FR-CORPUS-003** | Content Type Routing | §4.2.2 Content Router | `extraction_log.json` (routing\_path) |
| **SRS81-FR-CORPUS-004** | Structured Table Extraction | §4.2.2 Table Parser | `tables/*.parquet` |
| **SRS81-FR-CORPUS-005** | Chunk-to-Source Traceability | §4.2.3 Traceability Fields | `corpus_snapshot` (source\_sha256) |
| **SRS8-NFR-RAG-002** | Retrieval Quality Hooks | §4.2.3 Auxiliary Artifacts | `retrieval_quality_report.json` |


---


| 屬性 | 規範內容 (Normative) | 來源依據 |
| ----- | ----- | ----- |
| **Stable ID** | `CA-DISTILL` (不可變更) | , |
| **Display Name** | Distiller |  |
| **Macro Module** | K (Knowledge & Distill) | , |
| **核心職責** | 蒸餾教材/規格成基底偽代碼與 distill\_pack，確保語義忠實度。 | , |
| **資料主幹落點** | `data/pipeline-a/distill_specpack/` (DVC Tracked) |  |
| **Default Degrade** | **READ\_ONLY\_UI** (蒸餾失敗僅供查閱，不更新下游) | , |


---


| Gate ID | 檢查內容 | Fail-Closed 行為 | 證據工件 | 來源 |
| ----- | ----- | ----- | ----- | ----- |
| **GATE-SEG-L** | **SGF (Source-Grounded Faithfulness)**：驗證蒸餾產物對原教學語義的忠實度，無幻覺。 | **BLOCK\_RELEASE** (若分數低於門檻或斷鏈) | `sgf_report.json` (含 `fidelity_score`) | , |
| **GATE-SC-002** | **Supply Chain Check**：驗證使用的模型與工具是否在白名單內且未被竄改。 | **BLOCK\_RELEASE** | `supply_chain_log.json` | , |
| **GATE-BP-003** | **Evidence Integrity**：驗證 `distill_bundle` 的 Hash 與 `verdict.json` 一致。 | **BLOCK\_RELEASE** | `evidence_triplet` |  |


---


| 主題 (Topic) | 目標 SSOT (Target) | 定位點 (Anchor) |
| ----- | ----- | ----- |
| **功能需求細節** | SRS v8.1.0 | `SRS-V810-FR-DISTILL` |
| **SGF Gate 門檻** | Fitness v3.0.1 | `FIT-008` |
| **Distill Bundle Schema** | LBP-B (ICD) v5.0.1 | `SCHEMA-DISTILL-BUNDLE` |
| **操作流程步驟** | SubP1 Runbook | `SPLMVP-STAGE-03` |
| **Pipeline-A 整合** | Pipeline-A 組合方案 v2 | `§3.3 CA-DISTILL` |
| **SEM³ 完整架構** | ARCH v6.0.0-r5 | `ARCH-SEM3-COMPLETE` |


---


| Component / Module | Responsibility (What) | Rationale (Why) | Route-Out (How) |
| ----- | ----- | ----- | ----- |
| **DSL Generator** | 接收 `ART-DISTILL-BASE`，依據 ICD 定義的 Schema 生成 JSON/YAML 格式的 DSL。 | 確保策略描述的標準化，消除自然語言歧義，使下游 CA-METHOD 可機械化讀取。 | ICD: \[SCHEMA-DSL-PRIMITIVE\] |
| **Purity Validator** | 執行靜態掃描，確保 DSL 中不包含任何硬編碼的市場常數（如 "09:00", "10%"）。 | 實現「一次撰寫，多市場適用」的架構目標；防止硬編碼導致的策略過擬合與維護地獄。 | SRS: \[SRS81-FR-DSL-005\] |
| **MarketProfile Binder** | 定義與 `MarketProfile` SSOT 的引用介面（Reference Interface），而非內嵌數值。 | 確保市場規則變更（如延長交易時間）時，無需修改策略 DSL，僅需更新 Profile。 | ARCH: \[ARCH-MARKETPROFILE-SSOT\] |
| **Artifact Packager** | 封裝生成結果與驗證報告，產出具備完整血緣（Lineage）的 `SpecPack`。 | 確保下游 Pipeline-B 接收到的輸入是經過簽章且可追溯的，符合 Evidence Triplet 要求。 | BP: \[OMOCMVU-REF-EVID-CONTRACT\] |


---


| Gate ID | Architecture Hook (架構掛點) | Fail-Closed Behavior (失效行為) | Evidence Artifact |
| ----- | ----- | ----- | ----- |
| **GATE-DSL-PURITY** | **Purity Validator**在生成 DSL 後立即執行，掃描禁用的常數與語法。 | **BLOCK\_RELEASE**禁止生成 SpecPack，流程中止於 Pipeline-A。 | `purity_scan_report.log`(Verdict: PASS/FAIL) |
| **GATE-SCHEMA** | **Schema Validator**驗證產出是否符合 ICD 定義的 `SCHEMA-DSL-PRIMITIVE`。 | **BLOCK\_RELEASE**視為格式損毀，拒絕進入 CA-METHOD。 | `validation_report.json` |
| **GATE-BP-004-RTM** | **Traceability Linker**檢查每條 DSL 規則是否帶有指向 Distill/Corpus 的 `trace_refs`。 | **BLOCK\_RELEASE**不可追溯的規則視為幻覺。 | `index.json`(含 `trace_refs`) |


---


| SRS Req ID | Requirement Summary | ARCH Implementation | Verification |
| ----- | ----- | ----- | ----- |
| **SRS81-FR-DSL-001** | DSL Output Contract | §4.4.2 定義 `ART-DSL-SPEC` 與 I/O 契約。 | MAI-DSL-001 |
| **SRS81-FR-DSL-002** | Primitive Neutrality | §4.4.1 `MarketProfile Binder` 與 §4.4.3 `GATE-DSL-PURITY`。 | MAI-DSL-002 |
| **SRS81-FR-DSL-004** | Strict Schema Validation | §4.4.3 整合 `GATE-SCHEMA` 與 ICD 連結。 | MAI-DSL-001 |
| **SRS81-FR-DSL-005** | Purity Gate Execution | §4.4.3 定義 `Purity Validator` 與阻斷邏輯。 | MAI-DSL-002 |
| **SRS81-FR-DSL-006** | Evidence Triplet | §4.4.2 定義 `verdict/index/bundle` 輸出結構。 | MAI-DSL-003 |


---


| I/O 類型 | Artifact ID | 來源/去向 | 關鍵內容摘要 (Architecture Level) |
| ----- | ----- | ----- | ----- |
| **Primary Input** | `ART-DSL-SPEC` | From **CA-DSL** | 標準化 DSL 原語定義、ICT 模組規格 (\#1-\#107)。 |
| **Secondary Input** | `ART-DISTILL-BASE` | From **CA-DISTILL** | 蒸餾後的偽代碼片段、參數範圍建議。 |
| **Reference Input** | `ART-MARKET-PROFILE` | From **CA-DSL** (SSOT) | 交易時段、跳動點、漲跌幅限制 (SSOT Reference)。 |
| **Primary Output** | `ART-METHOD-SPEC` | To **CA-BACKTEST**, **Evidence Store** | **MethodCard**：含策略邏輯、風控參數、目標定義、版本雜湊、來源追溯指針。 |
| **Evidence Output** | `ART-EVIDENCE-TRIPLET` | To **CA-GOVERN** | verdict.json (MSC Pass/Fail), index.json (Lineage), bundle.zip。 |


---


| Topic | Route-Out Target (SSOT) | Anchor/Section |
| ----- | ----- | ----- |
| **Schema Definition** | LBP-B (ICD) v5.0.1 | `SCHEMA-METHOD-CARD`, `SCHEMA-METHOD-TRIPLE-SOURCE` |
| **MSC Gate Logic** | 15CA BP v0.2.0-r1 | `GATE-METHOD-MSC` in Gate Registry |
| **Operational Steps** | Runbook v1.4.0 | `OP-05` (Method Formulation) |
| **Gate Thresholds** | LBP-E (Fitness) v3.0.1 | `FIT-009` (MSC Conformance) |
| **Market Profile** | ARCH v6.0.0-r5 | `ARCH-MARKETPROFILE-SSOT` (Reference) |


---


| 類型 | Artifact ID | 內容摘要 | 來源/去向 | 驗證掛鉤 |
| ----- | ----- | ----- | ----- | ----- |
| **Input** | `ART-METHOD-SPEC` | 版本化的方法卡（含邏輯、參數、hash） | CA-METHOD | G-SRC (Hash check) |
| **Input** | `ART-DATA-FEATURES` | 凍結的市場資料與特徵快照（含 DVC 指針） | CA-TA / DB Backbone | G-SRC (Data Integrity) |
| **Output** | `ART-BACKTEST-RESULT` | 包含績效指標、交易明細、衛生報告、重現清單 | → CA-PERFORM | G-BT-H (Hygiene Check) |


---


| 類型 | 工件 ID (Artifact ID) | 來源 / 目標 | 說明 | Fail-Closed 條件 |
| ----- | ----- | ----- | ----- | ----- |
| **Input** | `ART-METHOD-SPEC` | CA-METHOD | 策略方法卡（MethodCard），含邏輯、參數、風控規則。 | 缺 Hash 或簽章 → **BLOCK** |
| **Input** | `ART-DATA-FEATURES` | CA-TA / Pipeline-A | 凍結的歷史市場資料與特徵切片（Data Slice）。 | 資料指紋不符 → **BLOCK** |
| **Input** | `RUN-CONFIG-SNAPSHOT` | CA-GOVERN | 運行配置（含引擎版本、手續費率、滑價模型）。 | 缺配置快照 → **BLOCK** |
| **Output** | `ART-BACKTEST-RESULT` | CA-PERFORM / Evidence Store | 回測報告包，含績效指標、交易明細、衛生報告。 | 格式不符 Schema → **FAIL** |


---


| Gate ID | 檢查名稱 | 檢查邏輯 (Logic) | 證據工件 (Evidence) | Fail-Closed 行為 |
| ----- | ----- | ----- | ----- | ----- |
| **GATE-SAFE-002-RADARONLY** | Radar Mode Check | 確認回測過程無外部副作用（如下單 API 呼叫）。 | `ART-SAFE-RADARONLY` | 若有副作用 → **BLOCK\_RELEASE** |
| **GATE-BT-H** | Backtest Hygiene | 1\. `reproducibility_manifest` 存在且 Hash 正確。2. `hygiene_report` 無洩漏。3. PBO/DSR 指標計算完成。 | `ART-BACKTEST-RESULT` | 缺報告/有洩漏 → **FAIL**過擬合高 → **CONDITIONAL** (標記風險) |
| **GATE-BP-003-EVIDENCE** | Evidence Triplet | 驗證 `verdict`, `bundle`, `index` 三件套完整性。 | `ART-EVIDENCE-TRIPLET` | 缺件 → **BLOCK\_RELEASE** |


---


| I/O 類型 | Artifact ID | 內容摘要 | 來源/去向 | SSOT 連結 |
| ----- | ----- | ----- | ----- | ----- |
| **Input** | `ART-TA-SIGNALS` | 技術指標、特徵矩陣、趨勢標記 | From: **CA-TA** | ICD: CONTRACT-TA |
| **Input** | `ART-METHOD-SPEC` | 選股規則、權重配置、模式參數 | From: **CA-METHOD** | ICD: CONTRACT-METHOD |
| **Input** | `ART-FACTORS` | (Optional) 外部因子、籌碼數據 | From: **Data Backbone** | ICD: CONTRACT-DATA |
| **Output** | `ART-SELECT-CANDIDATES` | 結構化候選清單 (S1/S2)、排序分數、入選理由快照 | To: **CA-TRANSLATE**, **CA-UI** | ICD: CONTRACT-SELECT |
| **Evidence** | `Evidence Triplet` | `verdict.json` (含 NDCG 分數), `index.json`, `bundle.zip` | To: **Evidence Store** | SRS §2.2.1 |


---


| Topic | Target SSOT | Locator Anchor |
| ----- | ----- | ----- |
| **Schema Definition** | LBP-B (ICD) | `SCHEMA-SELECT-TOPK` |
| **Ranking Algorithm** | Pipeline-C 方案 | §3.2 工具鏈 (XGBoost) |
| **Operational Steps** | Runbook & WI | `OP-08` 選股 |
| **Quality Thresholds** | LBP-E (Fitness) | `FIT-001`, `CR-OPEN-E-002` |
| **Gate Implementation** | 15CA BP | `GATE-SELECT-NDCG` |


---


| Artifact ID | 內容摘要 | 格式/Schema | 驗收 Gate | 失敗處置 (Fail-Closed) |
| ----- | ----- | ----- | ----- | ----- |
| **ART-XS-PLAN** | 完整的 XS 執行計畫包，含：1. `xs_scripts/` (策略/指標腳本)2. `watchlist.csv` (XQ 匯入格式)3. `import_instructions.md` (操作指引) | ICD: SCHEMA-XS-SCRIPT | **GATE-TRANSLATE-TVE** | **BLOCK\_RELEASE**(禁止產生無效腳本包) |
| **ART-TVE-REPORT** | 轉譯等價性驗證報告，含：1. `tve_score` (等價分數)2. `diff_log` (邏輯差異)3. `verdict` (PASS/FAIL) | ICD: SCHEMA-TVE-REPORT | **GATE-TRANSLATE-TVE** | **BLOCK\_RELEASE**(報告缺失即視為失敗) |


---


| 主題 (Topic) | 目標文件 (Target SSOT) | 定位錨點 (Locator) | 說明 |
| ----- | ----- | ----- | ----- |
| **功能需求細節** | Spartoi-OMOC\_SRS\_v8.1.0 | `[ANCHOR:SRS-V810-FR-TRANSLATE]` | 腳本生成、TVE 驗證、安全約束的詳細條文 |
| **TVE 演算法** | Pipeline-C 組合方案 | `§3.5 TVE Implementation` | 等價性驗證的具體算法與工具鏈 |
| **XS 語法規格** | Spartoi｜P1\_LBP-B(ICD)\_v5.0.1 | `SCHEMA-XS-SCRIPT` | 輸出 JSON/檔案的欄位定義 |
| **TVE 通過門檻** | Spartoi｜P1\_LBP-E(Fitness)\_v3.0.1 | `FIT-007` / `CR-OPEN-E-006` | tve\_score 的具體數值要求 |
| **操作步驟** | Spartoi｜各階段子系統操作流程 | `OP-09 XS轉譯` | 人員操作 UI 或 CLI 的步驟 |


---


| I/O 類型 | 工件 ID (Artifact ID) | 內容摘要 | 來源/去向 | 強制性 (Fail-Closed) |
| ----- | ----- | ----- | ----- | ----- |
| **Input** | `ART-XS-PLAN` | XS 腳本、監控邏輯、策略參數 | From: **CA-TRANSLATE** | 缺 Plan 或 Hash 不符 → **BLOCK** |
| **Input** | `ART-SELECT-CANDIDATES` | S1/S2 選股清單、母池定義 | From: **CA-SELECT** | 清單不一致 → **BLOCK** |
| **Output** | `ART-WATCH-ALERTS` | 觸發的訊號、時間戳、來源追溯 | To: **SF-11 (HITL)** | 格式錯誤 → **RADAR\_ONLY** |
| **Output** | `watch_log.json` | 完整監控日誌 (含未觸發紀錄) | To: **Evidence Store** | 寫入失敗 → **BLOCK** |


---


| Gate ID | 檢查內容 (Check) | 政策 (Policy) | Fail-Closed 行為 |
| ----- | ----- | ----- | ----- |
| **GATE-SAFE-002-RADARONLY** | 驗證運行期間無任何交易副作用（API Call/File Write to Order Dir）。 | **BLOCK\_RELEASE** | 若偵測到副作用，立即終止程序並觸發警報。 |
| **GATE-WATCH-SIGNAL** | 驗證訊號格式是否符合 Schema，且 trace\_id 有效。 | **RADAR\_ONLY** | 格式錯誤的訊號被標記為 INVALID，不傳遞給下游。 |
| **GATE-BP-003-EVIDENCE** | 驗證 Evidence Triplet (Verdict/Index/Bundle) 是否完整產出。 | **BLOCK\_RELEASE** | 缺證據則視為任務失敗，不進行 Handoff。 |


---


| Topic | Target SSOT | Locator |
| ----- | ----- | ----- |
| **訊號格式 Schema** | LBP-B(ICD) | `SCHEMA-WATCH-SIGNAL` |
| **日誌格式 Schema** | LBP-B(ICD) | `SCHEMA-WATCH-LOG` |
| **操作流程細節** | Runbook & WI | `SF-10`, `OP-10` |
| **數值門檻 (Latency)** | Fitness (CR\_OPEN) | `FIT-012`, `CR-OPS-003` |


---


| Component | Responsibility | SRS Trace | Implementation Pointer |
| ----- | ----- | ----- | ----- |
| **Instruction Formatter** | 將 `xs_script` 與選股清單格式化為人類可讀的「待確認指令表」（Dry-Run Sheet），供 HITL 審核。 | SRS81-FR-EXECUTE-007 | Pipeline-C §3.3 |
| **Risk Controller (Kill-Switch)** | **時序硬規則執行器**：檢查當前時間是否違反 13:10（禁新倉）/ 13:20（強清）/ 13:25（ROD-only）規則；若違反直接阻斷輸出。 | SRS81-FR-EXECUTE-001 | SubP1 Runbook §3 |
| **HITL Gateway** | 整合 GitHub Environment API，觸發 `waiting_for_approval` 狀態，並等待 Reviewer 簽章。 | SRS81-FR-EXECUTE-003 | OMOC-MVU Ref \[GH-ENV-GATE\] |
| **Log Ingestor** | 解析 XQ 匯出的成交/委託 CSV，轉換為系統標準的 `execution_log.json`，並計算 Hash 以防竄改。 | SRS81-FR-EXECUTE-007 | Pipeline-C §3.3 |


---


| Gate ID | Check Focus (檢核點) | Fail-Closed Behavior | Trace Ref |
| ----- | ----- | ----- | ----- |
| **GATE-SAFE-003-EXECUTE\_DISABLED** | **狀態鎖定**：驗證系統是否處於 `EXECUTE_DISABLED` 狀態。除非有明確的 `GATE-HITL-001` 放行訊號，否則禁止任何 Output。 | **EXECUTE\_DISABLED**: 物理性阻斷輸出。 | SRS §2.1.4 |
| **GATE-HITL-001-ENV\_APPROVAL** | **人機授權**：驗證 GitHub Environment 是否有 `deployment_status` 為 `APPROVED`。 | **BLOCK\_RELEASE**: 無核准即視為未授權。 | SRS §3.11.2 |
| **INV-TIME-CHECK** (Internal) | **時序合規**：驗證操作時間是否違反 13:10 (禁新倉) / 13:20 (強清) 規則。 | **BLOCK\_RELEASE**: 違規操作直接攔截。 | Runbook §3 |


---


| SRS Req ID | Requirement Summary | ARCH Solution | Evidence Pointer (Hook) |
| ----- | ----- | ----- | ----- |
| **SRS81-FR-EXECUTE-001** | Default EXECUTE\_DISABLED | §4.11.4 GATE-SAFE-003 | `ART-SAFE-EXEC_DISABLED` |
| **SRS81-FR-EXECUTE-002** | XQ Sole Order Endpoint | §4.11.1 Mandate (Adapter Role) | `dry_run_instructions.md` |
| **SRS81-FR-EXECUTE-003** | GitHub Env Approval Integration | §4.11.2 HITL Gateway | `hitl_record.json` |
| **SRS81-FR-EXECUTE-007** | Execution Log Artifacts | §4.11.3 Output Contract | `execution_log.json` |
| **SRS81-FR-EXECUTE-004** | Input Contract Validation | §4.11.3 Input Validation | `verdict.json` (trace\_check) |


---


| Component | Responsibility | SRS Trace | Implementation Pointer |
| ----- | ----- | ----- | ----- |
| **Metrics Engine (Track A)** | 適配成熟量化庫（如 QuantStats/Empyrical），計算標準績效指標。 | SRS81-FR-PERFORM-001 | Pipeline-B v2 §3.3 |
| **Reliability Analyzer (Track B)** | 解析執行日誌與監控事件，計算滑價、延遲、Gate 阻斷率等工程指標。 | SRS81-FR-PERFORM-002 | ARCH v6.0 §4.15 |
| **Parity Checker** | 執行 A/B 軌對比，計算 `performance_drift`，若偏差過大觸發告警。 | SRS81-FR-PERFORM-003 | Pipeline-B v2 §3.3 |
| **Proposal Generator** | 基於規則或輕量級推理，生成 Top-3 優化提案（含 Evidence Link 與 Reproducible Command）。 | SRS81-FR-PERFORM-004 | Pipeline-B v2 §3.4 |
| **Report Builder** | 將上述產出封裝為標準化的 `ART-PERFORM-REPORT`，並生成 Evidence Triplet。 | SRS81-FR-PERFORM-005 | SRS v8.1 §3.12.3 |


---


| Gate ID | Check Focus (檢核點) | Fail-Closed Behavior | Trace Ref |
| ----- | ----- | ----- | ----- |
| **GATE-PERFORM-TCA** | **交易成本分析**：驗證滑價 (Slippage) 與交易成本是否在 Fitness 定義的容忍範圍內。 | **RADAR\_ONLY**: 若成本超標，標記策略風險等級為 HIGH，建議降級。 | SRS §3.16 |
| **GATE-BP-003-EVIDENCE** | **證據完整性**：驗證 `ART-PERFORM-REPORT` 的 Evidence Triplet 是否完整。 | **BLOCK\_RELEASE**: 缺證據即視為報告無效，禁止 UI 展示。 | Blueprint §4 |
| **GATE-PARITY-CHECK** | **一致性檢核**：驗證 Track A 與 Track B 的偏差是否超過閾值（Performance Drift）。 | **RADAR\_ONLY**: 觸發 `DRIFT_ALERT`，需人工介入確認模型失效或環境異常。 | SRS §3.12.1 |


---


| SRS Req ID | Requirement Summary | ARCH Solution | Evidence Pointer (Hook) |
| ----- | ----- | ----- | ----- |
| **SRS81-FR-PERFORM-001** | Track A \- Strategy Performance | §4.12.2 Metrics Engine | `perf_report.json` (track\_a) |
| **SRS81-FR-PERFORM-002** | Track B \- Execution Reliability | §4.12.2 Reliability Analyzer | `perf_report.json` (track\_b) |
| **SRS81-FR-PERFORM-003** | Parity Analysis | §4.12.2 Parity Checker | `perf_report.json` (parity) |
| **SRS81-FR-PERFORM-004** | Top-3 Verifiable Proposals | §4.12.2 Proposal Generator | `top3_proposals.json` |
| **SRS81-FR-PERFORM-005** | Primary Output Contract | §4.12.3 Output Contract | `ART-PERFORM-REPORT` |


---


| I/O 類型 | Artifact ID | 內容摘要 | 來源/去向 | SSOT 連結 |
| ----- | ----- | ----- | ----- | ----- |
| **Input** | `Config Snapshot` | `run_config` (含 mode, flags), `Policy Cards` | From: **CA-GOVERN** | SRS §3.13.3 |
| **Input** | `Task Context` | 任務描述、上游產物引用 | From: **User/CA-UI** | Runbook §6 |
| **Output** | `ART-COLLAB-AUDITLOG` | 完整協作證跡包：1. `agent_session_log.json` (對話)2. `agent_action_trace.json` (工具呼叫)3. `agent_decision_record.json` (關鍵決策) | To: **Evidence Store** | ICD: SCHEMA-COLLAB-LOG |
| **Output** | `ART-WTNA-LOG` | WT-NA 模式下的提示詞與回應雜湊記錄 | To: **Evidence Store** | SRS §3.13.1 |


---


| Gate ID | Check Focus (檢核點) | Fail-Closed Behavior (失效行為) | Trace Ref |
| ----- | ----- | ----- | ----- |
| **GATE-AGENT-MODE** | **模式切換合規性**：驗證 Policy 卡（Agent/Tool/Approval）是否齊全且版本正確。 | **BLOCK\_RELEASE**：禁止切換至 `AGENT_ASSIST`，強制降級回 `NON_AGENT`。 | SRS §3.13.5 |
| **GATE-COLLAB-QUALITY** | **協作完整性**：驗證 WT-NA 回貼內容的 Hash 是否與提示詞預期一致；檢查 Agent 是否嘗試執行禁止指令。 | **RADAR\_ONLY** / **BLOCK\_RELEASE**：若涉及高風險操作（如寫入 SSOT）則阻斷；否則標記品質異常。 | SRS §3.13.5 |
| **GATE-MQ-001-MERGE\_GROUP** | **合併檢核**：若協作產出為 PR，驗證其是否通過 Merge Queue 的自動化檢查。 | **BLOCK\_RELEASE**：阻斷合併。 | 15CA BP §4 |


---


| Topic | Target SSOT | Locator Anchor |
| ----- | ----- | ----- |
| **Agent Implementation** | OMOC-MVU 套件包 | `OMOCMVU-REF-AGENT-GOV` |
| **Policy Card Schema** | LBP-B (ICD) | `SCHEMA-AGENT-POLICY` |
| **WT-NA Workflow** | Runbook & WI | `OP-00 多AI/LLM協作` |
| **Permissions Matrix** | OMOC-MVU 套件包 | `OMOCMVU-REF-OC-PERM` |


---


| Component | Responsibility | SRS Trace | Implementation Pointer |
| ----- | ----- | ----- | ----- |
| **Dashboard Renderer** | (TUI) 負責讀取並渲染系統狀態、Gate 通過率、Flag 狀態。僅做資料綁定，不含運算邏輯。 | SRS81-FR-UI-001 | Five-Subsystem Plan §3.2 |
| **JobCard Launcher** | 提供互動式選單，供使用者選擇並觸發預定義的 JobCard（如 `run_pipeline_a`）。產生 `run_config_snapshot`。 | SRS81-FR-UI-005 | OMOC-MVU Package |
| **Evidence Walker** | 提供檔案樹狀視圖，允許使用者瀏覽與檢索 Evidence Store 中的 Artifacts 與 Verdicts。 | SRS81-FR-UI-003 | ARCH §9.3 |
| **HITL Interceptor** | 專責處理 SF-11/SF-12 的阻斷式彈窗（Modal）。強制要求使用者輸入 "CONFIRM" 字串或簽章後才放行。 | SRS81-FR-UI-002 | Runbook OP-11 |
| **Safety Guard (Build-time)** | (CI Component) 在 UI 建置/發布階段執行靜態掃描，確保無違規交易函數（如 `buy()`, `sell()`）。 | SRS81-FR-UI-006 | SRS §3.14.4 |


---


| Gate ID | Check Focus (檢核點) | Fail-Closed Behavior | Trace Ref |
| ----- | ----- | ----- | ----- |
| **GATE-UI-001-READONLY\_POLICY** | **唯讀政策**：靜態掃描 UI 原始碼，檢查是否包含黑名單關鍵字（如 `OrderAtPrice`, `ExecuteTrade`）。 | **BLOCK\_RELEASE**: 若發現違規函數，阻斷 UI 建置與部署。 | SRS §3.14.4 |
| **GATE-BP-001-TABLELINT** | **Schema 合規**：驗證 UI 讀取的 JSON Schema 是否與 ICD 最新版本一致。 | **BLOCK\_RELEASE**: 版本錯配即阻斷，防止渲染錯誤數據。 | 15CA BP §7 |
| **GATE-SAFE-002-RADARONLY** | **預設狀態**：驗證 UI 啟動時是否預設處於 RADAR\_ONLY 模式（無主動執行權限）。 | **EXECUTE\_DISABLED**: 若未預設安全模式，強制降級功能。 | SRS §3.14.4 |


---


| SRS Req ID | Requirement Summary | ARCH Solution | Evidence Pointer (Hook) |
| ----- | ----- | ----- | ----- |
| **SRS81-FR-UI-001** | Decision Isolation Policy | §4.14.1 架構職責 & §4.14.2 Dashboard Renderer | `policy_scan_report.json` |
| **SRS81-FR-UI-002** | No Trade Buttons | §4.14.1 Constraint & §4.14.4 GATE-UI-001 | `ui_manifest.json` |
| **SRS81-FR-UI-003** | Evidence Triplet Visualization | §4.14.2 Evidence Walker | UI Screenshot / Demo |
| **SRS81-FR-UI-004** | Governance Dashboard | §4.14.2 Dashboard Renderer (Flag/Gate view) | `ui_action_log.json` |
| **SRS81-FR-UI-005** | Single Entry Point | §4.14.2 JobCard Launcher | `run_config_snapshot.json` |
| **SRS81-FR-UI-006** | Output Contract | §4.14.3 Output Contract | `ART-UI-READONLY-BUILD` |


---


| Component | Responsibility | SRS Trace | Implementation Pointer |
| ----- | ----- | ----- | ----- |
| **Flag Controller** | 管理 `flag_registry.json`，執行 Tier-0 (Auth) / Tier-1 (Mode) / Tier-2 (Trade) 分層檢核，阻斷非法變更。 | SRS81-FR-GOV-003 | 15CA BP §6.1 |
| **Degrade Engine** | 監控系統健康度，依據 `degrade_matrix.json` 自動觸發降級（如 API 失敗 → RADAR\_ONLY）。 | SRS81-FR-GOV-004 | 15CA BP §6.2 |
| **Snapshot Recorder** | 在每次 Pipeline 啟動時生成 `run_config_snapshot.json`，固化當下所有配置，確保可重現性。 | SRS81-FR-GOV-005 | SRS v8.1 §5.1 |
| **Gate Orchestrator** | (Engine) 呼叫 GateRunner，執行具體 Check 邏輯，並依據 Gate Policy (BLOCK/RADAR) 產出最終裁決。 | SRS81-FR-GOV-006 | OMOC-MVU Package |
| **Version Locker** | 掃描所有子系統產物，生成 `version_manifest.json` (Global Hash Tree)。 | SRS81-FR-GOV-010 | Pipeline-A+B DB |


---


| Gate ID | Check Focus (檢核點) | Fail-Closed Behavior | Trace Ref |
| ----- | ----- | ----- | ----- |
| **GATE-BP-001-TABLELINT** | **表格完整性**：驗證 Flag Registry、15CA Table 等關鍵表格無截斷、缺欄或重複定義。 | **BLOCK\_RELEASE**: 表格解析失敗即阻斷發布。 | 15CA BP §7 |
| **GATE-BP-002-ANCHORREG** | **錨點有效性**：驗證所有 Route-Out 指針與 Anchor Registry 是否可解析且無死鏈。 | **BLOCK\_RELEASE**: 死鏈即阻斷。 | 審查報告 A (Crit-001) |
| **GATE-GOV-SSOT** | **SSOT 一致性**：驗證 `flag_registry.json` 與 SRS 定義的 Tier 分層是否一致。 | **BLOCK\_RELEASE**: 規則衝突即阻斷。 | SRS §3.15.6 |


---


| SRS Req ID | Requirement Summary | ARCH Solution | Evidence Pointer (Hook) |
| ----- | ----- | ----- | ----- |
| **SRS81-FR-GOV-001** | Authority Stack Enforcement | §4.15.1 Authority Arbitration | `verdict.json` (authority\_check) |
| **SRS81-FR-GOV-003** | Flag Registry Governance | §4.15.2 Flag Controller | `flag_registry.json` |
| **SRS81-FR-GOV-005** | Run Config Snapshot | §4.15.2 Snapshot Recorder | `run_config_snapshot.json` |
| **SRS81-FR-GOV-006** | Gate Orchestration | §4.15.2 Gate Orchestrator | `gate_report.json` |
| **SRS81-FR-GOV-008** | GitHub Governance Hooks | §4.15.3 GitHub Integration | `check_run` (merge\_group) |
| **SRS81-FR-GOV-010** | Global Version Manifest | §4.15.2 Version Locker | `version_manifest.json` |


---


| 分層 (Layer) | 儲存技術 (Technology) | 存放內容 (Content Responsibility) | 架構約束 (Constraints) |
| ----- | ----- | ----- | ----- |
| **Layer 1: Meta & Spec**(元資料與規格層) | **Git** | • **規格文件**：MethodCard, SpecPack, JobCard• **索引檔案**：Manifests, Index JSON• **資料指針**：DVC files (.dvc)• **程式碼**：XS Scripts, Python Code | • **單檔限制**：\< 1MB• **性質**：Human-readable, Diff-friendly• **禁止**：二進位大檔、原始數據、Log 實體 |
| **Layer 2: Pointer & Versioning**(指針與版本層) | **DVC**(Data Version Control) | • **大型資料集的版本快照**• **Pipeline 階段的輸入/輸出指針**• **資料血緣依賴關係** (dvc.yaml) | • **職責**：連接 Git Commit 與 Storage Blob• **對齊**：Git Tag 必須對齊 DVC Tag 以確保程式碼與資料版本一致 |
| **Layer 3: Entity & Blob**(實體與物件層) | **Object Storage**(S3 / MinIO / GCS) | • **原始資料**：PDF, HTML, Video• **結構化大檔**：Parquet, SQLite DB files• **證據包實體**：Evidence Bundles (.zip) | • **性質**：Immutable (WORM), Content-Addressable (CAS)• **存取**：僅透過 DVC 或 Signed URL 存取，不直接掛載為檔案系統 |


---


| Zone ID | 區域名稱 | 主要內容 | 寫入者 (Writer CA) | 讀取者 (Reader CA) | 生命週期與治理 |
| ----- | ----- | ----- | ----- | ----- | ----- |
| **DB:CORPUS** | 語料與知識區 | 教材原檔(PDF)、清洗後語料、向量索引 | CA-WRCCA-CORPUS | CA-DISTILLCA-DSL | • **Append-Only**• 必須經 SHA-256 封印• 對齊 SRS81-FR-WRC-002 |
| **DB:KNOWLEDGE** | 蒸餾知識區 | 基底偽代碼、DSL Schema、原語庫 | CA-DISTILLCA-DSL | CA-METHOD | • **Versioned**• 每次產出視為新版本 (SpecPack)• 需通過 G-SEG-L Gate |
| **DB:STRATEGY** | 策略規格區 | 方法卡 (MethodCard)、風險設定、回測報告 | CA-METHODCA-BACKTEST | CA-TACA-SELECTCA-PERFORM | • **Versioned & Locked**• 方法卡定案後不可變更 (Immutable)• 需通過 G-BT-H Gate |
| **DB:MARKET** | 市場數據區 | K 線資料 (OHLCV)、籌碼數據、基本面 | *External Feed* | CA-TACA-WATCHCA-BACKTEST | • **Time-Series**• 以 Parquet 格式分區儲存• 視為 Read-Only External Source |
| **DB:EXECUTION** | 執行與監控區 | 訊號日誌 (Watch Log)、成交紀錄、XS 腳本包 | CA-WATCHCA-EXECUTECA-TRANSLATE | CA-PERFORMCA-UI | • **Append-Only Log**• 必須包含 HITL 簽核紀錄• 需通過 G-HITL-LOG |
| **DB:GOVERNANCE** | 治理與全域區 | **RunLedger**, **ReferenceDB**, Version Manifest | CA-GOVERN | *All CAs* | • **System Critical**• 紀錄全域血緣與版本快照• **Single Source of Truth** |


---


| 異常情境 (Anomaly) | 涉及元件 | Fail-Closed 行為 (Action) | 架構依據 |
| ----- | ----- | ----- | ----- |
| **Hash Mismatch**(雜湊不符) | DVC / S3 | **BLOCK\_RELEASE**拒絕讀取該檔案，標記為 CORRUPTED，禁止下游計算。 | SRS §3.1 (WRC)SRS §4.1 (Audit) |
| **Zone Violation**(越區寫入) | CA-\* | **BLOCK\_RELEASE**例如 CA-WRC 嘗試寫入 DB:STRATEGY，必須被權限控管或 CI 檢查攔截。 | SRS §1.2 (15CA)Blueprint §3 (Tri-Plane) |
| **Missing ReferenceDB**(參考庫遺失) | CA-BACKTESTCA-EXECUTE | **BLOCK\_RELEASE**禁止執行任何依賴日曆的邏輯。 | SRS81-PIPE-DB-002 |
| **Schema Drift**(格式漂移) | Parquet / JSON | **RADAR\_ONLY** (若非關鍵欄位)**BLOCK\_RELEASE** (若關鍵欄位缺失)透過 Schema Validator 檢核。 | SRS §2.1 (Gate Policy)ICD Schema Defs |


---


| Stage | CA Component | Input Contract | Output Artifact (Artifact Registry) | Architecture Function |
| ----- | ----- | ----- | ----- | ----- |
| **Ingest** | **CA-WRC** | Whitelist Sources | `ART-CORPUS-RAW` (input\_manifest) | **Sealing**: 來源封印與雜湊計算，防止換料欺詐。 |
| **Index** | **CA-CORPUS** | `ART-CORPUS-RAW` | `ART-CORPUS-INDEX` (corpus\_snapshot) | **Indexing**: 多模態路由（Text/Table/Visual）與結構化索引。 |
| **Distill** | **CA-DISTILL** | `ART-CORPUS-INDEX` | `ART-DISTILL-BASE` (distill\_bundle) | **Extraction**: 語意蒸餾，需通過 SGF Gate (SEM³ Stage 1)。 |
| **Spec** | **CA-DSL** | `ART-DISTILL-BASE` | `ART-DSL-SPEC` (dsl\_schema) | **Normalization**: 轉化為市場中立的原語規格。 |


---


| Stage | CA Component | Input Contract | Output Artifact (Artifact Registry) | Architecture Function |
| ----- | ----- | ----- | ----- | ----- |
| **Design** | **CA-METHOD** | `ART-DSL-SPEC` | `ART-METHOD-SPEC` (MethodCard) | **Fusion**: 融合三源（DSL \+ MarketProfile \+ Skill），通過 MSC Gate。 |
| **Verify** | **CA-BACKTEST** | `ART-METHOD-SPEC` | `ART-BACKTEST-RESULT` | **Defense**: 執行雙引擎回測，建立過擬合防線（Hygiene Check）。 |
| **Feedback** | **CA-PERFORM** | `ART-BACKTEST-RESULT` | `ART-PERFORM-REPORT` | **Evaluation**: Dual-Track 評估（Track A 策略績效 / Track B 工程可靠度）。 |


---


| Stage | CA Component | Input Contract | Output Artifact (Artifact Registry) | Architecture Function |
| ----- | ----- | ----- | ----- | ----- |
| **Analysis** | **CA-TA** | `ART-METHOD-SPEC` | `ART-TA-SIGNALS` (SignalCard) | **Feature Eng**: 生成多時窗技術指標與特徵。 |
| **Filter** | **CA-SELECT** | `ART-TA-SIGNALS` | `ART-SELECT-CANDIDATES` | **Ranking**: 執行漏斗篩選（Universe $\\rightarrow$ Rank），產出候選清單。 |
| **Trans** | **CA-TRANSLATE** | `ART-SELECT-CANDIDATES` | `ART-XS-PLAN` (XSPack) | **Mapping**: 將策略轉譯為 XS 腳本，通過 TVE Gate (SEM³ Stage 3)。 |
| **Monitor** | **CA-WATCH** | `ART-XS-PLAN` | `ART-WATCH-ALERTS` | **Radar**: 僅產生監控訊號，**嚴禁** 觸發下單 API。 |


---


| 異常情境 | 觸發條件 | 架構行為 (Architectural Behavior) | 影響範圍 |
| ----- | ----- | ----- | ----- |
| **Source Corruption** | Input Manifest Hash 不匹配 | **BLOCK\_RELEASE**: 阻斷 Pipeline-A，禁止更新 Knowledge Base。 | 全域更新停止 |
| **Verification Fail** | Backtest PBO/DSR 未達標 | **RADAR\_ONLY**: Pipeline-B 產出標記為「僅供觀察」，禁止進入 Pipeline-C。 | 策略無法上線 |
| **Translation Err** | TVE Gate 驗證失敗 | **BLOCK\_RELEASE**: 阻斷 Pipeline-C，禁止產出 XS 腳本。 | 無法生成指令 |
| **Data Gap** | 歷史資料/ReferenceDB 缺失 | **FAIL-CLOSED**: 所有管線停止執行，不使用過期快照。 | 全系統停擺 |


---


| 屬性類別 | 包含內容 | 架構意圖 |
| ----- | ----- | ----- |
| **Provenance (來源)** | `upstream_run_id` (上游執行ID), `upstream_artifact_hash` (上游產物指紋), `input_snapshot_ptr` (輸入快照指針) | 確保產物不是憑空產生，必有父節點。 |
| **Context (情境)** | `run_config_snapshot_hash` (配置快照), `code_version` (Git SHA), `environment_fingerprint` (環境指紋) | 確保產出環境可被重現（Replayability）。 |
| **Transform (變換)** | `stable_id` (執行子系統), `pipeline_stage`, `transformation_logic_hash` (如 MethodCard Hash) | 定義資料經歷了何種邏輯處理。 |
| **Verdict (裁決)** | `gate_result` (PASS/FAIL), `policy_snapshot` (裁決當下的規則), `evidence_triplet_ptr` | 證明該產物已通過品質閘門檢核。 |


---


| Artifact ID | Producer (CA) | Consumer (CA) | Schema Ref (ICD) | Storage Policy | Criticality |
| ----- | ----- | ----- | ----- | ----- | ----- |
| **ART-CORPUS-RAW** | CA-WRC | CA-CORPUS | `SCHEMA-WRC-MANIFEST` | DVC \+ S3 | HIGH |
| **ART-CORPUS-INDEX** | CA-CORPUS | CA-DISTILL | `SCHEMA-FILE-RAG-CORPUS` | DVC \+ S3 | HIGH |
| **ART-DISTILL-BASE** | CA-DISTILL | CA-DSL | `SCHEMA-DISTILL-BUNDLE` | DVC \+ S3 | HIGH |
| **ART-DSL-SPEC** | CA-DSL | CA-METHOD | `SCHEMA-DSL-PRIMITIVE` | Git (LFS) | HIGH |
| **ART-METHOD-SPEC** | CA-METHOD | CA-BACKTEST | `SCHEMA-METHOD-CARD` | Git | HIGH |
| **ART-BACKTEST-RESULT** | CA-BACKTEST | CA-PERFORM | `SCHEMA-BACKTEST-RESULT` | DVC \+ S3 | HIGH |
| **ART-TA-SIGNALS** | CA-TA | CA-SELECT | `SCHEMA-TA-PACKAGE` | DVC (Parquet) | MEDIUM |
| **ART-SELECT-CANDIDATES** | CA-SELECT | CA-TRANSLATE | `SCHEMA-SELECT-TOPK` | Git/DVC | HIGH |
| **ART-XS-PLAN** | CA-TRANSLATE | CA-WATCH | `SCHEMA-XS-SCRIPT` | Git | HIGH |
| **ART-WATCH-ALERTS** | CA-WATCH | CA-EXECUTE | `SCHEMA-WATCH-SIGNAL` | DVC \+ S3 | MEDIUM |
| **ART-EXECUTE-DRYRUN** | CA-EXECUTE | CA-PERFORM | `SCHEMA-EXECUTE-LOG` | DVC \+ S3 | HIGH |
| **ART-PERFORM-REPORT** | CA-PERFORM | CA-METHOD | `SCHEMA-PERFORM-REPORT` | Git | MEDIUM |
| **ART-EVIDENCE-TRIPLET** | All CAs | CA-GOVERN | `SCHEMA-EVIDENCE-TRIPLET` | S3 (Immutable) | **CRITICAL** |


---


| Gate ID | Check Logic | Fail-Closed Behavior | Trace Ref |
| ----- | ----- | ----- | ----- |
| **GATE-BP-003-EVIDENCE** | **完整性檢核**：驗證產出的 Artifact 是否包含完整的 Triplet (Verdict/Index/Bundle) 且 Hash 一致。 | **BLOCK\_RELEASE**: 缺一不可，視為無效產出。 | SRS §2.2.1 |
| **GATE-GOV-SSOT** | **註冊檢核**：驗證產出的 Artifact ID 是否存在於 5.4.3 的註冊表中。 | **BLOCK\_RELEASE**: 禁止產生未定義的「幽靈工件」。 | SRS §3.15.6 |
| **GATE-SC-002-SUPPLYCHAIN** | **防竄改檢核**：驗證 Artifact 的 SHA-256 是否與 `version_manifest.json` 紀錄相符。 | **BLOCK\_RELEASE**: Hash 不符視為供應鏈攻擊，立即阻斷。 | OMOC-MVU |


---


| Policy State | 架構行為 (Architectural Behavior) | 適用場景 (Context) | 來源依據 |
| ----- | ----- | ----- | ----- |
| **BLOCK\_RELEASE** | **阻斷發布**。立即終止 Pipeline，禁止產物進入 Artifact Store 或下游。此狀態代表「合規紅線」或「資料損毀」。 | 程式碼合併、Schema 驗證、供應鏈掃描、關鍵數據完整性。 | SRS §1.3.115CA BP §4 |
| **RADAR\_ONLY** | **僅觀測/降級**。允許流程繼續，但強制標記 `risk_level: HIGH` 並寫入 `watch_log`。禁止觸發任何外部副作用（Side Effects）。 | 績效指標未達標、非關鍵來源缺失、預警訊號。 | SRS §1.3.1LBP-A GP-004 |
| **EXECUTE\_DISABLED** | **執行禁用**。物理性切斷 CA-EXECUTE 的指令輸出能力（Kill-Switch 邏輯生效）。僅允許系統處於「唯讀」或「分析」狀態。 | HITL 未授權、交易時段外、Kill-Switch 觸發、未經授權的 Agent 操作。 | SRS §1.3.115CA BP §7 |


---


| G5 分類 | 關注點 (Concerns) | 綁定 Policy (Default) | 對應 Gate ID (Registry) |
| ----- | ----- | ----- | ----- |
| **G5-A** | **Source Integrity**來源完整性、權威性、No-Source-No-Norm | **BLOCK\_RELEASE** | `GATE-BP-002-ANCHORREGGATE-WRC-TIER` |
| **G5-B** | **Spec/Index Integrity**規格一致性、索引完整性、ID 穩定性 | **BLOCK\_RELEASE** | `GATE-BP-001-TABLELINTGATE-BP-004-RTM` |
| **G5-C** | **Artifact Contract**Schema 合規、欄位完整性 | **BLOCK\_RELEASE** | `GATE-BP-003-EVIDENCE` |
| **G5-D** | **Safety & Fail-Closed**人機介入 (HITL)、Kill-Switch、唯讀鎖 | **EXECUTE\_DISABLED** | `GATE-HITL-001-ENV_APPROVALGATE-SAFE-003-EXECUTE_DISABLEDGATE-UI-001-READONLY_POLICY` |
| **G5-E** | \*\*LLM Quality (SEM³)\*\*語意保真 (SGF/MSC)、轉譯等價 (TVE) | **RADAR\_ONLY** (部分)**BLOCK\_RELEASE** (結構) | `GATE-DISTILL-SGFGATE-METHOD-MSCGATE-TRANSLATE-TVEGATE-CORPUS-COVERAGE` |
| **G5-F** | **Execution & Regression**E2E 迴歸、環境指紋、XQ 一致性 | **BLOCK\_RELEASE** | `GATE-MQ-001-MERGE_GROUPGATE-XQ-PARITY` |
| **G5-G** | **Governance & Trace**供應鏈安全、Patch 閉環、版本追溯 | **BLOCK\_RELEASE** | `GATE-SC-001-PINACTGATE-SC-002-SUPPLYCHAINGATE-BP-005-PATCHREG` |


---


| Gate ID | Evidence Producer (誰產資料) | Decision Authority (誰蓋章) | Evidence Artifact (憑證) |
| ----- | ----- | ----- | ----- |
| `GATE-BP-001` | CA-GOVERN (Self-check) | CA-GOVERN | `ART-GOVERN-REGISTRY` |
| `GATE-BP-003` | All CAs (Output) | CA-GOVERN | `ART-EVIDENCE-TRIPLET` |
| `GATE-SC-002` | CA-GOVERN (Scanner) | CA-GOVERN | `ART-SC-ZIZMOR` |
| `GATE-HITL-001` | CA-COLLAB / User | CA-EXECUTE \+ CA-GOVERN | `ART-HITL-APPROVAL` |
| `GATE-SAFE-002` | CA-WATCH | CA-GOVERN | `ART-SAFE-RADARONLY` |
| `GATE-UI-001` | CA-UI (Build process) | CA-GOVERN | `ART-UI-READONLY-BUILD` |


---


| Tier | 定義 (Definition) | 權限/變更 (Governance) | 架構範例 (Non-Normative) |
| ----- | ----- | ----- | ----- |
| **Tier-0** | \*\*Authorization (授權級)\*\*涉及核心安全與合規邊界，預設值必須為 `false` (Safe Default)。 | **Static Only**僅允許透過 PR 修改 SSOT，**禁止** 執行期動態變更。 | `allow_bypass_contractallow_xsat` |
| **Tier-1** | \*\*Capability (能力級)\*\*控制主要運行模式切換。 | **CR\_OPEN Managed**需有對應的 CR\_OPEN 條目或 Test Track 驗證通過才可啟用。 | `enable_agent_modeenable_t1_modeict_hot_swap_enabled` |
| **Tier-2** | \*\*Domain (交易域)\*\*業務邏輯層級的開關。 | **Dynamic / Configurable**可由 `run_config` 在啟動時注入。 | `enable_margin_tradingforce_summary_report` |


---


| 模式 (Mode) | 架構行為 (Architectural Behavior) | 機器強制點 (Enforcement Hook) |
| ----- | ----- | ----- |
| **NORMAL** | 全功能正常運作。 | N/A |
| **RADAR\_ONLY** | **僅觀測**。禁止產生任何寫入型副作用（Side-effects），如下單、發送外部 API。 | `GATE-SAFE-002-RADARONLY`執行層 Adapter 攔截 |
| **PAPER\_ONLY** | **紙上作業**。允許回測與模擬，但禁止連接實盤環境。 | `GATE-XQ-PARITY`Context Isolation |
| **EXECUTE\_DISABLED** | **執行禁用**。物理性切斷 CA-EXECUTE 的指令輸出能力（Kill-Switch 狀態）。 | `GATE-SAFE-003-EXECUTE_DISABLED`Runtime Flag Lock |
| **READ\_ONLY\_UI** | **唯讀介面**。UI 鎖定所有操作按鈕，僅允許瀏覽證據與日誌。 | `GATE-UI-001-READONLY_POLICY`Component Disable |


---


| CI Context (Event) | 觸發時機 | 執行環境 (Ref) | Required Checks 行為 | 對應 Gate | Fail-Closed 結果 |
| ----- | ----- | ----- | ----- | ----- | ----- |
| **Pull Request** | 開啟/更新 PR | `refs/pull/:id/merge` | 執行並回報 Status | `GATE-BP-*` | **BLOCK\_MERGE** (按鈕反灰) |
| **Merge Group** | 入隊 (Enqueue) | `refs/heads/gh-readonly-queue/*` | **必須執行並回報 Status** | `GATE-MQ-001` | **EVICT\_FROM\_QUEUE** (踢出隊列) |
| **Main Branch** | 合併後 (Push) | `refs/heads/main` | 產出最終 Evidence | `GATE-BP-003` | **ALERT** (已合併，僅能告警) |


---


| Governance Event | GitHub Source | Mapped Artifact ID | Schema Ref | 職責子系統 |
| ----- | ----- | ----- | ----- | ----- |
| **Merge Queue Check** | API: `check_runs` (event=merge\_group) | `ART-MQ-TRACE` | `schema:mq@v1` | CA-COLLAB |
| **Environment Approval** | API: `deployments/{id}/statuses` | `ART-HITL-APPROVAL` | `schema:hitl@v1` | CA-EXECUTE |
| **Ruleset State** | API: `repos/{owner}/{repo}/rulesets` | `ART-GOVERN-REGISTRY` | `schema:registry@v1` | CA-GOVERN |


---


| Topic | Target SSOT | Anchor / Section |
| ----- | ----- | ----- |
| **需求條文** | SRS v8.1.0 | `SRS-V810-GOV-GITHUB` |
| **介面 Schema** | ICD v5.0.1 | `SCHEMA-MQ-TRACE`, `SCHEMA-HITL-APPROVAL` |
| **Gate 定義** | 15CA BP v0.2.0 | `GATE-MQ-001`, `GATE-HITL-001` |
| **操作步驟** | Runbook v0.2.0 | `OMOCMVU-RB-MERGEQUEUE` |
| **外部佐證** | Web Evidence | `WEB-GH-MQ-001` (GitHub Docs) |


---


| 模式 (Mode) | 定義 (Definition) | 架構行為 (Architecture Behavior) | 適用場景 |
| ----- | ----- | ----- | ----- |
| **BLOCK\_RELEASE** | **阻斷發布** | CI/CD Pipeline 立即終止 (Exit Code \!= 0)。禁止產物進入 Artifact Store 或 Deployment。 | 安全掃描失敗、Schema 不符、證據缺失、測試未過。 |
| **RADAR\_ONLY** | **僅觀測模式** | 允許資料流動與計算，但 **切斷** 所有對外副作用 (Side-Effects)。CA-WATCH 僅產出 Log 與 Alert 檔案，不發送通知或觸發下單。 | 資料品質異常、非交易時段、未授權的 Agent 操作。 |
| **EXECUTE\_DISABLED** | **執行禁用** | **CA-EXECUTE** 的執行電路被邏輯熔斷。API Client 被置換為 Mock 或 Null Object，禁止送出委託單。 | Kill-Switch 觸發、HITL 未授權、權限不足。 |
| **READ\_ONLY\_UI** | **唯讀介面** | **CA-UI** 進入唯讀狀態，隱藏或禁用所有操作按鈕。僅允許檢視歷史證據與報表。 | 系統維護中、嚴重錯誤發生、審計模式。 |


---


| 欄位 (Field) | 說明 (Description) | 來源 (Source) |
| ----- | ----- | ----- |
| `rule_id` | 唯一規則 ID (e.g., DG-AUTO-01) | ICD-SCHEMA-DEGRADE-MATRIX |
| `trigger_condition` | 觸發條件描述 (Route-Out to Fitness/Monitoring) | SRS §5.1, Fitness |
| `target_scope` | 受影響的子系統或功能 (e.g., CA-EXECUTE) | 15CA BP |
| `enforced_mode` | 強制進入的模式 (BLOCK/RADAR/DISABLED) | SRS §1.3.1 |
| `recovery_condition` | 恢復正常的條件 (e.g., Manual Reset, Health Check PASS) | Runbook |
| `audit_event` | 觸發時必須寫入的 Event Log 類型 | ICD-SCHEMA-EVENT |


---


| Capability | Default State | Unlock Requirement (Gate/Evidence) | Enforcement Point |
| ----- | ----- | ----- | ----- |
| **Real Trading** | **EXECUTE\_DISABLED** | GATE-HITL-001 \+ `hitl_handoff.json` | CA-EXECUTE Adapter |
| **External Network** | **DENY** | Whitelist in `sources.yaml` \+ `network_policy` | CA-WRC / CA-COLLAB |
| **File Overwrite** | **DENY** | `staging_manifest` \+ Destructive Two-Phase Commit | CA-GOVERN / OS Layer |
| **Agent Action** | **NON\_AGENT** | GATE-AGENT-MODE \+ `agent_policy` | CA-COLLAB |


---


| 追溯項目 | 來源文件與錨點 | 說明 |
| ----- | ----- | ----- |
| **需求來源** | SRS v8.1.0 §1.2 \[ANCHOR:SRS-V810-1-2-15CA\] | 定義了 15 子系統白名單與 Stable ID 政策。 |
| **決策紀錄** | LBP-C(ADR) v2.0.1 \[ANCHOR:LBP.C.ADR.ADR-030\] | 提供了從 16 改為 15 的完整決策理由與脈絡。 |
| **藍圖規劃** | 15CA BP v0.2.0-r1 \[ANCHOR:SOMOC-15CA-BP-05-CA-MAP\] | 定義了詳細的映射表與職責邊界。 |
| **衝突裁決** | SRS v8.1.0 §7.3.2 \[ANCHOR:SRS-V810-CONFLICT-LEDGER\] | 解決了 `CL-SYS-001` (Subsystem Count) 衝突。 |


---


| 面向 | 正面影響 (Pros) | 負面影響 (Cons) | 架構緩解措施 (Mitigation) |
| ----- | ----- | ----- | ----- |
| **成本 (Cost)** | **零邊際成本**：無論迭代多少次，除固定訂閱費外不產生額外 API 費用。 | 無 | N/A |
| **安全 (Safety)** | **強制 HITL**：人工介入確保了每一步驟的輸入輸出都經過人類過濾。 | **效率瓶頸**：流程速度受限於人工操作速度。 | 透過 **CA-COLLAB** 的 Prompt Assembly 自動化減少組裝時間。 |
| **隱私 (Privacy)** | **資料隔離**：敏感資料不易通過 API 後台洩漏（Web UI 通常有 Opt-out 選項）。 | **剪貼簿風險**：人工操作可能貼錯視窗。 | **CA-GOVERN** 實作 `hash_verification` 驗證貼回內容的完整性。 |
| **架構 (Arch)** | **解耦**：系統不綁定特定 API SDK，模型切換（如 GPT 轉 Claude）成本極低。 | **上下文限制**：Web UI 通常無法像 API 那樣精確控制 Context Window。 | **CA-CORPUS** 需提供精確的 RAG 檢索片段以適應較短的 Context。 |


---


| Gate ID | 全稱 (Full Name) | 架構位置 (Location) | 驗證職責 (Responsibility) | Fail-Closed 行為 |
| ----- | ----- | ----- | ----- | ----- |
| **SGF** | **Source-Grounded Faithfulness**(來源對齊忠實度) | **Pipeline-A 出口**(CA-DISTILL → CA-DSL) | 驗證「蒸餾出的 Claims」是否 100% 存在於「原始 Corpus」中。防止 AI 腦補不存在的知識。 | **BLOCK\_RELEASE**禁止生成 SpecPack，標記為 HALLUCINATED。 |
| **MSC** | **Method-Semantics Conformance**(方法語義一致性) | **Pipeline-B 入口**(CA-METHOD 內部) | 驗證「MethodCard 的邏輯描述」是否完全符合「DSL Schema 與 ICT 模組定義」。防止策略邏輯超出系統能力邊界。 | **RADAR\_ONLY**(MVP 階段) 標記風險；**BLOCK\_RELEASE** (P2 階段)。 |
| **TVE** | **Translation-Execution Equivalence**(轉譯等價驗證) | **Pipeline-C 出口**(CA-TRANSLATE → CA-WATCH) | 驗證「XS 腳本的執行結果」是否在數學上等價於「Python 回測引擎的結果」。防止轉譯誤差。 | **BLOCK\_RELEASE**禁止產出 XSPack，絕對禁止上線執行。 |


---


| 元件 (Component) | 檔案命名規範 | 架構職責 (Responsibility) | 內容結構 (Structure Constraint) |
| ----- | ----- | ----- | ----- |
| **1\. Verdict (裁決)** | `verdict.json` | **機器可讀的最終判定**。供下游自動化工具（GateRunner/CI）快速讀取狀態，決定是否阻斷流程。 | • `overall_result`: PASS / FAIL / RADAR\_ONLY• `timestamp`: ISO8601• `bundle_hash`: SHA-256 (防篡改綁定)• `policy_snapshot_id`: 引用當時的規則版本 |
| **2\. Bundle (實體包)** | `bundle.zip` (或 `.tar.zst`) | **原始產物的實體封裝**。包含 Logs, Reports, Artifacts, Snapshots。此為稽核的「物證」。 | • **不可變性**：生成後即唯讀• **完整性**：必須包含重現該次執行所需的所有 Context• **隔離性**：存於 Object Storage，不直接進入 Git Repo (避免膨脹) |
| **3\. Index (索引)** | `evidence_index.json` | **人類可讀的內容清單**。用於快速檢索 Bundle 內容，並提供檔案級的完整性雜湊。 | • `artifacts_list`: 檔案路徑與 SHA-256 對照表• `trace_refs`: 上游依賴追溯 (Req ID, Run ID)• `context`: 執行環境指紋 (Env Fingerprint) |


---


| 異常情境 (Anomaly) | 架構判定 (Verdict) | 系統行為 (System Behavior) |
| ----- | ----- | ----- |
| **Missing Triplet**(三件套缺一) | **INVALID** | 視為該步驟未執行。下游 Gate **BLOCK\_RELEASE**，禁止引用該次產出。 |
| **Hash Mismatch**(雜湊不符) | **TAMPERED** | 視為嚴重資安警報。立即觸發 **KILL-SWITCH**，凍結相關 Pipeline，並通知 CA-GOVERN。 |
| **Unregistered Evidence**(未註冊證據) | **UNTRUSTED** | 雖然檔案存在但未在 `RunLedger` 註冊。UI 顯示為「未驗證」，禁止用於決策或回測。 |
| **Orphaned Artifact**(孤兒產物) | **UNKNOWN** | 無法追溯上游來源（Trace Refs 缺失）。**RADAR\_ONLY**，僅供除錯，不可用於生產。 |


---


| 因子類別 | 鎖定機制 (Architectural Lock) | 實作落點 (Route-Out) | 驗證要求 |
| ----- | ----- | ----- | ----- |
| **Input Data**(輸入數據) | **Immutable Snapshots**所有輸入必須透過 Data Backbone 的 `input_manifest` 指向 DVC Hash 或唯讀 S3 路徑。禁止讀取 `latest` 或動態 API。 | Data Backbone §5.1Pipeline-A+B §3.3 | Hash 必須與歷史紀錄完全一致。 |
| **Configuration**(配置參數) | **Run Config Snapshot**所有運行參數（含 Flag、Thresholds、Env Vars）必須固化為 `run_config_snapshot.json`。 | CA-GOVERN §6.2.3SRS §5.1 | 禁止讀取環境變數或本地未提交的 config 檔。 |
| **Logic / Code**(邏輯代碼) | **Version Pinning**執行當下的 Git Commit SHA、Docker Image Hash 與依賴套件版本（Lockfile）必須被記錄。 | Skills Supply ChainSC-001 Pinning | 依賴供應鏈必須可重現（Reproducible Build）。 |
| **Entropy**(隨機熵) | **Seeded Randomness**所有隨機過程（如蒙地卡羅、Agent Temperature）必須接受外部注入的 `random_seed`。 | Pipeline-B §3.3LBP-E FIT-013 | 禁止使用系統時間或硬體隨機數作為種子。 |


---


| 品質維度 (Dimension) | 定義 (Definition) | 架構檢核點 (Architectural Checkpoint) | 關聯工件 |
| ----- | ----- | ----- | ----- |
| **Context Relevance**(上下文相關性) | 檢索到的 Chunks 是否包含回答 Query 所需的資訊，且無過多雜訊。 | **Retrieval Stage** (CA-CORPUS)需驗證 `retrieval_quality_report.json`。 | `ART-CORPUS-INDEX` |
| **Groundedness**(信實度/落地性) | 生成的 Response 是否完全基於 Context，無外部幻覺 (Hallucination)。 | **Generation Stage** (CA-DISTILL)需驗證 `sgf_report.json` (Source-Grounded Faithfulness)。 | `ART-DISTILL-BASE` |
| **Answer Relevance**(答案關聯性) | 生成的 Response 是否直接回答了 Query 的意圖。 | **Evaluation Stage** (CA-METHOD)需驗證 `rag_query_test.json`。 | `ART-METHOD-SPEC` |


---


| 異常情境 (Anomaly) | 涉及元件 | 架構行為 (Architectural Behavior) | 依據 |
| ----- | ----- | ----- | ----- |
| **Index Corruption** | CA-CORPUS | **BLOCK\_RELEASE**若索引 Hash 不匹配或結構損壞，禁止提供檢索服務。 | , |
| **Low Fidelity** | CA-DISTILL | **RADAR\_ONLY**若 SGF 分數過低，產出標記為 `UNVERIFIED`，需人工介入。 | , |
| **Retrieval Failure** | CA-CORPUS | **FALLBACK\_LOCAL / BLOCK**若檢索返回空集合，依策略切換至規則引擎或阻斷流程。 |  |


---


| 欄位 | 說明 |
| ----- | ----- |
| `anchor_id` | 唯一識別碼，用於 RAG 檢索與 RTM 追溯 |
| `section_path` | 對應的章節標題路徑 |
| `type` | `STRUCTURE` (結構) \\ |
| `criticality` | `BLOCKER` (缺失即阻斷) \\ |
| `owner` | 維護該段落的責任角色（對齊 OMOC 角色邊界） |


---


| anchor\_id | section\_path | type | criticality | owner |
| ----- | ----- | ----- | ----- | ----- |
| **ARCH-V810-SEC0** | §0. Preflight & Governance | STRUCTURE | **BLOCKER** | Governance Chef |
| ARCH-V810-0-1-META | 0.1 Document Metadata | GOVERN | MAJOR | Doc Engineer |
| ARCH-V810-0-2-PREFLIGHT | 0.2 Preflight Report | GOVERN | **BLOCKER** | Quality Auditor |
| ARCH-V810-0-3-AUTHORITY | 0.3 Authority Stack | GOVERN | **BLOCKER** | Governance Chef |
| ARCH-V810-0-4-SCOPE | 0.4 Scope Lock & Route-Out | GOVERN | **BLOCKER** | Architect |
| ARCH-V810-0-5-AI-GUIDE | 0.5 AI Reader Guide | GOVERN | MAJOR | AI Ops |
| **ARCH-V810-SEC1** | §1. Architecture Overview | STRUCTURE | MAJOR | Architect |
| ARCH-V810-1-1-PURPOSE | 1.1 Purpose & Vision | DATA | MAJOR | Product Owner |
| ARCH-V810-1-2-DRIVERS | 1.2 Architectural Drivers | DATA | MAJOR | Architect |
| ARCH-V810-1-3-STAKEHOLDERS | 1.3 Stakeholders | DATA | MAJOR | Product Owner |
| ARCH-V810-1-4-NONGOALS | 1.4 Non-Goals | GOVERN | MAJOR | Architect |
| **ARCH-V810-SEC2** | §2. Architecture Framework | STRUCTURE | MAJOR | Architect |
| ARCH-V810-2-1-VP | 2.1 Viewpoint Catalog | STRUCTURE | MAJOR | Architect |
| ARCH-V810-2-2-INDEX | 2.2 View Index | STRUCTURE | MAJOR | Architect |
| ARCH-V810-2-3-VOCAB | 2.3 Vocabulary | DATA | **BLOCKER** | Domain Expert |
| **ARCH-V810-SEC3** | §3. Architecture Views | STRUCTURE | **BLOCKER** | Architect |
| ARCH-V810-3-1-CONTEXT | 3.1 V1 Context View | COMPONENT | **BLOCKER** | Architect |
| ARCH-V810-3-2-CONTAINER | 3.2 V2 Container View | COMPONENT | **BLOCKER** | Architect |
| ARCH-V810-3-3-DEPLOYMENT | 3.3 V3 Deployment View | COMPONENT | MAJOR | DevOps |
| ARCH-V810-3-4-OBSERVABILITY | 3.4 V4 Observability View | COMPONENT | MAJOR | SRE |
| ARCH-V810-3-5-SECURITY | 3.5 V5 Security & Supply Chain | COMPONENT | **BLOCKER** | Security Engineer |
| **ARCH-V810-SEC4** | §4. System Decomposition (15CA) | STRUCTURE | **BLOCKER** | Architect |
| ARCH-V810-4-0-REGISTRY | 4.0 15CA Stable ID Registry | DATA | **BLOCKER** | Governance Chef |
| ARCH-V810-4-1-WRC | 4.1 CA-WRC | COMPONENT | MAJOR | Knowledge Eng |
| ARCH-V810-4-2-CORPUS | 4.2 CA-CORPUS | COMPONENT | MAJOR | Knowledge Eng |
| ARCH-V810-4-3-DISTILL | 4.3 CA-DISTILL | COMPONENT | MAJOR | AI Ops |
| ARCH-V810-4-4-DSL | 4.4 CA-DSL | COMPONENT | MAJOR | Strategy Dev |
| ARCH-V810-4-5-METHOD | 4.5 CA-METHOD | COMPONENT | MAJOR | Strategy Dev |
| ARCH-V810-4-6-BACKTEST | 4.6 CA-BACKTEST | COMPONENT | MAJOR | Quant Dev |
| ARCH-V810-4-7-TA | 4.7 CA-TA | COMPONENT | MAJOR | Quant Dev |
| ARCH-V810-4-8-SELECT | 4.8 CA-SELECT | COMPONENT | MAJOR | Quant Dev |
| ARCH-V810-4-9-TRANSLATE | 4.9 CA-TRANSLATE | COMPONENT | **BLOCKER** | Integration Eng |
| ARCH-V810-4-10-WATCH | 4.10 CA-WATCH | COMPONENT | MAJOR | Ops Engineer |
| ARCH-V810-4-11-EXECUTE | 4.11 CA-EXECUTE | COMPONENT | **BLOCKER** | Ops Engineer |
| ARCH-V810-4-12-PERFORM | 4.12 CA-PERFORM | COMPONENT | MAJOR | Risk Analyst |
| ARCH-V810-4-13-COLLAB | 4.13 CA-COLLAB | COMPONENT | MAJOR | AI Ops |
| ARCH-V810-4-14-UI | 4.14 CA-UI | COMPONENT | MAJOR | Frontend Dev |
| ARCH-V810-4-15-GOVERN | 4.15 CA-GOVERN | COMPONENT | **BLOCKER** | Governance Chef |
| **ARCH-V810-SEC5** | §5. Unified Data Backbone | STRUCTURE | **BLOCKER** | Data Engineer |
| ARCH-V810-5-1-ZONES | 5.1 Data Zones & Storage | DATA | MAJOR | Data Engineer |
| ARCH-V810-5-2-PIPELINES | 5.2 Pipeline Integration | STRUCTURE | MAJOR | Data Engineer |
| ARCH-V810-5-3-LINEAGE | 5.3 Lineage & Traceability | GOVERN | **BLOCKER** | Auditor |
| ARCH-V810-5-4-ARTIFACTS | 5.4 Artifact Registry | DATA | **BLOCKER** | Auditor |
| **ARCH-V810-SEC6** | §6. Control Plane & Governance | STRUCTURE | **BLOCKER** | Governance Chef |
| ARCH-V810-6-1-GATE-LAYER | 6.1 Gate Layering Architecture | GOVERN | **BLOCKER** | Governance Chef |
| ARCH-V810-6-2-TRIO | 6.2 Control Plane Trio | GOVERN | **BLOCKER** | Governance Chef |
| ARCH-V810-6-3-GITHUB | 6.3 GitHub Governance Hooks | GOVERN | **BLOCKER** | DevOps |
| ARCH-V810-6-4-FAILCLOSED | 6.4 Fail-Closed Strategy | GOVERN | **BLOCKER** | Governance Chef |
| **ARCH-V810-SEC7** | §7. Key Architectural Decisions | STRUCTURE | MAJOR | Architect |
| ARCH-V810-7-1-ADR030 | 7.1 ADR-030 (15 Subsystems) | DATA | MAJOR | Architect |
| ARCH-V810-7-2-ADR029 | 7.2 ADR-029 (No-Paid-API) | DATA | **BLOCKER** | FinOps |
| ARCH-V810-7-3-ADR026 | 7.3 ADR-026 (Control Trio) | DATA | MAJOR | Architect |
| ARCH-V810-7-4-ADR009 | 7.4 ADR-009 (SEM³ Validation) | DATA | MAJOR | QA Engineer |
| **ARCH-V810-SEC8** | §8. Constraints & Quality | STRUCTURE | MAJOR | QA Engineer |
| ARCH-V810-8-1-AUDIT | 8.1 Auditability | GOVERN | **BLOCKER** | Auditor |
| ARCH-V810-8-2-REPLAY | 8.2 Replayability | GOVERN | MAJOR | QA Engineer |
| ARCH-V810-8-3-SECURITY | 8.3 Security | GOVERN | **BLOCKER** | Security Engineer |
| ARCH-V810-8-4-RAG | 8.4 RAG Quality | GOVERN | MAJOR | AI Ops |
| **ARCH-V810-SEC9** | §9. Architecture Registries | STRUCTURE | **BLOCKER** | Governance Chef |
| ARCH-V810-9-1-ANCHORS | 9.1 Anchor Registry | DATA | **BLOCKER** | Governance Chef |
| ARCH-V810-9-2-COMPONENTS | 9.2 Component Registry | DATA | MAJOR | Architect |
| ARCH-V810-9-3-GATES | 9.3 Gate Registry | DATA | **BLOCKER** | QA Engineer |
| ARCH-V810-9-4-EVIDENCE | 9.4 Evidence Contract Registry | DATA | **BLOCKER** | Auditor |
| ARCH-V810-9-5-ROUTEOUT | 9.5 Route-Out Register | DATA | MAJOR | Doc Engineer |
| **ARCH-V810-SEC10** | §10. RTM | STRUCTURE | **BLOCKER** | QA Engineer |
| ARCH-V810-10-1-SRS-COVERAGE | 10.1 SRS Coverage | DATA | **BLOCKER** | QA Engineer |
| ARCH-V810-10-2-LEGACY | 10.2 Legacy Mapping | DATA | MAJOR | Architect |
| **ARCH-V810-SEC11** | §11. Test Tracking & CR\_OPEN | STRUCTURE | MAJOR | QA Engineer |
| ARCH-V810-11-1-CROPEN | 11.1 CR\_OPEN Ledger | DATA | **BLOCKER** | Project Manager |
| ARCH-V810-11-2-TESTTRACK | 11.2 Test Tracking List | DATA | MAJOR | QA Engineer |
| **ARCH-V810-SEC12** | §12. Appendices | STRUCTURE | SUPPORT | Doc Engineer |
| ARCH-V810-12-1-WEB | 12.1 Web Evidence | DATA | SUPPORT | Researcher |
| ARCH-V810-12-2-SELFCHECK | 12.2 Self-Check Report | GOVERN | **BLOCKER** | Governance Chef |


---


| component\_id (stable\_id) | type | macro\_module | primary\_responsibility | evidence\_contract\_ref | normative\_source |
| ----- | ----- | ----- | ----- | ----- | ----- |
| **CA-WRC** | CA | Knowledge | 原始教材蒐集與封印 (No Parsing) | ART-CORPUS-RAW | SRS §3.1 \[SRS-V810-FR-WRC\] |
| **CA-CORPUS** | CA | Knowledge | 語料索引與多模態路由 | ART-CORPUS-INDEX | SRS §3.2 \[SRS-V810-FR-CORPUS\] |
| **CA-DISTILL** | CA | Knowledge | 知識蒸餾與 SGF 驗證 | ART-DISTILL-BASE | SRS §3.3 \[SRS-V810-FR-DISTILL\] |
| **CA-DSL** | CA | Spec | 原語生成與市場中立性封裝 | ART-DSL-SPEC | SRS §3.4 \[SRS-V810-FR-DSL\] |
| **CA-METHOD** | CA | Spec | 策略方法卡制定 (MSC 驗證) | ART-METHOD-SPEC | SRS §3.5 \[SRS-V810-FR-METHOD\] |
| **CA-BACKTEST** | CA | Backtest | 回測執行與過擬合防線 | ART-BACKTEST-RESULT | SRS §3.6 \[SRS-V810-FR-BACKTEST\] |
| **CA-TA** | CA | Market | 技術分析訊號生成 | ART-TA-SIGNALS | SRS §3.7 \[SRS-V810-FR-TA\] |
| **CA-SELECT** | CA | Market | 選股漏斗與排序 (NDCG) | ART-SELECT-CANDIDATES | SRS §3.8 \[SRS-V810-FR-SELECT\] |
| **CA-TRANSLATE** | CA | Ops | XS 轉譯與 TVE 等價驗證 | ART-XS-PLAN | SRS §3.9 \[SRS-V810-FR-TRANSLATE\] |
| **CA-WATCH** | CA | Ops | 監控告警 (Radar Only) | ART-WATCH-ALERTS | SRS §3.10 \[SRS-V810-FR-WATCH\] |
| **CA-EXECUTE** | CA | Ops | 執行適配與 Kill-Switch | ART-EXECUTE-DRYRUN | SRS §3.11 \[SRS-V810-FR-EXECUTE\] |
| **CA-PERFORM** | CA | Backtest | 雙軌績效分析與閉環回饋 | ART-PERFORM-REPORT | SRS §3.12 \[SRS-V810-FR-PERFORM\] |
| **CA-COLLAB** | CA | Governance | 多代理編排與雙模切換 | ART-COLLAB-AUDITLOG | SRS §3.13 \[SRS-V810-FR-COLLAB\] |
| **CA-UI** | CA | Governance | 唯讀呈現與 HITL 入口 | ART-UI-READONLY-BUILD | SRS §3.14 \[SRS-V810-FR-UI\] |
| **CA-GOVERN** | CA | Governance | 全域治理與權威裁決 | ART-GOVERN-REGISTRY | SRS §3.15 \[SRS-V810-FR-GOVERN\] |


---


| component\_id | type | bound\_subsystems | primary\_artifact | route\_out\_plan |
| ----- | ----- | ----- | ----- | ----- |
| **PIPE-A** | Pipeline | CA-WRC, CA-CORPUS, CA-DISTILL, CA-DSL | **SpecPack** | \[Pipeline-A\_組合方案 v2\] |
| **PIPE-B** | Pipeline | CA-METHOD, CA-BACKTEST, CA-PERFORM | **StrategyPack** | \[Pipeline-B 組合方案 v2\] |
| **PIPE-C** | Pipeline | CA-TA, CA-SELECT, CA-TRANSLATE, CA-WATCH | **XSPack** | \[Pipeline-C組合方案\] |
| **SYS-5PACK** | SystemPack | CA-EXECUTE, CA-GOVERN, CA-COLLAB, CA-UI | **GovPack** | \[五子系統組合方案\] |


---


| component\_id | type | purpose | storage\_strategy | evidence\_ptr |
| ----- | ----- | ----- | ----- | ----- |
| **DB-REF** | Database | ReferenceDB: 全域常數、行事曆、代碼表 | Git LFS / SQLite | refdb/calendar.parquet |
| **DB-LEDGER** | Database | RunLedger: 執行血緣、審計日誌、Lineage | Append-only Log | runledger/ledger.sqlite |
| **DB-CORPUS** | ObjectStore | 原始教材與語料索引 | DVC \+ S3 | corpus/snapshots/ |
| **DB-MARKET** | DataLake | 市場行情數據 (Parquet Lake) | DVC \+ S3 (Partitioned) | market/lake\_pointer.yaml |
| **STORE-EVID** | ArtifactStore | 證據三件套 (Verdict/Bundle/Index) | Git (Metadata) \+ S3 (Blob) | evidence/{gate\_id}/{run\_id}/ |


---


| component\_id | type | responsibility | normative\_source |
| ----- | ----- | ----- | ----- |
| **GOV-FLAG** | Registry | Flag Registry: 功能開關與 Tier 分層 | SRS §5.1 \[SRS-V810-REQ-GOV-TRIO\] |
| **GOV-DEGRADE** | Policy | Degrade Matrix: 降級規則與觸發條件 | SRS §5.1 \[SRS-V810-REQ-GOV-TRIO\] |
| **GOV-SNAPSHOT** | Artifact | Run Config Snapshot: 執行期配置快照 | SRS §5.1 \[SRS-V810-REQ-GOV-TRIO\] |
| **GOV-GATE** | Engine | GateRunner: 閘門執行與裁決邏輯 | 15CA BP §7 \[SOMOC-15CA-BP-07-GATES\] |


---


| role\_id | permission\_level | allowed\_actions | forbidden\_actions (Fail-Closed) |
| ----- | ----- | ----- | ----- |
| **ROLE-CHEF** | Orchestrator | 任務拆解、指派 Deputy、最終裁決 | 直接操作高風險 API、繞過 Gate |
| **ROLE-DEPUTY** | Coordinator | 協調 Experts、彙整證據、執行 Gate | 自行新增子代理 (Recursion)、修改 Policy |
| **ROLE-EXPERT** | Worker | 執行具體技能 (Skills)、產出 Artifacts | 呼叫其他 Expert、修改權限配置 |


---


| Gate ID | Name / Purpose | Owner CA | Trigger Event | Policy Binding | Fail-Closed Rule | Evidence Contract Ref |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| **GATE-BP-001-TABLELINT** | **Table Integrity**防止表格截斷、缺欄 | CA-GOVERN | PR / Merge Group | **BLOCK\_RELEASE** | 阻斷合併 | ART-GOVERN-REGISTRY |
| **GATE-BP-002-ANCHORREG** | **Anchor Validity**確保錨點可定位、無死鏈 | CA-GOVERN | PR / Merge Group | **BLOCK\_RELEASE** | 阻斷合併 | ART-GOVERN-REGISTRY |
| **GATE-BP-003-EVIDENCE** | **Evidence Integrity**驗證證據三件套完整性 | CA-GOVERN | PR / Merge Group | **BLOCK\_RELEASE** | 阻斷合併(無證據即無發布) | ART-EVIDENCE-TRIPLET |
| **GATE-BP-004-RTM** | **RTM Coverage**需求追溯覆蓋率檢核 | CA-GOVERN | Release | **BLOCK\_RELEASE** | 阻斷合併(未覆蓋需求) | ART-RTM-MATRIX |
| **GATE-BP-005-PATCHREG** | **Patch Integrity**驗證 Patch Register 完整性 | CA-GOVERN | PR / Merge Group | **BLOCK\_RELEASE** | 阻斷合併 | ART-PATCH-REGISTER |
| **GATE-MQ-001-MERGE\_GROUP** | **Merge Queue Check**驗證 MQ 事件觸發 | CA-COLLAB | Merge Group | **BLOCK\_RELEASE** | 阻斷隊列(防止假綠燈) | ART-MQ-TRACE |
| **GATE-SC-001-PINACT** | **Action Pinning**供應鏈 SHA Pinning | CA-GOVERN | PR / Merge Group | **BLOCK\_RELEASE** | 阻斷合併(依賴不安全) | ART-SC-PINACT |
| **GATE-SC-002-SUPPLYCHAIN** | **Security Scan**Zizmor/Scorecard 掃描 | CA-GOVERN | PR / Schedule | **BLOCK\_RELEASE** | 阻斷合併(高風險發現) | ART-SC-ZIZMOR |
| **GATE-HITL-001-ENV\_APPROVAL** | **Env Approval**人機介入核准 | CA-EXECUTE | Deployment | **EXECUTE\_DISABLED** | 禁止執行(無人授權) | ART-HITL-APPROVAL |
| **GATE-SAFE-002-RADARONLY** | **Radar Mode**確保無副作用 | CA-WATCH | Runtime / CI | **RADAR\_ONLY** | 僅記錄(禁止交易副作用) | ART-SAFE-RADARONLY |
| **GATE-SAFE-003-EXECUTE\_DISABLED** | **Execute Lock**執行層預設關閉 | CA-EXECUTE | Runtime / CI | **EXECUTE\_DISABLED** | 禁止執行(交易指令無效化) | ART-SAFE-EXEC\_DISABLED |
| **GATE-UI-001-READONLY\_POLICY** | **UI Read-Only**唯讀政策驗證 | CA-UI | UI Build | **BLOCK\_RELEASE** | 阻斷 UI 建置(含違規按鈕) | ART-UI-READONLY-BUILD |
| **GATE-DSL-PURITY** | **DSL Purity**純度檢核 (禁常數) | CA-DSL | DSL Gen | **BLOCK\_RELEASE** | 阻斷 DSL 發布 | ART-DSL-SPEC |
| **GATE-METHOD-MSC** | **MSC Check**語義一致性檢查 | CA-METHOD | Method Gen | **RADAR\_ONLY** | 標記風險(方法卡帶病) | ART-METHOD-SPEC |
| **GATE-TRANSLATE-TVE** | **TVE Check**轉譯等價性驗證 | CA-TRANSLATE | XS Gen | **BLOCK\_RELEASE** | 阻斷腳本(轉譯錯誤) | ART-XS-PLAN |
| **GATE-SELECT-NDCG** | **Ranking Quality**排序指標檢核 | CA-SELECT | Selection | **RADAR\_ONLY** | 標記品質低(但允許產出) | ART-SELECT-CANDIDATES |


---


| Topic | Target SSOT | Anchor / Locator |
| ----- | ----- | ----- |
| **Gate 需求定義** | SRS v8.1.0 | \[SRS-V810-IR-GATE-DICT\] |
| **Policy 三態定義** | SRS v8.1.0 | \[SRS-V810-GATE-POLICY\] |
| **Evidence 格式** | LBP-B(ICD) v5.0.1 | \[ICD-V501-EVIDENCE-REFS\] |
| **Gate 實作模板** | 15CA BP v0.2.0 | \[SOMOC-15CA-BP-07-GATES\] |
| **CI 設定範本** | OMOC-MVU Pack | \[OMOCMVU-REF-GH-MQ\] |


---


| Component | Suffix/Ext | Responsibility | Schema Contract (Route-Out) |
| ----- | ----- | ----- | ----- |
| **Verdict (裁決檔)** | `verdict.json` | 機器可讀的最終判定（PASS/FAIL/RADAR\_ONLY）、執行者 ID、時間戳。必須包含 Bundle 的 Hash。 | ICD: `SCHEMA-EVIDENCE-VERDICT` |
| **Index (索引檔)** | `index.json` | 人類/機器可讀的內容清單，列出 Bundle 內所有檔案路徑及其 SHA-256。必須包含 `trace_refs` 指向上游。 | ICD: `SCHEMA-EVIDENCE-INDEX` |
| **Bundle (實體包)** | `.zip` / `.tar.zst` | 原始產物實體（Log, Report, Snapshot）。 | ICD: `SCHEMA-EVIDENCE-BUNDLE` |


---


| artifact\_id | producer (CA) | consumer (CA/Gate) | primary\_content (Bundle Includes) | path\_convention (Relative to root) | validation\_gate | retention |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| **ART-CORPUS-RAW** | CA-WRC | CA-CORPUS | `input_manifest.json`, `wrc_snapshot.zip` | `evidence/wrc/{run_id}/` | `GATE-WRC-TIER` | Long-term |
| **ART-CORPUS-INDEX** | CA-CORPUS | CA-DISTILL | `corpus_snapshot.json`, `index_files/` | `evidence/corpus/{run_id}/` | `GATE-BP-003-EVIDENCE` | Long-term |
| **ART-DISTILL-BASE** | CA-DISTILL | CA-DSL | `distill_bundle.json`, `sgf_report.json` | `evidence/distill/{run_id}/` | `GATE-SC-002-SUPPLYCHAIN` | Long-term |
| **ART-DSL-SPEC** | CA-DSL | CA-METHOD | `dsl_schema.json`, `purity_scan.log` | `evidence/dsl/{run_id}/` | `GATE-DSL-PURITY` | Long-term |
| **ART-METHOD-SPEC** | CA-METHOD | CA-BACKTEST | `method_card.json`, `msc_report.json` | `evidence/method/{run_id}/` | `GATE-METHOD-MSC` | Long-term |
| **ART-BACKTEST-RESULT** | CA-BACKTEST | CA-PERFORM | `backtest_report.json`, `hygiene_report.json` | `evidence/backtest/{run_id}/` | `GATE-BACKTEST-RC5` | Long-term |
| **ART-TA-SIGNALS** | CA-TA | CA-SELECT | `ta_pack_{window}.json`, `feature_matrix.parquet` | `evidence/ta/{run_id}/` | `GATE-TA-PREDICT` | 90 Days |
| **ART-SELECT-CANDIDATES** | CA-SELECT | CA-TRANSLATE | `select_list.json`, `ndcg_score.json` | `evidence/select/{run_id}/` | `GATE-SELECT-NDCG` | 90 Days |
| **ART-XS-PLAN** | CA-TRANSLATE | CA-WATCH | `xs_script_pack.zip`, `tve_report.json` | `evidence/translate/{run_id}/` | `GATE-TRANSLATE-TVE` | 90 Days |
| **ART-WATCH-ALERTS** | CA-WATCH | CA-EXECUTE | `watch_log.json`, `alert_signals.json` | `evidence/watch/{run_id}/` | `GATE-WATCH-SIGNAL` | 90 Days |
| **ART-EXECUTE-DRYRUN** | CA-EXECUTE | CA-PERFORM | `execution_log.json`, `hitl_record.json` | `evidence/execute/{run_id}/` | `GATE-EXECUTE-HITL` | 7 Years |
| **ART-PERFORM-REPORT** | CA-PERFORM | CA-UI | `perf_report.json`, `reliability_report.json` | `evidence/perform/{run_id}/` | `GATE-PERFORM-TCA` | 7 Years |
| **ART-COLLAB-AUDITLOG** | CA-COLLAB | Auditor | `agent_session_log.json`, `decision_record.json` | `evidence/collab/{run_id}/` | `GATE-COLLAB-QUALITY` | 1 Year |
| **ART-UI-READONLY-BUILD** | CA-UI | Auditor | `ui_manifest.json`, `policy_scan_report.json` | `evidence/ui/{run_id}/` | `GATE-UI-001-READONLY` | Build-time |
| **ART-GOVERN-REGISTRY** | CA-GOVERN | All CAs | `version_manifest.json`, `flag_registry.json` | `evidence/govern/{run_id}/` | `GATE-GOVERN-VERSION` | Long-term |
| **ART-RTM-MATRIX** | CA-GOVERN | Auditor | `rtm_matrix.json`, `coverage_report.md` | `evidence/govern/{run_id}/rtm/` | `GATE-BP-004-RTM` | Long-term |
| **ART-SC-ZIZMOR** | CI (GitHub) | CA-GOVERN | `zizmor_audit.json` | `evidence/supplychain/{run_id}/` | `GATE-SC-002-SUPPLYCHAIN` | 90 Days |
| **ART-SC-PINACT** | CI (GitHub) | CA-GOVERN | `pinact_audit.json` | `evidence/supplychain/{run_id}/` | `GATE-SC-001-PINACT` | 90 Days |
| **ART-HITL-APPROVAL** | Environment | CA-EXECUTE | `approval_log.json`, `reviewer_sig.json` | `evidence/hitl/{run_id}/` | `GATE-HITL-001-ENV_APPROVAL` | 7 Years |


---


| Topic | Route-Out Target | Anchor / Locator |
| ----- | ----- | ----- |
| **證據 Schema 定義** | **Spartoi｜P1\_LBP-B(ICD)\_v5.0.1** | `SCHEMA-EVIDENCE-TRIPLET`, `ICD-V501-CONTRACT-RECORDS` |
| **證據驗收門檻** | **Spartoi｜P1\_LBP-E(Fitness)\_v3.0.1** | `FIT-001` \~ `FIT-013` (Evidence Hook), |
| **檔案落盤實作** | **Pipeline-A+B 整合資料庫方案** | `§3.4 目錄與規格` |
| **GitHub Attestation** | **Spartoi-OMOC(15 CA)重構升級藍圖** | `APPX-WEB_EVIDENCE` (GitHub Docs: Artifact attestations) |
| **RunLedger 整合** | **Spartoi｜P1\_SRS\_v8.1.0** | `SRS81-PIPE-DB-001` (RunLedger) |


---


| Route-Out ID | ARCH Topic (架構主題) | Target SSOT (目標文件) | Target Anchor (定位錨點) | Rationale (外導理由) |
| ----- | ----- | ----- | ----- | ----- |
| **RO-ICD-15CA** | 15 子系統 I/O 介面契約 | `Spartoi｜P1_LBP-B(ICD)_v5.0.1` | `[ANCHOR:ICD-V501-15-SUBSYSTEM-MATRIX]` | 架構僅定義拓樸，詳細 API Schema 由 ICD 定義。 |
| **RO-ICD-EVIDENCE** | 證據三件套 (Verdict/Index/Bundle) 格式 | `Spartoi｜P1_LBP-B(ICD)_v5.0.1` | `[ANCHOR:ICD-V501-EVIDENCE-REFS]` | 證據結構細節屬介面控制範疇。 |
| **RO-ICD-JOBCARD** | JobCard 結構與欄位定義 | `Spartoi｜P1_LBP-B(ICD)_v5.0.1` | `[ANCHOR:ICD-V501-JOBCARD-SCHEMA]` | 任務卡實作細節屬 ICD 範疇。 |
| **RO-FIT-THRESHOLDS** | 驗收門檻數值 (WinRate, Latency, etc.) | `Spartoi｜P1_LBP-E(Fitness)_v3.0.1` | `[ANCHOR:LBPE-V301-4-CATALOG]` | 架構層不寫死數值，以適應市場變化。 |
| **RO-FIT-GATES** | Gate 驗收標準與通過條件 | `Spartoi｜P1_LBP-E(Fitness)_v3.0.1` | `[ANCHOR:LBPE-V301-5-EVIDENCE]` | Gate 的具體判準邏輯屬 Fitness 定義。 |
| **RO-PIPE-A** | Pipeline-A (Knowledge) 實作流程 | `Pipeline-A_組合方案 v2` | `## 0) 封面卡` | 工具選型與步驟屬實作方案。 |
| **RO-PIPE-B** | Pipeline-B (Strategy) 實作流程 | `Pipeline-B 組合方案 v2` | `## 0) 封面卡` | 回測引擎細節屬實作方案。 |
| **RO-PIPE-C** | Pipeline-C (Execution) 實作流程 | `Pipeline-C組合方案` | `## 0) 封面卡` | 執行層工具細節屬實作方案。 |
| **RO-DB-SCHEMA** | 資料庫分區與資料表設計 | `Pipeline-A+B 整合資料庫方案` | `## 0) 封面卡` | DB Schema 細節屬實作方案。 |
| **RO-RB-OPS** | 15 CA 詳細操作步驟 | `Spartoi｜SubP1-LITE+MVP 開發 RUNBOOK & WI_v1.4.0` | `[ANCHOR:SPLMVP-S4-RUNBOOK]` | 人員操作步驟屬 Runbook 範疇。 |
| **RO-RB-T0T1** | T0/T1 雙模操作分流 | `Spartoi｜SubP1-LITE+MVP 開發 RUNBOOK & WI_v1.4.0` | `[ANCHOR:SPLMVP-T0T1-ROUTE]` | 雙模操作細節屬 Runbook 範疇。 |
| **RO-GOV-GATE-REG** | Gate Registry (完整清單) | `Spartoi-OMOC(15 CA)重構升級藍圖v0.2.0-r1` | `[ANCHOR:SOMOC-15CA-BP-07-GATES]` | Gate 的完整註冊表定義於藍圖。 |
| **RO-GOV-FLAG** | Flag Registry (旗標定義) | `Spartoi-OMOC_SRS_v8.1.0` | `[ANCHOR:SRS-V810-REQ-GOV-TRIO]` | 旗標分層定義屬 SRS 需求。 |
| **RO-SEC-SUPPLY** | 供應鏈安全掃描流程 | `OMOC-MVU 套件包` | `[ANCHOR:OMOCMVU-REF-SKILLS-SC-FLOW]` | 供應鏈工具與流程定義於套件包。 |
| **RO-SEC-HMD** | Hybrid Model Dispatch 契約 | `OMOC-MVU 套件包` | `[ANCHOR:OMOCMVU-REF-HMD-DISPATCH-LAW]` | 模型調度契約定義於套件包。 |


---


| SRS Req ID | SRS 需求摘要 (Requirement) | ARCH 對應落點 (Mechanism/Anchor) | 狀態 | 證據來源 |
| ----- | ----- | ----- | ----- | ----- |
| **CA-WRC** |  |  |  |  |
| SRS81-FR-WRC-001 | 白名單入庫 (Whitelist Ingestion) | **§4.1.2** Ingestion Agent / sources.yaml 限制 | COVERED |  |
| SRS81-FR-WRC-002 | 密碼學封印 (Cryptographic Sealing) | **§4.1.2** Sealer (Fingerprinter) | COVERED |  |
| SRS81-FR-WRC-003 | 禁止解析 (No-Parsing Constraint) | **§4.1.1** Negative Constraint (嚴禁執行解析) | COVERED |  |
| **CA-CORPUS** |  |  |  |  |
| SRS81-FR-CORPUS-001 | 語料快照 SSOT (Snapshot) | **§4.2.1** SSOT Guardianship (corpus\_snapshot) | COVERED |  |
| SRS81-FR-CORPUS-003 | 多模態路由 (Multi-Modal Routing) | **§4.2.2** Content Router / Table Parser | COVERED |  |
| SRS81-FR-CORPUS-005 | 切塊溯源 (Chunk Traceability) | **§4.2.3** Traceability Fields (doc\_id, chunk\_id) | COVERED |  |
| **CA-DISTILL** |  |  |  |  |
| SRS81-FR-DISTILL-001 | 結構化抽取 (Structured Extraction) | **§4.3.3** Distillation Engine | COVERED |  |
| SRS81-FR-DISTILL-002 | SGF 閘門 (SGF Gate) | **§4.3.4** GATE-SEG-L (SGF Validator) | COVERED |  |
| SRS81-FR-DISTILL-004 | 原子化追溯 (Atomic Traceability) | **§4.3.3** Provenance Linker | COVERED |  |
| **CA-DSL** |  |  |  |  |
| SRS81-FR-DSL-002 | 原語中立性 (Primitive Neutrality) | **§4.4.4** ADR-DSL-01 (Primitive Neutrality) | COVERED |  |
| SRS81-FR-DSL-005 | 純度閘門 (Purity Gate) | **§4.4.3** GATE-DSL-PURITY (Purity Validator) | COVERED |  |
| **CA-METHOD** |  |  |  |  |
| SRS81-FR-METHOD-003 | 三源融合 (Triple-Source Fusion) | **§4.5.3** Triple-Source Fusion Architecture | COVERED |  |
| SRS81-FR-METHOD-004 | MSC 閘門 (MSC Gate) | **§4.5.4** MSC Gate Integration (GATE-METHOD-MSC) | COVERED |  |
| SRS81-FR-METHOD-005 | 市場概況檔整合 (Market Profile) | **§4.5.3** Market Profile (環境源 \- SSOT) | COVERED |  |
| **CA-BACKTEST** |  |  |  |  |
| SRS81-FR-BT-001 | 紙上作業 (Paper-Only) | **§4.6.1** Primary Responsibility (Paper-Only) | COVERED |  |
| SRS81-FR-BT-006 | 過擬合防線 (PBO/DSR) | **§4.6.3** Overfitting Defense Module | COVERED |  |
| SRS81-FR-BT-007 | XQ 邏輯一致性 (XQ Logic Parity) | **§4.6.3** Engine Adapter (XQ Parity) | COVERED |  |
| **CA-TA** |  |  |  |  |
| SRS81-FR-TA-001 | 特徵生成 (Feature Gen) | **§3.2.4** Pipeline C: CA-TA Feature Eng | COVERED |  |
| SRS81-FR-TA-003 | T0/T1 雙模支援 | **§4.8.2** Dual-Mode Routing (T0/T1) (架構上由 Select 承接訊號分流) | COVERED |  |
| **CA-SELECT** |  |  |  |  |
| SRS81-FR-SELECT-001 | 漏斗篩選 (Funnel Filtering) | **§4.8.2** Funnel Architecture | COVERED |  |
| SRS81-FR-SELECT-002 | 258 母池約束 (258 Pool) | **§4.8.2** Universe Layer (258 母池) | COVERED |  |
| **CA-TRANSLATE** |  |  |  |  |
| SRS81-FR-TRANSLATE-002 | 轉譯等價性 (TVE) | **§4.9.4** GATE-TRANSLATE-TVE | COVERED |  |
| SRS81-FR-TRANSLATE-004 | 禁止自動下單 (No-Auto-Order) | **§4.9.1** Constraint: 禁止自動下單 | COVERED |  |
| **CA-WATCH** |  |  |  |  |
| SRS81-FR-WATCH-002 | 雷達模式約束 (Radar-Only) | **§4.10.4** INV-WATCH-001: Strict Radar-Only | COVERED |  |
| **CA-EXECUTE** |  |  |  |  |
| SRS81-FR-EXECUTE-001 | 預設執行禁用 (Default Disabled) | **§4.11.1** Execution Disabled Default | COVERED |  |
| SRS81-FR-EXECUTE-003 | 環境審核 (Env Approval) | **§4.11.2** HITL Gateway (GitHub Env) | COVERED |  |
| **CA-PERFORM** |  |  |  |  |
| SRS81-FR-PERFORM-001 | 雙軌評估 (Dual-Track) | **§4.12.1** Track A / Track B Evaluation | COVERED |  |
| **CA-COLLAB** |  |  |  |  |
| SRS81-FR-COLLAB-001 | 多代理編排 (Orchestration) | **§4.13.2** Orchestration Engine (Chef/Deputy) | COVERED |  |
| SRS81-FR-COLLAB-002 | WT-NA 模式 (WebTools No-API) | **§4.13.1** WT-NA 協作職責 | COVERED |  |
| **CA-UI** |  |  |  |  |
| SRS81-FR-UI-001 | 決策隔離 (Decision Isolation) | **§4.14.1** Read-Only Presentation | COVERED |  |
| SRS81-FR-UI-002 | 禁止交易按鈕 (No Trade Button) | **§4.14.1** Constraint: 嚴禁包含直接下單按鈕 | COVERED |  |
| **CA-GOVERN** |  |  |  |  |
| SRS81-FR-GOV-001 | 權威仲裁 (Authority Arbitration) | **§4.15.1** Authority Arbitration | COVERED |  |


---


| SRS Req ID | SRS 需求摘要 | ARCH 對應落點 | 狀態 | 證據來源 |
| ----- | ----- | ----- | ----- | ----- |
| **Gate & Policy** |  |  |  |  |
| SRS8-IR-GATE-001 | Gate 雙層架構 (Policy/Check) | **§6.1** Gate Layering Architecture | COVERED |  |
| SRS8-IR-GATE-003 | Gate Dictionary (Gate 清單) | **§9.3** Gate Registry (Master Table) | COVERED |  |
| **Control Trio** |  |  |  |  |
| SRS-IR-CTRL-001 | Flag Registry 介面 | **§6.2.1** Flag Registry Architecture | COVERED |  |
| SRS-IR-CTRL-002 | Degrade Matrix 介面 | **§6.2.2** Degrade Matrix Architecture | COVERED |  |
| SRS-IR-CTRL-003 | Run Config Snapshot 介面 | **§6.2.3** Run Config Snapshot Architecture | COVERED |  |
| **Evidence** |  |  |  |  |
| SRS81-GOV-EVID-001 | 證據三件套 (Evidence Triplet) | **§8.1.1** Evidence Triplet Architecture | COVERED |  |
| SRS81-GOV-EVID-004 | 證據註冊表 (Evidence Registry) | **§9.4** Evidence Contract Registry | COVERED |  |
| **Pipeline** |  |  |  |  |
| SRS81-PIPE-DB-001 | 運行台帳 (RunLedger) | **§5.3.3** RunLedger Architecture | COVERED |  |
| SRS81-PIPE-LINK-001 | 跨管線血緣 (Lineage) | **§5.3.4** Traceability Chain | COVERED |  |
| **GitHub** |  |  |  |  |
| SRS8-GOV-GH-001 | Merge Queue 整合 | **§6.3.1** Merge Queue Architecture | COVERED |  |
| SRS8-GOV-GH-002 | Environment Approval | **§6.3.2** Environment Gating Architecture | COVERED |  |
| **Security** |  |  |  |  |
| SRS8-GOV-GH-001 | 供應鏈安全 (Supply Chain) | **§3.5.1** Supply Chain Hardening | COVERED |  |
| **RAG** |  |  |  |  |
| SRS8-NFR-RAG-001 | RAG 三元組 (RAG-Triad) | **§8.4.1** RAG-Triad Framework | COVERED |  |


---


| Legacy Anchor (v6.0.0-r5) | Legacy Section Name | New Anchor (v8.1.0)- | Transition Type | Verification / Rationale |
| ----- | ----- | ----- | ----- | ----- |
| `[ANCHOR:ARCH-CONTEXT-VIEW]` | V1 Context View | `[ANCHOR:ARCH-V810-3-1-CONTEXT]` | **MAPPED** | 三平面治理邊界（Control/Execution/Peripheral）定義一致。 |
| `[ANCHOR:ARCH-CONTAINER-VIEW]` | V2 Container View | `[ANCHOR:ARCH-V810-3-2-CONTAINER]` | **MAPPED** | 15 CA \+ Data Backbone 拓樸結構保留。 |
| `[ANCHOR:ARCH-DEPLOYMENT-VIEW]` | V3 Deployment View | `[ANCHOR:ARCH-V810-3-3-DEPLOYMENT]` | **MAPPED** | GitHub Control Plane \+ Local Runtime 部署架構保留。 |
| `[ANCHOR:ARCH-OBSERVABILITY]` | Observability | `[ANCHOR:ARCH-V810-3-4-OBSERVABILITY]` | **MAPPED** | 三通道（Logs/Events/Metrics）架構保留。 |
| `[ANCHOR:ARCH-SUBSYSTEM-OVERVIEW]` | 15 Subsystems | `[ANCHOR:ARCH-V810-SEC4]` | **MAPPED** | 15 CA 白名單與職責邊界完全對齊，無新增第 16 個。 |


---


| Legacy Anchor (v6.0.0-r5) | Legacy Component | New Anchor (v8.1.0) | Transition Type | Verification / Rationale |
| ----- | ----- | ----- | ----- | ----- |
| `[ANCHOR:ARCH-CA-WRC]` | CA-WRC | `[ANCHOR:ARCH-V810-4-1-WRC]` | **MAPPED** | 封印架構與白名單職責對齊。 |
| `[ANCHOR:ARCH-CA-CORPUS]` | CA-CORPUS | `[ANCHOR:ARCH-V810-4-2-CORPUS]` | **MAPPED** | 索引與多模態路由職責對齊。 |
| `[ANCHOR:ARCH-CA-DISTILL]` | CA-DISTILL | `[ANCHOR:ARCH-V810-4-3-DISTILL]` | **MAPPED** | SEM³ SGF 驗證架構對齊。 |
| `[ANCHOR:ARCH-CA-DSL]` | CA-DSL | `[ANCHOR:ARCH-V810-4-4-DSL]` | **MAPPED** | 原語中立性與 VPC 架構對齊。 |
| `[ANCHOR:ARCH-CA-METHOD]` | CA-METHOD | `[ANCHOR:ARCH-V810-4-5-METHOD]` | **MAPPED** | 三源融合與 MSC 架構對齊。 |
| `[ANCHOR:ARCH-CA-BACKTEST]` | CA-BACKTEST | `[ANCHOR:ARCH-V810-4-6-BACKTEST]` | **MAPPED** | 過擬合防線架構對齊。 |
| `[ANCHOR:ARCH-CA-TA]` | CA-TA | `[ANCHOR:ARCH-V810-4-7-TA]` | **MAPPED** | 多時窗特徵架構對齊。 |
| `[ANCHOR:ARCH-CA-SELECT]` | CA-SELECT | `[ANCHOR:ARCH-V810-4-8-SELECT]` | **MAPPED** | 漏斗篩選與 NDCG 架構對齊。 |
| `[ANCHOR:ARCH-CA-TRANSLATE]` | CA-TRANSLATE | `[ANCHOR:ARCH-V810-4-9-TRANSLATE]` | **MAPPED** | TVE 等價驗證架構對齊。 |
| `[ANCHOR:ARCH-CA-WATCH]` | CA-WATCH | `[ANCHOR:ARCH-V810-4-10-WATCH]` | **MAPPED** | Radar-Only 架構對齊。 |
| `[ANCHOR:ARCH-CA-EXECUTE]` | CA-EXECUTE | `[ANCHOR:ARCH-V810-4-11-EXECUTE]` | **MAPPED** | HITL 與 Kill-Switch 架構對齊。 |
| `[ANCHOR:ARCH-CA-PERFORM]` | CA-PERFORM | `[ANCHOR:ARCH-V810-4-12-PERFORM]` | **MAPPED** | Dual-Track 評估架構對齊。 |
| `[ANCHOR:ARCH-CA-COLLAB]` | CA-COLLAB | `[ANCHOR:ARCH-V810-4-13-COLLAB]` | **MAPPED** | 多代理編排與 Agent 雙模架構對齊。 |
| `[ANCHOR:ARCH-CA-UI]` | CA-UI | `[ANCHOR:ARCH-V810-4-14-UI]` | **MAPPED** | 決策隔離與唯讀架構對齊。 |
| `[ANCHOR:ARCH-CA-GOVERN]` | CA-GOVERN | `[ANCHOR:ARCH-V810-4-15-GOVERN]` | **MAPPED** | 控制面三件套與 Gate 執行架構對齊。 |
| `[ANCHOR:ARCH-FIREWALL-SUNSET]` | CA-FIREWALL | \- | **DEPRECATED** | 已於 v6.0.0 刪除，功能併入 CA-GOVERN (ADR-030)。 |


---


| Legacy Anchor (v6.0.0-r5) | Legacy Mechanism | New Anchor (v8.1.0)- | Transition Type | Verification / Rationale |
| ----- | ----- | ----- | ----- | ----- |
| `[ANCHOR:ARCH-GATE-LAYER]` | Gate Layering | `[ANCHOR:ARCH-V810-6-1-GATE-LAYER]` | **MAPPED** | Policy (裁決) vs Check (檢核) 分層架構保留。 |
| `[ANCHOR:ARCH-FLAG-TIERING]` | Flag Tiering | `[ANCHOR:ARCH-V810-6-2-TRIO]` | **MIGRATED** | 整合至 Control Plane Trio (Flag/Degrade/Snapshot)。 |
| `[ANCHOR:ARCH-RUN-CONFIG-SNAPSHOT]` | Config Snapshot | `[ANCHOR:ARCH-V810-6-2-TRIO]` | **MIGRATED** | 整合至 Control Plane Trio。 |
| `[ANCHOR:ARCH-DEGRADE-MATRIX]` | Degrade Matrix | `[ANCHOR:ARCH-V810-6-2-TRIO]` | **MIGRATED** | 整合至 Control Plane Trio。 |
| `[ANCHOR:ARCH-SEM3-COMPLETE]` | SEM³ Framework | `[ANCHOR:ARCH-V810-7-4-ADR009]` | **MAPPED** | 三階驗證 (SGF/MSC/TVE) 作為關鍵架構決策保留。 |
| `[ANCHOR:ARCH-ICT-HOTSWAP]` | ICT Hot-Swap | `[ANCHOR:SRS-V810-FR-METHOD-ICT]` | **MAPPED** | 遷移至 SRS 需求層 §3.5.5，架構層由 15CA BP 支撐。 |
| `[ANCHOR:ARCH-AGENT-MODE]` | Agent Dual Mode | `[ANCHOR:SRS-V810-FR-COLLAB-DUALMODE]` | **MAPPED** | 遷移至 SRS 需求層 §3.13.2，架構層由 CA-COLLAB 支撐。 |
| `[ANCHOR:ARCH-T0-T1-MODE]` | T0/T1 Dual Mode | `[ANCHOR:LBPA-SIR-V60-T0-MODE]` | **MIGRATED** | 轉移至 LBP-A(SIR) 進行詳細情境互動定義。 |
| `[ANCHOR:ARCH-SF-PRIMARY-KEY]` | SF Primary Key | `[ANCHOR:SFHB-V2-04-SF-KEYING]` | **MIGRATED** | 主鍵定義權威移交至 SFHB v2.1.0。 |


---


| Audit ID | Audit Issue | Fix Location in v8.1.0 | Status | Verdict |
| ----- | ----- | ----- | ----- | ----- |
| **A:CRIT-001** | Anchor Registry 缺失 | `[ANCHOR:ARCH-V810-9-1-ANCHORS]` | **FIXED** | §9.1 已建立完整錨點註冊表。 |
| **A:CRIT-002** | RTM 缺失 | `[ANCHOR:ARCH-V810-SEC10]` | **FIXED** | §10 已建立完整需求追溯矩陣。 |
| **A:CRIT-003** | Patch Register 缺失 | `[ANCHOR:ARCH-V810-12-2-SELFCHECK]` | **FIXED** | 已整合至 Self-Check 與 Changelog 機制。 |
| **A:CRIT-008** | Evidence Contract 不全 | `[ANCHOR:ARCH-V810-9-4-EVIDENCE]` | **FIXED** | §9.4 已建立證據契約註冊表。 |
| **A:MAJ-011** | Preflight Locator 缺失 | `[ANCHOR:ARCH-V810-0-2-PREFLIGHT]` | **FIXED** | §0.2 已建立含 Locator Proof 的檢查報告。 |
| **A:MAJ-013** | Merge Queue 映射缺失 | `[ANCHOR:ARCH-V810-6-3-GITHUB]` | **FIXED** | §6.3 已整合 GitHub Governance Integration。 |


---


| cr\_id | source\_doc | gap\_description | temp\_closed\_plan (ARCH-only) | default\_fail\_closed | test\_id |
| ----- | ----- | ----- | ----- | ----- | ----- |
| **CR-SRS-TRACE-001** | SRS v8.1.0 | 無法取得條文級錨點定位，導致 RTM 無法逐條精確映射。 | 先以「覆蓋骨架」落地，待 SRS 補齊 Anchors 後進行精確綁定。 | **BLOCK\_RELEASE**(不宣稱合規；高風險能力預設關閉) | TEST-TRACE-001 |
| **CR-ICD-IO-001** | ICD v5.0.1 | 介面契約（Schema/API）無精確錨點定位。 | ARCH 僅定義掛點與路由，所有 I/O Schema 以 ICD 為準。 | **BLOCK\_RELEASE**(未能證明契約一致前，禁止跨 CA 自動互操作) | TEST-ICD-001 |
| **CR-FITNESS-TH-001** | Fitness v3.0.1 | 驗收門檻數值（Thresholds）不可引用或不可定位。 | ARCH 僅引用「門檻存在性」，具體數值 Route-Out。 | **RADAR\_ONLY**(未達門檻一律降級到紙上模擬或 HITL) | TEST-FIT-001 |
| **CR-PIPE-DETAIL-001** | Pipeline Plans | A/B/C 管線方案與 DB 落點無內文錨點定位。 | 先用 Data Backbone 分區與 Lineage 骨架承接。 | **RADAR\_ONLY**(無證據證明資料落點正確前，不允許管線升級到高風險模式) | TEST-PIPE-001 |
| **CR-EXEC-INVAR-001** | SRS / Blueprint | CA-WATCH (Radar-only)、CA-EXECUTE (HITL) 等高風險不變量無定位。 | 以 Fail-Closed 強制：無 HITL/無 Gate/無 Evidence 即禁止下單。 | **EXECUTE\_DISABLED**(禁止實盤能力，僅允許模擬) | TEST-EXEC-001 |
| **CR-AGENT-MODE-001** | SRS / LBP-A | Agent 雙模（NON\_AGENT / AGENT\_ASSIST）切換邏輯缺條文定位。 | 預設鎖定為 NON\_AGENT，切換需人工介入與 Log 留存。 | **RADAR\_ONLY**(Agent 模式下僅能提案，不能執行) | TEST-AGENT-001 |
| **CR-T0T1-SPLIT-001** | SRS / LBP-A | T0/T1 雙軌分流的具體判斷邏輯與資料隔離缺定位。 | 強制資料目錄隔離，未標記 T1 者一律視為 T0 且當日結算。 | **BLOCK\_RELEASE**(混用或標記不清即阻斷交易) | TEST-T0T1-001 |


---


| Test ID | Related CR/Patch | Purpose (測試意圖) | Inputs (輸入) | Verification Points (驗證點) | Pass/Fail Criteria (判準) | Fail-Closed Action |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| **TEST-LOCATOR-001** | **A:CRIT-001**ISS-G-001 | **SSOT 定位證明**驗證所有 Normative 引用皆具備有效的文檔指紋與錨點。 | `DOC_INVENTORY` (15CA BP)`Stable Anchor Registry` | 掃描所有 `[SRC:...]` 與 `evidence_ptr`，確認目標錨點存在且 Hash 匹配。 | **PASS**: 0 Dead Links**FAIL**: 任意錨點失效 | **BLOCK\_RELEASE**(文檔視為不可信) |
| **TEST-TRACE-001** | **A:CRIT-002**CR-SRS-TRACE-001 | **SRS 追溯完整性**驗證 SRS v8.1.0 條文與 ARCH 元件/Gate 的雙向連結。 | `SRS v8.1.0RTM_MATRIX` (ARCH §10) | 檢查 SRS 的 MUST 條款是否皆有對應的 ARCH 落點與 Gate Hook。 | **PASS**: 100% Coverage (Skeleton)**FAIL**: 有 SRS 條文懸空 | **BLOCK\_RELEASE**(需求未落地) |
| **TEST-PLANE-001** | **A:ISS-D-001**BP-TRIPLANE | **三平面互斥驗證**確保 Control/Execution/Peripheral 職責未越界。 | `3-Plane Responsibility TableComponent Registry` | 檢查 Execution Plane 元件是否持有 Control Plane 的裁決權（如修改 Policy）。 | **PASS**: 無越權行為**FAIL**: 發現越權 | **BLOCK\_RELEASE**(架構崩壞風險) |
| **TEST-ICD-001** | **A:ISS-C-002**CR-ICD-IO-001 | **介面契約一致性**驗證子系統間交互符合 ICD 定義的 I/O Schema。 | `ICD v5.0.1Interface Boundary Inventory` | 掃描代碼或 Config，確認 CA 間呼叫是否引用了 ICD 定義的 Schema ID。 | **PASS**: 100% Schema 引用**FAIL**: 使用未定義資料結構 | **BLOCK\_RELEASE**(禁止自動互操作) |
| **TEST-FIT-001** | **A:CR-FITNESS**CR-FITNESS-TH-001 | **驗收門檻掛點**驗證 Fitness Function 是否已掛載至對應的 Gate。 | `Fitness v3.0.1Gate Registry` | 確認每個 Fitness Metric 都有對應的 Gate Check 負責執行。 | **PASS**: 門檻皆有守門員**FAIL**: 門檻無人執行 | **RADAR\_ONLY**(降級為僅觀測) |


---


| Test ID | Related CR/Patch | Purpose (測試意圖) | Inputs (輸入) | Verification Points (驗證點) | Pass/Fail Criteria (判準) | Fail-Closed Action |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| **TT-GH-001** | **BP-CR-OPEN**A:MAJ-013 | **Merge Queue 機制**驗證 GitHub Merge Queue 是否正確觸發 `merge_group` 事件。 | `.github/workflows/*.yml`GitHub Repo Settings | 模擬 PR 入隊，檢查 CI 是否觸發 `merge_group` 且執行 Required Checks。 | **PASS**: Check Run 產生且通過**FAIL**: 無觸發或 Check Name 不符 | **BLOCK\_RELEASE**(阻斷合併隊列) |
| **TT-OC-001** | **BP-CR-OPEN**ISS-F-002 | **OpenCode 權限優先序**驗證 Permission 設定的 `last match wins` 行為。 | `agent.yamlOpenCode Docs` | 建立衝突權限規則，執行 `opencode_doctor.sh` 驗證生效邏輯。 | **PASS**: 行為符合預期**FAIL**: 權限洩漏或拒絕 | **EXECUTE\_DISABLED**(Agent 啟動失敗) |
| **TT-MCP-001** | **BP-CR-OPEN**ISS-F-001 | **MCP 安全護欄**驗證 MCP Server 是否受 Allowlist 與 Sandbox 管控。 | `mcp_config.jsonPeripheral Contract` | 嘗試啟動未列入白名單的 MCP 工具，或嘗試突破 Sandbox 路徑。 | **PASS**: 啟動被拒/存取被擋**FAIL**: 成功執行違規操作 | **RADAR\_ONLY**(禁用 MCP 功能) |
| **TT-OWASP-001** | **BP-CR-OPEN**A:MAJ-014 | \*\*供應鏈安全 (LLM05)\*\*驗證依賴項是否已 Pin 至具體 Hash。 | `action.ymlrequirements.txt` | 執行 `pinact` 或類似掃描，檢查是否存在浮動版本標籤。 | **PASS**: 100% Pinned**FAIL**: 存在 @v1 或 @latest | **BLOCK\_RELEASE**(依賴不安全) |
| **TT-OWASP-002** | **BP-CR-OPEN**A:MAJ-015 | \*\*過度代理防護 (LLM08)\*\*驗證高風險操作是否強制觸發 HITL。 | `CA-EXECUTE PolicyGate Registry` | 模擬觸發下單或部署指令，檢查是否進入 `Waiting for approval` 狀態。 | **PASS**: 觸發 HITL 阻斷**FAIL**: 自動執行成功 | **EXECUTE\_DISABLED**(禁止下單能力) |


---


| Test ID | Related CR/Patch | Purpose (測試意圖) | Inputs (輸入) | Verification Points (驗證點) | Pass/Fail Criteria (判準) | Fail-Closed Action |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| **TEST-PIPE-001** | **CR-PIPE-DETAIL**A:CRIT-004 | **Data Backbone 落點**驗證 Pipeline 產物是否落入正確的 DVC/S3 分區。 | `Pipeline PlansDB Schema` | 執行 Pipeline Dry-Run，檢查產物路徑與 Lineage 記錄。 | **PASS**: 路徑符合規範且 Lineage 連貫**FAIL**: 產物散落或斷鏈 | **BLOCK\_RELEASE**(資料治理失敗) |
| **TEST-EXEC-001** | **CR-EXEC-INVAR**A:CRIT-006 | **高風險不變量**驗證 CA-EXECUTE 預設禁用與 CA-WATCH 僅觀測屬性。 | `Runtime ConfigGateRunner` | 檢查系統啟動時 `EXECUTE_DISABLED` 是否為 True，`RADAR_ONLY` 是否生效。 | **PASS**: 預設安全狀態正確**FAIL**: 啟動即具備危險權限 | **EXECUTE\_DISABLED**(強制停機) |
| **TT-001** | **15CA-BP Patch** | **Check Name 一致性**驗證 Repo Settings 與 Gate Registry 定義一致。 | `CheckMapGitHub Ruleset` | 比對 `.github/workflows` 定義的 Job Name 與 Repo Ruleset 的 Required Checks。 | **PASS**: 完全匹配**FAIL**: 名稱漂移 | **BLOCK\_RELEASE**(CI 護欄失效) |
| **TT-003** | **15CA-BP Patch** | **命名凍結測試**驗證 Stable ID 未被更動，Display Name 變更受控。 | `CA_REGISTRYCodebase Scan` | 掃描代碼庫，確保無 `CA-*` ID 的刪改；Display Name 變更需有對應 Patch。 | **PASS**: ID 恆定**FAIL**: ID 遺失或更名 | **BLOCK\_RELEASE**(架構識別碼破壞) |
| **TT-006** | **15CA-BP Patch** | **UI 唯讀政策**驗證 CA-UI 不包含直接交易邏輯或按鈕。 | `UI Source CodeRouter Config` | 靜態掃描 UI 代碼，確認無寫入型 API 呼叫或下單函數。 | **PASS**: 0 寫入操作**FAIL**: 發現下單邏輯 | **BLOCK\_RELEASE**(UI 越權) |


---


| REF\_ID | Source Provider | Subject / Title | Accessed (Snapshot) | Supported Architecture Section | Rationale / Support Role | Non-Normative Check |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| **WEB-GH-MQ** | GitHub Docs | **Managing a merge queue** | 2026-02-11 | §6.3 GitHub Governance Integration | 佐證 `merge_group` 事件是啟用 Merge Queue 的必要前置條件，支持 **GATE-MQ-001** 的設計依據。 | **TRUE** (僅佐證平台行為) |
| **WEB-GH-ENV** | GitHub Docs | **Using environments for deployment** | 2026-02-11 | §6.3 GitHub Governance Integration | 佐證 Environment Protection Rules (Required Reviewers) 可作為 **HITL (GATE-HITL-001)** 的強制執行機制。 | **TRUE** (僅佐證平台能力) |
| **WEB-GH-ATTEST** | GitHub Docs | **Artifact attestations** | 2026-02-11 | §3.5 V5 Security View§9.4 Evidence Contract | 佐證使用 Attestations 建立不可篡改的建置來源證明 (Provenance) 是可行的供應鏈安全實作。 | **TRUE** (僅佐證工具鏈候選) |
| **WEB-GH-SEC** | GitHub Docs | **Security hardening for GitHub Actions** | 2026-02-11 | §3.5 V5 Security View | 支持 **GATE-SC-001** (Pinning) 與 **GATE-SC-002** (Zizmor) 的安全硬化策略，確認 SHA-1 Pinning 為最佳實務。 | **TRUE** (僅佐證最佳實務) |
| **WEB-OC-PERM** | OpenCode Docs | **Configuration: Permissions** | 2026-02-06 | §6.2 Control Plane Trio | 佐證 OpenCode 設定檔鍵名為 `permission` (非 permissions) 且具優先順序，支持 **ARCH-XDOC-FLAG-GATE** 的一致性檢查。 | **TRUE** (僅佐證外部規格) |
| **WEB-MCP-SPEC** | MCP | **Model Context Protocol Specification** | 2026-02-06 | §3.1 Context View (Peripheral) | 定義 MCP Server/Client 通訊標準與安全建議，支持 **Peripheral Plane** 的 Default Deny 與 Sandbox 策略。 | **TRUE** (僅佐證協議標準) |
| **WEB-OWASP-05** | OWASP | **LLM05: Supply Chain Vulnerabilities** | 2026-02-06 | §8.3 Security | 定義 LLM 供應鏈風險，支持本架構對 **CA-DISTILL** 與 **Skills Supply Chain** 的嚴格管控設計。 | **TRUE** (僅佐證威脅模型) |
| **WEB-OWASP-08** | OWASP | **LLM08: Excessive Agency** | 2026-02-06 | §3.1 Context View (Execution) | 定義過度代理風險，支持本架構對 **Agent Roles** (Chef/Deputy/Expert) 邊界與 **Anti-Recursion** 的強制規定。 | **TRUE** (僅佐證威脅模型) |
| **WEB-RAG-TRIAD** | TruLens / arXiv | **RAG Triad (Context, Groundedness, Answer)** | 2026-02-06 | §8.4 RAG Quality | 定義 RAG 品質的三個核心維度，支持 **CA-CORPUS** 與 **CA-DISTILL** 的 **Evidence Triplet** 欄位設計。 | **TRUE** (僅佐證評估框架) |
| **WEB-DIATAXIS** | Diátaxis.fr | **The Diátaxis Framework** | 2026-02-06 | §0.5 AI Reader Guide | 佐證文件結構應分為 Tutorial, How-To, Reference, Explanation，支持本架構文檔的 **Route-Out** 策略。 | **TRUE** (僅佐證文件結構) |
| **WEB-NDCG** | Wikipedia | **Discounted cumulative gain** | 2026-02-11 | §4.8 CA-SELECT | 定義排名品質指標 NDCG 的計算邏輯，支持 **GATE-SELECT-NDCG** 的設計合理性。 | **TRUE** (僅佐證演算法定義) |
| **WEB-TWSE-HR** | TWSE | **Trading Mechanics** | 2026-02-11 | §8.7 Key Architectural Decisions | 佐證台股 T0 交易時間窗 (09:00-13:30) 與收盤集合競價規則，支持 **CA-EXECUTE** 的 **Kill-Switch** 時序設計。 | **TRUE** (僅佐證市場規則) |


---


| Rule ID | 規則描述 | 驗收標準 (Criteria) | 結果 (Verdict) | 證據/來源 |
| ----- | ----- | ----- | ----- | ----- |
| **HR-01** | **No-Source-No-Norm** | 所有規範性（Normative）條文皆附有 `evidence_ptr` 或引用上游錨點；無來源者標記為 `UNVERIFIED` 或 `CR_OPEN`。 | **PASS** | 全文引用標註；§11 CR\_OPEN Ledger |
| **HR-02** | **Fail-Closed Default** | 所有 Gate、降級策略、缺口處置均明確定義「阻斷（BLOCK）」或「降級（RADAR\_ONLY）」行為，無「得過且過」。 | **PASS** | §9.3 Gate Registry, §6.4 Fail-Closed Strategy |
| **HR-03** | **15 Subsystems Only** | 子系統數量嚴格鎖定為 15 個（CA-WRC 至 CA-GOVERN）。無 CA-FIREWALL，無新增第 16 個子系統。 | **PASS** | §9.2 Component Registry, §4 |
| **HR-04** | **Scope Lock** | ARCH 僅定義 WHAT/STRUCTURE/WHY。所有 HOW（操作步驟、腳本、詳細 Schema、數值門檻）皆 Route-Out 至 SSOT。 | **PASS** | §0.4 Scope Lock, §9.5 Route-Out Register |
| **HR-05** | **XQ Sole Order Endpoint** | 明確聲明 XQ 全球贏家為唯一下單端點；本系統僅產出信號/腳本/建議，不直接串接券商 API 下單。 | **PASS** | §3.1 Context View, §8.5 Attended-First |
| **HR-06** | **Authority Stack** | 明確定義文件權威順位（SRS \> ARCH \> ICD \> Runbook），衝突時以上位為準。 | **PASS** | §0.3 Authority Stack |
| **HR-07** | **Machine Readability** | §9 所有註冊表（Registries）格式結構化（Markdown Table/JSON），支援 `gate-runner` 自動解析。 | **PASS** | §9.1\~§9.5 結構化表格- |


---


| Issue ID | 缺陷描述 | 修補驗收 (Fix Verification) | 結果 | 證據落點 (Anchor) |
| ----- | ----- | ----- | ----- | ----- |
| **A:CRIT-001** | **Anchor Registry 缺失** | §9.1 Anchor Registry 已建立，且涵蓋全文件關鍵節點。 | **PASS** | \[ANCHOR:ARCH-V810-9-1-ANCHORS\] |
| **A:CRIT-002** | **RTM 缺失** | §10 RTM 已建立，包含 SRS v8.1 覆蓋與舊版映射（即使因上游錨點缺失而標記為骨架，結構已存在）。 | **PASS** | \[ANCHOR:ARCH-V810-SEC10\] |
| **A:CRIT-003** | **Patch Register 缺失** | Patch Register 已整合至 §11 CR\_OPEN Ledger 與版本修補記錄中。 | **PASS** | \[ANCHOR:ARCH-V810-SEC11\] |
| **A:CRIT-004** | **15CA 表格截斷/錯誤** | §9.2 Component Registry 已全量展開，欄位完整（ID/Type/Module/Resp/Dependency）。 | **PASS** | \[ANCHOR:ARCH-V810-9-2-COMPONENTS\] |
| **A:CRIT-008** | **Evidence Contract 缺失** | §9.4 Evidence Contract Registry 已建立，定義三件套（Verdict/Index/Bundle）與路徑慣例。 | **PASS** | \[ANCHOR:ARCH-V810-9-4-EVIDENCE\] |
| **A:MAJ-011** | **Preflight Locator 缺失** | §0.1 Preflight Report 已包含 Locator Proof 欄位，證明輸入文件存在性。 | **PASS** | \[ANCHOR:ARCH-V810-0-1-META\] |
| **A:MAJ-013** | **Merge Queue 映射缺失** | §9.3 Gate Registry 已包含 `GATE-MQ-001-MERGE_GROUP`，並 Route-Out 至 GitHub Appendix。 | **PASS** | \[ANCHOR:ARCH-V810-9-3-GATES\] |

