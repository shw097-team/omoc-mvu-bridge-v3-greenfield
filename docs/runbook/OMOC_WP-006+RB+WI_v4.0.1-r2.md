# **OMOC\_WP-006+RB+WI（Phase-L/L4｜CI Baseline \+ Required Check Presence）**

---

## **0\) 文件頭（Metadata）**

* `doc_id`：`OMOC_WP-006+RB+WI`  
* `title`：`Phase-L/L4 CI Baseline + Required Check Presence`  
* `scope`：僅涵蓋 **WP-006 的 WP \+ Runbook \+ WI**（required checks / rulesets / branch protection / merge queue 的「存在、被要求、可回報」）  
* `owner_roles`：  
  * OMOC｜WP-006 升級修補總裁決官  
  * SSOT 對齊裁決官（No-Source-No-Norm）  
  * Fail-Closed Gatekeeper（MISSING/UNVERIFIED ⇒ TT ⇒ TEMP\_CLOSED；阻斷級 ⇒ FAIL\_CLOSED）  
  * GitHub CI / Required Checks / Rulesets / Branch Protection 稽核與落地官  
  * Docs-as-Code 可檢索性工程師（TOC/Anchor/Index/DocLoc/Mapping/Anti-miss）  
  * Prompt-Injection / Confused-Deputy / Supply-Chain 風險稽核官（外部資料 SUPPORT-only）  
* `version`：`v4.0.1-r2`  
* `baseline_web_date`：`2026-02-14`  
* `access_date`（Asia/Taipei）：`2026-02-18T15:05:00+08:00`  
* `sources_policy`：  
  * **Files-first**（規範以附件/專案檔案庫為準）  
  * **No-Source-No-Norm**（所有 Gate/DoD/必做皆需可回指 SSOT locator）  
  * **Web \= SUPPORT-only**（僅佐證 GitHub 平台飄移行為/UI/術語；不得覆寫 SSOT；不一致 ⇒ SSOT \+ TT 記錄 drift）  
  * **Fail-Closed**（缺證據/缺回報/缺最小證據集 ⇒ FAIL\_CLOSED；未驗證外部行為 ⇒ TEMP\_CLOSED \+ TT）  
* `overall_verdict`：`TEMP_CLOSED`  
* `CR_OPEN`：`0`（所有缺口/漂移/未驗證皆已轉 TT；見 §13）

一句話：**你要驗的是「required checks 不只被設定為 required」，還要能在 PR /（若啟用 MQ）merge\_group 上「確實回報」**；否則 GitHub 會用 “Expected — Waiting for status to be reported” 讓你在合併前卡到懷疑人生（它不是壞，它只是非常擅長沉默）。

---

## **1\) TOC（可點擊）＋ Quick Index**

* [0\) 文件頭（Metadata）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995624c-7efc-83ab-bcb0-0a660bdecdf5#omoc-wp-006-0001-metadata)  
* [1\) TOC＋Quick Index](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995624c-7efc-83ab-bcb0-0a660bdecdf5#omoc-wp-006-0002-toc)  
* [2\) 導讀（1–2 分鐘）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995624c-7efc-83ab-bcb0-0a660bdecdf5#omoc-wp-006-0003-intro)  
* [3\) Authority Stack（anchors\_used）＋ Cross-WP 對齊](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995624c-7efc-83ab-bcb0-0a660bdecdf5#omoc-wp-006-0004-authority)  
* [4\) Glossary（名詞一致性）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995624c-7efc-83ab-bcb0-0a660bdecdf5#omoc-wp-006-0005-glossary)  
* [5\) Requirements Map（RQ×覆蓋位置）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995624c-7efc-83ab-bcb0-0a660bdecdf5#omoc-wp-006-0006-rq-map)  
* [6\) Runbook（可重跑／可稽核／可回滾）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995624c-7efc-83ab-bcb0-0a660bdecdf5#omoc-wp-006-0007-runbook)  
* [7\) WI（一步一驗收）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995624c-7efc-83ab-bcb0-0a660bdecdf5#omoc-wp-006-0008-wi)  
* [8\) GitHub UI 設置（可核對）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995624c-7efc-83ab-bcb0-0a660bdecdf5#omoc-wp-006-0009-ui)  
* [9\) Backup Points（BK-\*）與回滾策略](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995624c-7efc-83ab-bcb0-0a660bdecdf5#omoc-wp-006-0010-bk)  
* [10\) Gates（G-006-\*）與通過門檻](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995624c-7efc-83ab-bcb0-0a660bdecdf5#omoc-wp-006-0011-gates)  
* [11\) Acceptance Checklist（驗收清單）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995624c-7efc-83ab-bcb0-0a660bdecdf5#omoc-wp-006-0012-acceptance)  
* [12\) Evidence Contract（最小證據集＋目錄樹）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995624c-7efc-83ab-bcb0-0a660bdecdf5#omoc-wp-006-0013-evidence)  
* [13\) TT Register（CR\_OPEN=0；Fail-Closed）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995624c-7efc-83ab-bcb0-0a660bdecdf5#omoc-wp-006-0014-tt)  
* [14\) Drift & Decision Log（裁決紀錄）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995624c-7efc-83ab-bcb0-0a660bdecdf5#omoc-wp-006-0015-drift-decision)  
* [15\) Web Evidence Index（SUPPORT-only；≥5）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995624c-7efc-83ab-bcb0-0a660bdecdf5#omoc-wp-006-0016-web-evidence)  
* [16\) machine\_summary.json（機讀摘要）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995624c-7efc-83ab-bcb0-0a660bdecdf5#omoc-wp-006-0017-machine-summary)  
* [17\) Changelog（升級修補摘要）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995624c-7efc-83ab-bcb0-0a660bdecdf5#omoc-wp-006-0018-changelog)  
* [18\) Self-Audit Checklist（自我稽核）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995624c-7efc-83ab-bcb0-0a660bdecdf5#omoc-wp-006-0019-self-audit)

### **Quick Index（常用入口）**

* 先看範圍與裁決規則：§2、§3、§4  
* 直接照做：§7 WI（一步一驗收）  
* 需要回滾/備份：§9 BK-\*  
* 你要「通過」的是什麼：§10 Gates、§11 Acceptance  
* 你要交付哪些證據：§12 Evidence Contract  
* 有不確定、平台飄移怎麼辦：§13 TT、§14 Drift、§15 Web Evidence

---

## **2\) 導讀（1–2 分鐘讀完）**

### **2.1 WP-006 解什麼問題？**

* 解決「**看似有 required checks**（設定上 required），但實際 PR/MQ 上 **沒有回報**」造成的假象。  
* 典型症狀：PR 合併框顯示 **Expected — Waiting for status to be reported**，你重跑 workflow 也不一定會動（尤其 merge queue / merge\_group 情境更常見）。

### **2.2 你在這份文件會做出什麼「可稽核」結果？**

* 你會產出一組 **Evidence Minimum Output Set**（四件套 \+ bundle），並在 `checks_manifest.json` 內形成「**expected（設定要求）** ⊆ **observed（實際回報）**」的集合比對與裁決（Fail-Closed）。  
* required checks 驗收拆成三層（缺一不可）：  
  1. **存在**：required checks 名稱能被清楚辨識（設定/規則層）  
  2. **被要求**：branch protection / rulesets 實際要求它（規則層）  
  3. **有回報**：PR（以及啟用 MQ 時的 merge\_group）真的回報到這個名稱（執行層）

### **2.3 什麼是 NORMATIVE、什麼是 SUPPORT？**

* **NORMATIVE（不可違反）**：附件/專案檔案庫中的 SSOT（藍圖、RB+WI 合冊、施工 skills、WP 總表 r2、WP-001\~005 r2）。  
* **SUPPORT（可飄移）**：GitHub Docs / changelog / 社群討論（只用來對齊 UI 路徑、事件語意、欄位名、平台行為）。  
* 若 SUPPORT 與 NORMATIVE 不一致：**以 NORMATIVE 為準 \+ 開 TT 記錄 drift**（見 §13、§14）。

---

## **3\) Authority Stack（anchors\_used）＋ Cross-WP 對齊說明**

### **3.1 Authority Stack（SSOT）**

* **A0**：`/mnt/data/OMOC_藍圖_v4.0.1-r1.md`  
  * 使用定位：`[ANCHOR:OMOC-BP-1000]`（DoD / Required Checks 命名契約 / Evidence Minimum Output Set / Fail-Closed）  
* **A1**：`/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md`  
  * 使用定位：`[ANCHOR:OMOC-RBWI-L4]`（L4 workflow scan / evidence\_minset / 失敗處置）  
* **A2**：`/mnt/data/OMOC_施工skills_合冊_v4.0.1-r2.md`  
  * 使用定位（技能錨點）：  
    * `omoc-skill-omoc-baseline-snapshot`（SK01）  
    * `omoc-skill-omoc-ercc-extract`（SK03）  
    * `omoc-skill-omoc-context-observe`（SK04）  
    * `omoc-skill-omoc-ercc-diff-verdict`（SK06）  
    * `omoc-skill-omoc-evidence-packager`（SK08）  
    * `omoc-skill-omoc-mq-merge-group-probe`（SK09）  
    * `omoc-skill-omoc-context-drift-guard`（SK12）  
* **A3**：`/mnt/data/OMOC_實作+WP總表_v4.0.1-r2.md`（**r1 已 superseded**；見 §14）

### **3.2 Cross-WP 對齊（欄位/契約/Fail-Closed 風格）**

* 對齊文件：`WP-001~WP-005（v4.0.1-r2）`  
* 對齊要點：  
  * **Fail-Closed** 用語與判定（UNVERIFIED ⇒ TT ⇒ TEMP\_CLOSED；缺 required check 回報/缺最小證據 ⇒ FAIL\_CLOSED）  
  * **Evidence Triplet/Bundle** 命名與輸出（`verdict.json / checks_manifest.json / evidence_index.md / evidence_bundle.tgz`）  
  * **Docs-as-Code**：TOC 可點、anchors 穩定、DocLoc 可檢索、Anti-miss 指引  
  * **CR\_OPEN=0**：所有缺口與漂移皆轉 TT（§13）

---

## **4\) Glossary（required checks / statuses / contexts 一致化）**

你若把這些混用，驗收會直接誤判（GitHub 也不會替你指出哪裡搞混了）。

* **Required status checks**：保護規則（branch protection / rulesets）要求必須通過的「狀態檢查」，可來源於 **checks** 或 **commit statuses**。([GitHub Docs](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-rulesets/available-rules-for-rulesets))  
* **Check runs / Checks**：GitHub Checks API / GitHub Actions 常見呈現（UI 上通常是某個 job 的檢查結果）。  
* **Commit statuses / Statuses**：較舊的 commit status API（外部 CI 也常用）。([GitHub Docs](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-rulesets/available-rules-for-rulesets))  
* **Context（狀態檢查名稱）**：實際被 required 的那個「名稱字串」。名稱漂移/同名歧義會造成 required checks 卡死或誤放行。  
* **“Expected — Waiting for status to be reported”**：GitHub 預期某個 required context 會回報，但實際上沒有回報（或觸發條件沒跑、跑了但沒產生該 context）。  
* **Merge queue / Merge group（MQ / merge\_group）**：啟用 merge queue 時，GitHub 會用 `merge_group` 觸發來跑隊列合併前的檢查；若 workflow 未包含 `merge_group` 事件，可能導致 required checks 在隊列情境「不會被觸發/不會回報」。([GitHub Docs](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/configuring-pull-request-merges/managing-a-merge-queue))  
* **ERCC（Expected Required Contexts Contract）**：把「設定上 required 的 contexts」抽出成 expected，並與 observed（PR / merge\_group 上實際回報）做集合比對與裁決（Fail-Closed）。

---

## **5\) Requirements Map（RQ 清單 × 覆蓋位置）**

每條 RQ 都要能定位到本文件 anchor；並能回指 SSOT locator（No-Source-No-Norm）。

### **RQ-006-001｜Required Check Name Contract（名稱穩定）**

* **要求**：required check 名稱必須穩定且可明示追溯（藍圖只定「名稱/必備」）。  
* **SSOT locator**：A0 `[ANCHOR:OMOC-BP-1000] §10.1`  
* **覆蓋**：§10.2（G-006-NAME）、§11、§12、§13（TT-006-CANONICAL-\*）

### **RQ-006-002｜CI Baseline：PR 上 required checks 必回報（含 skip 也要有狀態）**

* **SSOT locator**：A1 `[ANCHOR:OMOC-RBWI-L4]`  
* **覆蓋**：§6、§7、§10.1（G-006-PR-TRIGGER）、§10.3（G-006-PR-REPORT）

### **RQ-006-003｜Expected Required Contexts Extract（ERCC expected）**

* **SSOT locator**：A2 `omoc-skill-omoc-ercc-extract`（SK03）  
* **覆蓋**：§6、§7、§10.4（G-006-ERCC）

### **RQ-006-004｜Observed Contexts Collect（PR / merge\_group）**

* **SSOT locator**：A2 `omoc-skill-omoc-context-observe`（SK04）  
* **覆蓋**：§6、§7、§10.4（G-006-ERCC）、§10.5（G-006-MQ）

### **RQ-006-005｜Fail-Closed 裁決（missing/ambiguous ⇒ FAIL\_CLOSED；外部未驗證 ⇒ TEMP\_CLOSED+TT）**

* **SSOT locator**：A0 `[ANCHOR:OMOC-BP-1000] §10.3` ＋ A2 `omoc-skill-omoc-ercc-diff-verdict`（SK06）  
* **覆蓋**：§10（各 gate 判定）、§13（TT 欄位完整）

### **RQ-006-006｜Evidence Minimum Output Set（四件套 \+ bundle；加法相容）**

* **SSOT locator**：A0 `[ANCHOR:OMOC-BP-1000] §10.2`  
* **覆蓋**：§12、§10.6（G-006-EVIDENCE）、§16 machine\_summary.json

### **RQ-006-007｜GitHub UI 設置可核對 \+ BK 回滾**

* **SSOT locator**：A1 L4（回滾/備份精神）＋ A2 SK01（baseline snapshot）  
* **覆蓋**：§8、§9（BK-\*）、§6/§7（每一步含 rollback）

### **RQ-006-008｜Web SUPPORT-only：飄移點必記錄 access\_date \+ drift\_action \+ TT**

* **SSOT locator**：A0 `[ANCHOR:OMOC-BP-1000] §10.1（TT-GH-*）`  
* **覆蓋**：§15 Web Evidence Index、§13 TT（TT-006-WEB-DRIFT-\*）

---

## **6\) Runbook（可重跑／可稽核／可回滾）**

### **6.1 工具矩陣（Tooling Matrix）**

* **GitHub UI**：檢視/調整 rulesets、branch protection、merge queue（飄移點；需 Web SUPPORT）  
* **gh CLI**：  
  * 讀取 repo 設定、查 workflow runs、查 check-runs/statuses（可稽核、可腳本化）  
  * 進行 BK（匯出 JSON）  
* **git**：BK（workflow 檔案快照）、最小變更與回滾  
* **rg / jq / bash**：workflow 靜態掃描、JSON 解析（對齊 RBWI L4）

### **6.2 Runbook 共通約定（每步必備欄位）**

每步皆以以下欄位描述（缺一視為文件缺口 ⇒ TT）：

* `Tool` / `Do` / `Expect` / `Verify` / `Artifacts` / `Evidence` / `Fix` / `Rollback(BK-*)`

### **6.3 RB-006-000｜初始化：取得 repo identity（避免占位符）**

* **Tool**：bash \+ gh \+ git

**Do**  
set \-euo pipefail  
git rev-parse \--is-inside-work-tree \>/dev/null  
repo="$(gh repo view \--json nameWithOwner \-q .nameWithOwner)"  
default\_branch="$(gh repo view \--json defaultBranchRef \-q .defaultBranchRef.name)"  
echo "repo=$repo"  
echo "default\_branch=$default\_branch"

*   
* **Expect**：輸出 `owner/repo` 與 `default_branch`  
* **Verify**：`gh repo view` 不報錯  
* **Artifacts/Evidence**：`evidence/_acceptance/<ts>/log/RB-006-000.init.txt`（見 §7 WI 具體落地）  
* **Rollback**：無（純讀取）

### **6.4 RB-006-010｜BK：Baseline Snapshot（備份點一）**

* **Tool**：SK01 `omoc-baseline-snapshot`（A2）  
* **Do**：執行 SK01，產出 repo baseline（含 rulesets / branch protection 相關查詢的 best-effort）  
* **Expect**：`evidence/_acceptance/<ts>/baseline/` 下有 JSON/log 產物  
* **Verify**：BK 產物存在且可 `jq -e .`  
* **Rollback(BK-006-001)**：此步本身是備份；無修改

### **6.5 RB-006-020｜L4 workflow scan（靜態檢查 required-check workflows 的觸發）**

* **Tool**：bash \+ rg（對齊 A1 `[ANCHOR:OMOC-RBWI-L4]`）

**Do**（靜態掃描，不跑 CI）  
set \-euo pipefail  
ts="${OMOC\_TS:-$(date \-u \+%Y%m%dT%H%M%SZ)}"  
mkdir \-p "evidence/\_acceptance/$ts/log"  
{  
  echo "== list workflows \=="  
  ls \-la .github/workflows || true  
  echo  
  echo "== scan triggers (pull\_request|merge\_group) \=="  
  rg \-n '^\\s\*on:\\s\*$|^\\s\*(pull\_request|merge\_group):\\s\*$' .github/workflows || true  
} | tee "evidence/\_acceptance/$ts/log/L4-workflow-scan.log"

*   
* **Expect**：每個「會產生 required context」的 workflow 至少包含 `pull_request`；若啟用 MQ，應包含 `merge_group`（見 §10.5）  
* **Verify**：掃描 log 能指出 on: 區塊  
* **Fix**：若缺 `pull_request` 或 MQ 缺 `merge_group` ⇒ 開 TT 並套用（或 Route-Out）Always-Report/merge\_group 補丁（見 §10.1/§10.5、§13）  
* **Rollback(BK-006-002)**：任何 workflow 修改前先 BK（見 §9）

### **6.6 RB-006-030｜ERCC expected：從 rulesets/branch protection 萃取 required contexts**

* **Tool**：SK03 `omoc-ercc-extract`  
* **Do**：執行 SK03，輸出 expected contexts  
* **Expect**：`evidence/_acceptance/<ts>/ercc_expected/required_contexts_expected.json` 等產物存在  
* **Verify**：`jq -e . checks_manifest.json` 可過  
* **Fix**：expected 為空 ⇒ `TEMP_CLOSED + TT`（因可能尚未設定 rulesets/branch protection；不可腦補）  
* **Rollback**：純讀取（SK03 會輸出檔案，但不改 GitHub 設定）

### **6.7 RB-006-040｜Observed（PR）：收集實際回報的 contexts（check-runs / statuses）**

* **Tool**：SK04 `omoc-context-observe`  
* **Do**：取得一個 PR 的 `head_sha`（你要驗收的那個），執行 SK04 收集 observed contexts  
* **Expect**：`checks_manifest.json.required_contexts_contract.observed.pull_request` 非空（至少含 canonical gate）  
* **Verify**：`jq -e . checks_manifest.json` 可過  
* **Fix**：observed 無 canonical/缺回報 ⇒ FAIL\_CLOSED（見 SK06/§10.4）  
* **Rollback**：純讀取

### **6.8 RB-006-050｜ERCC Diff \+ Verdict（Fail-Closed 裁決）**

* **Tool**：SK06 `omoc-ercc-diff-verdict`  
* **Do**：執行 SK06：expected ⊆ observed；missing/ambiguous ⇒ FAIL\_CLOSED  
* **Expect**：更新 `checks_manifest.json` 與 `verdict.json`  
* **Verify**：`jq -e . verdict.json` 可過  
* **Fix**：  
  * missing ⇒ 修 workflow triggers / required check 名稱 / rulesets 設定（見 §8、§10）  
  * ambiguous ⇒ 解除同名 contexts（例如 job name 重複、workflow 名稱漂移）  
* **Rollback**：若 `verdict.json/checks_manifest.json` 納入版控可回 `git checkout -- ...`

### **6.9 RB-006-060｜（Conditional）MQ：merge\_group 上的回報驗證**

* **Tool**：SK09 `omoc-mq-merge-group-probe`（必要時）  
* **Do**：若 repo 啟用 merge queue，必驗 merge\_group 上 required contexts 也會回報  
* **Expect**：`checks_manifest.json.required_contexts_contract.observed.merge_group` 覆蓋 expected  
* **Verify**：SK06 設 `OMOC_MQ=1` 時能通過；否則 FAIL\_CLOSED 或 TEMP\_CLOSED+TT（視缺口類型）  
* **Fix**：workflow 未含 `merge_group` ⇒ 依 GitHub Docs 增加 `merge_group` 觸發（SUPPORT-only）([GitHub Docs](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/configuring-pull-request-merges/managing-a-merge-queue))  
* **Rollback**：workflow 修改前 BK（§9）

### **6.10 RB-006-070｜Evidence Packager：打包四件套＋bundle（Fail-Closed）**

* **Tool**：SK08 `omoc-evidence-packager`  
* **Do**：執行 SK08 產出 `evidence_bundle.tgz` 與 `bundle_audit.json`  
* **Expect**：根目錄存在：`verdict.json / evidence_index.md / checks_manifest.json / evidence_bundle.tgz / bundle_audit.json`  
* **Verify**：`tar -tzf evidence_bundle.tgz | head` 不報錯；`jq -e . bundle_audit.json` 可過  
* **Fix**：缺任一 root artifact ⇒ FAIL\_CLOSED（對齊藍圖 DoD）  
* **Rollback**：刪除本次 bundle（若需重打包）

---

## **7\) WI（工作指導書；一步一驗收）**

WI 的目標：**照著做就能產出可稽核證據**；每步都有 pass/fail 與修復回路。

### **WI-006-000｜建立本次驗收 ts 與目錄**

**Do**  
set \-euo pipefail  
ts="$(date \-u \+%Y%m%dT%H%M%SZ)"  
export OMOC\_TS="$ts"  
mkdir \-p "evidence/\_acceptance/$OMOC\_TS/log"  
echo "$OMOC\_TS" | tee "evidence/\_acceptance/$OMOC\_TS/log/WI-006-000.ts.txt"

*   
* **Pass**：`evidence/_acceptance/<ts>/` 存在  
* **Fail/Fix**：無（若無法建立目錄 ⇒ 環境問題，開 TT-006-ENV-001）

### **WI-006-010｜取得 repo / default branch（避免占位符）**

**Do**  
set \-euo pipefail  
repo="$(gh repo view \--json nameWithOwner \-q .nameWithOwner)"  
default\_branch="$(gh repo view \--json defaultBranchRef \-q .defaultBranchRef.name)"  
{  
  echo "repo=$repo"  
  echo "default\_branch=$default\_branch"  
} | tee "evidence/\_acceptance/$OMOC\_TS/log/WI-006-010.repo.txt"

*   
* **Pass**：檔案中有 `owner/repo` 與 `default_branch`  
* **Fail/Fix**：`gh auth status` 檢查登入；無法登入 ⇒ TT-006-AUTH-001（TEMP\_CLOSED）

### **WI-006-020｜BK-006-001：Baseline Snapshot**

* **Do**：執行技能 SK01（建議直接複用 skills 原文指令）  
* **Pass**：`evidence/_acceptance/<ts>/baseline/` 有輸出；且 `jq -e .` 可過  
* **Fail/Fix**：缺 gh/jq ⇒ 安裝；仍失敗 ⇒ TT-006-BK-001（TEMP\_CLOSED）

### **WI-006-030｜L4-workflow-scan（靜態掃描 triggers）**

**Do**（對齊 RBWI L4）  
set \-euo pipefail  
{  
  echo "== list workflows \=="  
  ls \-la .github/workflows || true  
  echo  
  echo "== scan triggers (pull\_request|merge\_group) \=="  
  rg \-n '^\\s\*on:\\s\*$|^\\s\*(pull\_request|merge\_group):\\s\*$' .github/workflows || true  
} | tee "evidence/\_acceptance/$OMOC\_TS/log/L4-workflow-scan.log"

*   
* **Pass**：你能指出「會產生 required contexts 的 workflow」是否含 `pull_request`（若啟用 MQ，是否含 `merge_group`）  
* **Fail/Fix**：  
  * 找不到 workflows ⇒ TT-006-WF-EMPTY-001（TEMP\_CLOSED）  
  * triggers 不完整 ⇒ 先不要硬改，走 §9 BK 後再改（或 Route-Out 到後續 WP；見 TT-006-WF-TRIGGER-001）

### **WI-006-040｜建立/更新 `checks_manifest.json`（ERCC expected）**

* **Do**：執行技能 SK03 `omoc-ercc-extract`  
* **Pass**：`checks_manifest.json.required_contexts_contract.expected` 非空  
* **Fail/Fix**：expected 空 ⇒ `TEMP_CLOSED + TT-006-ERCC-EXPECTED-EMPTY-001`（可能尚未設定 rulesets/branch protection）

### **WI-006-050｜收集 PR head\_sha（你要驗收的那個）**

**Do（範例：挑最新開啟 PR）**  
set \-euo pipefail  
pr\_number="$(gh pr list \--state open \--limit 1 \--json number \-q '.\[0\].number')"  
head\_sha="$(gh pr view "$pr\_number" \--json headRefOid \-q .headRefOid)"  
{  
  echo "pr\_number=$pr\_number"  
  echo "head\_sha=$head\_sha"  
} | tee "evidence/\_acceptance/$OMOC\_TS/log/WI-006-050.pr.txt"

*   
* **Pass**：`head_sha` 非空  
* **Fail/Fix**：沒有 open PR ⇒ 用指定 PR；仍無 ⇒ TT-006-NO-PR-001（TEMP\_CLOSED）

### **WI-006-060｜Observed（PR）：收集回報 contexts**

* **Do**：執行技能 SK04 `omoc-context-observe`（以 `head_sha` 為輸入）  
* **Pass**：`checks_manifest.json.required_contexts_contract.observed.pull_request` 非空  
* **Fail/Fix**：空 ⇒ 不是「沒問題」，而是「沒回報」：走 §10 Gate 的 FAIL\_CLOSED 修復路徑（workflow triggers / required check name / rulesets）

### **WI-006-070｜ERCC Diff \+ Verdict（Fail-Closed）**

**Do**  
set \-euo pipefail  
\# 若未啟用 MQ：  
export OMOC\_MQ=0  
\# 若啟用 MQ（且你要在本回合一起驗）：  
\# export OMOC\_MQ=1  
\# 執行 SK06（以 skills 原文指令）

*   
* **Pass**：`verdict.json.status == PASS` 且 `checks_manifest.json.required_contexts_contract.verdict == PASS`  
* **Fail/Fix**：  
  * `FAIL_CLOSED`：必修 missing/ambiguous（見 §10.4）  
  * `TEMP_CLOSED`：多半是 expected 空或 MQ 尚未驗（見 TT）

### **WI-006-080（Conditional）｜MQ merge\_group probe（只在啟用 merge queue 時）**

* **Do**：若啟用 MQ：  
  * 確保 workflows 同時包含 `pull_request` 與 `merge_group`（GitHub Docs 支援）([GitHub Docs](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/configuring-pull-request-merges/managing-a-merge-queue))  
  * 執行 SK09 抓 merge\_group run 的 `head_sha` 並收集 observed.merge\_group  
* **Pass**：observed.merge\_group 覆蓋 expected（再跑一次 SK06 並 `OMOC_MQ=1`）  
* **Fail/Fix**：  
  * 無 merge\_group runs ⇒ TT-006-MQ-NO-RUN-001（TEMP\_CLOSED）  
  * 有 runs 但缺 required contexts ⇒ FAIL\_CLOSED（workflow triggers / gate job 不回報）

### **WI-006-090｜Evidence Packager（四件套＋bundle）**

* **Do**：執行 SK08 `omoc-evidence-packager`  
* **Pass**：根目錄四件套＋bundle 全在；`bundle_audit.json.result == PASS`  
* **Fail/Fix**：缺任一 ⇒ FAIL\_CLOSED（DoD 硬性要求）

---

## **8\) GitHub UI 設置（UI 路徑必可核對）**

**注意：UI 名稱/位置屬飄移點**。本節為 SUPPORT-only 指引，且已建立 TT（§13）要求定期 revalidate。

### **8.1 Rulesets：Require status checks to pass before merging**

* 典型路徑（可能因版本/語系/方案而異）：Repository **Settings** → **Rules** → **Rulesets** → 建立/編輯 ruleset → 加入 **Require status checks to pass before merging**。([GitHub Docs](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-rulesets/available-rules-for-rulesets))  
* 要點：  
  * required status checks 可以是 checks 或 statuses。([GitHub Docs](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-rulesets/available-rules-for-rulesets))  
    \-（若有）可選 **expected source app** 來限制 status 來源；此欄位也屬飄移點。([GitHub Docs](https://docs.github.com/en/enterprise-server%403.17/repositories/configuring-branches-and-merges-in-your-repository/managing-rulesets/available-rules-for-rulesets))

### **8.2 Branch protection：Required status checks / Up-to-date（Strict vs Loose）**

* 典型路徑：Repository **Settings** → **Branches** → Branch protection rules（或對應 UI）。([GitHub Docs](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/managing-a-branch-protection-rule))  
* 要點：  
  * **Require branches to be up to date before merging**（Strict）會增加重跑次數；Loose 風險轉嫁到合併後。([GitHub Docs](https://docs.github.com/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches))  
  * required status checks 的「7 天內完成成功」限制是常見卡點（屬平台行為飄移；見 §15 \+ TT）。([GitHub Docs](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/collaborating-on-repositories-with-code-quality-features/troubleshooting-required-status-checks))

### **8.3 Merge queue：merge\_group 觸發與 “waiting for status”**

* 關鍵點（SUPPORT-only）：  
  * 啟用 merge queue 後，GitHub 會派發 `merge_group`（checks\_requested）並等待 CI 回報。([GitHub Docs](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/configuring-pull-request-merges/managing-a-merge-queue))  
  * 若 required checks 由 GitHub Actions 提供，workflow **必須**加上 `merge_group` 事件，不然隊列情境可能不觸發/不回報 required checks。([GitHub Docs](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/configuring-pull-request-merges/managing-a-merge-queue))

---

## **9\) Backup Points（BK-\*）與回滾策略（不得缺）**

原則：**凡是可能改 `.github/workflows/*`、rulesets、branch protection、required checks 清單**，都先 BK。

### **BK-006-001｜Repo Baseline Snapshot（SK01）**

* **備份命令**：使用 A2 SK01 `omoc-baseline-snapshot`  
* **輸出位置**：`evidence/_acceptance/<ts>/baseline/`  
* **復原命令**：不適用（只讀備份）  
* **風險提示**：若 gh 權限不足，BK 可能不完整 ⇒ TT-006-BK-PERM-001（TEMP\_CLOSED）

### **BK-006-002｜Workflows 檔案快照（修改前必做）**

**備份命令**  
set \-euo pipefail  
mkdir \-p "evidence/\_acceptance/$OMOC\_TS/bk/workflows"  
git ls-files .github/workflows | while read \-r f; do  
  mkdir \-p "evidence/\_acceptance/$OMOC\_TS/bk/$(dirname "$f")"  
  cp \-a "$f" "evidence/\_acceptance/$OMOC\_TS/bk/$f"  
done  
(cd "evidence/\_acceptance/$OMOC\_TS/bk" && sha256sum $(git ls-files .github/workflows) 2\>/dev/null || true) \\  
  | tee "evidence/\_acceptance/$OMOC\_TS/bk/workflows.sha256.txt"

* 

**復原命令**  
set \-euo pipefail  
rsync \-a "evidence/\_acceptance/$OMOC\_TS/bk/.github/workflows/" ".github/workflows/"  
git status \--porcelain

*   
* **風險提示**：若你在 BK 前就改了檔案，那不是回滾，是考古；請先回復到乾淨狀態再 BK。

### **BK-006-003｜Branch protection / required contexts（API 匯出）**

**備份命令**（REST API；欄位/端點屬飄移點，已建 TT）  
set \-euo pipefail  
repo="$(gh repo view \--json nameWithOwner \-q .nameWithOwner)"  
default\_branch="$(gh repo view \--json defaultBranchRef \-q .defaultBranchRef.name)"  
out="evidence/\_acceptance/$OMOC\_TS/bk/api"  
mkdir \-p "$out"

\# branch protection (best-effort)  
gh api \-H "Accept: application/vnd.github+json" \\  
  "repos/$repo/branches/$default\_branch/protection" \\  
  \>"$out/branch\_protection.json" || true

\# required status checks contexts (if supported)  
gh api \-H "Accept: application/vnd.github+json" \\  
  "repos/$repo/branches/$default\_branch/protection/required\_status\_checks/contexts" \\  
  \>"$out/required\_status\_checks\_contexts.json" || true

*   
* **端點參考（SUPPORT-only）**：required\_status\_checks/contexts 端點在 GitHub REST Docs 可見。([GitHub Docs](https://docs.github.com/en/rest/authentication/endpoints-available-for-github-app-installation-access-tokens))  
* **復原策略**：API 變更屬高風險；不建議直接「寫回去」當回滾。此 BK 主要用於 **對照/稽核/復現**。  
* **風險提示**：寫入端點（PUT/POST/DELETE）若誤用會直接改保護規則；此 WP 僅提供讀取 BK，修改請走變更控制（或後續 WP/流程）。

---

## **10\) Gates（G-006-\*）與通過門檻（Fail-Closed）**

Gate 的判定只看「可驗證的輸入與證據產物」。沒跑、沒證據、沒回報，不接受口述。

### **10.1 G-006-PR-TRIGGER｜PR 觸發完整性（workflow triggers）**

* **Purpose**：避免 required checks 因 triggers 缺失而永遠不回報（先抓最常見的人為雷）。  
* **Inputs**：`.github/workflows/*`、`L4-workflow-scan.log`  
* **Steps**：執行 §7 WI-006-030  
* **Pass criteria**：所有「會產生 required contexts」的 workflow 至少包含 `pull_request`（MQ 啟用則應含 `merge_group`）  
* **Failure modes**：  
  * workflow 根本沒跑（沒觸發）  
  * MQ 情境不觸發 merge\_group  
* **Evidence artifacts**：`evidence/_acceptance/<ts>/log/L4-workflow-scan.log`（A1 L4）  
* **Fix**：  
  * 不完整 triggers ⇒ **先 BK-006-002**，再補齊 `on: pull_request` /（MQ）`on: merge_group`（若補丁屬後續 WP 責任 ⇒ Route-Out \+ TT）  
* **Rollback**：`BK-006-002` 還原 workflows

### **10.2 G-006-NAME｜Required Check Name Contract（canonical \+ anti-ambiguity）**

* **Purpose**：required checks 的「名稱」是合併門鎖；鎖芯（名稱）一直換，你就一直被反鎖。  
* **SSOT**：藍圖規範 canonical 名稱需穩定（示例：`ci / omoc-gate`）。（A0 `[ANCHOR:OMOC-BP-1000] §10.1`）  
* **Inputs**：`checks_manifest.json.required_check_name_contract`（若採 SK 系列生成/維護）  
* **Pass criteria**：  
  * canonical 名稱在文件中明示；且在 `checks_manifest.json` 可機讀；且不與其他 job/context 同名造成歧義  
* **Failure modes**：  
  * 同名 contexts（例如多個 workflow/job 都叫同一個顯示名稱）  
  * 名稱漂移造成規則要求 A、回報卻是 B  
* **Evidence**：`checks_manifest.json`（§12）  
* **Fix**：  
  * 若 repo 真實 canonical 不同於藍圖示例：**必須文件化 \+ Trace \+ TT**（TT-006-CANONICAL-MISMATCH-001）  
  * 若歧義：改名或縮減 required contexts 到最小（建議只鎖 1 個 gate context）

### **10.3 G-006-PR-REPORT｜PR 上 required context 必「有回報」**

* **Purpose**：區分「設定上 required」與「實際有回報」  
* **Inputs**：PR `head_sha`、SK04 observed contexts  
* **Steps**：§7 WI-006-060  
* **Pass criteria**：observed.pull\_request 內包含 canonical required context（且不是永久 waiting）  
* **Failure modes**：  
  * workflow 沒觸發、或觸發了但不產生該 context  
  * required context 其實來自另一種來源（checks vs statuses）而你抓錯層級  
* **Evidence**：`evidence/_acceptance/<ts>/ercc_observed/pull_request/*`（由 SK04 產出）  
* **Fix**：  
  * workflow triggers 修補（回到 G-006-PR-TRIGGER）  
  * 若 MQ 也需要：加 `merge_group`（回到 G-006-MQ）([GitHub Docs](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/configuring-pull-request-merges/managing-a-merge-queue))  
* **Rollback**：若修改 workflow，走 BK-006-002

### **10.4 G-006-ERCC｜Expected ⊆ Observed（Fail-Closed 裁決）**

* **Purpose**：把 required checks 從「信仰」變「集合論」：expected（設定要求）必須被 observed（實際回報）覆蓋。  
* **Inputs**：`checks_manifest.json`、`verdict.json`  
* **Steps**：依序執行 SK03（expected）→ SK04（observed PR）→ SK06（diff+verdict）  
* **Pass criteria**：  
  * `checks_manifest.json.required_contexts_contract.verdict == PASS`  
  * `verdict.json.status == PASS`  
* **Fail criteria（Fail-Closed）**：  
  * missing 非空 ⇒ FAIL\_CLOSED  
  * ambiguous 非空 ⇒ FAIL\_CLOSED  
  * expected 空 ⇒ TEMP\_CLOSED \+ TT（不可假裝已設定）  
* **Evidence**：根目錄 `checks_manifest.json`、`verdict.json` \+ acceptance logs  
* **Fix**：  
  * missing：修 rulesets/branch protection（§8）或修 workflow 觸發/命名（§10.1/§10.2）  
  * ambiguous：解除同名 contexts（縮減 required contexts；或使 canonical 唯一）

### **10.5 G-006-MQ｜（Conditional）merge\_group 回報驗證**

* **Applicability**：僅當 repo 啟用 merge queue（merge\_group）  
* **Purpose**：避免「PR 上有回報，但隊列上不回報」導致 MQ 卡死。  
* **SUPPORT-only reference**：merge queue 需要 `merge_group` 觸發；且 merge\_group.checks\_requested 會被派發。([GitHub Docs](https://docs.github.com/en/webhooks/webhook-events-and-payloads))  
* **Pass criteria**：observed.merge\_group 覆蓋 expected（再跑 SK06 with `OMOC_MQ=1`）  
* **Failure modes**：  
  * workflow 未宣告 `merge_group`  
  * merge queue 建的臨時分支/事件導致 workflow 沒跑或跑了不回報 required context  
* **Fix**：補齊 `merge_group` triggers（BK-006-002 後）  
* **Rollback**：BK-006-002

### **10.6 G-006-EVIDENCE｜Evidence Minimum Output Set（四件套 \+ bundle）**

* **SSOT**：A0 `[ANCHOR:OMOC-BP-1000] §10.2`（四件套 \+ bundle；加法相容）  
* **Pass criteria（硬性）**：根目錄至少包含：  
  * `verdict.json`  
  * `evidence_index.md`  
  * `checks_manifest.json`  
  * `evidence_bundle.tgz`  
* **Plus（建議/稽核用）**：`bundle_audit.json`（由 SK08 產出）  
* **Failure**：缺任一 ⇒ FAIL\_CLOSED  
* **Steps**：執行 SK08  
* **Evidence**：根目錄 artifacts \+ `evidence/_acceptance/<ts>/log/SK08-pack.log`

---

## **11\) Acceptance Checklist（驗收清單）**

刻意把「存在 / 被要求 / 有回報」拆開，避免自我欺騙。

### **11.1 設定層（存在 \+ 被要求）**

* \[ \]（存在）能列出 required contexts（ERCC expected 非空；見 WI-006-040）  
* \[ \]（被要求）能指出其來源（rulesets / branch protection）並可由 BK/API 或 UI 證據回放（§8、§9 BK-006-003）

### **11.2 執行層（PR 上有回報）**

* PR head\_sha 已記錄（WI-006-050）  
* observed.pull\_request 非空（WI-006-060）  
* SK06 裁決 PASS（WI-006-070）  
* 若卡 “Expected — Waiting …”：已依 §10 Gate 走過修復回路（觸發/命名/規則/來源）

### **11.3（Conditional）MQ/merge\_group**

* \[ \]（若啟用 MQ）workflow 包含 `merge_group` 事件([GitHub Docs](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/configuring-pull-request-merges/managing-a-merge-queue))  
* \[ \]（若啟用 MQ）observed.merge\_group 覆蓋 expected（WI-006-080 \+ SK06 with OMOC\_MQ=1）  
* \[ \]（若啟用 MQ）merge\_group.checks\_requested 行為已記錄於 Web Evidence（§15）([GitHub Docs](https://docs.github.com/en/webhooks/webhook-events-and-payloads))

### **11.4 平台常見坑（需明確驗證/記錄）**

* required status checks 的 **7 天限制**（到期會被視為不合格/不算 required）— 屬平台行為，需記錄且可重驗。([GitHub Docs](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/collaborating-on-repositories-with-code-quality-features/troubleshooting-required-status-checks))  
* Strict vs Loose（Require branches to be up to date）已明確選擇與風險紀錄。([GitHub Docs](https://docs.github.com/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches))

---

## **12\) Evidence Contract（最小證據集 \+ 目錄樹 \+ Secrets Zero）**

### **12.1 Evidence Minimum Output Set（硬性；Fail-Closed）**

SSOT：A0 `[ANCHOR:OMOC-BP-1000] §10.2`（最低不得少於四件套 \+ bundle）

根目錄必須存在：

* `verdict.json`  
* `evidence_index.md`  
* `checks_manifest.json`  
* `evidence_bundle.tgz`  
  （建議另含：`bundle_audit.json`）

### **12.2 WP-006 特有補充證據（Required Check Presence 觀測證據）**

至少需包含（放在 `evidence/_acceptance/<ts>/`）：

* `log/L4-workflow-scan.log`（RBWI L4）  
* `ercc_expected/*`（expected contexts 萃取）  
* `ercc_observed/pull_request/*`（observed contexts 收集）  
  \-（若 MQ）`mq_probe/*`（merge\_group runs/head\_sha/observed.merge\_group）  
* `log/SK08-pack.log`（打包證據）

### **12.3 目錄樹（示例）**

repo\_root/  
  verdict.json  
  checks\_manifest.json  
  evidence\_index.md  
  evidence\_bundle.tgz  
  bundle\_audit.json                      (recommended)  
  evidence/\_acceptance/\<ts\>/  
    log/  
      WI-006-010.repo.txt  
      L4-workflow-scan.log  
      SK08-pack.log  
    baseline/                            (from SK01)  
    bk/  
      .github/workflows/...              (BK-006-002)  
      api/                               (BK-006-003)  
    ercc\_expected/                       (from SK03)  
    ercc\_observed/  
      pull\_request/                      (from SK04)  
      merge\_group/                       (from SK09, if MQ)  
    mq\_probe/                            (if MQ)

### **12.4 Secrets Zero（敏感資訊遮罩）**

* **禁止**把 token、cookie、私鑰、內網 URL、機密 headers 寫進 `evidence/*`、log、bundle。  
* `bundle_audit.json` 若檢出可疑內容：  
  * 立刻 FAIL\_CLOSED（安全阻斷）  
  * 開 TT（TT-006-SECRETS-001）並做清理重打包

---

## **13\) TT Register（CR\_OPEN=0；Fail-Closed）**

欄位：`tt_id / title / reason / related_rq / close_conditions / retest_steps / owner_role / status`

### **TT-006-CANONICAL-MISMATCH-001**

* `title`：Required check canonical 名稱與藍圖示例不一致時的 Trace 補齊  
* `reason`：`UNVERIFIED`  
* `related_rq`：`RQ-006-001`  
* `close_conditions`：  
  * 在本文件 §10.2 明示 repo canonical 名稱（如非 `ci / omoc-gate`）  
  * 在 `checks_manifest.json.required_check_name_contract` 記錄 canonical \+ 理由 \+ 對應規則來源  
* `retest_steps`：重跑 WI-006-040/060/070，確保 observed 內包含 canonical  
* `owner_role`：WP-006 Owner  
* `status`：`TEMP_CLOSED`

### **TT-006-ERCC-EXPECTED-EMPTY-001**

* `title`：ERCC expected 為空（尚未設定 rulesets/branch protection 或權限不足）  
* `reason`：`GAP|UNVERIFIED`  
* `related_rq`：`RQ-006-003`  
* `close_conditions`：expected 非空；且可回放來源（BK-006-003 或 UI 證據）  
* `retest_steps`：重跑 SK03，再跑 SK06  
* `owner_role`：WP-006 Owner  
* `status`：`TEMP_CLOSED`

### **TT-006-WF-TRIGGER-001**

* `title`：required-check workflows triggers 不完整（缺 pull\_request 或 MQ 缺 merge\_group）  
* `reason`：`GAP|RISK`  
* `related_rq`：`RQ-006-002`  
* `close_conditions`：`L4-workflow-scan.log` 能證明 triggers 完整；PR/MQ 能回報 required contexts  
* `retest_steps`：重跑 WI-006-030 \+ WI-006-060/070；（若 MQ）WI-006-080  
* `owner_role`：GitHub CI / Workflow Owner  
* `status`：`TEMP_CLOSED`

### **TT-006-MQ-NO-RUN-001**

* `title`：啟用 MQ 時缺少 merge\_group runs（無法驗證 merge\_group 回報）  
* `reason`：`UNVERIFIED|DRIFTABLE`  
* `related_rq`：`RQ-006-004|RQ-006-008`  
* `close_conditions`：能抓到 merge\_group run，且 observed.merge\_group 覆蓋 expected  
* `retest_steps`：啟用/使用 merge queue 產生 merge\_group run → 跑 SK09 → 跑 SK06（OMOC\_MQ=1）  
* `owner_role`：Repo Admin / Merge Queue Owner  
* `status`：`TEMP_CLOSED`

### **TT-006-WEB-DRIFT-MQ-001**

* `title`：merge queue / merge\_group 行為與 UI 路徑漂移追蹤  
* `reason`：`DRIFTABLE`  
* `related_rq`：`RQ-006-008`  
* `close_conditions`：Web Evidence 重新驗證；若 GitHub Docs 變更導致流程差異，更新 §8/§10.5  
* `retest_steps`：每季（或平台更新後）重查 §15 W-006-001/W-006-002  
* `owner_role`：WP Maintainer  
* `status`：`TEMP_CLOSED`

### **TT-006-WEB-DRIFT-RULESETS-001**

* `title`：Rulesets「required status checks」欄位/來源（expected source app）漂移追蹤  
* `reason`：`DRIFTABLE`  
* `related_rq`：`RQ-006-008`  
* `close_conditions`：重新驗證 Web Evidence；必要時更新 §8.1  
* `retest_steps`：每季重查 §15 W-006-003  
* `owner_role`：WP Maintainer  
* `status`：`TEMP_CLOSED`

### **TT-006-WEB-DRIFT-STATUSCHECKS-001**

* `title`：required status checks 7-day 規則、up-to-date 行為漂移追蹤  
* `reason`：`DRIFTABLE`  
* `related_rq`：`RQ-006-008`  
* `close_conditions`：重新驗證 Web Evidence；必要時更新 §8.2/§11.4  
* `retest_steps`：每季重查 §15 W-006-004/W-006-005  
* `owner_role`：WP Maintainer  
* `status`：`TEMP_CLOSED`

### **TT-006-WEB-DRIFT-API-001**

* `title`：branch protection / required\_status\_checks API 端點與欄位漂移追蹤  
* `reason`：`DRIFTABLE`  
* `related_rq`：`RQ-006-008`  
* `close_conditions`：重新驗證 REST Docs；必要時更新 BK-006-003  
* `retest_steps`：每季重查 §15 W-006-006  
* `owner_role`：WP Maintainer  
* `status`：`TEMP_CLOSED`

---

## **14\) Drift & Decision Log（裁決紀錄）**

### **14.1 Authority Stack 漂移裁決：A3 r1 ⇒ r2**

* **決定**：本文件 A3 一律指向 `/mnt/data/OMOC_實作+WP總表_v4.0.1-r2.md`；並標記 r1 superseded（符合 Known Required Patches \#1）。  
* **影響**：舊版若仍引用 r1，視為可稽核性風險（來源漂移） ⇒ 文件層已修補；執行層若還在用 r1 產物，需另開專案層 TT（不在 WP-006 內硬塞）。

### **14.2 移除非法殘留引用（ / oaicite）**

* **決定**：新版完全移除 `:contentReference[...]`、`oaicite` 等殘渣；改為 §15 Web Evidence Index（符合 Known Required Patches \#2）。

### **14.3 版本策略裁決：assumed ⇒ v4.0.1-r2**

* **決定**：版本改為 `v4.0.1-r2`；不再使用 assumed 字樣（符合 Known Required Patches \#3）。

### **14.4 Web URL 健康度裁決**

* **決定**：GitHub Docs 連結一律使用乾淨可用 URL（無 `docs.github.com/./`、無 UTM）；並在 §15 記錄 `accessed_at`（符合 Known Required Patches \#4）。

---

## **15\) Web Evidence Index（SUPPORT-only；至少 5 條）**

每條必含：`id / title / publisher / url / accessed_at(Asia/Taipei) / why_relevant / drift_action`

### **W-006-001**

* `title`：Managing a merge queue  
* `publisher`：GitHub Docs  
* `url`：[https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/configuring-pull-request-merges/managing-a-merge-queue](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/configuring-pull-request-merges/managing-a-merge-queue)  
* `accessed_at`：2026-02-18T15:05:00+08:00  
* `why_relevant`：merge queue 需要 `merge_group` 事件；未加可能導致 required checks 在 MQ 不回報  
* `drift_action`：`create_TT`（TT-006-WEB-DRIFT-MQ-001）  
  ([GitHub Docs](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/configuring-pull-request-merges/managing-a-merge-queue))

### **W-006-002**

* `title`：Webhook events and payloads（merge\_group checks\_requested）  
* `publisher`：GitHub Docs  
* `url`：[https://docs.github.com/en/webhooks/webhook-events-and-payloads](https://docs.github.com/en/webhooks/webhook-events-and-payloads)  
* `accessed_at`：2026-02-18T15:05:00+08:00  
* `why_relevant`：釐清 merge\_group.checks\_requested 語意與「該回報到哪裡」（checks/statuses）  
* `drift_action`：`monitor`（納入 TT-006-WEB-DRIFT-MQ-001）  
  ([GitHub Docs](https://docs.github.com/en/webhooks/webhook-events-and-payloads))

### **W-006-003**

* `title`：Available rules for rulesets（Require status checks）  
* `publisher`：GitHub Docs  
* `url`：[https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-rulesets/available-rules-for-rulesets](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-rulesets/available-rules-for-rulesets)  
* `accessed_at`：2026-02-18T15:05:00+08:00  
* `why_relevant`：rulesets 的 required status checks 規則定義與可能的 expected source（app）  
* `drift_action`：`create_TT`（TT-006-WEB-DRIFT-RULESETS-001）  
  ([GitHub Docs](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-rulesets/available-rules-for-rulesets))

### **W-006-004**

* `title`：Troubleshooting required status checks（7-day rule）  
* `publisher`：GitHub Docs  
* `url`：[https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/collaborating-on-repositories-with-code-quality-features/troubleshooting-required-status-checks](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/collaborating-on-repositories-with-code-quality-features/troubleshooting-required-status-checks)  
* `accessed_at`：2026-02-18T15:05:00+08:00  
* `why_relevant`：required status checks 的 7 天限制與常見卡點  
* `drift_action`：`create_TT`（TT-006-WEB-DRIFT-STATUSCHECKS-001）  
  ([GitHub Docs](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/collaborating-on-repositories-with-code-quality-features/troubleshooting-required-status-checks))

### **W-006-005**

* `title`：About protected branches（Strict vs Loose / up-to-date before merging）  
* `publisher`：GitHub Docs  
* `url`：[https://docs.github.com/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches](https://docs.github.com/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)  
* `accessed_at`：2026-02-18T15:05:00+08:00  
* `why_relevant`：Strict/Loose 導致 required builds 與風險取捨，直接影響 required checks 的「可回報」與「是否算數」  
* `drift_action`：`create_TT`（TT-006-WEB-DRIFT-STATUSCHECKS-001）  
  ([GitHub Docs](https://docs.github.com/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches))

### **W-006-006**

* `title`：REST API endpoints for protected branches / required\_status\_checks contexts  
* `publisher`：GitHub Docs  
* `url`：[https://docs.github.com/en/rest/branches/branch-protection](https://docs.github.com/en/rest/branches/branch-protection)  
* `accessed_at`：2026-02-18T15:05:00+08:00  
* `why_relevant`：BK-006-003 的 API 匯出與端點參考（欄位/端點屬飄移）  
* `drift_action`：`create_TT`（TT-006-WEB-DRIFT-API-001）  
  ([GitHub Docs](https://docs.github.com/en/rest/branches/branch-protection))

---

## **16\) machine\_summary.json（機讀摘要）**

{  
  "doc\_id": "OMOC\_WP-006+RB+WI",  
  "title": "Phase-L/L4 CI Baseline \+ Required Check Presence",  
  "version": "v4.0.1-r2",  
  "phase": "Phase-L/L4",  
  "overall\_verdict": "TEMP\_CLOSED",  
  "cr\_open": 0,  
  "baseline\_web\_date": "2026-02-14",  
  "generated\_at\_tz": "2026-02-18T15:05:00+08:00",  
  "sources\_policy": {  
    "files\_first": true,  
    "no\_source\_no\_norm": true,  
    "web\_support\_only": true,  
    "fail\_closed": true  
  },  
  "authority\_stack": \[  
    {  
      "id": "A0",  
      "path": "/mnt/data/OMOC\_藍圖\_v4.0.1-r1.md",  
      "locators": \["ANCHOR:OMOC-BP-1000"\]  
    },  
    {  
      "id": "A1",  
      "path": "/mnt/data/OMOC\_施工RB+WI\_合冊\_v4.0.1-r1.md",  
      "locators": \["ANCHOR:OMOC-RBWI-L4"\]  
    },  
    {  
      "id": "A2",  
      "path": "/mnt/data/OMOC\_施工skills\_合冊\_v4.0.1-r2.md",  
      "locators": \[  
        "omoc-skill-omoc-baseline-snapshot",  
        "omoc-skill-omoc-ercc-extract",  
        "omoc-skill-omoc-context-observe",  
        "omoc-skill-omoc-ercc-diff-verdict",  
        "omoc-skill-omoc-evidence-packager",  
        "omoc-skill-omoc-mq-merge-group-probe",  
        "omoc-skill-omoc-context-drift-guard"  
      \]  
    },  
    {  
      "id": "A3",  
      "path": "/mnt/data/OMOC\_實作+WP總表\_v4.0.1-r2.md",  
      "note": "r1 superseded"  
    }  
  \],  
  "gates": \[  
    "G-006-PR-TRIGGER",  
    "G-006-NAME",  
    "G-006-PR-REPORT",  
    "G-006-ERCC",  
    "G-006-MQ",  
    "G-006-EVIDENCE"  
  \],  
  "evidence\_minset": \[  
    "verdict.json",  
    "evidence\_index.md",  
    "checks\_manifest.json",  
    "evidence\_bundle.tgz"  
  \],  
  "tt\_ids": \[  
    "TT-006-CANONICAL-MISMATCH-001",  
    "TT-006-ERCC-EXPECTED-EMPTY-001",  
    "TT-006-WF-TRIGGER-001",  
    "TT-006-MQ-NO-RUN-001",  
    "TT-006-WEB-DRIFT-MQ-001",  
    "TT-006-WEB-DRIFT-RULESETS-001",  
    "TT-006-WEB-DRIFT-STATUSCHECKS-001",  
    "TT-006-WEB-DRIFT-API-001"  
  \],  
  "web\_evidence\_ids": \[  
    "W-006-001",  
    "W-006-002",  
    "W-006-003",  
    "W-006-004",  
    "W-006-005",  
    "W-006-006"  
  \],  
  "anchors\_used": \[  
    "omoc-wp-006-0000",  
    "omoc-wp-006-0007-runbook",  
    "omoc-wp-006-0008-wi",  
    "omoc-wp-006-0011-gates",  
    "omoc-wp-006-0013-evidence",  
    "omoc-wp-006-0014-tt",  
    "omoc-wp-006-0016-web-evidence"  
  \]  
}

---

## **17\) Changelog（本次升級修補摘要）**

* ✅ **authority\_stack 修正**：A3 改為 `OMOC_實作+WP總表_v4.0.1-r2`，並記錄 r1 superseded（§14）  
* ✅ **移除非法殘留**：清除 `:contentReference[...] / oaicite` 類殘渣，改為本文件內建 Web Evidence Index（§15）  
* ✅ **版本對齊**：由 assumed 改為 `v4.0.1-r2`（§0）  
* ✅ **Runbook/WI 補強**：依 RBWI L4 \+ skills（SK01/03/04/06/08/09）工程化落地（§6、§7）  
* ✅ **BK/回滾策略補齊**：新增 BK-006-001\~003 與回滾指令（§9）  
* ✅ **Gates/驗收/證據補齊**：G-006-\* 全量定義 \+ 三層驗收（存在/被要求/有回報）+ Evidence Minset（§10\~§12）  
* ✅ **CR\_OPEN=0**：所有缺口/飄移點已轉 TT，並提供 close\_conditions/retest\_steps（§13）

---

## **18\) Self-Audit Checklist（自我稽核）**

* 唯一輸出為「完整新版《OMOC\_WP-006+RB+WI》單檔 Markdown」  
* Files-first：所有規範性要求均回指 SSOT locators（§3、§5、§10、§12）  
* No-Source-No-Norm：Gate/DoD/必做皆可回指（A0/A1/A2）  
* Web SUPPORT-only：Web 只用於飄移點，且已建 TT（§15、§13）  
* CR\_OPEN=0：所有缺口/未驗證/漂移皆轉 TT（§13）  
* 工程性覆蓋：補齊 Runbook/WI、BK、Gates、Acceptance、Evidence、TT、Decision、Web Evidence、machine\_summary  
* 不含不相容殘留：無 `:contentReference[...]` / `oaicite` / 外部聊天連結當 TOC  
* TOC 可點擊、anchors 穩定（§1）  
* Scope-Lock：僅 WP-006；後續 WP 只以 TT / cross-check 方式處理（§13）  
* 若存在未完成項：已在 `overall_verdict=TEMP_CLOSED` 與 TT Register 明示（§0、§13）

