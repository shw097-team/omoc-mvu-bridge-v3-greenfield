# **《OMOC\_WP-011+RB+WI》Phase-G/G2 Always-Report Wrappers & Status Hygiene（升級修補版）**

## **1\) Document Control**

### **1.1 Canonical Version Block**

* **external\_name**：OMOC｜WP-011（Phase-G/G2 Always-Report Wrappers & Status Hygiene）  
* **internal\_short\_name**：WP-011  
* **canonical\_version**：v4.0.1-r2  
* **generated\_at**（Asia/Taipei, UTC+08:00）：2026-02-19T00:00:00+08:00  
* **baseline\_web\_date（driftable facts）**：2026-02-14  
* **mode**：Files-first \+ WTNA（Web SUPPORT-only，不得升格 NORMATIVE）  
* **phase**：Phase-G  
* **scope\_tag**：G2  
* **gate\_id（primary）**：GATE-ALWAYS-REPORT（hash 見 §7 Version Lock / Gate Dependencies）  
* **backup\_point（policy）**：BK（以 WP總表 r2「Backup/Restore/Recovery 矩陣」可定位條文為準；不可定位→TT）  
* **supersedes**：`/mnt/data/OMOC_WP-011+RB+WI.md`（TARGET；本文件工程性取代）  
* **review\_fix\_spec**：`/mnt/data/OMOC_WP-011+RB+WI_審查報告.md`（必修閉環）  
* **overall\_verdict（本版交付狀態）**：PASS（文件層）/ TEMP\_CLOSED（環境實測層：見 §20 TT Register）

### **1.2 Non-Negotiable Rules（摘錄）**

* Files-first / No-Source-No-Norm / SSOT 優先級 / Fail-Closed / CR\_OPEN=0 轉 TT / 防注入與供應鏈隔離（對齊 RB+WI Guardrails）

---

## **2\) TOC**

* [1\) Document Control](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/69966625-71fc-83aa-a0a6-8b83959e74ea#omoc-wp011-doc-control)  
* [3\) Diátaxis 導讀](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/69966625-71fc-83aa-a0a6-8b83959e74ea#omoc-wp011-diataxis)  
* [4\) Anchor Registry](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/69966625-71fc-83aa-a0a6-8b83959e74ea#omoc-wp011-anchor-registry)  
* [5\) Authority Stack & SSOT Resolution](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/69966625-71fc-83aa-a0a6-8b83959e74ea#omoc-wp011-authority)  
* [6\) Doc Inventory](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/69966625-71fc-83aa-a0a6-8b83959e74ea#omoc-wp011-doc-inventory)  
* [7\) Version Lock Table](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/69966625-71fc-83aa-a0a6-8b83959e74ea#omoc-wp011-version-lock)  
* [8\) Scope / Non-Goals / Route-out Map](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/69966625-71fc-83aa-a0a6-8b83959e74ea#omoc-wp011-scope)  
* [9\) Tool Decision Matrix](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/69966625-71fc-83aa-a0a6-8b83959e74ea#omoc-wp011-tool-matrix)  
* [10\) Requirements（WP011-REQ-\*）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/69966625-71fc-83aa-a0a6-8b83959e74ea#omoc-wp011-requirements)  
* [11\) Coverage / Trace / Closure Matrix](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/69966625-71fc-83aa-a0a6-8b83959e74ea#omoc-wp011-closure-matrix)  
* [12\) Spec：Always-Report Wrappers & Status Hygiene](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/69966625-71fc-83aa-a0a6-8b83959e74ea#omoc-wp011-spec)  
* [13\) Runbook](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/69966625-71fc-83aa-a0a6-8b83959e74ea#omoc-wp011-runbook)  
* [14\) WI（任務卡）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/69966625-71fc-83aa-a0a6-8b83959e74ea#omoc-wp011-wi)  
* [15\) Gates & DoD](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/69966625-71fc-83aa-a0a6-8b83959e74ea#omoc-wp011-gates)  
* [16\) Acceptance Quickpath](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/69966625-71fc-83aa-a0a6-8b83959e74ea#omoc-wp011-quickpath)  
* [17\) Counterexamples](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/69966625-71fc-83aa-a0a6-8b83959e74ea#omoc-wp011-counterexamples)  
* [18\) SECURITY](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/69966625-71fc-83aa-a0a6-8b83959e74ea#omoc-wp011-security)  
* [19\) Traceability Appendices](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/69966625-71fc-83aa-a0a6-8b83959e74ea#omoc-wp011-appendices)  
* [20\) TT Register（CR\_OPEN=0）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/69966625-71fc-83aa-a0a6-8b83959e74ea#omoc-wp011-tt-register)  
* [21\) Web Evidence Appendix（SUPPORT-only）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/69966625-71fc-83aa-a0a6-8b83959e74ea#omoc-wp011-web-evidence)  
* [22\) Glossary & Normalization](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/69966625-71fc-83aa-a0a6-8b83959e74ea#omoc-wp011-glossary)  
* [23\) Change Log](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/69966625-71fc-83aa-a0a6-8b83959e74ea#omoc-wp011-changelog)  
* [24\) machine\_summary.json](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/69966625-71fc-83aa-a0a6-8b83959e74ea#omoc-wp011-machine-summary)

---

## **3\) Diátaxis 導讀**

* **Tutorial（上手導覽）**：看 §16 Quickpath（最短閉環）→ 產出最小證據集（§15/§16）→ 不通過即自動落入 §20 TT。  
* **How-to（怎麼做）**：照 §13 Runbook 逐步執行（每步都有輸入/輸出/失敗分支/回滾點）。  
* **Reference（規格查詢）**：§12 Spec、§10 Requirements、§9 Tool Matrix、§22 名詞正規化。  
* **Explanation（為何如此）**：本 WP 的存在目的，是避免 required checks 因「未回報」而造成治理卡死（如 “Waiting for status to be reported” 類型），並把「狀態衛生」做成可驗收、可追溯、可回放的工程規格。審查報告已裁決舊版存在 drift / gate hash 缺失 / skip 風險未落地 / ERCC 只宣告等問題，本版以 Closure Matrix 逐條閉環。

---

## **4\) Anchor Registry**

| section | anchor |
| ----- | ----- |
| Document Control | `#omoc-wp011-doc-control` |
| Authority | `#omoc-wp011-authority` |
| Doc Inventory | `#omoc-wp011-doc-inventory` |
| Version Lock | `#omoc-wp011-version-lock` |
| Scope / Route-out | `#omoc-wp011-scope` |
| Tool Matrix | `#omoc-wp011-tool-matrix` |
| Requirements | `#omoc-wp011-requirements` |
| Closure Matrix | `#omoc-wp011-closure-matrix` |
| Spec | `#omoc-wp011-spec` |
| Runbook | `#omoc-wp011-runbook` |
| WI | `#omoc-wp011-wi` |
| Gates & DoD | `#omoc-wp011-gates` |
| Quickpath | `#omoc-wp011-quickpath` |
| Counterexamples | `#omoc-wp011-counterexamples` |
| SECURITY | `#omoc-wp011-security` |
| Appendices | `#omoc-wp011-appendices` |
| TT Register | `#omoc-wp011-tt-register` |
| Web Evidence Appendix | `#omoc-wp011-web-evidence` |
| Glossary | `#omoc-wp011-glossary` |
| Change Log | `#omoc-wp011-changelog` |
| machine\_summary.json | `#omoc-wp011-machine-summary` |

---

## **5\) Authority Stack & SSOT Resolution**

### **5.1 SSOT Priority（不可顛倒）**

1. **NORMATIVE**：  
* `/mnt/data/OMOC_藍圖_v4.0.1-r1.md`  
* `/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md`  
* `/mnt/data/OMOC_施工skills_合冊_v4.0.1-r2.md`  
* `/mnt/data/OMOC_實作+WP總表_v4.0.1-r2.md`（含 gate\_registry / WP-MASTER；r1 視為 superseded，不得再引用）  
2. **PEER（對齊版型/欄位）**：WP-001～WP-010 v4.0.1-r2（不得凌駕 NORMATIVE）  
3. **TARGET（僅覆蓋檢查）**：舊版 WP-011（不得作裁決依據）  
4. **WEB（SUPPORT-only）**：僅可放 §21，且必綁 TT、accessed\_at、≥2 refs（若與 SSOT 牴觸，以 SSOT 為準）

### **5.2 Conflict Resolution（Fail-Closed）**

* **No-Source-No-Norm**：找不到 NORMATIVE 可定位正文 → 不得寫成「必須」；只能轉 TT \+ TEMP\_CLOSED（或阻斷級 FAIL\_CLOSED）。  
* **不得腦補**：任何 repo 實況、GitHub UI 當前位置、workflow 實際觸發結果，未實測一律視為 UNVERIFIED（TT）。

---

## **6\) Doc Inventory（Files-first \+ Locator Strategy）**

**定位策略（統一）**：`doc_path + #[ANCHOR:...] 或 #html_id +（若 SSOT/PEER 提供）行距區間；若行號不可得，採「關鍵字+錨點」雙定位，並建立 TT 補行號。`

| doc\_path | role | required\_version | why\_needed | primary\_locators（示例） | sha256 |
| ----- | ----- | ----- | ----- | ----- | ----- |
| `/mnt/data/OMOC_藍圖_v4.0.1-r1.md` | NORMATIVE | v4.0.1-r1 | 藍圖定義 required checks / evidence 契約（BP-1000/1200） | `BP-1000`, `BP-1200`（關鍵字定位；行號不可得→TT） | TT |
| `/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md` | NORMATIVE | v4.0.1-r1 | Phase-G/G2 的可施工骨架、Guardrails | `#[ANCHOR:OMOC-RBWI-G2]`、`#[ANCHOR:OMOC-RBWI-GUARDRAILS]` | TT |
| `/mnt/data/OMOC_施工skills_合冊_v4.0.1-r2.md` | NORMATIVE | v4.0.1-r2 | skills 使用時機/路由（避免越權） | `#OMOC-CSK-0000`、（router/mq probe 相關錨點以 PEER/總表定位；不足→TT） | TT |
| `/mnt/data/OMOC_實作+WP總表_v4.0.1-r2.md` | NORMATIVE | v4.0.1-r2 | gate\_registry、WP-MASTER、BK 矩陣 | `gate_registry.json`、`WP-MASTER`（關鍵字定位）；r1 禁用 | TT |
| `/mnt/data/OMOC_WP-011+RB+WI_審查報告.md` | REVIEW/FIX | n/a | 必修閉環與 TT 定義 | Findings/TT/Web Appendix（本檔內） | TT |
| `/mnt/data/OMOC_WP-011+RB+WI.md` | TARGET | n/a | Legacy 覆蓋對照 | 逐段落條目化（不足→TT） | TT |
| `/mnt/data/OMOC_WP-001..010+RB+WI_v4.0.1-r2.md` | PEER | v4.0.1-r2 | 版型、Gate/TT/證據樣式對齊 | 以 WP-003、WP-010 作樣式基準（不足→TT） | TT |

**sha256 policy**：若作業環境無法計算或未提供，全部轉 TT（不阻斷文件層交付）。

---

## **7\) Version Lock Table（SSOT \+ PEER \+ TARGET）**

### **7.1 SSOT / PEER / TARGET Lock**

| item | path | version | status |
| ----- | ----- | ----- | ----- |
| SSOT-N1 | OMOC\_藍圖\_v4.0.1-r1.md | v4.0.1-r1 | LOCK |
| SSOT-N2 | OMOC\_施工RB+WI\_合冊\_v4.0.1-r1.md | v4.0.1-r1 | LOCK |
| SSOT-N3 | OMOC\_施工skills\_合冊\_v4.0.1-r2.md | v4.0.1-r2 | LOCK |
| SSOT-N4 | OMOC\_實作+WP總表\_v4.0.1-r2.md | v4.0.1-r2 | LOCK（r1 視為 superseded） |
| PEER | WP-001～WP-010 v4.0.1-r2 | v4.0.1-r2 | STYLE-LOCK |
| TARGET | OMOC\_WP-011+RB+WI.md | n/a | SUPERSEDED |

### **7.2 Gate Dependencies（必填；缺任一欄＝FAIL\_CLOSED）**

**來源**：N4（WP總表 r2）gate\_registry.json / WP-MASTER；任何 GateID 引用必帶 `gate_contract_hash`（審查裁決為阻斷級）

| gate\_id | gate\_contract\_hash | verify\_steps\_ref (this doc) | rollback\_ref (this doc) | owner\_wp |
| ----- | ----- | ----- | ----- | ----- |
| GATE-ALWAYS-REPORT | **TT（需從 N4 可定位抄錄）** | `RB-STEP-G2-AR-VERIFY` | `RB-STEP-G2-AR-ROLLBACK` | WP-011 |
| GATE-REQCHECK-CANONICAL | **TT（需從 N4 可定位抄錄）** | `RB-STEP-G2-ERCC-VERIFY` | `RB-STEP-G2-AR-ROLLBACK` | WP-011（只讀接口；規格來源 WP-010） |
| GATE-EVIDENCE-MINSET | **TT（需從 N4 可定位抄錄）** | `RB-STEP-G2-EVIDENCE-VERIFY` | n/a（證據產出不可回滾；僅可重跑） | WP-011（證據樣式對齊 WP-003） |

**Fail-Closed Note**：若未補齊 gate\_contract\_hash 的可定位抄錄，本文件在「工程門檻」層級視為 FAIL\_CLOSED（見 TT-011-002）。

---

## **8\) Scope / Non-Goals / Route-out Map**

### **8.1 In-Scope（Phase-G/G2）**

* **Always-Report Wrappers**：確保 required checks 在 **PR 與 merge\_group**（若啟用 MQ）情境都「一定回報」同名狀態（RB+WI G2 定義）  
* **Status Hygiene**：狀態命名與結論（conclusion）衛生；避免「名稱漂移」或「未回報」造成治理卡死（審查報告要求與 WP-010 checks\_manifest 的 expected/observed/diff 做 ERCC 對齊）  
* **ERCC（read-only）對齊驗證骨架**：只允許讀取 checks\_manifest 的契約欄位；不得在本 WP 定義/修改 checks\_manifest（越界 → route-out WP-010）  
* **證據與取證衛生**：最小證據集、bundle audit、去敏與 secrets-zero（對齊 RB+WI Guardrails）

### **8.2 Non-Goals（明確越界）**

* **不啟用 / 不配置 Merge Queue**（route-out → WP-013 / RB+WI G4）  
* **不定義 checks\_manifest 規格與生成**（route-out → WP-010）  
* **不裁決 required checks 的「應該有哪些」**（route-out → WP-006 / WP-010 / WP總表）  
* **不承諾任何 repo 當前設定已正確**（未實測 → TT）

### **8.3 Route-out Map（越界必導流）**

| topic | route\_out\_to | locator（Files-first） |
| ----- | ----- | ----- |
| checks\_manifest schema / expected/observed/diff 定義 | WP-010 | `/mnt/data/OMOC_WP-010+RB+WI_v4.0.1-r2.md`（關鍵字：checks\_manifest / expected / observed / diff；不可定位→TT） |
| required checks baseline / presence | WP-006 | `/mnt/data/OMOC_WP-006+RB+WI_v4.0.1-r2.md`（關鍵字：required checks baseline） |
| merge queue enablement & merge\_group 驗證 | WP-013 | `/mnt/data/OMOC_WP-013+RB+WI.md`（如不存在或不可定位→TT） |
| 藍圖層政策裁決 | OMOC\_藍圖 | `BP-1000 / BP-1200`（不可定位→TT） |
| BK/備份與回復矩陣 | WP總表 r2 | `Backup/Restore/Recovery`（不可定位→TT） |

---

## **9\) Tool Decision Matrix（UI / CLI / API / Actions）**

**原則**：能用「Actions 自回報」就不要用「人肉 UI 補救」；能用「gh CLI 讀取」就不要用「API 寫入」。任何「寫入/改設定」都必須先 BK（若 SSOT 可定位），否則 TT。

| task | preferred | allowed | forbidden\_by\_wp011 | evidence\_required |
| ----- | ----- | ----- | ----- | ----- |
| 確保必回報（Always-Report wrapper） | GitHub Actions workflow（on: pull\_request \+ merge\_group；job if: always()） | gh CLI 查詢 runs/statuses；UI 僅做核對 | 直接改 rulesets 的「required checks 清單」作為修補（越界） | workflow YAML（最小骨架）+ run evidence（IDs/結論） |
| Status Hygiene / 名稱對齊（ERCC） | Read-only 對齊腳本/步驟（比較 checks\_manifest vs observed checks） | gh CLI/API 讀取 statuses & check-runs | 在本 WP 內改 checks\_manifest（越界） | ercc\_diff.json \+ 取證截圖/JSON |
| 改 rulesets / branch protection（若必要） | Route-out（Repo Admin Runbook） | UI/gh（視 SSOT 允許） | 在 WP-011 內指示「照網頁貼上命令」 | BK before/after \+ 回滾步驟 |

---

## **10\) Requirements（WP011-REQ-\*）**

**格式強制**：每條需求必含 `SSOT locator` \+ `本檔 anchor` \+ `Acceptance` \+ `Evidence Minset` \+ `Fail Action`。  
**注意**：若 SSOT locator 不可定位，該條自動轉 TT（TEMP\_CLOSED）並在本節標示。

### **WP011-REQ-001 — Always-Report Wrapper 必存在且「必回報」**

* **SSOT locator**：`/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md#[ANCHOR:OMOC-RBWI-G2]`（G2 定義：PR/merge\_group 雙路徑一致回報）  
* **This doc anchor**：`#omoc-wp011-spec-always-report`  
* **Acceptance**：在 PR 與 merge\_group 兩情境中，都出現「同名」check/status（名稱一致），且 workflow 即使前序失敗/取消也會產生最終結論（不得缺回報）。  
* **Evidence minset**：`always-report.yml`（或等價 workflow）+ 兩次 run 證據（PR run / merge\_group run）+ `verdict.json`（本 WP Gate verdict）。  
* **Fail action**：FAIL\_CLOSED → 建 TT（type=GAP；owner\_role=CI/Workflow Owner）並禁止進入後續治理 gate。

### **WP011-REQ-002 — 不得因 filtering/skip 造成 required check 不回報**

* **SSOT locator**：審查報告已裁決必修（skip hazard checklist）  
* **This doc anchor**：`#omoc-wp011-spec-skip-hazard`  
* **Acceptance**：存在「Skip Hazard Checklist」並通過：PR 僅改 docs/非關鍵路徑時，required check 仍會回報（不得卡死）。  
* **Evidence minset**：skip checklist 完整填寫 \+ 測試 PR run evidence（最小變更）。  
* **Fail action**：TEMP\_CLOSED → TT（type=RISK；owner\_role=CI/Workflow Owner）直到測試證據補齊。

### **WP011-REQ-003 — Status Hygiene（命名契約）需可驗收（ERCC read-only）**

* **SSOT locator**：審查報告要求與 WP-010 checks\_manifest expected/observed/diff 做機械化對齊（ERCC）  
* **This doc anchor**：`#omoc-wp011-spec-ercc`  
* **Acceptance**：產出 `ercc_diff.json`；diff=0 才 PASS；diff≠0 → 自動 TT（TEMP\_CLOSED）且禁止「用嘴說對齊」。  
* **Evidence minset**：`checks_manifest.json`（只讀輸入；來源 WP-010）+ `ercc_diff.json` \+ 查詢輸出（statuses/check-runs 摘要）。  
* **Fail action**：TEMP\_CLOSED → TT（type=CONSISTENCY；owner\_role=Evidence Steward / CI Owner）。

### **WP011-REQ-004 — Gate hash 必落地（不可缺欄）**

* **SSOT locator**：N4 gate\_registry / hash 一致化規則（審查裁決：缺失為阻斷級）  
* **This doc anchor**：`#omoc-wp011-version-lock`  
* **Acceptance**：§7.2 Gate Dependencies 內所有 gate\_id 均填 `gate_contract_hash`，且可回指 N4（可定位抄錄）。  
* **Evidence minset**：Gate table \+ N4 locator proof（行距或片段）+ grep 檢查記錄。  
* **Fail action**：FAIL\_CLOSED → TT-011-002（見 §20）。

### **WP011-REQ-005 — Evidence Minset 必表格化且可重跑驗收**

* **SSOT locator**：審查報告要求對齊 N4 的 Evidence Minimum Output Set（verdict.json / evidence\_index.md 等）  
* **This doc anchor**：`#omoc-wp011-evidence-minset`  
* **Acceptance**：Minset 表格含檔名/路徑/產生步驟/驗證器/留存與去敏規則；bundle audit PASS（對齊 WP-003 樣式；不可定位→TT）。  
* **Evidence minset**：見 §12.4 表 \+ `bundle_audit.json`（若採用）+ `evidence_index.md` \+ `verdict.json`  
* **Fail action**：TEMP\_CLOSED → TT（type=GAP；owner\_role=Evidence Steward）。

---

## **11\) Coverage / Trace / Closure Matrix（SSOT 覆蓋 \+ 審查閉環 \+ 舊版覆蓋）**

### **11.1 Review Findings Closure Matrix（全量閉環；CR\_OPEN=0）**

**來源**：審查報告 Findings / TT Register / Patch Skeleton。

| finding\_id | severity | fix\_location (anchor) | fix\_result | acceptance\_method | evidence\_required | status |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| F-011-001（SSOT drift：引用 r1） | BLOCKER | `#omoc-wp011-version-lock` \+ `#omoc-wp011-authority` | 本版明示 r1 superseded；所有 SSOT 指向 r2 | grep：不得出現 `WP總表_v4.0.1-r1` | grep proof \+ locator proof | CLOSED（文件層） |
| F-011-002（Gate hash 缺失） | BLOCKER | `#omoc-wp011-version-lock` | 建 Gate Dependencies 表；但 hash 需 N4 可定位抄錄 | N4 對照核對 | 表格+N4片段 | TEMP\_CLOSED→TT-011-002 |
| F-011-003（merge\_group \+ always-report YAML 骨架缺） | MAJOR | `#omoc-wp011-spec-always-report` \+ `#omoc-wp011-runbook` | 補最小 YAML 骨架與驗收步驟 | PR/merge\_group 兩情境跑通 | workflow \+ run evidence | TEMP\_CLOSED→TT-011-003 |
| F-011-004（skip/filtering 風險未落地） | MAJOR | `#omoc-wp011-spec-skip-hazard` \+ `#omoc-wp011-wi` | 補清單與替代策略 | docs-only PR 仍回報 | checklist \+ run evidence | TEMP\_CLOSED→TT-011-004 |
| F-011-005（ERCC 機械化缺） | MAJOR | `#omoc-wp011-spec-ercc` \+ `#omoc-wp011-runbook` | 補 ercc\_diff 產出/Fail-Closed | diff=0 才 PASS | ercc\_diff.json | TEMP\_CLOSED→TT-011-005 |
| F-011-006（Evidence Minset 不明） | MAJOR | `#omoc-wp011-evidence-minset` | 表格化 minset | minset 完整+audit PASS | artifacts \+ audit | TEMP\_CLOSED→TT-011-006 |
| F-011-007（UI 變更缺 BK/回滾卡） | MINOR | `#omoc-wp011-wi-settings-change` | 補 Settings Change Card 模板 | before/after/rollback 可驗收 | BK evidence | TEMP\_CLOSED→TT-011-007 |
| F-011-009（Web SUPPORT 防注入未落地） | MINOR | `#omoc-wp011-security` \+ `#omoc-wp011-web-evidence` | Web 僅 Appendix；每筆綁 finding/TT | lint：正文無裸 URL | appendix mapping | CLOSED（文件層） |
| F-011-010（缺 canonical version block） | MAJOR | `#omoc-wp011-doc-control` | 已補 | header 可機讀 | n/a | CLOSED |

### **11.2 Legacy Coverage Checklist（舊版 → 新版覆蓋）**

**說明**：由於 TARGET（舊版 WP-011）在本環境未提供完整可定位段落索引，本節採「主題覆蓋」+「審查報告缺口閉環」雙軸，確保工程性取代；若需逐段落 1:1 行距對照，建立 TT-011-LGC-001。

| legacy\_topic（舊版常見段落） | new\_anchor | coverage\_status |
| ----- | ----- | ----- |
| Scope/Non-goals（不啟用 MQ、不定義 manifest） | `#omoc-wp011-scope` | PASS |
| Always-Report 概念與必要性 | `#omoc-wp011-spec-always-report` | PASS |
| Status Hygiene（命名/狀態） | `#omoc-wp011-spec-status-hygiene` | PASS |
| ERCC / manifest 對齊（只讀） | `#omoc-wp011-spec-ercc` | PASS（實測 TT） |
| Gate / hash / BK / rollback | `#omoc-wp011-version-lock` \+ `#omoc-wp011-runbook` | PARTIAL（hash/BK 需 SSOT 可定位補齊→TT） |
| Evidence minset / bundle audit | `#omoc-wp011-evidence-minset` | PASS（驗收 TT） |
| WI 任務卡 | `#omoc-wp011-wi` | PASS |

---

## **12\) Spec：Always-Report Wrappers & Status Hygiene**

### **12.1 核心定義（必須一致用詞）**

* **Always-Report Wrapper**：一個「不管前序如何都會回報」的 workflow/job，用來確保 required check/status **一定出現**（避免缺回報）。  
* **Status Hygiene**：對「狀態名稱（context/check name）」與「狀態結論（success/failure/cancelled/skipped/neutral 等）」做一致化、可驗收、可追溯的規格，並以 ERCC 比對機械化落地。  
* **ERCC（Expected↔Reported Checks Consistency）**：以 checks\_manifest（expected）對照實際 reported checks（observed），輸出 diff（只讀流程；本 WP 不得改 manifest）。

### **12.2 Always-Report Wrapper 規格**

**Normative interface（Files-first）**：G2 要求「PR 與 merge\_group 兩路徑一致回報」

**規格（本 WP 可裁決部分）**：

1. **事件覆蓋**：workflow 必須同時覆蓋：  
   * `pull_request`（PR path）  
   * `merge_group`（MQ path；若 repo 未啟用 MQ，本條轉 TT-011-003 以便未來啟用時重測）  
2. **必回報策略**：  
   * 至少一個 job 使用 `if: always()`（或等價語義）以確保 job 產生結論。  
   * job 需產生 **固定且可預期** 的 check name（不得隨矩陣/條件而改名；否則破壞命名契約）。  
3. **一致命名**：  
   * PR path 與 merge\_group path 產生的 check name 必須一致（同一條 required check 不能分裂成兩個不同名字）。  
4. **輸出**：  
   * 需輸出最小 evidence：run id / head sha / conclusion / check name 列表摘要（可寫入 `evidence/_acceptance/wp011/`）。

**最小 YAML 骨架（僅骨架；不聲稱能直接用於任一 repo）**：

name: always-report

on:  
  pull\_request:  
  merge\_group:

jobs:  
  always\_report:  
    if: ${{ always() }}  
    runs-on: ubuntu-latest  
    steps:  
      \- name: emit  
        run: |  
          echo "always-report wrapper executed"

**Fail-Closed**：若此 wrapper 因 paths-ignore/if/branch filtering 被跳過，等同「不存在」（見下一節）。

### **12.3 Skip Hazard 規格（不得讓 required checks 被跳過）**

**要求（來源：審查必修）**：required checks 不應被 filtering/skip，否則落入 “Waiting for status …” 類死鎖風險；必須提升為可驗收門檻。

**Skip Hazard Checklist（必填）**

| check\_item | forbidden\_pattern | safer\_alternative | verification |
| ----- | ----- | ----- | ----- |
| paths-ignore / branches-ignore | required workflow 使用 ignore 導致不觸發 | 用 always-report wrapper 作「無條件回報」保底 | docs-only PR 仍有回報 |
| job/workflow `if:` | 以條件跳過整個 workflow/job | 只在「主要任務」上做 if，保留「回報 job」always() | 任意失敗/取消仍回報 |
| needs/concurrency | 依賴鏈失敗使回報 job 不執行 | 回報 job 不依賴會被跳過的 jobs | 模擬上游失敗仍回報 |
| matrix 造成名稱漂移 | matrix 展開導致 check name 改變/倍增 | 固定 wrapper check name，不用 matrix 命名 | name 列表一致 |

### **12.4 Status Hygiene 規格（命名 \+ 結論分類）**

**規格目標**：

* 任何 required check 的「名稱」必須可穩定對齊（不漂移、不分裂、不隱式改名）。  
* 任何 required check 的「結論」必須可分類並可驗收（避免 ambiguous/unknown）。

**狀態結論分類（工程用，非平台宣告）**

* PASS-like：success  
* FAIL-like：failure, timed\_out  
* NON-PASS-but-reported：cancelled, skipped, neutral（是否允許作為 required check 結論 → 需以 SSOT/平台規則實測；本 WP 不臆測 → TT）

### **12.5 ERCC（read-only）規格：expected ↔ observed 差異輸出**

**來源要求**：審查要求把「命名契約」落到 checks\_manifest expected/observed/diff 的機械化對齊。

**ERCC I/O 契約（本 WP 可裁決）**

* **Input (read-only)**：`checks_manifest.json`（由 WP-010 提供；本 WP 不生成、不修改）  
* **Observed**：透過 gh/API 讀取某次 head\_sha 的 check-runs / statuses 名稱列表與結論摘要  
* **Output**：`ercc_diff.json`  
  * `missing_expected[]`：expected 有、observed 無（= 最致命：缺回報）  
  * `unexpected_observed[]`：observed 有、expected 無（= 可能命名漂移）  
  * `name_mismatch[]`：疑似 alias/rename 漂移  
* **Pass/Fail 規則**：  
  * diff 全空 → PASS  
  * 任一不空 → **TEMP\_CLOSED \+ TT**（禁止「人工判斷當作已對齊」）

### **12.6 Evidence Minset（WP-011）**

**來源要求**：Evidence Minset 必須對齊 N4（審查裁決：不得只宣告）。

| artifact | path (recommend) | generator(step) | validator | retention | redact\_rules |
| ----- | ----- | ----- | ----- | ----- | ----- |
| verdict.json | `evidence/_acceptance/wp011/verdict.json` | `RB-STEP-G2-EVIDENCE-COLLECT` | schema check（若無→TT） | keep | secrets-zero |
| evidence\_index.md | `evidence/_acceptance/wp011/evidence_index.md` | `RB-STEP-G2-EVIDENCE-COLLECT` | link/locator lint（若無→TT） | keep | no tokens |
| ercc\_diff.json | `evidence/_acceptance/wp011/ercc_diff.json` | `RB-STEP-G2-ERCC-VERIFY` | json parse | keep | mask ids if needed |
| run\_proof.json | `evidence/_acceptance/wp011/run_proof.json` | `RB-STEP-G2-AR-VERIFY` | json parse | keep | no secrets |
| bundle\_audit.json（可選，若採 WP-003 樣式） | `evidence/_acceptance/wp011/bundle_audit.json` | packager | audit==PASS | keep | mask logs |

---

## **13\) Runbook（可重跑、可回滾、可取證）**

**Runbook 角色分工**

* **CI/Workflow Owner**：workflow 設計、跑通 PR/merge\_group  
* **Evidence Steward**：證據產出、去敏、bundle/audit  
* **Repo Admin**：若需動 rulesets/required checks，必 route-out（本 WP 僅提供變更卡模板）

### **RB-STEP-G2-AR-VERIFY — Always-Report 回報驗證**

* **Inputs**：  
  * repo / branch / PR number（環境實測必要，未提供→TT）  
  * always-report workflow 檔案路徑（例如 `.github/workflows/always-report.yml`）  
* **Commands（示例；不保證所有環境可用）**：  
  * `gh run list --workflow <workflow_name> --limit 20`  
  * `gh run view <run_id> --json conclusion,event,headSha,url`  
* **Expected outputs**：  
  * `run_proof.json`（至少包含：event=pull\_request 的 run 一筆）  
* **Failure branches**：  
  * 找不到 run / check name 不一致 → TT-011-003（TEMP\_CLOSED）  
* **Rollback**：  
  * workflow 調整屬 repo 變更；回滾到上一版 commit（實務由 repo 流程裁決；本 WP 不臆測 → TT）

### **RB-STEP-G2-ERCC-VERIFY — ERCC 對齊（read-only）**

* **Inputs**：`checks_manifest.json`（只讀）、head\_sha（PR 或 merge\_group）  
* **Procedure（骨架）**：  
  1. 讀取 expected check names（來源：checks\_manifest）  
  2. 查詢 observed check names（gh/API）  
  3. 生成 `ercc_diff.json`  
* **Pass criteria**：diff 全空  
* **Fail action**：diff 非空 → TT-011-005（TEMP\_CLOSED）

### **RB-STEP-G2-EVIDENCE-COLLECT — 證據收集與去敏**

* **Outputs**：  
  * `verdict.json`（包含 Gate verdict、TT 連結、locators）  
  * `evidence_index.md`（包含本檔 anchors、SSOT locator proof、run ids）  
* **Secrets-Zero**：  
  * 不得收錄 PAT/token/private keys；logs 如含敏感字串必遮罩。

### **RB-STEP-G2-EVIDENCE-VERIFY — Evidence Minset 驗證**

* **Check list**：  
  * Minset 表中列出的必備 artifacts 是否存在  
  * JSON 可解析、index 可導航  
* **Fail action**：缺件 → TT-011-006（TEMP\_CLOSED）

### **RB-STEP-G2-AR-ROLLBACK — 回滾最小策略（Fail-Closed）**

* **原則**：本 WP 不定義 BK 細節（以 N4 BK/Recovery 可定位條文為準；不可定位→TT）  
* **最小可執行回滾**（骨架）：  
  * revert workflow 變更 commit  
  * 恢復到「最後一次 PASS 的 always-report」版本  
* **Evidence**：rollback 前後 run\_proof 對比（若未實測→TT）

---

## **14\) WI（任務卡式）**

### **WI-011-001 — 建立/核對 Always-Report Wrapper（必回報）**

* **When**：任何 required checks 有「未回報」風險、或要支援 merge\_group 路徑  
* **Do**：建立 always-report workflow（見 §12.2 骨架）並跑 RB-STEP-G2-AR-VERIFY  
* **Output**：`run_proof.json`  
* **Acceptance**：PR path 有回報；merge\_group path（若啟用）有回報  
* **Fail**：TT-011-003

### **WI-011-002 — Skip Hazard Checklist（禁止被跳過）**

* **When**：required workflow 存在 paths-ignore/if/needs/matrix 命名風險  
* **Do**：填 §12.3 checklist；用 docs-only PR 驗證仍回報  
* **Output**：checklist \+ 測試 run evidence  
* **Fail**：TT-011-004

### **WI-011-003 — ERCC 對齊（只讀）**

* **When**：rulesets/branch protection 要求的 check 名稱疑似與實際不一致  
* **Do**：跑 RB-STEP-G2-ERCC-VERIFY，輸出 `ercc_diff.json`  
* **Acceptance**：diff 全空才 PASS  
* **Fail**：TT-011-005

### **WI-011-004 — Evidence Minset 產出（可回放）**

* **When**：每次 WP-011 Gate 驗收  
* **Do**：跑 RB-STEP-G2-EVIDENCE-COLLECT \+ RB-STEP-G2-EVIDENCE-VERIFY  
* **Acceptance**：minset 齊全、可解析  
* **Fail**：TT-011-006

### **WI-011-005 — Settings Change Card（若必須改設定，先 route-out）**

**注意**：改 rulesets/required checks 屬越界；本卡僅提供「可取證/可回滾」模板，實施需 route-out 由 Repo Admin Runbook 裁決。

| field | value |
| ----- | ----- |
| change\_id | CHG-011-\_\_\_\_ |
| change\_type | rulesets / branch protection / required checks（route-out） |
| bk\_id | BK-\_\_\_\_（SSOT 定義；不可定位→TT） |
| before\_evidence | 截圖/JSON（去敏） |
| after\_evidence | 截圖/JSON（去敏） |
| rollback\_plan | revert / restore BK（可驗收） |
| post\_verify | ERCC diff=0 \+ always-report 回報存在 |

---

## **15\) Gates & DoD（PASS / TEMP\_CLOSED / FAIL\_CLOSED）**

### **15.1 Gate Threshold Matrix**

| gate | PASS | TEMP\_CLOSED | FAIL\_CLOSED |
| ----- | ----- | ----- | ----- |
| GATE-ALWAYS-REPORT | PR path 回報存在且名稱固定；（若啟用 MQ）merge\_group path 回報亦存在 | 僅有文件骨架，缺環境 run evidence | 無回報或名稱漂移導致 required check 缺失 |
| GATE-REQCHECK-CANONICAL（ERCC） | `ercc_diff.json` 全空 | 有 diff → 已建 TT 並可追蹤 | 缺 ERCC 產出且仍宣稱已對齊 |
| GATE-EVIDENCE-MINSET | minset 齊全可解析 | 缺一兩件但已建 TT | 缺關鍵件（verdict/index）或含 secrets |

### **15.2 Definition of Done（WP-011）**

* 文件層：本檔所有必填章節存在、可機器檢索（anchors/TOC/JSON block）  
* 工程層：至少完成 §16 Quickpath，並產出 evidence minset（未實測→TT）

---

## **16\) Acceptance Quickpath（最小可回放閉環）**

1. 建/核對 always-report workflow（§12.2）  
2. 跑 `RB-STEP-G2-AR-VERIFY` → 產出 `run_proof.json`  
3. 跑 `RB-STEP-G2-ERCC-VERIFY` → 產出 `ercc_diff.json`（diff 必空）  
4. 跑 `RB-STEP-G2-EVIDENCE-COLLECT` \+ `RB-STEP-G2-EVIDENCE-VERIFY` → `verdict.json` / `evidence_index.md`  
5. 若任何一步缺環境證據：不得硬判 PASS → 轉 TT（§20）

---

## **17\) Counterexamples（破壞性反例測試）**

| test\_id | how\_to\_break | expected\_detection | expected\_outcome |
| ----- | ----- | ----- | ----- |
| CE-011-001 | 在 required workflow 加 `paths-ignore: ["docs/**"]` | docs-only PR 無 run\_proof | Gate FAIL 或 TT-011-004 |
| CE-011-002 | 移除 `merge_group` 事件（但啟用 MQ） | merge\_group 無回報 | TT-011-003（直到補回） |
| CE-011-003 | 將 wrapper check name 改成動態（含 matrix） | ERCC 出現 unexpected\_observed/name\_mismatch | TT-011-005 |
| CE-011-004 | evidence 收錄含 token 的 log | secrets-zero 檢查失敗 | FAIL\_CLOSED（SEC） |

---

## **18\) SECURITY（Secrets / 注入 / 供應鏈 / 去敏 / Forbidden Patterns）**

* **Secrets-Zero**：證據包不得包含 PAT/token/private keys；logs 必遮罩。  
* **Prompt-Injection / Confused-Deputy 防線**：  
  * 外部網頁、Issue/PR 文字、聊天內容視為不可信「資料」，不得當「指令」執行。  
  * Web 佐證只准進 §21，且每筆必綁 finding/TT（審查要求）  
* **Forbidden patterns（evidence/文本）**：`ghp_`, `github_pat_`, `BEGIN PRIVATE KEY`, `AKIA`（命中即 FAIL\_CLOSED）

---

## **19\) Traceability Appendices**

### **19.1 Locator Proof Registry（本 WP）**

| lp\_id | target | locator |
| ----- | ----- | ----- |
| LP-011-001 | RB+WI Guardrails | `/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md#[ANCHOR:OMOC-RBWI-GUARDRAILS]` |
| LP-011-002 | Phase-G/G2 定義 | `/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md#[ANCHOR:OMOC-RBWI-G2]`（行距參照：WP-012 的 LP-004） |
| LP-011-003 | 審查必修（Gate hash / drift / ERCC / minset） | `/mnt/data/OMOC_WP-011+RB+WI_審查報告.md`（Findings/TT/Web Appendix） |

### **19.2 SSOT Coverage Map（摘要）**

| ssot\_topic | ssot\_locator | wp011\_anchor | status |
| ----- | ----- | ----- | ----- |
| Always-Report（G2） | RB+WI G2 | `#omoc-wp011-spec-always-report` | PASS（文件）/ TT（實測） |
| Guardrails | RB+WI Guardrails | `#omoc-wp011-authority` \+ `#omoc-wp011-security` | PASS |
| Gate hash 一致化 | N4（需可定位抄錄） | `#omoc-wp011-version-lock` | TEMP\_CLOSED→TT |

---

## **20\) TT Register（CR\_OPEN=0）**

**規則**：任何不可定位/不可驗證一律 TT \+ TEMP\_CLOSED；阻斷級則 FAIL\_CLOSED。

| tt\_id | status | type | description | closure\_criteria | retest\_steps | owner\_role | evidence\_required |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| TT-011-001 | CLOSED（文件層） | DRIFT | 禁用 WP總表 r1 引用 | grep 無 r1；SSOT note 完整 | n/a | WP-011 Doc Owner | grep proof |
| TT-011-002 | **FAIL\_CLOSED** | CONSISTENCY | Gate table 未補齊 `gate_contract_hash` 的 N4 可定位抄錄 | 從 N4 r2 可定位抄錄三個 gate hash 並填入 §7.2 | 對照 N4 片段核對 | WP-011 Doc Owner | 表格 \+ N4 locator proof |
| TT-011-003 | TEMP\_CLOSED | GAP | merge\_group \+ always() 的最小 wrapper 在環境中未實測 | PR 與 merge\_group 皆回報同名 check | 建 PR 測試 \+（若啟用 MQ）merge\_group 測試 | CI/Workflow Owner | workflow \+ run evidence |
| TT-011-004 | TEMP\_CLOSED | RISK | filtering/skip 風險控管需環境驗證 | docs-only PR 仍回報 required check | 建 docs-only PR 測試 | CI/Workflow Owner | run evidence \+ checklist |
| TT-011-005 | TEMP\_CLOSED | CONSISTENCY | ERCC diff 產出與判斷需實測 | `ercc_diff.json` diff=0 | 跑 ERCC 步驟 | Evidence Steward | checks\_manifest \+ ercc\_diff.json |
| TT-011-006 | TEMP\_CLOSED | GAP | Evidence Minset 與 audit PASS 需落地 | minset 全件 \+（若採）bundle\_audit PASS | 跑 evidence collect/verify | Evidence Steward | artifacts \+ audit |
| TT-011-007 | TEMP\_CLOSED | FEASIBILITY | BK/回滾卡需對齊 N4 BK 矩陣可定位條文 | BK locator 可定位 \+ before/after/rollback evidence | 依 route-out 流程實作一次 | Repo Admin | BK evidence |
| TT-011-LGC-001 | TEMP\_CLOSED | TRACE | 舊版 WP-011 逐段落 1:1 覆蓋對照未建立 | 提供舊版段落索引（行距/錨點）並逐段對照 | 建立 legacy map 表 | WP-011 Doc Owner | legacy locator proof |

---

## **21\) Web Evidence Appendix（SUPPORT-only）**

本段僅承接審查報告已列之 Web SUPPORT（本次任務未額外使用 web tool）；不得升格為 NORMATIVE；每筆必綁 finding/TT；accessed\_at 以 Asia/Taipei 記錄。

| source\_id | title | publisher/domain | url | accessed\_at (Asia/Taipei) | why\_relevant | related\_finding\_ids |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| W-01 | Managing a merge queue | docs.github.com | [https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/configuring-pull-request-merges/managing-a-merge-queue](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/configuring-pull-request-merges/managing-a-merge-queue) | 2026-02-19T(UTC+08) | merge\_group 與 MQ required checks 行為佐證 | F-011-003 / TT-011-003 |
| W-04 | Troubleshooting required status checks | docs.github.com | [https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/collaborating-on-repositories-with-code-quality-features/troubleshooting-required-status-checks](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/collaborating-on-repositories-with-code-quality-features/troubleshooting-required-status-checks) | 2026-02-19T(UTC+08) | filtering/skip 造成 waiting 類問題佐證 | F-011-004 / TT-011-004 |
| W-07 | merge\_group webhook/event changelog | github.blog | [https://github.blog/changelog/2022-08-18-merge-group-webhook-event-and-github-actions-workflow-trigger/](https://github.blog/changelog/2022-08-18-merge-group-webhook-event-and-github-actions-workflow-trigger/) | 2026-02-19T(UTC+08) | merge\_group 的官方背景補充 | F-011-003 |

---

## **22\) Glossary & Normalization（名詞/檔名/欄位一致性）**

* **required checks / required status checks**：治理層要求必須回報的檢查（命名需穩定）。  
* **check name / context**：狀態名稱（ERCC 對齊核心欄位）。  
* **conclusion**：檢查結論（success/failure/cancelled/skipped/neutral…；允許性需實測→TT）  
* **checks\_manifest.json**：WP-010 的契約檔（本 WP 只讀）。

---

## **23\) Change Log（舊版 → 新版）**

* 新增 Canonical Version Block（修補 F-011-010）  
* SSOT Resolution：明示 WP總表 r1 superseded、禁止引用（修補 F-011-001）  
* Gate Dependencies 表格化（要求補齊 gate\_contract\_hash；未補齊→TT-011-002）  
* Always-Report / merge\_group YAML 最小骨架 \+ 驗收步驟（修補 F-011-003）  
* Skip Hazard Checklist（修補 F-011-004）  
* ERCC read-only 機械化（修補 F-011-005）  
* Evidence Minset 表格化 \+ 去敏規則（修補 F-011-006/009）

---

## **24\) machine\_summary.json**

{  
  "doc": {  
    "external\_name": "OMOC｜WP-011（Phase-G/G2 Always-Report Wrappers & Status Hygiene）",  
    "internal\_short\_name": "WP-011",  
    "canonical\_version": "v4.0.1-r2",  
    "generated\_at\_tz": "Asia/Taipei",  
    "generated\_at": "2026-02-19T00:00:00+08:00",  
    "baseline\_web\_date": "2026-02-14",  
    "mode": "Files-first \+ WTNA(Web SUPPORT-only)",  
    "phase": "Phase-G",  
    "scope\_tag": "G2",  
    "supersedes": "/mnt/data/OMOC\_WP-011+RB+WI.md",  
    "review\_fix\_spec": "/mnt/data/OMOC\_WP-011+RB+WI\_審查報告.md",  
    "overall\_verdict": "PASS(document) / TEMP\_CLOSED(env-tests)"  
  },  
  "authority\_stack": {  
    "normative": \[  
      "/mnt/data/OMOC\_藍圖\_v4.0.1-r1.md",  
      "/mnt/data/OMOC\_施工RB+WI\_合冊\_v4.0.1-r1.md",  
      "/mnt/data/OMOC\_施工skills\_合冊\_v4.0.1-r2.md",  
      "/mnt/data/OMOC\_實作+WP總表\_v4.0.1-r2.md"  
    \],  
    "peer\_style\_lock": \[  
      "/mnt/data/OMOC\_WP-001+RB+WI\_v4.0.1-r2.md",  
      "/mnt/data/OMOC\_WP-002+RB+WI\_v4.0.1-r2.md",  
      "/mnt/data/OMOC\_WP-003+RB+WI\_v4.0.1-r2.md",  
      "/mnt/data/OMOC\_WP-004+RB+WI\_v4.0.1-r2.md",  
      "/mnt/data/OMOC\_WP-005+RB+WI\_v4.0.1-r2.md",  
      "/mnt/data/OMOC\_WP-006+RB+WI\_v4.0.1-r2.md",  
      "/mnt/data/OMOC\_WP-007+RB+WI\_v4.0.1-r2.md",  
      "/mnt/data/OMOC\_WP-008+RB+WI\_v4.0.1-r2.md",  
      "/mnt/data/OMOC\_WP-009+RB+WI\_v4.0.1-r2.md",  
      "/mnt/data/OMOC\_WP-010+RB+WI\_v4.0.1-r2.md"  
    \],  
    "target\_superseeded": \[  
      "/mnt/data/OMOC\_WP-011+RB+WI.md"  
    \],  
    "web\_support\_only": true  
  },  
  "gates": {  
    "primary\_gate\_id": "GATE-ALWAYS-REPORT",  
    "gate\_dependencies": \[  
      {  
        "gate\_id": "GATE-ALWAYS-REPORT",  
        "gate\_contract\_hash": "TT",  
        "verify\_steps\_ref": "RB-STEP-G2-AR-VERIFY",  
        "rollback\_ref": "RB-STEP-G2-AR-ROLLBACK"  
      },  
      {  
        "gate\_id": "GATE-REQCHECK-CANONICAL",  
        "gate\_contract\_hash": "TT",  
        "verify\_steps\_ref": "RB-STEP-G2-ERCC-VERIFY",  
        "rollback\_ref": "RB-STEP-G2-AR-ROLLBACK"  
      },  
      {  
        "gate\_id": "GATE-EVIDENCE-MINSET",  
        "gate\_contract\_hash": "TT",  
        "verify\_steps\_ref": "RB-STEP-G2-EVIDENCE-VERIFY",  
        "rollback\_ref": null  
      }  
    \]  
  },  
  "requirements": \[  
    "WP011-REQ-001",  
    "WP011-REQ-002",  
    "WP011-REQ-003",  
    "WP011-REQ-004",  
    "WP011-REQ-005"  
  \],  
  "evidence\_minset": \[  
    "evidence/\_acceptance/wp011/verdict.json",  
    "evidence/\_acceptance/wp011/evidence\_index.md",  
    "evidence/\_acceptance/wp011/ercc\_diff.json",  
    "evidence/\_acceptance/wp011/run\_proof.json"  
  \],  
  "tt\_register": \[  
    "TT-011-002",  
    "TT-011-003",  
    "TT-011-004",  
    "TT-011-005",  
    "TT-011-006",  
    "TT-011-007",  
    "TT-011-LGC-001"  
  \]  
}

