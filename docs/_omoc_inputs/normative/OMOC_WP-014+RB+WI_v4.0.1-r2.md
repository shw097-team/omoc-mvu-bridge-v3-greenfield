# **《OMOC\_WP-014+RB+WI》v4.0.1-r2（Phase-G/G5）Drift Guard & Closure Management**

\[ANCHOR:OMOC-WP014-00-TITLE\]

---

## **1\) Document Control / Canonical Version Block**

\[ANCHOR:OMOC-WP014-01-DOC-CONTROL\]

| field | value |
| ----- | ----- |
| doc\_id | OMOC\_WP-014+RB+WI |
| external\_name | WP-014（Phase-G/G5）Drift Guard & Closure Management |
| internal\_short\_name | WP014-Drift-Closure |
| phase | Phase-G / G5 |
| version | v4.0.1-r2 |
| generated\_at | 2026-02-19T12:32:18+08:00 |
| timezone | Asia/Taipei (UTC+08:00) |
| baseline\_web\_date | 2026-02-14 |
| mode | Files-first（附件/專案檔案庫為 NORMATIVE）＋WTNA（Web SUPPORT-only，Quarantine） |
| supersedes | /mnt/data/OMOC\_WP-014+RB+WI.md（legacy v4.0.1-r1） |
| review\_fix\_spec | /mnt/data/OMOC\_WP-014+RB+WI\_審查報告.md（F-014-001\~014 全量閉環） |
| ssot\_lock | { bp: v4.0.1-r1, rbwi: v4.0.1-r1, skills: v4.0.1-r2, wp\_total: v4.0.1-r2 } |
| compat\_note | 本文件採 **WP 總表 r2** 為唯一有效版本；任何引用 r1（尤其 WP總表 r1）屬 superseded 汙染 → 以掃描=0 為門檻；違反即 FAIL\_CLOSED。 |
| overall\_verdict | TEMP\_CLOSED（文件層：閉環規格/門檻已具；施工層：需依 §18 Quickpath 實跑出證據後方可轉 PASS） |
| CR\_OPEN | 0 |

---

## **2\) TOC（repo-local anchors only）**

\[ANCHOR:OMOC-WP014-02-TOC\]

* [3\) Diátaxis 導讀](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/69968fca-2f94-83ab-bafa-68aadd86d5e2#omoc-wp014-03-diataxis)  
* [4\) Anchor Registry / Quick Index](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/69968fca-2f94-83ab-bafa-68aadd86d5e2#omoc-wp014-04-anchor-registry)  
* [5\) Authority Stack & SSOT Resolution（含 Version Lock \+ superseded 禁用）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/69968fca-2f94-83ab-bafa-68aadd86d5e2#omoc-wp014-05-authority)  
* [6\) Doc Inventory（sha256/lines \+ locator proof）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/69968fca-2f94-83ab-bafa-68aadd86d5e2#omoc-wp014-06-doc-inventory)  
* [7\) Scope / Non-Goals / Route-out Map](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/69968fca-2f94-83ab-bafa-68aadd86d5e2#omoc-wp014-07-scope)  
* [8\) Tool Decision Matrix（UI/gh/API/Artifacts）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/69968fca-2f94-83ab-bafa-68aadd86d5e2#omoc-wp014-08-tool-matrix)  
* [9\) Definitions / Glossary / Normalization](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/69968fca-2f94-83ab-bafa-68aadd86d5e2#omoc-wp014-09-defs)  
* [10\) Requirements（WP014-REQ-\*）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/69968fca-2f94-83ab-bafa-68aadd86d5e2#omoc-wp014-10-requirements)  
* [11\) Coverage / Trace / Closure Matrix](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/69968fca-2f94-83ab-bafa-68aadd86d5e2#omoc-wp014-11-matrix)  
* [12\) Interface Contract（WP-010\~013 硬路由）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/69968fca-2f94-83ab-bafa-68aadd86d5e2#omoc-wp014-12-interface)  
* [13\) Drift Guard Spec（分類/偵測/處置/降級）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/69968fca-2f94-83ab-bafa-68aadd86d5e2#omoc-wp014-13-drift-guard)  
* [14\) Closure Management Spec（TT lifecycle / tt\_export.json / 節奏）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/69968fca-2f94-83ab-bafa-68aadd86d5e2#omoc-wp014-14-closure-mgmt)  
* [15\) Runbook（可重跑）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/69968fca-2f94-83ab-bafa-68aadd86d5e2#omoc-wp014-15-runbook)  
* [16\) Work Instructions（一步一驗收）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/69968fca-2f94-83ab-bafa-68aadd86d5e2#omoc-wp014-16-wi)  
* [17\) Gates & DoD（含判定優先序決策表）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/69968fca-2f94-83ab-bafa-68aadd86d5e2#omoc-wp014-17-gates)  
* [18\) Acceptance Quickpath（最小可回放閉環）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/69968fca-2f94-83ab-bafa-68aadd86d5e2#omoc-wp014-18-quickpath)  
* [19\) Counterexamples / Destructive Review Tests（≥8）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/69968fca-2f94-83ab-bafa-68aadd86d5e2#omoc-wp014-19-counterexamples)  
* [20\) SECURITY（Secrets Zero / 注入防線 / 供應鏈 / Fail-Closed）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/69968fca-2f94-83ab-bafa-68aadd86d5e2#omoc-wp014-20-security)  
* [21\) Traceability Appendices](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/69968fca-2f94-83ab-bafa-68aadd86d5e2#omoc-wp014-21-trace-appendix)  
* [22\) TT Register（CR\_OPEN=0）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/69968fca-2f94-83ab-bafa-68aadd86d5e2#omoc-wp014-22-tt-register)  
* [23\) Web Evidence Appendix（SUPPORT-only \+ Quarantine）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/69968fca-2f94-83ab-bafa-68aadd86d5e2#omoc-wp014-23-web-evidence)  
* [24\) Change Log（Findings 修補映射）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/69968fca-2f94-83ab-bafa-68aadd86d5e2#omoc-wp014-24-change-log)  
* [25\) machine\_summary.json（純 JSON）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/69968fca-2f94-83ab-bafa-68aadd86d5e2#omoc-wp014-25-machine-summary)

---

## **3\) Diátaxis 導讀**

\[ANCHOR:OMOC-WP014-03-DIATAXIS\]

### **Tutorial（新手路徑：把漂移治理「做得動」）**

* 依 §18 Quickpath：先跑 **Preflight → BK → Drift Scan → Closure Update → Evidence Bundle**，產出最小閉環。  
* 成功後再補齊：§19 反例測試、§23 Web Quarantine、§21 Trace 附錄。

### **How-to（常見任務）**

* 「UI 路徑改了怎麼辦？」→ §13.4 UI Drift → §17 決策表（漂移即 TT / 降級），再補 Web Quarantine（§23）。  
* 「required checks contexts 漂移？」→ §13.3 ERCC Drift → 重新生成 gate\_contract 指紋（§11/§17）並更新 closure\_matrix。  
* 「TT 堆積要怎麼可稽核？」→ §14.2 TT lifecycle \+ §14.3 tt\_export.json。

### **Reference（規格/表格/Schema）**

* Requirement 清單：§10  
* Coverage/Closure Matrix：§11  
* Gate 指紋與驗證：§11.3 / §17  
* TT Export Schema：§14.3

### **Explanation（為什麼要這樣）**

* 平台（GitHub）UI/語義可變：不治理就會把「回放」變成「回憶」。本 WP 的工作是把「可變」變成「可檢測、可降級、可閉環」。

---

## **4\) Anchor Registry / Quick Index**

\[ANCHOR:OMOC-WP014-04-ANCHOR-REGISTRY\]

| section | anchor |
| ----- | ----- |
| Document Control | \#omoc-wp014-01-doc-control |
| Authority Stack | \#omoc-wp014-05-authority |
| Doc Inventory | \#omoc-wp014-06-doc-inventory |
| Tool Decision Matrix | \#omoc-wp014-08-tool-matrix |
| Requirements | \#omoc-wp014-10-requirements |
| Coverage/Closure Matrix | \#omoc-wp014-11-matrix |
| Interface Contract | \#omoc-wp014-12-interface |
| Drift Guard Spec | \#omoc-wp014-13-drift-guard |
| Closure Management | \#omoc-wp014-14-closure-mgmt |
| Runbook | \#omoc-wp014-15-runbook |
| Work Instructions | \#omoc-wp014-16-wi |
| Gates & DoD | \#omoc-wp014-17-gates |
| Quickpath | \#omoc-wp014-18-quickpath |
| Counterexamples | \#omoc-wp014-19-counterexamples |
| Security | \#omoc-wp014-20-security |
| TT Register | \#omoc-wp014-22-tt-register |
| Web Evidence Appendix | \#omoc-wp014-23-web-evidence |
| Change Log | \#omoc-wp014-24-change-log |
| machine\_summary.json | \#omoc-wp014-25-machine-summary |

---

## **5\) Authority Stack & SSOT Resolution**

\[ANCHOR:OMOC-WP014-05-AUTHORITY\]

### **5.1 Authority Stack（裁決優先序；No-Source-No-Norm）**

1. **N1** `/mnt/data/OMOC_藍圖_v4.0.1-r1.md`（Blueprint / 法條級）  
2. **N2** `/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md`（Evidence Contract / 施工可回放）  
3. **N3** `/mnt/data/OMOC_施工skills_合冊_v4.0.1-r2.md`（落地細則 / 禁 secrets / ERCC 權威來源優先序）  
4. **N4** `/mnt/data/OMOC_實作+WP總表_v4.0.1-r2.md`（WP Master / machine-readable appendix / gate registry）  
5. **N5** 本文件（WP-014 r2；不得覆寫 N1\~N4 的 MUST/SHALL）

### **5.2 Version Lock Table（強制）**

| item | locked\_version | status |
| ----- | ----- | ----- |
| Blueprint | v4.0.1-r1 | ACTIVE |
| 施工RB+WI | v4.0.1-r1 | ACTIVE |
| 施工skills | v4.0.1-r2 | ACTIVE |
| 實作+WP總表 | **v4.0.1-r2** | **ACTIVE（強制）** |
| 實作+WP總表 v4.0.1-r1 | n/a | **SUPERSEDED（禁用）** |

**F-014-001（BLOCKER）閉環規則：**

* 本文件任何地方出現 WP總表 r1（或其檔名）→ 視為 superseded 汙染 → **FAIL\_CLOSED**（見 §17 決策表）。

### **5.3 superseded 汙染掃描（門檻：0）**

\[ANCHOR:OMOC-WP014-05-SUPERSEDED-SCAN\]

\# 期望輸出：0（無命中）  
rg \-n "OMOC\_實作\\+WP總表\_v4\\.0\\.1-r1\\.md|WP總表.\*v4\\.0\\.1-r1|WP Total.\*r1|SUPPORT\\-only.\*升格|canonical\_version.\*r1" .

\# 針對本文件（如你只檢本檔）  
rg \-n "v4\\.0\\.1-r1\\.md.\*WP總表|OMOC\_實作\\+WP總表\_v4\\.0\\.1-r1" OMOC\_WP-014+RB+WI\*.md

---

## **6\) Doc Inventory（sha256/lines \+ locator proof）**

\[ANCHOR:OMOC-WP014-06-DOC-INVENTORY\]

### **6.1 Inventory（本回合可定位證明）**

| role | path | sha256 | lines | bytes |
| ----- | ----- | ----- | ----- | ----- |
| TARGET (legacy) | /mnt/data/OMOC\_WP-014+RB+WI.md | 77df16c5e42eee352f890b3035d99daeb15af8add904970168406e7d0321b226 | 591 | 48521 |
| FIX\_SPEC (review) | /mnt/data/OMOC\_WP-014+RB+WI\_審查報告.md | db535423c3e3cbffe7e5533ce3d2754a8ea3a8a34411b35755895bc4c180b978 | 368 | 29442 |
| N1 (Blueprint) | /mnt/data/OMOC\_藍圖\_v4.0.1-r1.md | ccd7c311b11420652ac325b49ee6c317449d867b75b5c676ba641c0da17c6a33 | 462 | 36139 |
| N2 (RB+WI) | /mnt/data/OMOC\_施工RB+WI\_合冊\_v4.0.1-r1.md | 3fb8ea01b069a8f64f0183d8fc7678acf99b49adb4ef6a80a761997e1a2b44ca | 751 | 45818 |
| N3 (skills) | /mnt/data/OMOC\_施工skills\_合冊\_v4.0.1-r2.md | f3f4c5cae4b6ca928eee241dbb9854da9ef07eb0e211e513a01997ecd840ecab | 2200 | 84815 |
| N4 (WP total) | /mnt/data/OMOC\_實作+WP總表\_v4.0.1-r2.md | ffb92a86c26e12cc3d6bf492694fb81477f985f8f50d0744c4944dbdae1a49a9 | 757 | 54886 |
| PEER | /mnt/data/OMOC\_WP-001+RB+WI\_v4.0.1-r2.md | 9d379a473ca2af7f3202982775815e8cf80c283cba3f1239e8381c89e0d0f1f9 | 958 | 41578 |
| PEER | /mnt/data/OMOC\_WP-002+RB+WI\_v4.0.1-r2.md | 5e38e2137cf0230400ab32261544c0df4a641bafbf92b5d8f575a7751e20ed5c | 731 | 39664 |
| PEER | /mnt/data/OMOC\_WP-003+RB+WI\_v4.0.1-r2.md | e8fde679effe030dac1445dfbb27240b9e1ceb4caa56ef568a3c5504b941b29b | 788 | 44125 |
| PEER | /mnt/data/OMOC\_WP-004+RB+WI\_v4.0.1-r2.md | 225ee9ee790cd02539da843be3a43207b7ed699fbb99eaca94f42bfa21c9ebc2 | 657 | 42251 |
| PEER | /mnt/data/OMOC\_WP-005+RB+WI\_v4.0.1-r2.md | ba6788de477a15aa4c8a78eb32ba460eaf48ec0343bfffde4c74c8cd97bb0022 | 612 | 35194 |
| PEER | /mnt/data/OMOC\_WP-006+RB+WI\_v4.0.1-r2.md | 3a958ba100804e337d3307ce995664fb44ed13887dec85526039e69467cdf87b | 964 | 52339 |
| PEER | /mnt/data/OMOC\_WP-007+RB+WI\_v4.0.1-r2.md | cac1e5bee943887eef547f6b4ec7be060197b96b77cf044e6a7392be403d5f92 | 706 | 45400 |
| PEER | /mnt/data/OMOC\_WP-008+RB+WI\_v4.0.1-r2.md | fff6383689c338a1a1bb8bc27087767470d5dfb1ebd93a30de2f01add33f8a59 | 1202 | 60018 |
| PEER | /mnt/data/OMOC\_WP-009+RB+WI\_v4.0.1-r2.md | e3da8193d8f3a25fb3d437b1a75d32b9fd485e368a61f2ce518a492b70ca9e1d | 547 | 46986 |
| PEER (WP-010) | /mnt/data/OMOC\_WP-010+RB+WI\_v4.0.1-r2.md | 4a98647710a9d655c06e7c8a3843b789530a30cda910828fd8c9e7da019cdfca | 1225 | 65186 |
| PEER (WP-011) | /mnt/data/OMOC\_WP-011+RB+WI\_v4.0.1-r2.md | e3ef44749be9d1e39f5911ef9e5eb8bf6f3c5e17014ba0a130d7d93ceed6d27f | 689 | 42583 |
| PEER (WP-012) | /mnt/data/OMOC\_WP-012+RB+WI\_v4.0.1-r2.md | a537a9a6ce723e86604169973d193a2ecf7148616ff988ed876888b5618ccf1e | 673 | 46530 |
| PEER (WP-013) | /mnt/data/OMOC\_WP-013+RB+WI\_v4.0.1-r2.md | 866c0ef398123228680d93afecbad3b3df548ca3cb0891a8896442fbe82fe4c7 | 716 | 40539 |

### **6.2 locator\_proof（可重跑）**

\[ANCHOR:OMOC-WP014-06-LOCATOR-PROOF\]

\# sha256 / line count（可重跑）  
python \- \<\<'PY'  
import hashlib, pathlib  
ps \= \[  
  "OMOC\_WP-014+RB+WI.md",  
  "OMOC\_WP-014+RB+WI\_審查報告.md",  
  "OMOC\_藍圖\_v4.0.1-r1.md",  
  "OMOC\_施工RB+WI\_合冊\_v4.0.1-r1.md",  
  "OMOC\_施工skills\_合冊\_v4.0.1-r2.md",  
  "OMOC\_實作+WP總表\_v4.0.1-r2.md",  
\]  
base \= pathlib.Path("/mnt/data")  
for p in ps:  
  b \= (base/p).read\_bytes()  
  h \= hashlib.sha256(b).hexdigest()  
  lines \= b.count(b"\\n")+1  
  print(p, h, lines, len(b))  
PY

\# 重要條文定位（示例：Evidence Contract）  
rg \-n "OMOC-RBWI-EVIDENCE-CONTRACT|evidence\_minset" /mnt/data/OMOC\_施工RB+WI\_合冊\_v4.0.1-r1.md

---

## **7\) Scope / Non-Goals / Route-out Map**

\[ANCHOR:OMOC-WP014-07-SCOPE\]

### **7.1 Scope（IN）**

* **Drift Guard**：版本/引用/平台行為/UI 路徑/required checks contexts/merge queue（merge\_group）等漂移的偵測、證據化、降級與 TT 閉環。  
* **Closure Management**：TT 生命週期、Closure Matrix、機器匯出（tt\_export.json）、稽核節奏、回放入口（bundle / single pack）。  
* **Gate Contract**：為「規則/設定/required checks」建立可驗證的合約指紋（hash/fingerprint）與 diff 機制。

### **7.2 Non-Goals（OUT）**

* 不在此 WP 內替代 WP-010\~013 的核心落地（required checks contract、status hygiene、merge\_group alignment、merge queue enablement & verification）。  
* 不在此 WP 內替代 repo 實際設定權限（無 admin 權限時一律 TEMP\_CLOSED/FAIL\_CLOSED \+ TT）。

### **7.3 Route-out Map（接口）**

* WP-010：required checks contract（checks\_manifest / required\_contexts expected）  
* WP-011：always-report wrappers / status hygiene（reporting contract）  
* WP-012：merge\_group trigger alignment \+ MQ probe（merge\_group event / checks\_requested 語義）  
* WP-013：merge queue enablement & verification（queue 設定、驗證證據）

---

## **8\) Tool Decision Matrix（UI/gh/API/Artifacts）**

\[ANCHOR:OMOC-WP014-08-TOOL-MATRIX\]

**F-014-010（MINOR）閉環：**「可選」不夠；本節提供**必用/禁用**硬規則。  
\*\*F-014-008（MAJOR）閉環：\*\*任何工具可用性不得 ASSUMED；改用 Preflight 強制檢核（§16 WI-014-00）。

### **8.1 Tool Rules（硬規則）**

| task | MUST use | MAY use | MUST NOT use | reason / replayability |
| ----- | ----- | ----- | ----- | ----- |
| 取得 Rulesets 現況（可稽核輸出） | `gh api`（或等效 API 輸出） | UI（僅作人工對照） | 只截圖當唯一證據 | JSON 可 diff / 可 hash / 可重放 |
| required checks expected（權威） | Rulesets API →（fallback）branch protection required\_status\_checks contexts | UI（輔助核對） | 只用 check-runs/commit status 當 expected | observed ≠ expected（避免錯把暫態觀測升格） |
| Merge Queue / merge\_group 觸發驗證 | GitHub Actions logs \+ merge\_group event 產生證據 | UI queue 畫面 | 只靠「看起來有」 | 需要可回放的 run logs |
| Evidence Bundle 產生 | bash \+ tar \+ sha256 | UI 下載 | 把敏感資料貼到聊天/附件 | 可攜、可驗證、Secrets Zero |
| Web 行為佐證 | Web Evidence Appendix（Quarantine） | \- | 把 web 當 NORMATIVE | UI/語義可變，只能 SUPPORT-only |

### **8.2 Preflight Required Tools**

* 必備：`git`、`bash`、`rg`（ripgrep）、`sha256sum`（或等效）、`tar`  
* GitHub 互動：`gh`（建議）、或同等 API 客戶端  
* 缺任一必備工具：**FAIL\_CLOSED**（見 §17 決策表）

---

## **9\) Definitions / Glossary / Normalization**

\[ANCHOR:OMOC-WP014-09-DEFS\]

* **drift（漂移）**：任何使「預期（expected）」與「可回放證據」不一致的變化（版本、引用、UI 路徑、required checks 名稱、merge queue 事件語義等）。  
* **closure（結案）**：把缺口轉為可驗證條件（criteria）＋證據指向（evidence refs）＋狀態裁決（PASS/TEMP\_CLOSED/FAIL\_CLOSED）。  
* **TT（Test Track）**：缺口/風險的承載單位；必含 closure criteria / verification steps / evidence\_refs / owner / status。  
* **Gate Contract**：把關鍵設定/規則/expected checks 固化為「可 hash / 可 diff」的合約輸出（JSON）。  
* **UI\_LOCATOR**：UI 路徑以文字規格化（Settings → …），並標註易變風險與備份點。

---

## **10\) Requirements（WP014-REQ-\*）**

\[ANCHOR:OMOC-WP014-10-REQUIREMENTS\]

每條 requirement 必有：statement（MUST）、source\_locator（NORMATIVE 或 TT）、acceptance\_evidence、status、tt\_id（如需）。

| requirement\_id | statement (MUST) | source\_locator (NORMATIVE) | target\_anchor | acceptance\_evidence | status | tt\_id |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| WP014-REQ-001 | 必須強制 N4=WP總表 r2；任何 r1 引用必須可被掃描=0 驗證。 | N4: /mnt/data/OMOC\_實作+WP總表\_v4.0.1-r2.md（Version lock by Doc Control） | §5.2/§5.3 | rg 掃描輸出=0；記錄於 evidence\_index | PASS | \- |
| WP014-REQ-002 | 必須提供 Doc Inventory（sha256/lines）＋ locator\_proof 可重跑。 | N2 Evidence Contract（可回放/可稽核精神） | §6 | inventory 表＋重跑命令輸出 | PASS | \- |
| WP014-REQ-003 | 必須定義 gate\_contract 指紋（hash/fingerprint）與驗證步驟；用於漂移判定。 | N4: machine-readable appendix（需可被自動稽核） | §11.3/§17 | gate\_contract.json \+ 指紋檔 \+ diff 報告 | TEMP\_CLOSED | TT-WP014-GATE-001 |
| WP014-REQ-004 | 必須把 PASS/TEMP\_CLOSED/FAIL\_CLOSED 判定優先序機械化（決策表）。 | N1 Fail-Closed 原則（本 WP 落地） | §17.3 | 決策表可套用案例 | PASS | \- |
| WP014-REQ-005 | 必須以 Preflight 強制檢核工具/權限/網路，不得 ASSUMED。 | N1 Fail-Closed；N3 工具/權限不可用時 TEMP\_CLOSED 策略 | §16 WI-014-00 | preflight.log \+ verdict | PASS | \- |
| WP014-REQ-006 | 必須提供 Tool Decision Matrix（必用/禁用）。 | 審查修補（F-014-010） | §8 | matrix 表 | PASS | \- |
| WP014-REQ-007 | 必須落地 Secrets Zero（掃描規則/遮罩策略/驗收=0）。 | N2 Evidence Contract「不得含 secrets」 | §20.2/§16 WI-014-50 | secrets\_scan.txt（命中=0） | PASS | \- |
| WP014-REQ-008 | 必須把「資料/指令分離」固化到 evidence 產物格式與白名單規則。 | N1 Anti-injection 精神；審查修補（F-014-012） | §20.3 | evidence\_index 分段＋禁止執行規則 | PASS | \- |
| WP014-REQ-009 | 必須提供對 WP-010 的硬路由接口（route-out anchor ≥1）。 | PEER WP-010（接口） | §12.2 | route-out locator 可定位 | PASS | \- |
| WP014-REQ-010 | 必須提供對 WP-011 的硬路由接口（route-out anchor ≥1）。 | PEER WP-011（接口） | §12.3 | route-out locator 可定位 | PASS | \- |
| WP014-REQ-011 | 必須提供對 WP-012 的硬路由接口（route-out anchor ≥1）；若 PEER 缺穩定 anchor，需 TT。 | PEER WP-012（接口） | §12.4 | route-out locator \+ TT | TEMP\_CLOSED | TT-WP014-IFACE-WP012-001 |
| WP014-REQ-012 | 必須提供對 WP-013 的硬路由接口（route-out anchor ≥1）。 | PEER WP-013（接口） | §12.5 | route-out locator 可定位 | PASS | \- |
| WP014-REQ-013 | UI 易變性必須成為 requirement 並硬接入 closure\_matrix：UI drift → TT/降級。 | GitHub UI/語義可變（SUPPORT-only） | §13.4/§11 | ui\_locator\_snapshot \+ drift rule 命中即 TT | PASS | \- |
| WP014-REQ-014 | 必須定義 drift 分類、假陽性處理、偵測方法（snapshot/diff/manifest）、處置（降級/TT）。 | N1 Fail-Closed；N4 machine-readable appendix | §13 | drift\_report.md \+ closure\_matrix 更新 | TEMP\_CLOSED | TT-WP014-DRIFT-001 |
| WP014-REQ-015 | 必須 pin closure\_matrix schema\_source \+ schema\_diff\_check；若上游未提供 schema，需 TT（不得臆測升格）。 | 審查修補（F-014-002） | §11.4/§22 | schema\_source 記錄 \+ diff 步驟 \+ TT | TEMP\_CLOSED | TT-WP014-SCHEMA-001 |
| WP014-REQ-016 | 必須定義 tt\_export.json schema 與 mapping（從 TT Register 匯出）。 | 審查修補（F-014-009） | §14.3/§22 | tt\_export.json \+ mapping 規則 | TEMP\_CLOSED | TT-WP014-TTEXPORT-001 |
| WP014-REQ-017 | 必須提供 Counterexamples（≥8）可驗收表，並可連到 TT。 | 審查修補（F-014-013） | §19 | ≥8 反例表＋預期 verdict | PASS | \- |
| WP014-REQ-018 | Web 只能 SUPPORT-only 且 Quarantine；每筆需 accessed\_at \+ drift\_action→TT。 | 本文件 WTNA 規則 | §23 | Web Evidence Appendix 完整欄位 | PASS | \- |
| WP014-REQ-019 | 必須符合 Evidence Contract：verdict.json / checks\_manifest.json / evidence\_index.md / bundle（不得含 secrets），並支持 single pack。 | N2 Evidence Contract（evidence\_minset / single pack） | §15/§16 WI-014-40 | evidence\_bundle.tgz \+ single\_evidence\_bundle.txt | PASS | \- |
| WP014-REQ-020 | 必須定義 BK（備份點）與 rollback/route-out。 | 審查修補（F-014-008） | §15/§16 WI-014-10/70 | bk\_manifest.json \+ rollback steps | PASS | \- |

---

## **11\) Coverage / Trace / Closure Matrix（可驗收）**

\[ANCHOR:OMOC-WP014-11-MATRIX\]

### **11.1 Coverage Map（SSOT → WP-014）**

| ssot\_item | claim | wp014\_locator |
| ----- | ----- | ----- |
| N2 Evidence Contract（evidence\_minset / single pack） | 本 WP 的證據產物命名/最小集遵循 Evidence Contract。 | §15.5 / §16 WI-014-40 |
| N3 skills（禁止 secrets、ERCC expected 權威來源優先序） | Secrets Zero 與 expected/observed 分離。 | §20 / §13.3 |
| N4 machine-readable appendix（至少輸出多個 JSON 且含 schema\_version/source\_locators） | 本 WP 定義 gate\_contract/closure\_matrix/tt\_export 之輸出規格與指紋。 | §11.3 / §11.4 / §14.3 |

### **11.2 Closure Matrix（文件層裁決）**

| closure\_rule\_id | scope | trigger | decision | evidence\_refs | status | tt\_id |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| CM-WP014-001 | superseded contamination | 掃描命中 r1 引用 | FAIL\_CLOSED | superseded\_scan.txt | PASS | \- |
| CM-WP014-002 | tool availability | preflight 缺工具/權限 | FAIL\_CLOSED | preflight.log | PASS | \- |
| CM-WP014-003 | schema unknown | 上游未提供 schema（closure\_matrix/tt\_export） | TEMP\_CLOSED \+ TT | schema\_pin.md | TEMP\_CLOSED | TT-WP014-SCHEMA-001 |
| CM-WP014-004 | UI drift | UI\_LOCATOR 無法對應/路徑變更 | TEMP\_CLOSED \+ TT | ui\_locator\_snapshot.md | PASS | \- |
| CM-WP014-005 | secrets | secrets 掃描命中 \>0 | FAIL\_CLOSED | secrets\_scan.txt | PASS | \- |
| CM-WP014-006 | interface route-out | WP-010/011/013 anchor 缺失 | TEMP\_CLOSED \+ TT | iface\_locators.md | PASS | \- |
| CM-WP014-007 | WP-012 anchor 不穩 | WP-012 缺穩定 anchor | TEMP\_CLOSED \+ TT | iface\_locators.md | TEMP\_CLOSED | TT-WP014-IFACE-WP012-001 |

### **11.3 Gate Contract Fingerprint（F-014-006）**

\[ANCHOR:OMOC-WP014-11-GATE-CONTRACT\]

**gate\_contract 最小內容（MUST）：**

* version\_lock（N1\~N4）  
* required\_contexts\_contract.expected（來源與輸出）  
* rulesets snapshot（或等效 JSON）  
* merge queue / merge method / build concurrency（若可取得）  
* checks\_manifest\_contract（含 merge\_group 觸發要求）  
* hashing strategy（canonical JSON → sha256）

**產物（建議路徑；repo 內以一致命名為準）：**

* `evidence/_drift_guard/<TS>/gate_contract.json`  
* `evidence/_drift_guard/<TS>/gate_contract.sha256`  
* `evidence/_drift_guard/<TS>/gate_contract.diff.md`

**驗證命令（示例）：**

\# 1\) 產生 gate\_contract（以你實際輸出 JSON 為準）  
\# 2\) 計算指紋  
sha256sum evidence/\_drift\_guard/\*/gate\_contract.json | tee evidence/\_drift\_guard/\*/gate\_contract.sha256

\# 3\) 與上一版比對（若存在）  
diff \-u evidence/\_drift\_guard/\<PREV\>/gate\_contract.json evidence/\_drift\_guard/\<CURR\>/gate\_contract.json \\  
  | tee evidence/\_drift\_guard/\<CURR\>/gate\_contract.diff.md || true

若無法取得 rulesets/API 輸出（權限/網路受限）：不得假裝一致 → **TT-WP014-GATE-001（TEMP\_CLOSED）**。

### **11.4 schema\_source pin \+ schema\_diff\_check（F-014-002）**

\[ANCHOR:OMOC-WP014-11-SCHEMA-PIN\]

* **schema\_source\_pin（MUST）**：在 `schema_pin.md` 記錄「本次採用的 schema 來源定位」。  
* **schema\_diff\_check（MUST）**：若上游（N4）未提供明確 schema 定義，則：  
  * 以「本文件 local schema v1.0」作為 **暫行實作**（不得升格為 SSOT），  
  * 開 TT：`TT-WP014-SCHEMA-001`，closure criteria：取得上游 schema / 或由維護者裁決並更新。

---

## **12\) Interface Contract（BLOCKER：WP-010\~013 硬路由）**

\[ANCHOR:OMOC-WP014-12-INTERFACE\]

\*\*F-014-014（BLOCKER）閉環：\*\*本節提供 ≥4 個可定位 route-out（WP-010/011/012/013 各至少 1）。  
route-out 以「檔案路徑 \+ anchor」為主；若 PEER 不提供穩定 anchor → 必須 TT（不得裝作穩定）。

### **12.1 route-out locator 格式（MUST）**

* `route_out_id`  
* `target_doc_path`  
* `target_anchor`  
* `why_route_out`  
* `handoff_artifacts`（交接產物/證據）

### **12.2 WP-010（Required Checks Contract Lock）**

* route\_out\_id: `RO-WP010-ERCC-CONTRACT`  
* target\_doc\_path: `/mnt/data/OMOC_WP-010+RB+WI_v4.0.1-r2.md`  
* target\_anchor: `#omoc-wp010-12-contract-spec`  
* why\_route\_out: required checks contract / checks\_manifest alignment  
* handoff\_artifacts: `checks_manifest.json`, `required_contexts_contract.expected`, `verdict.json`

### **12.3 WP-011（Always-Report Wrappers & Status Hygiene）**

* route\_out\_id: `RO-WP011-STATUS-HYGIENE`  
* target\_doc\_path: `/mnt/data/OMOC_WP-011+RB+WI_v4.0.1-r2.md`  
* target\_anchor: `#omoc-wp011-spec-status-hygiene`  
* why\_route\_out: status hygiene / reporting contract（避免 “Waiting for status” 假死）  
* handoff\_artifacts: `status_hygiene_report.md`, `check_contexts_observed.json`

### **12.4 WP-012（merge\_group Trigger Alignment \+ MQ Probe）**

* route\_out\_id: `RO-WP012-MERGE-GROUP`  
* target\_doc\_path: `/mnt/data/OMOC_WP-012+RB+WI_v4.0.1-r2.md`  
* target\_anchor: `#anchor-omoc-wp-012-0900`（PEER 檔內 anchor 穩定性不足；以 TOC 標示為暫用）  
* why\_route\_out: merge\_group 觸發對齊＋MQ probe（Queue checks 與 required checks 不一致的主要風險來源）  
* handoff\_artifacts: `workflow_triggers.json`, `merge_group_probe.log`  
* status: TEMP\_CLOSED（見 TT-WP014-IFACE-WP012-001）

### **12.5 WP-013（Merge Queue Enablement & Verification）**

* route\_out\_id: `RO-WP013-MQ-VERIFY`  
* target\_doc\_path: `/mnt/data/OMOC_WP-013+RB+WI_v4.0.1-r2.md`  
* target\_anchor: `#omoc-wp013-13-interface-contract`  
* why\_route\_out: MQ enablement/verification evidence（含 queue 行為）  
* handoff\_artifacts: `mq_settings_snapshot.json`, `mq_verification.md`

---

## **13\) Drift Guard Spec（漂移分類/偵測/處置/降級規則）**

\[ANCHOR:OMOC-WP014-13-DRIFT-GUARD\]

### **13.1 Drift Taxonomy（分類）**

| drift\_type | examples | detection | default\_action |
| ----- | ----- | ----- | ----- |
| VERSION\_DRIFT | N4 不再是 r2、peer 版本變動 | version\_lock scan | FAIL\_CLOSED（若指向 r1）/ TEMP\_CLOSED（若未能驗證） |
| REFERENCE\_DRIFT | 引用來源不可定位、anchor 消失 | locator\_proof | TEMP\_CLOSED \+ TT |
| UI\_DRIFT | Settings 路徑、欄位名稱變了 | UI\_LOCATOR snapshot vs current | TEMP\_CLOSED \+ TT（不得以“我記得”通過） |
| ERCC\_DRIFT | required checks contexts 變了/跑不出來 | expected vs observed diff | TEMP\_CLOSED \+ TT（或 FAIL\_CLOSED 若缺 expected） |
| MQ\_EVENT\_DRIFT | merge\_group 行為/語義改變 | docs/web \+ logs | TEMP\_CLOSED \+ TT-WEB-DRIFT-\* |
| SUPPLYCHAIN\_DRIFT | third-party action 版本漂移 | lockfile / pin scan | TEMP\_CLOSED \+ TT（必要時 FAIL\_CLOSED） |

### **13.2 Drift Detection（MUST：snapshot/diff）**

**輸出：**

* `drift_report.md`（人讀）  
* `drift_report.json`（機器）  
* `gate_contract.diff.md`（若可）

\# 版本鎖與 superseded 掃描（門檻=0）  
rg \-n "OMOC\_實作\\+WP總表\_v4\\.0\\.1-r1" .

\# 規則/設定快照（示意：以 gh api 拉 rulesets；實際 endpoint 依 repo）  
gh api \-H "Accept: application/vnd.github+json" /repos/$OWNER/$REPO/rulesets \\  
  \> evidence/\_drift\_guard/\<TS\>/rulesets.json

\# diff（上一輪 vs 本輪）  
diff \-u evidence/\_drift\_guard/\<PREV\>/rulesets.json evidence/\_drift\_guard/\<CURR\>/rulesets.json \\  
  | tee evidence/\_drift\_guard/\<CURR\>/rulesets.diff || true

### **13.3 ERCC Drift（expected vs observed）**

* **expected（權威）**：rulesets API →（fallback）branch protection required\_status\_checks contexts（N3 指出觀測不得代替 expected）  
* **observed（觀測）**：check runs / statuses / workflow runs（只能 SUPPORT）

**最小輸出：**

* `required_contexts_expected.json`  
* `required_contexts_observed.json`  
* `required_contexts_diff.md`

### **13.4 UI Drift → closure\_matrix（F-014-004）**

\[ANCHOR:OMOC-WP014-13-UI-DRIFT\]

**UI\_LOCATOR（MUST）格式：**

* `UI_LOCATOR{provider="GitHub", scope="Repo", path="Settings > …", fields=[...], bk_ref="BK-014-xx", drift_risk="HIGH|MED|LOW"}`

**最小 UI\_LOCATOR 集（建議）：**

* Rulesets：`Settings > Rulesets > (Target ruleset) > Rules`  
* Branch protections（fallback）：`Settings > Branches > Branch protection rules`  
* Merge queue：`Settings > General > Pull Requests > Merge queue`（或對應 UI）  
* Actions：`Actions > Workflows > (workflow) > Triggers`（確認 merge\_group）

**硬接 closure：**

* 任一 UI\_LOCATOR 無法對應 → `CM-WP014-004` 生效 → **TEMP\_CLOSED \+ TT-WP014-DRIFT-UI-\*（建立/更新）**。

---

## **14\) Closure Management Spec（TT lifecycle / tt\_export.json / 節奏）**

\[ANCHOR:OMOC-WP014-14-CLOSURE-MGMT\]

### **14.1 TT Lifecycle（狀態機）**

| state | meaning | allowed\_transitions | must\_have |
| ----- | ----- | ----- | ----- |
| OPEN | 新建缺口（本文件禁止殘留） | → TEMP\_CLOSED / FAIL\_CLOSED | closure criteria \+ owner |
| TEMP\_CLOSED | 暫時封存：有閉環路徑但未完成驗證 | → PASS / FAIL\_CLOSED | verification steps \+ evidence refs（待補） |
| FAIL\_CLOSED | 阻斷：不允許以臆測通過 | → TEMP\_CLOSED（僅在條件恢復/證據補齊後） | failure reason \+ unblock instructions |
| PASS | 已驗證閉環 | \- | evidence refs 完整 |

\*\*文件層規則：\*\*本文件 **CR\_OPEN=0**；因此所有缺口必須以 TT 承載並裁決為 TEMP\_CLOSED/FAIL\_CLOSED。

### **14.2 Closure Cadence（建議節奏）**

* 每次：調整 rulesets / required checks / merge queue / workflow triggers 後  
* 每週：做一次 drift scan（含 gate\_contract 指紋）  
* 每次外部平台重大變更（UI/語義）：補 Web Quarantine（§23）

### **14.3 tt\_export.json（F-014-009）— schema \+ mapping**

\[ANCHOR:OMOC-WP014-14-TT-EXPORT\]

**本文件暫行 schema（local v1.0；SUPPORT-only，不得冒充 SSOT）：**

{  
  "schema\_version": "1.0",  
  "generated\_at": "\<ISO8601\>",  
  "source\_locators": \[  
    "OMOC\_WP-014+RB+WI\_v4.0.1-r2\#omoc-wp014-22-tt-register"  
  \],  
  "items": \[  
    {  
      "tt\_id": "TT-WP014-SCHEMA-001",  
      "severity": "MAJOR",  
      "status": "TEMP\_CLOSED",  
      "category": "SCHEMA\_DRIFT",  
      "statement": "closure\_matrix schema\_source 未能在 SSOT 明確定位，需補齊並做 diff。",  
      "closure\_criteria": \["取得上游 schema 定義或裁決並更新本文件 local schema"\],  
      "verification\_steps": \["定位 SSOT 定義", "做 schema\_diff\_check", "更新 closure\_matrix 與機器輸出"\],  
      "evidence\_refs": \["schema\_pin.md", "schema\_diff.md"\],  
      "owner": "TBD",  
      "created\_at": "\<ISO8601\>",  
      "updated\_at": "\<ISO8601\>",  
      "links": \[\]  
    }  
  \]  
}

**mapping（TT Register → tt\_export.json）：**

* `tt_id` ← TT Register「TT-ID」  
* `severity` ← 「severity」  
* `status` ← 「status」  
* `statement` ← 「title/statement」  
* `closure_criteria` ← 「closure\_criteria」  
* `verification_steps` ← 「verification」  
* `evidence_refs` ← 「evidence\_refs」  
* `owner/created_at/updated_at/links` ← 對應欄位

上游 schema 若與此不同：不得硬改假裝一致 → **TT-WP014-TTEXPORT-001（TEMP\_CLOSED）**。

---

## **15\) Runbook（可重跑：Preflight → BK → Drift Scan → Closure Update → Evidence Bundle → Rollback）**

\[ANCHOR:OMOC-WP014-15-RUNBOOK\]

### **15.1 Inputs**

* Repo 工作區（含 .github/workflows、規則設定可取證）  
* SSOT（N1\~N4）  
* 本文件的 WI 任務卡（§16）

### **15.2 Outputs（最小集）**

* `preflight.log`  
* `bk_manifest.json` \+ BK 快照（rulesets.json / settings snapshot）  
* `drift_report.md` \+ `drift_report.json`  
* `closure_matrix.md`（人讀）+（若可）`closure_matrix.json`  
* `tt_export.json`  
* `evidence_bundle.tgz` \+ `bundle_audit.json` \+ `sha256`

### **15.3 Preflight（硬門檻）**

* 執行 WI-014-00；失敗 → FAIL\_CLOSED（不進下一步）

### **15.4 BK（備份點）**

* 執行 WI-014-10；至少備份 rulesets snapshot、merge queue 設定可觀測證據、workflow triggers

### **15.5 Drift Scan**

* 執行 WI-014-20；輸出 drift\_report \+ gate\_contract diff（若可）

### **15.6 Closure Update**

* 執行 WI-014-30；把 drift 結果硬接 closure\_matrix（命中規則即 TT/降級）

### **15.7 Evidence Bundle**

* 執行 WI-014-40；遵循 Evidence Contract（不得含 secrets）

### **15.8 Rollback / Route-out**

* 執行 WI-014-70；若 drift 影響 WP-010\~013 介面，走 Route-out（§12）

---

## **16\) Work Instructions（WI 任務卡：一步一驗收）**

\[ANCHOR:OMOC-WP014-16-WI\]

### **WI-014-00 — Preflight（工具/權限/網路/Repo 基線）**

\[ANCHOR:OMOC-WP014-WI-014-00\]

**Objective**：消除 ASSUMED（F-014-008）  
**Steps（示例）**

set \-euo pipefail

\# tools  
command \-v git  
command \-v rg  
command \-v tar  
command \-v sha256sum || command \-v shasum  
command \-v gh || echo "WARN: gh missing (may lead to TEMP\_CLOSED)"

\# repo sanity  
git rev-parse \--is-inside-work-tree  
git status \--porcelain=v1

\# auth / rate limit (if gh exists)  
if command \-v gh \>/dev/null 2\>&1; then  
  gh auth status || exit 2  
  gh api rate\_limit \>/dev/null || exit 2  
fi

**Acceptance**

* 工具齊備（或已記錄缺口並按決策表裁決）  
* 產物：`evidence/_preflight/<TS>/preflight.log`

---

### **WI-014-10 — BK Snapshot（Rulesets / MQ / Workflows）**

\[ANCHOR:OMOC-WP014-WI-014-10\]

**UI\_LOCATOR（參考；不得作唯一證據）**

* `Settings > Rulesets > …`（BK-014-01）  
* `Settings > General > Pull Requests > Merge queue`（BK-014-02）  
* `Actions > Workflows > …`（BK-014-03）

**Evidence（MUST）**

mkdir \-p evidence/\_bk/\<TS\>

\# rulesets snapshot  
gh api \-H "Accept: application/vnd.github+json" /repos/$OWNER/$REPO/rulesets \\  
  \> evidence/\_bk/\<TS\>/rulesets.json

\# workflows list (snapshot)  
gh api \-H "Accept: application/vnd.github+json" /repos/$OWNER/$REPO/actions/workflows \\  
  \> evidence/\_bk/\<TS\>/workflows.json

\# hash  
sha256sum evidence/\_bk/\<TS\>/\*.json \> evidence/\_bk/\<TS\>/bk.sha256

**Acceptance**

* `rulesets.json/workflows.json/bk.sha256` 存在  
* 產物登記於 `bk_manifest.json`

---

### **WI-014-20 — Drift Scan（snapshot/diff/report）**

\[ANCHOR:OMOC-WP014-WI-014-20\]

mkdir \-p evidence/\_drift\_guard/\<TS\>

\# superseded scan (0)  
rg \-n "OMOC\_實作\\+WP總表\_v4\\.0\\.1-r1" . | tee evidence/\_drift\_guard/\<TS\>/superseded\_scan.txt

\# diff rulesets (prev optional)  
cp evidence/\_bk/\<TS\>/rulesets.json evidence/\_drift\_guard/\<TS\>/rulesets.json

**Acceptance**

* `drift_report.md` 產出（至少列：VERSION/REFERENCE/UI/ERCC/MQ）  
* 若 rulesets diff 無法做（缺 prev）：必須在 drift\_report 記錄原因（不視為失敗，但可能導致 TEMP\_CLOSED）

---

### **WI-014-30 — Closure Update（矩陣/TT/狀態降級）**

\[ANCHOR:OMOC-WP014-WI-014-30\]

**Rule**：任何 drift 命中 → 必須更新 closure\_matrix（§11.2）與 TT Register（§22）。  
**Acceptance**：closure\_matrix.md 更新、TT Register 無 OPEN、CR\_OPEN=0。

---

### **WI-014-40 — Evidence Bundle（Evidence Contract \+ single pack）**

\[ANCHOR:OMOC-WP014-WI-014-40\]

Evidence Contract（evidence\_minset / single pack）見 N2；merge queue/merge\_group 相關事件需可回放證據。 ([GitHub Docs](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/configuring-pull-request-merges/managing-a-merge-queue))

mkdir \-p evidence/\_bundle/\<TS\>

\# 必備最小集（verdict/checks\_manifest/evidence\_index）  
\# （檔案生成方式依你的既有 OMOC pipeline；本 WI 只約束命名與門檻）  
test \-f verdict.json  
test \-f checks\_manifest.json  
test \-f evidence\_index.md

cp verdict.json checks\_manifest.json evidence\_index.md evidence/\_bundle/\<TS\>/

\# 打包  
tar \-czf evidence/\_bundle/\<TS\>/evidence\_bundle.tgz \-C evidence/\_bundle/\<TS\> verdict.json checks\_manifest.json evidence\_index.md  
sha256sum evidence/\_bundle/\<TS\>/evidence\_bundle.tgz \> evidence/\_bundle/\<TS\>/evidence\_bundle.sha256

**single\_evidence\_bundle.txt（極限最小集）**

* 以「可貼上/可上傳」為目的：放置關鍵裁決摘要、必備輸出摘要與 sha256（不得含 secrets）。

---

### **WI-014-50 — Secrets Zero Scan（命中=0）**

\[ANCHOR:OMOC-WP014-WI-014-50\]

\# denylist（示例；可按專案擴充）  
rg \-n \--hidden \--no-ignore-vcs "(ghp\_\[A-Za-z0-9\]{20,}|github\_pat\_\[A-Za-z0-9\_\]{20,}|AKIA\[0-9A-Z\]{16}|BEGIN\\s+PRIVATE\\s+KEY|xox\[baprs\]-\[A-Za-z0-9-\]{10,})" \\  
  . | tee evidence/\_security/\<TS\>/secrets\_scan.txt

\# 門檻：0 行命中  
test \! \-s evidence/\_security/\<TS\>/secrets\_scan.txt

**Failure Handling**

* 命中 \>0 → FAIL\_CLOSED（不允許打包、不得外傳）  
* 需遮罩時：只能保留「證明存在」所需最小片段（不可保留完整 token）

---

### **WI-014-70 — Rollback / Route-out（對 WP-010\~013 交接）**

\[ANCHOR:OMOC-WP014-WI-014-70\]

* 若 drift 涉及 required checks / merge\_group / merge queue：必須在 `route_out_note.md` 記錄：  
  * 影響面（哪條 closure\_rule 命中）  
  * 交接到哪個 WP（§12）  
  * 需要補的證據（handoff\_artifacts）

---

## **17\) Gates & DoD（Entry/Exit；含判定優先序決策表）**

\[ANCHOR:OMOC-WP014-17-GATES\]

### **17.1 Entry Gates**

| gate\_id | condition | fail\_action |
| ----- | ----- | ----- |
| GATE-WP014-ENTRY-001 | SSOT 檔案可定位（N1\~N4） | FAIL\_CLOSED |
| GATE-WP014-ENTRY-002 | Preflight 工具/權限通過 | FAIL\_CLOSED |
| GATE-WP014-ENTRY-003 | superseded 掃描門檻=0 | FAIL\_CLOSED |

### **17.2 Exit Gates（DoD）**

| gate\_id | condition | evidence |
| ----- | ----- | ----- |
| GATE-WP014-EXIT-001 | drift\_report \+ closure\_matrix 更新完成 | drift\_report.md / closure\_matrix.md |
| GATE-WP014-EXIT-002 | TT Register 無 OPEN；CR\_OPEN=0 | §22 |
| GATE-WP014-EXIT-003 | Evidence bundle 產出且 sha256 可驗證 | evidence\_bundle.tgz \+ sha256 |
| GATE-WP014-EXIT-004 | Secrets Zero 命中=0 | secrets\_scan.txt |

### **17.3 判定優先序決策表（F-014-007）**

\[ANCHOR:OMOC-WP014-17-DECISION-TABLE\]

| condition (highest priority first) | verdict |
| ----- | ----- |
| superseded 汙染（WP總表 r1 引用命中） | **FAIL\_CLOSED** |
| 必備工具/權限缺失（Preflight FAIL） | **FAIL\_CLOSED** |
| Secrets 命中 \>0 | **FAIL\_CLOSED** |
| 上游 schema 無法定位且影響機器輸出 | TEMP\_CLOSED \+ TT |
| UI\_LOCATOR 漂移（可變項無法回放） | TEMP\_CLOSED \+ TT |
| interface route-out 無法定位（PEER 缺 anchor） | TEMP\_CLOSED \+ TT |
| 以上皆不命中且證據齊備 | PASS |

---

## **18\) Acceptance Quickpath（最小可回放閉環：命令/產物/判定）**

\[ANCHOR:OMOC-WP014-18-QUICKPATH\]

1. WI-014-00 Preflight → `preflight.log`  
2. WI-014-10 BK Snapshot → `rulesets.json/workflows.json/bk.sha256`  
3. WI-014-20 Drift Scan → `superseded_scan.txt + drift_report.md`  
4. WI-014-30 Closure Update → `closure_matrix.md + TT Register（CR_OPEN=0）`  
5. WI-014-50 Secrets Zero → `secrets_scan.txt（0）`  
6. WI-014-40 Evidence Bundle → `evidence_bundle.tgz + sha256`  
7. 套用 §17 決策表 → overall\_verdict 更新（文件層通常仍 TEMP\_CLOSED，直到實際驗證跑滿）

---

## **19\) Counterexamples / Destructive Review Tests（≥8）**

\[ANCHOR:OMOC-WP014-19-COUNTEREXAMPLES\]

| case\_id | scenario | expected\_break | acceptance\_evidence | expected\_verdict | tt |
| ----- | ----- | ----- | ----- | ----- | ----- |
| CE-014-01 | 文件/腳本引用 WP總表 r1 | superseded 汙染 | superseded\_scan.txt 命中 | FAIL\_CLOSED | TT-WP014-DRIFT-SUPERSEDED-001 |
| CE-014-02 | merge queue 需要的 checks 未觸發（缺 merge\_group trigger） | required checks 不回報 | workflow run logs / checks 缺席 | TEMP\_CLOSED \+ TT | TT-WP014-MQ-TRIGGER-001 |
| CE-014-03 | required\_contexts expected 無法取得（403/無權限） | expected 空白被誤判 PASS | api\_error.log | FAIL\_CLOSED 或 TEMP\_CLOSED（依 §17） | TT-WP014-ERCC-EXPECTED-001 |
| CE-014-04 | UI 路徑變動（Rulesets 介面改名） | 無法回放設定 | ui\_locator\_snapshot.md 不匹配 | TEMP\_CLOSED \+ TT | TT-WP014-DRIFT-UI-001 |
| CE-014-05 | evidence bundle 內含 token | Secrets Zero 失敗 | secrets\_scan.txt 命中 | FAIL\_CLOSED | TT-WP014-SECRETS-001 |
| CE-014-06 | third-party action 版本漂移（未 pin） | supply chain 不可稽核 | action\_pin\_scan.txt 命中 | TEMP\_CLOSED \+ TT | TT-WP014-SUPPLYCHAIN-001 |
| CE-014-07 | 缺必備 evidence\_minset 檔案 | 不可驗收 | bundle\_audit.json 缺項 | FAIL\_CLOSED | TT-WP014-EVIDENCE-MINSET-001 |
| CE-014-08 | WP-012 route-out anchor 無法定位 | 接口不可追溯 | iface\_locators.md 失敗 | TEMP\_CLOSED \+ TT | TT-WP014-IFACE-WP012-001 |
| CE-014-09 | gate\_contract 指紋計算不可重現（非 canonical JSON） | diff 噪音過大 | gate\_contract.diff.md 無法解釋 | TEMP\_CLOSED \+ TT | TT-WP014-GATE-002 |
| CE-014-10 | Web 來源被誤升格為 MUST | SSOT 被覆寫 | 審計發現規範引用 web | FAIL\_CLOSED（流程違規） | TT-WP014-WEB-NORM-001 |

---

## **20\) SECURITY（Secrets Zero / 注入防線 / 供應鏈 / Fail-Closed）**

\[ANCHOR:OMOC-WP014-20-SECURITY\]

### **20.1 Secrets Zero（MUST）**

* Evidence bundle、single pack、log 摘要：**不得包含原始 secrets 或完整 token 值**（只保留最小必要證明，且需遮罩）。  
* 掃描門檻：命中=0（§16 WI-014-50）。

### **20.2 Masking Strategy（示例）**

\# 只在必要時進行遮罩，保留證據結構但不可保留完整 token  
sed \-E 's/(ghp\_|github\_pat\_)\[A-Za-z0-9\_\]+/\\1\*\*\*REDACTED\*\*\*/g' \-i evidence/\_acceptance/\<TS\>/\*.log

### **20.3 Prompt-Injection / Confused-Deputy 防線（資料/指令分離）**

**規則（MUST）**

* evidence 產物內任何「指令文字」不得被當成可執行指令；只允許本文件 Runbook/WI 中的命令被執行。  
* `evidence_index.md` 必須分段：  
  * `EVIDENCE_DATA`（logs/json）  
  * `INSTRUCTIONS`（只引用本文件 anchor，不允許外部貼上命令）  
* 輸入白名單：SSOT（N1\~N4）＋ repo 工作區檔案；Web 一律 Quarantine（§23）。

### **20.4 Supply Chain（第三方 Actions / Tooling）**

* third-party action 必須 pin 到 commit SHA（或明確版本）並納入 drift scan；若未 pin → TEMP\_CLOSED \+ TT（CE-014-06）。

---

## **21\) Traceability Appendices（Locator Proof / SSOT Coverage / Legacy Coverage）**

\[ANCHOR:OMOC-WP014-21-TRACE-APPENDIX\]

### **21.1 Locator Proof Registry（最小集）**

| item | locator | how\_to\_verify |
| ----- | ----- | ----- |
| Evidence Contract | N2:/mnt/data/OMOC\_施工RB+WI\_合冊\_v4.0.1-r1.md（ANCHOR:OMOC-RBWI-EVIDENCE-CONTRACT） | `rg -n "OMOC-RBWI-EVIDENCE-CONTRACT" …` |
| WP-010 contract spec | PEER:/mnt/data/OMOC\_WP-010+RB+WI\_v4.0.1-r2.md\#omoc-wp010-12-contract-spec | 以檔內 anchor 搜尋 |
| WP-011 status hygiene | PEER:/mnt/data/OMOC\_WP-011+RB+WI\_v4.0.1-r2.md\#omoc-wp011-spec-status-hygiene | 以檔內 anchor 搜尋 |
| WP-013 interface contract | PEER:/mnt/data/OMOC\_WP-013+RB+WI\_v4.0.1-r2.md\#omoc-wp013-13-interface-contract | 以檔內 anchor 搜尋 |

### **21.2 Legacy Coverage（舊版 → 新版）**

* 舊版 WP-014 的概念性段落（drift/closure）已被重構為：Requirements（§10）＋矩陣（§11）＋WI（§16）＋Gates（§17）。

---

## **22\) TT Register（CR\_OPEN=0）**

\[ANCHOR:OMOC-WP014-22-TT-REGISTER\]

| TT-ID | severity | category | title/statement | closure\_criteria | verification | evidence\_refs | owner | status |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| TT-WP014-GATE-001 | MAJOR | GATE\_CONTRACT | 無法保證取得 rulesets/API 輸出時的 gate\_contract 指紋一致性 | 取得可稽核輸出（API/等效）並固定 canonical JSON | 產出 gate\_contract.json \+ sha256 \+ diff | gate\_contract.\* | TBD | TEMP\_CLOSED |
| TT-WP014-SCHEMA-001 | MAJOR | SCHEMA\_DRIFT | closure\_matrix schema\_source 在 SSOT 未明確提供定義；需補齊並做 schema\_diff\_check | 定位上游 schema 或裁決並更新本文件 local schema | schema\_pin \+ schema\_diff \+ 更新矩陣/匯出 | schema\_pin.md | TBD | TEMP\_CLOSED |
| TT-WP014-TTEXPORT-001 | MAJOR | EXPORT\_SCHEMA | tt\_export.json 上游 schema 未能定位；需與 SSOT/自動稽核契約對齊 | 確認 schema 並更新匯出 mapping | 產出 tt\_export.json \+ 對照 | tt\_export.json | TBD | TEMP\_CLOSED |
| TT-WP014-IFACE-WP012-001 | MAJOR | INTERFACE | WP-012 缺穩定可回放 anchor（route-out 可靠性不足） | 補齊 WP-012 穩定 anchor 或提供可定位替代定位規格 | 驗證 route-out 可定位 | iface\_locators.md | TBD | TEMP\_CLOSED |
| TT-WP014-DRIFT-001 | MAJOR | DRIFT\_SPEC | drift 分類/偵測需與實際 repo 設定輸出綁定（避免只寫概念） | 在一次實跑中生成 drift\_report.json 並可回放 | drift\_report.json \+ evidence\_index | drift\_report.\* | TBD | TEMP\_CLOSED |

---

## **23\) Web Evidence Appendix（SUPPORT-only \+ Quarantine；逐筆 accessed\_at；drift\_action→TT）**

\[ANCHOR:OMOC-WP014-23-WEB-EVIDENCE\]

\*\*注意：\*\*本節僅 SUPPORT-only；不得升格為 MUST/SHALL。任何與 SSOT 衝突 → SSOT 優先；並開 TT-WEB-DRIFT-\*。

### **23.1 Web Evidence Entries（Quarantine）**

| web\_id | accessed\_at | claim (support) | why\_support\_only | conflicts\_with\_ssot? | drift\_action (TT) |
| ----- | ----- | ----- | ----- | ----- | ----- |
| WEB-001 | 2026-02-19T12:32:18+08:00 | Merge queue 需要在 workflow 加上 `merge_group` 事件，否則 queue checks 不會被觸發、required checks 不回報。 ([GitHub Docs](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/configuring-pull-request-merges/managing-a-merge-queue)) | GitHub 行為/文件可變 | No | TT-WEB-DRIFT-MQ-001（如觀測不符） |
| WEB-002 | 2026-02-19T12:32:18+08:00 | Rulesets 用於控管分支/標籤互動規則；可作 required status checks 的載體。 ([GitHub Docs](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-rulesets/about-rulesets)) | UI/功能可能調整 | No | TT-WEB-DRIFT-RULESET-001 |
| WEB-003 | 2026-02-19T12:32:18+08:00 | required status checks 具「近 7 天需完成成功」等行為細節；可能導致誤判。 ([GitHub Docs](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/collaborating-on-repositories-with-code-quality-features/troubleshooting-required-status-checks)) | 行為細節可能變動 | No | TT-WEB-DRIFT-RSC-001 |
| WEB-004 | 2026-02-19T12:32:18+08:00 | `gh pr merge` 在目標分支需要 merge queue 時，會自動加入 queue 或啟用 auto-merge。 ([GitHub CLI](https://cli.github.com/manual/gh_pr_merge)) | CLI/語義可變 | No | TT-WEB-DRIFT-GH-001 |

### **23.2 URL Quarantine（僅供稽核；置於 code block）**

WEB-001: docs.github.com — Managing a merge queue  
WEB-002: docs.github.com — About rulesets / Available rules for rulesets  
WEB-003: docs.github.com — Troubleshooting required status checks  
WEB-004: cli.github.com — gh pr merge / docs.github.com — merging with a merge queue

---

## **24\) Change Log（舊版→新版；Findings 修補映射）**

\[ANCHOR:OMOC-WP014-24-CHANGE-LOG\]

| finding\_id | severity | fix\_summary | implemented\_at |
| ----- | ----- | ----- | ----- |
| F-014-001 | BLOCKER | 強制 N4=r2；加入 superseded 掃描=0 門檻與 FAIL\_CLOSED 規則 | §5.2/§5.3/§17 |
| F-014-002 | MAJOR | 加入 schema\_source pin \+ schema\_diff\_check；上游未提供 schema → TT-WP014-SCHEMA-001 | §11.4/§22 |
| F-014-003 | BLOCKER | Document Control 補 ssot\_lock \+ compat\_note；不再宣告 r1 aligned | §1 |
| F-014-004 | MAJOR | UI drift 成 requirement 並硬接 closure\_matrix（漂移即 TT/降級） | §13.4/§11.2 |
| F-014-005 | MINOR | Doc Inventory 補 sha256/lines \+ locator\_proof 可重跑 | §6 |
| F-014-006 | MAJOR | gate\_contract 指紋/哈希/驗證步驟 | §11.3/§17 |
| F-014-007 | MAJOR | PASS/TEMP\_CLOSED/FAIL\_CLOSED 判定優先序決策表 | §17.3 |
| F-014-008 | MAJOR | 移除 ASSUMED；Preflight 強制檢核與失敗處置 | §8.2/§16 WI-014-00 |
| F-014-009 | MAJOR | tt\_export.json schema \+ mapping；不足處 TT | §14.3/§22 |
| F-014-010 | MINOR | Tool Decision Matrix（必用/禁用） | §8 |
| F-014-011 | MAJOR | Secrets Zero 掃描規則/遮罩策略/門檻=0 | §20/§16 WI-014-50 |
| F-014-012 | MINOR | 資料/指令分離白名單與 evidence 結構規則 | §20.3 |
| F-014-013 | MAJOR | ≥8 反例測試表並可接 TT | §19 |
| F-014-014 | BLOCKER | Interface Contract（WP-010\~013 硬路由；WP-012 anchor 不穩 → TT） | §12/§22 |

---

## **25\) machine\_summary.json（純 JSON）**

\[ANCHOR:OMOC-WP014-25-MACHINE-SUMMARY\]

{  
  "doc\_id": "OMOC\_WP-014+RB+WI",  
  "version": "v4.0.1-r2",  
  "phase": "Phase-G/G5",  
  "generated\_at": "2026-02-19T12:32:18+08:00",  
  "baseline\_web\_date": "2026-02-14",  
  "mode": "Files-first \+ WTNA (Web SUPPORT-only)",  
  "ssot\_lock": {  
    "bp": "v4.0.1-r1",  
    "rbwi": "v4.0.1-r1",  
    "skills": "v4.0.1-r2",  
    "wp\_total": "v4.0.1-r2"  
  },  
  "req\_count": 20,  
  "tt\_count": 5,  
  "cr\_open": 0,  
  "overall\_verdict": "TEMP\_CLOSED",  
  "gates": {  
    "entry": \["GATE-WP014-ENTRY-001", "GATE-WP014-ENTRY-002", "GATE-WP014-ENTRY-003"\],  
    "exit": \["GATE-WP014-EXIT-001", "GATE-WP014-EXIT-002", "GATE-WP014-EXIT-003", "GATE-WP014-EXIT-004"\]  
  },  
  "key\_outputs": \[  
    "preflight.log",  
    "bk\_manifest.json",  
    "drift\_report.md",  
    "closure\_matrix.md",  
    "tt\_export.json",  
    "evidence\_bundle.tgz",  
    "secrets\_scan.txt"  
  \]  
}

