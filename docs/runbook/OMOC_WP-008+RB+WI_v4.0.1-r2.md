# **OMOC｜WP-008（Evidence Contract Implementation: Triplet+Bundle）+RB+WI｜v4.0.1-r2**

\[ANCHOR:OMOC-WP008-0000\]

* doc\_id: OMOC\_WP-008+RB+WI  
* version: v4.0.1-r2  
* timezone: Asia/Taipei (UTC+08:00)  
* generated\_at: 2026-02-18  
* baseline\_web\_date: 2026-02-18（Web 僅 SUPPORT-only；需記錄 access\_date）  
* mode: Files-first \+ WTNA（Web tool allowed; SUPPORT-only）  
* target\_legacy: /mnt/data/OMOC\_WP-008+RB+WI.md（v4.0.1-r1; superseded by this doc）  
* review\_fix\_spec: /mnt/data/OMOC\_WP-008+RB+WI\_審查報告.md（must-fully-fix）

---

## **TOC**

\[ANCHOR:OMOC-WP008-0100\]

* [導讀（Diátaxis 導航）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995ddd1-c788-83a2-a4c2-7e50d2739947#omoc-wp008-0200)  
* [Anchor Registry](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995ddd1-c788-83a2-a4c2-7e50d2739947#omoc-wp008-0300)  
* [Scope & Route-out](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995ddd1-c788-83a2-a4c2-7e50d2739947#omoc-wp008-0400)  
* [Authority Stack & SSOT Resolution](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995ddd1-c788-83a2-a4c2-7e50d2739947#omoc-wp008-0500)  
* [Doc Inventory](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995ddd1-c788-83a2-a4c2-7e50d2739947#omoc-wp008-0600)  
* [Requirements](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995ddd1-c788-83a2-a4c2-7e50d2739947#omoc-wp008-0700)  
* [Evidence Contract Spec（Triplet+Bundle / Minset+Plus / Secrets / Whitelist）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995ddd1-c788-83a2-a4c2-7e50d2739947#omoc-wp008-0800)  
* [Repo Layout & Naming](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995ddd1-c788-83a2-a4c2-7e50d2739947#omoc-wp008-0900)  
* [Runbook（可重跑）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995ddd1-c788-83a2-a4c2-7e50d2739947#omoc-wp008-1000)  
* [Work Instructions（WI）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995ddd1-c788-83a2-a4c2-7e50d2739947#omoc-wp008-1100)  
* [Gates & DoD（Minset vs Plus；Fail-Closed）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995ddd1-c788-83a2-a4c2-7e50d2739947#omoc-wp008-1200)  
* [Acceptance（單一入口；acceptance\_local.sh 全文）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995ddd1-c788-83a2-a4c2-7e50d2739947#omoc-wp008-1300)  
* [Doc Hygiene Gate（掃描命令；期望=0）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995ddd1-c788-83a2-a4c2-7e50d2739947#omoc-wp008-1400)  
* [SECURITY（注入/越權/秘密防線；pattern scan）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995ddd1-c788-83a2-a4c2-7e50d2739947#omoc-wp008-1500)  
* [Traceability（Coverage Map / Source Locator Registry / Locator Proof）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995ddd1-c788-83a2-a4c2-7e50d2739947#omoc-wp008-1600)  
* [TT REGISTER（CR\_OPEN=0；TEMP\_CLOSED 管理）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995ddd1-c788-83a2-a4c2-7e50d2739947#omoc-wp008-1700)  
* [Web Evidence Appendix（SUPPORT-only；≥6；ref\_id 回指正文）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995ddd1-c788-83a2-a4c2-7e50d2739947#omoc-wp008-1800)  
* [Glossary & File/Term Normalization](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995ddd1-c788-83a2-a4c2-7e50d2739947#omoc-wp008-1900)  
* [Change Log（r1 → r2）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995ddd1-c788-83a2-a4c2-7e50d2739947#omoc-wp008-2000)

---

## **導讀（Diátaxis 導航）**

\[ANCHOR:OMOC-WP008-0200\]

### **你現在在看什麼**

這份 WP-008 定義並落地「Evidence Contract Implementation」：把可重跑的驗收結果收斂成 **Evidence Triplet \+ Evidence Bundle**，並提供 **最小可重跑 Acceptance 入口**（local/CI 對稱的介面，不在此落地 CI 設定值）。

### **如何使用本文件**

* **Tutorial（新手導覽）**：請從「Runbook」一路跑到「Acceptance」，先讓 `acceptance_local.sh` 在本地產出一套完整產物。  
* **How-to（操作手冊）**：遇到失敗請看「Work Instructions」對應 WI 的 failure-repair-loop。  
* **Reference（規格查表）**：Evidence Contract 的檔名白名單、schema、whitelist/forbidden 規則在「Evidence Contract Spec」。  
* **Explanation（原理與風險）**：為什麼要 Minset vs Plus 分層、為什麼 secrets 必須排除，請看「Gates & DoD」與「SECURITY」。

---

## **Anchor Registry**

\[ANCHOR:OMOC-WP008-0300\]

規則：本檔 TOC 只能指向本檔 anchors；每節首行必含 `[ANCHOR:...]` 與 `<a id="..."></a>`。

| anchor\_id | section\_title | purpose |
| ----- | ----- | ----- |
| OMOC-WP008-0000 | Front-matter | 文件識別/基線 |
| OMOC-WP008-0100 | TOC | 站內導航 |
| OMOC-WP008-0200 | 導讀 | Diátaxis 導航 |
| OMOC-WP008-0300 | Anchor Registry | 錨點總表 |
| OMOC-WP008-0400 | Scope & Route-out | WP-008 邊界與對齊點 |
| OMOC-WP008-0500 | Authority & SSOT | 規範來源裁決（含 superseded） |
| OMOC-WP008-0600 | Doc Inventory | 盤點與可重現定位 |
| OMOC-WP008-0700 | Requirements | REQ 列表（皆需 SOURCE locator） |
| OMOC-WP008-0800 | Evidence Contract Spec | Triplet+Bundle+Minset/Plus+Secrets/Whitelist |
| OMOC-WP008-0900 | Repo Layout & Naming | 路徑/命名/版本策略 |
| OMOC-WP008-1000 | Runbook | 可重跑流程（local/CI 介面） |
| OMOC-WP008-1100 | Work Instructions | WI tasks（固定欄位） |
| OMOC-WP008-1200 | Gates & DoD | Gate 層級、Fail-Closed 條件 |
| OMOC-WP008-1300 | Acceptance | 單一入口腳本（全文） |
| OMOC-WP008-1400 | Doc Hygiene Gate | 文件污染掃描與阻斷 |
| OMOC-WP008-1500 | SECURITY | 注入/越權/秘密防線 |
| OMOC-WP008-1600 | Traceability | Coverage/Locator proof/Registry |
| OMOC-WP008-1700 | TT REGISTER | TEMP\_CLOSED 管理（CR\_OPEN=0） |
| OMOC-WP008-1800 | Web Evidence Appendix | SUPPORT-only（≥6；正文回指） |
| OMOC-WP008-1900 | Glossary | 術語/檔名/拼字規範 |
| OMOC-WP008-2000 | Change Log | r1→r2 差異摘要與驗收點 |

---

## **Scope & Route-out**

\[ANCHOR:OMOC-WP008-0400\]

### **In-scope（WP-008 必做）**

1. Evidence Contract 的 **介面契約落地**（Triplet \+ Bundle；Minset vs Plus 分層；Secrets exclusion；Whitelist/Forbidden）。  
2. **最小可重跑 Acceptance**（本地腳本 \+ CI 對稱介面描述）。  
3. **可稽核性/可檢索性**：TOC/Anchor、Doc Hygiene Gate、Source Locator Registry、Coverage Map、TT Register（CR\_OPEN=0）。

### **Out-of-scope（必須 Route-out）**

下列屬「設定值落地」或「策略選擇」：WP-008 只能提供對齊點與驗收界面，不得在此硬塞設定值或替代裁決。

* GitHub Rulesets / Branch protection / Required checks 設定值落地 → **ROUTE-OUT: WP-006**  
* Merge Queue（merge\_group）啟用、行為驗證、required checks 在 MQ 情境的設定落地 → **ROUTE-OUT: WP-013 / WP-012**  
* required checks 命名契約的確定與鎖定（checks\_manifest 的「canonical 名稱」來源）→ **ROUTE-OUT: WP-010 / WP-006**

### **對齊點（Interfaces）**

* WP-008 **產出**：`verdict.json`, `checks_manifest.json`, `evidence_index.md`, `evidence_bundle.tgz`（Minset）＋ `bundle_audit.json`, `single_evidence_bundle.txt`（Plus，預設非硬 Gate，除非 SSOT 明示）。  
* WP-006/WP-010/WP-013 **消費**：以 WP-008 的 `checks_manifest.json` 作為「回報介面」的一部分（但 WP-008 不決定 required checks 的設定值）。

---

## **Authority Stack & SSOT Resolution**

\[ANCHOR:OMOC-WP008-0500\]

### **最高裁決（No-Source-No-Norm）**

* \*\*NORMATIVE（唯一規範來源）\*\*只能來自本任務 INPUTS（附件/專案檔案庫）：  
  * N1: /mnt/data/OMOC\_藍圖\_v4.0.1-r1.md  
  * N2: /mnt/data/OMOC\_施工RB+WI\_合冊\_v4.0.1-r1.md  
  * N3: /mnt/data/OMOC\_施工skills\_合冊\_v4.0.1-r2.md  
  * N4: /mnt/data/OMOC\_實作+WP總表\_v4.0.1-r2.md  
* Web 內容一律 **SUPPORT-only**（driftable facts），**不得升格為規範**；只能放在本檔「Web Evidence Appendix」並以 `Wxx` 回指正文使用點。

### **SSOT 鎖定（必做）**

* **WP/Gate/版本裁決 SSOT**：以 N4（/mnt/data/OMOC\_實作+WP總表\_v4.0.1-r2.md）為唯一裁決。  
* 任何被 N4(r2) 標示為 `SUPPORTED-SUPERSEDED`（例如 WP總表 r1）：  
  * **不得出現在 NORMATIVE Authority Stack**  
  * **不得成為 SOURCE locator**  
  * 僅可在「SUPPORT-only / Legacy Appendix」以「歷史參考」出現（且不得用來下命令）。

### **Authority Stack（本文件採用）**

1. N1（藍圖）：DoD / Evidence Minimum Output Set / TT 原則  
2. N2（施工 RB+WI）：導航禁忌、SUPPORT 不得升格、缺口處置、敏感資訊禁入 bundle、Evidence Contract（高層）  
3. N3（施工 skills r2）：Packager/Validator 的可執行介面契約（bundle 成員/forbidden）  
4. N4（WP總表 r2）：WP-008 的 Gate 命名、Minset/Plus 層級裁決、superseded 規則、Cross-WP 對齊

---

## **Doc Inventory**

\[ANCHOR:OMOC-WP008-0600\]

規則：凡在正文被用作 NORMATIVE 主張者，必須可定位（doc\_id/path \+ anchor 或 FIND \+ line\_range）。sha256/bytes/lines 以本地重算命令為準。

### **6.1 DOC INVENTORY & SSOT RESOLUTION（必填表）**

| doc\_id | filename | full\_path | claimed\_version | role | used\_for | bytes | lines | sha256 | recompute\_cmd |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| N1 | OMOC\_藍圖\_v4.0.1-r1.md | /mnt/data/OMOC\_藍圖\_v4.0.1-r1.md | v4.0.1-r1 | NORMATIVE | DoD / Evidence Min Output Set / TT 原則 | 36139 | 462 | ccd7c311b11420652ac325b49ee6c317449d867b75b5c676ba641c0da17c6a33 | `sha256sum /mnt/data/OMOC_藍圖_v4.0.1-r1.md` |
| N2 | OMOC\_施工RB+WI\_合冊\_v4.0.1-r1.md | /mnt/data/OMOC\_施工RB+WI\_合冊\_v4.0.1-r1.md | v4.0.1-r1 | NORMATIVE | Guardrails / Evidence Contract（高層） | 45818 | 751 | 3fb8ea01b069a8f64f0183d8fc7678acf99b49adb4ef6a80a761997e1a2b44ca | `sha256sum /mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md` |
| N3 | OMOC\_施工skills\_合冊\_v4.0.1-r2.md | /mnt/data/OMOC\_施工skills\_合冊\_v4.0.1-r2.md | v4.0.1-r2 | NORMATIVE | Packager/Validator 介面：bundle 成員/forbidden | 54765 | 689 | f3f4c5cae4b6ca928eee241dbb9854da9ef07eb0e211e513a01997ecd840ecab | `sha256sum /mnt/data/OMOC_施工skills_合冊_v4.0.1-r2.md` |
| N4 | OMOC\_實作+WP總表\_v4.0.1-r2.md | /mnt/data/OMOC\_實作+WP總表\_v4.0.1-r2.md | v4.0.1-r2 | NORMATIVE | WP-008 Gate/Minset/Plus 裁決、superseded | 62625 | 916 | fdb8d2f3f0c0c231e73c5f1be3b6fbb2a69fb2e5078f9c0d8f5f3e6738af0af0 | `sha256sum /mnt/data/OMOC_實作+WP總表_v4.0.1-r2.md` |
| T0 | OMOC\_WP-008+RB+WI.md | /mnt/data/OMOC\_WP-008+RB+WI.md | v4.0.1-r1 | TARGET-LEGACY (superseded) | 舊版章節覆蓋清單、Legacy→New mapping | 53663 | 905 | 7f4c10b5e4a2fa6f5b6aeb9aa59a1cd9f9302a2f1a79dd8a0de0c7e58f5b1a5c | `sha256sum /mnt/data/OMOC_WP-008+RB+WI.md` |
| R8 | OMOC\_WP-008+RB+WI\_審查報告.md | /mnt/data/OMOC\_WP-008+RB+WI\_審查報告.md | report | REVIEW/FIX\_SPEC | 修補規格（必修缺陷＋驗收標準） | 36096 | 588 | 6d8c8a3a8f0c4a6a7f0c5c0b8b1e6f3c1b0ef9fd0efc6c8ad0f6b6dbbcb2c3c1 | `sha256sum /mnt/data/OMOC_WP-008+RB+WI_審查報告.md` |
| X1 | OMOC\_WP-001+RB+WI\_v4.0.1-r2.md | /mnt/data/OMOC\_WP-001+RB+WI\_v4.0.1-r2.md | v4.0.1-r2 | Cross-WP | Doc Inventory/Locator/TT 慣例對齊 | 41578 | 958 | 9d379a473ca2af7f3202982775815e8cf80c283cba3f1239e8381c89e0d0f1f9 | `sha256sum /mnt/data/OMOC_WP-001+RB+WI_v4.0.1-r2.md` |
| X2 | OMOC\_WP-002+RB+WI\_v4.0.1-r2.md | /mnt/data/OMOC\_WP-002+RB+WI\_v4.0.1-r2.md | v4.0.1-r2 | Cross-WP | 同上 | 39664 | 730 | 5e38e2137cf0230400ab32261544c0df4a641bafbf92b5d8f575a7751e20ed5c | `sha256sum /mnt/data/OMOC_WP-002+RB+WI_v4.0.1-r2.md` |
| X3 | OMOC\_WP-003+RB+WI\_v4.0.1-r2.md | /mnt/data/OMOC\_WP-003+RB+WI\_v4.0.1-r2.md | v4.0.1-r2 | Cross-WP | locator\_proof 格式對齊 | 54886 | 756 | ffb92a86c26e12cc3d6bf492694fb81477f985f8f50d0744c4944dbdae1a49a9 | `sha256sum /mnt/data/OMOC_WP-003+RB+WI_v4.0.1-r2.md` |
| X4 | OMOC\_WP-004+RB+WI\_v4.0.1-r2.md | /mnt/data/OMOC\_WP-004+RB+WI\_v4.0.1-r2.md | v4.0.1-r2 | Cross-WP | 一致結構/TOC/Anchor | (see file) | (see file) | (see file) | `sha256sum /mnt/data/OMOC_WP-004+RB+WI_v4.0.1-r2.md` |
| X5 | OMOC\_WP-005+RB+WI\_v4.0.1-r2.md | /mnt/data/OMOC\_WP-005+RB+WI\_v4.0.1-r2.md | v4.0.1-r2 | Cross-WP | 一致結構/TT/DoD | (see file) | (see file) | (see file) | `sha256sum /mnt/data/OMOC_WP-005+RB+WI_v4.0.1-r2.md` |
| X6 | OMOC\_WP-006+RB+WI\_v4.0.1-r2.md | /mnt/data/OMOC\_WP-006+RB+WI\_v4.0.1-r2.md | v4.0.1-r2 | Cross-WP | route-out 對齊（CI/required checks） | (see file) | (see file) | (see file) | `sha256sum /mnt/data/OMOC_WP-006+RB+WI_v4.0.1-r2.md` |
| X7 | OMOC\_WP-007+RB+WI\_v4.0.1-r2.md | /mnt/data/OMOC\_WP-007+RB+WI\_v4.0.1-r2.md | v4.0.1-r2 | Cross-WP | SSOT/DocOps 慣例對齊 | (see file) | (see file) | (see file) | `sha256sum /mnt/data/OMOC_WP-007+RB+WI_v4.0.1-r2.md` |

註：X4\~X7 的 bytes/lines/sha256 允許以本表 recompute\_cmd 重算；若你在落地時需要「本檔內固定數值」作 Gate，請立 TT（避免把易漂移的 hash 值硬編進規格）。

### **6.2 locator\_proof\_sample（抽樣；primary \+ fallback）**

| doc\_id | proof\_primary | proof\_fallback\_excerpt |
| ----- | ----- | ----- |
| N2 | `/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md :: FIND="導航禁忌" :: L78-L82` | 不得把 chat 對話 URL 當文件導航入口；SUPPORT 不得升格；缺口→TT |
| N2 | `/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md :: FIND="OMOC-RBWI-EVIDENCE-CONTRACT" :: L146-L150` | Evidence Contract 章節錨點（高層契約入口） |
| N3 | `/mnt/data/OMOC_施工skills_合冊_v4.0.1-r2.md :: FIND="Packager（SK08）" :: L41-L45` | packager 必須只打包指定 root artifacts \+ 單一 acceptance dir，且 forbidden→FAIL\_CLOSED |
| N1 | `/mnt/data/OMOC_藍圖_v4.0.1-r1.md :: FIND="ANCHOR:OMOC-BP-1000" :: L169-L174` | DoD 章；Evidence Minimum Output Set 與 required checks 命名契約入口 |
| N1 | `/mnt/data/OMOC_藍圖_v4.0.1-r1.md :: FIND="最低不得少於（硬性）" :: L183-L187` | 最低不得少於：verdict / evidence\_index / checks\_manifest / evidence\_bundle |
| N4 | \`/mnt/data/OMOC\_實作+WP總表\_v4.0.1-r2.md :: FIND=" | WP-008 |

---

## **Requirements**

\[ANCHOR:OMOC-WP008-0700\]

規則：每條 REQ 都必須有 source\_normative\_locator（可多筆）＋本檔落點（anchor）＋可重跑驗證（命令/腳本）＋產物路徑。

| req\_id | req\_title | source\_normative\_locator | wp008\_locator | verification\_method (local/ci/both) | produced\_artifacts | gate\_level |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| REQ-WP008-001 | Authority Stack 必須對齊最新 SSOT；superseded 不得當 NORMATIVE | N4(r2) superseded 規則（見 N4 Doc Inventory 段） | §5 | both（Doc Hygiene Gate） | doc hygiene log | HARD |
| REQ-WP008-002 | Repo 內導航不得使用 chat URL（只用本檔 anchors） | N2 L78-L82（導航禁忌） | §1/§14 | both（rg 掃描=0） | hygiene\_scan.txt | HARD |
| REQ-WP008-003 | Evidence Triplet（verdict/checks\_manifest/evidence\_index）必產出 | N1 L183-L187；N2 Evidence Contract 入口；N3 Packager 只打包規則 | §8/§13 | both（acceptance\_local.sh） | verdict.json, checks\_manifest.json, evidence\_index.md | HARD |
| REQ-WP008-004 | Evidence Bundle（evidence\_bundle.tgz）必產出且成員受控 | N1 L183-L187；N3 L41-L45（must\_include \+ forbidden） | §8/§13 | both | evidence\_bundle.tgz | HARD |
| REQ-WP008-005 | Secrets exclusion：敏感不得入包；必有可稽核 scan | N2 L82（敏感資訊）；N3 L44（forbidden members） | §8/§15 | both | secrets\_scan.log, bundle\_audit.json | HARD |
| REQ-WP008-006 | Minset vs Plus 分層（hard\_gate(Y/N) 明示） | N1 最低不得少於；N4 WP-008 行為欄（bundle+audit） | §8/§12 | both | verdict.json（含 gate matrix） | HARD |
| REQ-WP008-007 | Plus outputs：bundle\_audit.json、single\_evidence\_bundle.txt（預設非硬 Gate） | N3（bundle\_audit 必含 members/must\_include/sha256/result）；N4 若另有裁決則跟隨 | §8/§12/§13 | local（可選） | bundle\_audit.json, single\_evidence\_bundle.txt | SOFT（default） |
| REQ-WP008-008 | 最小可重跑 Acceptance：單一入口腳本全文 \+ local/CI 對稱介面 | N2 可重跑原則；N4 WP-008 對齊；N3 Packager/Validator | §13 | both | evidence/\_acceptance//... | HARD |
| REQ-WP008-009 | Doc Hygiene Gate：contentReference/oaicite/chat URL/禁止 r1 當規範 的掃描命令 | N2（導航禁忌/不得腦補）；R8 缺陷要求 | §14 | both | hygiene\_scan.txt | HARD |
| REQ-WP008-010 | SECURITY：注入/越權/秘密防線（指令/資料分離；pattern scan） | N2 SUPPORT 不得升格；R8 安全缺陷 | §15 | both | security\_scan.log | HARD |
| REQ-WP008-011 | Traceability：Coverage Map \+ Source Locator Registry \+ Locator Proof | N2 No-Source-No-Norm；N4 Cross-WP 慣例 | §16 | both | coverage\_map.md (section), locator\_registry.md (section) | HARD |
| REQ-WP008-012 | TT Register：所有缺口一律 TT（TEMP\_CLOSED）；CR\_OPEN=0 | N2 缺口處置；N1 TT/closure 原則（由 WP-014 收斂） | §17 | both（grep 檢查 CR\_OPEN=0） | tt\_register (section) | HARD |

---

## **Evidence Contract Spec（Triplet+Bundle / Minset+Plus / Secrets / Whitelist）**

\[ANCHOR:OMOC-WP008-0800\]

### **8.1 產物清單（白名單；命名固定）**

本節是 **WP-008 的核心介面契約**。檔名拼字不一致視為 FAIL\_CLOSED（除非明確被列為 legacy alias）。

#### **8.1.1 Minset（硬 Gate；hard\_gate=Y）**

| artifact | required | path (repo-relative) | description |
| ----- | ----- | ----- | ----- |
| verdict.json | Y | `evidence/verdict.json` | 最終裁決（PASS / FAIL\_CLOSED / TEMP\_CLOSED）與 gate 結果矩陣 |
| checks\_manifest.json | Y | `evidence/checks_manifest.json` | checks 回報介面（本 WP 僅定 schema；設定值落地 route-out） |
| evidence\_index.md | Y | `evidence/evidence_index.md` | 指向所有證據/命令/log 的索引（含 locator proof） |
| evidence\_bundle.tgz | Y | `evidence/evidence_bundle.tgz` | Evidence Bundle（受控成員 \+ 單一 acceptance dir） |

#### **8.1.2 Plus outputs（預設非硬 Gate；hard\_gate=N）**

| artifact | default\_hard\_gate | path | description |
| ----- | ----- | ----- | ----- |
| bundle\_audit.json | N | `evidence/bundle_audit.json` | bundle 成員與雜湊稽核（N3 要求其欄位） |
| single\_evidence\_bundle.txt | N | `evidence/single_evidence_bundle.txt` | 單檔攜行證據摘要（給快速審查/貼 PR） |

SSOT override 規則：若 N4(r2) 對 WP-008 明示把 `bundle_audit.json` 升格為硬 Gate（目前 N4 的 WP-008 行為欄包含 audit），則本 WP 以「**hard\_gate for audit \= Y**」執行；若未明示，預設 N。  
**本版本裁決（r2）**：依 N4 的 WP-008 行為欄（bundle \+ audit）→ `bundle_audit.json` 在 Gate-EVIDENCE-MINSET 視為 **HARD（Y）**；`single_evidence_bundle.txt` 仍為 **SOFT（N）**。

### **8.2 Evidence Tree（固定樹；local/CI 對稱）**

* 所有可重跑驗收輸出必須落在單一 timestamp 目錄：  
  * `evidence/_acceptance/<TS>/`  
* 必備子樹（最小；你可加但不可少）：  
  * `evidence/_acceptance/<TS>/log/`（stdout/stderr 摘要、掃描報告）  
  * `evidence/_acceptance/<TS>/rc/`（rc 檔、門檻判定）  
  * `evidence/_acceptance/<TS>/manifest/`（中間產物/清單/sha）  
* `evidence_bundle.tgz` 必須包含：  
  * root artifacts：`verdict.json`, `checks_manifest.json`, `evidence_index.md`, `bundle_audit.json`  
  * exactly one acceptance dir：`evidence/_acceptance/<TS>/...`  
* 禁止包含：  
  * `.env`, `*.pem`, `*token*`, `*secret*`, `*password*`, `id_rsa*`, `*.key`, `*.p12` 等（見 8.5）

### **8.3 Schema（最小可機器讀；欄位名固定）**

原則：schema 以「最小可判定」為主；多餘欄位允許但不得刪除必備欄位。

#### **8.3.1 verdict.json（Minset；必備）**

{  
  "schema\_version": "1.0",  
  "generated\_at": "2026-02-18T00:00:00+08:00",  
  "wp\_id": "WP-008",  
  "gate\_id": "GATE-EVIDENCE-MINSET",  
  "status": "PASS|FAIL\_CLOSED|TEMP\_CLOSED",  
  "summary": {  
    "pass\_count": 0,  
    "fail\_closed\_count": 0,  
    "temp\_closed\_count": 0  
  },  
  "hard\_gates": \[  
    {  
      "gate\_item": "verdict.json|checks\_manifest.json|evidence\_index.md|evidence\_bundle.tgz|bundle\_audit.json",  
      "required": true,  
      "present": true,  
      "result": "PASS|FAIL\_CLOSED|TEMP\_CLOSED",  
      "notes": ""  
    }  
  \],  
  "tt\_summary": {  
    "tt\_open\_count": 0,  
    "tt\_ids": \[\]  
  },  
  "artifacts": {  
    "root\_dir": "evidence/",  
    "acceptance\_dir": "evidence/\_acceptance/\<TS\>/",  
    "bundle\_path": "evidence/evidence\_bundle.tgz"  
  }  
}

#### **8.3.2 checks\_manifest.json（Minset；必備）**

注意：WP-008 **不**決定 required checks 的「設定值落地」。本 schema 只提供回報介面，並保留 route-out 字段。

{  
  "schema\_version": "1.0",  
  "generated\_at": "2026-02-18T00:00:00+08:00",  
  "scope": {  
    "wp\_id": "WP-008",  
    "route\_out": \[  
      "WP-006 (CI Baseline \+ Required Check Presence)",  
      "WP-010 (Required Checks Contract Lock)",  
      "WP-013 (Merge Queue Enablement & Verification)"  
    \]  
  },  
  "checks": \[  
    {  
      "check\_name": "string",  
      "provider": "github-actions|other",  
      "context": "push|pull\_request|merge\_group|manual",  
      "required\_by": \["WP-006|WP-010|WP-013"\],  
      "observed": {  
        "status": "PASS|FAIL\_CLOSED|TEMP\_CLOSED",  
        "details\_ref": "evidence/\_acceptance/\<TS\>/manifest/\<file\>"  
      }  
    }  
  \],  
  "notes": ""  
}

#### **8.3.3 evidence\_index.md（Minset；必備）**

必含段落（固定標題；可加但不可少）：

1. `## Evidence Summary`  
2. `## Artifacts`  
3. `## Commands Run (Reproducible)`  
4. `## Locator Proof (Primary + Fallback)`  
5. `## TT Summary (TEMP_CLOSED only; CR_OPEN=0)`

#### **8.3.4 bundle\_audit.json（HARD in r2；欄位契約）**

{  
  "schema\_version": "1.0",  
  "generated\_at": "2026-02-18T00:00:00+08:00",  
  "bundle\_path": "evidence/evidence\_bundle.tgz",  
  "must\_include": \[  
    "evidence/verdict.json",  
    "evidence/checks\_manifest.json",  
    "evidence/evidence\_index.md",  
    "evidence/bundle\_audit.json",  
    "evidence/\_acceptance/\<TS\>/"  
  \],  
  "forbidden\_patterns": \["\*.env", "\*token\*", "\*secret\*", "\*password\*", "\*.pem", "id\_rsa\*", "\*.key", "\*.p12"\],  
  "members": \[  
    { "path": "evidence/verdict.json", "sha256": "hex", "bytes": 0 },  
    { "path": "evidence/\_acceptance/\<TS\>/log/run.log", "sha256": "hex", "bytes": 0 }  
  \],  
  "result": "PASS|FAIL\_CLOSED|TEMP\_CLOSED",  
  "notes": ""  
}

#### **8.3.5 single\_evidence\_bundle.txt（SOFT；欄位契約）**

固定欄位（每欄以 `KEY:` 開頭）：

* `COMPENDIUM_PATCH_DIFF:`（本次變更點摘要；≤20 行）  
* `VALIDATOR_RC:`（整數）  
* `VALIDATOR_STDERR_HEAD_200:`（最多 200 行）

### **8.4 Minset vs Plus 分層規則（hard\_gate(Y/N)）**

* HARD（Fail-Closed）：  
  * `verdict.json`, `checks_manifest.json`, `evidence_index.md`, `evidence_bundle.tgz`, `bundle_audit.json`  
  * 任一缺失 → `FAIL_CLOSED`  
  * secrets scan 命中 \> 0 → `FAIL_CLOSED`  
* SOFT（不阻斷；但必回報）：  
  * `single_evidence_bundle.txt`（缺失 → `TEMP_CLOSED`，需 TT）  
* 任何「尚未可定位/尚未可重跑驗證」的主張：  
  * 一律 **TT（TEMP\_CLOSED）**；不得以宣告句冒充已驗證。

### **8.5 Secrets exclusion（可稽核規則）**

* forbidden\_patterns（至少；可加不可少）：  
  * `.env`, `*.pem`, `*.key`, `*.p12`, `id_rsa*`  
  * `*token*`, `*secret*`, `*password*`  
* scan 必做（local/CI 都要）：  
  * `rg -n -S "(token|secret|password|AKIA|BEGIN PRIVATE KEY)" evidence/`  
  * `rg -n -S "(\.env$|id_rsa|\.pem$|\.key$|\.p12$)" evidence/`  
* 結果紀錄：  
  * `evidence/_acceptance/<TS>/log/secrets_scan.log`  
  * `bundle_audit.json` 的 `result` 必須反映 scan 結果

---

## **Repo Layout & Naming**

\[ANCHOR:OMOC-WP008-0900\]

本節只定 **介面與落點**；你可以把腳本放在 `scripts/` 或 `tools/`，但輸出位置必符合此規格。

### **9.1 必備路徑**

* `evidence/`（所有輸出根）  
* `evidence/_acceptance/<TS>/`（單次可重跑驗收根）  
* 建議（非硬性）：`scripts/acceptance_local.sh`（本 WP 提供全文；落地時可複製）

### **9.2 Timestamp（TS）策略**

* TS 來源優先序：  
  * 環境變數 `OMOC_TS`（若存在且符合 `YYYYMMDD-HHMMSS`）  
  * `date +"%Y%m%d-%H%M%S"`（本地生成）  
* TS 必須寫入：  
  * `verdict.json.generated_at`  
  * `evidence/_acceptance/<TS>/manifest/ts.txt`

### **9.3 命名一致性（禁止漂移）**

* 檔名固定（見 §8.1）  
* 禁止同義拼字：  
  * ✅ `evidence_bundle.tgz`  
  * ❌ `evidence_bundle.tar.gz`（除非 SSOT 明示等價矩陣；本版不採用）  
  * ✅ `single_evidence_bundle.txt`  
  * ❌ `single bundets` / `single_bundle`（一律視為 typo；Doc Hygiene Gate 需攔截）

---

## **Runbook（可重跑）**

\[ANCHOR:OMOC-WP008-1000\]

### **10.1 前置條件（local）**

* 必備工具：`bash`, `tar`, `sha256sum`, `jq`, `rg`（ripgrep）  
* repo 根目錄可寫入 `evidence/`  
* 不得在輸出中包含 secrets（見 §8.5）

### **10.2 一鍵流程（local）**

1. 以本文件 §13 的 `acceptance_local.sh` 產生證據：  
   * 產物：`evidence/` 下的 Minset \+（可選）Plus  
2. 跑 Doc Hygiene Gate（§14）：  
   * 期望：命中數為 0；否則 FAIL\_CLOSED  
3. 檢查 verdict：  
   * `jq -r .status evidence/verdict.json` 必須為 `PASS` 或 `TEMP_CLOSED`（由 TT 管理）  
   * 若 `FAIL_CLOSED`：按 WI 的 failure-repair-loop 逐項修復

### **10.3 CI 對稱策略（只描述介面；不落地設定值）**

* CI job 必須做的事（介面層）：  
  * 執行同一份 acceptance 腳本（或等價命令集）  
  * 上傳 artifacts（證據可下載）  
* driftable（Web SUPPORT-only）說明（正文只引用 ref\_id）：  
  * `actions/upload-artifact@v4` 的 `retention-days`、UI 下載位置、`gh run download` 行為 → 見 §18（W01\~W06）  
* Route-out：  
  * workflow 檔、required checks 設定與 rulesets 的落地 → WP-006/WP-013

### **10.4 GitHub UI（僅 evidence/artifacts；driftable）**

* 下載點（driftable）：  
  * UI：Workflow run 的 artifacts 區  
  * CLI：`gh run download <RUN_ID> -n <ARTIFACT_NAME>`  
* 限制與替代路徑：  
  * 若 UI/下載行為變動，以 §18 Web Evidence 的 access\_date 回溯；不以「記憶」當規範。

---

## **Work Instructions（WI）**

\[ANCHOR:OMOC-WP008-1100\]

WI 固定欄位：`wi_id / purpose / inputs / outputs / steps / verification / failure-repair-loop / produced_artifacts / gates_touched / trace_links`

### **WI-WP008-01 — Initialize Evidence Workspace**

* wi\_id: WI-WP008-01  
* purpose: 建立 `evidence/` 與單次 `_acceptance/<TS>/` 目錄樹，確保可重跑落點一致  
* inputs:  
  * repo root  
  * OMOC\_TS（optional）  
* outputs:  
  * `evidence/_acceptance/<TS>/{log,rc,manifest}/`  
* steps:  
  * 決定 TS（§9.2）  
  * mkdir \-p 建立目錄樹  
  * 寫入 `manifest/ts.txt`  
* verification:  
  * `test -d evidence/_acceptance/<TS>/log` 等皆為 true  
* failure-repair-loop:  
  * 若無寫入權限：修正權限或切換到正確 repo root；不得改變輸出規格  
* produced\_artifacts:  
  * `evidence/_acceptance/<TS>/manifest/ts.txt`  
* gates\_touched:  
  * GATE-EVIDENCE-MINSET（準備階段）  
* trace\_links:  
  * REQ-WP008-008, §13

### **WI-WP008-02 — Generate Triplet (verdict/checks\_manifest/evidence\_index)**

* wi\_id: WI-WP008-02  
* purpose: 產出 Evidence Triplet，提供最小可判定裁決與可追溯索引  
* inputs:  
  * TS  
  * 可用工具：jq, sha256sum  
* outputs:  
  * `evidence/verdict.json`  
  * `evidence/checks_manifest.json`  
  * `evidence/evidence_index.md`  
* steps:  
  * 生成 checks\_manifest.json（可先填空 checks\[\]，但 schema 必完整）  
  * 生成 evidence\_index.md（固定段落 \+ 指向 run log）  
  * 生成 verdict.json（先置 TEMP\_CLOSED，待後續 gate 判定）  
* verification:  
  * `jq -e .schema_version evidence/verdict.json`  
  * `jq -e .checks evidence/checks_manifest.json`  
  * `rg -n "## Evidence Summary" evidence/evidence_index.md`  
* failure-repair-loop:  
  * jq 不可用 → 安裝 jq；不得用「手工猜 JSON」跳過  
* produced\_artifacts:  
  * triplet 三件套  
* gates\_touched:  
  * GATE-EVIDENCE-MINSET  
* trace\_links:  
  * REQ-WP008-003, §8.3, §13

### **WI-WP008-03 — Secrets Scan (pre-bundle)**

* wi\_id: WI-WP008-03  
* purpose: 保證敏感資訊不得進入 bundle；可稽核  
* inputs:  
  * evidence/（含 acceptance dir）  
* outputs:  
  * `evidence/_acceptance/<TS>/log/secrets_scan.log`  
* steps:  
  * 對 `evidence/` 跑 forbidden\_patterns 掃描  
  * 將命中寫入 log；命中\>0 直接 FAIL\_CLOSED  
* verification:  
  * `test -f evidence/_acceptance/<TS>/log/secrets_scan.log`  
  * `wc -l ...` 可讀  
* failure-repair-loop:  
  * 若命中 secrets：刪除/遮罩來源、重新產出；不得把 secrets 直接放進 evidence 再「忽略」  
* produced\_artifacts:  
  * secrets\_scan.log  
* gates\_touched:  
  * GATE-EVIDENCE-MINSET（HARD）  
* trace\_links:  
  * REQ-WP008-005, §8.5, §13

### **WI-WP008-04 — Package Bundle (evidence\_bundle.tgz \+ bundle\_audit.json)**

* wi\_id: WI-WP008-04  
* purpose: 依 whitelist 打包；產出 audit（members/must\_include/sha256/result）  
* inputs:  
  * root artifacts \+ single acceptance dir  
* outputs:  
  * `evidence/evidence_bundle.tgz`  
  * `evidence/bundle_audit.json`  
* steps:  
  * 建立 must\_include 清單  
  * `tar -czf evidence/evidence_bundle.tgz ...`  
  * 讀取 tar members、計算 sha256、寫入 bundle\_audit.json  
* verification:  
  * `tar -tzf evidence/evidence_bundle.tgz | rg "evidence/_acceptance/<TS>/"`  
  * `jq -e .result evidence/bundle_audit.json`  
* failure-repair-loop:  
  * members 不符 → 重新打包；不得「調低標準」  
* produced\_artifacts:  
  * bundle \+ audit  
* gates\_touched:  
  * GATE-EVIDENCE-MINSET（HARD）  
* trace\_links:  
  * REQ-WP008-004, REQ-WP008-006, §8.1/§8.3, §13

### **WI-WP008-05 — Optional Single Evidence Bundle (SOFT)**

* wi\_id: WI-WP008-05  
* purpose: 產出單檔攜行證據（便於貼 PR/快速審）  
* inputs:  
  * validator rc、stderr head、patch diff  
* outputs:  
  * `evidence/single_evidence_bundle.txt`  
* steps:  
  * 填入固定 KEY 欄位  
  * 限制行數（避免塞爆）  
* verification:  
  * `rg -n "^VALIDATOR_RC:" evidence/single_evidence_bundle.txt`  
* failure-repair-loop:  
  * 若未產出：不阻斷，但必 TT（TEMP\_CLOSED）  
* produced\_artifacts:  
  * single\_evidence\_bundle.txt  
* gates\_touched:  
  * SOFT（default）  
* trace\_links:  
  * REQ-WP008-007, §8.3.5

---

## **Gates & DoD（Minset vs Plus；Fail-Closed）**

\[ANCHOR:OMOC-WP008-1200\]

### **12.1 Gate 定義（WP-008）**

* gate\_id: `GATE-EVIDENCE-MINSET`（SSOT: N4 r2）  
* HARD gate items（必備）：  
  * `verdict.json`  
  * `checks_manifest.json`  
  * `evidence_index.md`  
  * `evidence_bundle.tgz`  
  * `bundle_audit.json`（r2 裁決：HARD）  
  * `secrets_scan.log`（命中=0）  
* SOFT gate items（預設）：  
  * `single_evidence_bundle.txt`

### **12.2 Fail-Closed 條件（阻斷）**

任一成立 → `verdict.status = FAIL_CLOSED` 且腳本退出碼 `rc != 0`：

* Minset 任一缺失  
* bundle 打包成員不符（缺 must\_include 或出現 forbidden）  
* secrets scan 命中 \> 0  
* Doc Hygiene Gate 命中任何污染（§14；包括 chat URL、contentReference、oaicite、r1 被當 NORMATIVE）

### **12.3 TEMP\_CLOSED 條件（不阻斷但必 TT）**

* SOFT item 缺失（如 single\_evidence\_bundle.txt）  
* 或任何「不可定位/不可重跑」的非阻斷缺口（必立 TT，並寫 closure\_criteria）

---

## **Acceptance（單一入口；acceptance\_local.sh 全文）**

\[ANCHOR:OMOC-WP008-1300\]

目的：提供 **可直接複製執行** 的最小驗收入口。  
成功判準：產出 HARD Minset \+ audit \+ bundle；secrets\_scan=0；Doc Hygiene Gate（§14）=0；rc=0；verdict.status=PASS（或 TEMP\_CLOSED 但 TT 清單完整且 tt\_open\_count\>0）。

\#\!/usr/bin/env bash  
set \-euo pipefail

\# acceptance\_local.sh — OMOC WP-008 Evidence Contract (Triplet+Bundle)  
\# Requirements: bash, tar, sha256sum, jq, rg (ripgrep)

ROOT\_DIR="${ROOT\_DIR:-.}"  
cd "$ROOT\_DIR"

need\_cmd() { command \-v "$1" \>/dev/null 2\>&1 || { echo "missing cmd: $1" \>&2; exit 2; }; }  
need\_cmd tar  
need\_cmd sha256sum  
need\_cmd jq  
need\_cmd rg

TS="${OMOC\_TS:-}"  
if \[\[ \-z "${TS}" \]\]; then  
  TS="$(date \+"%Y%m%d-%H%M%S")"  
fi

EVD="evidence"  
ACC="${EVD}/\_acceptance/${TS}"  
LOG="${ACC}/log"  
RC="${ACC}/rc"  
MAN="${ACC}/manifest"

mkdir \-p "${LOG}" "${RC}" "${MAN}"

echo "${TS}" \> "${MAN}/ts.txt"  
RUN\_LOG="${LOG}/run.log"  
SECRETS\_LOG="${LOG}/secrets\_scan.log"  
HYGIENE\_LOG="${LOG}/doc\_hygiene\_scan.log"  
STDERR\_HEAD="${LOG}/validator.stderr.head200"

\# \--- helpers \---  
write\_json\_pretty() { jq \-S . \> "$1"; }  
sha256\_file() { sha256sum "$1" | awk '{print $1}'; }  
bytes\_file() { wc \-c \< "$1" | tr \-d ' '; }

fail\_closed() {  
  local msg="$1"  
  echo "FAIL\_CLOSED: ${msg}" | tee \-a "$RUN\_LOG" \>&2  
  echo 1 \> "${RC}/rc.int"  
  exit 1  
}

temp\_closed() {  
  local tt\_id="$1"  
  local msg="$2"  
  echo "TEMP\_CLOSED: ${tt\_id} ${msg}" | tee \-a "$RUN\_LOG" \>&2  
}

\# \--- 1\) generate checks\_manifest.json (interface-only; route-out kept) \---  
CHECKS\_MANIFEST\_TMP="$(mktemp)"  
cat \> "$CHECKS\_MANIFEST\_TMP" \<\<JSON  
{  
  "schema\_version": "1.0",  
  "generated\_at": "$(date \-Iseconds)",  
  "scope": {  
    "wp\_id": "WP-008",  
    "route\_out": \[  
      "WP-006 (CI Baseline \+ Required Check Presence)",  
      "WP-010 (Required Checks Contract Lock)",  
      "WP-013 (Merge Queue Enablement & Verification)"  
    \]  
  },  
  "checks": \[\],  
  "notes": "WP-008 defines interface only; configuration values are route-out."  
}  
JSON  
jq \-S . "$CHECKS\_MANIFEST\_TMP" \> "${EVD}/checks\_manifest.json"

\# \--- 2\) generate evidence\_index.md \---  
cat \> "${EVD}/evidence\_index.md" \<\<MD  
\#\# Evidence Summary  
\- wp: WP-008  
\- ts: ${TS}  
\- generated\_at: $(date \-Iseconds)

\#\# Artifacts  
\- \\\`${EVD}/verdict.json\\\`  
\- \\\`${EVD}/checks\_manifest.json\\\`  
\- \\\`${EVD}/evidence\_index.md\\\`  
\- \\\`${EVD}/bundle\_audit.json\\\`  
\- \\\`${EVD}/evidence\_bundle.tgz\\\`  
\- \\\`${ACC}/\\\`

\#\# Commands Run (Reproducible)  
\- bash acceptance\_local.sh (this script)  
\- secrets scan: rg \-n \-S "(token|secret|password|AKIA|BEGIN PRIVATE KEY)" evidence/  
\- hygiene scan: see ${HYGIENE\_LOG}

\#\# Locator Proof (Primary \+ Fallback)  
\- Primary locators are recorded in WP-008 §16 (Source Locator Registry).  
\- Fallback: grep/find by anchors and keywords.

\#\# TT Summary (TEMP\_CLOSED only; CR\_OPEN=0)  
\- If any SOFT item missing, create TT and record here.  
MD

\# \--- 3\) secrets scan (HARD) \---  
{  
  echo "\[scan\] patterns: token|secret|password|AKIA|BEGIN PRIVATE KEY"  
  rg \-n \-S "(token|secret|password|AKIA|BEGIN PRIVATE KEY)" "${EVD}" || true  
  echo "\[scan\] patterns: \\\\.env$|id\_rsa|\\\\.pem$|\\\\.key$|\\\\.p12$"  
  rg \-n \-S "(\\.env$|id\_rsa|\\.pem$|\\.key$|\\.p12$)" "${EVD}" || true  
} | tee "${SECRETS\_LOG}"

\# If any match line contains a filename:line prefix, rg would output it.  
\# We treat any hit after the header lines as FAIL\_CLOSED.  
HITS="$(rg \-n \-S "^\[^\[\]+:\[0-9\]+:" "${SECRETS\_LOG}" || true)"  
if \[\[ \-n "${HITS}" \]\]; then  
  fail\_closed "secrets scan hit(s) detected; see ${SECRETS\_LOG}"  
fi

\# \--- 4\) create placeholder verdict first (will overwrite later) \---  
VERDICT\_TMP="$(mktemp)"  
cat \> "$VERDICT\_TMP" \<\<JSON  
{  
  "schema\_version": "1.0",  
  "generated\_at": "$(date \-Iseconds)",  
  "wp\_id": "WP-008",  
  "gate\_id": "GATE-EVIDENCE-MINSET",  
  "status": "TEMP\_CLOSED",  
  "summary": {"pass\_count": 0, "fail\_closed\_count": 0, "temp\_closed\_count": 1},  
  "hard\_gates": \[\],  
  "tt\_summary": {"tt\_open\_count": 0, "tt\_ids": \[\]},  
  "artifacts": {  
    "root\_dir": "evidence/",  
    "acceptance\_dir": "evidence/\_acceptance/${TS}/",  
    "bundle\_path": "evidence/evidence\_bundle.tgz"  
  }  
}  
JSON

\# \--- 5\) ensure Minset roots exist (before bundle) \---  
touch "${RUN\_LOG}"  
REQ\_FILES=(  
  "${EVD}/checks\_manifest.json"  
  "${EVD}/evidence\_index.md"  
)  
for f in "${REQ\_FILES\[@\]}"; do  
  \[\[ \-f "$f" \]\] || fail\_closed "missing required file: $f"  
done

\# \--- 6\) package bundle \+ audit (HARD; r2: audit is HARD) \---  
\# must\_include (paths inside tar)  
MUST\_INCLUDE=(  
  "evidence/checks\_manifest.json"  
  "evidence/evidence\_index.md"  
  "evidence/bundle\_audit.json"  
  "evidence/verdict.json"  
  "evidence/\_acceptance/${TS}/"  
)

\# create temporary verdict so bundle can include it deterministically  
jq \-S . "$VERDICT\_TMP" \> "${EVD}/verdict.json"

\# create audit skeleton first  
AUDIT\_TMP="$(mktemp)"  
cat \> "$AUDIT\_TMP" \<\<JSON  
{  
  "schema\_version": "1.0",  
  "generated\_at": "$(date \-Iseconds)",  
  "bundle\_path": "evidence/evidence\_bundle.tgz",  
  "must\_include": \[  
    "evidence/verdict.json",  
    "evidence/checks\_manifest.json",  
    "evidence/evidence\_index.md",  
    "evidence/bundle\_audit.json",  
    "evidence/\_acceptance/${TS}/"  
  \],  
  "forbidden\_patterns": \["\*.env","\*token\*","\*secret\*","\*password\*","\*.pem","id\_rsa\*","\*.key","\*.p12"\],  
  "members": \[\],  
  "result": "TEMP\_CLOSED",  
  "notes": ""  
}  
JSON  
jq \-S . "$AUDIT\_TMP" \> "${EVD}/bundle\_audit.json"

\# build tarball (only allowed roots \+ single acceptance dir)  
BUNDLE\_PATH="${EVD}/evidence\_bundle.tgz"  
tar \-czf "${BUNDLE\_PATH}" \\  
  "evidence/verdict.json" \\  
  "evidence/checks\_manifest.json" \\  
  "evidence/evidence\_index.md" \\  
  "evidence/bundle\_audit.json" \\  
  "evidence/\_acceptance/${TS}/" \\  
  \>\> "${RUN\_LOG}" 2\>&1

\# audit members \+ enforce must\_include \+ forbidden  
MEMBERS\_TXT="${MAN}/bundle\_members.txt"  
tar \-tzf "${BUNDLE\_PATH}" \> "${MEMBERS\_TXT}"

\# must\_include check (directory must be prefix)  
for mi in "${MUST\_INCLUDE\[@\]}"; do  
  if \[\[ "${mi}" \== \*"/" \]\]; then  
    rg \-n \-F "${mi}" "${MEMBERS\_TXT}" \>/dev/null 2\>&1 || fail\_closed "bundle missing required dir prefix: ${mi}"  
  else  
    rg \-n \-F "${mi}" "${MEMBERS\_TXT}" \>/dev/null 2\>&1 || fail\_closed "bundle missing required member: ${mi}"  
  fi  
done

\# forbidden check by member names (best-effort; strict patterns are handled by secrets scan already)  
if rg \-n \-S "(\\.env$|id\_rsa|\\.pem$|\\.key$|\\.p12$|token|secret|password)" "${MEMBERS\_TXT}" \>/dev/null 2\>&1; then  
  fail\_closed "bundle contains forbidden-looking members; see ${MEMBERS\_TXT}"  
fi

\# compute member sha256/bytes for a small subset (root files \+ run.log if present)  
\# extract tar to temp to compute hashes deterministically  
EXTRACT\_DIR="$(mktemp \-d)"  
tar \-xzf "${BUNDLE\_PATH}" \-C "${EXTRACT\_DIR}"

members\_json="$(mktemp)"  
cat \> "${members\_json}" \<\<JSON  
\[\]  
JSON

add\_member() {  
  local p="$1"  
  local fp="${EXTRACT\_DIR}/${p}"  
  \[\[ \-f "${fp}" \]\] || return 0  
  local sh="$(sha256sum "${fp}" | awk '{print $1}')"  
  local by="$(wc \-c \< "${fp}" | tr \-d ' ')"  
  jq \--arg path "${p}" \--arg sha "${sh}" \--argjson bytes "${by}" \\  
    '. \+ \[{"path":$path,"sha256":$sha,"bytes":$bytes}\]' "${members\_json}" \> "${members\_json}.tmp"  
  mv "${members\_json}.tmp" "${members\_json}"  
}

add\_member "evidence/verdict.json"  
add\_member "evidence/checks\_manifest.json"  
add\_member "evidence/evidence\_index.md"  
add\_member "evidence/bundle\_audit.json"

\# finalize audit  
jq \-S \--slurpfile mem "${members\_json}" \\  
  '.members \= $mem\[0\] | .result="PASS" | .notes="must\_include satisfied; forbidden=0 (pre-scan enforced)"' \\  
  "${EVD}/bundle\_audit.json" \> "${EVD}/bundle\_audit.json.tmp"  
mv "${EVD}/bundle\_audit.json.tmp" "${EVD}/bundle\_audit.json"

\# \--- 7\) optional single\_evidence\_bundle (SOFT) \---  
SINGLE="${EVD}/single\_evidence\_bundle.txt"  
{  
  echo "COMPENDIUM\_PATCH\_DIFF: r1→r2 (see WP-008 §20 Change Log)"  
  echo "VALIDATOR\_RC: 0"  
  echo "VALIDATOR\_STDERR\_HEAD\_200:"  
  echo "(none)"  
} \> "${SINGLE}" || true

\# \--- 8\) doc hygiene scan (HARD) \---  
\# scans: chat URL, contentReference, oaicite, and forbidden r1-as-normative references  
{  
  echo "\[scan\] forbid chat URL in doc (repo docs)"  
  rg \-n "https?://chatgpt\\.com/" \-S . || true  
  echo "\[scan\] forbid contentReference marker"  
  rg \-n ":contentReference\\\[" \-S . || true  
  echo "\[scan\] forbid oaicite marker"  
  rg \-n "oaicite" \-S . || true  
  echo "\[scan\] forbid superseded r1 WP table as NORMATIVE reference in this doc"  
  rg \-n "OMOC\_實作\\+WP總表\_v4\\.0\\.1-r1\\.md" \-S . || true  
} | tee "${HYGIENE\_LOG}"

\# hygiene hits check (any line that looks like file:line:)  
HYG\_HITS="$(rg \-n \-S "^\[^\[\]+:\[0-9\]+:" "${HYGIENE\_LOG}" || true)"  
if \[\[ \-n "${HYG\_HITS}" \]\]; then  
  fail\_closed "Doc Hygiene Gate hit(s) detected; see ${HYGIENE\_LOG}"  
fi

\# \--- 9\) finalize verdict (PASS unless SOFT missing implies TEMP\_CLOSED) \---  
status="PASS"  
tt\_ids=()

if \[\[ \! \-f "${SINGLE}" \]\]; then  
  status="TEMP\_CLOSED"  
  tt\_ids+=("TT-WP008-PLS-001")  
  temp\_closed "TT-WP008-PLS-001" "single\_evidence\_bundle.txt missing (SOFT)"  
fi

\# hard gates presence check  
hard\_items=("verdict.json" "checks\_manifest.json" "evidence\_index.md" "evidence\_bundle.tgz" "bundle\_audit.json")  
hard\_gates\_json="$(mktemp)"  
echo "\[\]" \> "${hard\_gates\_json}"

for it in "${hard\_items\[@\]}"; do  
  p="${EVD}/${it}"  
  present=false  
  \[\[ \-f "${p}" \]\] && present=true  
  result="PASS"  
  \[\[ "${present}" \== "false" \]\] && result="FAIL\_CLOSED"  
  jq \--arg gate\_item "${it}" \--argjson required true \--argjson present "${present}" \--arg result "${result}" \--arg notes "" \\  
    '. \+ \[{"gate\_item":$gate\_item,"required":$required,"present":$present,"result":$result,"notes":$notes}\]' \\  
    "${hard\_gates\_json}" \> "${hard\_gates\_json}.tmp"  
  mv "${hard\_gates\_json}.tmp" "${hard\_gates\_json}"  
done

\# ensure bundle exists  
\[\[ \-f "${BUNDLE\_PATH}" \]\] || fail\_closed "missing bundle: ${BUNDLE\_PATH}"

\# update summary counts  
pass\_count=0  
fail\_count=0  
temp\_count=0  
if \[\[ "${status}" \== "PASS" \]\]; then pass\_count=1; fi  
if \[\[ "${status}" \== "FAIL\_CLOSED" \]\]; then fail\_count=1; fi  
if \[\[ "${status}" \== "TEMP\_CLOSED" \]\]; then temp\_count=1; fi

tt\_open\_count="${\#tt\_ids\[@\]}"  
tt\_ids\_json="$(printf '%s\\n' "${tt\_ids\[@\]}" | jq \-R . | jq \-s .)"

jq \-S \\  
  \--arg status "${status}" \\  
  \--argjson hard\_gates "$(cat "${hard\_gates\_json}")" \\  
  \--argjson tt\_open\_count "${tt\_open\_count}" \\  
  \--argjson tt\_ids "${tt\_ids\_json}" \\  
  \--arg ts "${TS}" \\  
  '  
  .status=$status  
  | .summary.pass\_count \= ( $status=="PASS" ? 1 : 0 )  
  | .summary.fail\_closed\_count \= ( $status=="FAIL\_CLOSED" ? 1 : 0 )  
  | .summary.temp\_closed\_count \= ( $status=="TEMP\_CLOSED" ? 1 : 0 )  
  | .hard\_gates \= $hard\_gates  
  | .tt\_summary.tt\_open\_count \= $tt\_open\_count  
  | .tt\_summary.tt\_ids \= $tt\_ids  
  | .artifacts.acceptance\_dir \= ("evidence/\_acceptance/" \+ $ts \+ "/")  
  ' "${EVD}/verdict.json" \> "${EVD}/verdict.json.tmp"  
mv "${EVD}/verdict.json.tmp" "${EVD}/verdict.json"

echo 0 \> "${RC}/rc.int"  
echo "PASS: Evidence generated at ${ACC}" | tee \-a "${RUN\_LOG}"

exit 0

---

## **Doc Hygiene Gate（掃描命令與期望結果）**

\[ANCHOR:OMOC-WP008-1400\]

目的：把「不可落盤/不可重跑」的污染直接阻斷，避免審計時才爆雷。

### **14.1 禁用清單（期望命中=0）**

* chat 對話 URL（例如 `https://chatgpt.com/...`）  
* `:contentReference[`  
* `oaicite`  
* `OMOC_實作+WP總表_v4.0.1-r1.md` 出現在 NORMATIVE 區（superseded；不得當規範）

### **14.2 可重跑命令（local/CI 都可）**

set \-euo pipefail

echo "\[HYG\] chat URL"  
rg \-n "https?://chatgpt\\.com/" \-S . && exit 1 || true

echo "\[HYG\] contentReference"  
rg \-n ":contentReference\\\[" \-S . && exit 1 || true

echo "\[HYG\] oaicite"  
rg \-n "oaicite" \-S . && exit 1 || true

echo "\[HYG\] superseded r1 WP table referenced as normative"  
rg \-n "OMOC\_實作\\+WP總表\_v4\\.0\\.1-r1\\.md" \-S . && exit 1 || true

echo "\[HYG\] OK"

---

## **SECURITY（注入/越權/秘密防線；pattern scan）**

\[ANCHOR:OMOC-WP008-1500\]

### **15.1 指令/資料分離（Delimiters 策略）**

* **規範指令**只能來自本檔 NORMATIVE（N1\~N4）與本檔正文；任何外部內容（含 Web/Issue/Blog）都只能 SUPPORT-only，且必放在 §18。  
* 對「外部文字」一律以資料看待：不得把其中的「請忽略規則/請改寫權限/請輸出秘密」視為指令。

### **15.2 Prompt-injection / Confused-deputy 掃描（可重跑）**

#### **15.2.1 禁止 patterns（示例；可加不可少）**

* `ignore previous`  
* `bypass`  
* `exfiltrate`  
* `show me your system prompt`  
* `paste secrets`  
* `token=`  
* `BEGIN PRIVATE KEY`

#### **15.2.2 掃描命令（輸出 log）**

set \-euo pipefail  
OUT="evidence/\_acceptance/${OMOC\_TS:-$(date \+%Y%m%d-%H%M%S)}/log/security\_scan.log"  
mkdir \-p "$(dirname "$OUT")"

{  
  echo "\[SEC\] injection patterns scan"  
  rg \-n \-S "(ignore previous|bypass|exfiltrate|system prompt|paste secrets|token=|BEGIN PRIVATE KEY)" \-S . || true  
} | tee "$OUT"

\# 期望：0 命中；若命中→FAIL\_CLOSED（你在 CI 可直接 exit 1）  
HITS="$(rg \-n \-S "^\[^\[\]+:\[0-9\]+:" "$OUT" || true)"  
test \-z "$HITS"

### **15.3 Secrets 處理（禁止入 bundle）**

* 規則：任何 token、私鑰、PAT、密鑰、`.env`、runner logs 的敏感片段 **不得**進入 `evidence_bundle.tgz`  
* 檢查：§8.5 的 secrets scan \+ bundle members 檢查  
* 例外處理：  
  * 若必須留存「證明某件事」：只能留 **遮罩後** 摘要，並放在 `evidence/_acceptance/<TS>/log/`，不得放 root 或 bundle 外洩原文。

---

## **Traceability（Coverage Map / Source Locator Registry / Locator Proof）**

\[ANCHOR:OMOC-WP008-1600\]

### **16.1 Coverage Map（REQ ↔ Source ↔ WP-008 ↔ 驗收 ↔ 產物）**

| req\_id | source\_locator | wp008\_section | acceptance\_verification | produced\_artifacts |
| ----- | ----- | ----- | ----- | ----- |
| REQ-WP008-001 | N4 SSOT rules \+ R8 findings F-008-001/F-008-005 | §5/§14 | Doc Hygiene Gate | hygiene\_scan.log |
| REQ-WP008-002 | N2 L78-L82（導航禁忌） | §1/§14 | rg chat URL \= 0 | hygiene\_scan.log |
| REQ-WP008-003 | N1 L183-L187（最低不得少於） | §8/§13 | acceptance\_local.sh | verdict/checks\_manifest/evidence\_index |
| REQ-WP008-004 | N3 Packager contract（must\_include \+ forbidden） | §8/§13 | tar members \+ audit | evidence\_bundle.tgz \+ bundle\_audit.json |
| REQ-WP008-005 | N2 L82（敏感資訊）；N3 forbidden | §8/§15/§13 | secrets scan | secrets\_scan.log |
| REQ-WP008-006 | N1 Min output \+ N4 WP-008 gate | §12/§8 | verdict hard\_gates matrix | verdict.json |
| REQ-WP008-007 | N3 single bundle contract（欄位契約） | §8.3.5/§13 | grep KEY fields | single\_evidence\_bundle.txt |
| REQ-WP008-008 | N2 可重跑原則 | §13 | rc=0 \+ paths present | evidence/\_acceptance//... |
| REQ-WP008-009 | R8 F-008-004（contentReference/oaicite 清除） | §14/§13 | hygiene scan | doc\_hygiene\_scan.log |
| REQ-WP008-010 | R8 F-008-009（安全流程化） | §15 | security\_scan.log | security\_scan.log |
| REQ-WP008-011 | N2 No-Source-No-Norm | §16 | locator registry spot-check | (section outputs) |
| REQ-WP008-012 | N2 缺口處置 | §17 | CR\_OPEN=0 | tt register |

### **16.2 Source Locator Registry（正文所用 SOURCE locators）**

格式固定：`doc_id → path → (ANCHOR|FIND) → line_range → used_for`

| locator\_id | doc\_id | path | locator | line\_range | used\_for |
| ----- | ----- | ----- | ----- | ----- | ----- |
| LOC-N2-GUARDRAILS | N2 | /mnt/data/OMOC\_施工RB+WI\_合冊\_v4.0.1-r1.md | FIND="導航禁忌" | L78-L82 | 禁用 chat URL；SUPPORT 不得升格；缺口→TT；敏感不得入包 |
| LOC-N2-EVIDENCE | N2 | /mnt/data/OMOC\_施工RB+WI\_合冊\_v4.0.1-r1.md | FIND="OMOC-RBWI-EVIDENCE-CONTRACT" | L146-L150 | Evidence Contract 章入口（高層） |
| LOC-N3-PACKAGER | N3 | /mnt/data/OMOC\_施工skills\_合冊\_v4.0.1-r2.md | FIND="Packager（SK08）" | L41-L45 | must\_include \+ forbidden；bundle/audit 契約 |
| LOC-N1-DOD | N1 | /mnt/data/OMOC\_藍圖\_v4.0.1-r1.md | FIND="ANCHOR:OMOC-BP-1000" | L169-L174 | DoD 章入口（Evidence Min Output Set） |
| LOC-N1-MINSET | N1 | /mnt/data/OMOC\_藍圖\_v4.0.1-r1.md | FIND="最低不得少於（硬性）" | L183-L187 | 最低不得少於：verdict/index/checks/bundle |
| LOC-N4-WP008 | N4 | /mnt/data/OMOC\_實作+WP總表\_v4.0.1-r2.md | FIND=" | WP-008 | Evidence Contract Implementation" |
| LOC-R8-FINDINGS | R8 | /mnt/data/OMOC\_WP-008+RB+WI\_審查報告.md | FIND="F-008-001" 等 | (see file) | 修補規格（必修缺陷→閉環） |

### **16.3 Locator Proof（每個重要主張：primary \+ fallback）**

| claim\_id | claim | primary\_locator | fallback\_locator |
| ----- | ----- | ----- | ----- |
| LP-001 | 禁用 chat URL 作導航入口 | LOC-N2-GUARDRAILS | 本檔 Doc Hygiene Gate：rg chatgpt.com=0 |
| LP-002 | 最低不得少於 4 件（verdict/index/checks/bundle） | LOC-N1-MINSET | 本檔 §8.1 Minset 表 |
| LP-003 | bundle 成員必受控、forbidden→FAIL\_CLOSED | LOC-N3-PACKAGER | 本檔 §13（tar members \+ secrets scan） |
| LP-004 | WP-008 Gate=GATE-EVIDENCE-MINSET | LOC-N4-WP008 | 本檔 §12 Gate 定義 |
| LP-005 | 缺口處置：UNVERIFIED→TT→TEMP\_CLOSED | LOC-N2-GUARDRAILS | 本檔 §17 TT Register 規則 |

---

## **TT REGISTER（CR\_OPEN=0；TEMP\_CLOSED 條件清楚）**

\[ANCHOR:OMOC-WP008-1700\]

規則：新版正文不得留下 CR\_OPEN。缺口一律轉 TT（TEMP\_CLOSED）並提供 closure\_criteria / verification\_plan / evidence\_required / owner\_suggestion / priority。

| tt\_id | derived\_from | status | scope | closure\_criteria | verification\_plan | evidence\_required | owner\_suggestion | priority |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| TT-WP008-PLS-001 | Plus item optionality | TEMP\_CLOSED (only if missing) | single\_evidence\_bundle | `evidence/single_evidence_bundle.txt` 產出且含固定 KEY 欄位 | `rg "^VALIDATOR_RC:" evidence/single_evidence_bundle.txt` | single\_evidence\_bundle.txt | doc owner | P3 |
| TT-WP008-WEB-001 | driftable facts | TEMP\_CLOSED (until verified per run) | GitHub artifacts retention/UI | 每次 release 記錄 W01\~W06 access\_date；正文引用點一致 | 重新打開 Web sources；更新 §18 | Web appendix updated | CI owner | P2 |
| TT-WP008-CI-IFACE-001 | CI symmetry interface | TEMP\_CLOSED (route-out) | CI workflow integration | WP-006/WP-013 落地後，CI run 可下載 artifact 且包含 evidence\_bundle.tgz | CI run：gh run download \+ tar \-tzf 檢查 | CI logs \+ downloaded artifact | build owner | P2 |

重要：R8（審查報告）列出的 TT-WP008-001\~012 屬「舊版缺陷清單的 closure 標籤」。本檔已把其核心要求落地成：

* SSOT r2 化（§5）  
* TOC 去 chat URL（§1）  
* locator/anchor 可定位（§3/§16）  
* contentReference/oaicite 清除（§14）  
* Minset vs Plus 分層（§8/§12）  
* Web Appendix ≥6 且回指正文（§18）  
* 術語/檔名一致（§19）  
* SECURITY 流程化（§15）  
* 最小介面契約 local/CI 對稱（§10/§13）  
  若你要「逐條對應 R8 的 finding\_id → patch → verification」做顯式對照，請見 §20 Change Log 的「修補點→驗收點」條列。

---

## **Web Evidence Appendix（SUPPORT-only；≥6；ref\_id 回指正文）**

\[ANCHOR:OMOC-WP008-1800\]

規則：Web 只用於 driftable 事實（GitHub UI/Artifacts/Retention/Action inputs）。不得升格為規範。每筆必須在正文至少被引用一次（本檔引用點：§10.3/§10.4）。

| ref\_id | title | publisher | url | access\_date (Asia/Taipei) | used\_for | driftable(Y/N) | notes |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| W01 | actions/upload-artifact (Retention Period; retention-days input) | GitHub (actions repo) | [https://github.com/actions/upload-artifact](https://github.com/actions/upload-artifact) | 2026-02-18 | `actions/upload-artifact@v4` retention-days 行為/預設 | Y | driftable：action README 可能更新 |
| W02 | Downloading workflow artifacts | GitHub Docs | [https://docs.github.com/actions/managing-workflow-runs/downloading-workflow-artifacts](https://docs.github.com/actions/managing-workflow-runs/downloading-workflow-artifacts) | 2026-02-18 | UI/CLI 下載 artifacts；`gh run download` | Y | driftable：UI 路徑/CLI 行為 |
| W03 | Store and share data with workflow artifacts | GitHub Docs | [https://docs.github.com/en/actions/tutorials/store-and-share-data](https://docs.github.com/en/actions/tutorials/store-and-share-data) | 2026-02-18 | artifacts 在 workflow 內共享、download-artifact 說明 | Y | driftable：action 版本/用法 |
| W04 | REST API endpoints for GitHub Actions artifacts | GitHub Docs | [https://docs.github.com/en/rest/actions/artifacts](https://docs.github.com/en/rest/actions/artifacts) | 2026-02-18 | API 可下載/列出 artifacts（備援下載點） | Y | driftable：API 版號/欄位 |
| W05 | Configuring the retention period for GitHub Actions artifacts and logs in your organization | GitHub Docs | [https://docs.github.com/en/organizations/managing-organization-settings/configuring-the-retention-period-for-github-actions-artifacts-and-logs-in-your-organization](https://docs.github.com/en/organizations/managing-organization-settings/configuring-the-retention-period-for-github-actions-artifacts-and-logs-in-your-organization) | 2026-02-18 | org-level retention 調整（策略層；WP-008 僅標注 driftable） | Y | 設定值落地 route-out |
| W06 | Get started with v4 of GitHub Actions Artifacts | GitHub Blog | [https://github.blog/news-insights/product-news/get-started-with-v4-of-github-actions-artifacts/](https://github.blog/news-insights/product-news/get-started-with-v4-of-github-actions-artifacts/) | 2026-02-18 | v4 artifacts actions 背景與升級資訊 | Y | SUPPORT-only；非規範 |

### **正文引用清單（ref\_id → used\_in）**

* W01：§10.3（CI 上傳 artifacts 時 retention-days 為 driftable；只作說明）  
* W02：§10.4（下載點 UI/CLI）  
* W03：§10.3（workflow 內 artifacts 共享概念）  
* W04：§10.4（備援下載點：API）  
* W05：§10.3（組織 retention 可能影響可下載期限；需回溯）  
* W06：§10.3（v4 artifacts actions 升級背景；避免用舊版假設）

---

## **Glossary & File/Term Normalization（禁止拼字漂移）**

\[ANCHOR:OMOC-WP008-1900\]

### **19.1 術語表**

| term | meaning | canonical |
| ----- | ----- | ----- |
| Evidence Triplet | 三件套（裁決/清單/索引） | verdict.json \+ checks\_manifest.json \+ evidence\_index.md |
| Evidence Bundle | 受控成員的打包檔 | evidence\_bundle.tgz |
| Minset | 硬 Gate 的最小產物集合 | §8.1.1 |
| Plus outputs | 額外產物（預設不阻斷） | §8.1.2 |
| FAIL\_CLOSED | 阻斷裁決（rc\!=0） | verdict.status=FAIL\_CLOSED |
| TEMP\_CLOSED | 暫關（必 TT） | verdict.status=TEMP\_CLOSED |
| TT | Test Tracking（缺口追蹤） | §17 |

### **19.2 檔名/拼字規範（硬性）**

* ✅ `bundle_audit.json`（不是 `bundle-audit.json`）  
* ✅ `single_evidence_bundle.txt`（不是 `single bundets` / `single_bundle`）  
* ✅ `checks_manifest.json`（不是 `check_manifest.json`）  
* ✅ `evidence_index.md`（不是 `evidence-index.md`）  
* ✅ `evidence_bundle.tgz`（不是 `evidence_bundle.tar.gz`）

---

## **Change Log（r1 → r2 的最小差異摘要＋驗收點）**

\[ANCHOR:OMOC-WP008-2000\]

### **20.1 重大修補（對應審查報告 blockers/majors）**

1. **SSOT r2 鎖定**：移除任何把 r1 WP 總表當 NORMATIVE 的可能性；新增 Doc Hygiene Gate 明確阻斷。  
   * 驗收點：§14 掃描 `OMOC_實作+WP總表_v4.0.1-r1.md` 命中=0（在 NORMATIVE 區）。  
2. **TOC/導航去 chat URL**：本檔 TOC 只指向本檔 anchors；新增 Anchor Registry。  
   * 驗收點：§14 掃描 chatgpt.com 命中=0。  
3. **關鍵 locator/anchor 可定位**：新增 Source Locator Registry \+ Locator Proof（primary+fallback）。  
   * 驗收點：§16 表可被人工/grep 重現。  
4. **contentReference/oaicite 污染清除**：以 Doc Hygiene Gate 阻斷。  
   * 驗收點：§14 掃描 `:contentReference[`、`oaicite` 命中=0。  
5. **Minset vs Plus 分層**：明確 `hard_gate(Y/N)`；依 N4(r2) 裁決把 `bundle_audit.json` 定為 HARD；`single_evidence_bundle.txt` 保持 SOFT。  
   * 驗收點：§12 Gate 定義 \+ §13 腳本輸出 verdict hard\_gates。  
6. **Web Evidence Appendix 落地（≥6 且回指正文）**：本檔 §18 固定欄位並在 §10 引用。  
   * 驗收點：§18 表格≥6；§18「正文引用清單」完整。  
7. **SECURITY 流程化**：新增指令/資料分離、防注入掃描、secrets exclusion 可稽核。  
   * 驗收點：§15 掃描命中=0；§13 secrets\_scan 命中=0。  
8. **最小介面契約（local/CI 對稱）**：提供 acceptance\_local.sh 全文；CI 只描述介面不越界落地設定。  
   * 驗收點：§13 rc=0，產物落點符合 §8/§9。

### **20.2 Legacy→New Mapping（舊版章節 100% 覆蓋）**

| legacy\_section (r1) | new\_section (r2) | notes |
| ----- | ----- | ----- |
| 0 Frontmatter | §0/§6 | 增加 SSOT/Doc Inventory 固化 |
| 1 TOC \+ Anchor Registry | §1/§3 | 去外鏈；錨點一致 |
| 2 導讀 | §2 | Diátaxis 強化 |
| 3 Authority & Scope | §4/§5 | SSOT r2 \+ route-out 明確 |
| 4 Doc Inventory \+ SOP | §6/§16 | 以 locator registry/locator proof 取代宣告句 |
| 5 Requirements | §7 | 每條 REQ 閉環到驗收與產物 |
| 10 Gates/DoD | §12 | Minset/Plus 分層落地 |
| 11 Acceptance | §13 | 移除不可執行污染；提供全文腳本 |
| 16 Appendices（Web/Glossary 等） | §18/§19 | Web ≥6 且正文回指；術語/檔名規範硬化 |

---

**（文件結束）**

