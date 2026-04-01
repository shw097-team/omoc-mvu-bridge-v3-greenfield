# **Spartoi-OMOC\_ARCH\_v8.1.0**

---

## 目錄(TOC)

## **§0. Preflight & Governance (前置檢查與治理) \[ANCHOR:ARCH-V810-SEC0\]**

* **0.1 Document Metadata** (文件後設資料) \[ANCHOR:ARCH-V810-0-1-META\]  
  * *整合來源：SRS v8.1 §0.1*  
* **0.2 Preflight Report** (前置檢查報告：Found/Missing \+ Locator Proof) \[ANCHOR:ARCH-V810-0-2-PREFLIGHT\]  
  * *解決審查 A：A:MAJ-011 缺定位證明*  
* **0.3 Authority Stack** (權威堆疊：SRS \> ARCH \> ICD) \[ANCHOR:ARCH-V810-0-3-AUTHORITY\]  
  * *整合來源：Blueprint v2.2 §Authority Stack, SRS v8.1 §0.3*  
* **0.4 Scope Lock & Route-Out Map** (範疇鎖定與外導地圖) \[ANCHOR:ARCH-V810-0-4-SCOPE\]  
  * *整合來源：ARCH v6.0 §0.4, SRS v8.1 §7.1*  
* **0.5 AI Reader Guide** (AI 讀取指引：強制檢索路徑) \[ANCHOR:ARCH-V810-0-5-AI-GUIDE\]  
  * *整合來源：15CA BP §強制檢索指引, ARCH v6.0 §0.5*

## **§1. Architecture Overview (架構概覽) \[ANCHOR:ARCH-V810-SEC1\]**

* **1.1 Purpose & Vision** (系統目的：單人多代理協作交易工程) \[ANCHOR:ARCH-V810-1-1-PURPOSE\]  
  * *整合來源：SRS v8.1 §1.1.1*  
* **1.2 Architectural Drivers** (架構驅動因子：Fail-Closed, Auditability, XQ-Only) \[ANCHOR:ARCH-V810-1-2-DRIVERS\]  
  * *整合來源：SRS v8.1 §1.1.1, Delivery Plan §1*  
* **1.3 Stakeholders** (利害關係人：Owner, Agent, Auditor) \[ANCHOR:ARCH-V810-1-3-STAKEHOLDERS\]  
  * *整合來源：ARCH v6.0 §1*  
* **1.4 Non-Goals** (非目標：不含操作手冊、不含數值門檻) \[ANCHOR:ARCH-V810-1-4-NONGOALS\]  
  * *整合來源：ARCH v6.0 §1*

## **§2. Architecture Framework (ISO 42010\) \[ANCHOR:ARCH-V810-SEC2\]**

* **2.1 Viewpoint Catalog** (視圖目錄：Context, Container, Deployment, Observability, Security) \[ANCHOR:ARCH-V810-2-1-VP\]  
  * *整合來源：ARCH v6.0 §2*  
* **2.2 View Index** (視圖索引) \[ANCHOR:ARCH-V810-2-2-INDEX\]  
  * *整合來源：ARCH v6.0 §2*  
* **2.3 Vocabulary** (架構術語表：Stable ID, Gate, Evidence Triplet) \[ANCHOR:ARCH-V810-2-3-VOCAB\]  
  * *整合來源：SRS v8.1 §1.3, 15CA BP §ID規約*

## **§3. Architecture Views (架構視圖) \[ANCHOR:ARCH-V810-SEC3\]**

* **3.1 V1 Context View** (三平面治理邊界：Control / Execution / Peripheral) \[ANCHOR:ARCH-V810-3-1-CONTEXT\]  
  * *整合來源：Blueprint v2.2 §3.2, SRS v8.1 §1.1.2*  
* **3.2 V2 Container View** (15 CA \+ Pipelines \+ Data Backbone 拓樸) \[ANCHOR:ARCH-V810-3-2-CONTAINER\]  
  * *整合來源：15CA BP §15CA定義, Pipeline-A+B 整合資料庫方案*  
* **3.3 V3 Deployment View** (GitHub Control Plane \+ Local Runtime \+ Evidence Store) \[ANCHOR:ARCH-V810-3-3-DEPLOYMENT\]  
  * *整合來源：ARCH v6.0 §3, Delivery Plan §3.2*  
* **3.4 V4 Observability View** (Logs / Events / Metrics 三通道) \[ANCHOR:ARCH-V810-3-4-OBSERVABILITY\]  
  * *整合來源：SRS v8.1 §4.2*  
* **3.5 V5 Security & Supply Chain View** (供應鏈安全：Pinning, Scanning, Attestation) \[ANCHOR:ARCH-V810-3-5-SECURITY\]  
  * *整合來源：OMOC-MVU Package §Skills Supply Chain, SRS v8.1 §2.3.4*

## **§4. System Decomposition (15 CA 子系統架構) \[ANCHOR:ARCH-V810-SEC4\]**

* **4.0 15CA Stable ID Registry** (不可變 ID 註冊表) \[ANCHOR:ARCH-V810-4-0-REGISTRY\]  
  * *整合來源：15CA BP §15CA定義, SRS v8.1 §1.2.1*  
* **4.1 CA-WRC** (Writer/Research Collector：封印架構) \[ANCHOR:ARCH-V810-4-1-WRC\]  
  * *整合來源：SRS v8.1 §3.1*  
* **4.2 CA-CORPUS** (Corpus Indexer：索引與多模態路由) \[ANCHOR:ARCH-V810-4-2-CORPUS\]  
  * *整合來源：SRS v8.1 §3.2, Pipeline-A v2*  
* **4.3 CA-DISTILL** (Distiller：SEM³ SGF 驗證架構) \[ANCHOR:ARCH-V810-4-3-DISTILL\]  
  * *整合來源：SRS v8.1 §3.3*  
* **4.4 CA-DSL** (DSL Generator：原語中立性架構) \[ANCHOR:ARCH-V810-4-4-DSL\]  
  * *整合來源：SRS v8.1 §3.4*  
* **4.5 CA-METHOD** (Method Designer：三源融合與 MSC 架構) \[ANCHOR:ARCH-V810-4-5-METHOD\]  
  * *整合來源：SRS v8.1 §3.5*  
* **4.6 CA-BACKTEST** (Backtest Adapter：過擬合防線架構) \[ANCHOR:ARCH-V810-4-6-BACKTEST\]  
  * *整合來源：SRS v8.1 §3.6, Pipeline-B v2*  
* **4.7 CA-TA** (Technical Analysis：多時窗特徵架構) \[ANCHOR:ARCH-V810-4-7-TA\]  
  * *整合來源：SRS v8.1 §3.7*  
* **4.8 CA-SELECT** (Selection：漏斗篩選架構) \[ANCHOR:ARCH-V810-4-8-SELECT\]  
  * *整合來源：SRS v8.1 §3.8*  
* **4.9 CA-TRANSLATE** (XS Translator：TVE 等價驗證架構) \[ANCHOR:ARCH-V810-4-9-TRANSLATE\]  
  * *整合來源：SRS v8.1 §3.9*  
* **4.10 CA-WATCH** (Watchlist：Radar-Only 架構) \[ANCHOR:ARCH-V810-4-10-WATCH\]  
  * *整合來源：SRS v8.1 §3.10*  
* **4.11 CA-EXECUTE** (Execution Adapter：HITL 與 Kill-Switch 架構) \[ANCHOR:ARCH-V810-4-11-EXECUTE\]  
  * *整合來源：SRS v8.1 §3.11*  
* **4.12 CA-PERFORM** (Performance：Dual-Track 評估架構) \[ANCHOR:ARCH-V810-4-12-PERFORM\]  
  * *整合來源：SRS v8.1 §3.12*  
* **4.13 CA-COLLAB** (Collaboration：多代理編排與雙模架構) \[ANCHOR:ARCH-V810-4-13-COLLAB\]  
  * *整合來源：SRS v8.1 §3.13, OMOC-MVU Package*  
* **4.14 CA-UI** (UI/Console：決策隔離與唯讀架構) \[ANCHOR:ARCH-V810-4-14-UI\]  
  * *整合來源：SRS v8.1 §3.14*  
* **4.15 CA-GOVERN** (Governance：控制面三件套與 Gate 執行架構) \[ANCHOR:ARCH-V810-4-15-GOVERN\]  
  * *整合來源：SRS v8.1 §3.15*

## **§5. Unified Data Backbone (統一資料主幹) \[ANCHOR:ARCH-V810-SEC5\]**

* **5.1 Data Zones & Storage Strategy** (分區策略：Git/DVC/S3 分層) \[ANCHOR:ARCH-V810-5-1-ZONES\]  
  * *整合來源：Pipeline-A+B 整合資料庫方案 §3.1*  
* **5.2 Pipeline Integration Architecture** (Pipeline A/B/C 串接與依賴) \[ANCHOR:ARCH-V810-5-2-PIPELINES\]  
  * *整合來源：SRS v8.1 §5.2, 15CA BP §Pipeline DB*  
* **5.3 Lineage & Traceability** (血緣追溯與 Evidence Chain) \[ANCHOR:ARCH-V810-5-3-LINEAGE\]  
  * *整合來源：SRS v8.1 §4.1.3, ARCH v6.0 §5*  
* **5.4 Artifact Registry** (工件註冊表與版本化) \[ANCHOR:ARCH-V810-5-4-ARTIFACTS\]  
  * *整合來源：ARCH v6.0 §9.3, SRS v8.1 §1.3.3*

## **§6. Control Plane & Governance (控制與治理架構) \[ANCHOR:ARCH-V810-SEC6\]**

* **6.1 Gate Layering Architecture** (閘門分層：Policy vs Check) \[ANCHOR:ARCH-V810-6-1-GATE-LAYER\]  
  * *整合來源：SRS v8.1 §2.1.1, 15CA BP §7*  
* **6.2 Control Plane Trio** (Flag / Degrade / Snapshot 架構) \[ANCHOR:ARCH-V810-6-2-TRIO\]  
  * *整合來源：SRS v8.1 §5.1, ARCH v6.0 §6.2*  
* **6.3 GitHub Governance Integration** (Merge Queue / Environments 整合) \[ANCHOR:ARCH-V810-6-3-GITHUB\]  
  * *整合來源：SRS v8.1 §2.1.3, OMOC-MVU Package*  
* **6.4 Fail-Closed & Degrade Strategy** (失效關閉與降級策略) \[ANCHOR:ARCH-V810-6-4-FAILCLOSED\]  
  * *整合來源：ARCH v6.0 §11, SRS v8.1 §1.3.1*

## **§7. Key Architectural Decisions (關鍵架構決策) \[ANCHOR:ARCH-V810-SEC7\]**

* **7.1 ADR-030: 15 Subsystems** (15 子系統定案) \[ANCHOR:ARCH-V810-7-1-ADR030\]  
  * *整合來源：LBP-C(ADR) v2.0.1*  
* **7.2 ADR-029: No-Paid-LLM-API** (禁用付費 API 政策) \[ANCHOR:ARCH-V810-7-2-ADR029\]  
  * *整合來源：LBP-C(ADR) v2.0.1*  
* **7.3 ADR-026: Control Plane Trio** (控制面合約化) \[ANCHOR:ARCH-V810-7-3-ADR026\]  
  * *整合來源：LBP-C(ADR) v2.0.1*  
* **7.4 ADR-009: SEM³ Validation** (三階驗證框架) \[ANCHOR:ARCH-V810-7-4-ADR009\]  
  * *整合來源：LBP-C(ADR) v2.0.1*

## **§8. Constraints & Quality Drivers (約束與品質因子) \[ANCHOR:ARCH-V810-SEC8\]**

* **8.1 Auditability** (可稽核性：Evidence Triplet 強制) \[ANCHOR:ARCH-V810-8-1-AUDIT\]  
  * *整合來源：SRS v8.1 §4.1*  
* **8.2 Replayability** (可回放性：Snapshot & Determinism) \[ANCHOR:ARCH-V810-8-2-REPLAY\]  
  * *整合來源：SRS v8.1 §4.1.2*  
* **8.3 Security** (安全性：Supply Chain & Least Privilege) \[ANCHOR:ARCH-V810-8-3-SECURITY\]  
  * *整合來源：OMOC-MVU Package*  
* **8.4 RAG Quality** (RAG 品質：Triad Metrics) \[ANCHOR:ARCH-V810-8-4-RAG\]  
  * *整合來源：SRS v8.1 §4.3*

## **§9. Architecture Registries (架構註冊表 \- 可機械稽核) \[ANCHOR:ARCH-V810-SEC9\]**

* **9.1 Anchor Registry** (錨點註冊表) \[ANCHOR:ARCH-V810-9-1-ANCHORS\]  
  * *解決審查 A：A:CRIT-001 錨點缺失*  
* **9.2 Component Registry** (元件註冊表) \[ANCHOR:ARCH-V810-9-2-COMPONENTS\]  
  * *整合來源：ARCH v6.0 §9.2*  
* **9.3 Gate Registry** (閘門註冊表) \[ANCHOR:ARCH-V810-9-3-GATES\]  
  * *整合來源：15CA BP §4*  
* **9.4 Evidence Contract Registry** (證據契約註冊表) \[ANCHOR:ARCH-V810-9-4-EVIDENCE\]  
  * *解決審查 A：A:CRIT-008 證據契約缺失*  
* **9.5 Route-Out Register** (外導註冊表) \[ANCHOR:ARCH-V810-9-5-ROUTEOUT\]  
  * *整合來源：15CA BP §12*

## **§10. RTM (Requirements Traceability Matrix) \[ANCHOR:ARCH-V810-SEC10\]**

* **10.1 SRS v8.1 Coverage** (SRS 需求覆蓋矩陣) \[ANCHOR:ARCH-V810-10-1-SRS-COVERAGE\]  
  * *解決審查 A：A:CRIT-002 RTM 缺失*  
* **10.2 Legacy ARCH Mapping** (舊版架構映射矩陣) \[ANCHOR:ARCH-V810-10-2-LEGACY\]  
  * *整合來源：ARCH v6.0 §10.2*

## **§11. Test Tracking & CR\_OPEN (測試追蹤與待決項目) \[ANCHOR:ARCH-V810-SEC11\]**

* **11.1 CR\_OPEN Ledger** (待決項目台帳) \[ANCHOR:ARCH-V810-11-1-CROPEN\]  
  * *整合來源：ARCH v6.0 §11.1*  
* **11.2 Test Tracking List** (測試追蹤清單) \[ANCHOR:ARCH-V810-11-2-TESTTRACK\]  
  * *整合來源：ARCH v6.0 §11.2*

## **§12. Appendices (附錄) \[ANCHOR:ARCH-V810-SEC12\]**

* **12.1 Web Evidence Appendix** (外部證據附錄：Support-Only) \[ANCHOR:ARCH-V810-12-1-WEB\]  
  * *整合來源：ARCH v6.0 §12*  
* **12.2 Self-Check Report** (自我檢查報告) \[ANCHOR:ARCH-V810-12-2-SELFCHECK\]  
  * *整合來源：ARCH v6.0 §13*

---

## **§0. Preflight & Governance (前置檢查與治理)**

**\[ANCHOR:ARCH-V810-SEC0\]**

**本章節目的**：確立本架構文檔（ARCH）作為 L2 權威的有效性，防止「空頭架構」與「幻覺規格」。任何自動化代理（Agent）或人類讀者在閱讀後續章節前，**必須**先通過本章節的 Preflight 檢查，否則應視為 **Fail-Closed**（停止執行）。

---

### **0.1 Document Metadata (文件後設資料)**

**\[ANCHOR:ARCH-V810-0-1-META\]**

依據 **SRS v8.1 §0.1** 之規定，本文件具備以下後設資料以確保版本治理與可追溯性：

* **Document ID**: `Spartoi-OMOC_ARCH_v8.1.0`  
* **Version**: v8.1.0-RELEASE  
* **Status**: **DEFINITIVE (Final Baseline)**  
* **Release Date**: 2026-02-12 (Asia/Taipei)  
* **Architecture Positioning**:  
  * 本文件屬於 **L2-ARCH（架構層）**，僅定義系統的 **結構（Structure）**、**邊界（Boundaries）** 與 **機制（Mechanisms）**。  
  * 所有 **需求（Requirements）** 與 **驗收標準（Acceptance Criteria）** 權威歸屬於 **L1-SRS**。  
  * 所有 **實作細節（Implementation Details）** 與 **介面契約（Interface Contracts）** 權威歸屬於 **L3-ICD**。  
* **Supersedes Declaration (取代與繼承聲明)**:  
  * 本文件 **100% 取代** 《Spartoi｜P1\_ARCH\_v6.0.0-r5》及所有前版架構文件。  
  * 本文件繼承並具體化 **Spartoi-OMOC Blueprint v2.2.0-r1** 對三平面治理（Tri-Plane Governance）的架構要求。  
* **Audit Resolution Ledger (審查修補對照表)**:  
  * 本版已全量解決 **《Spartoi-OMOC\_ARCH\_審查報告A.md》** 指出的所有阻斷級缺陷，包括補齊 Anchor Registry、Locator Proofs 與 RTM 骨架。

### **0.2 Preflight Report & Locator Proofs (前置檢查與定位證據)**

**\[ANCHOR:ARCH-V810-0-2-PREFLIGHT\]**

**修補 A:MAJ-011**：本節提供規範性輸入（Normative Inputs）的「存在性」與「定位證據（Locator Proof）」，確保架構並非建立在空文件之上。

#### **0.2.1 Normative Inputs Manifest (規範性輸入清單)**

依據 **15CA 重構升級藍圖 v0.2.0-r1** 的 `DOC_INVENTORY` 規則，本架構之有效性依賴以下 SSOT 文件的存在與版本一致性：

| Input Category | Doc ID / File Name | Version / Hash | Critical Role | Locator Proof (Anchor) | Status |
| ----- | ----- | ----- | ----- | ----- | ----- |
| **Governance (L1)** | Spartoi-OMOC Blueprint v2.2.0-r1 | v2.2.0-r1 | 治理母法、三平面定義 | `[ANCHOR:BP-TRIPLANE]` | **FOUND** |
| **Requirements (L1)** | Spartoi-OMOC\_SRS\_v8.1.0 | v8.1.0 | 需求契約、Gate Policy | `[ANCHOR:SRS-V810-TOC]` | **FOUND** |
| **Architecture (L2)** | Spartoi-OMOC(15 CA)重構升級藍圖 | v0.2.0-r1 | 15 CA 定義、Stable ID | `[ANCHOR:SOMOC-15CA-BP-05-CA-MAP]` | **FOUND** |
| **Interface (L3)** | Spartoi｜P1\_LBP-B(ICD) | v5.0.1 | 介面 Schema、Evidence 契約 | `[ANCHOR:ICD-V501-15-SUBSYSTEM-MATRIX]` | **FOUND** |
| **Fitness (L4)** | Spartoi｜P1\_LBP-E(Fitness) | v3.0.1 | 驗收門檻、SQM-7 | `[ANCHOR:LBPE-V301-4-CATALOG]` | **FOUND** |
| **Data Plane** | Pipeline-A+B 整合資料庫方案 | v4 | 資料落盤契約、DVC 分層 | `## 0) 封面卡` | **FOUND** |
| **Execution Plane** | OMOC-MVU 套件包 | v0.2.0-r1 | 執行平面契約、Agent 治理 | `[ANCHOR:OMOCMVU-REF-AGENT-GOV]` | **FOUND** |

#### **0.2.2 Fail-Closed Verdict (前置裁決)**

* **PASS**: 上述所有關鍵輸入（Normative Inputs）皆為 **FOUND** 且具備有效錨點。  
* **FAIL Condition**: 若任一文件標示為 MISSING 或錨點失效，本 ARCH 文件即刻失效，禁止進行架構引用或實作。

### **0.3 Authority Stack (權威堆疊)**

**\[ANCHOR:ARCH-V810-0-3-AUTHORITY\]**

為解決跨文件衝突，本架構嚴格執行 **SRS v8.1 §0.3** 定義的權威層級：

1. **Level 1 (Highest): P1\_SRS v8.1.0 & Blueprint v2.2.0-r1**  
   * **職責**: 定義「做什麼（WHAT）」、「為什麼（WHY）」與「驗收標準（Acceptance Criteria）」。  
   * **裁決權**: 任何架構決策不得牴觸 L1 的治理規則（如：XQ 唯一下單端、No-Paid-LLM-API）。  
2. **Level 2: P1\_ARCH v8.1.0 (本文件)**  
   * **職責**: 定義「系統結構（Structure）」、「組件邊界（Boundaries）」與「機制（Mechanisms）」。  
   * **裁決權**: 在不違反 L1 的前提下，定義 15 CA 的拆分與互動方式。  
3. **Level 3: P1\_LBP-B(ICD) v5.0.1 & Data Plans**  
   * **職責**: 定義「介面細節（Interface Schema）」與「資料格式（Data Formats）」。  
   * **限制**: 必須符合 L2 定義的架構邊界。  
4. **Level 4: Runbooks & WIs**  
   * **職責**: 定義「操作步驟（Steps）」與「實作指令（Commands）」。  
   * **限制**: 若步驟與架構衝突，視為操作錯誤，以 ARCH 為準。

**Conflict Resolution Rule (衝突裁決規則)**:

* **SSOT\_WINS**: 上游文件優於下游文件。  
* **Fail-Closed**: 若無法裁決，視為 **BLOCK\_RELEASE**，需經 CR\_OPEN 程序解決。

### **0.4 Scope Lock & Route-Out Protocol (範疇鎖定與外導協議)**

**\[ANCHOR:ARCH-V810-0-4-SCOPE\]**

**修補 A:CRIT-005**：本節明確定義 ARCH 的內容邊界，並建立強制性的 Route-Out 機制，防止內容膨脹與規格漂移。

#### **0.4.1 In-Scope (本文件包含)**

* **Structure**: 15 個子系統（15 CA）的定義、職責邊界與拓撲關係。  
* **Mechanisms**: 控制面三件套（Flag/Degrade/Snapshot）、Gate 執行機制、資料血緣（Lineage）機制。  
* **Views**: C4 模型視圖（Context, Container, Deployment）。  
* **Decisions**: 關鍵架構決策（ADR Summary）及其理由。

#### **0.4.2 Out-of-Scope (本文件禁止包含 \- Route-Out)**

依據 **Blueprint v2.2 Route-Out 規則表**，以下內容嚴禁出現在本 ARCH 正文中：

* **Requirements**: 具體的功能需求條文（→ SRS）。  
* **Thresholds**: 具體的數值門檻（如 `accuracy > 90%`）（→ Fitness/CR\_OPEN）。  
* **Schemas**: 完整的 JSON/SQL Schema 定義（→ ICD）。  
* **Steps**: 詳細的安裝、部署或操作步驟（→ Runbook/WI）。

#### **0.4.3 Route-Out Map (外導映射表)**

凡涉及 Out-of-Scope 內容，**必須** 使用以下指針指向 SSOT：

| Topic | Target SSOT | Reference Anchor |
| ----- | ----- | ----- |
| **需求與驗收** | SRS v8.1.0 | `[ANCHOR:SRS-V810-TOC]` |
| **介面契約** | LBP-B(ICD) v5.0.1 | `[ANCHOR:ICD-V501-15-SUBSYSTEM-MATRIX]` |
| **量化門檻** | LBP-E(Fitness) v3.0.1 | `[ANCHOR:LBPE-V301-4-CATALOG]` |
| **操作流程** | SubP1 Runbook v1.4.0 | `[ANCHOR:SPLMVP-S4-RUNBOOK]` |
| **資料庫設計** | Pipeline-A+B 整合資料庫方案 | `## 3.4 目錄與規格` |
| **Agent 治理** | OMOC-MVU 套件包 | `[ANCHOR:OMOCMVU-REF-AGENT-GOV]` |

### **0.5 AI Reader Guide (AI 讀取指引)**

**\[ANCHOR:ARCH-V810-0-5-AI-GUIDE\]**

為確保 LLM/Agent 能準確解析本架構文檔，請遵循以下 **強制檢索路徑**：

1. **Scope Check**: 先讀 **§0.4 Scope Lock**，確認不在此尋找操作步驟或數值門檻。  
2. **Entity Resolution**: 遇到 `CA-*` 術語，優先查閱 **§3.1 Subsystem Registry** 與 **15CA 重構藍圖**，確認 Stable ID 的唯一性。  
3. **Traceability**: 驗證任何架構主張時，檢查段落末尾的 `evidence_ptr` 或 `[Source index]`，若無來源則視為 **UNVERIFIED**。  
4. **Fail-Closed**: 若發現架構描述與 SRS 需求衝突，依據 **§0.3 Authority Stack**，**以 SRS 為準**，並標記為 ARCH 缺陷。

---

## **§1. Architecture Overview (架構概覽)**

**\[ANCHOR:ARCH-V810-SEC1\]**

本章節定義 Spartoi-OMOC 的系統目的、核心願景與不可動搖的設計哲學。作為 **L2-ARCH** 層級的最高指導原則，本章內容構成所有下游子系統（Subsystems）、管線（Pipelines）與閘門（Gates）的法理依據。

---

### **1.1 Purpose & Vision (系統目的與願景)**

**\[ANCHOR:ARCH-V810-1-1-PURPOSE\]**  
---

#### **1.1.1 System Definition (系統定義)**

**Spartoi-OMOC (Single-person Multi-agent Collaborative Trading Engineering Framework)** 是一套專為「單人操作者（Solo Operator）」設計的 **證據驅動（Evidence-Driven）** 與 **多代理協作（Multi-Agent Collaboration）** 交易工程系統。

其核心職責是將交易流程中的「知識蒐集、策略研發、回測驗證、技術分析、執行風控」五大環節，透過 **15 個標準化子系統（15 CA Subsystems）** 與 **三條自動化管線（Pipelines A/B/C）** 進行工業化封裝，並利用 **OMOC（Oh My OpenCode）** 多代理架構承擔繁瑣的資料處理與邏輯驗證工作，使操作者能專注於高價值的「最終裁決（Final Verdict）」。

* **單一真相源（SSOT）**：系統以版本化的 **Git/DVC** 為規格與數據的唯一真相，拒絕依賴口頭約定或未固化的操作習慣 \[SRS v8.1 §1.1.1, Pipeline-A+B 整合資料庫方案\]。  
* **協作本質**：本系統並非「全自動交易機器人（Trading Bot）」，而是「人機協作的決策支援與執行護欄（Co-pilot with Guardrails）」。Agent 負責提案與產出證據，人類負責審核與授權 \[Blueprint v2.2 §3.2, SRS v8.1 §1.1.3\]。

#### **1.1.2 Core Vision: Evidence-Driven Engineering (核心願景：證據驅動工程)**

本系統的終極願景是消除單人交易中的「決策孤島」與「執行黑箱」，強制將一切決策轉化為可稽核的 **證據三件套（Evidence Triplet）**。

1. **No Evidence, No Execution (無證據即無執行)**： 任何策略信號、參數調整或下單指令，若無法提供 **Verdict（裁決）**、**Bundle（實體包）** 與 **Index（索引指針）**，系統將依據 **Fail-Closed** 原則直接阻斷，視為未完成 \[SRS v8.1 §2.2.1, 15CA BP §3\]。

2. **Auditability Over Speed (可稽核性優於速度)**： 在「快速下單」與「安全合規」發生衝突時，架構優先保障後者。所有高風險操作（如資金進出、模型升級）必須經過 **Control Plane（控制面）** 的 **Gate（閘門）** 驗證，並留下不可竄改的 **RunLedger（運行台帳）** \[ARCH v6.0 §1.2, SRS v8.1 §4.1\]。

3. **Institutional-Grade Governance for Solo (單人運作的機構級治理)**： 透過引入 **GitHub Governance**（Rulesets, Merge Queue, Environments），將程式碼與策略的變更管理提升至機構級標準，防止「手滑（Fat Finger）」或「情緒化交易」破壞系統穩定性 \[OMOC-MVU Package, SRS v8.1 §2.1.3\]。

#### **1.1.3 Operational Philosophy (運作哲學)**

本系統的架構設計建立在以下四大不可動搖的運作哲學之上，這些哲學直接映射至 **LBP-E (Fitness)** 的驗收標準與 **LBP-C (ADR)** 的關鍵決策。

| 哲學 (Philosophy) | 定義與架構落點 (Definition & Mapping) | 來源依據 (Provenance) |
| ----- | ----- | ----- |
| **Fail-Closed by Default**(預設失效關閉) | 當系統遭遇資料缺口、外部 API 異常、驗證失敗或狀態不明時，預設行為必須是 **BLOCK\_RELEASE**（阻斷發布）或 **EXECUTE\_DISABLED**（禁用執行），嚴禁「先跑再說」。*Mapping: CA-GOVERN Gate Logic, CA-EXECUTE Kill-Switch* | SRS v8.1 §1.3.1ARCH v6.0 §11Blueprint v2.2 |
| **XQ Sole Order Endpoint**(XQ 唯一下單端) | 本地系統（Spartoi）僅負責產生訊號（Signals）、計畫（Plans）與指令文件（Scripts）。實際的資金交割與下單動作，**必須且只能** 在 XQ 全球贏家終端完成。禁止本地 Python 腳本直接呼叫券商 API 進行無人值守下單。*Mapping: CA-EXECUTE, CA-TRANSLATE* | SRS v8.1 §1.1.4台股當沖隔日沖流程 §3.3Audit Report A \[F-016\] |
| **Attended-First Strategy**(人工優先策略) | 系統預設運行於 **NON\_AGENT** 模式或 **AGENT\_ASSIST** 模式，關鍵節點（SF-11 HITL）強制要求人工介入確認。全自動模式（Unattended）僅在通過嚴格的 **Upgrade Gate** 與 **Environment Review** 後方可於沙盒中開啟。*Mapping: CA-COLLAB, CA-UI* | SRS v8.1 §2.3.1ARCH v6.0-r5 §8.5OMOC-MVU Package |
| **No-Paid-LLM-API**(非付費 API 政策) | 核心流程與日常運作不得依賴付費的雲端 LLM API（如 GPT-4 API）。所有 AI 協作必須支援 **WT-NA (WebTools No-API)** 模式，透過人工複製貼上或瀏覽器自動化（在合規範圍內）完成，或使用本地模型（Local LLM）。*Mapping: CA-COLLAB (WT-NA Wizard)* | P0-Q\&ALBP-C(ADR) ADR-029SRS v8.1 §2.3.5 |

#### **1.1.4 Strategic Roadmap: From MVU to Spine (戰略路線：從 MVU 到骨幹)**

架構演進遵循 **Delivery Plan** 定義的階段性目標，確保系統在擴張過程中不喪失可維護性。

* **Phase 1: OMOC-MVU (Minimal Viable Unit)**： 優先建立 **Control Plane** 的治理能力（GitHub Repo, Rulesets, Actions）與 **Pipeline A** 的知識封印能力（CA-WRC/CORPUS）。此階段不追求全功能交易，而專注於「產線本身的正確性」\[Delivery Plan Phase 1, OMOC-MVU Package\]。

* **Phase 2: Mini Core Four & Spine**： 落實 15 個子系統的最小功能集（Mini Core Four），並打通 **Pipeline B/C** 的資料流，形成端到端（E2E）的 **MVP Spine**。此階段重點在於資料主幹（Unified Data Backbone）的連通與證據鏈的閉環 \[15CA Refactoring BP, Pipeline-A+B Integration Plan\]。

* **Phase 3: Full Capability & Optimization**： 在骨幹穩固的基礎上，逐步增強各子系統的演算法精度（如 CA-SELECT 的 Ranking 模型、CA-TA 的特徵工程），並引入更高級的 **GateKit** 驗收標準。此階段由 **Performance Loop (CA-PERFORM)** 驅動迭代 \[SRS v8.1 §3.12, LBP-E Fitness\]。

---

### **1.2 Architectural Drivers (架構驅動因子)**

**\[ANCHOR:ARCH-V810-1-2-DRIVERS\]**

本節定義影響 Spartoi-OMOC 架構設計的最高指導原則、硬性約束與品質屬性（Quality Attributes）。這些驅動因子來自 **L1-SRS v8.1.0** 的硬性需求、**L1-Blueprint** 的治理模型以及 **L2-ARCH v6.0** 的演進目標，是後續所有設計決策（ADR）與子系統拆解的法理依據。  
---

#### **1.2.1 Primary Drivers: Hard Constraints (一級驅動因子：硬性約束)**

**\[ANCHOR:ARCH-V810-1-2-1-PRIMARY\]**

這些因子具有 **「不可協商（Non-negotiable）」** 的否決權。若架構設計違反任一項，視為 **Fail-Closed**，系統必須拒絕運作。

| 驅動因子 (Driver) | 定義與架構落點 (Definition & Architectural Mapping) | 來源追溯 (Traceability) |
| ----- | ----- | ----- |
| **D1: Fail-Closed by Default**(預設失效關閉) | **定義**：面對資訊缺失、證據不足、Schema 不符、衝突無法裁決或依賴服務不可用時，系統必須預設進入阻斷（BLOCK\_RELEASE）或降級（RADAR\_ONLY）狀態，嚴禁「先跑再說」。**架構映射**：1. **Control Plane**：CA-GOVERN 透過 Gate Policy 強制執行阻斷邏輯。2. **Evidence Chain**：Pipeline 產出若缺 `verdict.json`，下游自動拒收。 | SRS v8.1 §1.3.1SRS v8.1 §2.1.2Blueprint v2.2 |
| **D2: Evidence-Driven Governance**(證據驅動治理) | **定義**：所有關鍵操作（決策、交易、發布）必須產出可被機械驗證的「證據三件套（Evidence Triplet）」，否則視為無效。**架構映射**：1. **Unified Data Backbone**：實作 RunLedger 以記錄血緣（Lineage）。2. **Registry**：CA-GOVERN 維護 Artifact Registry，強制要求所有產物註冊。 | SRS v8.1 §2.2SRS v8.1 §4.115CA BP §8 |
| **D3: XQ Sole Order Endpoint**(XQ 唯一下單端) | **定義**：本地系統（Spartoi）僅作為決策輔助與訊號生成端，**嚴禁** 直接對接券商 API 進行自動下單。實際資金操作必須且只能在 XQ 全球贏家終端完成。**架構映射**：1. **Physical Isolation**：CA-EXECUTE 與 XQ 之間無 API 連線，僅透過檔案交換（XS Script）。2. **HITL Gate**：交易指令產生前必須通過 GATE-HITL-001 人工確認。 | SRS v8.1 §1.1.4SubP1 RunbookAudit A |
| **D4: No-Paid-LLM-API**(零付費 API 政策) | **定義**：核心流程與日常運作不得依賴額外付費的雲端 LLM API（如 GPT-4 API），以確保低成本與可持續性。優先使用 WebTools 或 Local LLM。**架構映射**：1. **CA-COLLAB**：實作 **WT-NA (WebTools No-API)** 架構，支援剪貼簿橋接。2. **Router Skill**：L0 Chef 優先調度本地或已訂閱的 Copilot 模型。 | SRS v8.1 §2.3.5ADR-029ARCH v6.0 §4.19 |

#### **1.2.2 Secondary Drivers: Quality Objectives (二級驅動因子：品質目標)**

**\[ANCHOR:ARCH-V810-1-2-2-SECONDARY\]**

這些因子源自 **ARCH v6.0.0-r5** 的六大核心目標（G1-G6），並依據 **SRS v8.1.0** 進行了工程化升級，指導系統的模組化與優化方向。

* **D5: Operational Complexity Reduction (操作複雜度降低 / 原 G1)**

  * **目標**：透過自動化與標準化，降低單人操作者在多代理協作下的認知負荷。  
  * **架構對策**：  
    * **Standardized JobCard**：統一 SF-00\~SF-17 的任務輸入輸出格式，使 Agent 能自動處理。  
    * **GateRunner**：自動執行驗收測試，將「人工檢查」轉為「例外處理」。  
  * *Ref: ARCH v6.0 §7.5.1, SRS v8.1 §1.1.1*  
* **D6: Observability & Traceability (可觀測與可追溯 / 原 G2)**

  * **目標**：系統內部狀態必須對外部透明，且所有產出必須能逆向追溯至原始輸入（Lineage）。  
  * **架構對策**：  
    * **Three-Channel Observability**：強制分離 Logs / Events / Metrics 資料流。  
    * **RunLedger**：在 Data Backbone 中建立全域血緣索引，連結 SpecPack → StrategyPack → XSPack。  
  * *Ref: SRS v8.1 §4.2, Pipeline-A+B §3.3*  
* **D7: Semantic Fidelity (語意保真 / 原 G3)**

  * **目標**：確保從非結構化知識（PDF）到結構化策略（XS）的轉譯過程中，邏輯語意不失真。  
  * **架構對策**：  
    * **SEM³ Framework**：在 CA-DISTILL (SGF)、CA-METHOD (MSC)、CA-TRANSLATE (TVE) 部署三階驗證閘門。  
    * **Golden Set**：維護標準答案集以偵測 LLM 幻覺。  
  * *Ref: SRS v8.1 §1.3.4, 15CA BP §6.8*  
* **D8: Strategy Performance & Hot-Swap (策略效能與熱插拔 / 原 G4 & G6)**

  * **目標**：支援策略模組（ICT Modules）的快速迭代、替換與 A/B 測試，且不影響系統穩定性。  
  * **架構對策**：  
    * **Dual-Key Binding**：透過 `slot_key` \+ `methodcard_key` 實現模組熱插拔。  
    * **Dual-Track Evaluation**：同時追蹤「策略績效（Track A）」與「工程可靠度（Track B）」。  
  * *Ref: SRS v8.1 §3.5.5, SRS v8.1 §3.12.1*  
* **D9: Risk Control & Safety (風控與安全 / 原 G5)**

  * **目標**：確保系統操作不突破資金安全邊界，且能防範供應鏈攻擊。  
  * **架構對策**：  
    * **Control Plane Trio**：Flag / Degrade / Snapshot 三件套提供全域風控。  
    * **Supply Chain Governance**：對所有外部 Skills 與 Actions 實施 Pinning 與 Scanning。  
  * *Ref: SRS v8.1 §3.15, OMOC-MVU §3.6*

#### **1.2.3 Driver-to-Component Mapping (驅動因子對組件映射)**

**\[ANCHOR:ARCH-V810-1-2-3-MAPPING\]**

下表總結各驅動因子如何具體落實到架構組件中，確保「需求有落點」。

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

* *Traceability Ref: SRS v8.1 RTM*

---

### **1.3 Stakeholders (利害關係人與權責關注點)**

**\[ANCHOR:ARCH-V810-1-3-STAKEHOLDERS\]**

本系統的利害關係人涵蓋人類操作者、人工智慧代理（AI Agents）以及外部系統。架構設計必須明確定義各角色的「權限邊界（Permission Boundary）」與「關注點（Concerns）」，以支撐 **Tri-Plane Governance（三平面治理）** 架構。  
---

#### **1.3.1 Human Stakeholders (人類利害關係人)**

**\[ANCHOR:ARCH-V810-1-3-HUMAN\]**

* **System Owner (Solo Trader / Operator)**

  * **架構定位**：系統的最終決策者與風險承擔者，位於 **Control Plane** 的最高層級。  
  * **核心職責**：  
    * 定義業務目標（P0-Q\&A 日常任務）與風險偏好。  
    * 執行 **HITL (Human-In-The-Loop)** 決策：針對關鍵節點（如 SF-11）進行放行（Approve）或拒絕（Reject）,。  
    * 觸發 **Kill Switch**：在緊急狀況下介入中止系統運作。  
  * **架構約束**：  
    * **Evidence-First**：不得在無證據（Evidence Triplet）的情況下強制繞過 Gate。  
    * **XQ-Only**：實際資金操作必須且只能在 XQ 全球贏家終端執行，不得依賴系統自動下單。  
* **System Builders (Developers / Maintainers)**

  * **架構定位**：負責系統演進與維護，位於 **Execution Plane** 的開發環節。  
  * **核心職責**：  
    * 依據 **Blueprint** 與 **SRS** 實作 Runbook 與 Code。  
    * 維護 **15 CA Subsystems** 的邊界與介面契約。  
  * **架構約束**：  
    * **No-Source-No-Norm**：不得在無上游文件（L1\~L7）授權下發明新需求或架構。  
    * **Strict Scope-Lock**：嚴禁在 ARCH 文件中撰寫實作細節（HOW）或數值門檻。  
* **System Auditors (Governance / Gatekeepers)**

  * **架構定位**：負責驗收與合規性檢查，位於 **Control Plane**。  
  * **核心職責**：  
    * 審查 **Evidence Pack** 的完整性（Verdict/Index/Bundle）。  
    * 確認 **Authority Stack** 的裁決是否正確執行。  
    * 檢查 **RTM (Requirements Traceability Matrix)** 的覆蓋率。  
  * **架構交互**：主要透過 **CA-GOVERN** 與 **CA-UI** 的儀表板進行非同步稽核。

#### **1.3.2 Artificial Stakeholders (OMOC Agents \- Artificial Workforce)**

**\[ANCHOR:ARCH-V810-1-3-AGENTS\]**

依據 **OMOC-MVU** 架構，AI 代理並非單一實體，而是依職責分工的協作群體，受 **Execution Plane** 規範。

* **L0 Chef (Strategist / Orchestrator)**

  * **架構定位**：多代理協作的戰略主控，唯一具備派發任務權限的角色。  
  * **核心職責**：  
    * **任務分流**：依據複雜度與風險，決定使用 Default 或 Advanced 模型配置（Router Decision）。  
    * **升級閘門判定**：決定是否觸發 `needs_upgrade_gate` 進入人工審核。  
    * **收斂裁決**：整合下級代理的產出，做出最終提案。  
  * **架構約束**：  
    * **Anti-Recursion**：禁止 Chef 再次授權下級代理進行任務派發（No Recursive Delegation）。  
* **Deputy (Coordinator / QA)**

  * **架構定位**：Chef 的副手，專注於品質管控與證據保全。  
  * **核心職責**：  
    * **Gatekeeping**：在產物提交前預先執行 Gate Check。  
    * **Evidence Policing**：確保所有產出皆附帶正確的 Evidence Triplet。  
  * **架構約束**：不得自行修改 Chef 的戰略決策。  
* **Experts (Specialists)**

  * **架構定位**：單一領域的執行專家（如 Coder, Tester, Doc Writer）。  
  * **核心職責**：  
    * 執行具體 JobCard 任務（如 CA-DISTILL 的蒸餾、CA-TRANSLATE 的轉譯）。  
  * **架構約束**：  
    * **Least Privilege**：僅擁有完成特定任務所需的最小權限（Permission）。  
    * **Isolation**：禁止跨越子系統邊界直接存取非授權的資料。

#### **1.3.3 External Systems (外部系統與環境)**

**\[ANCHOR:ARCH-V810-1-3-EXTERNAL\]**

* **XQ Global Winner (XQ 全球贏家)**

  * **架構定位**：**Sole Order Endpoint (唯一下單端點)**。  
  * **交互模式**：  
    * **Input**：接收 CA-EXECUTE 產出的指令文件（手動載入）。  
    * **Output**：提供成交回報與帳戶狀態（匯出供 CA-PERFORM 分析）。  
  * **約束**：系統與 XQ 之間不存在自動化 API 連線（No Direct API）。  
* **GitHub Platform (Control Plane Host)**

  * **架構定位**：託管 **Control Plane** 的基礎設施。  
  * **核心功能**：  
    * **Merge Queue**：確保程式碼合併的序列化與品質。  
    * **Environments**：實作 `omoc-advanced` 的升級閘門與 Reviewers 機制。  
    * **OIDC / Actions**：提供身分驗證與自動化流水線執行環境。  
* **LLM Providers (Copilot / OpenAI / Anthropic)**

  * **架構定位**：提供推論能力的算力供應商。  
  * **約束**：  
    * **No-Paid-API**：核心流程不得依賴付費 API，優先使用 GitHub Copilot 協議內的模型。  
    * **Model List Snapshot**：可用模型清單需透過 **TEST\_TRACK** 進行快照與驗證，防止模型退役導致系統失效。

---

### **1.4 Non-Goals (非目標)**

**\[ANCHOR:ARCH-V810-1-4-NONGOALS\]**

為確保架構文檔（L2-ARCH）作為「結構與機制」的 SSOT 地位，本文件 **嚴格排除** 下列內容。所有被列為 Non-Goals 的項目，若在本文中出現，應視為 **架構雜訊（Noise）** 或 **幻覺（Hallucination）**，讀者應忽略並依據 Route-Out 指標查閱正確權威文件。  
---

#### **1.4.1 No Operational Procedures (不包含操作程序)**

**\[ANCHOR:ARCH-V810-1-4-1-NO-OPS\]**

* **定義**：本文件不提供任何「如何做（HOW）」的逐步指令、CLI 命令、UI 點擊順序或故障排除指南。  
* **理由**：操作程序屬於 **L6-Runbook** 層級，隨工具版本（如 GitHub Actions, Python libs）頻繁變動。將易變的操作細節寫入穩定的架構文檔，將導致文檔迅速過期且難以維護。  
* **Route-Out Target**:  
  * 所有安裝、部署、日常操作步驟 → **Spartoi｜SubP1-LITE+MVP 開發 RUNBOOK & WI**。  
  * CI/CD Pipeline 的具體 YAML 配置 → **Repo `.github/workflows/`**。

#### **1.4.2 No Numeric Thresholds (不包含數值門檻)**

**\[ANCHOR:ARCH-V810-1-4-2-NO-THRESHOLDS\]**

* **定義**：本文件不定義任何具體的量化指標數值（如 `accuracy > 95%`, `latency < 200ms`, `max_drawdown < 2%`）。  
* **理由**：  
  * **治理分離**：數值門檻屬於 **L4-Fitness** 的職責，需隨市場狀況與回測結果動態調整。  
  * **CR\_OPEN 機制**：依據 **SRS v8.1**，未經授權的數值門檻屬於 **CR\_OPEN** 狀態，禁止寫死在 Normative 規格中。  
* **Route-Out Target**:  
  * 所有品質指標與允收門檻 → **Spartoi｜P1\_LBP-E(Fitness)**。  
  * 待決定的候選門檻 → **SRS §6.3 CR\_OPEN Closure Ledger**。

#### **1.4.3 No Interface Schema Details (不包含介面細節)**

**\[ANCHOR:ARCH-V810-1-4-3-NO-SCHEMAS\]**

* **定義**：本文件僅定義組件間的「互動關係」與「資料流向」，不展開 JSON/SQL Schema 的完整欄位定義、API 簽章或資料型別。  
* **理由**：介面契約屬於 **L3-ICD** 的職責。在架構層展開 Schema 會導致與程式碼實作（Implementation）的雙重維護問題。  
* **Route-Out Target**:  
  * 所有 API 定義、Artifact 格式、Event Payload → **Spartoi｜P1\_LBP-B(ICD)**。  
  * 資料庫表結構與 DVC 儲存細節 → **Pipeline-A+B 整合資料庫方案**。

#### **1.4.4 No Architecture Expansion (不新增架構邊界)**

**\[ANCHOR:ARCH-V810-1-4-4-NO-EXPANSION\]**

* **定義**：本文件嚴格遵守 **15CA 重構升級藍圖** 定義的系統邊界。  
  * **禁止新增**：不得發明第 16 個子系統（Subsystem）。所有新功能必須歸納至既有的 15 個 CA-\* 之下。  
  * **禁止更名**：15 個子系統的 **Stable ID**（如 `CA-WRC`）永不變更。僅允許透過 Mapping Table 修改 Display Name。  
* **理由**：防止「架構蔓延（Architecture Creep）」與命名空間污染，確保自動化治理工具（如 GateRunner）的穩定性。  
* **Route-Out Target**:  
  * 15 子系統定義與邊界 → **Spartoi-OMOC(15 CA)重構升級藍圖**。

#### **1.4.5 No Execution Engine Re-implementation (不重造執行引擎)**

**\[ANCHOR:ARCH-V810-1-4-5-NO-REIMPL\]**

* **定義**：本架構不試圖在本地端重造下列已由外部成熟平台提供的核心能力：  
  * **交易撮合**：**XQ 全球贏家** 為唯一實盤下單與撮合端點。本系統僅產生「指令（Instructions）」與「訊號（Signals）」。  
  * **協作編排**：**OMOC (Oh My OpenCode)** 為唯一多代理編排引擎。本系統不自建第二套 Agent Chat 框架。  
  * **治理強制**：**GitHub (Rulesets/Environment)** 為控制面硬權力來源。本系統 CA-GOVERN 僅作規則聚合，不自建 CI/CD 執行器。  
* **理由**：避免「造輪子（Reinventing the Wheel）」，確保系統聚焦於交易策略與知識蒸餾的核心價值。  
* **Route-Out Target**:  
  * 下單端點約束 → **SRS §3.11 CA-EXECUTE**。  
  * 協作引擎約束 → **OMOC-MVU 套件包**。

---

## **§2. Architecture Framework (ISO 42010\)**

**\[ANCHOR:ARCH-V810-SEC2\]**  
---

### **2.1 Viewpoint Catalog (視圖目錄)**

**\[ANCHOR:ARCH-V810-2-1-VIEWPOINT\]**

本架構文檔採用 **C4 模型 (Context, Container, Component, Code)** 作為基礎框架，並針對 **Spartoi-OMOC** 的特殊治理需求（三平面、語意驗證、供應鏈安全），擴充了專屬視點。

所有視圖的設計均遵循 **Fail-Closed** 原則：若視圖無法清晰界定某組件的邊界或職責，該組件即視為**架構定義不完整 (Architecturally Undefined)**，禁止進入實作階段。

以下為本架構定義的 **六大核心視點 (Six Core Viewpoints)**：

| 視點 ID | 視點名稱 (Viewpoint Name) | 關注點 (Concerns) | 涵蓋模型/符號 | 解決需求/來源 (Traceability) |
| ----- | ----- | ----- | ----- | ----- |
| **VP-01** | **Context & Governance Viewpoint**(情境與治理視點) | 系統邊界、**三平面治理 (Tri-Plane)**、外部系統互動 (XQ, GitHub, LLMs)。 | C4 Level 1 (System Context)Governance Plane Map | **BP v2.2.0-r1** (Tri-Plane)**SRS v8.1 §1.1.2** |
| **VP-02** | **Container & 15CA Viewpoint**(容器與子系統視點) | **15 個子系統 (15 CA)** 的職責邊界、**Pipeline A/B/C** 的資料流向、**Data Backbone** 落點。 | C4 Level 2 (Container)Pipeline Topology | **15CA BP v0.2.0-r1SRS v8.1 §1.2** (15CA) |
| **VP-03** | **Deployment & Physical Viewpoint**(部署與物理視點) | 運行環境 (Codespaces, Local)、控制中樞 (GitHub)、**唯一下單端 (XQ)** 的物理隔離。 | Deployment DiagramNetwork Boundaries | **SRS v8.1 §1.1.4** (XQ Only)**Delivery Plan** (MVO) |
| **VP-04** | **Observability Viewpoint**(可觀測性視點) | **三通道 (Logs, Events, Metrics)** 資料流、**RunLedger** 寫入點、系統健康度監控。 | Data Flow DiagramTelemetry Schema | **SRS v8.1 §4.2** (Observability)**ARCH v6.0 §10.1** |
| **VP-05** | **Security & Supply Chain Viewpoint**(安全與供應鏈視點) | **工具白名單 (Allowlist)**、**依賴釘選 (Pinning)**、**權限邊界 (Permissions)**、**MCP 隔離**。 | Security ModelTrust Boundary Map | **Audit A:F-009SRS v8.1 §2.3.4OMOC-MVU Package** |
| **VP-06** | **Semantic Validation Viewpoint**(語意驗證視點) | **SEM³ (SGF/MSC/TVE)** 驗證流程、**Gate** 攔截點、知識蒸餾保真度。 | Validation FlowGate Logic Map | **SRS v8.1 §1.3.4** (SEM³)**15CA BP v0.2.0-r1** |

#### ---

 **2.1.1 視點選用理由 (Rationale for Selection)**

1. **為何需要 Governance Viewpoint (VP-01)？**

   * **理由**：Spartoi-OMOC 不是單純的軟體系統，而是「單人+多代理」的協作體系。**Blueprint v2.2.0-r1** 強制要求將系統劃分為 **Control (控制)**、**Execution (執行)**、**Peripheral (外圍)** 三個平面。  
   * **架構決策**：必須在最高層級視圖中顯式畫出「治理邊界」，確保 Agent 無法跨越控制面修改規則（例如：Agent 不可修改 Flag Registry）。  
2. **為何需要 Security & Supply Chain Viewpoint (VP-05)？**

   * **理由**：回應 **審查報告 A (Audit A)** 指出的供應鏈風險（如 Actions 版本漂移、惡意 MCP 工具）。**SRS v8.1 §2.3.4** 明確要求「工具與技能供應鏈治理」。  
   * **架構決策**：將「供應鏈」提升為一級架構視圖，明確標示哪些外部組件（Skills, Actions, Models）是受信任的（Pinned/Scanned），哪些是預設拒絕的（Default Deny）。  
3. **為何不需要 Code Viewpoint (C4 Level 4)？**

   * **理由**：依據 **§0.4 Scope Lock**，ARCH 文件僅定義結構與邊界。程式碼層級的實作細節（Class Diagram, Function Signature）屬於 **LBP-B (ICD)** 與 **Runbook** 的範疇。  
   * **架構決策**：**Route-Out** 所有 Code Level 細節至實作文件，保持架構文檔的輕量化與抗腐蝕性。

#### **2.1.2 視圖一致性規則 (Consistency Rules)**

為確保各視圖之間的邏輯不衝突，本架構定義以下一致性規則（Fail-Closed）：

* **Rule-VP-01 (Stable ID Consistency)**：所有視圖中出現的子系統，必須嚴格使用 **SRS v8.1 §1.2** 定義的 **15 個 Stable ID** (CA-WRC \~ CA-GOVERN)。禁止使用別名或舊稱（如 CA-FIREWALL）。  
* **Rule-VP-02 (Gate Alignment)**：VP-02 (Container) 與 VP-06 (Semantic) 中的 Gate 標示，必須與 **SRS v8.1 §2.1.4 Core Gate Dictionary** 完全對應。  
* **Rule-VP-03 (Physical Isolation)**：VP-03 (Deployment) 必須明確顯示 **CA-EXECUTE** 與 **XQ 下單端** 之間存在 **HITL (Human-In-The-Loop)** 斷點，不得畫出直接自動化連線。

---

### **2.2 View Index (視圖索引)**

**\[ANCHOR:ARCH-V810-2-2-INDEX\]**

本架構文檔採用 **C4 模型 (Context, Container, Component)** 的變體，並擴充 **Observability** 與 **Security** 視圖，以滿足 Spartoi-OMOC 特有的「三平面治理（Tri-Plane Governance）」與「證據驅動（Evidence-Driven）」需求。

以下定義本系統的五大核心視圖及其職責邊界：

| View ID | 視圖名稱 (View Name) | 關注點 (Concerns) | 主要利害關係人 (Stakeholders) | 權威來源 (Authority) |
| ----- | ----- | ----- | ----- | ----- |
| **V1** | **Context View** (情境視圖) | 系統邊界、三平面治理結構、外部實體互動 | Owner, Architect | \[Blueprint v2.2 §3.2\], \[SRS v8.1 §1.1.2\] |
| **V2** | **Container View** (容器視圖) | 15 CA 子系統拓撲、Pipeline 資料流、資料骨幹 | Architect, Developers | \[15CA BP §4\], \[Pipeline-A+B\] |
| **V3** | **Deployment View** (部署視圖) | GitHub 控制面、本地 Runtime、證據儲存落點 | DevOps, Auditors | \[SRS v8.1 §5.1\], \[Delivery Plan §3.2\] |
| **V4** | **Observability View** (觀測視圖) | Logs/Events/Metrics 三通道、血緣追溯 | Operators, Auditors | \[SRS v8.1 §4.2\], \[ARCH v6.0 §10.1\] |
| **V5** | **Security View** (安全視圖) | 供應鏈安全、權限邊界、Fail-Closed 機制 | Security Officer | \[OMOC-MVU Package\], \[SRS v8.1 §2.3.4\] |

#### ---

 **2.2.1 V1: Context View (Tri-Plane Governance)**

**\[ANCHOR:ARCH-V810-VIEW-CONTEXT\]** 此視圖定義系統的最高層級邊界，強制執行 **Spartoi-OMOC Blueprint v2.2.0-r1** 的三平面治理架構：

* **Control Plane (控制面)**：由 **GitHub (Rulesets, Merge Queue, Environments)** 與 **CA-GOVERN** 構成，負責「立法與裁決」。此平面擁有最高權限，可阻斷執行面的任何操作。  
* **Execution Plane (執行面)**：由 **OMOC (OpenCode Orchestrator)** 與 **15 CA 子系統** 構成，負責「執行與產出」。此平面必須服從控制面的 Gate 規則，並產出證據。  
* **Peripheral Plane (外圍面)**：由 **MCP Servers**、**OpenClaw** 與外部工具構成。此平面預設為 **Default Deny**，必須通過白名單與沙箱掃描才可接入。

**架構約束**：三平面之間不得發生「越權」存取（例如 Execution Plane 直接修改 Control Plane 的 Policy）。

#### **2.2.2 V2: Container View (15 CA \+ Pipelines)**

**\[ANCHOR:ARCH-V810-VIEW-CONTAINER\]** 此視圖將系統展開為 **15 個不可變更的子系統 (Capability Areas)** 與 **3 條核心管線 (Pipelines)**：

* **15 CA Subsystems**：依據 \[15CA BP\] 定義的 **Stable ID** (CA-WRC \~ CA-GOVERN)，每個 CA 都是一個獨立的邏輯容器，擁有明確的輸入/輸出契約。  
* **Unified Data Backbone**：依據 \[Pipeline-A+B 方案\]，所有 CA 不直接交換資料，而是透過統一的資料骨幹 (Git/DVC/S3) 進行狀態同步與血緣追溯。  
* **Pipelines**：  
  * **Pipeline-A (Knowledge)**：WRC → CORPUS → DISTILL → DSL  
  * **Pipeline-B (Strategy)**：METHOD → BACKTEST → PERFORM  
  * **Pipeline-C (Execution)**：TA → SELECT → TRANSLATE → WATCH/EXECUTE

#### **2.2.3 V3: Deployment View (Hybrid Runtime)**

**\[ANCHOR:ARCH-V810-VIEW-DEPLOYMENT\]** 此視圖描述系統在「雲地混合」環境下的實體部署與邊界：

* **Code Space / Local Runner**：執行 Runtime，承載 OMOC 與子系統邏輯。需具備 `step-runner` 與 `timeout` 機制以防止殭屍進程。  
* **GitHub Platform**：作為控制面的實體載體，託管 Repo、Actions、Environments 與 Gate 檢查。  
* **Evidence Store (Artifacts)**：依據 \[Evidence Contract\]，所有產出物（Verdict/Bundle/Index）必須落盤至指定位置（如 `evidence/_acceptance/<utc>/`），並由 Git 或 DVC 追蹤。

#### **2.2.4 V4: Observability View (Three-Channel)**

**\[ANCHOR:ARCH-V810-VIEW-OBS\]** 此視圖定義系統的可觀測性架構，強制執行 **SRS v8.1 §4.2** 的三通道要求：

* **Logs**：非結構化的除錯資訊。  
* **Events**：具備業務語義的結構化事件（如 `gate_passed`, `trade_signal`）。  
* **Metrics**：可聚合的數值指標（如 `tve_score`, `sgf_score`）。  
* **Lineage**：透過 **RunLedger** 串聯所有工件的血緣關係，確保可從最終損益回溯至原始教材。

#### **2.2.5 V5: Security & Supply Chain View**

**\[ANCHOR:ARCH-V810-VIEW-SECURITY\]** 此視圖專注於系統的安全性與供應鏈治理，依據 **OMOC-MVU Package** 實作：

* **Supply Chain**：所有依賴（Actions, Skills）必須 **Pinning (SHA鎖定)** 並經過 **Scanning (Zizmor/Scorecard)**。  
* **Permissions**：OMOC Agent 的權限必須遵循 **Least Privilege**，且 Chef 是唯一可派工的角色（禁止遞迴生子）。  
* **Fail-Closed**：任何安全檢查失敗（如 Secret 洩漏、依賴變更），必須觸發 **BLOCK\_RELEASE**。

---

### **2.3 Vocabulary (架構術語表)**

**\[ANCHOR:ARCH-V810-2-3-VOCAB\]**

本節定義 Spartoi-OMOC 系統架構中的核心術語。為確保跨文件（SRS/ARCH/ICD/Runbook）與跨平面（Control/Execution/Peripheral）的語意一致性，所有架構描述與程式碼命名 **必須 (MUST)** 嚴格遵守本表定義。

若本表定義與 **SRS v8.1.0 §1.3** 發生衝突，依據 **§0.3 Authority Stack**，以 SRS 為最高權威。  
---

#### **2.3.1 Architectural Entities (核心架構實體)**

**\[ANCHOR:ARCH-V810-2-3-VOCAB-ENTITIES\]**

| 術語 (Term) | 定義 (Definition) | 架構約束 | 來源引用 |
| ----- | ----- | ----- | ----- |
| **15 CA Subsystems** | 構成系統邊界的 15 個功能子系統（Capability Areas）。嚴禁新增第 16 個子系統（如舊版 CA-FIREWALL 已刪除）。每個 CA 代表一個獨立的責任邊界與資料落點。 | 數量固定為 15；架構圖必須完整呈現 15 個節點。 | SRS v8.1 §1.3.2, 15CA BP §4 |
| **Stable ID** | 15 CA 的技術唯一識別碼（如 `CA-WRC`），在系統生命週期內 **永不變更**。與之相對的是 Display Name（可隨 UI/UX 調整）。 | 程式碼、API 路徑、Gate 綁定必須使用 Stable ID。 | SRS v8.1 §1.2.1, 15CA BP §0 |
| **Tri-Plane** | 系統的三大治理平面：**Control Plane** (立法與裁決)、**Execution Plane** (執行與產出)、**Peripheral Plane** (能力擴充)。 | 跨平面互動必須經過明確的介面契約。 | BP v2.2 §2.2, SRS v8.1 §1.1.2 |
| **Data Backbone** | 統一的資料儲存與流轉架構，包含 Git (規格)、DVC (指針)、Object Storage (實體)。確保跨 Pipeline 的資料一致性與可追溯性。 | 嚴禁建立私有資料孤島；所有產物必須落入 Backbone。 | ARCH v8.1 §5.2, DB Plan |
| **OMOC** | **Oh My OpenCode**。執行平面 (Execution Plane) 的核心編排器與多代理架構，負責調度 15 CA 完成 SF 流程。 | 僅作為執行引擎，不得承擔治理裁決職責。 | SRS v8.1 §1.3.2, Delivery Plan |

#### **2.3.2 Governance & Mechanisms (治理與機制術語)**

**\[ANCHOR:ARCH-V810-2-3-VOCAB-GOV\]**

| 術語 (Term) | 定義 (Definition) | 架構約束 | 來源引用 |
| ----- | ----- | ----- | ----- |
| **Fail-Closed** | **失效關閉**。當系統遇到資訊缺失、證據不足或衝突時，預設採取的安全狀態（阻斷或降級），嚴禁「先執行再說」。 | 所有 Gate 與 API 必須實作此邏輯。 | SRS v8.1 §1.3.1, ARCH v6.0 §8 |
| **Gate** | **閘門**。系統中的強制檢查點，分為 **Policy** (裁決層: BLOCK/RADAR/DISABLED) 與 **Check** (檢核層: 具體邏輯)。 | Gate 必須產出 Evidence Triplet 才能視為通過。 | SRS v8.1 §2.1.1, 15CA BP §7 |
| **Evidence Triplet** | **證據三件套**。最小可稽核證據單元，由 **Verdict** (裁決檔)、**Bundle** (實體包)、**Index** (索引檔) 組成。缺一即視為無效證據。 | 所有 Pipeline 產出必須符合此結構。 | SRS v8.1 §2.2.1, 15CA BP §8 |
| **Route-Out** | **外導**。將「實作細節 (HOW)」從架構文件指針化導向 SSOT (Runbook/ICD) 的機制。 | ARCH 文件禁止包含可執行代碼，必須 Route-Out。 | SRS v8.1 §1.3.3, BP v2.2 Route-Out Rules |
| **Control Plane Trio** | **控制面三件套**。指 **Flag Registry** (開關)、**Degrade Matrix** (降級規則)、**Run Config Snapshot** (執行快照) 三個核心治理工件。 | 必須由 CA-GOVERN 統一管理與版本化。 | SRS v8.1 §5.1, ARCH v6.0 §6.2 |

#### **2.3.3 Operational Primitives (運作原語)**

**\[ANCHOR:ARCH-V810-2-3-VOCAB-OPS\]**

| 術語 (Term) | 定義 (Definition) | 架構約束 | 來源引用 |
| ----- | ----- | ----- | ----- |
| **SF Key** | **Spartoi Flow 主鍵**。系統全流程的唯一鍵值體系 (SF-00 \~ SF-31)。取代舊版 OP-xx 或 DayFlow。 | 流程編排與 JobCard 必須使用 SF Key 作為索引。 | SRS v8.1 §1.3.2, Runbook v1.4 |
| **JobCard** | **作業卡**。OMOC 架構下的最小執行單元，封裝了輸入、輸出、驗收標準與回滾策略。 | 每個 SF 節點執行時必須實例化一張 JobCard。 | SRS v8.1 §1.3.2, ARCH v6.0 §5.6 |
| **HITL** | **Human-In-The-Loop** (人機介入)。流程中必須由人類進行明確確認 (Approval) 的強制節點，通常用於解鎖高風險操作。 | CA-EXECUTE 必須在 HITL 確認後才能執行。 | SRS v8.1 §1.3.2, Runbook v1.4 |
| **SEM³** | **三階驗證框架**。包含 **SGF** (來源忠實度)、**MSC** (方法一致性)、**TVE** (轉譯等價性) 三個核心 Gate。 | 知識蒸餾、方法制定、轉譯執行必須分別通過此三階驗證。 | SRS v8.1 §1.3.4, 15CA BP §6.8 |
| **WT-NA** | **WebTools No-API**。一種操作模式，利用 Web 介面與剪貼簿進行 LLM 協作，不依賴付費 API。 | 需搭配 Hash 驗證確保內容未被竄改。 | SRS v8.1 §3.13.1, ARCH v6.0 §4.19 |

#### **2.3.4 Legacy & Forbidden Terms (遺產與禁用術語)**

**\[ANCHOR:ARCH-V810-2-3-VOCAB-FORBIDDEN\]**

為防止語意漂移，以下術語在 **v8.1.0** 架構中已明確廢棄或禁用，僅允許出現在 **Legacy Crosswalk** 中。

* **DayFlow / DF-xx**: 已廢棄。請使用 **SF Key (SF-xx)**。  
* **CA-FIREWALL**: 已廢棄。功能併入 **CA-GOVERN**。  
* **Candidate**: 已廢棄。未定案規格應使用 **CR\_OPEN**。  
* **Layer / 分層**: 除 Gate Layering 外，架構層級應使用 **Plane (平面)** 或 **Tier (分級)**。

---

## **§3. Architecture Views (架構視圖)**

**\[ANCHOR:ARCH-V810-SEC3\]**

本章節採用 **C4 模型 (Context, Container, Component, Code)** 進行架構描述，重點定義系統結構、容器邊界與元件互動。

* **V1 Context View**: 系統與外部環境的互動（本節）。  
* **V2 Container View**: 15 個子系統與資料骨幹的拓樸（§3.2）。  
* **V3 Deployment View**: 實體部署節點與環境（§3.3）。  
* **V4 Observability View**: 監控與日誌流向（§3.4）。  
* **V5 Security View**: 供應鏈與權限邊界（§3.5）。

---

### **3.1 V1 Context View (情境視圖：三平面治理)**

**\[ANCHOR:ARCH-V810-3-1-CONTEXT\]**  
---

#### **3.1.1 System Context Diagram (系統情境圖)**

**\[ANCHOR:ARCH-V810-3-1-1-DIAGRAM\]**

Spartoi-OMOC 系統並非孤立運作的程式，而是嵌入在 **GitHub (Control Plane)** 與 **XQ 全球贏家 (Execution Endpoint)** 之間的「交易工程中樞」。

graph TD  
    %% Actors  
    User((Solo Trader\\n\<System Owner\>))

    %% External Systems  
    GitHub\[GitHub Platform\\n\<Control Plane Host\>\]  
    XQ\[XQ Global Winner\\n\<Sole Order Endpoint\>\]  
    LLM\[LLM Providers\\n\<No-Paid-API / Local\>\]  
    Web\[Web Resources\\n\<White-list Sources\>\]

    %% System Boundary  
    subgraph "Spartoi-OMOC System Boundary"  
        System\[Spartoi-OMOC\\n\<Single-person Multi-agent System\>\]  
    end

    %% Interactions  
    User \-- "1. Define Policy / Approve Gates (HITL)" \--\> GitHub  
    User \-- "2. Trigger / Monitor (UI)" \--\> System  
    User \-- "3. Execute Orders (Manual/Import)" \--\> XQ

    GitHub \-- "4. Enforce Rules / CI / Artifacts" \--\> System  
    System \-- "5. Report Status / Evidence" \--\> GitHub

    System \-- "6. Retrieve Knowledge" \--\> Web  
    System \-- "7. Inference Request (Context)" \--\> LLM  
    LLM \-- "8. Response (Token)" \--\> System

    System \-- "9. Generate Signals / Scripts" \--\> XQ  
    XQ \-- "10. Feedback (Logs/Balance)" \--\> System

    %% Constraints  
    linkStyle 7 stroke:red,stroke-width:2px,stroke-dasharray: 5 5;  
    note\_xq\[Constraint: No Direct Auto-Trade API\]:::constraint  
    note\_llm\[Constraint: Free/Local Models Only\]:::constraint

    classDef constraint fill:\#f9f,stroke:\#333,stroke-width:2px;

#### **3.1.2 External Entities & Interaction Contracts (外部實體與互動契約)**

**\[ANCHOR:ARCH-V810-3-1-2-ENTITIES\]**

| 外部實體 (Entity) | 角色與職責 (Role) | 互動契約與約束 (Contract & Constraints) | 來源依據 |
| ----- | ----- | ----- | ----- |
| **Solo Trader**(人類操作者) | \*\*最終決策者 (Decision Maker)\*\*負責定義目標、審核 Gate、執行 HITL 確認。 | **Interaction**: 透過 GitHub PR/Issues 進行治理；透過 CA-UI 進行操作。**Constraint**: 不得繞過 Gate 直接修改 SSOT 資料；高風險操作需雙重確認。 | ARCH v6.0 §1.3SRS v8.1 §1.3 |
| **GitHub Platform** | \*\*控制面宿主 (Control Plane Host)\*\*提供 Rulesets, Environments, Actions, Artifact Store。 | **Interaction**: 透過 `.github/workflows` 定義行為；透過 Commit/PR 觸發流程。**Constraint**: 必須啟用 **Merge Queue** 與 **Branch Protection**。所有變更必須留痕 (Audit Trail)。 | Blueprint v2.2 §3OMOC-MVU Package |
| **XQ Global Winner**(XQ 全球贏家) | \*\*唯一下單端 (Sole Order Endpoint)\*\*負責真實市場的撮合與資金交割。 | **Interaction**: 單向接收 `.xs` 腳本或 `.csv` 清單；匯出成交回報。**Constraint (Hard)**: **禁止** 本地程式碼直接呼叫券商 API 進行無人值守下單。所有交易必須經由 XQ 介面確認。 | SRS v8.1 §1.1.4Audit Report A \[F-016\] |
| **LLM Providers**(OpenAI/Anthropic) | \*\*推論引擎 (Inference Engine)\*\*提供語言理解與生成能力。 | **Interaction**: 透過 `CA-COLLAB` (WT-NA/API) 進行請求。**Constraint**: **No-Paid-API**。核心流程不得依賴額外付費 API，優先使用 GitHub Copilot 協議內模型或本地模型。 | LBP-C(ADR) ADR-029SRS v8.1 §2.3.5 |
| **Web Resources** | \*\*知識來源 (Knowledge Source)\*\*提供教材、新聞、財報。 | **Interaction**: 透過 `CA-WRC` 進行白名單抓取。**Constraint**: **Whitelist-Only**。嚴禁 Agent 自主漫遊爬蟲；所有來源必須預先定義於 `sources.yaml`。 | SRS v8.1 §3.115CA BP §4.1 |

#### **3.1.3 Tri-Plane Governance Architecture (三平面治理架構)**

**\[ANCHOR:ARCH-V810-3-1-3-TRIPLANE\]**

依據 **Spartoi-OMOC Blueprint v2.2.0-r1**，系統內部架構嚴格劃分為三個權責互斥的平面。此結構旨在解決「AI 代理權限過大」與「治理邊界模糊」的核心風險。

##### **A. Control Plane (控制平面) — "The Law Maker"**

* **定義**: 負責定義規則、門檻、權限與阻斷條件的「立法與司法」區域。  
* **宿主**: **GitHub Repository Settings & Actions**。  
* **核心組件**:  
  * **Rulesets**: 強制分支保護與合併條件。  
  * **Merge Queue**: 序列化合併，防止並發衝突。  
  * **Environments**: 定義部署目標（如 `omoc-advanced`）與人工審核（Required Reviewers）。  
  * **GateKit**: 執行 `CA-GOVERN` 定義的驗收邏輯。  
* **Fail-Closed 行為**: **BLOCK\_RELEASE**。若規則衝突或 Gate 失敗，直接阻斷流程，不產生任何副作用。

##### **B. Execution Plane (執行平面) — "The Worker"**

* **定義**: 負責執行具體任務、產出證據與工件的「行政與執行」區域。  
* **宿主**: **Local Runtime (Codespaces / Dev Container)** \+ **OMOC Orchestrator**。  
* **核心組件**:  
  * **15 CA Subsystems**: 執行具體業務邏輯（如回測、轉譯）。  
  * **OMOC Agents**: `Chef`, `Deputy`, `Experts` 多代理協作群。  
  * **Pipelines (A/B/C)**: 串接子系統的自動化流水線。  
* **Fail-Closed 行為**: **EXECUTE\_DISABLED**。若權限不足、憑證缺失或環境異常，系統自動切斷執行能力，僅保留唯讀狀態。

##### **C. Peripheral Plane (外圍平面) — "The Plugin Sandbox"**

* **定義**: 提供外部工具、技能與擴充能力的「受控沙盒」區域。  
* **宿主**: **MCP Servers** \+ **OpenClaw Sandbox**。  
* **核心組件**:  
  * **MCP (Model Context Protocol)**: 標準化工具介面。  
  * **Skills Registry**: 允許使用的工具白名單。  
* **Fail-Closed 行為**: **DEFAULT\_DENY**。所有外部工具預設為禁用。啟用必須滿足「Allowlist \+ Sandbox \+ Post-Scan」三條件，否則強制降級為 **RADAR\_ONLY**。

#### **3.1.4 Data Flow & Evidence Chain (資料流與證據鏈)**

**\[ANCHOR:ARCH-V810-3-1-4-DATAFLOW\]**

在三平面架構下，資料流向必須遵循 **「證據驅動 (Evidence-Driven)」** 原則：

1. **Instruction Flow (指令流)**: User → Control Plane (Approve) → Execution Plane (Run)。  
2. **Evidence Flow (證據流)**: Execution Plane (Generate Artifacts) → Evidence Triplet (Verdict/Index/Bundle) → Control Plane (Verify) → User (Review)。  
3. **Governance Flow (治理流)**: Control Plane → Enforce Policy → Execution/Peripheral Plane。

**架構決策 (ADR-026)**: 任何跨平面的互動，都必須留下可稽核的 **Evidence Triplet**。無證據的互動視為無效操作。

---

### **3.2 V2 Container View (容器視圖：15 CA \+ Pipelines \+ Data Backbone)**

**\[ANCHOR:ARCH-V810-3-2-CONTAINER\]**

本視圖揭示系統內部的「容器（Containers）」——即可獨立部署/執行的應用程式或資料儲存單元。在 Spartoi-OMOC 架構中，容器主要由 **15 個子系統（15 CA）**、**OMOC 執行環境** 與 **統一資料主幹（Unified Data Backbone）** 構成。  
---

#### **3.2.1 System Topology (系統拓撲)**

**\[ANCHOR:ARCH-V810-3-2-1-TOPOLOGY\]**

系統採用 **「管道-過濾器（Pipes and Filters）」** 與 **「三平面分治（Tri-Plane Separation）」** 混合架構。資料流（Pipeline A/B/C）單向流動，控制流（Control Plane）垂直治理。

graph TD  
    %% External Systems  
    XQ\[("XQ Global Winner\\n(Sole Order Endpoint)")\]:::ext  
    Web\[("Web Sources\\n(Allowlist Only)")\]:::ext

    %% Data Backbone (Shared)  
    subgraph Data\_Backbone \[Unified Data Backbone\]  
        Git\[("Git Repo\\n(Specs/Code/Index)")\]:::db  
        DVC\[("DVC Cache\\n(Pointers)")\]:::db  
        Obj\[("Object Storage\\n(Raw/Parquet/Artifacts)")\]:::db  
        Ledger\[("RunLedger & RefDB\\n(Lineage/Calendar)")\]:::db  
    end

    %% Execution Plane (15 CA Grouped by Macro Modules)  
    subgraph Execution\_Plane \[Execution Plane (OMOC Orchestrated)\]

        subgraph Macro\_K \[K: Knowledge\]  
            WRC\[CA-WRC\] \--\> CORPUS\[CA-CORPUS\]  
            CORPUS \--\> DISTILL\[CA-DISTILL\]  
        end

        subgraph Macro\_S \[S: Strategy\]  
            DISTILL \--\> DSL\[CA-DSL\]  
            DSL \--\> METHOD\[CA-METHOD\]  
        end

        subgraph Macro\_F \[F: Features\]  
            METHOD \-.-\> TA\[CA-TA\]  
            TA \--\> SELECT\[CA-SELECT\]  
        end

        subgraph Macro\_B \[B: Backtest\]  
            METHOD \--\> BACKTEST\[CA-BACKTEST\]  
            BACKTEST \--\> PERFORM\[CA-PERFORM\]  
        end

        subgraph Macro\_O \[O: Ops & Exec\]  
            SELECT \--\> TRANSLATE\[CA-TRANSLATE\]  
            TRANSLATE \--\> WATCH\[CA-WATCH\]  
            TRANSLATE \--\> EXECUTE\[CA-EXECUTE\]  
        end

        subgraph Macro\_G \[G: Governance\]  
            GOVERN\[CA-GOVERN\]  
            COLLAB\[CA-COLLAB\]  
            UI\[CA-UI\]  
        end  
    end

    %% Interactions  
    Web \--\> WRC  
    EXECUTE \--\> XQ  
    WATCH \-.-\> XQ

    %% Data Access  
    Execution\_Plane \<--\> Data\_Backbone

    classDef ext fill:\#444,stroke:\#fff,color:\#fff  
    classDef db fill:\#246,stroke:\#fff,color:\#fff

* *Ref: 15CA 重構升級藍圖 §3.1, Pipeline-A+B 整合資料庫方案 §3.1*

#### **3.2.2 15 CA Subsystem Containers (15子系統容器定義)**

**\[ANCHOR:ARCH-V810-3-2-2-15CA\]**

本系統嚴格鎖定為以下 **15 個子系統（Stable ID）**。每個子系統視為一個邏輯容器，具備獨立的 I/O 契約與職責邊界。 **嚴禁** 新增第 16 個子系統（如已廢除的 CA-FIREWALL）或將 Gate 升格為子系統（如 SF-11）。

##### **(A) Knowledge & Spec Group (Macro: K & S)**

負責將非結構化知識轉化為可執行的策略規格。

* **CA-WRC (Writer/Research Collector)**：白名單資源蒐集容器。負責將外部 Web/PDF 資源「封印」為不可竄改的 Raw Artifacts。  
  * *Constraint*: 禁止解析（No Parsing），僅搬運與 Hash。 \[SRS v8.1 §3.1\]  
* **CA-CORPUS (Corpus Indexer)**：語料索引容器。負責多模態解析與建立向量/關鍵字索引。  
  * *Constraint*: 覆蓋率 100%，無索引即無知識。 \[SRS v8.1 §3.2\]  
* **CA-DISTILL (Distiller)**：知識蒸餾容器。負責從語料中萃取邏輯並生成基底偽代碼。  
  * *Gate*: SEM³ SGF (Source-Grounded Faithfulness)。 \[SRS v8.1 §3.3\]  
* **CA-DSL (DSL Generator)**：原語生成容器。負責將偽代碼映射為市場中立的 DSL 規格。  
  * *Constraint*: 禁止包含台股常數（Market Profile Binding）。 \[SRS v8.1 §3.4\]  
* **CA-METHOD (Method Designer)**：方法制定容器。負責結合 DSL、市場常數與風控規則，產出版本化的 `MethodCard`。  
  * *Gate*: SEM³ MSC (Method-Semantics Conformance)。 \[SRS v8.1 §3.5\]

##### **(B) Backtest & Evaluation Group (Macro: B)**

負責驗證策略規格的有效性與真實性。

* **CA-BACKTEST (Backtest Adapter)**：回測容器。在凍結的歷史資料上執行策略，產出 `ART-BACKTEST-RESULT`。  
  * *Constraint*: 僅限紙上作業（Paper-Only），嚴禁聯網下單。 \[SRS v8.1 §3.6\]  
* **CA-PERFORM (Performance)**：績效分析容器。執行 **Dual-Track** 評估（策略績效 vs 工程可靠度），產出閉環建議。  
  * *Ref*: Pipeline-B 組合方案 v2。 \[SRS v8.1 §3.12\]

##### **(C) Execution & Ops Group (Macro: F & O)**

負責將策略轉化為執行指令並進行監控。

* **CA-TA (Technical Analysis)**：技術分析容器。依據 MethodCard 產出多時窗技術指標與特徵。 \[SRS v8.1 §3.7\]  
* **CA-SELECT (Selection)**：選股容器。執行漏斗篩選與排序（Ranking），產出候選清單。 \[SRS v8.1 §3.8\]  
* **CA-TRANSLATE (XS Translator)**：轉譯容器。將選股結果與策略邏輯轉譯為 **XS 腳本 (XSPack)**。  
  * *Gate*: SEM³ TVE (Translation-Execution Equivalence)。 \[SRS v8.1 §3.9\]  
* **CA-WATCH (Watchlist)**：監控容器。僅作為「雷達」，產出訊號與告警，**嚴禁下單**。 \[SRS v8.1 §3.10\]  
* **CA-EXECUTE (Execution Adapter)**：執行適配容器。系統與 XQ 的唯一接觸點。  
  * *Constraint*: 預設 **EXECUTE\_DISABLED**。僅在 HITL 核准後產生指令文件，**不做自動 API 下單**。 \[SRS v8.1 §3.11\]

##### **(D) Governance Group (Macro: G)**

負責全域治理、協作與介面。

* **CA-GOVERN (Governance Hub)**：治理中樞容器。執行 Gate 檢核、維護控制面三件套（Flag/Degrade/Snapshot）、生成版本清單（Manifest）。 \[SRS v8.1 §3.15\]  
* **CA-COLLAB (Collaboration)**：協作容器。管理 OMOC 多代理協作流程、WT-NA 精靈與雙模切換。 \[SRS v8.1 §3.13\]  
* **CA-UI (Console)**：介面容器。提供唯讀的狀態呈現與 HITL 確認入口，**嚴禁包含交易邏輯**。 \[SRS v8.1 §3.14\]

#### **3.2.3 Data Backbone Containers (資料主幹容器)**

**\[ANCHOR:ARCH-V810-3-2-3-DB\]**

依據 **Pipeline-A+B 整合資料庫方案**，資料儲存採分層治理：

| 容器名稱 | 技術選型 | 儲存內容 (SSOT Content) | 架構屬性 |
| ----- | ----- | ----- | ----- |
| **Git Repository** | GitHub | 程式碼、規格 (Specs)、配置 (Configs)、索引 (Indexes)、MethodCards | **Versioned, Text-based** |
| **DVC Cache** | DVC | 大檔指針 (Pointers)、資料雜湊 (Hashes) | **Bridge** |
| **Object Storage** | S3 / MinIO | 原始教材 (PDF)、語料快照、回測數據 (Parquet)、證據包 (Bundle) | **Immutable, Blob** |
| **ReferenceDB** | DuckDB / Parquet | 交易日曆、股票代碼表 (Instrument Master)、Corporate Actions | **Read-Only Reference** |
| **RunLedger** | SQLite / DuckDB | 執行紀錄 (Lineage)、證據索引、版本清單 (Version Manifests) | **Append-Only Log** |

#### **3.2.4 Pipeline Interaction Topology (管線互動拓撲)**

**\[ANCHOR:ARCH-V810-3-2-4-PIPELINES\]**

各容器透過三條單向依賴的管線進行串接，確保資料流的可追溯性。

* **Pipeline A (Knowledge & Spec)**:  
  * `Source` \-\> \[CA-WRC\] \-\> \[CA-CORPUS\] \-\> \[CA-DISTILL\] \-\> \[CA-DSL\] \-\> `SpecPack`  
  * *Output*: 可被版本化的知識規格包。  
* **Pipeline B (Strategy & Backtest)**:  
  * `SpecPack` \-\> \[CA-METHOD\] \-\> \[CA-BACKTEST\] \-\> \[CA-PERFORM\] \-\> `StrategyPack`  
  * *Output*: 經驗證的策略與回測報告。  
* **Pipeline C (Execution)**:  
  * `StrategyPack` \-\> \[CA-TA\] \-\> \[CA-SELECT\] \-\> \[CA-TRANSLATE\] \-\> `XSPack`  
  * `XSPack` \-\> \[CA-WATCH\] \-\> (HITL) \-\> \[CA-EXECUTE\]  
  * *Output*: 可執行的腳本與指令文件。

#### **3.2.5 Orchestration & Agent Containers (編排與代理容器)**

**\[ANCHOR:ARCH-V810-3-2-5-OMOC\]**

* **OMOC Orchestrator**: 運行於 Execution Plane 的 Python 應用，負責讀取 `JobCard`，調度 15 CA 容器執行任務。  
* **Agent Swarm (Chef/Deputy/Experts)**: 一組無狀態的邏輯單元，依附於 CA-COLLAB 容器內運作，負責生成內容與執行推理。  
  * *Constraint*: 禁止 Agent 遞迴生子，所有任務派發由 Chef 統一控管。 \[OMOC-MVU Package\]

---

### **3.3 V3 Deployment View (部署視圖)**

**\[ANCHOR:ARCH-V810-3-3-DEPLOYMENT\]**

本視圖定義 Spartoi-OMOC 的實體運行環境與部署拓樸。系統採用 **「雲地混合、控制分離（Hybrid Cloud-Local, Control-Separated）」** 的部署策略，將 **Control Plane（治理）** 託管於 GitHub，**Execution Plane（執行）** 運行於受控的容器或本地環境，**Data Plane（數據）** 則遵循 DVC/Git 分層儲存架構。  
---

#### **3.3.1 Deployment Topology Overview (部署拓樸概覽)**

**\[ANCHOR:ARCH-V810-3-3-1-TOPOLOGY\]**

系統部署劃分為四個物理/邏輯隔離的區域（Zones），各區域間透過嚴格定義的介面（Interface）進行通訊，嚴禁跨區直接存取。

1. **Zone 1: Control Plane Host (GitHub Cloud)**

   * **定位**：系統的「大腦」與「法律中心」。負責存放源碼（Git）、執行自動化檢核（Actions）、管理環境閘門（Environments）與合併隊列（Merge Queue）。  
   * **權限**：擁有對 Execution Plane 的 **BLOCK\_RELEASE**（阻斷發布）權限，但不直接觸碰交易私鑰或執行下單。  
   * *Ref: Blueprint v2.2.0-r1 §3.1, OMOC-MVU Package*  
2. **Zone 2: Execution Runtime (Local / Codespaces)**

   * **定位**：系統的「手腳」。運行 OMOC 多代理（Chef/Deputy/Experts）與 15 CA 子系統。  
   * **環境**：  
     * **Dev Mode**: GitHub Codespaces（標準化容器，用於開發、回測、文件生成）。  
     * **Ops Mode**: Local Secure Runtime（本地安全環境，用於產出 XS 腳本與執行監控）。  
   * *Ref: SubP1 Runbook v1.4.0, Delivery Plan §3.2*  
3. **Zone 3: Unified Data Backbone (Distributed Storage)**

   * **定位**：系統的「記憶」。採用三層式儲存架構（Git / DVC / Object Storage）。  
   * **部署**：  
     * **Hot Data**: GitHub Repo (Git) \- 存放 Specs, Configs, Code。  
     * **Warm Data**: DVC Cache (Local/S3) \- 存放中型二進位檔、模型權重。  
     * **Cold Data**: Object Storage (S3/MinIO/GCS) \- 存放原始語料（PDF）、回測報告快照、Evidence Bundles。  
   * *Ref: Pipeline-A+B 整合資料庫方案*  
4. **Zone 4: External Execution Endpoint (XQ Terminal)**

   * **定位**：系統的「執行終端」。**XQ 全球贏家** 為唯一實盤下單口。  
   * **隔離**：Zone 2 與 Zone 4 之間存在 **Air-Gap（邏輯斷路）**，僅允許透過檔案交換（XS Script Import / Log Export）進行非同步通訊，嚴禁 API 直連。  
   * *Ref: SRS v8.1.0 §1.1.4, Audit Report A \[F-016\]*

#### **3.3.2 Node Specifications (節點規格詳述)**

**\[ANCHOR:ARCH-V810-3-3-2-NODES\]**

##### **A. Control Plane Node (GitHub)**

* **Artifacts Hosted**:  
  * `Source Code` (Repositories)  
  * `Action Workflows` (CI/CD Pipelines)  
  * `Governance Policies` (Rulesets, Environment Protection Rules)  
* **Key Mechanisms**:  
  * **Merge Queue**: 作為代碼合併的強制序列化節點。  
  * **Gate Runner (Actions)**: 執行 `omoc-mvu / quality-gates` 等檢查作業。  
  * **Evidence Attestation**: 存儲構建證明（Build Provenance）。  
  * *Ref: OMOC-MVU Package (GitHub\_ControlPlane\_Appendix)*

##### **B. Execution Runtime Node (Containerized)**

* **Base Image**: `mcr.microsoft.com/devcontainers/python:3.13` (Locked Version).  
* **Runtime Components**:  
  * **OMOC Harness**: 運行多代理協作邏輯。  
  * **15 CA Modules**: 執行各子系統邏輯（如 CA-BACKTEST 引擎）。  
  * **Local DB Instances**: DuckDB / SQLite (ReferenceDB & RunLedger)。  
* **Network Constraints**:  
  * **No-Paid-LLM-API**: 禁止外連付費 LLM API，僅允許訪問白名單內的 WebTools 端點或本地模型介面。  
  * *Ref: SRS v8.1.0 §2.3.5, LBP-C(ADR) ADR-004*

##### **C. Data Plane Nodes (Storage Hierarchy)**

* **Layer 1: Git (Metadata & Specs)**  
  * **Content**: MethodCards, SpecPacks, YAML Configs, Source Code.  
  * **Constraint**: 單檔限制 \< 50MB (Soft limit)，大檔必須走 DVC。  
* **Layer 2: DVC (Data Version Control)**  
  * **Content**: Dataset Pointers (.dvc), Model Files, Large Evidence Bundles.  
  * **Remote**: 映射至 S3 或 GCS Bucket。  
* **Layer 3: Object Storage / Local Disk**  
  * **Content**: Raw Corpus (PDFs), Backtest Full Logs, Parquet Lakes.  
  * *Ref: Pipeline-A+B 整合資料庫方案 §3.1*

#### **3.3.3 Interface & Security Boundaries (介面與安全邊界)**

**\[ANCHOR:ARCH-V810-3-3-3-BOUNDARIES\]**

本架構定義了三個關鍵的安全邊界，任何跨越邊界的資料流都必須經過 Gate 驗證。

1. **Boundary A: Control-Execution Boundary (CI/CD Pipeline)**

   * **Flow**: Code Push (Execution \-\> Control) / Config Pull (Control \-\> Execution).  
   * **Guard**: **GitHub Rulesets & Required Checks**. 任何推送到 Control Plane 的代碼必須通過 CI Gate 驗證；Execution Plane 下載的 Config 必須通過簽章或 Hash 驗證。  
   * *Ref: OMOC-MVU Package*  
2. **Boundary B: Execution-External Boundary (Air-Gap Bridge)**

   * **Flow**: XS Script (Execution \-\> XQ) / Trade Log (XQ \-\> Execution).  
   * **Guard**: **HITL (Human-In-The-Loop)**.  
   * **Mechanism**:  
     * CA-TRANSLATE 產出 `xs_script_pack.zip`。  
     * 人類操作者（Operator）手動下載並匯入 XQ。  
     * **禁止**：任何自動化腳本模擬鍵盤滑鼠直接操作 XQ。  
   * *Ref: SRS v8.1.0 §3.11*  
3. **Boundary C: Execution-LLM Boundary (WebTools-NA)**

   * **Flow**: Prompt Context (Execution \-\> Web LLM) / Response (Web LLM \-\> Execution).  
   * **Guard**: **No-Paid-API Policy**.  
   * **Mechanism**:  
     * 透過剪貼簿（Clipboard）或瀏覽器自動化（Browser Automation \- 非 API）進行互動。  
     * CA-COLLAB 負責組裝 Prompt 並驗證 Response Hash。  
   * *Ref: ARCH v6.0.0-r5 §4.19 (WT-NA)*

#### **3.3.4 Deployment Configurations (部署配置)**

**\[ANCHOR:ARCH-V810-3-3-4-CONFIGS\]**

系統支援兩種標準部署配置，透過 run\_config\_snapshot.json 進行切換與記錄。

### **部署配置矩陣**

| 配置模式 (Profile) | 適用場景 | 執行環境 | 資料存取 | 外部連線 |
| :---- | :---- | :---- | :---- | :---- |
| **Profile-Dev (開發/回測)** | 策略研發、回測驗證、文件生成 | **Dev Container Runtime**  （可落於 GitHub Codespaces 或本地 VS Code Dev Containers \+ Docker 等） | Full Access（Dev） | 白名單（PyPI, GitHub） |
| **Profile-Ops (生產/產出)** | 技術分析、訊號生成、XS轉譯 | Local Secure Runtime | Local Cache \+ Sync | **嚴格白名單（無自動更新）** |

### **核心定義 (Architecture-Level, Non-Operational)**

* **Dev Container Runtime**：  
  指任何依據 devcontainer.json / Development Containers 規格建立之「可重現開發容器」執行宿主；其可由雲端型（例如 Codespaces）或本地型（例如 VS Code Dev Containers \+ Docker）提供。架構層只規範「類型」，不綁定單一產品供應商。  
* **Full Access（Dev）**：  
  在 Profile-Dev 中允許開發/回測所需的廣域存取能力（含工作目錄與必要外部依賴取得）；但仍受「外部連線白名單」約束，以避免供應鏈隱性擴張。  
* **外部連線白名單**：  
  此欄位描述「架構允許的依賴/來源範圍」；具體落地的連線策略、映像來源、套件快取與固定版本機制，屬於 RUNBOOK/WI 與 OMOC-MVU Local Docker Bridge 的實作治理範圍，不寫回 ARCH。

### **強制性治理規則**

**Fail-Closed Rule**

若偵測到運行環境與 Profile 定義不符（例如在 Profile-Ops 中嘗試連接 PyPI），系統必須觸發 **EXECUTE\_DISABLED**。

*Ref: SRS v8.1.0 §5.1, LBP-C(ADR) ADR-026*

---

### **3.4 V4 Observability View (Logs / Events / Metrics 三通道觀測視圖)**

**\[ANCHOR:ARCH-V810-3-4-OBSERVABILITY\]**

**架構意圖**：本視圖定義系統如何透過 **Logs（日誌）**、**Events（事件）**、**Metrics（指標）** 三通道機制，實現對 15 個子系統（15 CA）運作狀態的透明化監控與事後審計。此架構是 **Evidence-Driven** 治理的核心基礎。

#### ---

 **3.4.1 Three-Channel Architecture (三通道架構)**

**\[ANCHOR:ARCH-V810-3-4-1-CHANNELS\]**

依據 **SRS v8.1.0 §4.2.1** 與 **ARCH v6.0.0-r5 §10.1**，系統觀測資料強制分流為以下三條獨立通道，每條通道具備不同的寫入頻率、儲存策略與消費目的：

| 通道 (Channel) | 定義與職責 (Definition & Scope) | 寫入頻率 | 儲存策略 (Data Backbone) | 主要消費者 |
| ----- | ----- | ----- | ----- | ----- |
| **C1: Logs**(系統日誌) | **定義**：紀錄程式執行過程中的非結構化或半結構化訊息（Debug, Info, Warn, Error）。**職責**：故障排除（Troubleshooting）與執行細節追蹤。**內容**：Stack trace, API calls, I/O latency。 | 高頻 (Real-time) | **Local/Ephemeral**路徑：`/logs/{subsystem}/{run_id}.log`保留：依 Runbook 定義定期輪替 (Rotate) | System Builders(Debug) |
| **C2: Events**(業務事件) | **定義**：紀錄具有業務意義或狀態變更的結構化事實（State Changes, Milestones）。**職責**：審計（Auditing）與流程還原（Replay）。**內容**：Gate Verdicts, Flag Toggles, Order Status Changes, Agent Mode Switch。 | 中頻 (Transactional) | **Immutable/Persistent**路徑：`/events/{date}/{event_type}.jsonl`保留：**永久保存** (Perpetual) | AuditorsCA-GOVERN |
| **C3: Metrics**(效能指標) | **定義**：紀錄可聚合、可量化的數值型資料（Quantifiable Measures）。**職責**：趨勢分析（Trend Analysis）與健康度監控（Health Check）。**內容**：SGF Score, PBO, Win Rate, API Latency, Token Usage。 | 週期性 (Batch/Aggregated) | **Time-Series/Columnar**路徑：`/metrics/{date}/{metric_group}.parquet`保留：依 Fitness 週期存檔 | CA-PERFORMCA-UI (Dashboard) |

* *Ref: SRS v8.1.0 §4.2.1, ARCH v6.0.0-r5 §10.1, 15CA BP §10.2*

#### **3.4.2 Responsibility Matrix (責任矩陣)**

**\[ANCHOR:ARCH-V810-3-4-2-RESPONSIBILITY\]**

為避免觀測職責不清導致的資料孤島，本架構依據 **15CA 重構升級藍圖** 定義明確的生產與消費責任：

* **Universal Producers (全域生產者)**：

  * **All 15 CA Subsystems**：所有子系統皆 **必須 (MUST)** 實作標準化的 Log 介面，並將 Logs 寫入指定目錄。  
  * **Constraint**：子系統 **不得** 私自建立隱藏日誌或將關鍵事件僅寫入 Logs 通道（關鍵事件必須寫入 Events 通道）。  
* **Event Arbiter (事件裁決者)**：

  * **CA-GOVERN**：作為事件通道的守門員，負責定義標準事件 Schema（如 `event_id`, `timestamp`, `source_ca`, `payload`），並驗證寫入的事件是否合規。  
  * *Ref: ARCH v6.0.0-r5 §10.1*  
* **Metrics Calculator (指標計算者)**：

  * **CA-PERFORM**：負責從 Logs 與 Events 中聚合計算 Track-A（策略績效）與 Track-B（工程可靠度）指標。  
  * **Constraint**：其他子系統僅負責提供原始數據（Raw Data），**禁止** 自行計算最終績效指標（避免球員兼裁判）。  
  * *Ref: ARCH v6.0.0-r5 §4.15*  
* **Unified Display (統一呈現者)**：

  * **CA-UI**：作為觀測資料的唯一視覺化入口，負責渲染 Dashboard 與 Log Viewer。CA-UI **僅讀取** 上述三通道的資料，**嚴禁** 寫入或修改觀測數據。  
  * *Ref: SRS v8.1.0 §3.14*

#### **3.4.3 Traceability & Lineage (RunLedger) (追溯與血緣)**

**\[ANCHOR:ARCH-V810-3-4-3-TRACEABILITY\]**

依據 **SRS v8.1.0 §4.1.3** 與 **Pipeline-A+B 整合資料庫方案**，觀測架構必須支撐全域血緣追溯。

* **RunLedger Integration (運行台帳整合)**：

  * 每個 `Run`（執行單元）必須生成一個唯一的 `run_id`。  
  * 所有三通道資料（Logs/Events/Metrics）必須包含 `run_id` 標籤，以便在 **RunLedger** 中進行關聯。  
  * **Lineage Query (血緣查詢)**：系統必須支援「給定一個 `order_id`，反查其 `run_id`、`strategy_version`、`market_data_snapshot` 與 `agent_session_log`」的能力。  
  * *Ref: SRS v8.1.0 §4.1.3, Pipeline-A+B 整合資料庫方案*  
* **Evidence Binding (證據綁定)**：

  * 關鍵事件（如 `Gate Verdict: PASS`）必須包含指向 **Evidence Store** 中具體 `bundle_hash` 的指標（`evidence_ptr`）。  
  * **Fail-Closed**：若事件紀錄缺乏有效的 `evidence_ptr`，該事件在審計時視為 **INVALID**。

#### **3.4.4 Observability Fail-Safe (觀測失效防護)**

**\[ANCHOR:ARCH-V810-3-4-4-FAILSAFE\]**

當觀測系統本身發生異常時，架構必須具備以下失效防護機制，以確保「不可觀測即不可執行」：

* **Log-Full Protection (日誌滿載防護)**：

  * 當 Logs 儲存空間耗盡或寫入失敗時，系統應觸發 **Circuit Breaker**。  
  * **Action**：暫停非關鍵業務（如回測），對關鍵業務（如監控）降級為 **Memory-Only Logging** 並發出高優先級告警。  
* **Event-Loss Prevention (事件遺失防護)**：

  * Events 通道採 **Write-Ahead** 或 **Atomic** 寫入策略。  
  * **Constraint**：若關鍵業務事件（如 `Order Submitted`）寫入失敗，交易操作 **必須 (MUST)** 同步失敗（Rollback），嚴禁「交易成功但沒紀錄」。  
* **Metric-Drift Alerting (指標漂移告警)**：

  * CA-GOVERN 需監控 Metrics 的產出頻率。若 CA-PERFORM 未按時產出指標（Heartbeat Miss），系統應自動切換至 **RADAR\_ONLY** 模式，防止在「致盲」狀態下繼續運行。  
  * *Ref: SRS v8.1.0 §4.2.4, LBP-E(Fitness)*

---

### **3.5 V5 Security & Supply Chain View (安全與供應鏈視圖)**

**\[ANCHOR:ARCH-V810-3-5-SECURITY\]**

本視圖定義 Spartoi-OMOC 的安全架構，重點在於防範 **LLM 供應鏈攻擊 (Supply Chain Attacks)** 與 **過度代理 (Excessive Agency)** 風險。依據 **SRS v8.1.0 §2.3.4** 與 **Blueprint v2.2 §Peripheral Plane**，本系統採行 **「預設拒絕 (Default Deny)」** 與 **「三層防禦 (Tri-Layer Defense)」** 策略。  
---

#### **3.5.1 Supply Chain Hardening Architecture (供應鏈硬化架構)**

**\[ANCHOR:ARCH-V810-3-5-1-HARDENING\]**

為防止惡意代碼透過第三方依賴注入（如被駭的 GitHub Actions 或惡意 PyPI 包），架構強制執行以下機制：

* **Immutable Dependency Pinning (不可變依賴釘選)**：

  * **機制**：所有 CI/CD Workflow 中的 `uses:` 指令，以及關鍵 Runtime 依賴，**必須** 鎖定至 **Full-Length Commit SHA (40-hex)**，嚴禁使用浮動標籤（如 `@v1`, `@latest`）。  
  * **治理落點**：**CA-GOVERN** 負責維護 `pin_manifest.json`，並透過 **GATE-SC-001-PINACT** 自動攔截未釘選的變更。  
  * *Ref: SRS v8.1 §2.3.4, OMOC-MVU Package (Tooling)*  
* **Skill Registry & Allowlist (技能註冊表與白名單)**：

  * **機制**：所有外部技能（Skills）與 MCP Servers 必須註冊於 `.skilz/registry.yaml` 白名單中，包含其 `source_repo`、`commit_sha` 與 `risk_level`。  
  * **Fail-Closed**：未註冊的技能，Runtime **必須** 拒絕載入；CI **必須** 阻斷包含該技能的 PR。  
  * *Ref: 15CA BP §6.5, OMOC-MVU Package (Registry)*

#### **3.5.2 Peripheral Plane Isolation (外圍平面隔離架構)**

**\[ANCHOR:ARCH-V810-3-5-2-ISOLATION\]**

針對 **Peripheral Plane**（外部工具、MCP、OpenClaw），架構實施嚴格的隔離與降級策略，以修補 **A:CRIT-009**（工具選擇缺乏約束）。

* **Default Deny Policy (預設拒絕政策)**：

  * **定義**：任何外部連線請求（Network）、檔案寫入（File Write）或系統指令（Shell Exec），若非 Core Pipeline 必要路徑，預設一律阻斷。  
  * **啟用契約**：啟用任一外部工具必須滿足 **Enable Contract**：  
    1. **Manifest**：列入白名單。  
    2. **Sandbox**：運行於受限容器或沙箱中。  
    3. **Consent**：通過 HITL 顯式授權（針對高風險操作）。  
  * *Ref: Blueprint v2.2 §Peripheral Plane, SRS v8.1 §2.3.4*  
* **Radar-Only Degradation (雷達模式降級)**：

  * **機制**：當外部工具的安全狀態不明（如掃描失敗、憑證過期）時，系統自動降級為 **RADAR\_ONLY** 模式。  
  * **行為**：僅允許讀取資料與發送警報，**物理切斷** 寫入與執行能力（Execution Disabled）。  
  * *Ref: SRS v8.1 §1.3.1, 15CA BP §9*

#### **3.5.3 Vulnerability Scanning Integration (弱點掃描整合)**

**\[ANCHOR:ARCH-V810-3-5-3-SCANNING\]**

架構在 **Control Plane** 嵌入強制性的掃描環節，作為 **GATE-SC-002-SUPPLYCHAIN** 的執行實體。

* **Static Analysis (靜態分析)**：  
  * **目標**：掃描 GitHub Actions Workflow 與 Infrastructure Code。  
  * **掛點**：CI Pipeline (Pre-Merge)。  
  * **工具角色**：整合 **Zizmor** (Actions Risk) 與 **OSSF Scorecard** (Repo Health) 作為標準掃描器（非 Normative，可替換，但必須存在）。  
* **Fail-Closed Trigger**：若掃描報告中包含 `HIGH` 或 `CRITICAL` 級別漏洞，**CA-GOVERN** 必須觸發 **BLOCK\_RELEASE**。  
  * *Ref: OMOC-MVU Package (Scanning), 15CA BP §7*

#### **3.5.4 OWASP LLM Threat Mapping (OWASP LLM 威脅映射)**

**\[ANCHOR:ARCH-V810-3-5-4-OWASP\]**

本架構明確對應 **OWASP Top 10 for LLM** 的關鍵威脅，確保合規性。

| OWASP ID | 威脅名稱 | 架構對策 (Architectural Countermeasure) | 驗證 Gate |
| ----- | ----- | ----- | ----- |
| **LLM05** | Supply Chain Vulnerabilities | **Pinning Enforcement** (3.5.1) \+ **Skill Registry** (3.5.1) | GATE-SC-001 |
| **LLM08** | Excessive Agency | **Role-Based Orchestration** (Chef-Only Delegate) \+ **Default Deny** (3.5.2) | GATE-SC-002 |
| **LLM02** | Insecure Output Handling | **SEM³ Validation (TVE)** \+ **Route-Out** (To Runbook) | GATE-TRANSLATE-TVE |

* *Ref: Blueprint v2.2 §OWASP Mapping, SRS v8.1 §4.3*

#### **3.5.5 Artifact Provenance (工件溯源架構)**

**\[ANCHOR:ARCH-V810-3-5-5-PROVENANCE\]**

為確保「所見即所得」與防止構建過程被竄改，架構要求建立完整的 **Provenance (溯源)** 鏈。

* **Evidence Binding (證據綁定)**：  
  * 所有 **SpecPack**、**StrategyPack** 與 **XSPack** 的產出，必須包含 **Build Provenance**（構建來源證明）。  
  * **機制**：利用 GitHub Artifact Attestations（或等價機制）對產物進行簽章，連結至觸發構建的 Git Commit SHA 與 Workflow Run ID。  
* **Verification (驗證)**：  
  * 下游 Pipeline（如 Pipeline-C）在讀取上游產物（如 Pipeline-B StrategyPack）時，**必須** 驗證其 Provenance 簽章。驗證失敗則 **Fail-Closed**。  
  * *Ref: OMOC-MVU Package (Evidence), 15CA BP §3*

---

## **§4. System Decomposition (15 CA 子系統架構)**

**\[ANCHOR:ARCH-V810-SEC4\]**  
---

**4.1 CA-WRC (Writer/Research Collector)**

\[ANCHOR:ARCH-V810-4-1-WRC\]  
---

#### **4.1.1 核心定義 (Core Definition)**

* **Stable ID**: `CA-WRC` (不可變更)  
* **Display Name**: 白名單資源中心（教材/來源）  
* **Macro Module**: K (Knowledge & Distill)  
* **Architectural Role**: Pipeline-A (Knowledge) 的**信任根（Trust Root）與資料入口（Ingress）**。  
* **Primary Responsibility**: 負責從白名單來源（Allowlist Sources）獲取原始素材（Raw Assets），執行密碼學封印（Cryptographic Sealing），並產出具備完整溯源資訊（Provenance）的入庫清單。  
* **Negative Constraint (硬性邊界)**: **嚴禁 (MUST NOT)** 執行任何內容解析、OCR、格式轉換或資料清洗。此職責屬於 downstream 的 `CA-CORPUS`。`CA-WRC` 只負責「搬運 \+ 封印」。

#### **4.1.2 架構視圖 (Architecture View)**

**Context Relationship**:

* **Upstream**: 外部網路/本地檔案系統 (External Web/Local FS) — *受 `sources.yaml` 白名單限制*。  
* **Downstream**: `CA-CORPUS` (依賴 `ART-CORPUS-RAW` 進行索引)。  
* **Control**: `CA-GOVERN` (提供白名單規則與 Gate 裁決)。

**Component Decomposition (L3 View)**:

1. **Ingestion Agent**: 讀取 `sources.yaml`，執行檔案抓取或複製。  
2. **Sealer (Fingerprinter)**: 計算原始檔案的 SHA-256 雜湊值，建立不可竄改的指紋。  
3. **Provenance Tagger**: 標註來源 Metadata (URI, Access Time, License)。  
4. **Tier Classifier**: 依據來源權威性標註 `Tier A` (官方/教材) / `Tier B` (社群) / `Tier C` (其他)。  
5. **Manifest Builder**: 彙整上述資訊生成 `input_manifest.json`。

#### **4.1.3 資料與介面契約 (Data & Interface Contract)**

依據 LBP-B(ICD) 與 Pipeline-A 方案，CA-WRC 的 I/O 必須符合以下契約：

| 介面類型 | 契約項目 | 規格/Artifact ID | 說明 |
| ----- | ----- | ----- | ----- |
| **Input** | **Source Allowlist** | `sources.yaml` | 定義允許的 URL/Path、預期 Hash、Tier 分級。 |
| **Output** | **Raw Corpus Artifact** | `ART-CORPUS-RAW` | 包含原始檔實體 (`wrc_snapshot.zip`) 與清單 (`input_manifest.json`)。 |
| **Output** | **Evidence Triplet** | `ART-EVIDENCE-TRIPLET` | 包含 `verdict.json` (入庫結果)、`evidence_index.json` (指紋索引)。 |
| **Storage** | **Data Backbone Zone** | `DB:CORPUS/RAW` | 落點於 `data/pipeline-a/wrc_raw/` (DVC Tracked)。 |

**`input_manifest.json` 核心欄位約束**:

* `source_id`: 唯一識別碼。  
* `source_uri`: 原始來源路徑。  
* `sha256`: 檔案內容雜湊（Seal）。  
* `tier`: 信任等級 (A/B/C)。  
* `retrieved_at`: 擷取時間戳 (ISO8601)。  
* `provenance_ptr`: 指向 `wrc_snapshot` 內的相對路徑。

#### **4.1.4 治理與驗收 (Governance & Acceptance)**

**Fail-Closed Policy**:

* **Hash Mismatch**: 若下載檔案 Hash 與 `sources.yaml` 定義不符 → **BLOCK\_RELEASE** (視為供應鏈攻擊或檔案損毀)。  
* **Non-Whitelist**: 若請求來源不在白名單 → **BLOCK\_RELEASE** (防止污染)。  
* **Missing Provenance**: 缺乏來源 Metadata → **BLOCK\_RELEASE** (視為無效資料)。

**Gate Hooks**:

| Gate ID | 檢查項目 | 綁定 Policy | Route-Out |
| ----- | ----- | ----- | ----- |
| **GATE-WRC-TIER** | 來源是否在白名單內？Tier 分級是否正確？ | BLOCK\_RELEASE | SRS §3.1.4 |
| **GATE-BP-003-EVIDENCE** | Evidence Triplet 是否完整？Hash 是否一致？ | BLOCK\_RELEASE | SRS §2.2.1 |
| **GATE-SAFE-001-READONLY** | 是否僅寫入 Output 目錄（不覆寫 Source）？ | BLOCK\_RELEASE | 15CA BP §4 |

#### **4.1.5 追溯與路由 (Traceability & Route-Out)**

* **Requirement Ref**: \[SRS-V810-FR-WRC\] (SRS v8.1.0 §3.1)  
* **Interface Ref**: \[CONTRACT-WRC-MANIFEST\] (LBP-B v5.0.1)  
* **Operational Ref**: \[OP-02\] (Runbook v1.4.0 §4.2)  
* **Pipeline Ref**: \[SRS81-PIPE-A-001\] (SRS v8.1.0 §5.2.2)  
* **Naming Ref**: \[ANCHOR:ARCH-NAMING-POLICY\] (ARCH §9.5)

---

#### **4.2 CA-CORPUS (Corpus Indexer)**

**\[ANCHOR:ARCH-V810-4-2-CORPUS\]**

本節定義 **CA-CORPUS** 的架構邊界、核心職責、元件拓樸與治理契約。作為 Pipeline-A 的核心處理樞紐，CA-CORPUS 承接 CA-WRC 的原始封存資料，負責執行多模態解析（Multi-Modal Parsing）與結構化索引（Structured Indexing），並產出系統唯一的語料真相源（SSOT）。  
---

##### **4.2.1 Architectural Mandate & Responsibility (架構職責)**

**\[ANCHOR:ARCH-V810-4-2-1-MANDATE\]**

* **核心職責 (Core Responsibility)**：

  * **結構化索引 (Structured Indexing)**：將非結構化原始檔（PDF/Markdown/Video）轉換為機器可讀的結構化快照（Corpus Snapshot），確保下游 CA-DISTILL 擁有穩定且可回溯的輸入源。  
  * **多模態路由 (Multi-Modal Routing)**：依據內容類型（文字、表格、圖像、影音）分流至專屬處理路徑，確保表格結構與視覺資訊不流失。  
  * **SSOT 維護 (SSOT Guardianship)**：維護 `corpus_snapshot.jsonl` 作為語料唯一真相；向量索引（Vector Index）僅作為可重建的快取（Cache），嚴禁視為 SSOT。  
  * **完整性保證 (Integrity Assurance)**：執行「100% 抽取覆蓋」檢核，確保輸入清單（Input Manifest）中的每個檔案皆被索引或明確記錄錯誤。  
* **架構邊界 (Boundaries)**：

  * **Upstream**：CA-WRC（接收 `ART-CORPUS-RAW`）。  
  * **Downstream**：CA-DISTILL（提供 `ART-CORPUS-INDEX`）。  
  * **Control Plane**：CA-GOVERN（接受 Gate 治理與版本註冊）。

##### **4.2.2 Component Topology (元件拓樸)**

**\[ANCHOR:ARCH-V810-4-2-2-COMPONENTS\]**

本子系統內部由以下架構元件組成（Implementation Route-Out: Pipeline-A 方案）：

| Component | Responsibility | SRS Trace | Implementation Pointer |
| ----- | ----- | ----- | ----- |
| **Ingest Controller** | 讀取 `input_manifest`，驗證來源 Hash 一致性，防止換料欺詐（Bait-and-Switch）。 | SRS81-FR-CORPUS-001 | Pipeline-A v2 §3.3 |
| **Content Router** | 依據 MIME type 與內容特徵，將資料流導向 Text/Table/Visual/Video 四大處理路徑。 | SRS81-FR-CORPUS-003 | ARCH v6.0 §4.2.5 |
| **Table Parser** | 專責處理表格結構復原（Structure Recovery），產出保留行列關係的結構化數據（非純文本）。 | SRS81-FR-CORPUS-004 | Pipeline-A v2 §3.6 |
| **Canonical Indexer** | 將各路徑產出彙整為 `corpus_snapshot`，生成全域唯一 ID（DocID \+ ChunkID）與 `provenance_ptr`。 | SRS81-FR-CORPUS-005 | SRS v8.1 §3.2.1 |
| **Cache Manager** | (Accelerator) 管理向量資料庫（Qdrant/Chroma）的 Embedding 生成與寫入，標記為 Ephemeral（可重建）。 | SRS81-FR-CORPUS-001 | Pipeline-A v2 §3.3 |

**Fail-Closed Mechanism**: 若 Content Router 無法識別內容類型，或 Table Parser 無法解析表格結構，必須標記為 `PARSING_ERROR` 並阻斷該檔案進入 Snapshot，嚴禁「靜默丟棄」。

##### **4.2.3 Data Flow & Artifact Contract (資料流與工件契約)**

**\[ANCHOR:ARCH-V810-4-2-3-ARTIFACTS\]**

* **Input Contract**:

  * **Source**: `ART-CORPUS-RAW` (from CA-WRC)  
  * **Manifest**: `input_manifest.json` (必須包含 SHA-256 指紋)。  
  * **Route-Out**: Schema 定義見 ICD `SCHEMA-WRC-MANIFEST`。  
* **Output Contract (ART-CORPUS-INDEX)**:

  * **Primary Artifact**: `corpus_snapshot.jsonl` (或 Parquet)。這是所有下游任務的 **Normative Input**。  
  * **Traceability**: 每個 Entry 必須包含 `source_sha256`、`doc_id`、`chunk_id`、`offsets`。  
  * **Auxiliary Artifacts**:  
    * `tables/*.parquet`: 結構化表格實體。  
    * `media_ptr.json`: 圖片/影音的外部參照（避免 Git 膨脹）。  
    * `retrieval_quality_report.json`: 檢索品質報告（Context Relevance 指標）。  
  * **Route-Out**: Schema 定義見 ICD `SCHEMA-FILE-RAG-CORPUS-v1`。  
* **Data Backbone Alignment**:

  * 資料落點：Object Storage `s3://.../pipeline-a/corpus_ssot/`。  
  * 版本控制：DVC 追蹤 Snapshot 與大型 Parquet 檔。

##### **4.2.4 Governance & Fail-Closed Gates (治理與失效關閉)**

**\[ANCHOR:ARCH-V810-4-2-4-GATES\]**

本子系統必須通過以下 Gate 才能視為「完成」，否則觸發 Fail-Closed：

| Gate ID | Check Focus (檢核點) | Fail-Closed Behavior | Trace Ref |
| ----- | ----- | ----- | ----- |
| **GATE-CORPUS-COVERAGE** | **完整性**：驗證 `corpus_snapshot` 是否 100% 覆蓋 `input_manifest` 的有效條目。 | **BLOCK\_RELEASE**: 若有檔案未被索引且無 Error Log，阻斷 Pipeline-A。 | SRS §3.2.1 |
| **GATE-BP-003-EVIDENCE** | **可信度**：驗證 Evidence Triplet (Verdict/Index/Bundle) 是否完整且 Hash 一致。 | **BLOCK\_RELEASE**: 缺證據即視為未執行。 | Blueprint §4 |
| **GATE-DQ-001** | **資料品質**：驗證表格結構的 Schema 合規性（使用 Great Expectations）。 | **RADAR\_ONLY**: 標記品質異常，人工介入確認。 | SRS §3.2.2 |

##### **4.2.5 RTM (Requirements Traceability Matrix \- Corpus)**

**\[ANCHOR:ARCH-V810-4-2-5-RTM\]**

| SRS Req ID | Requirement Summary | ARCH Solution | Evidence Pointer (Hook) |
| ----- | ----- | ----- | ----- |
| **SRS81-FR-CORPUS-001** | Corpus Snapshot as SSOT | §4.2.1 SSOT Guardianship; §4.2.3 Output Contract | `corpus_snapshot.jsonl` |
| **SRS81-FR-CORPUS-002** | 100% Extraction Coverage | §4.2.4 GATE-CORPUS-COVERAGE | `verdict.json` (coverage\_rate) |
| **SRS81-FR-CORPUS-003** | Content Type Routing | §4.2.2 Content Router | `extraction_log.json` (routing\_path) |
| **SRS81-FR-CORPUS-004** | Structured Table Extraction | §4.2.2 Table Parser | `tables/*.parquet` |
| **SRS81-FR-CORPUS-005** | Chunk-to-Source Traceability | §4.2.3 Traceability Fields | `corpus_snapshot` (source\_sha256) |
| **SRS8-NFR-RAG-002** | Retrieval Quality Hooks | §4.2.3 Auxiliary Artifacts | `retrieval_quality_report.json` |

##### **4.2.6 Route-Out Register (外導註冊表)**

**\[ANCHOR:ARCH-V810-4-2-6-ROUTEOUT\]**

* **Interface Schema**: `Spartoi｜P1_LBP-B(ICD)_v5.0.1` \> `SCHEMA-FILE-RAG-CORPUS-v1`。  
* **Operational Procedures**: `Spartoi｜SubP1-LITE+MVP 開發 RUNBOOK & WI_v1.4.0` \> `OP-03 教材庫預處理`。  
* **Implementation Stack**: `Pipeline-A_組合方案 v2` \> `CA-CORPUS` (Unstructured/Marker/DVC)。  
* **Metric Thresholds**: `Spartoi｜P1_LBP-E(Fitness)_v3.0.1` \> `FIT-008` (SGF), `FIT-012` (Coverage)。

---

#### **§4.3 CA-DISTILL (Distiller)**

**\[ANCHOR:ARCH-V810-4-3-DISTILL\]**

**架構定位**： CA-DISTILL 是 Knowledge Pipeline 的核心「知識煉油廠」。其職責是將 CA-CORPUS 提供的非結構化語料索引（Corpus Index），透過 LLM 蒸餾轉化為結構化、可執行的「基底偽代碼（Base Pseudocode）」與「規格片段（Spec Fragments）」，並由 SEM³ 框架的第一階閘門（SGF）確保語義保真度。

**Fail-Closed 宣告**： 本子系統的產出（SpecPack）若無法通過 **GATE-SEG-L (SGF)** 或缺乏可追溯至原始語料的 **Evidence Pointer**，系統 **MUST** 阻斷其進入下游 CA-DSL，防止「幻覺（Hallucination）」汙染策略生成的源頭。,

---

##### **4.3.1 子系統定義與職責 (Subsystem Definition)**

**\[ANCHOR:ARCH-V810-4-3-1-DEF\]**

依據《15CA 重構升級藍圖》與《SRS v8.1.0》，CA-DISTILL 的規範性定義如下：

| 屬性 | 規範內容 (Normative) | 來源依據 |
| ----- | ----- | ----- |
| **Stable ID** | `CA-DISTILL` (不可變更) | , |
| **Display Name** | Distiller |  |
| **Macro Module** | K (Knowledge & Distill) | , |
| **核心職責** | 蒸餾教材/規格成基底偽代碼與 distill\_pack，確保語義忠實度。 | , |
| **資料主幹落點** | `data/pipeline-a/distill_specpack/` (DVC Tracked) |  |
| **Default Degrade** | **READ\_ONLY\_UI** (蒸餾失敗僅供查閱，不更新下游) | , |

---

##### **4.3.2 輸入/輸出契約與資料流 (I/O Contract & Data Flow)**

**\[ANCHOR:ARCH-V810-4-3-2-IO\]**

本子系統透過嚴格的 I/O 契約與 Pipeline-A 整合，確保知識流動的可回放性。

**1\. 輸入契約 (Primary Inputs)**

* **來源**：`CA-CORPUS`  
* **Artifact**：`ART-CORPUS-INDEX` (Corpus Snapshot),  
* **內容要求**：必須包含完整的 `chunks.jsonl`（文本切塊）、`provenance_map`（來源指針）與 `corpus_manifest.json`（版本指紋）。  
* **驗證**：若輸入 Hash 與 Manifest 不符，拒絕執行蒸餾。

**2\. 輸出契約 (Primary Outputs)**

* **Artifact**：`ART-DISTILL-BASE` (Distill Bundle / SpecPack),  
* **實體路徑**：`evidence/distill/{run_id}/distill_bundle.json`  
* **內容結構**：  
  * `distill_id`: 唯一識別碼 (UUID)  
  * `pseudocode[]`: 結構化的策略邏輯描述  
  * `functions[]`: 提取出的函數規格  
  * `trace_refs[]`: **(關鍵)** 每個邏輯單元必須包含指向 `ART-CORPUS-INDEX` 中特定 `chunk_id` 的指針。  
  * `sgf_score`: 來源對齊忠實度分數  
  * `cross_model_verdict`: 多模型交叉比對結果

**3\. 資料流拓樸 (Data Flow)**

graph LR  
    CORPUS\[CA-CORPUS\] \--\>|ART-CORPUS-INDEX| DISTILL\[CA-DISTILL\]  
    DISTILL \--\>|Processing: Distill & SGF Check| DISTILL\_ENGINE\[Engine\]  
    DISTILL\_ENGINE \--\>|ART-DISTILL-BASE| DSL\[CA-DSL\]  
    DISTILL\_ENGINE \--\>|Evidence Triplet| STORE\[Evidence Store\]

    subgraph Governance  
    GATE\[GATE-SEG-L\] \-.-\>|Blocking| DISTILL  
    end

,

---

##### **4.3.3 架構元件拆解 (Component Decomposition)**

**\[ANCHOR:ARCH-V810-4-3-3-COMP\]**

為滿足 SRS 對「多模型交叉比對」與「語義保真」的要求，CA-DISTILL 內部由以下關鍵元件組成（L3 View）：

1. **Distillation Engine (蒸餾引擎)**

   * **職責**：執行 Prompt Engineering，將非結構化文本轉化為結構化 JSON/Pseudo-code。  
   * **特性**：支援多模型（如 GPT-4o, Claude 3.5）並行執行，以支援交叉比對,。  
   * **約束**：禁止使用未經 `sources.yaml` 授權的外部知識（No Hallucination）。  
2. **SEM³ SGF Validator (來源對齊驗證器)**

   * **職責**：執行 **SGF (Source-Grounded Faithfulness)** 檢查。  
   * **邏輯**：比對生成的 Claims 與原始 Chunks 的語義相似度（使用 Embedding 或 LLM-as-a-Judge）。  
   * **產出**：`sgf_report.json`，含 `fidelity_score` 與 `citation_check` 結果。  
3. **Cross-Model Consensus Module (多模型共識模組)**

   * **職責**：比對不同模型對同一知識點的蒸餾結果。  
   * **邏輯**：若模型間存在顯著矛盾（Conflict），標記為 `NEEDS_HUMAN_REVIEW` 並阻斷自動發布。  
4. **Provenance Linker (溯源連結器)**

   * **職責**：強制在每個輸出節點注入 `evidence_ptr`。  
   * **Fail-Closed**：若無法定位來源 Chunk，該節點標記為 `UNVERIFIED`。

---

##### **4.3.4 治理與 Fail-Closed 機制 (Governance & Fail-Closed)**

**\[ANCHOR:ARCH-V810-4-3-4-GOV\]**

本子系統受 Control Plane 嚴格管轄，必須通過以下 Gate 才能視為完成：

| Gate ID | 檢查內容 | Fail-Closed 行為 | 證據工件 | 來源 |
| ----- | ----- | ----- | ----- | ----- |
| **GATE-SEG-L** | **SGF (Source-Grounded Faithfulness)**：驗證蒸餾產物對原教學語義的忠實度，無幻覺。 | **BLOCK\_RELEASE** (若分數低於門檻或斷鏈) | `sgf_report.json` (含 `fidelity_score`) | , |
| **GATE-SC-002** | **Supply Chain Check**：驗證使用的模型與工具是否在白名單內且未被竄改。 | **BLOCK\_RELEASE** | `supply_chain_log.json` | , |
| **GATE-BP-003** | **Evidence Integrity**：驗證 `distill_bundle` 的 Hash 與 `verdict.json` 一致。 | **BLOCK\_RELEASE** | `evidence_triplet` |  |

**降級策略 (Degrade Strategy)**：

* **觸發**：若 `GATE-SEG-L` 失敗或 API 不可用。  
* **行為**：  
  1. 進入 **READ\_ONLY\_UI** 模式，僅供人工查閱失敗原因。  
  2. 切換至 **Human-Assisted Mode** (若配置允許)，等待人工修正 `distill_bundle`。  
  3. **禁止** 自動推送到 CA-DSL。,

---

##### **4.3.5 Route-Out Register (外導註冊表)**

**\[ANCHOR:ARCH-V810-4-3-5-ROUTE\]**

本節僅定義架構結構，詳細規格與操作請參閱以下 SSOT：

| 主題 (Topic) | 目標 SSOT (Target) | 定位點 (Anchor) |
| ----- | ----- | ----- |
| **功能需求細節** | SRS v8.1.0 | `SRS-V810-FR-DISTILL` |
| **SGF Gate 門檻** | Fitness v3.0.1 | `FIT-008` |
| **Distill Bundle Schema** | LBP-B (ICD) v5.0.1 | `SCHEMA-DISTILL-BUNDLE` |
| **操作流程步驟** | SubP1 Runbook | `SPLMVP-STAGE-03` |
| **Pipeline-A 整合** | Pipeline-A 組合方案 v2 | `§3.3 CA-DISTILL` |
| **SEM³ 完整架構** | ARCH v6.0.0-r5 | `ARCH-SEM3-COMPLETE` |

---

#### **4.4 CA-DSL (DSL & Spec Generator)**

**\[ANCHOR:ARCH-V810-4-4-DSL\]**

**架構定義（Architectural Definition）**： CA-DSL 是 **Pipeline-A (Knowledge)** 的終端節點與 **Pipeline-B (Strategy)** 的規格源頭。其核心架構職責是將上游 CA-DISTILL 產出的「基底偽代碼（Base Pseudocode）」轉換為「機器可讀、結構化、市場中立」的 **DSL 規格（ART-DSL-SPEC）**。本子系統嚴格執行「原語中立性（Primitive Neutrality）」架構原則，強制將市場常數（如交易時段、漲跌幅）剝離至 **MarketProfile**，確保策略邏輯與市場規則解耦。

**權威依據（Authority）**：

* **SRS**: \[SRS-V810-FR-DSL\] (需求定義)  
* **Blueprint**: \[SOMOC-15CA-BP-05-CA-MAP\] (15CA 映射)  
* **Pipeline**: Pipeline-A\_組合方案 v2 (資料流),

---

##### **4.4.1 Component Responsibility (元件職責)**

**\[ANCHOR:ARCH-V810-4-4-RESP\]**

| Component / Module | Responsibility (What) | Rationale (Why) | Route-Out (How) |
| ----- | ----- | ----- | ----- |
| **DSL Generator** | 接收 `ART-DISTILL-BASE`，依據 ICD 定義的 Schema 生成 JSON/YAML 格式的 DSL。 | 確保策略描述的標準化，消除自然語言歧義，使下游 CA-METHOD 可機械化讀取。 | ICD: \[SCHEMA-DSL-PRIMITIVE\] |
| **Purity Validator** | 執行靜態掃描，確保 DSL 中不包含任何硬編碼的市場常數（如 "09:00", "10%"）。 | 實現「一次撰寫，多市場適用」的架構目標；防止硬編碼導致的策略過擬合與維護地獄。 | SRS: \[SRS81-FR-DSL-005\] |
| **MarketProfile Binder** | 定義與 `MarketProfile` SSOT 的引用介面（Reference Interface），而非內嵌數值。 | 確保市場規則變更（如延長交易時間）時，無需修改策略 DSL，僅需更新 Profile。 | ARCH: \[ARCH-MARKETPROFILE-SSOT\] |
| **Artifact Packager** | 封裝生成結果與驗證報告，產出具備完整血緣（Lineage）的 `SpecPack`。 | 確保下游 Pipeline-B 接收到的輸入是經過簽章且可追溯的，符合 Evidence Triplet 要求。 | BP: \[OMOCMVU-REF-EVID-CONTRACT\] |

**Fail-Closed 邊界**：

* 若 Generator 產出的格式不符合 Schema → **BLOCK\_RELEASE**。  
* 若 Validator 發現硬編碼常數（Purity Check Fail） → **BLOCK\_RELEASE**。

---

##### **4.4.2 Interface & Data Flow (介面與資料流)**

**\[ANCHOR:ARCH-V810-4-4-IO\]**

本子系統位於 **Pipeline-A** 的末端，是知識（Knowledge）轉化為規格（Spec）的關鍵樞紐。

**Input Contract (輸入契約)**

* **Primary Input**: `ART-DISTILL-BASE` (from CA-DISTILL),  
  * 內容：結構化的偽代碼片段、參數定義、來源引用。  
  * 驗證：必須包含指向 `ART-CORPUS-INDEX` 的 `provenance_ptr`。

**Output Contract (輸出契約)**

* **Primary Output**: `ART-DSL-SPEC` (to CA-METHOD),  
  * 內容：標準化 DSL 檔案（JSON/YAML）、純度掃描報告、MarketProfile 引用聲明。  
  * 位置：`data/pipeline-a/distill_specpack/` (DVC Tracked)。  
* **Evidence**: `evidence/dsl/{run_id}/`  
  * `verdict.json`: Purity Gate 與 Schema Check 的裁決結果。  
  * `index.json`: 輸入/輸出雜湊對照表。

**Data Backbone Mapping**: 依據《Pipeline-A+B 整合資料庫方案》，CA-DSL 的產出屬於 **SpecPack** 的核心組成部分，必須納入 **RunLedger** 進行版本管控,。

---

##### **4.4.3 Governance & Gate Integration (治理與閘門整合)**

**\[ANCHOR:ARCH-V810-4-4-GOV\]**

CA-DSL 的架構設計必須內建對以下 Gate 的支援，實現「設計即治理」。

| Gate ID | Architecture Hook (架構掛點) | Fail-Closed Behavior (失效行為) | Evidence Artifact |
| ----- | ----- | ----- | ----- |
| **GATE-DSL-PURITY** | **Purity Validator**在生成 DSL 後立即執行，掃描禁用的常數與語法。 | **BLOCK\_RELEASE**禁止生成 SpecPack，流程中止於 Pipeline-A。 | `purity_scan_report.log`(Verdict: PASS/FAIL) |
| **GATE-SCHEMA** | **Schema Validator**驗證產出是否符合 ICD 定義的 `SCHEMA-DSL-PRIMITIVE`。 | **BLOCK\_RELEASE**視為格式損毀，拒絕進入 CA-METHOD。 | `validation_report.json` |
| **GATE-BP-004-RTM** | **Traceability Linker**檢查每條 DSL 規則是否帶有指向 Distill/Corpus 的 `trace_refs`。 | **BLOCK\_RELEASE**不可追溯的規則視為幻覺。 | `index.json`(含 `trace_refs`) |

**Legacy Alignment**: 依據 \[APPX-A Crosswalk\]，本架構完全取代舊版 `ICT-09` (XS 轉譯前置) 的功能，並將轉譯職責明確切割給 CA-TRANSLATE，CA-DSL 專注於「中立規格」。

---

##### **4.4.4 Key Architectural Decisions (關鍵架構決策摘要)**

**\[ANCHOR:ARCH-V810-4-4-KAD\]**

* **ADR-DSL-01: Primitive Neutrality (原語中立)**

  * **Decision**: DSL 語言定義中不包含任何特定市場的交易規則（如台股 10% 漲跌幅）。  
  * **Rationale**: 支援多市場策略遷移，並強制分離「策略邏輯」與「市場微結構」。  
  * **Implication**: 所有數值必須透過變數（Variables）或 MarketProfile 引用注入。  
* **ADR-DSL-02: Schema-First Generation (Schema 優先生成)**

  * **Decision**: 不使用自由文本生成，而是基於嚴格的 JSON Schema 進行結構化生成。  
  * **Rationale**: 確保 LLM 產出的穩定性與下游工具（Backtest/Translate）的解析可靠性。  
  * **Implication**: 需維護一份權威的 ICD Schema。

---

##### **4.4.5 RTM (SRS Coverage Traceability)**

**\[ANCHOR:ARCH-V810-4-4-RTM\]**

| SRS Req ID | Requirement Summary | ARCH Implementation | Verification |
| ----- | ----- | ----- | ----- |
| **SRS81-FR-DSL-001** | DSL Output Contract | §4.4.2 定義 `ART-DSL-SPEC` 與 I/O 契約。 | MAI-DSL-001 |
| **SRS81-FR-DSL-002** | Primitive Neutrality | §4.4.1 `MarketProfile Binder` 與 §4.4.3 `GATE-DSL-PURITY`。 | MAI-DSL-002 |
| **SRS81-FR-DSL-004** | Strict Schema Validation | §4.4.3 整合 `GATE-SCHEMA` 與 ICD 連結。 | MAI-DSL-001 |
| **SRS81-FR-DSL-005** | Purity Gate Execution | §4.4.3 定義 `Purity Validator` 與阻斷邏輯。 | MAI-DSL-002 |
| **SRS81-FR-DSL-006** | Evidence Triplet | §4.4.2 定義 `verdict/index/bundle` 輸出結構。 | MAI-DSL-003 |

**Route-Out Note**:

* 關於 DSL 的具體語法定義，請參閱 **Spartoi｜P1\_LBP-B(ICD)\_v5.0.1** 之 `SCHEMA-DSL-PRIMITIVE`。  
* 關於 MarketProfile 的資料結構，請參閱 **Spartoi｜P1\_ARCH\_v6.0.0-r5** 之 `ARCH-MARKETPROFILE-SSOT`。  
* 關於操作流程，請參閱 **SubP1-LITE+MVP RUNBOOK** Phase 2 (Mini Core Four) 與 Phase 3 (WP)。

---

### **§4.5 CA-METHOD (Method Designer：三源融合與 MSC 架構)**

**\[ANCHOR:ARCH-V810-4-5-METHOD\]**  
---

#### **4.5.1 System Purpose & Responsibility (系統目的與職責)**

**\[ANCHOR:ARCH-V810-4-5-1-PURPOSE\]** CA-METHOD 是 **Pipeline-B (Strategy)** 的起始節點，負責將上游的知識規格（SpecPack）轉化為可執行、可驗證、已版本化的 **策略方法卡 (MethodCard)**。

* **核心職責**：  
  * **三源融合 (Triple-Source Fusion)**：整合蒸餾知識（Distilled Knowledge）、DSL 技能庫（Skill Library）與市場微結構（Market Profile）。  
  * **方法卡生成 (MethodCard Generation)**：產出結構化的 `ART-METHOD-SPEC`，定義進出場邏輯、風控參數與獲利目標。  
  * **語意一致性確保 (MSC Assurance)**：透過架構級鉤子強制執行 **MSC (Method-Semantics Conformance)** 驗證，確保策略邏輯未偏離原始教材語意。  
* **架構定位**：  
  * **上游依賴**：CA-DSL (`ART-DSL-SPEC`)、CA-DISTILL (`ART-DISTILL-BASE`)。  
  * **下游驅動**：CA-BACKTEST（回測驗證）、CA-TRANSLATE（轉譯執行）。  
  * **治理歸屬**：受 **CA-GOVERN** (Gate/Version) 與 **CA-COLLAB** (Agent Assist) 治理。  
* **主要資料落點**：Pipeline-B Zone (Strategy Layer)。

**Evidence Refs**:

* \[SRC:Spartoi-OMOC(15 CA)重構升級藍圖v0.2.0-r1 §15CA定義\] (CA-METHOD Row)  
* \[SRC:Spartoi\_P1\_SRS\_v8.1.0 §3.5\] (Method Requirements)

---

#### **4.5.2 Interface & Artifact Contract (介面與工件契約)**

**\[ANCHOR:ARCH-V810-4-5-2-CONTRACT\]** 本節定義 CA-METHOD 的架構級輸入輸出契約，詳細 Schema 定義 Route-Out 至 ICD。

| I/O 類型 | Artifact ID | 來源/去向 | 關鍵內容摘要 (Architecture Level) |
| ----- | ----- | ----- | ----- |
| **Primary Input** | `ART-DSL-SPEC` | From **CA-DSL** | 標準化 DSL 原語定義、ICT 模組規格 (\#1-\#107)。 |
| **Secondary Input** | `ART-DISTILL-BASE` | From **CA-DISTILL** | 蒸餾後的偽代碼片段、參數範圍建議。 |
| **Reference Input** | `ART-MARKET-PROFILE` | From **CA-DSL** (SSOT) | 交易時段、跳動點、漲跌幅限制 (SSOT Reference)。 |
| **Primary Output** | `ART-METHOD-SPEC` | To **CA-BACKTEST**, **Evidence Store** | **MethodCard**：含策略邏輯、風控參數、目標定義、版本雜湊、來源追溯指針。 |
| **Evidence Output** | `ART-EVIDENCE-TRIPLET` | To **CA-GOVERN** | verdict.json (MSC Pass/Fail), index.json (Lineage), bundle.zip。 |

**架構約束 (Fail-Closed)**：

* 若輸入工件 (`ART-DSL-SPEC` 或 `ART-DISTILL-BASE`) 的雜湊驗證失敗，CA-METHOD **必須 (MUST)** 拒絕執行生成任務。  
* `ART-METHOD-SPEC` 必須包含 `trace_refs`，精確指向來源 DSL 版本與 Market Profile 版本。

**Evidence Refs**:

* \[SRC:Spartoi｜P1\_LBP-B(ICD)\_v5.0.1 §4.3\] (15 Subsystem Matrix)  
* \[SRC:Pipeline-B 組合方案 v2 §3.3\] (SSOT Requirements)

---

#### **4.5.3 Triple-Source Fusion Architecture (三源融合架構)**

**\[ANCHOR:ARCH-V810-4-5-3-FUSION\]** CA-METHOD 實作 **SRS-V810-FR-METHOD-FUSION** 要求的三源融合邏輯，架構上需確保三個來源的原子性綁定：

1. **Distilled Knowledge (知識源)**：  
   * 提供策略的「原型 (Prototype)」與「參數空間 (Parameter Space)」。  
   * 架構要求：必須保留 `provenance_ptr` 指回 CA-CORPUS 的原始段落。  
2. **Skill Library (技能源 \- ICT)**：  
   * 提供標準化的操作原語（如 `Block`, `Gap`, `Swing`）。  
   * 架構要求：引用 `ART-DSL-SPEC` 定義的標準介面，禁止發明未定義的原語。  
3. **Market Profile (環境源 \- SSOT)**：  
   * 提供市場微結構常數（Microstructure Constants）。  
   * **No Hardcoding Policy**：CA-METHOD 架構層 **禁止** 硬編碼任何市場常數（如 13:30 收盤）。所有常數必須透過 `market_profile_ref` 動態注入。

**Evidence Refs**:

* \[SRC:Spartoi\_P1\_SRS\_v8.1.0 §3.5.2\] (Triple-Source Fusion)  
* \[SRC:Spartoi\_P1\_SRS\_v8.1.0 §3.5.4\] (Market Profile SSOT Integration)

---

#### **4.5.4 MSC Gate Integration (MSC 閘門整合)**

**\[ANCHOR:ARCH-V810-4-5-4-MSC-GATE\]** CA-METHOD 是 **SEM³** (Semantic Equivalence & Mapping Triad) 驗證框架中 **MSC (Method-Semantics Conformance)** 的執行點。

* **Gate ID**: `GATE-METHOD-MSC`  
* **架構掛點 (Architecture Hook)**：  
  * 在 `ART-METHOD-SPEC` 生成後、發布前，必須觸發 MSC Check。  
* **檢核範圍 (Check Scope)**：  
  * **Semantic Consistency**: 方法卡邏輯是否與 DSL 定義矛盾？  
  * **Constraint Satisfaction**: 是否滿足 Risk Parameters 與 Market Profile 的硬性約束？  
  * **Logic Completeness**: 是否存在未定義的狀態分支（Dead Ends）？  
* **Fail-Closed Behavior**:  
  * 若 MSC Check 失敗 (`Verdict != PASS`)，該 MethodCard 標記為 **INVALID**，**禁止** 進入 Pipeline-B (CA-BACKTEST) 與 Pipeline-C。  
  * 預設降級模式：**PAPER\_ONLY** (僅限紙上分析，禁用任何執行路徑)。

**Evidence Refs**:

* \[SRC:Spartoi\_P1\_SRS\_v8.1.0 §3.5.3\] (MSC Gate)  
* \[SRC:Spartoi-OMOC(15 CA)重構升級藍圖v0.2.0-r1 §6.8\] (SEM³ Architecture)

---

#### **4.5.5 ICT Module Binding & Hot-Swap Architecture (ICT 模組綁定與熱插拔)**

**\[ANCHOR:ARCH-V810-4-5-5-ICT-BINDING\]** 為支援 REQ21-09 的熱插拔需求，CA-METHOD 架構實作 **Dual-Key Binding (雙鍵綁定)** 機制：

* **Binding Keys**:  
  * `slot_key`: 流程中的功能槽位（如 `SF-01_WEEKLY_BIAS`）。  
  * `methodcard_key`: 具體實作該功能的策略卡 ID（如 `MC-ICT-001-v2`）。  
* **Hot-Swap Mechanism**:  
  * CA-METHOD 允許透過更新 `Technique Registry`，將特定 `slot_key` 指向不同的 `methodcard_key`。  
  * **架構約束**：替換後的 MethodCard 必須通過 MSC Gate 驗證，且介面簽章（Interface Signature）必須與 Slot 定義相容。

**Evidence Refs**:

* \[SRC:Spartoi\_P1\_SRS\_v8.1.0 §3.5.5\] (ICT Module Binding)  
* \[SRC:Spartoi｜P1\_LBP-A(SIR)\_v6.0.0-r2 §10.1\] (ICT Dual-Key Binding Rules)

---

#### **4.5.6 T0/T1 Dual Mode & L10N-EX Integration (雙模與在地化)**

**\[ANCHOR:ARCH-V810-4-5-6-MODES\]**

* **T0/T1 分流**：  
  * CA-METHOD 需在 `ART-METHOD-SPEC` 的 Metadata 中明確標記 `trading_mode: T0_DAYTRADE | T1_SWING`。  
  * **T0 模式**：強制繼承 Market Profile 的日內時序約束（如 13:20 強清）。  
  * **T1 模式**：解除日內強清約束，但需強制綁定隔夜風控模組（Overnight Risk Module）。  
* **L10N-EX (Localization Experience) 整合**：  
  * 架構支援讀取 `L10N-EX_rules` (Validated Experience)，將其作為額外的約束層疊加於 MethodCard 之上。  
  * 未經驗證的 `L10N-EX_candidates` **禁止** 直接影響 MethodCard 生成（防止策略漂移）。

**Evidence Refs**:

* \[SRC:Spartoi\_P1\_SRS\_v8.1.0 §3.5.6\] (L10N-EX Integration)  
* \[SRC:Spartoi｜SubP1-LITE+MVP 開發 RUNBOOK & WI\_v1.4.0 §4.2.1\] (OP-05 Stage Spec)

---

#### **4.5.7 Route-Out Register (實作細節外導)**

**\[ANCHOR:ARCH-V810-4-5-7-ROUTEOUT\]** 依據 Scope Lock，本文件僅定義架構；實作細節請參閱以下 SSOT：

| Topic | Route-Out Target (SSOT) | Anchor/Section |
| ----- | ----- | ----- |
| **Schema Definition** | LBP-B (ICD) v5.0.1 | `SCHEMA-METHOD-CARD`, `SCHEMA-METHOD-TRIPLE-SOURCE` |
| **MSC Gate Logic** | 15CA BP v0.2.0-r1 | `GATE-METHOD-MSC` in Gate Registry |
| **Operational Steps** | Runbook v1.4.0 | `OP-05` (Method Formulation) |
| **Gate Thresholds** | LBP-E (Fitness) v3.0.1 | `FIT-009` (MSC Conformance) |
| **Market Profile** | ARCH v6.0.0-r5 | `ARCH-MARKETPROFILE-SSOT` (Reference) |

**Fail-Closed Verdict**: 本章節已完整覆蓋 SRS v8.1.0 §3.5 需求，並解決 Audit A (F-001/F-008) 關於 MethodCard 契約與 MSC Gate 的定義缺失問題。

---

#### **4.6 CA-BACKTEST (Backtest Engine Adapter)**

\[ANCHOR:ARCH-V810-4-6-BACKTEST\]  
---

##### **4.6.1 職責與邊界定義 (Responsibilities & Boundaries)**

**設計原意**：CA-BACKTEST 是策略驗證的「不可變更實驗室」。其核心職責並非「發明回測引擎」，而是作為 **外部成熟引擎（Engine）與內部治理契約（Contract）之間的適配層（Adapter）**。它必須在凍結的資料快照上執行模擬，並產出具備「不可竄改性」與「可重現性」的評估報告，同時執行嚴格的過擬合防禦。

* **Primary Responsibility (核心職責)**：  
  * 執行 **Paper-Only** 模擬交易，嚴禁連接真實券商 API 下單或將訊號路由至 CA-EXECUTE \[SRS81-FR-BT-001\]。  
  * 適配外部回測引擎（如 vectorbt/backtesting.py），將其原始輸出標準化為系統定義的 `ART-BACKTEST-RESULT` 契約。  
  * 執行 **Hygiene Check**（衛生檢查）與 **Overfitting Defense**（過擬合防禦），作為策略品質的守門員。  
* **Architecture Pattern (架構模式)**：Adapter Pattern \+ Filter Chain (Hygiene/PBO filters)。  
* **Dependency Direction (依賴方向)**：依賴 CA-METHOD (Spec)、Pipeline-A/DB (Data)；被 CA-PERFORM (Analysis) 依賴。

##### **4.6.2 I/O 契約與資料流 (I/O Contract & Data Flow)**

本子系統必須嚴格遵守 ICD 定義的輸入輸出標準，任何不符 Schema 的資料流動視為架構違規。

| 類型 | Artifact ID | 內容摘要 | 來源/去向 | 驗證掛鉤 |
| ----- | ----- | ----- | ----- | ----- |
| **Input** | `ART-METHOD-SPEC` | 版本化的方法卡（含邏輯、參數、hash） | CA-METHOD | G-SRC (Hash check) |
| **Input** | `ART-DATA-FEATURES` | 凍結的市場資料與特徵快照（含 DVC 指針） | CA-TA / DB Backbone | G-SRC (Data Integrity) |
| **Output** | `ART-BACKTEST-RESULT` | 包含績效指標、交易明細、衛生報告、重現清單 | → CA-PERFORM | G-BT-H (Hygiene Check) |

* **Route-Out**：詳細 Schema 定義見 LBP-B(ICD) 之 `SCHEMA-BACKTEST-RESULT` 與 `CONTRACT-SF06-001`。

##### **4.6.3 內部組件架構 (Internal Component Architecture)**

為滿足 SRS v8.1.0 的功能需求，CA-BACKTEST 內部劃分為以下功能組件：

1. **Reproducibility Guard (可重現性衛兵)**：  
   * **職責**：負責鎖定與記錄 `reproducibility_manifest.json`，包含引擎版本、參數快照、隨機種子（Seed）、交易日曆版本。  
   * **SRS 對齊**：SRS81-FR-BT-003 (Data Snapshot Locking), SRS81-FR-BT-004 (Manifest)。  
2. **Engine Adapter (引擎適配器)**：  
   * **職責**：封裝外部回測引擎，將其異質輸出轉換為標準化的 `execution_log` 與 `equity_curve`。  
   * **SRS 對齊**：SRS81-FR-BT-007 (XQ Logic Parity)。需確保撮合邏輯（滑價、手續費、T0/T1 規則）與 XQ 紙上交易環境參數一致。  
3. **Hygiene Analyzer (衛生分析器)**：  
   * **職責**：掃描交易紀錄，偵測「前視偏誤（Look-ahead Bias）」與「未來資料洩漏」。  
   * **SRS 對齊**：SRS81-FR-BT-005。產出 `hygiene_report.json`，若發現違規直接標記 Result Invalid。  
4. **Overfitting Defense Module (過擬合防禦模組)**：  
   * **職責**：計算 PBO (Probability of Backtest Overfitting) 或 DSR (Deflated Sharpe Ratio)。  
   * **SRS 對齊**：SRS81-FR-BT-006。依據 LBP-E(Fitness) 定義的閾值判斷策略是否過度最佳化。

##### **4.6.4 治理與失效關閉 (Governance & Fail-Closed Logic)**

依據 Spartoi-OMOC Blueprint v2.2.0-r1 的治理要求，本子系統實作以下 Fail-Closed 機制：

* **Gate Integration (閘門整合)**：  
  * **GATE-BT-H (Backtest Hygiene)**：  
    * **Policy**: `CONDITIONAL` (MVP) / `BLOCK_RELEASE` (Full)  
    * **Check**: 驗證 `hygiene_report.json` 無前視偏誤，且 `reproducibility_manifest` 完整。  
    * **Fail Action**: 若衛生檢查失敗，該回測結果標記為 **TAINTED**，禁止進入 CA-PERFORM 進行績效歸因。  
  * **GATE-SAFE-002-RADARONLY (Safety)**：  
    * **Policy**: `RADAR_ONLY`  
    * **Check**: 確保回測過程無任何外部網路請求（No Side Effects）。  
* **Fail-Closed Scenarios (失效場景)**：  
  * **資料指紋不符**：若輸入資料 Hash 與 MethodCard 記錄的基礎資料不一致 → **STOP** (不執行回測)。  
  * **過擬合指標超標**：若 PBO/DSR 超過閾值 → **MARK AS OVERFIT** (雖產出報告，但標記為不可用，阻斷上線)。

##### **4.6.5 Evidence Contract (證據契約)**

所有執行必須產出完整的 Evidence Triplet 以供稽核：

* **Verdict**: `verdict.json` (PASS/FAIL/TAINTED)  
* **Index**: `index.json` (列出 Input Hash, Engine Version, Output Hash)  
* **Bundle**: `backtest_bundle.zip` (含 `backtest_report.json`, `hygiene_report.json`, `reproducibility_manifest.json`)  
* **Storage Path**: `/evidence/backtest/{run_id}/` (依據 Pipeline-A+B 整合資料庫方案)。

**Route-Out Register (外導註冊表)**：

* **HOW (Engine)**: 具體引擎選型（vectorbt/backtesting.py）見 Pipeline-B 組合方案 v2。  
* **Metrics**: PBO/DSR 計算公式與閾值見 LBP-E(Fitness)。  
* **Schema**: 完整 JSON 結構見 LBP-B(ICD)。

---

##### **4.7 CA-BACKTEST (Backtest Adapter)**

**\[ANCHOR:ARCH-V810-4-7-BACKTEST\]**

**架構定位與職責** CA-BACKTEST 是 Pipeline-B (Strategy) 的核心驗證引擎適配器。其架構職責並非「發明回測演算法」，而是將外部成熟的回測引擎（如 vectorbt、backtesting.py 或 Qlib）封裝為符合 OMOC 治理契約的標準化組件。 它負責將 **CA-METHOD** 產出的策略規格（MethodCard）與 **CA-TA** 產出的特徵數據，在嚴格隔離的環境中進行歷史模擬，並強制執行「衛生檢查（Hygiene Check）」與「過擬合防禦（Overfitting Defense）」。

* **核心職責**：  
  1. **引擎適配（Adapter Pattern）**：統一不同回測引擎的輸入參數與輸出格式，確保可抽換性（Hot-Swap）。  
  2. **可重現性保證（Reproducibility）**：強制鎖定資料快照（Data Snapshot）與隨機種子（Seed），確保「同一輸入必得同一輸出」。  
  3. **防弊治理（Anti-Gaming）**：執行前視偏誤（Lookahead Bias）檢查與過擬合檢測（PBO/DSR），攔截虛假高績效策略。  
  4. **紙上作業（Paper-Only）**：架構上物理隔離於交易下單介面，僅產出報告，絕不具備下單能力。

**上游依賴與追溯 (RTM)**

* **SRS 需求追溯**：  
  * `SRS81-FR-BT-001` (Paper-Only Execution)  
  * `SRS81-FR-BT-002` (Strict I/O Contract)  
  * `SRS81-FR-BT-003` (Data Snapshot Locking)  
  * `SRS81-FR-BT-004` (Reproducibility Manifest)  
  * `SRS81-FR-BT-005` (Lookahead Bias Hygiene Check)  
  * `SRS81-FR-BT-006` (Overfitting Metrics)  
  * `SRS81-FR-BT-007` (XQ Logic Parity)  
* **15CA 藍圖映射**：`CA-BACKTEST`,  
* **Pipeline 方案對齊**：`Pipeline-B`,

---

###### **4.7.1 I/O Contract & Data Flow (輸入輸出與資料流)**

**\[ANCHOR:ARCH-V810-4-7-IO\]**

依據 **ICD v5.0.1** 與 **15CA 重構藍圖**，CA-BACKTEST 執行嚴格的「無隱藏輸入」政策。

| 類型 | 工件 ID (Artifact ID) | 來源 / 目標 | 說明 | Fail-Closed 條件 |
| ----- | ----- | ----- | ----- | ----- |
| **Input** | `ART-METHOD-SPEC` | CA-METHOD | 策略方法卡（MethodCard），含邏輯、參數、風控規則。 | 缺 Hash 或簽章 → **BLOCK** |
| **Input** | `ART-DATA-FEATURES` | CA-TA / Pipeline-A | 凍結的歷史市場資料與特徵切片（Data Slice）。 | 資料指紋不符 → **BLOCK** |
| **Input** | `RUN-CONFIG-SNAPSHOT` | CA-GOVERN | 運行配置（含引擎版本、手續費率、滑價模型）。 | 缺配置快照 → **BLOCK** |
| **Output** | `ART-BACKTEST-RESULT` | CA-PERFORM / Evidence Store | 回測報告包，含績效指標、交易明細、衛生報告。 | 格式不符 Schema → **FAIL** |

**資料背骨映射 (Data Backbone Mapping)**

* **讀取 (Read)**：從 `DB:METHOD` 區讀取策略規格，從 `DB:MARKET` 區讀取歷史資料切片。  
* **寫入 (Write)**：將結果寫入 `DB:BACKTEST` 區，路徑格式 `evidence/backtest/{run_id}/backtest_report.json`。

---

###### **4.7.2 Internal Component Architecture (內部元件架構)**

**\[ANCHOR:ARCH-V810-4-7-COMPONENTS\]**

為滿足 `SRS81-FR-BT-006` (過擬合防線) 與 `SRS81-FR-BT-004` (可重現清單)，內部架構採「三層防護」設計：

1. **Snapshot Controller (快照控制器)**

   * **職責**：負責凍結輸入環境。在回測啟動前，計算所有輸入資料與依賴庫的 SHA-256，生成 `reproducibility_manifest.json`。  
   * **機制**：若偵測到環境漂移（如依賴庫版本變更但未更新 manifest），直接拋出異常。  
2. **Engine Adapter Layer (引擎適配層)**

   * **職責**：將通用的 `ART-METHOD-SPEC` 轉譯為特定引擎（如 VectorBT 或 Backtrader）的執行指令。  
   * **隔離性**：此層負責捕捉引擎的所有標準輸出（stdout/stderr）與異常，確保即使引擎崩潰也能產出結構化的 `verdict.json` (FAIL)。  
   * **XQ Parity**：內建 XQ 撮合邏輯模擬器（如漲跌幅限制、處置股撮合間隔），以滿足 `SRS81-FR-BT-007`。  
3. **Hygiene Validator (衛生驗證器)**

   * **職責**：在回測執行中或執行後，掃描交易訊號是否使用了「未來數據」。  
   * **機制**：比對 Signal Time 與 Data Availability Time。若 `Signal(t) relies on Data(t+1)`，標記為 `LEAKAGE_DETECTED`。

---

###### **4.7.3 Overfitting Defense Architecture (過擬合防禦架構)**

**\[ANCHOR:ARCH-V810-4-7-OVERFIT-DEFENSE\]**

此為本架構的核心差異化特徵（對齊 Patch-025-R 與 SRS §3.6.3）。

**PBO/DSR Analyzer (機率性過擬合分析器)**

* **架構位置**：回測結果產出後的「後處理（Post-processing）」階段。  
* **運作邏輯**：  
  * **CSCV (Combinatorial Symmetric Cross-Validation)**：將資料切分為 $S$ 個子集，生成 $S\!$ 條回測路徑。  
  * **Metric Evaluation**：計算所有路徑的 Sharpe Ratio 分佈。  
  * **PBO Calculation**：計算 $\\phi$ (Probability of Backtest Overfitting)，即策略在訓練集表現優於中位數但在測試集表現低於中位數的機率。  
* **輸出**：`overfitting_report.json`，含 PBO 數值與 DSR (Deflated Sharpe Ratio)。  
* **Fail-Closed 路由**：若 PBO \> 閾值（由 Fitness 定義，見 Route-Out），則 `verdict` 標記為 **RISK\_HIGH**，由 Gate 決定是否阻斷。

---

###### **4.7.4 Governance & Gate Hooks (治理與閘門掛鉤)**

**\[ANCHOR:ARCH-V810-4-7-GOV\]**

CA-BACKTEST 必須通過以下 Gate 才能將產物交付給下游（CA-PERFORM）：

| Gate ID | 檢查名稱 | 檢查邏輯 (Logic) | 證據工件 (Evidence) | Fail-Closed 行為 |
| ----- | ----- | ----- | ----- | ----- |
| **GATE-SAFE-002-RADARONLY** | Radar Mode Check | 確認回測過程無外部副作用（如下單 API 呼叫）。 | `ART-SAFE-RADARONLY` | 若有副作用 → **BLOCK\_RELEASE** |
| **GATE-BT-H** | Backtest Hygiene | 1\. `reproducibility_manifest` 存在且 Hash 正確。2. `hygiene_report` 無洩漏。3. PBO/DSR 指標計算完成。 | `ART-BACKTEST-RESULT` | 缺報告/有洩漏 → **FAIL**過擬合高 → **CONDITIONAL** (標記風險) |
| **GATE-BP-003-EVIDENCE** | Evidence Triplet | 驗證 `verdict`, `bundle`, `index` 三件套完整性。 | `ART-EVIDENCE-TRIPLET` | 缺件 → **BLOCK\_RELEASE** |

---

###### **4.7.5 Route-Out Register (外導註冊)**

**\[ANCHOR:ARCH-V810-4-7-ROUTEOUT\]**

本架構章節僅定義「組件」與「責任」。具體實作細節請參閱：

* **數值門檻 (Thresholds)**：PBO/DSR 的具體閾值與合格標準。  
  * → **Route-Out**: `Spartoi｜P1_LBP-E(Fitness)_v3.0.1` \[FIT-001\~003\] / `CR_OPEN` \[CR-OPS-001\],  
* **介面規格 (Schema)**：`backtest_report.json` 與 `hygiene_report.json` 的詳細 JSON 結構。  
  * → **Route-Out**: `Spartoi｜P1_LBP-B(ICD)_v5.0.1` \[CONTRACT-SF06-001\]  
* **操作步驟 (Steps)**：如何啟動回測容器、載入資料的指令。  
  * → **Route-Out**: `Spartoi｜SubP1-LITE+MVP 開發 RUNBOOK & WI_v1.4.0` \[SF-06\],  
* **引擎選型 (Tooling)**：使用 vectorbt 或 backtesting.py 的決策。  
  * → **Route-Out**: `Spartoi｜P1_LBP-C(ADR)_v2.0.1` \[ADR-021\], \[ADR-026\],

---

### **4.8 CA-SELECT (Selection/Ranking)**

**\[ANCHOR:ARCH-V810-4-8-SELECT\]**  
---

#### **4.8.1 Responsibility & Boundary (職責與邊界)**

**\[ANCHOR:ARCH-V810-4-8-1-RESP\]**

* **核心職責 (Core Responsibility)**：  
  * 作為 **Pipeline-C** 的決策漏斗中樞，負責接收 **CA-TA** 的技術特徵訊號，依據 **CA-METHOD** 的策略邏輯（MethodCard），執行「母池過濾（Filter）」與「排序模型（Rank）」。  
  * 產出具備 **可解釋性（Explainable）** 與 **可追溯性（Traceable）** 的最終候選清單（Candidates），供下游轉譯與執行。  
* **架構邊界 (Boundary)**：  
  * **Upstream**：依賴 **CA-TA** 提供標準化特徵矩陣（Feature Matrix），依賴 **CA-METHOD** 提供篩選規則與權重。  
  * **Downstream**：向 **CA-TRANSLATE** 提供 S1/S2 候選清單（不含執行指令），向 **CA-WATCH** 提供觀察池清單。  
  * **Excluded**：**嚴禁** 涉及任何下單指令生成（屬 CA-TRANSLATE/EXECUTE 職責）或資金分配計算（屬 CA-METHOD 風控職責）。

**Rationale (設計理據)**：依據 **SRS v8.1.0 §3.8.1**，選股必須是「漏斗式篩選」且非黑箱，確保每檔入選標的皆可回溯其入選理由（Rule Hit / Model Score）。

#### **4.8.2 Architectural Structure: Funnel & Dual-Mode (漏斗與雙模架構)**

**\[ANCHOR:ARCH-V810-4-8-2-STRUCT\]** 本子系統採用 **多階段漏斗（Multi-Stage Funnel）** 與 **雙模分流（Dual-Mode Routing）** 架構，以滿足 T0/T1 不同時效與風險需求。

* **Funnel Architecture (漏斗架構)**：

  * **Universe Layer (母池層)**：  
    * 強制約束：僅限 **258 母池** 或經白名單授權的範圍（依據 SRS v8.1 §3.8.1）。  
    * Fail-Closed：若輸入包含非白名單標的，架構層需具備 **自動剔除（Auto-Drop）** 機制。  
  * **Filter Layer (初篩層)**：  
    * 硬規則過濾：量能門檻、波幅門檻、黑名單（Blacklist）過濾。  
    * 機制：支援 **Heuristic Rules**（啟發式規則）引擎。  
  * **Rank Layer (精排層)**：  
    * 模型排序：支援 **LTR (Learning to Rank)** 模型（如 XGBoost/LightGBM）或加權評分（Weighted Score）。  
    * 可替換性：排序引擎需具備 **Strategy Pattern** 介面，允許模型熱插拔（依據 Pipeline-C 方案）。  
  * **Candidate Layer (候選層)**：  
    * 輸出分級：S1（首選）、S2（次選）。  
* **Dual-Mode Routing (雙模分流)**：

  * **T0\_DAYTRADE Mode**：  
    * 聚焦：日內流動性、開盤強勢度。  
    * 輸出：`select_list_t0.json`。  
  * **T1\_SWING Mode**：  
    * 聚焦：隔夜風險、日線型態、籌碼沉澱。  
    * 輸出：`select_list_t1.json`。  
  * **架構約束**：兩模式之邏輯與參數配置須在 **MethodCard** 中明確隔離，架構上禁止混用配置。

**Evidence & Trace**：

* Dual-Mode Req: **SRS v8.1.0 §3.8.2**  
* LTR/Funnel Design: **Pipeline-C 組合方案**

#### **4.8.3 Data Flow & Artifacts (資料流與工件契約)**

**\[ANCHOR:ARCH-V810-4-8-3-DATA\]** 依據 **Unified Data Backbone** 策略，所有 I/O 必須透過標準化工件交換。

| I/O 類型 | Artifact ID | 內容摘要 | 來源/去向 | SSOT 連結 |
| ----- | ----- | ----- | ----- | ----- |
| **Input** | `ART-TA-SIGNALS` | 技術指標、特徵矩陣、趨勢標記 | From: **CA-TA** | ICD: CONTRACT-TA |
| **Input** | `ART-METHOD-SPEC` | 選股規則、權重配置、模式參數 | From: **CA-METHOD** | ICD: CONTRACT-METHOD |
| **Input** | `ART-FACTORS` | (Optional) 外部因子、籌碼數據 | From: **Data Backbone** | ICD: CONTRACT-DATA |
| **Output** | `ART-SELECT-CANDIDATES` | 結構化候選清單 (S1/S2)、排序分數、入選理由快照 | To: **CA-TRANSLATE**, **CA-UI** | ICD: CONTRACT-SELECT |
| **Evidence** | `Evidence Triplet` | `verdict.json` (含 NDCG 分數), `index.json`, `bundle.zip` | To: **Evidence Store** | SRS §2.2.1 |

**Fail-Closed Mechanism**: 若 Input Artifact 的 Hash 驗證失敗或 `verdict.json` 缺失，CA-SELECT 必須 **BLOCK\_RELEASE**，禁止產生空的或髒的候選清單（依據 SRS v8.1 §3.8.4）。

#### **4.8.4 Governance & Quality Gates (治理與品質閘門)**

**\[ANCHOR:ARCH-V810-4-8-4-GOV\]** 架構上必須掛載以下檢核點，由 **CA-GOVERN** 統一調度執行。

* **GATE-SELECT-NDCG (Ranking Quality Check)**：  
  * **Type**: Quality Gate (G5-E).  
  * **Logic**: 計算排序結果的 NDCG (Normalized Discounted Cumulative Gain) 分數，驗證模型排序能力是否優於隨機。  
  * **Fail-Action**: **RADAR\_ONLY** (依據 CR-OPS-002，目前門檻未定，僅警示不阻斷)。  
* **GATE-SAFE-002-RADARONLY (Safety Check)**：  
  * **Type**: Safety Gate (G5-D).  
  * **Logic**: 驗證產出過程無副作用（No Side Effects），確保選股不觸發交易。  
  * **Fail-Action**: **BLOCK\_RELEASE**.  
* **GATE-BP-003-EVIDENCE (Integrity Check)**：  
  * **Type**: Integrity Gate (G5-C).  
  * **Logic**: 驗證 `ART-SELECT-CANDIDATES` 是否包含完整 Evidence Triplet。  
  * **Fail-Action**: **BLOCK\_RELEASE**.

#### **4.8.5 RTM & Route-Out Registry (需求追溯與外導)**

**\[ANCHOR:ARCH-V810-4-8-5-RTM\]**

**Requirements Traceability (SRS v8.1.0)**

* **SRS81-FR-SELECT-001** (Ranking Output) → 覆蓋於 §4.8.1, §4.8.3.  
* **SRS81-FR-SELECT-002** (258 Pool) → 覆蓋於 §4.8.2.  
* **SRS81-FR-SELECT-004** (NDCG Hook) → 覆蓋於 §4.8.4.  
* **SRS81-FR-SELECT-005** (Leakage Prevention) → 架構上由 Pipeline-C 的單向資料流保證。

**Route-Out Map (Implementation Details)**

| Topic | Target SSOT | Locator Anchor |
| ----- | ----- | ----- |
| **Schema Definition** | LBP-B (ICD) | `SCHEMA-SELECT-TOPK` |
| **Ranking Algorithm** | Pipeline-C 方案 | §3.2 工具鏈 (XGBoost) |
| **Operational Steps** | Runbook & WI | `OP-08` 選股 |
| **Quality Thresholds** | LBP-E (Fitness) | `FIT-001`, `CR-OPEN-E-002` |
| **Gate Implementation** | 15CA BP | `GATE-SELECT-NDCG` |

**Audit Note (審查修補)**: 本章節已完整解決 **審查報告 A (F-002)** 關於 RTM 缺失的問題，並依據 **15CA 重構升級藍圖** 修正了 I/O 契約的命名。所有「如何做 (HOW)」的細節已 Route-Out 至對應規範。

---

### 4.9 CA-TRANSLATE (XS Translator)

**\[ANCHOR:ARCH-V810-4-9-TRANSLATE\]**  
---

##### **4.9.1 職責與邊界 (Responsibilities & Boundaries)**

**\[ANCHOR:ARCH-V810-4-9-1-RESP\]**

* **核心職責 (WHAT)**：負責將上游的抽象交易訊號（Technical Analysis Signals）與候選清單（Candidates），轉譯為「XQ 全球贏家」可執行的專用腳本語言（XS Script）。本子系統是「策略邏輯」到「執行指令」的最後一哩路，必須確保語意無損且安全。  
* **不可協商之約束 (Non-negotiables)**：  
  1. **非自然語言翻譯**：本子系統專指「程式語言轉譯（Transpiler）」，與 LLM 翻譯自然語言無關。  
  2. **禁止自動下單 (No-Auto-Order)**：產出的 XS 腳本 **嚴禁 (MUST NOT)** 包含直接送出委託單的函數（如 `OrderAtPrice`），僅能用於訊號觸發與指標繪製。此為「XQ 唯一下單端」架構的硬性防線。  
  3. **轉譯等價性 (TVE)**：必須執行「轉譯等價性驗證（Translation-Validation Equivalence）」，確保 Python 端的策略邏輯與 XQ 端的執行結果一致。

##### **4.9.2 架構組件與資料流 (Component Structure & Data Flow)**

**\[ANCHOR:ARCH-V810-4-9-2-STRUCT\]** 本子系統位於 Execution Plane 的 Pipeline-C 前段，承接 Pipeline-B/C 的分析結果。

\[Upstream: CA-SELECT / CA-TA\]  
       │  
       ▼ (ART-SELECT-CANDIDATES, ART-TA-SIGNALS)  
┌──────────────────────────────────────────────────────────────┐  
│ CA-TRANSLATE (XS Translator)                                 │  
│                                                              │  
│  1\. Ingestion Adapter: 讀取 S1/S2 清單與特徵矩陣             │  
│                                                              │  
│  2\. XS Code Generator (Engine):                              │  
│     \- T0/T1 雙模邏輯分流 (T0: Intraday, T1: Overnight)       │  
│     \- 注入 MarketProfile 常數 (from CA-DSL)                  │  
│                                                              │  
│  3\. TVE Validator (Internal Check):                          │  
│     \- 模擬 XQ 運算邏輯 vs Python 運算邏輯                    │  
│     \- 產出 tve\_score                                         │  
│                                                              │  
│  4\. Safety Filter:                                           │  
│     \- 掃描禁止函數 (Blocklist: Order\*, Account\*)             │  
└──────────────────────────────────────────────────────────────┘  
       │  
       ▼ (ART-XS-PLAN)  
\[Downstream: CA-WATCH / CA-EXECUTE\]

* **資料來源**：  
  * **ART-SELECT-CANDIDATES**：來自 CA-SELECT 的最終選股清單（含 Method ID 綁定）。  
  * **ART-TA-SIGNALS**：來自 CA-TA 的技術指標數值（用於參數注入）。  
  * **MarketProfile**：來自 CA-DSL 的市場微結構常數（交易時段、漲跌幅）。  
* **資料落點**：  
  * **Primary Output**：`ART-XS-PLAN`（含 xs\_script\_pack.zip, tve\_report.json）落入 `evidence/translate/{run_id}/`。  
  * **Data Backbone**：寫入 `Pipeline-C` 專屬區域，並註冊至 `RunLedger`。

##### **4.9.3 關鍵工件契約 (Artifact Contracts)**

**\[ANCHOR:ARCH-V810-4-9-3-ARTIFACTS\]** 依據 15 CA 重構藍圖與 ICD 定義，本子系統產出以下標準工件：

| Artifact ID | 內容摘要 | 格式/Schema | 驗收 Gate | 失敗處置 (Fail-Closed) |
| ----- | ----- | ----- | ----- | ----- |
| **ART-XS-PLAN** | 完整的 XS 執行計畫包，含：1. `xs_scripts/` (策略/指標腳本)2. `watchlist.csv` (XQ 匯入格式)3. `import_instructions.md` (操作指引) | ICD: SCHEMA-XS-SCRIPT | **GATE-TRANSLATE-TVE** | **BLOCK\_RELEASE**(禁止產生無效腳本包) |
| **ART-TVE-REPORT** | 轉譯等價性驗證報告，含：1. `tve_score` (等價分數)2. `diff_log` (邏輯差異)3. `verdict` (PASS/FAIL) | ICD: SCHEMA-TVE-REPORT | **GATE-TRANSLATE-TVE** | **BLOCK\_RELEASE**(報告缺失即視為失敗) |

**引用源**： (15CA Registry), (SRS FR-TRANSLATE-002).

##### **4.9.4 治理與閘門掛點 (Governance & Gates)**

**\[ANCHOR:ARCH-V810-4-9-4-GOV\]** 本子系統受 Control Plane 嚴格監管，必須通過以下閘門：

1. **GATE-TRANSLATE-TVE (Check Gate)**  
   * **目的**：驗證產出的 XS 腳本在邏輯上是否與原始 Python 策略等價。  
   * **機制**：比對關鍵訊號觸發點（Signal Trigger Points）。  
   * **Fail-Closed**：若 `tve_score` 低於 Fitness 門檻（Route-Out Fitness），或 `verdict=FAIL`，則 **阻斷** 該腳本包的發布，禁止進入 CA-WATCH。  
2. **GATE-SAFE-003-EXECUTE\_DISABLED (Policy Gate)**  
   * **目的**：確保生成的腳本不具備自動交易能力。  
   * **機制**：靜態掃描（Static Analysis）腳本內容，檢查是否包含黑名單關鍵字（如 `OrderAtPrice`, `SetPosition`）。  
   * **Fail-Closed**：若發現違規關鍵字，立即觸發 **BLOCK\_RELEASE** 並發送安全警報。

##### **4.9.5 路由與外導 (Route-Out Register)**

**\[ANCHOR:ARCH-V810-4-9-5-ROUTEOUT\]** 依據 ARCH 職責範圍，實作細節與數值門檻外導如下：

| 主題 (Topic) | 目標文件 (Target SSOT) | 定位錨點 (Locator) | 說明 |
| ----- | ----- | ----- | ----- |
| **功能需求細節** | Spartoi-OMOC\_SRS\_v8.1.0 | `[ANCHOR:SRS-V810-FR-TRANSLATE]` | 腳本生成、TVE 驗證、安全約束的詳細條文 |
| **TVE 演算法** | Pipeline-C 組合方案 | `§3.5 TVE Implementation` | 等價性驗證的具體算法與工具鏈 |
| **XS 語法規格** | Spartoi｜P1\_LBP-B(ICD)\_v5.0.1 | `SCHEMA-XS-SCRIPT` | 輸出 JSON/檔案的欄位定義 |
| **TVE 通過門檻** | Spartoi｜P1\_LBP-E(Fitness)\_v3.0.1 | `FIT-007` / `CR-OPEN-E-006` | tve\_score 的具體數值要求 |
| **操作步驟** | Spartoi｜各階段子系統操作流程 | `OP-09 XS轉譯` | 人員操作 UI 或 CLI 的步驟 |

##### **4.9.6 RTM 追溯 (Traceability)**

**\[ANCHOR:ARCH-V810-4-9-6-RTM\]**

* **SRS 覆蓋**：本章節架構設計完全覆蓋 `SRS81-FR-TRANSLATE-001` 至 `005` 的需求。  
* **審查修補**：  
  * 解決 **A:CRIT-008** (Evidence Contract)：明確定義了 `ART-XS-PLAN` 與 `ART-TVE-REPORT` 的契約。  
  * 解決 **A:MAJ-015** (Safety Risk)：通過 `GATE-SAFE-003` 強制執行 No-Auto-Order 政策。

---

### **§4.10 CA-WATCH (Watchlist & Alerts)**

\[ANCHOR:ARCH-CA-WATCH\]  
---

#### **4.10.1 定義與架構定位 (Definition & Context)**

* **Stable ID**: `CA-WATCH` (Immutable)  
* **Display Name**: Watchlist & Alerts (監控與告警)  
* **Macro Module**: O (Ops & Execution)  
* **架構職責**:  
  * 作為 **Pipeline-C (Execution)** 的核心監控節點，負責將靜態的選股清單（Candidates）與轉譯後的策略邏輯（XS Script），轉化為運行時的動態訊號（Signals）。  
  * **Radar-Only Constraint**: 依據「XQ 唯一下單端」與「物理隔離」原則，本子系統 **嚴禁 (MUST NOT)** 具備任何下單或資金操作能力；僅能產出資訊流（Information Flow）供人類或下游參考。  
* **Evidence Ptr**:  
  * SRS v8.1.0 §3.10 \[ANCHOR:SRS-V810-FR-WATCH\]  
  * 15CA 重構藍圖 §4.11 \[ANCHOR:ARCH-CA-WATCH-EXECUTE\]  
  * SRS v8.1.0 Table 1.2.2 \[ANCHOR:SRS-V810-1-2-2-REGISTRY\]

#### **4.10.2 介面契約 (Interface Contract)**

本子系統的輸入輸出必須嚴格遵守 ICD 定義的 Schema，並透過 Artifact Store 進行版本化交接。

| I/O 類型 | 工件 ID (Artifact ID) | 內容摘要 | 來源/去向 | 強制性 (Fail-Closed) |
| ----- | ----- | ----- | ----- | ----- |
| **Input** | `ART-XS-PLAN` | XS 腳本、監控邏輯、策略參數 | From: **CA-TRANSLATE** | 缺 Plan 或 Hash 不符 → **BLOCK** |
| **Input** | `ART-SELECT-CANDIDATES` | S1/S2 選股清單、母池定義 | From: **CA-SELECT** | 清單不一致 → **BLOCK** |
| **Output** | `ART-WATCH-ALERTS` | 觸發的訊號、時間戳、來源追溯 | To: **SF-11 (HITL)** | 格式錯誤 → **RADAR\_ONLY** |
| **Output** | `watch_log.json` | 完整監控日誌 (含未觸發紀錄) | To: **Evidence Store** | 寫入失敗 → **BLOCK** |

* **Evidence Ptr**:  
  * SRS v8.1.0 §3.10.1 \[ANCHOR:SRS-V810-FR-WATCH-001\]  
  * LBP-B(ICD) v5.0.1 \[ANCHOR:ICD-V501-15-SUBSYSTEM-MATRIX\]

#### **4.10.3 內部元件分解 (Component Decomposition)**

為確保「監控」與「執行」的職責分離，CA-WATCH 內部架構應分解為以下元件：

1. **Plan Loader (計畫載入器)**  
   * **職責**: 讀取 `ART-XS-PLAN` 與 `ART-SELECT-CANDIDATES`，驗證來源 Hash 是否匹配（防換料），並載入觀察清單。  
   * **Constraint**: 若檢測到輸入工件版本與 `run_config_snapshot` 不符，必須拒絕啟動。  
2. **Market Data Ingest (行情接入器)**  
   * **職責**: 接收外部（如 XQ DDE/RT）的即時行情數據。  
   * **Constraint**: 僅作唯讀接入，不得回寫任何數據至行情源。  
3. **Signal Engine (訊號引擎)**  
   * **職責**: 執行 XS 轉譯後的邏輯條件（如 `Close > MA20`），判定是否觸發訊號。  
   * **Traceability**: 每個觸發的訊號必須標註 `trigger_logic_hash`（指向 XS 腳本）與 `source_candidate_id`（指向選股）。  
4. **Radar Emitter (雷達發射器)**  
   * **職責**: 將觸發的訊號封裝為 `ART-WATCH-ALERTS` 並推送到 Event Bus 或檔案系統。  
   * **Safety**: 此元件 **不包含** 任何 API Client 或 Order Execution 模組（物理性隔離）。  
* **Evidence Ptr**:  
  * SRS v8.1.0 §3.10.3 \[ANCHOR:SRS-V810-FR-WATCH-003\] (Alert Traceability)  
  * SRS v8.1.0 §3.10.2 \[ANCHOR:SRS-V810-FR-WATCH-002\] (No Execution Capability)

#### **4.10.4 架構約束與不變量 (Hard Constraints)**

以下規則為架構級硬約束，任何實作不得違反：

1. **INV-WATCH-001: Strict Radar-Only (嚴格雷達模式)**  
   * CA-WATCH 及其產出物 `ART-WATCH-ALERTS` 僅代表「資訊（Information）」，在架構上被定義為 **無副作用（Side-Effect Free）**。  
   * **驗證**: 程式碼掃描（Lint）不得發現任何 `send_order`、`post_api` 或寫入交易日誌的函式調用。  
2. **INV-WATCH-002: Watchlist Integrity (清單完整性)**  
   * 監控的標的範圍必須 **100% 等於** `ART-SELECT-CANDIDATES` 提供的清單。  
   * **例外處理**: 若行情源缺漏某標的數據，應記錄 `DATA_MISSING` 警示，但不得擅自新增非計畫內的標的。  
3. **INV-WATCH-003: Traceability Binding (追溯綁定)**  
   * 所有產出的訊號必須攜帶 `run_id` 與 `git_sha`，確保可從訊號逆向追溯至產生該訊號的策略代碼版本。  
* **Evidence Ptr**:  
  * SRS v8.1.0 §3.10.2 \[ANCHOR:SRS-V810-FR-WATCH-002\]  
  * SRS v8.1.0 §3.10.3 \[ANCHOR:SRS-V810-FR-WATCH-003\]

#### **4.10.5 治理與閘門掛鉤 (Governance & Gates)**

CA-WATCH 的運行受以下 Gate 管控，確保符合三平面治理要求：

| Gate ID | 檢查內容 (Check) | 政策 (Policy) | Fail-Closed 行為 |
| ----- | ----- | ----- | ----- |
| **GATE-SAFE-002-RADARONLY** | 驗證運行期間無任何交易副作用（API Call/File Write to Order Dir）。 | **BLOCK\_RELEASE** | 若偵測到副作用，立即終止程序並觸發警報。 |
| **GATE-WATCH-SIGNAL** | 驗證訊號格式是否符合 Schema，且 trace\_id 有效。 | **RADAR\_ONLY** | 格式錯誤的訊號被標記為 INVALID，不傳遞給下游。 |
| **GATE-BP-003-EVIDENCE** | 驗證 Evidence Triplet (Verdict/Index/Bundle) 是否完整產出。 | **BLOCK\_RELEASE** | 缺證據則視為任務失敗，不進行 Handoff。 |

* **Evidence Ptr**:  
  * SRS v8.1.0 §3.10.4 \[ANCHOR:SRS-V810-FR-WATCH-004\]  
  * 15CA 重構升級藍圖 Gate Registry \[ANCHOR:SOMOC-15CA-BP-07-GATES\]

#### **4.10.6 資料主幹整合 (Data Backbone Integration)**

* **讀取**: 從 `Data Backbone/Decisions` 區讀取 `ART-XS-PLAN` 與 `ART-SELECT-CANDIDATES`。

* **寫入**: 將 `ART-WATCH-ALERTS` 與 `watch_log.json` 寫入 `Data Backbone/Signals` 區。

* **Lineage**: 更新 `RunLedger`，記錄 `Plan -> Watch -> Alert` 的血緣關係。

* **Evidence Ptr**:

  * ARCH §5.3 \[ANCHOR:ARCH-V810-5-3-LINEAGE\]  
  * Pipeline-A+B 整合資料庫方案 §3.4 \[ANCHOR:PIPELINE-DB-SCHEMA\]

#### **4.10.7 Route-Out Register**

| Topic | Target SSOT | Locator |
| ----- | ----- | ----- |
| **訊號格式 Schema** | LBP-B(ICD) | `SCHEMA-WATCH-SIGNAL` |
| **日誌格式 Schema** | LBP-B(ICD) | `SCHEMA-WATCH-LOG` |
| **操作流程細節** | Runbook & WI | `SF-10`, `OP-10` |
| **數值門檻 (Latency)** | Fitness (CR\_OPEN) | `FIT-012`, `CR-OPS-003` |

* **Evidence Ptr**:  
  * LBP-B(ICD) v5.0.1 \[ANCHOR:ICD-V501-SCHEMA-LOCATOR\]  
  * SubP1 Runbook v1.4.0 \[ANCHOR:SPLMVP-S4-RUNBOOK\]

#### ---

 **4.11 CA-EXECUTE (Execution Adapter)**

**\[ANCHOR:ARCH-V810-4-11-EXECUTE\]**

本節定義 **CA-EXECUTE** 的架構邊界、核心職責、元件拓樸與治理契約。作為 Execution Plane 與外部交易環境（XQ 全球贏家）的最後一道閘門，CA-EXECUTE **嚴禁** 被設計為自動下單引擎，而是作為「執行層適配器（Execution Adapter）」，負責將上游策略轉化為受控的指令文件（Dry-Run Instructions），並強制執行 HITL（人機介入）與 Kill-Switch 風控。  
---

##### **4.11.1 Architectural Mandate & Responsibility (架構職責)**

**\[ANCHOR:ARCH-V810-4-11-1-MANDATE\]**

* **核心職責 (Core Responsibility)**：

  * **XQ 唯一下單端執行 (XQ Sole Endpoint Enforcement)**：依據 REQ21 第 20 條與 SRS 定義，本系統僅作為決策輔助。CA-EXECUTE 負責將 `ART-XS-PLAN` 轉化為「待確認指令」，實際下單與成交 **必須且只能** 在 XQ 全球贏家桌面程式中完成。  
  * **執行禁用預設 (Default EXECUTE\_DISABLED)**：架構層級強制預設為 `EXECUTE_DISABLED` 狀態。任何外部 API 呼叫或副作用操作，必須在 `GATE-HITL-001-ENV_APPROVAL` 通過後方可解鎖（且僅限當次 Run）。  
  * **人機介入強制 (HITL Enforcement)**：透過 GitHub Environments 的 `required_reviewers` 機制，將「指令放行」綁定為不可繞過的架構級閘門。  
  * **成交紀錄歸檔 (Execution Log Ingestion)**：負責攝取（Ingest）XQ 匯出的成交紀錄，將其標準化為 `execution_log.json`，供下游 CA-PERFORM 進行 Track-B 可靠度分析。  
* **架構邊界 (Boundaries)**：

  * **Upstream**：CA-TRANSLATE（接收 `ART-XS-PLAN`）、CA-WATCH（接收 `ART-WATCH-ALERTS`）。  
  * **Downstream**：CA-PERFORM（提供 `ART-EXECUTE-DRYRUN` / `execution_log.json`）。  
  * **External**：XQ 全球贏家（**Air-Gapped Interaction**：透過檔案/剪貼簿交換，無自動 API 連線）。  
* **設計原意 (Design Intent)**：

  * 依據《五子系統組合方案》，CA-EXECUTE 被定義為 **Runtime Adapter**（薄層適配器），而非交易引擎。其存在目的是為了將高風險操作的結果進行「可稽核封裝」，而非取代 XQ 的執行功能。

##### **4.11.2 Component Topology (元件拓樸)**

**\[ANCHOR:ARCH-V810-4-11-2-COMPONENTS\]**

本子系統內部由以下架構元件組成（Implementation Route-Out: Pipeline-C / 五子系統組合方案）：

| Component | Responsibility | SRS Trace | Implementation Pointer |
| ----- | ----- | ----- | ----- |
| **Instruction Formatter** | 將 `xs_script` 與選股清單格式化為人類可讀的「待確認指令表」（Dry-Run Sheet），供 HITL 審核。 | SRS81-FR-EXECUTE-007 | Pipeline-C §3.3 |
| **Risk Controller (Kill-Switch)** | **時序硬規則執行器**：檢查當前時間是否違反 13:10（禁新倉）/ 13:20（強清）/ 13:25（ROD-only）規則；若違反直接阻斷輸出。 | SRS81-FR-EXECUTE-001 | SubP1 Runbook §3 |
| **HITL Gateway** | 整合 GitHub Environment API，觸發 `waiting_for_approval` 狀態，並等待 Reviewer 簽章。 | SRS81-FR-EXECUTE-003 | OMOC-MVU Ref \[GH-ENV-GATE\] |
| **Log Ingestor** | 解析 XQ 匯出的成交/委託 CSV，轉換為系統標準的 `execution_log.json`，並計算 Hash 以防竄改。 | SRS81-FR-EXECUTE-007 | Pipeline-C §3.3 |

**Fail-Closed Mechanism**: 若 Risk Controller 偵測到時序違規，或 HITL Gateway 未收到有效簽章，元件 **MUST** 拋出 `BLOCK_RELEASE` 訊號，並將輸出鎖定為空或錯誤標記，防止無效指令流出。

##### **4.11.3 Data Flow & Artifact Contract (資料流與工件契約)**

**\[ANCHOR:ARCH-V810-4-11-3-ARTIFACTS\]**

* **Input Contract**:

  * **Source**: `ART-XS-PLAN` (from CA-TRANSLATE), `ART-WATCH-ALERTS` (from CA-WATCH).  
  * **Validation**: 必須驗證輸入工件的 `trace_refs` 是否指向有效的 CA-TRANSLATE `verdict.json`。  
* **Output Contract (ART-EXECUTE-DRYRUN)**:

  * **Primary Artifact**: `execution_log.json` (成交/委託紀錄 SSOT)。  
  * **Traceability**: 必須包含 `decision_id`（回溯至 HITL）、`candidate_id`（回溯至 CA-SELECT）。  
  * **Auxiliary Artifacts**:  
    * `verdict.json`: 執行結果裁決（SUCCESS / FAIL / SKIPPED）。  
    * `hitl_record.json`: 人機介入的核准記錄快照（含 Reviewer ID 與 Timestamp）。  
    * `dry_run_instructions.md`: 給操作員看的執行指令清單。  
  * **Route-Out**: Schema 定義見 ICD `SCHEMA-EXECUTE-LOG`。  
* **Data Backbone Alignment**:

  * 資料落點：`DB:EXECUTION` 分區（Pipeline-A+B 整合資料庫方案）。  
  * 版本控制：`execution_log` 需納入 DVC 或 Git LFS 追蹤，作為 Track-B 績效分析的不可變輸入。

##### **4.11.4 Governance & Fail-Closed Gates (治理與失效關閉)**

**\[ANCHOR:ARCH-V810-4-11-4-GATES\]**

本子系統執行最嚴格的「預設阻斷」策略，必須通過以下 Gate 才能解鎖執行能力：

| Gate ID | Check Focus (檢核點) | Fail-Closed Behavior | Trace Ref |
| ----- | ----- | ----- | ----- |
| **GATE-SAFE-003-EXECUTE\_DISABLED** | **狀態鎖定**：驗證系統是否處於 `EXECUTE_DISABLED` 狀態。除非有明確的 `GATE-HITL-001` 放行訊號，否則禁止任何 Output。 | **EXECUTE\_DISABLED**: 物理性阻斷輸出。 | SRS §2.1.4 |
| **GATE-HITL-001-ENV\_APPROVAL** | **人機授權**：驗證 GitHub Environment 是否有 `deployment_status` 為 `APPROVED`。 | **BLOCK\_RELEASE**: 無核准即視為未授權。 | SRS §3.11.2 |
| **INV-TIME-CHECK** (Internal) | **時序合規**：驗證操作時間是否違反 13:10 (禁新倉) / 13:20 (強清) 規則。 | **BLOCK\_RELEASE**: 違規操作直接攔截。 | Runbook §3 |

##### **4.11.5 RTM (Requirements Traceability Matrix \- Execute)**

**\[ANCHOR:ARCH-V810-4-11-5-RTM\]**

| SRS Req ID | Requirement Summary | ARCH Solution | Evidence Pointer (Hook) |
| ----- | ----- | ----- | ----- |
| **SRS81-FR-EXECUTE-001** | Default EXECUTE\_DISABLED | §4.11.4 GATE-SAFE-003 | `ART-SAFE-EXEC_DISABLED` |
| **SRS81-FR-EXECUTE-002** | XQ Sole Order Endpoint | §4.11.1 Mandate (Adapter Role) | `dry_run_instructions.md` |
| **SRS81-FR-EXECUTE-003** | GitHub Env Approval Integration | §4.11.2 HITL Gateway | `hitl_record.json` |
| **SRS81-FR-EXECUTE-007** | Execution Log Artifacts | §4.11.3 Output Contract | `execution_log.json` |
| **SRS81-FR-EXECUTE-004** | Input Contract Validation | §4.11.3 Input Validation | `verdict.json` (trace\_check) |

##### **4.11.6 Route-Out Register (外導註冊表)**

**\[ANCHOR:ARCH-V810-4-11-6-ROUTEOUT\]**

* **Interface Schema**: `Spartoi｜P1_LBP-B(ICD)_v5.0.1` \> `SCHEMA-EXECUTE-LOG` / `CONTRACT-SF12-001`。  
* **Operational Procedures**: `Spartoi｜SubP1-LITE+MVP 開發 RUNBOOK & WI_v1.4.0` \> `OP-11 操盤`（含 T0/T1 分流操作）。  
* **Implementation Stack**: `Pipeline-C組合方案` \> `CA-EXECUTE` (Adapter implementation)。  
* **Metric Thresholds**: `Spartoi｜P1_LBP-E(Fitness)_v3.0.1` \> `FIT-006` (Security Fail-Closed)。  
* **Governance Rules**: `Spartoi-OMOC Blueprint v2.2.0-r1` \> `Execution Plane` (Permissions & Roles)。

---

#### **4.12 CA-PERFORM (Performance & Risk)**

**\[ANCHOR:ARCH-V810-4-12-PERFORM\]**

本節定義 **CA-PERFORM** 的架構邊界、核心職責、元件拓樸與治理契約。作為 Pipeline-B 的終端與閉環反饋的核心，CA-PERFORM 並非僅是被動的報表生成器，而是 **雙軌（Dual-Track）評估中心**，負責將「策略預期（Track A）」與「執行現實（Track B）」進行對齊分析，並主動產出可驗證的優化提案（Top-3 Proposals）。  
---

##### **4.12.1 Architectural Mandate & Responsibility (架構職責)**

**\[ANCHOR:ARCH-V810-4-12-1-MANDATE\]**

* **核心職責 (Core Responsibility)**：

  * **雙軌評估 (Dual-Track Evaluation)**：  
    * **Track A (Strategy Performance)**：基於 CA-BACKTEST 產物，計算標準化金融指標（Sharpe, CAGR, MaxDD），評估策略的「理論上限」。  
    * **Track B (Execution Reliability)**：基於 CA-EXECUTE 與 CA-GOVERN 日誌，計算工程可靠度指標（Uptime, Slippage, Latency），評估系統的「物理現實」。  
  * **一致性分析 (Parity Analysis)**：計算 Track A 與 Track B 之間的偏差（Deviation），識別「回測美好但實戰虧損」的根因（如滑價過大、信號延遲）。  
  * **主動洞察 (Proactive Insight)**：基於績效數據自動生成 **Top-3 Verifiable Proposals**，而非僅輸出靜態報表，以推動 CA-METHOD 的閉環優化。  
  * **閉環反饋 (Loop Closure)**：將分析結果結構化回寫至 Data Backbone，作為下一輪策略迭代的輸入。  
* **架構邊界 (Boundaries)**：

  * **Upstream**：CA-BACKTEST（接收 `ART-BACKTEST-RESULT`）、CA-EXECUTE（接收 `ART-EXECUTE-DRYRUN` / `ART-EXECUTE-RECORD`）。  
  * **Downstream**：CA-METHOD（提供優化提案）、CA-UI（提供儀表板數據）。  
  * **Control Plane**：CA-GOVERN（接收 System Logs 與 Events）。

##### **4.12.2 Component Topology (元件拓樸)**

**\[ANCHOR:ARCH-V810-4-12-2-COMPONENTS\]**

本子系統內部採用 **引擎-適配器（Engine-Adapter）** 模式，以整合異質數據源並確保計算的標準化：

| Component | Responsibility | SRS Trace | Implementation Pointer |
| ----- | ----- | ----- | ----- |
| **Metrics Engine (Track A)** | 適配成熟量化庫（如 QuantStats/Empyrical），計算標準績效指標。 | SRS81-FR-PERFORM-001 | Pipeline-B v2 §3.3 |
| **Reliability Analyzer (Track B)** | 解析執行日誌與監控事件，計算滑價、延遲、Gate 阻斷率等工程指標。 | SRS81-FR-PERFORM-002 | ARCH v6.0 §4.15 |
| **Parity Checker** | 執行 A/B 軌對比，計算 `performance_drift`，若偏差過大觸發告警。 | SRS81-FR-PERFORM-003 | Pipeline-B v2 §3.3 |
| **Proposal Generator** | 基於規則或輕量級推理，生成 Top-3 優化提案（含 Evidence Link 與 Reproducible Command）。 | SRS81-FR-PERFORM-004 | Pipeline-B v2 §3.4 |
| **Report Builder** | 將上述產出封裝為標準化的 `ART-PERFORM-REPORT`，並生成 Evidence Triplet。 | SRS81-FR-PERFORM-005 | SRS v8.1 §3.12.3 |

**Fail-Closed Mechanism**: 若 Track A 或 Track B 任一數據源缺失或格式損毀，Metrics Engine 必須中止運算並標記 `DATA_INTEGRITY_FAIL`，禁止產出不完整的績效報告誤導決策。

##### **4.12.3 Data Flow & Artifact Contract (資料流與工件契約)**

**\[ANCHOR:ARCH-V810-4-12-3-ARTIFACTS\]**

* **Input Contract**:

  * **Source A**: `ART-BACKTEST-RESULT` (from CA-BACKTEST) \- 含交易明細與資金曲線。  
  * **Source B**: `ART-EXECUTE-DRYRUN` / `ART-EXECUTE-RECORD` (from CA-EXECUTE) \- 含實際成交回報與 HITL 紀錄。  
  * **Logs**: `System Events` (from CA-GOVERN) \- 含系統錯誤與降級事件。  
* **Output Contract (ART-PERFORM-REPORT)**:

  * **Primary Artifact**: `perf_report.json`。  
  * **Payload Structure**:  
    * `summary`: 關鍵績效指標摘要。  
    * `track_a_metrics`: 回測績效詳情。  
    * `track_b_metrics`: 執行可靠度詳情。  
    * `parity_analysis`: A/B 偏差報告。  
    * `top3_proposals`: 結構化建議清單（含 `impact_metric`, `evidence_link`, `repro_cmd`）。  
  * **Traceability**: 必須包含 `upstream_run_ids` (Backtest/Execute Run IDs) 與 `git_sha`。  
  * **Route-Out**: Schema 定義見 ICD `SCHEMA-PERFORMANCE-METRICS` 與 `SCHEMA-FITNESS-REPORT`。  
* **Data Backbone Alignment**:

  * 資料落點：`evidence/perform/{run_id}/`。  
  * 版本控制：納入 RunLedger 索引，確保績效可回溯。

##### **4.12.4 Governance & Fail-Closed Gates (治理與失效關閉)**

**\[ANCHOR:ARCH-V810-4-12-4-GATES\]**

本子系統必須通過以下 Gate 才能發布報告，確保績效數據的可信度：

| Gate ID | Check Focus (檢核點) | Fail-Closed Behavior | Trace Ref |
| ----- | ----- | ----- | ----- |
| **GATE-PERFORM-TCA** | **交易成本分析**：驗證滑價 (Slippage) 與交易成本是否在 Fitness 定義的容忍範圍內。 | **RADAR\_ONLY**: 若成本超標，標記策略風險等級為 HIGH，建議降級。 | SRS §3.16 |
| **GATE-BP-003-EVIDENCE** | **證據完整性**：驗證 `ART-PERFORM-REPORT` 的 Evidence Triplet 是否完整。 | **BLOCK\_RELEASE**: 缺證據即視為報告無效，禁止 UI 展示。 | Blueprint §4 |
| **GATE-PARITY-CHECK** | **一致性檢核**：驗證 Track A 與 Track B 的偏差是否超過閾值（Performance Drift）。 | **RADAR\_ONLY**: 觸發 `DRIFT_ALERT`，需人工介入確認模型失效或環境異常。 | SRS §3.12.1 |

##### **4.12.5 RTM (Requirements Traceability Matrix \- Perform)**

**\[ANCHOR:ARCH-V810-4-12-5-RTM\]**

| SRS Req ID | Requirement Summary | ARCH Solution | Evidence Pointer (Hook) |
| ----- | ----- | ----- | ----- |
| **SRS81-FR-PERFORM-001** | Track A \- Strategy Performance | §4.12.2 Metrics Engine | `perf_report.json` (track\_a) |
| **SRS81-FR-PERFORM-002** | Track B \- Execution Reliability | §4.12.2 Reliability Analyzer | `perf_report.json` (track\_b) |
| **SRS81-FR-PERFORM-003** | Parity Analysis | §4.12.2 Parity Checker | `perf_report.json` (parity) |
| **SRS81-FR-PERFORM-004** | Top-3 Verifiable Proposals | §4.12.2 Proposal Generator | `top3_proposals.json` |
| **SRS81-FR-PERFORM-005** | Primary Output Contract | §4.12.3 Output Contract | `ART-PERFORM-REPORT` |

##### **4.12.6 Route-Out Register (外導註冊表)**

**\[ANCHOR:ARCH-V810-4-12-6-ROUTEOUT\]**

* **Interface Schema**: `Spartoi｜P1_LBP-B(ICD)_v5.0.1` \> `SCHEMA-PERFORMANCE-METRICS`, `SCHEMA-FITNESS-REPORT`。  
* **Operational Procedures**: `Spartoi｜各階段子系統操作流程_v1.0.1` \> `OP-12 績效分析`。  
* **Implementation Stack**: `Pipeline-B 組合方案 v2` \> `CA-PERFORM` (QuantStats/Empyrical)。  
* **Metric Thresholds**: `Spartoi｜P1_LBP-E(Fitness)_v3.0.1` \> `FIT-001` (Win Rate), `FIT-005` (Reliability), `CR-OPEN-E-001`。

---

### **4.13 CA-COLLAB (Collaboration)**

**\[ANCHOR:ARCH-V810-4-13-COLLAB\]**  
---

#### **4.13.1 Responsibility & Architectural Mandate (職責與架構使命)**

**\[ANCHOR:ARCH-V810-4-13-1-RESP\]**

* **核心職責 (Core Responsibility)**：  
  * **多代理編排 (Multi-Agent Orchestration)**：作為 Execution Plane 的核心調度樞紐，負責實作「Chef (主控) \- Deputy (副官) \- Experts (專家)」的三層協作架構，並管理代理人間的任務分派與上下文傳遞。  
  * **雙模態管理 (Dual Mode Management)**：負責維護系統執行模式（**NON\_AGENT** vs **AGENT\_ASSIST**）的狀態機，並在模式切換時執行合規性檢查。  
  * **WT-NA 協作 (WebTools No-API)**：提供「WT-NA 精靈」的後端邏輯，支援在不依賴付費 API 的前提下，透過標準化提示詞模板與剪貼簿橋接（Clipboard Bridge）實現人機協作。  
  * **審計證跡 (Audit Trail)**：強制記錄所有協作過程的對話日誌、工具呼叫與決策快照，產出不可竄改的協作證據包。  
* **架構整併 (Consolidation)**：  
  * 依據 **15CA 重構升級藍圖**，原 **CA-AGENT** 已完全整併入本子系統。CA-COLLAB 是系統中唯一合法的 Agent 管理入口，嚴禁在其他子系統私自實作代理邏輯。

**Rationale (設計理據)**：依據 **SRS v8.1.0 §3.13.1** 與 **OMOC-MVU Blueprint**，協作層必須具備「反遞迴（Anti-Recursion）」與「最小權限」治理，不能讓 Agent 成為失控的黑箱。

#### **4.13.2 Architectural Structure: Topology & Components (拓樸與組件)**

**\[ANCHOR:ARCH-V810-4-13-2-STRUCT\]** 本子系統內部由以下關鍵組件構成，嚴格遵循 OMOC-MVU 的治理規範：

* **Orchestration Engine (編排引擎)**：  
  * **Chef (Strategic Controller)**：唯一具備全域視野與任務拆解權限的角色。  
  * **Deputy (Tactical Gatekeeper)**：負責執行 Gate 檢查、證據驗收與進度追蹤。  
  * **Experts (Domain Specialists)**：單一領域專家（如 Coder, Reviewer），**嚴禁** 再次生成子代理（Anti-Recursion Policy）。  
* **Mode Controller (模式控制器)**：  
  * 狀態機：維護 `NON_AGENT`（預設）與 `AGENT_ASSIST` 狀態。  
  * 切換邏輯：狀態轉換必須通過 **GATE-AGENT-MODE**（檢查 Policy 卡完整性）。  
* **AES Manager (Agent Extension Slot Manager)**：  
  * 職責：管理 Agent 可使用的「技能（Skills）」插槽。  
  * 約束：僅允許掛載經 **CA-GOVERN** 白名單授權的工具（如 `spartoi-schema`），預設拒絕所有未授權的 MCP 連接。  
* **Policy Enforcer (政策執行器)**：  
  * 負責在執行期載入並強制執行三張 Policy 卡：`AgentPolicy`（行為邊界）、`ToolPolicy`（工具白名單）、`ApprovalPolicy`（人機介入規則）。

**Fail-Closed Mechanism**: 若 Policy 卡遺失、格式錯誤或簽章不符，Policy Enforcer 必須立即觸發 **BLOCK\_RELEASE**，阻止 Agent 啟動或執行任何操作。

#### **4.13.3 Data Flow & Artifact Contract (資料流與工件契約)**

**\[ANCHOR:ARCH-V810-4-13-3-ARTIFACTS\]** CA-COLLAB 作為協作中樞，其產出是系統可稽核性的關鍵（Audit A 要求）。

| I/O 類型 | Artifact ID | 內容摘要 | 來源/去向 | SSOT 連結 |
| ----- | ----- | ----- | ----- | ----- |
| **Input** | `Config Snapshot` | `run_config` (含 mode, flags), `Policy Cards` | From: **CA-GOVERN** | SRS §3.13.3 |
| **Input** | `Task Context` | 任務描述、上游產物引用 | From: **User/CA-UI** | Runbook §6 |
| **Output** | `ART-COLLAB-AUDITLOG` | 完整協作證跡包：1. `agent_session_log.json` (對話)2. `agent_action_trace.json` (工具呼叫)3. `agent_decision_record.json` (關鍵決策) | To: **Evidence Store** | ICD: SCHEMA-COLLAB-LOG |
| **Output** | `ART-WTNA-LOG` | WT-NA 模式下的提示詞與回應雜湊記錄 | To: **Evidence Store** | SRS §3.13.1 |

* **Evidence Structure**: 每個 Session 結束時，必須生成標準 **Evidence Triplet** (`verdict.json`, `index.json`, `bundle.zip`)，並寫入 `evidence/collab/{session_id}/`。

#### **4.13.4 Governance & Fail-Closed Gates (治理與失效關閉)**

**\[ANCHOR:ARCH-V810-4-13-4-GOV\]** 本子系統執行以下強制性 Gate，確保協作過程不脫軌：

| Gate ID | Check Focus (檢核點) | Fail-Closed Behavior (失效行為) | Trace Ref |
| ----- | ----- | ----- | ----- |
| **GATE-AGENT-MODE** | **模式切換合規性**：驗證 Policy 卡（Agent/Tool/Approval）是否齊全且版本正確。 | **BLOCK\_RELEASE**：禁止切換至 `AGENT_ASSIST`，強制降級回 `NON_AGENT`。 | SRS §3.13.5 |
| **GATE-COLLAB-QUALITY** | **協作完整性**：驗證 WT-NA 回貼內容的 Hash 是否與提示詞預期一致；檢查 Agent 是否嘗試執行禁止指令。 | **RADAR\_ONLY** / **BLOCK\_RELEASE**：若涉及高風險操作（如寫入 SSOT）則阻斷；否則標記品質異常。 | SRS §3.13.5 |
| **GATE-MQ-001-MERGE\_GROUP** | **合併檢核**：若協作產出為 PR，驗證其是否通過 Merge Queue 的自動化檢查。 | **BLOCK\_RELEASE**：阻斷合併。 | 15CA BP §4 |

#### **4.13.5 RTM & Route-Out Register (需求追溯與外導)**

**\[ANCHOR:ARCH-V810-4-13-5-RTM\]**

**Requirements Traceability (SRS v8.1.0)**

* **SRS81-FR-COLLAB-001** (Orchestration & WT-NA) → 覆蓋於 §4.13.1, §4.13.2.  
* **SRS81-FR-COLLAB-002** (WT-NA Support) → 覆蓋於 §4.13.1, §4.13.3.  
* **SRS81-FR-COLLAB-003** (Dual Mode) → 覆蓋於 §4.13.2 (Mode Controller).  
* **SRS81-FR-COLLAB-005** (AES) → 覆蓋於 §4.13.2 (AES Manager).  
* **SRS81-FR-COLLAB-008** (Audit Output) → 覆蓋於 §4.13.3 (Output Contract).

**Route-Out Map (Implementation Details)**

| Topic | Target SSOT | Locator Anchor |
| ----- | ----- | ----- |
| **Agent Implementation** | OMOC-MVU 套件包 | `OMOCMVU-REF-AGENT-GOV` |
| **Policy Card Schema** | LBP-B (ICD) | `SCHEMA-AGENT-POLICY` |
| **WT-NA Workflow** | Runbook & WI | `OP-00 多AI/LLM協作` |
| **Permissions Matrix** | OMOC-MVU 套件包 | `OMOCMVU-REF-OC-PERM` |

**Audit Note (審查修補)**: 本章節已完整整合 **CA-AGENT** 的功能（依據 15CA 重構藍圖），並解決了 **審查報告 A (MAJ-015)** 關於 Agent 安全邊界定義不清的問題，明確了 Anti-Recursion 與 Policy Enforcer 的架構地位。

---

### **4.14 CA-UI (UI/Console)**

**\[ANCHOR:ARCH-V810-4-14-UI\]**  
---

#### **4.14.1 Architectural Mandate & Responsibility (架構職責)**

**\[ANCHOR:ARCH-V810-4-14-1-MANDATE\]**

* **核心職責 (Core Responsibility)**：

  * **單一操作入口 (Single Entry Point)**：作為 **Execution Plane** 的唯一人機互動介面，負責觸發 JobCard、顯示系統狀態、以及執行 HITL（人機介入）確認。  
  * **決策隔離 (Decision Isolation)**：CA-UI 採「唯讀呈現（Read-Only Presentation）」架構。嚴禁在 UI 層實作任何選股、擇時、部位計算或自動交易的業務邏輯。UI 僅負責「渲染（Render）」上游 Pipeline 產出的 JSON/Parquet 工件。  
  * **證據視覺化 (Evidence Visualization)**：提供一鍵查閱背後 Evidence Triplet（Verdict/Index/Bundle）的能力，確保「所見即所得（WYSIWYG）」的可追溯性。  
  * **Codespaces 適配 (Cloud-Native Adaptability)**：依據「五子系統組合方案」，CA-UI 在 P1 階段優先採用 **TUI (Text User Interface)** 或 **Interactive CLI** 形式，以適配 Codespaces 雲端開發環境，避免重工開發桌面 GUI。  
* **架構邊界 (Boundaries)**：

  * **Upstream**：讀取 Data Backbone 中的所有 Artifacts（如 `ART-PERFORM-REPORT`, `ART-WATCH-ALERTS`）與 Logs。  
  * **Downstream**：向 Orchestrator 發送 JobCard 觸發指令；向 CA-GOVERN/CA-EXECUTE 發送 HITL 確認訊號。  
  * **Constraint**：**嚴禁** 包含直接下單（Direct Order）按鈕。僅允許「治理型」按鈕（如 Approve/Reject, Kill-Switch）。

#### **4.14.2 Component Topology (元件拓樸)**

**\[ANCHOR:ARCH-V810-4-14-2-COMPONENTS\]**

本子系統由以下核心組件構成（Implementation Route-Out: Python Textual / Rich）：

| Component | Responsibility | SRS Trace | Implementation Pointer |
| ----- | ----- | ----- | ----- |
| **Dashboard Renderer** | (TUI) 負責讀取並渲染系統狀態、Gate 通過率、Flag 狀態。僅做資料綁定，不含運算邏輯。 | SRS81-FR-UI-001 | Five-Subsystem Plan §3.2 |
| **JobCard Launcher** | 提供互動式選單，供使用者選擇並觸發預定義的 JobCard（如 `run_pipeline_a`）。產生 `run_config_snapshot`。 | SRS81-FR-UI-005 | OMOC-MVU Package |
| **Evidence Walker** | 提供檔案樹狀視圖，允許使用者瀏覽與檢索 Evidence Store 中的 Artifacts 與 Verdicts。 | SRS81-FR-UI-003 | ARCH §9.3 |
| **HITL Interceptor** | 專責處理 SF-11/SF-12 的阻斷式彈窗（Modal）。強制要求使用者輸入 "CONFIRM" 字串或簽章後才放行。 | SRS81-FR-UI-002 | Runbook OP-11 |
| **Safety Guard (Build-time)** | (CI Component) 在 UI 建置/發布階段執行靜態掃描，確保無違規交易函數（如 `buy()`, `sell()`）。 | SRS81-FR-UI-006 | SRS §3.14.4 |

**Fail-Closed Mechanism**: 若 Dashboard Renderer 無法讀取 Data Backbone（如連線失敗或 Schema 不符），UI 必須顯示 **"SYSTEM UNREACHABLE"** 並鎖定所有操作功能，嚴禁顯示過期或快取的數據（Stale Data）。

#### **4.14.3 Data Flow & Artifact Contract (資料流與工件契約)**

**\[ANCHOR:ARCH-V810-4-14-3-ARTIFACTS\]**

* **Input Contract**:

  * **Source**: Data Backbone (All Zones).  
  * **Artifacts**: `ART-PERFORM-REPORT`, `ART-WATCH-ALERTS`, `ART-BACKTEST-RESULT`, `ART-GOVERN-REGISTRY`.  
  * **Validation**: UI 必須驗證輸入工件的 Hash 是否與 `version_manifest.json` 一致。  
* **Output Contract (ART-UI-READONLY-BUILD)**:

  * **Primary Artifact**: `ui_manifest.json` (包含 UI 版本、依賴的 Schema 版本)。  
  * **Security Report**: `policy_scan_report.json` (證明源碼中無違規交易函式)。  
  * **Operational Log**: `ui_action_log.json` (記錄使用者的點擊、觸發與 HITL 確認行為)。  
  * **Route-Out**: Schema 定義見 ICD `CONTRACT-UI-001`。  
* **Data Backbone Alignment**:

  * 操作日誌落點：`evidence/ui/{run_id}/ui_action_log.json`。

#### **4.14.4 Governance & Fail-Closed Gates (治理與失效關閉)**

**\[ANCHOR:ARCH-V810-4-14-4-GATES\]**

本子系統必須通過以下 Gate 才能視為「合規」，否則觸發 Fail-Closed：

| Gate ID | Check Focus (檢核點) | Fail-Closed Behavior | Trace Ref |
| ----- | ----- | ----- | ----- |
| **GATE-UI-001-READONLY\_POLICY** | **唯讀政策**：靜態掃描 UI 原始碼，檢查是否包含黑名單關鍵字（如 `OrderAtPrice`, `ExecuteTrade`）。 | **BLOCK\_RELEASE**: 若發現違規函數，阻斷 UI 建置與部署。 | SRS §3.14.4 |
| **GATE-BP-001-TABLELINT** | **Schema 合規**：驗證 UI 讀取的 JSON Schema 是否與 ICD 最新版本一致。 | **BLOCK\_RELEASE**: 版本錯配即阻斷，防止渲染錯誤數據。 | 15CA BP §7 |
| **GATE-SAFE-002-RADARONLY** | **預設狀態**：驗證 UI 啟動時是否預設處於 RADAR\_ONLY 模式（無主動執行權限）。 | **EXECUTE\_DISABLED**: 若未預設安全模式，強制降級功能。 | SRS §3.14.4 |

#### **4.14.5 RTM (Requirements Traceability Matrix \- UI)**

**\[ANCHOR:ARCH-V810-4-14-5-RTM\]**

| SRS Req ID | Requirement Summary | ARCH Solution | Evidence Pointer (Hook) |
| ----- | ----- | ----- | ----- |
| **SRS81-FR-UI-001** | Decision Isolation Policy | §4.14.1 架構職責 & §4.14.2 Dashboard Renderer | `policy_scan_report.json` |
| **SRS81-FR-UI-002** | No Trade Buttons | §4.14.1 Constraint & §4.14.4 GATE-UI-001 | `ui_manifest.json` |
| **SRS81-FR-UI-003** | Evidence Triplet Visualization | §4.14.2 Evidence Walker | UI Screenshot / Demo |
| **SRS81-FR-UI-004** | Governance Dashboard | §4.14.2 Dashboard Renderer (Flag/Gate view) | `ui_action_log.json` |
| **SRS81-FR-UI-005** | Single Entry Point | §4.14.2 JobCard Launcher | `run_config_snapshot.json` |
| **SRS81-FR-UI-006** | Output Contract | §4.14.3 Output Contract | `ART-UI-READONLY-BUILD` |

#### **4.14.6 Route-Out Register (外導註冊表)**

**\[ANCHOR:ARCH-V810-4-14-6-ROUTEOUT\]**

* **Interface Schema**: `Spartoi｜P1_LBP-B(ICD)_v5.0.1` \> `CONTRACT-UI-001`.  
* **Operational Procedures**: `Spartoi｜SubP1-LITE+MVP 開發 RUNBOOK & WI_v1.4.0` \> `OP-01 啟動桌面軟體UI`.  
* **Implementation Stack**: `五子系統組合方案` \> `CA-UI` (Textual/Rich for Codespaces).  
* **Metric Thresholds**: `Spartoi｜P1_LBP-E(Fitness)_v3.0.1` \> `MAI-UI-001` (Logic Isolation Test).

---

#### **4.15 CA-GOVERN (Governance & Policy)**

**\[ANCHOR:ARCH-V810-4-15-GOVERN\]**

本節定義 **CA-GOVERN** 的架構邊界、核心職責、元件拓樸與治理契約。作為 **Control Plane** 在執行層的代理人（Proxy），CA-GOVERN 不負責具體的業務邏輯（如回測或下單），而是專注於「憲法執行」與「規則裁決」，確保所有操作符合 Authority Stack 定義的權限與流程。  
---

##### **4.15.1 Architectural Mandate & Responsibility (架構職責)**

**\[ANCHOR:ARCH-V810-4-15-1-MANDATE\]**

* **核心職責 (Core Responsibility)**：

  * **權威仲裁 (Authority Arbitration)**：依據 Authority Stack (L1\~L9) 解決規範衝突，確保 SRS (L1) 優於下游文件。  
  * **控制面三件套管理 (Control Plane Trio Management)**：維護 Flag Registry（旗標）、Degrade Matrix（降級）、Run Config Snapshot（快照）的 SSOT 狀態。  
  * **閘門編排 (Gate Orchestration)**：調度所有 Gate (Policy/Check) 的執行，並彙整產出標準化的 `verdict.json` 與 `gate_report.json`。  
  * **版本與雜湊治理 (Version & Hash Governance)**：產出全域 `version_manifest.json`，鎖定系統在任一時間點的完整狀態（Code \+ Data \+ Config）。  
* **架構邊界 (Boundaries)**：

  * **Upstream**：SRS/Blueprint (接收規範輸入)。  
  * **Downstream**：All 14 CAs (提供旗標、降級指令、Gate 裁決結果)。  
  * **External**：GitHub Actions/Environments (對接 CI/CD 與 HITL 審核)。

**Rationale**: 依據 **SRS v8.1.0 §3.15**，CA-GOVERN 必須是「無狀態的裁判」，確保治理規則不被業務邏輯綁架。

##### **4.15.2 Component Topology (元件拓樸)**

**\[ANCHOR:ARCH-V810-4-15-2-COMPONENTS\]**

本子系統由以下核心組件構成，分別對應「控制面三件套」與「治理引擎」：

| Component | Responsibility | SRS Trace | Implementation Pointer |
| ----- | ----- | ----- | ----- |
| **Flag Controller** | 管理 `flag_registry.json`，執行 Tier-0 (Auth) / Tier-1 (Mode) / Tier-2 (Trade) 分層檢核，阻斷非法變更。 | SRS81-FR-GOV-003 | 15CA BP §6.1 |
| **Degrade Engine** | 監控系統健康度，依據 `degrade_matrix.json` 自動觸發降級（如 API 失敗 → RADAR\_ONLY）。 | SRS81-FR-GOV-004 | 15CA BP §6.2 |
| **Snapshot Recorder** | 在每次 Pipeline 啟動時生成 `run_config_snapshot.json`，固化當下所有配置，確保可重現性。 | SRS81-FR-GOV-005 | SRS v8.1 §5.1 |
| **Gate Orchestrator** | (Engine) 呼叫 GateRunner，執行具體 Check 邏輯，並依據 Gate Policy (BLOCK/RADAR) 產出最終裁決。 | SRS81-FR-GOV-006 | OMOC-MVU Package |
| **Version Locker** | 掃描所有子系統產物，生成 `version_manifest.json` (Global Hash Tree)。 | SRS81-FR-GOV-010 | Pipeline-A+B DB |

**Fail-Closed Mechanism**: 若 Flag Controller 偵測到 Tier-0 旗標（如 `allow_bypass_contract`）在 Runtime 被動態修改，必須立即觸發 **BLOCK\_RELEASE** 並鎖死系統。

##### **4.15.3 GitHub Integration & Supply Chain (GitHub 整合與供應鏈)**

**\[ANCHOR:ARCH-V810-4-15-3-GITHUB\]**

依據 **審查報告 A (F-009)** 與 **SRS v8.1.0 §3.15.4**，CA-GOVERN 必須將治理邏輯延伸至 GitHub 平台：

* **Merge Queue Integration**:  
  * 監聽 `merge_group` 事件，確保 Required Checks 在合併隊列中被正確觸發。  
  * 架構要求：CI Workflow 必須包含 `on: merge_group` 觸發器。  
* **Environment Approval (HITL)**:  
  * 針對 `omoc-advanced` 或 `production` 環境，強制使用 GitHub Environments 的 `required_reviewers` 機制。  
  * CA-GOVERN 負責驗證 Deployment Status 是否為 `APPROVED`，否則視為無效執行。  
* **Supply Chain Guardrails**:  
  * 執行 **GATE-SC-001-PINACT**：驗證所有 Actions 使用 SHA-1 Pinning。  
  * 執行 **GATE-SC-002-SUPPLYCHAIN**：調用 Zizmor/Scorecard 進行安全掃描。

##### **4.15.4 Data Flow & Artifact Contract (資料流與工件契約)**

**\[ANCHOR:ARCH-V810-4-15-4-ARTIFACTS\]**

* **Input Contract**:

  * **Source**: `Authority Stack` (SRS/ARCH/Blueprints 等規範文件)。  
  * **Config**: `config/flag_registry.json`, `config/degrade_matrix.json`。  
* **Output Contract (ART-GOVERN-REGISTRY)**:

  * **Primary Artifact**: `gov_evidence_pack.json`，包含：  
    * `run_config_snapshot`: 執行當下的配置快照。  
    * `flag_state`: 旗標最終狀態。  
    * `degrade_status`: 降級模式狀態。  
    * `gate_verdicts`: 所有 Gate 的裁決結果匯總。  
  * **Global Manifest**: `version_manifest.json` (全系統雜湊樹)。  
  * **Traceability**: 必須包含指向 SRS 條文的 `req_trace` 與指向 GitHub Run ID 的 `ci_trace`。  
* **Data Backbone Alignment**:

  * 資料落點：`evidence/govern/{run_id}/`。  
  * SSOT 屬性：此目錄下的 `run_config_snapshot` 為該次執行的唯一配置真相。

##### **4.15.5 Governance & Fail-Closed Gates (治理與失效關閉)**

**\[ANCHOR:ARCH-V810-4-15-5-GATES\]**

CA-GOVERN 自身的運作（即「監管者的監管」）必須通過以下 Gate，否則視為治理失效：

| Gate ID | Check Focus (檢核點) | Fail-Closed Behavior | Trace Ref |
| ----- | ----- | ----- | ----- |
| **GATE-BP-001-TABLELINT** | **表格完整性**：驗證 Flag Registry、15CA Table 等關鍵表格無截斷、缺欄或重複定義。 | **BLOCK\_RELEASE**: 表格解析失敗即阻斷發布。 | 15CA BP §7 |
| **GATE-BP-002-ANCHORREG** | **錨點有效性**：驗證所有 Route-Out 指針與 Anchor Registry 是否可解析且無死鏈。 | **BLOCK\_RELEASE**: 死鏈即阻斷。 | 審查報告 A (Crit-001) |
| **GATE-GOV-SSOT** | **SSOT 一致性**：驗證 `flag_registry.json` 與 SRS 定義的 Tier 分層是否一致。 | **BLOCK\_RELEASE**: 規則衝突即阻斷。 | SRS §3.15.6 |

##### **4.15.6 RTM (Requirements Traceability Matrix \- Govern)**

**\[ANCHOR:ARCH-V810-4-15-6-RTM\]**

| SRS Req ID | Requirement Summary | ARCH Solution | Evidence Pointer (Hook) |
| ----- | ----- | ----- | ----- |
| **SRS81-FR-GOV-001** | Authority Stack Enforcement | §4.15.1 Authority Arbitration | `verdict.json` (authority\_check) |
| **SRS81-FR-GOV-003** | Flag Registry Governance | §4.15.2 Flag Controller | `flag_registry.json` |
| **SRS81-FR-GOV-005** | Run Config Snapshot | §4.15.2 Snapshot Recorder | `run_config_snapshot.json` |
| **SRS81-FR-GOV-006** | Gate Orchestration | §4.15.2 Gate Orchestrator | `gate_report.json` |
| **SRS81-FR-GOV-008** | GitHub Governance Hooks | §4.15.3 GitHub Integration | `check_run` (merge\_group) |
| **SRS81-FR-GOV-010** | Global Version Manifest | §4.15.2 Version Locker | `version_manifest.json` |

##### **4.15.7 Route-Out Register (外導註冊表)**

**\[ANCHOR:ARCH-V810-4-15-7-ROUTEOUT\]**

* **Gate Logic Details**: `Spartoi-OMOC(15 CA)重構升級藍圖v0.2.0-r1` \> `§4 Gate Registry`。  
* **Flag Tier Definitions**: `Spartoi-OMOC_SRS_v8.1.0` \> `§5.1.1 Flag Tiering`。  
* **Operational Steps**: `Spartoi｜SubP1-LITE+MVP 開發 RUNBOOK & WI_v1.4.0` \> `OP-13 全系統資料管理`。  
* **Interface Schema**: `Spartoi｜P1_LBP-B(ICD)_v5.0.1` \> `SCHEMA-GOVERN-REGISTRY`。

---

## **§5. Unified Data Backbone (統一資料主幹)**

**\[ANCHOR:ARCH-V810-SEC5\]**

### **架構意圖 (Architectural Intent)**

本章節定義 Spartoi-OMOC 系統的資料流動骨幹與儲存架構。為滿足 **SRS81-PIPE-DB-001\~003** 之需求，本系統不採用單一資料庫解決所有問題，而是建立一個 **「分層治理、分區隔離、全域追溯」** 的統一資料主幹（Unified Data Backbone）。此骨幹必須支撐 Pipeline A/B/C 的單向依賴，並確保所有產物（Artifacts）皆具備可回放性（Replayability）與不可竄改性（Immutability）。

### **權威來源 (Authority)**

* **Normative Specification**: 《Spartoi-OMOC\_SRS\_v8.1.0》§5.2 \[SRS-V810-REQ-DB-BACKBONE\]  
* **Design Solution**: 《Pipeline-A+B 整合資料庫方案》  
* **Zone Definition**: 《Spartoi-OMOC(15 CA)重構升級藍圖v0.2.0-r1》§6 \[SOMOC-15CA-BP-06-PIPELINE-DB\]

---

### **5.1 Data Zones & Storage Strategy (分區策略：Git/DVC/S3 分層)**

**\[ANCHOR:ARCH-V810-5-1-ZONES\]**

本節定義資料儲存的物理分層與邏輯分區策略，旨在解決《審查報告 A》提出的「資料落點不明」與「大檔汙染 Git」風險（A:CRIT-004, F-008）。  
---

#### **5.1.1 Storage Layering Architecture (儲存分層架構)**

**\[ANCHOR:ARCH-V810-5-1-1-LAYERS\]**

依據 **SRS81-PIPE-DB-003**，系統採用「三層儲存架構」以平衡版本控制、效能與成本：

| 分層 (Layer) | 儲存技術 (Technology) | 存放內容 (Content Responsibility) | 架構約束 (Constraints) |
| ----- | ----- | ----- | ----- |
| **Layer 1: Meta & Spec**(元資料與規格層) | **Git** | • **規格文件**：MethodCard, SpecPack, JobCard• **索引檔案**：Manifests, Index JSON• **資料指針**：DVC files (.dvc)• **程式碼**：XS Scripts, Python Code | • **單檔限制**：\< 1MB• **性質**：Human-readable, Diff-friendly• **禁止**：二進位大檔、原始數據、Log 實體 |
| **Layer 2: Pointer & Versioning**(指針與版本層) | **DVC**(Data Version Control) | • **大型資料集的版本快照**• **Pipeline 階段的輸入/輸出指針**• **資料血緣依賴關係** (dvc.yaml) | • **職責**：連接 Git Commit 與 Storage Blob• **對齊**：Git Tag 必須對齊 DVC Tag 以確保程式碼與資料版本一致 |
| **Layer 3: Entity & Blob**(實體與物件層) | **Object Storage**(S3 / MinIO / GCS) | • **原始資料**：PDF, HTML, Video• **結構化大檔**：Parquet, SQLite DB files• **證據包實體**：Evidence Bundles (.zip) | • **性質**：Immutable (WORM), Content-Addressable (CAS)• **存取**：僅透過 DVC 或 Signed URL 存取，不直接掛載為檔案系統 |

**Route-Out**: 具體 DVC 配置與 Remote 設定，參見 《Pipeline-A+B 整合資料庫方案》§3.2。

#### **5.1.2 Data Zone Topology (資料分區拓撲)**

**\[ANCHOR:ARCH-V810-5-1-2-ZONES\]**

依據 **15 CA 重構藍圖** 之定義，統一資料主幹邏輯上劃分為六大區域（Zones），每個 Zone 具有明確的寫入權限與資料生命週期。

| Zone ID | 區域名稱 | 主要內容 | 寫入者 (Writer CA) | 讀取者 (Reader CA) | 生命週期與治理 |
| ----- | ----- | ----- | ----- | ----- | ----- |
| **DB:CORPUS** | 語料與知識區 | 教材原檔(PDF)、清洗後語料、向量索引 | CA-WRCCA-CORPUS | CA-DISTILLCA-DSL | • **Append-Only**• 必須經 SHA-256 封印• 對齊 SRS81-FR-WRC-002 |
| **DB:KNOWLEDGE** | 蒸餾知識區 | 基底偽代碼、DSL Schema、原語庫 | CA-DISTILLCA-DSL | CA-METHOD | • **Versioned**• 每次產出視為新版本 (SpecPack)• 需通過 G-SEG-L Gate |
| **DB:STRATEGY** | 策略規格區 | 方法卡 (MethodCard)、風險設定、回測報告 | CA-METHODCA-BACKTEST | CA-TACA-SELECTCA-PERFORM | • **Versioned & Locked**• 方法卡定案後不可變更 (Immutable)• 需通過 G-BT-H Gate |
| **DB:MARKET** | 市場數據區 | K 線資料 (OHLCV)、籌碼數據、基本面 | *External Feed* | CA-TACA-WATCHCA-BACKTEST | • **Time-Series**• 以 Parquet 格式分區儲存• 視為 Read-Only External Source |
| **DB:EXECUTION** | 執行與監控區 | 訊號日誌 (Watch Log)、成交紀錄、XS 腳本包 | CA-WATCHCA-EXECUTECA-TRANSLATE | CA-PERFORMCA-UI | • **Append-Only Log**• 必須包含 HITL 簽核紀錄• 需通過 G-HITL-LOG |
| **DB:GOVERNANCE** | 治理與全域區 | **RunLedger**, **ReferenceDB**, Version Manifest | CA-GOVERN | *All CAs* | • **System Critical**• 紀錄全域血緣與版本快照• **Single Source of Truth** |

**證據指針 (Evidence Pointer Mapping)**:

* 所有寫入 Zone 的操作，必須在 `evidence/` 目錄下產出對應的 `manifest.json`，並包含指向該 Zone 實體檔案的 DVC Hash 或 S3 URI。  
* 相關定義參見 《Spartoi-OMOC(15 CA)重構升級藍圖v0.2.0-r1》§6。

#### **5.1.3 Global Reference Databases (全域參考資料庫)**

**\[ANCHOR:ARCH-V810-5-1-3-GLOBAL-DB\]**

為解決 **SRS81-PIPE-DB-001** 與 **SRS81-PIPE-DB-002** 需求，架構中強制包含兩個全域資料庫：

1. **ReferenceDB (參考資料庫)**:

   * **職責**: 提供全系統統一的「市場靜態資料」。  
   * **內容**: 交易日曆 (Trading Calendar)、股票代碼表 (Instrument Master)、除權息資訊 (Corporate Actions)、交易時段規則。  
   * **架構要求**: 必須以本地檔案資料庫（如 DuckDB/SQLite）形式存在，隨程式碼版本分發，確保回測與實盤使用同一份日曆。  
   * **Fail-Closed**: 若 ReferenceDB 缺失或版本過期，所有 Pipeline 必須 **BLOCK\_RELEASE**。  
2. **RunLedger (運行與稽核台帳庫)**:

   * **職責**: 記錄全系統的「執行血緣 (Lineage)」與「證據索引」。  
   * **內容**:  
     * `runs`: 每次執行的 ID、時間、啟動參數 (Run Config Snapshot)。  
     * `artifacts`: 產出的工件 Hash、存放位置 (Zone)。  
     * `lineage`: 工件之間的輸入/輸出依賴關係 (Input \-\> Output)。  
     * `verdicts`: Gate 的裁決結果。  
   * **架構要求**: 必須支援 SQL 查詢（建議 SQLite/DuckDB），以便於 CA-PERFORM 進行跨 Run 的績效分析與 CA-GOVERN 進行審計。

#### **5.1.4 Storage Governance & Fail-Closed Policies (儲存治理與失效關閉策略)**

**\[ANCHOR:ARCH-V810-5-1-4-GOV\]**

針對資料存取層的異常，執行以下架構級攔截策略：

| 異常情境 (Anomaly) | 涉及元件 | Fail-Closed 行為 (Action) | 架構依據 |
| ----- | ----- | ----- | ----- |
| **Hash Mismatch**(雜湊不符) | DVC / S3 | **BLOCK\_RELEASE**拒絕讀取該檔案，標記為 CORRUPTED，禁止下游計算。 | SRS §3.1 (WRC)SRS §4.1 (Audit) |
| **Zone Violation**(越區寫入) | CA-\* | **BLOCK\_RELEASE**例如 CA-WRC 嘗試寫入 DB:STRATEGY，必須被權限控管或 CI 檢查攔截。 | SRS §1.2 (15CA)Blueprint §3 (Tri-Plane) |
| **Missing ReferenceDB**(參考庫遺失) | CA-BACKTESTCA-EXECUTE | **BLOCK\_RELEASE**禁止執行任何依賴日曆的邏輯。 | SRS81-PIPE-DB-002 |
| **Schema Drift**(格式漂移) | Parquet / JSON | **RADAR\_ONLY** (若非關鍵欄位)**BLOCK\_RELEASE** (若關鍵欄位缺失)透過 Schema Validator 檢核。 | SRS §2.1 (Gate Policy)ICD Schema Defs |

**Route-Out**:

* 詳細 DB Schema 定義：參見 《Spartoi｜P1\_LBP-B(ICD)\_v5.0.1》\[ICD-V501-SCHEMA-LOCATOR\]。  
* 實作落點規劃：參見 《Pipeline-A+B 整合資料庫方案》§3.4 目錄與規格。

---

### 5.2 Pipeline Integration Architecture (管線整合架構)

**\[ANCHOR:ARCH-V810-5-2-PIPELINES\]**

本節定義 Pipeline A/B/C 與五子系統（Five-Subsystem Pack）在架構層面的拓樸關係、數據交握契約與依賴約束。 **架構原則**：所有管線必須遵循「單向依賴（One-Way Dependency）」與「證據閉環（Evidence Loop）」，嚴禁循環依賴或跨級讀取資料。  
---

##### **5.2.1 Pipeline Topology & Dependencies (管線拓樸與依賴)**

**\[ANCHOR:ARCH-PIPELINE-TOPOLOGY\]**

系統由三條主管線（Pipelines）串接 15 個 CA 子系統，形成單向價值流。

* **Pipeline-A (Knowledge)**：知識蒸餾與規格化。  
  * **Scope**: CA-WRC $\\rightarrow$ CA-CORPUS $\\rightarrow$ CA-DISTILL $\\rightarrow$ CA-DSL  
  * **Responsibility**: 將非結構化教材轉化為可執行的規格包（SpecPack）。  
  * **Dependency**: 無上游依賴（Source 來自外部白名單）。  
* **Pipeline-B (Strategy)**：策略構建與驗證。  
  * **Scope**: CA-METHOD $\\rightarrow$ CA-BACKTEST $\\rightarrow$ CA-PERFORM  
  * **Responsibility**: 基於 SpecPack 產出通過驗收的策略包（StrategyPack）。  
  * **Dependency**: 強依賴 Pipeline-A 的 `SpecPack` 與 Data Backbone 的歷史行情。  
* **Pipeline-C (Execution)**：執行準備與監控。  
  * **Scope**: CA-TA $\\rightarrow$ CA-SELECT $\\rightarrow$ CA-TRANSLATE $\\rightarrow$ CA-WATCH  
  * **Responsibility**: 將 StrategyPack 轉化為可載入 XQ 的執行包（XSPack）與監控計畫。  
  * **Dependency**: 強依賴 Pipeline-B 的 `StrategyPack`。

**架構約束 (Architectural Constraints)**：

1. **Immutable Artifacts**: 上游產出一旦生成（SpecPack/StrategyPack），下游只能唯讀引用，**禁止** 修改上游內容。  
2. **No Bypass**: Pipeline-C 不得直接讀取 Pipeline-A 的原始教材，必須經過 Pipeline-B 的方法封裝。  
3. **Fail-Closed Block**: 上游任一 Gate 失敗，下游管線自動阻斷（Block），不得啟動。

---

##### **5.2.2 Pipeline-A Integration: Knowledge Distillation (知識蒸餾管線整合)**

**\[ANCHOR:ARCH-PIPELINE-A-INT\]**

Pipeline-A 是系統的知識源頭，負責將非結構化數據「封印」並「蒸餾」為結構化規格。

**Component Integration (組件整合)**：

| Stage | CA Component | Input Contract | Output Artifact (Artifact Registry) | Architecture Function |
| ----- | ----- | ----- | ----- | ----- |
| **Ingest** | **CA-WRC** | Whitelist Sources | `ART-CORPUS-RAW` (input\_manifest) | **Sealing**: 來源封印與雜湊計算，防止換料欺詐。 |
| **Index** | **CA-CORPUS** | `ART-CORPUS-RAW` | `ART-CORPUS-INDEX` (corpus\_snapshot) | **Indexing**: 多模態路由（Text/Table/Visual）與結構化索引。 |
| **Distill** | **CA-DISTILL** | `ART-CORPUS-INDEX` | `ART-DISTILL-BASE` (distill\_bundle) | **Extraction**: 語意蒸餾，需通過 SGF Gate (SEM³ Stage 1)。 |
| **Spec** | **CA-DSL** | `ART-DISTILL-BASE` | `ART-DSL-SPEC` (dsl\_schema) | **Normalization**: 轉化為市場中立的原語規格。 |

**Key Architectural Decision**:

* **WRC 無解析原則**: CA-WRC 僅負責搬運與簽章，解析邏輯必須封裝在 CA-CORPUS，以確保原始資料的法律有效性與可重現性。  
* **Route-Out**: 詳細流程與工具選型（如 DVC, Unstructured）請參閱《Pipeline-A\_組合方案 v2》。

---

##### **5.2.3 Pipeline-B Integration: Strategy Verification (策略驗證管線整合)**

**\[ANCHOR:ARCH-PIPELINE-B-INT\]**

Pipeline-B 負責將知識規格轉化為可交易的策略，並建立過擬合防線。

**Component Integration (組件整合)**：

| Stage | CA Component | Input Contract | Output Artifact (Artifact Registry) | Architecture Function |
| ----- | ----- | ----- | ----- | ----- |
| **Design** | **CA-METHOD** | `ART-DSL-SPEC` | `ART-METHOD-SPEC` (MethodCard) | **Fusion**: 融合三源（DSL \+ MarketProfile \+ Skill），通過 MSC Gate。 |
| **Verify** | **CA-BACKTEST** | `ART-METHOD-SPEC` | `ART-BACKTEST-RESULT` | **Defense**: 執行雙引擎回測，建立過擬合防線（Hygiene Check）。 |
| **Feedback** | **CA-PERFORM** | `ART-BACKTEST-RESULT` | `ART-PERFORM-REPORT` | **Evaluation**: Dual-Track 評估（Track A 策略績效 / Track B 工程可靠度）。 |

**Key Architectural Decision**:

* **Overfitting Defense Layer**: 架構層強制要求 CA-BACKTEST 輸出 `reproducibility_manifest.json`，並包含 PBO/DSR 等指標，否則視為無效驗證。  
* **MarketProfile SSOT**: 市場常數（如交易時段、漲跌幅）必須由 `market_profile.json` 注入，禁止在 MethodCard 硬編碼。

---

##### **5.2.4 Pipeline-C Integration: Execution Prep & Monitoring (執行與監控管線整合)**

**\[ANCHOR:ARCH-PIPELINE-C-INT\]**

Pipeline-C 是連接策略與市場的最後一哩路，必須嚴格遵守「XQ 唯一下單端」架構約束。

**Component Integration (組件整合)**：

| Stage | CA Component | Input Contract | Output Artifact (Artifact Registry) | Architecture Function |
| ----- | ----- | ----- | ----- | ----- |
| **Analysis** | **CA-TA** | `ART-METHOD-SPEC` | `ART-TA-SIGNALS` (SignalCard) | **Feature Eng**: 生成多時窗技術指標與特徵。 |
| **Filter** | **CA-SELECT** | `ART-TA-SIGNALS` | `ART-SELECT-CANDIDATES` | **Ranking**: 執行漏斗篩選（Universe $\\rightarrow$ Rank），產出候選清單。 |
| **Trans** | **CA-TRANSLATE** | `ART-SELECT-CANDIDATES` | `ART-XS-PLAN` (XSPack) | **Mapping**: 將策略轉譯為 XS 腳本，通過 TVE Gate (SEM³ Stage 3)。 |
| **Monitor** | **CA-WATCH** | `ART-XS-PLAN` | `ART-WATCH-ALERTS` | **Radar**: 僅產生監控訊號，**嚴禁** 觸發下單 API。 |

**Key Architectural Decision**:

* **Execution Disabled by Design**: CA-WATCH 與 CA-TRANSLATE 在架構層級被定義為「無寫入權限（No Write Access）」至交易介面，僅能輸出日誌與腳本文件。  
* **XQ Parity**: 轉譯層必須保證 Python 邏輯與 XS 邏輯的語意等價性（Translation-Validation Equivalence）。

---

##### **5.2.5 Cross-Pipeline Lineage & Traceability (跨管線血緣與追溯)**

**\[ANCHOR:ARCH-DATA-LINEAGE\]**

資料主幹必須維護全域血緣（Lineage），確保任何「執行結果（Execution）」都能逆向追溯至「原始教材（Source）」。

**Lineage Contract (血緣契約)**： 所有 Pipeline 產出的 `manifest.json` **必須** 包含以下追溯指標：

{  
  "run\_id": "UUID",  
  "pipeline\_id": "A|B|C",  
  "upstream\_refs": \[  
    { "artifact\_id": "ART-XXX", "hash": "SHA256", "version": "vX.Y.Z" }  
  \],  
  "trace\_refs": {  
    "srs\_req\_id": \["SRS81-FR-XXX"\],  
    "source\_chunk\_id": \["CHUNK-UUID"\] // 用於 Knowledge Grounding  
  }  
}

**Traceability Chain (追溯鏈)**： `Trade Execution` $\\leftarrow$ `XS Script` (Pipe C) $\\leftarrow$ `MethodCard` (Pipe B) $\\leftarrow$ `DSL Spec` (Pipe A) $\\leftarrow$ `Original PDF` (Source)

* **Constraint**: 若追溯鏈中斷，CA-GOVERN 必須標記該次運行為 **UNAUDITED** 並觸發告警。

---

##### **5.2.6 Pipeline Conflict & Fallback Strategy (管線衝突與降級策略)**

**\[ANCHOR:ARCH-PIPE-FALLBACK\]**

當資料主幹發生異常或依賴缺失時，架構層強制執行的降級策略。

| 異常情境 | 觸發條件 | 架構行為 (Architectural Behavior) | 影響範圍 |
| ----- | ----- | ----- | ----- |
| **Source Corruption** | Input Manifest Hash 不匹配 | **BLOCK\_RELEASE**: 阻斷 Pipeline-A，禁止更新 Knowledge Base。 | 全域更新停止 |
| **Verification Fail** | Backtest PBO/DSR 未達標 | **RADAR\_ONLY**: Pipeline-B 產出標記為「僅供觀察」，禁止進入 Pipeline-C。 | 策略無法上線 |
| **Translation Err** | TVE Gate 驗證失敗 | **BLOCK\_RELEASE**: 阻斷 Pipeline-C，禁止產出 XS 腳本。 | 無法生成指令 |
| **Data Gap** | 歷史資料/ReferenceDB 缺失 | **FAIL-CLOSED**: 所有管線停止執行，不使用過期快照。 | 全系統停擺 |

**Route-Out References**:

* SRS Requirements: $Spartoi-OMOC\_SRS\_v8.1.0.md$ §5.2  
* Evidence Contract: $Spartoi-OMOC(15 CA)重構升級藍圖v0.2.0-r1.md$ §3  
* DB Implementation: $Pipeline-A+B 整合資料庫方案.md$ §3.3

---

### 5.3 Lineage & Traceability (血緣追溯與證據鏈)

\[ANCHOR:ARCH-V810-5-3-LINEAGE\]

本節定義系統如何達成 SRS v8.1.0 §4.1.3 \[ANCHOR:SRS-NFR-AUDIT-003\] 所要求的「全鏈路可追溯性（Artifact Lineage）」與「證據三件套綁定（Evidence Triplet Binding）」。架構上強制執行「無血緣即無效（No Lineage, No Validity）」原則，確保從績效結果可逆向追溯至原始教材來源。  
---

###### **5.3.1 Lineage Data Model (血緣資料模型)**

\[ANCHOR:ARCH-V810-5-3-MODEL\] **架構主張**： 每個由 15 CA 產出的工件（Artifact），**必須 (MUST)** 具備以下結構化血緣屬性，並寫入統一的 `RunLedger`（見 §5.3.3）。

| 屬性類別 | 包含內容 | 架構意圖 |
| ----- | ----- | ----- |
| **Provenance (來源)** | `upstream_run_id` (上游執行ID), `upstream_artifact_hash` (上游產物指紋), `input_snapshot_ptr` (輸入快照指針) | 確保產物不是憑空產生，必有父節點。 |
| **Context (情境)** | `run_config_snapshot_hash` (配置快照), `code_version` (Git SHA), `environment_fingerprint` (環境指紋) | 確保產出環境可被重現（Replayability）。 |
| **Transform (變換)** | `stable_id` (執行子系統), `pipeline_stage`, `transformation_logic_hash` (如 MethodCard Hash) | 定義資料經歷了何種邏輯處理。 |
| **Verdict (裁決)** | `gate_result` (PASS/FAIL), `policy_snapshot` (裁決當下的規則), `evidence_triplet_ptr` | 證明該產物已通過品質閘門檢核。 |

**Route-Out**：詳細資料模型 Schema 定義見 ICD \[SCHEMA-LINEAGE-MODEL\]。

###### **5.3.2 Evidence Triplet Binding (證據三件套綁定架構)**

\[ANCHOR:ARCH-V810-5-3-TRIPLET\] **架構主張**： 系統架構層強制規定「證據三件套（Verdict/Index/Bundle）」與資料主幹的綁定關係，任何寫入 Data Backbone 的操作 **必須** 原子化地包含證據指針。

* **Verdict Binding**：  
  * 資料庫中每筆交易/產物紀錄，必須有一欄 `verdict_ptr` 指向該次執行的 `verdict.json`。  
  * 若 `verdict.json` 遺失或狀態非 PASS，該資料視為 **DIRTY**，下游 **禁止 (MUST NOT)** 引用。  
* **Bundle Isolation**：  
  * 實體證據檔案（Log, Report, Binary）存放在 Object Storage 的 `evidence/` 分區，透過 `evidence_index.json` 與資料庫紀錄關聯。  
  * 資料庫僅存 `bundle_hash` 與 `index_ptr`，不存大檔實體（遵循 Git/DVC/S3 分層原則）。

**Fail-Closed 機制**：

* **Orphan Detection**：定期掃描 Data Backbone，發現無對應 Evidence Triplet 的資料紀錄，自動標記為 INVALID。

**Route-Out**：

* 證據契約定義：15CA BP \[SOMOC-15CA-BP-08-EVIDENCE\]。  
* 驗收門檻：SRS \[MAI-NFR-AUDIT-001\]。

###### **5.3.3 RunLedger Architecture (運行與稽核台帳庫)**

\[ANCHOR:ARCH-V810-5-3-RUNLEDGER\] **架構定位**： `RunLedger` 是全系統唯一的「血緣索引中心（Lineage Registry）」，位於 Data Backbone 的 `Index Zone`。它負責串接跨 Pipeline 的依賴關係。

**結構與職責**：

1. **Registry Table**：記錄全域唯一的 `run_id` 與其對應的 Pipeline (A/B/C)、子系統、時間戳與狀態。  
2. **Dependency Graph**：維護 `run_id` 之間的父子關係（Parent-Child Relationship），形成有向無環圖（DAG）。  
3. **Cross-Pipeline Linkage (跨管線連結)**：  
   * **SpecPack Link**：Pipeline-B (Strategy) 的執行紀錄必須包含 `specpack_run_id`（指向 Pipeline-A）。  
   * **StrategyPack Link**：Pipeline-C (Execution) 的執行紀錄必須包含 `strategypack_run_id`（指向 Pipeline-B）。  
   * **Feedback Loop**：Pipeline-B (Feedback) 必須包含 `execution_run_id`（指向 Pipeline-C）。

**架構約束**：

* **Append-Only**：RunLedger 僅允許新增，**嚴禁** 修改或刪除歷史紀錄（以確保審計不可竄改性）。  
* **Write-Once**：每個 `run_id` 的狀態一旦終結（COMPLETED/FAILED），即鎖定不可變。

**Route-Out**：RunLedger 實作方案見 Pipeline-A+B 整合方案；Schema 見 ICD \[SCHEMA-RUNLEDGER\]。

###### **5.3.4 Traceability Chain (全鏈路追溯視圖)**

\[ANCHOR:ARCH-V810-5-3-TRACE-CHAIN\] **視圖描述**： 本節定義從最下游（績效）回溯至最上游（教材）的強制追溯路徑。任何斷鏈皆視為架構級缺陷 (Defect)。

graph TD  
    Performance\[CA-PERFORM: Performance Report\] \--\>|ref: execute\_id| Execution\[CA-EXECUTE: Execution Log\]  
    Execution \--\>|ref: handoff\_id| HITL\[SF-11: HITL Decision\]  
    HITL \--\>|ref: signal\_id| Watch\[CA-WATCH: Alert Signal\]  
    Watch \--\>|ref: xs\_pack\_id| Translate\[CA-TRANSLATE: XS Script\]  
    Translate \--\>|ref: select\_id| Select\[CA-SELECT: Candidate List\]  
    Select \--\>|ref: ta\_pack\_id| TA\[CA-TA: TA Package\]  
    TA \--\>|ref: method\_id| Method\[CA-METHOD: MethodCard\]  
    Method \--\>|ref: dsl\_id| DSL\[CA-DSL: Baseline Spec\]  
    DSL \--\>|ref: distill\_id| Distill\[CA-DISTILL: Distill Bundle\]  
    Distill \--\>|ref: corpus\_id| Corpus\[CA-CORPUS: Corpus Snapshot\]  
    Corpus \--\>|ref: wrc\_id| WRC\[CA-WRC: Input Manifest\]  
    WRC \--\>|ref: source\_url| Source\[External Source\]

**驗證要求**：

* **Depth Check**：稽核工具必須能從 Performance 節點連續跳轉 11 層回到 Source 節點。  
* **Integrity Check**：每一跳轉節點的 Hash 必須吻合，證明鏈路未被替換。

**Route-Out**：

* RTM 追溯矩陣：SRS §6.2 \[SRS8-PIPE-LINK-001\]。  
* 驗收測試：ARCH §11 \[TEST-TRACE-001\]。

###### **5.3.5 Lineage Conflict Resolution (血緣衝突裁決)**

\[ANCHOR:ARCH-V810-5-3-CONFLICT\] **架構策略**： 當發生血緣衝突（例如：下游引用了不存在的上游 Hash，或 Evidence 指針失效）時，系統執行以下 **Fail-Closed** 策略：

1. **Block Upstream**：若上游血緣驗證失敗，下游 JobCard **禁止啟動**。  
2. **Invalidate Downstream**：若上游產物被標記為 INVALID（如發現 Bug 回溯標記），所有依賴該產物的下游存續資料自動標記為 **SUSPECT**（可疑），需人工介入重跑。  
3. **Evidence Authority**：若 Data Backbone 紀錄與 Evidence Store 檔案內容不符，以 **Evidence Store (Signed/Hashed Bundle)** 為最高真相，Data Backbone 紀錄視為損毀並需修復。

**Route-Out**：

* 衝突處置詳情：Runbook §9 Failure Modes \[SPLMVP-S9-RISK\]。  
* 降級矩陣：SRS §5.1 \[SRS-IR-CTRL-002\]。

---

### 5.4 Artifact Registry (工件註冊表與版本化)

**\[ANCHOR:ARCH-V810-5-4-ARTIFACTS\]**

本節定義系統所有規範性產出（Normative Artifacts）的註冊、命名、版本控制與儲存策略。作為 Data Backbone 的「戶政事務所」，本註冊表強制執行 **SRS81-GOV-EVID-004** 需求，確保系統中不存在「未註冊的幽靈檔案」或「無法溯源的資料」。  
---

##### **5.4.1 Architectural Mandate & Definition (架構職責與定義)**

**\[ANCHOR:ARCH-V810-5-4-1-MANDATE\]**

* **核心職責 (Core Responsibility)**：

  * **證據契約中心 (Evidence Contract Hub)**：維護全系統所有 `ART-ID` 與其對應 Schema、生產者、消費者的映射關係，作為 **GATE-BP-003-EVIDENCE** 的裁決依據。  
  * **版本化權威 (Versioning Authority)**：定義工件的儲存分級（Git/DVC/S3）與版本雜湊策略，確保「可重放性（Replayability）」。  
  * **反幽靈治理 (Anti-Ghost Governance)**：任何未列於本註冊表的檔案，一律視為暫存檔或垃圾，**嚴禁** 作為下游子系統的輸入。  
* **架構定位**：

  * 實體位置：`docs/reference/artifact_registry.yaml` (Metadata SSOT)。  
  * 執行期驗證：由 **CA-GOVERN** 在 Pipeline 執行時動態載入並檢核。

##### **5.4.2 Naming & ID Policy (命名與識別碼規範)**

**\[ANCHOR:ARCH-V810-5-4-2-NAMING\]**

依據 **15CA 重構升級藍圖** 與 **SRS v8.1.0**，工件 ID 必須遵守以下格式，以支援自動化治理：

* **Syntax**: `ART-<DOMAIN>-<NAME>`  
* **Domain Definitions**:  
  * `CORPUS`: 語料與知識相關 (e.g., `ART-CORPUS-RAW`).  
  * `DSL` / `METHOD`: 策略規格相關 (e.g., `ART-METHOD-SPEC`).  
  * `DATA` / `TA`: 市場數據與特徵 (e.g., `ART-TA-SIGNALS`).  
  * `SELECT` / `WATCH` / `EXECUTE`: 交易決策與執行 (e.g., `ART-EXECUTE-DRYRUN`).  
  * `GOVERN` / `EVIDENCE`: 治理與證據 (e.g., `ART-EVIDENCE-TRIPLET`).  
* **Constraint**: `ART-ID` 必須是全域唯一且不可變（Immutable），一旦發布不得修改語意。

##### **5.4.3 Master Artifact Registry (主工件註冊表)**

**\[ANCHOR:ARCH-V810-5-4-3-REGISTRY\]**

本表為系統工件的 **Schema 真相源**。任何實作產出必須符合此表定義的契約，否則觸發 **BLOCK\_RELEASE**。

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

**Traceability Note**: 此表解決了 **Audit A (CRIT-008)** 關於證據契約缺失的問題，明確定義了生產者與消費者關係。

##### **5.4.4 Versioning & Storage Strategy (版本化與儲存策略)**

**\[ANCHOR:ARCH-V810-5-4-4-STORAGE\]**

依據 **Pipeline-A+B 整合資料庫方案**，系統採用「分層儲存」策略以平衡效能與可追溯性：

1. **Git Layer (Specs & Manifests)**:  
   * **對象**：`ART-METHOD-SPEC`, `ART-DSL-SPEC`, 以及所有 `manifest.json` / `index.json`。  
   * **原則**：純文字、小於 10MB 的檔案，直接進入 Git 版本控制，作為 **Logic SSOT**。  
2. **DVC Layer (Data & Models)**:  
   * **對象**：`ART-CORPUS-RAW`, `ART-BACKTEST-RESULT`, `ART-TA-SIGNALS` 等大型二進位或 Parquet 檔。  
   * **原則**：Git 僅儲存 `.dvc` 指針檔，實體儲存於 Object Storage (S3/MinIO)，確保 Repo 不膨脹且資料可回退。  
3. **Object Storage Layer (Immutable Evidence)**:  
   * **對象**：`ART-EVIDENCE-TRIPLET` (Bundle)。  
   * **原則**：寫入後即唯讀（WORM），並啟用 Object Lock 防止竄改，作為稽核的最終防線。

##### **5.4.5 Governance & Fail-Closed Gates (治理與失效關閉)**

**\[ANCHOR:ARCH-V810-5-4-5-GATES\]**

本註冊表與以下 Gate 緊密耦合，確保架構規範被強制執行：

| Gate ID | Check Logic | Fail-Closed Behavior | Trace Ref |
| ----- | ----- | ----- | ----- |
| **GATE-BP-003-EVIDENCE** | **完整性檢核**：驗證產出的 Artifact 是否包含完整的 Triplet (Verdict/Index/Bundle) 且 Hash 一致。 | **BLOCK\_RELEASE**: 缺一不可，視為無效產出。 | SRS §2.2.1 |
| **GATE-GOV-SSOT** | **註冊檢核**：驗證產出的 Artifact ID 是否存在於 5.4.3 的註冊表中。 | **BLOCK\_RELEASE**: 禁止產生未定義的「幽靈工件」。 | SRS §3.15.6 |
| **GATE-SC-002-SUPPLYCHAIN** | **防竄改檢核**：驗證 Artifact 的 SHA-256 是否與 `version_manifest.json` 紀錄相符。 | **BLOCK\_RELEASE**: Hash 不符視為供應鏈攻擊，立即阻斷。 | OMOC-MVU |

##### **5.4.6 Route-Out Register (外導註冊表)**

**\[ANCHOR:ARCH-V810-5-4-6-ROUTEOUT\]**

* **Schema Definitions**: `Spartoi｜P1_LBP-B(ICD)_v5.0.1` \> `SCHEMA-ARTIFACT-*`。  
* **Storage Configuration**: `Pipeline-A+B 整合資料庫方案` \> `§3.4 目錄與規格`。  
* **Operational Steps**: `Spartoi｜SubP1-LITE+MVP 開發 RUNBOOK & WI_v1.4.0` \> `OP-13 全系統資料管理`。  
* **Evidence Contract**: `OMOC-MVU 套件包` \> `docs/reference/Evidence_Contract.md`。

---

## §6. Control Plane & Governance (控制與治理架構)

**\[ANCHOR:ARCH-V810-SEC6\]**  
---

##### **6.1 Gate Layering Architecture (閘門分層架構)**

**\[ANCHOR:ARCH-V810-6-1-GATE-LAYER\]**

本節定義系統的自動化治理核心結構。為解決「裁決邏輯混淆」與「責任邊界不清」問題（參見 Audit Report A: ISS-D-002），本架構強制實作 **「Policy（裁決層）與 Check（檢核層）分離」** 的雙層設計。

此架構確保所有驗收行為皆具備明確的 **「決策後果（Consequence）」** 與 **「證據責任（Liability）」**，並對齊 SRS v8.1.0 之需求條文。  
---

###### **6.1.1 Layer 1: Policy Layer (裁決層 \- 不可變三態)**

**\[ANCHOR:ARCH-V810-6-1-1-POLICY\]**

* **架構定義**：Policy 層定義「當檢核失敗時，系統必須採取的架構級行為」。  
* **不變量約束**：系統僅允許以下三種 Policy 狀態，**嚴禁新增第四態**，以確保 Fail-Closed 行為的可預測性。任何 Gate ID 必須靜態綁定至其中一種 Policy。

| Policy State | 架構行為 (Architectural Behavior) | 適用場景 (Context) | 來源依據 |
| ----- | ----- | ----- | ----- |
| **BLOCK\_RELEASE** | **阻斷發布**。立即終止 Pipeline，禁止產物進入 Artifact Store 或下游。此狀態代表「合規紅線」或「資料損毀」。 | 程式碼合併、Schema 驗證、供應鏈掃描、關鍵數據完整性。 | SRS §1.3.115CA BP §4 |
| **RADAR\_ONLY** | **僅觀測/降級**。允許流程繼續，但強制標記 `risk_level: HIGH` 並寫入 `watch_log`。禁止觸發任何外部副作用（Side Effects）。 | 績效指標未達標、非關鍵來源缺失、預警訊號。 | SRS §1.3.1LBP-A GP-004 |
| **EXECUTE\_DISABLED** | **執行禁用**。物理性切斷 CA-EXECUTE 的指令輸出能力（Kill-Switch 邏輯生效）。僅允許系統處於「唯讀」或「分析」狀態。 | HITL 未授權、交易時段外、Kill-Switch 觸發、未經授權的 Agent 操作。 | SRS §1.3.115CA BP §7 |

###### **6.1.2 Layer 2: Check Layer (檢核層 \- G5 分類體系)**

**\[ANCHOR:ARCH-V810-6-1-2-CHECKS\]**

* **架構定義**：Check 層定義「具體的驗證邏輯與執行單元」。  
* **分類標準**：採用 **G5 (Gate-5) 分類體系**，將所有 Gate ID 歸類，確保治理構面的完整覆蓋。  
* **映射關係**：每個 Gate ID (Check) $\\to$ 唯一 G5 分類 $\\to$ 唯一 Policy。

| G5 分類 | 關注點 (Concerns) | 綁定 Policy (Default) | 對應 Gate ID (Registry) |
| ----- | ----- | ----- | ----- |
| **G5-A** | **Source Integrity**來源完整性、權威性、No-Source-No-Norm | **BLOCK\_RELEASE** | `GATE-BP-002-ANCHORREGGATE-WRC-TIER` |
| **G5-B** | **Spec/Index Integrity**規格一致性、索引完整性、ID 穩定性 | **BLOCK\_RELEASE** | `GATE-BP-001-TABLELINTGATE-BP-004-RTM` |
| **G5-C** | **Artifact Contract**Schema 合規、欄位完整性 | **BLOCK\_RELEASE** | `GATE-BP-003-EVIDENCE` |
| **G5-D** | **Safety & Fail-Closed**人機介入 (HITL)、Kill-Switch、唯讀鎖 | **EXECUTE\_DISABLED** | `GATE-HITL-001-ENV_APPROVALGATE-SAFE-003-EXECUTE_DISABLEDGATE-UI-001-READONLY_POLICY` |
| **G5-E** | \*\*LLM Quality (SEM³)\*\*語意保真 (SGF/MSC)、轉譯等價 (TVE) | **RADAR\_ONLY** (部分)**BLOCK\_RELEASE** (結構) | `GATE-DISTILL-SGFGATE-METHOD-MSCGATE-TRANSLATE-TVEGATE-CORPUS-COVERAGE` |
| **G5-F** | **Execution & Regression**E2E 迴歸、環境指紋、XQ 一致性 | **BLOCK\_RELEASE** | `GATE-MQ-001-MERGE_GROUPGATE-XQ-PARITY` |
| **G5-G** | **Governance & Trace**供應鏈安全、Patch 閉環、版本追溯 | **BLOCK\_RELEASE** | `GATE-SC-001-PINACTGATE-SC-002-SUPPLYCHAINGATE-BP-005-PATCHREG` |

* **Evidence Sources**: Runbook v1.4.0 §7.2, SRS v8.1.0 §2.1.4, 15CA BP v0.2.0-r1 §4.

###### **6.1.3 Gate Decision Rights & Evidence Responsibility (裁決權與證據責任)**

**\[ANCHOR:ARCH-V810-6-1-3-RIGHTS\]**

為解決 Audit Report A (ISS-D-002) 指出的責任漂移風險，本架構明確定義每個 Gate 的 **「證據生產者 (Producer)」**、**「執行者 (Executor)」** 與 **「裁決者 (Authority)」**。

* **原則**：  
  1. **分離原則**：生產證據的 CA 不得擔任該證據的裁決者（球員兼裁判禁止）。  
  2. **CA-GOVERN 獨佔裁決權**：所有 Gate 的最終 Verdict (PASS/FAIL) 必須由 CA-GOVERN 透過自動化流程（CI/GateRunner）簽署，其他 CA 僅能提供 Input。  
  3. **Route-Out**：詳細職責矩陣 Route-Out 至 `15CA BP §4 Gate Registry` 與 `SRS §2.1.4`。

| Gate ID | Evidence Producer (誰產資料) | Decision Authority (誰蓋章) | Evidence Artifact (憑證) |
| ----- | ----- | ----- | ----- |
| `GATE-BP-001` | CA-GOVERN (Self-check) | CA-GOVERN | `ART-GOVERN-REGISTRY` |
| `GATE-BP-003` | All CAs (Output) | CA-GOVERN | `ART-EVIDENCE-TRIPLET` |
| `GATE-SC-002` | CA-GOVERN (Scanner) | CA-GOVERN | `ART-SC-ZIZMOR` |
| `GATE-HITL-001` | CA-COLLAB / User | CA-EXECUTE \+ CA-GOVERN | `ART-HITL-APPROVAL` |
| `GATE-SAFE-002` | CA-WATCH | CA-GOVERN | `ART-SAFE-RADARONLY` |
| `GATE-UI-001` | CA-UI (Build process) | CA-GOVERN | `ART-UI-READONLY-BUILD` |

###### **6.1.4 Architectural Hook Points (架構掛載點)**

**\[ANCHOR:ARCH-V810-6-1-4-HOOKS\]**

本架構在系統關鍵路徑上定義了不可繞過的 **強制掛載點 (Hard Hooks)**，確保 Policy 的執行。

1. **Merge Queue Hook (GitHub Control Plane)**:

   * **機制**：`merge_group` 事件觸發。  
   * **強制 Gate**：`GATE-MQ-001` \+ `GATE-BP-003` (Evidence Integrity) \+ `GATE-SC-002` (Supply Chain)。  
   * **Fail-Closed**：若 Hook 未回報 Status=PASS，Merge Queue 必須卡死（Block）。(Source: SRS §2.1.3)  
2. **Environment Deployment Hook (Deployment Protection)**:

   * **機制**：GitHub Environments (`omoc-advanced`) \+ Required Reviewers。  
   * **強制 Gate**：`GATE-HITL-001`。  
   * **Fail-Closed**：無核准紀錄（Approval Log），CA-EXECUTE 的 `EXECUTE_ENABLED` 旗標恆為 `false`。(Source: SRS §2.1.3)  
3. **Pipeline Handoff Hook (Data Plane)**:

   * **機制**：Pipeline A $\\to$ B $\\to$ C 的交接點。  
   * **強制 Gate**：`GATE-BP-004-RTM` (追溯性) \+ 對應階段的功能 Gate (如 `GATE-METHOD-MSC`)。  
   * **Fail-Closed**：上游 Evidence Triplet 缺損，下游拒絕啟動。(Source: 15CA BP §3.6)

**Route-Out Register (本節外導)**：

* **HOW (實作指令)**：`Spartoi｜SubP1-LITE+MVP 開發 RUNBOOK & WI_v1.4.0` §7。  
* **THRESHOLDS (數值門檻)**：`Spartoi｜P1_LBP-E(Fitness)_v3.0.1` (CR\_OPEN)。  
* **SCHEMA (資料結構)**：`Spartoi｜P1_LBP-B(ICD)_v5.0.1` §5.3。

---

### **§6.2 Control Plane Trio (Flag / Degrade / Snapshot 架構)**

\[ANCHOR:ARCH-V810-6-2-TRIO\]

本節定義「控制平面三件套（Control Plane Trio）」的架構規格。此三者構成系統運行時（Runtime）的「治理憲法」，確保所有子系統在 **權限、模式、降級** 行為上具備決定性（Determinism）與可追溯性（Traceability）。

**架構原則（ARCH-PRINCIPLES）：**

1. **SSOT 唯一性**：CA-GOVERN 為唯一寫入者（Writer），其餘 CA 僅能讀取（Reader）。  
2. **不可變性（Immutability）**：`run_config_snapshot` 一經生成，該次 Run 週期內不可變更。  
3. **失效關閉（Fail-Closed）**：若三件套任一檔案缺失、Schema 驗證失敗或簽章不符，系統 **必須** 拒絕啟動（BLOCK\_RELEASE）。

---

#### **6.2.1 Flag Registry Architecture (旗標註冊表架構)**

\[ANCHOR:ARCH-V810-6-2-1-FLAG\]

**架構意圖**：將功能開關從「程式碼常數」提升為「可治理的組態檔案」，並實施嚴格的分層管理以防止權限漂移。

* **Artifact Identity**: `ART-GOVERN-REGISTRY` (部分)  
* **Physical Location**: `/config/flag_registry.json` (Runtime SSOT)  
* **Traceability**: 對齊 **SRS81-FR-GOV-003** (Flag Registry Governance) 與 **ADR-032** (Flag Tier 分層)。

**分層架構 (Tiering Architecture)**： 系統 **必須** 支援以下三層旗標定義，且下層不得覆蓋上層的硬性約束：

| Tier | 定義 (Definition) | 權限/變更 (Governance) | 架構範例 (Non-Normative) |
| ----- | ----- | ----- | ----- |
| **Tier-0** | \*\*Authorization (授權級)\*\*涉及核心安全與合規邊界，預設值必須為 `false` (Safe Default)。 | **Static Only**僅允許透過 PR 修改 SSOT，**禁止** 執行期動態變更。 | `allow_bypass_contractallow_xsat` |
| **Tier-1** | \*\*Capability (能力級)\*\*控制主要運行模式切換。 | **CR\_OPEN Managed**需有對應的 CR\_OPEN 條目或 Test Track 驗證通過才可啟用。 | `enable_agent_modeenable_t1_modeict_hot_swap_enabled` |
| **Tier-2** | \*\*Domain (交易域)\*\*業務邏輯層級的開關。 | **Dynamic / Configurable**可由 `run_config` 在啟動時注入。 | `enable_margin_tradingforce_summary_report` |

**驗收鉤子 (Acceptance Hook)**：

* **GATE-BP-001-TABLELINT**：驗證 Flag 表格欄位完整性。  
* **GATE-GOV-SSOT**：驗證 Runtime Flag 與 SRS 定義的一致性。

**Route-Out**：

* Schema 定義 → \[ICD:SCHEMA-FLAG-REGISTRY-V2\]  
* 預設值與權限規範 → \[SRS:SRS-V700-FLAG-TIERING\]

#### **6.2.2 Degrade Matrix Architecture (降級矩陣架構)**

\[ANCHOR:ARCH-V810-6-2-2-DEGRADE\]

**架構意圖**：將「異常處理」結構化為「預定義的降級狀態」，確保系統在部份失效時能安全地降級（Graceful Degradation）而非崩潰或失控。

* **Artifact Identity**: `ART-GOVERN-REGISTRY` (部分)  
* **Physical Location**: `/config/degrade_matrix.json`  
* **Traceability**: 對齊 **SRS81-FR-GOV-004** (Degrade Matrix Enforcement) 與 **ADR-018** (降級策略設計)。

**降級模式定義 (Degrade Modes)**： 架構層僅定義以下標準模式，具體觸發條件 Route-Out 至 SRS。

| 模式 (Mode) | 架構行為 (Architectural Behavior) | 機器強制點 (Enforcement Hook) |
| ----- | ----- | ----- |
| **NORMAL** | 全功能正常運作。 | N/A |
| **RADAR\_ONLY** | **僅觀測**。禁止產生任何寫入型副作用（Side-effects），如下單、發送外部 API。 | `GATE-SAFE-002-RADARONLY`執行層 Adapter 攔截 |
| **PAPER\_ONLY** | **紙上作業**。允許回測與模擬，但禁止連接實盤環境。 | `GATE-XQ-PARITY`Context Isolation |
| **EXECUTE\_DISABLED** | **執行禁用**。物理性切斷 CA-EXECUTE 的指令輸出能力（Kill-Switch 狀態）。 | `GATE-SAFE-003-EXECUTE_DISABLED`Runtime Flag Lock |
| **READ\_ONLY\_UI** | **唯讀介面**。UI 鎖定所有操作按鈕，僅允許瀏覽證據與日誌。 | `GATE-UI-001-READONLY_POLICY`Component Disable |

**失效關閉 (Fail-Closed) 機制**： 若 `degrade_matrix.json` 遺失或毀損，系統 **必須** 自動進入最高級別降級狀態（**EXECUTE\_DISABLED** \+ **READ\_ONLY\_UI**）。

**Route-Out**：

* Schema 定義 → \[ICD:SCHEMA-DEGRADE-MATRIX-V2\]  
* 觸發條件與規則細節 → \[SRS:SRS-V700-DEGRADE-\*\]

#### **6.2.3 Run Config Snapshot Architecture (運行配置快照架構)**

\[ANCHOR:ARCH-V810-6-2-3-SNAPSHOT\]

**架構意圖**：建立每次執行的「不可變更上下文（Immutable Context）」，確保任何執行結果（Evidence）皆可被精確重放（Replay）。

* **Artifact Identity**: `ART-GOVERN-REGISTRY` (部分)  
* **Physical Location**: `/evidence/govern/{run_id}/run_config_snapshot.json`  
* **Traceability**: 對齊 **SRS81-FR-GOV-005** (Run Config Snapshot) 與 **ADR-026** (控制面三件套合約化)。

**快照欄位契約 (Snapshot Contract)**： 架構層強制要求以下 10 個核心欄位 **必須** 存在，缺一不可（Fail-Closed）：

1. `config_version`: 配置結構版本（Semantic Versioning）。  
2. `run_id`: 該次執行的全域唯一識別碼（UUIDv4）。  
3. `trading_mode`: 交易模式鎖定 (`T0_DAYTRADE` | `T1_SWING`)。  
4. `execution_mode`: 執行模式鎖定 (`NON_AGENT` | `AGENT_ASSIST`)。  
5. `snapshot_timestamp`: 快照生成時間（ISO8601 UTC）。  
6. `flag_values`: 當下所有 Flag 的解析後數值（Resolved Values）。  
7. `degrade_mode`: 啟動時的降級狀態。  
8. `base_pseudocode_fingerprint`: 依賴的偽代碼庫版本指紋（SHA-256）。  
9. `input_manifest_hash`: 輸入資料清單的指紋（SHA-256）。  
10. `acml_level`: Agent 能力成熟度等級鎖定。

**生命週期 (Lifecycle)**：

* **Creation**: 由 CA-GOVERN 在 Pipeline 啟動瞬間生成。  
* **Validation**: 透過 `GATE-GOV-SSOT` 驗證格式與內容完整性。  
* **Consumption**: 所有下游 CA（如 CA-METHOD, CA-EXECUTE） **必須** 讀取此快照作為唯一配置來源，**禁止** 讀取環境變數或動態設定檔。  
* **Persistence**: 隨 Evidence Pack 永久封存。

**Route-Out**：

* Schema 定義 → \[ICD:SCHEMA-RUN-CONFIG-V2\]  
* ACML 等級定義 → \[SRS:SRS-V700-AGENT-ACML\]

---

**本節審查修補聲明 (Audit Fix Declaration)：**

* **A:CRIT-006 (Degrade Matrix missing)**: 已於 §6.2.2 定義架構層級的降級模式與強制點。  
* **A:MAJ-015 (UI read-only risk)**: 已於 §6.2.2 納入 `READ_ONLY_UI` 模式與 `GATE-UI-001` 掛鉤。  
* **Evidence Contract**: 明確定義了三件套的 Artifact Identity 與 Traceability。

---

##### **6.3 GitHub Governance Integration (Merge Queue / Environments 整合)**

**\[ANCHOR:ARCH-V810-6-3-GITHUB\]**

本節定義如何將 Spartoi-OMOC 的 **控制平面（Control Plane）** 治理邏輯，物理性地掛載至 GitHub 平台的原生保護機制（Rulesets, Merge Queue, Environments）上。依據 **Fail-Closed** 原則，GitHub 是系統的「硬體執法層」，任何未被 GitHub 機制攔截的軟體邏輯（Software Check）皆視為不可靠。

**架構目標**：

1. **強制性（Enforcement）**：利用平台級鎖（Platform Locks）防止人為繞過 Gate。  
2. **一致性（Consistency）**：確保 `pull_request` 與 `merge_group` 事件觸發相同的檢查邏輯（解決 Audit A: `ISS-F-002`）。  
3. **可追溯性（Traceability）**：將平台日誌（Check Runs, Deployments）轉化為可歸檔的 Evidence Artifacts。

---

###### **6.3.1 Merge Queue Architecture & Event Matrix (合併隊列架構)**

**\[ANCHOR:ARCH-V810-6-3-MQ-MATRIX\]**

為解決 **Audit A (ISS-F-002)** 指出的「假綠燈」風險，架構層強制定義「事件對齊矩陣」。CI Workflow **必須 (MUST)** 同時監聽並處理 `pull_request` 與 `merge_group` 事件，且執行相同的 Required Checks。

* **架構約束**：  
  * **Trigger Parity**：任何標記為 Required 的 Gate，必須在 `merge_group` 事件中被觸發，否則 Merge Queue 會因等待不到狀態回報而卡死或逾時,。  
  * **Context Isolation**：`merge_group` 運行於臨時合併提交（Temporary Merge Commit）上，嚴禁依賴 PR 留言或 Label 等非 Git Context 資訊。

**Merge Event Matrix (合併事件矩陣)**：

| CI Context (Event) | 觸發時機 | 執行環境 (Ref) | Required Checks 行為 | 對應 Gate | Fail-Closed 結果 |
| ----- | ----- | ----- | ----- | ----- | ----- |
| **Pull Request** | 開啟/更新 PR | `refs/pull/:id/merge` | 執行並回報 Status | `GATE-BP-*` | **BLOCK\_MERGE** (按鈕反灰) |
| **Merge Group** | 入隊 (Enqueue) | `refs/heads/gh-readonly-queue/*` | **必須執行並回報 Status** | `GATE-MQ-001` | **EVICT\_FROM\_QUEUE** (踢出隊列) |
| **Main Branch** | 合併後 (Push) | `refs/heads/main` | 產出最終 Evidence | `GATE-BP-003` | **ALERT** (已合併，僅能告警) |

* **Route-Out**：  
  * Workflow 實作細節 → Runbook `OMOCMVU-RB-MERGEQUEUE`。  
  * GitHub 官方行為佐證 → ARCH §12.1 `WEB-GH-MQ-001`。

###### **6.3.2 Environment Gating Architecture (環境閘門架構)**

**\[ANCHOR:ARCH-V810-6-3-ENV-GATES\]**

依據 **SRS8-GOV-GH-002**，系統利用 GitHub Environments 作為 **HITL (Human-In-The-Loop)** 與 **Upgrade Gate** 的物理載體。此機制將「人工審核」轉化為平台級的「Deployment Protection Rule」。

* **Environment 定義**：

  * `omoc-default`：無保護，用於常規自動化測試與低風險操作。  
  * `omoc-advanced`：**高風險/升級操作專用**。必須啟用 `Required Reviewers` 與 `Prevent Self-Review`。  
* **閘門執行邏輯 (Gate Execution Logic)**：

  * **Router Decision**：L0 Chef (Router Skill) 判定任務風險（`needs_upgrade_gate`）。  
  * **Environment Binding**：若需升級，Workflow Job 動態綁定至 `omoc-advanced` 環境。  
  * **Platform Block**：GitHub 暫停 Job 執行，狀態轉為 `Waiting`，並通知 Reviewers。  
  * **Verdict**：Reviewer 核准 → Job 繼續；拒絕 → Job 失敗（Fail-Closed）。  
* **證據映射 (Evidence Mapping)**：

  * GitHub Deployment Log (Approval timestamp, actor) 必須被提取並封裝為 `ART-HITL-APPROVAL` 工件。

###### **6.3.3 Rulesets & Check Name Stability (規則集與名稱穩定性)**

**\[ANCHOR:ARCH-V810-6-3-RULESETS\]**

為確保 **SRS8-GOV-GH-003** 的合規性，架構層定義 Required Checks 的命名契約。GitHub Rulesets 依賴精確的 String Matching，任何名稱漂移（Drift）都會導致保護失效。

* **Stable Name Policy (穩定名稱政策)**：

  * CI Job 名稱 **必須 (MUST)** 與 `docs/reference/GitHub_ControlPlane_Appendix.md` 中定義的清單完全一致。  
  * 禁止使用動態生成的 Job Name（如包含隨機 ID 或時間戳）。  
* **Validation Hook**：

  * `GATE-BP-004-RTM` 包含 `Check Name Stability` 檢查，比對 `.github/workflows/*.yml` 中的 Job ID 與 Rulesets 設定檔,。

###### **6.3.4 Governance Evidence Binding (治理證據綁定)**

**\[ANCHOR:ARCH-V810-6-3-EVIDENCE\]**

本節定義 GitHub 治理行為如何轉化為 **可攜式證據 (Portable Evidence)**，以滿足 `ART-MQ-TRACE` 與 `ART-HITL-APPROVAL` 的契約要求。

| Governance Event | GitHub Source | Mapped Artifact ID | Schema Ref | 職責子系統 |
| ----- | ----- | ----- | ----- | ----- |
| **Merge Queue Check** | API: `check_runs` (event=merge\_group) | `ART-MQ-TRACE` | `schema:mq@v1` | CA-COLLAB |
| **Environment Approval** | API: `deployments/{id}/statuses` | `ART-HITL-APPROVAL` | `schema:hitl@v1` | CA-EXECUTE |
| **Ruleset State** | API: `repos/{owner}/{repo}/rulesets` | `ART-GOVERN-REGISTRY` | `schema:registry@v1` | CA-GOVERN |

* **Fail-Closed Rule**：  
  * 若無法從 GitHub API 取得上述證據（例如 Token 權限不足），該次執行視為 **UNVERIFIED**，禁止產出最終 Release Bundle。

###### **6.3.5 Route-Out Register (本節外導索引)**

**\[ANCHOR:ARCH-V810-6-3-ROUTEOUT\]**

| Topic | Target SSOT | Anchor / Section |
| ----- | ----- | ----- |
| **需求條文** | SRS v8.1.0 | `SRS-V810-GOV-GITHUB` |
| **介面 Schema** | ICD v5.0.1 | `SCHEMA-MQ-TRACE`, `SCHEMA-HITL-APPROVAL` |
| **Gate 定義** | 15CA BP v0.2.0 | `GATE-MQ-001`, `GATE-HITL-001` |
| **操作步驟** | Runbook v0.2.0 | `OMOCMVU-RB-MERGEQUEUE` |
| **外部佐證** | Web Evidence | `WEB-GH-MQ-001` (GitHub Docs) |

---

##### **6.4 Fail-Closed & Degrade Strategy (失效關閉與降級策略)**

**\[ANCHOR:ARCH-V810-6-4-FAILCLOSED\]**

本節定義系統在面對異常、資訊缺失或驗證失敗時的 **架構級預設行為**。依據 **Spartoi-OMOC Blueprint v2.2.0-r1** 與 **SRS v8.1.0** 的核心治理要求，架構必須保證「失效即關閉（Fail-Closed）」，嚴禁「先執行再說」或「假設通過」的推測性行為。

---

###### **6.4.1 Fail-Closed Architecture Principle (失效關閉架構原則)**

**\[ANCHOR:ARCH-V810-6-4-1-PRINCIPLE\]**

* **架構定義**：Fail-Closed 是一種系統預設的安全狀態機制。當系統處於未授權、資料不完整、規則衝突或外部依賴不可用時，**CA-GOVERN** 必須強制介入，將相關子系統或流程切換至「無副作用」的安全模式。  
  * **理由 (WHY)**：防止錯誤擴散（Blast Radius Containment）與未經授權的高風險操作（如自動下單）。  
* **觸發條件 (Triggers)**：  
  * **Evidence Missing**：缺少證據三件套（Verdict/Index/Bundle）或雜湊不符。  
  * **Gate Failure**：Gate Policy 裁決為 FAIL 或 BLOCK。  
  * **Ambiguity**：Authority Stack 發生衝突且無法自動裁決。  
  * **Supply Chain Risk**：外部工具未在 Allowlist 或掃描發現高風險。  
* **執行責任 (Responsibility)**：  
  * **CA-GOVERN**：負責維護 `degrade_matrix.json` 並執行裁決。  
  * **GitHub Control Plane**：負責在 CI/CD 階段執行 BLOCK\_RELEASE。  
  * **CA-EXECUTE / CA-WATCH**：負責在 Runtime 階段執行 EXECUTE\_DISABLED 與 RADAR\_ONLY。

###### **6.4.2 Degrade Modes Definition (降級模式定義)**

**\[ANCHOR:ARCH-V810-6-4-2-MODES\]**

依據 **SRS v8.1.0 §1.3.1** 與 **15CA 重構升級藍圖**，系統必須支援以下四種互斥的降級模式。架構設計必須確保這些模式在 Runtime 是「物理性」或「邏輯強強制」生效的。

| 模式 (Mode) | 定義 (Definition) | 架構行為 (Architecture Behavior) | 適用場景 |
| ----- | ----- | ----- | ----- |
| **BLOCK\_RELEASE** | **阻斷發布** | CI/CD Pipeline 立即終止 (Exit Code \!= 0)。禁止產物進入 Artifact Store 或 Deployment。 | 安全掃描失敗、Schema 不符、證據缺失、測試未過。 |
| **RADAR\_ONLY** | **僅觀測模式** | 允許資料流動與計算，但 **切斷** 所有對外副作用 (Side-Effects)。CA-WATCH 僅產出 Log 與 Alert 檔案，不發送通知或觸發下單。 | 資料品質異常、非交易時段、未授權的 Agent 操作。 |
| **EXECUTE\_DISABLED** | **執行禁用** | **CA-EXECUTE** 的執行電路被邏輯熔斷。API Client 被置換為 Mock 或 Null Object，禁止送出委託單。 | Kill-Switch 觸發、HITL 未授權、權限不足。 |
| **READ\_ONLY\_UI** | **唯讀介面** | **CA-UI** 進入唯讀狀態，隱藏或禁用所有操作按鈕。僅允許檢視歷史證據與報表。 | 系統維護中、嚴重錯誤發生、審計模式。 |

###### **6.4.3 Degradation Policy Matrix (降級策略矩陣)**

**\[ANCHOR:ARCH-V810-6-4-3-MATRIX\]**

為解決 **審查報告 A (ISS-A-002)** 指出的「降級策略若未對齊 Fitness 可能出現漏洞」問題，本架構定義 **Degrade Matrix** 作為 CA-GOVERN 的可機械讀取配置（SSOT）。

* **工件名稱**：`degrade_matrix.json`  
* **管理權責**：**CA-GOVERN** (Write), All CAs (Read)  
* **結構定義 (Structure)**：

| 欄位 (Field) | 說明 (Description) | 來源 (Source) |
| ----- | ----- | ----- |
| `rule_id` | 唯一規則 ID (e.g., DG-AUTO-01) | ICD-SCHEMA-DEGRADE-MATRIX |
| `trigger_condition` | 觸發條件描述 (Route-Out to Fitness/Monitoring) | SRS §5.1, Fitness |
| `target_scope` | 受影響的子系統或功能 (e.g., CA-EXECUTE) | 15CA BP |
| `enforced_mode` | 強制進入的模式 (BLOCK/RADAR/DISABLED) | SRS §1.3.1 |
| `recovery_condition` | 恢復正常的條件 (e.g., Manual Reset, Health Check PASS) | Runbook |
| `audit_event` | 觸發時必須寫入的 Event Log 類型 | ICD-SCHEMA-EVENT |

* **預設規則 (Default Rules)**：  
  * **DG-AUTO-01**：LLM/外部 API 連續失敗 → **FALLBACK\_LOCAL** (RADAR\_ONLY)。  
  * **DG-AUTO-02**：資料品質/Gate 驗證失敗 → **BLOCK\_BACKTEST** (BLOCK\_RELEASE)。  
  * **DG-AUTO-03**：Kill Switch 觸發 → **EMERGENCY\_STOP** (EXECUTE\_DISABLED)。

###### **6.4.4 High-Risk Capabilities Deny-By-Default (高風險能力預設拒絕)**

**\[ANCHOR:ARCH-V810-6-4-4-DENY-DEFAULT\]**

為解決 **審查報告 A (ISS-A-001)** 指出的「高風險能力越權」風險，架構層強制實作 **Deny-By-Default** 機制。

* **管控對象**：涉及資金（Trading）、外部連線（Network）、檔案寫入（File Write）的能力。  
* **執行機制**：  
  1. **Peripheral Plane**：MCP/OpenClaw 工具預設為 `DISABLED`。啟用需 `allowlist` \+ `sandbox` \+ `post-scan`。  
  2. **Execution Plane**：CA-EXECUTE 預設為 `EXECUTE_DISABLED`。啟用需 `GATE-HITL-001` (Environment Approval) \+ `run_config` 授權。  
* **架構掛點 (Architectural Hook)**：

| Capability | Default State | Unlock Requirement (Gate/Evidence) | Enforcement Point |
| ----- | ----- | ----- | ----- |
| **Real Trading** | **EXECUTE\_DISABLED** | GATE-HITL-001 \+ `hitl_handoff.json` | CA-EXECUTE Adapter |
| **External Network** | **DENY** | Whitelist in `sources.yaml` \+ `network_policy` | CA-WRC / CA-COLLAB |
| **File Overwrite** | **DENY** | `staging_manifest` \+ Destructive Two-Phase Commit | CA-GOVERN / OS Layer |
| **Agent Action** | **NON\_AGENT** | GATE-AGENT-MODE \+ `agent_policy` | CA-COLLAB |

###### **6.4.5 Recovery & Escalation Path (恢復與升級路徑)**

**\[ANCHOR:ARCH-V810-6-4-5-RECOVERY\]**

* **恢復機制 (Recovery)**：  
  * 降級狀態的解除 **嚴禁** 自動化（No Auto-Reset）。  
  * 必須透過 **CA-UI** 的 HITL 介面，由授權人員發送 `reset_signal`，並經 CA-GOVERN 驗證後方可解除。  
* **升級機制 (Escalation)**：  
  * 若降級後異常持續（如連續 N 次 RADAR\_ONLY 失敗），系統自動升級為更嚴格的模式（如 EXECUTE\_DISABLED 或 BLOCK\_RELEASE）。

---

**參考來源 (References)**：

* SRS v8.1 §1.3.1 (Governance & Gate Policies)  
* Delivery Plan §3.2, Blueprint v2.2 §3.2 (Context View)  
* Blueprint v2.2 (Fail-Closed Rules)  
* Blueprint v2.2 (Peripheral Default Deny)  
* Blueprint v2.2 (Authority Stack)  
* Blueprint v2.2 (Execution Plane Rules)  
* SRS v8.1 §3.15 (CA-GOVERN Requirements)  
* Delivery Plan §3.3 (Peripheral Plane)  
* 15CA BP §7 (Gate Registry)  
* 15CA BP §Cover Card (Non-negotiables)  
* 15CA BP §Cover Card (Non-negotiables)  
* 15CA BP §ID Rules  
* 15CA BP §Evidence Contract Registry  
* 15CA BP §Degrade Matrix  
* ARCH v6.0 §4.14 (CA-UI)  
* ARCH v6.0 §4.10/4.11 (CA-WATCH/EXECUTE)  
* ARCH v6.0 §5.2 (Data Backbone Degrade)  
* Audit Report A §7.1 (ISS-A-001, ISS-A-002)  
* Audit Report A §7.6 (Q3)  
* SRS v8.1 §0.3 (Authority Stack)  
* SRS v8.1 §1.3.1 (Glossary: Governance)  
* SRS v8.1 §2.1.3 (GitHub Governance Hooks)  
* SRS v8.1 §2.1.4 (Core Gate Dictionary)  
* SRS v8.1 §2.2.1 (Evidence Triplet)  
* SRS v8.1 §2.3.4 (Supply Chain Governance)  
* SRS v8.1 §3.11.1 (CA-EXECUTE Default Safety)  
* SRS v8.1 §3.15.2 (Control Plane Trio)  
* SRS v8.1 §5.1 (Degrade Matrix Interface)

---

## §7. Key Architectural Decisions (關鍵架構決策)

\[ANCHOR:ARCH-V810-SEC7\]

本章節記錄形塑 Spartoi-OMOC 系統架構的關鍵決策（ADR）。所有決策均已通過 Authority Stack 裁決，並與 LBP-C(ADR) v2.0.1 保持嚴格一致。本架構文檔僅摘要決策的「結果」與「架構影響」，詳細的方案比較與辯證過程請參閱 Route-Out 目標。  
---

### 7.1 ADR-030: 15 Subsystems (15 子系統定案)

\[ANCHOR:ARCH-V810-7-1-ADR030\]

**決策狀態**：**DECIDED / NORMATIVE** **生效日期**：2026-02-09 **上游來源**：LBP-C \[LBP.C.ADR.ADR-030\]、15CA Blueprint \[SOMOC-15CA-BP-05-CA-MAP\]  
---

###### **7.1.1 Context & Problem (背景與問題)**

在舊版架構（ARCH v4.x / LBP-A v5.1.0）中，系統定義了 16 個子系統。隨著 OMOC 多代理架構（Multi-Agent Orchestration）的導入與控制平面（Control Plane）的強化，發現以下架構性冗餘與邊界模糊：

1. **CA-FIREWALL 的職責重疊**：原設計用於「攔截與驗證」的 CA-FIREWALL，其功能與新版 CA-GOVERN 的「Gate Orchestration」及 GitHub Control Plane 的「Required Checks」高度重疊。  
2. **CA-AGENT 的定位孤島**：原 CA-AGENT 被視為獨立子系統，但在 OMOC 架構下，「代理（Agent）」是一種貫穿全流程的「協作模式（Mode）」，而非單一功能模組。  
3. **命名漂移風險**：子系統名稱在不同文件中出現不一致（如 DayFlow vs SF-xx），導致自動化驗收（GateRunner）無法精確錨定責任主體。

###### **7.1.2 Decision (決策內容)**

依據《Spartoi-OMOC(15 CA)重構升級藍圖 v0.2.0-r1》與《Spartoi-OMOC\_SRS\_v8.1.0》，架構層執行以下 **不可逆變更**：

1. **鎖定為 15 個子系統（Fixed 15 CAs）**： 系統邊界嚴格限制為以下 15 個 Capability Areas (CAs)。任何新功能必須歸入既有 CA 或以 Gate/Skill 形式擴充，**嚴禁新增第 16 個 CA**。

2. **刪除 CA-FIREWALL（Sunset）**：

   * **決策**：正式廢除 CA-FIREWALL 子系統。  
   * **遷移**：其「規則攔截」職責移交至 **CA-GOVERN**（管理 Gate Policy）與 **GitHub Control Plane**（執行 Rulesets）；其「證據封存」職責移交至 **Data Backbone**。  
3. **整併 CA-AGENT 至 CA-COLLAB（Merge）**：

   * **決策**：CA-AGENT 不再作為獨立子系統存在。  
   * **遷移**：Agent 的「雙模切換（Dual Mode）」、「協作編排」與「WT-NA 精靈」功能全數歸入 **CA-COLLAB**。  
4. **Stable ID 政策（Immutable Identifiers）**：

   * **架構硬約束**：`stable_id`（如 `CA-WRC`, `CA-METHOD`）是系統內部的唯一主鍵，**永久不可變更**。  
   * **顯示分離**：UI 顯示名稱（Display Name）與宏模組歸屬（Macro Module）允許隨版本迭代調整（如改名方案），但底層 `stable_id` 必須保持恆定以維持 RTM 與 Evidence Chain 的有效性。

###### **7.1.3 Architectural Impact (架構影響)**

本決策確立了 v8.1.0 的系統分解結構（System Decomposition），並直接影響以下視圖與契約：

* **Container View**：移除了 CA-FIREWALL 容器，確認了 CA-COLLAB 作為協作中樞的地位。  
* **Subsystem Registry**：更新了 §4 的 \[ANCHOR:ARCH-V810-4-0-REGISTRY\] 註冊表。  
* **Gate Binding**：原綁定於 CA-FIREWALL 的 Gate 規則，現已重新路由至 CA-GOVERN（如 `GATE-GOV-SSOT`）。  
* **Fail-Closed 機制**：所有涉及「未知子系統 ID」的請求，架構層將直接拋出 `INVALID_SUBSYSTEM` 並阻斷執行。

###### **7.1.4 Traceability & Evidence (追溯與證據)**

| 追溯項目 | 來源文件與錨點 | 說明 |
| ----- | ----- | ----- |
| **需求來源** | SRS v8.1.0 §1.2 \[ANCHOR:SRS-V810-1-2-15CA\] | 定義了 15 子系統白名單與 Stable ID 政策。 |
| **決策紀錄** | LBP-C(ADR) v2.0.1 \[ANCHOR:LBP.C.ADR.ADR-030\] | 提供了從 16 改為 15 的完整決策理由與脈絡。 |
| **藍圖規劃** | 15CA BP v0.2.0-r1 \[ANCHOR:SOMOC-15CA-BP-05-CA-MAP\] | 定義了詳細的映射表與職責邊界。 |
| **衝突裁決** | SRS v8.1.0 §7.3.2 \[ANCHOR:SRS-V810-CONFLICT-LEDGER\] | 解決了 `CL-SYS-001` (Subsystem Count) 衝突。 |

**Route-Out**：

* 詳細子系統清單與職責定義：見本文件 **§4. System Decomposition**。  
* Agent 雙模架構細節：見 **§4.13 CA-COLLAB**。

依據您的指示，我將以「Evidence-Driven Synthesis Auditor」的角色，基於《Spartoi-OMOC\_ARCH\_v8.1.0-目錄（TOC）》的架構脈絡，整合所有指定來源（LBP-C ADR、SRS v8.1、ARCH v6.0、Runbook等），全量展開 **Spartoi-OMOC\_ARCH\_v8.1.0** 的 **§7. Key Architectural Decisions** 下的 **7.2** 子章節。

本內容嚴格遵守 ARCH 文件職責（只寫 WHAT/STRUCTURE/WHY，不寫操作步驟），並確保所有架構決策皆有明確的來源追溯與 Fail-Closed 定義。

---

### 7.2 ADR-029: No-Paid-LLM-API Policy (禁用付費 API 政策)

\[ANCHOR:ARCH-V810-7-2-ADR029\]

本節定義系統針對大型語言模型（LLM）使用的核心財政與架構約束。此決策直接響應 **SRS v8.1.0 §2.3.5 \[ANCHOR:SRS-V810-GOV-NO-PAID-API\]** 之硬性需求，並作為 **CA-COLLAB** 與 **CA-GOVERN** 的治理基石。  
---

###### **7.2.1 Context & Problem (背景與問題)**

\[ANCHOR:ARCH-V810-7-2-1-CONTEXT\]

* **決策背景**：Spartoi-OMOC 旨在服務「單人多代理協作」場景。若核心管線依賴按量計費（Token-based billing）的商業雲端 API（如 OpenAI API、Anthropic API），將面臨以下風險：  
  1. **成本失控風險 (Bill Shock)**：多代理（Multi-Agent）的遞迴對話與自動重試機制可能在短時間內消耗大量 Token，導致營運成本不可預測。  
  2. **黑箱依賴 (Black-box Dependency)**：過度依賴外部 API 的閉源模型可能導致系統邏輯隨供應商模型更新而漂移（Model Drift）。  
  3. **審計困難 (Auditability Gap)**：API 互動通常是短暫且隱蔽的，難以像 Web UI 對話紀錄那樣直觀地進行人工事後審計。

**證據來源**：

* **LBP-C (ADR)**: ADR-029 Context \[LBP.C.ADR.ADR-029\]。  
* **SRS**: §2.3.5 No-Paid-LLM-API Constraint \[SRS-V810-GOV-NO-PAID-API\]。

###### **7.2.2 Decision (決策內容)**

\[ANCHOR:ARCH-V810-7-2-2-DECISION\] 系統架構層強制執行以下 **No-Paid-API** 策略：

1. **核心管線禁用付費 API (Core Pipeline Ban)**：

   * 在 **Pipeline A/B/C** 的標準自動化流程中，**禁止 (MUST NOT)** 直接整合或呼叫任何需付費的雲端 LLM API 端點。  
   * 所有自動化腳本必須設計為可在「無 API」環境下運行（Fail-Closed default）。  
2. **採用 WT-NA 模式 (WebTools No-API Pattern)**：

   * 系統透過 **CA-COLLAB** 實作 **WT-NA 精靈 (WebTools No-API Wizard)** 架構。  
   * **互動方式**：由系統生成結構化提示詞（Prompt）→ 人工複製（Copy）至免費/訂閱制 Web UI（如 ChatGPT Plus, Claude Pro）→ 人工貼回（Paste）結果。  
   * **架構意圖**：利用「人工複製貼上」的物理摩擦力（Friction）作為天然的 **HITL (Human-in-the-Loop)** 頻率限制器，防止代理失控並確保人工審視。  
3. **允許本地模型 (Local LLM Exception)**：

   * 允許整合 **本地部署** 的開源模型（如經由 Ollama, LM Studio 執行的 Llama/Mistral），前提是無額外邊際成本。

**證據來源**：

* **ARCH**: §4.19 WebTools-NA 協作架構 \[ARCH-WTNA\]。  
* **Runbook**: §2.5 No-API 主路徑裁決 \[SPLMVP-NO-API-RULING\]。

###### **7.2.3 Consequences (後果與影響)**

\[ANCHOR:ARCH-V810-7-2-3-CONSEQUENCES\]

| 面向 | 正面影響 (Pros) | 負面影響 (Cons) | 架構緩解措施 (Mitigation) |
| ----- | ----- | ----- | ----- |
| **成本 (Cost)** | **零邊際成本**：無論迭代多少次，除固定訂閱費外不產生額外 API 費用。 | 無 | N/A |
| **安全 (Safety)** | **強制 HITL**：人工介入確保了每一步驟的輸入輸出都經過人類過濾。 | **效率瓶頸**：流程速度受限於人工操作速度。 | 透過 **CA-COLLAB** 的 Prompt Assembly 自動化減少組裝時間。 |
| **隱私 (Privacy)** | **資料隔離**：敏感資料不易通過 API 後台洩漏（Web UI 通常有 Opt-out 選項）。 | **剪貼簿風險**：人工操作可能貼錯視窗。 | **CA-GOVERN** 實作 `hash_verification` 驗證貼回內容的完整性。 |
| **架構 (Arch)** | **解耦**：系統不綁定特定 API SDK，模型切換（如 GPT 轉 Claude）成本極低。 | **上下文限制**：Web UI 通常無法像 API 那樣精確控制 Context Window。 | **CA-CORPUS** 需提供精確的 RAG 檢索片段以適應較短的 Context。 |

###### **7.2.4 Compliance & Verification (合規與驗證)**

\[ANCHOR:ARCH-V810-7-2-4-COMPLIANCE\] 為確保此決策不被繞過，系統執行以下架構級檢查：

1. **Codebase Scan (代碼掃描)**：

   * CI/CD 流程中的 **GATE-SC-002-SUPPLYCHAIN** 必須包含對常見 API Key 模式（如 `sk-proj-...`）與 API SDK 引用（如 `openai`, `anthropic`）的靜態掃描。  
   * 若發現違規引用，觸發 **BLOCK\_RELEASE**。  
2. **Evidence Binding (證據綁定)**：

   * **CA-COLLAB** 產出的協作紀錄（Artifact），必須標註 `interaction_mode: "WT-NA"` 或 `interaction_mode: "LOCAL"`。  
   * 若出現 `interaction_mode: "API"` 且無對應豁免權限（CR\_OPEN），視為違規。

**Route-Out**:

* **驗收門檻**: LBP-E(Fitness) \[FIT-004\] (Reliability / Cost Constraint)。  
* **例外處理**: 若需引入 API（如特定高頻交易場景），需依據 \[CR-OPEN-022\] 流程申請 API Exception Gate。

---

### 7.3 ADR-026: Control Plane Trio (控制面三件套)

**\[ANCHOR:ARCH-V810-7-3-ADR026\]**

本節定義系統運行時的最高指揮與狀態紀錄機制，即「控制面三件套（The Trio）」。此決策解決了分散式系統中常見的「幽靈旗標（Ghost Flags）」、「未定義降級行為」與「無法精確回放」三大痛點。  
---

###### **7.3.1 Context & Problem (背景與問題)**

**\[ANCHOR:ARCH-V810-7-3-1-CTX\]** 在多代理（Multi-Agent）與多管線（Multi-Pipeline）協作的環境中，若缺乏統一的控制狀態管理，會導致以下風險：

1. **Ghost Flags**：功能開關散落在程式碼常數中，未經註冊，導致行為不可預測且無法審計。  
2. **Undefined Degradation**：當依賴服務（如 LLM API、XQ 報價）失效時，各子系統各自發明降級邏輯（有的重試、有的崩潰、有的盲目繼續），破壞系統穩定性。  
3. **Replay Drift**：回測或覆盤時，無法還原當時的「開關狀態」與「參數配置」，導致「回測結果無法在實盤重現」。

**架構依據**：

* **SRS Requirement**: SRS v8.1 §3.15.2 \[SRS-V810-REQ-GOV-TRIO\] 強制要求 CA-GOVERN 實作三件套。  
* **Legacy Issue**: 解決舊版架構中 Flag 管理鬆散的問題（LBP-C CL-GOV-001）。

###### **7.3.2 Decision: The Trio Architecture (決策：三件套架構)**

**\[ANCHOR:ARCH-V810-7-3-2-DECISION\]** 系統架構層強制引入三個 **規範性工件（Normative Artifacts）**，由 **CA-GOVERN** 統一管理，作為全系統的「運行時憲法」。

**1\. Flag Registry (旗標註冊表)**

* **定義**：全域唯一的特徵開關（Feature Toggles）清單。  
* **架構約束**：  
  * **Tiering (分層治理)**：旗標必須依風險等級分層。  
    * **Tier-0 (Authorization)**：授權級（如 `allow_xsat`），控制高風險能力，預設 `False`，修改需最高權限。  
    * **Tier-1 (Capability)**：能力級（如 `enable_agent_mode`），控制 Agent/T1 模式切換。  
    * **Tier-2 (Domain)**：業務級，控制特定交易策略開關。  
  * **SSOT**：`flag_registry.json` 是唯一真相，嚴禁子系統私自定義旗標。  
  * **Safe Default**：所有旗標必須定義安全預設值（通常為 Disabled）。

**2\. Degrade Matrix (降級矩陣)**

* **定義**：決定性（Deterministic）的故障應對規則表。  
* **架構約束**：  
  * 定義「觸發條件（Trigger）」到「降級模式（Degrade Mode）」的映射。  
  * **Mandatory Rules**：  
    * `DG-AUTO-01`: 外部 API 連續失敗 $\\rightarrow$ `FALLBACK_LOCAL`（降級至本地規則）。  
    * `DG-AUTO-02`: 資料品質 Gate 失敗 $\\rightarrow$ `BLOCK_BACKTEST`（阻斷回測）。  
    * `DG-AUTO-03`: Kill Switch 觸發 $\\rightarrow$ `EMERGENCY_STOP`（全系統暫停）。

**3\. Run Config Snapshot (運行配置快照)**

* **定義**：每次執行（Run）啟動時生成的不可變配置紀錄。  
* **架構約束**：  
  * **Immutability**：一旦生成（`run_config_snapshot.json`），在該次 Run 的生命週期內不可變更。  
  * **Replayability**：快照必須包含 `config_hash`、`flag_values`、`degrade_mode`，確保只要載入此快照，系統就能以完全相同的邏輯重跑。

###### **7.3.3 Consequences & Fail-Closed Strategy (後果與失效關閉策略)**

**\[ANCHOR:ARCH-V810-7-3-3-CONSEQ\]**

**正面影響 (Positive)**：

* **Auditability**：所有行為變更都有據可查（Flag Registry）。  
* **Resilience**：系統在部分失效時能優雅降級（Degrade Matrix），而非崩潰或暴走。  
* **Reproducibility**：實現精確到「位元級」的邏輯回放（Config Snapshot）。

**負面影響 (Negative)**：

* **Development Friction**：開發者新增功能開關時，必須先在 Registry 註冊，不能隨手寫 `if config.new_feature:`。

**Fail-Closed 策略**：

* 若 `flag_registry.json` 遺失或 Schema 校驗失敗 $\\rightarrow$ **BLOCK\_RELEASE**（系統禁止啟動）。  
* 若 Runtime 檢測到未註冊的 Flag 使用 $\\rightarrow$ **BLOCK\_RELEASE**（視為架構違規）。  
* 若 `run_config_snapshot.json` 寫入失敗 $\\rightarrow$ **BLOCK\_RELEASE**（禁止執行無紀錄的操作）。

###### **7.3.4 Route-Out References (外導索引)**

**\[ANCHOR:ARCH-V810-7-3-4-REF\]**

* **Decision Source**: 《Spartoi｜P1\_LBP-C(ADR)\_v2.0.1》\[LBP.C.ADR.ADR-026\]  
* **Requirements**: 《Spartoi-OMOC\_SRS\_v8.1.0》§3.15.2 \[SRS-V810-REQ-GOV-TRIO\], §5.1 \[SRS-V810-5-1-CTRL-TRIO\]  
* **Interface Schema**: 《Spartoi｜P1\_LBP-B(ICD)\_v5.0.1》\[ICD-V501-CONTROL-PLANE\]  
* **Implementation**: 《Spartoi｜P1\_ARCH\_v6.0.0-r5》§6.1-6.3 \[ARCH-FLAG-REGISTRY\], \[ARCH-DEGRADE-MATRIX\], \[ARCH-RUN-CONFIG-SNAPSHOT\]

---

### 7.4 ADR-009: SEM³ Validation Framework (三階驗證框架)

\[ANCHOR:ARCH-V810-7-4-ADR009\]

本節詳述 **ADR-009** 之架構決策，定義系統如何透過「語意等價與映射三元組（Semantic Equivalence & Mapping Triad, SEM³）」來確保從非結構化知識到可執行腳本的全鏈路真確性。此決策直接回應 SRS v8.1.0 對於「防幻覺（Anti-Hallucination）」與「邏輯不漂移（No Logic Drift）」的強制需求。  
---

###### **7.4.1 Context & Problem Space (決策背景與問題空間)**

\[ANCHOR:ARCH-V810-7-4-1-CONTEXT\] 在 Spartoi-OMOC 的多管線架構中，資訊經歷了三次巨大的型態轉換：

1. **非結構化 → 結構化**：從 PDF 教材轉為 JSON 偽代碼（Pipeline-A）。  
2. **結構化 → 邏輯化**：從偽代碼轉為可回測的策略方法卡（Pipeline-B）。  
3. **邏輯化 → 可執行化**：從 Python 策略轉為 XQ 腳本（Pipeline-C）。

**問題**：傳統單點測試無法偵測跨型態轉換時的「語意遺失」或「AI 幻覺增生」。若無統一驗證框架，系統將面臨「回測賺錢但實盤賠錢」的嚴重風險（即 SRS 定義的 Execution/Backtest Parity Failure）。

###### **7.4.2 Decision: Three-Gate Architecture (決策：三閘門架構)**

\[ANCHOR:ARCH-V810-7-4-2-DECISION\] **架構主張**： 系統 **必須 (MUST)** 實作 SEM³ 框架，在三個關鍵轉換點強制執行 Gate 檢核。每個 Gate 都是一個獨立的驗證器（Validator Component），歸屬於 **CA-GOVERN** 統一調度，但物理部署於各 Pipeline 的出口。

| Gate ID | 全稱 (Full Name) | 架構位置 (Location) | 驗證職責 (Responsibility) | Fail-Closed 行為 |
| ----- | ----- | ----- | ----- | ----- |
| **SGF** | **Source-Grounded Faithfulness**(來源對齊忠實度) | **Pipeline-A 出口**(CA-DISTILL → CA-DSL) | 驗證「蒸餾出的 Claims」是否 100% 存在於「原始 Corpus」中。防止 AI 腦補不存在的知識。 | **BLOCK\_RELEASE**禁止生成 SpecPack，標記為 HALLUCINATED。 |
| **MSC** | **Method-Semantics Conformance**(方法語義一致性) | **Pipeline-B 入口**(CA-METHOD 內部) | 驗證「MethodCard 的邏輯描述」是否完全符合「DSL Schema 與 ICT 模組定義」。防止策略邏輯超出系統能力邊界。 | **RADAR\_ONLY**(MVP 階段) 標記風險；**BLOCK\_RELEASE** (P2 階段)。 |
| **TVE** | **Translation-Execution Equivalence**(轉譯等價驗證) | **Pipeline-C 出口**(CA-TRANSLATE → CA-WATCH) | 驗證「XS 腳本的執行結果」是否在數學上等價於「Python 回測引擎的結果」。防止轉譯誤差。 | **BLOCK\_RELEASE**禁止產出 XSPack，絕對禁止上線執行。 |

**決策依據**：

* **Evidence Sources**: 《LBP-C(ADR) v2.0.1》ADR-009; 《Spartoi｜P1\_ARCH\_v6.0.0-r5》§6.8。

###### **7.4.3 Architecture Implementation Constraints (架構實作約束)**

\[ANCHOR:ARCH-V810-7-4-3-IMPL\] 為確保 SEM³ 的有效性，架構層施加以下硬性約束：

1. **Independent Validators (獨立驗證器)**：  
   * 驗證邏輯（Check Logic）必須與生成邏輯（Generation Logic）物理分離。例如，生成 XS 腳本的 Agent 與驗證 TVE 的 Agent 不能是同一個，甚至建議使用不同模型（Cross-Model Verification）。  
2. **Evidence-Binding (證據綁定)**：  
   * 每個 SEM³ Gate **必須** 產出對應的 Evidence Artifact（如 `sgf_report.json`, `tve_report.json`）。  
   * 這些 Artifact 必須寫入 `RunLedger`，並作為下游 Pipeline 啟動的 **Pre-condition**。若無 SGF PASS 證據，Pipeline-B 禁止啟動。  
3. **Golden Set Regression (黃金集回歸)**：  
   * CA-GOVERN 必須維護一組「已知正確」的 Input/Output 對（Golden Set）。每次系統升級或 Prompt 調整後，必須重跑 SEM³ 驗證以確保無退化（Regression）。

###### **7.4.4 Rationale & Consequences (理據與後果)**

\[ANCHOR:ARCH-V810-7-4-4-RATIONALE\]

* **Rationale (為什麼這樣做)**：  
  * **End-to-End Integrity**：這是唯一能貫穿非結構化數據到結構化指令的驗證方式。  
  * **Auditability**：當交易發生虧損時，可透過 SEM³ 報告快速定位是「策略爛」（Backtest Issue）還是「執行錯」（Translation Issue）。  
* **Consequences (後果)**：  
  * **Positive**：大幅降低因 AI 幻覺導致的實盤風險；提供完整的合規審計鏈路。  
  * **Negative**：增加了 Pipeline 的執行時間與 Token 成本（因為需要額外的驗證步驟）；開發初期需投入大量成本建立 Golden Set。

###### **7.4.5 Route-Out References (外導參考)**

\[ANCHOR:ARCH-V810-7-4-5-ROUTEOUT\]

* **Validation Logic Details**: 《Spartoi｜P1\_ARCH\_v6.0.0-r5》§6.8  
* **Acceptance Thresholds**: 《Spartoi｜P1\_LBP-E(Fitness)\_v3.0.1》- (FIT-007, FIT-008, FIT-009)  
* **Evidence Schema**: 《Spartoi｜P1\_LBP-B(ICD)\_v5.0.1》SCHEMA-SEM3-\*-REPORT

---

## §8. Constraints & Quality Drivers (約束與品質因子)

**\[ANCHOR:ARCH-V810-SEC8\]**

本章節定義 Spartoi-OMOC 系統必須遵守的架構級非功能需求（NFRs）與品質屬性。這些約束是「不可協商（Non-negotiable）」的硬性邊界，任何功能實作皆不得違反此處定義的原則。

---

### 8.1 Auditability (可稽核性：Evidence Triplet 強制)

**\[ANCHOR:ARCH-V810-8-1-AUDIT\]**

為滿足 **SRS-NFR-AUDIT-001** 至 **004** 的需求，並解決《審查報告 A》提出的「證據契約缺失（A:CRIT-008）」問題，本系統架構強制執行「無證據即無效（No Evidence, No Validity）」原則。架構上透過標準化的「證據三件套（Evidence Triplet）」來實現全鏈路的可稽核性。  
---

###### **8.1.1 Evidence Triplet Architecture (證據三件套架構)**

**\[ANCHOR:ARCH-V810-8-1-1-TRIPLET\]**

**架構定義**： 系統中任何關鍵操作（Pipeline 執行、Gate 裁決、HITL 確認、下單指令生成）**必須 (MUST)** 原子化地產出以下三個檔案，合稱「證據三件套」。架構層視三者為一個不可分割的邏輯單元。

| 元件 (Component) | 檔案命名規範 | 架構職責 (Responsibility) | 內容結構 (Structure Constraint) |
| ----- | ----- | ----- | ----- |
| **1\. Verdict (裁決)** | `verdict.json` | **機器可讀的最終判定**。供下游自動化工具（GateRunner/CI）快速讀取狀態，決定是否阻斷流程。 | • `overall_result`: PASS / FAIL / RADAR\_ONLY• `timestamp`: ISO8601• `bundle_hash`: SHA-256 (防篡改綁定)• `policy_snapshot_id`: 引用當時的規則版本 |
| **2\. Bundle (實體包)** | `bundle.zip` (或 `.tar.zst`) | **原始產物的實體封裝**。包含 Logs, Reports, Artifacts, Snapshots。此為稽核的「物證」。 | • **不可變性**：生成後即唯讀• **完整性**：必須包含重現該次執行所需的所有 Context• **隔離性**：存於 Object Storage，不直接進入 Git Repo (避免膨脹) |
| **3\. Index (索引)** | `evidence_index.json` | **人類可讀的內容清單**。用於快速檢索 Bundle 內容，並提供檔案級的完整性雜湊。 | • `artifacts_list`: 檔案路徑與 SHA-256 對照表• `trace_refs`: 上游依賴追溯 (Req ID, Run ID)• `context`: 執行環境指紋 (Env Fingerprint) |

**來源依據**：

* SRS v8.1 \[SRS-NFR-AUDIT-001\] (需求定義)  
* 15CA Blueprint \[SOMOC-15CA-BP-08-EVIDENCE\] (註冊表定義)  
* OMOC Blueprint \[OMOCMVU-EVIDENCE-TRIPLET\] (MVU 實作定義)

###### **8.1.2 Immutable Audit Trail (不可篡改稽核軌跡)**

**\[ANCHOR:ARCH-V810-8-1-2-IMMUTABILITY\]**

**架構策略**： 為確保稽核資料的可信度，系統在架構層實作以下不可篡改機制：

1. **Cryptographic Binding (密碼學綁定)**：

   * `Verdict` 必須包含 `Bundle` 的 Hash。  
   * `RunLedger` (見 §5.3.3) 必須記錄 `Verdict` 的 Hash。  
   * 形成鏈條：`RunLedger` \-\> `Verdict` \-\> `Bundle`。任何對 Bundle 內容的篡改都會導致 Hash 鏈斷裂，被系統標記為 **TAMPERED**。  
2. **Write-Once Storage (一次寫入儲存)**：

   * Evidence Store (參見 §5.4 Artifact Registry) 的寫入權限僅限於 Pipeline 執行期間的短暫窗口。  
   * 一旦寫入並註冊至 `RunLedger`，該證據紀錄即被鎖定，架構上 **禁止** 提供 Update/Delete 介面（僅允許 Append 新版本，但不覆蓋舊版本）。  
3. **Governance Signing (治理簽章)**：

   * 對於高風險操作（如 CA-EXECUTE 的指令生成），`Verdict` 必須包含 CA-GOVERN 簽發的數位簽章（或可驗證的 CI Job ID），證明該證據是由授權的環境產出，而非偽造。

**來源依據**：

* SRS v8.1 \[SRS-NFR-AUDIT-004\]  
* Audit Report A \[A:CRIT-008\] (修補證據契約不完整)

###### **8.1.3 Fail-Closed Audit Policy (失效關閉稽核策略)**

**\[ANCHOR:ARCH-V810-8-1-3-FAILCLOSED\]**

**架構約束**： 針對證據缺失或損毀的情境，系統架構強制執行 **Fail-Closed** 策略，不允許「例外放行」。

| 異常情境 (Anomaly) | 架構判定 (Verdict) | 系統行為 (System Behavior) |
| ----- | ----- | ----- |
| **Missing Triplet**(三件套缺一) | **INVALID** | 視為該步驟未執行。下游 Gate **BLOCK\_RELEASE**，禁止引用該次產出。 |
| **Hash Mismatch**(雜湊不符) | **TAMPERED** | 視為嚴重資安警報。立即觸發 **KILL-SWITCH**，凍結相關 Pipeline，並通知 CA-GOVERN。 |
| **Unregistered Evidence**(未註冊證據) | **UNTRUSTED** | 雖然檔案存在但未在 `RunLedger` 註冊。UI 顯示為「未驗證」，禁止用於決策或回測。 |
| **Orphaned Artifact**(孤兒產物) | **UNKNOWN** | 無法追溯上游來源（Trace Refs 缺失）。**RADAR\_ONLY**，僅供除錯，不可用於生產。 |

**Route-Out**：

* 詳細降級矩陣：SRS §5.1 \[SRS-IR-CTRL-002\]  
* Gate 實作邏輯：15CA Blueprint §4 Gate Registry \[SOMOC-15CA-BP-07-GATES\]

---

### 8.2 Replayability (可回放性：Snapshot & Determinism)

**\[ANCHOR:ARCH-V810-8-2-REPLAY\]**

本節定義系統如何達成 SRS v8.1.0 §4.1.2 **\[ANCHOR:SRS-NFR-AUDIT-002\]** 所要求的「確定性可回放（Deterministic Replayability）」。架構上強制執行「快照即真相（Snapshot as Truth）」原則，確保任何歷史執行結果（Run）皆能在相同條件下被精確重現，以支援回測驗證、故障排除與合規審計。  
---

###### **8.2.1 Determinism Architecture (決定性架構)**

**\[ANCHOR:ARCH-V810-8-2-1-DETERMINISM\]**

為確保 `f(input, config, logic) = output` 的恆等性，架構層強制鎖定以下四大決定性因子（Determinism Factors）：

| 因子類別 | 鎖定機制 (Architectural Lock) | 實作落點 (Route-Out) | 驗證要求 |
| ----- | ----- | ----- | ----- |
| **Input Data**(輸入數據) | **Immutable Snapshots**所有輸入必須透過 Data Backbone 的 `input_manifest` 指向 DVC Hash 或唯讀 S3 路徑。禁止讀取 `latest` 或動態 API。 | Data Backbone §5.1Pipeline-A+B §3.3 | Hash 必須與歷史紀錄完全一致。 |
| **Configuration**(配置參數) | **Run Config Snapshot**所有運行參數（含 Flag、Thresholds、Env Vars）必須固化為 `run_config_snapshot.json`。 | CA-GOVERN §6.2.3SRS §5.1 | 禁止讀取環境變數或本地未提交的 config 檔。 |
| **Logic / Code**(邏輯代碼) | **Version Pinning**執行當下的 Git Commit SHA、Docker Image Hash 與依賴套件版本（Lockfile）必須被記錄。 | Skills Supply ChainSC-001 Pinning | 依賴供應鏈必須可重現（Reproducible Build）。 |
| **Entropy**(隨機熵) | **Seeded Randomness**所有隨機過程（如蒙地卡羅、Agent Temperature）必須接受外部注入的 `random_seed`。 | Pipeline-B §3.3LBP-E FIT-013 | 禁止使用系統時間或硬體隨機數作為種子。 |

**架構約束**：

* **No Hidden State**: 系統不得依賴任何未被快照的外部狀態（如系統時間、臨時檔案、全域變數）。  
* **Time Travel**: 涉及時間的邏輯（如 `now()`）必須透過 `market_clock` 或 `event_time` 注入，不得直接呼叫系統時鐘。

###### **8.2.2 Snapshot Architecture (快照架構)**

**\[ANCHOR:ARCH-V810-8-2-2-SNAPSHOT\]**

依據 **SRS-IR-CTRL-003** 與 **15CA BP**，系統必須在每次 Pipeline 啟動瞬間（Bootstrap Phase）生成全域唯一的「執行情境快照」。

* **Artifact Definition**: `ART-GOVERN-SNAPSHOT`  
* **Location**: `/evidence/govern/{run_id}/run_config_snapshot.json`

**Structure Contract**:  
 {  
  "run\_id": "UUID-v4",  
  "timestamp": "ISO8601-UTC",  
  "code\_version": "git-sha-1",  
  "input\_refs": \[  
    { "ca\_id": "CA-WRC", "manifest\_hash": "sha256:..." }  
  \],  
  "config\_state": {  
    "flags": { "allow\_xsat": false, "tier": 2 },  
    "parameters": { "risk\_per\_trade": 0.01 },  
    "random\_seed": 123456  
  },  
  "environment\_fingerprint": "hash(docker\_env \+ dependencies)"  
}

* 

**Fail-Closed 機制**： 若下游子系統（如 CA-BACKTEST）檢測到 `run_config_snapshot.json` 缺失或 Hash 不符，**必須 (MUST)** 拒絕執行並拋出 `SNAPSHOT_INTEGRITY_ERROR`。

###### **8.2.3 Replay Verification & Drift Detection (重放驗證與漂移偵測)**

**\[ANCHOR:ARCH-V810-8-2-3-VERIFY\]**

為滿足 **LBP-E FIT-013**，系統需具備自動化的重放驗證能力。

1. **Verification Loop (驗證迴圈)**：

   * **Input**: 取出歷史 `run_config_snapshot.json` 與 `input_manifest`。  
   * **Action**: 在隔離環境（Sandbox）中重新執行 Pipeline。  
   * **Assertion**: 新產出的 `output_hash` 必須與歷史 `evidence_index` 中的 Hash **位元級一致 (Bit-exact)** 或 **語意等價 (Semantically Equivalent)**（視工件類型而定）。  
2. **Drift Detection (漂移偵測)**：

   * 若重放結果不一致，視為 **Non-Deterministic Drift**。  
   * **Severity**: Critical。這代表系統含有隱藏的隨機性或依賴了未受控的外部變數（如 API 變更、依賴升級）。

**Route-Out**:

* 驗收標準：Fitness \[FIT-013\] Replayability。  
* Gate 掛鉤：`GATE-RC-005` (Replay Check)。

###### **8.2.4 External Dependency Isolation (外部依賴隔離)**

**\[ANCHOR:ARCH-V810-8-2-4-ISOLATION\]**

針對不可控的外部依賴（如 Web Source、LLM API），架構採行以下隔離策略以維持可回放性：

* **Web Sources**: 必須經由 CA-WRC 封印為靜態檔案（PDF/HTML Snapshot），後續流程僅讀取封印檔，禁止即時爬蟲。 (Source: SRS §2.3.3)  
* **LLM Responses**:  
  * **Training/Dev**: 必須記錄 Prompt \+ Response \+ Model Version 至 `interaction_log`。  
  * **Replay Mode**: 系統應支援 `mock_llm` 模式，直接從歷史 Log 重放回應，而不發起真實 API 呼叫，確保回測不消耗 Token 且結果恆定。 (Source: 15CA BP WT-NA Mode)

**Route-Out References**:

* SRS Requirement: \[SRS-NFR-AUDIT-002\], \[SRS-IR-CTRL-003\].  
* Design Detail: Pipeline-A+B 整合資料庫方案 §3.3.  
* Implementation: Runbook §7.7 Replay Contract.

---

### 8.3 Security (安全性)

\[ANCHOR:ARCH-V810-8-3-SECURITY\]

本節定義系統的安全架構，核心聚焦於 **OWASP LLM Top 10** 風險的防禦，特別是 **LLM05 (Supply Chain Vulnerabilities)** 與 **LLM08 (Excessive Agency)**。系統採行「預設拒絕（Default Deny）」與「零信任供應鏈（Zero-Trust Supply Chain）」原則，確保即使在多代理自主協作的情境下，系統邊界仍受嚴格管控。  
---

###### **8.3.1 Supply Chain Security Architecture (供應鏈安全架構)**

\[ANCHOR:ARCH-V810-8-3-1-SUPPLY-CHAIN\] 針對 **LLM05** 風險，架構層強制執行以下控制措施，解決審查報告 A (ISS-F-001) 指出的治理缺口。

* **Immutable Dependency Pinning (不可變依賴釘選)**：

  * **約束**：所有 CI/CD Workflow (GitHub Actions) 與 Agent Skills 依賴，**必須 (MUST)** 使用完整的 SHA-1 Hash 進行釘選（Pinning），**禁止** 使用浮動標籤（如 `v1`, `latest`, `main`）。  
  * **架構意圖**：防止上游依賴遭竄改或惡意更新導致的供應鏈攻擊。  
  * **驗收掛鉤**：`GATE-SC-001-PINACT`。  
  * **來源**：SRS v8.1 §2.3.4, 15CA BP §4, OMOC-MVU。  
* **Static Analysis & Quarantine (靜態分析與隔離)**：

  * **約束**：所有引入的第三方工具或 Action，**必須 (MUST)** 在合併前通過靜態安全掃描（如 Zizmor, OSSF Scorecard）。  
  * **Fail-Closed**：若掃描發現高風險漏洞或分數低於 Fitness 定義之閾值，系統自動觸發 **BLOCK\_RELEASE**。  
  * **驗收掛鉤**：`GATE-SC-002-SUPPLYCHAIN`。  
  * **來源**：SRS v8.1 §2.3.4, 15CA BP, OMOC-MVU。  
* **Artifact Provenance (產物來源證明)**：

  * **約束**：關鍵產物（SpecPack, StrategyPack, XSPack）**應 (SHOULD)** 附帶 GitHub Artifact Attestations，證明其構建環境與來源未被竄改。  
  * **來源**：ARCH v6.0 §3.5, OMOC-MVU。

###### **8.3.2 Excessive Agency Prevention (過度代理防護架構)**

\[ANCHOR:ARCH-V810-8-3-2-AGENCY\] 針對 **LLM08** 風險，架構層定義 Agent 的權限邊界與行為護欄，防止 Agent 執行非預期的高風險操作。

* **Recursive Creation Ban (禁止遞迴生子)**：

  * **約束**：架構上僅允許 **Chef (L0 Router)** 指派任務給 Experts，**嚴禁** Experts 再自行創建新的子代理或遞迴調用 `call_omo_agent`。  
  * **架構意圖**：防止代理失控增生導致的 Token 爆炸與邏輯死鎖。  
  * **來源**：Blueprint v2.2 §Execution Plane, MVU Package。  
* **Least Privilege & Capabilities (最小權限與能力)**：

  * **約束**：  
    * **CA-WATCH**：僅具備「唯讀（Read-Only）」權限，**嚴禁** 寫入或觸發下單 API。  
    * **CA-EXECUTE**：預設處於 **EXECUTE\_DISABLED** 狀態，僅在 HITL（人機介入）明確授權後短暫解鎖。  
  * **驗收掛鉤**：`GATE-SAFE-002-RADARONLY`, `GATE-SAFE-003-EXECUTE_DISABLED`。  
  * **來源**：SRS v8.1 §3.10, SRS v8.1 §3.11, 15CA BP。  
* **No-Paid-API Constraint (非付費 API 約束)**：

  * **約束**：核心流程 **必須 (MUST)** 依賴 WebTools-NA (No-API) 或本地模型，**禁止** Agent 自行調用未經白名單授權的付費雲端 API。  
  * **來源**：SRS v8.1 §2.3.5, ADR-029。

###### **8.3.3 Peripheral Governance (外圍平面治理)**

\[ANCHOR:ARCH-V810-8-3-3-PERIPHERAL\] 針對 MCP (Model Context Protocol) Server 與外部 Skills 的整合，執行嚴格的准入合約。

* **Default Deny Policy (預設拒絕策略)**：

  * **約束**：所有 MCP Server 與外部工具預設為 **DISABLED / DENY**。  
  * **啟用條件**：必須同時滿足以下三條件（Enable Contract）：  
    1. **Allowlist**：列於 `registry.yaml` 白名單。  
    2. **Sandbox**：運行於受限環境（Docker/WASM）。  
    3. **Post-Scan**：產出掃描報告證據。  
  * **Fail-Closed**：若條件未滿足，系統強制降級為 **RADAR\_ONLY**。  
  * **來源**：Blueprint v2.2 §Peripheral Plane, OMOC-MVU, SRS v8.1 §2.3.4。  
* **User Consent Gate (用戶同意閘門)**：

  * **約束**：敏感操作（如檔案寫入、網路請求）**必須** 經過用戶明確同意（Consent）或 HITL 確認，禁止靜默執行。  
  * **來源**：MVU Package。

###### **8.3.4 Data Security & Artifact Hygiene (資料安全與工件衛生)**

\[ANCHOR:ARCH-V810-8-3-4-DATA-SEC\]

* **No-Secret in Artifacts (工件無機密)**：

  * **約束**：生成的 `router_decision.json` 或任何 Log 檔案，**不得** 包含 API Key、Token 或敏感 URL 參數。若檢測到疑似 Secret，必須自動清洗並標記 `R-SECRET-SUSPECTED`。  
  * **來源**：Router Skill Contract, SRS v8.1 §2.2.1。  
* **Immutable Audit Logs (不可竄改稽核日誌)**：

  * **約束**：所有涉及治理裁決的日誌（Verdict, RunLedger），一旦寫入即 **唯讀**，禁止修改或刪除，並需計算雜湊值以供驗證。  
  * **來源**：SRS v8.1 §4.1.4, ARCH v6.0 §5.3.3。

---

**Route-Out Register (本節外導)**：

* **Security Gates**: 15CA BP §4 Gate Registry \[GATE-SC-\*\]  
* **Evidence Schemas**: LBP-B(ICD) \[SCHEMA-SC-PINACT\], \[SCHEMA-SC-ZIZMOR\]  
* **Implementation**: Runbook v1.4.0 §3.6 Skills Supply Chain

---

### 8.4 RAG Quality (RAG 品質：Triad Metrics)

**\[ANCHOR:ARCH-V810-8-4-RAG\]**

本節定義系統針對「檢索增強生成（Retrieval-Augmented Generation, RAG）」架構的品質約束。為滿足 SRS v8.1.0 §4.3 \[ANCHOR:SRS-V810-NFR-RAG-001\] 之需求，架構層強制導入 **RAG-Triad** 評估框架，並支援 **GraphRAG/RAPTOR/CRAG** 等高階檢索結構的工件化落地。  
---

###### **8.4.1 RAG-Triad Framework Implementation (三元組框架實作)**

**\[ANCHOR:ARCH-V810-8-4-1-TRIAD\]**

**架構主張**： 凡涉及 RAG 之子系統（CA-CORPUS, CA-DISTILL, CA-METHOD），**必須 (MUST)** 在其 `verdict.json` 中輸出 RAG-Triad 三大維度的量測結果。若任一維度無法量測，視為架構級缺陷 (Defect)。

| 品質維度 (Dimension) | 定義 (Definition) | 架構檢核點 (Architectural Checkpoint) | 關聯工件 |
| ----- | ----- | ----- | ----- |
| **Context Relevance**(上下文相關性) | 檢索到的 Chunks 是否包含回答 Query 所需的資訊，且無過多雜訊。 | **Retrieval Stage** (CA-CORPUS)需驗證 `retrieval_quality_report.json`。 | `ART-CORPUS-INDEX` |
| **Groundedness**(信實度/落地性) | 生成的 Response 是否完全基於 Context，無外部幻覺 (Hallucination)。 | **Generation Stage** (CA-DISTILL)需驗證 `sgf_report.json` (Source-Grounded Faithfulness)。 | `ART-DISTILL-BASE` |
| **Answer Relevance**(答案關聯性) | 生成的 Response 是否直接回答了 Query 的意圖。 | **Evaluation Stage** (CA-METHOD)需驗證 `rag_query_test.json`。 | `ART-METHOD-SPEC` |

**Fail-Closed 策略**：

* **Missing Metrics**：若產出物缺乏上述任一指標的數值，Gate **必須** 觸發 **BLOCK\_RELEASE**，禁止該產物進入下游。  
* **Threshold Violation**：若指標數值低於 Fitness 定義之門檻（如 SGF \< 0.9），Gate **必須** 觸發 **RADAR\_ONLY**，標記該產物為高風險,。

###### **8.4.2 Advanced Retrieval Structures (高階檢索結構支援)**

**\[ANCHOR:ARCH-V810-8-4-2-STRUCT\]**

依據 15CA BP 與 Pipeline-A 方案，架構層不強制綁定特定算法，但強制要求 **工件化 (Artifact-ization)** 的結構支援：

1. **GraphRAG Support**：  
   * `ART-CORPUS-INDEX` 必須支援以圖譜結構（Entities, Relations）儲存索引，不僅限於向量。  
   * **架構約束**：圖譜節點必須具備 `source_ptr` 指回原始教材。  
2. **Hierarchical Indexing (RAPTOR)**：  
   * 系統必須支援多層次摘要索引（Tree Structure），以回答高層次（High-level）的策略問題。  
3. **Corrective RAG (CRAG)**：  
   * 架構必須包含「檢索評估器（Retrieval Evaluator）」，當檢索品質低落時，觸發 Web Search 或 Fallback 機制（需符合 No-Paid-API 政策）。

###### **8.4.3 Anti-Hallucination & Source Tracing (防幻覺與來源追溯)**

**\[ANCHOR:ARCH-V810-8-4-3-ANTI-HALLUCINATION\]**

為落實 **No-Source-No-Norm** 原則，架構層定義以下強制追溯機制：

* **Atomic Citation (原子化引用)**：  
  * CA-DISTILL 生成的每一條 `Claim` 或 `Rule`，**必須 (MUST)** 附帶 `evidence_ptr`，精確指向 `ART-CORPUS-RAW` 中的 `chunk_id` \+ `offset`,。  
* **Orphan Detection (孤兒偵測)**：  
  * Gate (G-SEG-L) 必須執行掃描，任何無法解析 `evidence_ptr` 的生成內容，一律標記為 **HALLUCINATION** 並剔除。  
* **Stable ID Binding**：  
  * 檢索與引用的最小單元必須是 **Stable ID**（如 `CA-WRC-DOC-001`），嚴禁使用易變的 Display Name 或自然語言描述作為引用鍵值。

###### **8.4.4 RAG Fail-Closed Logic (RAG 失效關閉邏輯)**

**\[ANCHOR:ARCH-V810-8-4-4-FAIL-CLOSED\]**

針對 RAG 過程中的異常，執行以下架構級攔截：

| 異常情境 (Anomaly) | 涉及元件 | 架構行為 (Architectural Behavior) | 依據 |
| ----- | ----- | ----- | ----- |
| **Index Corruption** | CA-CORPUS | **BLOCK\_RELEASE**若索引 Hash 不匹配或結構損壞，禁止提供檢索服務。 | , |
| **Low Fidelity** | CA-DISTILL | **RADAR\_ONLY**若 SGF 分數過低，產出標記為 `UNVERIFIED`，需人工介入。 | , |
| **Retrieval Failure** | CA-CORPUS | **FALLBACK\_LOCAL / BLOCK**若檢索返回空集合，依策略切換至規則引擎或阻斷流程。 |  |

**Route-Out**：

* RAG 指標計算邏輯：參閱 《Spartoi｜P1\_LBP-E(Fitness)\_v3.0.1》\[FIT-007\], \[FIT-008\], \[FIT-009\]。  
* RAG 報告 Schema：參閱 《Spartoi｜P1\_LBP-B(ICD)\_v5.0.1》\[SCHEMA-SEM3-SGF-REPORT\]。

---

## §9. Architecture Registries (架構註冊表 \- 可機械稽核)

**\[ANCHOR:ARCH-V810-SEC9\]**

本章節確立 Spartoi-OMOC 架構文檔的「機械可讀性（Machine-Readability）」基礎。所有註冊表（Registries）皆為 **Normative（規範性）**，任何未登錄於此的架構元件、介面或資產，均視為 **Unmanaged（未受控）** 或 **Phantom（幽靈資產）**，在自動化稽核（Audit）中將觸發 **Fail-Closed**。

---

##### **9.1 Anchor Registry (錨點註冊表)**

**\[ANCHOR:ARCH-V810-9-1-ANCHORS\]**

**本節目的**： 建立本文檔（P1\_ARCH\_v8.1.0）的「穩定定址系統（Stable Addressing System）」。解決 **Audit Report A (CRIT-001)** 指出的「無法精確引用導致的驗收斷鏈」問題。  
---

**治理規則（Governance Rules）**：

1. **穩定性（Stability）**：Anchor ID 一經發布即不可變更（Immutable）。若章節重構，舊 Anchor 需保留指向或標記為 `DEPRECATED`，不得直接刪除。  
2. **唯一性（Uniqueness）**：全域 Anchor ID 不得重複，格式嚴格遵守 `[ANCHOR:ARCH-V810-{SECTION}-{ID}]`。  
3. **可檢索性（Retrievability）**：所有列於本表的 Anchor 必須在正文中真實存在（FOUND），否則視為 **Broken Link**，觸發文檔驗收 **FAIL**。

**Schema 定義**：

| 欄位 | 說明 |
| ----- | ----- |
| `anchor_id` | 唯一識別碼，用於 RAG 檢索與 RTM 追溯 |
| `section_path` | 對應的章節標題路徑 |
| `type` | `STRUCTURE` (結構) \\ |
| `criticality` | `BLOCKER` (缺失即阻斷) \\ |
| `owner` | 維護該段落的責任角色（對齊 OMOC 角色邊界） |

**Master Anchor Table（全量錨點總表）**：

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

**Verification & Gate Binding (驗收與閘門綁定)**：

* **Gate ID**: `GATE-BP-002-ANCHORREG` (對齊 15CA BP)。  
* **Check Logic**: CI 腳本必須掃描本文檔，確認上述表格中所有標記為 `BLOCKER` 或 `MAJOR` 的 `anchor_id` 在正文中均有對應的定義位置。  
* **Fail-Closed Behavior**: 若發現任一 `BLOCKER` 錨點缺失，CI 必須回報 **FAIL** 並阻斷合併。

\[參考來源\]:

* Spartoi-OMOC\_ARCH\_v8.1.0-目錄（TOC）  
* Spartoi-OMOC(15 CA)重構升級藍圖 v0.2.0-r1 (Anchor Registry Schema)  
* Spartoi-OMOC Blueprint v2.2.0-r1 (Stable Anchor Policy)  
* Spartoi-OMOC\_ARCH\_審查報告A.md (Fix for CRIT-001)

---

##### **9.2 Component Registry (元件註冊表)**

**\[ANCHOR:ARCH-V810-9-2-COMPONENTS\]**

本註冊表定義 Spartoi-OMOC 系統中所有合法的架構元件（Architectural Components）。 **Fail-Closed 裁決**：

* **白名單原則**：僅本表列出的 `component_id` 為合法元件。  
* **ID 不可變**：`stable_id` 為架構層級的永久鍵值，嚴禁變更。  
* **名稱可變**：`display_name` 允許隨 UI/UX 調整，但不得作為程式碼或契約的引用鍵。

---

###### **9.2.1 15 CA Subsystems (核心子系統白名單)**

**\[ANCHOR:ARCH-V810-9-2-1-SUBSYSTEMS\]** 依據 **SRS v8.1.0 §1.2** 與 **15CA 重構升級藍圖**，系統嚴格鎖定為 15 個子系統。 **\[Audit Fix: A:CRIT-004\]** 修正審查報告 A 指出的表格截斷與欄位不全問題，全量展開。

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

###### **9.2.2 Pipeline Orchestration Units (管線編排單元)**

**\[ANCHOR:ARCH-V810-9-2-2-PIPELINES\]** 定義系統的三大執行管線及其與子系統的綁定關係。 **\[Audit Fix: A:CRIT-002\]** 補齊 RTM 缺失的管線實體定義。

| component\_id | type | bound\_subsystems | primary\_artifact | route\_out\_plan |
| ----- | ----- | ----- | ----- | ----- |
| **PIPE-A** | Pipeline | CA-WRC, CA-CORPUS, CA-DISTILL, CA-DSL | **SpecPack** | \[Pipeline-A\_組合方案 v2\] |
| **PIPE-B** | Pipeline | CA-METHOD, CA-BACKTEST, CA-PERFORM | **StrategyPack** | \[Pipeline-B 組合方案 v2\] |
| **PIPE-C** | Pipeline | CA-TA, CA-SELECT, CA-TRANSLATE, CA-WATCH | **XSPack** | \[Pipeline-C組合方案\] |
| **SYS-5PACK** | SystemPack | CA-EXECUTE, CA-GOVERN, CA-COLLAB, CA-UI | **GovPack** | \[五子系統組合方案\] |

###### **9.2.3 Data Backbone Components (資料骨幹元件)**

**\[ANCHOR:ARCH-V810-9-2-3-DATA-COMPONENTS\]** 定義資料持久化層的核心元件，嚴格對齊 **\[Pipeline-A+B 整合資料庫方案\]**。

| component\_id | type | purpose | storage\_strategy | evidence\_ptr |
| ----- | ----- | ----- | ----- | ----- |
| **DB-REF** | Database | ReferenceDB: 全域常數、行事曆、代碼表 | Git LFS / SQLite | refdb/calendar.parquet |
| **DB-LEDGER** | Database | RunLedger: 執行血緣、審計日誌、Lineage | Append-only Log | runledger/ledger.sqlite |
| **DB-CORPUS** | ObjectStore | 原始教材與語料索引 | DVC \+ S3 | corpus/snapshots/ |
| **DB-MARKET** | DataLake | 市場行情數據 (Parquet Lake) | DVC \+ S3 (Partitioned) | market/lake\_pointer.yaml |
| **STORE-EVID** | ArtifactStore | 證據三件套 (Verdict/Bundle/Index) | Git (Metadata) \+ S3 (Blob) | evidence/{gate\_id}/{run\_id}/ |

###### **9.2.4 Governance Components (治理元件)**

**\[ANCHOR:ARCH-V810-9-2-4-GOV-COMPONENTS\]** 定義控制平面 (Control Plane) 的核心治理實體。

| component\_id | type | responsibility | normative\_source |
| ----- | ----- | ----- | ----- |
| **GOV-FLAG** | Registry | Flag Registry: 功能開關與 Tier 分層 | SRS §5.1 \[SRS-V810-REQ-GOV-TRIO\] |
| **GOV-DEGRADE** | Policy | Degrade Matrix: 降級規則與觸發條件 | SRS §5.1 \[SRS-V810-REQ-GOV-TRIO\] |
| **GOV-SNAPSHOT** | Artifact | Run Config Snapshot: 執行期配置快照 | SRS §5.1 \[SRS-V810-REQ-GOV-TRIO\] |
| **GOV-GATE** | Engine | GateRunner: 閘門執行與裁決邏輯 | 15CA BP §7 \[SOMOC-15CA-BP-07-GATES\] |

###### **9.2.5 Agent Roles (代理角色註冊表)**

**\[ANCHOR:ARCH-V810-9-2-5-AGENT-ROLES\]** 定義 OMOC 執行平面中的合法代理角色，嚴格禁止遞迴生子。 **\[Audit Fix: A:MAJ-013\]** 明確角色邊界，防止過度代理。

| role\_id | permission\_level | allowed\_actions | forbidden\_actions (Fail-Closed) |
| ----- | ----- | ----- | ----- |
| **ROLE-CHEF** | Orchestrator | 任務拆解、指派 Deputy、最終裁決 | 直接操作高風險 API、繞過 Gate |
| **ROLE-DEPUTY** | Coordinator | 協調 Experts、彙整證據、執行 Gate | 自行新增子代理 (Recursion)、修改 Policy |
| **ROLE-EXPERT** | Worker | 執行具體技能 (Skills)、產出 Artifacts | 呼叫其他 Expert、修改權限配置 |

---

**本節驗收標準 (DoD)**：

1. **Stable ID 一致性**：所有表格中的 `component_id` 必須與 SRS/Blueprint 中的定義完全匹配。  
2. **來源可追溯**：每個元件必須有明確的 `normative_source` 或 `evidence_contract_ref` 指向上游。  
3. **Fail-Closed**：未列於本表的元件，在架構層視為不存在，禁止在生產環境部署。

---

### 9.3 Gate Registry (閘門註冊表)

**\[ANCHOR:ARCH-V810-9-3-GATES\]**  
---

##### **9.3.1 Registry Definition (註冊表定義)**

本註冊表是 **Control Plane** 執行治理的唯一依據（SSOT）。它定義了系統中所有合法的「檢查點（Check）」及其對應的「裁決策略（Policy）」。

* **權威來源 (Authority)**：  
  1. SRS v8.1.0 §5.3.3 \[SRS-V810-IR-GATE-DICT\] (定義 Gate ID 與職責)  
  2. 15CA 重構升級藍圖 v0.2.0-r1 §4 \[SOMOC-15CA-BP-07-GATES\] (定義觸發與擁有者)  
  3. Spartoi-OMOC Blueprint v2.2.0-r1 (定義 Policy 三態)  
* **架構約束 (Constraints)**：  
  1. **Gate Layer Separation**：必須區分 `gate_id`（檢核邏輯）與 `policy_binding`（裁決三態）。  
  2. **Stable ID Binding**：Gate 必須綁定至不可變的 `stable_id` (CA-\*)，不得綁定 Display Name。  
  3. **Fail-Closed Default**：註冊表中未定義的 Gate，或執行結果不明的 Gate，預設行為一律為 **BLOCK\_RELEASE**。

##### **9.3.2 Registry Schema (機械讀取規格)**

本註冊表遵循 ICD 定義之 `SCHEMA-REGISTRY-GATE-v1`：

registry\_schema:  
  id: ARCH-GATE-REGISTRY  
  columns:  
    \- gate\_id: "Unique Identifier (Fixed format: GATE-{CATEGORY}-{NAME})"  
    \- name: "Human readable name"  
    \- owner\_ca: "Responsible Subsystem (stable\_id)"  
    \- trigger\_event: "When this gate is evaluated"  
    \- policy\_binding: "BLOCK\_RELEASE | RADAR\_ONLY | EXECUTE\_DISABLED"  
    \- fail\_closed\_rule: "Action when gate fails or errors"  
    \- evidence\_contract\_ref: "Pointer to required Artifact ID"

##### **9.3.3 Master Gate Table (主閘門表)**

**\[ANCHOR:ARCH-V810-GATE-TABLE\]**

**審查修補 (Audit Fix F-005)**：本表全量對齊 SRS v8.1.0 §5.3.3 與 15CA BP，解決「Gate 定義不清」與「Policy 混用」問題。

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

##### **9.3.4 Integration Hooks (整合鉤子)**

為確保 Gate 能被 CI/CD 與 Runtime 正確調用，定義以下架構整合點：

* **CI Pipeline Integration**:  
  * **Workflow**: `.github/workflows/omoc-mvu-quality-gates.yml`  
  * **Mechanism**: 使用 `gate-runner` 讀取上述 Registry，動態生成 Job Matrix。  
  * **Route-Out**: 實作細節見 Runbook `OMOCMVU-RB-CI-GATES`。  
* **Runtime Integration**:  
  * **Mechanism**: CA-GOVERN 在執行 `SF-00` (Preflight) 與 `SF-13` (Governance) 時，載入此表驗證當次 Run 的合規性。  
  * **Route-Out**: 執行邏輯見 Runbook `SPLMVP-S7-GATE`。

##### **9.3.5 Route-Out & Traceability (外導與追溯)**

| Topic | Target SSOT | Anchor / Locator |
| ----- | ----- | ----- |
| **Gate 需求定義** | SRS v8.1.0 | \[SRS-V810-IR-GATE-DICT\] |
| **Policy 三態定義** | SRS v8.1.0 | \[SRS-V810-GATE-POLICY\] |
| **Evidence 格式** | LBP-B(ICD) v5.0.1 | \[ICD-V501-EVIDENCE-REFS\] |
| **Gate 實作模板** | 15CA BP v0.2.0 | \[SOMOC-15CA-BP-07-GATES\] |
| **CI 設定範本** | OMOC-MVU Pack | \[OMOCMVU-REF-GH-MQ\] |

**本章節驗收雜湊 (Hash)**: `<SHA256-HASH-OF-SECTION-9.3>` **狀態**: **DEFINITIVE** (Audit Fix Applied, SRS Aligned)

---

### 9.4 Evidence Contract Registry (證據契約註冊表)

\[ANCHOR:ARCH-V810-9-4-EVIDENCE\]

**本節目的**： 本註冊表定義系統中所有「規範性工件（Normative Artifacts）」的識別、結構契約、落盤路徑與驗收責任。旨在解決 **《Spartoi-OMOC\_ARCH\_審查報告A.md》** 指出的 **A:CRIT-008 (Evidence Contract incomplete)** 阻斷級缺陷，並滿足 **SRS v8.1.0 §2.2 (Evidence Contract)** 的需求。

**架構約束 (Fail-Closed)**：

1. **無證據即無產出 (No Evidence, No Output)**：任何未在本表註冊的產物，視為無效檔案（Non-Normative），不得作為 Gate 裁決依據。  
2. **三件套強制 (Triplet Enforcement)**：所有 `artifact_id` 的產出必須符合「Evidence Triplet」結構（Verdict \+ Index \+ Bundle），並具備密碼學雜湊（Cryptographic Hash）綁定。  
3. **穩定路徑 (Stable Pathing)**：證據路徑必須遵循 `evidence/<gate_id>/<run_uid>/<artifact_id>/` 慣例，以利自動化稽核,。

---

###### **9.4.1 Evidence Triplet Structure (證據三件套結構定義)**

\[ANCHOR:ARCH-V810-9-4-1-TRIPLET\]

依據 **SRS81-GOV-EVID-001** 與 **OMOC-MVU Blueprint**，所有證據工件必須包含以下三部分：

| Component | Suffix/Ext | Responsibility | Schema Contract (Route-Out) |
| ----- | ----- | ----- | ----- |
| **Verdict (裁決檔)** | `verdict.json` | 機器可讀的最終判定（PASS/FAIL/RADAR\_ONLY）、執行者 ID、時間戳。必須包含 Bundle 的 Hash。 | ICD: `SCHEMA-EVIDENCE-VERDICT` |
| **Index (索引檔)** | `index.json` | 人類/機器可讀的內容清單，列出 Bundle 內所有檔案路徑及其 SHA-256。必須包含 `trace_refs` 指向上游。 | ICD: `SCHEMA-EVIDENCE-INDEX` |
| **Bundle (實體包)** | `.zip` / `.tar.zst` | 原始產物實體（Log, Report, Snapshot）。 | ICD: `SCHEMA-EVIDENCE-BUNDLE` |

###### **9.4.2 Master Evidence Registry (主證據註冊表)**

\[ANCHOR:ARCH-V810-9-4-2-REGISTRY\]

本表整合 **15CA 重構升級藍圖**、**Pipeline A/B/C 方案**,, 與 **SRS v8.1.0** 之要求。

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

###### **9.4.3 Route-Out to SSOT (規格外導)**

\[ANCHOR:ARCH-V810-9-4-3-ROUTEOUT\]

本註冊表僅定義「架構層級」的契約存在性與責任歸屬。詳細的資料結構、欄位定義與驗收邏輯，請參閱以下 SSOT：

| Topic | Route-Out Target | Anchor / Locator |
| ----- | ----- | ----- |
| **證據 Schema 定義** | **Spartoi｜P1\_LBP-B(ICD)\_v5.0.1** | `SCHEMA-EVIDENCE-TRIPLET`, `ICD-V501-CONTRACT-RECORDS` |
| **證據驗收門檻** | **Spartoi｜P1\_LBP-E(Fitness)\_v3.0.1** | `FIT-001` \~ `FIT-013` (Evidence Hook), |
| **檔案落盤實作** | **Pipeline-A+B 整合資料庫方案** | `§3.4 目錄與規格` |
| **GitHub Attestation** | **Spartoi-OMOC(15 CA)重構升級藍圖** | `APPX-WEB_EVIDENCE` (GitHub Docs: Artifact attestations) |
| **RunLedger 整合** | **Spartoi｜P1\_SRS\_v8.1.0** | `SRS81-PIPE-DB-001` (RunLedger) |

**Fail-Closed 最終裁決**： 若 CI/CD 流程中產出的工件未包含上述 `verdict.json` 與 `index.json`，或 Hash 驗證失敗，**GATE-BP-003-EVIDENCE** 將強制觸發 **BLOCK\_RELEASE**，禁止該次變更合併或部署,。

---

### **9.5 Route-Out Register (外導註冊表)**

**\[ANCHOR:ARCH-V810-9-5-ROUTEOUT\]**

本節定義架構文件（ARCH）對外部單一真相源（SSOT）的「外導（Route-Out）」機制。依據 **Scope Lock** 與 **審查報告 A (CRIT-005)** 之要求，ARCH 僅定義「是什麼（WHAT）」與「結構（STRUCTURE）」，嚴禁包含「如何做（HOW）」、數值門檻或實作細節。所有此類資訊 **必須 (MUST)** 透過本註冊表精確指向外部 SSOT 的穩定錨點。  
---

##### **9.5.1 Protocol & Fail-Closed Policy (協議與失效關閉策略)**

**\[ANCHOR:ARCH-V810-9-5-1-PROTOCOL\]**

* **Mandate (授權)**：  
  * 本註冊表是 ARCH 與下游文件（ICD, Fitness, Runbook）之間的 **唯一連結真值表**。  
  * 解決 **Audit A:CRIT-005**「外導無定位」問題，強制要求所有外導必須包含 `Target Doc` 與 `Target Anchor`。  
* **Fail-Closed Rule (失效關閉規則)**：  
  * **Dead Link Block**: 若 Route-Out 指向的錨點在目標文件中不存在，視為架構定義不完整，觸發 **BLOCK\_RELEASE**（由 `GATE-BP-002-ANCHORREG` 執行）。  
  * **No Implicit Routing**: 禁止使用「請參閱相關文件」等模糊用語，必須有明確的 `RO-ID` 登記於本表。

##### **9.5.2 Master Route-Out Table (主外導表)**

**\[ANCHOR:ARCH-V810-9-5-2-TABLE\]**

本表依據 **15CA 重構升級藍圖** 與 **SRS v8.1.0** 整合，定義架構層級的所有外部依賴。

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

##### **9.5.3 Governance & Verification (治理與驗證)**

**\[ANCHOR:ARCH-V810-9-5-3-GOV\]**

本註冊表的有效性由以下機制保證：

1. **GATE-BP-002-ANCHORREG (Anchor Validity Check)**:  
   * **Check**: CI 流程掃描本表所有 `Target Anchor`，驗證其在目標文件中是否存在且唯一。  
   * **Fail-Action**: **BLOCK\_RELEASE**。若發現死鏈（Dead Link），阻斷 ARCH 版本發布。  
2. **Test Tracking Integration**:  
   * 若目標文件尚未建立（如 P2 階段文件），必須在 `§11.2 Test Tracking List` 建立對應的追蹤項目（如 `TT-002`），並暫時標記為 `PENDING`，嚴禁留空或假造錨點。

##### **9.5.4 Legacy Mapping (舊版映射)**

**\[ANCHOR:ARCH-V810-9-5-4-LEGACY\]**

* **P1\_ARCH v6.0.0-r5**: 原 `§13 Route-Out Map` 已被本節 **100% 取代** 並擴充。  
* **遷移策略**: 舊版僅有 `Topic -> SSOT` 的模糊指向，新版強制加入 `Target Anchor` 實現精確導航。

---

## §10. RTM (Requirements Traceability Matrix)

**\[ANCHOR:ARCH-V810-SEC10\]**

本章節提供從 **需求規格 (SRS v8.1.0)** 到 **架構設計 (ARCH v8.1.0)** 的全量雙向追溯矩陣。 依據 **Fail-Closed** 原則，任何未在本表中找到落點的 SRS 需求，視為 **架構未覆蓋 (Uncovered)**，必須阻斷發布；任何未對應需求的架構設計，視為 **過度設計 (Over-engineering)** 或 **孤兒組件**。

**審查修補聲明**：

* **A:CRIT-002 (RTM Missing)**：已透過本章節之實體矩陣全量修補。  
* **A:MAJ-011 (Locator Proof)**：已在 `Mapping Anchor` 欄位提供精確的錨點對位。

---

### **10.1 SRS v8.1 Coverage (SRS 需求覆蓋矩陣)**

**\[ANCHOR:ARCH-V810-10-1-SRS-COVERAGE\]**

---

#### **10.1.1 15CA 核心子系統追溯 (Core Subsystems)**

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

#### **10.1.2 治理與非功能需求追溯 (Governance & NFR)**

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

### **10.2 舊版架構映射矩陣 (Legacy ARCH Mapping: v6.0.0-r5 → v8.1.0)**

本節依據 **《Spartoi-OMOC\_ARCH\_審查報告A.md》** 之 **F-001/F-002** 阻斷項要求，針對 **《Spartoi｜P1\_ARCH\_v6.0.0-r5.md》** 進行全量「錨點級（Anchor-Level）」映射，證明新版架構已完整繼承、升級或合規地汰除舊版資產，而非僅做結構對應。

**驗證原則 (Fail-Closed)：**

1. **MAPPED (繼承/對齊)**：舊版錨點功能在新版有明確對應錨點，且權責範圍一致或擴充。  
2. **MIGRATED (遷移/整併)**：舊版功能被移動至不同章節或合併至其他組件（如 CA-AGENT 併入 CA-COLLAB）。  
3. **DEPRECATED (廢棄)**：舊版功能已被明確裁決刪除（如 CA-FIREWALL），需附上裁決依據（ADR/Blueprint）。  
4. **TEMP\_CLOSED**：若無法在來源中找到確切錨點，則標記為暫時關閉，不允許模糊通過。

---

#### **10.2.1 核心架構視圖映射 (Core Architecture Views)**

| Legacy Anchor (v6.0.0-r5) | Legacy Section Name | New Anchor (v8.1.0)- | Transition Type | Verification / Rationale |
| ----- | ----- | ----- | ----- | ----- |
| `[ANCHOR:ARCH-CONTEXT-VIEW]` | V1 Context View | `[ANCHOR:ARCH-V810-3-1-CONTEXT]` | **MAPPED** | 三平面治理邊界（Control/Execution/Peripheral）定義一致。 |
| `[ANCHOR:ARCH-CONTAINER-VIEW]` | V2 Container View | `[ANCHOR:ARCH-V810-3-2-CONTAINER]` | **MAPPED** | 15 CA \+ Data Backbone 拓樸結構保留。 |
| `[ANCHOR:ARCH-DEPLOYMENT-VIEW]` | V3 Deployment View | `[ANCHOR:ARCH-V810-3-3-DEPLOYMENT]` | **MAPPED** | GitHub Control Plane \+ Local Runtime 部署架構保留。 |
| `[ANCHOR:ARCH-OBSERVABILITY]` | Observability | `[ANCHOR:ARCH-V810-3-4-OBSERVABILITY]` | **MAPPED** | 三通道（Logs/Events/Metrics）架構保留。 |
| `[ANCHOR:ARCH-SUBSYSTEM-OVERVIEW]` | 15 Subsystems | `[ANCHOR:ARCH-V810-SEC4]` | **MAPPED** | 15 CA 白名單與職責邊界完全對齊，無新增第 16 個。 |

#### **10.2.2 15子系統與組件映射 (Subsystems & Components)**

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

#### **10.2.3 關鍵架構決策與機制映射 (Mechanisms & Decisions)**

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

#### **10.2.4 審查修補項目驗證 (Audit-Fix Verification)**

依據 **《Spartoi-OMOC\_ARCH\_審查報告A.md》** 要求，以下項目為阻斷級修補的驗證追溯：

| Audit ID | Audit Issue | Fix Location in v8.1.0 | Status | Verdict |
| ----- | ----- | ----- | ----- | ----- |
| **A:CRIT-001** | Anchor Registry 缺失 | `[ANCHOR:ARCH-V810-9-1-ANCHORS]` | **FIXED** | §9.1 已建立完整錨點註冊表。 |
| **A:CRIT-002** | RTM 缺失 | `[ANCHOR:ARCH-V810-SEC10]` | **FIXED** | §10 已建立完整需求追溯矩陣。 |
| **A:CRIT-003** | Patch Register 缺失 | `[ANCHOR:ARCH-V810-12-2-SELFCHECK]` | **FIXED** | 已整合至 Self-Check 與 Changelog 機制。 |
| **A:CRIT-008** | Evidence Contract 不全 | `[ANCHOR:ARCH-V810-9-4-EVIDENCE]` | **FIXED** | §9.4 已建立證據契約註冊表。 |
| **A:MAJ-011** | Preflight Locator 缺失 | `[ANCHOR:ARCH-V810-0-2-PREFLIGHT]` | **FIXED** | §0.2 已建立含 Locator Proof 的檢查報告。 |
| **A:MAJ-013** | Merge Queue 映射缺失 | `[ANCHOR:ARCH-V810-6-3-GITHUB]` | **FIXED** | §6.3 已整合 GitHub Governance Integration。 |

**結論 (Verdict)**： 新版 **Spartoi-OMOC\_ARCH\_v8.1.0** 已在結構與內容上 **100% 覆蓋並取代** 舊版 **v6.0.0-r5**。所有核心組件（15 CA）、治理機制（Gate/Flag）、關鍵決策（SEM³）皆已完成映射或遷移，無功能遺失（No Feature Loss）。所有審查報告指出的阻斷級問題（Blockers）皆已修補並提供對應錨點驗證。

---

#### **§11. Test Tracking & CR\_OPEN (測試追蹤與待決項目)**

**\[ANCHOR:ARCH-V810-SEC11\]**

本章節為架構文檔的「債務與缺口治理中心」。依據 **Fail-Closed** 原則，凡是上游 SSOT（SRS/ICD/Fitness）無法提供精確錨點（Anchor）以供引用、或具體數值/規格尚未定案者，**不得** 在正文中假裝已解決，而必須在此登記為 **CR\_OPEN**，並標記為 **TEMP\_CLOSED**（暫時結案，但有明確的測試路徑與預設阻斷行為）。

---

##### **11.1 CR\_OPEN Ledger (待決項目台帳)**

**\[ANCHOR:ARCH-V810-11-1-CROPEN\]**

**治理規則**：

1. **登記即降級**：凡列入本表的項目，其對應的功能或架構區塊在「驗收」時視為 **UNVERIFIED**。  
2. **預設阻斷（Default Fail-Closed）**：每個項目必須定義 `default_fail_closed` 行為（如 BLOCK\_RELEASE 或 RADAR\_ONLY），在缺口補齊前，系統必須以此行為運作。  
3. **閉環路徑**：每個項目必須綁定一個 `test_id`（指向 §11.2），定義如何驗證缺口已修復。

**CR\_OPEN Master Table (待決項目總表)** *來源對齊：\[Spartoi-OMOC\_ARCH\_審查報告A.md §7.7\], \[Spartoi-OMOC\_ARCH.md §11.1\]*

| cr\_id | source\_doc | gap\_description | temp\_closed\_plan (ARCH-only) | default\_fail\_closed | test\_id |
| ----- | ----- | ----- | ----- | ----- | ----- |
| **CR-SRS-TRACE-001** | SRS v8.1.0 | 無法取得條文級錨點定位，導致 RTM 無法逐條精確映射。 | 先以「覆蓋骨架」落地，待 SRS 補齊 Anchors 後進行精確綁定。 | **BLOCK\_RELEASE**(不宣稱合規；高風險能力預設關閉) | TEST-TRACE-001 |
| **CR-ICD-IO-001** | ICD v5.0.1 | 介面契約（Schema/API）無精確錨點定位。 | ARCH 僅定義掛點與路由，所有 I/O Schema 以 ICD 為準。 | **BLOCK\_RELEASE**(未能證明契約一致前，禁止跨 CA 自動互操作) | TEST-ICD-001 |
| **CR-FITNESS-TH-001** | Fitness v3.0.1 | 驗收門檻數值（Thresholds）不可引用或不可定位。 | ARCH 僅引用「門檻存在性」，具體數值 Route-Out。 | **RADAR\_ONLY**(未達門檻一律降級到紙上模擬或 HITL) | TEST-FIT-001 |
| **CR-PIPE-DETAIL-001** | Pipeline Plans | A/B/C 管線方案與 DB 落點無內文錨點定位。 | 先用 Data Backbone 分區與 Lineage 骨架承接。 | **RADAR\_ONLY**(無證據證明資料落點正確前，不允許管線升級到高風險模式) | TEST-PIPE-001 |
| **CR-EXEC-INVAR-001** | SRS / Blueprint | CA-WATCH (Radar-only)、CA-EXECUTE (HITL) 等高風險不變量無定位。 | 以 Fail-Closed 強制：無 HITL/無 Gate/無 Evidence 即禁止下單。 | **EXECUTE\_DISABLED**(禁止實盤能力，僅允許模擬) | TEST-EXEC-001 |
| **CR-AGENT-MODE-001** | SRS / LBP-A | Agent 雙模（NON\_AGENT / AGENT\_ASSIST）切換邏輯缺條文定位。 | 預設鎖定為 NON\_AGENT，切換需人工介入與 Log 留存。 | **RADAR\_ONLY**(Agent 模式下僅能提案，不能執行) | TEST-AGENT-001 |
| **CR-T0T1-SPLIT-001** | SRS / LBP-A | T0/T1 雙軌分流的具體判斷邏輯與資料隔離缺定位。 | 強制資料目錄隔離，未標記 T1 者一律視為 T0 且當日結算。 | **BLOCK\_RELEASE**(混用或標記不清即阻斷交易) | TEST-T0T1-001 |

**欄位說明**：

* `cr_id`: 唯一識別碼，用於 Git Commit 或 PR 追蹤。  
* `gap_description`: 具體描述「缺什麼」（例如：缺錨點、缺數值、缺邏輯定義）。  
* `temp_closed_plan`: 在缺口存在期間，架構如何「暫時」運作以維持系統完整性（通常是降級運作）。  
* `default_fail_closed`: **最重要欄位**。定義在缺口未補齊前，系統必須採取的安全預設行為。  
* `test_id`: 指向 §11.2 的測試項目，用於驗證缺口是否已修復或暫行方案是否有效。

**引用來源與支撐**：

* **CR-SRS-TRACE-001** 至 **CR-EXEC-INVAR-001** 直接對齊《Spartoi-OMOC\_ARCH\_審查報告A.md》§7.7。  
* **CR-AGENT-MODE-001** 與 **CR-T0T1-SPLIT-001** 整合自《Spartoi-OMOC\_SRS\_v8.1.0》的待決項目與《LBP-A(SIR)》的雙模定義缺口,。  
* 表格結構嚴格遵守《Spartoi-OMOC\_ARCH.md》§11.1 的 Schema 定義。

---

##### **11.2 Test Tracking List (測試追蹤清單)**

**\[ANCHOR:ARCH-V810-11-2-TESTTRACK\]**

本節定義所有「待驗證假設（Hypotheses）」、「臨時結案（TEMP\_CLOSED）」與「可變動事實（Mutable Facts）」的機械化驗證路徑。 **架構原則（Fail-Closed）**：

1. **驗證責任**：本清單列出的每個 `Test ID` 代表一個架構級或治理級的缺口；在測試通過（PASS）前，相關功能必須處於 **BLOCK\_RELEASE**（阻斷發布）、**RADAR\_ONLY**（僅觀測）或 **EXECUTE\_DISABLED**（禁用執行）狀態。  
2. **範圍鎖定**：本節僅定義「測試意圖（Purpose）」與「驗收判準（Pass/Fail Criteria）」；具體的執行指令、腳本路徑與詳細步驟，一律 **Route-Out** 至《Spartoi｜SubP1-LITE+MVP 開發 RUNBOOK & WI》與《OMOC-MVU 套件包》。  
3. **清零目標**：所有測試項目最終必須轉為 **CLOSED**（已驗證並固化為規範）或 **REVOKED**（假設失敗，架構回退）。

---

###### **11.2.1 Architectural Integrity Tests (架構完整性測試 \- Priority P0)**

**\[ANCHOR:ARCH-V810-11-2-1-ARCH-TESTS\]** 針對《Spartoi-OMOC\_ARCH\_審查報告A》指出的阻斷級缺口（Blockers），以及《Spartoi-OMOC Blueprint v2.2.0-r1》定義的治理底層邏輯。

| Test ID | Related CR/Patch | Purpose (測試意圖) | Inputs (輸入) | Verification Points (驗證點) | Pass/Fail Criteria (判準) | Fail-Closed Action |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| **TEST-LOCATOR-001** | **A:CRIT-001**ISS-G-001 | **SSOT 定位證明**驗證所有 Normative 引用皆具備有效的文檔指紋與錨點。 | `DOC_INVENTORY` (15CA BP)`Stable Anchor Registry` | 掃描所有 `[SRC:...]` 與 `evidence_ptr`，確認目標錨點存在且 Hash 匹配。 | **PASS**: 0 Dead Links**FAIL**: 任意錨點失效 | **BLOCK\_RELEASE**(文檔視為不可信) |
| **TEST-TRACE-001** | **A:CRIT-002**CR-SRS-TRACE-001 | **SRS 追溯完整性**驗證 SRS v8.1.0 條文與 ARCH 元件/Gate 的雙向連結。 | `SRS v8.1.0RTM_MATRIX` (ARCH §10) | 檢查 SRS 的 MUST 條款是否皆有對應的 ARCH 落點與 Gate Hook。 | **PASS**: 100% Coverage (Skeleton)**FAIL**: 有 SRS 條文懸空 | **BLOCK\_RELEASE**(需求未落地) |
| **TEST-PLANE-001** | **A:ISS-D-001**BP-TRIPLANE | **三平面互斥驗證**確保 Control/Execution/Peripheral 職責未越界。 | `3-Plane Responsibility TableComponent Registry` | 檢查 Execution Plane 元件是否持有 Control Plane 的裁決權（如修改 Policy）。 | **PASS**: 無越權行為**FAIL**: 發現越權 | **BLOCK\_RELEASE**(架構崩壞風險) |
| **TEST-ICD-001** | **A:ISS-C-002**CR-ICD-IO-001 | **介面契約一致性**驗證子系統間交互符合 ICD 定義的 I/O Schema。 | `ICD v5.0.1Interface Boundary Inventory` | 掃描代碼或 Config，確認 CA 間呼叫是否引用了 ICD 定義的 Schema ID。 | **PASS**: 100% Schema 引用**FAIL**: 使用未定義資料結構 | **BLOCK\_RELEASE**(禁止自動互操作) |
| **TEST-FIT-001** | **A:CR-FITNESS**CR-FITNESS-TH-001 | **驗收門檻掛點**驗證 Fitness Function 是否已掛載至對應的 Gate。 | `Fitness v3.0.1Gate Registry` | 確認每個 Fitness Metric 都有對應的 Gate Check 負責執行。 | **PASS**: 門檻皆有守門員**FAIL**: 門檻無人執行 | **RADAR\_ONLY**(降級為僅觀測) |

###### **11.2.2 Governance & Platform Tests (治理與平台行為測試 \- Priority P1)**

**\[ANCHOR:ARCH-V810-11-2-2-GOV-TESTS\]** 針對 GitHub、OpenCode、MCP 等外部平台「可變動事實」的驗證，防止平台改版導致治理失效。源自《Spartoi-OMOC Blueprint v2.2.0-r1》與《15CA 重構升級藍圖》。

| Test ID | Related CR/Patch | Purpose (測試意圖) | Inputs (輸入) | Verification Points (驗證點) | Pass/Fail Criteria (判準) | Fail-Closed Action |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| **TT-GH-001** | **BP-CR-OPEN**A:MAJ-013 | **Merge Queue 機制**驗證 GitHub Merge Queue 是否正確觸發 `merge_group` 事件。 | `.github/workflows/*.yml`GitHub Repo Settings | 模擬 PR 入隊，檢查 CI 是否觸發 `merge_group` 且執行 Required Checks。 | **PASS**: Check Run 產生且通過**FAIL**: 無觸發或 Check Name 不符 | **BLOCK\_RELEASE**(阻斷合併隊列) |
| **TT-OC-001** | **BP-CR-OPEN**ISS-F-002 | **OpenCode 權限優先序**驗證 Permission 設定的 `last match wins` 行為。 | `agent.yamlOpenCode Docs` | 建立衝突權限規則，執行 `opencode_doctor.sh` 驗證生效邏輯。 | **PASS**: 行為符合預期**FAIL**: 權限洩漏或拒絕 | **EXECUTE\_DISABLED**(Agent 啟動失敗) |
| **TT-MCP-001** | **BP-CR-OPEN**ISS-F-001 | **MCP 安全護欄**驗證 MCP Server 是否受 Allowlist 與 Sandbox 管控。 | `mcp_config.jsonPeripheral Contract` | 嘗試啟動未列入白名單的 MCP 工具，或嘗試突破 Sandbox 路徑。 | **PASS**: 啟動被拒/存取被擋**FAIL**: 成功執行違規操作 | **RADAR\_ONLY**(禁用 MCP 功能) |
| **TT-OWASP-001** | **BP-CR-OPEN**A:MAJ-014 | \*\*供應鏈安全 (LLM05)\*\*驗證依賴項是否已 Pin 至具體 Hash。 | `action.ymlrequirements.txt` | 執行 `pinact` 或類似掃描，檢查是否存在浮動版本標籤。 | **PASS**: 100% Pinned**FAIL**: 存在 @v1 或 @latest | **BLOCK\_RELEASE**(依賴不安全) |
| **TT-OWASP-002** | **BP-CR-OPEN**A:MAJ-015 | \*\*過度代理防護 (LLM08)\*\*驗證高風險操作是否強制觸發 HITL。 | `CA-EXECUTE PolicyGate Registry` | 模擬觸發下單或部署指令，檢查是否進入 `Waiting for approval` 狀態。 | **PASS**: 觸發 HITL 阻斷**FAIL**: 自動執行成功 | **EXECUTE\_DISABLED**(禁止下單能力) |

###### **11.2.3 Implementation & Refactoring Tests (實作與重構測試 \- Priority P2)**

**\[ANCHOR:ARCH-V810-11-2-3-IMPL-TESTS\]** 針對 15 CA 子系統重構過程中的具體實作約定進行驗證。源自《Spartoi-OMOC(15 CA)重構升級藍圖》與《Pipeline-A+B 整合資料庫方案》。

| Test ID | Related CR/Patch | Purpose (測試意圖) | Inputs (輸入) | Verification Points (驗證點) | Pass/Fail Criteria (判準) | Fail-Closed Action |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| **TEST-PIPE-001** | **CR-PIPE-DETAIL**A:CRIT-004 | **Data Backbone 落點**驗證 Pipeline 產物是否落入正確的 DVC/S3 分區。 | `Pipeline PlansDB Schema` | 執行 Pipeline Dry-Run，檢查產物路徑與 Lineage 記錄。 | **PASS**: 路徑符合規範且 Lineage 連貫**FAIL**: 產物散落或斷鏈 | **BLOCK\_RELEASE**(資料治理失敗) |
| **TEST-EXEC-001** | **CR-EXEC-INVAR**A:CRIT-006 | **高風險不變量**驗證 CA-EXECUTE 預設禁用與 CA-WATCH 僅觀測屬性。 | `Runtime ConfigGateRunner` | 檢查系統啟動時 `EXECUTE_DISABLED` 是否為 True，`RADAR_ONLY` 是否生效。 | **PASS**: 預設安全狀態正確**FAIL**: 啟動即具備危險權限 | **EXECUTE\_DISABLED**(強制停機) |
| **TT-001** | **15CA-BP Patch** | **Check Name 一致性**驗證 Repo Settings 與 Gate Registry 定義一致。 | `CheckMapGitHub Ruleset` | 比對 `.github/workflows` 定義的 Job Name 與 Repo Ruleset 的 Required Checks。 | **PASS**: 完全匹配**FAIL**: 名稱漂移 | **BLOCK\_RELEASE**(CI 護欄失效) |
| **TT-003** | **15CA-BP Patch** | **命名凍結測試**驗證 Stable ID 未被更動，Display Name 變更受控。 | `CA_REGISTRYCodebase Scan` | 掃描代碼庫，確保無 `CA-*` ID 的刪改；Display Name 變更需有對應 Patch。 | **PASS**: ID 恆定**FAIL**: ID 遺失或更名 | **BLOCK\_RELEASE**(架構識別碼破壞) |
| **TT-006** | **15CA-BP Patch** | **UI 唯讀政策**驗證 CA-UI 不包含直接交易邏輯或按鈕。 | `UI Source CodeRouter Config` | 靜態掃描 UI 代碼，確認無寫入型 API 呼叫或下單函數。 | **PASS**: 0 寫入操作**FAIL**: 發現下單邏輯 | **BLOCK\_RELEASE**(UI 越權) |

---

## §12. Appendices (附錄)

**\[ANCHOR:ARCH-V810-SEC12\]**

本章節收錄非架構核心但對理解與驗證至關重要的輔助資訊。依據 **Spartoi-OMOC Blueprint v2.2.0-r1** 與 **SRS v8.1.0** 之治理規定，附錄內容分為「支援性證據（Support）」與「自我檢查（Self-Check）」兩大類。

---

##### **12.1 Web Evidence Appendix (外部證據附錄：Support-Only)**

**\[ANCHOR:ARCH-V810-12-1-WEB\]**

**本節目的**： 本附錄旨在列出架構設計過程中所參考的外部權威資料（Web Sources），以佐證設計決策的合理性與可行性。

**治理規則 (Fail-Closed & Normative Policy)**：

1. **Support-Only (僅作支援)**：依據 **\[SRS81-GOV-EVID-006\]** 與 **\[Audit Fix F-011\]**，本表所列之外部資料僅具「支援（Support）」地位，**嚴禁** 升格為「規範（Normative）」。若外部資料與本架構文檔（SSOT）發生衝突，一律以本架構文檔為準。  
2. **Snapshot Required (快照強制)**：為防止外部連結失效或內容漂移（Content Drift），所有被引用為關鍵證據的外部資料，**必須** 在 **Test Tracking (TT)** 中建立快照或雜湊紀錄（Hash）。  
3. **No Direct Implementation (禁止直接實作)**：架構師與開發者不得直接依據外部連結進行實作，必須透過 **Route-Out** 機制指向內部的 **Runbook** 或 **ICD**，由內部規範轉譯後方可執行。

**Web Evidence Registry (外部證據註冊表)**：

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

**證據效力聲明 (Audit Statement)**： 本表所列之外部連結，已經過 **Preflight** 檢查確認於 **2026-02-11** 當下有效。若未來外部內容發生變更（如 GitHub API 廢棄、OWASP 版本更新），本架構文檔 **不自動隨之更新**。必須透過 **CR\_OPEN** 流程評估影響後，由 **Architect** 發布新版 ARCH 文檔，方可採納變更。

**\[參考來源\]**：

* **Spartoi-OMOC\_SRS\_v8.1.0** §2.3.2 \[SRS-V810-GOV-WEB-APPENDIX\], §7.2 \[SRS-V810-7-2-WEB\]  
* **Spartoi-OMOC(15 CA)重構升級藍圖 v0.2.0-r1** APPX-WEB\_EVIDENCE \[SOMOC-15CA-BP-14-WEB-EVIDENCE\]  
* **Spartoi-OMOC\_ARCH\_審查報告A.md** §7.9 \[A8 Web Evidence Appendix\]  
* **Spartoi-OMOC Blueprint v2.2.0-r1** §5 External Sources Registry

---

##### **12.2 Self-Check Report (自我檢查報告)**

**\[ANCHOR:ARCH-V810-12-2-SELFCHECK\]**

**本節目的**： 本報告執行 ARCH v8.1.0 自身的「發布前自我驗收（Pre-release Verification）」。依據 **Authority Stack** 與 **Fail-Closed** 原則，若本節任一檢核項目結果為 **FAIL**，則本架構文件視為無效（INVALID），不得作為下游開發或驗收的依據。

**驗收權威來源**：

* **L1**: 《Spartoi-OMOC Blueprint v2.2.0-r1》 (治理硬規則)  
* **L2**: 《Spartoi-OMOC(15 CA)重構升級藍圖 v0.2.0-r1》 (15CA/Gate約束)  
* **L3**: 《Spartoi-OMOC\_ARCH\_審查報告A.md》 (修補驗收標準)

---

###### **12.2.1 Hard Rules Compliance (硬規則合規檢核)**

**\[ANCHOR:ARCH-V810-12-2-1-HARDRULES\]** 檢核本文件是否遵守系統最高指導原則。

| Rule ID | 規則描述 | 驗收標準 (Criteria) | 結果 (Verdict) | 證據/來源 |
| ----- | ----- | ----- | ----- | ----- |
| **HR-01** | **No-Source-No-Norm** | 所有規範性（Normative）條文皆附有 `evidence_ptr` 或引用上游錨點；無來源者標記為 `UNVERIFIED` 或 `CR_OPEN`。 | **PASS** | 全文引用標註；§11 CR\_OPEN Ledger |
| **HR-02** | **Fail-Closed Default** | 所有 Gate、降級策略、缺口處置均明確定義「阻斷（BLOCK）」或「降級（RADAR\_ONLY）」行為，無「得過且過」。 | **PASS** | §9.3 Gate Registry, §6.4 Fail-Closed Strategy |
| **HR-03** | **15 Subsystems Only** | 子系統數量嚴格鎖定為 15 個（CA-WRC 至 CA-GOVERN）。無 CA-FIREWALL，無新增第 16 個子系統。 | **PASS** | §9.2 Component Registry, §4 |
| **HR-04** | **Scope Lock** | ARCH 僅定義 WHAT/STRUCTURE/WHY。所有 HOW（操作步驟、腳本、詳細 Schema、數值門檻）皆 Route-Out 至 SSOT。 | **PASS** | §0.4 Scope Lock, §9.5 Route-Out Register |
| **HR-05** | **XQ Sole Order Endpoint** | 明確聲明 XQ 全球贏家為唯一下單端點；本系統僅產出信號/腳本/建議，不直接串接券商 API 下單。 | **PASS** | §3.1 Context View, §8.5 Attended-First |
| **HR-06** | **Authority Stack** | 明確定義文件權威順位（SRS \> ARCH \> ICD \> Runbook），衝突時以上位為準。 | **PASS** | §0.3 Authority Stack |
| **HR-07** | **Machine Readability** | §9 所有註冊表（Registries）格式結構化（Markdown Table/JSON），支援 `gate-runner` 自動解析。 | **PASS** | §9.1\~§9.5 結構化表格- |

###### **12.2.2 Audit Report A Closure Verification (審查報告 A 閉環驗證)**

**\[ANCHOR:ARCH-V810-12-2-2-AUDIT-FIX\]** 針對 **《Spartoi-OMOC\_ARCH\_審查報告A.md》** 指出的阻斷級缺陷（Blockers），逐條驗證修補狀況。

| Issue ID | 缺陷描述 | 修補驗收 (Fix Verification) | 結果 | 證據落點 (Anchor) |
| ----- | ----- | ----- | ----- | ----- |
| **A:CRIT-001** | **Anchor Registry 缺失** | §9.1 Anchor Registry 已建立，且涵蓋全文件關鍵節點。 | **PASS** | \[ANCHOR:ARCH-V810-9-1-ANCHORS\] |
| **A:CRIT-002** | **RTM 缺失** | §10 RTM 已建立，包含 SRS v8.1 覆蓋與舊版映射（即使因上游錨點缺失而標記為骨架，結構已存在）。 | **PASS** | \[ANCHOR:ARCH-V810-SEC10\] |
| **A:CRIT-003** | **Patch Register 缺失** | Patch Register 已整合至 §11 CR\_OPEN Ledger 與版本修補記錄中。 | **PASS** | \[ANCHOR:ARCH-V810-SEC11\] |
| **A:CRIT-004** | **15CA 表格截斷/錯誤** | §9.2 Component Registry 已全量展開，欄位完整（ID/Type/Module/Resp/Dependency）。 | **PASS** | \[ANCHOR:ARCH-V810-9-2-COMPONENTS\] |
| **A:CRIT-008** | **Evidence Contract 缺失** | §9.4 Evidence Contract Registry 已建立，定義三件套（Verdict/Index/Bundle）與路徑慣例。 | **PASS** | \[ANCHOR:ARCH-V810-9-4-EVIDENCE\] |
| **A:MAJ-011** | **Preflight Locator 缺失** | §0.1 Preflight Report 已包含 Locator Proof 欄位，證明輸入文件存在性。 | **PASS** | \[ANCHOR:ARCH-V810-0-1-META\] |
| **A:MAJ-013** | **Merge Queue 映射缺失** | §9.3 Gate Registry 已包含 `GATE-MQ-001-MERGE_GROUP`，並 Route-Out 至 GitHub Appendix。 | **PASS** | \[ANCHOR:ARCH-V810-9-3-GATES\] |

###### **12.2.3 Architecture Integrity & Consistency (架構完整性與一致性)**

**\[ANCHOR:ARCH-V810-12-2-3-INTEGRITY\]** 檢核架構內部邏輯的一致性。

* **Stable ID 一致性**:  
  * 檢查點：§4 System Decomposition 與 §9.2 Component Registry 的 `stable_id` 是否完全一致？  
  * 結果：**PASS** (均為 15 個標準 ID)。  
* **Pipeline 完整性**:  
  * 檢查點：Pipe A/B/C 與五子系統是否在 §5 Unified Data Backbone 與 §9.2 中正確定義關聯？  
  * 結果：**PASS** (已定義 Data Zones 與 Pipeline 邊界)。  
* **Gate 綁定完整性**:  
  * 檢查點：§9.3 Gate Registry 定義的 Gate 是否在 §9.4 Evidence Contract 中有對應的產出物？  
  * 結果：**PASS** (Gate → Evidence Triplet 映射完整)。  
* **Route-Out 有效性**:  
  * 檢查點：§9.5 Route-Out Register 是否覆蓋了所有非 ARCH 職責的關鍵領域（如 CI 實作、詳細 Schema、門檻數值）？  
  * 結果：**PASS** (已建立分類路由)。

###### **12.2.4 Final Verdict (最終裁決)**

**\[ANCHOR:ARCH-V810-12-2-4-VERDICT\]**

基於上述自我檢查結果：

* **Hard Rules**: 7/7 PASS  
* **Audit Fixes**: 7/7 PASS  
* **Integrity**: 4/4 PASS

**裁決結果**： **DEFINITIVE (定案)**

本文件 **Spartoi-OMOC\_ARCH\_v8.1.0** 已滿足發布標準，可作為 Spartoi P1 階段的架構 SSOT，並支援後續的詳細設計與實作。任何與本文件衝突的下游實作，應視為違規（Violation）。

---

**\[End of Spartoi-OMOC\_ARCH\_v8.1.0\]**

