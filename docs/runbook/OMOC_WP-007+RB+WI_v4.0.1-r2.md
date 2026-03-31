# **《OMOC\_WP-007+RB+WI》v4.0.1-r2（Phase-L/L5 OpenCode & Skills Pack Integration）**

**適用範圍**：OMOC Phase-L/L5（僅做 OpenCode/Skills Pack 的「抽取落地 \+ 結構/契約驗證 \+ 上下游銜接」）  
**文件角色**：WP \+ Runbook \+ WI（Docs-as-Code；可重跑、可稽核、可回滾）  
**語言**：繁體中文（術語/欄位名/代碼可用英文）  
**基線日期**：2026-02-18（Asia/Taipei）  
**Fail-Closed 規則**：MISSING/UNVERIFIED ⇒ TT ⇒ TEMP\_CLOSED；阻斷級缺口 ⇒ FAIL\_CLOSED（以 Coverage Map \+ TT 狀態裁決）

---

## **導讀（≤30 行）**

WP-007 的存在理由：**把 OMOC 的「Skills Pack 合冊」工程性落地到 repo（`.opencode/skills/*`、`scripts/*`）並提供可稽核的抽取/驗證證據鏈**，同時把「OpenCode/Oh-My-OpenCode 導入」限制在 **能力/版本/權限宣告與風險管理** 的範圍內（不越界替你做平台 UI 設定或 Phase-G 治理）。

你在本 WP 會得到：

1. 一套可重跑的 Runbook（L5-0 \~ L5-8）  
2. 一份操作者導向的 WI（對應 Runbook）  
3. 一組可驗收的 Entry/Exit Gates \+ Evidence Minset \+ BK-007 回滾點  
4. 完整的 Locator Proof（RB+WI、Skills D2/D5/D6、Blueprint）與 Requirement Coverage Map  
5. Fail-Closed 的 TT Register（含 closure criteria / owner\_role / retest / status / evidence\_locator）  
6. Out-of-scope 的精準導流（route\_out\_map：topic → target\_doc → locator）

---

## **TOC**

* [Anchor Registry](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995cff4-c910-83a8-90e3-f04e408be9b0#omoc-wp-007-anchor-registry)  
* [A. Frontmatter](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995cff4-c910-83a8-90e3-f04e408be9b0#omoc-wp-007-a-frontmatter)  
* [B. TOC \+ Anchor Registry](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995cff4-c910-83a8-90e3-f04e408be9b0#omoc-wp-007-b-toc)  
* [C. Authority & Source Policy](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995cff4-c910-83a8-90e3-f04e408be9b0#omoc-wp-007-c-authority)  
* [D. Doc Inventory（Files-first）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995cff4-c910-83a8-90e3-f04e408be9b0#omoc-wp-007-d-doc-inventory)  
* [E. Scope & Responsibility Boundary \+ Route-Out Map](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995cff4-c910-83a8-90e3-f04e408be9b0#omoc-wp-007-e-scope)  
* [F. Requirements（req\_id）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995cff4-c910-83a8-90e3-f04e408be9b0#omoc-wp-007-f-requirements)  
* [G. Runbook（L5 steps）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995cff4-c910-83a8-90e3-f04e408be9b0#omoc-wp-007-g-runbook)  
* [H. WI（工作指導書）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995cff4-c910-83a8-90e3-f04e408be9b0#omoc-wp-007-h-wi)  
* [I. Gates / DoD / Acceptance](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995cff4-c910-83a8-90e3-f04e408be9b0#omoc-wp-007-i-gates)  
* [J. Locator Proof Appendices](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995cff4-c910-83a8-90e3-f04e408be9b0#omoc-wp-007-j-locator-proof)  
* [K. Risk Register & Troubleshooting](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995cff4-c910-83a8-90e3-f04e408be9b0#omoc-wp-007-k-risk)  
* [L. Requirement Coverage Map](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995cff4-c910-83a8-90e3-f04e408be9b0#omoc-wp-007-l-coverage-map)  
* [M. TT Register（Fail-Closed）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995cff4-c910-83a8-90e3-f04e408be9b0#omoc-wp-007-m-tt-register)  
* [N. Web Evidence Appendix（SUPPORT-only）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995cff4-c910-83a8-90e3-f04e408be9b0#omoc-wp-007-n-web-evidence)  
* [O. Change Log \+ FINAL VERDICT](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995cff4-c910-83a8-90e3-f04e408be9b0#omoc-wp-007-o-changelog-verdict)  
* [Self-Audit Checklist](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995cff4-c910-83a8-90e3-f04e408be9b0#omoc-wp-007-self-audit)

---

## **Anchor Registry**

本文件主錨點（穩定，不依賴行號）：

* `#omoc-wp-007-a-frontmatter`  
* `#omoc-wp-007-c-authority`  
* `#omoc-wp-007-d-doc-inventory`  
* `#omoc-wp-007-e-scope`  
* `#omoc-wp-007-f-requirements`  
* `#omoc-wp-007-g-runbook`  
* `#omoc-wp-007-h-wi`  
* `#omoc-wp-007-i-gates`  
* `#omoc-wp-007-j-locator-proof`  
* `#omoc-wp-007-l-coverage-map`  
* `#omoc-wp-007-m-tt-register`  
* `#omoc-wp-007-o-changelog-verdict`

---

## **A. Frontmatter（版本/日期/適用範圍/讀者）**

### **文件識別**

* `doc_name`：OMOC\_WP-007+RB+WI  
* `doc_version`：v4.0.1-r2  
* `phase_stage`：Phase-L/L5  
* `wp_id`：WP-007  
* `wp_name`：OpenCode & Skills Pack Integration  
* `audience`：repo maintainer / CI maintainer / auditors / operators  
* `baseline_date`：2026-02-18（Asia/Taipei）

### **Interface Contract（藍圖要求的必備欄位；本文件輸出承諾）**

* `blueprint_version`：v4.0.1-r1（N1）  
* `required_checks`：不在本 WP 建立（Phase-G 契約；僅 route-out）  
* `evidence_min_set`：log/rc/snapshots \+（若可）validator 結果  
* `tt_refs`：見 [M. TT Register](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995cff4-c910-83a8-90e3-f04e408be9b0#omoc-wp-007-m-tt-register)  
* `web_refs`：本文件不新增外部 Web 來源；僅引用藍圖內既有 W-ID（若涉及 OpenCode 名詞/權限/工具漂移）

---

## **B. TOC \+ Anchor Registry（強制）**

* TOC：見本文開頭  
* Anchor Registry：見 [Anchor Registry](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995cff4-c910-83a8-90e3-f04e408be9b0#omoc-wp-007-anchor-registry)

---

## **C. Authority & Source Policy（NORMATIVE vs SUPPORT）**

### **C1) Authority Stack（SSOT；No-Source-No-Norm）**

**NORMATIVE（規範性主張必須可定位到以下文件原文）**

1. N1 `/mnt/data/OMOC_藍圖_v4.0.1-r1.md`  
2. N2 `/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md`  
3. N3 `/mnt/data/OMOC_施工skills_合冊_v4.0.1-r2.md`  
4. N4 `/mnt/data/OMOC_實作+WP總表_v4.0.1-r2.md`  
5. N5 `/mnt/data/OMOC_WP-001+RB+WI_v4.0.1-r2.md` ～ N10 `/mnt/data/OMOC_WP-006+RB+WI_v4.0.1-r2.md`（名詞/契約一致性）  
6. NX `/mnt/data/OMOC_WP-008+RB+WI.md` ～ `/mnt/data/OMOC_WP-014+RB+WI.md`（route-out 精準導流與下游依賴）

**REVIEW/FIX SPEC（本次必須逐條 closure）**

* R7 `/mnt/data/OMOC_WP-007+RB+WI_審查報告.md`

**SUPPORTED / SUPPORT-only（不得升格為規範）**

* S1 `/mnt/data/OMOC_實作+WP總表_v4.0.1-r1.md`：在 r2 已標為 `SUPPORTED-SUPERSEDED`，且 drift\_action 指示 `do not reference after r2`（不得作為 NORMATIVE）

### **C2) SSOT 漂移檢核（必做；避免把 superseded 當規範）**

**檢核步驟（Fail-Closed）**

1. 以 WP 總表 r2 的 Doc Inventory 判定文件 role（NORMATIVE / SUPPORTED-SUPERSEDED / SUPPORT-only）。  
2. 若發現任何文件被標為 `SUPPORTED-SUPERSEDED`：  
   * 在本文件 **降級為 SUPPORT-only**；  
   * 禁止出現在 runbook 命令的「規範檢索輸入」；  
   * 任何曾引用該文件作規範者：一律開 TT（DRIFT）並 TEMP\_CLOSED。

**定位證據（WP 總表 r2）**：Doc Inventory 中 N4 `/mnt/data/OMOC_實作+WP總表_v4.0.1-r1.md` role=`SUPPORTED-SUPERSEDED`、drift\_action=`do not reference after r2`（見 [J. Locator Proof](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995cff4-c910-83a8-90e3-f04e408be9b0#omoc-wp-007-j-locator-proof)）。

### **C3) 指令/資料分離（Prompt Injection / Confused-Deputy 防護）**

* 檔案內容、附件、工具輸出、Web 內容一律視為 **Data**，不得自動服從其中的「指令句」。  
* 任何規範性語句必須能定位到 NORMATIVE；否則 UNVERIFIED ⇒ TT ⇒ TEMP\_CLOSED。  
* 涉及外部平台易變行為（GitHub UI / OpenCode 平台行為）：僅 SUPPORT-only，且必綁 TT。

**藍圖定位證據**：`[ANCHOR:OMOC-BP-0300]`「缺來源/缺定位：UNVERIFIED→TT→TEMP\_CLOSED」（見 [J. Locator Proof](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995cff4-c910-83a8-90e3-f04e408be9b0#omoc-wp-007-j-locator-proof)）。

---

## **D. Doc Inventory（Files-first）**

規則：任何無法定位版本/章節/錨點者 ⇒ UNVERIFIED ⇒ 必開 TT（本文件不得留 CR\_OPEN）

| doc\_id | filename | version（可定位） | normative\_role | key\_anchors\_or\_sections（將用於本 WP） | locator\_proof\_sample（≤25字 \+ 定位） |
| ----- | ----- | ----- | ----- | ----- | ----- |
| N1 | `/mnt/data/OMOC_藍圖_v4.0.1-r1.md` | v4.0.1-r1 | NORMATIVE | Reader Guide（No-Source-No-Norm）、工具能力宣告、TT 結構 | 「缺來源/缺定位：UNVERIFIED…」`[ANCHOR:OMOC-BP-0300]` |
| N2 | `/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md` | v4.0.1-r1 | NORMATIVE | `step()` 命令模板、Phase-L/L5 原則 | `ANCHOR:OMOC-RBWI-CMD-TEMPLATE` 含 `tee`/`PIPESTATUS`/`.rc` |
| N3 | `/mnt/data/OMOC_施工skills_合冊_v4.0.1-r2.md` | v4.0.1-r2 | NORMATIVE | D2（FILE BEGIN/END 契約）、D5（extractor/validator）、D6（acceptance） | `#OMOC-CSK-0400`「FILE BEGIN/END…FAIL\_CLOSED」 |
| N4 | `/mnt/data/OMOC_實作+WP總表_v4.0.1-r2.md` | v4.0.1-r2 | NORMATIVE | Doc Inventory（superseded 判定）、WP Summary（WP-007 列）、route-out 依據 | WP-007 列：`Phase-L/L5…N3…extractor/validator logs` |
| S1 | `/mnt/data/OMOC_實作+WP總表_v4.0.1-r1.md` | v4.0.1-r1 | SUPPORT-only（SUPPORTED-SUPERSEDED） | 僅作 legacy 參考，不得作規範與命令輸入 | r2 Doc Inventory：`SUPPORTED-SUPERSEDED`、`do not reference after r2` |
| D-WP007-OLD | `/mnt/data/OMOC_WP-007+RB+WI.md` | legacy | 被取代對象 | 舊版 Runbook/WI/Gates/BK/Risks/TT 宣告 | 舊版 L5-1 寫死 r1（屬 DRIFT） |
| R7 | `/mnt/data/OMOC_WP-007+RB+WI_審查報告.md` | 2026-02-18 | REVIEW/FIX SPEC | F-007-001\~006 closure | F-007-001/002：r1 污染 SSOT（BLOCKER） |
| NX-008 | `/mnt/data/OMOC_WP-008+RB+WI.md` | as-is | NORMATIVE（route-out） | Evidence Triplet+Bundle 實作本體 | 用於依賴與重跑條件（validator 前置） |
| NX-009\~014 | `/mnt/data/OMOC_WP-009+RB+WI.md`…`WP-014` | as-is | NORMATIVE（route-out） | Phase-G rulesets/required checks/MQ/drift guard | Out-of-scope 精準導流 |

---

## **E. Scope & Responsibility Boundary**

### **E1) In-scope（WP-007 必做）**

1. **Skills Pack 抽取落地**：依 Skills D2/D5 契約，將 `.opencode/skills/*` 與 `scripts/*` 落地到 repo。  
2. **最低可跑的結構驗證**：驗證目標路徑與關鍵檔存在（不依賴 WP-008）。  
3. **可選的契約驗證（validator）**：若前置依賴滿足（特別是 evidence 結構/Triplet/Bundle 或其等價最小集），執行 validator 並產出 log/rc；若不滿足 ⇒ Fail-Closed ⇒ TT ⇒ TEMP\_CLOSED。  
4. **OpenCode/Oh-My-OpenCode 導入的最低宣告與風險控管**：僅限「版本/權限/工具可用性」宣告與 evidence 記錄；不越界提供平台 UI 操作。

### **E2) Out-of-scope（WP-007 禁止承接）**

* GitHub Rulesets / Branch protection / Required checks / Merge Queue 設定變更與驗證：屬 Phase-G（見 route-out）。  
* Evidence Triplet+Bundle 的實作本體：屬 WP-008。  
* Required checks 命名契約鎖定、merge\_group 觸發對齊、always-report wrappers：屬 WP-010\~WP-013 / WP-011 等。

### **E3) route\_out\_map（topic → target\_doc → locator → why）**

| topic | target\_doc | locator（本 repo 文件內定位） | why |
| ----- | ----- | ----- | ----- |
| Evidence Triplet+Bundle 實作/產物（verdict/index/checks\_manifest/bundle/audit） | `OMOC_WP-008+RB+WI.md` | WP-008 對應「Triplet+Bundle」章節（以該檔 TOC/anchors 為準） | WP-007 僅能做銜接與前置一致性檢查，不能替代實作 |
| Required checks 命名契約（checks\_manifest） | `OMOC_WP-010+RB+WI.md` | WP-010 對應「Required Checks Contract Lock」章節 | Phase-G/G1 事項，不得塞回 L5 |
| merge\_group 觸發對齊、MQ probe | `OMOC_WP-012+RB+WI.md` | WP-012 對應「merge\_group Trigger Alignment \+ MQ Probe」章節 | GitHub 易變行為，需在 Phase-G 受控驗證 |
| Merge Queue 啟用與驗證 | `OMOC_WP-013+RB+WI.md` | WP-013 對應「Merge Queue Enablement & Verification」章節 | WP-007 預設 Phase-L 不啟用 MQ（RB+WI 原則） |
| Rulesets 快照/政策草案 | `OMOC_WP-009+RB+WI.md` | WP-009 對應「Rulesets Snapshot」章節 | 先快照後變更，非 WP-007 職責 |
| Always-Report wrappers / Status hygiene | `OMOC_WP-011+RB+WI.md` | WP-011 對應章節 | 防止「Waiting for status」類卡死，屬 Phase-G/G2 |
| Drift Guard / Closure Management | `OMOC_WP-014+RB+WI.md` | WP-014 對應章節 | TT/closure/drift 的集中治理 |

---

## **F. Requirements（WP-007 必做什麼；req\_id）**

每條 requirement 必含：normative\_source\_locators \+ 驗收方式（客觀）

| req\_id | requirement\_statement | normative\_source\_locators | acceptance\_method（客觀） |
| ----- | ----- | ----- | ----- |
| R7-001 | Authority Stack 不得引用 superseded（r1 只能 SUPPORT-only） | WP 總表 r2：Doc Inventory `SUPPORTED-SUPERSEDED … do not reference after r2` | 本文件不得把 r1 列為 NORMATIVE；Runbook 命令不得以 r1 作檢索輸入 |
| R7-002 | 全文檢索/互證步驟不得寫死 r1；必參數化 SSOT（如 WP\_MAP=r2） | 審查報告 F-007-002 closure；Fail-Closed 原則 | L5-1 以變數 `WP_MAP` 指向 r2；log/rc 可回放 |
| R7-003 | Runbook 命令模板需與 RB+WI `step()` 一致（tee/PIPESTATUS/rc） | RB+WI `ANCHOR:OMOC-RBWI-CMD-TEMPLATE` | 使用 step() 產出 `evidence/_acceptance/<ts>/log/*.log` \+ `.rc` |
| R7-004 | Skills 抽取契約必對齊 D2（FILE BEGIN/END \+ code fence） | Skills `#OMOC-CSK-0400` | 抽取工具僅認契約；抽不到 ⇒ FAIL\_CLOSED（有 log/rc） |
| R7-005 | 必落地 `.opencode/skills/*` 與 `scripts/*`（extractor/validator） | WP 總表 r2：WP-007 evidence\_locator=extractor/validator logs；Skills D5 | `test -f .opencode/skills/omoc-router/SKILL.md` 等；產出 tree\_after |
| R7-006 | 必提供 BK-007-01/02/03（變更前/生成後/驗證後） | 舊版 BK-007；本文件強化 | 具體 snapshot 檔 \+ git diff/HEAD 記錄 |
| R7-007 | 若 validator 因前置不足不可 PASS：必 TT+TEMP\_CLOSED，不得口頭宣告 | Blueprint Fail-Closed；WP-008 依賴 route-out | TT-WP007-DEP-001（或等價）具 closure/retest；保存 L5-4B log/rc |
| R7-008 | 必提供 TT Register，涵蓋 TT-OPENCODE-001/TT-SKILLS-001/TT-WP007-DEP-001 與新增 TT | 審查報告 F-007-005 closure | TT 表每列具 close\_conditions/retest/evidence\_locator |
| R7-009 | 必提供 route\_out\_map（topic → target\_doc → locator） | 審查報告 F-007-006 closure | Out-of-scope 皆可導航到具名 WP 文件 |

---

## **G. Runbook（可重跑、可稽核、可回滾）**

### **G0) 全域變數（避免寫死版本；BLOCKER 修補點）**

\# SSOT（不得寫死 r1；r1 為 SUPPORTED-SUPERSEDED）  
WP\_MAP="/mnt/data/OMOC\_實作+WP總表\_v4.0.1-r2.md"  
RBWI="/mnt/data/OMOC\_施工RB+WI\_合冊\_v4.0.1-r1.md"  
SKILLS="/mnt/data/OMOC\_施工skills\_合冊\_v4.0.1-r2.md"  
BLUEPRINT="/mnt/data/OMOC\_藍圖\_v4.0.1-r1.md"

\# timestamp（與 RB+WI step() 一致）  
OMOC\_TS="${OMOC\_TS:-$(date \-u \+%Y%m%dT%H%M%SZ)}"  
EVD\_DIR="evidence/\_acceptance/${OMOC\_TS}"  
LOG\_DIR="${EVD\_DIR}/log"  
SNAP\_DIR="${EVD\_DIR}/snapshots"

### **G1) step() 模板（引用 RB+WI；不得自創語義）**

* **原則**：本 WP 不在 shell 啟用 `set -e` 作為全域默認；以 `step()` 產生 `.rc` 來承接 Fail-Closed。  
* **導入方式**：若你的環境已在 WP-003/WP-005 建立通用 step.sh，可 `source`；否則可直接複用 RB+WI 的 step() 內容（見 Locator Proof）。

**注意**：若你外層 shell 開了 `set -e`，請在每次呼叫 step() 後用 `|| true` 防止終端提前終止（低終端終止風險要求）。

---

### **L5-0 Preflight：環境與前置檢查（Fail-Closed）**

**Purpose**：確認 repo root、基本工具、evidence 路徑可用（不要求 OpenCode 已可用）  
**Inputs**：repo 工作目錄  
**Commands**

mkdir \-p "$LOG\_DIR" "$SNAP\_DIR"

\# 低終端終止風險：每步都不讓 shell 因 rc\!=0 退出  
step "L5-0-root" 2m 'pwd; git rev-parse \--show-toplevel 2\>/dev/null || true' || true  
step "L5-0-tools" 5m 'bash \--version | head \-n 1; python3 \-V || true; jq \--version || true; grep \--version | head \-n 1 || true' || true  
step "L5-0-evidence-dir" 2m "mkdir \-p \\"$SNAP\_DIR\\"; echo \\"$EVD\_DIR\\" | tee \\"$SNAP\_DIR/wp007\_evidence\_dir.txt\\"" || true

**Outputs**

* `evidence/_acceptance/<ts>/log/L5-0-*.log` \+ `.rc`  
* `evidence/_acceptance/<ts>/snapshots/wp007_evidence_dir.txt`  
  **Verification**  
* evidence 目錄存在；log/rc 落地  
  **Evidence Minset**  
* L5-0 logs \+ rc \+ snapshots  
  **Failure Handling**  
* 任一工具缺失：記錄在 `.log`，不口頭補腦；必要時建 TT（在 [M](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995cff4-c910-83a8-90e3-f04e408be9b0#omoc-wp-007-m-tt-register)）  
  **Rollback**  
* N/A（未變更 repo）  
  **Source Locators**  
* RB+WI step() 模板（見 [J](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995cff4-c910-83a8-90e3-f04e408be9b0#omoc-wp-007-j-locator-proof)）

---

### **L5-1 SSOT/Spec Discovery：定位 WP-007 規範來源（修補 F-007-001/002）**

**Purpose**：全文檢索/互證必須在正確 SSOT（r2）上執行；不得碰 superseded r1  
**Inputs**：`$WP_MAP $RBWI $SKILLS $BLUEPRINT`  
**Commands（不依賴 rg；用 grep \-n）**

step "L5-1-ssot-echo" 1m "printf '%s\\n' \\"WP\_MAP=$WP\_MAP\\" \\"RBWI=$RBWI\\" \\"SKILLS=$SKILLS\\" \\"BLUEPRINT=$BLUEPRINT\\" | tee \\"$SNAP\_DIR/wp007\_ssot\_paths.txt\\"" || true

\# grep 範圍：只用 r2（r1 禁止作規範檢索輸入）  
step "L5-1-grep-wp007" 8m "  
  for f in \\"$WP\_MAP\\" \\"$RBWI\\" \\"$SKILLS\\" \\"$BLUEPRINT\\"; do  
    echo \\"---\[FILE\] \\$f\\"  
    grep \-n \\"WP-007\\\\|Phase-L/L5\\\\|OpenCode\\\\|\\\\.opencode\\\\|extract\\\\|validator\\\\|Skills File Pack\\\\|FILE BEGIN\\\\|Fail-Closed\\\\|TEMP\_CLOSED\\\\|TT-\\" \\"\\$f\\" | head \-n 200 || true  
  done  
" || true

**Outputs**

* `.../log/L5-1-ssot-echo.log/.rc`  
* `.../log/L5-1-grep-wp007.log/.rc`  
* `.../snapshots/wp007_ssot_paths.txt`  
  **Verification**  
* log 中明確顯示 `WP_MAP=...-r2.md`  
  **Evidence Minset**  
* L5-1 logs \+ rc \+ ssot\_paths snapshot  
  **Failure Handling**  
* grep 無命中：不自動推論；建 TT-WP007-SOP-001（或更新其狀態）  
  **Rollback**  
* N/A  
  **Source Locators**  
* WP 總表 r2（WP-007 列、Doc Inventory superseded 規則）；審查報告 F-007-001/002（closure）

---

### **L5-2 Repo Landing Plan：落地路徑與命名契約（Fail-Closed）**

**Purpose**：在抽取前先固定「目標樹」；避免抽完才發現跑到錯地方  
**Inputs**：repo root  
**Commands**

step "L5-2-tree-plan" 2m "  
cat \<\<'EOF' | tee \\"$SNAP\_DIR/wp007\_target\_tree.txt\\"  
.opencode/  
  skills/  
    omoc-router/SKILL.md  
scripts/  
  omoc\_extract\_skills.sh  
  omoc\_validate\_contracts.sh  
EOF  
" || true

step "L5-2-pre-tree" 2m "find .opencode scripts \-maxdepth 4 \-type f 2\>/dev/null | sort | tee \\"$SNAP\_DIR/wp007\_tree\_before.txt\\" || true" || true

**Outputs**

* `snapshots/wp007_target_tree.txt`  
* `snapshots/wp007_tree_before.txt`  
  **Verification**  
* 目標樹文件存在  
  **Evidence Minset**  
* L5-2 logs \+ rc \+ snapshots  
  **Failure Handling**  
* 無  
  **Rollback**  
* N/A  
  **Source Locators**  
* Skills D2（示例檔：`.opencode/skills/omoc-router/SKILL.md`）與 D5（scripts）契約（見 [J](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995cff4-c910-83a8-90e3-f04e408be9b0#omoc-wp-007-j-locator-proof)）

---

### **L5-3 Extraction：抽取落地（依 Skills D2/D5）**

**Purpose**：依 skills pack 合冊契約抽取 `.opencode/skills/*` 與 `scripts/*`  
**Inputs**：`$SKILLS`  
**Commands**

\# BK-007-01（變更前）  
step "L5-3-bk-pre" 3m "  
  git rev-parse HEAD | tee \\"$SNAP\_DIR/wp007\_git\_head\_pre.txt\\"  
  git status \--porcelain | tee \\"$SNAP\_DIR/wp007\_git\_status\_pre.txt\\"  
  find .opencode \-maxdepth 4 \-type f 2\>/dev/null | sort | tee \\"$SNAP\_DIR/wp007\_opencode\_pre.txt\\" || true  
" || true

\# 主路徑：若 scripts/omoc\_extract\_skills.sh 已存在，直接使用  
step "L5-3-extract" 12m "  
  if test \-f scripts/omoc\_extract\_skills.sh; then  
    bash scripts/omoc\_extract\_skills.sh \\"$SKILLS\\"  
  else  
    echo '\[INFO\] scripts/omoc\_extract\_skills.sh missing; fallback bootstrap will be used (SUPPORT-only within repo).'  
    exit 2  
  fi  
" || true

\# Fallback（僅在缺腳本時）：把缺口 Fail-Closed，走 TT（不假裝完成）  
step "L5-3-bootstrap-note" 1m "  
  if \! test \-f scripts/omoc\_extract\_skills.sh; then  
    echo 'MISSING extractor script; see TT-SKILLS-001 and TT-WP007-DEP-BOOTSTRAP-001' | tee \\"$SNAP\_DIR/wp007\_extract\_bootstrap\_gap.txt\\"  
  fi  
" || true

\# 生成後快照（BK-007-02）  
step "L5-3-tree-after" 3m "  
  git status \--porcelain | tee \\"$SNAP\_DIR/wp007\_git\_status\_post.txt\\"  
  find .opencode scripts \-maxdepth 4 \-type f 2\>/dev/null | sort | tee \\"$SNAP\_DIR/wp007\_tree\_after.txt\\" || true  
" || true

\# 目標檔檢查（結構層；可客觀驗收）  
step "L5-3-verify-files" 2m "  
  test \-f .opencode/skills/omoc-router/SKILL.md  
  test \-f scripts/omoc\_extract\_skills.sh  
  test \-f scripts/omoc\_validate\_contracts.sh  
" || true

**Outputs**

* BK-007-01：`wp007_git_head_pre.txt`、`wp007_git_status_pre.txt`、`wp007_opencode_pre.txt`  
* BK-007-02：`wp007_git_status_post.txt`、`wp007_tree_after.txt`  
* logs/rc：`L5-3-*.log/.rc`  
  **Verification**  
* `.opencode/skills/omoc-router/SKILL.md` 存在  
* `scripts/omoc_extract_skills.sh`、`scripts/omoc_validate_contracts.sh` 存在  
  **Evidence Minset**  
* L5-3 logs/rc \+ BK-007 snapshots  
  **Failure Handling**  
* 抽取失敗：不得補腦；對照 D2「契約違約＝FAIL\_CLOSED」；建 TT（至少 TT-SKILLS-001）  
  **Rollback**  
* `git restore -SW .`（僅在你確認要丟棄變更時）  
* 或 `git reset --hard <pre_head>`（需先確認無未保存工作）  
  **Source Locators**  
* Skills D2（FILE BEGIN/END 契約）、Skills D5（extractor script）（見 [J](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995cff4-c910-83a8-90e3-f04e408be9b0#omoc-wp-007-j-locator-proof)）

---

### **L5-4 Validation：結構驗證 \+ 契約驗證（Fail-Closed）**

**Purpose**：提供最低可跑的驗證；契約驗證若受前置依賴影響不得硬宣告 PASS  
**Inputs**：抽取後 repo  
**Commands**

\# L5-4A：結構驗證（不依賴 WP-008）  
step "L5-4A-structure" 3m "  
  test \-f .opencode/skills/omoc-router/SKILL.md  
  test \-f scripts/omoc\_extract\_skills.sh  
  test \-f scripts/omoc\_validate\_contracts.sh  
  echo '\[OK\] structure baseline present'  
" || true

\# L5-4B：契約驗證（可能依賴 evidence 結構/Triplet/Bundle 或其最小集）  
step "L5-4B-contract-validate" 10m "  
  if test \-f scripts/omoc\_validate\_contracts.sh; then  
    bash scripts/omoc\_validate\_contracts.sh  
  else  
    echo '\[FAIL\] validator script missing'  
    exit 2  
  fi  
" || true

**Outputs**

* `log/L5-4A-structure.log/.rc`  
* `log/L5-4B-contract-validate.log/.rc`  
  **Verification**  
* L5-4A：rc=0 ⇒ 結構 PASS  
* L5-4B：rc=0 ⇒ 契約驗證 PASS（若非 0：必走 TT \+ TEMP\_CLOSED）  
  **Evidence Minset**  
* L5-4 logs/rc（兩段都要留）  
  **Failure Handling（Fail-Closed 規則）**  
* L5-4B rc≠0：  
  * **不得**口頭改判 PASS  
  * 建立/更新 `TT-WP007-DEP-001`（若原因為 WP-008 前置缺口）或對應 TT（工具缺失/契約違約）  
  * 保存 log/rc 作為 retest 基線  
    **Rollback**  
* N/A（驗證不應改 repo）  
  **Source Locators**  
* Skills D5（validator/exit 行為）；Blueprint Fail-Closed（UNVERIFIED→TT→TEMP\_CLOSED）见 [J](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995cff4-c910-83a8-90e3-f04e408be9b0#omoc-wp-007-j-locator-proof)

---

### **L5-5 Dependency Contract Check：與本地 acceptance / evidence 契約銜接**

**Purpose**：明確依賴：validator 若要求 evidence 結構/Triplet，必在此確認（否則 TT）  
**Commands**

step "L5-5-evidence-path-check" 2m "  
  test \-d evidence/\_acceptance && echo '\[OK\] evidence/\_acceptance exists' || echo '\[INFO\] evidence/\_acceptance missing'  
  ls \-1 evidence/\_acceptance 2\>/dev/null | tail \-n 10 || true  
" || true

**Failure Handling**

* evidence 結構缺失且 validator 需要：`TT-WP007-DEP-001` 綁定 WP-008 route-out（不得在 WP-007 偷做 WP-008 的實作）  
  **Source Locators**  
* WP-008（實作本體）；WP 總表 r2（WP-008 evidence minset 定義）

---

### **L5-6 PR/CI Alignment Hooks：本 WP 是否需要 CI 變更？（預設 N/A；route-out）**

**Purpose**：掃描是否不小心越界改到 `.github/workflows`  
**Commands**

step "L5-6-scan-workflows" 3m "  
  ls \-la .github/workflows 2\>/dev/null || true  
  git status \--porcelain | grep \-n \\"^.. \\\\.github/workflows\\" || true  
" || true

**Failure Handling**

* 若出現 workflow 變更：**先停**，route-out 到 WP-011/WP-012/WP-013；並開 TT-WP007-SCOPE-001（越界風險）

---

### **L5-7 Post-check & Snapshot：生成後快照（BK）與 diff（BK-007-03）**

**Purpose**：把回滾點固定化（不是祈禱）  
**Commands**

step "L5-7-diffstat" 3m "git diff \--stat | tee \\"$SNAP\_DIR/wp007\_diffstat.txt\\"" || true  
step "L5-7-name-status" 3m "git diff \--name-status | tee \\"$SNAP\_DIR/wp007\_name\_status.txt\\"" || true  
step "L5-7-head-post" 2m "git rev-parse HEAD | tee \\"$SNAP\_DIR/wp007\_git\_head\_post.txt\\"" || true

**Outputs**

* BK-007-03：diffstat/name\_status/head\_post  
  **Verification**  
* 快照檔存在；可回放對照  
  **Rollback**  
* 依 BK-007-01 的 `wp007_git_head_pre.txt` 進行 reset（人工決策；本 WP 不替你做 destructive 操作）

---

### **L5-8 Troubleshooting Playbook：症狀→診斷→修復→證據→回滾（摘要；完整表見 K）**

**Purpose**：提供可照做的診斷路徑（不口號）  
**Commands**：見 [K. Troubleshooting](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995cff4-c910-83a8-90e3-f04e408be9b0#omoc-wp-007-k-risk)

---

## **H. WI（工作指導書；面向操作者）**

### **H1) 你該在什麼時候跑 WP-007？**

* 你要把 OMOC 的 skills pack 落地到 repo（`.opencode/skills`、`scripts`）。  
* 你要拿到「抽取/驗證」的 log/rc 與 BK 快照，提供給審查或後續 WP（特別是 WP-008）。

### **H2) 操作順序（推薦）**

1. **L5-0**：確認環境與 evidence 路徑落地  
2. **L5-1**：確認 SSOT 指向 r2（log 必須印出 `WP_MAP=...-r2.md`）  
3. **L5-2**：固定目標樹  
4. **L5-3**：抽取落地（包含 BK-007-01/02）  
5. **L5-4A**：結構驗證（最低可跑）  
6. **L5-4B**：契約驗證（可 PASS 或 FAIL；FAIL 必 TT+TEMP\_CLOSED）  
7. **L5-7**：diff 快照（BK-007-03）  
8. **L5-8**：若有錯誤，按症狀表處理並補 TT

### **H3) Tooling & When（工具×時機×禁止事項）**

| tool | when\_to\_use | forbidden / why |
| ----- | ----- | ----- |
| `step()` | 所有可重跑命令 | 禁止用「裸跑 \+ set \-e」取代：會讓終端提前終止且缺 `.rc` |
| `grep -n` | SSOT 檢索（替代 rg） | 禁止用 superseded r1 當規範檢索輸入 |
| `git diff / status / rev-parse` | BK 快照與回滾點固定 | 禁止在未做 BK 前做 destructive reset |
| `scripts/omoc_extract_skills.sh` | 依 D2 契約抽取落地 | 缺腳本不得假裝完成；應走 TT |
| `scripts/omoc_validate_contracts.sh` | 契約驗證 | rc≠0 不得口頭改判 PASS；必 TT |

---

## **I. Gates / DoD / Acceptance**

### **I1) Entry Gate（進入 WP-007 的客觀條件）**

* EG-007-01：可建立 `evidence/_acceptance/<ts>`（L5-0-evidence-dir rc=0 或 log 顯示成功）  
* EG-007-02：SSOT 指向 r2（L5-1-ssot-echo.log 內含 `WP_MAP=...-r2.md`）  
* EG-007-03：Repo 可讀寫（git status 可執行）

### **I2) Exit Gate（離開 WP-007 的客觀條件）**

* XG-007-01：`.opencode/skills/omoc-router/SKILL.md` 存在（L5-3-verify-files）  
* XG-007-02：`scripts/omoc_extract_skills.sh`、`scripts/omoc_validate_contracts.sh` 存在（L5-3-verify-files）  
* XG-007-03：BK-007-01/02/03 快照檔存在（snapshots 中的 pre/post/diff）  
* XG-007-04：若 L5-4B rc=0 ⇒ 契約驗證 PASS；若 rc≠0 ⇒ TT-WP007-DEP-001（或對應 TT）為 OPEN/TEMP\_CLOSED 且具 retest 路徑（Fail-Closed 合格）

### **I3) Evidence Minset（最低證據集）**

* `evidence/_acceptance/<ts>/log/L5-*.log`  
* `evidence/_acceptance/<ts>/log/L5-*.rc`  
* `evidence/_acceptance/<ts>/snapshots/wp007_ssot_paths.txt`  
* `.../snapshots/wp007_target_tree.txt`  
* BK-007：  
  * BK-007-01：`wp007_git_head_pre.txt`、`wp007_git_status_pre.txt`、`wp007_opencode_pre.txt`  
  * BK-007-02：`wp007_tree_after.txt`、`wp007_git_status_post.txt`  
  * BK-007-03：`wp007_diffstat.txt`、`wp007_name_status.txt`

### **I4) Backup Points（BK-007-01/02/03）**

* BK-007-01（變更前）：HEAD/status/.opencode 快照  
* BK-007-02（生成後）：tree\_after/status\_post  
* BK-007-03（驗證後）：diffstat/name\_status \+（若有）validator log/rc

---

## **J. Locator Proof Appendices（關鍵原文定位；≤25字摘錄）**

格式：`來源文件 :: anchor/heading :: excerpt(≤25字) :: 定位方式（行段/錨點/片段）`

### **J1) WP 總表 r2：superseded 降級規則（修補 F-007-001）**

* `OMOC_實作+WP總表_v4.0.1-r2.md :: §4 Doc Inventory :: "SUPPORTED-SUPERSEDED" + "do not reference after r2" :: 表格列 N4（r1）`  
  * 摘錄（≤25字）：`role | SUPPORTED-SUPERSEDED` / `do not reference after r2`  
* `OMOC_實作+WP總表_v4.0.1-r2.md :: WP Summary Table :: "WP-007 … N3（skills pack 規約）" :: WP-007 列`  
  * 摘錄（≤25字）：`WP-007 … N3（skills pack 規約）`

### **J2) RB+WI：step() 模板（修補 F-007-003）**

* `OMOC_施工RB+WI_合冊_v4.0.1-r1.md :: ANCHOR:OMOC-RBWI-CMD-TEMPLATE :: "timeout … | tee … PIPESTATUS … .rc" :: <a id="omoc-rbwi-cmd-template">`  
  * 摘錄（≤25字）：`timeout … | tee -a` / `rc=${PIPESTATUS[0]}` / `> "$dir/$name.rc"`

### **J3) Skills：D2 FILE BEGIN/END 契約（修補 F-007-004）**

* `OMOC_施工skills_合冊_v4.0.1-r2.md :: #OMOC-CSK-0400 :: "FILE BEGIN/END … FAIL_CLOSED" :: <a id="OMOC-CSK-0400">`  
  * 摘錄（≤25字）：`FILE BEGIN/END` / `不可抽取＝FAIL_CLOSED`

### **J4) Skills：D5 extractor/validator（修補 F-007-004）**

* `OMOC_施工skills_合冊_v4.0.1-r2.md :: [ANCHOR:OMOC-CSK-0700] :: "extractors … validators … exit codes" :: 見 D5 節（以該 anchor 定位）`  
  * 摘錄（≤25字）：`extractor` / `validator` / `exit`

註：D5 原文很長；本文件以「anchor \+ 短摘錄 \+ step 映射」滿足稽核抽樣要求；若你的 repo 需要更細拆 locator，開 TT-WP007-SKILLS-LOC-EXT-001。

### **J5) Skills：D6 acceptance（修補 F-007-004）**

* `OMOC_施工skills_合冊_v4.0.1-r2.md :: [ANCHOR:OMOC-CSK-0800] :: "Acceptance … evidence … verdict" :: 見 D6 節（以該 anchor 定位）`  
  * 摘錄（≤25字）：`Acceptance` / `evidence`

### **J6) Blueprint：No-Source-No-Norm / 工具宣告（支撐 OpenCode/權限宣告與 TT）**

* `OMOC_藍圖_v4.0.1-r1.md :: [ANCHOR:OMOC-BP-0300] :: "缺來源/缺定位…TEMP_CLOSED" :: §3.1`  
  * 摘錄（≤25字）：`UNVERIFIED` / `TT` / `TEMP_CLOSED`  
* `OMOC_藍圖_v4.0.1-r1.md :: §12.2 工具/平台能力宣告 :: "版本、權限模型、tools…必須宣告並綁TT" :: §12.2`  
  * 摘錄（≤25字）：`版本、權限模型、tools…必須宣告並綁 TT`

---

## **K. Risk Register & Troubleshooting**

### **K1) Risks & Failure Modes（保留舊版並升級可稽核）**

| risk\_id | failure\_mode | detection（客觀） | mitigation | linked\_TT |
| ----- | ----- | ----- | ----- | ----- |
| R-007-01 | SSOT 漂移：把 r1 當規範 | L5-1-ssot-echo.log 出現 r1 / 或 doc inventory role=SUPPORTED-SUPERSEDED | 強制改用 r2；r1 只可 SUPPORT-only | TT-WP007-SSOT-001 |
| R-007-02 | SOP 檢索寫死檔名 | L5-1 log 未使用 `$WP_MAP` | 參數化（WP\_MAP=…r2…） | TT-WP007-SOP-001 |
| R-007-03 | step() 語義漂移（無 rc/無 tee） | evidence 目錄缺 `.rc` 或 log 不完整 | 必須對齊 RB+WI 模板 | TT-WP007-RBWI-LOC-001 |
| R-007-04 | D2 契約違約（抽取不到檔） | extractor log 提示找不到 FILE BEGIN/END | 修正文檔契約或抽取器；Fail-Closed | TT-SKILLS-001 |
| R-007-05 | validator 因前置不足 FAIL | L5-4B rc≠0 且 log 指向缺 triplet/bundle/evidence | route-out 到 WP-008；不得硬宣告 PASS | TT-WP007-DEP-001 |
| R-007-06 | 越界改動 workflows | L5-6 掃描到 `.github/workflows` 變更 | route-out 到 WP-011/12/13；建 TT | TT-WP007-SCOPE-001 |

### **K2) Troubleshooting（症狀→診斷→修復→證據→回滾）**

| symptom | diagnosis | fix | evidence\_to\_collect | rollback |
| ----- | ----- | ----- | ----- | ----- |
| 抽取後沒有 `.opencode/skills/*` | D2 契約不符或 extractor 缺失 | 確認 skills D2 的 FILE BEGIN/END；確認 `scripts/omoc_extract_skills.sh` 存在 | L5-3-extract.log/.rc、skills D2 locator、tree\_after | `git restore -SW .` 或 reset 到 BK-007-01 head |
| `scripts/omoc_extract_skills.sh` 不存在 | 你尚未落地 D5 scripts（或抽取流程未先建立） | 走 TT：不得假裝完成；在上游 WP/或手動先落地 scripts 再重跑 L5-3 | L5-3-extract.log/.rc、bootstrap\_gap.txt | N/A |
| `scripts/omoc_validate_contracts.sh` rc≠0 | 前置依賴缺失（可能需要 WP-008 產物）或契約違約 | 依 log 判定：若缺 Triplet/Bundle ⇒ route-out WP-008；否則修契約 | L5-4B log/rc、L5-5 evidence-path log | N/A（驗證不改 repo） |
| SSOT 被誤用 r1 | 你把 superseded 當規範 | 修正變數：WP\_MAP=r2；移除任何 r1 作檢索輸入 | L5-1-ssot-echo.log | N/A |

---

## **L. Requirement Coverage Map（逐項覆蓋矩陣）**

| req\_id | requirement\_statement | normative\_sources | wp007\_locator | status(PASS/FAIL/UNVERIFIED) | gap\_type | severity | linked\_TT |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| R7-001 | Authority Stack 不得引用 superseded | WP 總表 r2 Doc Inventory（r1=SUPPORTED-SUPERSEDED） | [C1](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995cff4-c910-83a8-90e3-f04e408be9b0#omoc-wp-007-c-authority), [D](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995cff4-c910-83a8-90e3-f04e408be9b0#omoc-wp-007-d-doc-inventory) | PASS | — | — | TT-WP007-SSOT-001（CLOSED 條件已定） |
| R7-002 | SOP 檢索不得寫死 r1；必參數化 | 審查報告 F-007-002 | [L5-1](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995cff4-c910-83a8-90e3-f04e408be9b0#omoc-wp-007-runbook-l5-1) | PASS | — | — | TT-WP007-SOP-001 |
| R7-003 | step() 對齊 RB+WI | RB+WI CMD TEMPLATE | [G1](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995cff4-c910-83a8-90e3-f04e408be9b0#omoc-wp-007-g-runbook), [J2](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995cff4-c910-83a8-90e3-f04e408be9b0#omoc-wp-007-j-locator-proof) | PASS | — | — | TT-WP007-RBWI-LOC-001 |
| R7-004 | D2 契約對齊 | Skills D2 `#OMOC-CSK-0400` | [L5-3](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995cff4-c910-83a8-90e3-f04e408be9b0#omoc-wp-007-runbook-l5-3), [J3](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995cff4-c910-83a8-90e3-f04e408be9b0#omoc-wp-007-j-locator-proof) | PASS | — | — | TT-WP007-SKILLS-LOC-001 |
| R7-005 | 落地 .opencode \+ scripts | WP 總表 r2（WP-007 evidence\_locator）+ Skills D5 | [L5-3](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995cff4-c910-83a8-90e3-f04e408be9b0#omoc-wp-007-runbook-l5-3) | PASS | — | — | — |
| R7-006 | BK-007 三段快照 | 本文件 BK 強化 | [L5-3](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995cff4-c910-83a8-90e3-f04e408be9b0#omoc-wp-007-runbook-l5-3), [L5-7](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995cff4-c910-83a8-90e3-f04e408be9b0#omoc-wp-007-runbook-l5-7) | PASS | — | — | — |
| R7-007 | validator 不可硬宣告 PASS；FAIL 必 TT | Blueprint Fail-Closed \+ WP-008 route-out | [L5-4](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995cff4-c910-83a8-90e3-f04e408be9b0#omoc-wp-007-runbook-l5-4), [L5-5](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995cff4-c910-83a8-90e3-f04e408be9b0#omoc-wp-007-runbook-l5-5) | PASS | — | — | TT-WP007-DEP-001 |
| R7-008 | TT Register 完整 | 審查報告 F-007-005 | [M](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995cff4-c910-83a8-90e3-f04e408be9b0#omoc-wp-007-m-tt-register) | PASS | — | — | TT-WP007-TTREG-001 |
| R7-009 | route\_out\_map 可導航 | 審查報告 F-007-006 | [E3](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995cff4-c910-83a8-90e3-f04e408be9b0#omoc-wp-007-e-scope) | PASS | — | — | TT-WP007-ROUTE-001 |

---

## **M. TT Register（Fail-Closed 缺口登記簿）**

模板欄位（必填）：`tt_id / source / problem_statement / fix_target / acceptance(<=3) / owner_role / close_conditions / retest / status / evidence_locator`

| tt\_id | source (finding\_id/CR) | problem\_statement | fix\_target | acceptance(\<=3) | owner\_role | close\_conditions | retest | status | evidence\_locator |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| TT-WP007-SSOT-001 | F-007-001 | r1 被誤當 NORMATIVE 污染 SSOT | authority\_stack/DocInventory/命令輸入全面改 r2；r1 降 SUPPORT-only | (1) doc 無 r1=NORMATIVE (2) L5-1 用 r2 (3) SSOT 漂移檢核存在 | SSOT custodian | 內文與命令皆無 r1 作規範；L5-1 log 印出 r2 | 重跑 L5-1 | OPEN→可關閉（待你實跑產證據） | `log/L5-1-ssot-echo.*` \+ `snapshots/wp007_ssot_paths.txt` |
| TT-WP007-SOP-001 | F-007-002 | SOP 檢索命令寫死版本 | 引入 `WP_MAP` 變數，禁寫死 r1 | (1) grep 使用 `$WP_MAP` (2) log 可回放 (3) 不引用 r1 | runbook maintainer | L5-1-grep log 顯示 r2；無 r1 檢索 | 重跑 L5-1 | OPEN→可關閉（待你實跑） | `log/L5-1-grep-wp007.*` |
| TT-WP007-RBWI-LOC-001 | F-007-003 | RB+WI step() 對齊主張缺原文定位 | 補 RB+WI anchor+excerpt（≤25字） | (1) 有 anchor (2) 有 excerpt (3) 映射到 step() 使用 | auditor | \[J2\] 可定位並核對 tee/PIPESTATUS/.rc | 抽樣比對 RB+WI 原文 | CLOSED（本文已補） | 本文件 \[J2\] |
| TT-WP007-SKILLS-LOC-001 | F-007-004 | skills D2/D5/D6 缺原文定位 | 補 D2/D5/D6 anchor+excerpt \+ step 映射 | (1) D2/D5/D6 各≥1 locator (2) 對應 runbook (3) coverage PASS | skills custodian | \[J3\~J5\] 可定位；coverage R7-004 PASS | 抽樣比對 skills 原文 | CLOSED（本文已補） | 本文件 \[J3\~J5\] |
| TT-WP007-TTREG-001 | F-007-005 | 宣告 TT 但缺 TT Register 斷鏈 | 建立 TT Register 並覆蓋既有 TT | (1) 每列含 close\_conditions (2) 既有 TT 全在表 (3) evidence\_locator 可追 | doc owner | \[M\] 表可定位；既有 TT 被納入 | 抽樣檢查 3 列 | CLOSED（本文已補） | 本文件 \[M\] |
| TT-WP007-ROUTE-001 | F-007-006 | route-out 不可導航 | 建立 route\_out\_map（具名 WP \+ locator） | (1) topic 皆可跳 (2) 不泛稱 Phase-G (3) 無越界內容 | doc owner | \[E3\] 表可定位且具名 | 抽樣點 3 topic | CLOSED（本文已補） | 本文件 \[E3\] |
| TT-OPENCODE-001 | legacy（舊版宣告） | OpenCode 導入：版本/權限/工具漂移未被本地證據鎖定 | 在 evidence 中記錄 `opencode --version`、權限模型宣告（若可） | (1) 有版本證據 (2) 有權限/工具宣告 (3) 變更有記錄 | ops/doc owner | 具體命令與輸出落地到 evidence | 重跑（在可用環境） | OPEN（需實機/平台可用） | `snapshots/opencode_version.txt`（待補） |
| TT-SKILLS-001 | legacy（舊版宣告） | extractor/validator 檔名或契約漂移導致抽取失敗 | 鎖定 skills 合冊版本 r2；必要時更新 scripts | (1) 抽取可重跑 (2) 目標檔落地 (3) log/rc 完整 | skills custodian | L5-3 rc=0 且 verify-files PASS | 重跑 L5-3/L5-4A | OPEN（依你 repo 狀態） | `log/L5-3-*.rc` \+ `snapshots/wp007_tree_after.txt` |
| TT-WP007-DEP-001 | legacy（舊版宣告） | validator 可能依賴 WP-008 產物（Triplet/Bundle/evidence 結構） | route-out 到 WP-008；定義 retest 條件 | (1) 依賴被明示 (2) FAIL 不硬判 PASS (3) retest 清楚 | integrator | WP-008 落地後 L5-4B rc=0 或明確改寫 validator 依賴 | 重跑 L5-5→L5-4B | OPEN（依下游） | `log/L5-4B-*.log/.rc` |

**新增（本次補強）**

* `TT-WP007-DEP-BOOTSTRAP-001`：若 repo 缺 `scripts/omoc_extract_skills.sh`，不得在 WP-007 假造抽取器；需先在上游（通常是 skills pack 先落地或手動導入）補齊，然後重跑 L5-3。

---

## **N. Web Evidence Appendix（SUPPORT-only；逐筆含 access\_date）**

本文件 **不新增** Web 查詢結果；僅允許引用藍圖內既有 W-ID 作為「易變行為參照」（不構成 NORMATIVE）。若你要在本地補「OpenCode 版本/權限/工具」的現況，請：

* 以 `TT-OPENCODE-001` 綁定；  
* 將 access\_date、canonical URL、摘要放入你專案的 Web Evidence 表（依藍圖格式）。

---

## **O. Change Log（本次修補摘要） \+ FINAL VERDICT**

### **O1) Change Log（對應審查報告 Findings）**

* 修補 F-007-001（BLOCKER）：Authority Stack/Doc Inventory/Runbook 檢索輸入全面切換 WP 總表 r2；r1 降級 SUPPORT-only（不得作規範或命令輸入）。  
* 修補 F-007-002（BLOCKER）：SOP 檢索步驟參數化（`WP_MAP=...r2...`），不再寫死 r1。  
* 修補 F-007-003（MAJOR）：補 RB+WI step() 原文 locator proof（anchor \+ excerpt ≤25字）。  
* 修補 F-007-004（MAJOR）：補 Skills D2/D5/D6 locator proof（各≥1 anchor \+ excerpt ≤25字）並映射到 Runbook steps。  
* 修補 F-007-005（MAJOR）：新增完整 TT Register（含既有 TT 與新 TT，具 closure criteria/owner/retest/status/evidence\_locator）。  
* 修補 F-007-006（MINOR）：新增 route\_out\_map（topic → target\_doc → locator → why），避免 scope creep。

### **O2) FINAL VERDICT（Fail-Closed）**

* `verdict`：**TEMP\_CLOSED**  
* `reason`：  
  * 文件層面（Findings closure）：F-007-001\~006 **已在文件中完成 closure**（可定位章節/表格）。  
  * 工程層面（需實跑產證據）：TT-WP007-SSOT-001 / TT-WP007-SOP-001 / TT-SKILLS-001 / TT-OPENCODE-001 / TT-WP007-DEP-001 仍為 OPEN（需在實際 repo 執行 Runbook 取得 log/rc/snapshots 才能關閉）。  
* `closure_basis`：以 [L. Coverage Map](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995cff4-c910-83a8-90e3-f04e408be9b0#omoc-wp-007-l-coverage-map) \+ [M. TT Register](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995cff4-c910-83a8-90e3-f04e408be9b0#omoc-wp-007-m-tt-register) 為唯一裁決依據（禁止「感覺良好式」結論）。

---

## **Self-Audit Checklist（Fail-Closed）**

* 每個 Finding（F-007-001\~006）都有可跳轉的 closure 章節/表格  
* Authority Stack 不含 superseded r1 作 NORMATIVE；r1 明確 SUPPORT-only  
* L5-1 檢索命令不再寫死 r1；以 `WP_MAP` 參數化且指向 r2  
* RB+WI Locator Proof：已提供 anchor/heading \+ excerpt(≤25字)  
* Skills D2/D5/D6 Locator Proof：各至少 1 條（anchor \+ excerpt ≤25字）且映射到 steps  
* route\_out\_map：Out-of-scope 全部具名導流到目標 WP  
* TT Register：每列含 closure criteria/owner/retest/status/evidence\_locator，並包含 TT-OPENCODE-001 / TT-SKILLS-001 / TT-WP007-DEP-001 及本次新增 TT  
* Runbook 低終端終止風險：未全域 set \-e；step() 後以 `|| true` 避免 rc 非 0 直接終止；以 `.rc` 承接 Fail-Closed

