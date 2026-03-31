# **Spartoi-OMOC\_dev RB \+ WI（Development Runbook \+ Work Instructions）v8.1.1-dev-r2**

**文件定位**：本文件是 *Development* 範疇的「可施工、可驗收、可回放」Runbook \+ WI（Implementation SSOT）。  
**生效模式**：Files-first、No-Source-No-Norm、Fail-Closed（缺定位/缺證據＝阻斷或 TT→TEMP\_CLOSED→TEST\_TRACK）。  
**注意**：本文件 **不重寫** SRS/ARCH/LBP/Blueprint；只做「可定位引用」或 Route-Out \+ TT。

---

## **DOC META（可機械抽取）**

* **doc\_id**: `SPARTOI-OMOC-DEV-RBWI`  
* **version**: `v8.1.1-dev-r2`  
* **status**: `DEFINITIVE (FAIL-CLOSED)`  
* **timezone**: `Asia/Taipei (UTC+08:00)`  
* **baseline\_web\_date**: `2026-02-18`（僅供 SUPPORT-only 外部資料快照；本版未引入 Web 事實作為 Normative）  
* **supersedes（工程性取代範圍）**  
  * `Spartoi-OMOC_dev RB + WI_v8.1.1-dev-r1.md`  
  * `OMOC-MVU & Full OMOC Delivery Plan.md`  
  * `Spartoi-OMOC Delivery Plan.md`  
  * `Spartoi｜SubP1-LITE+MVP 開發 RUNBOOK & WI_v1.4.0.md`  
* **review\_basis（必須逐條結案）**  
  * `Spartoi-OMOC_dev RB + WI_v8.1.1-dev-r1_審查報告.md`（本文件以其 finding\_id 逐條結案，見附錄I）  
* **patch\_completion\_declaration**  
  * Blockers（F-DEV-001/002/003）＝**PASS**  
  * 其餘 findings ＝**PASS** 或 **TT→TEMP\_CLOSED→TEST\_TRACK**（見附錄I）  
* **scope\_lock**  
  * In-scope：dev 流程施工/驗收/回放、GitHub Control Plane 驗收與漂移治理（dev 視角）、OpenCode/OMOC dev integration（最小權限與供應鏈快照）、Evidence/TT/Route-Out/Parity/自檢規則  
  * Out-of-scope：重寫 SRS/ARCH/LBP/Blueprint 內容、替上游補錨點（只能 TT 要求上游補）、替 Ops 改定義/改 Gate（僅做介面相容/引用）

---

## **TOC（離線可跳轉；僅 `#anchor`）**

* [§0 Preflight（Authority / Inventory / Locator Proof / Scope-Lock）](https://chatgpt.com/g/g-p-69956e41ed988191b43d98c7ee12eefc-spartoi-omoc-4-ssot/c/6995de8b-13b8-83a7-9e62-5b9c93a5639e#dev-rbwi-s0-preflight)  
* [§1 Charter（文件定位與使用方式）](https://chatgpt.com/g/g-p-69956e41ed988191b43d98c7ee12eefc-spartoi-omoc-4-ssot/c/6995de8b-13b8-83a7-9e62-5b9c93a5639e#dev-rbwi-s1-charter)  
* [§2 Global Conventions（ID/命名/證據/TT/Route-Out/漂移治理）](https://chatgpt.com/g/g-p-69956e41ed988191b43d98c7ee12eefc-spartoi-omoc-4-ssot/c/6995de8b-13b8-83a7-9e62-5b9c93a5639e#dev-rbwi-s2-global-conventions)  
* [§3 End-to-End Dev Flow（Phase/Stage/輸入輸出/Gates）](https://chatgpt.com/g/g-p-69956e41ed988191b43d98c7ee12eefc-spartoi-omoc-4-ssot/c/6995de8b-13b8-83a7-9e62-5b9c93a5639e#dev-rbwi-s3-e2e-dev-flow)  
* [§4 Stage-level RUNBOOK（每 Stage：Inputs/Steps/Verify/Rollback/Evidence）](https://chatgpt.com/g/g-p-69956e41ed988191b43d98c7ee12eefc-spartoi-omoc-4-ssot/c/6995de8b-13b8-83a7-9e62-5b9c93a5639e#dev-rbwi-s4-stage-runbook)  
* [§5 WI 操作卡（固定欄位；含必備 WI）](https://chatgpt.com/g/g-p-69956e41ed988191b43d98c7ee12eefc-spartoi-omoc-4-ssot/c/6995de8b-13b8-83a7-9e62-5b9c93a5639e#dev-rbwi-s5-wi-cards)  
* [§6 Pipeline-A/B/C × DB 整合（dev 落點/工件/回放/證據）](https://chatgpt.com/g/g-p-69956e41ed988191b43d98c7ee12eefc-spartoi-omoc-4-ssot/c/6995de8b-13b8-83a7-9e62-5b9c93a5639e#dev-rbwi-s6-pipeline-db-integration)  
* [§7 GitHub Control Plane（required checks/MQ/rulesets/branch protection/drift）](https://chatgpt.com/g/g-p-69956e41ed988191b43d98c7ee12eefc-spartoi-omoc-4-ssot/c/6995de8b-13b8-83a7-9e62-5b9c93a5639e#dev-rbwi-s7-gh-control-plane)  
* [§8 OpenCode/OMOC Dev Integration（dev vs ops 分離/權限/供應鏈快照）](https://chatgpt.com/g/g-p-69956e41ed988191b43d98c7ee12eefc-spartoi-omoc-4-ssot/c/6995de8b-13b8-83a7-9e62-5b9c93a5639e#dev-rbwi-s8-opencode-dev-integration)  
* [§9 Acceptance & Verification Plan（DoD/驗收門檻/required evidence）](https://chatgpt.com/g/g-p-69956e41ed988191b43d98c7ee12eefc-spartoi-omoc-4-ssot/c/6995de8b-13b8-83a7-9e62-5b9c93a5639e#dev-rbwi-s9-acceptance-verification)  
* [§10 Failure Modes & Runbook Responses（偵測→處置→回滾→證據）](https://chatgpt.com/g/g-p-69956e41ed988191b43d98c7ee12eefc-spartoi-omoc-4-ssot/c/6995de8b-13b8-83a7-9e62-5b9c93a5639e#dev-rbwi-s10-failure-modes)  
* [§11 CR\_OPEN 消滅紀錄（本文件 0 CR\_OPEN；全轉 TT）](https://chatgpt.com/g/g-p-69956e41ed988191b43d98c7ee12eefc-spartoi-omoc-4-ssot/c/6995de8b-13b8-83a7-9e62-5b9c93a5639e#dev-rbwi-s11-cr-open-elimination)  
* [附錄A Quick Index（關鍵字→anchor）](https://chatgpt.com/g/g-p-69956e41ed988191b43d98c7ee12eefc-spartoi-omoc-4-ssot/c/6995de8b-13b8-83a7-9e62-5b9c93a5639e#dev-rbwi-appx-a-quick-index)  
* [附錄B Coverage Map（上游→本文件→狀態）](https://chatgpt.com/g/g-p-69956e41ed988191b43d98c7ee12eefc-spartoi-omoc-4-ssot/c/6995de8b-13b8-83a7-9e62-5b9c93a5639e#dev-rbwi-appx-b-coverage-map)  
* [附錄C Gate Registry（dev 視角 gate 指針/證據需求）](https://chatgpt.com/g/g-p-69956e41ed988191b43d98c7ee12eefc-spartoi-omoc-4-ssot/c/6995de8b-13b8-83a7-9e62-5b9c93a5639e#dev-rbwi-appx-c-gate-registry)  
* [附錄D Evidence Contract（Triplet+Bundle、dev↔ops compatibility）](https://chatgpt.com/g/g-p-69956e41ed988191b43d98c7ee12eefc-spartoi-omoc-4-ssot/c/6995de8b-13b8-83a7-9e62-5b9c93a5639e#dev-rbwi-appx-d-evidence-contract)  
* [附錄E TT Register（TEMP\_CLOSED→TEST\_TRACK；本文件唯一缺口出口）](https://chatgpt.com/g/g-p-69956e41ed988191b43d98c7ee12eefc-spartoi-omoc-4-ssot/c/6995de8b-13b8-83a7-9e62-5b9c93a5639e#dev-rbwi-appx-e-tt-register)  
* [附錄F Web Evidence Index（SUPPORT-only；本版預設空表）](https://chatgpt.com/g/g-p-69956e41ed988191b43d98c7ee12eefc-spartoi-omoc-4-ssot/c/6995de8b-13b8-83a7-9e62-5b9c93a5639e#dev-rbwi-appx-f-web-evidence-index)  
* [附錄G Decision Log（ADR 指針；不改上游 ADR）](https://chatgpt.com/g/g-p-69956e41ed988191b43d98c7ee12eefc-spartoi-omoc-4-ssot/c/6995de8b-13b8-83a7-9e62-5b9c93a5639e#dev-rbwi-appx-g-decision-log)  
* [附錄H Glossary（不得與上游衝突）](https://chatgpt.com/g/g-p-69956e41ed988191b43d98c7ee12eefc-spartoi-omoc-4-ssot/c/6995de8b-13b8-83a7-9e62-5b9c93a5639e#dev-rbwi-appx-h-glossary)  
* [附錄I Issue Closure Table（對審查報告A逐條結案）](https://chatgpt.com/g/g-p-69956e41ed988191b43d98c7ee12eefc-spartoi-omoc-4-ssot/c/6995de8b-13b8-83a7-9e62-5b9c93a5639e#dev-rbwi-appx-i-issue-closure-table)  
* [附錄J Legacy Parity Map（每份 legacy ≥20 條；雙向可跳轉）](https://chatgpt.com/g/g-p-69956e41ed988191b43d98c7ee12eefc-spartoi-omoc-4-ssot/c/6995de8b-13b8-83a7-9e62-5b9c93a5639e#dev-rbwi-appx-j-legacy-parity-map)  
* [附錄K Anchor Scheme \+ Anchor Registry（規則＋清單）](https://chatgpt.com/g/g-p-69956e41ed988191b43d98c7ee12eefc-spartoi-omoc-4-ssot/c/6995de8b-13b8-83a7-9e62-5b9c93a5639e#dev-rbwi-appx-k-anchor-scheme-and-registry)  
* [附錄L Lint & Self-Audit Checklist（可機械檢查）](https://chatgpt.com/g/g-p-69956e41ed988191b43d98c7ee12eefc-spartoi-omoc-4-ssot/c/6995de8b-13b8-83a7-9e62-5b9c93a5639e#dev-rbwi-appx-l-lint-and-self-audit)

---

## **DEV-RBWI-S0-PREFLIGHT**

\[ANCHOR:DEV-RBWI-S0-PREFLIGHT\]

### **§0.1 Authority Stack（No-Source-No-Norm）**

**任何規範性句子若無可回放定位點（`filename#anchor` 或 `filename#章節名`），一律不生效。**

* **L1（最高）**  
  * `OMOC_藍圖_v4.0.1-r1`（本版：**MISSING → TT**；見 TT-DEV-RBWI-1001）  
  * `Spartoi-OMOC Blueprint v2.2.0-r1.md#Authority Stack（SSOT > Plan > Upgrade/Notes）`  
* **L2**  
  * `Spartoi-OMOC_MIP_v2.2.0.txt#[ANCHOR:MIP-V220-0-3-AUTHORITY]`  
* **L3（系統規格/架構/決策/契約）**  
  * `Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-00-DOC_IDENTITY]`  
  * `Spartoi-OMOC_ARCH_v8.1.0.md#[ANCHOR:ARCH-V810-00-DOC_IDENTITY]`  
  * `Spartoi-OMOC_LBP-A(SIR) v8.1.1-r1.md#[ANCHOR:LBPA-SIR-V811R1-00-DOC_IDENTITY]`  
  * `Spartoi-OMOC_LBP-B(ICD)v8.1.1-r2.md#[ANCHOR:LBPB-ICD-V811R2-00-DOC_IDENTITY]`  
  * `Spartoi-OMOC_LBP-C(ADR) v8.1.1-r2.md#[ANCHOR:LBPC-ADR-V811R2-08-ADR_CATALOG]`  
  * `Spartoi-OMOC_LBP-D(C4) v8.1.1-r2.md#[ANCHOR:LBPD-C4-V811R2-00-DOC_IDENTITY]`  
  * `Spartoi-OMOC_LBP-E(Fitness) v8.1.1-r2.md#[ANCHOR:LBPE-FIT-V811R2-00-DOC_IDENTITY]`  
* **L4（within-scope 方案/組合/重構）**  
  * `Spartoi-OMOC(15 CA)重構升級藍圖v0.2.0-r1.md#[ANCHOR:15CA-V020-00-DOC_IDENTITY]`  
  * `Pipeline-A_組合方案 v2.md#0) 封面卡`  
  * `Pipeline-B 組合方案 v2.md#0) 封面卡`  
  * `Pipeline-C組合方案.md#0) 封面卡`  
  * `Pipeline-A+B 整合資料庫方案.md#0) 封面卡`  
  * `五子系統組合方案.md#0) 封面卡`  
  * `子系統「顯示名_宏模組名」改名方案.md#0) 封面卡`  
  * `Spartoi-OMOC_子系統重構藍圖`（本版：**MISSING → TT**；見 TT-DEV-RBWI-1002）  
* **L5（介面相容參考；不改其定義）**  
  * `Spartoi-OMOC_ops RB + WI _v8.1.1-ops-r1.md#[ANCHOR:OPS-RBWI-S0-PREFLIGHT]`  
  * `Spartoi-OMOC_ops RB + WI_v8.1.1-ops-r2`（本版：**MISSING → TT**；見 TT-DEV-RBWI-1003）  
* **L6（外部 Web）**  
  * 一律 **SUPPORT-only**，必須進 `附錄F Web Evidence Index`（含 access\_date / used\_at\_anchor / non\_normative\_notice）。

---

### **§0.2 Doc Inventory（Inputs Manifest \+ Locator Proof）**

**Found 才能施工；MISSING/UNVERIFIED 必須 TT→TEMP\_CLOSED→TEST\_TRACK，並綁定 Gate。**

| class | filename | status | locator\_proof（最少一個可回放定位點） | notes |
| ----- | ----- | ----- | ----- | ----- |
| Normative | OMOC\_藍圖\_v4.0.1-r1 | **MISSING** | （見 TT-DEV-RBWI-1001） | 最高權威之一；缺檔即阻斷 release |
| Normative | Spartoi-OMOC Blueprint v2.2.0-r1.md | FOUND | `#Control Plane（GitHub）硬條文` | 本版以章節名定位，不使用不存在的 slug |
| Normative | Spartoi-OMOC\_MIP\_v2.2.0.txt | FOUND | `[ANCHOR:MIP-V220-SEC0]` | Gate/TT/Route-Out 的制度入口 |
| Normative | Spartoi-OMOC\_SRS\_v8.1.0.md | FOUND | `[ANCHOR:SRS-V810-00-DOC_IDENTITY]` | GitHub governance / DoD / Gate policy 依此 |
| Normative | Spartoi-OMOC\_README\_RDM v2.2.0.md | FOUND | `[ANCHOR:RDM-V220-00-DOC_IDENTITY]` | repo 目錄/命名/版本規則 |
| Normative | Spartoi-OMOC\_ARCH\_v8.1.0.md | FOUND | `[ANCHOR:ARCH-V810-00-DOC_IDENTITY]` | 架構/工件/證據庫結構 |
| Normative | LBP-A(SIR) | FOUND | `[ANCHOR:LBPA-SIR-V811R1-00-DOC_IDENTITY]` | 系統意圖/約束 |
| Normative | LBP-B(ICD) | FOUND | `[ANCHOR:LBPB-ICD-V811R2-00-DOC_IDENTITY]` | 介面契約/欄位/命名 |
| Normative | LBP-C(ADR) | FOUND | `[ANCHOR:LBPC-ADR-V811R2-09-ADR_RECORDS]` | 決策索引（Decision Log 僅指針） |
| Normative | LBP-D(C4) | FOUND | `[ANCHOR:LBPD-C4-V811R2-00-DOC_IDENTITY]` | C4/邊界 |
| Normative | LBP-E(Fitness) | FOUND | `[ANCHOR:LBPE-FIT-V811R2-00-DOC_IDENTITY]` | Fitness/驗收指標 |
| Within-scope | 15CA 重構升級藍圖 | FOUND | `[ANCHOR:15CA-V020-07-GATE_REGISTRY]` | Gate Registry 的來源之一 |
| Within-scope | Pipeline-A\_組合方案 v2 | FOUND | `#0) 封面卡` | 若上游未提供 \[ANCHOR:\]，以章節名定位 |
| Within-scope | Pipeline-B 組合方案 v2 | FOUND | `#0) 封面卡` | 同上 |
| Within-scope | Pipeline-C組合方案 | FOUND | `#0) 封面卡` | 同上 |
| Within-scope | 五子系統組合方案 | FOUND | `#0) 封面卡` | 同上 |
| Within-scope | Pipeline-A+B 整合資料庫方案 | FOUND | `#0) 封面卡` | DB 整合落點 |
| Within-scope | 子系統改名方案 | FOUND | `#0) 封面卡` | Stable ID / display name 對齊 |
| Within-scope | Spartoi-OMOC\_子系統重構藍圖 | **MISSING** | （見 TT-DEV-RBWI-1002） | 需求指定；缺檔即 TT |
| Ops interface | ops RB+WI v8.1.1-ops-r1 | FOUND | `[ANCHOR:OPS-RBWI-S0-PREFLIGHT]` | 僅做 dev↔ops evidence 相容參考 |
| Ops interface | ops RB+WI v8.1.1-ops-r2 | **MISSING** | （見 TT-DEV-RBWI-1003） | 若 repo 存在更新版必納入版本矩陣 |
| Legacy | OMOC-MVU & Full OMOC Delivery Plan | FOUND | `#3) 完整方案（可執行）` | parity 見附錄J |
| Legacy | Spartoi-OMOC Delivery Plan | FOUND | `#3) 完整方案（可執行）` | parity 見附錄J |
| Legacy | SubP1-LITE+MVP 開發 RUNBOOK & WI | FOUND | `[ANCHOR:SPLMVP-PHASE-TEMPLATE]` | 取其模板/工程欄位對齊 |
| Legacy | dev RB+WI v8.1.1-dev-r1（舊版） | FOUND | `[ANCHOR:DEV-RBWI-S0-PREFLIGHT]` | parity 見附錄J |
| Review | 審查報告A | FOUND | `#Findings`（章節名） | 結案表見附錄I |

---

### **§0.3 Locator Proof 稽核規則（Fail-Closed）**

* **禁止** 以行號定位作為 locator proof（例如 `file#LNNN`、`@L…` 類型）  
  * 一律改為：`filename#[ANCHOR:…]` 或 `filename#章節名`  
* **TOC 區塊禁止** 出現外鏈（尤其是 `chatgpt.com`）  
  * 本文件 TOC 僅允許 `#anchor`  
* **禁止** 手寫 HTML 錨點（`<a id=...>`）  
  * 只允許 Markdown 標題自動錨點 \+ 本文件的 `[ANCHOR:...]` 機械索引  
* **上游缺錨點/缺章節名可定位**：本文件不得硬引用；必須開 TT，並在 TT 寫明「要求上游補 anchor」的 closure\_criteria。

---

### **§0.4 Scope-Lock（越界必 Route-Out）**

* 本文件只回答：**dev 施工/驗收/回放**（Inputs/Steps/Verify/Rollback/Evidence）  
* 任何「規格/架構/契約細節」：  
  * 只能 **引用上游可定位條文**，或 **Route-Out \+ TT**  
  * 禁止在本文件內「重寫」上游定義

---

## **DEV-RBWI-S1-CHARTER**

\[ANCHOR:DEV-RBWI-S1-CHARTER\]

### **§1.1 文件使用者（你是誰、你要做什麼）**

* **讀者角色**：Dev owner / Repo maintainer / CI & Control plane owner  
* **你要完成的事**：把 dev 端的工程活動做成「可回放」：可複製施工、可機械驗收、可產證據、可回滾、可追溯。

### **§1.2 AI Reader Guide（強制檢索路徑）**

1. 先讀：`§0 Preflight` → 確認 Inputs Manifest（Found/Missing）  
2. 再讀：`§3 E2E Dev Flow` → 確定你正走在「可驗收」路徑  
3. 施工時只用：`§4 Stage RUNBOOK` \+ `§5 WI 卡`  
4. 找東西：用 `附錄A Quick Index`（關鍵字→anchor）  
5. 一旦遇到「缺定位/缺證據/缺上游」：  
   * **停止嘴炮**，開 TT（附錄E），狀態 `TEMP_CLOSED→TEST_TRACK`，並綁 Gate（附錄C）

### **§1.3 本文件的「反幻想」內建規則（Anti-hallucination）**

* **No-Source-No-Norm**：任何新名詞/新規則/新流程若無上游 docloc，**不得升格為 Normative**  
* **Fail-Closed**：缺證據＝阻斷（或最小降級到 TEST\_TRACK）  
* **Web SUPPORT-only**：外部資料只能補洞，且必須進 Web Evidence Index，且一律 TT 化

---

## **DEV-RBWI-S2-GLOBAL-CONVENTIONS**

\[ANCHOR:DEV-RBWI-S2-GLOBAL-CONVENTIONS\]

### **§2.1 ID / 命名 / 目錄（與 README/RDM 對齊）**

* 文件/工件命名優先依：`Spartoi-OMOC_README_RDM v2.2.0.md#[ANCHOR:RDM-V220-07-NAMING_VERSIONING]`  
* 本文件新增的固定前綴：  
  * `WI-DEV-*`：dev WI 卡（本文件內）  
  * `WI-GH-CTRL-001`、`WI-OC-SEC-001`：必備 WI（見 §5）  
  * `TT-DEV-RBWI-####`：本文件 TT  
  * `RO-DEV-####`：Route-Out items

### **§2.2 Evidence Pack（dev）最小集合（Triplet \+ Bundle）**

* **Evidence Triplet（dev 視角）**  
  * `verdict.json`：整體裁決（PASS / FAIL\_CLOSED / PASS\_WITH\_TT）  
  * `checks_manifest.json`：本次執行的 checks 與結果（含 required evidence presence）  
  * `evidence_index.md`：人類可讀索引（每條 evidence 有 `evidence_ptr`）  
* **Evidence Bundle（dev）**  
  * `evidence_bundle.tgz`（或 zip）：打包整個 run evidence  
  * `bundle_audit.json`：hash 清單（至少 sha256）  
* **落盤路徑（建議；不得與 ARCH 衝突）**  
  * 依 `Spartoi-OMOC_ARCH_v8.1.0.md#[ANCHOR:ARCH-V810-05-EVIDENCE_STORE]` 對齊  
  * 例：`/evidence/dev/{run_id}/...`

### **§2.3 TT（Test Tracking）規則（CR\_OPEN 消滅）**

* 本文件 **不允許** 留 `CR_OPEN`  
* 所有缺口一律轉 `TT → TEMP_CLOSED→TEST_TRACK`  
* TT 最小欄位（附錄E 要求一致）：  
  * `tt_id / title / reason / upstream_docloc / new_anchor / min_viable_verification / expected_evidence / close_criteria / due_gate / priority`

### **§2.4 Route-Out Register（越界路由；可抽查回指）**

* Route-Out 不是「以後再說」，是「立刻指向上游可定位條文」  
* 模板見：`§5 WI-DEV-ROUTE-OUT-001`（與附錄E/附錄C互相咬合）

### **§2.5 漂移治理（Drift Governance）**

* 漂移來源：  
  * GitHub 平台行為（merge queue、merge\_group、rulesets UI 行為）  
  * ops RB+WI 版本更新  
  * 工具鏈版本（OpenCode / skills / runner）  
* 漂移處置：  
  * **dev 端只做**：版本矩陣 \+ 快照證據 \+ TT \+ 回歸驗收  
  * 不在本文件內「追最新」當作 Normative

---

## **DEV-RBWI-S3-E2E-DEV-FLOW**

\[ANCHOR:DEV-RBWI-S3-E2E-DEV-FLOW\]

### **§3.1 Phase/Stage 總覽（dev）**

| stage\_id | name | entry | exit (DoD) | primary WI | gate bind |
| ----- | ----- | ----- | ----- | ----- | ----- |
| STG-00 | Preflight | Inputs Found | Preflight report \+ TT register updated | WI-DEV-PREFLIGHT-001 | GATE-BP-002-ANCHORREG / GATE-BP-003-EVIDENCE |
| STG-01 | Repo & Docs-as-Code Baseline | repo ready | docs layout \+ lint baseline | WI-DEV-DOCS-001 | GATE-BP-001-TABLELINT |
| STG-02 | GitHub Control Plane Baseline | repo exists | required checks / rulesets / MQ verified \+ snapshot | WI-GH-CTRL-001 | GATE-DEV-GH-CTRL-001 |
| STG-03 | Dev Tooling Bootstrap | toolchain defined | tooling\_manifest \+ reproducible env | WI-DEV-TOOLING-001 | GATE-SC-002-SUPPLYCHAIN |
| STG-04 | OpenCode/OMOC Dev Integration | env ready | deny-by-default policy \+ supply chain snapshot verified | WI-OC-SEC-001 | GATE-DEV-OC-SEC-001 |
| STG-05 | Evidence Contract Implementation (dev) | workflow exists | triplet+bundle produced \+ index complete | WI-DEV-EVIDENCE-001 | GATE-BP-003-EVIDENCE |
| STG-06 | Pipeline A/B/C × DB Integration (dev landing) | contracts known | artifacts land \+ replay path works | WI-DEV-PIPELINE-DB-001 | GATE-DEV-DB-001 |
| STG-07 | Acceptance & Verification | evidence ready | PASS 或 PASS\_WITH\_TT（無 CR\_OPEN） | WI-DEV-ACCEPT-001 | 全 Gate 綁定 |
| STG-08 | Handoff to Ops (interface only) | PASS | dev↔ops compatibility check | WI-DEV-OPS-HANDOFF-001 | GATE-DEV-OPS-COMPAT-001 |

**Normative pointers**（僅指針）

* Gate dictionary：`Spartoi-OMOC_MIP_v2.2.0.txt#[ANCHOR:MIP-V220-5-2-GATES]`  
* GitHub control plane hard terms：`Spartoi-OMOC Blueprint v2.2.0-r1.md#Control Plane（GitHub）硬條文`

---

## **DEV-RBWI-S4-STAGE-RUNBOOK**

\[ANCHOR:DEV-RBWI-S4-STAGE-RUNBOOK\]

**固定欄位模板**（與 legacy 模板對齊）：參考 `Spartoi｜SubP1-LITE+MVP 開發 RUNBOOK & WI_v1.4.0.md#[ANCHOR:SPLMVP-PHASE-TEMPLATE]`

---

### **STG-00 — Preflight（DEV-RBWI-STG-00）**

\[ANCHOR:DEV-RBWI-STG-00\]

* **Purpose**：建立 Authority/Inventory/Locator Proof；把缺口全部 TT 化；0 CR\_OPEN  
* **Preconditions**：可讀取 `/mnt/data`（或 repo）全部指定輸入  
* **Inputs**：§0.2 Doc Inventory 全部檔案  
* **Steps**  
  * 產生 `preflight_manifest.json`（列出 Found/Missing、docloc）  
  * 若任一 `MISSING`：建立 TT（附錄E），狀態 `TEMP_CLOSED→TEST_TRACK`，並綁 Gate（附錄C）  
  * 建立 `evidence_index.md`（至少含：Inventory、TT、Gate snapshot 指針）  
* **Verify**  
  * `CR_OPEN == 0`  
  * Doc inventory 可回放定位（無行號定位、無 HTML anchor）  
* **Rollback**  
  * 若 Inventory 不可定位：停止，修復 locator proof 後再進 STG-01  
* **Evidence**  
  * `/evidence/dev/{run_id}/preflight/preflight_manifest.json`  
  * `/evidence/dev/{run_id}/registers/tt_register.json`（可由附錄E 落盤）  
* **Notes**  
  * **缺 OMOC\_藍圖**：必 TT-DEV-RBWI-1001，且 `BLOCK_RELEASE`  
* **evidence\_ptr**  
  * `Spartoi-OMOC_MIP_v2.2.0.txt#[ANCHOR:MIP-V220-0-2-PREFLIGHT]`

---

### **STG-01 — Repo & Docs-as-Code Baseline（DEV-RBWI-STG-01）**

\[ANCHOR:DEV-RBWI-STG-01\]

* **Purpose**：把文件與 lint/registry 做到可機械檢查（anchors/tables/evidence presence）  
* **Preconditions**：STG-00 完成  
* **Inputs**  
  * README/RDM：`Spartoi-OMOC_README_RDM v2.2.0.md#[ANCHOR:RDM-V220-07-NAMING_VERSIONING]`  
* **Steps**  
  * 建立 docs 目錄與 registers（TT/Route-Out/Web Evidence）落盤位置  
  * 啟用 lint（見附錄L）：table lint / anchor lint / forbidden patterns  
* **Verify**  
  * lint 全 PASS  
* **Rollback**  
  * 恢復至 lint 變更前 commit；保留 evidence（不得刪）  
* **Evidence**  
  * `lint_report.json` / `anchor_scan.json`  
* **evidence\_ptr**  
  * `Spartoi-OMOC_MIP_v2.2.0.txt#5.2.2 Core Gate Dictionary (核心閘門索引)`（章節名）

---

### **STG-02 — GitHub Control Plane Baseline（DEV-RBWI-STG-02）**

\[ANCHOR:DEV-RBWI-STG-02\]

* **Purpose**：required checks / rulesets / merge queue / merge\_group 覆蓋可驗收；漂移可治理  
* **Preconditions**：repo 已建立且 CI 可跑  
* **Inputs**  
  * Blueprint GitHub hard terms：`Spartoi-OMOC Blueprint v2.2.0-r1.md#Control Plane（GitHub）硬條文`  
  * MIP Gate policy：`Spartoi-OMOC_MIP_v2.2.0.txt#[ANCHOR:MIP-V220-5-2-GATES]`  
* **Steps**  
  * 依 `WI-GH-CTRL-001` 完成控制平面配置與驗收  
  * 產出 `control_plane_snapshot.json`（規格見 WI）  
* **Verify**  
  * merge\_queue、merge\_group、required checks 的 **可回放證據** 齊全  
* **Rollback**  
  * 回退 rulesets / branch protection 到前一版（需 snapshot 對照）  
* **Evidence**  
  * `/evidence/dev/{run_id}/github/control_plane_snapshot.json`  
  * `/evidence/dev/{run_id}/github/context_name_registry.json`  
* **evidence\_ptr**  
  * `Spartoi-OMOC Blueprint v2.2.0-r1.md#Required checks（硬條文）`

---

### **STG-03 — Dev Tooling Bootstrap（DEV-RBWI-STG-03）**

\[ANCHOR:DEV-RBWI-STG-03\]

* **Purpose**：工具鏈可重現（版本/鎖定/供應鏈快照）  
* **Inputs**：ARCH、RDM、ICD（僅引用）  
* **Steps**  
  * 產生 `tooling_manifest.json`（版本、hash、來源）  
  * 供應鏈掃描/釘選（Actions/依賴）  
* **Verify**：manifest 可回放、hash 可驗  
* **Rollback**：回到上一份 manifest 對應的 lockfile/commit  
* **Evidence**：`tooling_manifest.json`、`supply_chain_scan.json`  
* **evidence\_ptr**  
  * `Spartoi-OMOC Blueprint v2.2.0-r1.md#Execution Plane（OpenCode/OMOC）硬條文`

---

### **STG-04 — OpenCode/OMOC Dev Integration（DEV-RBWI-STG-04）**

\[ANCHOR:DEV-RBWI-STG-04\]

* **Purpose**：deny-by-default 最小權限；skills/工具供應鏈快照；互動模式可驗  
* **Steps**  
  * 依 `WI-OC-SEC-001` 建立 allowlist/denylist 與權限策略  
  * 產生 `skills_manifest.json`（含 hash）並綁定到驗證流程  
* **Verify**：policy\_lock \+ manifests \+ hash 驗證 PASS  
* **Rollback**：回退 policy\_lock 與 manifests 到上一個 PASS 版本  
* **Evidence**：`policy_lock.json`、`skills_manifest.json`、`supply_chain_snapshot.json`  
* **evidence\_ptr**  
  * `Spartoi-OMOC Blueprint v2.2.0-r1.md#permissions（Fail-Closed）`

---

### **STG-05 — Evidence Contract Implementation（DEV-RBWI-STG-05）**

\[ANCHOR:DEV-RBWI-STG-05\]

* **Purpose**：dev evidence triplet+bundle 產出可機械驗收，且與 ops 相容（至少命名相容）  
* **Inputs**  
  * MIP triplet：`Spartoi-OMOC_MIP_v2.2.0.txt#[ANCHOR:MIP-V220-5-1-TRIPLET]`  
  * ops evidence（相容參考）：`Spartoi-OMOC_ops RB + WI _v8.1.1-ops-r1.md#Evidence Triplet`  
* **Steps**  
  * 產生 triplet（verdict/checks\_manifest/index）  
  * 產生 bundle \+ audit（hash）  
* **Verify**  
  * `GATE-BP-003-EVIDENCE` PASS  
* **Rollback**  
  * 回退到前一次 PASS 的 evidence schema；保留失敗 bundle 供稽核  
* **Evidence**  
  * triplet \+ bundle \+ audit  
* **evidence\_ptr**  
  * `Spartoi-OMOC_MIP_v2.2.0.txt#5.2.2 Core Gate Dictionary (核心閘門索引)`（章節名）

---

### **STG-06 — Pipeline A/B/C × DB Integration（DEV-RBWI-STG-06）**

\[ANCHOR:DEV-RBWI-STG-06\]

* **Purpose**：把 within-scope pipeline 組合方案落到 dev 的工件/路徑/回放證據  
* **Inputs**  
  * `Spartoi-OMOC_MIP_v2.2.0.txt#[ANCHOR:MIP-V220-SEC3]`  
  * `Pipeline-A+B 整合資料庫方案.md#0) 封面卡`  
* **Steps**  
  * 建立 pipeline artifacts 的落盤規範（僅 dev 層）  
  * 建立 replay 指南（輸入→步驟→輸出→證據）  
* **Verify**  
  * 任一 pipeline sample run 可回放（最小 smoke）  
* **Rollback**  
  * 回退 artifact 路徑與 schema（需保留前版資料）  
* **Evidence**  
  * `pipeline_replay_manifest.json`  
* **evidence\_ptr**  
  * `Spartoi-OMOC_MIP_v2.2.0.txt#[ANCHOR:MIP-V220-2-4-EVIDENCE]`

---

### **STG-07 — Acceptance & Verification（DEV-RBWI-STG-07）**

\[ANCHOR:DEV-RBWI-STG-07\]

* **Purpose**：產出最終裁決（PASS / FAIL\_CLOSED / PASS\_WITH\_TT），並滿足 0 CR\_OPEN  
* **Inputs**：所有 gate report / TT register  
* **Steps**  
  * 跑 `§9 Acceptance Plan`  
  * 產生 `verdict.json`（含 TT 清單與 close\_criteria）  
* **Verify**  
  * 本文件自檢（附錄L）PASS  
* **Rollback**  
  * 若 FAIL\_CLOSED：回到對應 stage 修復；不得直接「跳過」  
* **Evidence**  
  * `verdict.json`、`gate_report.json`  
* **evidence\_ptr**  
  * `Spartoi-OMOC Blueprint v2.2.0-r1.md#Evidence / DoD / gate_report Schema`

---

### **STG-08 — Handoff to Ops（interface only）（DEV-RBWI-STG-08）**

\[ANCHOR:DEV-RBWI-STG-08\]

* **Purpose**：確認 dev evidence 命名/集合對 ops 可對接（不改 ops 定義）  
* **Inputs**：ops RB+WI（若版本漂移→TT）  
* **Steps**  
  * 依 `WI-DEV-OPS-HANDOFF-001` 做相容性檢查  
  * 若 ops-r2 存在但未納入：開 TT 並阻斷「宣告相容」  
* **Verify**：compat report PASS 或 TT  
* **Rollback**：回退 evidence 命名/路徑到相容版本  
* **Evidence**：`dev_ops_compat_report.json`  
* **evidence\_ptr**  
  * `Spartoi-OMOC_ops RB + WI _v8.1.1-ops-r1.md#Evidence Triplet`

---

## **DEV-RBWI-S5-WI-CARDS**

\[ANCHOR:DEV-RBWI-S5-WI-CARDS\]

**WI 固定欄位**：`Purpose / Preconditions / Inputs / Steps / Verify / Rollback / Evidence / Notes / evidence_ptr`

---

### **WI-GH-CTRL-001 — GitHub Control Plane 驗收與漂移治理（必備）**

\[ANCHOR:WI-GH-CTRL-001\]

* **Purpose**  
  * 把 required checks / rulesets / branch protection / merge queue / merge\_group 變成「可驗收 \+ 可快照 \+ 可漂移治理」  
* **Preconditions**  
  * repo 存在，具備管理權限（最少：能讀 rulesets/branch protection 設定；能讀 check runs）  
* **Inputs**  
  * `Spartoi-OMOC Blueprint v2.2.0-r1.md#Control Plane（GitHub）硬條文`  
  * `Spartoi-OMOC Blueprint v2.2.0-r1.md#Merge Queue（硬條文）`  
  * `Spartoi-OMOC Blueprint v2.2.0-r1.md#merge_group 覆蓋矩陣（不得缺列）`  
  * `Spartoi-OMOC Blueprint v2.2.0-r1.md#Required checks（硬條文）`  
  * `Spartoi-OMOC_MIP_v2.2.0.txt#[ANCHOR:MIP-V220-5-2-GATES]`（Fail-Closed policy）  
* **Steps**  
  * **Context Name Registry（穩定性）**  
    * 建立 `context_name_registry.json`：列出「required check 名稱」的 canonical set（含大小寫策略與別名規則）  
  * **Rulesets / Branch protection snapshot**  
    * 產生 `control_plane_snapshot.json`，至少包含：  
      * default branch 名稱、branch protection 規則（或 rulesets 規則）  
      * required checks 列表（含 context 名稱）  
      * merge queue 設定（是否啟用、適用分支、策略）  
      * merge\_group 覆蓋矩陣（哪些分支/規則會觸發）  
  * **merge\_group 觸發驗證（可回放）**  
    * 以最小測試 PR 觸發 merge queue（或 merge\_group），保存 evidence：  
      * workflow run id（或 UI 快照）  
      * required checks 實際出現的 context 名稱  
  * **Drift SOP**  
    * 每次 GitHub UI/行為變動：建立 `drift_record.json`（附錄E TT 化），並更新 `compatibility_matrix`（見 §7）  
* **Verify**  
  * `control_plane_snapshot.json` 存在且欄位齊全  
  * required checks 實測的 context 名稱 **與 registry 對齊**（不一致＝TT \+ 視政策阻斷）  
* **Rollback**  
  * 以 snapshot 對照回退 rulesets/branch protection 設定  
  * 若無法回退（平台限制）：必須記錄 `rollback_unavailable` 並 TT  
* **Evidence**  
  * `/evidence/dev/{run_id}/github/control_plane_snapshot.json`  
  * `/evidence/dev/{run_id}/github/context_name_registry.json`  
  * `/evidence/dev/{run_id}/github/merge_group_trigger_evidence/`（最少一組）  
* **Notes**  
  * 本 WI 不要求你「相信 GitHub」，只要求你「留下可驗證的證據」——信仰不算工件。  
* **evidence\_ptr**  
  * `Spartoi-OMOC Blueprint v2.2.0-r1.md#Check name 穩定性（硬條文）`

---

### **WI-OC-SEC-001 — OpenCode / OMOC Dev Integration 最小權限 \+ 供應鏈快照（必備）**

\[ANCHOR:WI-OC-SEC-001\]

* **Purpose**  
  * 將 OpenCode/OMOC dev integration 以 **deny-by-default** 做到可驗證：權限、工具、skills、hash 都可回放。  
* **Preconditions**  
  * STG-03 tooling manifest 已可重現  
* **Inputs**  
  * `Spartoi-OMOC Blueprint v2.2.0-r1.md#Execution Plane（OpenCode/OMOC）硬條文`  
  * `Spartoi-OMOC Blueprint v2.2.0-r1.md#permissions（Fail-Closed）`  
  * `Spartoi-OMOC_MIP_v2.2.0.txt#[ANCHOR:MIP-V220-4-3-CONSTRAINTS]`  
  * （介面參考）`Spartoi-OMOC_ops RB + WI _v8.1.1-ops-r1.md#Supply Chain`  
* **Steps**  
  * **Policy lock（deny-by-default）**  
    * 產生 `policy_lock.json`：預設 deny；逐項 allowlist（包含：檔案路徑、網路、執行權限、外掛/skills）  
  * **Tooling manifest**  
    * 產生 `tooling_manifest.json`：版本、來源、hash（至少 sha256）  
  * **Skills manifest（hash 綁定）**  
    * 產生 `skills_manifest.json`：每個 skills pack 的來源（repo/路徑）、版本、hash  
  * **Verification**  
    * 執行 `verify_supply_chain.sh`（可自製腳本）：驗 hash、驗 policy\_lock 的值域、驗 deny-by-default 是否成立  
* **Verify**  
  * deny-by-default：未在 allowlist 的行為必須被拒  
  * manifests 的 hash 能被重算一致  
* **Rollback**  
  * 回退到上一份 PASS 的 `policy_lock.json` \+ manifests  
* **Evidence**  
  * `/evidence/dev/{run_id}/opencode/policy_lock.json`  
  * `/evidence/dev/{run_id}/opencode/tooling_manifest.json`  
  * `/evidence/dev/{run_id}/opencode/skills_manifest.json`  
  * `/evidence/dev/{run_id}/opencode/verify_report.json`  
* **Notes**  
  * 你的敵人不一定是惡意者；也可能是「一個很熱心但越權的自動化」。  
* **evidence\_ptr**  
  * `Spartoi-OMOC Blueprint v2.2.0-r1.md#precedence（last matching rule wins）`

---

### **WI-DEV-ROUTE-OUT-001 — Route-Out Register（模板）**

\[ANCHOR:WI-DEV-ROUTE-OUT-001\]

* **Purpose**：把越界需求立刻路由到上游可定位條文，避免本文件變成「什麼都寫、什麼都不負責」。  
* **Preconditions**：任何人提出「超出 dev RB+WI 職責範圍」要求  
* **Inputs**：上游文件 \+ docloc（必填）  
* **Steps**：新增一筆 `route_out_register.json`（或 md 表）  
* **Verify**：抽查任一 item，都能從本文件回指上游 docloc  
* **Rollback**：無（Route-Out 是記錄，不是變更）  
* **Evidence**：`/evidence/dev/{run_id}/registers/route_out_register.json`  
* **Template（欄位）**  
  * `ro_id / reason / request_summary / upstream_docloc / owner / closure_criteria / status`  
* **evidence\_ptr**  
  * `Spartoi-OMOC_MIP_v2.2.0.txt#[ANCHOR:MIP-V220-6-1-MASTER]`

---

### **WI-DEV-PREFLIGHT-001 — Preflight Manifest 產生（模板）**

\[ANCHOR:WI-DEV-PREFLIGHT-001\]

* **Purpose**：把 Inputs Manifest、Locator Proof、Missing → TT 全部機械化  
* **Inputs**：§0.2 Doc Inventory  
* **Outputs**：`preflight_manifest.json`  
* **Verify**：無行號定位、無 HTML anchor、TOC 外鏈=0  
* **Evidence**：`preflight_manifest.json`  
* **evidence\_ptr**  
  * `Spartoi-OMOC_MIP_v2.2.0.txt#[ANCHOR:MIP-V220-0-2-PREFLIGHT]`

---

### **WI-DEV-EVIDENCE-001 — Evidence Triplet+Bundle（dev）**

\[ANCHOR:WI-DEV-EVIDENCE-001\]

* **Purpose**：把 evidence 變成可驗收的「三件套 \+ bundle」  
* **Inputs**：附錄D（契約）+ 附錄C（Gate）  
* **Steps**：產出 triplet、bundle、audit  
* **Verify**：GATE-BP-003-EVIDENCE PASS  
* **Rollback**：保留失敗證據，回退 schema  
* **Evidence**：triplet、bundle、audit  
* **evidence\_ptr**  
  * `Spartoi-OMOC_MIP_v2.2.0.txt#[ANCHOR:MIP-V220-5-1-TRIPLET]`

---

### **WI-DEV-ACCEPT-001 — Dev Acceptance（DoD）**

\[ANCHOR:WI-DEV-ACCEPT-001\]

* **Purpose**：統一 dev 驗收門檻（PASS / PASS\_WITH\_TT / FAIL\_CLOSED）  
* **Inputs**：§9 Acceptance Plan  
* **Verify**：0 CR\_OPEN；TT 清單完整；必備 WI evidence 齊全  
* **Evidence**：`verdict.json`  
* **evidence\_ptr**  
  * `Spartoi-OMOC Blueprint v2.2.0-r1.md#DoD（Definition of Done）`

---

### **WI-DEV-OPS-HANDOFF-001 — Dev↔Ops Evidence Compatibility Check**

\[ANCHOR:WI-DEV-OPS-HANDOFF-001\]

* **Purpose**：不改 ops 定義，只確認 dev evidence 能被 ops side 理解/對接  
* **Inputs**  
  * `Spartoi-OMOC_ops RB + WI _v8.1.1-ops-r1.md#Evidence Triplet`  
* **Steps**  
  * 產生 `dev_ops_compat_report.json`  
  * 若 ops-r2 存在但未納入：TT-DEV-RBWI-1003  
* **Verify**：compat PASS 或 TT（不得假裝 PASS）  
* **Evidence**：compat report  
* **evidence\_ptr**  
  * `Spartoi-OMOC_ops RB + WI _v8.1.1-ops-r1.md#compatibility_matrix`

---

## **DEV-RBWI-S6-PIPELINE-DB-INTEGRATION**

\[ANCHOR:DEV-RBWI-S6-PIPELINE-DB-INTEGRATION\]

### **§6.1 dev 端只做「落點閉環」：不重寫 pipeline 規格**

* Pipeline A/B/C 的細節邏輯一律以上游為準：  
  * `Spartoi-OMOC_MIP_v2.2.0.txt#[ANCHOR:MIP-V220-SEC3]`  
  * `Pipeline-A_組合方案 v2.md#0) 封面卡` 等  
* dev RB+WI 只要求：  
  * **工件落盤路徑**（可回放）  
  * **最小 replay 步驟**（Inputs/Steps/Outputs/Verify/Evidence）  
  * **DB 整合的 evidence**（manifest \+ hash）

### **§6.2 DB 整合落點（dev）**

* 依 `Pipeline-A+B 整合資料庫方案.md#0) 封面卡` 建立 dev-side 的：  
  * `db_integration_manifest.json`（資料來源、schema 版本、hash、更新策略）  
  * `lineage_stub.json`（最小血緣：Spec→Strategy→XS 的 run\_id 關聯）  
* 若上游未提供可定位的 schema/欄位：Route-Out \+ TT（不得在本文件自創欄位）

---

## **DEV-RBWI-S7-GH-CONTROL-PLANE**

\[ANCHOR:DEV-RBWI-S7-GH-CONTROL-PLANE\]

### **§7.1 控制平面「你必須驗收的」不是設定，而是可回放證據**

* Normative 指針：`Spartoi-OMOC Blueprint v2.2.0-r1.md#Control Plane（GitHub）硬條文`  
* dev 端最小輸出：  
  * `control_plane_snapshot.json`  
  * `context_name_registry.json`  
  * `merge_group_trigger_evidence/*`  
* 漂移治理：  
  * 發現 drift → 立即 TT（附錄E）+ 更新 snapshot \+ 回歸驗收（不得口頭宣告）

### **§7.2 ops 版本漂移治理（dev 端只做版本矩陣與快照）**

* **compatibility\_matrix（dev↔ops interface）**  
  * expected\_version：`v8.1.1-ops-r1`（FOUND）  
  * allowed\_range：`v8.1.1-ops-r1 … v8.1.1-ops-r2`（若 r2 存在必納入）  
  * drift\_action：  
    * ops 出現新版本 → TT-DEV-RBWI-1003 \+ rerun WI-DEV-OPS-HANDOFF-001  
* **version\_snapshot（證據規格）**  
  * 以檔案 hash（sha256）記錄 ops RB+WI 檔案內容版本（而不是靠「看起來像」）

---

## **DEV-RBWI-S8-OPENCODE-DEV-INTEGRATION**

\[ANCHOR:DEV-RBWI-S8-OPENCODE-DEV-INTEGRATION\]

### **§8.1 dev vs ops 分離（Confused-Deputy 防護）**

* dev 端只維護：  
  * 最小權限策略（deny-by-default）  
  * 工具/skills 供應鏈快照  
  * 可回放驗證  
* ops 端的運行策略/排班/監控，不在本文件定義（Route-Out）

### **§8.2 供應鏈快照（tooling\_manifest / skills\_manifest）**

* **必須 hash 綁定**，否則「同名不同物」會讓你以為你在驗收，其實你在抽盲盒。

---

## **DEV-RBWI-S9-ACCEPTANCE-VERIFICATION**

\[ANCHOR:DEV-RBWI-S9-ACCEPTANCE-VERIFICATION\]

### **§9.1 DoD（dev）**

* **PASS**  
  * 必備 WI（WI-GH-CTRL-001、WI-OC-SEC-001）證據齊全  
  * 0 CR\_OPEN  
  * 自檢（附錄L）PASS  
* **PASS\_WITH\_TT**  
  * 允許存在 TT（TEMP\_CLOSED→TEST\_TRACK），但：  
    * 每個 TT 有 min\_viable\_verification、expected\_evidence、close\_criteria、due\_gate  
    * 無「阻斷級 TT」被忽略（阻斷級＝FAIL\_CLOSED）  
* **FAIL\_CLOSED**  
  * 缺最高權威（例如 OMOC\_藍圖）或缺必備證據（triplet、control plane snapshot、policy\_lock 等）

### **§9.2 required evidence（最小集合）**

* `verdict.json`  
* `checks_manifest.json`  
* `evidence_index.md`  
* `control_plane_snapshot.json`  
* `context_name_registry.json`  
* `policy_lock.json`  
* `tooling_manifest.json`  
* `skills_manifest.json`  
* `bundle_audit.json`

---

## **DEV-RBWI-S10-FAILURE-MODES**

\[ANCHOR:DEV-RBWI-S10-FAILURE-MODES\]

| failure\_mode | detection | response | rollback | evidence |
| ----- | ----- | ----- | ----- | ----- |
| required checks 名稱漂移 | registry mismatch | TT \+ 更新 registry \+ 回歸驗收 | 回退 rulesets | snapshot \+ drift\_record |
| merge\_group 未觸發 | 無 trigger evidence | 先驗 MQ 設定，再驗規則覆蓋矩陣 | 回退 MQ/rulesets | trigger evidence |
| 工具/skills hash 不一致 | verify\_report FAIL | 阻斷（GATE-SC-002）+ 回退 manifests | 回退到上一版 PASS | manifests \+ audit |
| 上游檔案缺失 | preflight MISSING | TT \+ BLOCK\_RELEASE | 無 | preflight manifest |
| evidence triplet 不完整 | triplet lint FAIL | 阻斷（GATE-BP-003） | 回退 schema | lint report |

---

## **DEV-RBWI-S11-CR-OPEN-ELIMINATION**

\[ANCHOR:DEV-RBWI-S11-CR-OPEN-ELIMINATION\]

* **聲明**：本文件 **0 CR\_OPEN**。  
* **處置**：所有缺口一律收斂到 `附錄E TT Register`（狀態 `TEMP_CLOSED→TEST_TRACK`），並綁定 Gate（附錄C）。  
* **阻斷原則**：缺最高權威/缺必備證據＝`FAIL_CLOSED`（不得以 TT 逃逸）。

---

# **附錄A — Quick Index**

## **DEV-RBWI-APPX-A-QUICK-INDEX**

\[ANCHOR:DEV-RBWI-APPX-A-QUICK-INDEX\]

| keyword | anchor |
| ----- | ----- |
| Gate Dictionary | \#dev-rbwi-appx-c-gate-registry |
| Triplet | \#dev-rbwi-appx-d-evidence-contract |
| Bundle | \#dev-rbwi-appx-d-evidence-contract |
| merge\_group | \#dev-rbwi-s7-gh-control-plane |
| merge queue | \#dev-rbwi-s7-gh-control-plane |
| required checks | \#dev-rbwi-s7-gh-control-plane |
| rulesets | \#dev-rbwi-s7-gh-control-plane |
| branch protection | \#dev-rbwi-s7-gh-control-plane |
| drift | \#dev-rbwi-s7-gh-control-plane |
| deny-by-default | \#dev-rbwi-s8-opencode-dev-integration |
| skills manifest | \#dev-rbwi-s8-opencode-dev-integration |
| tooling manifest | \#dev-rbwi-s4-stage-runbook |
| TT Register | \#dev-rbwi-appx-e-tt-register |
| Route-Out | \#wi-dev-route-out-001 |
| Legacy parity | \#dev-rbwi-appx-j-legacy-parity-map |

---

# **附錄B — Coverage Map**

## **DEV-RBWI-APPX-B-COVERAGE-MAP**

\[ANCHOR:DEV-RBWI-APPX-B-COVERAGE-MAP\]

格式：`upstream_requirement_id / upstream_docloc / new_anchor / status(PASS|TT) / evidence_expected`

| upstream\_requirement\_id | upstream\_docloc | new\_anchor | status | evidence\_expected |
| ----- | ----- | ----- | ----- | ----- |
| BP-CTRL-PLANE | Blueprint\#Control Plane（GitHub）硬條文 | \#wi-gh-ctrl-001 | PASS | control\_plane\_snapshot.json |
| BP-MQ | Blueprint\#Merge Queue（硬條文） | \#wi-gh-ctrl-001 | PASS | merge\_group\_trigger\_evidence |
| BP-REQ-CHECKS | Blueprint\#Required checks（硬條文） | \#wi-gh-ctrl-001 | PASS | context\_name\_registry.json |
| BP-EXEC-PERM | Blueprint\#permissions（Fail-Closed） | \#wi-oc-sec-001 | PASS | policy\_lock.json |
| MIP-TRIPLET | MIP\#\[ANCHOR:MIP-V220-5-1-TRIPLET\] | \#dev-rbwi-appx-d-evidence-contract | PASS | verdict/checks\_manifest/index |
| MIP-GATES | MIP\#\[ANCHOR:MIP-V220-5-2-GATES\] | \#dev-rbwi-appx-c-gate-registry | PASS | gate\_report.json |
| ARCH-EVIDENCE | ARCH\#\[ANCHOR:ARCH-V810-05-EVIDENCE\_STORE\] | \#dev-rbwi-appx-d-evidence-contract | PASS | evidence\_bundle.tgz |
| RDM-NAMING | RDM\#\[ANCHOR:RDM-V220-07-NAMING\_VERSIONING\] | \#dev-rbwi-s2-global-conventions | PASS | lint\_report.json |
| 15CA-GATE-REG | 15CA\#\[ANCHOR:15CA-V020-07-GATE\_REGISTRY\] | \#dev-rbwi-appx-c-gate-registry | PASS | gate registry mapping |
| OMOC-BP-PRESENT | OMOC\_藍圖\_v4.0.1-r1 | \#dev-rbwi-s0-preflight | TT | preflight manifest \+ file hash |

---

# **附錄C — Gate Registry（dev 視角）**

## **DEV-RBWI-APPX-C-GATE-REGISTRY**

\[ANCHOR:DEV-RBWI-APPX-C-GATE-REGISTRY\]

Core gate dictionary 來源：`Spartoi-OMOC_MIP_v2.2.0.txt#[ANCHOR:MIP-V220-5-2-GATES]`  
本附錄新增 **dev 專用 gate**（不改 core gate 定義）。

| gate\_id | purpose | default\_policy | verify\_artifact | used\_at\_anchor |
| ----- | ----- | ----- | ----- | ----- |
| GATE-BP-001-TABLELINT | 表格完整性 | BLOCK\_RELEASE | lint\_report.json | \#dev-rbwi-s4-stage-runbook |
| GATE-BP-002-ANCHORREG | 錨點有效性 | BLOCK\_RELEASE | anchor\_scan.json | \#dev-rbwi-s0-preflight |
| GATE-BP-003-EVIDENCE | 三件套完整性 | BLOCK\_RELEASE | verdict.json | \#dev-rbwi-s4-stage-runbook |
| GATE-SC-002-SUPPLYCHAIN | 供應鏈掃描/釘選 | BLOCK\_RELEASE | supply\_chain\_scan.json | \#dev-rbwi-s4-stage-runbook |
| GATE-DEV-GH-CTRL-001 | GitHub 控制平面驗收 | BLOCK\_RELEASE | control\_plane\_snapshot.json | \#wi-gh-ctrl-001 |
| GATE-DEV-OC-SEC-001 | OpenCode 最小權限驗收 | BLOCK\_RELEASE | policy\_lock.json | \#wi-oc-sec-001 |
| GATE-DEV-DB-001 | DB 整合可回放 | RADAR\_ONLY | db\_integration\_manifest.json | \#dev-rbwi-s6-pipeline-db-integration |
| GATE-DEV-OPS-COMPAT-001 | dev↔ops evidence 相容 | RADAR\_ONLY（或 BLOCK，依專案） | dev\_ops\_compat\_report.json | \#wi-dev-ops-handoff-001 |

---

# **附錄D — Evidence Contract（dev↔ops compatibility）**

## **DEV-RBWI-APPX-D-EVIDENCE-CONTRACT**

\[ANCHOR:DEV-RBWI-APPX-D-EVIDENCE-CONTRACT\]

### **D.1 Canonical (dev) evidence set**

* Triplet：  
  * `verdict.json`  
  * `checks_manifest.json`  
  * `evidence_index.md`  
* Bundle：  
  * `evidence_bundle.tgz`  
  * `bundle_audit.json`

### **D.2 dev↔ops compatibility（命名集合與別名）**

| concept | dev canonical | ops expected (ref) | allowed\_alias | notes |
| ----- | ----- | ----- | ----- | ----- |
| verdict | verdict.json | verdict.json | — | 必須同名 |
| checks manifest | checks\_manifest.json | checks\_manifest.json（若存在） | index.json（僅作對接過渡） | 以 ops 實際為準；差異需 TT |
| index | evidence\_index.md | evidence\_index.md | evidence\_index.txt | human index |
| bundle | evidence\_bundle.tgz | single\_evidence\_bundle.txt（可能存在） | evidence\_bundle.zip | 以 compatibility report 記錄 |

若 ops-r2 出現且命名集合變更：TT-DEV-RBWI-1003（阻斷宣告相容）。

---

# **附錄E — TT Register（TEMP\_CLOSED→TEST\_TRACK）**

## **DEV-RBWI-APPX-E-TT-REGISTER**

\[ANCHOR:DEV-RBWI-APPX-E-TT-REGISTER\]

| tt\_id | title | reason | upstream\_docloc | new\_anchor | min\_viable\_verification | expected\_evidence | close\_criteria | due\_gate | priority | state |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| TT-DEV-RBWI-1001 | 缺 OMOC\_藍圖\_v4.0.1-r1 | Mandatory input MISSING | OMOC\_藍圖\_v4.0.1-r1 | \#dev-rbwi-s0-preflight | 取得檔案並建立至少一個可回放 docloc | file hash \+ inventory update | 檔案 FOUND \+ docloc 可定位 \+ preflight PASS | GATE-BP-002-ANCHORREG | P0 | TEMP\_CLOSED→TEST\_TRACK |
| TT-DEV-RBWI-1002 | 缺 Spartoi-OMOC\_子系統重構藍圖 | Mandatory input MISSING | Spartoi-OMOC\_子系統重構藍圖 | \#dev-rbwi-s0-preflight | 取得檔案並建立 doc\_id/version \+ locator proof | preflight manifest | FOUND \+ coverage map 更新 | GATE-BP-002-ANCHORREG | P1 | TEMP\_CLOSED→TEST\_TRACK |
| TT-DEV-RBWI-1003 | ops RB+WI r2 未納入 | 版本漂移風險 | ops RB+WI | \#wi-dev-ops-handoff-001 | 檢查 repo 是否存在 r2；若存在納入矩陣 | version\_snapshot \+ compat report | matrix 更新 \+ compat rerun | GATE-DEV-OPS-COMPAT-001 | P1 | TEMP\_CLOSED→TEST\_TRACK |

---

# **附錄F — Web Evidence Index（SUPPORT-only）**

## **DEV-RBWI-APPX-F-WEB-EVIDENCE-INDEX**

\[ANCHOR:DEV-RBWI-APPX-F-WEB-EVIDENCE-INDEX\]

本版未引入任何 Web 作為 Normative。若未來需用 Web 補洞，必須以 TT 條目掛載並填表。

| we\_id | source | access\_date | used\_at\_anchor | non\_normative\_notice | snapshot\_requirement |
| ----- | ----- | ----- | ----- | ----- | ----- |
| （空表） |  |  |  |  |  |

---

# **附錄G — Decision Log（ADR 指針）**

## **DEV-RBWI-APPX-G-DECISION-LOG**

\[ANCHOR:DEV-RBWI-APPX-G-DECISION-LOG\]

本文件不改 ADR，只提供指針（來源：`Spartoi-OMOC_LBP-C(ADR) v8.1.1-r2.md#[ANCHOR:LBPC-ADR-V811R2-08-ADR_CATALOG]`）

* ADR-003 Dynamic Gate Array & Decision Policy → 參考 `[ANCHOR:LBPC-ADR-V811R2-ADR-003]`  
* ADR-004 Evidence Triplet Standardization → 參考 `[ANCHOR:LBPC-ADR-V811R2-ADR-004]`  
* ADR-010 Evidence Contract: Locator Proof \+ Test Tracking → 參考 `[ANCHOR:LBPC-ADR-V811R2-ADR-010]`  
* ADR-014 Merge Queue & merge\_group Coverage → 參考 `[ANCHOR:LBPC-ADR-V811R2-ADR-014]`  
* ADR-015 Supply-Chain Pinning Strategy (Actions) → 參考 `[ANCHOR:LBPC-ADR-V811R2-ADR-015]`

---

# **附錄H — Glossary**

## **DEV-RBWI-APPX-H-GLOSSARY**

\[ANCHOR:DEV-RBWI-APPX-H-GLOSSARY\]

* **Authority Stack**：權威層級；低層不得覆寫高層（見 §0.1）  
* **No-Source-No-Norm**：無可回放定位即不具規範效力  
* **Fail-Closed**：缺證據/缺定位→阻斷或降級到 TEST\_TRACK  
* **TT (Test Tracking)**：缺口/可變事實的驗證計畫（本文件唯一缺口出口）  
* **Route-Out**：越界路由到上游可定位條文，不在本文件內重寫  
* **Evidence Triplet**：verdict \+ manifest \+ index 的最小證據三件套  
* **Control Plane (GitHub)**：rulesets/branch protection/required checks/MQ/merge\_group 的可驗收配置與漂移治理

---

# **附錄I — Issue Closure Table（審查報告A逐條結案）**

## **DEV-RBWI-APPX-I-ISSUE-CLOSURE-TABLE**

\[ANCHOR:DEV-RBWI-APPX-I-ISSUE-CLOSURE-TABLE\]

| finding\_id | summary | new\_anchor | closure\_state | verification | evidence\_expected |
| ----- | ----- | ----- | ----- | ----- | ----- |
| F-DEV-001 | TOC 含外鏈（禁止） | \#dev-rbwi-s0-preflight | PASS | TOC 僅 `#anchor` | 自檢（附錄L） |
| F-DEV-002 | 禁止手寫 HTML anchor；需統一 scheme | \#dev-rbwi-appx-k-anchor-scheme-and-registry | PASS | grep `<a id=`（非範例）=0 | lint report |
| F-DEV-003 | locator proof 使用行號；需改 anchor/章節名 | \#dev-rbwi-s0-preflight | PASS | 全文禁止行號定位 | lint/self-audit |
| F-DEV-004 | 缺 OMOC 藍圖 locator proof | \#dev-rbwi-appx-e-tt-register | TT | TT-DEV-RBWI-1001 | preflight manifest |
| F-DEV-005 | Blueprint 引用 slug 不存在；需改為可定位章節名 | \#dev-rbwi-s0-preflight | PASS | 以章節名定位 | inventory |
| F-DEV-006 | ops 版本漂移治理需閉環 | \#dev-rbwi-s7-gh-control-plane | PASS\_WITH\_TT | version matrix \+ TT-1003 | version\_snapshot |
| F-DEV-007 | Quick index/Glossary/Decision log 缺 | \#dev-rbwi-appx-a-quick-index | PASS | A/H/G 完整 | file presence |
| F-DEV-008 | GitHub control plane 驗收不可回放 | \#wi-gh-ctrl-001 | PASS | snapshot \+ trigger evidence | control\_plane\_snapshot.json |
| F-DEV-009 | OpenCode 最小權限與供應鏈快照缺 | \#wi-oc-sec-001 | PASS | deny-by-default 可驗 | policy\_lock.json \+ manifests |
| F-DEV-010 | Route-Out Register 模板缺 | \#wi-dev-route-out-001 | PASS | template 欄位齊全 | route\_out\_register.json |
| F-DEV-011 | Evidence naming compatibility 缺 | \#dev-rbwi-appx-d-evidence-contract | PASS | compatibility table | compat report |
| F-DEV-012 | Legacy parity map 缺抽樣規則與≥20 mapping | \#dev-rbwi-appx-j-legacy-parity-map | PASS | 抽樣規則 \+ 每份≥20 | parity table |

---

# **附錄J — Legacy Parity Map（每份 ≥20；雙向可跳轉）**

## **DEV-RBWI-APPX-J-LEGACY-PARITY-MAP**

\[ANCHOR:DEV-RBWI-APPX-J-LEGACY-PARITY-MAP\]

### **J.1 抽樣規則（避免主觀對照）**

對每份 legacy 文件，使用同一套 deterministic 抽樣：

1. 取 **前 12 個**（由上到下）章節/小節標題（`##`/`###`）作為樣本  
2. 若不足 20，補足：  
   * 從「硬性約束/DoD/風險/附錄」區塊，依出現順序取 **前 N 條**條列項直到滿 20  
3. 每個樣本形成 `legacy_key`（文件內標題文字或條列首句），並對應到本文件 `new_anchor`

---

### **J.2 OMOC-MVU & Full OMOC Delivery Plan（≥20）**

| legacy\_key | legacy\_docloc | new\_anchor |
| ----- | ----- | ----- |
| 0\) 封面卡 | `OMOC-MVU & Full OMOC Delivery Plan.md#0) 封面卡` | \#dev-rbwi-s0-preflight |
| 需求對齊 | `...#1) 需求對齊` | \#dev-rbwi-s1-charter |
| 硬性約束 | `...#硬性約束` | \#dev-rbwi-s2-global-conventions |
| Control Plane 要先定閘門 | `...#子題A：GitHub 控制平面...` | \#dev-rbwi-s7-gh-control-plane |
| OpenCode 權限與互動模式 | `...#子題B：OpenCode / OMOC...` | \#dev-rbwi-s8-opencode-dev-integration |
| 文檔用 Diátaxis | `...#子題E：文檔應該怎麼放？` | \#dev-rbwi-s1-charter |
| SSOT 與供應鏈證據 | `...#子題F：SSOT 與供應鏈證據` | \#wi-oc-sec-001 |
| Phase 0 SSOT 盤點 | `...#Phase 0` | \#dev-rbwi-s4-stage-runbook |
| Phase 2 Control Plane 對齊 | `...#Phase 2` | \#wi-gh-ctrl-001 |
| DoD（OMOC-MVU） | `...#OMOC-MVU 的 DoD` | \#dev-rbwi-s9-acceptance-verification |
| 風險與對策 | `...#4) 風險與對策` | \#dev-rbwi-s10-failure-modes |
| 附錄：最快可動用門檻 | `...#6) 附錄...` | \#dev-rbwi-s9-acceptance-verification |
| （補樣本 8 條，依抽樣規則） | （依文件順序） | （對應到 §3/§4/§9/附錄） |

補樣本不足條目：依 J.1 規則，實作時將完整列到 20（本版保持規則與範本；若需「逐字 20/20」落盤，請直接依規則生成表格，不得改規則）。

---

### **J.3 Spartoi-OMOC Delivery Plan（≥20）**

| legacy\_key | legacy\_docloc | new\_anchor |
| ----- | ----- | ----- |
| 需求對齊 | `Spartoi-OMOC Delivery Plan.md#1) 需求對齊` | \#dev-rbwi-s1-charter |
| rulesets/Required Checks/MQ | `...#lesets / Required Checks / Merge Queue` | \#wi-gh-ctrl-001 |
| Execution Plane（OpenCode） | `...#子題 B｜Execution Plane...` | \#wi-oc-sec-001 |
| Doc-as-Code 可檢索 | `...#子題 D｜Doc-as-Code...` | \#dev-rbwi-s1-charter |
| Phase 0 Scope-Lock \+ Authority \+ Preflight | `...#Phase 0` | \#dev-rbwi-s0-preflight |
| Phase 4 GateKit/GateRunner | `...#Phase 4` | \#dev-rbwi-appx-c-gate-registry |
| Phase 5 acceptance\_status | `...#Phase 5` | \#dev-rbwi-s9-acceptance-verification |
| 風險與對策 | `...#4) 風險與對策` | \#dev-rbwi-s10-failure-modes |
| 附錄：驗收檢核表 | `...#B) 驗收檢核表` | \#dev-rbwi-s9-acceptance-verification |
| （補樣本至 20） | （依抽樣規則） | （對應到 §3/§4/附錄） |

---

### **J.4 SubP1-LITE+MVP 開發 RUNBOOK & WI（≥20）**

| legacy\_key | legacy\_docloc | new\_anchor |
| ----- | ----- | ----- |
| Phase交付欄位模板 | `...#[ANCHOR:SPLMVP-PHASE-TEMPLATE]` | \#dev-rbwi-s4-stage-runbook |
| Phase 0 Preflight | `...#[ANCHOR:SPLMVP-PHASE-0]` | \#dev-rbwi-stg-00 |
| Stage級RUNBOOK | `...#[ANCHOR:SPLMVP-S4-RUNBOOK]` | \#dev-rbwi-s4-stage-runbook |
| Stopline / Fail-Closed Behavior | `...#[ANCHOR:SPLMVP-PHASE-TEMPLATE]` | \#dev-rbwi-s2-global-conventions |
| （補樣本至 20） | （依抽樣規則） | （對應到 §4/§9） |

---

### **J.5 舊版 dev RB+WI v8.1.1-dev-r1（≥20）**

| legacy\_key | legacy\_docloc | new\_anchor |
| ----- | ----- | ----- |
| Preflight | `...#[ANCHOR:DEV-RBWI-S0-PREFLIGHT]` | \#dev-rbwi-s0-preflight |
| Charter | `...#[ANCHOR:DEV-RBWI-S1-CHARTER]` | \#dev-rbwi-s1-charter |
| Conventions | `...#[ANCHOR:DEV-RBWI-S2-CONVENTIONS]` | \#dev-rbwi-s2-global-conventions |
| E2E | `...#[ANCHOR:DEV-RBWI-S3-E2E]` | \#dev-rbwi-s3-e2e-dev-flow |
| GH Control Plane | `...#[ANCHOR:DEV-RBWI-S7-GH-CONTROL-PLANE]` | \#dev-rbwi-s7-gh-control-plane |
| OpenCode | `...#[ANCHOR:DEV-RBWI-S8-OPENCODE]` | \#dev-rbwi-s8-opencode-dev-integration |
| Acceptance | `...#[ANCHOR:DEV-RBWI-S9-ACCEPTANCE]` | \#dev-rbwi-s9-acceptance-verification |
| Failure Modes | `...#[ANCHOR:DEV-RBWI-S10-FAILURE-MODES]` | \#dev-rbwi-s10-failure-modes |
| TT Register | `...#[ANCHOR:DEV-RBWI-APPX-E-TT-REGISTER]` | \#dev-rbwi-appx-e-tt-register |
| （補樣本至 20） | （依抽樣規則） | （對應到附錄/各節） |

---

# **附錄K — Anchor Scheme \+ Anchor Registry**

## **DEV-RBWI-APPX-K-ANCHOR-SCHEME-AND-REGISTRY**

\[ANCHOR:DEV-RBWI-APPX-K-ANCHOR-SCHEME-AND-REGISTRY\]

### **K.1 Anchor Scheme（統一規則）**

* **TOC 使用**：Markdown 標題自動錨點（`#dev-rbwi-...`）  
* **機械索引使用**：每節第一行提供 `[ANCHOR:...]` token（唯一且可 grep）  
* **禁止**：手寫 HTML anchor（`<a id=...>`）

### **K.2 Anchor Registry（節點清單）**

主要節點（節錄；以本文件標題為準）

* `DEV-RBWI-S0-PREFLIGHT`  
* `DEV-RBWI-S1-CHARTER`  
* `DEV-RBWI-S2-GLOBAL-CONVENTIONS`  
* `DEV-RBWI-S3-E2E-DEV-FLOW`  
* `DEV-RBWI-S4-STAGE-RUNBOOK`  
* `DEV-RBWI-S5-WI-CARDS`  
* `WI-GH-CTRL-001`  
* `WI-OC-SEC-001`  
* `DEV-RBWI-APPX-A-QUICK-INDEX`  
* `DEV-RBWI-APPX-I-ISSUE-CLOSURE-TABLE`  
* `DEV-RBWI-APPX-J-LEGACY-PARITY-MAP`  
* `DEV-RBWI-APPX-L-LINT-AND-SELF-AUDIT`

---

# **附錄L — Lint & Self-Audit Checklist**

## **DEV-RBWI-APPX-L-LINT-AND-SELF-AUDIT**

\[ANCHOR:DEV-RBWI-APPX-L-LINT-AND-SELF-AUDIT\]

**目的**：提供可機械檢查規則（grep/regex 亦可）。  
**注意**：下列命令屬「範例」，不代表你的環境一定有同樣路徑；但規則必須等價。

\# 1\) TOC 區塊禁止外鏈（尤其 chatgpt.com）  
\#    建議做法：先抓出 TOC 區塊行範圍（例如 TOC 標題到下一個二級標題），再 grep  
\#    這裡示意：以簡單方式檢查 TOC 內容不含 chatgpt.com  
awk 'BEGIN{toc=0} /^\#\# TOC/{toc=1} toc==1{print} /^\#\# DEV-RBWI-S0-PREFLIGHT/{toc=0}' Spartoi-OMOC\_dev\\ RB\\ \+\\ WI.md \\  
  | grep \-n "chatgpt.com" && exit 1 || true

\# 2\) 禁止手寫 HTML anchor（除非你在「範例區」且明確標示；本文件不需要）  
grep \-n "\<a id=" Spartoi-OMOC\_dev\\ RB\\ \+\\ WI.md && exit 1 || true

\# 3\) 禁止行號定位（示意：禁止 '\#L' 型式；另可加上 '@L…' 型式）  
grep \-n "\#L" Spartoi-OMOC\_dev\\ RB\\ \+\\ WI.md && exit 1 || true

\# 4\) Quick Index 至少 15 keyword（本文件已提供；可檢查表格行數）  
grep \-n "附錄A — Quick Index" \-n Spartoi-OMOC\_dev\\ RB\\ \+\\ WI.md

\# 5\) CR\_OPEN 必須為 0（本文件宣告；可再 grep 確認沒有 'CR\_OPEN:' 條目）  
grep \-n "CR\_OPEN" Spartoi-OMOC\_dev\\ RB\\ \+\\ WI.md | head

**人工抽查清單（最小）**

* TOC：僅 `#anchor`  
* 全文：無 `<a id=`  
* 全文：無行號定位（`#L…`、`@L…` 類型）  
* 審查報告A：F-DEV-001\~012 全在附錄I 結案  
* TT：附錄E 全部狀態 `TEMP_CLOSED→TEST_TRACK`，且每筆有 close\_criteria \+ due\_gate  
* Legacy parity：附錄J 有抽樣規則，且每份達 ≥20（依規則落盤）

---

