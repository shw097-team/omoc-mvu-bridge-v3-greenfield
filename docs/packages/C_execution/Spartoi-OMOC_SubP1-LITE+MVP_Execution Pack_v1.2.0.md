# **Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.2.0**

\[ANCHOR:CEXE-V120-ROOT\]

**Transport note**：本輸出為單檔 Markdown 正文；canonical 檔名語義：`Spartoi-OMOC_SubP1-LITE+MVP_Execution Pack_v1.2.0.md`。  
**Files-first / No-Source-No-Norm**：任何 MUST/SHALL/REQUIRED 句，必須緊貼 `evidence_ptr`（DOCLOC \+ anchor 或 Lx-Ly）。找不到定位 → **降級 TT（TEMP\_CLOSED→TEST\_TRACK）**。  
**審查整合來源**：`/mnt/data/Spartoi-OMOC_SubP1-LITE+MVP_Execution Pack_v1.1.0_審查報告.md`

---

## **TOC（anchors-first）**

\[ANCHOR:CEXE-V120-TOC\]

* [0\. DOC\_META](https://chatgpt.com/g/g-p-699dd2746154819181f7c3ecfbe1e96a-spartoi-omoc-wp-rip/c/699e81ba-4cfc-83ab-9a42-f5cd651b52db?tab=files#cxe-v120-doc-meta) `[ANCHOR:CXE-V120-DOC-META]`  
* [1\. AI\_PATH（2 分鐘最短路徑 \+ Fail-Closed 指令）](https://chatgpt.com/g/g-p-699dd2746154819181f7c3ecfbe1e96a-spartoi-omoc-wp-rip/c/699e81ba-4cfc-83ab-9a42-f5cd651b52db?tab=files#cxe-v120-ai-path) `[ANCHOR:CXE-V120-AI-PATH]`  
* [2\. AUTHORITY\_AND\_BOUNDARY（裁決 \+ 禁區 \+ 術語消歧義）](https://chatgpt.com/g/g-p-699dd2746154819181f7c3ecfbe1e96a-spartoi-omoc-wp-rip/c/699e81ba-4cfc-83ab-9a42-f5cd651b52db?tab=files#cxe-v120-authority-boundary) `[ANCHOR:CXE-V120-AUTHORITY-BOUNDARY]`  
* [3\. ENTRANCES（Dev/Ops 入口路由；不含 HOW）](https://chatgpt.com/g/g-p-699dd2746154819181f7c3ecfbe1e96a-spartoi-omoc-wp-rip/c/699e81ba-4cfc-83ab-9a42-f5cd651b52db?tab=files#cxe-v120-entrances) `[ANCHOR:CXE-V120-ENTRANCES]`  
* [4\. DOD（Package C 可驗收輸出：run logs \+ evidence pointers）](https://chatgpt.com/g/g-p-699dd2746154819181f7c3ecfbe1e96a-spartoi-omoc-wp-rip/c/699e81ba-4cfc-83ab-9a42-f5cd651b52db?tab=files#cxe-v120-dod) `[ANCHOR:CXE-V120-DOD]`  
* [5\. DOC\_INVENTORY（PREFLIGHT\_DOC\_INVENTORY）](https://chatgpt.com/g/g-p-699dd2746154819181f7c3ecfbe1e96a-spartoi-omoc-wp-rip/c/699e81ba-4cfc-83ab-9a42-f5cd651b52db?tab=files#cxe-v120-doc-inventory) `[ANCHOR:CXE-V120-DOC-INVENTORY]`  
* [6\. INTERFACES（handoff：RC\_PACK / HANDOFF\_MANIFEST / TT\_EXPORT）](https://chatgpt.com/g/g-p-699dd2746154819181f7c3ecfbe1e96a-spartoi-omoc-wp-rip/c/699e81ba-4cfc-83ab-9a42-f5cd651b52db?tab=files#cxe-v120-interfaces) `[ANCHOR:CXE-V120-INTERFACES]`  
* [7\. LOGS（runlog\_index.template \+ 最小可回放形狀）](https://chatgpt.com/g/g-p-699dd2746154819181f7c3ecfbe1e96a-spartoi-omoc-wp-rip/c/699e81ba-4cfc-83ab-9a42-f5cd651b52db?tab=files#cxe-v120-logs) `[ANCHOR:CXE-V120-LOGS]`  
* [8\. MAPS（三大矩陣 \+ WP Audit Bus Mapping 掛載點）](https://chatgpt.com/g/g-p-699dd2746154819181f7c3ecfbe1e96a-spartoi-omoc-wp-rip/c/699e81ba-4cfc-83ab-9a42-f5cd651b52db?tab=files#cxe-v120-maps) `[ANCHOR:CXE-V120-MAPS]`  
  * [8.A v1.1.0 FINDINGS\_LEDGER\_CLOSURE](https://chatgpt.com/g/g-p-699dd2746154819181f7c3ecfbe1e96a-spartoi-omoc-wp-rip/c/699e81ba-4cfc-83ab-9a42-f5cd651b52db?tab=files#cxe-v120-findings-ledger-closure) `[ANCHOR:CXE-V120-FINDINGS-LEDGER-CLOSURE]`  
  * [8.B LEGACY\_FINDINGS\_CLOSURE\_MAP（v1.0.0 審查報告逐條）](https://chatgpt.com/g/g-p-699dd2746154819181f7c3ecfbe1e96a-spartoi-omoc-wp-rip/c/699e81ba-4cfc-83ab-9a42-f5cd651b52db?tab=files#cxe-v120-legacy-findings-closure-map) `[ANCHOR:CXE-V120-LEGACY-FINDINGS-CLOSURE-MAP]`  
  * [8.C ANCHOR\_ALIAS\_MAP（legacy parity map）](https://chatgpt.com/g/g-p-699dd2746154819181f7c3ecfbe1e96a-spartoi-omoc-wp-rip/c/699e81ba-4cfc-83ab-9a42-f5cd651b52db?tab=files#cxe-v120-anchor-alias-map) `[ANCHOR:CXE-V120-ANCHOR-ALIAS-MAP]`  
  * [8.D C\_ALIGNMENT\_MATRIX（SSOT alignment matrix）](https://chatgpt.com/g/g-p-699dd2746154819181f7c3ecfbe1e96a-spartoi-omoc-wp-rip/c/699e81ba-4cfc-83ab-9a42-f5cd651b52db?tab=files#cxe-v120-c-alignment-matrix) `[ANCHOR:CXE-V120-C-ALIGNMENT-MATRIX]`  
* [9\. TT\_ROOT（TT 註冊表 \+ CR\_OPEN=0 \+ TEMP\_CLOSED→TEST\_TRACK）](https://chatgpt.com/g/g-p-699dd2746154819181f7c3ecfbe1e96a-spartoi-omoc-wp-rip/c/699e81ba-4cfc-83ab-9a42-f5cd651b52db?tab=files#cxe-v120-tt-root) `[ANCHOR:CXE-V120-TT-ROOT]`  
* [10\. TEST\_TRACKING\_LIST（測試追蹤清單）](https://chatgpt.com/g/g-p-699dd2746154819181f7c3ecfbe1e96a-spartoi-omoc-wp-rip/c/699e81ba-4cfc-83ab-9a42-f5cd651b52db?tab=files#cxe-v120-test-tracking-list) `[ANCHOR:CXE-V120-TEST-TRACKING-LIST]`  
* [11\. WEB\_EVIDENCE\_APPENDIX（SUPPORT-only；entries=0 或 TT 綁定）](https://chatgpt.com/g/g-p-699dd2746154819181f7c3ecfbe1e96a-spartoi-omoc-wp-rip/c/699e81ba-4cfc-83ab-9a42-f5cd651b52db?tab=files#cxe-v120-web-evidence-appendix) `[ANCHOR:CXE-V120-WEB-EVIDENCE-APPENDIX]`  
* [12\. SELF\_AUDIT（RAG-Triad：結果 \+ evidence\_ptr；不輸出推理）](https://chatgpt.com/g/g-p-699dd2746154819181f7c3ecfbe1e96a-spartoi-omoc-wp-rip/c/699e81ba-4cfc-83ab-9a42-f5cd651b52db?tab=files#cxe-v120-self-audit) `[ANCHOR:CXE-V120-SELF-AUDIT]`  
* [13\. machine\_summary.json（JSON only）](https://chatgpt.com/g/g-p-699dd2746154819181f7c3ecfbe1e96a-spartoi-omoc-wp-rip/c/699e81ba-4cfc-83ab-9a42-f5cd651b52db?tab=files#cxe-v120-machine-summary) `[ANCHOR:CXE-V120-MACHINE-SUMMARY]`

---

## **0\. DOC\_META**

\[ANCHOR:CXE-V120-DOC-META\]

| field | value |
| ----- | ----- |
| external\_name | Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack（Package C — 執行落地合冊） |
| internal\_short\_name | C-EXECUTION |
| stable\_id | SOMOC-SUBP1MVP-PKG-C-EXECUTION |
| doc\_id | Spartoi\_SubP1-LITE+MVP\_Execution\_Pack |
| version | v1.2.0 |
| status | DEFINITIVE\_WITH\_TT (Fail-Closed / CR\_OPEN=0 / TEST\_TRACK Present) |
| release\_date | 2026-02-25 |
| timezone | Asia/Taipei (UTC+08:00) |
| baseline\_web\_date | 2026-02-25 (Web SUPPORT-only; TT-bound only) |
| supersedes | v1.1.0, v1.0.0 (engineering replaceability is TT\_BOUND until matrices are row-complete) |
| replaces | v1.1.0, v1.0.0 (same condition as above) |
| scope\_lock | LOCKED：Package C 僅承載「入口路由 / 交接介面最小欄位 / 可回放索引 / 覆蓋矩陣 / TT 與外部證據附錄」；不得重寫上位 SSOT；不得內嵌 Dev/Ops HOW |
| replaceability\_verdict | **TT\_BOUND**（本版新增三大矩陣骨架 \+ 行級證據位；但部分上游/legacy 文件仍缺 ≥2 locator proofs 或逐條 finding 內容未可定位抽取 → 依法 Fail-Closed） |
| versioning\_adjudication | v1.1.0 審查報告明示 replaceability=TT\_BOUND、角色衝突、三矩陣不足等 blocker/TT；本版屬「規範性修補 \+ 機械矩陣落地」→ MINOR \+1 合理升版（v1.2.0）。evidence\_ptr: DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.1.0\_審查報告.md\#\[0\] |
|  |  |
| hard\_invariants | No-Source-No-Norm；No-Anchor-No-Claim；CR\_OPEN=0；任何不確定/不可定位 → TT（TEMP\_CLOSED→TEST\_TRACK） |

**Diátaxis routing（本文件）**：

* Reference：Interfaces / Matrices / TT / Web Appendix  
* How-to：**禁止**（一律 Route-Out 到 Dev/Ops RBWI）  
* Explanation：Authority & Boundary（僅裁決/消歧義）  
* Tutorial：**禁止**

---

## **1\. AI\_PATH（2 分鐘最短路徑 \+ Fail-Closed 指令）**

\[ANCHOR:CXE-V120-AI-PATH\]

**強制檢索順序（不得跳讀；No-Anchor-No-Claim）**

1. 先讀：`[ANCHOR:CXE-V120-AUTHORITY-BOUNDARY]`（避免把 C 誤當第三份 SSOT）  
2. 再讀：`[ANCHOR:CXE-V120-DOC-INVENTORY]`（確認 FOUND/MISSING \+ locator proofs）  
3. 再讀：`[ANCHOR:CXE-V120-INTERFACES]`（handoff 最小欄位表 \+ 缺失處置）  
4. 再讀：`[ANCHOR:CXE-V120-ENTRANCES]`（跳轉 Dev/Ops RBWI 的 anchor；不得在本檔尋找步驟）  
5. 再讀：`[ANCHOR:CXE-V120-LOGS]`（runlog\_index.template）  
6. 最後讀：`[ANCHOR:CXE-V120-MAPS]` \+ `[ANCHOR:CXE-V120-TT-ROOT]`（判定哪些仍是 TT\_BOUND）

**Fail-Closed 指令**

* 你要寫「必須」→ 先提供 `evidence_ptr`。沒有 → 立刻改寫成 TT，並加入撤銷條件、驗證方式、owner\_suggested。  
* 你想引用 Dev/Ops 操作細節 → **禁止**：改為 Route-Out（僅給 docloc/anchor）。  
* 你想新增 Gate ID / TT schema / Evidence schema → **禁止**：改為 Route-Out 到 Control Plane / SRS / ICD 的既有 schema；本檔只允許「最小互通欄位表」與「來源指針」。evidence\_ptr: DOCLOC:/mnt/data/Package C — Execution Pack（執行落地合冊）\_撰寫\_規範工作指導書（WI）.md\#\[WI-C-3\]  
  |

---

## **2\. AUTHORITY\_AND\_BOUNDARY（裁決 \+ 禁區 \+ 術語消歧義）**

\[ANCHOR:CXE-V120-AUTHORITY-BOUNDARY\]

### **2.1 Authority Stack（高→低）**

\[ANCHOR:CXE-V120-AUTHORITY-STACK\]

1. 工程指南（Package C 規劃裁決）：DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_前端文檔到實作驗收\_工程指南.md\#\[\#sec3.3-pkg-c-execution\]  
2. WI-C（Role/禁區/DoD/handoff 規範）：DOCLOC:/mnt/data/Package C — Execution Pack（執行落地合冊）\_撰寫\_規範工作指導書（WI）.md\#\[WI-C-0\]  
3. Package B（Control Plane Pack v2.2.0）— **只引用/映射/路由**：DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Control Plane Pack\_v2.2.0.md (locator pending; TT)  
4. Package A（Governance/Index Pack v1.2.0）— **只引用/映射/路由**：DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Governance\_Index Pack\_v1.2.0.md (locator pending; TT)  
5. Dev/Ops RBWI（Implementation SSOT）— **只 route-out**：  
   * Dev：DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Dev RUNBOOK \+ WI\_ v2.1.0-r2.md\#\[ANCHOR:SOMOC-DEV-RBWI-V210R2-0-1-DOC\_META\]  
   * Ops：DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Ops RUNBOOK \+ WI\_v2.1.0-r2.md\#\[ANCHOR:SOMOC-SUBP1MVP-OPS-S0-COVER\]  
6. Global SSOT（SRS/ARCH/ICD/LBP/MIP）— **只引用/路由**：  
   * SRS：DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-REQ-EVID-TRIPLET\]  
   * ARCH：DOCLOC:/mnt/data/Spartoi-OMOC\_ARCH\_v8.1.0.md\#\[ANCHOR:ARCH-V810-8-2-REPLAY\]  
   * ICD：DOCLOC:/mnt/data/Spartoi-OMOC\_LBP-B(ICD)v8.1.1-r2.md (locator pending; TT)  
7. Web：**SUPPORT-only**，僅能進 `[ANCHOR:CXE-V120-WEB-EVIDENCE-APPENDIX]`，且必須 double-sourcing \+ revoke\_condition \+ 綁 TT。evidence\_ptr: DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-GOV-WEB-APPENDIX\]

### **2.2 角色矛盾裁決（PS-CEXE-0301）**

\[ANCHOR:CXE-V120-ROLE-ADJUDICATION\]

**問題**：WI-C 將 Package C 定義為「IMPLEMENTATION SSOT / HOW」，但 v1.1.0 Doc Meta 又宣告 C「不得承載 HOW」→ 角色不閉合。evidence\_ptrs：

* DOCLOC:/mnt/data/Package C — Execution Pack（執行落地合冊）\_撰寫\_規範工作指導書（WI）.md\#\[WI-C-0\]  
* DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.1.0.md\#\[ANCHOR:CEXE-V110-DOC-META\]

**裁決（Fail-Closed）**：

* 依工程指南 §3.3 的正文為最終裁決來源；但目前本包未能提供 §3.3 正文逐條「source\_quote\_ptr」行級抽取（v1.1.0 審查報告指出不足）→ **本版將此衝突 TEMP\_CLOSED→TEST\_TRACK（TT-CEXE-301）**，且本包自身採取「保守邊界」：**Package C 僅作 HOW 的導覽層/接口收斂層（不承載步驟）**，HOW 由 Dev/Ops RBWI 承載。evidence\_ptr: DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.1.0\_審查報告.md\#\[5\] F-CEXE-0001/PS-CEXE-0301

**術語消歧義（同詞不兩義）**  
\[ANCHOR:CXE-V120-TERM-DISAMBIG\]

* **HOW（施工步驟）**：命令/點擊路徑/逐步 SOP → **只允許**存在於 Dev/Ops RBWI（Route-Out）。  
* **HOW-導航層（Package C 允許）**：指向 HOW 的入口路由 \+ 交接介面最小欄位 \+ 可回放索引 \+ 覆蓋矩陣/TT。  
* **接口收斂（Package C 允許）**：只收斂「形狀/欄位最小集/來源指針/缺失處置」，不創造 canonical schema，不重寫 SSOT。evidence\_ptr: DOCLOC:/mnt/data/Package C — Execution Pack（執行落地合冊）\_撰寫\_規範工作指導書（WI）.md\#\[WI-C-3\]

---

## **3\. ENTRANCES（Dev/Ops 入口路由；不含 HOW）**

\[ANCHOR:CXE-V120-ENTRANCES\]

**Route-Out only**：本節只提供「入口錨點」；不得複寫步驟。evidence\_ptr: DOCLOC:/mnt/data/Package C — Execution Pack（執行落地合冊）\_撰寫\_規範工作指導書（WI）.md\#\[WI-C-3\]

### **3.1 Dev Entrance（施工/驗收/交接輸出）**

\[ANCHOR:CXE-V120-ENTRANCE-DEV\]

* target\_doc: `/mnt/data/Spartoi-OMOC_SubP1-LITE+MVP_Dev RUNBOOK + WI_ v2.1.0-r2.md`  
* required\_entry\_anchors (route-out):  
  * `DOCLOC:/mnt/data/Spartoi-OMOC_SubP1-LITE+MVP_Dev RUNBOOK + WI_ v2.1.0-r2.md#[ANCHOR:SOMOC-DEV-RBWI-V210R2-0-1-DOC_META]`  
  * `DOCLOC:/mnt/data/Spartoi-OMOC_SubP1-LITE+MVP_Dev RUNBOOK + WI_ v2.1.0-r2.md#[ANCHOR:SOMOC-DEV-RBWI-V210R2-0-2-PREFLIGHT_INPUTS]`

### **3.2 Ops Entrance（運維執行/回放/事故）**

\[ANCHOR:CXE-V120-ENTRANCE-OPS\]

* target\_doc: `/mnt/data/Spartoi-OMOC_SubP1-LITE+MVP_Ops RUNBOOK + WI_v2.1.0-r2.md`  
* required\_entry\_anchors (route-out):  
  * `DOCLOC:/mnt/data/Spartoi-OMOC_SubP1-LITE+MVP_Ops RUNBOOK + WI_v2.1.0-r2.md#[ANCHOR:SOMOC-SUBP1MVP-OPS-S0-COVER]`  
  * `DOCLOC:/mnt/data/Spartoi-OMOC_SubP1-LITE+MVP_Ops RUNBOOK + WI_v2.1.0-r2.md#[ANCHOR:SOMOC-SUBP1MVP-OPS-S0-1-PREFLIGHT]`

### **3.3 Global Dev/Ops RBWI（全域模板/邊界參照）**

\[ANCHOR:CXE-V120-ENTRANCE-GLOBAL-RBWI\]

* Dev (global): `DOCLOC:/mnt/data/Spartoi-OMOC_dev RB + WI_v8.1.1-dev-r2.md`  
* Ops (global): `DOCLOC:/mnt/data/Spartoi-OMOC_ops RB + WI _v8.1.1-ops-r1.md`  
* disposition: **route-out only**（Package C 不複寫任何步驟/命令）

---

## **4\. DOD（Package C 可驗收輸出）**

\[ANCHOR:CXE-V120-DOD\]

**DoD（Package C 的“產出物”，非施工步驟）**

* DOD-C1：`PREFLIGHT_DOC_INVENTORY` 表（本檔 `[ANCHOR:CXE-V120-DOC-INVENTORY]`）存在，且對「DOC\_SET\_MUST\_READ」每份文件給出：status \+ ≥2 locator proofs；不足即 TT（DOCMISS 或 LOCATOR\_GAP）。  
* DOD-C2：三張 `HANDOFF_MIN_FIELD_TABLE`（RC\_PACK / HANDOFF\_MANIFEST / TT\_EXPORT）存在，且每個欄位指向 `source_ssot_ptr`；無法定位 canonical schema → 欄位仍可列，但必標 `missing_disposition=TT`。evidence\_ptr: v1.1.0 審查報告 F-CEXE-0002/0003/PS-CEXE-0101/0102  
* DOD-C3：三大矩陣（closure/parity/alignment）皆存在、可機械抽取（固定欄位名不變）、並提供 `row_count`（以 machine\_summary.json 提供；見文末）。  
* DOD-C4：`CR_OPEN=0`，任何缺口均以 `TT→TEMP_CLOSED→TEST_TRACK` 收斂，並在 `[ANCHOR:CXE-V120-TEST-TRACKING-LIST]` 具 revoke\_condition。evidence\_ptr: v1.1.0 審查報告 CR\_OPEN\_AND\_TEST\_TRACK 段落  
* DOD-C5：`WEB_EVIDENCE_APPENDIX` 永遠 SUPPORT-only；entries=0 也必有空表頭；若 entries\>0，必 double-sourcing \+ revoke\_condition \+ 綁 TT。evidence\_ptr: SRS Web Evidence Appendix contract

---

## **5\. DOC\_INVENTORY（PREFLIGHT\_DOC\_INVENTORY）**

\[ANCHOR:CXE-V120-DOC-INVENTORY\]

**表格 schema 固定**（欄位名不可改）：PREFLIGHT\_DOC\_INVENTORY。  
**要求**：DOC\_SET\_MUST\_READ 全量列出；任何讀不到/定位不足 → MISSING/FOUND\_UNVERIFIED 並 linked\_tt\_id。

| doc\_key | path | expected\_role | status(FOUND/FOUND\_UNVERIFIED/MISSING) | locator\_proof\_1 | locator\_proof\_2 | notes | linked\_tt\_id |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| C\_AUDIT\_V110 | /mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.1.0\_審查報告.md | Review basis (all findings/PS must land) | FOUND | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.1.0\_審查報告.md\#\[0\] | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.1.0\_審查報告.md\#\[5\] | 結案矩陣以本報告為準；PS-CEXE-\* 必落地 |  |
| C\_TARGET\_V110 | /mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.1.0.md | Legacy baseline (anti-regression) | FOUND\_UNVERIFIED | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.1.0.md\#\[ANCHOR:CEXE-V110-DOC-META\] | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.1.0.md\#\[ANCHOR:CEXE-V110-TOC\] | 需用本版 parity map 證明取代性 | TT-CEXE-402 |
| C\_LEGACY\_V100 | /mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.0.0.md | Legacy parity source | FOUND\_UNVERIFIED | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.0.0.md\#\[ANCHOR:CXE-IF-HANDOFF-DOCMETA\] | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.0.0.md\#\[ANCHOR:CXE-IF-HANDOFF-MIN-CONTRACT\] | 目前僅能證明 min\_contract；canonical schema 仍不可定位 | TT-CEXE-003 |
| C\_AUDIT\_V100 | /mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.0.0\_審查報告.md | Legacy findings baseline | FOUND\_UNVERIFIED | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.0.0\_審查報告.md\#(0) | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.0.0\_審查報告.md\#(6) | 未完成逐條抽取→本版以 TT 方式暫結案並要求補抽取 | TT-CEXE-401 |
| C\_AUDIT\_V100\_R0 | /mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.0.0\_審查報告.md | Legacy review evidence | FOUND\_UNVERIFIED | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.0.0\_審查報告.md\#(0) | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.0.0\_審查報告.md\#(6) | 重列（對應 closure map） | TT-CEXE-401 |
| ENG\_GUIDE | /mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_前端文檔到實作驗收\_工程指南.md | Higher authority for Package C | FOUND | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_前端文檔到實作驗收\_工程指南.md\#\[\#sec3.3-pkg-c-execution\] | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_前端文檔到實作驗收\_工程指南.md\#\[\#ch6-execution-phases\] | §3.3 正文逐條引用未完成→TT | TT-CEXE-202 |
| WI\_C | /mnt/data/Package C — Execution Pack（執行落地合冊）\_撰寫\_規範工作指導書（WI）.md | Role/禁區/DoD/Handoff spec | FOUND | DOCLOC:/mnt/data/Package C — Execution Pack（執行落地合冊）\_撰寫\_規範工作指導書（WI）.md\#\[WI-C-0\] | DOCLOC:/mnt/data/Package C — Execution Pack（執行落地合冊）\_撰寫\_規範工作指導書（WI）.md\#\[WI-C-9\] | WI-C vs v1.1.0 role 衝突已 TT 化 | TT-CEXE-301 |
| PKG\_A\_V120 | /mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP \_Governance\_Index Pack\_v1.2.0.md | Upstream alignment | FOUND\_UNVERIFIED | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP \_Governance\_Index Pack\_v1.2.0.md (locator pending) | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP \_Governance\_Index Pack\_v1.2.0.md (locator pending) | 未能建立 ≥2 locator proofs → TT | TT-CEXE-501 |
| PKG\_B\_V220 | /mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Control Plane Pack\_v2.2.0.md | Upstream alignment (schemas/registries) | FOUND\_UNVERIFIED | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Control Plane Pack\_v2.2.0.md (locator pending) | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Control Plane Pack\_v2.2.0.md (locator pending) | 未能建立 ≥2 locator proofs → TT | TT-CEXE-502 |
| SRS\_V810 | /mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md | Global normative (evidence/web policy) | FOUND | DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-REQ-EVID-TRIPLET\] | DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-GOV-WEB-APPENDIX\] |  |  |
| ARCH\_V810 | /mnt/data/Spartoi-OMOC\_ARCH\_v8.1.0.md | Global normative (replayability) | FOUND | DOCLOC:/mnt/data/Spartoi-OMOC\_ARCH\_v8.1.0.md\#\[ANCHOR:ARCH-V810-8-2-REPLAY\] | DOCLOC:/mnt/data/Spartoi-OMOC\_ARCH\_v8.1.0.md\#\[ANCHOR:ARCH-V810-0-3-AUTHORITY\] |  |  |
| ICD\_V811R2 | /mnt/data/Spartoi-OMOC\_LBP-B(ICD)v8.1.1-r2.md | Interface definitions (route-out) | FOUND\_UNVERIFIED | DOCLOC:/mnt/data/Spartoi-OMOC\_LBP-B(ICD)v8.1.1-r2.md (locator pending) | DOCLOC:/mnt/data/Spartoi-OMOC\_LBP-B(ICD)v8.1.1-r2.md (locator pending) | locator proofs 不足→TT | TT-CEXE-DOCMISS-03 |
| DEV\_RBWI\_SUBP1 | /mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Dev RUNBOOK \+ WI\_ v2.1.0-r2.md | Dev implementation SSOT | FOUND | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Dev RUNBOOK \+ WI\_ v2.1.0-r2.md\#\[ANCHOR:SOMOC-DEV-RBWI-V210R2-0-1-DOC\_META\] | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Dev RUNBOOK \+ WI\_ v2.1.0-r2.md\#\[ANCHOR:SOMOC-DEV-RBWI-V210R2-0-2-PREFLIGHT\_INPUTS\] |  |  |
| OPS\_RBWI\_SUBP1 | /mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Ops RUNBOOK \+ WI\_v2.1.0-r2.md | Ops implementation SSOT | FOUND | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Ops RUNBOOK \+ WI\_v2.1.0-r2.md\#\[ANCHOR:SOMOC-SUBP1MVP-OPS-S0-COVER\] | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Ops RUNBOOK \+ WI\_v2.1.0-r2.md\#\[ANCHOR:SOMOC-SUBP1MVP-OPS-S0-1-PREFLIGHT\] |  |  |
| OMOC\_WP\_MASTER | /mnt/data/OMOC\_WP總表\_v4.0.1-r2.md | WP audit bus mapping | FOUND\_UNVERIFIED | DOCLOC:/mnt/data/OMOC\_WP總表\_v4.0.1-r2.md\#(TOC) | DOCLOC:/mnt/data/OMOC\_WP總表\_v4.0.1-r2.md\#(Contract Blocks Registry) | locator 用段落名占位；後續需補 anchor/行號 | TT-CEXE-004 |
| OMOC\_RIP\_EXTERNAL | /mnt/data/OMOC\_RIP\_外部資料.md | Web/support pool (support-only) | FOUND\_UNVERIFIED | DOCLOC:/mnt/data/OMOC\_RIP\_外部資料.md\#(TOC) | DOCLOC:/mnt/data/OMOC\_RIP\_外部資料.md\#(H. RIP-F) | 尚未導入為逐條 web\_evidence 行級→TT | TT-CEXE-701 |

**DOCMISS 族群（清單上應存在但目前 locator 無法形成 ≥2 可核對證據）**：統一在 TT\_ROOT 註冊（DOCMISS-\*）。

---

## **6\. INTERFACES（handoff：RC\_PACK / HANDOFF\_MANIFEST / TT\_EXPORT）**

\[ANCHOR:CXE-V120-INTERFACES\]

**PS-CEXE-0101 / PS-CEXE-0102**：本節只給 **最小欄位表（min\_field\_table）** \+ 來源指針 \+ 缺失處置；canonical schema 一律 route-out 到 Control Plane / SRS / ICD。evidence\_ptr: v1.1.0 審查報告 F-CEXE-0002/0003 \+ PS-CEXE-0101/0102

### **6.1 HANDOFF\_MIN\_FIELD\_TABLE — RC\_PACK**

\[ANCHOR:CXE-V120-HANDOFF-MIN-FIELD-RC-PACK\]

| artifact | field | type | required(Y/N) | source\_ssot\_ptr | missing\_disposition(TT/FAIL\_CLOSED) | notes |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| RC\_PACK | rc\_pack\_id | string | Y | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Control Plane Pack\_v2.2.0.md (route-out; locator pending) | TT | CP v2.2.0 定義待定位；本包僅要求存在且可追溯 |
| RC\_PACK | run\_id | string | Y | DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-REQ-EVID-TRACE\] | TT | 若 SRS 追溯欄位要求與 CP 不一致 → 以 SRS 高位裁決 |
| RC\_PACK | gate\_id | string | Y | DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-GATE-DICTIONARY\] | TT | gate 字典以 SRS/CP 為準；本包不自立 gate |
| RC\_PACK | verdict\_ptr | string | Y | DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-REQ-EVID-TRIPLET\] | TT | 需能定位到 verdict（路徑/URI 皆可） |
| RC\_PACK | evidence\_index\_ptr | string | Y | DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-REQ-EVID-TRIPLET\] | TT | 需能定位到 evidence index |
| RC\_PACK | bundle\_ptr | string | Y | DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-REQ-EVID-TRIPLET\] | TT | 需能定位到 bundle |
| RC\_PACK | handoff\_manifest\_ptr | string | Y | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.0.0.md\#\[ANCHOR:CXE-IF-HANDOFF-MIN-CONTRACT\] | TT | canonical schema 未定位；本包只要求最小互通 |
| RC\_PACK | generated\_at | string(datetime) | Y | DOCLOC:/mnt/data/Spartoi-OMOC\_ARCH\_v8.1.0.md\#\[ANCHOR:ARCH-V810-8-2-REPLAY\] | TT | 回放必需時間戳（格式以 CP/SRS 為準） |

### **6.2 HANDOFF\_MIN\_FIELD\_TABLE — HANDOFF\_MANIFEST**

\[ANCHOR:CXE-V120-HANDOFF-MIN-FIELD-HANDOFF-MANIFEST\]

| artifact | field | type | required(Y/N) | source\_ssot\_ptr | missing\_disposition(TT/FAIL\_CLOSED) | notes |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| HANDOFF\_MANIFEST | handoff\_id | string | Y | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Control Plane Pack\_v2.2.0.md (route-out; locator pending) | TT | 需可追溯；schema 待上游定位 |
| HANDOFF\_MANIFEST | producer | string | Y | DOCLOC:/mnt/data/Package C — Execution Pack（執行落地合冊）\_撰寫\_規範工作指導書（WI）.md\#\[WI-C-6\] | TT | WI-C-6 handoff 規範需逐條抽取→TT |
| HANDOFF\_MANIFEST | consumer | string | Y | DOCLOC:/mnt/data/Package C — Execution Pack（執行落地合冊）\_撰寫\_規範工作指導書（WI）.md\#\[WI-C-6\] | TT | 同上 |
| HANDOFF\_MANIFEST | rc\_pack\_ptr | string | Y | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.0.0.md\#\[ANCHOR:CXE-IF-HANDOFF-MIN-CONTRACT\] | TT | rc\_pack 的具體路徑形狀以 RBWI/CP 為準 |
| HANDOFF\_MANIFEST | scope\_lock\_ref | string | Y | DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-SCOPE-LOCK\] | TT | 需能指出此次交接的 scope\_lock 版本/指針 |
| HANDOFF\_MANIFEST | tt\_export\_ptr | string | Y | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.0.0.md\#\[ANCHOR:CXE-IF-HANDOFF-MIN-CONTRACT\] | TT | TT\_EXPORT canonical schema 未定位 → 仍可指針但 TT |
| HANDOFF\_MANIFEST | evidence\_minset\_ptr | string | Y | DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-REQ-EVID-TRIPLET\] | TT | Evidence Minset 五件套具體清單需對齊工程指南→TT |

### **6.3 HANDOFF\_MIN\_FIELD\_TABLE — TT\_EXPORT（PS-CEXE-0102）**

\[ANCHOR:CXE-V120-HANDOFF-MIN-FIELD-TT-EXPORT\]

| artifact | field | type | required(Y/N) | source\_ssot\_ptr | missing\_disposition(TT/FAIL\_CLOSED) | notes |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| TT\_EXPORT | export\_id | string | Y | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Control Plane Pack\_v2.2.0.md (route-out; locator pending) | TT | TT schema lock 以 CP 為準；本包不自立 schema |
| TT\_EXPORT | tt\_items\_count | integer | Y | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Control Plane Pack\_v2.2.0.md (route-out; locator pending) | TT | 需能統計 |
| TT\_EXPORT | tt\_items\_ptr | string | Y | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Control Plane Pack\_v2.2.0.md (route-out; locator pending) | TT | 指向可機械解析之清單 |
| TT\_EXPORT | generated\_at | string(datetime) | Y | DOCLOC:/mnt/data/Spartoi-OMOC\_ARCH\_v8.1.0.md\#\[ANCHOR:ARCH-V810-8-2-REPLAY\] | TT |  |
| TT\_EXPORT | revoke\_policy\_ref | string | Y | DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-FAIL-CLOSED-RULES\] | TT | TT 的 revoke\_condition 規則以 SRS/CP 為準 |
| TT\_EXPORT | signature\_or\_hash | string | N | DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-REQ-EVID-TRACE\] | TT | 若上游要求完整性簽章，需對齊；否則 TT |

---

## **7\. LOGS（runlog\_index.template \+ 最小可回放形狀）**

\[ANCHOR:CXE-V120-LOGS\]

**PS-CEXE-0003（DoD 可核對）**：本節提供“最小形狀”，不提供任何執行步驟。evidence\_ptr: v1.1.0 審查報告 Q3/PS-CEXE-0003

### **7.1 runlog\_index.template（最小可驗收欄位）**

\[ANCHOR:CXE-V120-RUNLOG-INDEX-TEMPLATE\]

\# runlog\_index.template (minimal)  
run\_id: \<string\>  
phase\_id: \<string\>            \# route-out: 工程指南 Execution Phases 0-5  
gate\_id: \<string\>             \# route-out: SRS/ControlPlane gate dictionary  
started\_at: \<datetime\>  
ended\_at: \<datetime\>  
producer: \<string\>            \# dev|ops|agent|human (policy route-out)  
artifacts:  
  \- artifact\_id: \<string\>  
    artifact\_type: \<string\>   \# RC\_PACK|HANDOFF\_MANIFEST|TT\_EXPORT|...  
    ptr: \<string\>             \# path/uri  
evidence\_triplet:  
  verdict\_ptr: \<string\>  
  bundle\_ptr: \<string\>  
  evidence\_index\_ptr: \<string\>  
tt\_export\_ptr: \<string\>  
notes\_ptr: \<string\>           \# optional

### **7.2 最小可回放記錄示例（形狀示例；非真實資料）**

\[ANCHOR:CXE-V120-RUNLOG-MIN-EXAMPLE\]

run\_id: RUN-EXAMPLE-0001  
phase\_id: PHASE-0  
gate\_id: G0  
started\_at: 2026-02-25T10:00:00+08:00  
ended\_at: 2026-02-25T10:05:00+08:00  
producer: dev  
artifacts:  
  \- artifact\_id: RC-EXAMPLE-0001  
    artifact\_type: RC\_PACK  
    ptr: evidence/rc\_pack/RC-EXAMPLE-0001.json  
evidence\_triplet:  
  verdict\_ptr: evidence/triplet/verdict.json  
  bundle\_ptr: evidence/triplet/bundle.json  
  evidence\_index\_ptr: evidence/triplet/evidence\_index.json  
tt\_export\_ptr: evidence/tt/tt\_export.json  
notes\_ptr: logs/RUN-EXAMPLE-0001.md

---

## **8\. MAPS（三大矩陣 \+ WP Audit Bus Mapping 掛載點）**

\[ANCHOR:CXE-V120-MAPS\]

**Replaceability Gate**：缺任一矩陣 → replaceability\_verdict 不准 YES（本版為 TT\_BOUND）。evidence\_ptr: v1.1.0 審查報告 Q2/Q5/Q9/PS-CEXE-0002/0500

### **8.A FINDINGS\_LEDGER\_CLOSURE（對 v1.1.0 審查報告逐條）**

\[ANCHOR:CXE-V120-FINDINGS-LEDGER-CLOSURE\]

| finding\_id | severity | status\_before(PASS/FAIL/TT) | required\_fix | fixed\_in\_v1.2.0\_loc | disposition\_after(PASS/TT) | linked\_tt\_id | verification\_note |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| F-CEXE-0001 | BLOCKER | FAIL | 消除 Package C 角色矛盾（以工程指南§3.3裁決；衝突入 TEST\_TRACK） | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.2.0.md\#\[ANCHOR:CXE-V120-ROLE-ADJUDICATION\] \+ \#\[ANCHOR:CXE-V120-TERM-DISAMBIG\] | TT | TT-CEXE-301 | §3.3 正文逐條抽取未完成→依法仍 TT |
| F-CEXE-0002 | MAJOR | TT | HANDOFF\_MANIFEST：提供可抽取最小欄位表 \+ 來源指針 \+ 缺失處置（route-out canonical schema） | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.2.0.md\#\[ANCHOR:CXE-V120-HANDOFF-MIN-FIELD-HANDOFF-MANIFEST\] | TT | TT-CEXE-003 | canonical schema locator 未完成 |
| F-CEXE-0003 | MAJOR | TT | TT\_EXPORT：min\_field\_table \+ export\_rules \+ TEMP\_CLOSED→TEST\_TRACK \+ route-out state machine | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.2.0.md\#\[ANCHOR:CXE-V120-HANDOFF-MIN-FIELD-TT-EXPORT\] \+ \#\[ANCHOR:CXE-V120-TT-ROOT\] | TT | TT-CEXE-002 | CP v2.2.0 locator 未完成 |
| F-CEXE-0004 | MAJOR | TT | 工程指南§3.3/Phases/Gates/EvidenceMinset 逐條正文引用型對齊矩陣 | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.2.0.md\#\[ANCHOR:CXE-V120-C-ALIGNMENT-MATRIX\] | TT | TT-CEXE-202 | source\_quote\_ptr 多數仍 pending（需行級抽取） |
| F-CEXE-0005 | MAJOR | TT | v1.0.0 審查報告逐條 closure 行級證據化（legacy\_finding\_id→落點） | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.2.0.md\#\[ANCHOR:CXE-V120-LEGACY-FINDINGS-CLOSURE-MAP\] | TT | TT-CEXE-401 | legacy 報告 finding 清單未可定位抽取 |
| F-CEXE-0006 | MINOR | TT | Doc Inventory 多份 SSOT 缺 ≥2 locator proofs → 補齊/或 TT | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.2.0.md\#\[ANCHOR:CXE-V120-DOC-INVENTORY\] | TT | TT-CEXE-0201 | 仍有 PkgA/PkgB/ICD locator gaps |
| F-CEXE-0007 | MINOR | TT | 外部資料導入：SUPPORT-only \+ double-sourcing \+ TT 綁定流水 | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.2.0.md\#\[ANCHOR:CXE-V120-WEB-EVIDENCE-APPENDIX\] | TT | TT-CEXE-701 | entries=0；待雙來源導入 |
| F-CEXE-0008 | MINOR | TT | Dev/Ops route-out topic 覆蓋證明（避免偷塞 HOW） | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.2.0.md\#\[ANCHOR:CXE-V120-ENTRANCES\] | TT | TT-CEXE-602 | topic 覆蓋需補“route-out register 全量清單” |
| F-CEXE-0009 | MINOR | TT | replaceability\_verdict：三矩陣 row\_count \+ 抽樣行證據化 | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.2.0.md\#\[ANCHOR:CXE-V120-MAPS\] | TT | TT-CEXE-402 | 本版提供骨架；待補齊 |

**PS 卡片落地宣告（必備清單）**：PS-CEXE-0301/0101/0102/0003/0001/0700 皆已在對應章節落地為“可機械抽取形狀”；但若上游 locator 不足，依法仍維持 TT（不宣告 PASS）。evidence\_ptr: v1.1.0 審查報告 PATCH\_SKELETON\_CARDS

### **8.B LEGACY\_FINDINGS\_CLOSURE\_MAP（v1.0.0 審查報告逐條）**

\[ANCHOR:CXE-V120-LEGACY-FINDINGS-CLOSURE-MAP\]

**PS-CEXE-0001**：本表必須逐條；但目前無法在本回合保證取得 v1.0.0 審查報告 finding\_id 全量（未可定位抽取）→ 本版先給**結構**並以 TT-CEXE-401 鎖定。evidence\_ptr: v1.1.0 審查報告 PS-CEXE-0001

| legacy\_finding\_id | legacy\_loc | v1.2.0\_loc | disposition(PASS/TT) | linked\_tt\_id | locator\_proof\_legacy | locator\_proof\_new |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| LEGACY-FINDING-LIST-NOT-EXTRACTED | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.0.0\_審查報告.md\#(0) | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.2.0.md\#\[ANCHOR:CXE-V120-LEGACY-FINDINGS-CLOSURE-MAP\] | TT | TT-CEXE-401 | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.0.0\_審查報告.md\#(0) | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.2.0.md\#\[ANCHOR:CXE-V120-LEGACY-FINDINGS-CLOSURE-MAP\] |

### **8.C ANCHOR\_ALIAS\_MAP（legacy parity map：v1.0.0/v1.1.0 → v1.2.0）**

\[ANCHOR:CXE-V120-ANCHOR-ALIAS-MAP\]

| legacy\_anchor | exists\_in\_v1.0.0 | exists\_in\_v1.1.0 | v1.2.0\_anchor | disposition(kept/aliased/deprecated) | notes |
| ----- | ----- | ----- | ----- | ----- | ----- |
| CEXE-V110-DOC-META | N/A | Y | CXE-V120-DOC-META | aliased | v1.1.0 doc meta 入口保留為 alias |
| CXE-README-AI-PATH | Y | Y | CXE-V120-AI-PATH | kept | 入口路徑延續 |
| CXE-IF-HANDOFF-MIN-CONTRACT | Y | Y | CXE-V120-INTERFACES | aliased | 由 “min\_contract 宣告”升級為“min\_field\_table \+ pointers” |
| CXE-WEB-APPX-ROOT | Y | Y | CXE-V120-WEB-EVIDENCE-APPENDIX | aliased | 改為固定表頭 schema |

**row\_count / sampling**：本版尚未完成對 v1.0.0/v1.1.0 anchors 的全量列舉與抽樣行 → TT-CEXE-402。

### **8.D C\_ALIGNMENT\_MATRIX（SSOT alignment matrix）**

\[ANCHOR:CXE-V120-C-ALIGNMENT-MATRIX\]

**PS-CEXE-0003**：要求“工程指南§3.3/Phases 0-5/G0-G3/Evidence Minset/WP Audit Bus Mapping 等”逐條對齊，且每行 ≥2 定位、含 source\_quote\_ptr。v1.1.0 審查報告指出此項不足 → 本版以 TT-CEXE-202 綁定。evidence\_ptr: v1.1.0 審查報告 F-CEXE-0004/PS-CEXE-0003

| requirement\_id | requirement\_text | source\_doc | source\_quote\_ptr | pkg\_c\_action(embed/route-out/align) | v1.2.0\_loc | locator\_proof\_1 | locator\_proof\_2 | status(PASS/TT) | linked\_tt\_id |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| ENG-3.3-ROLE | Package C 角色裁決（以工程指南§3.3為準） | 工程指南 | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_前端文檔到實作驗收\_工程指南.md\#\[\#sec3.3-pkg-c-execution\] | align | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.2.0.md\#\[ANCHOR:CXE-V120-ROLE-ADJUDICATION\] | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_前端文檔到實作驗收\_工程指南.md\#\[\#sec3.3-pkg-c-execution\] | DOCLOC:/mnt/data/Package C — Execution Pack（執行落地合冊）\_撰寫\_規範工作指導書（WI）.md\#\[WI-C-0\] | TT | TT-CEXE-202 |
| WI-C-3-FORBIDDEN | 禁區：不得重寫 SSOT / 不得自立 schema / 不得抄對方 HOW | WI-C | DOCLOC:/mnt/data/Package C — Execution Pack（執行落地合冊）\_撰寫\_規範工作指導書（WI）.md\#\[WI-C-3\] | embed | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.2.0.md\#\[ANCHOR:CXE-V120-AI-PATH\] | DOCLOC:/mnt/data/Package C — Execution Pack（執行落地合冊）\_撰寫\_規範工作指導書（WI）.md\#\[WI-C-3\] | DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-GATE-ROUTEOUT\] | PASS |  |
| SRS-EVID-TRIPLET | Evidence Triplet（三件套）必備 | SRS | DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-REQ-EVID-TRIPLET\] | align | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.2.0.md\#\[ANCHOR:CXE-V120-RUNLOG-INDEX-TEMPLATE\] | DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-REQ-EVID-TRIPLET\] | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Ops RUNBOOK \+ WI\_v2.1.0-r2.md\#\[ANCHOR:SOMOC-SUBP1MVP-OPS-S0-1-PREFLIGHT\] | TT | TT-CEXE-506 |
| WI-C-6-HANDOFF | handoff 規範（最小交接集合） | WI-C | DOCLOC:/mnt/data/Package C — Execution Pack（執行落地合冊）\_撰寫\_規範工作指導書（WI）.md\#\[WI-C-6\] | align | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.2.0.md\#\[ANCHOR:CXE-V120-INTERFACES\] | DOCLOC:/mnt/data/Package C — Execution Pack（執行落地合冊）\_撰寫\_規範工作指導書（WI）.md\#\[WI-C-6\] | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Dev RUNBOOK \+ WI\_ v2.1.0-r2.md\#\[ANCHOR:SOMOC-DEV-RBWI-V210R2-0-1-DOC\_META\] | TT | TT-CEXE-602 |
| WP-AUDIT-BUS | WP Audit Bus Mapping 掛載點 | WP總表 | DOCLOC:/mnt/data/OMOC\_WP總表\_v4.0.1-r2.md\#(Contract Blocks Registry) | route-out | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.2.0.md\#\[ANCHOR:CXE-V120-MAPS\] | DOCLOC:/mnt/data/OMOC\_WP總表\_v4.0.1-r2.md\#(TOC) | DOCLOC:/mnt/data/OMOC\_WP總表\_v4.0.1-r2.md\#(Contract Blocks Registry) | TT | TT-CEXE-004 |
| PKG-A-ALIGN | 對齊 Package A（索引/路由/映射） | PkgA v1.2.0 | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP \_Governance\_Index Pack\_v1.2.0.md (locator pending) | route-out | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.2.0.md\#\[ANCHOR:CXE-V120-DOC-INVENTORY\] | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP \_Governance\_Index Pack\_v1.2.0.md (locator pending) | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP \_Governance\_Index Pack\_v1.2.0.md (locator pending) | TT | TT-CEXE-501 |
| PKG-B-ALIGN | 對齊 Package B（TT schema / evidence schema / registries） | PkgB v2.2.0 | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Control Plane Pack\_v2.2.0.md (locator pending) | route-out | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.2.0.md\#\[ANCHOR:CXE-V120-INTERFACES\] | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Control Plane Pack\_v2.2.0.md (locator pending) | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Control Plane Pack\_v2.2.0.md (locator pending) | TT | TT-CEXE-502 |

**row\_count**：見文末 machine\_summary.json（本版仍為 UNVERIFIED，因多行為 locator pending / 未逐條抽取）。

---

## **9\. TT\_ROOT（TT 註冊表 \+ CR\_OPEN=0 \+ TEMP\_CLOSED→TEST\_TRACK）**

\[ANCHOR:CXE-V120-TT-ROOT\]

**CR\_OPEN=0（最終裁決）**

* 本文件不允許 CR\_OPEN 懸空；所有缺口均以 TT TEMP\_CLOSED→TEST\_TRACK 表示。evidence\_ptr: v1.1.0 審查報告 CR\_OPEN\_AND\_TEST\_TRACK

**TT 基本規則（route-out 到 Control Plane TT state machine）**

* TT state machine canonical：DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Control Plane Pack\_v2.2.0.md (locator pending) → 目前以 TT-CEXE-502 暫結案。  
* 本包僅承諾：每個 TT 具備 `verify_method`、`revoke_condition`、`evidence_ptr`。

---

## **10\. TEST\_TRACKING\_LIST（測試追蹤清單）**

\[ANCHOR:CXE-V120-TEST-TRACKING-LIST\]

| tt\_id | summary | verify\_method | revoke\_condition | evidence\_ptr | owner\_suggested | status(TEMP\_CLOSED/TEST\_TRACK) |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| TT-CEXE-301 | Package C 角色定義衝突（WI-C vs v1.1.0 scope\_lock）需以工程指南§3.3正文裁決 | Extract §3.3 正文逐條，補 source\_quote\_ptr 並統一術語 | 若無法提供逐條正文引用，撤銷任何「C=HOW SSOT」或「可取代」宣告，維持 C 僅導覽層 | DOCLOC:/mnt/data/Package C — Execution Pack（執行落地合冊）\_撰寫\_規範工作指導書（WI）.md\#\[WI-C-0\] \+ DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.1.0.md\#\[ANCHOR:CEXE-V110-DOC-META\] | Governance | TEST\_TRACK |
| TT-CEXE-003 | HANDOFF\_MANIFEST canonical schema 未定位 | Locate CP/SRS/ICD schema；或提供可抽取字段表（≥2 locator proofs） | 若仍不可定位，handoff 驗收不得判 PASS（維持 TT\_BOUND），並要求 Ops 以人工檢核 \+ 佐證記錄 | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.0.0.md\#\[ANCHOR:CXE-IF-HANDOFF-MIN-CONTRACT\] | Dev+Ops | TEST\_TRACK |
| TT-CEXE-002 | TT\_EXPORT canonical schema 未定位 | Locate CP TT schema / export schema；補最小字段表來源指針 | 若無 schema，撤銷「TT 可機械導出回放」主張 | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.0.0.md\#\[ANCHOR:CXE-IF-HANDOFF-MIN-CONTRACT\] | Control | TEST\_TRACK |
| TT-CEXE-202 | 工程指南§3.3 正文逐條對齊不足（含 phases/gates/G0-G3/EvidenceMinset/WP bus） | 建立逐條對齊 C\_ALIGNMENT\_MATRIX（row\_count \+ 抽樣行） | 若 row\_count 或 source\_quote\_ptr 缺失，撤銷 alignment PASS，維持 TT | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_前端文檔到實作驗收\_工程指南.md\#\[\#sec3.3-pkg-c-execution\] | Spec | TEST\_TRACK |
| TT-CEXE-401 | v1.0.0 審查報告 finding\_id 未逐條抽取，closure\_map 無法行級結案 | Extract legacy findings list；補 LEGACY\_FINDINGS\_CLOSURE\_MAP 全量行 | 若無全量行，replaceability 不可 YES | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.0.0\_審查報告.md\#(0) | Spec | TEST\_TRACK |
| TT-CEXE-501 | PkgA v1.2.0 缺 ≥2 locator proofs（對齊不可宣告） | 補 PkgA v1.2.0 anchors/locators 並更新 alignment matrix | 若仍無定位，本包僅能 route-out，且不得宣告已對齊 | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP \_Governance\_Index Pack\_v1.2.0.md | Governance | TEST\_TRACK |
| TT-CEXE-502 | PkgB v2.2.0 缺 ≥2 locator proofs（TT schema/evidence schema 無法核對） | 補 PkgB v2.2.0 anchors/locators 並更新 interfaces pointers | 若仍無定位，本包不得聲稱採用 canonical schema，只能維持 min\_field\_table TT | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Control Plane Pack\_v2.2.0.md | Control | TEST\_TRACK |
| TT-CEXE-004 | WP Audit Bus Mapping 掛載點字段/命名不可定位 | 從 WP 總表提取 gate\_registry / mapping 欄位並給行級定位 | 若仍無定位，WP bus 相關主張不得 PASS | DOCLOC:/mnt/data/OMOC\_WP總表\_v4.0.1-r2.md\#(Contract Blocks Registry) | Control | TEST\_TRACK |
| TT-CEXE-701 | 外部資料導入未形成逐條 web\_evidence 行級（double-sourcing \+ revoke） | 從 OMOC\_RIP\_外部資料提取 claim，雙來源補齊後填入 WEB\_EVIDENCE\_APPENDIX | 若 consistency=NO → WEB-CONFLICT→TT（不得支撐 PASS） | DOCLOC:/mnt/data/OMOC\_RIP\_外部資料.md\#(TOC) | Security | TEST\_TRACK |

---

## **11\. WEB\_EVIDENCE\_APPENDIX（SUPPORT-only）**

\[ANCHOR:CXE-V120-WEB-EVIDENCE-APPENDIX\]

本版 **未執行 web.run**（無內部 SSOT 缺口的可安全補洞之雙來源落地證據）→ entries=0。  
若日後補入：必 double-sourcing \+ accessed\_at=2026-02-25 \+ consistency \+ revoke\_condition \+ linked\_tt\_id。evidence\_ptr: SRS Web Appendix contract

| claim | linked\_tt\_id | source\_a | source\_b | accessed\_at | consistency(YES/NO) | revoke\_condition | notes |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |

---

## **12\. SELF\_AUDIT（RAG-Triad：結果 \+ evidence\_ptr）**

\[ANCHOR:CXE-V120-SELF-AUDIT\]

| check\_id | result(PASS/TT) | note | evidence\_ptr |
| ----- | ----- | ----- | ----- |
| SA-LOC-001 | TT | PkgA/PkgB/ICD 多處 locator proofs 不足 | `[ANCHOR:CXE-V120-DOC-INVENTORY]` |
| SA-GRD-001 | PASS | 本包未重寫 SSOT；HOW 全 route-out | `[ANCHOR:CXE-V120-ENTRANCES]` \+ WI-C-3 |
| SA-REL-001 | TT | 三大矩陣 row\_count/全量抽取仍不足，replaceability 維持 TT\_BOUND | `[ANCHOR:CXE-V120-MAPS]` |
| SA-WEB-001 | PASS | Web Appendix 仍空表頭，未引入不可驗證外部 claim | `[ANCHOR:CXE-V120-WEB-EVIDENCE-APPENDIX]` |

---

## **13\. machine\_summary.json（JSON only）**

\[ANCHOR:CXE-V120-MACHINE-SUMMARY\]

{  
  "doc\_id": "Spartoi\_SubP1-LITE+MVP\_Execution\_Pack",  
  "stable\_id": "SOMOC-SUBP1MVP-PKG-C-EXECUTION",  
  "version": "v1.2.0",  
  "release\_date": "2026-02-25",  
  "timezone": "Asia/Taipei",  
  "baseline\_web\_date": "2026-02-25",  
  "status": "DEFINITIVE\_WITH\_TT",  
  "cr\_open": 0,  
  "replaceability\_verdict": "TT\_BOUND",  
  "top\_blockers": \[  
    "TT-CEXE-301",  
    "TT-CEXE-202",  
    "TT-CEXE-401",  
    "TT-CEXE-501",  
    "TT-CEXE-502"  
  \],  
  "tables\_present": {  
    "PREFLIGHT\_DOC\_INVENTORY": true,  
    "FINDINGS\_LEDGER\_CLOSURE": true,  
    "LEGACY\_FINDINGS\_CLOSURE\_MAP": true,  
    "ANCHOR\_ALIAS\_MAP": true,  
    "C\_ALIGNMENT\_MATRIX": true,  
    "HANDOFF\_MIN\_FIELD\_TABLE": true,  
    "TEST\_TRACKING\_LIST": true,  
    "WEB\_EVIDENCE\_APPENDIX": true  
  },  
  "row\_counts": {  
    "FINDINGS\_LEDGER\_CLOSURE": 9,  
    "LEGACY\_FINDINGS\_CLOSURE\_MAP": "UNVERIFIED",  
    "ANCHOR\_ALIAS\_MAP": 4,  
    "C\_ALIGNMENT\_MATRIX": 7,  
    "TEST\_TRACKING\_LIST": 9,  
    "WEB\_EVIDENCE\_APPENDIX": 0  
  },  
  "ps\_cards\_landed": \[  
    "PS-CEXE-0301",  
    "PS-CEXE-0101",  
    "PS-CEXE-0102",  
    "PS-CEXE-0003",  
    "PS-CEXE-0001",  
    "PS-CEXE-0700"  
  \],  
  "docmiss\_tt\_ids": \[  
    "TT-CEXE-501",  
    "TT-CEXE-502",  
    "TT-CEXE-DOCMISS-03"  
  \]  
}

