# **《OMOC\_WP-003+RB+WI\_v4.0.1-r2》Phase-L/L1 Evidence Tree & Step Template Bootstrap（升級修補版）**

\[ANCHOR:OMOC-WP003-0000\]

## **0\) Title \+ Canonical Version Block（外部名/內部簡稱/版本/日期/狀態）**

* 外部名：`OMOC_WP-003+RB+WI_v4.0.1-r2`  
* 內部簡稱：`WP-003`  
* 主題：Phase-L/L1 Evidence Tree & Step Template Bootstrap  
* today（Asia/Taipei）：`2026-02-18`  
* 狀態：`TEMP_CLOSED`（Fail-Closed；所有未證實/未能機械驗證者皆以 TT 追蹤）  
* 取代/淘汰（Supersedes）：`/mnt/data/OMOC_WP-003+RB+WI.md`  
* 上游對齊（SSOT）：A0/A1/A2/A3（見 §2 Authority Stack）  
* Cross-WP 對齊：WP-001 / WP-002（見 §14 Gates）

---

## **TOC（目錄）**

* [0\) Title \+ Canonical Version Block](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995161b-db48-83a5-8912-5e885d202f20#omoc-wp003-0000)  
* [1\) Quick Start（最短可走通路徑）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995161b-db48-83a5-8912-5e885d202f20#omoc-wp003-0100)  
* [2\) Authority Stack & Conflict Rules](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995161b-db48-83a5-8912-5e885d202f20#omoc-wp003-0200)  
* [3\) Scope（Phase-L/L1 邊界）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995161b-db48-83a5-8912-5e885d202f20#omoc-wp003-0300)  
* [4\) Glossary](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995161b-db48-83a5-8912-5e885d202f20#omoc-wp003-0400)  
* [5\) Doc Inventory \+ locator\_proof](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995161b-db48-83a5-8912-5e885d202f20#omoc-wp003-0500)  
* [6\) Locator Convention \+ Sources Registry（含 SRC fallback）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995161b-db48-83a5-8912-5e885d202f20#omoc-wp003-0600)  
* [7\) Coverage Map（SSOT → WP-003）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995161b-db48-83a5-8912-5e885d202f20#omoc-wp003-0700)  
* [8\) Evidence Tree Spec（目錄樹/命名/Quarantine）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995161b-db48-83a5-8912-5e885d202f20#omoc-wp003-0800)  
* [9\) Step Template Bootstrap（step\_template.md）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995161b-db48-83a5-8912-5e885d202f20#omoc-wp003-0900)  
* [10\) Evidence Contract（L1 minset vs DoD 四件套）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995161b-db48-83a5-8912-5e885d202f20#omoc-wp003-1000)  
* [11\) BK-002（Spec \+ Runbook \+ WI \+ 驗收 \+ 回滾）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995161b-db48-83a5-8912-5e885d202f20#omoc-wp003-1100)  
* [12\) Runbook（Phase-L/L1 操作手冊）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995161b-db48-83a5-8912-5e885d202f20#omoc-wp003-1200)  
* [13\) WI（工作指導書：逐步核對清單）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995161b-db48-83a5-8912-5e885d202f20#omoc-wp003-1300)  
* [14\) Gates（Entry/Exit；引用 WP-002 locator）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995161b-db48-83a5-8912-5e885d202f20#omoc-wp003-1400)  
* [15\) Closure Matrix（Review Findings → 修補結果）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995161b-db48-83a5-8912-5e885d202f20#omoc-wp003-1500)  
* [16\) TT Register \+ 測試追蹤清單](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995161b-db48-83a5-8912-5e885d202f20#omoc-wp003-1600)  
* [17\) Web Evidence Index（若有）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995161b-db48-83a5-8912-5e885d202f20#omoc-wp003-1700)  
* [18\) Change Log](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995161b-db48-83a5-8912-5e885d202f20#omoc-wp003-1800)  
* [19\) Self-Audit Checklist](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995161b-db48-83a5-8912-5e885d202f20#omoc-wp003-1900)

---

\[ANCHOR:OMOC-WP003-0100\]

## **1\) Quick Start（最短可走通路徑：產出 L1 最小 evidence minset，並可驗收）**

### **1.1 目標（L1 最小可驗收交付）**

在 repo root 產出並通過（Fail-Closed）：

* `verdict.json`  
* `checks_manifest.json`  
* `evidence_index.md`  
* `bundle_audit.json`  
* `evidence_bundle.tgz`  
* `evidence/_acceptance/<TS>/...`（含 log）

上述 evidence\_minset 來源：RB+WI 定義必備四件套（`verdict/checks_manifest/evidence_index/evidence_bundle`）與「不得含 secrets」要求。  
來源 locator：SRC-RBWI-EVIDENCE-CONTRACT（見 §6.3）。

### **1.2 Quick Start（Bash-only 路徑；Fail-Closed）**

Entry Gate：必須先通過 WP-002 的 GATE-ENV-READY（見 §14.1）。未通過就別硬跑，否則你只是在製造垃圾跡證。

1. 設定 TS（UTC；必須符合 `^[0-9]{8}T[0-9]{6}Z$`）

export OMOC\_TS="$(date \-u \+%Y%m%dT%H%M%SZ)"

2. 建立 Evidence Tree（四根目錄 \+ acceptance/log）

mkdir \-p evidence/\_templates evidence/\_acceptance evidence/\_audit evidence/\_backup  
mkdir \-p "evidence/\_acceptance/$OMOC\_TS/log"

來源 locator：SRC-RBWI-L1（見 §6.3）。

3. 產出 root artifacts（verdict / checks\_manifest / evidence\_index / bundle\_audit 初版）  
* **首選**：依照 skills 合冊 SK02（Evidence Bootstrap）契約內容生成（來源：SRC-CSK-SK02）。  
* **最小硬規則**：所有 JSON 都必須 `jq -e` 可解析（Fail-Closed），來源：SRC-WPM-COV-N2-EVID。  
4. 打包 evidence\_bundle.tgz \+ 生成/更新 bundle\_audit.json（Fail-Closed）  
* 依照 skills 合冊 SK08（Evidence Packager）契約：缺 root artifacts 或 acceptance dir → 直接退出（Fail-Closed）  
* **必做禁敏掃描**：命中 forbidden\_patterns 或 forbidden members → `FAIL_CLOSED`（見 §13.4）  
  來源：SRC-CSK-SK08 \+ SRC-CSK-QUAR \+ SRC-CSK-FORBIDDEN。  
5. 驗收（Pass/Fail 可判）

jq \-e . verdict.json \>/dev/null  
jq \-e . checks\_manifest.json \>/dev/null  
jq \-e . bundle\_audit.json \>/dev/null  
test \-f evidence\_index.md  
test \-f evidence\_bundle.tgz  
tar \-tzf evidence\_bundle.tgz | head  
jq \-r .result bundle\_audit.json

`bundle_audit.json.result` **必須**為 `PASS`；`TEMP_CLOSED/FAIL_CLOSED` 視為未通過（Fail-Closed）。來源：SRC-CSK-SK08。

6. 立 BK-002（備份點；見 §11）

mkdir \-p "evidence/\_backup/BK-002/$OMOC\_TS"  
cp \-a evidence/\_templates "evidence/\_backup/BK-002/$OMOC\_TS/templates"  
cp \-a "evidence/\_acceptance/$OMOC\_TS" "evidence/\_backup/BK-002/$OMOC\_TS/acceptance"

BK-002 定義來源：SRC-WPM-BK002（見 §6.3）。

---

\[ANCHOR:OMOC-WP003-0200\]

## **2\) Authority Stack & Conflict Rules（No-Source-No-Norm；SSOT 優先序；Web SUPPORT-only）**

### **2.1 Authority Stack（裁決優先序）**

* **A0**：`/mnt/data/OMOC_藍圖_v4.0.1-r1.md`（藍圖層最高裁決；Authority Stack / DoD / 介面分工 / TT）  
  * locator：SRC-A0-BP-0400 / SRC-A0-BP-1000 / SRC-A0-BP-1200 / SRC-A0-BP-1600  
* **A1**：`/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md`（施工 Runbook/WI 合冊；Evidence Contract / cmd template / L1）  
  * locator：SRC-RBWI-EVIDENCE-CONTRACT / SRC-RBWI-CMD-TEMPLATE / SRC-RBWI-L1  
* **A2**：`/mnt/data/OMOC_施工skills_合冊_v4.0.1-r2.md`（skills 契約；quarantine / packager / validator / 禁敏）  
  * locator：SRC-CSK-QUAR / SRC-CSK-SK02 / SRC-CSK-SK08 / SRC-CSK-FORBIDDEN  
* **A3**：`/mnt/data/OMOC_實作+WP總表_v4.0.1-r2.md`（WP Master / Gate Registry / BK 定義 / Coverage）  
  * locator：SRC-WPM-WP003-ROW / SRC-WPM-BK002 / SRC-WPM-GATE-EVID-MINSET / SRC-WPM-COV-N2-EVID  
* **WP001**：`/mnt/data/OMOC_WP-001+RB+WI_v4.0.1-r2.md`（整體 Authority/版本鎖/文件治理接口）  
* **WP002**：`/mnt/data/OMOC_WP-002+RB+WI_v4.0.1-r2.md`（Dev Container & Toolchain Ready；Entry Gate 依據）  
* **WP003（本文件）**：僅在不違反 A0\~A3/WP001/WP002 的前提下，定義 L1 實作細節（Evidence Tree \+ Step Template \+ BK-002 \+ Fail-Closed 驗收）

### **2.2 衝突裁決規則（必讀）**

1. **高階覆蓋低階**：A0 \> A1 \> A2 \> A3 \> WP001 \> WP002 \> WP003  
2. **No-Source-No-Norm（Fail-Closed）**：  
   * 若本文件新增「必做門檻」與 A0\~A3 相衝突：**一律視為 DRIFT** → 建 TT → `TEMP_CLOSED`，禁止默默放行  
3. **Web SUPPORT-only**：本文件若有 Web Evidence（見 §17），不得覆寫 A0\~A3；僅限描述「易變動平台/工具行為」。

---

\[ANCHOR:OMOC-WP003-0300\]

## **3\) Scope（Phase-L/L1 的邊界；Phase-G OUT-OF-SCOPE；GitHub UI 僅觀察核對）**

### **3.1 In-Scope（本 WP-003 必做）**

* 建立 **Evidence Tree**（四根目錄 \+ acceptance/log）與命名規則（含 quarantine 硬規則）  
* 建立 **step\_template.md**（模板規格 \+ 示例；可被抽取器/檢核器讀取）  
* 產出 **Evidence Minimum Output Set**（四件套）+ `bundle_audit.json` \+ `evidence_bundle.tgz`  
* 落地 **禁敏硬規則**（forbidden\_patterns / forbidden members；命中即 FAIL\_CLOSED）  
* 建立 **BK-002**（最小驗收點 \+ 回滾條件 \+ 回復步驟）  
* 提供 **Runbook \+ WI**（可執行步驟、驗收點、最小跡證）

### **3.2 Out-of-Scope（明確禁止寫成必做的配置步驟）**

**硬性護欄**：本 WP-003 **不得**提供 rulesets / branch protection / merge queue / required checks 的「UI 配置步驟」。  
只能做「觀察/檢視/核對」層級提醒；任何配置操作屬 Phase-G，請指向相對應 WP（例如 WP-009/010/013 等）。

* 禁止：在 GitHub UI 內新增/修改 Rulesets、Merge Queue、Branch Rules、Required Status Checks 名單  
* 允許（SUPPORT 提醒）：  
  * 只在 UI 上 **觀察**：PR Checks 頁面是否出現預期 check 名稱、是否有 “Expected/waiting” 類漂移  
  * 若要動手配置：標記 **Phase-G OUT-OF-SCOPE** 並改走對應 WP（見 A3 WP Master 的 Phase-G WP 列表）

---

\[ANCHOR:OMOC-WP003-0400\]

## **4\) Glossary（關鍵名詞）**

* **Evidence Tree**：`evidence/` 下的標準化目錄結構，確保跡證可打包、可驗證、可回滾。來源：SRC-RBWI-L1、SRC-CSK-QUAR。  
* **TS / OMOC\_TS**：UTC 時戳字串，格式 `YYYYMMDDTHHMMSSZ`；用於 acceptance dir 命名。來源：SRC-CSK-QUAR。  
* **evidence\_minset / Evidence Minimum Output Set**：最小必備輸出集合（四件套 \+ 可選擴充）。來源：SRC-RBWI-EVIDENCE-CONTRACT、SRC-A0-BP-1200、SRC-WPM-GATE-EVID-MINSET。  
* **DoD 四件套**：本體為 evidence\_minset（verdict / checks\_manifest / evidence\_index / evidence\_bundle）。來源：SRC-RBWI-EVIDENCE-CONTRACT、SRC-A0-BP-1000。  
* **bundle\_audit.json**：打包稽核結果（members/must\_include/sha256/result/tt）。來源：SRC-CSK-SK08。  
* **Quarantine**：不符合 TS 命名的 acceptance 目錄必須隔離到 `evidence/_quarantine/`。來源：SRC-CSK-QUAR。  
* **BK-002**：Evidence 標準建立前的備份點（evidence 目錄基線）。來源：SRC-WPM-BK002。  
* **Gate**：可機械驗證的通關條件。Entry Gate 引用 WP-002；Exit Gate 使用 Gate Registry（A3）。來源：SRC-WP002-GATE-ENV-READY、SRC-WPM-GATE-EVID-MINSET。  
* **TT（Test Track）**：所有未能證實/未落地/需後續驗證者的追蹤單；狀態全 TEMP\_CLOSED。來源：SRC-A0-BP-1600。

---

\[ANCHOR:OMOC-WP003-0500\]

## **5\) Doc Inventory（Files-first；bytes/lines/sha256/locator\_proof；UNVERIFIED→TT→TEMP\_CLOSED）**

### **5.1 Inventory Table（本次任務輸入全集）**

計算方式：bytes=檔案大小；lines=行數；sha256=SHA-256。若未來任一值對不上，視為 DRIFT → TT。

| doc\_id | role | path | exists | bytes | lines | sha256 |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| D-TARGET-OLD | 舊版（被取代） | `/mnt/data/OMOC_WP-003+RB+WI.md` | ✅ | 39364 | 654 | `dc1c597379f4eee81d3764154db7e16bee64352911f55a285f63f1147b0c359d` |
| D-REVIEW | 修補依據 | `/mnt/data/OMOC_WP-003+RB+WI_審查報告.md` | ✅ | 22548 | 204 | `7c05ef04e858d88218afae955b9b2c96d31aafce7b929842f2587cc5278dd86c` |
| A0 | 藍圖（SSOT） | `/mnt/data/OMOC_藍圖_v4.0.1-r1.md` | ✅ | 36139 | 461 | `ccd7c311b11420652ac325b49ee6c317449d867b75b5c676ba641c0da17c6a33` |
| A1 | 施工 RB+WI（SSOT） | `/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md` | ✅ | 45818 | 750 | `3fb8ea01b069a8f64f0183d8fc7678acf99b49adb4ef6a80a761997e1a2b44ca` |
| A2 | 施工 skills（SSOT） | `/mnt/data/OMOC_施工skills_合冊_v4.0.1-r2.md` | ✅ | 84815 | 2199 | `f3f4c5cae4b6ca928eee241dbb9854da9ef07eb0e211e513a01997ecd840ecab` |
| A3 | WP Master（SSOT） | `/mnt/data/OMOC_實作+WP總表_v4.0.1-r2.md` | ✅ | 54886 | 756 | `ffb92a86c26e12cc3d6bf492694fb81477f985f8f50d0744c4944dbdae1a49a9` |
| WP001 | Cross-WP | `/mnt/data/OMOC_WP-001+RB+WI_v4.0.1-r2.md` | ✅ | 41578 | 958 | `9d379a473ca2af7f3202982775815e8cf80c283cba3f1239e8381c89e0d0f1f9` |
| WP002 | Cross-WP | `/mnt/data/OMOC_WP-002+RB+WI_v4.0.1-r2.md` | ✅ | 39664 | 730 | `5e38e2137cf0230400ab32261544c0df4a641bafbf92b5d8f575a7751e20ed5c` |
| S-TEMPLATE | SUPPORT | `/mnt/data/《OMOC_WP-00X+RB+WI》實作驗收指引指令模版.md` | ✅ | 13106 | 184 | `918efe0a41f59ed739e25a47146c8360e02ac2fec5a7ef9346800b3d6372e6d4` |
| S-GPTS | SUPPORT | `/mnt/data/OMOC_實作驗收指引_GPTs合冊_v4.0.1-r2.md` | ✅ | 36379 | 486 | `e90952bfaa8eed93fcabb2846a96d8f4c78bf04fec8c23a4e9112613538e5ef7` |
| D-TARGET-NEW | 新版（本文件） | `OMOC_WP-003+RB+WI_v4.0.1-r2` | ⚠️ | UNVERIFIED | UNVERIFIED | UNVERIFIED → TT-WP003-INV-SELF-001 |

### **5.2 locator\_proof（抽樣定位證明；避免只靠行號）**

| doc\_id | proof\_locator（primary） | excerpt（fallback） |
| ----- | ----- | ----- |
| A0 | `/mnt/data/OMOC_藍圖_v4.0.1-r1.md :: FIND="ANCHOR:OMOC-BP-0400" :: L89-L96` | `A0（本文件）：藍圖層最高裁決` |
| A0 | `/mnt/data/OMOC_藍圖_v4.0.1-r1.md :: FIND="ANCHOR:OMOC-BP-1200" :: L213-L222` | `RUNBOOK / WI / Interface Contract 必備欄位` |
| A1 | `/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md :: FIND="OMOC-RBWI-EVIDENCE-CONTRACT" :: L147-L156` | `evidence_minset（必備）：verdict/checks_manifest/evidence_index/evidence_bundle` |
| A2 | `/mnt/data/OMOC_施工skills_合冊_v4.0.1-r2.md :: FIND="Placeholder quarantine 規則" :: ~L30+` | `不符 TS 命名的 acceptance 目錄 → evidence/_quarantine/` |
| A2 | `/mnt/data/OMOC_施工skills_合冊_v4.0.1-r2.md :: FIND="name: omoc-evidence-packager" :: L1121+` | `SK08：缺 root artifacts 或 forbidden members → FAIL_CLOSED` |
| A3 | \`/mnt/data/OMOC\_實作+WP總表\_v4.0.1-r2.md :: FIND=" | WP-003 |
| WP002 | `/mnt/data/OMOC_WP-002+RB+WI_v4.0.1-r2.md#gate-env-ready :: L490+` | `Gate: GATE-ENV-READY（Gate Contract Lock + 判定規範）` |

---

\[ANCHOR:OMOC-WP003-0600\]

## **6\) Locator Convention（anchor/行號/摘錄；SRC 必須 fallback；範例）+ Sources Registry**

### **6.1 Locator 格式（標準）**

* **Primary Locator**（可機械定位其一即可）：  
  * `PATH#anchor`（若檔案內有明確 anchor / html id / heading anchor）  
  * `PATH :: FIND="needle" :: Lx-Ly`（以固定字串搜尋 \+ 行號範圍）  
* **Fallback Locator（必備）**：  
  * `PATH :: EXCERPT="..."`（短摘錄；可人工比對；避免行號漂移即失效）

### **6.2 SRC 規則（Fail-Closed）**

* 每個 `SRC-*` **必須**具備：  
  1. primary locator  
  2. fallback（anchor \+ excerpt）  
* 若缺任一：視為 **UNVERIFIED** → TT → `TEMP_CLOSED`（本文件已補齊；見 §15/§16）

### **6.3 Sources Registry（NORMATIVE；已落地 P-WP003-002）**

**注意**：本區塊是「規範性引用清單」。本文件內任何 “必須/門檻/Fail-Closed” 若未能追溯到 SRC，視為缺引用。

#### **A0 — Blueprint**

* **SRC-A0-BP-0400**（Authority Stack）  
  * primary：`/mnt/data/OMOC_藍圖_v4.0.1-r1.md :: FIND="ANCHOR:OMOC-BP-0400" :: L89-L96`  
  * fallback：`/mnt/data/OMOC_藍圖_v4.0.1-r1.md :: EXCERPT="A0（本文件）：藍圖層最高裁決"`  
* **SRC-A0-BP-1000**（DoD / required checks / evidence\_min\_set）  
  * primary：`/mnt/data/OMOC_藍圖_v4.0.1-r1.md :: FIND="ANCHOR:OMOC-BP-1000" :: L171-L210`  
  * fallback：`/mnt/data/OMOC_藍圖_v4.0.1-r1.md :: EXCERPT="必須有且名稱穩定：ci / omoc-gate；Evidence Minimum Output Set"`  
* **SRC-A0-BP-1200**（分工接口：RUNBOOK/WI/Interface Contract）  
  * primary：`/mnt/data/OMOC_藍圖_v4.0.1-r1.md :: FIND="ANCHOR:OMOC-BP-1200" :: L213-L238`  
  * fallback：`/mnt/data/OMOC_藍圖_v4.0.1-r1.md :: EXCERPT="WI：可執行的最小步驟集 + 驗收點 + 最小跡證集"`  
* **SRC-A0-BP-1600**（TT 規格：全 TEMP\_CLOSED）  
  * primary：`/mnt/data/OMOC_藍圖_v4.0.1-r1.md :: FIND="ANCHOR:OMOC-BP-1600" :: L264-L310`  
  * fallback：`/mnt/data/OMOC_藍圖_v4.0.1-r1.md :: EXCERPT="TT 清單；狀態 TEMP_CLOSED；含驗證條件與最小跡證"`

#### **A1 — Runbook+WI 合冊**

* **SRC-RBWI-EVIDENCE-CONTRACT**（evidence\_minset 必備四件套 \+ 不得含 secrets）  
  * primary：`/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md :: FIND="OMOC-RBWI-EVIDENCE-CONTRACT" :: L147-L160`  
  * fallback：`/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md :: EXCERPT="evidence_minset（必備）：verdict.json / checks_manifest.json / evidence_index.md / evidence_bundle.tgz（不得含 secrets）"`  
* **SRC-RBWI-CMD-TEMPLATE**（step() 命令模板）  
  * primary：`/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md :: FIND="OMOC-RBWI-CMD-TEMPLATE" :: L189-L215`  
  * fallback：`/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md :: EXCERPT="step()：timeout + tee + log dir evidence/_acceptance/<ts>/log"`  
* **SRC-RBWI-L1**（L1 evidence init 命令/驗收）  
  * primary：`/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md :: FIND="OMOC-RBWI-L1" :: L245-L268`  
  * fallback：`/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md :: EXCERPT="建立四個根目錄 evidence/_templates/_acceptance/_audit/_backup；驗收：存在且可寫"`

#### **A2 — Skills 合冊（Security/Packager/Quarantine）**

* **SRC-CSK-QUAR**（Quarantine 硬規則）  
  * primary：`/mnt/data/OMOC_施工skills_合冊_v4.0.1-r2.md :: FIND="Placeholder quarantine 規則" :: L30-L44`  
  * fallback：`/mnt/data/OMOC_施工skills_合冊_v4.0.1-r2.md :: EXCERPT="不符 TS 正規式的 evidence/_acceptance 子目錄必須移至 evidence/_quarantine/"`  
* **SRC-CSK-SK02**（SK02 Evidence Bootstrap：root artifacts 生成）  
  * primary：`/mnt/data/OMOC_施工skills_合冊_v4.0.1-r2.md :: FIND="name: omoc-evidence-bootstrap" :: L410-L520`  
  * fallback：`/mnt/data/OMOC_施工skills_合冊_v4.0.1-r2.md :: EXCERPT="建立 verdict/checks_manifest/evidence_index/bundle_audit；JSON 必 jq -e"`  
* **SRC-CSK-SK08**（SK08 Packager：bundle \+ audit；Fail-Closed）  
  * primary：`/mnt/data/OMOC_施工skills_合冊_v4.0.1-r2.md :: FIND="name: omoc-evidence-packager" :: L1121-L1320`  
  * fallback：`/mnt/data/OMOC_施工skills_合冊_v4.0.1-r2.md :: EXCERPT="缺 root artifact 或 forbidden members → FAIL_CLOSED；bundle_audit.result 必須 PASS"`  
* **SRC-CSK-FORBIDDEN**（forbidden\_patterns）  
  * primary：`/mnt/data/OMOC_施工skills_合冊_v4.0.1-r2.md :: FIND="forbidden_patterns" :: L1243`  
  * fallback：`/mnt/data/OMOC_施工skills_合冊_v4.0.1-r2.md :: EXCERPT="['**/.env','**/*.env','**/*token*','**/*secret*','**/*password*']"`

#### **A3 — WP Master（本版 A3 指向 r2；已落地 P-WP003-001）**

* **SRC-WPM-WP003-ROW**（WP-003 定義與狀態）  
  * primary：`/mnt/data/OMOC_實作+WP總表_v4.0.1-r2.md :: FIND="| WP-003 |" :: L337`  
  * fallback：`/mnt/data/OMOC_實作+WP總表_v4.0.1-r2.md :: EXCERPT="WP-003 | Phase-L/L1 Evidence Tree & Step Template Bootstrap | TEMP_CLOSED | TT-002"`  
* **SRC-WPM-BK002**（BK-002 定義）  
  * primary：`/mnt/data/OMOC_實作+WP總表_v4.0.1-r2.md :: FIND="| BK-002 |" :: L286`  
  * fallback：`/mnt/data/OMOC_實作+WP總表_v4.0.1-r2.md :: EXCERPT="BK-002：建 Evidence 標準前；evidence 目錄基線；解壓並比對 index"`  
* **SRC-WPM-GATE-EVID-MINSET**（Gate Registry：GATE-EVIDENCE-MINSET \+ hash）  
  * primary：`/mnt/data/OMOC_實作+WP總表_v4.0.1-r2.md :: FIND="| GATE-EVIDENCE-MINSET |" :: L300`  
  * fallback：`/mnt/data/OMOC_實作+WP總表_v4.0.1-r2.md :: EXCERPT="Evidence Minimum Output Set exists and audit passes (fail-closed) + gate_contract_hash"`  
* **SRC-WPM-COV-N2-EVID**（N2 Evidence Contract \+ Security Guardrails）  
  * primary：`/mnt/data/OMOC_實作+WP總表_v4.0.1-r2.md :: FIND="N2 Evidence Contract" :: L189-L206`  
  * fallback：`/mnt/data/OMOC_實作+WP總表_v4.0.1-r2.md :: EXCERPT="JSON 必 jq -e；必備產物少一即 FAIL_CLOSED"`

#### **Cross-WP Gate Reference（已落地 P-WP003-007）**

* **SRC-WP002-GATE-ENV-READY**（Entry Gate 依據）  
  * primary：`/mnt/data/OMOC_WP-002+RB+WI_v4.0.1-r2.md#gate-env-ready :: L490+`  
  * fallback：`/mnt/data/OMOC_WP-002+RB+WI_v4.0.1-r2.md :: EXCERPT="Gate: GATE-ENV-READY；required_artifacts：run.log / rc.txt / evidence/_acceptance/<ts>/baseline/*"`

---

\[ANCHOR:OMOC-WP003-0700\]

## **7\) Coverage Map（SSOT → WP-003；逐條 requirement\_id 對應 wp003\_locator；狀態）**

規則：每列必須有 `source(SRC-*)` 與 `wp003_locator`；若無法對齊 → TT → `TEMP_CLOSED`。

| requirement\_id | source (SRC) | requirement 摘要 | wp003\_locator | 驗收點（可判 PASS/FAIL） | status |
| ----- | ----- | ----- | ----- | ----- | ----- |
| WP003-REQ-AUTH-001 | SRC-A0-BP-0400 | Authority Stack \+ conflict rules 必須明示 | §2 | 高階覆蓋低階；No-Source-No-Norm 宣告可稽核 | PASS |
| WP003-REQ-IFACE-001 | SRC-A0-BP-1200 | RUNBOOK/WI 分工接口：本 WP 必含可執行步驟+驗收+最小跡證 | §12/§13 | WI 清單含驗收點與最小跡證；不只是口號 | PASS |
| WP003-REQ-EVIDMIN-001 | SRC-RBWI-EVIDENCE-CONTRACT | evidence\_minset 四件套 \+ 不得含 secrets | §1/§10/§13 | 4件套存在；bundle 禁敏掃描 PASS | PASS |
| WP003-REQ-L1-INIT-001 | SRC-RBWI-L1 | L1 建立 evidence 四根目錄 \+ 驗收 | §8/§12 | evidence/\_templates/\_acceptance/\_audit/\_backup 存在可寫 | PASS |
| WP003-REQ-BOOTSTRAP-001 | SRC-CSK-SK02 | SK02 生成 root artifacts（JSON 可解析） | §12.3 | `jq -e` 全部 PASS；缺任一 FAIL\_CLOSED | PASS |
| WP003-REQ-PACK-001 | SRC-CSK-SK08 | SK08 打包 \+ bundle\_audit（Fail-Closed） | §12.4/§13.5 | `bundle_audit.result == PASS`；tar must\_include 完整 | PASS |
| WP003-REQ-QUAR-001 | SRC-CSK-QUAR | quarantine：不符 TS 的 acceptance dir 必須隔離 | §8.3 | 發現違規 dir → move to evidence/\_quarantine；記 TT | PASS |
| WP003-REQ-FORBID-001 | SRC-CSK-FORBIDDEN | forbidden\_patterns 命中即 FAIL\_CLOSED | §13.4 | 成員/檔名命中 → FAIL\_CLOSED；不得先放行 | PASS |
| WP003-REQ-BK002-001 | SRC-WPM-BK002 | BK-002：最小驗收點 \+ 回滾/回復 | §11 | BK-002 snapshot 可還原；驗收 PASS/FAIL 可判 | PASS |
| WP003-REQ-GATE-ENTRY-001 | SRC-WP002-GATE-ENV-READY | Entry Gate 必引用 WP-002（可跳轉定位） | §14.1 | 未通過 GATE-ENV-READY → WP-003 禁止啟動 | PASS |
| WP003-REQ-GATE-EXIT-001 | SRC-WPM-GATE-EVID-MINSET | Exit Gate：GATE-EVIDENCE-MINSET（含 hash） | §14.2 | Gate hash 對齊；evidence\_minset \+ audit PASS | PASS |
| WP003-REQ-TT-001 | SRC-A0-BP-1600 | TT 全 TEMP\_CLOSED \+ 驗證條件/最小跡證 | §16 | TT 列表完整；每條含 closure\_rule/驗收步驟/跡證 | PASS |

---

\[ANCHOR:OMOC-WP003-0800\]

## **8\) Evidence Tree Spec（目錄樹、命名規則、quarantine 規則、禁止自訂習慣）**

### **8.1 標準目錄樹（L1 最小集合）**

來源：SRC-RBWI-L1（四根目錄）；SRC-CSK-QUAR（quarantine）。

evidence/  
  \_templates/  
    step\_template.md  
  \_acceptance/  
    \<TS\>/  
      log/  
      steps/  
      reports/  
  \_audit/  
  \_backup/  
  \_quarantine/            \# 只放不合法 acceptance 目錄（見 8.3）

### **8.2 命名規則（Hard）**

* TS 命名：`<TS>` **必須**符合 `^[0-9]{8}T[0-9]{6}Z$`（UTC）  
  * 來源：SRC-CSK-QUAR  
* 日誌命名：`evidence/_acceptance/<TS>/log/<STEP_NAME>.log`  
  * 來源：SRC-RBWI-CMD-TEMPLATE（step()）

### **8.3 Quarantine（收斂成 1 條硬規則 \+ 1 個 TT 範例；已落地 P-WP003-005）**

**硬規則（Fail-Closed）**

* 任何 `evidence/_acceptance/` 下的子目錄，只要名稱不符合 TS 正規式，**必須**移至：  
  `evidence/_quarantine/<orig>-<timestamp>/`  
  來源：SRC-CSK-QUAR。

**最小可驗收步驟（Bash）**

set \-euo pipefail  
ts="$(date \-u \+%Y%m%dT%H%M%SZ)"  
mkdir \-p evidence/\_quarantine  
for d in evidence/\_acceptance/\*; do  
  \[ \-d "$d" \] || continue  
  name="$(basename "$d")"  
  if \! printf '%s' "$name" | grep \-Eq '^\[0-9\]{8}T\[0-9\]{6}Z$'; then  
    mv "$d" "evidence/\_quarantine/${name}-${ts}"  
    echo "TT-QUARANTINE-001: quarantined $name \-\> ${name}-${ts}"  
  fi  
done

**TT 範例（固定 ID；可追蹤）**

* `TT-QUARANTINE-001`：發現非 TS 命名 acceptance dir（placeholder / 測試殘留）  
  * closure\_rule：移入 quarantine \+ packager 再跑一次必須 PASS  
  * evidence：`evidence/_quarantine/*` 目錄清單 \+ pack log（SK08）

---

\[ANCHOR:OMOC-WP003-0900\]

## **9\) Step Template Bootstrap（step\_template.md 欄位規格、示例、最小必填、抽取器友好設計）**

註：Step Template 的「欄位集合」屬 WP-003 的施工規格（低於 A0\~A3）。若未來要升格為上游契約，需開 TT（見 TT-WP003-TPL-SSOT-001）。

### **9.1 檔案位置（Hard）**

* Canonical：`evidence/_templates/step_template.md`  
* 每次 acceptance 建議複製一份到：`evidence/_acceptance/<TS>/steps/step_template.md`（便於回放）

### **9.2 Template 規格（Extractor-friendly）**

**固定 YAML front-matter（必填 keys）**

* `step_id`（字串；建議 `WP003-L1-<name>`）  
* `phase`（固定：`Phase-L/L1`）  
* `owner`（人/agent）  
* `objective`（一句話）  
* `tools`（陣列；例：`["bash","git","jq","tar"]`）  
* `preconditions`（陣列）  
* `commands`（陣列；每項含 `name`,`timeout`,`cmd`）  
* `acceptance_criteria`（陣列；可判 PASS/FAIL）  
* `evidence_outputs`（陣列；檔案路徑）  
* `failure_policy`（固定：`FAIL_CLOSED`）  
* `tt_triggers`（陣列；何時開 TT）

### **9.3 最小示例（可直接落地）**

\---  
step\_id: "WP003-L1-EVIDENCE-BOOTSTRAP"  
phase: "Phase-L/L1"  
owner: "operator"  
objective: "Bootstrap evidence tree \+ root artifacts \+ packed bundle"  
tools: \["bash","jq","tar"\]  
preconditions:  
  \- "WP-002 GATE-ENV-READY PASS"  
commands:  
  \- name: "L1-evidence-init"  
    timeout: "5m"  
    cmd: "mkdir \-p evidence/\_templates evidence/\_acceptance evidence/\_audit evidence/\_backup && mkdir \-p evidence/\_acceptance/$OMOC\_TS/log"  
acceptance\_criteria:  
  \- "evidence roots exist"  
  \- "bundle\_audit.result \== PASS"  
evidence\_outputs:  
  \- "evidence/\_acceptance/$OMOC\_TS/log/L1-evidence-init.log"  
  \- "verdict.json"  
  \- "checks\_manifest.json"  
  \- "evidence\_index.md"  
  \- "bundle\_audit.json"  
  \- "evidence\_bundle.tgz"  
failure\_policy: "FAIL\_CLOSED"  
tt\_triggers:  
  \- "missing tool (jq/tar/sha256) \-\> TEMP\_CLOSED \+ TT"  
\---  
\# Notes  
\- 禁敏：任何 \*.env/\*token\*/\*secret\*/\*password\* 進 bundle \=\> FAIL\_CLOSED

---

\[ANCHOR:OMOC-WP003-1000\]

## **10\) Evidence Contract（L1 minset 與後段 DoD 四件套的清楚邊界；避免漏洞）**

### **10.1 L1 必備（Hard）**

* **evidence\_minset（必備四件套）**：  
  * `verdict.json`  
  * `checks_manifest.json`  
  * `evidence_index.md`  
  * `evidence_bundle.tgz`（**不得含 secrets**）  
    來源：SRC-RBWI-EVIDENCE-CONTRACT。  
* **bundle\_audit.json（本 WP-003 加嚴；Fail-Closed）**  
  * 作為打包稽核結果；`result` 必須為 `PASS`  
    來源：SRC-CSK-SK08。

### **10.2 避免「新手/老手漏洞」（Hard）**

* 禁止用「零散截圖/口頭敘述」取代 evidence\_minset  
* 禁止把 secrets 放進 logs / index / bundle（命中即 FAIL\_CLOSED）  
  來源：SRC-RBWI-EVIDENCE-CONTRACT \+ SRC-CSK-SK08 \+ SRC-CSK-FORBIDDEN。

---

\[ANCHOR:OMOC-WP003-1100\]

## **11\) BK-002（Spec \+ Runbook \+ WI \+ 驗收點 \+ 回滾條件 \+ 回復步驟；已落地 P-WP003-003）**

### **11.1 BK-002 定義（NORMATIVE）**

* 目的：在「Evidence 標準」建立後，保存可回復的 baseline（模板 \+ 首次合法 acceptance）  
* 來源：SRC-WPM-BK002  
* 建議保存內容（最小集合）：  
  * `evidence/_templates/`  
  * `evidence/_acceptance/<TS>/`（合法 TS）  
  * `evidence_index.md`、`bundle_audit.json`（用於比對與復原）

### **11.2 最小驗收點（Pass/Fail 可判）**

BK-002 建立後，必須滿足：

1. `evidence/_backup/BK-002/<TS>/templates/step_template.md` 存在  
2. `evidence/_backup/BK-002/<TS>/acceptance/log/` 存在且非空（至少 1 個 log）  
3. 復原演練（dry-run）可重建：  
   * `evidence/_templates/`  
   * `evidence/_acceptance/<TS>/`  
4. 復原後再跑一次 SK08（或等價打包稽核）→ `bundle_audit.result == PASS`

### **11.3 回滾條件（觸發即回滾）**

* 任何 forbidden\_patterns 命中（檔名或 tar members）  
* `bundle_audit.result != PASS`  
* acceptance dir 不合法 TS 命名且未 quarantine  
* 4件套缺任一（Fail-Closed）  
  來源：SRC-CSK-SK08 \+ SRC-CSK-QUAR \+ SRC-RBWI-EVIDENCE-CONTRACT。

### **11.4 回復步驟（Restore；可機械驗證）**

風險提醒：如果你把 `.env` 打進 bundle，這不是「小失誤」，這叫「把鑰匙貼在門上」。Fail-Closed 沒得商量。

set \-euo pipefail  
ts="$1"  \# 要復原的 TS  
src="evidence/\_backup/BK-002/$ts"  
\[ \-d "$src" \] || { echo "BK-002 snapshot not found: $src"; exit 2; }

\# 1\) restore templates \+ acceptance  
rm \-rf evidence/\_templates  
mkdir \-p evidence/\_templates  
cp \-a "$src/templates/." evidence/\_templates/

rm \-rf "evidence/\_acceptance/$ts"  
mkdir \-p evidence/\_acceptance  
cp \-a "$src/acceptance" "evidence/\_acceptance/$ts"

\# 2\) (optional) restore root artifacts if snapshot kept them  
\# cp \-a "$src/root/." .

\# 3\) re-run packager audit (must PASS)  
\# 依據 SRC-CSK-SK08：若 repo 有腳本則用腳本；否則採 SK08 One-shot 內容

---

\[ANCHOR:OMOC-WP003-1200\]

## **12\) Runbook（Phase-L/L1 操作手冊：工具使用時機、命令硬化 timeout/tee/rc、log 位置、驗收點）**

### **12.1 工具使用時機（最小工具矩陣）**

| tool | 用途 | 何時用 | Fail-Closed 風險 |
| ----- | ----- | ----- | ----- |
| bash | 建樹/打包/掃描 | 全程 | 命令未記 log → 視為跡證不足 |
| jq | JSON 驗證 | 生成/更新 JSON 後 | `jq -e` 失敗 → FAIL\_CLOSED（來源：SRC-WPM-COV-N2-EVID） |
| tar | 打包/列成員 | 生成 evidence\_bundle | tar members 含禁敏 → FAIL\_CLOSED（來源：SRC-CSK-SK08） |
| git | BK-002 版本控制（可選） | snapshot/回滾 | 未能回復 → FAIL\_CLOSED |
| GitHub UI（觀察） | 只核對 check 名稱是否回報 | 需要確認時 | **禁止** UI 配置（Phase-G OUT-OF-SCOPE） |

### **12.2 命令硬化（推薦 step() 模板；來源：SRC-RBWI-CMD-TEMPLATE）**

本段是「可直接貼用」的最小模板；任何步驟缺 log，視為不可稽核。

step() {  
  local name="$1"; local tmo="$2"; shift 2  
  local cmd="$\*"  
  local ts="${OMOC\_TS:-$(date \-u \+%Y%m%dT%H%M%SZ)}"  
  local dir="evidence/\_acceptance/$ts/log"  
  mkdir \-p "$dir"  
  echo "==\> \[$name\] $cmd" | tee "$dir/$name.log"  
  timeout "$tmo" bash \-lc "$cmd" | tee \-a "$dir/$name.log"  
  echo $? \>"$dir/$name.rc"  
}

### **12.3 L1 — Evidence Tree \+ Root Artifacts（對齊 RBWI L1 \+ skills SK02）**

**Step：建立 evidence roots**

step "L1-evidence-init" 5m 'mkdir \-p evidence/\_templates evidence/\_acceptance evidence/\_audit evidence/\_backup && mkdir \-p "evidence/\_acceptance/$OMOC\_TS/log"'  
step "L1-tree" 5m 'find evidence \-maxdepth 2 \-type d | sort'

**Step：套用 SK02（Evidence Bootstrap）**

* 依 SRC-CSK-SK02 的契約生成（若 repo 有對應 skill/腳本，優先用；否則照其內容手動生成）  
* 最小硬規則：  
  * `jq -e . verdict.json` PASS  
  * `jq -e . checks_manifest.json` PASS  
  * `test -f evidence_index.md` PASS  
  * `test -f bundle_audit.json` PASS（初版可為 `TEMP_CLOSED`，但不得缺檔）

### **12.4 L1 — Packager（SK08；產出 evidence\_bundle.tgz \+ 更新 bundle\_audit.json）**

* 依 SRC-CSK-SK08 One-shot 內容執行（缺 artifacts → 退出；forbidden members → FAIL\_CLOSED）  
* 執行後驗收：  
  * `test -f evidence_bundle.tgz`  
  * `jq -r .result bundle_audit.json` \== `PASS`

---

\[ANCHOR:OMOC-WP003-1300\]

## **13\) WI（工作指導書：逐步核對清單；禁敏掃描；bundle/索引；required check 報告產出綁定驗收）**

### **13.1 WI-Checklist（逐步）**

1. **Entry Gate**：WP-002 `GATE-ENV-READY` 必須 PASS（見 §14.1）  
2. 設定 `OMOC_TS`（UTC；合法 TS）  
3. 建 evidence roots（§12.3）  
4. 生成 root artifacts（§12.3；SK02）  
5. **禁敏掃描（Fail-Closed；必做）**（§13.4）  
6. 打包 \+ audit（§12.4；SK08）  
7. 驗收：`bundle_audit.result == PASS`（Fail-Closed）  
8. 建立 BK-002（§11）  
9. 更新 `evidence_index.md`：列出本次產物與 log（必含必備清單）

### **13.2 `evidence_index.md` 最小要求（Hard）**

* 必須列出：  
  * 本次 TS  
  * 必備產物（四件套 \+ bundle\_audit）  
  * logs 路徑  
  * Gate 結果（Entry/Exit）  
* 缺任一：視為跡證不足 → FAIL\_CLOSED（來源：SRC-A0-BP-1200、SRC-RBWI-EVIDENCE-CONTRACT）

### **13.3 `checks_manifest.json` 最小要求（Hard）**

* 必須存在且可解析（`jq -e` PASS）  
* 至少包含：  
  * required\_contexts\_contract（可先 `TEMP_CLOSED`，但不得缺欄位）  
  * observed（可空，但 schema 必須成立）

「缺 required check report → FAIL\_CLOSED」的硬語意，本 WP 將 `checks_manifest.json` 視為最小 required-check 報告載體（來源：SRC-WPM-COV-N2-EVID \+ skills 合冊 notes）。

### **13.4 禁敏硬化（forbidden\_patterns/禁入清單落地；命中即 FAIL\_CLOSED；已落地 P-WP003-004）**

**Hard Rules**

* forbidden\_patterns（檔名/路徑）必須至少包含：  
  `["**/.env","**/*.env","**/*token*","**/*secret*","**/*password*"]`  
  來源：SRC-CSK-FORBIDDEN  
* tar members 若命中以下任一（大小寫不敏感）：  
  * `.env` / `*.env`  
  * `token`  
  * `secret`  
  * `password`  
    → **直接 FAIL\_CLOSED**（不得 TEMP\_CLOSED 先放行）  
    來源：SRC-CSK-SK08

**最小掃描（Bash；Fail-Closed）**

set \-euo pipefail  
\# 1\) 檔名/路徑掃描（repo root）  
hits="$(find . \-type f \\( \-name ".env" \-o \-name "\*.env" \-o \-iname "\*token\*" \-o \-iname "\*secret\*" \-o \-iname "\*password\*" \\) | sed 's|^\\./||' || true)"  
if \[ \-n "$hits" \]; then  
  echo "FAIL\_CLOSED: forbidden file paths detected:"  
  echo "$hits"  
  exit 2  
fi

\# 2\) 若 evidence\_bundle 已生成，掃 tar members  
if \[ \-f evidence\_bundle.tgz \]; then  
  bad="$(tar \-tzf evidence\_bundle.tgz | grep \-Ei '(^|/)(\\.env|\[^/\]\*\\.env|.\*token.\*|.\*secret.\*|.\*password.\*)' || true)"  
  if \[ \-n "$bad" \]; then  
    echo "FAIL\_CLOSED: forbidden tar members detected:"  
    echo "$bad"  
    exit 2  
  fi  
fi

### **13.5 Bundle/Index 綁定驗收（Hard）**

* `evidence_bundle.tgz` **必須**包含（must\_include）：  
  * `verdict.json`  
  * `checks_manifest.json`  
  * `evidence_index.md`  
  * `bundle_audit.json`  
  * `evidence/_acceptance/<TS>/...`  
* `bundle_audit.json.result` **必須**是 `PASS`  
  來源：SRC-CSK-SK08。

---

\[ANCHOR:OMOC-WP003-1400\]

## **14\) Gates（Entry/Exit Gate：引用 WP-002 locator；WP-003 自身門檻：GATE-EVIDENCE-MINSET 等）**

### **14.1 Entry Gate（引用式定位；已落地 P-WP003-007）**

* Gate：**GATE-ENV-READY**  
* **normative source**：WP-002 Gate 定義（可跳轉定位）  
  * locator：SRC-WP002-GATE-ENV-READY  
* 本 WP-003 的執行前提（Fail-Closed）：  
  * 若 WP-002 Gate 未 PASS：**禁止**開始 WP-003（不要浪費時間造假證據）

### **14.2 Exit Gate（對齊 Gate Registry；Fail-Closed）**

* Gate：**GATE-EVIDENCE-MINSET**  
* gate\_contract\_hash（必須對齊 A3）：  
  1. `823f569cc7d664fd8c55b39d8e0f84b1af2a8f2b8c0d9ffed4f3f0a6d8d92c85`  
  2. 來源：SRC-WPM-GATE-EVID-MINSET  
* PASS 條件（可機械判定）：  
  1. evidence\_minset 四件套存在（§10.1）  
  2. `bundle_audit.json.result == PASS`  
  3. quarantine 規則已處理（§8.3）  
  4. 禁敏掃描 PASS（§13.4）

---

\[ANCHOR:OMOC-WP003-1500\]

## **15\) Closure Matrix（Review Findings → 新版對應段落/驗收點/狀態）**

修補依據：`/mnt/data/OMOC_WP-003+RB+WI_審查報告.md`（D-REVIEW）

| finding\_id / patch\_id | review 摘要 | 修補落點（本文件） | 驗收點（可判） | status |
| ----- | ----- | ----- | ----- | ----- |
| P-WP003-001 | A3 必須改指 WP Master r2；禁止引用 A3 舊版 | §2.1 / §6.3（A3） | Doc Inventory 顯示 A3=WP總表 r2；Self-audit 不命中舊 A3 路徑 | PASS |
| P-WP003-002 | 每個 SRC-\* 增加 fallback locator（anchor+excerpt） | §6.3 | Sources Registry 每列有 primary+fallback | PASS |
| P-WP003-003 | BK-002 補最小驗收點 \+ 回滾條件 \+ 回復步驟 | §11 | 11.2/11.3/11.4 具備可判定條件與 restore 指令 | PASS |
| P-WP003-004 | WI：forbidden\_patterns/禁入清單落地；命中即 FAIL\_CLOSED | §13.4 | 掃描命中即退出（exit 2）；不得 TEMP 放行 | PASS |
| P-WP003-005 | quarantine 收斂為 1 條硬規則 \+ 1 TT 範例 | §8.3 | 非 TS 目錄 → quarantine；附 TT-QUARANTINE-001 | PASS |
| P-WP003-006 | Scope Guardrail：不得包含 rulesets/MQ 等 Phase-G UI 配置 | §3.2 | 明確禁止配置步驟；只允許觀察核對 | PASS |
| P-WP003-007 | Entry/Exit Gate：引用式 locator 指向 WP-002 Gate | §14.1 | SRC-WP002-GATE-ENV-READY 可跳轉/可定位 | PASS |
| R-FIND-INV-001 | 舊版缺 Doc Inventory / locator\_proof | §5 | Inventory \+ proof 完整（自檔 sha 待補 TT） | PASS（含 TT） |
| R-FIND-GATE-001 | 舊版 Gates 缺 WP-002 引用式跳轉 | §14 | Entry Gate 直接引用 WP-002 locator | PASS |

---

\[ANCHOR:OMOC-WP003-1600\]

## **16\) TT Register \+ 測試追蹤清單（含 closure\_rule、驗收腳本/手動驗收步驟、狀態 TEMP\_CLOSED）**

規則：本清單 **全部 TEMP\_CLOSED**（來源：SRC-A0-BP-1600）。  
本 WP 未發現任何 `CR_OPEN`；若未來出現，必須轉入 TT（見 16.3）。

### **16.1 TT Register（WP-003）**

| TT-ID | 標題 | 觸發/風險 | 狀態 | closure\_rule（怎樣算關） | 驗收步驟（最小） | 最小跡證 |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| TT-002 | WP-003 Master 狀態追蹤 | A3 指定 WP-003=TEMP\_CLOSED | TEMP\_CLOSED | WP-003 Exit Gate PASS 並回填 A3 狀態 | 通過 §14.2；更新 WP Master（若流程要求） | `bundle_audit.json` \+ `evidence_bundle.tgz` \+ logs |
| TT-WP003-INV-SELF-001 | 新版文件自檔 sha/lines/bytes 未固化 | 文件在聊天輸出不可直接計算 | TEMP\_CLOSED | 保存成檔後補上 sha/lines/bytes 並更新 Doc Inventory | `wc -l` / `stat` / `sha256sum` | 更新後的 Doc Inventory 截圖或 log |
| TT-WP003-TPL-SSOT-001 | step\_template 欄位未升格上游契約 | 欄位集合目前為 WP-003 規格 | TEMP\_CLOSED | 若要升格：在 A2/A3 定義欄位契約並引用 | 開 PR 更新 A2/A3；本 WP 更新 SRC | 更新後的上游段落 locator |
| TT-QUARANTINE-001 | 非 TS acceptance dir 隔離 | placeholder dir 破壞 pack/validator | TEMP\_CLOSED | move to quarantine \+ SK08 PASS | 跑 §8.3 \+ §12.4 | quarantine dir 列表 \+ SK08 logs |
| TT-BUNDLE-AUDIT-001 | bundle\_audit FAIL\_CLOSED 追蹤 | forbidden members / must\_include 缺失 | TEMP\_CLOSED | 移除違規後重跑 SK08 PASS | §13.4 → §12.4 | SK08-pack.log \+ SK08-tar-members.txt |

### **16.2 測試追蹤清單（對應本 WP 的可驗收項）**

* T-WP003-001：Entry Gate（WP-002 GATE-ENV-READY）核對 PASS  
* T-WP003-002：Evidence Tree 4 roots 建立 \+ 可寫（RBWI L1）  
* T-WP003-003：SK02 產生 root artifacts \+ JSON `jq -e` PASS  
* T-WP003-004：禁敏掃描 PASS（檔名 \+ tar members）  
* T-WP003-005：SK08 pack \+ `bundle_audit.result == PASS`  
* T-WP003-006：BK-002 snapshot \+ restore 演練（dry-run）  
* T-WP003-007：Exit Gate（GATE-EVIDENCE-MINSET \+ hash）PASS

### **16.3 CR\_OPEN 清零（本次結果）**

* 檢測命令（參考；Fail-Closed 思維）：

grep \-RIn "CR\_OPEN" . || true

* 本次 Inputs 範圍內：**未發現 CR\_OPEN**（0 筆）

---

\[ANCHOR:OMOC-WP003-1700\]

## **17\) Web Evidence Index（若有；本版：N/A）**

* 本版未引入任何 Web Evidence（保持 Files-first；避免用易變 UI 文案做規範性依據）  
* 若未來因平台行為變更必須補 web：請依《WEB POLICY》集中寫入本節，且每條至少 2 個高可信來源 \+ access\_date（Asia/Taipei）+ SUPPORT-only \+ POST\_BASELINE 開 TT。

---

\[ANCHOR:OMOC-WP003-1800\]

## **18\) Change Log（相對舊版的工程性變更摘要）**

* 新增：Doc Inventory（bytes/lines/sha256）+ locator\_proof（§5）  
* 修補：A3 指向 WP Master r2（§2/§6；符合 P-WP003-001）  
* 修補：Sources Registry 全列補 fallback locator \+ excerpt（§6；符合 P-WP003-002）  
* 強化：BK-002（驗收點/回滾條件/回復步驟）全量落地（§11；符合 P-WP003-003）  
* 強化：禁敏掃描硬規則（命中即 FAIL\_CLOSED）（§13.4；符合 P-WP003-004）  
* 收斂：Quarantine 規則為 1 條硬規則 \+ TT 範例（§8.3；符合 P-WP003-005）  
* 明確：Scope Guardrail（Phase-G UI 配置 OUT-OF-SCOPE）（§3；符合 P-WP003-006）  
* 對齊：Entry Gate 引用 WP-002 gate locator（§14.1；符合 P-WP003-007）  
* 新增：Closure Matrix \+ TT Register \+ Self-Audit Checklist（§15/§16/§19）

---

\[ANCHOR:OMOC-WP003-1900\]

## **19\) Self-Audit Checklist（硬性自檢）**

任一項未過：視為本文件/實作不合格（Fail-Closed 思維；至少開 TT）。

### **19.1 文件級（本 Markdown）**

* **A3 指向 r2**：Doc Inventory 與 Sources Registry 皆使用 `/mnt/data/OMOC_實作+WP總表_v4.0.1-r2.md`  
* **禁止引用 A3 舊版路徑**：全文不得命中 `OMOC_實作+WP總表_v4.0.1-r1.md`（檢測命令：`grep -RIn "OMOC_實作\\+WP總表_v4\\.0\\.1-r1\\.md" -n <this_file>`）  
* **SRC fallback 完整**：每個 SRC 有 primary \+ fallback(excerpt)  
* **Scope 無 Phase-G UI 配置步驟**：只允許觀察核對（§3.2）  
* **Gate 引用可定位**：Entry Gate 指向 WP-002 `#gate-env-ready`（§14.1）  
* **BK-002 可驗收與回滾**：含 PASS/FAIL 判準、回復步驟（§11）

### **19.2 實作級（repo 內）**

* evidence roots 存在可寫：`evidence/_templates/_acceptance/_audit/_backup`  
* JSON 全部 `jq -e` PASS：`verdict.json` / `checks_manifest.json` / `bundle_audit.json`  
* 禁敏掃描 PASS：檔名 \+ tar members 均無 forbidden\_patterns  
* `bundle_audit.result == PASS`  
* `evidence_bundle.tgz` must\_include 完整（四件套 \+ bundle\_audit \+ acceptance prefix）  
* BK-002 snapshot 可 restore；restore 後重跑 pack/audit 仍 PASS

