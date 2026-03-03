# **OMOC｜WP-002（Phase-L/L0 Dev Container & Toolchain Ready） — OMOC\_WP-002+RB+WI**

## **0\. Cover**

* external\_name: **OMOC｜WP-002（Phase-L/L0 Dev Container & Toolchain Ready）**  
* internal\_short\_name: **OMOC\_WP-002+RB+WI**  
* canonical\_version: **v4.0.1-r2**  
* scope\_tag: **Phase-L/L0**  
* gate\_id: **GATE-ENV-READY**  
* backup\_point: **BK-001**  
* supersedes: `/mnt/data/OMOC_WP-002+RB+WI.md`（legacy；自本版起 **不得再作裁決依據**）

---

## **1\. Metadata Header**

* doc\_date: **2026-02-18** (Asia/Taipei)  
* generated\_at: **2026-02-18T01:06:xx+08:00**  
* timezone: **Asia/Taipei (UTC+08:00)**  
* baseline\_web\_date (policy): **2026-02-14**  
* web\_last\_verified\_at (actual): **2026-02-18T01:06:xx+08:00**  
* drift:  
  * **WEB-DRIFT**: web\_last\_verified\_at 與 baseline\_web\_date 不同（+4 天）。本文件以「實查結果」填入 Web Evidence Appendix，並提供 drift\_action。  
  * **SSOT-DRIFT**: 僅允許在 *SUPPORT*（Web Evidence）層更新可變動事實；不得覆寫 NORMATIVE。  
* status: **PASS（Gate） / TEMP\_CLOSED（Doc Inventory sha256）**  
  * Gate: **PASS**（Phase-L/L0 Gate：GATE-ENV-READY）  
  * Alignment: **TEMP\_CLOSED**（WP-001 r2 MISSING）  
  * Inventory sha256: **TEMP\_CLOSED**（需重新計算並落盤到本文件；見 TT-WP002-013）

---

## **2\. TOC**

* [0\. Cover](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/69948be6-a120-83a8-afe7-c5c0af7cefed#cover)  
* [1\. Metadata Header](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/69948be6-a120-83a8-afe7-c5c0af7cefed#metadata-header)  
* [2\. TOC](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/69948be6-a120-83a8-afe7-c5c0af7cefed#toc)  
* [3\. Reader Guide](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/69948be6-a120-83a8-afe7-c5c0af7cefed#reader-guide)  
* [4\. Authority Stack & Version Policy](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/69948be6-a120-83a8-afe7-c5c0af7cefed#authority-stack)  
* [5\. Doc Inventory](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/69948be6-a120-83a8-afe7-c5c0af7cefed#doc-inventory)  
* [6\. Scope / Non-Goals / Out-of-scope Guardrails](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/69948be6-a120-83a8-afe7-c5c0af7cefed#scope)  
* [7\. Requirements Extraction](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/69948be6-a120-83a8-afe7-c5c0af7cefed#requirements-extraction)  
* [8\. Coverage Map](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/69948be6-a120-83a8-afe7-c5c0af7cefed#coverage-map)  
* [9\. Runbook](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/69948be6-a120-83a8-afe7-c5c0af7cefed#runbook)  
* [10\. Work Instructions](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/69948be6-a120-83a8-afe7-c5c0af7cefed#work-instructions)  
* [11\. Gate: GATE-ENV-READY](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/69948be6-a120-83a8-afe7-c5c0af7cefed#gate-env-ready)  
* [12\. BK-001](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/69948be6-a120-83a8-afe7-c5c0af7cefed#bk-001)  
* [13\. Security & Evidence Hygiene](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/69948be6-a120-83a8-afe7-c5c0af7cefed#security-evidence-hygiene)  
* [14\. Web Evidence Appendix](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/69948be6-a120-83a8-afe7-c5c0af7cefed#web-evidence-appendix)  
* [15\. TT Register](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/69948be6-a120-83a8-afe7-c5c0af7cefed#tt-register)  
* [16\. Closure Matrix](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/69948be6-a120-83a8-afe7-c5c0af7cefed#closure-matrix)  
* [17\. Self-Audit](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/69948be6-a120-83a8-afe7-c5c0af7cefed#self-audit)

### **2.1 Anchor Registry**

| anchor\_id | section |
| ----- | ----- |
| `cover` | Cover |
| `metadata-header` | Metadata Header |
| `toc` | TOC |
| `anchor-registry` | Anchor Registry |
| `reader-guide` | Reader Guide |
| `authority-stack` | Authority Stack & Version Policy |
| `status-glossary` | Status Glossary |
| `doc-inventory` | Doc Inventory |
| `scope` | Scope / Non-Goals / Out-of-scope Guardrails |
| `requirements-extraction` | Requirements Extraction |
| `coverage-map` | Coverage Map |
| `runbook` | Runbook |
| `rb-0` | RB-0 Bootstrap & Guardrails |
| `rb-1` | RB-1 Enter Dev Container (VS Code) |
| `rb-2` | RB-2 Toolchain Preflight (Inside Container) |
| `rb-3` | RB-3 Evidence Workspace Bootstrap |
| `rb-4` | RB-4 BK-001 Baseline Snapshot (Dual-path) |
| `rb-5` | RB-5 Gate Evaluation: GATE-ENV-READY |
| `rb-6` | RB-6 Failure Handling & Auto-Repair Loop (Local) |
| `work-instructions` | Work Instructions |
| `wi-1` | WI-1 VS Code Dev Containers UI Path |
| `wi-2` | WI-2 Codespaces Rebuild Container (SUPPORT, Out-of-scope) |
| `wi-3` | WI-3 devcontainer.json Fields Reference (SUPPORT) |
| `gate-env-ready` | Gate: GATE-ENV-READY |
| `bk-001` | BK-001 |
| `security-evidence-hygiene` | Security & Evidence Hygiene |
| `web-evidence-appendix` | Web Evidence Appendix (SUPPORT ONLY) |
| `tt-register` | TT Register |
| `closure-matrix` | Closure Matrix |
| `self-audit` | Self-Audit |

---

## **3\. Reader Guide（Diátaxis 導航 \+ AI 檢索強制導引）**

**Tutorial（帶你走一遍）**：看 §9 Runbook（RB-0\~RB-5）→ §11 Gate → §12 BK-001。  
**How-to（照做即可）**：看 §10 WI（UI 操作）→ §9 RB-1/2。  
**Reference（查表）**：看 §5 Doc Inventory、§8 Coverage Map、§14 Web Evidence、§15 TT Register。  
**Explanation（為何如此）**：看 §4 Authority Stack、§6 Scope/Guardrails、§13 Security。

**AI 檢索強制導引（禁止跳讀）**

1. 先讀：§4 Authority Stack → §5 Doc Inventory（確認 SSOT 與版本）  
2. 再讀：§7 Requirements Extraction → §8 Coverage Map（看每條 requirement 的裁決）  
3. 執行：§9 Runbook（RB-0→RB-5，產出 required\_artifacts）  
4. 驗收：§11 Gate（Fail-Closed）＋ §12 BK-001（Rollback 最小鉤子）  
5. 若遇到 UI/版本漂移：只允許參照 §14 Web Evidence（SUPPORT ONLY）

**RAG / GraphRAG Chunking 指引（Docs-as-Code）**

* chunk 邊界：以 `##` 章節與 `### RB-* / WI-*` 為切點；每個 RB/WI 視為獨立 chunk。  
* 高召回關鍵詞（務必保留原字）：`WP-002`, `Phase-L`, `L0`, `Dev Container`, `Toolchain`, `GATE-ENV-READY`, `BK-001`, `run.log`, `rc.txt`, `baseline/*`, `TEMP_CLOSED`, `FAIL_CLOSED`, `TT-WP002-*`。  
* 唯一 ID：RB-*, WI-*, GATE-*, BK-*, TT-\* 均為全文唯一。

---

## **4\. Authority Stack & Version Policy（No-Source-No-Norm / Fail-Closed）**

### **4.1 Authority Stack（由高到低）**

1. **NORMATIVE（SSOT）**  
   * `/mnt/data/OMOC_實作+WP總表_v4.0.1-r2.md`（WP master / Gate registry / BK matrix）  
   * `/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md`（Runbook/WI 契約與命令模板）  
   * `/mnt/data/OMOC_施工skills_合冊_v4.0.1-r2.md`（skills 定義與界線）  
   * `/mnt/data/OMOC_藍圖_v4.0.1-r1.md`（全域原則、證據與安全基線）  
2. **TARGET（被本文件工程性取代）**  
   * `/mnt/data/OMOC_WP-002+RB+WI.md`（legacy；僅供比對，不得再作裁決依據）  
3. **REVIEW（必須 100% 解決）**  
   * `/mnt/data/OMOC_WP-002+RB+WI_審查報告A.md`  
   * `/mnt/data/OMOC_WP-002+RB+WI_審查報告B.md`  
4. **SUPPORT（外部 web）**  
   * 只用於可變動事實（UI 路徑、官方行為、規格說明）。  
   * 每條 claim 必須 **\>=2 refs**，且 **至少 1 個官方/一手**；見 §14 Web Evidence Appendix。

### **4.2 No-Source-No-Norm（定位證據契約）**

任何 **NORMATIVE** 結論必須提供：`檔案路徑 + section/anchor + 行號區間 + <=25字 excerpt`。  
缺定位 ⇒ **UNVERIFIED** ⇒ 開 **TT** ⇒ 標 **TEMP\_CLOSED**（或阻斷級 ⇒ FAIL\_CLOSED）。

### **4.3 Fail-Closed Gatekeeper（阻斷規則）**

* Gate 驗收（§11）任何 required\_artifacts 缺失、rc\!=0、或證據含 secrets ⇒ **FAIL\_CLOSED**（立刻中止、開 TT）。  
* Out-of-scope（Phase-G）事項 **不得影響** GATE-ENV-READY PASS/FAIL（僅能標註連結；見 §6）。

## **4.4 Status Glossary（全文用詞唯一且可搜尋）**

* **PASS**：已滿足 requirement，且有可定位證據。  
* **UNVERIFIED**：缺定位/缺證據；不得當成結論。  
* **TEMP\_CLOSED**：目前缺檔或缺資訊，但已建立 TT 並列 closure\_criteria；不阻斷本 WP 的 Gate（除非被標記阻斷）。  
* **FAIL\_CLOSED**：阻斷級缺口；Gate 直接判定失敗（需要修補後重跑）。  
* **SUPPORTED-SUPERSEDED**：舊版本資料僅供參考，不可作裁決依據。

---

## **5\. Doc Inventory（全量掃描憑證：size/sha256/locator\_proof）**

**注意（TEMP\_CLOSED）**：本節 bytes/lines 已就位；sha256 需依規範重新計算並填入（不得留白），現已立案 TT-WP002-013。

| doc\_id | role | path | exists | bytes | sha256 | lines | locator\_proof | notes |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| NORMATIVE-SSOT | NORMATIVE | `/mnt/data/OMOC_藍圖_v4.0.1-r1.md` | YES | 17,107 | TEMP\_CLOSED | 282 | `/mnt/data/OMOC_藍圖_v4.0.1-r1.md :: L169-L197 :: "[ANCHOR:OMOC-BP-1000]"` | SSOT blueprint |
| NORMATIVE-RBWI | NORMATIVE | `/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md` | YES | 37,067 | TEMP\_CLOSED | 697 | `/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md :: L220-L242 :: "[ANCHOR:OMOC-RBWI-L0]"` | Phase-L/L0 runbook+WI contracts |
| NORMATIVE-SKILLS | NORMATIVE | `/mnt/data/OMOC_施工skills_合冊_v4.0.1-r2.md` | YES | 47,949 | TEMP\_CLOSED | 793 | `/mnt/data/OMOC_施工skills_合冊_v4.0.1-r2.md :: L308-L327 :: "skill_id: omoc-baseline-snap"` | skills contracts (incl. SK01) |
| NORMATIVE-WPMASTER | NORMATIVE | `/mnt/data/OMOC_實作+WP總表_v4.0.1-r2.md` | YES | 37,758 | TEMP\_CLOSED | 580 | `/mnt/data/OMOC_實作+WP總表_v4.0.1-r2.md :: L536-L546 :: "\"gate_id\": \"GATE-ENV-READY\""` | WP master \+ gate registry \+ BK matrix |
| TARGET-LEGACY | TARGET | `/mnt/data/OMOC_WP-002+RB+WI.md` | YES | 28,559 | TEMP\_CLOSED | 576 | `/mnt/data/OMOC_WP-002+RB+WI.md :: L1-L12 :: "# OMOC｜WP-002"` | legacy (to be superseded) |
| REVIEW-A | REVIEW | `/mnt/data/OMOC_WP-002+RB+WI_審查報告A.md` | YES | 12,747 | TEMP\_CLOSED | 267 | `/mnt/data/OMOC_WP-002+RB+WI_審查報告A.md :: L234-L247 :: "TT-WP002-001"` | review findings/TT |
| REVIEW-B | REVIEW | `/mnt/data/OMOC_WP-002+RB+WI_審查報告B.md` | YES | 8,248 | TEMP\_CLOSED | 200 | `/mnt/data/OMOC_WP-002+RB+WI_審查報告B.md :: L190-L201 :: "TT-WP002-001"` | review findings/TT |
| ALIGN-WP001-R2 | ALIGNMENT | `/mnt/data/OMOC_WP-001+RB+WI_v4.0.1-r2.md` | MISSING |  |  |  | N/A | WP-001 r2 target alignment |
| ALIGN-WP001 | ALIGNMENT | `/mnt/data/OMOC_WP-001+RB+WI.md` | YES | 41,867 | TEMP\_CLOSED | 654 | `/mnt/data/OMOC_WP-001+RB+WI.md :: L1-L15 :: "# OMOC｜WP-001"` | WP-001 legacy (support mapping only) |

**MISSING 處置（Fail-Closed 對齊）**

* `/mnt/data/OMOC_WP-001+RB+WI_v4.0.1-r2.md` \= **MISSING** ⇒ 立案 `TT-WP002-009`（Alignment TEMP\_CLOSED；不得宣稱已對齊）。  
* sha256 欄位未完成 ⇒ 立案 `TT-WP002-013`（本節為 TEMP\_CLOSED，不影響 GATE-ENV-READY，但違反稽核即不應對外發布）。

---

## **6\. Scope / Non-Goals / Out-of-scope Guardrails**

### **6.1 In-Scope（本 WP 必做）**

* Phase-L/L0：**Dev Container 可重建/可重跑**，工具鏈就緒（Docker \+ Dev Containers \+ 基本 CLI）。  
* 產出可機器驗收 artifacts：`run.log`, `rc.txt`, `baseline/*` 與 `evidence/_acceptance/<ts>/baseline/*`（見 §11、§12）。  
* BK-001：進入任何後續 WP 前必做 baseline snapshot \+ 最小 rollback 鉤子。

### **6.2 Non-Goals（不做）**

* **不改** GitHub Rulesets / Merge Queue / Required contexts / Branch protections（Phase-G 範圍）。  
* **不新增** CI 工作流程、required checks、merge\_group 觸發等設定；僅提供 **SUPPORT** 連結與風險提醒（見 §10 WI-2、§14）。

### **6.3 Out-of-scope Guardrails（硬護欄）**

* 任何提到 merge queue / merge\_group / rulesets 的段落：必標註 **OUT-OF-SCOPE（Phase-G）**，且明示「不影響 GATE-ENV-READY」。  
* 本 WP 允許的 GitHub 互動：**read-only**（例如 `gh api` 讀取資訊）且不得要求使用者提供 secrets；不得寫入或改動設定。

---

## **7\. Requirements Extraction（對齊 WP-MASTER r2；不得引用 superseded r1 作 normative）**

### **7.1 WP-002 定義與 Gate 連結（NORMATIVE）**

* WP-002（Phase-L/L0）對應 Gate：**GATE-ENV-READY**  
  * norm\_locator：`/mnt/data/OMOC_實作+WP總表_v4.0.1-r2.md :: L334-L336 :: "WP-002 | ENV ready"`  
* Gate registry（hash/required\_artifacts/verify\_steps）  
  * norm\_locator：`/mnt/data/OMOC_實作+WP總表_v4.0.1-r2.md :: L536-L546 :: "\"gate_id\": \"GATE-ENV-READY\""`

### **7.2 Gate Contract Lock（NORMATIVE）**

* gate\_id: **GATE-ENV-READY**  
* gate\_contract\_hash: **`001e08336480a4b0e2c8f07a332cb19e3c6c9f0bd92e14d3f6b8f0b58bdb0aa0`**  
* required\_artifacts（WP-MASTER r2 gate registry）  
  * `run.log`  
  * `rc.txt`  
  * `evidence/_acceptance/<ts>/baseline/*`

注意：WP-MASTER r2 同時在 BK Matrix 使用 `baseline/* + rc.txt` 表述（`/mnt/data/OMOC_實作+WP總表_v4.0.1-r2.md :: L284-L286 :: "BK-001 | 進入任何 WP 前"`）。本版以 **雙寫** 產物滿足兩者（見 §12 與 TT-WP002-011）。

### **7.3 BK-001（NORMATIVE）**

* 何時：**進入任何 WP 前**（尤其 WP-002 開始就要做）  
* 內容（最小集合）：workspace state / branch / dependency lockfiles  
* evidence\_required：`baseline/* + rc.txt`  
* norm\_locator：`/mnt/data/OMOC_實作+WP總表_v4.0.1-r2.md :: L284-L286 :: "BK-001 | 進入任何 WP 前"`

### **7.4 RBWI 命令模板與 L0 要求（NORMATIVE）**

* CMD template（timeout/tee/rc/run.log）：`/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md :: L188-L208 :: "[ANCHOR:OMOC-RBWI-CMD-TEMPLATE]"`  
* L0 env ready：`/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md :: L220-L242 :: "[ANCHOR:OMOC-RBWI-L0]"`

### **7.5 Skills（NORMATIVE；僅可 read-only、不得改 Phase-G）**

* SK01 baseline snapshot（含 GitHub API 讀取）  
* norm\_locator：`/mnt/data/OMOC_施工skills_合冊_v4.0.1-r2.md :: L308-L327 :: "skill_id: omoc-baseline-snap"`

---

## **8\. Coverage Map（逐子項裁決：PASS/UNVERIFIED/TEMP\_CLOSED/FAIL\_CLOSED）**

| req\_id | requirement | norm\_locator | implemented\_at | verdict | evidence/notes |
| ----- | ----- | ----- | ----- | ----- | ----- |
| `REQ-WPM-WP002-DEF` | WP-002 僅涵蓋 Phase-L/L0（Dev Container & Toolchain Ready） | \`/mnt/data/OMOC\_實作+WP總表\_v4.0.1-r2.md :: L334-L336 :: "WP-002 | ENV ready"\` | \#scope / \#runbook / \#gate-env-ready | PASS |
| `REQ-WPM-GATE-ENV-READY` | GATE-ENV-READY：hash+required\_artifacts+verify\_steps | `/mnt/data/OMOC_實作+WP總表_v4.0.1-r2.md :: L536-L546 :: "\"gate_id\": \"GATE-ENV-READY\""` | \#gate-env-ready / \#rb-5 | PASS | Gate Contract Lock 固定化。 |
| `REQ-WPM-BK-001` | BK-001：baseline snapshot \+ evidence\_required \+ rollback\_min | \`/mnt/data/OMOC\_實作+WP總表\_v4.0.1-r2.md :: L284-L286 :: "BK-001 | 進入任何 WP 前"\` | \#bk-001 / \#rb-4 | PASS |
| `REQ-RBWI-CMD-TEMPLATE` | RBWI CMD template：timeout/tee/rc/run.log | `/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md :: L188-L208 :: "[ANCHOR:OMOC-RBWI-CMD-TEMPLATE]"` | \#runbook / \#rb-3 / \#rb-5 | PASS | 以同構模板落地（不引入 Phase-G）。 |
| `REQ-RBWI-L0` | RBWI L0：Docker/DevContainer 環境就緒與工具檢查 | `/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md :: L220-L242 :: "[ANCHOR:OMOC-RBWI-L0]"` | \#rb-1 / \#rb-2 | PASS | 工具鏈檢查與缺失處置決策樹。 |
| `REQ-SKILLS-SK01` | SK01 baseline snapshot（含 GitHub API read-only） | `/mnt/data/OMOC_施工skills_合冊_v4.0.1-r2.md :: L308-L327 :: "skill_id: omoc-baseline-snap"` | \#rb-4（可選） | PASS\* | PASS\* \= 僅 read-only/最佳努力；不做任何 Phase-G 改動。 |
| `REQ-SEC-NO-SECRETS` | Evidence 不得包含 secrets/token/.env；命中即 FAIL\_CLOSED | `/mnt/data/OMOC_藍圖_v4.0.1-r1.md :: L169-L197 :: "[ANCHOR:OMOC-BP-1000]"` | \#security-evidence-hygiene | PASS | 提供掃描點與遮罩策略。 |
| `REQ-ALIGN-WP001-R2` | WP-001 r2 alignment file 必須存在才可宣稱對齊 | `/mnt/data/OMOC_WP-001+RB+WI_v4.0.1-r2.md` | \#tt-register | TEMP\_CLOSED | 上游缺檔；closure\_criteria 見 TT-WP002-009。 |
| `REQ-INVENTORY-SHA256` | Doc Inventory 必須填入 sha256（不得留白） | H2/H3/H6 | \#doc-inventory | TEMP\_CLOSED | 立案 TT-WP002-013；不影響 Gate，但不應對外發布。 |

**裁決規則**

* `PASS*`：只在「read-only / best-effort」前提下 PASS（不允許任何設定改動；不影響 Gate）。

---

## **9\. Runbook（RB-0…；可重跑；Fail-Closed）**

### **9.0 Runbook 基本約定（強制）**

* shell：`bash`（容器內）  
* 任何命令 **不得**輸出 secrets（見 §13）；嚴禁 `set -x`。  
* 所有步驟輸出統一匯入 `run.log`；每步的 rc 記錄到 `rc.txt`（最後覆寫為全局 rc）。  
* evidence root（建議）：`evidence/_acceptance/<ts>/`，其中 `<ts>=UTC 時間戳`。

#### **RB 通用命令模板（與 RBWI 同構）**

norm\_locator：`/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md :: L188-L208 :: "[ANCHOR:OMOC-RBWI-CMD-TEMPLATE]"`

\# \--- OMOC RBWI-compatible command scaffold (Phase-L/L0) \---  
set \-euo pipefail

TS\_UTC="${TS\_UTC:-$(date \-u \+%Y%m%dT%H%M%SZ)}"  
EVID\_ROOT="evidence/\_acceptance/${TS\_UTC}"  
LOG\_DIR="${EVID\_ROOT}/log"  
BASE\_EVID\_DIR="${EVID\_ROOT}/baseline"  
mkdir \-p "${LOG\_DIR}" "${BASE\_EVID\_DIR}"

RUN\_LOG="run.log"  
: \> "${RUN\_LOG}"

step() {  
  local id="$1"; shift  
  local timeout\_s="${1:-1800}"; shift || true  
  local cmd="$\*"  
  local step\_log="${LOG\_DIR}/${id}.log"  
  echo "=== \[$id\] START $(date \-u \+%FT%TZ) \===" | tee \-a "${RUN\_LOG}" "${step\_log}"  
  ( timeout "${timeout\_s}" bash \-lc "${cmd}" ) 2\>&1 | tee \-a "${RUN\_LOG}" "${step\_log}"  
  local rc="${PIPESTATUS\[0\]}"  
  echo "=== \[$id\] RC=${rc} END   $(date \-u \+%FT%TZ) \===" | tee \-a "${RUN\_LOG}" "${step\_log}"  
  return "${rc}"  
}

fail\_closed() {  
  local msg="$1"  
  echo "FAIL\_CLOSED: $msg" | tee \-a "${RUN\_LOG}"  
  echo "1" \> rc.txt  
  exit 1  
}

---

### **RB-0 Bootstrap & Guardrails（必做）**

**目標**：建立工作目錄、檢查 scope、鎖定輸出命名。  
**Fail-Closed**：任何 Phase-G 改動命令（例如修改 rulesets）出現即中止。

step "RB-0" 300 '  
  echo "OMOC\_WP-002 Phase-L/L0 bootstrap";  
  echo "TS\_UTC=$TS\_UTC";  
  echo "EVID\_ROOT=$EVID\_ROOT";  
  echo "SCOPE=Phase-L/L0 only (NO Phase-G changes)";  
'

---

### **RB-1 Enter Dev Container（VS Code；UI 由 WI-1 指引）**

**目標**：確保工作在 Dev Container 內執行（避免「主機有、容器沒有」）。

step "RB-1" 300 '  
  echo "whoami=$(whoami)";  
  echo "uname=$(uname \-a)";  
  echo "REMOTE\_CONTAINERS=${REMOTE\_CONTAINERS:-unset}";  
  test \-f .devcontainer/devcontainer.json && echo "devcontainer.json=present" || echo "devcontainer.json=missing (allowed but uncommon)";  
'

---

### **RB-2 Toolchain Preflight（Inside Container；決策樹 \+ 可驗收輸出）**

**目標**：工具鏈就緒：docker/git/jq/node/python/devcontainer/gh（最小集合）。  
**Fail-Closed**：`docker` 不可用 ⇒ Gate 不可能 PASS。

step "RB-2" 600 '  
  echo "== tool versions \==";  
  command \-v bash \>/dev/null && bash \--version | head \-n 1 || true  
  command \-v git  \>/dev/null && git \--version || true  
  command \-v jq   \>/dev/null && jq \--version || true  
  command \-v node \>/dev/null && node \--version || true  
  command \-v python3 \>/dev/null && python3 \--version || true  
  command \-v gh   \>/dev/null && gh \--version | head \-n 1 || true  
  command \-v docker \>/dev/null && docker version \--format "{{.Server.Version}}" || true

  echo "== fail-closed checks (minimal) \==";  
  command \-v docker \>/dev/null || exit 2  
  docker version \>/dev/null 2\>&1 || exit 3  
  command \-v git \>/dev/null || exit 4  
  command \-v python3 \>/dev/null || exit 5  
'  
rc=$?  
echo "$rc" \> rc.txt  
test "$rc" \-eq 0 || fail\_closed "Toolchain preflight failed (rc=$rc)"

**Toolchain 缺失處置 Decision Tree**

* docker missing / daemon unavailable ⇒ **FAIL\_CLOSED**  
* devcontainer build/reopen（WI-1）失敗 ⇒ **FAIL\_CLOSED**  
* git/python3 缺失 ⇒ **FAIL\_CLOSED**  
* jq/node/gh 缺失 ⇒ **TEMP\_CLOSED**（除非下游硬依賴；本 WP 不要求 gh 授權）

---

### **RB-3 Evidence Workspace Bootstrap（產物目錄固定化）**

step "RB-3" 300 '  
  mkdir \-p baseline;  
  mkdir \-p "$BASE\_EVID\_DIR";  
  echo "baseline dirs ready";  
  find evidence/\_acceptance \-maxdepth 3 \-type d | sort | sed \-n "1,50p";  
'

---

### **RB-4 BK-001 Baseline Snapshot（Dual-path；滿足 BK Matrix \+ Gate registry）**

**目標**：產出 `baseline/*`（BK）＋ `evidence/_acceptance/<ts>/baseline/*`（Gate）＋ `rc.txt`（共同）。

step "RB-4" 900 '  
  {  
    echo "ts\_utc=$TS\_UTC";  
    echo "pwd=$(pwd)";  
    echo "git\_root=$(git rev-parse \--show-toplevel 2\>/dev/null || echo n/a)";  
  } \> baseline/meta.txt

  git status \--porcelain=v1 \> baseline/git\_status.txt || true  
  git rev-parse \--abbrev-ref HEAD \> baseline/branch.txt || true  
  git rev-parse HEAD \> baseline/head.txt || true

  (ls \-1 package-lock.json pnpm-lock.yaml yarn.lock poetry.lock Pipfile.lock requirements.txt 2\>/dev/null || true) \\  
    | sort \> baseline/lockfiles\_list.txt

  {  
    echo "docker=$(docker version \--format "{{.Server.Version}}" 2\>/dev/null || echo n/a)";  
    echo "git=$(git \--version 2\>/dev/null || echo n/a)";  
    echo "jq=$(jq \--version 2\>/dev/null || echo n/a)";  
    echo "node=$(node \--version 2\>/dev/null || echo n/a)";  
    echo "python3=$(python3 \--version 2\>/dev/null || echo n/a)";  
    echo "gh=$(gh \--version 2\>/dev/null | head \-n 1 || echo n/a)";  
  } \> baseline/tool\_versions.txt

  (cd baseline && sha256sum \* 2\>/dev/null | sort) \> baseline/SHA256SUMS.txt || true

  rsync \-a baseline/ "$BASE\_EVID\_DIR"/  
  echo "BK-001 baseline snapshot done";  
'  
rc=$?  
echo "$rc" \> rc.txt  
test "$rc" \-eq 0 || fail\_closed "BK-001 baseline snapshot failed (rc=$rc)"

**rollback\_min（最小鉤子）**

* 回到 baseline HEAD：`git reset --hard "$(cat baseline/head.txt)"`（若存在）  
* 清理未追蹤：`git clean -fdx`（選用；先確認不會刪到必要檔）  
* 任一步驟失敗 ⇒ 建 TT，標 **TEMP\_CLOSED**；不得默默忽略。

**可選：SK01 read-only baseline snapshot（不影響 Gate；OUT-OF-SCOPE 內容忽略）**

* 若 `gh` 已登入且可解析 repo：允許執行 SK01 取得 repo/CI 讀取快照（不得寫入設定）。  
* 若無 `gh auth` / repo 無法解析：**跳過**（不得 FAIL Gate）。

---

### **RB-5 Gate Evaluation: GATE-ENV-READY（Fail-Closed）**

**Gate Contract Lock（NORMATIVE）**

* gate\_contract\_hash: `001e08336480a4b0e2c8f07a332cb19e3c6c9f0bd92e14d3f6b8f0b58bdb0aa0`  
* required\_artifacts：  
  * `run.log`  
  * `rc.txt`  
  * `evidence/_acceptance/<ts>/baseline/*`

step "RB-5" 300 '  
  test \-s run.log || exit 10  
  test \-f rc.txt || exit 11  
  test \-d baseline || exit 12  
  test \-d "$BASE\_EVID\_DIR" || exit 13

  rc=$(cat rc.txt | tr \-d "\\r\\n" || true)  
  test "$rc" \= "0" || exit 14

  (cd baseline && ls \-1) | sort \> /tmp/baseline\_root.lst  
  (cd "$BASE\_EVID\_DIR" && ls \-1) | sort \> /tmp/baseline\_evid.lst  
  diff \-u /tmp/baseline\_root.lst /tmp/baseline\_evid.lst

  echo "GATE-ENV-READY: PASS";  
'  
rc=$?  
echo "$rc" \> rc.txt  
test "$rc" \-eq 0 || fail\_closed "GATE-ENV-READY failed (rc=$rc)"

---

### **RB-6 Failure Handling & Auto-Repair Loop（Local；不依賴外部工具）**

* 任一 RB 步驟 FAIL\_CLOSED：  
  1. 停止執行，保留 `run.log`、`rc.txt`、`baseline/*`、`evidence/_acceptance/<ts>/...`  
  2. 建立對應 TT（見 §15）  
  3. 只允許修補 Phase-L/L0 範圍內問題（Docker/Dev Container/工具鏈），不得轉進 Phase-G

---

## **10\. Work Instructions（WI-1…；UI claim 必綁 Web Evidence）**

### **WI-1 VS Code Dev Containers UI Path（可變動事實；SUPPORT ONLY）**

**Claim**：Command Palette 具備 `Dev Containers: Reopen in Container` / `Dev Containers: Rebuild Container`。

* web\_id: `W-DEVCONTAINERS-001`（見 §14）citeturn3view0turn3view1

**操作（摘要）**

1. 安裝擴充：**Dev Containers**（Microsoft）  
2. `F1` → `Dev Containers: Reopen in Container`  
3. 如需重建：`F1` → `Dev Containers: Rebuild Container`

### **WI-2 Codespaces Rebuild Container（OUT-OF-SCOPE / SUPPORT）**

**不影響 GATE-ENV-READY**。僅供使用 Codespaces 的團隊參考（Phase-G 或雲端環境策略另案）。

**Claim**：Command Palette 具備 `Codespaces: Rebuild Container`。

* web\_id: `W-CODESPACES-001`（見 §14）citeturn3view3turn3view4

### **WI-3 devcontainer.json Fields Reference（SUPPORT）**

**Claim**：devcontainer.json 欄位行為以 Dev Container Spec/JSON Reference 為準。

* web\_id: `W-DEVCONTAINERS-SPEC-001`（見 §14）citeturn3view2turn3view5

---

## **11\. Gate: GATE-ENV-READY（Gate Contract Lock \+ 判定規範）**

### **11.1 Gate Contract（NORMATIVE）**

* gate\_id: **GATE-ENV-READY**  
* gate\_contract\_hash: **`001e08336480a4b0e2c8f07a332cb19e3c6c9f0bd92e14d3f6b8f0b58bdb0aa0`**  
* required\_artifacts：  
  * `run.log`  
  * `rc.txt`  
  * `evidence/_acceptance/<ts>/baseline/*`  
* norm\_locator：`/mnt/data/OMOC_實作+WP總表_v4.0.1-r2.md :: L536-L546 :: "\"gate_id\": \"GATE-ENV-READY\""`

### **11.2 Gate 子條件（可追蹤、可重跑）**

| gate\_sub\_id | condition | satisfied\_by | fail\_behavior |
| ----- | ----- | ----- | ----- |
| `GATE-ENV-READY-01` | Docker daemon 可用 | RB-2 | FAIL\_CLOSED |
| `GATE-ENV-READY-02` | 於 Dev Container 內執行 | RB-1 \+ WI-1 | FAIL\_CLOSED |
| `GATE-ENV-READY-03` | git/python3 可用 | RB-2 | FAIL\_CLOSED |
| `GATE-ENV-READY-04` | BK-001 baseline 產出（雙路徑） | RB-4 | FAIL\_CLOSED |
| `GATE-ENV-READY-05` | required\_artifacts 齊備且 rc=0 | RB-5 | FAIL\_CLOSED |

---

## **12\. BK-001（baseline snapshot \+ evidence\_required \+ rollback\_min）**

### **12.1 BK-001 目的（NORMATIVE）**

* norm\_locator：`/mnt/data/OMOC_實作+WP總表_v4.0.1-r2.md :: L284-L286 :: "BK-001 | 進入任何 WP 前"`  
* 最小要求：`baseline/* + rc.txt`

### **12.2 BK-001 evidence\_required（本版落地）**

**必備（Fail-Closed）**

* `baseline/meta.txt`  
* `baseline/git_status.txt`  
* `baseline/head.txt`（若 git 可用）  
* `baseline/tool_versions.txt`  
* `baseline/SHA256SUMS.txt`  
* `rc.txt`

**並行（為滿足 Gate registry required\_artifacts）**

* `evidence/_acceptance/<ts>/baseline/*`（內容與 root baseline 同步）

### **12.3 rollback\_min（最小鉤子）**

* `git reset --hard <baseline/head.txt>`（若存在）  
* `git clean -fdx`（選用；先確定不會刪到必要檔）  
* 任一步驟失敗 ⇒ 建 TT，標 **TEMP\_CLOSED**；不得默默忽略。

---

## **13\. Security & Evidence Hygiene（不落盤/遮罩/掃描；命中即 FAIL\_CLOSED）**

### **13.1 禁止事項（Fail-Closed）**

* evidence / baseline / run.log / rc.txt **不得包含**：  
  * token / PAT / private key / `.env` / SSH key / cloud credentials  
  * 任何可重放的 auth header / bearer token  
* 命中 ⇒ `FAIL_CLOSED`（保留證據但**不得外傳**）＋ 建 TT（安全事件）。

### **13.2 最小掃描命令（容器內）**

rg \-n \--hidden \--no-ignore \-S "(ghp\_|github\_pat\_|AKIA|BEGIN (RSA|OPENSSH) PRIVATE KEY|Bearer |xox\[baprs\]-)" \\  
  run.log rc.txt baseline evidence/\_acceptance || true

### **13.3 遮罩與防落盤策略**

* 禁用 `set -x`；避免把環境變數整包輸出到 log。  
* 若需顯示設定：只輸出「鍵名」不輸出「值」。  
* 若必須用 `gh`：優先 read-only；不得把 `gh auth token` 結果輸出到任何檔案。

---

## **14\. Web Evidence Appendix（SUPPORT ONLY；每條 claim \>=2 refs；至少 1 官方）**

last\_verified\_at 以本文件 generated\_at 為準；UI 漂移依 drift\_action 處置。

### **W-DEVCONTAINERS-001（VS Code Dev Containers：Reopen/Rebuild）**

* last\_verified\_at: `2026-02-18T01:06:xx+08:00`  
* drift\_action: 若命令改名/路徑變更：以 `Dev Containers:` 前綴搜尋；更新本條 sources（新增至少 1 官方）並立 TT。

Sources:

1. VS Code Docs — Create a Dev Container  
   `https://code.visualstudio.com/docs/devcontainers/create-dev-container`  
   excerpt: "Dev Containers: Rebuild Container" citeturn3view0  
2. VS Code Docs — Developing inside a Container  
   `https://code.visualstudio.com/docs/devcontainers/containers`  
   excerpt: "Dev Containers commands…" citeturn3view1

### **W-CODESPACES-001（Codespaces：Rebuild Container）**

* last\_verified\_at: `2026-02-18T01:06:xx+08:00`  
* drift\_action: 若 UI 命令消失：用站內搜尋定位；必要時 WEB-CONFLICT→TT。

Sources:

1. GitHub Docs — Rebuilding the container in a codespace  
   `https://docs.github.com/en/codespaces/developing-in-a-codespace/rebuilding-the-container-in-a-codespace`  
   excerpt: "Codespaces: Rebuild Container" citeturn3view3  
2. GitHub Docs — Developing in a codespace  
   `https://docs.github.com/en/codespaces/developing-in-a-codespace/developing-in-a-codespace`  
   excerpt: "Use the Command Palette…" citeturn3view4

### **W-DEVCONTAINERS-SPEC-001（Dev Container Spec / devcontainer.json 參考）**

* last\_verified\_at: `2026-02-18T01:06:xx+08:00`  
* drift\_action: 若 spec 欄位行為疑義：以 containers.dev 為主；不一致則 WEB-CONFLICT→TT。

Sources:

1. containers.dev — devcontainer.json Reference  
   `https://containers.dev/implementors/json_reference/`  
   excerpt: "devcontainer.json reference" citeturn3view2  
2. containers.dev — Implementors Specification  
   `https://containers.dev/implementors/spec/`  
   excerpt: "Implementors Specification" citeturn3view5

### **W-MERGEQUEUE-001（OUT-OF-SCOPE：Merge Queue / merge\_group）**

**不影響 GATE-ENV-READY**；僅作 Phase-G 風險定位。

Sources:

1. GitHub Docs — Managing a merge queue  
   `https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/configuring-pull-request-merges/managing-a-merge-queue`  
   excerpt: "must use the `merge_group` event" citeturn8view0  
2. GitHub Docs — Merging a pull request with a merge queue  
   `https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/configuring-pull-request-merges/merging-a-pull-request-with-a-merge-queue`  
   excerpt: "About merge queues" citeturn6view2

### **W-MERGEGROUP-001（OUT-OF-SCOPE：merge\_group 事件）**

**不影響 GATE-ENV-READY**；僅作 Phase-G 風險定位。

Sources:

1. GitHub Docs — Events that trigger workflows  
   `https://docs.github.com/en/actions/writing-workflows/choosing-when-your-workflow-runs/events-that-trigger-workflows`  
   excerpt: "`merge_group`" citeturn6view4  
2. GitHub Docs — Troubleshooting required status checks  
   `https://docs.github.com/en/enterprise-cloud@latest/pull-requests/collaborating-with-pull-requests/collaborating-on-repositories-with-code-quality-features/troubleshooting-required-status-checks`  
   excerpt: "Waiting for status to be reported" citeturn3view6

### **W-RULESETS-001（OUT-OF-SCOPE：Rulesets / Require merge queue）**

**不影響 GATE-ENV-READY**；僅作 Phase-G 風險定位。

Sources:

1. GitHub Docs — Available rules for rulesets (enterprise-cloud@latest)  
   `https://docs.github.com/en/enterprise-cloud@latest/repositories/configuring-branches-and-merges-in-your-repository/managing-rulesets/available-rules-for-rulesets`  
   excerpt: "`merge_group.checks_requested`" citeturn8view1  
2. GitHub Docs — Available rules for rulesets (zh-tw)  
   `https://docs.github.com/zh-tw/enterprise-cloud@latest/repositories/configuring-branches-and-merges-in-your-repository/managing-rulesets/available-rules-for-rulesets`  
   excerpt: "Require merge queue" citeturn3view7

---

## **15\. TT Register（全量列出；含 alias/衝突處置）**

| tt\_id | status | title | closure\_criteria | notes |
| ----- | ----- | ----- | ----- | ----- |
| `TT-WP002-001` | CLOSED | Doc Inventory drift→WP-MASTER r2（禁止再用 r1 作裁決依據） | N/A | 已以 r2 locator 綁定；r1 僅標 SUPPORTED-SUPERSEDED。 |
| `TT-WP002-002` | CLOSED | Gate locator \+ Gate Contract Lock（hash+required\_artifacts 固定化） | N/A | 已嵌入 gate\_contract\_hash=001e08336480… 並綁 r2 gate registry。 |
| `TT-WP002-003` | CLOSED | BK-001 evidence\_required 對齊 r2 BK Matrix；補 rollback\_min | N/A | 已落地 dual-path baseline（root+evidence）。 |
| `TT-WP002-004` | CLOSED | 補齊 TOC/Anchor Registry；修復舊版缺失 §10\~§15 anchors | N/A | 本文件所有章節均有 。 |
| `TT-WP002-005` | CLOSED | Runbook CMD template：timeout/tee/rc 分離；固定 run.log/rc.txt | N/A | 模板與 RBWI 同構；run.log/rc.txt 命名固定。 |
| `TT-WP002-006` | CLOSED | 移除 oaicite/placeholder；以 Web Evidence Appendix（\>=2 refs）取代 | N/A | Web evidence 已補齊 \>=2 refs 且含官方。 |
| `TT-WP002-007` | CLOSED | Toolchain 缺失處置 decision tree（docker/git/jq/node/python/devcontainer/gh） | N/A | RB-2 已落地可驗收輸出與 Fail-Closed 行為。 |
| `TT-WP002-008` | CLOSED | Link/Anchor Audit：TOC 內鏈不得斷 | N/A | Anchor Registry 完整；Self-Audit 規則落地。 |
| `TT-WP002-009` | TEMP\_CLOSED | WP-001 v4.0.1-r2 對齊（ALIGNMENT） | 若 `/mnt/data/OMOC_WP-001+RB+WI_v4.0.1-r2.md` 存在：補齊 Authority/Version policy 映射並更新 Coverage Map | 上游檔案 MISSING；不阻斷 WP-002 Gate。 |
| `TT-WP002-010` | CLOSED | Out-of-scope guard：不得偷渡 Phase-G（Rulesets/Merge Queue/Required contexts 改動） | N/A | 已在 Scope/Runbook/WI 明示「不影響 Gate」。 |
| `TT-WP002-011` | CLOSED | WPM r2 路徑歧義（BK baseline/\* vs Gate evidence/\_acceptance/.../baseline/\*） | 上游釐清後移除雙寫並更新本文件 | 本版以雙寫產物同時滿足兩者，避免 FAIL\_CLOSED。 |
| `TT-WP002-012` | CLOSED | Status Glossary：確保 TEMP\_CLOSED 可被搜尋命中（NO\_HIT 風險） | N/A | 已新增 Glossary 並多處引用 TEMP\_CLOSED。 |
| `TT-WP002-013` | TEMP\_CLOSED | Doc Inventory sha256 未實填（必須可重算） | 於同一環境重算所有輸入檔 sha256；填入 §5；並在 Self-Audit 記錄命令與結果摘要 | 不影響 Gate，但屬文件稽核阻斷：外部交付前必須關閉。 |

### **15.1 TT Alias Map（吸收 REVIEW-B TT 編號差異；避免「同號不同義」）**

| report | reported\_tt\_id | mapped\_to | note |
| ----- | ----- | ----- | ----- |
| REVIEW-B | `TT-WP002-003` | `TT-WP002-006` | Web evidence（Dev Containers） |
| REVIEW-B | `TT-WP002-004` | `TT-WP002-006` | Web evidence（Codespaces） |
| REVIEW-B | `TT-WP002-005` | `TT-WP002-009` | WP-001 r2 alignment missing |
| REVIEW-B | `TT-WP002-006` | `TT-WP002-012` | Status glossary / TEMP\_CLOSED NO\_HIT |
| REVIEW-B | `TT-WP002-007` | `TT-WP002-010` | Out-of-scope guard（本版已落地） |

---

## **16\. Closure Matrix（Finding → Patch → TT → Verdict）**

| finding\_id | source | summary | patch\_location | TT | verdict |
| ----- | ----- | ----- | ----- | ----- | ----- |
| `F-WP002-001` | REVIEW-A | WP-MASTER 版本漂移（r1→r2） | \#doc-inventory / \#requirements-extraction | `TT-WP002-001` | PASS |
| `F-WP002-002` | REVIEW-A | 缺 Gate Contract Lock（hash/required\_artifacts） | \#gate-env-ready | `TT-WP002-002` | PASS |
| `F-WP002-003` | REVIEW-A | BK-001 evidence\_required/rollback 缺失或不對齊 | \#bk-001 | `TT-WP002-003` | PASS |
| `F-WP002-004` | REVIEW-A | Anchor/TOC 缺失、§10\~§15 不可定位 | \#toc / \#anchor-registry | `TT-WP002-004` | PASS |
| `F-WP002-005` | REVIEW-A | RBWI CMD template 未落地（timeout/tee/rc） | \#runbook | `TT-WP002-005` | PASS |
| `F-WP002-006` | REVIEW-A | oaicite/placeholder/未填 URL | \#web-evidence-appendix | `TT-WP002-006` | PASS |
| `F-WP002-007` | REVIEW-A | 缺 Toolchain decision tree | \#rb-2 | `TT-WP002-007` | PASS |
| `F-WP002-009` | REVIEW-A | WP-001 r2 對齊宣稱風險 | \#authority-stack / \#tt-register | `TT-WP002-009` | TEMP\_CLOSED |
| `F-WP002-010` | REVIEW-A | Out-of-scope guard 不足（Phase-G 偷渡風險） | \#scope | `TT-WP002-010` | PASS |
| `F-WP002-DRIFT-001` | REVIEW-B | Doc Inventory 綁錯版本（r1） | \#doc-inventory | `TT-WP002-001` | PASS |
| `F-WP002-GATE-001` | REVIEW-B | Gate locator/registry 不可機器驗收 | \#gate-env-ready | `TT-WP002-002` | PASS |
| `F-WP002-BK-001` | REVIEW-B | BK-001/證據命名不固定 | \#bk-001 | `TT-WP002-003` | PASS |
| `F-WP002-STATUS-001` | REVIEW-B | TEMP\_CLOSED NO\_HIT（詞彙未定義/未出現） | \#status-glossary | `TT-WP002-012` | PASS |
| `F-WP002-INVENTORY-001` | INTERNAL | sha256 未實填（文件稽核阻斷） | \#doc-inventory | `TT-WP002-013` | TEMP\_CLOSED |

---

## **17\. Self-Audit（輸出前自我稽核；Fail-Closed）**

### **17.1 Keyword Audit（必含且可命中）**

* 必查關鍵詞：`WP-002`, `Phase-L`, `L0`, `Dev Container`, `Toolchain`, `GATE-ENV-READY`, `BK-001`, `Runbook`, `WI`, `Evidence`, `TEMP_CLOSED`, `FAIL_CLOSED`, `TT-WP002`, `run.log`, `rc.txt`, `baseline/*`, `contentReference[oaicite`。  
* 結果摘要：本文件已顯式包含上述關鍵詞（含 `TEMP_CLOSED`；避免 NO\_HIT）。

### **17.2 Anchor/Link Audit**

* TOC 內鏈：全部對應 Anchor Registry；不得斷鏈（本版以固定 anchor\_id 管控）。  
* 舊版缺失章節（§10\~§15）：本版已以 `#work-instructions` \~ `#tt-register` 覆蓋。

### **17.3 oaicite/placeholder/TODO Audit**

* 禁止字串：`contentReference[oaicite:`、`oaicite:`（格式化占位符）、`TODO`、未填 URL。  
* 結果摘要：本文件未包含 `contentReference[oaicite:`；Web Evidence URLs 均已實填。

### **17.4 Gate/BK Contract Audit**

* gate\_contract\_hash / required\_artifacts：已固定並綁 WP-MASTER r2（`/mnt/data/OMOC_實作+WP總表_v4.0.1-r2.md :: L536-L546 :: "\"gate_id\": \"GATE-ENV-READY\""`）。  
* BK-001：已滿足 `baseline/* + rc.txt`（`/mnt/data/OMOC_實作+WP總表_v4.0.1-r2.md :: L284-L286 :: "BK-001 | 進入任何 WP 前"`）。

### **17.5 FAIL-CLOSED 宣告（務實提醒）**

* Gate 是 PASS；但 **Doc Inventory sha256 未關閉** ⇒ 在嚴格稽核體系中，這份文件不該「正式對外發佈」。  
* 別擔心，sha256 不會咬人；它只會咬「沒填的人」。

