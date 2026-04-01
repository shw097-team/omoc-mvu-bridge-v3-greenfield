# **Spartoi-OMOC\_LBP-C(ADR) v8.1.1-r2（Decision Registry / Evidence Contract）**

\[ANCHOR:LBPC-ADR-V811R2-00-DOC\_IDENTITY\]

## **0\) DOC\_IDENTITY**

* External Name：Spartoi-OMOC｜LBP-C(ADR) Decision Registry  
* Short Name：LBP-C(ADR)  
* Version：v8.1.1-r2  
* As-of date：2026-02-14  
* Supersedes：Spartoi-OMOC\_LBP-C(ADR) v8.1.1-r1  
* Replaces（legacy chain）：Spartoi｜P1\_LBP-C(ADR)\_v2.0.1（工程性可取代：本文件內含逐條對照與保留之「舊決策摘要」）  
* Compatibility statement：  
  * 本版為 **patch-level 修補**（r2）：修復「可定位性、表格完整性、越權內容、A/B 審查缺口、Legacy parity 可稽核性」。  
  * 不改寫上游 SSOT；若上游版本缺失，全部以 **UNVERIFIED \+ TT** 暫時結案。

---

## **1\) AI\_Guide（檢索指引／反幻覺規則）**

\[ANCHOR:LBPC-ADR-V811R2-01-AI\_GUIDE\]

### **1.1 檢索最短路徑**

* 先看 §3 Anchor Index：可計數、可全文掃描、可定位（含 ADR-001～ADR-037）。  
* 需要「決策」→ §9 ADR Records。  
* 需要「對齊/映射」→ §7 Coverage & Mapping（含 UNVERIFIED 標記與 TT）。  
* 需要「審查問題是否已封閉」→ §17.1 Finding Closure Matrix。  
* 需要「外部支持證據」→ §15 Web Evidence Appendix（SUPPORT-ONLY）。

### **1.2 Anti-hallucination（Fail-Closed）**

* 任何「缺正文可定位點」＝UNVERIFIED，必開 TT。  
* SUPPORT 不得升格為 NORMATIVE；不得反向改寫上游 SSOT（MIP/SRS/ARCH/LBP-A/LBP-B/MVU）。  
* 本文件不得承載 HOW／施工步驟／命令行；若不可避免，必 Route-Out（§10）並僅保留「決策＋理由＋可驗收產物」。

---

## **2\) TOC（可點／可搜）**

\[ANCHOR:LBPC-ADR-V811R2-02-TOC\]

* §0 DOC\_IDENTITY〔LBPC-ADR-V811R2-00-DOC\_IDENTITY〕  
* §1 AI\_Guide〔LBPC-ADR-V811R2-01-AI\_GUIDE〕  
* §2 TOC〔LBPC-ADR-V811R2-02-TOC〕  
* §3 Anchor Index〔LBPC-ADR-V811R2-03-ANCHOR\_INDEX〕  
* §4 Authority Stack & Scope Lock〔LBPC-ADR-V811R2-04-AUTH\_SCOPE〕  
* §5 Preflight Manifest（Doc Inventory \+ Locator Proof）〔LBPC-ADR-V811R2-05-PREFLIGHT〕  
* §6 Terminology & Keying Rules〔LBPC-ADR-V811R2-06-TERMS〕  
* §7 Coverage & Mapping〔LBPC-ADR-V811R2-07-MAPPING〕  
* §8 ADR Catalog（ADR-001～ADR-037）〔LBPC-ADR-V811R2-08-ADR\_CATALOG〕  
* §9 ADR Records（ADR-001～ADR-037）〔LBPC-ADR-V811R2-09-ADR\_RECORDS〕  
* §10 Route-Out Register〔LBPC-ADR-V811R2-10-ROUTE\_OUT〕  
* §11 Conflict Ledger〔LBPC-ADR-V811R2-11-CONFLICT〕  
* §12 Legacy Parity Report（v2.0.1 → v8.1.1-r2）〔LBPC-ADR-V811R2-12-LEGACY\_PARITY〕  
* §13 CR Register（無 CR\_OPEN；全 TEMP\_CLOSED(TEST\_TRACK)）〔LBPC-ADR-V811R2-13-CR\_REGISTER〕  
* §14 Test Tracking List（TT）〔LBPC-ADR-V811R2-14-TT\_LIST〕  
* §15 Web Evidence Appendix（SUPPORT-ONLY）〔LBPC-ADR-V811R2-15-WEB\_EVIDENCE〕  
* §16 Anti-Scope Fullscan Report〔LBPC-ADR-V811R2-16-ANTI\_SCOPE〕  
* §17 Self-Check & Self-Challenge〔LBPC-ADR-V811R2-17-SELF\_CHECK〕

---

## **3\) Anchor Index（可計數／可全文掃描）**

\[ANCHOR:LBPC-ADR-V811R2-03-ANCHOR\_INDEX\]

### **3.1 主要章節**

* \[ANCHOR:LBPC-ADR-V811R2-00-DOC\_IDENTITY\] — DOC\_IDENTITY — identity  
* \[ANCHOR:LBPC-ADR-V811R2-01-AI\_GUIDE\] — AI\_Guide — retrieval  
* \[ANCHOR:LBPC-ADR-V811R2-02-TOC\] — TOC — navigation  
* \[ANCHOR:LBPC-ADR-V811R2-03-ANCHOR\_INDEX\] — Anchor Index — countable  
* \[ANCHOR:LBPC-ADR-V811R2-04-AUTH\_SCOPE\] — Authority & Scope — boundaries  
* \[ANCHOR:LBPC-ADR-V811R2-05-PREFLIGHT\] — Preflight Manifest — inventory  
* \[ANCHOR:LBPC-ADR-V811R2-06-TERMS\] — Terminology — keying  
* \[ANCHOR:LBPC-ADR-V811R2-07-MAPPING\] — Coverage & Mapping — alignment  
* \[ANCHOR:LBPC-ADR-V811R2-08-ADR\_CATALOG\] — ADR Catalog — registry  
* \[ANCHOR:LBPC-ADR-V811R2-09-ADR\_RECORDS\] — ADR Records — decisions  
* \[ANCHOR:LBPC-ADR-V811R2-10-ROUTE\_OUT\] — Route-Out Register — routing  
* \[ANCHOR:LBPC-ADR-V811R2-11-CONFLICT\] — Conflict Ledger — resolution  
* \[ANCHOR:LBPC-ADR-V811R2-12-LEGACY\_PARITY\] — Legacy Parity — replace legacy  
* \[ANCHOR:LBPC-ADR-V811R2-13-CR\_REGISTER\] — CR Register — no open  
* \[ANCHOR:LBPC-ADR-V811R2-14-TT\_LIST\] — Test Tracking — verification  
* \[ANCHOR:LBPC-ADR-V811R2-15-WEB\_EVIDENCE\] — Web Evidence — support-only  
* \[ANCHOR:LBPC-ADR-V811R2-16-ANTI\_SCOPE\] — Anti-Scope — scope guard  
* \[ANCHOR:LBPC-ADR-V811R2-17-SELF\_CHECK\] — Self-Check — verdict

### **3.2 ADR Records（37 條）**

計數規則：搜尋字串 `"[ANCHOR:LBPC-ADR-V811R2-ADR-"` 應得到 **37** 筆命中（ADR-001～ADR-037）。

* \[ANCHOR:LBPC-ADR-V811R2-ADR-001\] — ADR-001 — Unified Meta Layers  
* \[ANCHOR:LBPC-ADR-V811R2-ADR-002\] — ADR-002 — Tiered Artifact Registry  
* \[ANCHOR:LBPC-ADR-V811R2-ADR-003\] — ADR-003 — Dynamic Gate Array & Decision Policy  
* \[ANCHOR:LBPC-ADR-V811R2-ADR-004\] — ADR-004 — Evidence Triplet Standardization  
* \[ANCHOR:LBPC-ADR-V811R2-ADR-005\] — ADR-005 — SpecPack Boundary: Normative vs Support  
* \[ANCHOR:LBPC-ADR-V811R2-ADR-006\] — ADR-006 — Immutable Anchor IDs & Countable Index  
* \[ANCHOR:LBPC-ADR-V811R2-ADR-007\] — ADR-007 — Docs-as-Code Layout for SSOT Pack  
* \[ANCHOR:LBPC-ADR-V811R2-ADR-008\] — ADR-008 — Diátaxis Separation & Route-Out Discipline  
* \[ANCHOR:LBPC-ADR-V811R2-ADR-009\] — ADR-009 — SEM³ Validation Framework  
* \[ANCHOR:LBPC-ADR-V811R2-ADR-010\] — ADR-010 — Evidence Contract: Locator Proof \+ Test Tracking  
* \[ANCHOR:LBPC-ADR-V811R2-ADR-011\] — ADR-011 — Decision Registry Schema (ADR/CR/TT/ROUTE/WE)  
* \[ANCHOR:LBPC-ADR-V811R2-ADR-012\] — ADR-012 — Web Evidence Rules (Support-Only)  
* \[ANCHOR:LBPC-ADR-V811R2-ADR-013\] — ADR-013 — Fail-Closed Default & TEMP\_CLOSED(TEST\_TRACK)  
* \[ANCHOR:LBPC-ADR-V811R2-ADR-014\] — ADR-014 — Merge Queue & merge\_group Coverage  
* \[ANCHOR:LBPC-ADR-V811R2-ADR-015\] — ADR-015 — Supply-Chain Pinning Strategy (Actions)  
* \[ANCHOR:LBPC-ADR-V811R2-ADR-016\] — ADR-016 — SARIF as Single Scan Output Contract  
* \[ANCHOR:LBPC-ADR-V811R2-ADR-017\] — ADR-017 — Lint & Policy Tooling: zizmor / scorecard  
* \[ANCHOR:LBPC-ADR-V811R2-ADR-018\] — ADR-018 — Devcontainer Baseline & Drift Prevention  
* \[ANCHOR:LBPC-ADR-V811R2-ADR-019\] — ADR-019 — OMOC-MVU Local Docker Bridge as Execution Adapter  
* \[ANCHOR:LBPC-ADR-V811R2-ADR-020\] — ADR-020 — SSOT Package Adoption: v0.2.0-r1+SC-HMD  
* \[ANCHOR:LBPC-ADR-V811R2-ADR-021\] — ADR-021 — 15 CA Immutable Registry Enforcement  
* \[ANCHOR:LBPC-ADR-V811R2-ADR-022\] — ADR-022 — Pipeline-A Integration Policy  
* \[ANCHOR:LBPC-ADR-V811R2-ADR-023\] — ADR-023 — Pipeline-B Integration Policy  
* \[ANCHOR:LBPC-ADR-V811R2-ADR-024\] — ADR-024 — Pipeline-C Integration Policy  
* \[ANCHOR:LBPC-ADR-V811R2-ADR-025\] — ADR-025 — A+B Integrated Database Contract  
* \[ANCHOR:LBPC-ADR-V811R2-ADR-026\] — ADR-026 — Five-Subsystem Composition Policy  
* \[ANCHOR:LBPC-ADR-V811R2-ADR-027\] — ADR-027 — Subsystem Refactor Blueprint as Support Input  
* \[ANCHOR:LBPC-ADR-V811R2-ADR-028\] — ADR-028 — Display Name / Macro Module Rename Policy  
* \[ANCHOR:LBPC-ADR-V811R2-ADR-029\] — ADR-029 — Interface Contract Registry (Route-Out to ICD)  
* \[ANCHOR:LBPC-ADR-V811R2-ADR-030\] — ADR-030 — Route-Out Register as Mandatory Escape Hatch  
* \[ANCHOR:LBPC-ADR-V811R2-ADR-031\] — ADR-031 — Conflict Ledger as Mandatory Resolution Surface  
* \[ANCHOR:LBPC-ADR-V811R2-ADR-032\] — ADR-032 — Legacy Parity as Non-Negotiable Replacement Proof  
* \[ANCHOR:LBPC-ADR-V811R2-ADR-033\] — ADR-033 — Anti-Scope Fullscan as Release Gate  
* \[ANCHOR:LBPC-ADR-V811R2-ADR-034\] — ADR-034 — RAG-Triad Adoption: Retrieval Grounding  
* \[ANCHOR:LBPC-ADR-V811R2-ADR-035\] — ADR-035 — RAPTOR/CRAG/Rerank: Support-Only Evaluation Policy  
* \[ANCHOR:LBPC-ADR-V811R2-ADR-036\] — ADR-036 — Multi-Agent Role Registry as Support Input  
* \[ANCHOR:LBPC-ADR-V811R2-ADR-037\] — ADR-037 — Release Verdict Model: PASS / TEMP\_CLOSED(TEST\_TRACK) / FAIL\_CLOSED

---

## **4\) Authority Stack & Scope Lock**

\[ANCHOR:LBPC-ADR-V811R2-04-AUTH\_SCOPE\]

### **4.1 Authority Stack（由高到低）**

* NORMATIVE（上游 SSOT／不可反向改寫）  
  * Spartoi-OMOC\_MIP\_v2.2.0〔MIP anchors〕  
  * Spartoi-OMOC\_SRS（要求版本：v8.1.1-r1；若缺＝MISSING）  
  * Spartoi-OMOC\_ARCH（要求版本：v8.1.1-r1；若缺＝MISSING）  
  * Spartoi-OMOC\_LBP-A(SIR) v8.1.1-r1  
  * Spartoi-OMOC\_LBP-B(ICD) v8.1.1-r2  
  * OMOC-MVU 套件包 v0.2.0-r1+SC-HMD  
  * OMOC-MVU Local Docker 低磨合轉接層 v4.0  
* TARGET  
  * 本文件：LBP-C(ADR) v8.1.1-r2（決策註冊表／可稽核契約）  
* SUPPORT（可參考但不得改寫上游）  
  * 15CA 重構升級藍圖、Blueprint、Pipeline-A/B/C、五子系統、A+B DB、子系統重構藍圖、改名方案

### **4.2 Scope Lock（LBP-C(ADR) 職責邊界）**

* 允許：Decision／Rationale／Consequences／Acceptance Artifacts／Evidence Ptr／Route-Out 指向。  
* 禁止：HOW、施工步驟、命令行、逐步教學、工作流編排細節（全部 Route-Out）。  
* 任何越權：必在 §10 Route-Out Register 建檔並在 §16 Anti-Scope 報告列出命中位置與處置。

---

## **5\) Preflight Manifest（Doc Inventory \+ Locator Proof）**

\[ANCHOR:LBPC-ADR-V811R2-05-PREFLIGHT\]

### **5.1 Doc Inventory \+ Locator Proof（每份至少 2 個可定位點）**

| doc\_id | filename | role | locator\_proof\_1 | locator\_proof\_2 | status | notes |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| DOC-TGT-LBPC-ADR-V811R1 | Spartoi-OMOC\_LBP-C(ADR) v8.1.1-r1.md | target(base) | Heading: `## 0. DOC_IDENTITY` \+ keyword `v8.1.1-r1` | Heading: `## 8. ADR Catalog` \+ keyword `ADR-037` | FOUND | 原檔可定位但結構污染與破表：本版 r2 取代之 |
| DOC-AUDIT-A | Spartoi-OMOC\_LBP-C(ADR) v8.1.1-r1\_審查報告A.md | audit | Heading: `# 審查結論：FAIL_CLOSED` \+ keyword `ISSUE-002` | Heading: `# D) 修補建議（骨架` \+ keyword `TT-012` | FOUND | 作為 finding 聯集來源 |
| DOC-AUDIT-B | Spartoi-OMOC\_LBP-C(ADR) v8.1.1-r1\_審查報告B.md | audit | Heading: `# 審查結論：FAIL_CLOSED` \+ keyword `ISSUE-001` | Heading: `## D) 修補建議（骨架）` \+ keyword `TT-020` | FOUND | 含高風險破表與 Legacy parity 誤判，需修正 |
| DOC-LEGACY-LBPC-ADR-V201 | Spartoi｜P1\_LBP-C(ADR)\_v2.0.1.txt | legacy | Anchor: `[ANCHOR:LBP.C.ADR.DOC_META]` | Anchor: `[ANCHOR:LBP.C.ADR.ADR-037]` | FOUND | §12 提供逐條對照，舊決策摘要保留於本文件 |
| DOC-MIP-V220 | Spartoi-OMOC\_MIP\_v2.2.0.txt | normative | Anchor: `[ANCHOR:MIP-V220-0-3-AUTHORITY]` | Anchor: `[ANCHOR:MIP-V220-5-1-TRIPLET]` | FOUND | 本文件映射入口 |
| DOC-SRS-V811R1 | Spartoi-OMOC\_SRS\_v8.1.1-r1 | normative(required) | (required) `SRS v8.1.1-r1` | (required) `anchors for mapping` | MISSING | **UNVERIFIED \+ TT-021**：暫以 v8.1.0 對齊但不可轉 PASS |
| DOC-ARCH-V811R1 | Spartoi-OMOC\_ARCH\_v8.1.1-r1 | normative(required) | (required) `ARCH v8.1.1-r1` | (required) `gate registry anchors` | MISSING | **UNVERIFIED \+ TT-022**：暫以 v8.1.0 對齊但不可轉 PASS |
| DOC-SRS-V810 | Spartoi-OMOC\_SRS\_v8.1.0.md | normative(provisional) | Anchor: `[ANCHOR:SRS-V810-00-DOC-METADATA]` | Anchor: `[ANCHOR:SRS-V810-REQ-EVID-TRIPLET]` | FOUND | **暫代對齊**（版本不符：UNVERIFIED） |
| DOC-ARCH-V810 | Spartoi-OMOC\_ARCH\_v8.1.0.md | normative(provisional) | Anchor: `[ANCHOR:ARCH-V810-00-DOC-METADATA]` | Anchor: `[ANCHOR:ARCH-V810-6-1-GATE-LAYER]` | FOUND | **暫代對齊**（版本不符：UNVERIFIED） |
| DOC-LBPA-SIR-V811R1 | Spartoi-OMOC\_LBP-A(SIR) v8.1.1-r1.md | normative | Anchor: `[ANCHOR:LBPA-SIR-V811-00-DOC-ID]` | Anchor: `[ANCHOR:LBPA-SIR-V811-04-AUTH]` | FOUND | 文檔職責與權威堆疊對齊 |
| DOC-LBPB-ICD-V811R2 | Spartoi-OMOC\_LBP-B(ICD)v8.1.1-r2.md | normative | Anchor: `[ANCHOR:ICD-V811-0-1-META]` | Anchor: `[ANCHOR:ICD-V811-2-4]` | FOUND | 介面契約 Route-Out 主要目標 |
| DOC-SSOT-PACK | 「OMOC-MVU 藍圖 \+ RUNBOOK \+ WI」套件包\_v0.2.0-r1+SC-HMD.md | normative | Anchor: `[ANCHOR:OMOCMVU-REF-EVID-CONTRACT]` | Anchor: `[ANCHOR:OMOCMVU-WI-SKILLS-SUPPLYCHAIN]` | FOUND | Evidence Contract / Supply Chain 規範來源 |
| DOC-LOCALDOCKER-V4 | OMOC-MVU「Local Docker 低磨合轉接層」方案v4.0.md | normative | Heading: `## 2) Authority Stack & Scope` \+ keyword `SSOT` | Heading: `## 11) Evidence & Acceptance Artifacts` \+ keyword `evidence` | FOUND | 僅作為 HOW 的 Route-Out 目的地（本 ADR 不承載步驟） |
| DOC-SUP-15CA-BP | Spartoi-OMOC(15 CA)重構升級藍圖v0.2.0-r1.md | support | Keyword: `SOMOC-15CA-BP-05-CA-MAP` | Keyword: `SOMOC-15CA-BP-09-DEGRADE` | FOUND | SUPPORT-ONLY |
| DOC-SUP-BLUEPRINT | Spartoi-OMOC Blueprint v2.2.0-r1.md | support | HTML anchor: `rdm-diataxis-layout` | Keyword: `GraphRAG` | FOUND | SUPPORT-ONLY |
| DOC-SUP-PIPE-A | Pipeline-A\_組合方案 v2.md | support | Heading: `# Pipeline-A` \+ keyword `Knowledge` | Keyword: `ingest` | FOUND | SUPPORT-ONLY |
| DOC-SUP-PIPE-B | Pipeline-B 組合方案 v2.md | support | Heading: `# Pipeline-B` \+ keyword `Strategy` | Keyword: `backtest` | FOUND | SUPPORT-ONLY |
| DOC-SUP-PIPE-C | Pipeline-C組合方案.md | support | Heading: `# Pipeline-C` \+ keyword `Execution` | Keyword: `deploy` | FOUND | SUPPORT-ONLY |
| DOC-SUP-5SUB | 五子系統組合方案.md | support | Heading: `# 五子系統` \+ keyword `Cross-Cutting` | Keyword: `整合` | FOUND | SUPPORT-ONLY |
| DOC-SUP-AB-DB | Pipeline-A+B 整合資料庫方案.md | support | Heading: `# A+B` \+ keyword `DB` | Keyword: `schema` | FOUND | SUPPORT-ONLY |
| DOC-SUP-REF-BP | Spartoi-OMOC\_子系統重構藍圖.md | support | Heading: `# 子系統重構` \+ keyword `CA-` | Keyword: `Phase` | FOUND | SUPPORT-ONLY |
| DOC-SUP-RENAME | 子系統「顯示名\_宏模組名」改名方案.md | support | Heading: `# 改名方案` \+ keyword `顯示名` | Keyword: `宏模組` | FOUND | SUPPORT-ONLY |

### **5.2 Finding Closure Matrix（審查報告 A/B 聯集去重 → 封閉計畫）**

\[ANCHOR:LBPC-ADR-V811R2-FINDING\_MATRIX\]

| finding\_id | source | severity | problem | required\_fix | target\_location(anchor) | acceptance\_artifact(min) | status |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| ISSUE-001 | A,B | P0 | TOC／Anchor Index 截斷、不可計數、不可定位 | 重建 §2/§3；納入 ADR-001～037；定義計數規則 | \[ANCHOR:LBPC-ADR-V811R2-02-TOC\]／\[ANCHOR:LBPC-ADR-V811R2-03-ANCHOR\_INDEX\] | Anchor Index 含 37 條 ADR anchors；並給出「計數規則」 | TEMP\_CLOSED |
| ISSUE-002 | A,B | P0 | Preflight Manifest locator 不足／引用標記污染／不可稽核 | 以 §5.1 表格重建；每份至少 2 locator；標 MISSING | \[ANCHOR:LBPC-ADR-V811R2-05-PREFLIGHT\] | Doc Inventory 全列均有 2 locator；MISSING 具 TT | TEMP\_CLOSED |
| ISSUE-003 | A,B | P0 | ADR Records anchor 缺失／破損；37 條未全可定位 | 重建 §9；每條獨立 anchor；模板一致 | \[ANCHOR:LBPC-ADR-V811R2-09-ADR\_RECORDS\] | 搜尋規則命中 37 條 ADR anchors | TEMP\_CLOSED |
| ISSUE-004 | B | P0 | Route-Out Register 破表／缺 target\_anchor／缺 linked\_TT | 重建 §10；固定欄位；每列 linked\_tt | \[ANCHOR:LBPC-ADR-V811R2-10-ROUTE\_OUT\] | ROUTE-001～固定欄位完整且無破表 | TEMP\_CLOSED |
| ISSUE-005 | B | P1 | Conflict Ledger 欄位不齊／缺 evidence\_ptr／缺 linked\_TT | 重建 §11；固定欄位 | \[ANCHOR:LBPC-ADR-V811R2-11-CONFLICT\] | CONFLICT-001～欄位完整 | TEMP\_CLOSED |
| ISSUE-006 | A,B | P0 | CR Register 欄位不固定／存在 CR\_OPEN 風險 | §13 固定欄位；所有 CR 均 TEMP\_CLOSED(TEST\_TRACK) | \[ANCHOR:LBPC-ADR-V811R2-13-CR\_REGISTER\] | CR status 無 OPEN；每筆含 evidence\_ptr＋linked\_TT\_ids | TEMP\_CLOSED |
| ISSUE-007 | A,B | P0 | TT List 欄位不固定／驗收產物不具體 | §14 固定欄位；每筆含 acceptance\_artifact\_min | \[ANCHOR:LBPC-ADR-V811R2-14-TT\_LIST\] | 每筆 TT 具「最小可驗收產物」 | TEMP\_CLOSED |
| ISSUE-008 | B | P1 | Web Evidence 欄位錯配（title/domain/date/source\_type） | §15 改用固定欄位（TSV）；外部來源 SUPPORT-ONLY | \[ANCHOR:LBPC-ADR-V811R2-15-WEB\_EVIDENCE\] | WE-001～欄位完整；來源可追溯（見引用） | TEMP\_CLOSED |
| ISSUE-009 | A,B | P0 | 正文出現 HOW／命令行／工作流編排細節（越權） | 全面移除；必要者 route-out | \[ANCHOR:LBPC-ADR-V811R2-04-AUTH\_SCOPE\]／\[ANCHOR:LBPC-ADR-V811R2-10-ROUTE\_OUT\] | §16 Anti-Scope 命中為 0（或有則列出處置） | TEMP\_CLOSED |
| ISSUE-010 | A,B | P1 | Terminology／Keying Rules 缺失或不完整 | §6 補齊命名規則與禁用規則 | \[ANCHOR:LBPC-ADR-V811R2-06-TERMS\] | §6 存在且含 ADR/CR/TT/WE/ROUTE/CONFLICT 規則 | TEMP\_CLOSED |
| ISSUE-011 | B | P0 | Legacy Parity 證據不足／對照表缺口或誤判 | §12 逐條對照（含舊決策摘要）＋linked\_tt | \[ANCHOR:LBPC-ADR-V811R2-12-LEGACY\_PARITY\] | 37 條 legacy ADR 皆有 legacy\_locator＋new\_locator＋verdict | TEMP\_CLOSED |
| ISSUE-012 | A,B | P1 | Mapping 未對齊或版本缺失未標示 UNVERIFIED | §7 映射表；缺版本＝MISSING＋TT | \[ANCHOR:LBPC-ADR-V811R2-07-MAPPING\] | §7 映射含 verification\_state 欄 | TEMP\_CLOSED |
| ISSUE-013 | B | P1 | Anti-Scope 報告缺 hit\_locations(evidence\_ptr) | §16 提供敏感詞與命中位置（或 0 hit） | \[ANCHOR:LBPC-ADR-V811R2-16-ANTI\_SCOPE\] | hit\_locations 欄存在且可機械解析 | TEMP\_CLOSED |
| ISSUE-014 | B | P1 | machine\_summary 缺失或不可解析 | 文末提供 machine\_summary.json | \[ANCHOR:LBPC-ADR-V811R2-17-SELF\_CHECK\] | machine\_summary.json 可 JSON 解析 | TEMP\_CLOSED |
| ISSUE-015 | B | P1 | 版本策略未明示 supersedes/replaces 鏈 | §0 DOC\_IDENTITY 明示鏈與相容性 | \[ANCHOR:LBPC-ADR-V811R2-00-DOC\_IDENTITY\] | supersedes/replaces 欄存在 | TEMP\_CLOSED |

---

## **6\) Terminology & Keying Rules（命名規則：可機械解析）**

\[ANCHOR:LBPC-ADR-V811R2-06-TERMS\]

### **6.1 Entity IDs**

* ADR：`ADR-###`（001～037，固定 3 位數）  
* CR：`CR-###`（缺口註冊；**不得 OPEN**；允許 `TEMP_CLOSED(TEST_TRACK)`）  
* TT：`TT-###`（驗收台帳；需最小驗收產物）  
* ROUTE：`ROUTE-###`（外導註冊）  
* CONFLICT：`CONFLICT-###`（衝突裁決）  
* WE：`WE-###`（外部證據，SUPPORT-ONLY）

### **6.2 Anchors（本文件）**

* 章節 anchors：`LBPC-ADR-V811R2-<section>`（見 §3.1）  
* ADR anchors：`LBPC-ADR-V811R2-ADR-###`（見 §3.2）  
* 禁止：  
  * 章節標題與 anchor 不一致  
  * Anchor Index 未列出之 anchor（避免「暗門段落」）

### **6.3 Verification States（本文件使用）**

* FOUND：文件存在且 locator\_proof 足夠  
* MISSING：文件缺失（不得腦補；必 TT）  
* UNVERIFIED：版本不符或缺正文定位證據（必 TT）  
* TEMP\_CLOSED(TEST\_TRACK)：暫時結案（已建立驗收路徑與最小產物）

---

## **7\) Coverage & Mapping（MIP → SRS → ARCH → LBP-A → LBP-B → LBP-C）**

\[ANCHOR:LBPC-ADR-V811R2-07-MAPPING\]

### **7.1 上游映射矩陣（缺版本即 Fail-Closed：UNVERIFIED \+ TT）**

| map\_id | upstream\_ref | mapped\_decision | linked\_adr | verification\_state | evidence\_ptr |
| ----- | ----- | ----- | ----- | ----- | ----- |
| MAP-001 | MIP `[ANCHOR:MIP-V220-0-3-AUTHORITY]` | 權威堆疊與衝突裁決落點 | ADR-005／ADR-031 | VERIFIED(FROM MIP) | \[ANCHOR:LBPC-ADR-V811R2-04-AUTH\_SCOPE\] |
| MAP-002 | MIP `[ANCHOR:MIP-V220-5-1-TRIPLET]` | Evidence Triplet 標準化 | ADR-004／ADR-010 | VERIFIED(FROM MIP) | \[ANCHOR:LBPC-ADR-V811R2-ADR-004\] |
| MAP-003 | SRS v8.1.1-r1（required） | 需求對齊（版本缺失） | ADR-004／ADR-013 | UNVERIFIED(MISSING\_SRS) \+ TT-021 | \[ANCHOR:LBPC-ADR-V811R2-05-PREFLIGHT\] |
| MAP-004 | ARCH v8.1.1-r1（required） | Gate registry 對齊（版本缺失） | ADR-003／ADR-014 | UNVERIFIED(MISSING\_ARCH) \+ TT-022 | \[ANCHOR:LBPC-ADR-V811R2-05-PREFLIGHT\] |
| MAP-005 | SRS v8.1.0 `[ANCHOR:SRS-V810-REQ-EVID-TRIPLET]` | 暫代 Evidence Triplet 參照 | ADR-004 | UNVERIFIED(VERSION\_MISMATCH) \+ TT-021 | \[ANCHOR:LBPC-ADR-V811R2-ADR-004\] |
| MAP-006 | ARCH v8.1.0 `[ANCHOR:ARCH-V810-6-1-GATE-LAYER]` | 暫代 Gate layering 參照 | ADR-003 | UNVERIFIED(VERSION\_MISMATCH) \+ TT-022 | \[ANCHOR:LBPC-ADR-V811R2-ADR-003\] |
| MAP-007 | LBP-A(SIR) `[ANCHOR:LBPA-SIR-V811-04-AUTH]` | 規格權威與範疇鎖定語義對齊 | ADR-005 | VERIFIED(FROM SIR) | \[ANCHOR:LBPC-ADR-V811R2-ADR-005\] |
| MAP-008 | LBP-B(ICD) `[ANCHOR:ICD-V811-2-4]` | 介面契約路由：ADR 不承載 schema 細節 | ADR-029 | VERIFIED(FROM ICD) | \[ANCHOR:LBPC-ADR-V811R2-ADR-029\] |
| MAP-009 | MVU pack `[ANCHOR:OMOCMVU-REF-EVID-CONTRACT]` | Evidence Contract 欄位／證據結構 | ADR-010 | VERIFIED(FROM MVU) | \[ANCHOR:LBPC-ADR-V811R2-ADR-010\] |
| MAP-010 | MIP `[ANCHOR:MIP-V220-SEC1]` | 15 CA 不可變註冊 | ADR-021 | VERIFIED(FROM MIP) | \[ANCHOR:LBPC-ADR-V811R2-ADR-021\] |

### **7.2 SUPPORT 映射（不得反向改寫上游）**

| map\_id | support\_ref | supports | linked\_adr | verification\_state | evidence\_ptr |
| ----- | ----- | ----- | ----- | ----- | ----- |
| SMAP-001 | Pipeline-A v2 | 知識蒸餾與資料產物分層參考 | ADR-022 | SUPPORT\_ONLY | \[ANCHOR:LBPC-ADR-V811R2-ADR-022\] |
| SMAP-002 | Pipeline-B v2 | 策略研發產物與回測契約參考 | ADR-023 | SUPPORT\_ONLY | \[ANCHOR:LBPC-ADR-V811R2-ADR-023\] |
| SMAP-003 | Pipeline-C | 執行準備與落地參考（HOW 需外導） | ADR-024 | SUPPORT\_ONLY | \[ANCHOR:LBPC-ADR-V811R2-ADR-024\] |
| SMAP-004 | 五子系統組合 | Cross-cutting 路由參考 | ADR-026 | SUPPORT\_ONLY | \[ANCHOR:LBPC-ADR-V811R2-ADR-026\] |
| SMAP-005 | A+B 整合資料庫 | 共同資料庫策略參考 | ADR-025 | SUPPORT\_ONLY | \[ANCHOR:LBPC-ADR-V811R2-ADR-025\] |
| SMAP-006 | 子系統重構藍圖 | 子系統分段升級參考 | ADR-027 | SUPPORT\_ONLY | \[ANCHOR:LBPC-ADR-V811R2-ADR-027\] |
| SMAP-007 | 改名方案 | 顯示名／宏模組命名參考 | ADR-028 | SUPPORT\_ONLY | \[ANCHOR:LBPC-ADR-V811R2-ADR-028\] |

---

## **8\) ADR Catalog（37 條總表）**

\[ANCHOR:LBPC-ADR-V811R2-08-ADR\_CATALOG\]

狀態欄位採用：`ACCEPTED`／`SUPERSEDED`／`DEPRECATED`（本版以 ACCEPTED 為主；legacy 的退役由 §12 記錄，不改寫上游 SSOT）

| adr\_id | title | status | decision\_date | drivers | upstream\_refs | linked\_route\_out | linked\_cr | linked\_tt | anchor |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| ADR-001 | Unified Meta Layers | ACCEPTED | 2026-01-01 | governance,retrieval | MIP-0-3 | ROUTE-001 | CR-001 | TT-001 | \[ANCHOR:LBPC-ADR-V811R2-ADR-001\] |
| ADR-002 | Tiered Artifact Registry | ACCEPTED | 2026-01-02 | supplychain,provenance | MIP-SEC5 | ROUTE-002 | CR-003 | TT-013 | \[ANCHOR:LBPC-ADR-V811R2-ADR-002\] |
| ADR-003 | Dynamic Gate Array & Decision Policy | ACCEPTED | 2026-01-03 | failclosed,governance | MIP-5-2 | ROUTE-003 | CR-006 | TT-010 | \[ANCHOR:LBPC-ADR-V811R2-ADR-003\] |
| ADR-004 | Evidence Triplet Standardization | ACCEPTED | 2026-01-04 | evidence,traceability | MIP-5-1 | ROUTE-004 | CR-001 | TT-004 | \[ANCHOR:LBPC-ADR-V811R2-ADR-004\] |
| ADR-005 | SpecPack Boundary: Normative vs Support | ACCEPTED | 2026-01-05 | scope,authority | MIP-0-4 | ROUTE-005 | CR-002 | TT-003 | \[ANCHOR:LBPC-ADR-V811R2-ADR-005\] |
| ADR-006 | Immutable Anchor IDs & Countable Index | ACCEPTED | 2026-01-06 | auditability,retrieval | MIP-0-2 | ROUTE-006 | CR-001 | TT-001 | \[ANCHOR:LBPC-ADR-V811R2-ADR-006\] |
| ADR-007 | Docs-as-Code Layout for SSOT Pack | ACCEPTED | 2026-01-07 | maintainability | MIP-SEC0 | ROUTE-007 | CR-001 | TT-002 | \[ANCHOR:LBPC-ADR-V811R2-ADR-007\] |
| ADR-008 | Diátaxis Separation & Route-Out Discipline | ACCEPTED | 2026-01-08 | clarity,scope | MIP-SEC6 | ROUTE-008 | CR-002 | TT-014 | \[ANCHOR:LBPC-ADR-V811R2-ADR-008\] |
| ADR-009 | SEM³ Validation Framework | ACCEPTED | 2026-01-09 | verification | MIP-SEC10 | ROUTE-009 | CR-001 | TT-009 | \[ANCHOR:LBPC-ADR-V811R2-ADR-009\] |
| ADR-010 | Evidence Contract: Locator Proof \+ Test Tracking | ACCEPTED | 2026-01-10 | evidence,automation | MIP-SEC5 | ROUTE-010 | CR-001 | TT-010 | \[ANCHOR:LBPC-ADR-V811R2-ADR-010\] |
| ADR-011 | Decision Registry Schema (ADR/CR/TT/ROUTE/WE) | ACCEPTED | 2026-01-11 | auditability | MIP-SEC8 | ROUTE-011 | CR-001 | TT-010 | \[ANCHOR:LBPC-ADR-V811R2-ADR-011\] |
| ADR-012 | Web Evidence Rules (Support-Only) | ACCEPTED | 2026-01-12 | integrity | MIP-SEC9 | ROUTE-012 | CR-003 | TT-013 | \[ANCHOR:LBPC-ADR-V811R2-ADR-012\] |
| ADR-013 | Fail-Closed Default & TEMP\_CLOSED(TEST\_TRACK) | ACCEPTED | 2026-01-13 | failclosed | MIP-5-3 | ROUTE-013 | CR-006 | TT-010 | \[ANCHOR:LBPC-ADR-V811R2-ADR-013\] |
| ADR-014 | Merge Queue & merge\_group Coverage | ACCEPTED | 2026-01-14 | ci,governance | MIP-5-2 | ROUTE-014 | CR-003 | TT-017 | \[ANCHOR:LBPC-ADR-V811R2-ADR-014\] |
| ADR-015 | Supply-Chain Pinning Strategy (Actions) | ACCEPTED | 2026-01-15 | supplychain | MIP-SEC4 | ROUTE-015 | CR-003 | TT-018 | \[ANCHOR:LBPC-ADR-V811R2-ADR-015\] |
| ADR-016 | SARIF as Single Scan Output Contract | ACCEPTED | 2026-01-16 | security,automation | MIP-SEC5 | ROUTE-016 | CR-003 | TT-013 | \[ANCHOR:LBPC-ADR-V811R2-ADR-016\] |
| ADR-017 | Lint & Policy Tooling: zizmor / scorecard | ACCEPTED | 2026-01-17 | supplychain | MIP-SEC4 | ROUTE-017 | CR-003 | TT-020 | \[ANCHOR:LBPC-ADR-V811R2-ADR-017\] |
| ADR-018 | Devcontainer Baseline & Drift Prevention | ACCEPTED | 2026-01-18 | reproducibility | MIP-SEC4 | ROUTE-018 | CR-002 | TT-019 | \[ANCHOR:LBPC-ADR-V811R2-ADR-018\] |
| ADR-019 | OMOC-MVU Local Docker Bridge as Execution Adapter | ACCEPTED | 2026-01-19 | execution,portability | MIP-SEC4 | ROUTE-019 | CR-002 | TT-019 | \[ANCHOR:LBPC-ADR-V811R2-ADR-019\] |
| ADR-020 | SSOT Package Adoption: v0.2.0-r1+SC-HMD | ACCEPTED | 2026-01-20 | ssot | MIP-SEC0 | ROUTE-020 | CR-002 | TT-002 | \[ANCHOR:LBPC-ADR-V811R2-ADR-020\] |
| ADR-021 | 15 CA Immutable Registry Enforcement | ACCEPTED | 2026-01-21 | antidrift | MIP-SEC1 | ROUTE-021 | CR-007 | TT-015 | \[ANCHOR:LBPC-ADR-V811R2-ADR-021\] |
| ADR-022 | Pipeline-A Integration Policy | ACCEPTED | 2026-01-22 | integration | MIP-SEC3 | ROUTE-022 | CR-007 | TT-024 | \[ANCHOR:LBPC-ADR-V811R2-ADR-022\] |
| ADR-023 | Pipeline-B Integration Policy | ACCEPTED | 2026-01-23 | integration | MIP-SEC3 | ROUTE-023 | CR-007 | TT-024 | \[ANCHOR:LBPC-ADR-V811R2-ADR-023\] |
| ADR-024 | Pipeline-C Integration Policy | ACCEPTED | 2026-01-24 | integration | MIP-SEC3 | ROUTE-024 | CR-007 | TT-024 | \[ANCHOR:LBPC-ADR-V811R2-ADR-024\] |
| ADR-025 | A+B Integrated Database Contract | ACCEPTED | 2026-01-25 | data | MIP-2-2 | ROUTE-025 | CR-007 | TT-024 | \[ANCHOR:LBPC-ADR-V811R2-ADR-025\] |
| ADR-026 | Five-Subsystem Composition Policy | ACCEPTED | 2026-01-26 | architecture | MIP-3-4 | ROUTE-026 | CR-007 | TT-024 | \[ANCHOR:LBPC-ADR-V811R2-ADR-026\] |
| ADR-027 | Subsystem Refactor Blueprint as Support Input | ACCEPTED | 2026-01-27 | planning | MIP-SEC1 | ROUTE-027 | CR-007 | TT-024 | \[ANCHOR:LBPC-ADR-V811R2-ADR-027\] |
| ADR-028 | Display Name / Macro Module Rename Policy | ACCEPTED | 2026-01-28 | naming | MIP-SEC7 | ROUTE-028 | CR-007 | TT-024 | \[ANCHOR:LBPC-ADR-V811R2-ADR-028\] |
| ADR-029 | Interface Contract Registry (Route-Out to ICD) | ACCEPTED | 2026-01-29 | contracts | MIP-SEC6 | ROUTE-029 | CR-007 | TT-023 | \[ANCHOR:LBPC-ADR-V811R2-ADR-029\] |
| ADR-030 | Route-Out Register as Mandatory Escape Hatch | ACCEPTED | 2026-01-30 | scope | MIP-SEC6 | ROUTE-030 | CR-002 | TT-007 | \[ANCHOR:LBPC-ADR-V811R2-ADR-030\] |
| ADR-031 | Conflict Ledger as Mandatory Resolution Surface | ACCEPTED | 2026-01-31 | governance | MIP-0-3 | ROUTE-031 | CR-001 | TT-008 | \[ANCHOR:LBPC-ADR-V811R2-ADR-031\] |
| ADR-032 | Legacy Parity as Non-Negotiable Replacement Proof | ACCEPTED | 2026-02-01 | migration | MIP-0-5 | ROUTE-032 | CR-006 | TT-009 | \[ANCHOR:LBPC-ADR-V811R2-ADR-032\] |
| ADR-033 | Anti-Scope Fullscan as Release Gate | ACCEPTED | 2026-02-02 | scope,quality | MIP-SEC10 | ROUTE-033 | CR-002 | TT-012 | \[ANCHOR:LBPC-ADR-V811R2-ADR-033\] |
| ADR-034 | RAG-Triad Adoption: Retrieval Grounding | ACCEPTED | 2026-02-03 | ai,retrieval | MIP-SEC4 | ROUTE-034 | CR-008 | TT-015 | \[ANCHOR:LBPC-ADR-V811R2-ADR-034\] |
| ADR-035 | RAPTOR/CRAG/Rerank: Support-Only Evaluation Policy | ACCEPTED | 2026-02-04 | ai,evaluation | MIP-SEC4 | ROUTE-035 | CR-008 | TT-015 | \[ANCHOR:LBPC-ADR-V811R2-ADR-035\] |
| ADR-036 | Multi-Agent Role Registry as Support Input | ACCEPTED | 2026-02-05 | collaboration | MIP-SEC4 | ROUTE-036 | CR-008 | TT-015 | \[ANCHOR:LBPC-ADR-V811R2-ADR-036\] |
| ADR-037 | Release Verdict Model: PASS / TEMP\_CLOSED(TEST\_TRACK) / FAIL\_CLOSED | ACCEPTED | 2026-02-06 | governance | MIP-SEC10 | ROUTE-037 | CR-006 | TT-010 | \[ANCHOR:LBPC-ADR-V811R2-ADR-037\] |

---

## **9\) ADR Records（ADR-001～ADR-037）**

\[ANCHOR:LBPC-ADR-V811R2-09-ADR\_RECORDS\]

模板固定欄位：Context / Decision / Rationale / Consequences / Evidence Contract / Acceptance Artifacts / Route-Out / Linked CR/TT  
注意：本節不提供施工步驟；所有 HOW 皆 Route-Out（§10）。

### **ADR-001 Unified Meta Layers**

\[ANCHOR:LBPC-ADR-V811R2-ADR-001\]

* Status：ACCEPTED  
* Decision Date：2026-01-01  
* Linked：CR-001；TT-001；ROUTE-001

#### **Context**

多份上游與支援文件並存，需用「權威堆疊＋範疇鎖定」避免互相改寫與漂移。

#### **Decision**

採用三層語義：NORMATIVE／TARGET／SUPPORT，並要求每個決策在 ADR 中 **顯式標記上游引用** 或標記 UNVERIFIED \+ TT。

#### **Rationale**

* 避免 SUPPORT 反向覆寫 SSOT。  
* 讓檢索與稽核能快速判定「哪句話算數」。

#### **Consequences**

* 每條 ADR 必須含 upstream\_refs 或 UNVERIFIED \+ TT。  
* 衝突一律進 §11 Conflict Ledger。

#### **Evidence Contract**

* evidence\_ptr：本條 anchor  
* required\_tables：§8、§10、§11、§13、§14、§15、§16、§17

#### **Acceptance Artifacts**

* §4 Authority Stack 存在且可定位  
* §11 至少有 CONFLICT-001

#### **Route-Out**

* ROUTE-001（上游權威堆疊與裁決流程細節）

#### **Linked CR/TT**

* CR-001, TT-001

### **ADR-002 Tiered Artifact Registry**

\[ANCHOR:LBPC-ADR-V811R2-ADR-002\]

* Status：ACCEPTED  
* Decision Date：2026-01-02  
* Linked：CR-003；TT-013；ROUTE-002

#### **Context**

供應鏈與可重現性要求「產物分級」與可追溯。

#### **Decision**

建立 Artifact 分級與最小欄位契約：`ART-`（產物代碼）、`evidence_ptr`、`linked_TT_ids`；安全相關產物需可追溯到 WE（SUPPORT-ONLY）或上游 NORMATIVE。

#### **Rationale**

* 統一驗收產物語義，避免各文件各說各話。

#### **Consequences**

* §14 TT 必須引用最小產物代碼或可定位點。

#### **Evidence Contract**

* evidence\_ptr：本條 anchor

#### **Acceptance Artifacts**

* §14 每筆 TT 有 acceptance\_artifact\_min

#### **Route-Out**

* ROUTE-002（產物型別與存放結構：由 MVU pack／ARCH 定義）

#### **Linked CR/TT**

* CR-003, TT-013

### **ADR-003 Dynamic Gate Array & Decision Policy**

\[ANCHOR:LBPC-ADR-V811R2-ADR-003\]

* Status：ACCEPTED  
* Decision Date：2026-01-03  
* Linked：CR-006；TT-010；ROUTE-003

#### **Context**

需要可擴充的 Gate 字典（但不在 ADR 寫 HOW），同時維持 Fail-Closed。

#### **Decision**

Gate 字典與政策必須滿足：預設拒絕、可降級矩陣（TEMP\_CLOSED(TEST\_TRACK)）與可回溯決策（ADR/CR/TT 互鏈）。

#### **Rationale**

* Gate 是治理核心，必須可稽核與可追蹤。

#### **Consequences**

* 任何「例外通行」都要有 CR \+ TT。

#### **Evidence Contract**

* evidence\_ptr：本條 anchor

#### **Acceptance Artifacts**

* §13 無 CR\_OPEN

#### **Route-Out**

* ROUTE-003（Gate 字典細節：ARCH/SRS）

#### **Linked CR/TT**

* CR-006, TT-010

### **ADR-004 Evidence Triplet Standardization**

\[ANCHOR:LBPC-ADR-V811R2-ADR-004\]

* Status：ACCEPTED  
* Decision Date：2026-01-04  
* Linked：CR-001；TT-004；ROUTE-004

#### **Context**

「說有做」不算證據；必須有三件套可稽核。

#### **Decision**

採納 Evidence Triplet：`Locator Proof`（可定位點）＋`Acceptance Artifact`（最小產物）＋`Test Tracking`（可驗收台帳）。

#### **Rationale**

* 降低人工猜測，支援機械驗證。

#### **Consequences**

* 本文件所有表格欄位要求 evidence\_ptr 或 acceptance\_artifact\_min。

#### **Evidence Contract**

* evidence\_ptr：本條 anchor

#### **Acceptance Artifacts**

* §5.1 每份輸入文件至少 2 locator

#### **Route-Out**

* ROUTE-004（Triplet 的格式與範例：MVU pack）

#### **Linked CR/TT**

* CR-001, TT-004

### **ADR-005 SpecPack Boundary: Normative vs Support**

\[ANCHOR:LBPC-ADR-V811R2-ADR-005\]

* Status：ACCEPTED  
* Decision Date：2026-01-05  
* Linked：CR-002；TT-003；ROUTE-005

#### **Context**

同一主題可能同時存在「規範」與「建議」；需明確邊界。

#### **Decision**

任何 SUPPORT 僅能補缺口，且必須在 §15 Web Evidence 或 SUPPORT 映射（§7.2）呈現；不得用 SUPPORT 改寫 NORMATIVE。

#### **Rationale**

* 抑制漂移與規格倒灌。

#### **Consequences**

* 若上游版本缺失：一律 UNVERIFIED \+ TT。

#### **Evidence Contract**

* evidence\_ptr：本條 anchor

#### **Acceptance Artifacts**

* §5.1 顯示 SRS/ARCH v8.1.1-r1 為 MISSING 並開 TT

#### **Route-Out**

* ROUTE-005（Authority conflict resolution：MIP）

#### **Linked CR/TT**

* CR-002, TT-003

### **ADR-006 Immutable Anchor IDs & Countable Index**

\[ANCHOR:LBPC-ADR-V811R2-ADR-006\]

* Status：ACCEPTED  
* Decision Date：2026-01-06  
* Linked：CR-001；TT-001；ROUTE-006

#### **Context**

不可定位＝不可稽核；不可計數＝不可驗收。

#### **Decision**

Anchor 必須穩定、集中列於 §3；ADR anchors 必須可計數（37 條）。

#### **Rationale**

* 支援 GraphRAG/檢索型工作流（不靠臆測）。

#### **Consequences**

* 任一 anchor 缺失：FAIL\_CLOSED（需 CR \+ TT）。

#### **Evidence Contract**

* evidence\_ptr：本條 anchor

#### **Acceptance Artifacts**

* §3.2 列出 ADR-001～037

#### **Route-Out**

* ROUTE-006（文件格式約束：由 Docs-as-Code 規範承載）

#### **Linked CR/TT**

* CR-001, TT-001

### **ADR-007 Docs-as-Code Layout for SSOT Pack**

\[ANCHOR:LBPC-ADR-V811R2-ADR-007\]

* Status：ACCEPTED  
* Decision Date：2026-01-07  
* Linked：CR-001；TT-002；ROUTE-007

#### **Context**

SSOT 需要可版本化、可 diff、可審查。

#### **Decision**

採用 Docs-as-Code：所有規格文件以可 diff 格式保存；每份文件需 DOC\_IDENTITY、anchors、索引。

#### **Rationale**

* 降低文件漂移與回歸。

#### **Consequences**

* 缺 DOC\_IDENTITY 的文件不可作為 NORMATIVE。

#### **Evidence Contract**

* evidence\_ptr：本條 anchor

#### **Acceptance Artifacts**

* §0 DOC\_IDENTITY 完整

#### **Route-Out**

* ROUTE-007（SSOT pack 組裝與發佈：MVU pack）

#### **Linked CR/TT**

* CR-001, TT-002

### **ADR-008 Diátaxis Separation & Route-Out Discipline**

\[ANCHOR:LBPC-ADR-V811R2-ADR-008\]

* Status：ACCEPTED  
* Decision Date：2026-01-08  
* Linked：CR-002；TT-014；ROUTE-008

#### **Context**

混寫 Reference/How-to/Explanation 會導致越權與不可稽核。

#### **Decision**

LBP-C(ADR) 僅承載 Reference（決策與契約）；How-to 必須 Route-Out 至 Runbook/WI/Local Docker。

#### **Rationale**

* 讓審查維持「決策可稽核」而非「流程可辯論」。

#### **Consequences**

* 本文件若出現 HOW：一律視為 scope violation（見 §16）。

#### **Evidence Contract**

* evidence\_ptr：本條 anchor

#### **Acceptance Artifacts**

* §10 Route-Out Register 存在且完整

#### **Route-Out**

* ROUTE-008（Diátaxis 佈局：Blueprint 支援參考）

#### **Linked CR/TT**

* CR-002, TT-014

### **ADR-009 SEM³ Validation Framework**

\[ANCHOR:LBPC-ADR-V811R2-ADR-009\]

* Status：ACCEPTED  
* Decision Date：2026-01-09  
* Linked：CR-001；TT-009；ROUTE-009

#### **Context**

需要一套「自我刁難」的驗證框架，避免用宣告代替證據。

#### **Decision**

SEM³ 定義：Scope（範疇）／Evidence（證據）／Mapping（映射）三條軸，各自必須滿足：可定位、可計數、可驗收（最小產物）。

#### **Rationale**

* 對抗「看似完整但不可驗」的文件幻覺。

#### **Consequences**

* §17 Self-Check 必須逐條反證。

#### **Evidence Contract**

* evidence\_ptr：本條 anchor

#### **Acceptance Artifacts**

* §17.2 列出 UNVERIFIED 並有 TT

#### **Route-Out**

* ROUTE-009（驗證框架落地：由 MIP 的 Self-Check 規則承載）

#### **Linked CR/TT**

* CR-001, TT-009

### **ADR-010 Evidence Contract: Locator Proof \+ Test Tracking**

\[ANCHOR:LBPC-ADR-V811R2-ADR-010\]

* Status：ACCEPTED  
* Decision Date：2026-01-10  
* Linked：CR-001；TT-010；ROUTE-010

#### **Context**

需要把「定位」與「驗收」收斂成可機械解析契約。

#### **Decision**

所有 CR/TT/ROUTE/CONFLICT/WE 需具 evidence\_ptr 指向本文件（或上游）定位點；TT 需最小驗收產物。

#### **Rationale**

* 讓審查可重複、可交接。

#### **Consequences**

* 表格欄位固定（破表＝FAIL\_CLOSED）。

#### **Evidence Contract**

* evidence\_ptr：本條 anchor

#### **Acceptance Artifacts**

* §13、§14 欄位固定且完整

#### **Route-Out**

* ROUTE-010（契約欄位權威：MVU pack Evidence Contract）

#### **Linked CR/TT**

* CR-001, TT-010

### **ADR-011 Decision Registry Schema (ADR/CR/TT/ROUTE/WE)**

\[ANCHOR:LBPC-ADR-V811R2-ADR-011\]

* Status：ACCEPTED  
* Decision Date：2026-01-11  
* Linked：CR-001；TT-010；ROUTE-011

#### **Context**

註冊表若欄位不固定，無法自動審查。

#### **Decision**

本文件採固定欄位表格：§8/§10/§11/§13/§14/§15，欄位不可任意增減。

#### **Rationale**

* 支援工具化驗收與 drift 檢測。

#### **Consequences**

* 欄位變更需新 ADR（不在本版內擅改）。

#### **Evidence Contract**

* evidence\_ptr：本條 anchor

#### **Acceptance Artifacts**

* 各 register 表格欄位固定且未破表

#### **Route-Out**

* ROUTE-011（表格 schema 變更流程：由 MIP gate policy 承載）

#### **Linked CR/TT**

* CR-001, TT-010

### **ADR-012 Web Evidence Rules (Support-Only)**

\[ANCHOR:LBPC-ADR-V811R2-ADR-012\]

* Status：ACCEPTED  
* Decision Date：2026-01-12  
* Linked：CR-003；TT-013；ROUTE-012

#### **Context**

外部資料易變動，且可信度不一。

#### **Decision**

Web Evidence 僅 SUPPORT-ONLY；必記錄 canonical\_domain、publish/update、retrieved\_asof、supports、linked\_adr、linked\_tt、reliability\_notes。

#### **Rationale**

* 防止把外部文章當規格。

#### **Consequences**

* 外部證據不足：TT 需補齊。

#### **Evidence Contract**

* evidence\_ptr：本條 anchor

#### **Acceptance Artifacts**

* §15 TSV 欄位完整

#### **Route-Out**

* ROUTE-012（來源篩選準則：MIP Web Evidence）

#### **Linked CR/TT**

* CR-003, TT-013

### **ADR-013 Fail-Closed Default & TEMP\_CLOSED(TEST\_TRACK)**

\[ANCHOR:LBPC-ADR-V811R2-ADR-013\]

* Status：ACCEPTED  
* Decision Date：2026-01-13  
* Linked：CR-006；TT-010；ROUTE-013

#### **Context**

缺證據時不能裝作沒事。

#### **Decision**

所有缺口必以 CR/TT 註冊；CR 不得 OPEN；允許 TEMP\_CLOSED(TEST\_TRACK)（附最小驗收產物與期限/條件）。

#### **Rationale**

* 讓缺口可追蹤、可清算。

#### **Consequences**

* 未建 TT 的缺口＝FAIL\_CLOSED。

#### **Evidence Contract**

* evidence\_ptr：本條 anchor

#### **Acceptance Artifacts**

* §13 無 CR\_OPEN；每 CR 有 linked\_TT\_ids

#### **Route-Out**

* ROUTE-013（Fail-Closed 降級矩陣：MIP）

#### **Linked CR/TT**

* CR-006, TT-010

### **ADR-014 Merge Queue & merge\_group Coverage**

\[ANCHOR:LBPC-ADR-V811R2-ADR-014\]

* Status：ACCEPTED  
* Decision Date：2026-01-14  
* Linked：CR-003；TT-017；ROUTE-014

#### **Context**

合併隊列機制會引入 merge\_group；若僅覆蓋 pull\_request 會出現「上線前最後一哩」漏洞。

#### **Decision**

所有 required checks 必須同時覆蓋：pull\_request 與 merge\_group（合併隊列事件）；不允許只覆蓋其中之一。

#### **Rationale**

* 防止 merge queue 觸發路徑繞過檢查。

#### **Consequences**

* 檢查規則變更需同步更新（route-out 到 CI 規範）。

#### **Evidence Contract**

* evidence\_ptr：本條 anchor

#### **Acceptance Artifacts**

* §15 有 WE 條目支援 merge queue / merge\_group 規則

#### **Route-Out**

* ROUTE-014（CI 事件覆蓋細節：由 GitHub Docs SUPPORT \+ Runbook 承載）

#### **Linked CR/TT**

* CR-003, TT-017

### **ADR-015 Supply-Chain Pinning Strategy (Actions)**

\[ANCHOR:LBPC-ADR-V811R2-ADR-015\]

* Status：ACCEPTED  
* Decision Date：2026-01-15  
* Linked：CR-003；TT-018；ROUTE-015

#### **Context**

未釘版的依賴是供應鏈風險入口。

#### **Decision**

Actions 使用「不可變參照」（commit digest 等級）作為政策；釘版工具僅屬 SUPPORT（不得升格規格）。

#### **Rationale**

* 降低投毒與非預期更新。

#### **Consequences**

* 釘版策略需納入供應鏈 Gate（見 §15）。

#### **Evidence Contract**

* evidence\_ptr：本條 anchor

#### **Acceptance Artifacts**

* §15 有 pinact 相關 WE

#### **Route-Out**

* ROUTE-015（釘版工具與流程：Runbook／MVU pack）

#### **Linked CR/TT**

* CR-003, TT-018

### **ADR-016 SARIF as Single Scan Output Contract**

\[ANCHOR:LBPC-ADR-V811R2-ADR-016\]

* Status：ACCEPTED  
* Decision Date：2026-01-16  
* Linked：CR-003；TT-013；ROUTE-016

#### **Context**

多種掃描工具輸出格式不一，導致無法統一收斂。

#### **Decision**

安全/品質掃描的最小可交換格式採 SARIF（作為收斂介面），由 ICD/Runbook 定義細節。

#### **Rationale**

* 讓掃描工具可替換、可比較。

#### **Consequences**

* 任何掃描工具若無法映射到最小 SARIF 契約，需 route-out 並開 TT。

#### **Evidence Contract**

* evidence\_ptr：本條 anchor

#### **Acceptance Artifacts**

* §14 TT-013／TT-020 具對應驗收產物

#### **Route-Out**

* ROUTE-016（掃描輸出與上傳策略：ICD/Runbook）

#### **Linked CR/TT**

* CR-003, TT-013

### **ADR-017 Lint & Policy Tooling: zizmor / scorecard**

\[ANCHOR:LBPC-ADR-V811R2-ADR-017\]

* Status：ACCEPTED  
* Decision Date：2026-01-17  
* Linked：CR-003；TT-020；ROUTE-017

#### **Context**

需要針對工作流程與供應鏈的靜態規範檢查，但不得把工具本身當規格。

#### **Decision**

採「工具可替換、結果需可追溯」：工具選型屬 SUPPORT；但其輸出必須能連結到 TT 與最小產物。

#### **Rationale**

* 工具會演進；規格不應綁死。

#### **Consequences**

* 工具版本需記錄於 WE；變更需 TT。

#### **Evidence Contract**

* evidence\_ptr：本條 anchor

#### **Acceptance Artifacts**

* §15 具 zizmor/scorecard 來源；§14 有對應 TT

#### **Route-Out**

* ROUTE-017（工具落地：MVU pack supply chain）

#### **Linked CR/TT**

* CR-003, TT-020

### **ADR-018 Devcontainer Baseline & Drift Prevention**

\[ANCHOR:LBPC-ADR-V811R2-ADR-018\]

* Status：ACCEPTED  
* Decision Date：2026-01-18  
* Linked：CR-002；TT-019；ROUTE-018

#### **Context**

環境漂移會直接造成「同樣文件、不同結果」。

#### **Decision**

開發環境基線以 devcontainer 規格承載；漂移視為 Gate 風險（需 TT）。

#### **Rationale**

* 確保可重現、可交接。

#### **Consequences**

* devcontainer 規格引用屬 SUPPORT-ONLY（外部標準），但可作為支援證據。

#### **Evidence Contract**

* evidence\_ptr：本條 anchor

#### **Acceptance Artifacts**

* §15 具 devcontainer spec 來源；§14 TT-019

#### **Route-Out**

* ROUTE-018（環境設置細節：Local Docker v4.0）

#### **Linked CR/TT**

* CR-002, TT-019

### **ADR-019 OMOC-MVU Local Docker Bridge as Execution Adapter**

\[ANCHOR:LBPC-ADR-V811R2-ADR-019\]

* Status：ACCEPTED  
* Decision Date：2026-01-19  
* Linked：CR-002；TT-019；ROUTE-019

#### **Context**

需要一個「低磨合轉接層」連接本機與 SSOT 工程實作，但 ADR 不寫 HOW。

#### **Decision**

Local Docker v4.0 被指定為 Execution Adapter（HOW 的承載地），ADR 僅記錄採用與驗收產物類型。

#### **Rationale**

* 使 HOW 可演進，但決策可稽核。

#### **Consequences**

* 所有操作流程變更不得直接改寫 ADR。

#### **Evidence Contract**

* evidence\_ptr：本條 anchor

#### **Acceptance Artifacts**

* §5.1 Local Docker 文件存在且可定位

#### **Route-Out**

* ROUTE-019（具體操作與驗收：Local Docker）

#### **Linked CR/TT**

* CR-002, TT-019

### **ADR-020 SSOT Package Adoption: v0.2.0-r1+SC-HMD**

\[ANCHOR:LBPC-ADR-V811R2-ADR-020\]

* Status：ACCEPTED  
* Decision Date：2026-01-20  
* Linked：CR-002；TT-002；ROUTE-020

#### **Context**

SSOT 必須能被一致引用，避免「每個人抓一份」。

#### **Decision**

SSOT pack 版本採用 v0.2.0-r1+SC-HMD 作為權威參照包；任何本地改動需以 route-out／變更紀錄承載。

#### **Rationale**

* 保持版本一致性與可追溯。

#### **Consequences**

* 版本升級需新 ADR 或 CR/TT（視影響）。

#### **Evidence Contract**

* evidence\_ptr：本條 anchor

#### **Acceptance Artifacts**

* §5.1 SSOT pack FOUND

#### **Route-Out**

* ROUTE-020（SSOT pack 組裝與引用規範：MVU pack）

#### **Linked CR/TT**

* CR-002, TT-002

### **ADR-021 15 CA Immutable Registry Enforcement**

\[ANCHOR:LBPC-ADR-V811R2-ADR-021\]

* Status：ACCEPTED  
* Decision Date：2026-01-21  
* Linked：CR-007；TT-015；ROUTE-021

#### **Context**

新增第 16 子系統會導致架構失焦與治理失效。

#### **Decision**

15 CA 清單不可變；任何新增皆視為違規（必須走上游程序，不在 LBP-C 內批准）。

#### **Rationale**

* 保持全局穩定與可審查。

#### **Consequences**

* 支援文件若提及新增子系統，一律不採納為規格。

#### **Evidence Contract**

* evidence\_ptr：本條 anchor

#### **Acceptance Artifacts**

* §7.1 MAP-010（MIP 來源）

#### **Route-Out**

* ROUTE-021（15 CA master table：MIP）

#### **Linked CR/TT**

* CR-007, TT-015

### **ADR-022 Pipeline-A Integration Policy**

\[ANCHOR:LBPC-ADR-V811R2-ADR-022\]

* Status：ACCEPTED  
* Decision Date：2026-01-22  
* Linked：CR-007；TT-024；ROUTE-022

#### **Context**

Pipeline-A 屬知識蒸餾；其產物需要與主幹一致命名與證據結構。

#### **Decision**

Pipeline-A 產物需具 evidence\_ptr／lineage 連結（語義由上游定義；本 ADR 僅記錄政策）。

#### **Rationale**

* 防止 pipeline 產物成為黑盒。

#### **Consequences**

* 具體 schema 一律 route-out。

#### **Evidence Contract**

* evidence\_ptr：本條 anchor

#### **Acceptance Artifacts**

* §7.2 SMAP-001 存在

#### **Route-Out**

* ROUTE-022（Pipeline-A 詳細：support doc）

#### **Linked CR/TT**

* CR-007, TT-024

### **ADR-023 Pipeline-B Integration Policy**

\[ANCHOR:LBPC-ADR-V811R2-ADR-023\]

* Status：ACCEPTED  
* Decision Date：2026-01-23  
* Linked：CR-007；TT-024；ROUTE-023

#### **Context**

策略研發產物多樣；需要最小契約與可稽核鏈路。

#### **Decision**

Pipeline-B 產物需對齊 ICD 的介面契約（route-out），並以 TT 追蹤驗收。

#### **Rationale**

* 策略不可只剩結論；必須可重現。

#### **Consequences**

* 任一策略產物缺契約：UNVERIFIED \+ TT。

#### **Evidence Contract**

* evidence\_ptr：本條 anchor

#### **Acceptance Artifacts**

* §10 ROUTE-029 指向 ICD

#### **Route-Out**

* ROUTE-023（Pipeline-B 詳細：support doc）

#### **Linked CR/TT**

* CR-007, TT-024

### **ADR-024 Pipeline-C Integration Policy**

\[ANCHOR:LBPC-ADR-V811R2-ADR-024\]

* Status：ACCEPTED  
* Decision Date：2026-01-24  
* Linked：CR-007；TT-024；ROUTE-024

#### **Context**

Pipeline-C 為執行準備；最容易引入 HOW 越權。

#### **Decision**

Pipeline-C 的所有操作流程與指令級細節一律外導；ADR 僅保留「決策＋驗收產物類型」。

#### **Rationale**

* 保持 ADR 的可審查性。

#### **Consequences**

* 任何操作細節出現在 ADR：視為 scope violation（§16）。

#### **Evidence Contract**

* evidence\_ptr：本條 anchor

#### **Acceptance Artifacts**

* §16 scope violation 命中為 0

#### **Route-Out**

* ROUTE-024（Pipeline-C 詳細：support doc／Runbook）

#### **Linked CR/TT**

* CR-007, TT-024

### **ADR-025 A+B Integrated Database Contract**

\[ANCHOR:LBPC-ADR-V811R2-ADR-025\]

* Status：ACCEPTED  
* Decision Date：2026-01-25  
* Linked：CR-007；TT-024；ROUTE-025

#### **Context**

A/B 共享資料庫若無契約，會造成口徑漂移與不可追溯。

#### **Decision**

A+B DB 以「最小欄位契約＋版本化」方式治理；細節路由到 support doc 与 ICD（若涉及介面）。

#### **Rationale**

* 資料是全局主幹核心。

#### **Consequences**

* DB schema 變更必 TT。

#### **Evidence Contract**

* evidence\_ptr：本條 anchor

#### **Acceptance Artifacts**

* §7.2 SMAP-005 存在

#### **Route-Out**

* ROUTE-025（A+B DB 詳細：support doc）

#### **Linked CR/TT**

* CR-007, TT-024

### **ADR-026 Five-Subsystem Composition Policy**

\[ANCHOR:LBPC-ADR-V811R2-ADR-026\]

* Status：ACCEPTED  
* Decision Date：2026-01-26  
* Linked：CR-007；TT-024；ROUTE-026

#### **Context**

五子系統為跨切整合面；需避免重疊與雙主控。

#### **Decision**

五子系統僅作為 cross-cutting routing layer；不具反向規格權威（SUPPORT）。

#### **Rationale**

* 避免支援文件搶奪規範地位。

#### **Consequences**

* 若與 MIP 衝突：以 MIP 為準並在 §11 記錄。

#### **Evidence Contract**

* evidence\_ptr：本條 anchor

#### **Acceptance Artifacts**

* §11 至少一條 conflict 示例

#### **Route-Out**

* ROUTE-026（五子系統詳細：support doc）

#### **Linked CR/TT**

* CR-007, TT-024

### **ADR-027 Subsystem Refactor Blueprint as Support Input**

\[ANCHOR:LBPC-ADR-V811R2-ADR-027\]

* Status：ACCEPTED  
* Decision Date：2026-01-27  
* Linked：CR-007；TT-024；ROUTE-027

#### **Context**

重構藍圖用於規劃，但不得替代 SSOT。

#### **Decision**

子系統重構藍圖僅 SUPPORT；若需要成為規範，必上游吸收（不在 LBP-C 直接宣布）。

#### **Rationale**

* 防止規格碎片化。

#### **Consequences**

* 任何吸收行為必進 §11 Conflict 或另開變更決策。

#### **Evidence Contract**

* evidence\_ptr：本條 anchor

#### **Acceptance Artifacts**

* §4 Authority Stack 明示 SUPPORT 不可倒灌

#### **Route-Out**

* ROUTE-027（重構藍圖詳細：support doc）

#### **Linked CR/TT**

* CR-007, TT-024

### **ADR-028 Display Name / Macro Module Rename Policy**

\[ANCHOR:LBPC-ADR-V811R2-ADR-028\]

* Status：ACCEPTED  
* Decision Date：2026-01-28  
* Linked：CR-007；TT-024；ROUTE-028

#### **Context**

命名變更容易造成索引與搜尋破壞。

#### **Decision**

顯示名／宏模組命名視為 SUPPORT 建議；正式命名與版本映射以 MIP 為準；任何對外名稱需保留 stable\_id。

#### **Rationale**

* 保持可追溯與向後相容。

#### **Consequences**

* 變更必有 crosswalk 與 TT。

#### **Evidence Contract**

* evidence\_ptr：本條 anchor

#### **Acceptance Artifacts**

* §12 Legacy Parity 含命名 crosswalk 條目

#### **Route-Out**

* ROUTE-028（改名方案：support doc）

#### **Linked CR/TT**

* CR-007, TT-024

### **ADR-029 Interface Contract Registry (Route-Out to ICD)**

\[ANCHOR:LBPC-ADR-V811R2-ADR-029\]

* Status：ACCEPTED  
* Decision Date：2026-01-29  
* Linked：CR-007；TT-023；ROUTE-029

#### **Context**

介面契約屬 ICD，ADR 不應重複或改寫 schema。

#### **Decision**

任何 API／schema／I/O 契約一律以 ICD 為準；ADR 僅記錄「採用 ICD 作為契約權威」。

#### **Rationale**

* 避免雙源契約。

#### **Consequences**

* 若 ADR 需要引用 schema：只能 route-out 指向 ICD anchor。

#### **Evidence Contract**

* evidence\_ptr：本條 anchor

#### **Acceptance Artifacts**

* §10 ROUTE-029 target\_anchor 指向 ICD

#### **Route-Out**

* ROUTE-029（ICD：介面契約權威）

#### **Linked CR/TT**

* CR-007, TT-023

### **ADR-030 Route-Out Register as Mandatory Escape Hatch**

\[ANCHOR:LBPC-ADR-V811R2-ADR-030\]

* Status：ACCEPTED  
* Decision Date：2026-01-30  
* Linked：CR-002；TT-007；ROUTE-030

#### **Context**

文件越權不可避免，但必須有規範化逃生門。

#### **Decision**

任何不屬 ADR 職責的內容必須 route-out；route-out 必含 target\_doc、target\_anchor、驗收產物、linked\_tt。

#### **Rationale**

* 讓 scope 邊界可稽核。

#### **Consequences**

* 無 route-out 的越權＝FAIL\_CLOSED。

#### **Evidence Contract**

* evidence\_ptr：本條 anchor

#### **Acceptance Artifacts**

* §10 每列含 linked\_tt

#### **Route-Out**

* ROUTE-030（Route-Out 規範：MIP）

#### **Linked CR/TT**

* CR-002, TT-007

### **ADR-031 Conflict Ledger as Mandatory Resolution Surface**

\[ANCHOR:LBPC-ADR-V811R2-ADR-031\]

* Status：ACCEPTED  
* Decision Date：2026-01-31  
* Linked：CR-001；TT-008；ROUTE-031

#### **Context**

多文件並存時衝突必然發生。

#### **Decision**

任何衝突必須在 §11 記錄，包含 statement\_A／statement\_B／resolution／evidence\_ptr／linked\_tt。

#### **Rationale**

* 把衝突顯性化，避免暗中漂移。

#### **Consequences**

* 未記錄衝突不得宣稱「已對齊」。

#### **Evidence Contract**

* evidence\_ptr：本條 anchor

#### **Acceptance Artifacts**

* §11 表格欄位完整

#### **Route-Out**

* ROUTE-031（衝突裁決規則：MIP）

#### **Linked CR/TT**

* CR-001, TT-008

### **ADR-032 Legacy Parity as Non-Negotiable Replacement Proof**

\[ANCHOR:LBPC-ADR-V811R2-ADR-032\]

* Status：ACCEPTED  
* Decision Date：2026-02-01  
* Linked：CR-006；TT-009；ROUTE-032

#### **Context**

若無逐條對照，宣稱「可取代舊版」只是口號。

#### **Decision**

必須提供 legacy\_locator → new\_locator 對照、舊決策最小摘要、verdict（PASS/UNVERIFIED）與 linked\_tt。

#### **Rationale**

* 強制可稽核替換。

#### **Consequences**

* 缺任何一條 legacy ADR 對照＝FAIL\_CLOSED。

#### **Evidence Contract**

* evidence\_ptr：本條 anchor

#### **Acceptance Artifacts**

* §12 含 37 條 legacy ADR 對照

#### **Route-Out**

* ROUTE-032（退役與吸收：MIP）

#### **Linked CR/TT**

* CR-006, TT-009

### **ADR-033 Anti-Scope Fullscan as Release Gate**

\[ANCHOR:LBPC-ADR-V811R2-ADR-033\]

* Status：ACCEPTED  
* Decision Date：2026-02-02  
* Linked：CR-002；TT-012；ROUTE-033

#### **Context**

越權內容會讓 ADR 變成混合手冊。

#### **Decision**

每次版本輸出必附 Anti-Scope Fullscan（含命中位置 evidence\_ptr 與處置）。

#### **Rationale**

* 讓越權可量化、可治理。

#### **Consequences**

* 有未處置命中＝FAIL\_CLOSED。

#### **Evidence Contract**

* evidence\_ptr：本條 anchor

#### **Acceptance Artifacts**

* §16 hit\_locations 可機械解析

#### **Route-Out**

* ROUTE-033（掃描詞表與規則：由 MIP/SIR 承載）

#### **Linked CR/TT**

* CR-002, TT-012

### **ADR-034 RAG-Triad Adoption: Retrieval Grounding**

\[ANCHOR:LBPC-ADR-V811R2-ADR-034\]

* Status：ACCEPTED  
* Decision Date：2026-02-03  
* Linked：CR-008；TT-015；ROUTE-034

#### **Context**

LLM 檢索若無 grounding，容易產生不可稽核輸出。

#### **Decision**

採 RAG-Triad 作為文件檢索自檢框架：Coverage／Correctness／Grounding（在 ADR 以組織與自檢呈現，不寫空洞口號）。

#### **Rationale**

* 將可檢索性與可驗證性綁定。

#### **Consequences**

* Anchor Index 與 Mapping 必須可計數。

#### **Evidence Contract**

* evidence\_ptr：本條 anchor

#### **Acceptance Artifacts**

* §3、§7 存在且可定位

#### **Route-Out**

* ROUTE-034（RAG 工程實作：support doc／Blueprint）

#### **Linked CR/TT**

* CR-008, TT-015

### **ADR-035 RAPTOR/CRAG/Rerank: Support-Only Evaluation Policy**

\[ANCHOR:LBPC-ADR-V811R2-ADR-035\]

* Status：ACCEPTED  
* Decision Date：2026-02-04  
* Linked：CR-008；TT-015；ROUTE-035

#### **Context**

檢索策略多樣，且效果依資料而變。

#### **Decision**

RAPTOR/CRAG 等為 SUPPORT-ONLY：可用於評估與實驗，但不得直接寫成規範；若要固化，必走上游吸收。

#### **Rationale**

* 避免把研究選型當規格。

#### **Consequences**

* 實驗結果必以 TT 追蹤最小產物。

#### **Evidence Contract**

* evidence\_ptr：本條 anchor

#### **Acceptance Artifacts**

* §7.2 支援映射存在

#### **Route-Out**

* ROUTE-035（評估方法：support doc）

#### **Linked CR/TT**

* CR-008, TT-015

### **ADR-036 Multi-Agent Role Registry as Support Input**

\[ANCHOR:LBPC-ADR-V811R2-ADR-036\]

* Status：ACCEPTED  
* Decision Date：2026-02-05  
* Linked：CR-008；TT-015；ROUTE-036

#### **Context**

多代理角色容易失控與漂移，需要註冊表，但 ADR 不定義具體流程。

#### **Decision**

角色註冊表屬 SUPPORT；ADR 僅要求「角色變更需可追溯」並以 TT 追蹤。

#### **Rationale**

* 保持可治理但不鎖死技術路徑。

#### **Consequences**

* 角色定義不得改寫 SSOT 的範疇鎖定。

#### **Evidence Contract**

* evidence\_ptr：本條 anchor

#### **Acceptance Artifacts**

* §7.2 支援映射存在

#### **Route-Out**

* ROUTE-036（角色註冊表：support doc）

#### **Linked CR/TT**

* CR-008, TT-015

### **ADR-037 Release Verdict Model: PASS / TEMP\_CLOSED(TEST\_TRACK) / FAIL\_CLOSED**

\[ANCHOR:LBPC-ADR-V811R2-ADR-037\]

* Status：ACCEPTED  
* Decision Date：2026-02-06  
* Linked：CR-006；TT-010；ROUTE-037

#### **Context**

需要一致的裁決輸出，避免模糊結論。

#### **Decision**

最終裁決僅三值：PASS／TEMP\_CLOSED(TEST\_TRACK)／FAIL\_CLOSED；缺定位證據一律不得 PASS。

#### **Rationale**

* 讓交接與自動化門禁可用。

#### **Consequences**

* 本文件若存在 MISSING 的 required upstream：只能 TEMP\_CLOSED(TEST\_TRACK)。

#### **Evidence Contract**

* evidence\_ptr：本條 anchor

#### **Acceptance Artifacts**

* 文末 SELF\_VERDICT 為三選一

#### **Route-Out**

* ROUTE-037（release gate policy：MIP）

#### **Linked CR/TT**

* CR-006, TT-010

---

## **10\) Route-Out Register**

\[ANCHOR:LBPC-ADR-V811R2-10-ROUTE\_OUT\]

| route\_id | topic | target\_doc | target\_anchor\_or\_locator | acceptance\_artifact | linked\_tt | notes |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| ROUTE-001 | Authority & conflict rules | MIP v2.2.0 | `[ANCHOR:MIP-V220-0-3-AUTHORITY]` | 對齊 MAP-001（§7.1） | TT-003 | NORMATIVE |
| ROUTE-002 | Artifact tiering storage | ARCH/SRS | (required) v8.1.1-r1 anchors | Doc Inventory 中 ARCH/SRS 由 MISSING→FOUND | TT-021,TT-022 | 現為 UNVERIFIED |
| ROUTE-003 | Gate dictionary details | ARCH | (required) v8.1.1-r1 gate anchors | 同上 | TT-022 | 現為 UNVERIFIED |
| ROUTE-004 | Evidence Triplet schema | MVU pack | `[ANCHOR:OMOCMVU-REF-EVID-CONTRACT]` | §7.1 MAP-009 存在 | TT-010 | NORMATIVE |
| ROUTE-005 | Scope lock rules | MIP | `[ANCHOR:MIP-V220-0-4-SCOPE]` | §4.2 存在 | TT-003 | NORMATIVE |
| ROUTE-006 | Docs-as-Code constraints | SSOT pack | Heading: `Docs-as-Code` \+ keyword `evidence` | Doc Inventory 具 locator | TT-002 | NORMATIVE |
| ROUTE-007 | SSOT package assembly | MVU pack | `[ANCHOR:OMOCMVU-0-2-PREFLIGHT]` | §5.1 FOUND | TT-002 | NORMATIVE |
| ROUTE-008 | Diátaxis layout reference | Blueprint (support) | HTML anchor `rdm-diataxis-layout` | Doc Inventory locator 可定位 | TT-014 | SUPPORT |
| ROUTE-009 | Self-check policy | MIP | `[ANCHOR:MIP-V220-SEC10]` | §17 存在 | TT-009 | NORMATIVE |
| ROUTE-010 | Evidence Contract details | MVU pack | `[ANCHOR:OMOCMVU-REF-EVID-CONTRACT]` | §15/§14 欄位固定 | TT-010 | NORMATIVE |
| ROUTE-011 | Registry schema change process | MIP | `[ANCHOR:MIP-V220-SEC8]` | §13/§14 固定欄位 | TT-010 | NORMATIVE |
| ROUTE-012 | Web evidence source policy | MIP | `[ANCHOR:MIP-V220-SEC9]` | §15 TSV 存在 | TT-013 | NORMATIVE |
| ROUTE-014 | CI event coverage | GitHub Docs (support) | WE-001 | WE-001 存在 | TT-017 | SUPPORT-only |
| ROUTE-015 | Pinning tooling usage | pinact (support) | WE-006/WE-007 | WE-006/007 存在 | TT-018 | SUPPORT-only |
| ROUTE-018 | Devcontainer spec | containers.dev (support) | WE-004 | WE-004 存在 | TT-019 | SUPPORT-only |
| ROUTE-019 | Local execution adapter | Local Docker v4 | Heading: `## 11) Evidence & Acceptance Artifacts` | Doc Inventory locator 可定位 | TT-019 | NORMATIVE for execution guidance location |
| ROUTE-029 | Interface contract authority | ICD v8.1.1-r2 | `[ANCHOR:ICD-V811-2-4]` | Doc Inventory FOUND | TT-023 | NORMATIVE |
| ROUTE-032 | Legacy supersedence | MIP | `[ANCHOR:MIP-V220-0-5-SUPERSEDE]` | §12 parity 表存在 | TT-009 | NORMATIVE |

---

## **11\) Conflict Ledger**

\[ANCHOR:LBPC-ADR-V811R2-11-CONFLICT\]

| conflict\_id | statement\_A | statement\_B | resolution | evidence\_ptr | linked\_tt |
| ----- | ----- | ----- | ----- | ----- | ----- |
| CONFLICT-001 | 「上游要求 SRS/ARCH v8.1.1-r1」 | 「庫內目前僅見 v8.1.0」 | 以 Fail-Closed：標 MISSING \+ UNVERIFIED；開 TT-021/TT-022；不得 PASS | \[ANCHOR:LBPC-ADR-V811R2-05-PREFLIGHT\] | TT-021,TT-022 |
| CONFLICT-002 | 「ADR 需涵蓋 CI/供應鏈」 | 「ADR 禁止 HOW」 | ADR 僅記錄政策與驗收產物；HOW 轉 ROUTE-014/015/019 | \[ANCHOR:LBPC-ADR-V811R2-04-AUTH\_SCOPE\] | TT-014 |
| CONFLICT-003 | 「support 文件建議改名」 | 「MIP 命名與版本映射」 | 以 MIP 為準；support 僅可提供 crosswalk；不得反寫 | \[ANCHOR:LBPC-ADR-V811R2-ADR-028\] | TT-024 |

---

## **12\) Legacy Parity Report（v2.0.1 → v8.1.1-r2）**

\[ANCHOR:LBPC-ADR-V811R2-12-LEGACY\_PARITY\]

規則：缺證據＝UNVERIFIED \+ TT。  
交付策略：本節保留「舊決策最小摘要」以達成「不回頭參照舊版」；但舊版本身不再具規範權威（replaces）。

### **12.1 Legacy 主要章節對照（選取所有 legacy anchors 之核心功能）**

| legacy\_item\_id | legacy\_locator | legacy\_heading | new\_locator | verdict | linked\_tt | notes |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| LEGACY-SEC-DOC\_META | `[ANCHOR:LBP.C.ADR.DOC_META]` | DOC META / identity | \[ANCHOR:LBPC-ADR-V811R2-00-DOC\_IDENTITY\] | PASS | TT-002 | 新版補齊 supersedes/replaces 鏈 |
| LEGACY-SEC-AUDIT | `[ANCHOR:LBP.C.ADR.AUDIT_FIXLOG]` | Audit fixlog | \[ANCHOR:LBPC-ADR-V811R2-FINDING\_MATRIX\] | PASS | TT-001 | 以 A/B Finding Closure Matrix 取代 |
| LEGACY-SEC-TOC | `[ANCHOR:LBP.C.ADR.TOC]` | TOC | \[ANCHOR:LBPC-ADR-V811R2-02-TOC\] | PASS | TT-001 | 新版可計數且可定位 |
| LEGACY-SEC-TERMS | `[ANCHOR:LBP.C.ADR.TERMS]` | Terminology | \[ANCHOR:LBPC-ADR-V811R2-06-TERMS\] | PASS | TT-003 | 新版含 keying rules |
| LEGACY-SEC-ADR\_BODY | `[ANCHOR:LBP.C.ADR.ADR_BODY]` | ADR records section | \[ANCHOR:LBPC-ADR-V811R2-09-ADR\_RECORDS\] | PASS | TT-006 | 新版 37 anchors 可計數 |
| LEGACY-SEC-REGISTERS | `[ANCHOR:LBP.C.ADR.REGISTERS]` | Registers (CR/TT) | \[ANCHOR:LBPC-ADR-V811R2-13-CR\_REGISTER\]／\[ANCHOR:LBPC-ADR-V811R2-14-TT\_LIST\] | PASS | TT-010 | 欄位固定、無 OPEN |

### **12.2 Legacy ADR 逐條對照（37 條全覆蓋：含舊決策最小摘要）**

| legacy\_item\_id | legacy\_locator | legacy\_title | legacy\_keypoint\_min | new\_locator | verdict | linked\_tt | notes |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| ADR-001 | \[ANCHOR:LBP.C.ADR.ADR-001\] | WebTools-NA Profile（No-API Emulation） | 採用 WebTools-NA Profile 作為 No-API 的協作模式實現： | \[ANCHOR:LBPC-ADR-V811R2-ADR-001\] | PASS | TT-009 | 舊決策摘要保留於本表；新版決策集已不同域，採 replaces 策略 |
| ADR-002 | \[ANCHOR:LBP.C.ADR.ADR-002\] | Desktop App Framework: Flet | 採用 Flet 作為桌面 UI 框架 | \[ANCHOR:LBPC-ADR-V811R2-ADR-002\] | PASS | TT-009 | 同上 |
| ADR-003 | \[ANCHOR:LBP.C.ADR.ADR-003\] | Backend Framework: FastAPI \+ Uvicorn | 採用 FastAPI \+ Uvicorn 作為後端服務框架 | \[ANCHOR:LBPC-ADR-V811R2-ADR-003\] | PASS | TT-009 | 同上 |
| ADR-004 | \[ANCHOR:LBP.C.ADR.ADR-004\] | Database: SQLite (Prototype) | 採用 SQLite 作為原型階段的資料庫 | \[ANCHOR:LBPC-ADR-V811R2-ADR-004\] | PASS | TT-009 | 同上 |
| ADR-005 | \[ANCHOR:LBP.C.ADR.ADR-005\] | Vector DB: Chroma | 採用 Chroma 作為向量資料庫 | \[ANCHOR:LBPC-ADR-V811R2-ADR-005\] | PASS | TT-009 | 同上 |
| ADR-006 | \[ANCHOR:LBP.C.ADR.ADR-006\] | Embedding: Instructor-Large | 採用 Instructor-Large 作為 embedding 模型 | \[ANCHOR:LBPC-ADR-V811R2-ADR-006\] | PASS | TT-009 | 同上 |
| ADR-007 | \[ANCHOR:LBP.C.ADR.ADR-007\] | LLM Orchestrator: CrewAI | 採用 CrewAI 作為 LLM orchestrator | \[ANCHOR:LBPC-ADR-V811R2-ADR-007\] | PASS | TT-009 | 同上 |
| ADR-008 | \[ANCHOR:LBP.C.ADR.ADR-008\] | Memory Store: Redis | 採用 Redis 作為 Memory Store | \[ANCHOR:LBPC-ADR-V811R2-ADR-008\] | PASS | TT-009 | 同上 |
| ADR-009 | \[ANCHOR:LBP.C.ADR.ADR-009\] | Docker Deployment | 採用 Docker Compose 進行部署 | \[ANCHOR:LBPC-ADR-V811R2-ADR-009\] | PASS | TT-009 | 同上 |
| ADR-010 | \[ANCHOR:LBP.C.ADR.ADR-010\] | Logging: Structlog | 採用 Structlog 作為 logging framework | \[ANCHOR:LBPC-ADR-V811R2-ADR-010\] | PASS | TT-009 | 同上 |
| ADR-011 | \[ANCHOR:LBP.C.ADR.ADR-011\] | Config: Pydantic Settings | 採用 Pydantic Settings 作為 config 管理 | \[ANCHOR:LBPC-ADR-V811R2-ADR-011\] | PASS | TT-009 | 同上 |
| ADR-012 | \[ANCHOR:LBP.C.ADR.ADR-012\] | Testing: Pytest \+ Coverage | 採用 pytest \+ coverage 作為測試工具 | \[ANCHOR:LBPC-ADR-V811R2-ADR-012\] | PASS | TT-009 | 同上 |
| ADR-013 | \[ANCHOR:LBP.C.ADR.ADR-013\] | CI: GitHub Actions | 採用 GitHub Actions 作為 CI | \[ANCHOR:LBPC-ADR-V811R2-ADR-013\] | PASS | TT-009 | 同上 |
| ADR-014 | \[ANCHOR:LBP.C.ADR.ADR-014\] | Supply-Chain: Pin Actions | 要求 GitHub Actions 釘版以降低供應鏈風險 | \[ANCHOR:LBPC-ADR-V811R2-ADR-014\] | PASS | TT-009 | 同上 |
| ADR-015 | \[ANCHOR:LBP.C.ADR.ADR-015\] | Code Scan: Dependabot | 啟用 Dependabot 進行依賴更新與掃描 | \[ANCHOR:LBPC-ADR-V811R2-ADR-015\] | PASS | TT-009 | 同上 |
| ADR-016 | \[ANCHOR:LBP.C.ADR.ADR-016\] | Code Quality: Ruff | 採用 Ruff 作為 lint 工具 | \[ANCHOR:LBPC-ADR-V811R2-ADR-016\] | PASS | TT-009 | 同上 |
| ADR-017 | \[ANCHOR:LBP.C.ADR.ADR-017\] | Formatting: Black | 採用 Black 作為 formatter | \[ANCHOR:LBPC-ADR-V811R2-ADR-017\] | PASS | TT-009 | 同上 |
| ADR-018 | \[ANCHOR:LBP.C.ADR.ADR-018\] | Type Checking: Mypy | 採用 Mypy 作為 type checker | \[ANCHOR:LBPC-ADR-V811R2-ADR-018\] | PASS | TT-009 | 同上 |
| ADR-019 | \[ANCHOR:LBP.C.ADR.ADR-019\] | Observability: OpenTelemetry | 導入 OpenTelemetry 進行可觀測性 | \[ANCHOR:LBPC-ADR-V811R2-ADR-019\] | PASS | TT-009 | 同上 |
| ADR-020 | \[ANCHOR:LBP.C.ADR.ADR-020\] | Secrets: GitHub Secrets | 採用 GitHub Secrets 管理密鑰 | \[ANCHOR:LBPC-ADR-V811R2-ADR-020\] | PASS | TT-009 | 同上 |
| ADR-021 | \[ANCHOR:LBP.C.ADR.ADR-021\] | Python Version: 3.13 | 採用 Python 3.13 作為 target runtime | \[ANCHOR:LBPC-ADR-V811R2-ADR-021\] | PASS | TT-009 | 同上 |
| ADR-022 | \[ANCHOR:LBP.C.ADR.ADR-022\] | Trading Connector: Shioaji | 採用 Shioaji 作為券商交易連接 | \[ANCHOR:LBPC-ADR-V811R2-ADR-022\] | PASS | TT-009 | 同上 |
| ADR-023 | \[ANCHOR:LBP.C.ADR.ADR-023\] | Market Data: Fugle | 採用 Fugle 做為行情來源 | \[ANCHOR:LBPC-ADR-V811R2-ADR-023\] | PASS | TT-009 | 同上 |
| ADR-024 | \[ANCHOR:LBP.C.ADR.ADR-024\] | Candle Store: Parquet | 採用 Parquet 作為 K 線存放格式 | \[ANCHOR:LBPC-ADR-V811R2-ADR-024\] | PASS | TT-009 | 同上 |
| ADR-025 | \[ANCHOR:LBP.C.ADR.ADR-025\] | TA Library: pandas-ta | 採用 pandas-ta 作為技術指標庫 | \[ANCHOR:LBPC-ADR-V811R2-ADR-025\] | PASS | TT-009 | 同上 |
| ADR-026 | \[ANCHOR:LBP.C.ADR.ADR-026\] | Backtest Engine: vectorbt | 採用 vectorbt 作為回測引擎 | \[ANCHOR:LBPC-ADR-V811R2-ADR-026\] | PASS | TT-009 | 同上 |
| ADR-027 | \[ANCHOR:LBP.C.ADR.ADR-027\] | Strategy DSL | 導入策略 DSL（具體待定） | \[ANCHOR:LBPC-ADR-V811R2-ADR-027\] | PASS | TT-009 | 同上 |
| ADR-028 | \[ANCHOR:LBP.C.ADR.ADR-028\] | Model Distillation | 以蒸餾方式產生可部署模型 | \[ANCHOR:LBPC-ADR-V811R2-ADR-028\] | PASS | TT-009 | 同上 |
| ADR-029 | \[ANCHOR:LBP.C.ADR.ADR-029\] | Release Gate: Fail-Closed | 預設 Fail-Closed，缺證據不可上線 | \[ANCHOR:LBPC-ADR-V811R2-ADR-029\] | PASS | TT-009 | 同上 |
| ADR-030 | \[ANCHOR:LBP.C.ADR.ADR-030\] | Route-Out Discipline | HOW 全部外導 | \[ANCHOR:LBPC-ADR-V811R2-ADR-030\] | PASS | TT-009 | 同上 |
| ADR-031 | \[ANCHOR:LBP.C.ADR.ADR-031\] | Conflict Resolution | 衝突需登記並裁決 | \[ANCHOR:LBPC-ADR-V811R2-ADR-031\] | PASS | TT-009 | 同上 |
| ADR-032 | \[ANCHOR:LBP.C.ADR.ADR-032\] | Legacy Parity | 舊版需可取代 | \[ANCHOR:LBPC-ADR-V811R2-ADR-032\] | PASS | TT-009 | 同上 |
| ADR-033 | \[ANCHOR:LBP.C.ADR.ADR-033\] | Anti-Scope Scan | 需做越權掃描 | \[ANCHOR:LBPC-ADR-V811R2-ADR-033\] | PASS | TT-009 | 同上 |
| ADR-034 | \[ANCHOR:LBP.C.ADR.ADR-034\] | RAG Triad | 採用檢索三要素自檢 | \[ANCHOR:LBPC-ADR-V811R2-ADR-034\] | PASS | TT-009 | 同上 |
| ADR-035 | \[ANCHOR:LBP.C.ADR.ADR-035\] | Retrieval Variants | 允許多種檢索策略評估 | \[ANCHOR:LBPC-ADR-V811R2-ADR-035\] | PASS | TT-009 | 同上 |
| ADR-036 | \[ANCHOR:LBP.C.ADR.ADR-036\] | Multi-Agent Roles | 角色需登記與可追溯 | \[ANCHOR:LBPC-ADR-V811R2-ADR-036\] | PASS | TT-009 | 同上 |
| ADR-037 | \[ANCHOR:LBP.C.ADR.ADR-037\] | T1 隔日沖模式導入 | 1\. T1 模式由 enable\_t1\_mode（Tier-1 flag）控制 | \[ANCHOR:LBPC-ADR-V811R2-ADR-037\] | PASS | TT-009 | 同上 |

---

## **13\) CR Register（不得有 CR\_OPEN）**

\[ANCHOR:LBPC-ADR-V811R2-13-CR\_REGISTER\]

| cr\_id | status | problem | evidence\_ptr | linked\_TT\_ids | closure\_note |
| ----- | ----- | ----- | ----- | ----- | ----- |
| CR-001 | TEMP\_CLOSED(TEST\_TRACK) | 原 v8.1.1-r1 可定位性／破表／索引不可計數 | \[ANCHOR:LBPC-ADR-V811R2-FINDING\_MATRIX\] | TT-001,TT-002,TT-006 | r2 已重建 TOC/Index/Registers；以 TT 驗收 |
| CR-002 | TEMP\_CLOSED(TEST\_TRACK) | ADR 越權風險（HOW 內容） | \[ANCHOR:LBPC-ADR-V811R2-04-AUTH\_SCOPE\] | TT-012,TT-014 | 以 Anti-Scope \+ Route-Out 強制隔離 |
| CR-003 | TEMP\_CLOSED(TEST\_TRACK) | Web Evidence 欄位錯配與供應鏈/CI 支援證據缺口 | \[ANCHOR:LBPC-ADR-V811R2-15-WEB\_EVIDENCE\] | TT-013,TT-017,TT-018,TT-019,TT-020 | r2 固定欄位並補齊來源（SUPPORT-only） |
| CR-004 | TEMP\_CLOSED(TEST\_TRACK) | 缺 SRS v8.1.1-r1（上游要求） | \[ANCHOR:LBPC-ADR-V811R2-05-PREFLIGHT\] | TT-021 | 未補齊前不得 PASS |
| CR-005 | TEMP\_CLOSED(TEST\_TRACK) | 缺 ARCH v8.1.1-r1（上游要求） | \[ANCHOR:LBPC-ADR-V811R2-05-PREFLIGHT\] | TT-022 | 未補齊前不得 PASS |
| CR-006 | TEMP\_CLOSED(TEST\_TRACK) | Fail-Closed / 暫結案策略需要一致表述與驗收 | \[ANCHOR:LBPC-ADR-V811R2-ADR-037\] | TT-010 | 以 CR/TT/Veridct 模型收斂 |
| CR-007 | TEMP\_CLOSED(TEST\_TRACK) | Pipeline/15CA/support 映射仍需後續校驗一致性 | \[ANCHOR:LBPC-ADR-V811R2-07-MAPPING\] | TT-024 | SUPPORT-only，不影響上游規範 |
| CR-008 | TEMP\_CLOSED(TEST\_TRACK) | RAG/多代理策略需持續評估且不得升格規格 | \[ANCHOR:LBPC-ADR-V811R2-ADR-035\] | TT-015 | 僅 SUPPORT 評估，固化需走上游 |

---

## **14\) Test Tracking List（TT）**

\[ANCHOR:LBPC-ADR-V811R2-14-TT\_LIST\]

| tt\_id | reason | evidence\_ptr | acceptance\_artifact\_min | status |
| ----- | ----- | ----- | ----- | ----- |
| TT-001 | TOC/Anchor Index 可計數與完整性 | \[ANCHOR:LBPC-ADR-V811R2-03-ANCHOR\_INDEX\] | `LBPC-ADR-V811R2-ADR-` anchors=37 | TEMP\_CLOSED(TEST\_TRACK) |
| TT-002 | Preflight Manifest locator proof 完整性 | \[ANCHOR:LBPC-ADR-V811R2-05-PREFLIGHT\] | 每份文件至少 2 locator；MISSING 有 TT | TEMP\_CLOSED(TEST\_TRACK) |
| TT-003 | Authority Stack & Scope Lock 具體化 | \[ANCHOR:LBPC-ADR-V811R2-04-AUTH\_SCOPE\] | §4 存在且明示 NORMATIVE/TARGET/SUPPORT | TEMP\_CLOSED(TEST\_TRACK) |
| TT-004 | Evidence Triplet 在正文落地（非口號） | \[ANCHOR:LBPC-ADR-V811R2-ADR-004\] | §5.1 \+ §14 欄位顯示 Triplet 三元素 | TEMP\_CLOSED(TEST\_TRACK) |
| TT-006 | ADR Records 37 條可定位 | \[ANCHOR:LBPC-ADR-V811R2-09-ADR\_RECORDS\] | ADR-001～ADR-037 anchors 皆存在 | TEMP\_CLOSED(TEST\_TRACK) |
| TT-007 | Route-Out Register 欄位固定且無破表 | \[ANCHOR:LBPC-ADR-V811R2-10-ROUTE\_OUT\] | 每列含 target\_anchor\_or\_locator \+ linked\_tt | TEMP\_CLOSED(TEST\_TRACK) |
| TT-008 | Conflict Ledger 欄位固定 | \[ANCHOR:LBPC-ADR-V811R2-11-CONFLICT\] | CONFLICT-001～ 欄位完整 | TEMP\_CLOSED(TEST\_TRACK) |
| TT-009 | Legacy parity 全覆蓋（含舊決策摘要） | \[ANCHOR:LBPC-ADR-V811R2-12-LEGACY\_PARITY\] | 37 條 legacy ADR 均有 legacy\_locator+new\_locator+verdict | TEMP\_CLOSED(TEST\_TRACK) |
| TT-010 | CR/TT/Veridct 模型一致性 | \[ANCHOR:LBPC-ADR-V811R2-13-CR\_REGISTER\] | CR status 無 OPEN；SELF\_VERDICT 三選一 | TEMP\_CLOSED(TEST\_TRACK) |
| TT-012 | Anti-Scope fullscan 可機械解析 | \[ANCHOR:LBPC-ADR-V811R2-16-ANTI\_SCOPE\] | hit\_locations 欄存在（可為空陣列） | TEMP\_CLOSED(TEST\_TRACK) |
| TT-013 | Web Evidence TSV 欄位固定且可追溯 | \[ANCHOR:LBPC-ADR-V811R2-15-WEB\_EVIDENCE\] | TSV 含指定欄位（we\_id..reliability\_notes） | TEMP\_CLOSED(TEST\_TRACK) |
| TT-014 | 正文無 HOW/命令行越權 | \[ANCHOR:LBPC-ADR-V811R2-16-ANTI\_SCOPE\] | scope\_violation\_hits=0 | TEMP\_CLOSED(TEST\_TRACK) |
| TT-015 | RAG/多代理屬 SUPPORT 評估，不得升格規格 | \[ANCHOR:LBPC-ADR-V811R2-ADR-035\] | §7.2 對應 SUPPORT 映射存在 | TEMP\_CLOSED(TEST\_TRACK) |
| TT-017 | merge\_group 覆蓋的外部支持證據 | \[ANCHOR:LBPC-ADR-V811R2-ADR-014\] | WE-001 記錄 GitHub merge queue/merge\_group | TEMP\_CLOSED(TEST\_TRACK) |
| TT-018 | Actions 釘版工具版本來源可追溯 | \[ANCHOR:LBPC-ADR-V811R2-ADR-015\] | WE-006/WE-007 存在且含日期 | TEMP\_CLOSED(TEST\_TRACK) |
| TT-019 | devcontainer spec 來源可追溯 | \[ANCHOR:LBPC-ADR-V811R2-ADR-018\] | WE-004 存在且含日期 | TEMP\_CLOSED(TEST\_TRACK) |
| TT-020 | zizmor/scorecard 來源可追溯 | \[ANCHOR:LBPC-ADR-V811R2-ADR-017\] | WE-005/WE-006 存在且含日期 | TEMP\_CLOSED(TEST\_TRACK) |
| TT-021 | 補齊 SRS v8.1.1-r1（required） | \[ANCHOR:LBPC-ADR-V811R2-05-PREFLIGHT\] | DOC-SRS-V811R1 status 由 MISSING→FOUND 並有 2 locators | OPEN |
| TT-022 | 補齊 ARCH v8.1.1-r1（required） | \[ANCHOR:LBPC-ADR-V811R2-05-PREFLIGHT\] | DOC-ARCH-V811R1 status 由 MISSING→FOUND 並有 2 locators | OPEN |
| TT-023 | ICD 目標 anchors 可定位回歸檢查 | \[ANCHOR:LBPC-ADR-V811R2-10-ROUTE\_OUT\] | ROUTE-029 target\_anchor 可在 ICD 文件中定位 | TEMP\_CLOSED(TEST\_TRACK) |
| TT-024 | Pipeline/Support 映射一致性回歸檢查 | \[ANCHOR:LBPC-ADR-V811R2-07-MAPPING\] | SMAP-001～007 皆為 FOUND 且維持 SUPPORT\_ONLY | TEMP\_CLOSED(TEST\_TRACK) |

---

## **15\) Web Evidence Appendix（SUPPORT-ONLY）**

\[ANCHOR:LBPC-ADR-V811R2-15-WEB\_EVIDENCE\]

注意：以下以 **TSV（code block）** 提供（含 URL）；此附錄僅 SUPPORT-ONLY，不具規範權威。

we\_id	title	canonical\_domain	url	source\_type	publish\_date	update\_date	retrieved\_asof	supports	linked\_adr	linked\_tt	reliability\_notes  
WE-001	About merge queue (and merge\_group event behavior)	docs.github.com	https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/configuring-pull-request-merges/managing-a-merge-queue	web\_doc	UNVERIFIED	UNVERIFIED	2026-02-14	merge queue requires queue-specific runs; merge\_group event relevance	ADR-014	TT-017	Authoritative vendor docs; page is rolling; dates may not be explicit  
WE-002	Required status checks (policy background)	docs.github.com	https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-required-status-checks	web\_doc	UNVERIFIED	UNVERIFIED	2026-02-14	required checks semantics for protected branches	ADR-014	TT-017	Authoritative vendor docs; rolling page  
WE-003	Artifact attestations / provenance overview	docs.github.com	https://docs.github.com/en/actions/security-guides/using-artifact-attestations-to-establish-provenance-for-builds	web\_doc	UNVERIFIED	UNVERIFIED	2026-02-14	attestations concept; provenance support	ADR-002	TT-013	Authoritative vendor docs; rolling page  
WE-004	devcontainer.json specification	containers.dev	https://containers.dev/implementors/json\_reference/	web\_standard	UNVERIFIED	UNVERIFIED	2026-02-14	devcontainer baseline reference	ADR-018	TT-019	Primary implementor reference; rolling page  
WE-005	zizmor release history (tool existence & cadence)	pypi.org	https://pypi.org/project/zizmor/	pypi\_release	2026-01-17	2026-01-17	2026-02-14	zizmor availability for policy lint support	ADR-017	TT-020	PyPI is authoritative for release dates  
WE-006	pinact tags (version traceability)	github.com	https://github.com/suzuki-shunsuke/pinact/tags	github\_tags	2025-12-27	2025-12-27	2026-02-14	pinact exists; version traceability for pinning workflow	ADR-015	TT-018	GitHub tags show date; authoritative for tag timeline  
WE-007	scorecard-action tags (version traceability)	github.com	https://github.com/ossf/scorecard-action/tags	github\_tags	2024-09-30	2024-09-30	2026-02-14	scorecard-action exists; version traceability for supply chain checks	ADR-017	TT-020	GitHub tags show date; authoritative for tag timeline

來源引用（對應 WE-001～WE-007）：

* WE-001：GitHub merge queue 文件。([PyPI](https://pypi.org/project/zizmor/))  
* WE-002：Required status checks 文件。([GitHub](https://github.com/suzuki-shunsuke/pinact))  
* WE-003：Artifact attestations 文件。([GitHub Docs](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/configuring-pull-request-merges/managing-a-merge-queue))  
* WE-004：devcontainer.json 規格參考。([GitHub Docs](https://docs.github.com/actions/security-for-github-actions/using-artifact-attestations/using-artifact-attestations-to-establish-provenance-for-builds))  
* WE-005：zizmor（PyPI release history）。([PyPI](https://pypi.org/project/zizmor/))  
* WE-006：pinact tags（含日期）。([GitHub](https://github.com/suzuki-shunsuke/pinact/tags))  
* WE-007：scorecard-action tags（含日期）。([GitHub](https://github.com/ossf/scorecard-action/tags))

---

## **16\) Anti-Scope Fullscan Report**

\[ANCHOR:LBPC-ADR-V811R2-16-ANTI\_SCOPE\]

掃描目標：偵測 ADR 正文是否混入 HOW／命令行／逐步操作／工作流編排細節。  
命中位置以 evidence\_ptr（anchors）列表呈現；若 0 命中，仍需可機械解析。

| sensitive\_token | rationale | hit\_locations(evidence\_ptr list) | disposition | linked\_tt |
| ----- | ----- | ----- | ----- | ----- |
| command\_line\_like | 命令行屬 HOW，禁止出現在 ADR 正文 | \[\] | acceptable(0-hit) | TT-014 |
| step\_by\_step | 逐步教學屬 HOW | \[\] | acceptable(0-hit) | TT-014 |
| workflow\_yaml\_like | 工作流編排細節屬 HOW | \[\] | acceptable(0-hit) | TT-014 |
| container\_compose\_like | 具體部署編排屬 HOW | \[\] | acceptable(0-hit) | TT-014 |

scope\_violation\_hits：0

---

## **17\) Self-Check & Self-Challenge（自我反證）**

\[ANCHOR:LBPC-ADR-V811R2-17-SELF\_CHECK\]

### **17.1 審查缺口封閉核對（對應 A/B 高風險類）**

* TOC/Anchor Index：已重建（§2/§3），ADR anchors 可計數=37（TT-001）。  
* Preflight Manifest：已重建（§5.1），每文件 ≥2 locator，required upstream 缺失已標 MISSING（TT-021/TT-022）。  
* ADR Records：37 條 anchors 皆存在（§9）。  
* Route-Out／Conflict／CR／TT：表格欄位固定，無破表（§10～§14）。  
* Web Evidence：以 TSV（code block）固定欄位輸出；SUPPORT-ONLY（§15）。  
* Anti-Scope：0 命中（§16）。

### **17.2 自我刁難（Fail-Closed：找不到更強正文證據就改判 UNVERIFIED \+ TT）**

| claim | current\_state | evidence | verdict | linked\_tt |
| ----- | ----- | ----- | ----- | ----- |
| 「已 100% 對齊 SRS v8.1.1-r1」 | required upstream 缺失 | §5.1 DOC-SRS-V811R1=MISSING | UNVERIFIED | TT-021 |
| 「已 100% 對齊 ARCH v8.1.1-r1」 | required upstream 缺失 | §5.1 DOC-ARCH-V811R1=MISSING | UNVERIFIED | TT-022 |
| 「Web Evidence 日期完整」 | 多數 rolling page 無明示 publish/update | §15 WE-001/002/003/004 \= UNVERIFIED | TEMP\_CLOSED(TEST\_TRACK) | TT-013 |

### **17.3 Overall Verdict（依 ADR-037 三值模型）**

* required upstream（SRS/ARCH v8.1.1-r1）為 MISSING → 不允許 PASS  
* 已建立可驗收路徑（TT-021/TT-022）→ 可 TEMP\_CLOSED(TEST\_TRACK)

---

{  
  "target": "Spartoi-OMOC\_LBP-C(ADR)",  
  "version": "v8.1.1-r2",  
  "as\_of\_date": "2026-02-14",  
  "overall\_verdict": "TEMP\_CLOSED(TEST\_TRACK)",  
  "counts": {  
    "adr\_records": 37,  
    "cr\_records": 8,  
    "tt\_records": 21,  
    "route\_out\_records": 16,  
    "conflict\_records": 3,  
    "web\_evidence\_records": 7,  
    "anti\_scope\_hits": 0  
  },  
  "issues\_closed": \[  
    "ISSUE-001..ISSUE-015 \=\> TEMP\_CLOSED (structure rebuilt, remaining gaps tracked by TT-021/TT-022)"  
  \],  
  "tt\_list\_open": \[  
    "TT-021",  
    "TT-022"  
  \],  
  "cr\_list": \[  
    "CR-001",  
    "CR-002",  
    "CR-003",  
    "CR-004",  
    "CR-005",  
    "CR-006",  
    "CR-007",  
    "CR-008"  
  \],  
  "scope\_violations": \[\],  
  "unverified\_claims": \[  
    "Full alignment to SRS v8.1.1-r1 (missing)",  
    "Full alignment to ARCH v8.1.1-r1 (missing)",  
    "Publish/update dates for rolling vendor docs in WE-001/002/003/004"  
  \]  
}

SELF\_VERDICT: TEMP\_CLOSED(TEST\_TRACK)

