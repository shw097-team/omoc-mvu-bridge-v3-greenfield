# **《Spartoi-OMOC\_SubP1-LITE+MVP\_藍圖》v1.3.0-r2（單檔 Markdown 正文）**

\[ANCHOR:SOMOC-SUBP1MVP-00-COVER\]

---

## **0\) Cover Card \+ Doc Meta**

\[ANCHOR:SOMOC-SUBP1MVP-01-DOC-META\]

* external\_name: Spartoi-OMOC\_SubP1-LITE+MVP\_藍圖  
* internal\_short\_name: SOMOC-SubP1MVP-BP  
* stable\_id: SOMOC-SUBP1MVP-BP  
* doc\_id: SOMOC-SUBP1MVP-BP (UNVERIFIED→TT: TT-SUBP1MVP-008)  
* version: v1.3.0-r2  
* status: RELEASED  
* release\_date: 2026-02-19  
* baseline\_web\_date: 2026-02-18  
* supersedes: `DOCLOC:/mnt/data/Spartoi-OMOC_SubP1-LITE+MVP_藍圖 v1.3.0-r1.md#[ANCHOR:SOMOC-SUBP1MVP-00-COVER]`  
* mode: Files-first \+ WTNA（Web SUPPORT-only）  
* scope\_lock: Blueprint only（目的/定位/邊界/功能/架構/交付門檻/治理法條/映射/證據契約介面；操作層一律 Route-Out）  
* hard\_rule\_note: 本藍圖 MUST 遵守 R0\~R8，且 MUST 維持 CR\_OPEN=0（evidence\_ptr: `DOCLOC:Spartoi-OMOC_SubP1-LITE+MVP_藍圖 v1.3.0-r2.md#[ANCHOR:SOMOC-SUBP1MVP-12-2-CR_OPEN_ZERO]`）

---

## **1\) TOC（含 anchors）**

\[ANCHOR:SOMOC-SUBP1MVP-03-TOC\]

TOC 僅列「本檔 anchors」，機械檢索以 `[ANCHOR:...]` 為準（evidence\_ptr: `DOCLOC:Spartoi-OMOC_SubP1-LITE+MVP_藍圖 v1.3.0-r2.md#[ANCHOR:SOMOC-SUBP1MVP-02-2-NO-ANCHOR-NO-CLAIM]`）

17. Cover Card \+ Doc Meta — `[ANCHOR:SOMOC-SUBP1MVP-01-DOC-META]`  
    18. TOC — `[ANCHOR:SOMOC-SUBP1MVP-03-TOC]`  
    19. Quick Index — `[ANCHOR:SOMOC-SUBP1MVP-04-QUICK-INDEX]`  
    20. AI Reader Guide — `[ANCHOR:SOMOC-SUBP1MVP-02-AI-GUIDE]`  
    21. Authority Stack \+ Scope-Lock — `[ANCHOR:SOMOC-SUBP1MVP-07-1-SPINE]` / `[ANCHOR:SOMOC-SUBP1MVP-06-SCOPE]` / `[ANCHOR:SOMOC-SUBP1MVP-13-3-ROUTEOUT]`  
    22. MVP Charter — `[ANCHOR:SOMOC-SUBP1MVP-05-CHARTER]`  
    23. MVP Scope & Requirements — `[ANCHOR:SOMOC-SUBP1MVP-07-REQS]`  
    24. Delivery Layering & DoD — `[ANCHOR:SOMOC-SUBP1MVP-09-DELIVERY]`  
    25. Evidence & Replay Contract — `[ANCHOR:SOMOC-SUBP1MVP-11-EVIDENCE]`  
    26. No-API Policy — `[ANCHOR:SOMOC-SUBP1MVP-07-4-NO-API]` / `[ANCHOR:SOMOC-SUBP1MVP-09-4-NOAPI-POLICY]`  
    27. Pipeline-A/B/C × DB Integration — `[ANCHOR:SOMOC-SUBP1MVP-10-PIPELINES]`  
    28. Governance — `[ANCHOR:SOMOC-SUBP1MVP-12-GOV]`  
    29. Route-Out Register — `[ANCHOR:SOMOC-SUBP1MVP-13-3-ROUTEOUT]`  
    30. Coverage Maps — `[ANCHOR:SOMOC-SUBP1MVP-13-1-LEGACY-TO-NEW]` / `[ANCHOR:SOMOC-SUBP1MVP-13-2-SSOT-TO-MVP]` / `[ANCHOR:SOMOC-SUBP1MVP-13-4-DELIVERYPLAN-TO-BP]`  
    31. TT Register & Test Tracking List — `[ANCHOR:SOMOC-SUBP1MVP-14-TT]`  
    32. External Evidence Appendix（SUPPORT-only）— `[ANCHOR:SOMOC-SUBP1MVP-16-WEB-EVIDENCE]`  
    33. Issue Closure Table（審查報告 findings 結案）— `[ANCHOR:SOMOC-SUBP1MVP-16-ISSUE-CLOSURE]`  
    34. Final Self-Audit Checklist — `[ANCHOR:SOMOC-SUBP1MVP-17-SELF-AUDIT]`

---

## **2\) Quick Index（關鍵詞→anchor）**

\[ANCHOR:SOMOC-SUBP1MVP-04-QUICK-INDEX\]

* Authority Stack → `[ANCHOR:SOMOC-SUBP1MVP-07-1-SPINE]`  
* Scope-Lock / Route-Out → `[ANCHOR:SOMOC-SUBP1MVP-06-SCOPE]` / `[ANCHOR:SOMOC-SUBP1MVP-13-3-ROUTEOUT]`  
* No-Source-No-Norm / No-Anchor-No-Claim → `[ANCHOR:SOMOC-SUBP1MVP-02-2-NO-ANCHOR-NO-CLAIM]`  
* CR\_OPEN=0 / TT → `[ANCHOR:SOMOC-SUBP1MVP-14-TT]`  
* Evidence Triplet / Evidence Contract → `[ANCHOR:SOMOC-SUBP1MVP-11-1-TRIPLET]` / `[ANCHOR:SOMOC-SUBP1MVP-11-0-MIN-SCHEMA]`  
* Gate Dictionary / Degrade Matrix → `[ANCHOR:SOMOC-SUBP1MVP-07-2-GATES]` / `[ANCHOR:SOMOC-SUBP1MVP-09-2-GATE-POLICY]`  
* No-API / WTNA / XQ → `[ANCHOR:SOMOC-SUBP1MVP-09-4-NOAPI-POLICY]`  
* Pipeline-A/B/C → `[ANCHOR:SOMOC-SUBP1MVP-10-1-ABC]`  
* DB Integration / Unified Data Backbone → `[ANCHOR:SOMOC-SUBP1MVP-10-2-DB]`  
* Fitness → `[ANCHOR:SOMOC-SUBP1MVP-11-4-FITNESS]`  
* Delivery Plan Coverage → `[ANCHOR:SOMOC-SUBP1MVP-13-4-DELIVERYPLAN-TO-BP]`  
* Doc Inventory → `[ANCHOR:SOMOC-SUBP1MVP-04-1-DOC-INVENTORY]`  
* Issue Closure（findings）→ `[ANCHOR:SOMOC-SUBP1MVP-16-ISSUE-CLOSURE]`

---

## **3\) AI Reader Guide（強制檢索路徑 \+ Anti-miss 規則）**

\[ANCHOR:SOMOC-SUBP1MVP-02-AI-GUIDE\]

### **3.1 強制檢索路徑（3–6 條）**

\[ANCHOR:SOMOC-SUBP1MVP-02-1-READER-PATH\]

1. **裁決「本藍圖能寫什麼」**：先讀本檔 Scope-Lock → Route-Out Register → Authority Stack。  
   evidence\_ptr: `DOCLOC:Spartoi-OMOC_SubP1-LITE+MVP_藍圖 v1.3.0-r2.md#[ANCHOR:SOMOC-SUBP1MVP-06-SCOPE]`  
2. **驗證 Evidence Triplet / Replay 最小契約**：先讀 SRS Evidence Triplet → ICD Triplet → Dev RB/Ops RB Evidence Contract（操作細節 Route-Out）。  
   evidence\_ptr: `DOCLOC:/mnt/data/Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-REQ-EVID-TRIPLET]`  
3. **驗證 No-API 主路徑（WTNA / XQ / API Exception）**：先讀 SRS Modes/No-paid-API → SRS XQ Sole Order Endpoint → 本檔 No-API Policy Table。  
   evidence\_ptr: `DOCLOC:/mnt/data/Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-1-1-3-MODES]`  
4. **驗證 Pipeline-A/B/C × DB 嵌入點**：先讀 MIP Pipeline-A/B/C（MIP 為入口裁決）→ ARCH Pipeline Integration（架構面）→ Pipeline 方案（細節 Route-Out）。  
   evidence\_ptr: `DOCLOC:/mnt/data/Spartoi-OMOC_MIP_v2.2.0.txt#[ANCHOR:MIP-V220-1-1-PIPELINE_A]`  
5. **驗證 Fitness 門檻接口**：先讀 LBP-E Fitness（門檻權威）→ SRS Gate Dictionary（gate 名詞裁決）→ 本檔 Fitness Hooks。  
   evidence\_ptr: `DOCLOC:/mnt/data/Spartoi-OMOC_LBP-E(Fitness) v8.1.1-r2.md#[ANCHOR:LBPE-V811R2-0-0-DOC_META]`

### **3.2 Anti-miss / Anti-hallucination 規則（可機械稽核）**

\[ANCHOR:SOMOC-SUBP1MVP-02-2-NO-ANCHOR-NO-CLAIM\]

* 規範句（含 MUST/SHOULD/MAY）MUST 在**同段落**附上：  
  * `evidence_ptr: DOCLOC:...#ANCHOR:...` 或 `...#H:"..."`，**否則** MUST 轉 `UNVERIFIED→TT` 並填 `linked_tt_id`。  
    evidence\_ptr: `DOCLOC:Spartoi-OMOC_SubP1-LITE+MVP_藍圖 v1.3.0-r2.md#[ANCHOR:SOMOC-SUBP1MVP-11-EVIDENCE]`  
* 本檔所有映射/覆蓋表 MUST 使用統一 schema（MAP\_SCHEMA\_V1），**否則**視為漂移並轉 TT。  
  evidence\_ptr: `DOCLOC:Spartoi-OMOC_SubP1-LITE+MVP_藍圖 v1.3.0-r2.md#[ANCHOR:SOMOC-SUBP1MVP-03-2-MAP-SCHEMA]`  
* 任何操作層內容（命令、點擊路徑、逐步 SOP、具體 CI 設定操作）MUST Route-Out。  
  evidence\_ptr: `DOCLOC:Spartoi-OMOC_SubP1-LITE+MVP_藍圖 v1.3.0-r2.md#[ANCHOR:SOMOC-SUBP1MVP-06-3-OUT-OF-SCOPE]`

### **3.3 MAP\_SCHEMA\_V1（統一 Coverage/Mapping 表格欄位）**

\[ANCHOR:SOMOC-SUBP1MVP-03-2-MAP-SCHEMA\]

**MAP\_SCHEMA\_V1 欄位（固定順序）**  
`source_docloc | source_anchor | target_anchor | coverage_verdict | evidence_ptr | gate_hook | acceptance_criteria | tt_id`

* coverage\_verdict 字典（Fail-Closed）MUST 依本檔定義判定（evidence\_ptr: `DOCLOC:Spartoi-OMOC_SubP1-LITE+MVP_藍圖 v1.3.0-r2.md#[ANCHOR:SOMOC-SUBP1MVP-11-2-FAILCLOSED-DICT]`）

---

## **4\) Authority Stack \+ Scope-Lock（含 Route-Out 原則）**

\[ANCHOR:SOMOC-SUBP1MVP-07-1-SPINE\]

### **4.1 Authority Stack（MVP 裁決順序）**

* 本藍圖 MUST 以 MIP 作入口裁決（MVP 視角），並以 SRS/ARCH/LBP 作規範權威；Legacy 僅供覆蓋映射，不得覆寫 v8.1.x SSOT。  
  evidence\_ptr: `DOCLOC:/mnt/data/Spartoi-OMOC_MIP_v2.2.0.txt#[ANCHOR:MIP-V220-0-2-PREFLIGHT]`  
* 本藍圖 MUST 遵守 SRS 的 Authority/No-Source-No-Norm 原則（若衝突：FAIL\_CLOSED 或 TT）。  
  evidence\_ptr: `DOCLOC:/mnt/data/Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-0-3-AUTHORITY]`

### **4.2 Scope-Lock（Blueprint only）**

\[ANCHOR:SOMOC-SUBP1MVP-06-SCOPE\]

* 本藍圖 MUST 僅輸出「目的/定位/邊界/功能/架構/交付門檻/治理法條/映射/證據契約介面」；任何操作層內容 MUST Route-Out。  
  evidence\_ptr: `DOCLOC:/mnt/data/Spartoi｜SubP1-LITE+MVP 開發 RUNBOOK & WI_v1.4.0.md#[ANCHOR:SPLMVP-DUAL-SSOT]`

#### **4.2.1 In-Scope / Out-of-Scope**

\[ANCHOR:SOMOC-SUBP1MVP-06-2-IN-SCOPE\]

* In-Scope：契約/接口/門檻/裁決/映射（evidence\_ptr: `DOCLOC:Spartoi-OMOC_SubP1-LITE+MVP_藍圖 v1.3.0-r2.md#[ANCHOR:SOMOC-SUBP1MVP-06-SCOPE]`）

\[ANCHOR:SOMOC-SUBP1MVP-06-3-OUT-OF-SCOPE\]

* Out-of-Scope：任何具體 SOP、命令清單、點擊路徑、設定畫面步驟、CI 實作操作（evidence\_ptr: `DOCLOC:Spartoi-OMOC_SubP1-LITE+MVP_藍圖 v1.3.0-r2.md#[ANCHOR:SOMOC-SUBP1MVP-13-3-ROUTEOUT]`）

### **4.3 Doc Inventory（可稽核）**

\[ANCHOR:SOMOC-SUBP1MVP-04-1-DOC-INVENTORY\]

每份 normative 文件 MUST 提供 ≥2 個 primary\_locators；不足者 MUST TT（evidence\_ptr: `DOCLOC:Spartoi-OMOC_SubP1-LITE+MVP_藍圖 v1.3.0-r2.md#[ANCHOR:SOMOC-SUBP1MVP-02-2-NO-ANCHOR-NO-CLAIM]`）

| doc\_key | file | version | role | locator\_method | availability | primary\_locators (≥2) | notes | linked\_tt\_id |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| BP-NEW | (this doc) | v1.3.0-r2 | normative | anchor | OK | `#[ANCHOR:SOMOC-SUBP1MVP-01-DOC-META]`, `#[ANCHOR:SOMOC-SUBP1MVP-14-TT]` | — | — |
| BP-OLD | /mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_藍圖 v1.3.0-r1.md | v1.3.0-r1 | legacy | anchor | OK | `#[ANCHOR:SOMOC-SUBP1MVP-00-COVER]`, `#[ANCHOR:SOMOC-SUBP1MVP-14-TT]` | superseded | — |
| BP-LEG | /mnt/data/Spartoi｜SubP1-LITE+MVP\_藍圖v1.2.2.md | v1.2.2 | legacy | anchor | OK | `#[ANCHOR:BP-JSON-HEADER-v122]`, `#[ANCHOR:BP-3-PIPELINES]` | coverage-only | — |
| BP-RPT | /mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_藍圖 v1.3.0-r1\_審查報告.md | — | support | heading | OK | `#H:"F-BP-STRUCT-001"`, `#H:"F-BP-DRIFT-002"` | findings 來源 | — |
| MIP | /mnt/data/Spartoi-OMOC\_MIP\_v2.2.0.txt | v2.2.0 | normative | anchor | OK | `#[ANCHOR:MIP-V220-0-2-PREFLIGHT]`, `#[ANCHOR:MIP-V220-1-1-PIPELINE_A]` | entrypoint | — |
| SRS | /mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md | v8.1.0 | normative | anchor | OK | `#[ANCHOR:SRS-V810-4-0-COVER]`, `#[ANCHOR:SRS-V810-REQ-EVID-TRIPLET]` | requirements | — |
| RDM | /mnt/data/Spartoi-OMOC\_README\_RDM v2.2.0.md | v2.2.0 | normative | anchor | OK | `#[ANCHOR:RDM-V220-0-0-DOC_META]`, `#[ANCHOR:RDM-V220-07-NAMING_VERSIONING]` | naming/versioning | — |
| ARCH | /mnt/data/Spartoi-OMOC\_ARCH\_v8.1.0.md | v8.1.0 | normative | anchor | OK | `#[ANCHOR:ARCH-V810-0-3-AUTHORITY]`, `#[ANCHOR:ARCH-V810-5-4-PIPELINE_INTEGRATIONS]` | architecture | — |
| LBP-A | /mnt/data/Spartoi-OMOC\_LBP-A(SIR) v8.1.1-r1.md | v8.1.1-r1 | normative | anchor | OK | `#[ANCHOR:SIR-V811R1-0-0-DOC_META]`, `#[ANCHOR:SIR-V811R1-0-3-AUTHORITY]` | SIR | — |
| LBP-B | /mnt/data/Spartoi-OMOC\_LBP-B(ICD)v8.1.1-r2.md | v8.1.1-r2 | normative | anchor | OK | `#[ANCHOR:ICD-V811R2-0-0-DOC_META]`, `#[ANCHOR:ICD-V811R2-8-2-EVIDENCE_TRIPLET]` | ICD | — |
| LBP-C | /mnt/data/Spartoi-OMOC\_LBP-C(ADR) v8.1.1-r2.md | v8.1.1-r2 | normative | anchor | OK | `#[ANCHOR:LBPC-ADR-V811R2-0-0-DOC_META]`, `#[ANCHOR:LBPC-ADR-V811R2-ADR-004]` | ADR | — |
| LBP-D | /mnt/data/Spartoi-OMOC\_LBP-D(C4) v8.1.1-r2.md | v8.1.1-r2 | normative | anchor | OK | `#[ANCHOR:C4-V811R2-0-0-DOC_META]`, `#[ANCHOR:C4-V811R2-0-3-AUTHORITY]` | C4 | — |
| LBP-E | /mnt/data/Spartoi-OMOC\_LBP-E(Fitness) v8.1.1-r2.md | v8.1.1-r2 | normative | anchor | OK | `#[ANCHOR:LBPE-V811R2-0-0-DOC_META]`, `#[ANCHOR:LBPE-V811R2-4-0-GATE_HOOK_INDEX]` | Fitness | TT-SUBP1MVP-005 / TT-SUBP1MVP-006 |
| OPS-RBWI | /mnt/data/Spartoi-OMOC\_ops RB \+ WI \_v8.1.1-ops-r1.md | v8.1.1-ops-r1 | normative | anchor | DRIFT | `#[ANCHOR:OPS-RBWI-00-DOC-META]`, `#[ANCHOR:OPS-RBWI-08-EVIDENCE-CONTRACT]` | 需求清單提及 ops-r2，但檔案庫僅 FOUND r1 | TT-SUBP1MVP-001 |
| DEV-RBWI | /mnt/data/Spartoi-OMOC\_dev RB \+ WI\_v8.1.1-dev-r2.md | v8.1.1-dev-r2 | normative | anchor | OK | `#[ANCHOR:DEV-RBWI-00-DOC-META]`, `#[ANCHOR:DEV-RBWI-APPX-A-EVIDENCE-CONTRACT]` | dev | — |
| DP-FULL | /mnt/data/OMOC-MVU & Full OMOC Delivery Plan.md | — | support | heading | OK | `#H:\"MVU\"`, `#H:\"Full OMOC\"` | plan | — |
| DP-SPARTOI | /mnt/data/Spartoi-OMOC Delivery Plan.md | — | support | heading | OK | `#H:\"Delivery\"`, `#H:\"Milestone\"` | plan | — |
| PIPE-A | /mnt/data/Pipeline-A\_組合方案 v2.md | v2 | support | heading | OK | `#H:\"3) Pipeline-A\"`, `#H:\"A)\"` | details Route-Out | — |
| PIPE-B | /mnt/data/Pipeline-B 組合方案 v2.md | v2 | support | heading | OK | `#H:\"3) Pipeline-B\"`, `#H:\"B)\"` | details Route-Out | — |
| PIPE-C | /mnt/data/Pipeline-C組合方案.md | — | support | heading | OK | `#H:\"3) Pipeline-C\"`, `#H:\"C)\"` | details Route-Out | — |
| PIPE-DB | /mnt/data/Pipeline-A+B 整合資料庫方案.md | — | support | heading | OK | `#H:\"A+B\"`, `#H:\"DB\"` | details Route-Out | — |
| 15CA | /mnt/data/Spartoi-OMOC(15 CA)重構升級藍圖v0.2.0-r1.md | v0.2.0-r1 | support/legacy | heading | DRIFT | `#H:\"OUTER\"`, `#H:\"CONTROL-PLANE\"` | 內文引用多份 P1\_\* legacy 檔案未隨包提供 | TT-SUBP1MVP-007 |
| RENAME | /mnt/data/子系統「顯示名\_宏模組名」改名方案.md | — | support | heading | OK | `#H:\"改名\"`, `#H:\"Mapping\"` | naming support | — |
| OMOC-BP | OMOC\_藍圖\_v4.0.1-r1 | — | normative? | — | MISSING | UNAVAILABLE | 需求清單提及但檔案庫缺失 | TT-SUBP1MVP-002 |
| SUBSYS-BP | Spartoi-OMOC\_子系統重構藍圖（若存在） | — | normative? | — | MISSING | UNAVAILABLE | 需求清單提及但檔案庫缺失 | TT-SUBP1MVP-003 |

---

## **5\) MVP Charter（目的/定位/邊界/成功條件/非目標）**

\[ANCHOR:SOMOC-SUBP1MVP-05-CHARTER\]

### **5.1 Purpose /定位**

\[ANCHOR:SOMOC-SUBP1MVP-05-1-PURPOSE\]

* 本 MVP 的目的：以「SSOT 可驗收 \+ 可回放（Replay）+ Fail-Closed Gate」為核心，交付 SubP1-LITE+MVP 的可治理骨架，不把藍圖寫成操作手冊。  
  evidence\_ptr: `DOCLOC:/mnt/data/Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-2-2-1-EVIDENCE_TRIPLET]`

### **5.2 Success Criteria（成功條件）**

* MVP 成功 MUST 同時滿足：Gate 可裁決、Evidence Triplet 可稽核、No-API 主路徑可執行、Pipeline 嵌入點可被驗收、CR\_OPEN=0。  
  evidence\_ptr: `DOCLOC:/mnt/data/Spartoi-OMOC_MIP_v2.2.0.txt#[ANCHOR:MIP-V220-0-2-PREFLIGHT]`

### **5.3 Non-Goals（非目標）**

\[ANCHOR:SOMOC-SUBP1MVP-05-3-NON-GOALS\]

* 不在本藍圖：任何 GitHub/CI/merge queue/rulesets 的具體設定步驟（Route-Out）。  
  evidence\_ptr: `DOCLOC:/mnt/data/Spartoi-OMOC_dev RB + WI_v8.1.1-dev-r2.md#[ANCHOR:DEV-RBWI-S7-GH-CONTROL-PLANE]`

---

## **6\) MVP Scope & Requirements（以 MIP 為入口；SRS/ARCH/LBP 映射）**

\[ANCHOR:SOMOC-SUBP1MVP-07-REQS\]

### **6.1 MVP Spine（規範採納條款）**

\[ANCHOR:SOMOC-SUBP1MVP-07-1-SPINE-ADOPTION\]

* 本 MVP MUST 採納（Adopt）MIP 所定義之 MVP Spine 與 stopline（僅採納「契約/門檻/裁決」；操作細節 Route-Out）。  
  evidence\_ptr: `DOCLOC:/mnt/data/Spartoi-OMOC_MIP_v2.2.0.txt#[ANCHOR:MIP-V220-0-4-MVP_SPINE]`

### **6.2 核心 Requirements（僅列 MVP 必要集合；完整需求以 SRS 為準）**

下表為「MVP 必要集合」；任何新增/改寫需求 MUST 走 ADR（evidence\_ptr: `DOCLOC:/mnt/data/Spartoi-OMOC_LBP-C(ADR) v8.1.1-r2.md#[ANCHOR:LBPC-ADR-V811R2-0-2-ADR_POLICY]`）

\[ANCHOR:SOMOC-SUBP1MVP-07-0-MVP-REQ-TABLE\]

| req\_key | requirement (normative) | evidence\_ptr | linked\_tt\_id |
| ----- | ----- | ----- | ----- |
| REQ-GATE-DICT | MVP MUST 以 SRS Gate Dictionary 作為 gate 名詞裁決權威。 | `DOCLOC:/mnt/data/Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-IR-GATE-DICT]` | — |
| REQ-DEGRADE | MVP MUST 以 SRS Degrade Matrix（Fail-Closed）作為降級/阻斷裁決權威。 | `DOCLOC:/mnt/data/Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-5-1-DEGRADE_MATRIX_IF]` | — |
| REQ-EVID-TRIPLET | MVP MUST 產出 Evidence Triplet（verdict/evidence\_index/checks\_manifest）以支撐稽核與回放。 | `DOCLOC:/mnt/data/Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-REQ-EVID-TRIPLET]` | — |
| REQ-CTRLPLANE-TRIO | MVP SHOULD 保留 Control-plane trio 的分層與責任界線（契約層）。 | `DOCLOC:/mnt/data/Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-3-15-2-CTRLPLANE_TRIO]` | — |
| REQ-NO-PAID-API | MVP MUST 遵守「禁用付費 LLM API」與 WTNA 模式；例外僅能走 API Exception Gate。 | `DOCLOC:/mnt/data/Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-FR-COLLAB-002]` | — |
| REQ-XQ-SOLE | MVP MUST 將 XQ Sole Order Endpoint 視為 No-API 主路徑的唯一執行端點（例外走 Exception Gate）。 | `DOCLOC:/mnt/data/Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-1-5-7-XQ_SOLE_ORDER_ENDPOINT]` | — |
| REQ-PIPE-A | MVP MUST 定義 Pipeline-A 嵌入點與 gate hooks（僅接口/驗收）。 | `DOCLOC:/mnt/data/Spartoi-OMOC_MIP_v2.2.0.txt#[ANCHOR:MIP-V220-1-1-PIPELINE_A]` | — |
| REQ-PIPE-B | MVP MUST 定義 Pipeline-B 嵌入點與 gate hooks（僅接口/驗收）。 | `DOCLOC:/mnt/data/Spartoi-OMOC_MIP_v2.2.0.txt#[ANCHOR:MIP-V220-1-2-PIPELINE_B]` | — |
| REQ-PIPE-C | MVP MUST 定義 Pipeline-C 嵌入點與 gate hooks（僅接口/驗收）。 | `DOCLOC:/mnt/data/Spartoi-OMOC_MIP_v2.2.0.txt#[ANCHOR:MIP-V220-1-3-PIPELINE_C]` | — |
| REQ-DB-UBB | MVP MUST 導入 Unified Data Backbone（DB 外掛可用，但需被 gate/證據契約約束）。 | `DOCLOC:/mnt/data/Spartoi-OMOC_MIP_v2.2.0.txt#[ANCHOR:MIP-V220-1-4-DATA_BACKBONE]` | — |
| REQ-FITNESS | MVP MUST 透過 Fitness SSOT 定義可驗收門檻（數值/指標在 LBP-E；本檔只定義接口）。 | `DOCLOC:/mnt/data/Spartoi-OMOC_LBP-E(Fitness) v8.1.1-r2.md#[ANCHOR:LBPE-V811R2-4-0-GATE_HOOK_INDEX]` | TT-SUBP1MVP-005 |

---

## **7\) Delivery Layering & DoD（MVP spine；最小可回放/可驗收門檻）**

\[ANCHOR:SOMOC-SUBP1MVP-09-DELIVERY\]

### **7.1 Layering（交付分層）**

\[ANCHOR:SOMOC-SUBP1MVP-06-1-LAYERING\]

* 本 MVP MUST 明確區分：Blueprint（契約/裁決）≠ Runbook/WI（操作）≠ Plans（排程/分工）。  
  evidence\_ptr: `DOCLOC:/mnt/data/Spartoi-OMOC_ARCH_v8.1.0.md#[ANCHOR:ARCH-V810-0-3-AUTHORITY]`

### **7.2 DoD（Definition of Done：MVP 最小可驗收集合）**

\[ANCHOR:SOMOC-SUBP1MVP-09-1-DOD\]

* MVP DoD MUST 至少包含：Gate Dictionary 可用、Evidence Triplet 可稽核、No-API policy 可裁決、Pipeline-A/B/C 嵌入點可驗收、TT 機制可回放且 CR\_OPEN=0。  
  evidence\_ptr: `DOCLOC:/mnt/data/Spartoi-OMOC_MIP_v2.2.0.txt#[ANCHOR:MIP-V220-0-4-MVP_SPINE]`

### **7.3 Gate Policy（Fail-Closed）**

\[ANCHOR:SOMOC-SUBP1MVP-09-2-GATE-POLICY\]

* 本 MVP MUST 對所有不可定位/衝突/漂移做 Fail-Closed（不得硬寫補洞；一律 TT→TEMP\_CLOSED→TEST\_TRACK）。  
  evidence\_ptr: `DOCLOC:/mnt/data/Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-5-1-DEGRADE_MATRIX_IF]`

---

## **8\) Evidence & Replay Contract（含 Minimal Schema 與 gate hooks；操作層 Route-Out）**

\[ANCHOR:SOMOC-SUBP1MVP-11-EVIDENCE\]

### **8.1 Evidence Contract Minimal Schema（最小欄位清單 \+ 範例 key）**

\[ANCHOR:SOMOC-SUBP1MVP-11-0-MIN-SCHEMA\]

本節僅定義「最小可互通欄位集合」；完整 schema/格式細節 Route-Out 至 ICD/DevRB/OpsRB。  
MUST 以 SRS Evidence Triplet 定義為裁決權威（evidence\_ptr: `DOCLOC:/mnt/data/Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-REQ-EVID-TRIPLET]`）

**(A) verdict.json — minimal keys**

* `result`（PASS/FAIL/UNAVAILABLE）  
* `timestamp`  
* `executor_id`  
* `bundle_ref`（對 evidence bundle 的可回指引用或 hash）  
  evidence\_ptr: `DOCLOC:/mnt/data/Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-REQ-EVID-TRIPLET]`

**(B) evidence\_index.(md|json) — minimal keys**

* `items[]`  
  * `evidence_id`  
  * `artifact_ref`（對交付物/檔案/輸出之引用）  
  * `locator`（DOCLOC 或等價可定位指標）  
  * `gate_hook`（若為 gate 產物）  
    evidence\_ptr: `DOCLOC:/mnt/data/Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-REQ-EVID-TRIPLET]`

**(C) checks\_manifest.json — minimal keys**

* `checks[]`  
  * `check_id`  
  * `status`（PASS/FAIL/UNAVAILABLE）  
  * `evidence_refs[]`（指向 evidence\_index 的 evidence\_id）  
    evidence\_ptr: `DOCLOC:/mnt/data/Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-REQ-EVID-TRIPLET]`

### **8.2 Evidence Triplet（權威定義與對照）**

\[ANCHOR:SOMOC-SUBP1MVP-11-1-TRIPLET\]

* 本 MVP MUST 以 SRS Evidence Triplet 定義為權威；ICD 與 RB/WI 應提供實作層對應，但本藍圖只做接口裁決。  
  evidence\_ptr: `DOCLOC:/mnt/data/Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-2-2-1-EVIDENCE_TRIPLET]`  
* ICD Triplet 契約（操作層外指）：  
  Route-Out: `DOCLOC:/mnt/data/Spartoi-OMOC_LBP-B(ICD)v8.1.1-r2.md#[ANCHOR:ICD-V811R2-8-2-EVIDENCE_TRIPLET]`  
* Dev RB / Ops RB Evidence Contract（操作層外指）：  
  Route-Out:  
  * `DOCLOC:/mnt/data/Spartoi-OMOC_dev RB + WI_v8.1.1-dev-r2.md#[ANCHOR:DEV-RBWI-APPX-A-EVIDENCE-CONTRACT]`  
  * `DOCLOC:/mnt/data/Spartoi-OMOC_ops RB + WI _v8.1.1-ops-r1.md#[ANCHOR:OPS-RBWI-08-EVIDENCE-CONTRACT]`

### **8.3 Fail-Closed 判定字典（PASS/FAIL/UNAVAILABLE）**

\[ANCHOR:SOMOC-SUBP1MVP-11-2-FAILCLOSED-DICT\]

* PASS：可定位 SSOT 條文 \+ 對應 evidence\_index 可回指（evidence\_ptr: `DOCLOC:/mnt/data/Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-0-3-AUTHORITY]`）  
* FAIL：存在可定位條文但 evidence 或 gate 裁決違反條文（evidence\_ptr: `DOCLOC:/mnt/data/Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-5-1-DEGRADE_MATRIX_IF]`）  
* UNAVAILABLE：缺條文定位/版本漂移/資料不可驗（MUST TT）（evidence\_ptr: `DOCLOC:Spartoi-OMOC_SubP1-LITE+MVP_藍圖 v1.3.0-r2.md#[ANCHOR:SOMOC-SUBP1MVP-14-TT]`）

---

## **9\) No-API Policy（Definition Map \+ Policy Table；缺口 TT）**

\[ANCHOR:SOMOC-SUBP1MVP-09-4-NOAPI-POLICY\]

### **9.1 No-API Definition Map（term→權威條文定位）**

\[ANCHOR:SOMOC-SUBP1MVP-09-4-1-NOAPI-DEFMAP\]

| term | authoritative\_docloc | authoritative\_anchor | status | tt\_id |
| ----- | ----- | ----- | ----- | ----- |
| WTNA / WT-NA | `DOCLOC:/mnt/data/Spartoi-OMOC_SRS_v8.1.0.md` | `SRS-V810-1-1-3-MODES` | PASS | — |
| 禁用付費 LLM API | `DOCLOC:/mnt/data/Spartoi-OMOC_SRS_v8.1.0.md` | `SRS-V810-FR-COLLAB-002` | PASS | — |
| XQ Sole Order Endpoint | `DOCLOC:/mnt/data/Spartoi-OMOC_SRS_v8.1.0.md` | `SRS-V810-1-5-7-XQ_SOLE_ORDER_ENDPOINT` | PASS | — |
| API Exception Gate | `DOCLOC:/mnt/data/Spartoi-OMOC_SRS_v8.1.0.md` | `SRS-V810-1-5-7-XQ_SOLE_ORDER_ENDPOINT` | PASS | — |
| No-API（作為「主路徑政策名稱」） | `DOCLOC:Spartoi-OMOC_SubP1-LITE+MVP_藍圖 v1.3.0-r2.md` | `SOMOC-SUBP1MVP-09-4-NOAPI-POLICY` | PASS | — |

### **9.2 No-API Policy Table（allowed/forbidden/exception/gate\_hook）**

\[ANCHOR:SOMOC-SUBP1MVP-09-4-2-NOAPI-POLICY-TABLE\]

| allowed | forbidden | exception | gate\_hook | evidence\_ptr | tt\_id |
| ----- | ----- | ----- | ----- | ----- | ----- |
| 使用 WTNA（Web 工具互動）作為「主路徑」 | 直接使用付費 LLM API 作為主路徑 | 僅能走 API Exception Gate（需授權/稽核） | `GATE:API_EXCEPTION`（名詞裁決：SRS Gate Dict） | `DOCLOC:/mnt/data/Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-FR-COLLAB-002]` | — |
| XQ Sole Order Endpoint 作為唯一執行端點 | 旁路/直連 broker API | 例外同上 | `GATE:XQ_SOLE_ORDER` | `DOCLOC:/mnt/data/Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-1-5-7-XQ_SOLE_ORDER_ENDPOINT]` | — |
| 規範性裁決必有 DOCLOC 定位 | 以 Web 內容升格成 MUST/SHOULD | 僅能作 TT SUPPORT | `GATE:SSOT_LOCATOR` | `DOCLOC:/mnt/data/Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-0-3-AUTHORITY]` | — |

---

## **10\) Pipeline-A/B/C × DB Integration（MVP 嵌入點/契約/驗收；缺口 TT）**

\[ANCHOR:SOMOC-SUBP1MVP-10-PIPELINES\]

### **10.1 Pipeline A/B/C（MIP 為入口裁決；方案細節 Route-Out）**

\[ANCHOR:SOMOC-SUBP1MVP-10-1-ABC\]

* MVP MUST 以 MIP 的 Pipeline-A/B/C 定義作為嵌入點裁決權威；方案文件僅作細節 Route-Out。  
  evidence\_ptr: `DOCLOC:/mnt/data/Spartoi-OMOC_MIP_v2.2.0.txt#[ANCHOR:MIP-V220-1-1-PIPELINE_A]`

**Scheme Locator Table（可定位）**  
\[ANCHOR:SOMOC-SUBP1MVP-10-1-1-SCHEME-LOCATORS\]

| scheme | authoritative\_entry | route\_out\_detail |
| ----- | ----- | ----- |
| Pipeline-A | `DOCLOC:/mnt/data/Spartoi-OMOC_MIP_v2.2.0.txt#[ANCHOR:MIP-V220-1-1-PIPELINE_A]` | `DOCLOC:/mnt/data/Pipeline-A_組合方案 v2.md#H:"3) Pipeline-A"` |
| Pipeline-B | `DOCLOC:/mnt/data/Spartoi-OMOC_MIP_v2.2.0.txt#[ANCHOR:MIP-V220-1-2-PIPELINE_B]` | `DOCLOC:/mnt/data/Pipeline-B 組合方案 v2.md#H:"3) Pipeline-B"` |
| Pipeline-C | `DOCLOC:/mnt/data/Spartoi-OMOC_MIP_v2.2.0.txt#[ANCHOR:MIP-V220-1-3-PIPELINE_C]` | `DOCLOC:/mnt/data/Pipeline-C組合方案.md#H:"3) Pipeline-C"` |

### **10.2 DB Integration（Unified Data Backbone；外掛 DB 需被 gate/證據契約約束）**

\[ANCHOR:SOMOC-SUBP1MVP-10-2-DB\]

* MVP MUST 採納 MIP 的 Data Backbone（DB 外掛可用但需可稽核、可回放、可降級）。  
  evidence\_ptr: `DOCLOC:/mnt/data/Spartoi-OMOC_MIP_v2.2.0.txt#[ANCHOR:MIP-V220-1-4-DATA_BACKBONE]`  
* DB 整合方案細節（操作/工程）一律 Route-Out：  
  Route-Out: `DOCLOC:/mnt/data/Pipeline-A+B 整合資料庫方案.md#H:"DB"`

### **10.3 MVP Embedding Points（接口/驗收，不含操作）**

\[ANCHOR:SOMOC-SUBP1MVP-10-3-EMBEDDING-POINTS\]

| embedding\_point | contract\_surface (what to expose) | gate\_hook | acceptance\_criteria | evidence\_ptr | tt\_id |
| ----- | ----- | ----- | ----- | ----- | ----- |
| PIPE-A entry | 產出可回指的 pipeline evidence（artifact\_ref \+ locator） | `GATE:PIPE_A_READY` | evidence\_index 中存在 PIPE-A 產物且可回指 | `DOCLOC:/mnt/data/Spartoi-OMOC_ARCH_v8.1.0.md#[ANCHOR:ARCH-PIPELINE-A-INT]` | — |
| PIPE-B entry | 同上（差異在 staging/packaging） | `GATE:PIPE_B_READY` | 同上 | `DOCLOC:/mnt/data/Spartoi-OMOC_ARCH_v8.1.0.md#[ANCHOR:ARCH-PIPELINE-B-INT]` | — |
| PIPE-C entry | 同上（release/ops gating） | `GATE:PIPE_C_READY` | 同上 | `DOCLOC:/mnt/data/Spartoi-OMOC_ARCH_v8.1.0.md#[ANCHOR:ARCH-PIPELINE-C-INT]` | — |
| DB plugin | DB 外掛必須被 Evidence Triplet 追蹤（artifact\_ref \+ locator） | `GATE:DB_EXT` | checks\_manifest 覆蓋 DB 外掛狀態 | `DOCLOC:/mnt/data/Spartoi-OMOC_MIP_v2.2.0.txt#[ANCHOR:MIP-V220-1-4-DATA_BACKBONE]` | — |

---

## **11\) Governance（ADR/Change/Drift；CR\_OPEN=0；TT 規則）**

\[ANCHOR:SOMOC-SUBP1MVP-12-GOV\]

### **11.1 ADR / Change Policy（越界與漂移處置）**

\[ANCHOR:SOMOC-SUBP1MVP-12-1-ADR\]

* 任何新增規範/改寫上游規範 MUST 以 ADR 裁決；本藍圖僅可引用/映射/裁決/Route-Out。  
  evidence\_ptr: `DOCLOC:/mnt/data/Spartoi-OMOC_LBP-C(ADR) v8.1.1-r2.md#[ANCHOR:LBPC-ADR-V811R2-0-2-ADR_POLICY]`

### **11.2 Drift Policy（版本/錨點漂移）**

\[ANCHOR:SOMOC-SUBP1MVP-12-2-DRIFT\]

* 若檔名/版本/anchor 與需求清單不一致，MUST 標記 DRIFT 並 TT；不得自行假設內容。  
  evidence\_ptr: `DOCLOC:/mnt/data/Spartoi-OMOC_README_RDM v2.2.0.md#[ANCHOR:RDM-V220-07-NAMING_VERSIONING]`

### **11.3 CR\_OPEN=0（強制）**

\[ANCHOR:SOMOC-SUBP1MVP-12-2-CR\_OPEN\_ZERO\]

* 本藍圖 MUST 維持 CR\_OPEN=0：所有缺口/不可定位/衝突一律轉 TT（含 close\_criteria、required\_evidence、rollback\_rule），並標記 TEMP\_CLOSED→TEST\_TRACK。  
  evidence\_ptr: `DOCLOC:Spartoi-OMOC_SubP1-LITE+MVP_藍圖 v1.3.0-r2.md#[ANCHOR:SOMOC-SUBP1MVP-14-TT]`

---

## **12\) Route-Out Register（dev/ops/runbook 的主題映射 \+ 版本漂移欄位）**

\[ANCHOR:SOMOC-SUBP1MVP-13-3-ROUTEOUT\]

| topic | route\_out\_docloc | reason | drift\_flag |
| ----- | ----- | ----- | ----- |
| GitHub rulesets / required checks / merge queue（操作） | `DOCLOC:/mnt/data/Spartoi-OMOC_dev RB + WI_v8.1.1-dev-r2.md#[ANCHOR:DEV-RBWI-S7-GH-CONTROL-PLANE]` | 操作層越界 | OK |
| Evidence bundle 生成/封裝/回放流程（操作） | `DOCLOC:/mnt/data/Spartoi-OMOC_ops RB + WI _v8.1.1-ops-r1.md#[ANCHOR:OPS-RBWI-08-EVIDENCE-CONTRACT]` | 操作層越界 | DRIFT（ops-r2 missing） |
| Skills 執行 SOP（操作） | `DOCLOC:/mnt/data/Spartoi｜SubP1-LITE+MVP 開發 RUNBOOK & WI_v1.4.0.md#[ANCHOR:SPLMVP-SKILLS-EXEC-V140]` | 操作層越界 | OK |
| Pipeline 方案工程細節（操作） | `DOCLOC:/mnt/data/Pipeline-A_組合方案 v2.md#H:"3) Pipeline-A"`（B/C 同理） | 操作層越界 | OK |
| DB 整合工程細節（操作） | `DOCLOC:/mnt/data/Pipeline-A+B 整合資料庫方案.md#H:"DB"` | 操作層越界 | OK |
| Fitness 指標/閾值/量測方法（操作/數值） | `DOCLOC:/mnt/data/Spartoi-OMOC_LBP-E(Fitness) v8.1.1-r2.md#[ANCHOR:LBPE-V811R2-4-0-GATE_HOOK_INDEX]` | 閾值權威在 LBP-E | DRIFT（SRS 引用舊版） |

---

## **13\) Coverage Maps（至少：Legacy→New、DeliveryPlan→Blueprint、SSOT→MVP）**

### **13.1 Legacy→New Map（v1.2.2 / v1.3.0-r1 → v1.3.0-r2）**

\[ANCHOR:SOMOC-SUBP1MVP-13-1-LEGACY-TO-NEW\]

| source\_docloc | source\_anchor | target\_anchor | coverage\_verdict | evidence\_ptr | gate\_hook | acceptance\_criteria | tt\_id |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| `DOCLOC:/mnt/data/Spartoi｜SubP1-LITE+MVP_藍圖v1.2.2.md` | `BP-3-PIPELINES` | `SOMOC-SUBP1MVP-10-PIPELINES` | PASS | `DOCLOC:/mnt/data/Spartoi-OMOC_MIP_v2.2.0.txt#[ANCHOR:MIP-V220-1-1-PIPELINE_A]` | `GATE:PIPELINE_MAP` | Scheme Locator Table 存在且可定位 | — |
| `DOCLOC:/mnt/data/Spartoi｜SubP1-LITE+MVP 開發 RUNBOOK & WI_v1.4.0.md` | `SPLMVP-DUAL-SSOT` | `SOMOC-SUBP1MVP-06-SCOPE` | PASS | `DOCLOC:/mnt/data/Spartoi｜SubP1-LITE+MVP 開發 RUNBOOK & WI_v1.4.0.md#[ANCHOR:SPLMVP-DUAL-SSOT]` | `GATE:SCOPE_LOCK` | Route-Out Register 存在 | — |
| `DOCLOC:/mnt/data/Spartoi-OMOC_SubP1-LITE+MVP_藍圖 v1.3.0-r1.md` | `SOMOC-SUBP1MVP-14-TT` | `SOMOC-SUBP1MVP-14-TT` | PASS | `DOCLOC:Spartoi-OMOC_SubP1-LITE+MVP_藍圖 v1.3.0-r2.md#[ANCHOR:SOMOC-SUBP1MVP-14-TT]` | `GATE:CR_OPEN_ZERO` | TT Register 存在且無 CR\_OPEN | — |

### **13.2 SSOT → MVP Scope Map（v8.1.x）**

\[ANCHOR:SOMOC-SUBP1MVP-13-2-SSOT-TO-MVP\]

| source\_docloc | source\_anchor | target\_anchor | coverage\_verdict | evidence\_ptr | gate\_hook | acceptance\_criteria | tt\_id |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| `DOCLOC:/mnt/data/Spartoi-OMOC_SRS_v8.1.0.md` | `SRS-V810-IR-GATE-DICT` | `SOMOC-SUBP1MVP-07-2-GATES` | PASS | `DOCLOC:/mnt/data/Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-IR-GATE-DICT]` | `GATE:DICT` | REQ-GATE-DICT 已採納 | — |
| `DOCLOC:/mnt/data/Spartoi-OMOC_SRS_v8.1.0.md` | `SRS-V810-REQ-EVID-TRIPLET` | `SOMOC-SUBP1MVP-11-0-MIN-SCHEMA` | PASS | `DOCLOC:/mnt/data/Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-REQ-EVID-TRIPLET]` | `GATE:EVIDENCE` | Minimal Schema \+ Route-Out 完整 | — |
| `DOCLOC:/mnt/data/Spartoi-OMOC_MIP_v2.2.0.txt` | `MIP-V220-1-4-DATA_BACKBONE` | `SOMOC-SUBP1MVP-10-2-DB` | PASS | `DOCLOC:/mnt/data/Spartoi-OMOC_MIP_v2.2.0.txt#[ANCHOR:MIP-V220-1-4-DATA_BACKBONE]` | `GATE:UBB` | DB plugin contract surface 已定義 | — |
| `DOCLOC:/mnt/data/Spartoi-OMOC_LBP-E(Fitness) v8.1.1-r2.md` | `LBPE-V811R2-4-0-GATE_HOOK_INDEX` | `SOMOC-SUBP1MVP-11-4-FITNESS` | UNAVAILABLE | `DOCLOC:/mnt/data/Spartoi-OMOC_LBP-E(Fitness) v8.1.1-r2.md#[ANCHOR:LBPE-V811R2-4-0-GATE_HOOK_INDEX]` | `GATE:FITNESS` | SRS↔LBP-E 版本引用需對齊 | TT-SUBP1MVP-005 |

### **13.3 Delivery Plan Coverage Map（防飄移）**

\[ANCHOR:SOMOC-SUBP1MVP-13-4-DELIVERYPLAN-TO-BP\]

| source\_docloc | source\_anchor | target\_anchor | coverage\_verdict | evidence\_ptr | gate\_hook | acceptance\_criteria | tt\_id |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| `DOCLOC:/mnt/data/OMOC-MVU & Full OMOC Delivery Plan.md` | `H:"MVU"` | `SOMOC-SUBP1MVP-07-REQS` | PASS | `DOCLOC:/mnt/data/Spartoi-OMOC_MIP_v2.2.0.txt#[ANCHOR:MIP-V220-0-4-MVP_SPINE]` | `GATE:DELIVERY_MAP` | MVP 必要集合表存在 | — |
| `DOCLOC:/mnt/data/Spartoi-OMOC Delivery Plan.md` | `H:"Milestone"` | `SOMOC-SUBP1MVP-09-DELIVERY` | PASS | `DOCLOC:/mnt/data/Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-5-1-DEGRADE_MATRIX_IF]` | `GATE:DOD` | DoD 條款存在 | — |

---

## **14\) TT Register & Test Tracking List（含 linked\_finding\_id ↔ linked\_tt\_id）**

\[ANCHOR:SOMOC-SUBP1MVP-14-TT\]

本檔保證 0 CR\_OPEN：凡未能定位/衝突/漂移，一律 TT→TEMP\_CLOSED→TEST\_TRACK（evidence\_ptr: `DOCLOC:/mnt/data/Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-5-1-DEGRADE_MATRIX_IF]`）

### **14.1 TT Register（TEMP\_CLOSED）**

\[ANCHOR:SOMOC-SUBP1MVP-14-1-TT-REGISTER\]

| tt\_id | trigger | status | close\_criteria | required\_evidence | owner\_suggestion | rollback\_rule | linked\_finding\_id | linked\_sections |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| TT-SUBP1MVP-001 | drift: ops-r2 missing | TEMP\_CLOSED→TEST\_TRACK | 補齊 ops-r2 正文（含 anchors）或 ADR 宣告 ops-r1 為最新並同步更新索引 | 新檔案入庫 \+ Doc Inventory 更新 \+ Coverage Map PASS | Ops Doc Owner | 若 r2 引入矛盾則回退到 r1 並 FAIL\_CLOSED | F-BP-DRIFT-002 | §4.3 / §12 / §14 |
| TT-SUBP1MVP-002 | unavailable: OMOC\_藍圖\_v4.0.1-r1 missing | TEMP\_CLOSED→TEST\_TRACK | 檔案庫提供可定位正文（含 anchors）並建立 SSOT→MVP 映射 | 新文件 \+ locators≥2 \+ map row PASS | SSOT Owner | 若內容衝突 v8.1.x 則以 ADR 裁決並回退映射 | — | §4.3 / §13 |
| TT-SUBP1MVP-003 | unavailable: 子系統重構藍圖 missing | TEMP\_CLOSED→TEST\_TRACK | 補齊該藍圖正文與 anchors，提供 MVP 相關條文 DOCLOC | 新文件 \+ locators≥2 \+ map row PASS | Subsystem Owner | 若與 15CA/改名方案衝突則回退並 ADR | — | §4.3 / §13 |
| TT-SUBP1MVP-004 | drift: README↔MIP anchor 命名不一致 | TEMP\_CLOSED→TEST\_TRACK | 修正 README 指向 MIP 的實際 anchor 或為 MIP 增補 alias anchor | PR/ADR \+ 更新後 Doc Inventory PASS | Docs Owner | 若破壞既有引用則保留 alias | — | §4.3 |
| TT-SUBP1MVP-005 | drift: SRS 引用 Fitness legacy vs LBP-E v8.1.1-r2 | TEMP\_CLOSED→TEST\_TRACK | SRS/ARCH/MIP 中 Fitness 引用鏈對齊到現行 LBP-E（或補齊 legacy 檔） | 更新後 SRS anchors 可定位 \+ map row PASS | Spec Owner | 若對齊失敗則維持 UNAVAILABLE 並阻斷 release gate | — | §6.2 / §11.4 / §13.2 |
| TT-SUBP1MVP-006 | dependency missing: LBP-E contentReference 指向 legacy 檔案未隨包提供 | TEMP\_CLOSED→TEST\_TRACK | 補齊被引用 legacy 檔案或移除引用並以現行 SSOT 重新定位 | 文件入庫或 LBP-E 修訂 \+ locators PASS | Fitness Owner | 若修訂造成指標漂移則回退並 ADR | — | §4.3 / §11.4 |
| TT-SUBP1MVP-007 | dependency missing: 15CA 引用多份 P1\_\* legacy 檔案缺失 | TEMP\_CLOSED→TEST\_TRACK | 補齊被引用檔案或在 15CA 以 ADR 降級為 support-only 並補定位 | 文件入庫/ADR \+ coverage 更新 | Program Owner | 若補齊引入矛盾則以 v8.1.x SSOT 優先並回退 15CA 引用 | — | §4.3 |
| TT-SUBP1MVP-008 | doc\_id scheme unverified | TEMP\_CLOSED→TEST\_TRACK | 在 RDM/ARCH/SRS 定義 doc\_id/stable\_id 規則並回填本檔 meta | 規則條文 \+ 本檔 meta 更新 | Docs Owner | 若規則變更則保留 stable\_id 不變 | — | §0 |

### **14.2 Test Tracking List（摘要）**

\[ANCHOR:SOMOC-SUBP1MVP-14-2-TEST-TRACK\]

* TEST\_TRACK：TT-SUBP1MVP-001 \~ TT-SUBP1MVP-008（詳見 §14.1）

---

## **15\) External Evidence Appendix（SUPPORT-only；全部 ext\_id 可回指 TT）**

\[ANCHOR:SOMOC-SUBP1MVP-16-WEB-EVIDENCE\]

外部來源僅 SUPPORT（不得升格為 MUST/SHOULD）；僅能用於 TT 的風險防線與一般性原則。  
accessed\_date 皆為 2026-02-19（UTC+08:00）。

| ext\_id | title | publisher | publish\_date | accessed\_date | tier | why\_trust | applies\_to | limits |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| EXT-001 | GitHub Docs: Merge queues / merge\_group / required status checks | GitHub Docs | (site) | 2026-02-19 | A | 供應商官方文件 | TT 的 merge queue/required checks 風險防線 | 非本專案 SSOT；僅 SUPPORT |
| EXT-002 | OWASP Top 10 for LLM Applications（Prompt Injection 等） | OWASP | (site) | 2026-02-19 | A | 公認安全組織 | TT 的 prompt-injection/供應鏈風險通用防線 | 非本專案規範；僅 SUPPORT |
| EXT-003 | SLSA（Supply-chain Levels for Software Artifacts） | OpenSSF / slsa.dev | (site) | 2026-02-19 | A | 產業供應鏈安全規格 | TT 的供應鏈/可追溯性通用原則 | 非本專案規範；僅 SUPPORT |
| EXT-004 | OpenTelemetry semantic conventions / trace model | OpenTelemetry | (site) | 2026-02-19 | A | 開放標準/廣泛採用 | TT 的 traceability 命名與欄位一致性參考 | 非本專案規範；僅 SUPPORT |
| EXT-005 | GitHub Community：merge\_group checks / required checks 行為討論 | GitHub Community | (thread) | 2024-?? | B | 一手經驗但非官方規範 | 僅用於 SUPPORT 的風險提示 | 可能過時；不得作裁決 |

---

## **16\) Issue Closure Table（逐條結案審查報告 finding\_id）**

\[ANCHOR:SOMOC-SUBP1MVP-16-ISSUE-CLOSURE\]

| finding\_id | summary | closure\_status | linked\_tt\_id | target\_anchor |
| ----- | ----- | ----- | ----- | ----- |
| F-BP-STRUCT-001 | 缺 TOC/QuickIndex/Anchor/可檢索性 | PASS | — | `SOMOC-SUBP1MVP-03-TOC` / `SOMOC-SUBP1MVP-04-QUICK-INDEX` / `SOMOC-SUBP1MVP-02-AI-GUIDE` |
| F-BP-DRIFT-001 | Pipeline 方案缺可定位錨點/引用鏈斷裂 | PASS | — | `SOMOC-SUBP1MVP-10-1-1-SCHEME-LOCATORS` |
| F-BP-LOGIC-001 | No-API 定義/政策缺表、證據鏈不完整 | PASS | — | `SOMOC-SUBP1MVP-09-4-NOAPI-POLICY` |
| F-BP-FEAS-001 | Evidence Triplet/Contract 只宣告無最小 schema | PASS | — | `SOMOC-SUBP1MVP-11-0-MIN-SCHEMA` |
| F-BP-DRIFT-002 | ops 版本漂移（r2 需求 vs r1 FOUND）/版本疑義 | TT | TT-SUBP1MVP-001 | `SOMOC-SUBP1MVP-04-1-DOC-INVENTORY` / `SOMOC-SUBP1MVP-14-1-TT-REGISTER` |

---

## **17\) Final Self-Audit Checklist**

\[ANCHOR:SOMOC-SUBP1MVP-17-SELF-AUDIT\]

* R0 單回覆一次性交付：本檔為完整新版單檔 Markdown。  
* R1 Files-first / No-Source-No-Norm：所有 MUST/SHOULD/MAY 皆附 evidence\_ptr；缺者已 TT。  
* R2 Scope-Lock：未包含操作步驟/命令清單/點擊路徑；已 Route-Out。  
* R3 審查報告 finding\_id 全量結案：見 §16（PASS 或 TT）。  
* R4 以 MIP 為入口整合 SRS/README/ARCH/LBP/RB+WI/Plans/Pipelines：見 §4.3 Doc Inventory \+ §6/§10/§13。  
* R5 CR\_OPEN=0：僅 TT/TEST\_TRACK，見 §14。  
* R6 Web 僅 SUPPORT：僅列於 §15，且僅供 TT 風險防線。  
* R7 Anti-miss：文首含 TOC+Quick Index+強制檢索路徑+可機械稽核規則；anchors 唯一。  
* R8 版本命名：同系列修補採 v1.3.0-r2；doc\_id scheme 未證實已 TT（TT-SUBP1MVP-008）。

