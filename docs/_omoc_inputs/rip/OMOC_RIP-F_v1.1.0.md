# **《OMOC\_RIP-F：Platform Governance \+ Supply-chain Hardening RIP（平台治理 \+ 供應鏈硬化）》v1.1.0**

\[ANCHOR:OMOC-RIPF-TOC\]  
\<a id="omoc-ripf-toc"\>\</a\>

---

## **A. Cover Card**

\[ANCHOR:OMOC-RIPF-A-COVER-CARD\]  
\<a id="omoc-ripf-a-cover-card"\>\</a\>

**摘要（≤120字）**：把 GitHub 平台治理（rulesets / rule\_suites / actions policy / repo security）做成**可回放證據**（snapshot+diff+hash+drift/closure），並把供應鏈檢查固定為 **required checks**（不可 skip/pending、可對齊 merge\_group）。  
**一句話結論**：治理漂移若不能回放，就只剩「口供合規」——稽核官不吃這套（尤其你還想把紅燈改綠燈）。

---

## **B. Document Control**

\[ANCHOR:OMOC-RIPF-B-DOCUMENT-CONTROL\]  
\<a id="omoc-ripf-b-document-control"\>\</a\>

| field | value |
| ----- | ----- |
| External Name | OMOC RIP-F: Platform Governance \+ Supply-chain Hardening |
| Internal Short Name | OMOC-RIPF |
| Canonical Version | v1.1.0 |
| Supersedes | v1.0.0 OMOC\_RIP-F\_v1.0.0 |
| generated\_at | 2026-02-21T00:00:00+08:00 |
| timezone | Asia/Taipei (UTC+08:00) |
| overall\_verdict | **TEMP\_CLOSED**（文件層：可回放閉環已落地；平台/Repo 實際狀態需依 Runbook 實跑產 evidence 才能轉 PASS） |
| CR\_OPEN | 0（所有缺口/漂移/外部不確定性皆以 TT 收斂；不得嘴巴留洞） |
| aligned\_wps | WP-009/010/011/012/013/014（Phase-G 治理/合約/回報/MQ/closure） OMOC\_WP-010+RB+WI\_v4.0.1-r2 OMOC\_WP-011+RB+WI\_v4.0.1-r2 OMOC\_WP-012+RB+WI\_v4.0.1-r2 OMOC\_WP-014+RB+WI\_v4.0.1-r2 |
| Authority Stack | Blueprint / RB+WI / Skills Compendium / WP-MASTER / WP001\~014 / Total RIP Fix Plan OMOC\_施工RB+WI\_合冊\_v4.0.1-r1 OMOC\_施工skills\_v4.0.1-r2 OMOC\_WP-001+RB+WI\_v4.0.1-r2 Spartoi-OMOC\_SubP1-LITE+MVP\_RIP… |

---

## **C. Diátaxis Reader Guide**

\[ANCHOR:OMOC-RIPF-C-DIATAXIS\]  
\<a id="omoc-ripf-c-diatx"\>\</a\>

* **Tutorial（第一次走通）**：從 §P Runbook 走 P-0→P-4，產出 snapshot+diff+drift\_guard+required\_checks\_guard+Evidence Minset。  
* **How-to（遇到問題）**：直接看 §Q WI 任務卡，照「失敗處置」回路重跑。  
* **Reference（查規格）**：看 §G Requirements、§H Surface Map、§J Drift→Closure、§L Required Checks Policy。  
* **Explanation（為什麼）**：看 §N Actions Hardening 與 §R Gates/DoD/Acceptance 的判定優先序。

---

## **D. Quick Index**

\[ANCHOR:OMOC-RIPF-D-QUICK-INDEX\]  
\<a id="omoc-ripf-d-quick-index"\>\</a\>

* `rule_suites endpoint` → §I Snapshot & Diff Design（TT-RIPF-001 已閉環）  
* `subshell bug / paths-ignore` → §L Required Checks as Policy（TT-RIPF-002 已閉環）  
* `closure_allow artifact` → §J Drift→Closure（TT-RIPF-012 已閉環）  
* `allowable drift schema` → §J / §O Artifacts（TT-RIPF-011 已閉環）  
* `WSP scope contract` → §F Scope（TT-RIPF-003 已閉環）  
* `placeholder secret scan` → §M Supply-chain Pack（TT-RIPF-010 以 OPTIONAL/TEMP\_CLOSED 管理）  
* `pinning gate` → §M / §O（TT-RIPF-0xx（沿用審查建議）已落地）  
* `TT external append` → §T TT Register（TT-RIPF-006 已落地）  
* `artifacts manifest` → §O Repo Artifacts Pack（TT-RIPF-007 已落地）  
* `route-out triggers` → §F Scope / Route-Out（TT-RIPF-008 已落地）  
* `machine_summary.json` → §W（TT-RIPF-014 已落地）

---

## **E. Anchor Registry**

\[ANCHOR:OMOC-RIPF-E-ANCHOR-REGISTRY\]  
\<a id="omoc-ripf-e-anchor-registry"\>\</a\>

規則：每節至少兩種錨點：`[ANCHOR:...]` \+ `<a id="..."></a>`。若需 alias，必列出 alias→canonical。

* A: `OMOC-RIPF-A-COVER-CARD` / `omoc-ripf-a-cover-card`  
* B: `OMOC-RIPF-B-DOCUMENT-CONTROL` / `omoc-ripf-b-document-control`  
* C: `OMOC-RIPF-C-DIATAXIS` / `omoc-ripf-c-diatx`  
* D: `OMOC-RIPF-D-QUICK-INDEX` / `omoc-ripf-d-quick-index`  
* E: `OMOC-RIPF-E-ANCHOR-REGISTRY` / `omoc-ripf-e-anchor-registry`  
* F: `OMOC-RIPF-F-SCOPE` / `omoc-ripf-f-scope`  
* G: `OMOC-RIPF-G-REQUIREMENTS` / `omoc-ripf-g-requirements`  
* H: `OMOC-RIPF-H-SURFACE-MAP` / `omoc-ripf-h-surface-map`  
* I: `OMOC-RIPF-I-SNAPSHOT-DIFF` / `omoc-ripf-i-snapshot-diff`  
* J: `OMOC-RIPF-J-DRIFT-CLOSURE` / `omoc-ripf-j-drift-closure`  
* K: `OMOC-RIPF-K-RULESETS-AS-CODE` / `omoc-ripf-k-rulesets-as-code`  
* L: `OMOC-RIPF-L-REQUIRED-CHECKS-POLICY` / `omoc-ripf-l-required-checks-policy`  
* M: `OMOC-RIPF-M-SUPPLYCHAIN-PACK` / `omoc-ripf-m-supplychain-pack`  
* N: `OMOC-RIPF-N-ACTIONS-HARDENING` / `omoc-ripf-n-actions-hardening`  
* O: `OMOC-RIPF-O-ARTIFACTS` / `omoc-ripf-o-artifacts`  
* P: `OMOC-RIPF-P-RUNBOOK` / `omoc-ripf-p-runbook`  
* Q: `OMOC-RIPF-Q-WI` / `omoc-ripf-q-wi`  
* R: `OMOC-RIPF-R-GATES` / `omoc-ripf-r-gates`  
* S: `OMOC-RIPF-S-TRACEABILITY` / `omoc-ripf-s-traceability`  
* T: `OMOC-RIPF-T-TT` / `omoc-ripf-t-tt`  
* U: `OMOC-RIPF-U-WEB-EVIDENCE` / `omoc-ripf-u-web-evidence`  
* V: `OMOC-RIPF-V-CHANGELOG-VERDICT` / `omoc-ripf-v-changelog-verdict`  
* W: `OMOC-RIPF-W-MACHINE-SUMMARY` / `omoc-ripf-w-machine-summary`  
* X: `OMOC-RIPF-X-SELF-AUDIT` / `omoc-ripf-x-self-audit`

---

## **F. Authority Stack & SSOT Resolution**

\[ANCHOR:OMOC-RIPF-F-AUTHORITY\]  
\<a id="omoc-ripf-f-authority"\>\</a\>

### **F.1 Authority Stack（由高到低；Fail-Closed）**

**NORMATIVE（不得被 SUPPORT 覆寫）**

1. 《OMOC\_總體RIP修補方案》：RIP-F 規劃/DoD/硬要求（本 RIP-F 必 100% 落地）。  
   Spartoi-OMOC\_SubP1-LITE+MVP\_RIP…  
2. 《OMOC\_藍圖\_v4.0.1-r1》：治理邊界/Route-Out/Fail-Closed。  
   OMOC\_WP-001+RB+WI\_v4.0.1-r2  
3. 《OMOC\_施工RB+WI\_合冊\_v4.0.1-r1》：施工與跡證契約、Always-Report、Merge Queue 介面。  
   OMOC\_施工RB+WI\_合冊\_v4.0.1-r1  
4. 《OMOC\_施工skills\_合冊\_v4.0.1-r2》：canonical required check name、evidence minset、secrets exclusion、packager/validator。  
   OMOC\_施工skills\_v4.0.1-r2  
5. 《OMOC\_實作+WP總表\_v4.0.1-r2》：WP/Gate registry、backup/restore、接口合約。  
   OMOC\_實作+WP總表\_v4.0.1-r2  
6. 《OMOC\_WP-001..014+RB+WI\_v4.0.1-r2》：Phase-G 的治理/合約/回報/MQ/closure 細則。  
   OMOC\_WP-014+RB+WI\_v4.0.1-r2

    OMOC\_WP-010+RB+WI\_v4.0.1-r2

    OMOC\_WP-012+RB+WI\_v4.0.1-r2

**REVIEW/FIX SPEC（本次必修，逐條閉環）**

* 《OMOC\_RIP-F\_v1.0.0\_審查報告》  
  OMOC\_RIP-F\_v1.0.0\_審查報告

**TARGET（覆蓋檢查用，禁止再作規範）**

* 《OMOC\_RIP-F\_v1.0.0》  
  OMOC\_RIP-F\_v1.0.0

**SUPPORT（不得升格為規範）**

* 《OMOC\_RIP\_外部資料》＋(CLAUDE/GPT/GEMINI)：選型、樣板、可變動事實、風險證據；衝突→WEB-CONFLICT→TT。  
  OMOC\_RIP\_外部資料

### **F.2 Files-first / No-Source-No-Norm**

* 任何 MUST/不得/FAIL\_CLOSED/TEMP\_CLOSED 的規範句，必可回指到：**檔名 \+ 章節錨點**；否則 UNVERIFIED→TT→TEMP\_CLOSED。  
  OMOC\_施工RB+WI\_合冊\_v4.0.1-r1  
* 外部資料與 Web 僅 SUPPORT：放入 §U Web Evidence Appendix，且每條至少雙來源（不同 publisher / 網域）；衝突→WEB-CONFLICT→TT。  
  OMOC\_RIP-F\_v1.0.0\_審查報告

---

## **G. Scope / Non-Goals / Route-Out Map**

\[ANCHOR:OMOC-RIPF-G-SCOPE\]  
\<a id="omoc-ripf-f-scope"\>\</a\>

### **G.1 IN（本 RIP-F 責任）**

* **治理漂移可回放**：snapshot+diff+hash+closure inputs。  
* **治理漂移 Fail-Closed**：diff≠0 且未 closure 批准 → 阻擋。  
* **required checks 合約守門**：禁止 required workflow 被 `paths-ignore` 靜默跳過；必對齊 PR \+ merge\_group 回報性。  
* **供應鏈硬化 pack**：zizmor/scorecard/pinact \+（可選）dependency-review；禁止假安全。  
* **Rulesets-as-code**：以 JSON 管理 baseline，且 deploy 必經 CODEOWNERS gate（RIP-F 只提供骨架與可回放證據契約）。

### **G.2 OUT（越界即 FAIL\_CLOSED）**

* 不替你點 GitHub UI 啟用/調整（那是 WP-009\~013 的 Runbook/驗收範圍）。  
  OMOC\_WP-012+RB+WI\_v4.0.1-r2  
* 不替代 WP-010 的 checks\_manifest 合約鎖、不替代 WP-014 的 closure lifecycle。  
  OMOC\_WP-010+RB+WI\_v4.0.1-r2

   OMOC\_WP-014+RB+WI\_v4.0.1-r2

### **G.3 Route-Out Map（topic → target）**

| topic | route\_to | locator\_hint |
| ----- | ----- | ----- |
| rulesets snapshot & policy draft | WP-009 | WP-009 scope/tool matrix |
| required checks contract lock / checks\_manifest | WP-010 | WP-010 contract spec OMOC\_WP-010+RB+WI\_v4.0.1-r2 |
| always-report wrappers & status hygiene | WP-011 | WP-011 spec OMOC\_WP-011+RB+WI\_v4.0.1-r2 |
| merge\_group trigger alignment / MQ probe | WP-012 | WP-012 gates & probes OMOC\_WP-012+RB+WI\_v4.0.1-r2 |
| merge queue enablement & verification | WP-013 | WP-013 runbook |
| drift guard & closure management | WP-014 | WP-014 decision table OMOC\_WP-014+RB+WI\_v4.0.1-r2 |

### **G.4 Route-Out Trigger Conditions（TT-RIPF-008 已落地）**

| trigger (if you see…) | MUST route\_to | why |
| ----- | ----- | ----- |
| 需要修改 rulesets / required workflows / bypass actors | WP-009/013 | RIP-F 不負責改平台狀態，只負責可回放證據與 guard |
| “Expected — Waiting…” 或 merge\_group 回報不一致 | WP-011/012 | 這是回報性治理問題，不是文件好看問題 OMOC\_WP-011+RB+WI\_v4.0.1-r2 OMOC\_WP-012+RB+WI\_v4.0.1-r2 |
| drift 要放行 | WP-014 | closure 是可稽核合約流程，不是 env 開關 OMOC\_WP-014+RB+WI\_v4.0.1-r2 |
| check 名稱/contexts 對不上 | WP-010 | 以 checks\_manifest 合約鎖裁決 OMOC\_WP-010+RB+WI\_v4.0.1-r2 |

### **G.5 WSP v0 Scope Contract（TT-RIPF-003：WSP\_SCOPE\_MISSING 已閉環）**

以 repo-local 可落地為最小集合；缺口一律 TT，不做腦補。

OMOC\_RIP-F\_v1.0.0\_審查報告

---

## **H. Requirements（RIPF-REQ-001\~005）**

\[ANCHOR:OMOC-RIPF-H-REQUIREMENTS\]  
\<a id="omoc-ripf-g-requirements"\>\</a\>

每條需求必含：`req_id`、SSOT locator、實作 locator、驗收判準、Fail action、證據輸出路徑。

### **RIPF-REQ-001 — Drift Evidence 必可回放（snapshot+diff+hash）**

* SSOT locator：WP-014 drift/closure \+ RBWI evidence contract  
   OMOC\_WP-014+RB+WI\_v4.0.1-r2

   OMOC\_施工RB+WI\_合冊\_v4.0.1-r1  
* Implementation locator：§O（scripts/omoc\_governance\_snapshot.sh \+ diff.sh）  
* Acceptance：  
  * `evidence/_governance_snapshot/<ts>/{raw,normalized,meta}.json` \+ `sha256sum.txt`  
  * `evidence/_governance_diff/<ts>/diff_summary.json` \+ `sha256sum.txt`  
  * `evidence/_governance_snapshot/<ts>/closure_matrix_inputs.json`（由 diff enrich）  
* Fail action：缺任一項 → **FAIL\_CLOSED**

### **RIPF-REQ-002 — Drift 預設 Fail-Closed；未 closure 批准不得放行（禁裸 env 放行）**

* SSOT locator：WP-014 decision table / closure lifecycle  
   OMOC\_WP-014+RB+WI\_v4.0.1-r2  
* Implementation locator：§O（scripts/omoc\_governance\_drift\_guard.sh \+ config/closure\_allow.json）  
* Acceptance：  
  * diff changed\_count\>0 且 closure\_allow 憑證無效/缺失/過期/未綁定本次 diff → exit≠0  
  * 產出 `evidence/_governance_diff/<ts>/drift_report.md`（含 TT/route-out 指示）  
* Fail action：任何 drift 被忽略 → **FAIL\_CLOSED**

### **RIPF-REQ-003 — Supply-chain workflows 必為 required checks；不可 skip/pending（含 merge\_group）**

* SSOT locator：RBWI G2 \+ Skills canonical check name \+ WP-010/011/012  
   OMOC\_施工RB+WI\_合冊\_v4.0.1-r1

   OMOC\_施工skills\_v4.0.1-r2

   OMOC\_WP-010+RB+WI\_v4.0.1-r2  
* Implementation locator：§O（config/required\_checks\_contract.json \+ scripts/omoc\_required\_checks\_contract\_guard.sh \+ workflows）  
* Acceptance：  
  * 合約列出的 required workflows 均存在  
  * required workflows **不得**含 `paths-ignore`（workflow trigger-level）→ guard 必 FAIL\_CLOSED  
  * PR \+ merge\_group（若啟用）兩路徑都必回報同名 check contexts（禁止永久 pending）  
* Fail action：任何 required check 不回報/永久 pending/被 skip → **FAIL\_CLOSED**  
   OMOC\_RIP-F\_v1.0.0\_審查報告

### **RIPF-REQ-004 — Rulesets-as-Code deploy 必經 CODEOWNERS（且可回滾）**

* SSOT locator：Blueprint route-out \+ WP-009/013 的治理變更責任分割  
   OMOC\_WP-001+RB+WI\_v4.0.1-r2

   OMOC\_WP-012+RB+WI\_v4.0.1-r2  
* Implementation locator：§K \+ §O（docs/RULESETS\_AS\_CODE.md \+ workflows 骨架）  
* Acceptance：  
  * baseline JSON/目錄變更必走 PR \+ CODEOWNERS  
  * deploy 後必立即產 snapshot+diff 作 applied-state 證據  
* Fail action：未經 CODEOWNERS 即 deploy → **FAIL\_CLOSED**

### **RIPF-REQ-005 — Actions Hardening 最小集（pin SHA / least privilege / allowlist / OIDC）**

* SSOT locator：Skills security guardrails \+ RBWI guardrails  
   OMOC\_施工skills\_v4.0.1-r2

   OMOC\_施工RB+WI\_合冊\_v4.0.1-r1  
* Implementation locator：§O（policy/actions\_security\_policy.yaml \+ pinning gate scripts/workflows）  
* Acceptance：  
  * `uses:` 全為 full commit SHA（禁止 `@v*` mutable tag）→ pinning gate 命中=0  
  * 頂層 `permissions: read-all`（或等價最小權限），必要時 job 局部提升  
  * allowlist/selected-actions 狀態納入 snapshot（可回放）  
* Fail action：mutable tag / write-all / secrets in logs → **FAIL\_CLOSED**  
   OMOC\_RIP-F\_v1.0.0\_審查報告

---

## **I. Governance Surface Map**

\[ANCHOR:OMOC-RIPF-I-SURFACE-MAP\]  
\<a id="omoc-ripf-h-surface-map"\>\</a\>

原則：**可快照、可 diff、可回放**才算治理面；取證不到就記 `UNAVAILABLE_OR_DENIED`，並依 Gate 判 TEMP\_CLOSED/FAIL\_CLOSED（不得裝 PASS）。

最低集合（本版已全落地到 snapshot 輸出契約）：

* `rulesets`（repo）  
* `rule_suites`（**端點修正：/repos/{owner}/{repo}/rulesets/rule-suites**；TT-RIPF-001 已閉環）  
  OMOC\_RIP-F\_v1.0.0\_審查報告  
* `repo_settings`（repo view）  
* `actions_permissions`（/actions/permissions）  
* `selected_actions`（/actions/permissions/selected-actions）  
* `security_and_analysis`（/security-and-analysis）

---

## **J. Snapshot & Diff Design**

\[ANCHOR:OMOC-RIPF-J-SNAPSHOT-DIFF\]  
\<a id="omoc-ripf-i-snapshot-diff"\>\</a\>

### **J.1 Snapshot（必含 meta.api\_calls；端點一致）**

* 端點一致性：`meta.api_calls` 的路徑必與實際 gh api 呼叫一致；本版已修正 rule\_suites 端點並把 403/404 視為 `UNAVAILABLE_OR_DENIED` 落盤但**不得中止整體**（TT-RIPF-001 已閉環）。  
  OMOC\_RIP-F\_v1.0.0\_審查報告  
* 產物：raw \+ normalized \+ sha256sum \+ closure\_matrix\_inputs skeleton（diff enrich）

### **J.2 Diff（基線 vs snapshot）**

* diff 只比對 normalized JSON（減少假 diff）  
* 統一輸出：  
  * `diff.md`（人讀）  
  * `changed_files.txt` \+ `diff_summary.json`（機器讀）  
  * `sha256sum.txt`（回放一致性）  
* rule\_suites 的「時間變動欄位」以 allowable drift 管理（見 §J.4）

### **J.3 403/404 行為（Fail-Closed 但不中止快照）**

* 若 rule\_suites 或任何治理面因權限/不可用取不到：  
  * raw/normalized 寫入 `{"status":"UNAVAILABLE_OR_DENIED","reason":"...","http_status":403}`  
  * **不得**中止整體 snapshot  
  * Gate 層裁決：視 “治理面缺失” 的重要性 → TEMP\_CLOSED 或 FAIL\_CLOSED（本 RIP-F 預設：required surfaces 缺失 → TEMP\_CLOSED \+ TT）

### **J.4 Allowable Drift（schema 必含 reason/expiry/evidence\_required）**

* `config/governance_allowable_drift.json`：allowlist 每項必含：  
  * `surface`  
  * `reason`  
  * `expiry`  
  * `evidence_required`（最小可驗收）  
  * `owner_role`

（TT-RIPF-011 已閉環）

OMOC\_RIP-F\_v1.0.0

---

## **K. Drift → Closure（closure\_allow artifact；禁裸 env）**

\[ANCHOR:OMOC-RIPF-K-DRIFT-CLOSURE\]  
\<a id="omoc-ripf-j-drift-closure"\>\</a\>

### **K.1 原則（WP-014 對齊）**

* drift 不是 “不方便所以忽略”；drift 是治理事件。  
* 放行（closure）必是**可稽核憑證**，且必綁定本次 diff hash（TT-RIPF-012 已閉環）。  
  OMOC\_RIP-F\_v1.0.0\_審查報告

### **K.2 closure\_allow artifact contract（最小）**

* 檔案：`config/closure_allow.json`  
* 必含欄位：  
  * `scope`（例如 governance-drift）  
  * `expiry`（ISO8601）  
  * `issuer`（角色/團隊）  
  * `diff_sha256`（綁定 `evidence/_governance_diff/<ts>/sha256sum.txt` 或 diff\_summary.json 的 sha）  
  * `evidence_required`（如：WP-014 closure bundle locator）  
* drift guard 必驗證：  
  * 檔案存在  
  * 未過期  
  * diff\_sha256 匹配本次 evidence  
  * 缺任一 → FAIL\_CLOSED

---

## **L. Rulesets-as-Code**

\[ANCHOR:OMOC-RIPF-L-RULESETS-AS-CODE\]  
\<a id="omoc-ripf-k-rulesets-as-code"\>\</a\>

* baseline 以 JSON 管理（repo 路徑由 `O.0 artifacts_manifest.yaml` 固定）  
* 部署條件：  
  * PR \+ CODEOWNERS approve  
  * validate workflow 先過  
  * deploy 後立刻 snapshot+diff（applied evidence）  
* 回滾：  
  * 用 last-known-good baseline ref 重跑 deploy  
  * 再 snapshot+diff 證明已回到基線

（RIP-F 不假裝已替你點 UI；僅提供可回放與可稽核的流程骨架。）

---

## **M. Required Checks as Policy（合約 \+ guard；含 subshell 修補）**

\[ANCHOR:OMOC-RIPF-M-REQUIRED-CHECKS-POLICY\]  
\<a id="omoc-ripf-l-required-checks-policy"\>\</a\>

### **M.1 Required Checks Contract（repo-side 合約）**

* 檔案：`config/required_checks_contract.json`  
* 原則：  
  * required 列表 **只**包含「真實會 fail」且能產出證據的 checks  
  * placeholder / exit 0 的 workflow **不得**列入 required（TT-RIPF-010 管理）  
    OMOC\_RIP-F\_v1.0.0\_審查報告

### **M.2 Contract Guard（Fail-Closed）**

必驗：

1. contract 存在  
2. workflows\_required 存在  
3. **skip hazard**：required workflows **不得**含 `paths-ignore`（workflow trigger-level）  
4. **subshell bug 修補**：不得使用 `jq ... | while read` 造成 `bad=1` 在 subshell 無效（TT-RIPF-002 已閉環）  
   OMOC\_RIP-F\_v1.0.0\_審查報告

---

## **N. Supply-chain Hardening Pack（Scorecard / Zizmor / Pinact \+ optional）**

\[ANCHOR:OMOC-RIPF-N-SUPPLYCHAIN-PACK\]  
\<a id="omoc-ripf-m-supplychain-pack"\>\</a\>

### **N.1 Required（預設）**

* `supplychain / zizmor`（Actions 靜態安全分析）  
* `supplychain / scorecard`（repo 供應鏈健康度）  
* `supplychain / pinact`（action pinning 檢查）  
* `supplychain / dependency-review`（若 repo/授權可用；否則 TEMP\_CLOSED \+ TT）

### **N.2 禁止假安全（TT-RIPF-010）**

* `supplychain-secret-leak-gate.yml` 若為 placeholder 且 exit 0：  
  * 必列為 OPTIONAL / TEMP\_CLOSED  
  * 不得進 required 合約 required 列表  
  * closure criteria：替換為真掃描（例如 gitleaks）且 rc 真實

---

## **O. Actions Hardening**

\[ANCHOR:OMOC-RIPF-O-ACTIONS-HARDENING\]  
\<a id="omoc-ripf-n-actions-hardening"\>\</a\>

* 最小權限：`permissions: read-all`（必要 job 局部提升）  
* Pinning：禁止 `uses: .*@v` mutable tag（Fail-Closed gate）  
  OMOC\_RIP-F\_v1.0.0\_審查報告  
* OIDC：偏好 id-token（SUPPORT-only 需放 Web Appendix 且 drift\_action=NEEDS-TEST）

---

## **P. Repo Artifacts Pack（FILE BLOCKS）**

\[ANCHOR:OMOC-RIPF-P-ARTIFACTS\]  
\<a id="omoc-ripf-o-artifacts"\>\</a\>

本節提供「最小可落地骨架」；導入時以 `O.0 artifacts_manifest.yaml` 為一眼可核清單（TT-RIPF-007 已閉環）。

OMOC\_RIP-F\_v1.0.0\_審查報告

### **P.0 O.0 artifacts\_manifest.yaml**

\--- FILE BEGIN: O.0 artifacts\_manifest.yaml

version: v1  
notes: "Minimal manifest for RIP-F repo artifacts. Import MUST be complete; missing files \=\> FAIL\_CLOSED."  
paths:  
 scripts:  
   \- scripts/omoc\_governance\_snapshot.sh  
   \- scripts/omoc\_governance\_diff.sh  
   \- scripts/omoc\_governance\_drift\_guard.sh  
   \- scripts/omoc\_required\_checks\_contract\_guard.sh  
   \- scripts/omoc\_pinning\_gate.sh  
 config:  
   \- config/governance\_allowable\_drift.json  
   \- config/closure\_allow.json  
   \- config/required\_checks\_contract.json  
 policy:  
   \- policy/actions\_security\_policy.yaml  
 workflows:  
   \- .github/workflows/ci-omoc-gate.yml  
   \- .github/workflows/supplychain-zizmor.yml  
   \- .github/workflows/supplychain-scorecard.yml  
   \- .github/workflows/supplychain-pinact.yml  
   \- .github/workflows/supplychain-dependency-review.yml  
   \- .github/workflows/supplychain-secret-leak-gate.yml  
 docs:  
   \- docs/RULESETS\_AS\_CODE.md  
   \- docs/ACTIONS\_HARDENING.md  
 tt:  
   \- config/tt\_external.json

\--- FILE END: O.0 artifacts\_manifest.yaml

### **P.1 scripts/omoc\_governance\_snapshot.sh（TT-RIPF-001：rule\_suites endpoint 修正 \+ 403/404不中止）**

\--- FILE BEGIN: scripts/omoc\_governance\_snapshot.sh

\#\!/usr/bin/env bash  
set \-euo pipefail

\# OMOC Governance Snapshot (RIP-F)  
\# Produces replayable evidence: raw \+ normalized \+ meta \+ sha256sum.  
\# Fix: rule\_suites endpoint MUST be: /repos/{owner}/{repo}/rulesets/rule-suites  (TT-RIPF-001)  
\# Behavior: 403/404 MUST NOT abort snapshot; write UNAVAILABLE\_OR\_DENIED instead.

need() { command \-v "$1" \>/dev/null 2\>&1 || { echo "MISSING\_TOOL:$1" \>&2; exit 2; }; }  
need gh  
need jq  
need sha256sum  
need date

: "${OMOC\_OWNER:?missing OMOC\_OWNER}"  
: "${OMOC\_REPO:?missing OMOC\_REPO}"

TS="${OMOC\_TS:-$(date \-u \+%Y%m%dT%H%M%SZ)}"  
OUTROOT="${OMOC\_SNAPSHOT\_DIR:-evidence/\_governance\_snapshot}"  
OUT="$OUTROOT/$TS"  
RAW="$OUT/raw"  
NORM="$OUT/normalized"  
META="$OUT/meta"

mkdir \-p "$RAW" "$NORM" "$META"

gh\_api() {  
 local path="$1" out="$2"  
 \# Capture errors without leaking tokens.  
 if gh api \-H "Accept: application/vnd.github+json" "$path" \>"$out" 2\>"$out.stderr"; then  
   rm \-f "$out.stderr" || true  
   return 0  
 fi  
 local rc=$?  
 local msg  
 msg="$(tail \-n 5 "$out.stderr" 2\>/dev/null | tr \-d '\\r' | jq \-Rs .)"  
 rm \-f "$out.stderr" || true  
 printf '{"status":"UNAVAILABLE\_OR\_DENIED","path":%s,"rc":%s,"reason":%s}\\n' \\  
   "$(jq \-Rn \--arg p "$path" '$p')" \\  
   "$(jq \-Rn \--arg r "$rc" '$r|tonumber')" \\  
   "${msg:-\\"unknown\\"}" \>"$out"  
 return 0  
}

normalize\_json() {  
 local in="$1" out="$2"  
 \# If unavailable, copy as-is.  
 if jq \-e '.status? \== "UNAVAILABLE\_OR\_DENIED"' "$in" \>/dev/null 2\>&1; then  
   cp "$in" "$out"  
   return 0  
 fi  
 \# Stable sort keys; array ordering is intentionally NOT globally normalized (see allowable drift).  
 jq \-S '.' "$in" \>"$out"  
}

\# meta  
cat \>"$META/meta.json" \<\<JSON  
{  
 "ts":"$TS",  
 "repo":"${OMOC\_OWNER}/${OMOC\_REPO}",  
 "api\_calls":\[  
   "GET /repos/{owner}/{repo}/rulesets",  
   "GET /repos/{owner}/{repo}/rulesets/rule-suites",  
   "GET /repos/{owner}/{repo}",  
   "GET /repos/{owner}/{repo}/actions/permissions",  
   "GET /repos/{owner}/{repo}/actions/permissions/access",  
   "GET /repos/{owner}/{repo}/actions/permissions/selected-actions",  
   "GET /repos/{owner}/{repo}/security-and-analysis"  
 \],  
 "api\_version\_header":"Accept: application/vnd.github+json",  
 "notes":"If any call is unavailable/denied, raw+normalized will contain status UNAVAILABLE\_OR\_DENIED."  
}  
JSON

REPO="${OMOC\_OWNER}/${OMOC\_REPO}"

\# 1\) rulesets  
gh\_api "/repos/${REPO}/rulesets" "$RAW/rulesets.json"  
normalize\_json "$RAW/rulesets.json" "$NORM/rulesets.json"

\# 2\) rule\_suites (FIXED endpoint)  
gh\_api "/repos/${REPO}/rulesets/rule-suites" "$RAW/rule\_suites.json"  
normalize\_json "$RAW/rule\_suites.json" "$NORM/rule\_suites.json"

\# 3\) repo settings (repo view)  
gh\_api "/repos/${REPO}" "$RAW/repo.json"  
normalize\_json "$RAW/repo.json" "$NORM/repo.json"

\# 4\) actions permissions  
gh\_api "/repos/${REPO}/actions/permissions" "$RAW/actions\_permissions.json"  
normalize\_json "$RAW/actions\_permissions.json" "$NORM/actions\_permissions.json"

\# 5\) actions access (policy)  
gh\_api "/repos/${REPO}/actions/permissions/access" "$RAW/actions\_access.json"  
normalize\_json "$RAW/actions\_access.json" "$NORM/actions\_access.json"

\# 6\) selected-actions (allowlist details)  
gh\_api "/repos/${REPO}/actions/permissions/selected-actions" "$RAW/selected\_actions.json"  
normalize\_json "$RAW/selected\_actions.json" "$NORM/selected\_actions.json"

\# 7\) security & analysis  
gh\_api "/repos/${REPO}/security-and-analysis" "$RAW/security\_and\_analysis.json"  
normalize\_json "$RAW/security\_and\_analysis.json" "$NORM/security\_and\_analysis.json"

\# hashes  
(  
 cd "$OUT"  
 find raw normalized meta \-type f \-maxdepth 2 \-print0 | sort \-z | xargs \-0 sha256sum \>"sha256sum.txt"  
)

\# closure inputs skeleton (enriched by diff step)  
cat \>"$OUT/closure\_matrix\_inputs.json" \<\<JSON  
{  
 "ts":"$TS",  
 "repo":"${OMOC\_OWNER}/${OMOC\_REPO}",  
 "drift\_detected": null,  
 "drift\_items": \[\],  
 "notes":"Generated by omoc\_governance\_snapshot.sh; enriched by omoc\_governance\_diff.sh"  
}  
JSON

echo "OK: snapshot at $OUT"

\--- FILE END: scripts/omoc\_governance\_snapshot.sh

### **P.2 scripts/omoc\_governance\_diff.sh（enrich closure inputs）**

\--- FILE BEGIN: scripts/omoc\_governance\_diff.sh

\#\!/usr/bin/env bash  
set \-euo pipefail

need() { command \-v "$1" \>/dev/null 2\>&1 || { echo "MISSING\_TOOL:$1" \>&2; exit 2; }; }  
need diff  
need jq  
need sha256sum

: "${OMOC\_TS:?missing OMOC\_TS}"

BASE="${OMOC\_BASELINE\_DIR:-config/governance\_baseline}"  
SNAPROOT="${OMOC\_SNAPSHOT\_DIR:-evidence/\_governance\_snapshot}"  
DIFFROOT="${OMOC\_DIFF\_DIR:-evidence/\_governance\_diff}"

SNAP="$SNAPROOT/$OMOC\_TS/normalized"  
OUT="$DIFFROOT/$OMOC\_TS"  
mkdir \-p "$OUT"

targets=(  
 "rulesets.json"  
 "rule\_suites.json"  
 "repo.json"  
 "actions\_permissions.json"  
 "actions\_access.json"  
 "selected\_actions.json"  
 "security\_and\_analysis.json"  
)

changed=0  
: \>"$OUT/changed\_files.txt"  
: \>"$OUT/diff.md"

for f in "${targets\[@\]}"; do  
 b="$BASE/$f"  
 s="$SNAP/$f"

 if \[\[ \! \-f "$b" \]\]; then  
   echo "- MISSING\_BASELINE: $f" \>\>"$OUT/diff.md"  
   echo "$f" \>\>"$OUT/changed\_files.txt"  
   changed=1  
   continue  
 fi  
 if \[\[ \! \-f "$s" \]\]; then  
   echo "- MISSING\_SNAPSHOT: $f" \>\>"$OUT/diff.md"  
   echo "$f" \>\>"$OUT/changed\_files.txt"  
   changed=1  
   continue  
 fi

 if \! diff \-u "$b" "$s" \>"$OUT/$f.diff" ; then  
   echo "- CHANGED: $f" \>\>"$OUT/diff.md"  
   echo "$f" \>\>"$OUT/changed\_files.txt"  
   changed=1  
 else  
   rm \-f "$OUT/$f.diff"  
 fi  
done

jq \-n \--arg ts "$OMOC\_TS" \\  
 \--slurpfile changed "$OUT/changed\_files.txt" '  
{  
 ts:$ts,  
 changed\_files: ($changed\[0\] | split("\\n") | map(select(length\>0))),  
 changed\_count: ($changed\[0\] | split("\\n") | map(select(length\>0)) | length)  
}' \>"$OUT/diff\_summary.json"

sha256sum "$OUT"/\* 2\>/dev/null | sort \>"$OUT/sha256sum.txt" || true

\# Enrich closure inputs  
closure="$SNAPROOT/$OMOC\_TS/closure\_matrix\_inputs.json"  
if \[\[ \-f "$closure" \]\]; then  
 jq \--argfile summary "$OUT/diff\_summary.json" '  
   .drift\_detected \= (($summary.changed\_count) \> 0\)  
   | .drift\_items \= ($summary.changed\_files | map({  
       surface: .,  
       kind: "MODIFY\_OR\_MISSING",  
       evidence: ("evidence/\_governance\_diff/" \+ $summary.ts \+ "/" \+ .)  
     }))  
 ' "$closure" \>"$closure.tmp" && mv "$closure.tmp" "$closure"  
fi

echo "OK: diff at $OUT (changed=$changed)"  
exit 0

\--- FILE END: scripts/omoc\_governance\_diff.sh

### **P.3 scripts/omoc\_governance\_drift\_guard.sh（TT-RIPF-012：禁裸 env；改 closure\_allow artifact）**

\--- FILE BEGIN: scripts/omoc\_governance\_drift\_guard.sh

\#\!/usr/bin/env bash  
set \-euo pipefail

need() { command \-v "$1" \>/dev/null 2\>&1 || { echo "MISSING\_TOOL:$1" \>&2; exit 2; }; }  
need jq  
need sha256sum  
need date

: "${OMOC\_TS:?missing OMOC\_TS}"

DIFFROOT="${OMOC\_DIFF\_DIR:-evidence/\_governance\_diff}"  
CFG\_ALLOW="${OMOC\_CLOSURE\_ALLOW\_FILE:-config/closure\_allow.json}"

summary="$DIFFROOT/$OMOC\_TS/diff\_summary.json"  
sha\_list="$DIFFROOT/$OMOC\_TS/sha256sum.txt"

if \[\[ \! \-f "$summary" \]\]; then  
 echo "MISSING: $summary" \>&2  
 exit 2  
fi  
if \[\[ \! \-f "$sha\_list" \]\]; then  
 echo "MISSING: $sha\_list" \>&2  
 exit 2  
fi

cnt="$(jq \-r '.changed\_count' "$summary")"  
if \[\[ "$cnt" \-le 0 \]\]; then  
 echo "PASS: governance drift guard (changed\_count=$cnt)"  
 exit 0  
fi

\# drift detected \-\> require closure\_allow artifact  
if \[\[ \! \-f "$CFG\_ALLOW" \]\]; then  
 echo "FAIL\_CLOSED: drift detected (changed\_count=$cnt) but missing closure allow artifact: $CFG\_ALLOW" \>&2  
 echo "HINT: route-out to WP-014 closure; then write config/closure\_allow.json bound to this diff evidence." \>&2  
 exit 1  
fi

\# Validate expiry (ISO8601); if parse fails \-\> FAIL\_CLOSED  
now\_epoch="$(date \-u \+%s)"  
exp="$(jq \-r '.expiry // empty' "$CFG\_ALLOW")"  
if \[\[ \-z "$exp" \]\]; then  
 echo "FAIL\_CLOSED: closure allow missing expiry" \>&2  
 exit 1  
fi  
exp\_epoch="$(date \-u \-d "$exp" \+%s 2\>/dev/null || true)"  
if \[\[ \-z "$exp\_epoch" \]\]; then  
 echo "FAIL\_CLOSED: closure allow expiry not parseable: $exp" \>&2  
 exit 1  
fi  
if \[\[ "$exp\_epoch" \-lt "$now\_epoch" \]\]; then  
 echo "FAIL\_CLOSED: closure allow expired: $exp" \>&2  
 exit 1  
fi

\# Bind to diff evidence: require diff\_sha256 matches hash of diff\_summary.json (strong binding, cheap)  
want="$(jq \-r '.diff\_sha256 // empty' "$CFG\_ALLOW")"  
if \[\[ \-z "$want" \]\]; then  
 echo "FAIL\_CLOSED: closure allow missing diff\_sha256" \>&2  
 exit 1  
fi  
have="$(sha256sum "$summary" | awk '{print $1}')"  
if \[\[ "$want" \!= "$have" \]\]; then  
 echo "FAIL\_CLOSED: closure allow not bound to this diff\_summary.json" \>&2  
 echo "  want=$want" \>&2  
 echo "  have=$have" \>&2  
 exit 1  
fi

echo "PASS: governance drift guard (changed\_count=$cnt, closure\_allow=artifact, expiry=$exp)"

\--- FILE END: scripts/omoc\_governance\_drift\_guard.sh

### **P.4 scripts/omoc\_required\_checks\_contract\_guard.sh（TT-RIPF-002：subshell bug 修補 \+ skip hazard）**

\--- FILE BEGIN: scripts/omoc\_required\_checks\_contract\_guard.sh

\#\!/usr/bin/env bash  
set \-euo pipefail

need() { command \-v "$1" \>/dev/null 2\>&1 || { echo "MISSING\_TOOL:$1" \>&2; exit 2; }; }  
need jq  
need rg

contract="config/required\_checks\_contract.json"  
if \[\[ \! \-f "$contract" \]\]; then  
 echo "FAIL\_CLOSED: missing $contract" \>&2  
 exit 1  
fi

\# 1\) workflows existence (MUST NOT use pipe-subshell for fail propagation)  
while read \-r wf; do  
 \[\[ \-z "$wf" \]\] && continue  
 if \[\[ \! \-f ".github/workflows/$wf" \]\]; then  
   echo "FAIL\_CLOSED: missing workflow .github/workflows/$wf (from contract)" \>&2  
   exit 1  
 fi  
done \< \<(jq \-r '.workflows\_required\[\]' "$contract")

\# 2\) skip hazard scan: forbid paths-ignore at workflow trigger level for required workflows  
bad=0  
while read \-r wf; do  
 \[\[ \-z "$wf" \]\] && continue  
 f=".github/workflows/$wf"  
 if rg \-n "paths-ignore:" "$f" \>/dev/null 2\>&1; then  
   echo "FAIL\_CLOSED: skip hazard detected (paths-ignore) in $f" \>&2  
   bad=1  
 fi  
done \< \<(jq \-r '.workflows\_required\[\]' "$contract")

\[\[ "$bad" \-ne 0 \]\] && exit 1

echo "PASS: required checks contract guard"

\--- FILE END: scripts/omoc\_required\_checks\_contract\_guard.sh

### **P.5 scripts/omoc\_pinning\_gate.sh（mutable tag 掃描=0；Fail-Closed）**

\--- FILE BEGIN: scripts/omoc\_pinning\_gate.sh

\#\!/usr/bin/env bash  
set \-euo pipefail

need() { command \-v "$1" \>/dev/null 2\>&1 || { echo "MISSING\_TOOL:$1" \>&2; exit 2; }; }  
need rg

\# Fail if any workflow uses mutable tag @v\*  
\# NOTE: allow local actions like uses: ./.github/actions/foo  
hits="$(rg \-n '^\\s\*-\\s\*uses:\\s\*(?\!\\./)(?\!\\.\\./).\*@v\[0-9\]+' .github/workflows \-S || true)"  
if \[\[ \-n "$hits" \]\]; then  
 echo "FAIL\_CLOSED: mutable tag detected in workflows (pinning\_required=true)" \>&2  
 echo "$hits" \>&2  
 exit 1  
fi

echo "PASS: pinning gate (mutable tags=0)"

\--- FILE END: scripts/omoc\_pinning\_gate.sh

### **P.6 config/governance\_allowable\_drift.json（TT-RIPF-011：reason/expiry/evidence\_required）**

\--- FILE BEGIN: config/governance\_allowable\_drift.json

{  
 "version": "v1",  
 "notes": "Allowable drift MUST be approved by closure before applying. Keep list minimal; expiry required.",  
 "ignore\_fields": \["updated\_at", "created\_at"\],  
 "allowlist": \[  
   {  
     "surface": "rule\_suites.json",  
     "reason": "Rule suite records are time-variant; snapshot as evidence but do not baseline-lock every evaluation row.",  
     "expiry": "2026-12-31T00:00:00Z",  
     "evidence\_required": \[  
       "WP-014 closure bundle locator",  
       "evidence/\_governance\_snapshot/\<ts\>/normalized/rule\_suites.json",  
       "evidence/\_governance\_diff/\<ts\>/diff\_summary.json"  
     \],  
     "owner\_role": "Platform Governance Owner"  
   }  
 \]  
}

\--- FILE END: config/governance\_allowable\_drift.json

### **P.7 config/closure\_allow.json（TT-RIPF-012：closure artifact 憑證）**

\--- FILE BEGIN: config/closure\_allow.json

{  
 "version": "v1",  
 "scope": "governance-drift",  
 "expiry": "2026-12-31T00:00:00Z",  
 "issuer": "WP-014 Closure Owner",  
 "diff\_sha256": "REPLACE\_WITH\_SHA256\_OF\_evidence/\_governance\_diff/\<ts\>/diff\_summary.json",  
 "evidence\_required": \[  
   "WP-014 closure decision record",  
   "TT ids closed for this drift",  
   "evidence bundle locator"  
 \],  
 "notes": "This artifact MUST be generated only after WP-014 closure approval. Drift guard will FAIL\_CLOSED if mismatch/expired."  
}

\--- FILE END: config/closure\_allow.json

### **P.8 config/required\_checks\_contract.json（TT-RIPF-010：placeholder secret-leak gate 不列 required）**

\--- FILE BEGIN: config/required\_checks\_contract.json

{  
 "version": "v2",  
 "contract\_path": "config/required\_checks\_contract.json",  
 "canonical\_required\_check": "ci / omoc-gate",  
 "merge\_group\_compatible": true,

 "workflows\_required": \[  
   "ci-omoc-gate.yml",  
   "supplychain-zizmor.yml",  
   "supplychain-scorecard.yml",  
   "supplychain-pinact.yml"  
 \],

 "workflows\_optional": \[  
   "supplychain-dependency-review.yml",  
   "supplychain-secret-leak-gate.yml"  
 \],

 "contexts\_required": \[  
   "ci / omoc-gate",  
   "supplychain / zizmor",  
   "supplychain / scorecard",  
   "supplychain / pinact"  
 \],

 "contexts\_optional": \[  
   "supplychain / dependency-review",  
   "supplychain / secret-leak-gate"  
 \],

 "timeouts\_seconds": {  
   "ci / omoc-gate": 3600,  
   "supplychain / zizmor": 1800,  
   "supplychain / scorecard": 1800,  
   "supplychain / pinact": 1800,  
   "supplychain / dependency-review": 1800,  
   "supplychain / secret-leak-gate": 1800  
 },

 "optional\_policy": {  
   "supplychain / secret-leak-gate": {  
     "status": "TEMP\_CLOSED",  
     "tt\_id": "TT-RIPF-010",  
     "reason": "placeholder workflow exits 0; MUST NOT be treated as required until replaced with real scanner and non-zero exit on findings."  
   }  
 },

 "notes": "If actual check names differ (GitHub UI contexts), update contract \+ rulesets together via WP-014 closure."  
}

\--- FILE END: config/required\_checks\_contract.json

### **P.9 policy/actions\_security\_policy.yaml**

\--- FILE BEGIN: policy/actions\_security\_policy.yaml

version: v2  
pinning\_required: true  
default\_permissions: read-all  
oidc\_preferred: true

forbidden:  
 \- uses\_unpinned\_actions  
 \- permissions\_write\_all  
 \- secrets\_in\_logs

enforcement:  
 pinning\_gate:  
   script: scripts/omoc\_pinning\_gate.sh  
   expected\_mutable\_tag\_hits: 0  
 zizmor:  
   required\_check: "supplychain / zizmor"  
 snapshot:  
   captures:  
     \- actions\_permissions.json  
     \- actions\_access.json  
     \- selected\_actions.json

\--- FILE END: policy/actions\_security\_policy.yaml

### **P.10 config/tt\_external.json（TT-RIPF-006：外部審查追加掛載）**

\--- FILE BEGIN: config/tt\_external.json

{  
 "version": "v1",  
 "notes": "External audit TT appendices. RIP-F TT Register MUST be able to ingest these without editing the base TT list.",  
 "items": \[  
   {  
     "source": "external\_audit",  
     "finding\_id": "EXT-000",  
     "tt\_id": "TT-RIPF-EXT-000",  
     "severity": "MAJOR",  
     "status": "TEMP\_CLOSED",  
     "title": "Example external audit finding",  
     "closure\_criteria": "Provide evidence bundle and retest steps; then set status=CLOSED",  
     "evidence\_expected": \["evidence/\_acceptance/\<ts\>/..."\],  
     "owner\_role": "RIP Editor"  
   }  
 \]  
}

\--- FILE END: config/tt\_external.json

### **P.11 .github/workflows（骨架；需依 repo 實際調整 SHAs/授權）**

注意：下列 workflows 僅提供「合約位置與命名」；實際 action SHA 必由 pinning gate 驗證；placeholder 工具不得列 required。

\--- FILE BEGIN: .github/workflows/supplychain-secret-leak-gate.yml

name: supplychain / secret-leak-gate

on:  
 pull\_request:  
 merge\_group:  
   types: \[checks\_requested\]

permissions:  
 contents: read

jobs:  
 gitleaks:  
   runs-on: ubuntu-latest  
   steps:  
     \- uses: actions/checkout@\<SHA\_REDACTED\>  
     \- name: Secret scan (placeholder)  
       run: |  
         echo "PLACEHOLDER: replace with real secret scanner (e.g., gitleaks) and exit 1 on findings."  
         exit 0

\--- FILE END: .github/workflows/supplychain-secret-leak-gate.yml

### **P.12 docs/RULESETS\_AS\_CODE.md / docs/ACTIONS\_HARDENING.md**

\--- FILE BEGIN: docs/RULESETS\_AS\_CODE.md

\# Rulesets as Code (RIP-F)

\#\# Purpose  
\- Manage rulesets baseline as JSON.  
\- Deploy only after CODEOWNERS approval.  
\- Produce replayable evidence: snapshot \+ diff \+ hashes.

\#\# Deploy (policy)  
1\) Validate JSON in PR (workflow: rulesets-as-code-validate.yml).  
2\) Ensure CODEOWNERS approval on baseline paths.  
3\) Deploy (workflow: rulesets-as-code-deploy.yml).  
4\) Immediately run governance snapshot+diff to prove applied state.

\#\# Rollback  
\- Re-run deploy workflow with baseline\_ref=\<last\_known\_good\_sha\>.  
\- Produce snapshot+diff evidence again.

\#\# Notes  
\- If API/IaC produces ordering drift, do NOT silence it.  
 Classify drift and handle via WP-014 closure.

\--- FILE END: docs/RULESETS\_AS\_CODE.md

\--- FILE BEGIN: docs/ACTIONS\_HARDENING.md

\# Actions Hardening (RIP-F)

\#\# Non-negotiables  
\- Pin \`uses:\` to full commit SHA (no @v\* mutable tags).  
\- Default \`permissions: read-all\`; elevate per job only when required.  
\- Prefer OIDC for cloud auth; avoid long-lived secrets.  
\- Enforce allowlist at org/enterprise/repo; capture via governance snapshot.

\#\# Verification (Evidence)  
\- zizmor report (SARIF \+ summary)  
\- pinning gate output (mutable tags must be 0\)  
\- governance snapshot: actions permissions \+ selected actions policy

\--- FILE END: docs/ACTIONS\_HARDENING.md

---

## **Q. Runbook（可重跑；含 rollback；每步輸出 evidence locator）**

\[ANCHOR:OMOC-RIPF-Q-RUNBOOK\]  
\<a id="omoc-ripf-p-runbook"\>\</a\>

### **Q-0 Preflight（Fail-Closed）**

* 工具：`gh`, `jq`, `sha256sum`, `rg`  
* 身份：`gh auth status`（只記登入狀態/host；不得吐 token）  
  OMOC\_RIP-F\_v1.0.0

### **Q-1 產 governance snapshot（Drift Evidence）**

export OMOC\_OWNER="\<OWNER\>"  
export OMOC\_REPO="\<REPO\>"  
bash scripts/omoc\_governance\_snapshot.sh  
\# 取得 TS（stdout 或 evidence/\_governance\_snapshot 下最新資料夾）

輸出：`evidence/_governance_snapshot/<TS>/...`

### **Q-2 建立 baseline（第一次導入）**

* 將 `evidence/_governance_snapshot/<TS>/normalized/*.json` 複製到：`config/governance_baseline/*.json`  
* 必走 PR \+ CODEOWNERS（baseline 變更禁止直推）

### **Q-3 做 diff**

export OMOC\_TS="\<TS\>"  
bash scripts/omoc\_governance\_diff.sh

輸出：`evidence/_governance_diff/<TS>/diff_summary.json` \+ `sha256sum.txt`

### **Q-4 Drift guard（closure artifact 驗證）**

export OMOC\_TS="\<TS\>"  
bash scripts/omoc\_governance\_drift\_guard.sh

* changed\_count\>0 且 closure\_allow artifact 無效 → FAIL\_CLOSED（預設）  
* 放行必走 WP-014 closure 並產出 `config/closure_allow.json`（綁定 diff\_summary sha256）  
  OMOC\_WP-014+RB+WI\_v4.0.1-r2

### **Q-5 Required checks contract guard（含 subshell 修補 \+ skip hazard）**

bash scripts/omoc\_required\_checks\_contract\_guard.sh

### **Q-6 Pinning gate（mutable tag 掃描=0）**

bash scripts/omoc\_pinning\_gate.sh

### **Q-7 Rollback（治理回滾）**

* 用 last-known-good baseline ref 回退（route-out：WP-009/013 施工）  
* 回滾後必重跑 Q-1\~Q-4 產出新 evidence，否則回滾只是心理安慰。  
  OMOC\_RIP-F\_v1.0.0

---

## **R. Work Instructions（WI：一步一驗收）**

\[ANCHOR:OMOC-RIPF-R-WI\]  
\<a id="omoc-ripf-q-wi"\>\</a\>

* **WI-F-10**：跑 snapshot → 產 raw/normalized/meta/sha256；缺權限→UNAVAILABLE\_OR\_DENIED（不許中止）。  
* **WI-F-20**：跑 diff → 產 diff\_summary \+ sha256；baseline 缺失→先補 PR baseline。  
* **WI-F-30**：drift\_guard → drift=1 且 closure\_allow 無效→FAIL\_CLOSED；不得靠 env 放行。  
* **WI-F-40**：required checks guard → required workflows 任一含 paths-ignore→FAIL\_CLOSED。  
* **WI-F-50**：pinning gate → mutable tag 命中\>0→FAIL\_CLOSED。  
* **WI-F-60**：若需改 rulesets/UI → Route-out（WP-009/013），本 RIP-F 只負責證據與 guard。

---

## **S. Gates / DoD / Acceptance（判定優先序）**

\[ANCHOR:OMOC-RIPF-S-GATES\]  
\<a id="omoc-ripf-r-gates"\>\</a\>

判定優先序：**FAIL\_CLOSED \> TEMP\_CLOSED \> PASS**（缺口/缺證據/不可定位 → TT → TEMP\_CLOSED；阻斷級 → FAIL\_CLOSED）。

OMOC\_施工RB+WI\_合冊\_v4.0.1-r1

**阻斷級（FAIL\_CLOSED）最小集合**

* TT-RIPF-001：rule\_suites endpoint 錯/中止快照 → **已修補**  
   OMOC\_RIP-F\_v1.0.0\_審查報告  
* TT-RIPF-002：required checks guard subshell bug → **已修補**  
   OMOC\_RIP-F\_v1.0.0\_審查報告  
* TT-RIPF-012：closure\_allow 裸 env 放行 → **已修補（artifact）**  
   OMOC\_RIP-F\_v1.0.0\_審查報告  
* pinning gate 命中 mutable tag \> 0 → FAIL\_CLOSED  
   OMOC\_RIP-F\_v1.0.0\_審查報告

**TEMP\_CLOSED（典型）**

* 平台/授權不可驗證（例如 dependency-review 或 security-and-analysis 權限不足）  
* optional checks（secret-leak gate placeholder）

---

## **T. Traceability（SSOT ↔ RIP-F ↔ Artifacts ↔ Evidence ↔ TT）**

\[ANCHOR:OMOC-RIPF-T-TRACEABILITY\]  
\<a id="omoc-ripf-s-traceability"\>\</a\>

* SSOT：Blueprint/RBWI/Skills/WP-009\~014  
* RIP-F：本文件 §G\~§S  
* Artifacts：§P file blocks  
* Evidence：`evidence/_governance_snapshot/<ts>`、`evidence/_governance_diff/<ts>`、`sha256sum.txt`  
* TT：§U（每筆 TT 必有 closure criteria \+ retest steps \+ expected evidence）

---

## **U. TT Register（含 external audit appendices）**

\[ANCHOR:OMOC-RIPF-U-TT\]  
\<a id="omoc-ripf-t-tt"\>\</a\>

本 Register **必可被外部審查追加**：`config/tt_external.json`（TT-RIPF-006 已落地）。

OMOC\_RIP-F\_v1.0.0\_審查報告

| tt\_id | severity | status | title | closure\_criteria | retest\_steps | owner\_role |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| TT-RIPF-001 | BLOCKER | CLOSED | rule\_suites endpoint 修正 \+ 403/404不中止 | snapshot 產出 rule\_suites.json（raw+normalized）且 meta.api\_calls 一致 | 跑 Q-1；檢視 evidence 產物 | Supply-chain/CI Hardening |
| TT-RIPF-002 | BLOCKER | CLOSED | contract guard subshell bug 修補 | required workflow 含 paths-ignore → guard 必 exit 1 | 建 DT-F-003 反例、跑 guard | CI Gatekeeper |
| TT-RIPF-003 | BLOCKER | CLOSED | WSP v0 scope contract 補齊 | 本文件 §G.5 可定位，含 IN/OUT/route-out | 搜尋 WSP v0 章節 | Scope Marshal |
| TT-RIPF-007 | MINOR | CLOSED | artifacts\_manifest.yaml | O.0 檔案存在且可一眼核對 | 搜尋檔名 | Repo Packager |
| TT-RIPF-008 | MINOR | CLOSED | route-out trigger conditions table | §G.4 表格存在 | 搜尋表格 | Scope Marshal |
| TT-RIPF-010 | MAJOR | TEMP\_CLOSED | secret-leak gate placeholder 禁入 required | required\_checks\_contract.json 不含 required；並標 OPTIONAL/TEMP\_CLOSED | 檢視 contract \+ workflow | Supply-chain Owner |
| TT-RIPF-011 | MAJOR | CLOSED | allowable drift schema（reason/expiry/evidence\_required） | config/governance\_allowable\_drift.json 欄位齊全且可定位 | jq 驗證 | Drift Closure Owner |
| TT-RIPF-012 | MAJOR | CLOSED | closure\_allow 不得接受裸 env | drift\_guard 只接受 closure\_allow artifact，且必綁 diff sha | 跑 Q-4（缺 artifact 必 fail） | Governance Red Team |
| TT-RIPF-014 | MINOR | CLOSED | machine\_summary.json 可 jq 解析 | jq . machine\_summary.json rc=0 | 跑 jq | Docs-as-Code Engineer |

---

## **V. Web Evidence Appendix（SUPPORT-only；雙來源；drift\_action）**

\[ANCHOR:OMOC-RIPF-V-WEB-EVIDENCE\]  
\<a id="omoc-ripf-u-web-evidence"\>\</a\>

本文件本回合不新增 Web 事實；若需補 GitHub Docs/CLI 端點漂移，必依 WP 規格在此列：published\_at / accessed\_at / last\_verified\_at / drift\_action，并滿足雙來源；衝突→WEB-CONFLICT→TT。

OMOC\_RIP-F\_v1.0.0\_審查報告

OMOC\_實作+WP總表\_v4.0.1-r2

（保留欄位模板，供後續填寫）

| web\_id | claim\_supported | source\_1 | source\_2 | published\_at | accessed\_at | last\_verified\_at | web\_conflict\_flag | drift\_action |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| WEB-TEMPLATE-001 | (fill) | (fill) | (fill) | unknown | 2026-02-21T00:00:00+08:00 | 2026-02-21T00:00:00+08:00 | NONE | NEEDS-TEST |

---

## **W. Change Log \+ FINAL VERDICT（含 Findings Closure Matrix）**

\[ANCHOR:OMOC-RIPF-W-CHANGELOG-VERDICT\]  
\<a id="omoc-ripf-v-changelog-verdict"\>\</a\>

### **W.1 Change Log（v1.0.0 → v1.1.0）**

* 移除所有 **chat 對話 URL** 作為導航入口；TOC 全改 repo-local anchors（滿足 Docs-as-Code 可檢索性）。v1.0.0 反例見：  
  OMOC\_RIP-F\_v1.0.0  
* **TT-RIPF-001（BLOCKER）**：修正 rule\_suites endpoint → `/repos/{owner}/{repo}/rulesets/rule-suites`，並修 meta.api\_calls；403/404 不中止快照、改落 `UNAVAILABLE_OR_DENIED`。  
  OMOC\_RIP-F\_v1.0.0\_審查報告  
* **TT-RIPF-002（BLOCKER）**：修正 required checks guard subshell bug（process substitution），新增 skip hazard 嚴格阻擋。  
  OMOC\_RIP-F\_v1.0.0\_審查報告  
* **TT-RIPF-003（BLOCKER）**：補齊 WSP v0 scope contract（§G.5）。  
  OMOC\_RIP-F\_v1.0.0\_審查報告  
* **TT-RIPF-012（MAJOR）**：closure\_allow 禁裸 env，改用 `config/closure_allow.json`（綁 diff sha \+ expiry）。  
  OMOC\_RIP-F\_v1.0.0\_審查報告  
* **TT-RIPF-011（MAJOR）**：allowable drift schema 補 `reason/expiry/evidence_required`。  
  OMOC\_RIP-F\_v1.0.0  
* **TT-RIPF-010（MAJOR）**：placeholder secret-leak gate 移出 required；改 OPTIONAL/TEMP\_CLOSED（防假安全）。  
  OMOC\_RIP-F\_v1.0.0\_審查報告  
* 新增 `O.0 artifacts_manifest.yaml`（TT-RIPF-007）與 `config/tt_external.json`（TT-RIPF-006）。  
  OMOC\_RIP-F\_v1.0.0\_審查報告

### **W.2 Findings Closure Matrix（審查報告 → 修補落點 → 驗收）**

| finding\_id | severity | fix\_location | artifacts | acceptance | tt\_status |
| ----- | ----- | ----- | ----- | ----- | ----- |
| F-E-001 | BLOCKER | §P.1 snapshot script | scripts/omoc\_governance\_snapshot.sh | rule\_suites.json 產出且不中止 | TT-RIPF-001=CLOSED |
| F-E-002 / F-A-003 / F-D-001 | BLOCKER | §P.4 contract guard | scripts/omoc\_required\_checks\_contract\_guard.sh | paths-ignore 反例必 fail | TT-RIPF-002=CLOSED |
| WSP\_SCOPE\_MISSING | BLOCKER | §G.5 | 本文件章節 | scope 可定位+route-out | TT-RIPF-003=CLOSED |
| F-F-001 | MAJOR | §P.3 drift guard | scripts/omoc\_governance\_drift\_guard.sh \+ config/closure\_allow.json | drift=1 且無有效 artifact 必 fail | TT-RIPF-012=CLOSED |
| F-E-003 | MAJOR | §P.6 | config/governance\_allowable\_drift.json | schema 欄位齊全 | TT-RIPF-011=CLOSED |
| F-D-003 | MINOR/MAJOR | §P.8 \+ §N.2 | required\_checks\_contract.json | placeholder 不列 required | TT-RIPF-010=TEMP\_CLOSED |
| F-C-001 | MAJOR | §P.10 \+ §U | config/tt\_external.json | 可掛載外部 TT | TT-RIPF-006=CLOSED |
| F-C-002 | MINOR | §P.0 | O.0 artifacts\_manifest.yaml | 可一眼核對 | TT-RIPF-007=CLOSED |
| F-C-003 | MINOR | §G.4 | route-out triggers table | 可定位表格 | TT-RIPF-008=CLOSED |
| TT-RIPF-014 | MINOR | §X/§W | machine\_summary.json | jq parse rc=0 | CLOSED |

### **W.3 FINAL VERDICT**

* **文件層**：已修補所有阻斷點（TT-RIPF-001/002/003）並把 closure/allowable drift/外部追加/manifest 變成可稽核結構。  
  OMOC\_RIP-F\_v1.0.0\_審查報告  
* **施工層**：仍需依 Runbook 在目標 repo 實跑，才能將 TEMP\_CLOSED → PASS（Fail-Closed 不允許“沒跑就 PASS”）。  
  OMOC\_施工RB+WI\_合冊\_v4.0.1-r1

---

## **X. Self-Audit Checklist（可回放檢核表）**

\[ANCHOR:OMOC-RIPF-X-SELF-AUDIT\]  
\<a id="omoc-ripf-x-self-audit"\>\</a\>

* rule\_suites endpoint 全域一致（scripts \+ meta.api\_calls \+ docs \+ evidence）  
  OMOC\_RIP-F\_v1.0.0\_審查報告  
* contract guard 已移除 subshell bug（process substitution），且含 `paths-ignore` 破壞性案例必 FAIL\_CLOSED  
   OMOC\_RIP-F\_v1.0.0\_審查報告  
* closure\_allow 已改 artifact（grep：`OMOC_CLOSURE_ALLOW` env 直通=0）  
  OMOC\_RIP-F\_v1.0.0\_審查報告  
* TOC/links 全為 repo-local anchors（掃描 `chatgpt.com` / 外部對話連結=0）  
  OMOC\_施工RB+WI\_合冊\_v4.0.1-r1  
* machine\_summary.json 可 jq 解析（rc=0）  
  OMOC\_RIP-F\_v1.0.0\_審查報告  
* placeholder secret-leak gate 未列 required checks（contract required 列表不含）  
  OMOC\_RIP-F\_v1.0.0\_審查報告  
* pinning gate 存在且 Fail-Closed（mutable tag 掃描命中=0）  
  OMOC\_RIP-F\_v1.0.0\_審查報告  
* 與 WP-009\~014 route-out / interface contract 一致（必要時以 TT 收斂，不越界硬塞）  
  OMOC\_WP-012+RB+WI\_v4.0.1-r2

   OMOC\_WP-014+RB+WI\_v4.0.1-r2

---

## **W. machine\_summary.json（乾淨可解析；無雜訊；真實路徑）**

\[ANCHOR:OMOC-RIPF-W-MACHINE-SUMMARY\]  
\<a id="omoc-ripf-w-machine-summary"\>\</a\>

\--- FILE BEGIN: machine\_summary.json

{  
 "doc\_id": "OMOC\_RIP-F",  
 "version": "v1.1.0",  
 "generated\_at": "2026-02-21T00:00:00+08:00",  
 "timezone": "Asia/Taipei",  
 "supersedes": "v1.0.0",  
 "overall\_verdict": "TEMP\_CLOSED",  
 "cr\_open": 0,  
 "top\_blockers\_closed": \["TT-RIPF-001", "TT-RIPF-002", "TT-RIPF-003"\],  
 "majors\_closed": \["TT-RIPF-011", "TT-RIPF-012", "TT-RIPF-006", "TT-RIPF-007", "TT-RIPF-008", "TT-RIPF-014"\],  
 "majors\_open": \["TT-RIPF-010"\],  
 "repo\_artifacts\_manifest": "O.0 artifacts\_manifest.yaml",  
 "evidence\_paths": {  
   "snapshot\_root": "evidence/\_governance\_snapshot/\<ts\>/",  
   "diff\_root": "evidence/\_governance\_diff/\<ts\>/"  
 },  
 "required\_checks\_contract": "config/required\_checks\_contract.json",  
 "closure\_allow\_artifact": "config/closure\_allow.json",  
 "allowable\_drift\_schema": "config/governance\_allowable\_drift.json",  
 "anti\_hallucination\_rules": \[  
   "Use Quick Index \-\> anchor; do not infer across sections.",  
   "No-Source-No-Norm: any normative claim must cite SSOT locator or TT.",  
   "SUPPORT-only stays in Web Evidence Appendix; conflicts \=\> WEB-CONFLICT \=\> TT."  
 \]  
}

\--- FILE END: machine\_summary.json

