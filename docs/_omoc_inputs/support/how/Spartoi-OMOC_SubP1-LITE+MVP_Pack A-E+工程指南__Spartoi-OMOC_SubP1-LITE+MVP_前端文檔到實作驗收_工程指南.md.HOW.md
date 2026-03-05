# HOW (extracted)


| 章節編碼 | 完整標題 (附英文解釋) | 機械可讀錨點 | 來源引用 |
| ----- | ----- | ----- | ----- |
| **1.0** | **核心治理原則與架構總則 (Core Governance and Architecture)** | `[#ch1-governance-architecture]` |  |
| 1.1 | 權威堆疊與憲法分離 (Authority Stack and Blueprint Separation) | `[#sec1.1-authority-stack]` |  |
| 1.2 | 技術文檔四分法落地 (Diátaxis Framework Integration) | `[#sec1.2-diataxis-framework]` |  |
| 1.3 | 單一驗收夾具機制 (Single Acceptance Harness) | `[#sec1.3-acceptance-harness]` |  |
| 1.4 | 代理協作與決策日誌 (AGENTS.md & ADR Implementation) | `[#sec1.4-agents-adr]` |  |
| **2.0** | **雙工位隔離產線架構 (Two-Lane Pipeline Architecture)** | `[#ch2-two-lane-pipeline]` |  |
| 2.1 | Builder 與 Product 循環依賴之解法 (Resolving Circular Dependencies) | `[#sec2.1-circular-deps]` |  |
| 2.2 | Lane-F：OMOC-MVU 工廠線邊界與指責 (Factory Lane Scope) | `[#sec2.2-lane-f-scope]` |  |
| 2.3 | Lane-P：SubP1-LITE+MVP 產品線邊界與指責 (Product Lane Scope) | `[#sec2.3-lane-p-scope]` |  |
| **3.0** | **最小最快速可行合冊全集 (Minimum Viable 5-Packages)** | `[#ch3-5-packages-spec]` |  |
| 3.1 | Package A: 治理與索引包 (Governance/Index Pack) | `[#sec3.1-pkg-a-governance]` |  |
| 3.2 | Package B: 總控控制平面包 (Control Plane Pack) | `[#sec3.2-pkg-b-controlplane]` |  |
| 3.3 | Package C: 執行落地包 (Execution Pack) | `[#sec3.3-pkg-c-execution]` |  |
| 3.4 | Package D: 執行工廠包 (Factory Pack) | `[#sec3.4-pkg-d-factory]` |  |
| 3.5 | Package E: 子系統交付包 (Subsystem Delivery Pack) | `[#sec3.5-pkg-e-delivery]` |  |
| **4.0** | **工具鏈與控制平面實戰規範 (Toolchain & Control Plane Specs)** | `[#ch4-toolchain-controlplane]` |  |
| 4.1 | 開發容器與一致性環境 (DevContainers Spec) | `[#sec4.1-devcontainers]` |  |
| 4.2 | 合併佇列與 `merge_group` 觸發合約 (Merge Queue Trigger Contract) | `[#sec4.2-merge-queue]` |  |
| 4.3 | 強制回報與阻斷略過風險 (Always-Report & Skip Hazard Prevention) | `[#sec4.3-always-report]` |  |
| 4.4 | OpenCode/Oh-My 插槽化與降級策略 (Orchestrator Slotting & Fallback) | `[#sec4.4-opencode-slotting]` |  |
| 4.5 | 供應鏈安全與靜態分析基線 (Security Baseline: zizmor/pinact) | `[#sec4.5-security-baseline]` |  |
| **5.0** | **15 子系統模板化量產交付 (15-Subsystem Templated Delivery)** | `[#ch5-15-subsystems]` |  |
| 5.1 | Mini Core Four (MC4) 取代一頁卡之裁決 (MC4 over One-Page Card) | `[#sec5.1-mc4-ruling]` |  |
| 5.2 | SS\_SRS/SS\_ARCH SS-Lite 輕量化生成機制 (SS-Lite Auto-Generation) | `[#sec5.2-sslite-generation]` |  |
| 5.3 | 單檔三合一與 T0/T1 雙路由合約 (WP.Master Routing Contract) | `[#sec5.3-wpmaster-routing]` |  |
| **6.0** | **實戰工程執行步驟清單 (Execution Phases 0-5)** | `[#ch6-execution-phases]` |  |
| 6.1 | Lane-F 固化工廠 (WP-001\~WP-008 Setup) | `[#sec6.1-lane-f-setup]` |  |
| 6.2 | Phase-0: 飛行前檢查與鎖定 (Preflight & Scope-Lock) | `[#sec6.2-phase-0-preflight]` |  |
| 6.3 | Phase-1: 最小閉環與骨架 (Spine v0 Scaffold) | `[#sec6.3-phase-1-spine-v0]` |  |
| 6.4 | Phase-2: 15× MC4 量產 (15x MC4 Production) | `[#sec6.4-phase-2-mc4]` |  |
| 6.5 | Phase-3: 15× WP.Master 路由固定 (15x WP.Master Configuration) | `[#sec6.5-phase-3-wpmaster]` |  |
| 6.6 | Phase-4: 驗收轉換命令 (GateKit \+ GateRunner) | `[#sec6.6-phase-4-gatekit]` |  |
| 6.7 | Phase-5: 收斂至單一驗收閉環 (Spine v1 Convergence) | `[#sec6.7-phase-5-spine-v1]` |  |
| **7.0** | **機械化驗收門檻與衡量指標 (Mechanical Acceptance Metrics)** | `[#ch7-acceptance-metrics]` |  |
| 7.1 | 全局 Gate：G0\~G3 關卡定義 (Global Gates G0-G3) | `[#sec7.1-global-gates]` |  |
| 7.2 | 最小證據集合五件套產出 (Evidence Minset Outputs) | `[#sec7.2-evidence-minset]` |  |
| 7.3 | WP 工作包與 RIP 的降維裁決結構 (WP & RIP Matrix Restructuring) | `[#sec7.3-wp-rip-restructure]` |  |
| **8.0** | **風險控制與 Fail-Closed 回退策略 (Fail-Closed Risk Strategies)** | `[#ch8-fail-closed-risks]` |  |
| 8.1 | 技術風險：MQ 卡死與 OpenCode 漂移 (Tech: MQ & Drift) | `[#sec8.1-tech-risks]` |  |
| 8.2 | 資料風險：Secrets 外洩與 Lineage 斷裂 (Data: Secrets & Lineage) | `[#sec8.2-data-risks]` |  |
| 8.3 | 合規/法規風險：XQ 越權下單阻斷 (Compliance: XQ Bypass Block) | `[#sec8.3-compliance-risks]` |  |
| 8.4 | 營運風險：工廠與產品混改 (Ops: Factory/Product Mix) | `[#sec8.4-ops-risks]` |  |
| **9.0** | **跨文檔對齊與升級清單 (Document Alignment & Upgrades)** | `[#ch9-document-alignment]` |  |
| 9.1 | 控制平面與 TT Schema 欄位鎖定 (Control Plane & TT Lock) | `[#sec9.1-tt-schema-lock]` |  |
| 9.2 | WSP 目錄契約與等價映射 Adapter (WSP Directory Adapter) | `[#sec9.2-wsp-directory-adapter]` |  |
| 9.3 | OMOC\_施工skills 觀測與隔離升級 (OMOC Skills Upgrades) | `[#sec9.3-omoc-skills-upgrades]` |  |
| 9.4 | WP 總表稽核匯流排映射 (WP Master Audit Bus Mapping) | `[#sec9.4-wp-audit-mapping]` |  |
| **10.0** | **待修補系統缺口清單 (System Gap List)** | `[#ch10-system-gap-list]` |  |
| 10.1 | Evidence Triplet/Bundle 正式 Schema 缺失補齊 (Triplet Schema Gap) | `[#sec10.1-triplet-schema-gap]` |  |


---


| 權威層級 | 文件/載體屬性 | 核心定位與職責 (Role) | 來源引用 |
| ----- | ----- | ----- | ----- |
| **第一層 (上位母法)** | OMOC Blueprint | **NORMATIVE (規範性)**。提供治理邊界、契約、索引、映射與 Route-Out（路由移出）母則。 |  |
| **第二層 (子域憲法)** | SubP1 Blueprint | **NORMATIVE (規範性)**。子域落地策略；規範句必須帶 `evidence_ptr`（證據指標），並使用 MAP\_SCHEMA\_V1 映射表。 |  |
| **第三層 (裁決介面)** | Control Plane (控制平面) | **SSOT Interface (單一真相來源介面)**。負責 gate\_registry、Evidence schema 與 TT schema。 |  |
| **第四層 (規範群)** | MIP / SRS / ARCH / LBP | **NORMATIVE (規範性)**。具體 Gate/Evidence 的權威來源與系統約束。 |  |
| **第五層 (執行層)** | Runbook (RB) / Work Instructions (WI) / Scripts | **EXECUTION (執行性)**。實作層單一真相，只允許撰寫 HOW（如何做），嚴禁改寫憲法。 |  |
| **外部隔離層** | Web 搜尋資料 / 外部工具 (如 MCP) | **SUPPORT-only (僅供支援)**。必須受 TT-bound（測試追蹤綁定）約束，不可作為 SSOT 依賴。 |  |


---


| 事故類型 (Accident Type) | 未隔離的後果 (Consequences of Non-Isolation) | 雙工位架構解法 (Two-Lane Solution) |
| ----- | ----- | ----- |
| **Builder/Product 循環依賴 (Circular Dependency)** | 建構者（Builder）與產品（Product）互相依賴，導致工具鏈異常時無法釐清是環境損壞還是程式碼錯誤。 | 嚴格確立 Lane-F 先行（MVU-first）。產品線只能依賴工廠線已固化且通過驗證的版本。 |
| **DoD (Definition of Done) 稀釋** | 開發者為了讓產品功能快速通過 CI（持續整合），私自修改驗收夾具或放寬 Required Checks（必備檢查），導致驗收標準（DoD）形同虛設。 | 工廠與產品設定單向消費合約。產品修改嚴禁反向修改工廠契約，否則判定 FAIL\_CLOSED（失效關閉）。 |
| **域治理污染 (Governance Contamination)** | 為求施工便利，將操作手冊與立法文本（Blueprint）混合，或將外部工具權限（如 OpenCode）升格為 SSOT（Single Source of Truth，單一真相來源）。 | 藍圖不合併，僅在 RBWI（Runbook & Work Instructions，維運與工作指導）與驗收輸出契約層級進行收斂與整合。 |


---


| Package 命名 | 核心角色定位 (防漂移硬封條) | 內容最小集 | 主要輸出與驗收指標 |
| ----- | ----- | ----- | ----- |
| **A: 治理與索引** (Governance/Index) | **DERIVED INDEX** (衍生索引，不可立法) | Doc Inventory、Route-Out 表、Coverage Maps、AGENTS.md | Traceability matrix (可追溯矩陣，必須可由 SSOT 機械重建) |
| **B: 控制平面** (Control Plane) | **SSOT Interface** (裁決語言介面) | gate\_registry、TT schema、Evidence schema | Schema、Registry 與 Validator (驗證器) |
| **C: 執行落地** (Execution) | **IMPLEMENTATION SSOT** (實作層單一真相，僅限 HOW) | Dev / Ops Runbooks \+ WI、Handoff interface | Run logs (執行日誌) 與 Evidence pointers (證據指標) |
| **D: 執行工廠** (Factory) | **EXECUTION 工廠** (執行工廠) | devcontainer、CI workflow、verify harness、RIP installer | Required checks 契約、Always-report 設定、Replayable (可重跑性) 證據 |
| **E: 子系統交付** (Subsystem Delivery) | **15× 交付包** (由 Lane-P 生產) | 15× Mini Core Four (SS-Lite 模板) \+ 15× WP.Master | 15/15 coverage\_verdict=PASS 或轉 TEST\_TRACK |


---


| 工具層 | 工具定位與權限限制 | 漂移偵測 (Drift Detection) | 緩解與降級策略 (Fallback) |
| ----- | ----- | ----- | ----- |
| **OpenCode** | **插槽化執行引擎**。權限模型採取 `deny-by-default` (預設拒絕)；低風險操作設為 `allow`，高風險操作設為 `ask/deny`。 | 偵測 `opencode.json` 是否出現未知鍵 (Unknown Keys)，或發生 SDK 呼叫導致 deny 失效之狀況。 | 若 preflight (飛行前檢查) 發現 Unknown Keys 或 Schema 不符，立即觸發 Fail-Closed。降級僅使用純 CLI 工具。 |
| **Oh My OpenCode** | **支援性編排層 (Quarantine/Support-only)**。由於其更新頻繁且常標示為實驗性 (experimental)，不得成為驗收路徑的強制相依項。 | 偵測工具註冊是否引發 JSON Schema 驗證錯誤，或發生跨版本不相容之狀況。 | 必須釘死版本 (Version Pinning)。若發生不可控漂移，立即停用 Oh-My 及 SDK 呼叫，回退至純 bash 或 `make verify`。 |


---


| 文件類型 | 模板欄位最小集 (Fields) | 驗收與防漂移機制 | 來源引用 |
| ----- | ----- | ----- | ----- |
| **SS\_SRS (SS-Lite)** | Purpose (目的)、Inputs (輸入)、Outputs (輸出)、Acceptance Criteria (驗收條件)、Stopline (停止線)、Owned Gates (所屬關卡)、Evidence Outputs (證據輸出路徑) | 必須由 Validator 機械檢查欄位完整性，缺項直接 FAIL。 |  |
| **SS\_ARCH (SS-Lite)** | Boundary (邊界)、Data Contracts (資料契約)、Dependencies (依賴)、Failure Modes (失效模式 / 降級參考) | 用於確認子系統邊界，避免越權操作或外部依賴漏洞。 |  |


---


| 產線階段 | 產線代號 | 核心指責與範圍 | 目標產出 (驗收必看) | 來源引用 |
| ----- | ----- | ----- | ----- | ----- |
| **工廠線 (Factory Lane)** | Lane-F | 專責 OMOC-MVU (Minimum Viable Utility, 最小可行產線)，對應 WP-001\~WP-008。負責固化開發環境、CI 檢查合約與證據產生器。 | Generator (生成器)、Validator (驗證器)、CI Gates，以及 Package A\~D 準備就緒。 |  |
| **產品線 (Product Lane)** | Lane-P | 專責 SubP1-LITE+MVP，對應 Phase 0\~5。純粹消費工廠線產出的驗收器，批量生產 15 子系統交付物。 | 15× (MC4 \+ WP.Master) 模板化產出物，並全數通過機械驗收。 |  |


---


| MC4 交付組件 | 規範與產出要求 | 來源引用 |
| ----- | ----- | ----- |
| **SS\_README** | 可將「一頁規格卡 (One-page spec card)」降級作為其核心內容與素材，但不可取代其餘 MC4 組件。 |  |
| **SS\_SRS** | Subsystem Software Requirements Specification。採用 SS-Lite 模板，僅填寫「最小可驗收需求」與「Stopline (停止線)」。 |  |
| **SS\_ARCH** | Subsystem Architecture。採用 SS-Lite 模板，僅定義「系統邊界」、「I/O 契約」與「外部依賴」。 |  |
| **SS\_DELIVER** | 定義「交付」、「驗收」與「回放入口命令」以及證據路徑。 |  |


---


| 關卡編號 | 關卡名稱 (中英對照) | 判定標準與涵蓋範圍 | 失敗阻斷與回退機制 (Fail-Closed) |
| ----- | ----- | ----- | ----- |
| **G0** | Preflight PASS(飛行前檢查通過) | 檢查工具版本、Schema (結構定義)、OpenCode `opencode.json` 是否包含 unknown keys (未知鍵)，並確認權限模式一致。 | 阻斷 Merge (合併)。出現 unknown keys 時直接觸發 Fail-Closed。 |
| **G1** | Required checks canonical(必備檢查合約化) | Required checks 名稱必須穩定，且必須在 PR (Pull Request) 與 `merge_group` 雙路徑中同名回報。 | 若未在雙路徑回報，或因 path/branch filter 導致跳過，判定為假綠卡死。若未啟用 MQ，則需 TT 記錄。 |
| **G2** | Evidence Minset(最小證據集合) | 必須產出最低標準之五件套產物 (詳見 7.2 節)，並通過靜態/安全掃描。 | 缺少任何一件產物，立即判定為 FAIL\_CLOSED。 |
| **G3** | Replayable(可重跑性) | 相同的 SHA (提交雜湊值) 重跑驗收流程時，產出的 digest (摘要值) 必須一致。 | 若不一致，觸發 TT (TEST\_TRACK) \+ TEMP\_CLOSED (暫時關閉)。 |


---


| 產物名稱 | 角色定位與內容要求 | 依賴與裁決規則 |
| ----- | ----- | ----- |
| **verdict.json** | 最終裁決結果 (Fail-Closed)。 | 彙整全部檢查結果，若有阻斷項直接標記 FAIL\_CLOSED。 |
| **checks\_manifest.json** | 記錄 Required checks 命名契約、workflow triggers 及 `merge_group` 覆蓋證據 (包含 expected / observed / diff)。 | 用以比對實測回報與預期合約是否一致，防止跳過風險 (Skip Hazard)。 |
| **evidence\_index.md** | 證據檔案之可追溯索引。 | 提供所有證據檔案的映射路徑與雜湊驗證。 |
| **bundle (+ bundle\_audit)** | 包含測試軌跡、日誌與合規稽核結果的驗收包。 | WSP 採用 `acceptance_bundle/`，OMOC 採用 `evidence/_acceptance/<ts>/`。兩者共存時必須透過 `acceptance_manifest.json` 進行等價映射，避免人腦搬運。 |
| **secrets\_scan** | 機敏資料外洩掃描紀錄 (如 gitleaks/trufflehog 產出)。 | 必須符合 deny-by-default 原則，不得導出任何 Secrets。違者立即阻斷並回退快照。 |


---


| 風險類別 (Risk) | 偵測方式 (Detection) | 緩解策略 (Mitigation) | 備援與回退 (Fallback) |
| ----- | ----- | ----- | ----- |
| **MQ 卡死與假綠 (False Positive)** *(僅跑 PR 檢查，`merge_group` 未觸發，導致佇列卡死或狀態遺失)* | CI 是否對 `pull_request` 與 `merge_group` 同時產生同名 Check Runs（檢查紀錄）。 | Workflow 必須同時訂閱這兩個事件，並啟用 Always-Report（強制回報）防止條件略過。 | 若未達標，將 MQ 狀態設為 `TEMP_CLOSED`，退回 PR-only 分支保護，並立 TT 保留證據。 |
| **OpenCode / Oh-My 設定漂移** *(因 strict schema 遇到 unknown keys 直接啟動失敗，或實驗性功能引發例外)* | Preflight 腳本解析 `opencode.json`，檢查 unknown keys（未知鍵）與權限規則；若有異直接 Fail-Closed。 | 版本釘死（Pinning）；權限模型採用 deny-by-default（預設拒絕）；高風險工具設定 `ask/deny`。 | 降級僅使用 CLI（命令列），強制禁用 Oh-My 編排層與 SDK；將不可證明部分標註為 `UNAVAILABLE` 轉 TT。 |


---


| 風險類別 (Risk) | 偵測方式 (Detection) | 緩解策略 (Mitigation) | 備援與回退 (Fallback) |
| ----- | ----- | ----- | ----- |
| **Secrets/Token 外洩** *(代理越權導出密鑰)* | `bundle_audit` 掃描 forbidden patterns（禁用特徵）與明文憑證。 | MCP 預設 deny；Ops 規範明定僅允許輸出「存在性/指紋」證據，嚴禁導出真實 secrets。 | 立即 Revoke（撤銷）外洩 Token，並強制系統狀態回退至上一個 PASS（通過）快照。 |
| **Lineage（血緣）斷裂** *(Data Backbone 漂移導致 `evidence_ptr` 不可追溯)* | 檢驗 DB 寫入與 evidence\_ptr（證據指標）的映射關係是否斷鏈。 | DB zone registry 嚴守 A+B DB 方案裁決，所有資料庫寫入強制走 append-only（僅附加）模式。 | 退回原始儲存機制：只保留 Metadata 於 Git 中，Blob 實體檔放入 S3，利用 Git 追蹤指標變化。 |


---


| 風險類別 (Risk) | 偵測方式 (Detection) | 緩解策略 (Mitigation) | 備援與回退 (Fallback) |
| ----- | ----- | ----- | ----- |
| **繞過 XQ 下單 / 越權執行** *(代理或流程試圖觸發未授權交易)* | 機械掃描任何可能造成金流或交易副作用的路徑，檢查 `EXECUTE_DISABLED` 或 HITL（Human-in-the-Loop，人機協作）stopline（停止線）標記是否存在。 | 主路徑採用 No-API（無 API）策略；任何例外執行（Exception Gate）必須強制帶入 `evidence_ptr`。 | 觸發全局降級：將系統鎖定為 `READ_ONLY_UI`（唯讀介面）或 `RADAR_ONLY`（僅觀測），機械攔截所有交易指令。 |


---


| 風險類別 (Risk) | 偵測方式 (Detection) | 緩解策略 (Mitigation) | 備援與回退 (Fallback) |
| ----- | ----- | ----- | ----- |
| **工廠與產品混改 (Scope Mix)** *(導致 Debug 變抓鬼、責任不可歸因)* | CI 檢查 PR（拉取請求）的檔案變更樹，是否同時修改了 Factory（如 verify / control-plane）與 Product（子系統實作）。 | 強制隔離產線：Lane-F（工廠線）專責 WP-001～008；Lane-P（產品線）純粹消費工廠產出，嚴禁逆向修改。 | 拒絕合併，要求將混改 PR 拆分；若惡意違反，直接觸發 TT 並施加 BLOCK（阻斷）。 |
| **RBWI 混改失控** *(Dev 與 Ops 規範與細節互相依賴污染)* | 追蹤 Runbook 變更紀錄，檢查是否在缺乏介面合約（Interface Contract）的情況下跨域修改。 | Dev 與 Ops 只能共享「介面與證據契約」，嚴禁共享執行細節；所有驗收收斂在單一 Acceptance Harness。 | 將衝突項目全部丟回 TT Registry 標註為 `TEMP_CLOSED`，嚴禁口頭協調或私下同意。 |


---


| 文件狀態/影響範圍 | 升級決策與做法 (Upgrade Action) | 來源引用 |
| ----- | ----- | ----- |
| **影響 Gate 裁決、Evidence 產出、TT Schema 或 required checks (必備檢查) 合約** | **必須升級 (Mandatory Upgrade)**：更新內部 Schema 欄位與驗收合約，確保裁決一致性。 |  |
| **僅提供概念、索引、邊界定義** | **對齊式升級 (Alignment-only Upgrade)**：更新映射關聯與版本指針，不改寫正文。 |  |
| **屬於計畫總表或狀態表 (如 WP 總表)** | **增量更新 (Incremental Update)**：僅更新映射狀態與欄位，嚴禁大改文件正文結構。 |  |


---


| 處置維度 | 規範要求與執行細節 | 來源引用 |
| ----- | ----- | ----- |
| **工程落地要求 (Engineering Action)** | 必須在 Package B (Control Plane / 控制平面包) 中明確定義 versioned JSON Schema（受版本控制的 JSON 結構）與專屬的 validator（驗證器）。 |  |
| **變更管制 (Change Control)** | 針對該 Schema 的任何後續變更，必須強制產出對應的 ADR（Architecture Decision Record，架構決策日誌）。 |  |
| **風險偵測 (Risk Detection)** | 當前系統易發生「看似有證據，實際不可機械裁決」的假自動驗收。驗證器必須主動查驗 Triplet/Bundle 的 `schema_version`（結構版本）與欄位完整性。 |  |
| **緩解與備援 (Mitigation & Fallback)** | 在正式 Schema 尚未補齊之前，系統僅能先使用通用版格式，並必須立即開立 TT（TEST\_TRACK，測試追蹤）以留下紀錄。 |  |
| **裁決阻斷 (Verdict Blocking)** | 對於因 Schema 缺失而無法被機械證明的項目，必須標記為 `UNAVAILABLE` 並強制轉入 `TEST_TRACK`。此類項目不阻塞全域驗收，但絕對不可被判定為 `PASS`，同時嚴禁任何形式的「口頭通過」。 |  |

