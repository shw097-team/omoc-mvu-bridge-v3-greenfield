# **OMOC\_RIP-E：CI Gate & Always-Report RIP（CI 關門與永遠回報）— v1.1.0**

## **A. Cover Card**

\[ANCHOR:RIPE-A-COVER\]

**摘要（≤120字）**：把 WP-010/011/012 的 required checks contract、always-report、merge\_group 回報性，工程化落成 repo 工件包（workflows/scripts/policy/config/docs），並用單一 required aggregator `omoc / ci-gate` 防止「Expected—Waiting…」與 Merge Queue 靜默卡死；供應鏈/治理掃描（RIP-F）僅作 upstream jobs，由 aggregator 永遠回報收斂。

**一句話結論**：**PR \+ merge\_group 兩路徑無法回報同名 `omoc / ci-gate` → 禁止啟用 MQ（保命條款）**。

---

## **B. Document Control**

\[ANCHOR:RIPE-B-DOC-CONTROL\]

| field | value |
| ----- | ----- |
| doc\_id | `OMOC_RIP-E` |
| version | `v1.1.0` |
| generated\_at | `2026-02-21T00:00:00+08:00` |
| timezone | `Asia/Taipei` |
| supersedes | `OMOC_RIP-E_v1.0.0` |
| aligned\_wps | `WP-010` / `WP-011` / `WP-012` (+ interface: `WP-013` / `WP-014`) |
| overall\_verdict | `TEMP_CLOSED` |
| scope\_status | `WSP_SCOPE_MISSING (SSOT GAP)` |
| CR\_OPEN | `0`（所有缺口以 TT 承接） |

---

## **C. TOC（本文內錨點）**

\[ANCHOR:RIPE-C-TOC\]

* [A. Cover Card](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999bacf-21c4-83a4-9aee-e88cea068929#a-cover-card)  
* [B. Document Control](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999bacf-21c4-83a4-9aee-e88cea068929#b-document-control)  
* [C. TOC](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999bacf-21c4-83a4-9aee-e88cea068929#c-toc)  
* [D. Reader Guide（Diátaxis）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999bacf-21c4-83a4-9aee-e88cea068929#d-reader-guide)  
* [E. Anchor Registry](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999bacf-21c4-83a4-9aee-e88cea068929#e-anchor-registry)  
* [F. Authority & SSOT Resolution](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999bacf-21c4-83a4-9aee-e88cea068929#f-authority-ssot)  
* [G. Scope / Non-Goals / Route-Out](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999bacf-21c4-83a4-9aee-e88cea068929#g-scope-routeout)  
* [H. Requirements（RIPE-REQ-\#\#\#）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999bacf-21c4-83a4-9aee-e88cea068929#h-requirements)  
* [I. Contract：Required Checks / Always-Report / merge\_group / MQ Readiness](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999bacf-21c4-83a4-9aee-e88cea068929#i-contracts)  
* [J. Gates / DoD / Acceptance（PASS/TEMP\_CLOSED/FAIL\_CLOSED）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999bacf-21c4-83a4-9aee-e88cea068929#j-gates-dod)  
* [K. Findings → Closure Matrix（逐條閉環）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999bacf-21c4-83a4-9aee-e88cea068929#k-closure-matrix)  
* [L. Traceability（SSOT→RIP-E / Findings→Fix / Legacy→New）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999bacf-21c4-83a4-9aee-e88cea068929#l-traceability)  
* [M. Repo Artifacts Pack（FILE-BLOCK 可抽取落地）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999bacf-21c4-83a4-9aee-e88cea068929#m-artifacts-pack)  
* [N. Runbook（可重跑）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999bacf-21c4-83a4-9aee-e88cea068929#n-runbook)  
* [O. Work Instructions（WI 任務卡）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999bacf-21c4-83a4-9aee-e88cea068929#o-wi)  
* [P. TT Register（Fail-Closed；不得為 0）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999bacf-21c4-83a4-9aee-e88cea068929#p-tt-register)  
* [Q. Web Evidence Appendix（SUPPORT-only；漂移欄位化）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999bacf-21c4-83a4-9aee-e88cea068929#q-web-evidence)  
* [R. Change Log](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999bacf-21c4-83a4-9aee-e88cea068929#r-change-log)  
* [S. machine\_summary.json（內嵌）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999bacf-21c4-83a4-9aee-e88cea068929#s-machine-summary)  
* [T. Self-Audit（RAG-Triad \+ 硬約束核對）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999bacf-21c4-83a4-9aee-e88cea068929#t-self-audit)

---

## **D. Reader Guide（Diátaxis）**

\[ANCHOR:RIPE-D-READER-GUIDE\]

**Tutorial（第一次走通）**

1. 套用本文 [M](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999bacf-21c4-83a4-9aee-e88cea068929#m-artifacts-pack) 的 FILE-BLOCK 到 repo。  
2. 開 PR：確認 required check **`omoc / ci-gate`** 出現結論（success/failure）。  
3. 若要啟用 MQ：先跑 `scripts/omoc_mq_readiness_check.sh`（輸出 JSON；`ready=false` 即停止）。  
4. 啟用 MQ 後：用 `docs/MQ_RUN_MATCHING.md` 的模板收集 **PR vs merge\_group** 兩份 check-runs 取證（避免 MQ 參考錯 run）。

**How-to（故障排除）**

* Pending/skip/不觸發：看 [I](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999bacf-21c4-83a4-9aee-e88cea068929#i-contracts) 與 [J](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999bacf-21c4-83a4-9aee-e88cea068929#j-gates-dod) 的「Skip Hazard / Always-Report / merge\_group 觸發」禁則。  
* 命名漂移：直接跑 [I.1](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999bacf-21c4-83a4-9aee-e88cea068929#i1-required-check-name-lock) 的 `rg` 檢查（斜線寫法命中=0）。

**Reference（規格查表）**

* Required checks contract：WP-010  
* Always-Report：WP-011  
* merge\_group / MQ probe：WP-012  
* MQ enablement（越界導流）：WP-013  
* Drift/closure：WP-014

---

## **E. Anchor Registry**

\[ANCHOR:RIPE-E-ANCHOR-REGISTRY\]

| section | anchor |
| ----- | ----- |
| Cover Card | `#a-cover-card` |
| Document Control | `#b-document-control` |
| TOC | `#c-toc` |
| Reader Guide | `#d-reader-guide` |
| Anchor Registry | `#e-anchor-registry` |
| Authority & SSOT | `#f-authority-ssot` |
| Scope/Route-Out | `#g-scope-routeout` |
| Requirements | `#h-requirements` |
| Contracts | `#i-contracts` |
| Gates/DoD | `#j-gates-dod` |
| Closure Matrix | `#k-closure-matrix` |
| Traceability | `#l-traceability` |
| Artifacts Pack | `#m-artifacts-pack` |
| Runbook | `#n-runbook` |
| WI | `#o-wi` |
| TT Register | `#p-tt-register` |
| Web Evidence | `#q-web-evidence` |
| Change Log | `#r-change-log` |
| Machine Summary | `#s-machine-summary` |
| Self-Audit | `#t-self-audit` |

---

## **F. Authority & SSOT Resolution**

\[ANCHOR:RIPE-F-AUTHORITY-SSOT\]

### **F.1 Authority Stack（NORMATIVE / SSOT；不得被 SUPPORT 覆寫）**

* `N1`《OMOC\_藍圖\_v4.0.1-r1》：治理邊界/契約/Route-Out  
* `N2`《OMOC\_施工RB+WI\_合冊\_v4.0.1-r1》：Phase-G（G2/G4）與 Fail-Closed/Guardrails  
* `N3`《OMOC\_施工skills\_合冊\_v4.0.1-r2》：施工/驗收技能與 evidence 契約（注意：本合冊出現的 required-check 命名若與 WP-010/本 RIP-E 不一致，必以 WP-010/本 RIP-E（SSOT 對齊結果）為準並 TT 記錄差異）  
* `N4`《OMOC\_實作+WP總表\_v4.0.1-r2》：Contract Blocks Registry / Gate Registry / 版本鎖  
* `N5`《OMOC\_總體RIP修補方案》：RIP-E 目的/落點/DoD（保命條款）  
* `N6..N10`《WP-010..WP-014（v4.0.1-r2）》：本 RIP-E 的工程接口（required checks / always-report / merge\_group / MQ / drift）

### **F.2 SUPPORT（不得升格；只補平台易變事實/案例/工具樣板）**

* 《OMOC\_RIP\_外部資料\*.md》（含 CLAUDE/GPT/GEMINI）：僅 SUPPORT-only；需雙來源/漂移欄位化；不一致→WEB-CONFLICT→TT。

### **F.3 No-Source-No-Norm（Fail-Closed）**

* 任何 MUST/不得/FAIL\_CLOSED/TEMP\_CLOSED 若無 **SSOT locator（檔名+可定位章節/anchor）** → **UNVERIFIED → TT → TEMP\_CLOSED**。

---

## **G. Scope / Non-Goals / Route-Out**

\[ANCHOR:RIPE-G-SCOPE-ROUTEOUT\]

### **G.1 In-Scope**

* 把 required checks contract \+ always-report \+ merge\_group 回報性落成 **repo artifacts pack**（workflows/scripts/policy/config/docs）。  
* 禁止 required workflow 被 workflow-level filters / if / paths-ignore / concurrency cancel 等機制「跳過而不回報」。  
* 供應鏈/治理掃描（RIP-F）以 **upstream jobs** 形式接入，但 required check 仍維持 **單一 aggregator**。

### **G.2 Non-Goals**

* **不替你在 UI 點設定**（rulesets/branch protection/MQ enable）：只提供 probes/scripts/契約；真正啟用 MQ → WP-013。  
* 不把 web/外部文件的「指令性句子」升格為規範（防注入：DATA≠INSTRUCTION）。

### **G.3 Route-Out Map（topic → target）**

* MQ 啟用與驗證：WP-013  
* rulesets 快照/政策（治理即程式碼）：WP-009  
* drift/closure 集中治理：WP-014

---

## **H. Requirements（RIPE-REQ-\#\#\#）**

\[ANCHOR:RIPE-H-REQS\]

規則：每條 RIPE-REQ 必含 `ssot_locator`、`acceptance`、`fail_action`（含機械可驗證命令/rc）。

### **RIPE-REQ-001：Required Checks Contract（expected/observed/diff）必可追溯**

* ssot\_locator：WP-010 Required Checks Contract Spec  
* acceptance：能生成 `evidence/checks_manifest.json`，且 diff/裁決可機械判定（`jq` 可解析）。  
* fail\_action：建 TT（見 [P](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999bacf-21c4-83a4-9aee-e88cea068929#p-tt-register)），並以 `TEMP_CLOSED` 或 `FAIL_CLOSED` 裁決（依 diff/缺證據嚴重度）。

### **RIPE-REQ-002：Always-Report（PR \+ merge\_group）不得永久 pending**

* ssot\_locator：WP-011 Skip Hazard / Always-Report wrappers；RBWI Phase-G G2  
* acceptance：required check **`omoc / ci-gate`** 在 PR 與 merge\_group 都必產生結論（success/failure）。  
* fail\_action：若發生 pending / workflow 未觸發 / required job 被 skip → **FAIL\_CLOSED**（並建 TT）。

### **RIPE-REQ-003：merge\_group 觸發對齊（MQ path 同名回報）**

* ssot\_locator：WP-012 merge\_group trigger alignment \+ MQ probe  
* acceptance：workflow 同時訂閱 `pull_request` \+ `merge_group(types: [checks_requested])`，且 required aggregator job 不可被 skip。  
* fail\_action：readiness 直接 `ready=false`；禁止啟用 MQ。

### **RIPE-REQ-004：MQ 保命條款（readiness 未過＝不准啟用）**

* ssot\_locator：《總體RIP修補方案》RIP-E DoD 明示  
* acceptance：`scripts/omoc_mq_readiness_check.sh` 輸出 JSON；`ready=true` 才允許進 WP-013。  
* fail\_action：`exit 1`（machine-readable JSON 仍輸出）；結案為 FAIL\_CLOSED 或阻斷性 TEMP\_CLOSED（視缺口是否可在不觸碰 UI 的情況下修補）。

### **RIPE-REQ-005：RIP-F（供應鏈/治理掃描）必接入 CI gate upstream jobs，但不得成為 required check**

* ssot\_locator：《總體RIP修補方案》RIP-F：供應鏈硬化落點與原則；required check 仍維持單一 aggregator  
* acceptance：workflow 內存在 upstream jobs（pinning/scorecard/zizmor 等），其結果由 `ci-gate` 聚合輸出；required contexts 只鎖 `omoc / ci-gate`。  
* fail\_action：upstream job 失敗可被 `ci-gate` 收斂成 failure（永遠回報），但不得造成 required job skip。

---

## **I. Contracts**

\[ANCHOR:RIPE-I-CONTRACTS\]

### **I.1 Required Check Name Lock**

\[ANCHOR:RIPE-I1-NAME-LOCK\]

**唯一允許的 required check 名稱（exact）**：`omoc / ci-gate`

* ✅ 正例：`omoc / ci-gate`  
* ❌ 反例：`omoc/ci-gate`（斜線寫法一律禁止；命中即 FAIL\_CLOSED）

**機械驗證（必跑）**

* `rg -n "omoc/ci-gate" -S .` → **命中=0**  
* `rg -n "omoc / ci-gate" -S .` → **命中\>=1**

來源：審查報告明確要求「空白/斜線兩寫法不得共存」，否則容易造成 ruleset/required checks contract 漂移與 MQ 卡死。

### **I.2 Required Checks Contract（expected vs observed）**

* `config/required_checks_contract.json`：**expected contexts** 的結構化宣告（若無法取得 rulesets/branch protection 快照→不得腦補→TT/TEMP\_CLOSED）。  
* `scripts/omoc_observe_required_checks.sh`：觀測 check-runs \+ statuses（observed）。  
* `scripts/omoc_generate_checks_manifest.sh`：輸出 `evidence/checks_manifest.json`（expected/observed/diff/verdict）。  
* `scripts/omoc_drift_guard_required_checks.sh`：diff≠0 → `exit 42`（TEMP\_CLOSED）；FAIL\_CLOSED → `exit 1`。

### **I.3 Always-Report（聚合規則）**

* required aggregator job：`ci-gate` 必須 `if: ${{ always() }}`，且對 `needs` 結果分類後輸出單一結論。  
* 禁則：workflow-level `paths-ignore` / `branches-ignore` 造成整個 workflow 不觸發 → 直接 FAIL\_CLOSED（因 required check 會永久 pending）。

### **I.4 concurrency / cancel 行為（MAJOR）**

* 禁則：required workflow 內若存在 `cancel-in-progress: true` 且可能取消 required job → readiness 必須 fail（或採 required job 豁免策略）。  
* 本版落地：readiness 靜態掃描 `cancel-in-progress`（見 artifacts）。

### **I.5 MQ Readiness I/O Contract（阻斷級）**

* `scripts/omoc_mq_readiness_check.sh` 必輸出固定 JSON schema（便於 WP-013 直接 consume）；`ready=false` 時 `exit 1`。

---

## **J. Gates / DoD / Acceptance**

\[ANCHOR:RIPE-J-GATES-DOD\]

### **J.1 Gate Registry（本 RIP-E）**

| gate\_id | meaning | pass\_criteria | fail\_action |
| ----- | ----- | ----- | ----- |
| GATE-RIPE-PR-ALWAYS-REPORT | PR 路徑必回報 `omoc / ci-gate` | PR 有同名 check 結論 | FAIL\_CLOSED \+ TT |
| GATE-RIPE-MG-ALWAYS-REPORT | merge\_group 路徑必回報 `omoc / ci-gate` | merge\_group run 有同名 check 結論 | FAIL\_CLOSED \+ TT |
| GATE-RIPE-MQ-ENABLE-BLOCK | readiness 未過＝阻擋 MQ | readiness JSON `ready=true` | 禁止啟用 MQ（Fail-Closed） |

注意：v1.0.0 的 Gate Registry 曾被污染字串破壞可稽核性；本版以 Doc Hygiene Gate 阻斷再發。

### **J.2 DoD（硬門檻；Fail-Closed）**

1. PR 與 merge\_group 兩路徑皆可回報同名 required check：`omoc / ci-gate`。  
2. 未達成 1\) → **不准啟用 MQ**。  
3. required checks contract 可追溯（expected/observed/diff/verdict \+ TT lifecycle）。  
4. always-report：不得因 skip/filters/concurrency 而永久 pending。

### **J.3 PASS / TEMP\_CLOSED / FAIL\_CLOSED（裁決表）**

| state | conditions（必要且充分） | machine\_check |
| ----- | ----- | ----- |
| PASS | PR \+ merge\_group 皆回報 `omoc / ci-gate` 且 checks\_manifest diff=0（或在 contract 允許範圍內） | `jq` 驗 manifest；run matching 證據齊備 |
| TEMP\_CLOSED | 無法做 runtime（例如 MQ 未啟用）但已完成靜態 readiness、輸出契約、並有 TT 承接 closure | readiness JSON \+ TT |
| FAIL\_CLOSED | required check 永久 pending / merge\_group 不觸發 / 命名漂移 / workflow-level filters / hygiene scan 命中 | `rg`/readiness/hygiene 任一失敗即 fail |

---

## **K. Findings → Closure Matrix（逐條閉環）**

\[ANCHOR:RIPE-K-CLOSURE-MATRIX\]

規則：本表 **全量列出**《OMOC\_RIP-E\_v1.0.0\_審查報告》已出現的 finding\_id，並給 closure locus（章節/FILE-BLOCK）與機械驗證。

| finding\_id | category | severity | proof\_locator | impact | fix\_strategy | patch\_locus（New） | closure\_check（mechanical） | TT |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| F-R-001 | Risk | BLOCKER | 全庫未命中 WSP 條文 | scope 越界無法裁決 | 不腦補；以 TT 承接並在本文 Scope 明示暫行裁決 | [G](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999bacf-21c4-83a4-9aee-e88cea068929#g-scope-routeout) \+ [P](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999bacf-21c4-83a4-9aee-e88cea068929#p-tt-register) | `rg -n "WSP" /mnt/data/*.md`（需在 SSOT 出現） | TT-WSP-SCOPE-001 |
| F-D-001 | Drift | BLOCKER | 命名斜線/空白混用 | ruleset/contract 漂移、MQ 卡死 | 全文/工件唯一化 `omoc / ci-gate` \+ 禁則 | [I.1](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999bacf-21c4-83a4-9aee-e88cea068929#i1-required-check-name-lock) \+ FILE-BLOCK | `rg 'omoc/ci-gate'`\=0 | TT-RIPE-NAME-DRIFT-001 |
| F-C-001 | Consistency | BLOCKER | `:contentReference[...]` 污染 | 不可稽核/不可定位 | 清除污染 \+ 新增 Doc Hygiene Gate | [M](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999bacf-21c4-83a4-9aee-e88cea068929#m-artifacts-pack) | hygiene script exit 0 | TT-RIPE-DOC-HYGIENE-001 |
| F-E-001 | Feasibility | MAJOR | 缺最小 repo 驗收劇本 | runtime 無證據鏈 | 補 runbook \+ evidence locators \+ run matching doc | [N](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999bacf-21c4-83a4-9aee-e88cea068929#n-runbook) \+ [M](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999bacf-21c4-83a4-9aee-e88cea068929#m-artifacts-pack) | 產出 check\_runs.json & status.json | TT-RIPE-RUNTIME-001 |
| F-A-001 | Destructive | MAJOR | MQ 可能採信錯 run / merge\_group 不觸發 | 靜默卡死 | 新增 MQ run matching 最小模板 \+ 納入 DoD | `docs/MQ_RUN_MATCHING.md` | 按模板收集兩份證據 | TT-RIPE-MQ-RUN-MATCH-001 |
| F-B-002 | Drift | MAJOR | Web drift 欄位化不足 | 長期漂移不可追 | Web Evidence 欄位化（published/accessed/drift\_action/web\_refs\>=2） | [Q](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999bacf-21c4-83a4-9aee-e88cea068929#q-web-evidence) | 表格欄位齊全 | TT-RIPE-WEB-FIELDS-001 |
| F-D-002 | Logic | MAJOR | readiness 停機規則缺可執行阻擋點 | 先開 MQ 再說 | readiness 固定 JSON \+ exit code；WP-013 可 consume | `scripts/omoc_mq_readiness_check.sh` | `jq -e .` \+ rc 行為 | TT-RIPE-READINESS-IO-001 |
| F-D-003 | Logic | MINOR | timeout\_unknown 缺保守處置 | 超時治理口號化 | timeout 未知→readiness fail（阻擋 MQ） | readiness script \+ policy | readiness JSON `timeout_known=false` → ready=false | TT-RIPE-TIMEOUT-UNKNOWN-001 |
| F-F-002 | Risk | MAJOR | SPEC-LEAK（web 指令句誤升格） | drift/越權 | Web Appendix 明示 DATA-only | [Q](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999bacf-21c4-83a4-9aee-e88cea068929#q-web-evidence) | 抽查 3 條含 purpose/ref | TT-RIPE-SPEC-LEAK-001 |
| F-F-003 | Risk | MAJOR | merge\_group types drift 風險 | 未來不觸發 | Web drift\_action=NEEDS-TEST \+ 重測入口 | [Q](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999bacf-21c4-83a4-9aee-e88cea068929#q-web-evidence) \+ TT | TT 有 retest | TT-RIPE-MG-TYPES-DRIFT-001 |
| F-G-001 | GlobalPatch | BLOCKER | TT Register=0 不可接受 | closure 斷鏈 | 新增 TT Register（不得為 0） | [P](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999bacf-21c4-83a4-9aee-e88cea068929#p-tt-register) | TT\>=1 | （已落地） |
| F-G-002 | GlobalPatch | MAJOR | 需 Doc Hygiene Gate | 污染再發 | hygiene script \+ workflow gate | [M](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999bacf-21c4-83a4-9aee-e88cea068929#m-artifacts-pack) | `bash scripts/omoc_doc_hygiene_check.sh` | TT-RIPE-DOC-HYGIENE-001 |
| F-G-003 | GlobalPatch | MAJOR | 需 MQ run matching doc | MQ 仍高風險 | 新增 `docs/MQ_RUN_MATCHING.md` | [M](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999bacf-21c4-83a4-9aee-e88cea068929#m-artifacts-pack) | file exists \+ ≤15行+1表 | TT-RIPE-MQ-RUN-MATCH-001 |

---

## **L. Traceability**

\[ANCHOR:RIPE-L-TRACEABILITY\]

### **L.1 SSOT → RIP-E（RIPE-REQ 映射）**

| RIPE-REQ | SSOT locator | RIP-E locus |
| ----- | ----- | ----- |
| RIPE-REQ-001 | WP-010 contract spec | [I.2](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999bacf-21c4-83a4-9aee-e88cea068929#i-contracts) \+ artifacts: contract/manifest scripts |
| RIPE-REQ-002 | WP-011 \+ RBWI G2 | workflow `ci-gate` always-report |
| RIPE-REQ-003 | WP-012 | workflow `on: merge_group` \+ readiness |
| RIPE-REQ-004 | 總體RIP修補方案 DoD | readiness JSON \+ DoD block |
| RIPE-REQ-005 | 總體RIP修補方案 RIP-F 原則 | upstream jobs \+ aggregator 收斂 |

### **L.2 Findings → Fix（指向 K 表；保留）**

* 見 [K](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999bacf-21c4-83a4-9aee-e88cea068929#k-closure-matrix)。

### **L.3 Legacy v1.0.0 → New v1.1.0（覆蓋證明）**

| Legacy section（v1.0.0） | New section（v1.1.0） | note |
| ----- | ----- | ----- |
| Cover/Doc Control/Anchor Registry | A/B/E | 結構保留、版本升級 |
| Authority/Scope/Route-Out | F/G | 明確 WSP 缺口與 TT |
| RIPE-REQ-001..005 | H | 命名/驗收/禁則加嚴 |
| Workflows/Scripts/Docs/Policy | M | FILE-BLOCK 重產（可抽取） |
| Runbook/WI | N/O | 補 run matching 與 JSON 契約 |
| Gates/DoD | J | 清除污染、加機械驗證 |
| TT / Web Evidence / Machine Summary | P/Q/S | TT 不得為 0；Web 欄位化 |

v1.0.0 存在污染與命名混用；本版已在工件與文本同時修正。

---

## **M. Repo Artifacts Pack（FILE-BLOCK）**

\[ANCHOR:RIPE-M-ARTIFACTS\]

Secrets Zero：所有敏感值一律 `<REDACTED>`。  
required check **只允許**：`omoc / ci-gate`（workflow name=`omoc`, job id=`ci-gate`）。

### **FILE-BLOCK 1 — `.github/workflows/omoc-ci-gate.yml`**

\# FILE: .github/workflows/omoc-ci-gate.yml  
name: omoc

on:  
  pull\_request:  
  merge\_group:  
    types: \[checks\_requested\]

\# 禁用 workflow-level filters（paths-ignore/branches-ignore）：  
\# 否則 required check 可能永久 pending（FAIL\_CLOSED）。

permissions:  
  contents: read

jobs:  
  \# \--- upstream jobs (SUPPORT-driven, RIP-F integration) \---  
  \# 原則：upstream 可失敗；required aggregator 必須永遠回報並收斂裁決。

  doc-hygiene:  
    runs-on: ubuntu-latest  
    steps:  
      \- uses: actions/checkout@v4  
      \- name: doc hygiene (forbidden patterns)  
        run: bash scripts/omoc\_doc\_hygiene\_check.sh

  supplychain-scorecard:  
    runs-on: ubuntu-latest  
    continue-on-error: true  
    steps:  
      \- uses: actions/checkout@v4  
      \- name: placeholder \- scorecard (SUPPORT-only)  
        run: |  
          echo "SUPPORT-only: integrate OpenSSF Scorecard here."  
          echo "If you enable it, keep it upstream and do not add as required check."

  actions-security-zizmor:  
    runs-on: ubuntu-latest  
    continue-on-error: true  
    steps:  
      \- uses: actions/checkout@v4  
      \- name: placeholder \- zizmor (SUPPORT-only)  
        run: |  
          echo "SUPPORT-only: integrate zizmor scan here."  
          echo "Keep it upstream; ci-gate aggregates."

  actions-pinning:  
    runs-on: ubuntu-latest  
    continue-on-error: true  
    steps:  
      \- uses: actions/checkout@v4  
      \- name: placeholder \- pinact (SUPPORT-only)  
        run: |  
          echo "SUPPORT-only: integrate pinact/pinning scan here."  
          echo "Keep it upstream; ci-gate aggregates."

  build-and-test:  
    runs-on: ubuntu-latest  
    continue-on-error: true  
    steps:  
      \- uses: actions/checkout@v4  
      \- name: run local acceptance (example)  
        run: bash scripts/acceptance\_local.sh

  \# \--- REQUIRED AGGREGATOR JOB (唯一 allowed required check) \---  
  ci-gate:  
    if: ${{ always() }}  
    runs-on: ubuntu-latest  
    needs:  
      \- doc-hygiene  
      \- supplychain-scorecard  
      \- actions-security-zizmor  
      \- actions-pinning  
      \- build-and-test  
    steps:  
      \- uses: actions/checkout@v4

      \- name: generate/verify required checks manifest (best-effort)  
        run: |  
          bash scripts/omoc\_observe\_required\_checks.sh || true  
          bash scripts/omoc\_generate\_checks\_manifest.sh || true  
          bash scripts/omoc\_drift\_guard\_required\_checks.sh || true

      \- name: always-report: classify upstream results  
        env:  
          NEEDS\_JSON: ${{ toJson(needs) }}  
        run: |  
          echo "${NEEDS\_JSON}" \> /tmp/needs.json  
          bash scripts/omoc\_always\_report\_wrapper.sh "$(cat /tmp/needs.json)"

### **FILE-BLOCK 2 — `policy/always_report_policy.yaml`**

\# FILE: policy/always\_report\_policy.yaml  
policy\_id: omoc\_always\_report\_policy  
version: 1  
required\_check\_context:  
  exact: "omoc / ci-gate"

rules:  
  \- rule\_id: forbid\_slash\_variant  
    description: "Disallow 'omoc/ci-gate' variant to prevent drift."  
    grep\_forbidden:  
      pattern: "omoc/ci-gate"  
      expected\_hits: 0  
    severity: FAIL\_CLOSED

  \- rule\_id: require\_space\_variant  
    description: "Require canonical 'omoc / ci-gate' presence."  
    grep\_required:  
      pattern: "omoc / ci-gate"  
      min\_hits: 1  
    severity: FAIL\_CLOSED

  \- rule\_id: always\_report\_required\_job  
    description: "Required aggregator job must always run and post a conclusion."  
    required\_job:  
      workflow\_name: "omoc"  
      job\_id: "ci-gate"  
      must\_have\_if\_always: true  
    severity: FAIL\_CLOSED

### **FILE-BLOCK 3 — `config/required_checks_contract.json`**

{  
  "contract\_id": "required\_checks\_contract",  
  "version": 1,  
  "required\_contexts": {  
    "expected": \[  
      "omoc / ci-gate"  
    \],  
    "notes": \[  
      "Only one required check is allowed: 'omoc / ci-gate'.",  
      "If rulesets/branch protection snapshot cannot be obtained, do NOT invent expected contexts; use TT \+ TEMP\_CLOSED."  
    \]  
  },  
  "timeout\_minutes": {  
    "value": null,  
    "known": false,  
    "source": "UNVERIFIED",  
    "tt\_required\_if\_unknown": "TT-RIPE-TIMEOUT-UNKNOWN-001"  
  }  
}

### **FILE-BLOCK 4 — `scripts/omoc_generate_checks_manifest.sh`**

\# FILE: scripts/omoc\_generate\_checks\_manifest.sh  
\#\!/usr/bin/env bash  
set \-euo pipefail

\# Generates evidence/checks\_manifest.json (expected vs observed vs diff) for PR context.  
\# Fail-Closed: do not invent expected contexts; read config/required\_checks\_contract.json.

ts="${OMOC\_TS:-$(date \-u \+%Y%m%dT%H%M%SZ)}"  
mkdir \-p "evidence/\_acceptance/${ts}/log" "evidence"

contract="config/required\_checks\_contract.json"  
obs\_dir="evidence/\_acceptance/${ts}/observed"  
mkdir \-p "${obs\_dir}"

if \[\[ \! \-f "${contract}" \]\]; then  
  echo "FAIL\_CLOSED: missing ${contract}" \>&2  
  exit 1  
fi

\# observed contexts file is produced by omoc\_observe\_required\_checks.sh  
if \[\[ \! \-f "${obs\_dir}/observed\_contexts.json" \]\]; then  
  echo "TEMP\_CLOSED: missing observed contexts; run omoc\_observe\_required\_checks.sh" \>&2  
  \# Still emit a manifest skeleton for auditability  
  jq \-n \--arg ts "${ts}" '  
  {  
    ts: $ts,  
    verdict: { overall: "TEMP\_CLOSED", reason: "observed contexts missing" },  
    required\_contexts\_contract: { expected: \[\], observed: \[\], diff: { missing: \[\], extra: \[\] } }  
  }' \> evidence/checks\_manifest.json  
  exit 42  
fi

expected="$(jq \-c '.required\_contexts.expected' "${contract}")"  
observed="$(jq \-c '.' "${obs\_dir}/observed\_contexts.json")"

diff\_missing="$(jq \-c \--argjson e "${expected}" \--argjson o "${observed}" '$e \- $o' \<\<\<"null")"  
diff\_extra="$(jq \-c \--argjson e "${expected}" \--argjson o "${observed}" '$o \- $e' \<\<\<"null")"

overall="PASS"  
reason="diff=0"  
if \[\[ "$(jq \-r 'length' \<\<\<"${diff\_missing}")" \!= "0" || "$(jq \-r 'length' \<\<\<"${diff\_extra}")" \!= "0" \]\]; then  
  overall="TEMP\_CLOSED"  
  reason="diff\!=0 (needs TT closure)"  
fi

jq \-n \\  
  \--arg ts "${ts}" \\  
  \--arg overall "${overall}" \\  
  \--arg reason "${reason}" \\  
  \--argjson expected "${expected}" \\  
  \--argjson observed "${observed}" \\  
  \--argjson missing "${diff\_missing}" \\  
  \--argjson extra "${diff\_extra}" \\  
  '{  
    ts: $ts,  
    verdict: { overall: $overall, reason: $reason },  
    required\_contexts\_contract: {  
      expected: $expected,  
      observed: $observed,  
      diff: { missing: $missing, extra: $extra }  
    }  
  }' \> evidence/checks\_manifest.json

jq \-e . evidence/checks\_manifest.json \>/dev/null  
echo "OK: evidence/checks\_manifest.json"

### **FILE-BLOCK 5 — `scripts/omoc_observe_required_checks.sh`**

\# FILE: scripts/omoc\_observe\_required\_checks.sh  
\#\!/usr/bin/env bash  
set \-euo pipefail

\# Observes contexts via check-runs and statuses (best-effort).  
\# Requires gh auth in runtime; if unavailable, output TEMP\_CLOSED artifact and exit 42\.

ts="${OMOC\_TS:-$(date \-u \+%Y%m%dT%H%M%SZ)}"  
mkdir \-p "evidence/\_acceptance/${ts}/observed" "evidence/\_acceptance/${ts}/log"

kind="${OMOC\_KIND:-pull\_request}"  
sha="${OMOC\_SHA:-}"

if \[\[ \-z "${sha}" \]\]; then  
  echo "TEMP\_CLOSED: OMOC\_SHA not provided" \>&2  
  jq \-n '{observed:\[\], verdict:"TEMP\_CLOSED", reason:"missing OMOC\_SHA"}' \\  
    \> "evidence/\_acceptance/${ts}/observed/observed\_contexts.json"  
  exit 42  
fi

dir="evidence/\_acceptance/${ts}/observed/${kind}"  
mkdir \-p "${dir}"  
echo "${sha}" \> "${dir}/head\_sha.txt"

set \+e  
gh api \-H "Accept: application/vnd.github+json" \\  
  "repos/{owner}/{repo}/commits/${sha}/check-runs" \> "${dir}/check\_runs.json" 2\> "${dir}/check\_runs.err"  
rc\_checks=$?

gh api \-H "Accept: application/vnd.github+json" \\  
  "repos/{owner}/{repo}/commits/${sha}/status" \> "${dir}/status.json" 2\> "${dir}/status.err"  
rc\_status=$?  
set \-e

obs\_checks='\[\]'  
if \[\[ "${rc\_checks}" \-eq 0 \]\]; then  
  obs\_checks="$(jq \-c '\[.check\_runs\[\]?.name\] | map(select(type=="string")) | unique' "${dir}/check\_runs.json")"  
fi

obs\_status='\[\]'  
if \[\[ "${rc\_status}" \-eq 0 \]\]; then  
  obs\_status="$(jq \-c '\[.statuses\[\]?.context\] | map(select(type=="string")) | unique' "${dir}/status.json")"  
fi

observed="$(jq \-n \--argjson a "${obs\_checks}" \--argjson b "${obs\_status}" '$a \+ $b | unique')"  
echo "${observed}" | jq \-c '.' \> "evidence/\_acceptance/${ts}/observed/observed\_contexts.json"  
jq \-e . "evidence/\_acceptance/${ts}/observed/observed\_contexts.json" \>/dev/null

echo "OBSERVED: evidence/\_acceptance/${ts}/observed/observed\_contexts.json"

### **FILE-BLOCK 6 — `scripts/omoc_drift_guard_required_checks.sh`**

\# FILE: scripts/omoc\_drift\_guard\_required\_checks.sh  
\#\!/usr/bin/env bash  
set \-euo pipefail

\# rc=0 PASS, rc=42 TEMP\_CLOSED (needs TT), rc=1 FAIL\_CLOSED

manifest="evidence/checks\_manifest.json"  
if \[\[ \! \-f "${manifest}" \]\]; then  
  bash scripts/omoc\_generate\_checks\_manifest.sh || true  
fi

overall="$(jq \-r '.verdict.overall' "${manifest}" 2\>/dev/null || echo "TEMP\_CLOSED")"  
if \[\[ "${overall}" \== "FAIL\_CLOSED" \]\]; then  
  echo "FAIL\_CLOSED: manifest verdict" \>&2  
  exit 1  
fi

missing="$(jq \-r '.required\_contexts\_contract.diff.missing | length' "${manifest}" 2\>/dev/null || echo 1)"  
extra="$(jq \-r '.required\_contexts\_contract.diff.extra | length' "${manifest}" 2\>/dev/null || echo 1)"

if \[\[ "${missing}" \-ne 0 || "${extra}" \-ne 0 \]\]; then  
  echo "TEMP\_CLOSED: diff\!=0 (needs TT closure)" \>&2  
  exit 42  
fi

echo "PASS: required checks contract matches observed contexts"  
exit 0

### **FILE-BLOCK 7 — `scripts/omoc_mq_readiness_check.sh`**

\# FILE: scripts/omoc\_mq\_readiness\_check.sh  
\#\!/usr/bin/env bash  
set \-euo pipefail

\# Outputs machine-readable JSON always.  
\# exit 0 \=\> ready=true  
\# exit 1 \=\> ready=false (BLOCK MQ)  
\# exit 2 \=\> FAIL\_CLOSED (hygiene/forbidden pattern)

req\_context="omoc / ci-gate"  
workflow=".github/workflows/omoc-ci-gate.yml"

ready=true  
reasons=()

\# 1\) workflow exists  
if \[\[ \! \-f "${workflow}" \]\]; then  
  ready=false  
  reasons+=("missing\_workflow:${workflow}")  
fi

\# 2\) merge\_group subscription (static)  
if \[\[ "${ready}" \== "true" \]\]; then  
  if \! rg \-n "merge\_group" "${workflow}" \>/dev/null; then  
    ready=false  
    reasons+=("missing\_merge\_group\_trigger")  
  fi  
fi

\# 3\) required job id and always()  
if \[\[ "${ready}" \== "true" \]\]; then  
  if \! rg \-n "^\\\\s\*ci-gate:\\\\s\*$" "${workflow}" \>/dev/null; then  
    ready=false  
    reasons+=("missing\_required\_job:ci-gate")  
  fi  
  if \! rg \-n "if:\\\\s\*\\\\$\\\\{\\\\{\\\\s\*always\\\\(\\\\)\\\\s\*\\\\}\\\\}" "${workflow}" \>/dev/null; then  
    ready=false  
    reasons+=("missing\_if\_always")  
  fi  
fi

\# 4\) forbid workflow-level filters (best-effort scan)  
if \[\[ "${ready}" \== "true" \]\]; then  
  if rg \-n "paths-ignore:|branches-ignore:" "${workflow}" \>/dev/null; then  
    ready=false  
    reasons+=("forbidden\_workflow\_level\_filters")  
  fi  
fi

\# 5\) concurrency cancel-in-progress forbidden (or require exemption strategy)  
if rg \-n "cancel-in-progress:\\\\s\*true" "${workflow}" \>/dev/null; then  
  ready=false  
  reasons+=("concurrency\_cancel\_in\_progress\_risk")  
fi

\# 6\) required check naming drift guard  
if rg \-n "omoc/ci-gate" \-S . \>/dev/null; then  
  echo "{\\"ready\\":false,\\"required\_check\\":\\"${req\_context}\\",\\"reasons\\":\[\\"forbidden\_name\_variant:omoc/ci-gate\\"\],\\"verdict\\":\\"FAIL\_CLOSED\\"}" | jq \-c .  
  exit 2  
fi

timeout\_known="$(jq \-r '.timeout\_minutes.known' config/required\_checks\_contract.json 2\>/dev/null || echo "false")"  
if \[\[ "${timeout\_known}" \!= "true" \]\]; then  
  ready=false  
  reasons+=("timeout\_unknown\_blocks\_mq")  
fi

verdict="TEMP\_CLOSED"  
if \[\[ "${ready}" \== "true" \]\]; then  
  verdict="PASS"  
fi

jq \-n \\  
  \--arg req "${req\_context}" \\  
  \--arg verdict "${verdict}" \\  
  \--argjson ready "${ready}" \\  
  \--argjson reasons "$(printf '%s\\n' "${reasons\[@\]}" | jq \-R . | jq \-s .)" \\  
  \--arg timeout\_known "${timeout\_known}" \\  
  '{  
    ready: $ready,  
    verdict: $verdict,  
    required\_check: $req,  
    timeout\_known: ($timeout\_known=="true"),  
    reasons: $reasons,  
    note: "If ready=false, DO NOT enable Merge Queue."  
  }' | jq \-c .

if \[\[ "${ready}" \== "true" \]\]; then  
  exit 0  
fi  
exit 1

### **FILE-BLOCK 8 — `scripts/omoc_doc_hygiene_check.sh`**

\# FILE: scripts/omoc\_doc\_hygiene\_check.sh  
\#\!/usr/bin/env bash  
set \-euo pipefail

\# FAIL\_CLOSED if forbidden contamination strings exist.  
for pat in ":contentReference\\\\\[" "oaicite:"; do  
  if rg \-n "${pat}" \-S . \>/dev/null; then  
    echo "FAIL\_CLOSED: forbidden pattern found: ${pat}" \>&2  
    rg \-n "${pat}" \-S . \>&2 || true  
    exit 1  
  fi  
done  
echo "PASS: doc hygiene"

### **FILE-BLOCK 9 — `docs/MERGE_QUEUE_READINESS.md`**

\<\!-- FILE: docs/MERGE\_QUEUE\_READINESS.md \--\>  
\# Merge Queue Readiness (OMOC)

\*\*保命條款（Fail-Closed）\*\*：若 merge\_group 無法回報與 PR \*\*同名\*\* required check：\`omoc / ci-gate\`，\*\*不准啟用 MQ\*\*。 :contentReference\[oaicite:79\]{index=79}

\#\# Ready 的最低條件（靜態）  
\- \`.github/workflows/omoc-ci-gate.yml\` 同時訂閱 \`pull\_request\` \+ \`merge\_group(types:\[checks\_requested\])\`  
\- required job：\`ci-gate\` 必須 \`if: ${{ always() }}\`  
\- 禁止 workflow-level filters（paths-ignore/branches-ignore）  
\- \`bash scripts/omoc\_mq\_readiness\_check.sh\` → JSON \`ready=true\`

\#\# 不 Ready（你要做什麼）  
\- MQ 保持 disabled  
\- 修 trigger/filters/concurrency/name drift 後重跑 readiness

### **FILE-BLOCK 10 — `docs/MQ_RUN_MATCHING.md`（≤15行 \+ 1表）**

\<\!-- FILE: docs/MQ\_RUN\_MATCHING.md \--\>  
\# MQ Run Matching (PR vs merge\_group) — Minimal Evidence

| item | PR run | merge\_group run |  
|---|---|---|  
| head\_sha | \`\<sha\>\` | \`\<sha\>\` |  
| required\_check | \`omoc / ci-gate\` | \`omoc / ci-gate\` |  
| check\_runs\_json | \`evidence/.../pr/check\_runs.json\` | \`evidence/.../mg/check\_runs.json\` |  
| conclusion | \`success|failure\` | \`success|failure\` |

Steps: (1) record queue entry SHA; (2) fetch check-runs for PR SHA and merge\_group SHA; (3) ensure MQ uses merge\_group evidence; mismatch → TT-RIPE-MQ-RUN-MATCH-001.

---

## **N. Runbook（可重跑）**

\[ANCHOR:RIPE-N-RUNBOOK\]

### **N.0 Pre-flight（靜態）**

1. `bash scripts/omoc_doc_hygiene_check.sh`（必 PASS）  
2. `rg -n "merge_group|checks_requested" .github/workflows/omoc-ci-gate.yml`（必命中）  
3. `bash scripts/omoc_mq_readiness_check.sh | jq -e .`（JSON 合法；`ready=false` 即停）

### **N.1 PR 路徑（runtime；需 repo 權限/gh auth）**

* `export OMOC_TS=<TS>`  
* `export OMOC_KIND=pull_request`  
* `export OMOC_SHA=<PR_HEAD_SHA>`  
* `bash scripts/omoc_observe_required_checks.sh`（可能 TEMP\_CLOSED=42）  
* `bash scripts/omoc_generate_checks_manifest.sh`  
* `bash scripts/omoc_drift_guard_required_checks.sh`（rc=0/42/1）

**evidence locators（建議）**

* `evidence/_acceptance/<TS>/observed/*`  
* `evidence/checks_manifest.json`

### **N.2 merge\_group 路徑（runtime；需 MQ 啟用後）**

* 依 WP-013 enqueue MQ（本文件不越界）  
* 取得 merge\_group head\_sha → 設定 `OMOC_KIND=merge_group`、`OMOC_SHA=<MG_HEAD_SHA>`  
* 重跑 observe \+ manifest  
* 按 `docs/MQ_RUN_MATCHING.md` 產出最小對照證據

---

## **O. Work Instructions（WI 任務卡）**

\[ANCHOR:RIPE-O-WI\]

* WI-01：落地 artifacts pack（FILE-BLOCK 全貼）→ `git status` 應只新增/修改指定檔  
* WI-02：命名掃描：`rg 'omoc/ci-gate' -S .` 必為 0  
* WI-03：readiness JSON：`bash scripts/omoc_mq_readiness_check.sh | jq -e '.ready|type=="boolean"'`  
* WI-04：PR 實測（若可）：收集 `check_runs.json/status.json` 並入 evidence  
* WI-05：merge\_group 實測（若可）：同上 \+ 完成 run matching 表

---

## **P. TT Register（Fail-Closed；不得為 0）**

\[ANCHOR:RIPE-P-TT\]

| tt\_id | status | severity | closure\_criteria | owner\_role | retest\_steps |
| ----- | ----- | ----- | ----- | ----- | ----- |
| TT-WSP-SCOPE-001 | OPEN | BLOCKER | SSOT 中新增可定位 **WSP v0 Scope Contract** 條文，且本 RIP-E 引用 locator | Platform governance | `rg 'WSP'` 命中且可定位；更新本文件 G 章引用 |
| TT-RIPE-NAME-DRIFT-001 | OPEN | BLOCKER | 全文件/工件僅保留 `omoc / ci-gate`；`omoc/ci-gate` 命中=0；並有一次 PR+merge\_group check-run 證據 | Doc maintainer | `rg` 掃描 \+ evidence 入包 |
| TT-RIPE-RUNTIME-001 | OPEN | BLOCKER | 目標 repo 實測：PR 與 merge\_group 均產生 `omoc / ci-gate` 結論；checks\_manifest diff=0；入 evidence bundle | Repo operator | 依 Runbook N.1/N.2 跑完 |
| TT-RIPE-MQ-RUN-MATCH-001 | OPEN | MAJOR | 完成一次 MQ enqueue 的 run matching（PR vs merge\_group 兩份 check-runs.json \+ 表） | MQ operator | 依 `docs/MQ_RUN_MATCHING.md` |
| TT-RIPE-DOC-HYGIENE-001 | OPEN | MAJOR | hygiene script 被 workflow 呼叫且掃描=0；插入禁字串會 fail | Docs-as-Code | 故意插入 `:contentReference[` 驗證 fail |
| TT-RIPE-CONCURRENCY-001 | OPEN | MAJOR | readiness 能偵測 cancel-in-progress 風險；或落地 required job 豁免策略（SSOT 支持） | CI architect | 增加樣本 → readiness fail |
| TT-RIPE-READINESS-IO-001 | OPEN | MAJOR | readiness 輸出 JSON schema 固定化；WP-013 Entry Gate 可直接 consume | CI architect | `jq -e` 驗 schema |
| TT-RIPE-TIMEOUT-UNKNOWN-001 | OPEN | MINOR | timeout 未知 → readiness 直接阻擋 MQ；待 snapshot 後解除 | Governance owner | 模擬 `known=false` → ready=false |
| TT-RIPE-WEB-FIELDS-001 | OPEN | MAJOR | Web Evidence 全條目欄位齊（published/accessed/drift\_action/web\_refs\>=2） | Drift manager | 抽查 3 條 |

TT 清單來源：審查報告要求「TEMP\_CLOSED 但 TT=0」屬治理缺陷；本版已修正為 TT≠0。

---

## **Q. Web Evidence Appendix（SUPPORT-only；漂移欄位化）**

\[ANCHOR:RIPE-Q-WEB\]

DATA-only：外部資料只用來佐證「平台易變事實/案例/術語/工具樣板」，不得升格為 MUST。  
accessed\_at（基準）：2026-02-21T00:00:00+08:00（Asia/Taipei）

| web\_id | purpose | claim\_supported | published\_at | accessed\_at | drift\_action | web\_refs\>=2 | rip\_e\_section\_ref | tt\_if\_needed |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| WEB-E1 | pitfall | paths-ignore 造成 required check 永久等待 | (N/A) | 2026-02-21T00:00:00+08:00 | KEEP | 2 | J/I | — |
| WEB-E2 | pitfall | merge queue 可能參考錯 run（需 run matching） | (N/A) | 同上 | NEEDS-TEST | 2 | N/MQ\_RUN\_MATCHING | TT-RIPE-MQ-RUN-MATCH-001 |
| WEB-E3 | drift | merge\_group activity types 可能漂移 | (N/A) | 同上 | NEEDS-TEST | 2 | I/J | TT-RIPE-MG-TYPES-DRIFT-001 |
| WEB-F1 | tooling | OpenSSF Scorecard / zizmor / pinact 作 upstream jobs | (varies) | 同上 | KEEP | 2 | M/workflow | TT-RIPE-SC-TOOLS-001 |

（Web refs 詳表可沿用《OMOC\_RIP\_外部資料(CLAUDE)》的雙來源條目；本 RIP-E 僅欄位化引用，不把 URL 當規範。）

---

## **R. Change Log**

\[ANCHOR:RIPE-R-CHANGELOG\]

### **v1.0.0 → v1.1.0（本次升級修補）**

* 修正 required check 命名唯一化：只允許 `omoc / ci-gate`；禁用 `omoc/ci-gate`（含機械驗證）。  
* 清除污染殘片並加入 Doc Hygiene Gate（阻斷級）。  
* TT Register 補齊（不得為 0），並把 runtime/命名漂移/WSP scope/run matching/concurrency 等缺口收斂為 TT。  
* readiness 改為固定 JSON 輸出契約（可被 WP-013 consume）；timeout\_unknown 直接阻擋 MQ。  
* 新增 `docs/MQ_RUN_MATCHING.md` 最小取證模板並納入 DoD/Runbook。  
* RIP-F upstream jobs 以 SUPPORT-only 接入，但 required check 仍維持單一 aggregator。

---

## **S. machine\_summary.json**

\[ANCHOR:RIPE-S-MACHINE-SUMMARY\]

{  
  "overall\_verdict": "TEMP\_CLOSED",  
  "scope\_status": "WSP\_SCOPE\_MISSING",  
  "blockers": \[  
    {"id": "F-R-001", "tt\_id": "TT-WSP-SCOPE-001"},  
    {"id": "F-D-001", "tt\_id": "TT-RIPE-NAME-DRIFT-001"},  
    {"id": "F-E-001", "tt\_id": "TT-RIPE-RUNTIME-001"}  
  \],  
  "tt\_register\_count": 9,  
  "coverage\_stats": {  
    "legacy\_coverage": "MAPPED (see L.3)",  
    "findings\_closure\_matrix": "COMPLETE (see K)"  
  },  
  "mq\_enablement\_risk": {  
    "level": "HIGH\_UNTIL\_RUNTIME",  
    "notes": \[  
      "MQ is blocked unless readiness JSON ready=true",  
      "Run matching evidence required"  
    \]  
  },  
  "always\_report\_risk": {  
    "level": "MEDIUM",  
    "notes": \["concurrency cancel-in-progress must be guarded"\]  
  },  
  "required\_checks\_contract\_risk": {  
    "level": "MEDIUM",  
    "notes": \["timeout unknown blocks MQ; expected contexts must not be invented"\]  
  },  
  "web\_conflicts": \[  
    {"web\_id": "WEB-E2", "status": "NEEDS-TEST"}  
  \]  
}

---

## **T. Self-Audit（硬約束 \+ RAG-Triad）**

\[ANCHOR:RIPE-T-SELF-AUDIT\]

### **T.1 硬約束核對（逐項可回指）**

* 單回合一次性輸出完成（本回合即全文）  
* Files-first / No-Source-No-Norm：所有規範性句子均指向 SSOT 或標 TT（見 F/H/K/P）  
* SUPPORT 不得升格：Web Evidence 以欄位化 DATA-only（見 Q）  
* 全量整合審查報告 findings：Closure Matrix 覆蓋 A\~G（見 K）  
* required check 唯一化：只允許 `omoc / ci-gate` \+ 機械驗證（見 I.1）  
* 清除污染並加 Doc Hygiene Gate（見 M/Doc Hygiene）  
* TT Register 不為 0（見 P）  
* MQ run matching 最小驗收（見 M/docs \+ N）  
* concurrency/cancel 禁則納入 readiness（見 I.4 \+ M/readiness）  
* RIP-F upstream jobs 接入且不成為 required check（見 M/workflow）

### **T.2 RAG-Triad 自檢（清單化）**

* Context-Relevance：每個 MUST/FAIL\_CLOSED 均有 SSOT locator 或 TT（F/H/P）。  
* Groundedness：未找到 WSP scope → 不臆測，明示缺口並 TT（K/P）。  
* Answer-Relevance：本文件提供可抽取落地的 workflows/scripts/policy/config/docs（M），且 DoD 明示「兩路徑回報同名 required check」並阻擋 MQ。

