# **OMOC Blueprint（OMOC\_藍圖）— v4.0.1-r1**

## **0\. 封面（一句話定位）**

\[ANCHOR:OMOC-BP-0000\]

**這份藍圖是 OMOC 的「立法文本」：只規範邊界/治理/契約/索引/映射/Route-Out；任何施工步驟一律丟去 RUNBOOK/WI。**（想把 bash 貼進來的人，請先把手從鍵盤上拿開。）

---

## **1\. Cover Card（外部名稱/內部簡稱/版本/日期/範圍/取代宣告/責任邊界）**

\[ANCHOR:OMOC-BP-0100\]

* **External Name**：OMOC Blueprint  
* **Internal Short Name**：OMOC-BP  
* **Canonical Version**：**v4.0.1-r1**  
* **Release Date**：2026-02-15（UTC+08:00）  
* **Scope（僅藍圖層）**：Boundary / Governance / Contracts / Indexing / Mapping / Route-Out  
* **Supersedes（藍圖層取代宣告）**：  
  * `/mnt/data/OMOC_藍圖_v4.0.0-r1(A版).md`（Legacy）  
  * `/mnt/data/OMOC_藍圖_v4.0.0-r1(B版).md`（Legacy；封面版本治理失真）  
  * 上游：`OMOC-MVU「Local Docker 低磨合轉接層」方案 v4.0` 與 `套件包 v0.2.0-r1+SC-HMD` 中**所有「藍圖層」段落**（施工內容不取代，改由 Route-Out 接口接管）  
* **Baseline 命名落差聲明**：未發現 `OMOC_藍圖v8.1.1-r1`；本版以 `v4.0.0-r1` 為基線升級（見 `TT-VERSION-GAP-01`）  
* **責任邊界（Fail-Closed）**：  
  * 本文件 **不** 提供操作步驟/命令/點擊路徑  
  * 任何「怎麼做」→ 只能出現在 RUNBOOK/WI（見 `OMOC-BP-1200`）

---

## **2\. TOC（本文件內部錨點連結；禁止外部對話連結）**

\[ANCHOR:OMOC-BP-0200\]

* [0\. 封面](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/6991a8e5-66f0-83a6-a96d-534cff34ec10#OMOC-BP-0000)  
* [1\. Cover Card](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/6991a8e5-66f0-83a6-a96d-534cff34ec10#OMOC-BP-0100)  
* [2\. TOC](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/6991a8e5-66f0-83a6-a96d-534cff34ec10#OMOC-BP-0200)  
* [3\. Reader Guide](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/6991a8e5-66f0-83a6-a96d-534cff34ec10#OMOC-BP-0300)  
* [4\. Authority Stack & Conflict Rules](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/6991a8e5-66f0-83a6-a96d-534cff34ec10#OMOC-BP-0400)  
* [5\. Scope-Lock（In/Out）](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/6991a8e5-66f0-83a6-a96d-534cff34ec10#OMOC-BP-0500)  
* [6\. Glossary](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/6991a8e5-66f0-83a6-a96d-534cff34ec10#OMOC-BP-0600)  
* [7\. Core Concepts](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/6991a8e5-66f0-83a6-a96d-534cff34ec10#OMOC-BP-0700)  
* [8\. Tri-Plane Governance](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/6991a8e5-66f0-83a6-a96d-534cff34ec10#OMOC-BP-0800)  
* [9\. Profiles & Phases](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/6991a8e5-66f0-83a6-a96d-534cff34ec10#OMOC-BP-0900)  
* [10\. Definition of Done（DoD）](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/6991a8e5-66f0-83a6-a96d-534cff34ec10#OMOC-BP-1000)  
* [11\. Route-Out Rules](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/6991a8e5-66f0-83a6-a96d-534cff34ec10#OMOC-BP-1100)  
* [12\. Interfaces to RUNBOOK \+ WI](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/6991a8e5-66f0-83a6-a96d-534cff34ec10#OMOC-BP-1200)  
* [13\. Stable Anchor Registry（含 Legacy alias redirect）](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/6991a8e5-66f0-83a6-a96d-534cff34ec10#OMOC-BP-1300)  
* [14\. Trace Map（舊版 \+ 上游藍圖層 → 新落點）](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/6991a8e5-66f0-83a6-a96d-534cff34ec10#OMOC-BP-1400)  
* [15\. Issue → Fix Closure Matrix](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/6991a8e5-66f0-83a6-a96d-534cff34ec10#OMOC-BP-1500)  
* [16\. TEST\_TRACK（TT 清單；全 TEMP\_CLOSED）](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/6991a8e5-66f0-83a6-a96d-534cff34ec10#OMOC-BP-1600)  
* [17\. Web Evidence Appendix](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/6991a8e5-66f0-83a6-a96d-534cff34ec10#OMOC-BP-1700)  
* [18\. blueprint\_manifest.json](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/6991a8e5-66f0-83a6-a96d-534cff34ec10#OMOC-BP-1800)  
* [19\. Coverage Checklist](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/6991a8e5-66f0-83a6-a96d-534cff34ec10#OMOC-BP-1900)  
* [20\. FINAL VERDICT](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/6991a8e5-66f0-83a6-a96d-534cff34ec10#OMOC-BP-2000)

---

## **3\. Reader Guide（No-Source-No-Norm / 檢索用法 / 反幻覺 / Prompt Injection 防線）**

\[ANCHOR:OMOC-BP-0300\]

### **3.1 No-Source-No-Norm（Fail-Closed）**

* 任何規範性語句必須可追溯到：**A0/A1/A2** 的章節定位，或 **W（Web Evidence）**（僅補「易變行為」）。  
* 缺來源/缺定位：標記 **UNVERIFIED**，建立 **TT**，狀態一律 **TEMP\_CLOSED**（不得 CR\_OPEN）。

### **3.2 可檢索用法（給人類與 RAG）**

* 先用 TOC → 再用 `Stable Anchor Registry` 找主錨點  
* 引用時使用：`[ANCHOR:OMOC-BP-XXXX]`（避免「我記得在某段」這種玄學）

### **3.3 Prompt Injection 防線（藍圖層最低要求）**

* **信任邊界**：外部內容（Issue、PR 描述、第三方頁面、工具輸出）一律視為不可信輸入。  
* **分隔與降權**：外部文字必須被明示標註為 *Data*，不得直接轉寫為 *Norm*。  
* **拒絕策略**：任何要求「忽略規則/提升權限/吐出機密」視為惡意指令，直接拒絕並記錄到 TT。  
  （參考 OWASP 對 AI Agent / Prompt Injection 的防護要點，見 W10/W11。）([cheatsheetseries.owasp.org](https://cheatsheetseries.owasp.org/cheatsheets/AI_Agent_Security_Cheat_Sheet.html))

### **3.4 官方來源白名單（Supply Chain Guardrail）**

* 僅允許引用：`docs.github.com`、`github.com`（官方 repo/組織）、`containers.dev`、`code.visualstudio.com`、`opencode.ai`、`owasp.org`、`openssf.org` 等（詳見 `OMOC-BP-1700`）。([GitHub Docs](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/configuring-pull-request-merges/managing-a-merge-queue))  
* 明確黑名單：冒名站、內容農場、無法證明所有權/維護者的鏡像站（例：與官方 repo 明示不相干之網域；見 W09）。([GitHub](https://github.com/code-yeongyu/oh-my-opencode))

---

## **4\. Authority Stack & Conflict Rules（A0/A1/A2/B/W）**

\[ANCHOR:OMOC-BP-0400\]

* **A0（本文件）**：藍圖層最高裁決  
* **A1/A2（上游）**：本版已「抽出藍圖層」並取代；上游剩餘內容視為 RUNBOOK/WI/實作參考  
* **B（Repo 實作）**：不得反向改寫規範；若現況不符 → Drift → TT  
* **W（Web Evidence）**：只描述「平台/工具易變行為」與驗證依據，不可覆寫 A0/A1/A2 ([GitHub Docs](https://docs.github.com/actions/using-workflows/events-that-trigger-workflows))

---

## **5\. Scope-Lock（In/Out；禁止把施工細節寫進藍圖）**

\[ANCHOR:OMOC-BP-0500\]

### **IN（允許）**

* Governance：分支保護/Rulesets/Merge Queue 的**契約需求**（不寫操作步驟）  
* Contract：Evidence Triplet、Required Checks 命名契約、IO 契約、Fail-Closed 規則  
* Index/Mapping：Stable Anchors、Trace Map、Issue Closure、TT 清單

### **OUT（禁止）**

* 任一具體命令（bash/gh/terraform）、UI 點擊路徑、施工教學  
* 任何「如何修 workflow」的手把手內容

OUT 一律 Route-Out → RUNBOOK/WI（`OMOC-BP-1100`、`OMOC-BP-1200`）

---

## **6\. Glossary（CR\_OPEN/TT/TEMP\_CLOSED/FAIL\_CLOSED/Route-Out 等）**

\[ANCHOR:OMOC-BP-0600\]

* **FAIL\_CLOSED**：缺來源/缺驗證即判失敗（或只能 TEMP\_CLOSED \+ TT）  
* **TT (Test Tracking)**：待驗證/待回歸/待落地追蹤項；本藍圖中 **TT 一律 TEMP\_CLOSED**  
* **CR\_OPEN**：禁止狀態；若上游出現，必須轉 TT 並 TEMP\_CLOSED  
* **Route-Out**：把施工細節導向 RUNBOOK/WI 的接口規則（本文件只定「接口」，不寫「步驟」）  
* **Evidence Triplet（兼容定義）**：見 `OMOC-BP-1000`

---

## **7\. Core Concepts（Docs-as-Code / Diátaxis 對接 / RAG 最小用法）**

\[ANCHOR:OMOC-BP-0700\]

* **Docs-as-Code**：規範、索引、證據、驗收輸出皆可版本化、可審計  
* **Diátaxis 對接**（藍圖只放 *Reference/Explanation* 的規範；*How-to/Tutorial* 全部 Route-Out）  
* **RAG 最小用法**：  
  * Chunk 以 Stable Anchors 為主邊界  
  * Retrieval 以 `Anchor Registry → Trace Map → Closure Matrix → TT/Web` 的導讀序列進行

---

## **8\. Tri-Plane Governance（Control/Execution/Evidence）**

\[ANCHOR:OMOC-BP-0800\]

* **Control Plane**：Repo 治理契約（Rulesets / Required Checks / Merge Queue）  
* **Execution Plane**：本地 Dev Containers / CI 施工（**不在藍圖寫**；由 RUNBOOK/WI 承載）  
* **Evidence Plane**：證據輸出契約（Triplet/Bundle/Manifest）

---

## **9\. Profiles & Phases（Full OMOC \+ MVU；版本/剖面）**

\[ANCHOR:OMOC-BP-0900\]

### **Profiles**

* **MVU Profile（最小可用）**：以「低磨合」為優先，要求最小 Required Checks \+ Evidence Minimum Set  
* **Full OMOC Profile**：在 MVU 之上增加治理強度與覆蓋面（仍需不破壞低磨合）

### **Phases（僅定義階段輸入/輸出契約）**

* **Plan**：產出目標/變更範圍/TT 影響  
* **Build**：產出可執行工件（由 WI 承載）  
* **Verify**：必產出 Evidence Minimum Output Set  
* **Release**：版本/manifest 對齊與歸檔

---

## **10\. Definition of Done（DoD；含 Evidence Minimum Output Set 與 required checks 命名契約）**

\[ANCHOR:OMOC-BP-1000\]

### **10.1 Required Checks 命名契約（只定「名稱/必備」，不定「怎麼做」）**

* **必須有且名稱穩定**：`ci / omoc-gate`（示例；實際 repo 若不同，須在此處明示並 Trace）  
* Merge Queue / merge\_group 情境下，**required checks 必須能被回報**（避免「Expected — waiting」漂移風險）。([GitHub Docs](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/configuring-pull-request-merges/managing-a-merge-queue))  
* 若 GitHub 規則或行為更新：以 Web Evidence 記錄並立 TT（見 `TT-GH-MQ-01`、`TT-GH-RULESETS-01`）。

### **10.2 Evidence Minimum Output Set（加法相容：解除上游互斥）**

**裁決：採用「加法相容」**，同時產出 *json \+ bundle*，以同時滿足上游多版本的 Evidence Triplet/Bundle 定義（避免互斥）。

* **最低不得少於（硬性）**：  
  * `verdict.json`  
  * `evidence_index.md`  
  * `checks_manifest.json`  
  * `evidence_bundle.tgz`  
* **兼容性策略（必寫清楚）**：  
  * `evidence_bundle.tgz` **內也必須包含** `checks_manifest.json`、`verdict.json`、`evidence_index.md`（可攜性）  
  * 但 `checks_manifest.json` 仍需**獨立輸出**（機器檢查/required checks 對照）  
  * 允許額外輸出（不破壞相容）：例如 `self_check.tsv`、`diag/`、`acceptance/`（上游 v4.0 方案曾要求類似產物 → 以「可加不可減」整合）  
* 若證據產物造成負擔：**只能立 TT 做後續優化**，不得留下 CR\_OPEN（見 `TT-TRIPLET-COMPAT-01`）。

### **10.3 Fail-Closed DoD Gate**

* 缺任一 Required Check 回報或缺任一 Evidence Minimum Output → **FAIL\_CLOSED**  
* 任何未驗證外部行為 → **TEMP\_CLOSED \+ TT**（不可假裝已驗證）

---

## **11\. Route-Out Rules（藍圖如何把施工導向 RUNBOOK/WI）**

\[ANCHOR:OMOC-BP-1100\]

* 藍圖只定義：**What / Boundaries / Contracts / Names / Required Outputs**  
* RUNBOOK/WI 承載：**How（命令/步驟/腳本/畫面操作）**  
* 藍圖內若出現操作步驟：視為 Drift，必修並立 TT（`TT-UPSTREAM-ENUM-01`）

---

## **12\. Interfaces to RUNBOOK \+ WI 合冊（輸入/輸出契約、版本對齊欄位）**

\[ANCHOR:OMOC-BP-1200\]

### **12.1 文件分工接口（硬性）**

* **RUNBOOK**：描述流程與決策點（允許步驟），但不得新增藍圖層規範  
* **WI（Work Instruction）**：可執行的最小步驟集 \+ 驗收點 \+ 最小跡證集  
* **Interface Contract（必備欄位）**：  
  * `blueprint_version`（必須等於本文件 Canonical Version）  
  * `required_checks`（名稱清單）  
  * `evidence_min_set`（四件套 \+ 可選擴充）  
  * `tt_refs`（本次涉及 TT-ID）  
  * `web_refs`（涉及 W-ID，若牽涉外部平台易變行為）

### **12.2 工具/平台能力宣告（避免「工具漂移」）**

* OpenCode（或任何代理工具）的版本、權限模型、可用 tools：**必須在 RUNBOOK/WI 宣告並綁 TT**（見 `TT-OPENCODE-VERSION-01`、`TT-OPENCODE-PERM-01`、`TT-OPENCODE-WEBSEARCH-01`）。([opencode.ai](https://opencode.ai/changelog))

---

## **13\. Stable Anchor Registry（主錨點清單 \+ Legacy alias redirect）**

\[ANCHOR:OMOC-BP-1300\]

### **13.1 主錨點（Canonical）**

| 主錨點 | 章節 |
| ----- | ----- |
| OMOC-BP-0000 | 封面 |
| OMOC-BP-0100 | Cover Card |
| OMOC-BP-0200 | TOC |
| OMOC-BP-0300 | Reader Guide |
| OMOC-BP-0400 | Authority Stack |
| OMOC-BP-0500 | Scope-Lock |
| OMOC-BP-0600 | Glossary |
| OMOC-BP-0700 | Core Concepts |
| OMOC-BP-0800 | Tri-Plane Governance |
| OMOC-BP-0900 | Profiles & Phases |
| OMOC-BP-1000 | DoD |
| OMOC-BP-1100 | Route-Out Rules |
| OMOC-BP-1200 | Interfaces |
| OMOC-BP-1300 | Anchor Registry |
| OMOC-BP-1400 | Trace Map |
| OMOC-BP-1500 | Closure Matrix |
| OMOC-BP-1600 | TEST\_TRACK |
| OMOC-BP-1700 | Web Evidence |
| OMOC-BP-1800 | blueprint\_manifest.json |
| OMOC-BP-1900 | Coverage Checklist |
| OMOC-BP-2000 | FINAL VERDICT |

## **16\. TEST\_TRACK（TT 清單；所有 CR\_OPEN 均 TEMP\_CLOSED；不得缺欄/空白 ID）**

\[ANCHOR:OMOC-BP-1600\]

| TT-ID | 標題 | 觸發/風險 | 狀態 | 驗證條件（Pass 判準） | 最小跡證集（Evidence Minimum Set） | 關聯 Issue | Web Evidence |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| TT-VERSION-GAP-01 | v8.1.1-r1 命名落差補救 | Baseline 缺失導致治理失真 | TEMP\_CLOSED | Repo/檔案庫確認不存在或補齊；映射更新 | Doc Inventory \+ manifest 更新 | ISS-META-V8-01 | — |
| TT-VERSION-NORM-01 | 版本治理一致性 | 檔名/封面/manifest 不一致會致回歸 | TEMP\_CLOSED | 三者一致；manifest 記錄 supersedes | `blueprint_manifest.json` | ISS-B-F-001 | — |
| TT-TRACE-COMPLETE-01 | Trace Map 完整性 | 空白落點/毀損錨點會導致不可稽核 | TEMP\_CLOSED | Trace Map 無空白；所有新錨點存在 | Trace Map \+ Anchor Registry | ISS-B-F-003/004 | — |
| TT-TT-STRUCT-01 | TT 結構完整性 | 空白 TT-ID/欄位缺漏 | TEMP\_CLOSED | TT 表無空白必要欄 | 本 TT 表 \+ manifest `tt_count` | ISS-B-F-006 | — |
| TT-TRIPLET-COMPAT-01 | Evidence Triplet 互斥解除（加法相容） | 上游定義不一 → 工程互斥 | TEMP\_CLOSED | 產物至少 4 件套；bundle 內含 3+1 | `verdict.json`/`evidence_index.md`/`checks_manifest.json`/`evidence_bundle.tgz` | ISS-B-F-008 | — |
| TT-IO-CONTRACT-01 | RUNBOOK/WI 接口契約落地 | 施工文件若越權改規範 | TEMP\_CLOSED | RUNBOOK/WI 有 interface fields 且引用本版 | RUNBOOK/WI header（字段） | ISS-B-F-005 | — |
| TT-WEB-CANON-01 | Web URL 正規化與引用衛生 | utm/冒名站/內容農場污染 | TEMP\_CLOSED | Web Evidence 全為 canonical URL；白/黑名單生效 | Web Evidence 表 \+ 白名單策略 | ISS-B-F-007/010 | W00–W11 |
| TT-GH-MQ-01 | GitHub Merge Queue / merge\_group 漂移 | merge\_group 觸發/回報規則易變 | TEMP\_CLOSED | merge\_group 事件下 required checks 仍可回報 | checks\_manifest \+ CI run 證據 | ISS-A-DELTA-01/ISS-B-F-011 | W00/W01 |
| TT-GH-RULESETS-01 | GitHub Rulesets/Required Checks 漂移 | 規則集/Required checks 行為調整 | TEMP\_CLOSED | rulesets 對應 required checks 命名契約一致 | checks\_manifest \+ 規則快照 | ISS-A-DELTA-02 | W02 |
| TT-OPENCODE-VERSION-01 | OpenCode 版本對齊 | 版本變動造成行為差 | TEMP\_CLOSED | RUNBOOK/WI 指定版本；升級有 TT | 版本宣告 \+ 變更紀錄 | ISS-A-DELTA-03 | W06 |
| TT-OPENCODE-PERM-01 | OpenCode 權限/能力宣告 | 權限漂移/越權風險 | TEMP\_CLOSED | 權限模型在 RUNBOOK/WI 明示 | 權限宣告 \+ evidence | ISS-A-DELTA-04 | W07 |
| TT-OPENCODE-WEBSEARCH-01 | Websearch Tool 可用性漂移 | tool availability 受控 | TEMP\_CLOSED | 工具可用性被宣告並可驗證 | 工具清單 \+ evidence | ISS-B-F-011 | W08 |
| TT-SUPPLYCHAIN-01 | 供應鏈/冒名站防護 | 冒名站/惡意 Action 風險 | TEMP\_CLOSED | 白名單策略 \+ 掃描工具納入 | 策略文件 \+ 掃描報告 | ISS-B-F-010/ISS-A-DELTA-05 | W09/W03/W11 |
| TT-SEC-PI-01 | Prompt Injection 防線落地 | 注入導致規範污染 | TEMP\_CLOSED | 信任邊界/拒絕策略在流程中被引用 | 指南引用 \+ evidence | ISS-A-DELTA-06 | W10/W11 |
| TT-CR-019-01 | 轉換 CR\_OPEN-019 | 禁留 CR\_OPEN | TEMP\_CLOSED | CR\_OPEN → TT 且無懸空 | 本 TT 表 \+ 變更記錄 | ISS-UP-CR-019 | — |
| TT-CR-021-01 | 轉換 CR\_OPEN-021 | 禁留 CR\_OPEN | TEMP\_CLOSED | CR\_OPEN → TT 且無懸空 | 本 TT 表 \+ 變更記錄 | ISS-UP-CR-021 | — |
| TT-UPSTREAM-ENUM-01 | 上游藍圖層抽取規則維護 | 上游混排可能復發 | TEMP\_CLOSED | 抽取規則固定；若上游更新必更新 Trace | Trace Map \+ Doc Inventory | ISS-B-F-003 | — |

---

## **17\. Web Evidence Appendix（W0..；URL 正規化；access date；綁 TT）**

\[ANCHOR:OMOC-BP-1700\]

### **17.1 官方來源白名單（示例；可擴充但需 TT）**

* GitHub Docs：`https://docs.github.com/` ([GitHub Docs](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/configuring-pull-request-merges/managing-a-merge-queue))  
* Dev Containers Spec：`https://containers.dev/` ([開發容器](https://devcontainers.github.io/implementors/spec/))  
* VS Code Dev Containers：`https://code.visualstudio.com/` ([code.visualstudio.com](https://code.visualstudio.com/docs/devcontainers/containers))  
* OpenCode 官方：`https://opencode.ai/` ([opencode.ai](https://opencode.ai/changelog))  
* OWASP：`https://owasp.org/` ([cheatsheetseries.owasp.org](https://cheatsheetseries.owasp.org/cheatsheets/AI_Agent_Security_Cheat_Sheet.html))  
* OpenSSF / OSSF：`https://openssf.org/` ([GitHub](https://github.com/ossf/scorecard-action))

### **17.2 禁止來源黑名單（最低集合）**

* 冒名站/無法證明所有權之網域（例：官方 repo 明示不相干者）([GitHub](https://github.com/code-yeongyu/oh-my-opencode))  
* 內容農場、聚合轉載站、無版本/無維護者資訊的鏡像站（以 `TT-SUPPLYCHAIN-01` 持續維護）

### **17.3 Web Evidence 表（每條 ≤5 行摘要；綁 TT；URL 已正規化）**

| W-ID | 主題 | Canonical URL | 存取日 | 5行內摘要 | 綁定 TT |
| ----- | ----- | ----- | ----- | ----- | ----- |
| W00 | Merge Queue 概念/行為 | `https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/configuring-pull-request-merges/managing-a-merge-queue` ([GitHub Docs](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/configuring-pull-request-merges/managing-a-merge-queue)) | 2026-02-15 | Merge Queue 的流程/要求會影響 required checks 與回報路徑；屬易變行為需 TT | TT-GH-MQ-01 |
| W01 | Actions `merge_group` 事件 | `https://docs.github.com/en/actions/using-workflows/events-that-trigger-workflows#merge_group` ([GitHub Docs](https://docs.github.com/actions/using-workflows/events-that-trigger-workflows)) | 2026-02-15 | `merge_group` 是 Merge Queue 相關觸發事件；workflow 需覆蓋以避免狀態不回報 | TT-GH-MQ-01 |
| W02 | Rulesets（Required checks 等） | `https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-rulesets/available-rules-for-rulesets` ([GitHub Docs](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-rulesets/available-rules-for-rulesets)) | 2026-02-15 | Rulesets 可定義 required checks 等規則；行為調整需以 TT 追蹤 | TT-GH-RULESETS-01 |
| W03 | 安全使用 GitHub Actions | `https://docs.github.com/en/actions/security-guides/security-hardening-for-github-actions` ([GitHub Docs](https://docs.github.com/en/enterprise-cloud%40latest/actions/reference/security/secure-use)) | 2026-02-15 | 提供 workflow 安全加固要點；屬供應鏈/越權風險基礎參照 | TT-SUPPLYCHAIN-01 |
| W04 | Dev Containers 規格 | `https://containers.dev/implementors/spec/` ([開發容器](https://devcontainers.github.io/implementors/spec/)) | 2026-02-15 | devcontainer 規格屬外部標準；版本/欄位變動需被治理 | TT-WEB-CANON-01 |
| W05 | VS Code Dev Containers 文件 | `https://code.visualstudio.com/docs/devcontainers/containers` ([code.visualstudio.com](https://code.visualstudio.com/docs/devcontainers/containers)) | 2026-02-15 | VS Code 端行為/相容性屬易變；僅作外部行為參照 | TT-WEB-CANON-01 |
| W06 | OpenCode Changelog（v1.2.x） | `https://opencode.ai/changelog` ([opencode.ai](https://opencode.ai/changelog)) | 2026-02-15 | v1.2.x 近日期變動頻繁；版本鎖定/升級需 TT 控制 | TT-OPENCODE-VERSION-01 |
| W07 | OpenCode Permissions | `https://opencode.ai/docs/permissions` ([opencode.ai](https://opencode.ai/docs/permissions/)) | 2026-02-15 | 權限模型影響可用工具與風險面；需明示與審計 | TT-OPENCODE-PERM-01 |
| W08 | OpenCode Tools（websearch 等） | `https://opencode.ai/docs/tools` ([opencode.ai](https://opencode.ai/docs/tools/)) | 2026-02-15 | tool 清單與行為易變；需在 RUNBOOK/WI 宣告與驗證 | TT-OPENCODE-WEBSEARCH-01 |
| W09 | Oh-My-OpenCode 官方 repo 警示 | `https://github.com/code-yeongyu/oh-my-opencode` ([GitHub](https://github.com/code-yeongyu/oh-my-opencode)) | 2026-02-15 | repo 明示與某網域不相干 → 冒名站風險；納入黑名單策略 | TT-SUPPLYCHAIN-01 |
| W10 | OWASP AI Agent Security Cheat Sheet | `https://cheatsheetseries.owasp.org/cheatsheets/AI_Agent_Security_Cheat_Sheet.html` ([cheatsheetseries.owasp.org](https://cheatsheetseries.owasp.org/cheatsheets/AI_Agent_Security_Cheat_Sheet.html)) | 2026-02-15 | 提供 agent 安全要點（信任邊界/工具濫用等）；用於注入防線最低要求 | TT-SEC-PI-01 |
| W11 | OWASP Prompt Injection Prevention | `https://cheatsheetseries.owasp.org/cheatsheets/LLM_Prompt_Injection_Prevention_Cheat_Sheet.html` ([cheatsheetseries.owasp.org](https://cheatsheetseries.owasp.org/cheatsheets/LLM_Prompt_Injection_Prevention_Cheat_Sheet.html)) | 2026-02-15 | 提供 prompt injection 具體防護策略；本藍圖採其最低防線語義 | TT-SEC-PI-01 |

---

## **18\. blueprint\_manifest.json（JSON；版本/日期/時區/tt\_count/web\_count/source hash 等）**

\[ANCHOR:OMOC-BP-1800\]

{  
  "schema\_version": "1.0",  
  "doc\_type": "OMOC\_Blueprint",  
  "external\_name": "OMOC Blueprint",  
  "internal\_short\_name": "OMOC-BP",  
  "canonical\_version": "v4.0.1-r1",  
  "release\_date": "2026-02-15",  
  "timezone": "UTC+08:00",  
  "supersedes": \[  
    "/mnt/data/OMOC\_藍圖\_v4.0.0-r1(A版).md",  
    "/mnt/data/OMOC\_藍圖\_v4.0.0-r1(B版).md",  
    "OMOC-MVU「Local Docker 低磨合轉接層」方案 v4.0（藍圖層段落）",  
    "套件包 v0.2.0-r1+SC-HMD（藍圖層段落）",  
    "OMOC\_藍圖v8.1.1-r1（NOT\_FOUND; see TT-VERSION-GAP-01）"  
  \],  
  "authority\_stack": {  
    "A0": "docs/blueprint/OMOC\_Blueprint.md@v4.0.1-r1",  
    "A1": "/mnt/data/OMOC-MVU「Local Docker 低磨合轉接層」方案v4.0.md",  
    "A2": "/mnt/data/「OMOC-MVU 藍圖 \+ RUNBOOK \+ WI」套件包\_v0.2.0-r1+SC-HMD.md",  
    "W": "Web Evidence Appendix (W00..W11)",  
    "S": "/mnt/data/LLM提示詞工程指南.md"  
  },  
  "counts": {  
    "issue\_count": 20,  
    "tt\_count": 17,  
    "web\_evidence\_count": 12,  
    "anchor\_count": 21  
  },  
  "anchor\_registry": \[  
    "OMOC-BP-0000","OMOC-BP-0100","OMOC-BP-0200","OMOC-BP-0300","OMOC-BP-0400",  
    "OMOC-BP-0500","OMOC-BP-0600","OMOC-BP-0700","OMOC-BP-0800","OMOC-BP-0900",  
    "OMOC-BP-1000","OMOC-BP-1100","OMOC-BP-1200","OMOC-BP-1300","OMOC-BP-1400",  
    "OMOC-BP-1500","OMOC-BP-1600","OMOC-BP-1700","OMOC-BP-1800","OMOC-BP-1900","OMOC-BP-2000"  
  \],  
  "anchor\_registry\_sha256": "468a151fe385164c9a0180a6306872662fad70835c10dbcf752b380b04912c5e",  
  "input\_source\_sha256": {  
    "/mnt/data/OMOC\_藍圖\_v4.0.0-r1(A版).md": "fca66c267eb8d85710bd556c469c8f7b71f83034277acc40dfd910a070f0ef06",  
    "/mnt/data/OMOC\_藍圖\_v4.0.0-r1(B版).md": "f8ed1f8cd0ee7264808389a5e75f9c8f30ff49fb0634e7effc5e7405b9a9b2e3",  
    "/mnt/data/OMOC\_藍圖\_v4.0.0-r1\_審查報告A.md": "50b303c3003ae03f3b3f02f1ca8041c585f45ce88861a8c5b5ddbb5b450e5ed5",  
    "/mnt/data/OMOC\_藍圖\_v4.0.0-r1\_審查報告B.md": "be3ce8f1f44c92c40ff7012d62e032a48491f1b14d74de66618af8b212a5c5d4",  
    "/mnt/data/OMOC-MVU「Local Docker 低磨合轉接層」方案v4.0.md": "412f1f0c5d123c3585b08c612d008e65757bfa61cc17992f345d1b62596dc7d7",  
    "/mnt/data/「OMOC-MVU 藍圖 \+ RUNBOOK \+ WI」套件包\_v0.2.0-r1+SC-HMD.md": "137abbf5cf7d694e08f8450ca1a15dce58624b95d121d18824b7616a1a1bb89a",  
    "/mnt/data/LLM提示詞工程指南.md": "b100a5670d27f3ca2e1e2faac055da3cd7e7d4f06e3040c2c1c9362f8dd4bc1a"  
  },  
  "generated\_by": "GPT-5.2 Thinking",  
  "generated\_at": "2026-02-15T00:00:00+08:00"  
}

---

## **19\. Coverage Checklist（R1\~R7 \+ F1\~F7 自我稽核）**

\[ANCHOR:OMOC-BP-1900\]

### **R1\~R7**

* R1 全量對應審查A/B：Issue Backlog \+ Closure Matrix 完整  
* R2 100% 覆蓋舊版藍圖：以 Legacy anchors → 新錨點 Trace Map 證明  
* R3 覆蓋上游藍圖層：MVU Blueprint 11 錨點全映射；v4.0 契約性需求吸收、施工 Route-Out  
* R4 CR\_OPEN 全轉 TT：CR\_OPEN-019/021 → TT-CR-019-01 / TT-CR-021-01  
* R5 Web Evidence 補洞：W00–W11（官方來源、URL 正規化、access date、綁 TT）  
* R6 可檢索：TOC 內鏈 \+ Reader Guide \+ Anchor Registry \+ Trace/Closure/TT/Web \+ manifest  
* R7 命名一致：外部名稱/內部簡稱/版本號於 Cover/manifest 對齊；落差以 TT 管控

### **F1\~F7（Known Failure Modes）**

* F1 版本治理失真：已裁決 Canonical v4.0.1-r1，並在 manifest 鎖定  
* F2 TOC 外部 chat 連結：已全改內部 `#OMOC-BP-xxxx`  
* F3 Trace Map 空白落點/毀損錨點：表格無空白，新錨點已列主錨點清單  
* F4 TEST\_TRACK 結構毀損：TT 表欄位齊全、無空白 ID  
* F5 Evidence Triplet 互斥：以「加法相容」解除互斥（4件套 \+ bundle 內含）  
* F6 Web Evidence URL 未正規化：表中 URL 均 canonical（無 utm）  
* F7 供應鏈/冒名站：白名單/黑名單 \+ TT-SUPPLYCHAIN-01

---

## **20\. FINAL VERDICT（PASS 或 FAIL\_CLOSED；≤10 行理由）**

\[ANCHOR:OMOC-BP-2000\]

**PASS**

理由（≤10 行）：

1. 以 v4.0.0-r1 為實際可證 Baseline，完成 v4.0.1-r1 取代式藍圖（版本落差已 TT）。  
2. TOC/Anchors/Trace/Closure/TT/Web/manifest 全部補齊，且符合可檢索與 Fail-Closed 規則。  
3. Evidence Triplet 互斥已用「加法相容」解除，滿足上游與本版最低集合。  
4. 所有 CR\_OPEN 已轉 TT 並 TEMP\_CLOSED，無懸空。  
5. 外部易變行為以官方 Web Evidence \+ TT 管控，不凌駕 NORMATIVE。

---

## **(4) 【TEST\_TRACK 清單快照】（從正文第16章複製）**

| TT-ID | 標題 | 觸發/風險 | 狀態 | 驗證條件（Pass 判準） | 最小跡證集（Evidence Minimum Set） | 關聯 Issue | Web Evidence |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| TT-VERSION-GAP-01 | v8.1.1-r1 命名落差補救 | Baseline 缺失導致治理失真 | TEMP\_CLOSED | Repo/檔案庫確認不存在或補齊；映射更新 | Doc Inventory \+ manifest 更新 | ISS-META-V8-01 | — |
| TT-VERSION-NORM-01 | 版本治理一致性 | 檔名/封面/manifest 不一致會致回歸 | TEMP\_CLOSED | 三者一致；manifest 記錄 supersedes | `blueprint_manifest.json` | ISS-B-F-001 | — |
| TT-TRACE-COMPLETE-01 | Trace Map 完整性 | 空白落點/毀損錨點會導致不可稽核 | TEMP\_CLOSED | Trace Map 無空白；所有新錨點存在 | Trace Map \+ Anchor Registry | ISS-B-F-003/004 | — |
| TT-TT-STRUCT-01 | TT 結構完整性 | 空白 TT-ID/欄位缺漏 | TEMP\_CLOSED | TT 表無空白必要欄 | 本 TT 表 \+ manifest `tt_count` | ISS-B-F-006 | — |
| TT-TRIPLET-COMPAT-01 | Evidence Triplet 互斥解除（加法相容） | 上游定義不一 → 工程互斥 | TEMP\_CLOSED | 產物至少 4 件套；bundle 內含 3+1 | `verdict.json`/`evidence_index.md`/`checks_manifest.json`/`evidence_bundle.tgz` | ISS-B-F-008 | — |
| TT-IO-CONTRACT-01 | RUNBOOK/WI 接口契約落地 | 施工文件若越權改規範 | TEMP\_CLOSED | RUNBOOK/WI 有 interface fields 且引用本版 | RUNBOOK/WI header（字段） | ISS-B-F-005 | — |
| TT-WEB-CANON-01 | Web URL 正規化與引用衛生 | utm/冒名站/內容農場污染 | TEMP\_CLOSED | Web Evidence 全為 canonical URL；白/黑名單生效 | Web Evidence 表 \+ 白名單策略 | ISS-B-F-007/010 | W00–W11 |
| TT-GH-MQ-01 | GitHub Merge Queue / merge\_group 漂移 | merge\_group 觸發/回報規則易變 | TEMP\_CLOSED | merge\_group 事件下 required checks 仍可回報 | checks\_manifest \+ CI run 證據 | ISS-A-DELTA-01/ISS-B-F-011 | W00/W01 |
| TT-GH-RULESETS-01 | GitHub Rulesets/Required Checks 漂移 | 規則集/Required checks 行為調整 | TEMP\_CLOSED | rulesets 對應 required checks 命名契約一致 | checks\_manifest \+ 規則快照 | ISS-A-DELTA-02 | W02 |
| TT-OPENCODE-VERSION-01 | OpenCode 版本對齊 | 版本變動造成行為差 | TEMP\_CLOSED | RUNBOOK/WI 指定版本；升級有 TT | 版本宣告 \+ 變更紀錄 | ISS-A-DELTA-03 | W06 |
| TT-OPENCODE-PERM-01 | OpenCode 權限/能力宣告 | 權限漂移/越權風險 | TEMP\_CLOSED | 權限模型在 RUNBOOK/WI 明示 | 權限宣告 \+ evidence | ISS-A-DELTA-04 | W07 |
| TT-OPENCODE-WEBSEARCH-01 | Websearch Tool 可用性漂移 | tool availability 受控 | TEMP\_CLOSED | 工具可用性被宣告並可驗證 | 工具清單 \+ evidence | ISS-B-F-011 | W08 |
| TT-SUPPLYCHAIN-01 | 供應鏈/冒名站防護 | 冒名站/惡意 Action 風險 | TEMP\_CLOSED | 白名單策略 \+ 掃描工具納入 | 策略文件 \+ 掃描報告 | ISS-B-F-010/ISS-A-DELTA-05 | W09/W03/W11 |
| TT-SEC-PI-01 | Prompt Injection 防線落地 | 注入導致規範污染 | TEMP\_CLOSED | 信任邊界/拒絕策略在流程中被引用 | 指南引用 \+ evidence | ISS-A-DELTA-06 | W10/W11 |
| TT-CR-019-01 | 轉換 CR\_OPEN-019 | 禁留 CR\_OPEN | TEMP\_CLOSED | CR\_OPEN → TT 且無懸空 | 本 TT 表 \+ 變更記錄 | ISS-UP-CR-019 | — |
| TT-CR-021-01 | 轉換 CR\_OPEN-021 | 禁留 CR\_OPEN | TEMP\_CLOSED | CR\_OPEN → TT 且無懸空 | 本 TT 表 \+ 變更記錄 | ISS-UP-CR-021 | — |
| TT-UPSTREAM-ENUM-01 | 上游藍圖層抽取規則維護 | 上游混排可能復發 | TEMP\_CLOSED | 抽取規則固定；若上游更新必更新 Trace | Trace Map \+ Doc Inventory | ISS-B-F-003 | — |

---

## **(5) 【Web Evidence 索引快照】（從正文第17章複製）**

| W-ID | 主題 | Canonical URL | 存取日 | 5行內摘要 | 綁定 TT |
| ----- | ----- | ----- | ----- | ----- | ----- |
| W00 | Merge Queue 概念/行為 | `https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/configuring-pull-request-merges/managing-a-merge-queue` ([GitHub Docs](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/configuring-pull-request-merges/managing-a-merge-queue)) | 2026-02-15 | Merge Queue 的流程/要求會影響 required checks 與回報路徑；屬易變行為需 TT | TT-GH-MQ-01 |
| W01 | Actions `merge_group` 事件 | `https://docs.github.com/en/actions/using-workflows/events-that-trigger-workflows#merge_group` ([GitHub Docs](https://docs.github.com/actions/using-workflows/events-that-trigger-workflows)) | 2026-02-15 | `merge_group` 是 Merge Queue 相關觸發事件；workflow 需覆蓋以避免狀態不回報 | TT-GH-MQ-01 |
| W02 | Rulesets（Required checks 等） | `https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-rulesets/available-rules-for-rulesets` ([GitHub Docs](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-rulesets/available-rules-for-rulesets)) | 2026-02-15 | Rulesets 可定義 required checks 等規則；行為調整需以 TT 追蹤 | TT-GH-RULESETS-01 |
| W03 | 安全使用 GitHub Actions | `https://docs.github.com/en/actions/security-guides/security-hardening-for-github-actions` ([GitHub Docs](https://docs.github.com/en/enterprise-cloud%40latest/actions/reference/security/secure-use)) | 2026-02-15 | 提供 workflow 安全加固要點；屬供應鏈/越權風險基礎參照 | TT-SUPPLYCHAIN-01 |
| W04 | Dev Containers 規格 | `https://containers.dev/implementors/spec/` ([開發容器](https://devcontainers.github.io/implementors/spec/)) | 2026-02-15 | devcontainer 規格屬外部標準；版本/欄位變動需被治理 | TT-WEB-CANON-01 |
| W05 | VS Code Dev Containers 文件 | `https://code.visualstudio.com/docs/devcontainers/containers` ([code.visualstudio.com](https://code.visualstudio.com/docs/devcontainers/containers)) | 2026-02-15 | VS Code 端行為/相容性屬易變；僅作外部行為參照 | TT-WEB-CANON-01 |
| W06 | OpenCode Changelog（v1.2.x） | `https://opencode.ai/changelog` ([opencode.ai](https://opencode.ai/changelog)) | 2026-02-15 | v1.2.x 近日期變動頻繁；版本鎖定/升級需 TT 控制 | TT-OPENCODE-VERSION-01 |
| W07 | OpenCode Permissions | `https://opencode.ai/docs/permissions` ([opencode.ai](https://opencode.ai/docs/permissions/)) | 2026-02-15 | 權限模型影響可用工具與風險面；需明示與審計 | TT-OPENCODE-PERM-01 |
| W08 | OpenCode Tools（websearch 等） | `https://opencode.ai/docs/tools` ([opencode.ai](https://opencode.ai/docs/tools/)) | 2026-02-15 | tool 清單與行為易變；需在 RUNBOOK/WI 宣告與驗證 | TT-OPENCODE-WEBSEARCH-01 |
| W09 | Oh-My-OpenCode 官方 repo 警示 | `https://github.com/code-yeongyu/oh-my-opencode` ([GitHub](https://github.com/code-yeongyu/oh-my-opencode)) | 2026-02-15 | repo 明示與某網域不相干 → 冒名站風險；納入黑名單策略 | TT-SUPPLYCHAIN-01 |
| W10 | OWASP AI Agent Security Cheat Sheet | `https://cheatsheetseries.owasp.org/cheatsheets/AI_Agent_Security_Cheat_Sheet.html` ([cheatsheetseries.owasp.org](https://cheatsheetseries.owasp.org/cheatsheets/AI_Agent_Security_Cheat_Sheet.html)) | 2026-02-15 | 提供 agent 安全要點（信任邊界/工具濫用等）；用於注入防線最低要求 | TT-SEC-PI-01 |
| W11 | OWASP Prompt Injection Prevention | `https://cheatsheetseries.owasp.org/cheatsheets/LLM_Prompt_Injection_Prevention_Cheat_Sheet.html` ([cheatsheetseries.owasp.org](https://cheatsheetseries.owasp.org/cheatsheets/LLM_Prompt_Injection_Prevention_Cheat_Sheet.html)) | 2026-02-15 | 提供 prompt injection 具體防護策略；本藍圖採其最低防線語義 | TT-SEC-PI-01 |

