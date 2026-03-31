# **Spartoi-OMOC\_ops RB \+ WI — v8.1.1-ops-r1**

\[ANCHOR:OPS-RBWI-00-COVER\]

## **0\) Cover Card**

| 欄位 | 值 |
| ----- | ----- |
| doc\_id | `Spartoi-OMOC_ops_RBWI` |
| stable\_id | `OPS-RBWI` |
| external\_name | `Spartoi-OMOC_ops RB + WI` |
| internal\_short\_name | `OPS-RBWI` |
| version | `v8.1.1-ops-r1` |
| release\_date | `2026-02-18` (Asia/Taipei) |
| baseline\_web\_date | `2026-02-18` |
| supersedes | `Spartoi｜台股當沖隔日沖_RUNBOOK&WI_v2.0.0`、`Spartoi｜各階段子系統操作流程_v1.0.1`、`Spartoi｜台股當沖_隔日沖實際流程_v1.0.0 Final`（以 §13 Legacy→New 覆蓋映射工程性吸收；缺口以 TT TEMP\_CLOSED） |
| scope | **Ops Runbook \+ WI Only**（流程/步驟/驗證/證據/故障處置/回滾/交接；規格/架構/契約全文一律 Route-Out） |
| default\_operating\_mode | `RADAR_ONLY`（直到 TT-OPS-001\~003 轉正；見 §10、§15） |
| overall\_verdict | `PASS_WITH_TT`（阻斷級修補已落地；仍有 MISSING/UNVERIFIED 以 TT TEMP\_CLOSED） |
| compatibility\_matrix | 見下表 |

### **Compatibility Matrix**

| artifact | expected\_version | status | notes |
| ----- | ----- | ----- | ----- |
| `Spartoi-OMOC_MIP_v2.2.0.txt` | `v2.2.0` | FOUND | 本文件以 MIP 為入口（Authority 最高） |
| `Spartoi-OMOC_SRS_v8.1.0.md` | `v8.1.0` | FOUND | Gate/Evidence/External Governance 以 SRS 為準 |
| `Spartoi-OMOC_ARCH_v8.1.0.md` | `v8.1.0` | FOUND | 治理元件/觀測/回放 以 ARCH 為準 |
| `Spartoi-OMOC_README_RDM v2.2.0.md` | `v2.2.0` | FOUND | Repo 操作入口/導覽（僅 Route-Out） |
| `Spartoi-OMOC_LBP-A(SIR) v8.1.1-r1.md` | `v8.1.1-r1` | FOUND | 規範僅引用 DOCLOC |
| `Spartoi-OMOC_LBP-B(ICD)v8.1.1-r2.md` | `v8.1.1-r2` | FOUND\_UNVERIFIED | 內容型態疑似「升級修補輸出」；以 TT-OPS-031 暫結案 |
| `Spartoi-OMOC_LBP-C(ADR) v8.1.1-r2.md` | `v8.1.1-r2` | FOUND | 規範僅引用 DOCLOC |
| `Spartoi-OMOC_LBP-D(C4) v8.1.1-r2.md` | `v8.1.1-r2` | FOUND\_UNVERIFIED | 內容型態疑似「升級修補輸出」；以 TT-OPS-031 暫結案 |
| `Spartoi-OMOC_LBP-E(Fitness) v8.1.1-r2.md` | `v8.1.1-r2` | FOUND\_UNVERIFIED | 缺少可用 doc\_identity 強定位；以 TT-OPS-033 暫結案 |
| `Pipeline-*` / `15CA` | `v2` / `v0.2.0-r1` | FOUND\_UNVERIFIED | 多數缺 doc\_id/version/anchor；以 TT TEMP\_CLOSED（見 §4、§15） |

---

\[ANCHOR:OPS-RBWI-03-AUTHORITY\]

## **1\) Authority Stack**

### **1.1 No-Source-No-Norm**

* **NORMATIVE（唯一可升格為規範）**：專案檔案庫內文件（見 §4 Doc Inventory）。  
* **SUPPORT-only**：Web 來源（僅能進 §17 Web Evidence Appendix；不得覆寫 NORMATIVE）。  
* **UNTRUSTED**：任何對話貼文、外部剪貼、未驗證輸入；一律進 §9.3 `input_quarantine_manifest`，不得直接變更本文件硬規則。

### **1.2 NORMATIVE 優先序**

1. `Spartoi-OMOC_MIP_v2.2.0.txt`（入口優先）  
2. `Spartoi-OMOC_SRS_v8.1.0.md`  
3. `Spartoi-OMOC_ARCH_v8.1.0.md`  
4. `Spartoi-OMOC_LBP-*`（A→E）  
5. `Spartoi-OMOC_README_RDM v2.2.0.md`（repo 導覽/入口，僅 Route-Out）  
6. `OMOC_藍圖_v4.0.1-r1.md`、`Spartoi-OMOC Blueprint v2.2.0-r1.md`（規劃/藍圖類，僅 Route-Out；不拷貝成 Ops 規格）  
7. `Pipeline-*`、`15CA`、`A+B` 等方案（若缺 doc\_id/version/anchor → 一律 UNVERIFIED \+ TT）  
8. 本文件（Ops Runbook \+ WI：把上述內容「可操作化映射」）

### **1.3 衝突裁決規則**

* **衝突**：同一主題若多份 NORMATIVE 不一致 → 以優先序較高者為準；較低者開 TT 記錄漂移，並 TEMP\_CLOSED。  
* **不可定位（DOCLOC 無法證明）**：一律 TT \+ TEMP\_CLOSED；不得腦補。  
* **缺證據**：一律 Fail-Closed（不得釋出/合併/執行）。

---

\[ANCHOR:OPS-RBWI-02-READER-GUIDE\]

## **2\) Reader Guide**

### **2.1 閱讀路徑**

* **操作者（Operator）**：§3 TOC → §11 Runbook → §12 JobCards → §8 Evidence Contract → §10 Degrade/HITL → §15 TT Register  
* **審查/稽核（Auditor）**：§4 Doc Inventory → §7 Gate/Check Map → §14 Patch Register → §15 TT Register → §17 Web Evidence Appendix  
* **AI/LLM（Anti-miss）**：先讀 §2.3、§4、§7、§8；檢索 key 以 `STG-`/`WI-`/`GATE-`/`TT-`/`DOCLOC:` 為主鍵，不要憑語意猜。

### **2.2 路由原則**

* 本文件只做 **Ops 映射**：流程、步驟、驗證、證據、故障處置、回滾、交接。  
* **OUT-of-scope** 的規格正文：一律以 `Route-Out (DOCLOC)` 指回 SSOT，不代寫/不複製。

\[ANCHOR:OPS-RBWI-02A-INDEX\]

### **2.3 索引與固定主鍵**

* Stages：`STG-X1/X2/X3`、`STG-A1..A4`、`STG-B1..B3`、`STG-C1..C5`  
* JobCards：`WI-GOV-*`、`WI-A-*`、`WI-B-*`、`WI-C-*`、`WI-LEG-*`  
* Gates：`GATE-*`（完整清單見 §7）  
* Evidence：`verdict.json` / `evidence_bundle.(zip|tgz)` / `index.json|evidence_index.md`（見 §8）  
* 治理工件：`degrade_matrix.json`、`hitl_record.json`、`input_quarantine_manifest.tsv`（見 §9、§10）  
* 任務追蹤：`TT-*`（見 §15）

### **2.4 DOCLOC 規則**

* **強定位（首選）**：`DOCLOC:<repo_path>#<ANCHOR>`（ANCHOR 必須可在檔內 grep 命中）  
* **弱定位（降級）**：`DOCLOC:<repo_path>#<heading>` 或 `DOCLOC:<repo_path>@<cover_card_field>`  
  → 一律標記 `UNVERIFIED`，並建立 TT 要求補 anchor（見 §4、§15）。

---

\[ANCHOR:OPS-RBWI-01-TOC\]

## **3\) TOC**

* [0\) Cover Card](https://chatgpt.com/g/g-p-69919e8127a88191b7604c29229af3b8-spartoi-omoc-3-ssot/c/69955de3-d688-83a3-afbe-57344071b348#ops-rbwi-00-cover)  
* [1\) Authority Stack](https://chatgpt.com/g/g-p-69919e8127a88191b7604c29229af3b8-spartoi-omoc-3-ssot/c/69955de3-d688-83a3-afbe-57344071b348#ops-rbwi-03-authority)  
* [2\) Reader Guide](https://chatgpt.com/g/g-p-69919e8127a88191b7604c29229af3b8-spartoi-omoc-3-ssot/c/69955de3-d688-83a3-afbe-57344071b348#ops-rbwi-02-reader-guide)  
  * [2.3 索引與固定主鍵](https://chatgpt.com/g/g-p-69919e8127a88191b7604c29229af3b8-spartoi-omoc-3-ssot/c/69955de3-d688-83a3-afbe-57344071b348#ops-rbwi-02a-index)  
* [3\) TOC](https://chatgpt.com/g/g-p-69919e8127a88191b7604c29229af3b8-spartoi-omoc-3-ssot/c/69955de3-d688-83a3-afbe-57344071b348#ops-rbwi-01-toc)  
* [4\) Doc Inventory](https://chatgpt.com/g/g-p-69919e8127a88191b7604c29229af3b8-spartoi-omoc-3-ssot/c/69955de3-d688-83a3-afbe-57344071b348#ops-rbwi-04-doc-inventory)  
* [5\) Naming Registry](https://chatgpt.com/g/g-p-69919e8127a88191b7604c29229af3b8-spartoi-omoc-3-ssot/c/69955de3-d688-83a3-afbe-57344071b348#ops-rbwi-06-naming-registry)  
* [6\) Stage Map](https://chatgpt.com/g/g-p-69919e8127a88191b7604c29229af3b8-spartoi-omoc-3-ssot/c/69955de3-d688-83a3-afbe-57344071b348#ops-rbwi-06-system-map)  
* [7\) Gate and Check Map](https://chatgpt.com/g/g-p-69919e8127a88191b7604c29229af3b8-spartoi-omoc-3-ssot/c/69955de3-d688-83a3-afbe-57344071b348#ops-rbwi-09-gates-evidence)  
  * [7.2 Gate 引用驗證清單](https://chatgpt.com/g/g-p-69919e8127a88191b7604c29229af3b8-spartoi-omoc-3-ssot/c/69955de3-d688-83a3-afbe-57344071b348#ops-rbwi-09a-gate-verification-checklist)  
* [8\) Evidence Contract](https://chatgpt.com/g/g-p-69919e8127a88191b7604c29229af3b8-spartoi-omoc-3-ssot/c/69955de3-d688-83a3-afbe-57344071b348#ops-rbwi-08-evidence-contract)  
  * [8.3 evidence\_index 一致化重算規範](https://chatgpt.com/g/g-p-69919e8127a88191b7604c29229af3b8-spartoi-omoc-3-ssot/c/69955de3-d688-83a3-afbe-57344071b348#ops-rbwi-08a-evidence-index-recompute)  
* [9\) Security and Safety Ops](https://chatgpt.com/g/g-p-69919e8127a88191b7604c29229af3b8-spartoi-omoc-3-ssot/c/69955de3-d688-83a3-afbe-57344071b348#ops-rbwi-09-security-safety)  
  * [9.3 input\_quarantine\_manifest](https://chatgpt.com/g/g-p-69919e8127a88191b7604c29229af3b8-spartoi-omoc-3-ssot/c/69955de3-d688-83a3-afbe-57344071b348#ops-rbwi-09b-input-quarantine)  
* [10\) Degrade and HITL Governance](https://chatgpt.com/g/g-p-69919e8127a88191b7604c29229af3b8-spartoi-omoc-3-ssot/c/69955de3-d688-83a3-afbe-57344071b348#ops-rbwi-10-degrade-hitl)  
  * [10.2 degrade\_matrix schema](https://chatgpt.com/g/g-p-69919e8127a88191b7604c29229af3b8-spartoi-omoc-3-ssot/c/69955de3-d688-83a3-afbe-57344071b348#ops-rbwi-10a-degrade-schema)  
  * [10.3 hitl\_record schema](https://chatgpt.com/g/g-p-69919e8127a88191b7604c29229af3b8-spartoi-omoc-3-ssot/c/69955de3-d688-83a3-afbe-57344071b348#ops-rbwi-10b-hitl-schema)  
* [11\) Runbook](https://chatgpt.com/g/g-p-69919e8127a88191b7604c29229af3b8-spartoi-omoc-3-ssot/c/69955de3-d688-83a3-afbe-57344071b348#ops-rbwi-07-runbook)  
* [12\) Work Instructions and JobCards](https://chatgpt.com/g/g-p-69919e8127a88191b7604c29229af3b8-spartoi-omoc-3-ssot/c/69955de3-d688-83a3-afbe-57344071b348#ops-rbwi-08-wi-jobcards)  
* [13\) Legacy to New Coverage](https://chatgpt.com/g/g-p-69919e8127a88191b7604c29229af3b8-spartoi-omoc-3-ssot/c/69955de3-d688-83a3-afbe-57344071b348#ops-rbwi-10-legacy-parity)  
* [14\) Patch Register](https://chatgpt.com/g/g-p-69919e8127a88191b7604c29229af3b8-spartoi-omoc-3-ssot/c/69955de3-d688-83a3-afbe-57344071b348#ops-rbwi-14-patch-register)  
  * [14.1 Unified Findings Ledger](https://chatgpt.com/g/g-p-69919e8127a88191b7604c29229af3b8-spartoi-omoc-3-ssot/c/69955de3-d688-83a3-afbe-57344071b348#ops-rbwi-14a-findings-ledger)  
  * [14.3 Self Audit Checklist](https://chatgpt.com/g/g-p-69919e8127a88191b7604c29229af3b8-spartoi-omoc-3-ssot/c/69955de3-d688-83a3-afbe-57344071b348#ops-rbwi-13-self-audit)  
* [15\) TT Register and Test Tracking List](https://chatgpt.com/g/g-p-69919e8127a88191b7604c29229af3b8-spartoi-omoc-3-ssot/c/69955de3-d688-83a3-afbe-57344071b348#ops-rbwi-11-tt-register)  
* [16\) Decision Log](https://chatgpt.com/g/g-p-69919e8127a88191b7604c29229af3b8-spartoi-omoc-3-ssot/c/69955de3-d688-83a3-afbe-57344071b348#ops-rbwi-16-decision-log)  
* [17\) Web Evidence Appendix](https://chatgpt.com/g/g-p-69919e8127a88191b7604c29229af3b8-spartoi-omoc-3-ssot/c/69955de3-d688-83a3-afbe-57344071b348#ops-rbwi-12-web-evidence)

---

\[ANCHOR:OPS-RBWI-04-DOC-INVENTORY\]

## **4\) Doc Inventory**

規則：**每份文件必列**；`MISSING/UNVERIFIED/不可定位` → **TT \+ TEMP\_CLOSED**（不得假裝覆蓋）。

### **4.1 必要輸入清單**

| doc\_name | doc\_id | version | status | primary\_purpose | DOCLOC | notes | linked\_TT |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| `Spartoi-OMOC_ops RB + WI — v8.1.0-ops-r1.md` | `Spartoi-OMOC_ops_RBWI` | `v8.1.0-ops-r1` | FOUND | 舊版目標（必讀） | `DOCLOC:Spartoi-OMOC_ops RB + WI — v8.1.0-ops-r1.md#[ANCHOR:OPS-RBWI-00-COVER]` | 作為 Legacy-in-doc 的對照基準 | (none) |
| `Spartoi-OMOC_ops RB + WI _v8.1.0-ops-r1_審查報告.md` | `OPS-RBWI-REVIEW-A` | `v8.1.0-ops-r1` | FOUND | 審查報告A（必解） | `DOCLOC:Spartoi-OMOC_ops RB + WI _v8.1.0-ops-r1_審查報告.md#4` | Findings/Patch/TT 以此閉環 | (none) |
| `Spartoi-OMOC_MIP_v2.2.0.txt` | `MIP` | `v2.2.0` | FOUND | 入口/Stage 概念 | `DOCLOC:Spartoi-OMOC_MIP_v2.2.0.txt#[ANCHOR:MIP-V220-0-1-INTRO]` | Authority 最高 | (none) |
| `Spartoi-OMOC_SRS_v8.1.0.md` | `SRS` | `v8.1.0` | FOUND | Gate/Evidence/治理需求 | `DOCLOC:Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-GATE-DICTIONARY]` | 本文件僅做 Ops 映射 | (none) |
| `Spartoi-OMOC_ARCH_v8.1.0.md` | `ARCH` | `v8.1.0` | FOUND | 元件/觀測/回放 | `DOCLOC:Spartoi-OMOC_ARCH_v8.1.0.md#[ANCHOR:ARCH-V810-4-15-2-COMPONENTS]` | 治理工件元件 Route-Out | (none) |
| `Spartoi-OMOC_README_RDM v2.2.0.md` | `README_RDM` | `v2.2.0` | FOUND | Repo 入口/導覽 | `DOCLOC:Spartoi-OMOC_README_RDM v2.2.0.md#README` | 僅 Route-Out | TT-OPS-034 |
| `OMOC_藍圖_v4.0.1-r1.md` | `OMOC_BLUEPRINT` | `v4.0.1-r1` | FOUND\_UNVERIFIED | 規劃/藍圖 | `DOCLOC:OMOC_藍圖_v4.0.1-r1.md#` | 存在外部連結/弱 TOC（OUT-of-scope 修補） | TT-OPS-035 |
| `Spartoi-OMOC Blueprint v2.2.0-r1.md` | `SPARTOI_BP` | `v2.2.0-r1` | FOUND\_UNVERIFIED | 升級建議/規劃輸出 | `DOCLOC:Spartoi-OMOC Blueprint v2.2.0-r1.md#` | 無穩定 anchor；僅作參考 Route-Out | TT-OPS-036 |
| `Spartoi-OMOC_LBP-A(SIR) v8.1.1-r1.md` | `LBP-A` | `v8.1.1-r1` | FOUND | SIR | `DOCLOC:Spartoi-OMOC_LBP-A(SIR) v8.1.1-r1.md#[ANCHOR:LBPA-SIR-V811-00-DOC_IDENTITY]` | OK | (none) |
| `Spartoi-OMOC_LBP-B(ICD)v8.1.1-r2.md` | `LBP-B` | `v8.1.1-r2` | FOUND\_UNVERIFIED | ICD | `DOCLOC:Spartoi-OMOC_LBP-B(ICD)v8.1.1-r2.md#` | 內容型態疑似「升級修補輸出」；不可當作完整 ICD 規格 | TT-OPS-031 |
| `Spartoi-OMOC_LBP-C(ADR) v8.1.1-r2.md` | `LBP-C` | `v8.1.1-r2` | FOUND | ADR | `DOCLOC:Spartoi-OMOC_LBP-C(ADR) v8.1.1-r2.md#[ANCHOR:LBPC-ADR-V811R2-00-DOC_IDENTITY]` | OK | (none) |
| `Spartoi-OMOC_LBP-D(C4) v8.1.1-r2.md` | `LBP-D` | `v8.1.1-r2` | FOUND\_UNVERIFIED | C4 | `DOCLOC:Spartoi-OMOC_LBP-D(C4) v8.1.1-r2.md#` | 內容型態疑似「升級修補輸出」；不可當作完整 C4 規格 | TT-OPS-031 |
| `Spartoi-OMOC_LBP-E(Fitness) v8.1.1-r2.md` | `LBP-E` | `v8.1.1-r2` | FOUND\_UNVERIFIED | Fitness | `DOCLOC:Spartoi-OMOC_LBP-E(Fitness) v8.1.1-r2.md#` | 缺少可用 doc\_identity 強定位；需補 anchor/版本欄位 | TT-OPS-033 |
| `Spartoi-OMOC(15 CA)重構升級藍圖v0.2.0-r1.md` | `15CA_BP` | `v0.2.0-r1` | FOUND\_UNVERIFIED | 15CA 映射 | `DOCLOC:Spartoi-OMOC(15 CA)重構升級藍圖v0.2.0-r1.md#` | 期待存在 anchor 清單但檔內不可強證明；需補 | TT-OPS-032 |
| `Pipeline-A_組合方案 v2.md` | `PIPE-A` | `v2` | FOUND\_UNVERIFIED | Pipeline-A | `DOCLOC:Pipeline-A_組合方案 v2.md#` | 無 doc\_id/version/anchor | TT-OPS-012 |
| `Pipeline-B 組合方案 v2.md` | `PIPE-B` | `v2` | FOUND\_UNVERIFIED | Pipeline-B | `DOCLOC:Pipeline-B 組合方案 v2.md#` | 無 doc\_id/version/anchor | TT-OPS-012 |
| `Pipeline-C組合方案.md` | `PIPE-C` | `UNVERIFIED` | FOUND\_UNVERIFIED | Pipeline-C | `DOCLOC:Pipeline-C組合方案.md#` | 檔名無版本；不得當已裁決 | TT-OPS-012 |
| `Pipeline-A+B 整合資料庫方案.md` | `PIPE-A+B` | `UNVERIFIED` | FOUND\_UNVERIFIED | A+B | `DOCLOC:Pipeline-A+B 整合資料庫方案.md#` | 檔名無版本；不得當已裁決 | TT-OPS-012 |
| `Spartoi｜台股當沖隔日沖_RUNBOOK&WI_v2.0.0.md` | `LEG-RW` | `v2.0.0` | FOUND | Legacy Runbook+WI | `DOCLOC:Spartoi｜台股當沖隔日沖_RUNBOOK&WI_v2.0.0.md#[ANCHOR:RW-V200-COVER]` | CR-OPEN/PEND 需轉 TT（見 §15） | TT-LEG-001 |
| `Spartoi｜各階段子系統操作流程_v1.0.1.md` | `LEG-FLOW` | `v1.0.1` | FOUND | Legacy 子系統流程 | `DOCLOC:Spartoi｜各階段子系統操作流程_v1.0.1.md#[ANCHOR:OPS-FLOW-FINAL-V1-HEADER]` | CR-OPS 需轉 TT（見 §15） | TT-LEG-002 |
| `Spartoi｜台股當沖_隔日沖實際流程_v1.0.0 Final.txt` | `LEG-FLOW-TXT` | `v1.0.0 Final` | FOUND\_UNVERIFIED | Legacy 實際流程 | `DOCLOC:Spartoi｜台股當沖_隔日沖實際流程_v1.0.0 Final.txt@CoverCard` | 無 anchors；需段落主鍵策略與補 LOCATOR 行 | TT-OPS-033 |

### **4.2 可能存在但缺檔**

| doc\_name | expected\_status | impact | linked\_TT |
| ----- | ----- | ----- | ----- |
| `五子系統組合方案` | MISSING | Stage Map 子系統組合不完整 | TT-OPS-001 |
| `Spartoi-OMOC_子系統重構藍圖` | MISSING | 子系統拆分/命名治理缺口 | TT-OPS-002 |
| `子系統「顯示名_宏模組名」改名方案` | MISSING | Naming Registry 顯示名無法轉正 | TT-OPS-003 |

---

\[ANCHOR:OPS-RBWI-06-NAMING-REGISTRY\]

## **5\) Naming Registry**

主鍵是 `stable_id`；顯示名若缺改名方案 → 一律 TEMP\_CLOSED（綁 TT-OPS-003）。

| stable\_id | external\_display\_name | internal\_code | type | version | status | notes | linked\_TT |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| `OPS-RBWI` | `Spartoi-OMOC_ops RB + WI` | `OPS-RBWI` | doc | `v8.1.1-ops-r1` | ACTIVE | 本文件 | (none) |
| `CA-GOVERN` | `Governance` | `CA-GOVERN` | subsystem | `UNVERIFIED` | ACTIVE | 治理/Fail-Closed/HITL/Degrade | TT-OPS-002 |
| `CA-OBSERVE` | `Observe` | `CA-OBSERVE` | subsystem | `UNVERIFIED` | ACTIVE | 觀測/巡檢/監控 | TT-OPS-002 |
| `CA-REPLAY` | `Replay` | `CA-REPLAY` | subsystem | `UNVERIFIED` | ACTIVE | 回放/稽核重算 | TT-OPS-002 |
| `CA-WRC` | `WRC` | `CA-WRC` | subsystem | `UNVERIFIED` | ACTIVE | Source intake/白名單 | TT-OPS-002 |
| `CA-CORPUS` | `Corpus` | `CA-CORPUS` | subsystem | `UNVERIFIED` | ACTIVE | 語料索引 | TT-OPS-002 |
| `CA-DISTILL` | `Distill` | `CA-DISTILL` | subsystem | `UNVERIFIED` | ACTIVE | 蒸餾/抽取 | TT-OPS-002 |
| `CA-DSL` | `DSL` | `CA-DSL` | subsystem | `UNVERIFIED` | ACTIVE | DSL/規則化 | TT-OPS-002 |
| `CA-BACKTEST` | `Backtest` | `CA-BACKTEST` | subsystem | `UNVERIFIED` | ACTIVE | 回測 | TT-OPS-002 |
| `CA-METHOD` | `Method` | `CA-METHOD` | subsystem | `UNVERIFIED` | ACTIVE | 方法/策略生成 | TT-OPS-002 |
| `CA-PERFORM` | `Perform` | `CA-PERFORM` | subsystem | `UNVERIFIED` | ACTIVE | 執行前性能/風控 | TT-OPS-002 |
| `CA-WATCH` | `Watch` | `CA-WATCH` | subsystem | `UNVERIFIED` | ACTIVE | 觀察清單/盤前 | TT-OPS-002 |
| `CA-TA` | `TA` | `CA-TA` | subsystem | `UNVERIFIED` | ACTIVE | 技術分析 | TT-OPS-002 |
| `CA-TRANSLATE` | `Translate` | `CA-TRANSLATE` | subsystem | `UNVERIFIED` | ACTIVE | 模型/策略轉譯 | TT-OPS-002 |
| `CA-SELECT` | `Select` | `CA-SELECT` | subsystem | `UNVERIFIED` | ACTIVE | 選股/選策略 | TT-OPS-002 |
| `CA-EXECUTE` | `Execute` | `CA-EXECUTE` | subsystem | `UNVERIFIED` | ACTIVE | 交易執行 | TT-OPS-002 |

---

\[ANCHOR:OPS-RBWI-06-SYSTEM-MAP\]

## **6\) Stage Map**

以 **MIP** 為入口；Pipeline A/B/C/A+B/15CA 等方案僅作 **Ops 映射**。若方案版本/anchor 不可證明 → `UNVERIFIED + TT`，不得宣告已裁決（PATCH-003）。

### **6.1 Stages**

| stage\_id | CA | objective | entry\_gate | required\_gates | evidence\_minset | primary\_jobcard | route\_out\_docloc | notes |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| `STG-X1` | `CA-GOVERN` | 全域治理：Preflight、Fail-Closed、Degrade、HITL、Final Verdict | `GATE-BP-001-INPUT` | `GATE-BP-001-INPUT` `GATE-BP-002-TRACE` `GATE-BP-003-EVIDENCE` `GATE-BP-010-SECURITY` | Evidence Triplet \+ `degrade_matrix` \+ `hitl_record` \+ `tt_register` | `WI-GOV-000` `WI-GOV-700` `WI-GOV-900` | `DOCLOC:Spartoi-OMOC_MIP_v2.2.0.txt#[ANCHOR:MIP-V220-0-2-PREFLIGHT]` | 治理缺口一律 Fail-Closed |
| `STG-X2` | `CA-OBSERVE` | 觀測：Gate/Checks 存在性、觸發性、飄移偵測 | `GATE-BP-002-TRACE` | `GATE-BP-002-TRACE` `GATE-BP-003-EVIDENCE` | Evidence Triplet \+ `gate_report` | `WI-GOV-000`（含觀測） | `DOCLOC:Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-GOV-GITHUB]` | GitHub 行為易漂移 → 參照 §17 SUPPORT-only |
| `STG-X3` | `CA-REPLAY` | 回放：重算 evidence\_index、重播 Gate、稽核一致性 | `GATE-BP-003-EVIDENCE` | `GATE-BP-003-EVIDENCE` | Evidence Triplet（重算版） | `WI-GOV-000`（含回放） | `DOCLOC:Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-REQ-EVID-TRACE]` | evidence\_index 規範見 §8.3 |
| `STG-A1` | `CA-WRC` | Source Intake：白名單入庫、隔離外部輸入 | `GATE-BP-001-INPUT` | `GATE-PIPE-A-READY` `GATE-BP-010-SECURITY` | Evidence Triplet \+ `input_quarantine_manifest` | `WI-A-WRC-001` | `DOCLOC:Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-REQ-PIPE-A]` | 外部內容一律隔離 |
| `STG-A2` | `CA-CORPUS` | Corpus Index：可檢索工件 | `GATE-PIPE-A-READY` | `GATE-PIPE-A-READY` | Evidence Triplet | `WI-A-CORPUS-001` | `DOCLOC:Spartoi-OMOC_MIP_v2.2.0.txt#[ANCHOR:MIP-V220-1-4-PIPE-A]` | Pipeline-A 版本未證明不影響此 Stage 定義 |
| `STG-A3` | `CA-DISTILL` | Distill：萃取/蒸餾 | `GATE-PIPE-A-READY` | `GATE-PIPE-A-READY` | Evidence Triplet | `WI-A-DISTILL-001` | `DOCLOC:Spartoi-OMOC_MIP_v2.2.0.txt#[ANCHOR:MIP-V220-1-4-PIPE-A]` |  |
| `STG-A4` | `CA-DSL` | DSL：可執行規則化 | `GATE-PIPE-A-READY` | `GATE-PIPE-A-READY` | Evidence Triplet | `WI-A-DSL-001` | `DOCLOC:Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-REQ-PIPE-A]` |  |
| `STG-B1` | `CA-BACKTEST` | Backtest：回測 | `GATE-PIPE-B-READY` | `GATE-PIPE-B-READY` | Evidence Triplet | `WI-B-BACKTEST-001` | `DOCLOC:Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-REQ-PIPE-B]` |  |
| `STG-B2` | `CA-METHOD` | Method：策略/方法生成 | `GATE-PIPE-B-READY` | `GATE-PIPE-B-READY` | Evidence Triplet | `WI-B-METHOD-001` | `DOCLOC:Spartoi-OMOC_MIP_v2.2.0.txt#[ANCHOR:MIP-V220-1-5-PIPE-B]` |  |
| `STG-B3` | `CA-PERFORM` | Perform：性能/風控驗證 | `GATE-PIPE-B-READY` | `GATE-PIPE-B-READY` `GATE-BP-010-SECURITY` | Evidence Triplet \+ `gate_report` | `WI-B-PERFORM-001` | `DOCLOC:Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-REQ-PIPE-B]` |  |
| `STG-C1` | `CA-WATCH` | Watch：盤前/觀察清單 | `GATE-PIPE-C-READY` | `GATE-PIPE-C-READY` | Evidence Triplet | `WI-C-WATCH-001` | `DOCLOC:Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-REQ-PIPE-C]` | Pipeline-C 版本 UNVERIFIED（TT-OPS-012） |
| `STG-C2` | `CA-TA` | TA：技術分析 | `GATE-PIPE-C-READY` | `GATE-PIPE-C-READY` | Evidence Triplet | `WI-C-TA-001` | `DOCLOC:Spartoi-OMOC_MIP_v2.2.0.txt#[ANCHOR:MIP-V220-1-6-PIPE-C]` |  |
| `STG-C3` | `CA-TRANSLATE` | Translate：策略/訊號轉譯 | `GATE-PIPE-C-READY` | `GATE-PIPE-C-READY` | Evidence Triplet | `WI-C-TRANSLATE-001` | `DOCLOC:Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-REQ-PIPE-C]` |  |
| `STG-C4` | `CA-SELECT` | Select：選股/選策略 | `GATE-PIPE-C-READY` | `GATE-PIPE-C-READY` | Evidence Triplet | `WI-C-SELECT-001` | `DOCLOC:Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-REQ-PIPE-C]` |  |
| `STG-C5` | `CA-EXECUTE` | Execute：交易執行與收盤結算 | `GATE-PIPE-C-READY` | `GATE-PIPE-C-READY` | Evidence Triplet \+ `hitl_record`（若進入 HITL） | `WI-C-EXECUTE-001` | `DOCLOC:Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-GOV-GITHUB]` |  |

---

\[ANCHOR:OPS-RBWI-09-GATES-EVIDENCE\]

## **7\) Gate and Check Map**

目的：把 Gate 變成「Ops 可驗證的存在性 \+ 可觸發性」；任何 Gate 不可定位/不可驗證 → TT \+ TEMP\_CLOSED（PATCH-004）。

### **7.1 Core Gate List**

| gate\_id | purpose | SSOT\_DOCLOC | ops\_verification | evidence\_minset | degrade\_interaction | linked\_TT |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| `GATE-BP-001-INPUT` | 輸入治理/白名單/隔離 | `DOCLOC:Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-1-2-2-REGISTRY]` | 1\) Preflight `input_quarantine_manifest` 已產出 2\) WRC white-list 核准紀錄存在 | Triplet \+ quarantine manifest | 若不確定 → `RADAR_ONLY` | (none) |
| `GATE-BP-002-TRACE` | 追溯/註冊/版本血緣 | `DOCLOC:Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-REQ-EVID-TRACE]` | 1\) evidence\_index 可重算 2\) run\_id/version manifest 可回溯 | Triplet \+ run\_manifest | trace 缺失 → BLOCK\_RELEASE | (none) |
| `GATE-BP-003-EVIDENCE` | Triplet 必備 | `DOCLOC:Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-REQ-EVID-TRIPLET]` | 1\) verdict/bundle/index 三者齊 2\) hash 綁定一致 | Triplet | 缺任一 → FAIL | (none) |
| `GATE-BP-010-SECURITY` | 注入/供應鏈/機密治理 | `DOCLOC:Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-GOV-SUPPLY-CHAIN]` | 1\) Secrets Zero 2\) 工具/技能 provenance 記錄 3\) quarantine 完整 | Triplet \+ supply\_chain snapshot | 任何疑慮 → EXECUTE\_DISABLED | TT-OPS-040 |
| `GATE-PIPE-A-READY` | Pipeline-A 準備就緒 | `DOCLOC:Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-REQ-PIPE-A]` | 1\) A1→A4 evidence 齊 2\) 覆蓋/索引達標（Route-Out 至 Fitness） | Triplet | 未達標 → TEMP\_CLOSED | TT-OPS-041 |
| `GATE-PIPE-B-READY` | Pipeline-B 準備就緒 | `DOCLOC:Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-REQ-PIPE-B]` | 1\) B1→B3 evidence 齊 2\) 方法與回測一致 | Triplet | 未達標 → TEMP\_CLOSED | TT-OPS-042 |
| `GATE-PIPE-C-READY` | Pipeline-C 準備就緒 | `DOCLOC:Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-REQ-PIPE-C]` | 1\) C1→C5 evidence 齊 2\) 交易前 HITL 條件滿足（若要求） | Triplet \+ hitl\_record (if any) | Pipeline-C 版本 UNVERIFIED → RADAR\_ONLY | TT-OPS-012 |
| `GATE-MERGE-QUEUE` | Merge Queue / Required Checks | `DOCLOC:Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-GOV-GITHUB]` | 1\) required checks 存在且可觸發 2\) merge\_group 路徑可產證據 | gate\_report \+ Triplet | 不確定 → BLOCK\_RELEASE | TT-OPS-034 |

\[ANCHOR:OPS-RBWI-09A-GATE-VERIFICATION-CHECKLIST\]

### **7.2 Gate 引用驗證清單**

這份清單是 **可機械檢查的最小要求**：每個 gate\_id 必須能對上 SSOT DOCLOC，且能被 Ops 驗證「存在且可觸發」。

| check\_id | gate\_id | required\_proof | how\_to\_validate | fail\_closed\_action |
| ----- | ----- | ----- | ----- | ----- |
| `GC-001` | ALL | SSOT DOCLOC 可定位 | grep 檔案庫命中 anchor \+ gate\_id 同段落 | 開 TT，並 TEMP\_CLOSED |
| `GC-002` | `GATE-BP-003-EVIDENCE` | Triplet 三者齊 | evidence 目錄存在 `verdict.json` \+ bundle \+ index | verdict=FAIL，BLOCK\_RELEASE |
| `GC-003` | `GATE-MERGE-QUEUE` | required checks 可觸發 | 以「非主分支」建立變更觸發 required checks；保留 gate\_report | EXECUTE\_DISABLED \+ HITL |
| `GC-004` | `GATE-BP-010-SECURITY` | supply\_chain snapshot | `tooling_manifest`/`skills_manifest` 存在且 hash 綁定 | READ\_ONLY\_UI \+ BLOCK\_RELEASE |

---

\[ANCHOR:OPS-RBWI-08-EVIDENCE-CONTRACT\]

## **8\) Evidence Contract**

NORMATIVE 來源：`DOCLOC:Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-REQ-EVID-TRIPLET]`。本節只給 **Ops 最小可操作規範**。

### **8.1 Evidence Triplet 最小要求**

* **Verdict**：`verdict.json`（機器可讀；至少含 `verdict`、`timestamp`、`operator_id`、`run_id`、`stage_id`）  
* **Bundle**：`evidence_bundle.zip` 或 `evidence_bundle.tgz`（不可覆寫；內容含 logs/reports/snapshots）  
* **Index**：`index.json` 或 `evidence_index.md`（列出 bundle 內每個檔案路徑與 hash）

Fail-Closed：缺任一 → 視同 FAIL（不得釋出/合併/執行）。

### **8.2 Evidence 目錄建議布局**

* `evidence/<run_id>/`  
  * `preflight/`（Doc Inventory、quarantine、mode snapshot）  
  * `stg_<STG-*/>/`（每個 stage 一個子目錄）  
  * `governance/`（degrade\_matrix、hitl\_record、tt\_register、decision\_log）  
  * `bundle/`（實體 bundle 或其生成來源）

若 repo 實作布局不同：以 SRS/ARCH 的 Registry 為準；本文件不強制路徑，只強制 Triplet 存在性與可重算性。

\[ANCHOR:OPS-RBWI-08A-EVIDENCE-INDEX-RECOMPUTE\]

### **8.3 evidence\_index 一致化重算規範**

PATCH-009 / TT-OPS-017：避免各 Stage 各玩各的，導致稽核不可重現。

**最小一致化算法（Ops 版）**

1. **收集清單**：列出 bundle 內所有檔案（排除自身 index 檔與壓縮容器檔）。  
2. **標準化路徑**：使用 bundle 內相對路徑；路徑分隔符統一 `/`。  
3. **計算 hash**：對每個檔案做 `sha256`。  
4. **排序規則**：以 `relative_path` 進行 bytewise 升冪排序。  
5. **輸出 index**：  
   * `index.json`：包含 `generated_at`、`run_id`、`stage_id`、`files[]`（`relative_path`、`sha256`、`bytes`）  
   * 或 `evidence_index.md`：同樣內容以表格列出。  
6. **綁定**：`verdict.json` 需包含 `bundle_hash` 或 `index_hash`（任一即可）以形成 anti-tamper 連結；若 SSOT 要求更嚴格，以 SSOT 為準（Route-Out）。

Fail-Closed：任何 stage 的 evidence\_index 不符合排序/hash 可重算 → `STG-X3` 回放判定 FAIL，並 BLOCK\_RELEASE。

---

\[ANCHOR:OPS-RBWI-09-SECURITY-SAFETY\]

## **9\) Security and Safety Ops**

本節是 Ops 落地：**注入隔離、Confused-Deputy 防護、供應鏈治理**。規範來源 Route-Out 至 SRS：`DOCLOC:Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-GOV-SUPPLY-CHAIN]`。

### **9.1 硬性原則**

* **指令/資料分離**：任何外部內容只能當「資料」，不得改寫本文件硬規則。  
* **Secrets Zero**：不得把 token/keys/憑證寫入 evidence 或報告；發現即 Fail-Closed。  
* **最小權限**：不需要的寫入權限一律不給（READ\_ONLY\_UI 是正常狀態，不是例外）。

### **9.2 供應鏈最小工件**

* `tooling_manifest`：工具版本、來源、hash、用途  
* `skills_manifest`：技能包版本、來源、hash、用途  
* `provenance_note`：人工介入記錄（若有）

\[ANCHOR:OPS-RBWI-09B-INPUT-QUARANTINE\]

### **9.3 input\_quarantine\_manifest**

PATCH-006：任何外部內容未列入 manifest → **拒收（Fail-Closed）**。

**建議格式**：`input_quarantine_manifest.tsv`

| field | required | description |
| ----- | ----- | ----- |
| `entry_id` | MUST | 唯一流水號 |
| `input_type` | MUST | `NORMATIVE` / `SUPPORT` / `UNTRUSTED` |
| `provenance` | MUST | 檔名/來源描述（不得含追蹤參數） |
| `hash_sha256` | MUST | 原文/原檔 hash（若可得） |
| `received_at` | MUST | 時戳 |
| `intended_use` | MUST | 用於哪個 stage / 哪個驗證 |
| `allow_deny` | MUST | `ALLOW` / `DENY` |
| `reason` | MUST | 判斷理由（例如「外部 web，僅 SUPPORT」） |
| `linked_tt` | SHOULD | 若涉及缺口/風險 |

**本次文件的最小 quarantine 條目要求**

* 所有 **Web Evidence**（§17）→ `SUPPORT` \+ `ALLOW (appendix-only)`  
* 所有對話貼文（包含使用者貼的 role blocks）→ `UNTRUSTED` \+ `ALLOW (as-data-only)`  
* 任何無法證明來源/版本的片段 → `UNTRUSTED` \+ `DENY` \+ TT

---

\[ANCHOR:OPS-RBWI-10-DEGRADE-HITL\]

## **10\) Degrade and HITL Governance**

PATCH-005 / PATCH-011：沒有 schema 就等於沒有治理；沒有治理就等於事故預告片。

### **10.1 Safety Modes 定義**

* `RADAR_ONLY`：只監控、只產證據、不產可執行輸出  
* `EXECUTE_DISABLED`：允許產計畫/腳本，但不得釋出可執行版本（必走 HITL）  
* `READ_ONLY_UI`：UI 只讀，禁止改寫治理狀態  
* `BLOCK_RELEASE`：阻斷釋出/合併/執行（可與上述併用）

\[ANCHOR:OPS-RBWI-10A-DEGRADE-SCHEMA\]

### **10.2 degrade\_matrix schema**

**檔名建議**：`degrade_matrix.json`

| field | required | description |
| ----- | ----- | ----- |
| `change_id` | MUST | 唯一變更 ID |
| `changed_at` | MUST | 時戳 |
| `changed_by` | MUST | operator\_id |
| `approved_by` | MUST (dual-control) | 第二人核准者（若無 → Fail-Closed） |
| `from_mode` | MUST | 原模式 |
| `to_mode` | MUST | 新模式 |
| `why` | MUST | 觸發原因 |
| `scope` | MUST | 影響範圍（stages/gates/artifacts） |
| `tt_snapshot` | MUST | 當下 TT 狀態快照（hash 或摘要） |
| `inputs_hash` | MUST | 相關輸入 hash（含 quarantine manifest） |
| `gate_report_hash` | SHOULD | 若由 gate fail 觸發 |
| `rollback_point` | MUST | 回滾點（commit/tag/run\_id 等） |
| `hash_bindings` | MUST | 與 Evidence Triplet 的綁定（index\_hash/bundle\_hash/verdict\_hash） |

Fail-Closed：任何 required 欄位缺失 → 一律視同 `READ_ONLY_UI + BLOCK_RELEASE`。

\[ANCHOR:OPS-RBWI-10B-HITL-SCHEMA\]

### **10.3 hitl\_record schema**

**檔名建議**：`hitl_record.json`

| field | required | description |
| ----- | ----- | ----- |
| `hitl_id` | MUST | 唯一 ID |
| `requested_at` | MUST | 時戳 |
| `requested_by` | MUST | operator\_id |
| `reason` | MUST | 為何需要 HITL |
| `decision` | MUST | `APPROVE` / `REJECT` / `DEFER` |
| `decided_by` | MUST | approver\_id |
| `decision_at` | MUST | 時戳 |
| `gate_report_hash` | MUST | 當下 gate\_report 的 hash |
| `inputs_hash` | MUST | quarantine/inputs 的 hash |
| `tt_state_snapshot` | MUST | TT 狀態快照（hash 或摘要） |
| `constraints` | SHOULD | 核准條件/限制 |
| `hash_bindings` | MUST | 與 Evidence Triplet 綁定 |

Fail-Closed：缺任一 required 欄位 → HITL 視同未完成（`EXECUTE_DISABLED` 不得解除）。

---

\[ANCHOR:OPS-RBWI-07-RUNBOOK\]

## **11\) Runbook**

每段必含：Preconditions / Steps / Outputs / Validation / Fail-Closed / Evidence Pointers / Route-Out。

### **11.1 Preflight**

* **Preconditions**：可讀取檔案庫；可寫入 evidence（或等價封存）  
* **Steps**：  
  1. 依 §4 Doc Inventory 逐檔確認 `FOUND/MISSING/UNVERIFIED`  
  2. 產出 `input_quarantine_manifest`（§9.3）  
  3. 設定初始 Safety Mode：`RADAR_ONLY + READ_ONLY_UI`  
  4. 建立 `run_id`  
  5. 建立最小 Evidence Triplet（Preflight）  
* **Outputs**：Preflight Triplet、`run_id`、quarantine manifest、mode snapshot  
* **Validation**：Gate `GATE-BP-003-EVIDENCE` PASS；`GC-001`/`GC-002` 通過  
* **Fail-Closed**：任何必需文件 MISSING → 本次 run 保持 `RADAR_ONLY`，不得進入可釋出路徑  
* **Evidence Pointers**：`evidence/<run_id>/preflight/*`  
* **Route-Out**：`DOCLOC:Spartoi-OMOC_MIP_v2.2.0.txt#[ANCHOR:MIP-V220-0-2-PREFLIGHT]`

### **11.2 Pipeline-A**

* **A1**：Source Intake → `WI-A-WRC-001`  
* **A2**：Corpus Index → `WI-A-CORPUS-001`  
* **A3**：Distill → `WI-A-DISTILL-001`  
* **A4**：DSL → `WI-A-DSL-001`  
* **Fail-Closed**：任一 stage Triplet 缺失/不可重算 → `GATE-PIPE-A-READY` FAIL  
* **Route-Out**：`DOCLOC:Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-REQ-PIPE-A]`

### **11.3 Pipeline-B**

* **B1**：Backtest → `WI-B-BACKTEST-001`  
* **B2**：Method → `WI-B-METHOD-001`  
* **B3**：Perform → `WI-B-PERFORM-001`  
* **Fail-Closed**：B3 若任何安全疑慮 → `EXECUTE_DISABLED` \+ HITL  
* **Route-Out**：`DOCLOC:Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-REQ-PIPE-B]`

### **11.4 Pipeline-C**

* **C1**：Watch → `WI-C-WATCH-001`  
* **C2**：TA → `WI-C-TA-001`  
* **C3**：Translate → `WI-C-TRANSLATE-001`  
* **C4**：Select → `WI-C-SELECT-001`  
* **C5**：Execute → `WI-C-EXECUTE-001`  
* **Fail-Closed**：Pipeline-C 方案版本 UNVERIFIED（TT-OPS-012）前 → 保持 `RADAR_ONLY`  
* **Route-Out**：`DOCLOC:Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-REQ-PIPE-C]`

### **11.5 Merge Queue and Release**

* **目標**：把「存在的 required checks」與「可觸發的 merge queue」變成 evidence  
* **Steps（Ops 可驗證）**：  
  1. 建立 `gate_report`：列出 rulesets/required checks 名稱（僅作現況快照）  
  2. 觸發 required checks 並封存 logs  
  3. 若走 merge queue：封存 merge\_group 相關事件輸出（若可得）  
  4. 全程產 Triplet  
* **Fail-Closed**：任何 required check 不可觸發/不可追溯 → `BLOCK_RELEASE`  
* **Route-Out**：`DOCLOC:Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-GOV-GITHUB]`；Web SUPPORT-only 見 §17（綁 TT-OPS-034）

### **11.6 EOD**

* **Steps**：  
  1. 彙整各 stage verdict  
  2. 更新 TT register  
  3. 產出 Final Verdict（`WI-GOV-900`）  
* **Fail-Closed**：TT 未轉正且影響釋出門檻 → `BLOCK_RELEASE`  
* **Route-Out**：Legacy EOD 若需比對 → `DOCLOC:Spartoi｜台股當沖隔日沖_RUNBOOK&WI_v2.0.0.md#[ANCHOR:RW-V200-S4-EOD]`

---

\[ANCHOR:OPS-RBWI-08-WI-JOBCARDS\]

## **12\) Work Instructions and JobCards**

### **12.1 固定模板**

* `WI_ID` / `Stage` / `Objective` / `Preconditions` / `Inputs` / `Steps` / `Expected Outputs` / `Validation` / `Fail-Closed Rule` / `Evidence Pointers` / `Route-Out (DOCLOC)` / `TT Links`

### **12.2 Governance JobCards**

### **WI-GOV-000 — Preflight: Doc Inventory and Safety Defaults**

* WI\_ID: `WI-GOV-000`  
* Stage: `STG-X1`  
* Objective: 在任何執行前完成檔案存在性/定位性/安全預設  
* Preconditions: 可讀取檔案庫；可封存 evidence  
* Inputs: §4 Doc Inventory、§9.3 quarantine 規則  
* Steps:  
  1. 逐檔確認 Doc Inventory 狀態；對 `MISSING/UNVERIFIED` 建 TT（§15）  
  2. 生成 `input_quarantine_manifest.tsv`  
  3. 設定 Safety Defaults：`RADAR_ONLY + READ_ONLY_UI`  
  4. 建立 `run_id`  
  5. 建立 Preflight Evidence Triplet  
* Expected Outputs: run\_id、Preflight Triplet、quarantine manifest  
* Validation: `GC-001`、`GC-002` 通過  
* Fail-Closed Rule: 任一必需文件 MISSING → 不得進入釋出/合併/執行路徑  
* Evidence Pointers: `evidence/<run_id>/preflight/*`  
* Route-Out (DOCLOC): `DOCLOC:Spartoi-OMOC_MIP_v2.2.0.txt#[ANCHOR:MIP-V220-0-2-PREFLIGHT]`  
* TT Links: `TT-OPS-001` `TT-OPS-002` `TT-OPS-003` `TT-OPS-012`

### **WI-GOV-700 — Degrade and Safety Modes**

* WI\_ID: `WI-GOV-700`  
* Stage: `STG-X1`  
* Objective: 風險上升時縮小爆炸半徑  
* Preconditions: 可寫入治理工件或等價封存位置  
* Inputs: gate fail 訊號 / 注入疑慮 / TT 未轉正 / 依賴不可用  
* Steps:  
  1. 判斷：任何「不確定」→ 先降級（Fail-Closed）  
  2. 設定 mode：`RADAR_ONLY` / `EXECUTE_DISABLED` / `READ_ONLY_UI` / `BLOCK_RELEASE`  
  3. 生成 `degrade_matrix.json`（schema 見 §10.2）  
  4. 封存 Triplet  
* Expected Outputs: degrade\_matrix \+ Triplet  
* Validation: required 欄位齊；dual-control 具證  
* Fail-Closed Rule: 無法寫入治理工件 → 視同 `READ_ONLY_UI + BLOCK_RELEASE`  
* Evidence Pointers: `degrade_matrix.json` \+ Triplet  
* Route-Out (DOCLOC): `DOCLOC:Spartoi-OMOC_ARCH_v8.1.0.md#[ANCHOR:ARCH-V810-4-15-2-COMPONENTS]`  
* TT Links: `TT-OPS-013` `TT-OPS-018`

### **WI-GOV-900 — Final Verdict and Release Decision**

* WI\_ID: `WI-GOV-900`  
* Stage: `STG-X1`  
* Objective: 產出最終 verdict：`PASS / PASS_WITH_TT / BLOCK_RELEASE`  
* Preconditions: 各 stage evidence 已封存  
* Inputs: gate reports、TT register、degrade\_matrix、hitl\_record（若有）  
* Steps:  
  1. 彙整 stage verdict  
  2. 對照 TT：未轉正且影響釋出門檻 → `BLOCK_RELEASE`  
  3. 生成 `verdict.json` 並綁定 index/bundle hash  
  4. 封存 Final Triplet  
* Fail-Closed Rule: 任一 Gate 不可裁決 → `BLOCK_RELEASE`  
* Route-Out: `DOCLOC:Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-GATE-ROUTEOUT]`

### **12.3 Pipeline-A JobCards**

#### **WI-A-WRC-001 — Source Intake**

* Stage: `STG-A1`  
* Objective: 產出可稽核 `ART-CORPUS-RAW`  
* Preconditions: `RADAR_ONLY`；quarantine 已產出  
* Steps: 建來源清單 → 收集封存（不可覆寫）→ Reviewer 白名單核准 → Triplet  
* Fail-Closed: 來源不可追溯/不可授權 → 拒收  
* Route-Out: `DOCLOC:Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-GOV-WRC-INPUT]`

#### **WI-A-CORPUS-001 — Corpus Index**

* Stage: `STG-A2`  
* Objective: 可檢索工件 `ART-CORPUS-INDEX`  
* Fail-Closed: 覆蓋不足 → TT \+ TEMP\_CLOSED  
* Route-Out: `DOCLOC:Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-REQ-PIPE-A]`

#### **WI-A-DISTILL-001 — Distill**

* Stage: `STG-A3`  
* Objective: 萃取/蒸餾工件  
* Route-Out: `DOCLOC:Spartoi-OMOC_MIP_v2.2.0.txt#[ANCHOR:MIP-V220-1-4-PIPE-A]`

#### **WI-A-DSL-001 — DSL**

* Stage: `STG-A4`  
* Objective: DSL/規則化可執行描述  
* Route-Out: `DOCLOC:Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-REQ-PIPE-A]`

### **12.4 Pipeline-B JobCards**

#### **WI-B-BACKTEST-001 — Backtest**

* Stage: `STG-B1`  
* Route-Out: `DOCLOC:Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-REQ-PIPE-B]`

#### **WI-B-METHOD-001 — Method**

* Stage: `STG-B2`  
* Route-Out: `DOCLOC:Spartoi-OMOC_MIP_v2.2.0.txt#[ANCHOR:MIP-V220-1-5-PIPE-B]`

#### **WI-B-PERFORM-001 — Perform**

* Stage: `STG-B3`  
* Fail-Closed: 安全疑慮 → `EXECUTE_DISABLED` \+ HITL  
* Route-Out: `DOCLOC:Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-REQ-PIPE-B]`

### **12.5 Pipeline-C JobCards**

#### **WI-C-WATCH-001 — Watch**

* Stage: `STG-C1`  
* Route-Out: `DOCLOC:Spartoi｜台股當沖隔日沖_RUNBOOK&WI_v2.0.0.md#[ANCHOR:RW-V200-S1-PREFLIGHT]`

#### **WI-C-TA-001 — TA**

* Stage: `STG-C2`  
* Route-Out: `DOCLOC:Spartoi｜台股當沖隔日沖_RUNBOOK&WI_v2.0.0.md#[ANCHOR:RW-V200-S2-INTRADAY]`

#### **WI-C-TRANSLATE-001 — Translate**

* Stage: `STG-C3`  
* Route-Out: `DOCLOC:Spartoi-OMOC_MIP_v2.2.0.txt#[ANCHOR:MIP-V220-1-6-PIPE-C]`

#### **WI-C-SELECT-001 — Select**

* Stage: `STG-C4`  
* Route-Out: `DOCLOC:Spartoi｜台股當沖隔日沖_RUNBOOK&WI_v2.0.0.md#[ANCHOR:RW-V200-S3-EXECUTION]`

#### **WI-C-EXECUTE-001 — Execute**

* Stage: `STG-C5`  
* Fail-Closed: 未完成 HITL（若要求）→ 不得執行  
* Route-Out: `DOCLOC:Spartoi｜台股當沖隔日沖_RUNBOOK&WI_v2.0.0.md#[ANCHOR:RW-V200-S4-EOD]`

### **12.6 Legacy Bridging JobCards**

#### **WI-LEG-SF-00 — 盤前 Preflight**

* Objective: 完成盤前檢核、風控開關、觀察清單初始化  
* Route-Out: `DOCLOC:Spartoi｜各階段子系統操作流程_v1.0.1.md#[ANCHOR:SF-00]`

#### **WI-LEG-SF-01 — 盤中監控與執行**

* Route-Out: `DOCLOC:Spartoi｜各階段子系統操作流程_v1.0.1.md#[ANCHOR:SF-01]`

#### **WI-LEG-SF-11 — 盤後結算與回顧**

* Route-Out: `DOCLOC:Spartoi｜各階段子系統操作流程_v1.0.1.md#[ANCHOR:SF-11]`

#### **WI-LEG-SF-90 — 異常處置與停止線**

* Route-Out: `DOCLOC:Spartoi｜各階段子系統操作流程_v1.0.1.md#[ANCHOR:SF-90]`

---

\[ANCHOR:OPS-RBWI-10-LEGACY-PARITY\]

## **13\) Legacy to New Coverage**

PATCH-007 / PATCH-012：宣告「完全替代」必須是條件式。缺口一律 TT \+ TEMP\_CLOSED。

### **13.1 Legacy→New 核心 Crosswalk**

| legacy\_doc | legacy\_locator | legacy\_topic | new\_stage | new\_jobcard | new\_evidence | status | linked\_TT |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| `LEG-RW v2.0.0` | `RW-V200-S0-PREFLIGHT` | 盤前準備 | `STG-C1` | `WI-C-WATCH-001` | Triplet | COVERED | (none) |
| `LEG-RW v2.0.0` | `RW-V200-S2-INTRADAY` | 盤中監控 | `STG-C2` | `WI-C-TA-001` | Triplet | COVERED | (none) |
| `LEG-RW v2.0.0` | `RW-V200-S3-EXECUTION` | 執行 | `STG-C4/C5` | `WI-C-SELECT-001` / `WI-C-EXECUTE-001` | Triplet \+ HITL(可選) | COVERED\_WITH\_TT | TT-OPS-041 |
| `LEG-RW v2.0.0` | `RW-V200-S4-EOD` | 收盤/EOD | `STG-X1` | `WI-GOV-900` | Final Triplet | COVERED | (none) |
| `LEG-FLOW v1.0.1` | `SF-00` | 盤前 | `STG-C1` | `WI-LEG-SF-00` | Triplet | COVERED | (none) |
| `LEG-FLOW v1.0.1` | `SF-90` | 停止線/異常 | `STG-X1` | `WI-GOV-700` | degrade\_matrix \+ Triplet | COVERED | (none) |
| `LEG-FLOW-TXT v1.0.0 Final` | `PARA_KEY` | 無 anchor 流程段落 | `STG-C*`/`STG-X1` | 對應 JobCards | Triplet | TEMP\_CLOSED | TT-OPS-033 |

### **13.2 Legacy 文本段落主鍵策略**

適用：`Spartoi｜台股當沖_隔日沖實際流程_v1.0.0 Final.txt`（無 anchors，PATCH-012）。

* `PARA_KEY` 定義：對「標準化後的段落文字」做 `sha256`，取前 12 碼，例如 `PARA_KEY=LEG-TXT-<12hex>`。  
* 標準化：去除多餘空白、保留原句序；不得改寫語意。  
* Crosswalk 表內必填 `PARA_KEY`；並建立 TT 要求後續在原檔補 `LOCATOR:` 行（否則永遠 UNVERIFIED）。

---

\[ANCHOR:OPS-RBWI-14-PATCH-REGISTER\]

## **14\) Patch Register**

### **14.1 Unified Findings Ledger**

來源：審查報告A；本表顯示「before→after」閉環。

| finding\_id | severity | statement | required\_fix\_strategy | patch\_id | tt\_id | status\_before | status\_after |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| `F-001` | BLOCKER | TOC 外部連結破壞可落盤性 | 全內部 anchor；不得出現外部追蹤 | `PATCH-001` | `TT-OPS-010` | FAIL | FIXED |
| `F-002` | BLOCKER | Doc Inventory 弱定位過多 | 最大化改強 anchor；無則 TT | `PATCH-002` | `TT-OPS-011` | FAIL | FIXED\_WITH\_TT |
| `F-003` | BLOCKER | Pipeline-C/A+B 版本不明仍被引用 | 一律 UNVERIFIED \+ TT \+ TEMP\_CLOSED | `PATCH-003` | `TT-OPS-012` | FAIL | FIXED\_WITH\_TT |
| `F-004` | MAJOR | Gate 引用缺少「可驗證存在性」 | Gate 引用驗證清單 | `PATCH-004` | `TT-OPS-013` | FAIL | FIXED |
| `F-005` | MAJOR | degrade\_matrix 無 schema | 補 schema \+ dual-control | `PATCH-005` | `TT-OPS-014` | FAIL | FIXED |
| `F-006` | MAJOR | 缺 input\_quarantine\_manifest | 補 manifest \+ 拒收規則 | `PATCH-006` | `TT-OPS-015` | FAIL | FIXED |
| `F-007` | MAJOR | Legacy parity 宣告過頭 | 改條件式 \+ TT | `PATCH-007` | `TT-OPS-020` | FAIL | FIXED\_WITH\_TT |
| `F-008` | MINOR | TT 欄位不足 | 擴充欄位可派工 | `PATCH-008` | `TT-OPS-016` | FAIL | FIXED |
| `F-009` | MINOR | evidence\_index 不一致 | 補最小重算規範 | `PATCH-009` | `TT-OPS-017` | FAIL | FIXED |
| `F-010` | MAJOR | hitl\_record 無 schema | 補 schema \+ 可機械檢查 | `PATCH-011` | `TT-OPS-018` | FAIL | FIXED |
| `F-011` | MINOR | Legacy txt 弱定位 | 段落主鍵策略 \+ TT | `PATCH-012` | `TT-OPS-033` | FAIL | FIXED\_WITH\_TT |
| `F-012` | MAJOR | 命名/改名方案缺口 | stable\_id 為主；顯示名 TEMP\_CLOSED | `PATCH-010` | `TT-OPS-003` | FAIL | FIXED\_WITH\_TT |

### **14.2 Patch Register 明細**

| patch\_id | intent | implementation\_anchor | acceptance\_hook | linked\_TT | status |
| ----- | ----- | ----- | ----- | ----- | ----- |
| `PATCH-001` | 移除任何外部 TOC 連結 | §3 TOC | grep 不得命中任何外部追蹤域；TOC 全部 `#anchor` | TT-OPS-010 | IMPLEMENTED |
| `PATCH-002` | Doc Inventory 強定位 | §4 Doc Inventory | 每列 DOCLOC 可 grep 命中；弱定位列必有 TT | TT-OPS-011 | IMPLEMENTED\_WITH\_TT |
| `PATCH-003` | Pipeline 版本 UNVERIFIED 之 Fail-Closed | §4、§6、§7 | Pipeline-C/A+B 不得被宣告已裁決；均綁 TT | TT-OPS-012 | IMPLEMENTED |
| `PATCH-004` | Gate 可驗證存在性清單 | §7.2 | `GC-*` 清單可機械檢查 | TT-OPS-013 | IMPLEMENTED |
| `PATCH-005` | degrade\_matrix schema | §10.2 | required 欄位缺失即 Fail-Closed | TT-OPS-014 | IMPLEMENTED |
| `PATCH-006` | input\_quarantine\_manifest | §9.3 | 外部內容未列入 manifest → 拒收 | TT-OPS-015 | IMPLEMENTED |
| `PATCH-007` | Legacy parity 條件式 | §13 | TT 未封口不得宣告完全替代 | TT-OPS-020 | IMPLEMENTED\_WITH\_TT |
| `PATCH-008` | TT Register 欄位擴充 | §15 | 欄位齊、可派工、可驗證 | TT-OPS-016 | IMPLEMENTED |
| `PATCH-009` | evidence\_index 重算一致 | §8.3 | 重算可重現；排序規則固定 | TT-OPS-017 | IMPLEMENTED |
| `PATCH-010` | 命名缺口 Fail-Closed | §5、§15 | stable\_id 為主；顯示名 TEMP\_CLOSED | TT-OPS-003 | IMPLEMENTED\_WITH\_TT |
| `PATCH-011` | hitl\_record schema | §10.3 | required 欄位缺失 → HITL 未完成 | TT-OPS-018 | IMPLEMENTED |
| `PATCH-012` | Legacy txt 段落主鍵策略 | §13.2 | crosswalk 必填 PARA\_KEY；並綁 TT | TT-OPS-033 | IMPLEMENTED\_WITH\_TT |

\[ANCHOR:OPS-RBWI-13-SELF-AUDIT\]

### **14.3 Self Audit Checklist**

| audit\_item | expected | pass\_criteria | fail\_action |
| ----- | ----- | ----- | ----- |
| `SA-001` | TOC 離線可導航 | 全部 TOC 連結為 `#anchor` | `PATCH-001` FAIL → BLOCK\_RELEASE |
| `SA-002` | Doc Inventory 全量 | §4 列出 A\~E 全部文件 | 缺列 → TT \+ TEMP\_CLOSED |
| `SA-003` | MISSING/UNVERIFIED 有 TT | 每個缺口皆有 TT 條目 | 無 TT → Fail-Closed |
| `SA-004` | Findings/Patch/TT 閉環 | §14.1 全部 `F-001..F-012` 有落點 | 漏一項 → FAIL |
| `SA-005` | Legacy 覆蓋可追溯 | §13 crosswalk 有落點或 TT | 宣告無證 → FAIL |
| `SA-006` | Web Evidence SUPPORT-only | Web 只出現在 §17 且綁 TT | 違反 → Fail-Closed |

---

\[ANCHOR:OPS-RBWI-11-TT-REGISTER\]

## **15\) TT Register and Test Tracking List**

欄位強制：`TT_ID | Gap/CR_OPEN | Scope Impact | TEMP_CLOSED Plan | Closure Criteria | Evidence Needed | Validation Method | Owner | Priority | Due Gate | Status`

| TT\_ID | Gap/CR\_OPEN | Scope Impact | TEMP\_CLOSED Plan | Closure Criteria | Evidence Needed | Validation Method | Owner | Priority | Due Gate | Status |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| `TT-OPS-001` | Missing `五子系統組合方案` | Stage Map 子系統組合不完整 | 以 stable\_id 映射維持可運行；不宣告裁決 | 文件入庫 \+ doc\_id/version/anchor | 檔案本體 | Doc Inventory 強定位 | Ops Owner | P1 | `GATE-BP-002-TRACE` | TEMP\_CLOSED |
| `TT-OPS-002` | Missing `子系統重構藍圖` | 子系統拆分治理缺口 | 以 15CA/MIP 暫代；不升格 | 文件入庫 \+ anchor | 檔案本體 | grep anchor | Ops Owner | P1 | `GATE-BP-002-TRACE` | TEMP\_CLOSED |
| `TT-OPS-003` | Missing rename scheme | Naming 顯示名不穩定 | stable\_id 為主鍵；顯示名 TEMP\_CLOSED | 改名方案入庫 \+ 可稽核表 | 檔案本體 | Naming Registry 對齊 | Ops Owner | P0 | `GATE-BP-002-TRACE` | TEMP\_CLOSED |
| `TT-OPS-010` | F-001 TOC 外部連結 | 可落盤性 | 已移除；以自稽核保護 | grep 不得出現外部追蹤 | 檔案正文 | `SA-001` | Ops Owner | P0 | `GATE-BP-003-EVIDENCE` | CLOSED |
| `TT-OPS-011` | F-002 弱定位 | 稽核不可重現 | 對弱定位補 TT | 90%+ 強定位 | anchors | grep/Docloc | Ops Owner | P1 | `GATE-BP-002-TRACE` | TEMP\_CLOSED |
| `TT-OPS-012` | Pipeline-C/A+B 版本不明 | Gate 語義錯置風險 | 全面 UNVERIFIED；不宣告裁決 | 補 doc\_id/version/anchor | 方案文件修補 | Doc Inventory 強定位 | Ops Owner | P0 | `GATE-PIPE-C-READY` | TEMP\_CLOSED |
| `TT-OPS-013` | Gate 引用可驗證 | Gate 漂移不可控 | 已加入 `GC-*` 檢核 | 全 Gate 可驗證 | gate reports | `SA-004` | Ops Owner | P1 | `GATE-BP-003-EVIDENCE` | CLOSED |
| `TT-OPS-014` | degrade\_matrix schema | 降級不可稽核 | 已補 schema | schema 欄位齊 \+ dual-control | degrade\_matrix | 機械檢查 required 欄位 | Ops Owner | P1 | `GATE-BP-010-SECURITY` | CLOSED |
| `TT-OPS-015` | quarantine manifest | 注入風險 | 已補 manifest | 所有外部輸入皆列入 | manifest | 審核 manifest 覆蓋 | Ops Owner | P0 | `GATE-BP-001-INPUT` | CLOSED |
| `TT-OPS-016` | TT register 欄位擴充 | 無法派工/封口 | 已擴充 | 欄位全齊 | TT 表 | `SA-003` | Ops Owner | P2 | `GATE-BP-002-TRACE` | CLOSED |
| `TT-OPS-017` | evidence\_index 重算一致 | 稽核不可重現 | 已補最小算法 | 重算一致 | index/hash | STG-X3 回放比對 | Ops Owner | P1 | `GATE-BP-003-EVIDENCE` | CLOSED |
| `TT-OPS-018` | hitl\_record schema | HITL 不可稽核 | 已補 schema | required 欄位齊 | hitl\_record | 機械檢查 | Ops Owner | P1 | `GATE-BP-010-SECURITY` | CLOSED |
| `TT-OPS-020` | Legacy parity 條件式 | 宣告過度風險 | 已改條件式 | TT-OPS-001\~003 封口後可宣告完全替代 | 缺檔補正 | crosswalk 驗證 | Ops Owner | P1 | `GATE-BP-002-TRACE` | TEMP\_CLOSED |
| `TT-OPS-021` | Legacy flow v1.0.0 無 anchor | 定位弱 | 段落主鍵策略 | 原檔補 LOCATOR 行 | legacy 修補 | grep LOCATOR | Ops Owner | P2 | `GATE-BP-002-TRACE` | TEMP\_CLOSED |
| `TT-OPS-030` | GitHub 行為漂移 | required checks/merge queue 漂移 | Web SUPPORT-only \+ gate\_report 快照 | 以 SSOT 補正策略與驗證 | repo 設定證據 | 實際觸發證明 | Ops Owner | P1 | `GATE-MERGE-QUEUE` | TEMP\_CLOSED |
| `TT-OPS-031` | LBP-B/LBP-D 內容型態不符 | SSOT 引用風險 | 暫不依賴；僅 Route-Out | 提供正式 LBP 規格檔 | LBP 修補 | Doc Inventory 強定位 | SSOT Owner | P0 | `GATE-BP-002-TRACE` | TEMP\_CLOSED |
| `TT-OPS-032` | 15CA 檔缺強 anchor 證明 | 映射不可稽核 | 暫用弱定位 | 補 anchor 列表可 grep | 15CA 修補 | grep anchor | SSOT Owner | P1 | `GATE-BP-002-TRACE` | TEMP\_CLOSED |
| `TT-OPS-033` | Legacy txt 段落主鍵與補 LOCATOR | Crosswalk 不可重現 | PARA\_KEY \+ 要求補 LOCATOR | 原檔加入 `LOCATOR:` 行 | legacy 修補 | grep LOCATOR \+ hash 對齊 | SSOT Owner | P1 | `GATE-BP-002-TRACE` | TEMP\_CLOSED |
| `TT-OPS-034` | GitHub rulesets/merge queue 最新行為 | 釋出門檻漂移 | SUPPORT-only 收斂於 §17 | SSOT 補正或版本鎖定 | 規格補正 | Gate 驗證證據 | Ops Owner | P0 | `GATE-MERGE-QUEUE` | TEMP\_CLOSED |
| `TT-OPS-035` | OMOC 藍圖弱 TOC/外部連結 | 離線可稽核性 | OUT-of-scope；僅記錄 | 藍圖文件自體修補 | 檔案修補 | 自稽核 | SSOT Owner | P2 | `GATE-BP-002-TRACE` | TEMP\_CLOSED |
| `TT-OPS-036` | Spartoi Blueprint 無 anchors | 定位弱 | OUT-of-scope；僅記錄 | 補 anchors 或提供正式版 | 檔案修補 | grep anchor | SSOT Owner | P2 | `GATE-BP-002-TRACE` | TEMP\_CLOSED |
| `TT-OPS-040` | 供應鏈治理細則漂移 | 安全風險 | 依 SRS \+ SUPPORT-only 追補 | SSOT 補強 | 規格/流程補強 | 稽核 | Security Owner | P1 | `GATE-BP-010-SECURITY` | TEMP\_CLOSED |
| `TT-OPS-041` | Pipeline-C 執行前 HITL 條件 | 執行風險 | 預設 RADAR\_ONLY | HITL 條件明文化 \+ 證據 | HITL 規格 | 機械檢查 | Ops Owner | P0 | `GATE-PIPE-C-READY` | TEMP\_CLOSED |
| `TT-OPS-042` | Pipeline-B 風控門檻 | 選擇/執行風險 | EXECUTE\_DISABLED 直到轉正 | 門檻定義與證據 | SSOT 補正 | Gate report | Ops Owner | P1 | `GATE-PIPE-B-READY` | TEMP\_CLOSED |
| `TT-LEG-001` | Legacy `CR-OPEN-001..012` \+ `PEND-RW-*` | Legacy 需求未封口 | 全轉 TT 並 TEMP\_CLOSED | 每項 CR/PEND 有 closure criteria | legacy 條目 | 回歸檢核 | Legacy Owner | P1 | `GATE-BP-002-TRACE` | TEMP\_CLOSED |
| `TT-LEG-002` | Legacy Flow `CR-OPS-*` | 子系統流程缺口 | 全轉 TT 並 TEMP\_CLOSED | CR-OPS 條目封口 | legacy 條目 | 回歸檢核 | Legacy Owner | P2 | `GATE-BP-002-TRACE` | TEMP\_CLOSED |

---

\[ANCHOR:OPS-RBWI-16-DECISION-LOG\]

## **16\) Decision Log**

| decision\_id | date | decision | rationale | impact | linked\_TT |
| ----- | ----- | ----- | ----- | ----- | ----- |
| `DL-001` | 2026-02-18 | 本文件版本升級為 `v8.1.1-ops-r1` | 對齊 LBP v8.1.1 系列並修補審查A阻斷 | 新增治理 schema/清單/TT 欄位 | (none) |
| `DL-002` | 2026-02-18 | Pipeline-C/A+B 視為 UNVERIFIED | 檔案缺 doc\_id/version/anchor 證明 | 釋出一律 Fail-Closed | TT-OPS-012 |
| `DL-003` | 2026-02-18 | LBP-B/LBP-D 暫不依賴 | 內容型態疑似「升級修補輸出」 | SSOT 引用風險降級 | TT-OPS-031 |
| `DL-004` | 2026-02-18 | Legacy txt 採 PARA\_KEY | 無 anchors 不可強定位 | 可稽核最低可行 | TT-OPS-033 |
| `DL-005` | 2026-02-18 | Web 僅 SUPPORT-only 且只進附錄 | 避免外部覆寫 SSOT | 降低注入/漂移風險 | TT-OPS-034 |

---

\[ANCHOR:OPS-RBWI-12-WEB-EVIDENCE\]

## **17\) Web Evidence Appendix**

規則：**SUPPORT-only**；不得升格為 NORMATIVE。此附錄僅用於補「易漂移」的背景知識（Prompt Engineering / Prompt Injection / Supply Chain / GitHub Merge Queue）。Access Date 一律記錄為 `2026-02-18`。

| Title | Publisher | Publish Date | Access Date | Why Relevant | Used For | Linked TT |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| GitHub Docs: Merge queue | GitHub | Living doc (no fixed publish date) | 2026-02-18 | Merge queue/merge\_group 行為與設定易漂移 | SUPPORT 背景，協助解釋 `GATE-MERGE-QUEUE` 驗證步驟 | TT-OPS-034 ([GitHub Docs](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/configuring-pull-request-merges/managing-a-merge-queue)) |
| GitHub Docs: Rulesets and required status checks | GitHub | Living doc (no fixed publish date) | 2026-02-18 | rulesets/required checks 是 Ops 驗證核心 | SUPPORT 背景，協助 gate\_report 快照欄位定義 | TT-OPS-034 ([GitHub Docs](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-rulesets/available-rules-for-rulesets)) |
| OWASP Top 10 for LLM Applications | OWASP | 2024-11-18 (versioned PDF) | 2026-02-18 | Prompt injection/LLM supply chain 風險分類 | SUPPORT 背景：§9 安全治理與 quarantine 理由 | TT-OPS-040 ([OWASP Foundation](https://owasp.org/www-project-top-10-for-large-language-model-applications/)) |
| SLSA Framework and specifications | OpenSSF | Living spec | 2026-02-18 | 供應鏈 provenance 概念 | SUPPORT 背景：tooling/skills manifests 的必要性 | TT-OPS-040 ([openssf.org](https://openssf.org/wp-content/uploads/2025/02/OpenSSF_2025_Vision_Brief.pdf)) |
| Anthropic Prompt Engineering Guide | Anthropic | Living doc | 2026-02-18 | 提示詞工程最佳實務（非規範） | SUPPORT 背景：只可用於補缺，不可覆寫 SSOT | TT-OPS-036 ([Anthropic](https://www.anthropic.com/engineering/effective-context-engineering-for-ai-agents)) |
| OpenAI Prompt Engineering guidance | OpenAI | Living doc | 2026-02-18 | 提示詞工程常見做法（非規範） | SUPPORT 背景：同上 | TT-OPS-036 ([OpenAI 開發者中心](https://developers.openai.com/api/docs/guides/prompt-engineering/)) |
| NIST AI RMF / related guidance | NIST | Versioned report (varies) | 2026-02-18 | 風險治理語彙 | SUPPORT 背景：Decision Log/治理語彙對齊 | TT-OPS-040 ([nvlpubs.nist.gov](https://nvlpubs.nist.gov/nistpubs/ir/2025/NIST.IR.8596.iprd.pdf)) |

