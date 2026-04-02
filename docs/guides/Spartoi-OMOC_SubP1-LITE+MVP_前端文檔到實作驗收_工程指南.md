

# Spartoi-OMOC\_SubP1-LITE+MVP\_前端文檔到實作驗收\_工程指南

---

## 目錄（TOC）

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

## **1.0 核心治理原則與架構總則 (Core Governance and Architecture)**

本指南以「單人＋多代理、無商業交付、但要能真的施工＋驗收＋跑完 15 子系統」的工程實務視角為基礎。專案核心治理原則為「藍圖不合併、驗收閉環合併」，嚴禁將上位藍圖（Blueprint）與下位施工手冊（Runbook/WI）揉合為單一文件。所有產出必須受限於 Fail-Closed（預設關閉）、One-Rule-One-Place（一地一則）、No-Anchor-No-Claim（無錨點不主張）等硬性治理約束。

---

### **1.1 權威堆疊與憲法分離 (Authority Stack and Blueprint Separation)**

系統規範嚴格遵循 Authority Stack（權威堆疊）分層架構，任何實作層級的衝突皆必須依據上位憲法進行裁決，下位文件不得重寫或覆蓋上位規範。若發現規範缺失，一律啟動 TEST\_TRACK（TT，測試追蹤）流程，嚴禁代理或人工推測腦補。

| 權威層級 | 文件/載體屬性 | 核心定位與職責 (Role) | 來源引用 |
| ----- | ----- | ----- | ----- |
| **第一層 (上位母法)** | OMOC Blueprint | **NORMATIVE (規範性)**。提供治理邊界、契約、索引、映射與 Route-Out（路由移出）母則。 |  |
| **第二層 (子域憲法)** | SubP1 Blueprint | **NORMATIVE (規範性)**。子域落地策略；規範句必須帶 `evidence_ptr`（證據指標），並使用 MAP\_SCHEMA\_V1 映射表。 |  |
| **第三層 (裁決介面)** | Control Plane (控制平面) | **SSOT Interface (單一真相來源介面)**。負責 gate\_registry、Evidence schema 與 TT schema。 |  |
| **第四層 (規範群)** | MIP / SRS / ARCH / LBP | **NORMATIVE (規範性)**。具體 Gate/Evidence 的權威來源與系統約束。 |  |
| **第五層 (執行層)** | Runbook (RB) / Work Instructions (WI) / Scripts | **EXECUTION (執行性)**。實作層單一真相，只允許撰寫 HOW（如何做），嚴禁改寫憲法。 |  |
| **外部隔離層** | Web 搜尋資料 / 外部工具 (如 MCP) | **SUPPORT-only (僅供支援)**。必須受 TT-bound（測試追蹤綁定）約束，不可作為 SSOT 依賴。 |  |

*備註：衍生索引（DERIVED INDEX）如 traceability matrix（可追溯矩陣），必須可由 SSOT 與 Repository 狀態機械重建，嚴禁人工修改當作規範。*

---

### **1.2 技術文檔四分法落地 (Diátaxis Framework Integration)**

專案文檔管理全面導入 Diátaxis Framework（技術文檔四分法框架），強制分離「規範宣告」與「操作步驟」，以避免施工細節污染治理層級。

* **Reference（參考）與 Explanation（解釋）**：嚴格收斂於 OMOC 與 SubP1 的藍圖層級（Blueprint），僅用於宣告系統邊界、契約與原則。  
* **How-to（操作指南）與 Tutorial（教學）**：必須強制執行 Route-Out（路由移出）至 RBWI（Runbook & Work Instructions）與 scripts 中，落實 Docs-as-Code（文檔即程式碼）。

---

### **1.3 單一驗收夾具機制 (Single Acceptance Harness)**

為確保 OMOC 與 SubP1 的要求能夠被同步且一致地裁決，系統捨棄文件合併策略，改採 Spine-First（骨架優先）的 Single Acceptance Harness（單一驗收夾具機制）進行閉環驗收。

* **統一驗收契約**：將 OMOC\_施工RBWI、SubP1 Dev RBWI 與 SubP1 Ops RBWI 的執行細節，對齊至同一個 Acceptance Harness，共享 Gate（關卡）、Evidence（證據）、Replay（回放）與 TT 介面。  
* **Fail-Closed 門檻 (G2)**：Harness 的輸出必須產出 Evidence Minset（最小證據集合），其內容嚴格要求包含 `verdict.json`、`checks_manifest.json`、`evidence_index.md`、`bundle`、`bundle_audit` 以及 `secrets_scan`。缺漏任何一項，將直接觸發 FAIL\_CLOSED 阻斷驗收。  
* **機械可回放性 (Replayable)**：驗收夾具必須確保在相同的 SHA 指標下，重跑驗收流程能得到一致的 Digest（摘要）；若不一致，則強制進入 TT \+ TEMP\_CLOSED 狀態。

*系統缺口備註：目前 Evidence Triplet/Bundle 的「正式 Schema」存在缺失，外部資料僅能提供通用版 `{subject_sha, check_name, result_digest}`；此部分必須由內部控制平面補齊 versioned JSON Schema 與 validator，否則將導致無法進行高保真機械驗收。*

---

### **1.4 代理協作與決策日誌 (AGENTS.md & ADR Implementation)**

針對「單人＋多代理」的開發模式，必須建立最小且最硬的協作約束文件，以避免代理程式越界操作或反覆推翻架構決策。

* **AGENTS.md (Agent Playbook / 多代理協作手冊)**：  
  * **定位**：作為 Repository 級別的第 1 份文件，定義代理協作的最小邊界。  
  * **規範內容**：明確列出代理允許/禁止執行的事項（例如：禁止修改 rulesets、禁止直推 main 分支），並強制綁定 "Evidence-first" 規則（任何改動必須產出 evidence bundle）。  
* **ADR (Architecture Decision Record / 架構決策日誌)**：  
  * **定位**：作為紀錄不可逆決策（如：資料持久化選型、跨子系統契約變更）的輕量化檔案。  
  * **規範內容**：每則 ADR 限制在 1 頁以內，記錄決策結果與因果理由；ADR 一旦建立，代理程式即被禁止反覆推翻該項決策，確保架構演進不發生嚴重漂移。

---

## **2.0 雙工位隔離產線架構 (Two-Lane Pipeline Architecture)**

`[#ch2-two-lane-pipeline]`

為確保工程交付的「可歸因、速度更快、風險更低」，本指南強制要求採用 Two-Lane Pipeline（雙工位隔離產線架構）。此架構的核心原則為：工廠與產品分線、藍圖分層不合併、驗收閉環合併，所有輸出最終必須透過單一驗收夾具（Single Acceptance Harness）以 Gate（關卡）、Evidence（證據）、TT（TEST\_TRACK，測試追蹤）進行機械化裁決。

本專案拒絕「邊做工廠邊做產品」的混合模式，其架構骨架必須遵循以下流向：

1. **Lane-F (Factory lane)**：先建立工廠，產出驗收器與生成器。  
2. **Lane-P (Product lane)**：純粹做為消費者，使用工廠提供的工具與夾具來生成與驗收產品。  
3. **單一驗收夾具 (Single Acceptance Harness)**：匯流兩條產線，統一產出包含 `verdict`、`checks_manifest`、`index`、`bundle` 與 `audit` 的 Evidence Minset（最小證據集合）。

---

### **2.1 Builder 與 Product 循環依賴之解法 (Resolving Circular Dependencies)**

`[#sec2.1-circular-deps]`

在缺乏嚴格物理/邏輯隔離的狀態下，多代理協作極易發生工程事故。Two-Lane（雙軌）架構是為了解決以下三大致命事故的工程解法：

| 事故類型 (Accident Type) | 未隔離的後果 (Consequences of Non-Isolation) | 雙工位架構解法 (Two-Lane Solution) |
| ----- | ----- | ----- |
| **Builder/Product 循環依賴 (Circular Dependency)** | 建構者（Builder）與產品（Product）互相依賴，導致工具鏈異常時無法釐清是環境損壞還是程式碼錯誤。 | 嚴格確立 Lane-F 先行（MVU-first）。產品線只能依賴工廠線已固化且通過驗證的版本。 |
| **DoD (Definition of Done) 稀釋** | 開發者為了讓產品功能快速通過 CI（持續整合），私自修改驗收夾具或放寬 Required Checks（必備檢查），導致驗收標準（DoD）形同虛設。 | 工廠與產品設定單向消費合約。產品修改嚴禁反向修改工廠契約，否則判定 FAIL\_CLOSED（失效關閉）。 |
| **域治理污染 (Governance Contamination)** | 為求施工便利，將操作手冊與立法文本（Blueprint）混合，或將外部工具權限（如 OpenCode）升格為 SSOT（Single Source of Truth，單一真相來源）。 | 藍圖不合併，僅在 RBWI（Runbook & Work Instructions，維運與工作指導）與驗收輸出契約層級進行收斂與整合。 |

**工廠與產品混改風險控制 (Factory/Product Mix Risk Control)**： 嚴禁在同一個 PR（Pull Request，合併請求）中同時修改 Factory（驗收夾具/CI/控制平面）與 Product（子系統實作），此行為會導致 debug 變成「抓鬼（Ghost Hunting）」，使責任不可歸因。

* **偵測機制**：以機械化方式檢查 PR 是否跨越了 Lane-F 與 Lane-P 的目錄或標籤邊界。  
* **備援機制**：一旦偵測到混改，必須將該 PR 拆分；若強制違反，直接觸發 TT 並施加 BLOCK（阻斷）。

---

### **2.2 Lane-F：OMOC-MVU 工廠線邊界與指責 (Factory Lane Scope)**

`[#sec2.2-lane-f-scope]`

Lane-F（Factory lane，工廠線）專責構建 OMOC-MVU（Minimum Viable Utility，最小可行產線），其工程邊界嚴格鎖定於 WP-001 至 WP-008（Work Packages 001\~008）。Lane-F 必須在產品線動工前完成固化，避免基礎設施漂移。

**主要指責與產出 (Responsibilities and Outputs)**：

* **一致性環境固化**：提供 `devcontainer.json` 與基礎指令，確保環境可重跑（Replayable）。  
* **驗證器與生成器**：產出 `scripts/verify` 驗收夾具、CI workflows，以及 RIP（Reference Implementation Packs，參考實作包）安裝器與 skills 腳本。  
* **合約鎖定**：建立 Required Checks（必備檢查）合約，確保後續檢查項目名稱穩定且符合規範。  
* **證據生成器**：產出 Evidence Minset（最小證據集合）生成器，提供具備防篡改機制的證據打包能力。

**完成判定門檻 (DoD for Lane-F)**： Lane-F 只有在滿足以下三個門檻後，才能被判定為完成並開放給產品線使用：

1. **ENV-READY**（環境就緒）：開發與驗收環境可無差別重現。  
2. **REQCHECK-CANONICAL**（必備檢查合約正規化）：CI 檢查項目已對齊規範名稱。  
3. **EVIDENCE-MINSET**（最小證據集合落地）：能穩定產出符合規範的證據包結構。

---

### **2.3 Lane-P：SubP1-LITE+MVP 產品線邊界與指責 (Product Lane Scope)**

`[#sec2.3-lane-p-scope]`

Lane-P（Product lane，產品線）專責 SubP1-LITE+MVP 專案的實作與交付，其工程邊界覆蓋 Phase 0 至 Phase 5（第 0 階段至第 5 階段），目標為批量生產 15 個子系統（Subsystems）的交付物。

**主要指責與產出 (Responsibilities and Outputs)**：

* **純粹消費者**：Lane-P 僅使用 Lane-F 提供的生成器與驗收器進行產品開發，本身不負責建立 CI 規則或驗證框架。  
* **15 子系統量產**：針對 15 個子系統，每個皆必須產出 Mini Core Four（SS\_README、SS\_SRS、SS\_ARCH、SS\_DELIVER）與 WP.Master（單檔三合一）工作包。  
* **追溯矩陣對齊**：確保所有子系統的一頁規格卡與實作，皆能透過 Traceability Matrix（可追溯矩陣）掛載到對應的 Gate、DoD 以及 Evidence Pointer（證據指標）上。

**產品線約束與合約 (Lane-P Constraints)**： 產品線的產出必須經過 MVU Validator（工廠線驗證器）與 Required Checks 的強制檢驗才能落地。任何由 Lane-P 發起的變更，嚴禁反向修改工廠線（Lane-F）所制定的合約（如跳過檢查或竄改證據生成邏輯），此類越界行為將觸發 Fail-Closed（失效關閉）機制。若發現 15 個子系統缺乏 Mini Core Four 或 WP.Master 中的任何一件，將直接觸發 BLOCK 阻斷該子系統的交付。

---

## **3.0 最小最快速可行合冊全集 (Minimum Viable 5-Packages) `[#ch3-5-packages-spec]`**

為符合「單人 \+ 多代理開發 \+ 無商業交付」的最快開發速度要求，專案嚴禁將上位藍圖（Blueprint）與施工手冊（HOW）混合編寫，亦不允許針對 15 個子系統各別產出龐雜的規格書。所有技術文檔必須收斂為 5 個 Package（合冊），並嚴格定義每個合冊的權威角色，徹底消除產生「第二套 SSOT（Single Source of Truth，單一真相來源）」的漂移風險。

為落實 Fail-Closed（預設關閉/失敗安全）治理守則，所有合冊首頁必須強制標示其角色（Role），且遵循 Authority Stack（權威堆疊）的衝突裁決機制：

1. **NORMATIVE（規範性）**：僅限既有 SSOT（如 Blueprint、MIP、SRS、ARCH 等）方可宣告，5 個 Package 本身均不得自立為上位規範。  
2. **EXECUTION（執行層）**：僅允許描述 HOW（如何施工/驗收），嚴禁改寫或覆蓋藍圖憲法。  
3. **DERIVED INDEX（衍生索引）**：必須可透過 SSOT 與 Repository（程式碼庫）狀態自動重建，嚴禁人工作業修改後充當規範。

此外，原有的 WP（Work Packages，工作包）與 RIP（Reference Implementation Packs，參考實作包）不再作為獨立敘事文檔產出：WP 將被降維收斂至裁決資料結構（traceability matrix 與 gate\_registry）；RIP 則產品化降維至庫內可安裝工件（installer 與 workflows）。

### **3.1 Package A: 治理與索引包 (Governance/Index Pack) `[#sec3.1-pkg-a-governance]`**

Package A 為全域索引與追溯矩陣的收斂點，其核心定位為 **DERIVED INDEX（衍生索引，不可立法）**。該合冊僅負責「索引與映射」，嚴禁編寫具體操作細節（Route-Out，路由移出至執行包）。

* **內容最小集**：必須包含 Doc Inventory（文件清單）、Route-Out Register（路由移出註冊表）、Coverage Maps（覆蓋地圖）、MAP\_SCHEMA\_V1 表格規格，以及 Authority/Conflict（權威與衝突）摘要。為應對多代理協作，必須額外納入 `AGENTS.md`（代理協作規則）作為代理入口文件。  
* **驗收必看輸出**：Traceability matrix（可追溯矩陣）。該矩陣必須確保可由 SSOT 機械化重建。

### **3.2 Package B: 總控控制平面包 (Control Plane Pack) `[#sec3.2-pkg-b-controlplane]`**

Package B 作為全域驗收機制的唯一介面依賴點，其核心定位為 **SSOT Interface（裁決語言介面）**。此合冊是驗收語言的基礎，所有執行與產物皆必須依循此控制平面的定義輸出。

* **內容最小集**：必須包含 `gate_registry`（關卡註冊表，含 Gate ID 與 DoD）、TT（TEST\_TRACK，測試軌道）schema（含狀態機與撤銷條件），以及 Evidence schema（證據綱要，包含 Triplet / Bundle / Manifest / Index / Verdict 格式與版本）。  
* **驗收必看輸出**：Schema 定義檔、Registry 註冊表與 Validator（驗證器）。  
* **風險與防禦**：若控制平面無法釘死 Evidence Triplet / Bundle 的正式 Schema（目前外部研究僅能提供通用版），將導致無法進行機械驗收；此屬已知缺口，必須透過內部定義補齊或列入 TEST\_TRACK。

### **3.3 Package C: 執行落地包 (Execution Pack) `[#sec3.3-pkg-c-execution]`**

Package C 承載所有具體施工手冊，其核心定位為 **IMPLEMENTATION SSOT / EXECUTION（實作層單一真相 / 執行層）**。該包僅限編寫「怎麼做」（HOW），嚴禁改寫任何藍圖層級的憲法條文。

* **內容最小集**：包含 Dev Runbook / WI（開發維運手冊與工作說明）與 Ops Runbook / WI（維運手冊與工作說明）。  
* **開發與維運邊界**：Dev 與 Ops 兩份 Runbook 僅共享「介面」（Handoff interface）與「證據契約」（Evidence contract），嚴禁共享執行細節，以防範一方的漂移污染另一方。  
* **驗收必看輸出**：Run logs（執行日誌）與 Evidence pointers（證據指標）。

### **3.4 Package D: 執行工廠包 (Factory Pack) `[#sec3.4-pkg-d-factory]`**

Package D 為 OMOC-MVU（最小可行產線）的核心，提供一致化開發環境與自動化驗收夾具，定位為 **EXECUTION 工廠（執行工廠）**。此合冊必須於 Lane-F（工廠線）率先固化完畢，以供後續批量生產。

* **內容最小集**：必須包含 `.devcontainer/devcontainer.json`（開發容器規格）、CI Workflow（持續整合工作流程）、Verify Harness（驗收夾具腳本，如 `scripts/verify.sh`），以及降維後的 RIP Installer（參考實作安裝器）。  
* **驗收必看輸出**：Required checks（必備檢查合約，確保 PR 與 `merge_group` 同名回報）、Always-Report（強制回報，防禦路徑跳過風險）、以及 Replay（可重跑性）的相關產出。

### **3.5 Package E: 子系統交付包 (Subsystem Delivery Pack) `[#sec3.5-pkg-e-delivery]`**

Package E 為 SubP1-LITE+MVP 的最終產出，涵蓋 15 個子系統的具體實作，其定位為 **15× 交付包**。此合冊由 Lane-P（產品線）純粹消費 Package D（工廠線）的驗收器批量生產。

* **內容最小集**：對於 15 個子系統，每一個皆必須強制交付 **Mini Core Four (MC4)** 與 **WP.Master（單檔三合一，包含 T0/T1 雙路由合約）**。MC4 包含：  
  1. `SS_README`（子系統讀我檔）  
  2. `SS_SRS`（子系統軟體需求規格）  
  3. `SS_ARCH`（子系統架構）  
  4. `SS_DELIVER`（子系統交付與驗收命令）。  
* **驗收必看輸出**：`15/15 coverage_verdict=PASS` 或有合理的 TT 紀錄。  
* **一頁卡裁決與模板化（SS-Lite）**：「一頁卡（One-page spec card）」僅能作為 `SS_README` 的核心素材，嚴禁直接取代 MC4 與 WP.Master，否則將觸發全域 BLOCK 阻斷。為加速開發且避免人工作業撰寫長篇敘事，`SS_SRS` 與 `SS_ARCH` 必須強制採用「SS-Lite（輕量化規格）」模板化生成，僅定義最小可驗收需求、Stopline（停止線）、邊界、I/O 契約與依賴。

---

*(以下為 5 個 Package 功能與角色的對照表)*

| Package 命名 | 核心角色定位 (防漂移硬封條) | 內容最小集 | 主要輸出與驗收指標 |
| ----- | ----- | ----- | ----- |
| **A: 治理與索引** (Governance/Index) | **DERIVED INDEX** (衍生索引，不可立法) | Doc Inventory、Route-Out 表、Coverage Maps、AGENTS.md | Traceability matrix (可追溯矩陣，必須可由 SSOT 機械重建) |
| **B: 控制平面** (Control Plane) | **SSOT Interface** (裁決語言介面) | gate\_registry、TT schema、Evidence schema | Schema、Registry 與 Validator (驗證器) |
| **C: 執行落地** (Execution) | **IMPLEMENTATION SSOT** (實作層單一真相，僅限 HOW) | Dev / Ops Runbooks \+ WI、Handoff interface | Run logs (執行日誌) 與 Evidence pointers (證據指標) |
| **D: 執行工廠** (Factory) | **EXECUTION 工廠** (執行工廠) | devcontainer、CI workflow、verify harness、RIP installer | Required checks 契約、Always-report 設定、Replayable (可重跑性) 證據 |
| **E: 子系統交付** (Subsystem Delivery) | **15× 交付包** (由 Lane-P 生產) | 15× Mini Core Four (SS-Lite 模板) \+ 15× WP.Master | 15/15 coverage\_verdict=PASS 或轉 TEST\_TRACK |

---

## **4.0 工具鏈與控制平面實戰規範 (Toolchain & Control Plane Specs) \[\#ch4-toolchain-controlplane\]**

本章節定義 OMOC 與 SubP1 雙軌架構下，執行工廠 (Factory Pack) 與總控控制平面包 (Control Plane Pack) 之間的工具鏈介面合約。所有工具鏈行為均不得覆寫上位藍圖，且工具鏈自身的變數與狀態皆必須受機械化關卡 (Gates) 與最小證據集合 (Evidence Minset) 約束，一旦工具行為發生不可預期之變更，系統強制執行 Fail-Closed (失效關閉)。

### **4.1 開發容器與一致性環境 (DevContainers Spec) \[\#sec4.1-devcontainers\]**

為滿足「單人＋多代理」協作且避免「我的機器上可以跑」之落差，必須以開發容器 (DevContainers) 作為落地執行基底與可重跑驗收的最快手段。

* **核心配置落點**：環境定義必須鎖定於 `.devcontainer/devcontainer.json` 與搭配的 Dockerfile（或 docker-compose.yml）中。  
* **工具版本釘死與格式**：該設定檔必須綁定所有語言、CLI（例如 gh, jq, gitleaks）與工具鏈的版本。且 `devcontainer.json` 允許使用 JSONC (含註解之 JSON 格式)，實作時需注意 lint (程式碼檢查) 與解析工具的相容性防禦。  
* **一鍵開箱合約**：開發者或代理程式進入容器後，必須能直接執行 `make verify` 或 `scripts/verify.sh` 來進行全量驗收。  
* **環境降級備援**：若本地或既有 Docker 環境不可用（例如受到企業政策限制），允許降級回退使用 GitHub Codespaces 執行，但 `devcontainer spec` 規格本身仍為一致性環境的單一真相來源 (SSOT)。

### **4.2 合併佇列與 `merge_group` 觸發合約 (Merge Queue Trigger Contract) \[\#sec4.2-merge-queue\]**

GitHub 的合併佇列 (Merge Queue) 是避免程式碼衝突與確保測試綠燈的核心機制，但若設定不當將引發嚴重之驗收漏洞。

* **`merge_group` 觸發強制性**：CI Workflow (工作流程) 必須透過 `merge_group` 事件觸發。若僅依賴 `pull_request` 觸發，Required Checks (必備狀態檢查) 將不會在佇列中回報，導致合併流程永久卡死 (Pending) 或產生假綠 (False Positive) 的假成功現象。  
* **雙路徑同名回報**：Required checks 的名稱必須穩定，且必須在 PR (Pull Request) 與 `merge_group` 兩條路徑中皆產生同名回報紀錄。  
* **MQ Probe 實測與備援**：若無法證實 `merge_group` 路徑正常運作，嚴禁啟用 Merge Queue。在此情況下，必須將狀態設為 `TEMP_CLOSED` (暫時關閉) 並退回使用 PR-only 的分支保護規則 (Branch Protection)，同時記錄 TEST\_TRACK (測試追蹤) 以保留證據。

### **4.3 強制回報與阻斷略過風險 (Always-Report & Skip Hazard Prevention) \[\#sec4.3-always-report\]**

CI 合約中必須積極防堵略過風險 (Skip Hazard)，確保驗收證據鏈不會因條件跳過而斷裂。

* **略過風險 (Skip Hazard) 定義**：若必跑之 workflow 因為配置了 `paths-ignore` (忽略特定路徑)、`branch filtering` (分支過濾) 或被提交訊息 (Commit Message) 觸發跳過條件，GitHub 系統會讓該狀態永遠停留在 Pending，直接卡死合併流程。  
* **強制回報 (Always-Report) 實作**：必須在 CI 流程中配置 Always-Report 模式（例如設定 `if: always()` 的 Gate Job），確保無論流程中其他步驟成功或被跳過，最終都能向系統回報明確的 Required Checks 狀態 (PASS 或 FAIL)。

### **4.4 OpenCode/Oh-My 插槽化與降級策略 (Orchestrator Slotting & Fallback) \[\#sec4.4-opencode-slotting\]**

外部代理與編排工具 (OpenCode 與 Oh My OpenCode) 必須被嚴格定義為執行引擎 (Execution Engine)，不得升格為單一真相來源 (SSOT) 依賴。

| 工具層 | 工具定位與權限限制 | 漂移偵測 (Drift Detection) | 緩解與降級策略 (Fallback) |
| ----- | ----- | ----- | ----- |
| **OpenCode** | **插槽化執行引擎**。權限模型採取 `deny-by-default` (預設拒絕)；低風險操作設為 `allow`，高風險操作設為 `ask/deny`。 | 偵測 `opencode.json` 是否出現未知鍵 (Unknown Keys)，或發生 SDK 呼叫導致 deny 失效之狀況。 | 若 preflight (飛行前檢查) 發現 Unknown Keys 或 Schema 不符，立即觸發 Fail-Closed。降級僅使用純 CLI 工具。 |
| **Oh My OpenCode** | **支援性編排層 (Quarantine/Support-only)**。由於其更新頻繁且常標示為實驗性 (experimental)，不得成為驗收路徑的強制相依項。 | 偵測工具註冊是否引發 JSON Schema 驗證錯誤，或發生跨版本不相容之狀況。 | 必須釘死版本 (Version Pinning)。若發生不可控漂移，立即停用 Oh-My 及 SDK 呼叫，回退至純 bash 或 `make verify`。 |

*來源中未提及 OpenCode 以外的代理程式編排核心引擎替換細節，若需更換引擎需回歸 TEST\_TRACK 立案。*

### **4.5 供應鏈安全與靜態分析基線 (Security Baseline: zizmor/pinact) \[\#sec4.5-security-baseline\]**

面對單人與多代理協作架構，必須對抗代理程式放大的供應鏈風險，導入機械化靜態掃描工具與嚴格白名單。

* **CI 靜態分析與版本釘死**：  
  * **`zizmor`**：強制部署為 GitHub Actions 靜態分析工具，整合為 CI Gate 產物以分析工作流程弱點。  
  * **`pinact`**：用於 Action 依賴之版本釘死 (Action Pinning)，必須在 CI Gate 或 Pre-commit 階段執行。  
  * **Scorecards**：導入針對儲存庫 (Repo) 層級供應鏈風險之 Scorecards Action，並將其結果列為必備檢查 (Required Check)。  
* **MCP (Model Context Protocol) 代理安全限制**：任何 MCP 伺服器或代理工具連線，皆須預設拒絕 (Deny-by-default)。若需啟用，必須滿足三大硬條件：通過允許清單 (Allowlist)、產生稽核日誌 (Audit Log)、以及實施 Token 隔離機制，防範機密資訊 (Secrets) 遭代理程式不當外洩。若 `bundle_audit` 掃描到 forbidden patterns (禁止外洩特徵)，必須立即觸發 FAIL\_CLOSED 並撤銷 Token。

---

## **5.0 15 子系統模板化量產交付 (15-Subsystem Templated Delivery) `[#ch5-15-subsystems]`**

Package E (Subsystem Delivery Pack / 子系統交付包) 是將 15 個子系統實作結果進行合冊的最終交付介面。此交付流程嚴格劃定於 Lane-P (Product lane / 產品線)，純粹消費由 Lane-F (Factory lane / 工廠線) 建構好的 OMOC-MVU 驗收器進行批量生產與驗收。

在實踐 15 子系統的量產時，禁止將其拆分為 15 份獨立的 RIP (Reference Implementation Packs / 參考實作包)，此行為被定義為「效率自殺」。所有子系統必須維持共用單一 RIP 主線 (例如共用的 CI 與證據鏈)，僅在引入新工具或新平台行為時才允許增加 RIP 子包。全域驗收的唯一衡量指標為：Traceability matrix (可追溯矩陣) 中必須達成 15/15 的 `coverage_verdict=PASS`，若未能滿足則必須強制轉立 TT (TEST\_TRACK)，嚴禁任何形式的口頭通過。

### **5.1 Mini Core Four (MC4) 取代一頁卡之裁決 (MC4 over One-Page Card) `[#sec5.1-mc4-ruling]`**

針對子系統的交付文件形式，《Spartoi-OMOC\_SubP1-LITE+MVP\_從前端文檔到實作驗收\_QA.txt》明確指出「一頁規格卡 (One-page spec card)」無法滿足既有規範的交付要求。若僅依賴一頁卡取代完整的規格定義，將直接觸發 Gate 阻斷 (BLOCK)。

根據裁決，一頁卡必須降級作為 `SS_README` 的核心素材，無法取代整套標準。在 Phase-2 的硬性 DoD (Definition of Done / 完成定義) 中，每個子系統必須強制交付 Mini Core Four (MC4 / 迷你核心四件套)，若缺任一文件即視為實作包不完整並執行 BLOCK。MC4 包含以下產物：

* **SS\_README**：將一頁卡作為其核心內容。  
* **SS\_SRS (Subsystem Software Requirements Specification / 子系統軟體需求規格)**：採用 SS-Lite 輕量化模板，僅填寫最小可驗收需求與 Stopline (停止線)。  
* **SS\_ARCH (Subsystem Architecture / 子系統架構)**：採用 SS-Lite 輕量化模板，僅定義邊界、I/O 契約與依賴。  
* **SS\_DELIVER**：提供交付、驗收與回放 (Replay) 的入口命令與證據路徑。

### **5.2 SS\_SRS/SS\_ARCH SS-Lite 輕量化生成機制 (SS-Lite Auto-Generation) `[#sec5.2-sslite-generation]`**

為確保「單人+多代理」的最高開發速度，嚴禁人工撰寫長篇敘事文件。`SS_SRS` 與 `SS_ARCH` 必須強制採用 SS-Lite (輕量化) 模板，這些模板皆由 OMOC-MVU 工廠線自動化生成。所有生成的模板欄位必須由 Validator (驗證器) 與 GateRunner 進行機械檢查，且每次生成皆必須伴隨 Evidence (證據) 輸出。

SS-Lite 模板化交付的最小欄位集合如下表所示：

| 文件類型 | 模板欄位最小集 (Fields) | 驗收與防漂移機制 | 來源引用 |
| ----- | ----- | ----- | ----- |
| **SS\_SRS (SS-Lite)** | Purpose (目的)、Inputs (輸入)、Outputs (輸出)、Acceptance Criteria (驗收條件)、Stopline (停止線)、Owned Gates (所屬關卡)、Evidence Outputs (證據輸出路徑) | 必須由 Validator 機械檢查欄位完整性，缺項直接 FAIL。 |  |
| **SS\_ARCH (SS-Lite)** | Boundary (邊界)、Data Contracts (資料契約)、Dependencies (依賴)、Failure Modes (失效模式 / 降級參考) | 用於確認子系統邊界，避免越權操作或外部依賴漏洞。 |  |

**防漂移與第二套 SSOT 風險控制**：僅當子系統涉及「跨子系統契約 (Cross-subsystem Contracts)」或「不可逆架構決策 (Irreversible Architecture Decisions)」時，才允許追加 SS-Lite Delta 檔案 (如 Delta-SRS / Delta-ARCH 或 ADR / ICD)，此舉是為了避免在施工階段衍生出第二套 SSOT (Single Source of Truth / 單一真相來源)。

### **5.3 單檔三合一與 T0/T1 雙路由合約 (WP.Master Routing Contract) `[#sec5.3-wpmaster-routing]`**

除 Mini Core Four 之外，每個子系統的交付包內必須包含 `WP.Master`。`WP.Master` 被定義為「單檔三合一」的結構，其核心任務是將所有「How-to (操作細節)」固定於此檔案內，而非混入藍圖之中。

在 Phase-3 階段，`WP.Master` 必須固定 `T0/T1` 同檔雙路由合約 (T0/T1 Routing Contract)，並將 Gate binding (關卡綁定)、Front-Matter schema、Stopline (停止線)、以及 `evidence_ptr` (證據指標) 進行規格化鎖定。若子系統缺乏 `WP.Master`，該實作包將被判定為不完整，無法進入最終驗收閉環。

---

## **6.0 實戰工程執行步驟清單 (Execution Phases 0-5) `[#ch6-execution-phases]`**

為避免 Builder (建構者) 與 Product (產品) 發生循環依賴、導致 DoD (Definition of Done, 完成定義) 被稀釋，工程執行嚴禁「工廠/產品混改」，必須採用 Two-Lane Pipeline (雙工位隔離產線) 循序推進。

| 產線階段 | 產線代號 | 核心指責與範圍 | 目標產出 (驗收必看) | 來源引用 |
| ----- | ----- | ----- | ----- | ----- |
| **工廠線 (Factory Lane)** | Lane-F | 專責 OMOC-MVU (Minimum Viable Utility, 最小可行產線)，對應 WP-001\~WP-008。負責固化開發環境、CI 檢查合約與證據產生器。 | Generator (生成器)、Validator (驗證器)、CI Gates，以及 Package A\~D 準備就緒。 |  |
| **產品線 (Product Lane)** | Lane-P | 專責 SubP1-LITE+MVP，對應 Phase 0\~5。純粹消費工廠線產出的驗收器，批量生產 15 子系統交付物。 | 15× (MC4 \+ WP.Master) 模板化產出物，並全數通過機械驗收。 |  |

---

### **6.1 Lane-F 固化工廠 (WP-001\~WP-008 Setup) `[#sec6.1-lane-f-setup]`**

Lane-F 必須在產品線動工前完成固化，其核心任務是產出「可重現環境＋可重跑驗收」的最小工廠，步驟包含五項核心實作：

1. **建立 Repo Skeleton \+ Dev Container (儲存庫骨架與開發容器)**：  
   * 落實環境一致性，產出 `.devcontainer/devcontainer.json`、`Dockerfile`、一鍵啟動腳本 `make verify` 以及 `scripts/preflight.sh`，確保環境可重跑。  
2. **建立 Control Plane 最小版 (控制平面最小版)**：  
   * 產出 `gate_registry` (至少包含全局門檻 G0\~G2)、`TT schema` (TEST\_TRACK 狀態機)，以及 `Evidence schema v0` (證據結構 v0)。  
   * **規範要求**：此階段必須先採「加法相容」原則，避免版本互斥造成驗收中斷。  
3. **建立 CI Contract (持續整合合約)**：  
   * 設定 PR (Pull Request) 與 `merge_group` 雙路徑必須同名回報 required checks (必備檢查)。  
   * **風險控制**：強制配置 Always-Report (強制回報) 模式，禁止使用 path filter (路徑過濾) 造成 required workflow (必備工作流) 進入永久 Pending 狀態。  
4. **落地 Evidence Minset (最小證據集合)**：  
   * 必須產出 `verdict.json`、`checks_manifest.json`、`evidence_index`、`bundle` (+audit) 與 `secrets_scan`。  
   * **裁決標準**：上述產物缺一即觸發 FAIL\_CLOSED (失效關閉)。  
5. **OpenCode / Oh My OpenCode 插槽化 (Orchestrator Slotting)**：  
   * 落實 Deny-by-default (預設拒絕) 權限模型，`opencode.json` 必須執行 Schema Preflight 檢查，阻擋未知鍵 (unknown keys)。  
   * Oh My OpenCode 因頻繁釋出實驗性變更，僅能作 Quarantine (隔離區) 編排層，不得成為 SSOT (單一真相來源) 依賴。

---

### **6.2 Phase-0: 飛行前檢查與鎖定 (Preflight & Scope-Lock) `[#sec6.2-phase-0-preflight]`**

進入 Lane-P 產品線後，第一步必須立刻杜絕第二套 SSOT 的產生：

* **核心產物**：Inputs Manifest (輸入清單)、Authority Stack (權威堆疊) 引用表、Scope-Lock (範圍鎖定) 設定（強制鎖定為 staging-only，禁止操作層改寫藍圖）。  
* **驗收門檻**：確保 No-Anchor-No-Claim (無錨點無主張) 原則與 Fail-Closed 機械化裁決可被執行稽核。

---

### **6.3 Phase-1: 最小閉環與骨架 (Spine v0 Scaffold) `[#sec6.3-phase-1-spine-v0]`**

優先建立第一條可通行的驗收路徑，以證明工廠線可用：

* **核心產物**：建立 Spine scaffold (骨架) 以及 XQ/XS connectivity spike (連通性測試)。  
* **驗收門檻**：WSP v0 (Walking Skeleton Pack v0, 最小實作包) 的 scope-lock gates 必須先跑通，確保最小閉環成立，避免將 HOW (操作細節) 越權塞回藍圖文本。

---

### **6.4 Phase-2: 15× MC4 量產 (15x MC4 Production) `[#sec6.4-phase-2-mc4]`**

禁止人工撰寫 15 個子系統的長篇規格敘事，必須使用 OMOC-MVU 自動化生成 SS-Lite (輕量化) 模板，批量產出 15 份 Mini Core Four (MC4, 迷你核心四件套)。

| MC4 交付組件 | 規範與產出要求 | 來源引用 |
| ----- | ----- | ----- |
| **SS\_README** | 可將「一頁規格卡 (One-page spec card)」降級作為其核心內容與素材，但不可取代其餘 MC4 組件。 |  |
| **SS\_SRS** | Subsystem Software Requirements Specification。採用 SS-Lite 模板，僅填寫「最小可驗收需求」與「Stopline (停止線)」。 |  |
| **SS\_ARCH** | Subsystem Architecture。採用 SS-Lite 模板，僅定義「系統邊界」、「I/O 契約」與「外部依賴」。 |  |
| **SS\_DELIVER** | 定義「交付」、「驗收」與「回放入口命令」以及證據路徑。 |  |

* **防漂移裁決**：SS\_SRS/SS\_ARCH 必須由 validator (驗證器) 機械檢查欄位完整性，每次生成必帶 evidence (證據)，缺任一件即觸發 BLOCK。

---

### **6.5 Phase-3: 15× WP.Master 路由固定 (15x WP.Master Configuration) `[#sec6.5-phase-3-wpmaster]`**

將工作包執行細節與路由規則固定於單一檔案中，避免散落：

* **核心產物**：15 個子系統必須各自產出 `WP.Master` (單檔三合一)。  
* **合約內容**：必須包含 T0/T1 同檔雙路由規則，並將「操作步驟 (HOW)」固定於此。  
* **驗收掛載**：必須將 `gate_hooks` 與 `evidence_ptr` (證據指標) 寫入 WP.Master，確保與全局驗收夾具的綁定。

---

### **6.6 Phase-4: 驗收轉換命令 (GateKit \+ GateRunner) `[#sec6.6-phase-4-gatekit]`**

將前期建立的規範與門檻轉換為自動化執行的程式碼：

* **核心產物**：GateKit (門檻套件)、GateRunner (門檻執行器)。  
* **工程目標**：把「驗收」動作轉化為可跑命令 (Runnable Commands) 與 CI 內的 required checks。  
* **證據溯源**：必須確保 Evidence Triplet (證據三元組) / Bundle (證據包) / Audit (稽核日誌) 皆可生成、可重算 (recalculable)、可回放 (replayable)。

---

### **6.7 Phase-5: 收斂至單一驗收閉環 (Spine v1 Convergence) `[#sec6.7-phase-5-spine-v1]`**

最終封箱階段，確保所有子系統收束於單一裁決點：

* **核心產物**：15 子系統全數收束到單一 Acceptance Harness (驗收夾具) 的閉環中。  
* **驗收門檻**：彙整 `acceptance_status`，確認 `traceability matrix` (可追溯矩陣) 達到 15/15 的 coverage\_verdict=PASS，方可宣告交付完成。

#### **🚨 待修補系統缺口清單 (System Gap List)**

依據 Fail-Closed 原則，在執行上述 `6.1` 至 `6.6` 的 Evidence 產生與驗證階段，存在以下必須由內部修補的阻斷性缺口：

* **Evidence Triplet/Bundle 正式 Schema 缺失**：目前外部資料僅提供通用版 `{subject_sha, check_name, result_digest}`，缺乏內部正式版 Schema。若不在 Control Plane (控制平面) 補齊此 Schema 與 Validator，上述階段的「自動化機械驗收」將退化為低保真驗收（形同假綠），違反 Fail-Closed 守則。

---

## **7.0 機械化驗收門檻與衡量指標 (Mechanical Acceptance Metrics)**

`[#ch7-acceptance-metrics]`

本章節確立從文檔到實作的最終衡量指標，所有實作產出必須透過單一驗收夾具 (Acceptance Harness) 進行裁決。為避免人為判定帶來的漂移風險，驗收流程全面導入 Fail-Closed (預設阻斷) 機制，任何不符合全局 Gate (關卡) 或缺少 Evidence Minset (最小證據集合) 的交付物，一律予以阻斷並轉入 TT (TEST\_TRACK) 進行記錄，嚴禁口頭通過或人腦補齊。

### **7.1 全局 Gate：G0\~G3 關卡定義 (Global Gates G0-G3)**

`[#sec7.1-global-gates]`

在 Two-Lane (雙工位隔離產線) 架構下，無論是工廠線 (Lane-F) 或是產品線 (Lane-P)，皆必須通過以下四個全局機械化檢核關卡。若未達標，流程將立即阻斷。

| 關卡編號 | 關卡名稱 (中英對照) | 判定標準與涵蓋範圍 | 失敗阻斷與回退機制 (Fail-Closed) |
| ----- | ----- | ----- | ----- |
| **G0** | Preflight PASS(飛行前檢查通過) | 檢查工具版本、Schema (結構定義)、OpenCode `opencode.json` 是否包含 unknown keys (未知鍵)，並確認權限模式一致。 | 阻斷 Merge (合併)。出現 unknown keys 時直接觸發 Fail-Closed。 |
| **G1** | Required checks canonical(必備檢查合約化) | Required checks 名稱必須穩定，且必須在 PR (Pull Request) 與 `merge_group` 雙路徑中同名回報。 | 若未在雙路徑回報，或因 path/branch filter 導致跳過，判定為假綠卡死。若未啟用 MQ，則需 TT 記錄。 |
| **G2** | Evidence Minset(最小證據集合) | 必須產出最低標準之五件套產物 (詳見 7.2 節)，並通過靜態/安全掃描。 | 缺少任何一件產物，立即判定為 FAIL\_CLOSED。 |
| **G3** | Replayable(可重跑性) | 相同的 SHA (提交雜湊值) 重跑驗收流程時，產出的 digest (摘要值) 必須一致。 | 若不一致，觸發 TT (TEST\_TRACK) \+ TEMP\_CLOSED (暫時關閉)。 |

*(註：GitHub Merge Queue 相關的 G1 關卡，必須強制訂閱 `merge_group` 事件，否則 Required checks 在佇列中將不會觸發回報，進而導致卡死或虛假成功。)*

### **7.2 最小證據集合五件套產出 (Evidence Minset Outputs)**

`[#sec7.2-evidence-minset]`

為了使 SubP1 Dev 與 Ops 的交接點具備機械可驗證性，所有執行結果必須收斂為 Evidence Minset (最小證據集合)。開發端與維運端僅共享此證據介面，不共享執行細節。

| 產物名稱 | 角色定位與內容要求 | 依賴與裁決規則 |
| ----- | ----- | ----- |
| **verdict.json** | 最終裁決結果 (Fail-Closed)。 | 彙整全部檢查結果，若有阻斷項直接標記 FAIL\_CLOSED。 |
| **checks\_manifest.json** | 記錄 Required checks 命名契約、workflow triggers 及 `merge_group` 覆蓋證據 (包含 expected / observed / diff)。 | 用以比對實測回報與預期合約是否一致，防止跳過風險 (Skip Hazard)。 |
| **evidence\_index.md** | 證據檔案之可追溯索引。 | 提供所有證據檔案的映射路徑與雜湊驗證。 |
| **bundle (+ bundle\_audit)** | 包含測試軌跡、日誌與合規稽核結果的驗收包。 | WSP 採用 `acceptance_bundle/`，OMOC 採用 `evidence/_acceptance/<ts>/`。兩者共存時必須透過 `acceptance_manifest.json` 進行等價映射，避免人腦搬運。 |
| **secrets\_scan** | 機敏資料外洩掃描紀錄 (如 gitleaks/trufflehog 產出)。 | 必須符合 deny-by-default 原則，不得導出任何 Secrets。違者立即阻斷並回退快照。 |

*(註：目前 Evidence Triplet/Bundle 的正式 Schema 缺失，外部資料僅能提供通用版 `{subject_sha, check_name, result_digest}`，正式 Schema 詳細欄位來源中未提及。此缺口必須依據 Fail-Closed 原則，由內部 Control Plane 補齊 JSON Schema 與 Validator，否則驗證器僅能進行低保真驗收。)*

### **7.3 WP 工作包與 RIP 的降維裁決結構 (WP & RIP Matrix Restructuring)**

`[#sec7.3-wp-rip-restructure]`

為達到「單人+多代理開發+無商業交付」的最快開發速度，工作包 (WP) 與參考實作包 (RIP) 嚴禁被當作第二套「敘事文檔」或「文件憲法」進行開發，必須降維轉換為機器可讀的結構化產物。

* **WP (Work Packages) 降維為 Traceability Matrix (可追溯矩陣)**：

  * WP 不再是一份計畫書，而是降維成為 Control Plane Pack 內的 `gate_registry` (關卡註冊表) 以及 Subsystem Cards Pack (子系統規格卡) 中的 Traceability Matrix。  
  * 在實作 15 個子系統時，不需要各自產出 15 份獨立的 WP 敘事文檔；而是統一於單一矩陣中，將 15 個子系統綁定對應的 Gate (關卡)、DoD (完成定義) 與 `evidence_ptr` (證據指標)。  
  * **全域覆蓋指標**：在 Traceability Matrix 中，必須達成 15/15 的 `coverage_verdict=PASS` 或具備明確的 TT (TEST\_TRACK) 紀錄，嚴禁口頭通過。  
* **RIP (Reference Implementation Packs) 降維為 Installable Artifacts (可安裝工件)**：

  * RIP 不再是獨立的方案文件，而是被產品化為 Repo 內的可執行包 (例如 `.github/workflows/ci-gate.yml`、`scripts/verify.sh`、`pinning/actionlint/zizmor` 配置等)。  
  * **單一 Spine RIP 主線**：為避免效率自殺，MVP 階段僅實作 1 份 Spine RIP (單一 Pack)，收斂到同一套 Gate/Evidence 契約中，不拆分為 15 份子系統 RIP。唯有當引入新工具或新平台行為時，才增加對應的 RIP 子包。

---

## **8.0 風險控制與 Fail-Closed 回退策略 (Fail-Closed Risk Strategies)**

所有實作驗收與多代理協作（Multi-Agent Collaboration）路徑，必須針對技術、資料、合規與營運設立機械化偵測（Mechanical Detection）與回退機制（Fallback Mechanism）。系統嚴禁人工口頭放行（Verbal Approval），當偵測到不可證明、不可回放或出現漂移時，必須強制觸發 Fail-Closed（預設關閉）並轉入 TEST\_TRACK（測試追蹤）流程，阻斷後續的自動化管線。

### **8.1 技術風險：MQ 卡死與 OpenCode 漂移 (Tech: MQ & Drift)**

技術風險主要集中在 GitHub 平台行為的不可控性與 OpenCode 等工具鏈的 Schema（綱要）變更。必須依賴 CI（持續整合）合約與 Preflight（飛行前檢查）進行攔截。

| 風險類別 (Risk) | 偵測方式 (Detection) | 緩解策略 (Mitigation) | 備援與回退 (Fallback) |
| ----- | ----- | ----- | ----- |
| **MQ 卡死與假綠 (False Positive)** *(僅跑 PR 檢查，`merge_group` 未觸發，導致佇列卡死或狀態遺失)* | CI 是否對 `pull_request` 與 `merge_group` 同時產生同名 Check Runs（檢查紀錄）。 | Workflow 必須同時訂閱這兩個事件，並啟用 Always-Report（強制回報）防止條件略過。 | 若未達標，將 MQ 狀態設為 `TEMP_CLOSED`，退回 PR-only 分支保護，並立 TT 保留證據。 |
| **OpenCode / Oh-My 設定漂移** *(因 strict schema 遇到 unknown keys 直接啟動失敗，或實驗性功能引發例外)* | Preflight 腳本解析 `opencode.json`，檢查 unknown keys（未知鍵）與權限規則；若有異直接 Fail-Closed。 | 版本釘死（Pinning）；權限模型採用 deny-by-default（預設拒絕）；高風險工具設定 `ask/deny`。 | 降級僅使用 CLI（命令列），強制禁用 Oh-My 編排層與 SDK；將不可證明部分標註為 `UNAVAILABLE` 轉 TT。 |

*(系統缺口備註：針對 Evidence Triplet / Bundle 的正式 Schema，由於目前僅有通用版 `{subject_sha, check_name, result_digest}`，缺乏內部版控 Schema，導致 Validator（驗證器）可能落入低保真驗收；此缺口必須補齊，否則亦視同漂移風險。)*

### **8.2 資料風險：Secrets 外洩與 Lineage 斷裂 (Data: Secrets & Lineage)**

多代理協作與外部連接器（如 MCP，Model Context Protocol）會顯著放大敏感資料暴露與資料血緣（Lineage）中斷的機率。

| 風險類別 (Risk) | 偵測方式 (Detection) | 緩解策略 (Mitigation) | 備援與回退 (Fallback) |
| ----- | ----- | ----- | ----- |
| **Secrets/Token 外洩** *(代理越權導出密鑰)* | `bundle_audit` 掃描 forbidden patterns（禁用特徵）與明文憑證。 | MCP 預設 deny；Ops 規範明定僅允許輸出「存在性/指紋」證據，嚴禁導出真實 secrets。 | 立即 Revoke（撤銷）外洩 Token，並強制系統狀態回退至上一個 PASS（通過）快照。 |
| **Lineage（血緣）斷裂** *(Data Backbone 漂移導致 `evidence_ptr` 不可追溯)* | 檢驗 DB 寫入與 evidence\_ptr（證據指標）的映射關係是否斷鏈。 | DB zone registry 嚴守 A+B DB 方案裁決，所有資料庫寫入強制走 append-only（僅附加）模式。 | 退回原始儲存機制：只保留 Metadata 於 Git 中，Blob 實體檔放入 S3，利用 Git 追蹤指標變化。 |

### **8.3 合規/法規風險：XQ 越權下單阻斷 (Compliance: XQ Bypass Block)**

由於系統具有券商授權與真實交易副作用，XQ 必須作為 Sole Endpoint（唯一端點），嚴禁任何繞過機制的執行路徑。

| 風險類別 (Risk) | 偵測方式 (Detection) | 緩解策略 (Mitigation) | 備援與回退 (Fallback) |
| ----- | ----- | ----- | ----- |
| **繞過 XQ 下單 / 越權執行** *(代理或流程試圖觸發未授權交易)* | 機械掃描任何可能造成金流或交易副作用的路徑，檢查 `EXECUTE_DISABLED` 或 HITL（Human-in-the-Loop，人機協作）stopline（停止線）標記是否存在。 | 主路徑採用 No-API（無 API）策略；任何例外執行（Exception Gate）必須強制帶入 `evidence_ptr`。 | 觸發全局降級：將系統鎖定為 `READ_ONLY_UI`（唯讀介面）或 `RADAR_ONLY`（僅觀測），機械攔截所有交易指令。 |

### **8.4 營運風險：工廠與產品混改 (Ops: Factory/Product Mix)**

在 Two-Lane（雙軌產線）與單人多代理的結構中，職責邊界模糊（Scope-Bleed）會導致測試結果不可信任與責任無法歸因。

| 風險類別 (Risk) | 偵測方式 (Detection) | 緩解策略 (Mitigation) | 備援與回退 (Fallback) |
| ----- | ----- | ----- | ----- |
| **工廠與產品混改 (Scope Mix)** *(導致 Debug 變抓鬼、責任不可歸因)* | CI 檢查 PR（拉取請求）的檔案變更樹，是否同時修改了 Factory（如 verify / control-plane）與 Product（子系統實作）。 | 強制隔離產線：Lane-F（工廠線）專責 WP-001～008；Lane-P（產品線）純粹消費工廠產出，嚴禁逆向修改。 | 拒絕合併，要求將混改 PR 拆分；若惡意違反，直接觸發 TT 並施加 BLOCK（阻斷）。 |
| **RBWI 混改失控** *(Dev 與 Ops 規範與細節互相依賴污染)* | 追蹤 Runbook 變更紀錄，檢查是否在缺乏介面合約（Interface Contract）的情況下跨域修改。 | Dev 與 Ops 只能共享「介面與證據契約」，嚴禁共享執行細節；所有驗收收斂在單一 Acceptance Harness。 | 將衝突項目全部丟回 TT Registry 標註為 `TEMP_CLOSED`，嚴禁口頭協調或私下同意。 |

---

## **9.0 跨文檔對齊與升級清單 (Document Alignment & Upgrades) `[#ch9-document-alignment]`**

為實現「藍圖不合併、驗收閉環合併」的核心目標，專案中的跨文檔整合並非將所有文本揉合成單一文件，而是執行 Alignment Upgrade (對齊式升級)。升級的核心落點在於 Acceptance Harness (驗收夾具) 的輸出契約、Gate (關卡)、以及 Control Plane (控制平面) 的 Schema 對齊。

升級與否必須遵循 Fail-Closed (預設關閉) 的判斷基準，具體分類如表所示：

| 文件狀態/影響範圍 | 升級決策與做法 (Upgrade Action) | 來源引用 |
| ----- | ----- | ----- |
| **影響 Gate 裁決、Evidence 產出、TT Schema 或 required checks (必備檢查) 合約** | **必須升級 (Mandatory Upgrade)**：更新內部 Schema 欄位與驗收合約，確保裁決一致性。 |  |
| **僅提供概念、索引、邊界定義** | **對齊式升級 (Alignment-only Upgrade)**：更新映射關聯與版本指針，不改寫正文。 |  |
| **屬於計畫總表或狀態表 (如 WP 總表)** | **增量更新 (Incremental Update)**：僅更新映射狀態與欄位，嚴禁大改文件正文結構。 |  |

### **9.1 控制平面與 TT Schema 欄位鎖定 (Control Plane & TT Lock) `[#sec9.1-tt-schema-lock]`**

Control Plane (控制平面) 作為 SSOT Interface (單一真相來源介面)，必須與 OMOC 及 SubP1 進行以下三項強制對齊，否則會發生資料能產出、但裁決器無法一致裁決 (產生假 PASS 或漫延的 TEMP\_CLOSED) 的風險：

1. **Gate ID 命名與註冊表統一**：OMOC 的 `gate_registry.json` 必須能夠收錄 SubP1 的 Gate 集合，或建立等價映射至 SubP1 Gate 字典，確保出入口單一化。  
2. **TT Schema (TEST\_TRACK 測試追蹤) 最小欄位鎖定**：必須以控制平面為單一真相，統一 OMOC skills (產出 TT) 與 SubP1 Dev/Ops (消化 TT) 之間的欄位與 State Machine (狀態機)。若欄位不一致，將導致 TT 項目無法被自動化關閉。  
3. **Evidence Triplet 與 MinSet 兼容宣告**：控制平面必須正式宣告 OMOC 規範中的 root-level Evidence Min Set (包含 `bundle_audit`) 為 SubP1 `acceptance_bundle` 的最小超集 (Superset) 或建立等價映射，避免系統中並行兩套驗收包格式。*(註：正式的 JSON Schema 與 validator 必須於此處補齊)*。

### **9.2 WSP 目錄契約與等價映射 Adapter (WSP Directory Adapter) `[#sec9.2-wsp-directory-adapter]`**

WSP v0 (Walking Skeleton Pack，最小可驗收骨架) 與 OMOC 的產出目錄存在路徑合約的差異，這並非架構衝突，而是需要建立機械可讀的等價轉換機制。

* **目錄等價映射 (Directory Mapping)**：WSP 採用 `acceptance_bundle/` 路徑，而 OMOC 採用 `evidence/_acceptance/` 路徑。必須提供一個 Adapter (轉接器) 或產出 `acceptance_manifest.json` 檔案，在內部指向兩側路徑進行等價映射，以杜絕開發者透過人腦與手動搬運檔案。  
* **文件內容淨化 (Clean Spec)**：WSP/MVP Spine 文件必須明確宣告不承載 HOW (操作步驟)。在升級過程中，僅允許變更介面、版本、錨點與映射關聯，嚴禁將 Dev/Ops 的具體執行步驟塞回 Pack (合冊) 中。

### **9.3 OMOC\_施工skills 觀測與隔離升級 (OMOC Skills Upgrades) `[#sec9.3-omoc-skills-upgrades]`**

作為驗證與裁決的工具鏈載體，OMOC 施工 Skills 必須升級以涵蓋 SubP1 的動態防禦需求，核心對齊項目包含：

1. **GitHub Baseline 與 Checks Manifest 納管**：必須將 SubP1 Dev 環境中的 GitHub rulesets (規則集)、required checks (必備檢查) 的 Snapshot (快照) 納入 OMOC 的 `checks_manifest` 之中，以利進行 expected (預期)、observed (觀測) 與 diff (差異) 的比對。  
2. **Merge Queue 與 `merge_group` 實測**：GitHub 官方要求 Merge Queue 必須以 `merge_group` 事件觸發。Skills 內建的 Context Observe (上下文觀測) 與 Drift Guard (防漂移守衛) 必須將 `merge_group` 納入標準觀測種類，禁止僅觀測 `pull_request`，以防止假綠 (False Positive) 現象。  
3. **OpenCode 漂移隔離與插槽化 (Drift Isolation)**：針對 OpenCode 嚴格 Schema (Unknown keys 直接阻斷) 的已知風險，Skills 必須內建 Preflight (飛行前檢查)、Version Pinning (版號釘死)、Fallback (降級回退)、Quarantine (隔離區)，並在遭遇漂移時強制 Fail-Closed (預設關閉) 轉入 TT 處理。

### **9.4 WP 總表稽核匯流排映射 (WP Master Audit Bus Mapping) `[#sec9.4-wp-audit-mapping]`**

WP 總表定位為專案的 Audit Bus (總稽核匯流排) 以及 Gate-Traceability (關卡追溯) 的資料結構，並非長篇敘事文件。

* **SubP1 Gate 映射更新**：必須在 WP 總表中新增或更新對應 SubP1 Gate 的映射列。例如，將 SubP1 Dev/Ops 中關於 GitHub rulesets snapshot、Merge queue 覆蓋、Drift guard 的關鍵 Gate，掛載至 WP-006、WP-010、WP-011 等與 required checks / MQ 相關的工作包上，確保審查者可透過單一匯流排追溯至 Evidence Bundle (證據包)。  
* **Doc Inventory 版本指針更新 (Pointer Update)**：WP 總表的 Doc Inventory (文件清單) 中，SHA256 雜湊值僅作為 SUPPORT-only (僅供支援)。系統規範升級必須強制使用 Anchor (錨點)、Role (角色)、以及 Claimed\_version (宣告版本) 來更新指針，嚴禁單純把 Hash 值當作不可變更的規範依據。

---

## **10.0 待修補系統缺口清單 (System Gap List)**

`[#ch10-system-gap-list]`

為落實系統治理，本章節匯整當前架構中尚缺乏完整定義且影響機械裁決的項目。依據 Fail-Closed（預設關閉）治理守則，凡屬無法透過內部機制與現有 SSOT（Single Source of Truth，單一真相來源）補齊的規範與 Schema，一律強制編列入本缺口清單。這些缺口屬於「不補齊即無法視為落地」的關鍵阻礙，必須透過後續的工程迭代予以補強，嚴禁透過人腦推測或外部不具權威性之資料進行填補。

### **10.1 Evidence Triplet/Bundle 正式 Schema 缺失補齊 (Triplet Schema Gap)**

`[#sec10.1-triplet-schema-gap]`

在目前的架構體系中，Evidence Triplet / Bundle（證據三元組 / 證據包）的內部「正式 Schema（結構定義）」存在明確缺失。這被視為能否達成「機械驗收與回放」的核心系統漏洞。

外部資料與開源工具僅能提供通用版之資料結構 `{subject_sha, check_name, result_digest}`，無法替本專案定義具備內部 SSOT 權威的 Schema。若不將此缺口補齊，系統將無法建立可供機械驗收的 Evidence Chain（證據鏈），導致驗證器（validator）僅能進行低保真驗收（Low-fidelity validation）。

針對此系統缺口，必須執行以下具體的工程對策與風險控制：

| 處置維度 | 規範要求與執行細節 | 來源引用 |
| ----- | ----- | ----- |
| **工程落地要求 (Engineering Action)** | 必須在 Package B (Control Plane / 控制平面包) 中明確定義 versioned JSON Schema（受版本控制的 JSON 結構）與專屬的 validator（驗證器）。 |  |
| **變更管制 (Change Control)** | 針對該 Schema 的任何後續變更，必須強制產出對應的 ADR（Architecture Decision Record，架構決策日誌）。 |  |
| **風險偵測 (Risk Detection)** | 當前系統易發生「看似有證據，實際不可機械裁決」的假自動驗收。驗證器必須主動查驗 Triplet/Bundle 的 `schema_version`（結構版本）與欄位完整性。 |  |
| **緩解與備援 (Mitigation & Fallback)** | 在正式 Schema 尚未補齊之前，系統僅能先使用通用版格式，並必須立即開立 TT（TEST\_TRACK，測試追蹤）以留下紀錄。 |  |
| **裁決阻斷 (Verdict Blocking)** | 對於因 Schema 缺失而無法被機械證明的項目，必須標記為 `UNAVAILABLE` 並強制轉入 `TEST_TRACK`。此類項目不阻塞全域驗收，但絕對不可被判定為 `PASS`，同時嚴禁任何形式的「口頭通過」。 |  |

---

END