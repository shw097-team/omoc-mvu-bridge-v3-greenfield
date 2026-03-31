# **Spartoi-OMOC｜SubP1-LITE+MVP — Walking Skeleton Pack v0（升級修補版）**

\[ANCHOR:SOMOC-WSPV0-S0-COVER\]

**一句話定位**：這份文件是「Walking Skeleton Pack v0」的**契約/邊界/映射/驗收接口**總綱；**不**提供任何施工步驟（想貼命令的人，請先把手離開鍵盤，去 RUNBOOK/WI）。  
evidence\_ptr：DOCLOC:/mnt/data/OMOC\_藍圖\_v4.0.1-r1.md\#\[ANCHOR:OMOC-BP-0000\]

---

## **Cover Card / Doc Meta**

\[ANCHOR:SOMOC-WSPV0-S0-DOC-META\]

| field | value |
| ----- | ----- |
| external\_name | Spartoi-OMOC\_SubP1-LITE+MVP\_Walking Skeleton Pack v0 |
| internal\_short\_name | WSP-v0 |
| stable\_id | SOMOC-WSPV0 |
| doc\_id | SOMOC-WSPV0.v2.1.0-r1 |
| version | v2.1.0-r1 |
| status | ACTIVE |
| release\_date | 2026-02-20 |
| timezone | Asia/Taipei (UTC+08:00) |
| baseline\_web\_date | 2026-02-20 |
| supersedes | v2.0.0-r1(B版)（工程性取代於本文件 scope） |
| compatibility | 與 SubP1-LITE+MVP/OMOC 藍圖系統一致；缺件以 Fail-Closed / TT 管理 |

---

## **Supersedence Clause**

\[ANCHOR:SOMOC-WSPV0-S0-SUPERSEDES\]

1. 本文件**工程性取代**：  
* `DOCLOC:/mnt/data/Spartoi-OMOC_SubP1-LITE+MVP Spine_Walking Skeleton Pack v0_v2.0.0-r1(B版).md`（Legacy-B）於「Walking Skeleton Pack v0」職責範圍內之內容。  
  evidence\_ptr：DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1(B版).md\#\[ANCHOR:SPINE-V0-DOC-META\]  
2. 本文件**不**取代（Route-Out）：任何施工/操作/命令/點擊路徑，一律由 Dev/Ops RUNBOOK \+ WI 承接。  
   evidence\_ptr：DOCLOC:/mnt/data/OMOC\_藍圖\_v4.0.1-r1.md\#\[ANCHOR:OMOC-BP-0500\]  
3. Legacy v1.2.0（若存在）之保留映射：目前來源檔 **MISSING**，以 `TT-DEP-LEGACY-01` Fail-Closed 管理（TEMP\_CLOSED→TEST\_TRACK）。  
   evidence\_ptr：DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1\_審查報告.md\#L237-L257

---

## **Authority Stack & Conflict Rules**

\[ANCHOR:SOMOC-WSPV0-S2-AUTH\]

### **Authority Stack（高 → 低；衝突以高層覆蓋低層）**

\[ANCHOR:SOMOC-WSPV0-S2-AUTH-STACK\]

1. OMOC Blueprint（立法文本）  
* `DOCLOC:/mnt/data/OMOC_藍圖_v4.0.1-r1.md`  
2. SubP1-LITE+MVP 藍圖（子域立法）  
* `DOCLOC:/mnt/data/Spartoi-OMOC_SubP1-LITE+MVP_藍圖_v1.3.0-r2.md`  
3. 總控控制平面（裁決/狀態機/證據契約）  
* `DOCLOC:/mnt/data/Spartoi-OMOC_SubP1-LITE+MVP_總控控制平面_v2.1.0-r2.md`  
4. Dev/Ops RUNBOOK \+ WI（施工如何做；本文件只接接口契約）  
* Ops：`DOCLOC:/mnt/data/Spartoi-OMOC_SubP1-LITE+MVP_Ops RUNBOOK + WI_v2.1.0-r2.md`  
* Dev（SubP1 新版缺件；暫以 legacy \+ 全域 Dev RBWI 參照）：  
  * `DOCLOC:/mnt/data/Spartoi｜SubP1-LITE+MVP 開發 RUNBOOK & WI_v1.4.0.md`  
  * `DOCLOC:/mnt/data/Spartoi-OMOC_dev RB + WI_v8.1.1-dev-r2.md`  
5. Plans / Project DB（僅對齊/映射/依賴裁決；不得越權寫 HOW）  
* Pipeline-A/B/C、Pipeline-A+B DB 等  
6. Web（SUPPORT-only；不得升格成 MUST；僅能導出 TT）

evidence\_ptr：DOCLOC:/mnt/data/OMOC\_藍圖\_v4.0.1-r1.md\#\[ANCHOR:OMOC-BP-0100\]

### **Conflict Rules（One-rule-one-place）**

\[ANCHOR:SOMOC-WSPV0-S2-CONFLICT-RULES\]

| rule\_id | rule | enforcement | evidence\_ptr |
| ----- | ----- | ----- | ----- |
| WSP-R-01 | 任何 MUST/定義/門檻/規則句必須具備 `evidence_ptr`（DOCLOC \+ Anchor 或 Lx-Ly）；找不到＝UNVERIFIED→TT | Fail-Closed | DOCLOC:/mnt/data/OMOC\_藍圖\_v4.0.1-r1.md\#\[ANCHOR:OMOC-BP-0500\] |
| WSP-R-02 | 缺依賴/缺證據/缺定位/衝突未裁決 ⇒ FAIL\_CLOSED 或 TEMP\_CLOSED→TEST\_TRACK（必帶撤銷條件+驗證法） | Fail-Closed | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_總控控制平面\_v2.1.0-r2.md\#\[ANCHOR:SOMOC-CTRL-S8-TT-STATE-MACHINE\] |
| WSP-R-03 | Out-of-scope（施工步驟/命令/點擊/平台細節）一律 Route-Out → Dev/Ops RUNBOOK \+ WI（本文件只保留接口契約+驗收產物） | Scope Lock | DOCLOC:/mnt/data/OMOC\_藍圖\_v4.0.1-r1.md\#\[ANCHOR:OMOC-BP-1100\] |
| WSP-R-04 | 外部網頁永遠 SUPPORT-only；若影響規則，只能生成 TT（TEMP\_CLOSED→TEST\_TRACK） | Supply-chain guard | DOCLOC:/mnt/data/Spartoi-OMOC\_LBP-C(ADR) v8.1.1-r2.md\#\[ANCHOR:LBPC-ADR-V811R2-0-2-ADR\_POLICY\] |

---

## **AI Reader Guide（強制檢索路徑 / 反幻覺規則）**

\[ANCHOR:SOMOC-WSPV0-S0-AI-GUIDE\]

1. **先跑 Preflight**（§0）：確認 Doc Inventory / Locator Proof / sha256；任何缺件先看 TT Register。  
2. **只信 Authority Stack**（§2）：遇到規則衝突，按層級裁決；本文件不得以 Web 逆改 SSOT。  
3. **檢索順序（推薦）**：  
   * Quick Index → 對應章節錨點 →（必要時）沿 evidence\_ptr 回源（SSOT）。  
4. **反幻覺硬規則**：  
   * 看到 MUST/門檻/定義卻沒有 evidence\_ptr：直接判 UNVERIFIED→TT。  
   * 看到 HOW（命令/點擊/配置細節）：判越權 → Route-Out Register。  
     evidence\_ptr：WSP-R-01/WSP-R-03

---

## **TOC（內部錨點；禁止外部對話連結）**

\[ANCHOR:SOMOC-WSPV0-S0-TOC\]

* §0 Preflight（Doc Inventory / Locator Proof / Scope-Lock 檢查） \[ANCHOR:SOMOC-WSPV0-S0-PREFLIGHT\]  
* §1 Charter（定位/目的/適用人群/非目標） \[ANCHOR:SOMOC-WSPV0-S1-CHARTER\]  
* §2 Authority Stack \+ Conflict Rules \[ANCHOR:SOMOC-WSPV0-S2-AUTH\]  
* §3 Scope Lock（In/Out；Route-Out Map） \[ANCHOR:SOMOC-WSPV0-S3-SCOPE\]  
* §4 Walking Skeleton Definition（可驗收的最小閉環） \[ANCHOR:SOMOC-WSPV0-S4-DEF\]  
* §5 Deliverables & Directory Contract（交付物/檔名/結構/最小集合） \[ANCHOR:SOMOC-WSPV0-S5-DELIVERABLES\]  
* §6 End-to-End Minimal Flow（最小端到端對齊） \[ANCHOR:SOMOC-WSPV0-S6-E2E\]  
* §7 Gate & Evidence Contract（Evidence Triplet / Gate 字典 / 判定字典） \[ANCHOR:SOMOC-WSPV0-S7-GATE-EVIDENCE\]  
* §8 Traceability & Registries（Anchor/Artifact/Route-Out/CR\&TT） \[ANCHOR:SOMOC-WSPV0-S8-TRACE\]  
* §9 Risk & Anti-Patterns（注入/供應鏈/宣告式完成等） \[ANCHOR:SOMOC-WSPV0-S9-RISK\]  
* §10 Appendices（Issue Closure / Coverage / Anti-Regression / CR\&TT / Web Evidence / sha256 / Self-Audit） \[ANCHOR:SOMOC-WSPV0-S10-APPX\]

---

## **Quick Index（關鍵詞 → 錨點）**

\[ANCHOR:SOMOC-WSPV0-S0-QUICK-INDEX\]

| keyword | anchor |
| ----- | ----- |
| Preflight / Doc Inventory / Locator Proof | SOMOC-WSPV0-S0-PREFLIGHT |
| Scope Lock / Route-Out | SOMOC-WSPV0-S3-SCOPE |
| Walking Skeleton / 最小閉環 | SOMOC-WSPV0-S4-DEF |
| Deliverables / Directory Contract | SOMOC-WSPV0-S5-DELIVERABLES |
| E2E Minimal Flow / Pipeline-A/B/C | SOMOC-WSPV0-S6-E2E |
| 15 Subsystems / 15CA | SOMOC-WSPV0-S6-SUBSYSTEM-MATRIX |
| Gate / Evidence Triplet / Verdict | SOMOC-WSPV0-S7-GATE-EVIDENCE |
| TT / TEST\_TRACK / TEMP\_CLOSED | SOMOC-WSPV0-APPX-D-CRTT |
| Issue Closure | SOMOC-WSPV0-APPX-A-ISSUE-CLOSURE |
| Coverage Maps | SOMOC-WSPV0-APPX-B-COVERAGE |
| Anti-Regression | SOMOC-WSPV0-APPX-C-ANTI-REGRESSION |

---

# **§0 Preflight**

\[ANCHOR:SOMOC-WSPV0-S0-PREFLIGHT\]

## **§0.1 Doc Inventory（Found/Missing \+ expected\_role \+ authority tier）**

\[ANCHOR:SOMOC-WSPV0-S0-INV\]

規則：Inventory 必須反映「實際可定位檔案」；宣告存在但找不到檔＝UNVERIFIED→TT。  
evidence\_ptr：DOCLOC:/mnt/data/Spartoi-OMOC\_MIP\_v2.2.0.txt\#\[ANCHOR:MIP-V220-0-2-PREFLIGHT\]

| doc | status | authority\_tier | expected\_role | sha256 | bytes |
| ----- | ----- | ----- | ----- | ----- | ----- |
| Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1\_審查報告.md | FOUND | NORMATIVE (input) | Audit report for v2.0.0-r1 | 102f0c1daa5f07fd016ea35f3a3566f1aea2dd470b85f124bcde64c1e2a2f498 | 34608 |
| Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1(B版).md | FOUND | NORMATIVE (legacy) | Legacy baseline (B) | b96efae88a1c6dacba7d3aedbe4ac188b5ff35749a584d7e2035f55d4c0b076a | 39775 |
| Spartoi｜MVP Spine \_ Walking Skeleton Pack v0\_v1.2.0.md | MISSING | NORMATIVE (legacy) | Legacy baseline (v1.2.0) | — | — |
| Spartoi-OMOC\_SubP1-LITE+MVP\_藍圖\_v1.3.0-r2.md | FOUND | SSOT | SubP1 Blueprint | 1a508d84180385eaa7ccdcab3b346279a06fd1741a3754d7b5f43632c155055b | 38844 |
| Spartoi-OMOC\_SubP1-LITE+MVP\_總控控制平面\_v2.1.0-r2.md | FOUND | SSOT | Control Plane (Spine) | 5c5412ff22bd585968ed66a96f94f0a9413a4495cb514e5a6b942d0b78efd7dd | 35353 |
| Spartoi-OMOC\_SubP1-LITE+MVP\_Ops RUNBOOK \+ WI\_v2.1.0-r2.md | FOUND | SSOT | SubP1 Ops RUNBOOK+WI | 444684ef723871635f96be72b90cf9da512277c28aa46aa99a849ce5d9206919 | 45260 |
| Spartoi-OMOC\_SubP1-LITE+MVP\_Dev RUNBOOK \+ WI\_ v2.2.0-r1.md | MISSING | SSOT | SubP1 Dev RUNBOOK+WI | — | — |
| Spartoi｜SubP1-LITE+MVP 開發 RUNBOOK & WI\_v1.4.0.md | FOUND | SSOT (legacy) | SubP1 Dev RUNBOOK+WI (legacy) | 69211ef1f7a66b04f0f01ac608ad7d456fccf4832d2cd7a6790ba80c26d3c825 | 130242 |
| Spartoi｜SubP1-LITE+MVP\_藍圖v1.2.2.md | FOUND | SSOT (legacy) | SubP1 Blueprint (legacy) | 87589084dba16c6c68bf6a40ad84ec606c3a8c7d9d5521991508b34b2042dc0d | 44969 |
| OMOC\_藍圖\_v4.0.1-r1.md | FOUND | SSOT | OMOC Blueprint | 13be182770f15daa9704d3188db848478fef2b26b7f84a11091cc3291debc12f | 12721 |
| Spartoi-OMOC\_MIP\_v2.2.0.txt | FOUND | SSOT | MIP | a0dc82a3e5290a81c4f9db3d577f6c95f9c63d271e56eb08c52115f690437424 | 31208 |
| Spartoi-OMOC\_SRS\_v8.1.0.md | FOUND | SSOT | SRS | 33e83304f1c23a191e970f979e4ed97f7cc8c322b1651c12029fb03dc89aeec9 | 153734 |
| Spartoi-OMOC\_ARCH\_v8.1.0.md | FOUND | SSOT | ARCH | 2137dbf5f5f98ca76d080a85df2587d4b7309fbb4552a79229a8d1dfac3f47bb | 233104 |
| Spartoi-OMOC\_LBP-A(SIR) v8.1.1-r1.md | FOUND | SSOT | LBP-A (SIR) | 834c65fadd64a1865deae6959bb6a36866dc8cc032bdb333c0223f25a0f79a39 | 43990 |
| Spartoi-OMOC\_LBP-B(ICD)v8.1.1-r2.md | FOUND | SSOT | LBP-B (ICD) | 90430495cd54e720e98d233ff7fa0d5666387b35859f4e21a6c0fa29bb66da1a | 78573 |
| Spartoi-OMOC\_LBP-C(ADR) v8.1.1-r2.md | FOUND | SSOT | LBP-C (ADR) | 98e967effd478419645ea81790bbf9ed17f4b4e63efbd6e8c4935ad4ba4b4ffa | 118622 |
| Spartoi-OMOC\_LBP-D(C4) v8.1.1-r2.md | FOUND | SSOT | LBP-D (C4) | b7a60f3f89b69c6990c456e12a4a4a8b4a204f50b0db9d62066c764c6aa34d12 | 62571 |
| Spartoi-OMOC\_LBP-E(Fitness) v8.1.1-r2.md | FOUND | SSOT | LBP-E (Fitness) | 57937efdb8714563310e4d1306dfc8968801186843fe6241451a167a613c29d2 | 44420 |
| Pipeline-A\_組合方案 v2.md | FOUND | Project DB (ref) | Pipeline-A plan | 4a1178c072594339f772a5bc02c73d1555317e8b3d1e29e9f00054dcda0d9cdd | 12930 |
| Pipeline-B 組合方案 v2.md | FOUND | Project DB (ref) | Pipeline-B plan | 39bfb5f168f2e1dad2a27fcfc04d0ff7afdbbfbb4aaf3f73d1bb3e3b2f7c2e87 | 10455 |
| Pipeline-C組合方案.md | FOUND | Project DB (ref) | Pipeline-C plan | 0e49009b1571f1cd28c421cbbd66977d2b209e1b37198c0d5583fb076f27e4d5 | 12824 |
| Pipeline-A+B 整合資料庫方案.md | FOUND | Project DB (ref) | Pipeline-A+B DB integration plan | e9f0a86cb0b129b4d7c793fc7fefc4f85cc00ae1cf6f507f2c84fb0f7d0f9f2d | 21289 |
| 五子系統組合方案.md | MISSING | Project DB (ref) | 5 subsystems combo plan | — | — |
| Spartoi-OMOC(15 CA)重構升級藍圖v0.2.0-r1.md | MISSING | Project DB (ref) | 15CA refactor blueprint | — | — |
| Spartoi-OMOC\_子系統重構藍圖.md | MISSING | Project DB (ref) | Subsystem refactor blueprint | — | — |
| 子系統「顯示名\_宏模組名」改名方案.md | MISSING | Project DB (ref) | Subsystem rename plan | — | — |
| Spartoi-OMOC Delivery Plan.md | MISSING | Project DB (ref) | Delivery Plan | — | — |
| Spartoi-OMOC Blueprint v2.2.0-r1.md | MISSING | Project DB (ref) | Spartoi-OMOC Blueprint v2.2.0-r1 | — | — |
| OMOC-MVU & Full OMOC Delivery Plan.md | MISSING | Project DB (ref) | OMOC-MVU & Full OMOC Delivery Plan | — | — |

---

## **§0.2 Locator Proof（每份關鍵文檔至少 2 個定位點）**

\[ANCHOR:SOMOC-WSPV0-S0-LOCATOR-PROOF\]

| doc | locator\_1 | locator\_2 | notes/linked\_tt |
| ----- | ----- | ----- | ----- |
| Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1\_審查報告.md | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1\_審查報告.md\#L237-L257 | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1\_審查報告.md\#L268-L288 | no anchors in source |
| Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1(B版).md | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1(B版).md\#\[ANCHOR:SPINE-V0-COVER-CARD\] | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1(B版).md\#\[ANCHOR:SPINE-V0-TT-REGISTER\] |  |
| Spartoi｜MVP Spine \_ Walking Skeleton Pack v0\_v1.2.0.md | DOCLOC:/mnt/data/Spartoi｜MVP Spine \_ Walking Skeleton Pack v0\_v1.2.0.md\#(MISSING) | DOCLOC:/mnt/data/Spartoi｜MVP Spine \_ Walking Skeleton Pack v0\_v1.2.0.md\#(MISSING) | TT-DEP-LEGACY-01 |
| Spartoi-OMOC\_SubP1-LITE+MVP\_藍圖\_v1.3.0-r2.md | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_藍圖\_v1.3.0-r2.md\#\[ANCHOR:SOMOC-SUBP1MVP-00-COVER\] | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_藍圖\_v1.3.0-r2.md\#\[ANCHOR:SOMOC-SUBP1MVP-11-EVIDENCE\] |  |
| Spartoi-OMOC\_SubP1-LITE+MVP\_總控控制平面\_v2.1.0-r2.md | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_總控控制平面\_v2.1.0-r2.md\#\[ANCHOR:SOMOC-CTRL-S0-COVER\] | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_總控控制平面\_v2.1.0-r2.md\#\[ANCHOR:SOMOC-CTRL-S7-EVIDENCE-TRIPLET\] |  |
| Spartoi-OMOC\_SubP1-LITE+MVP\_Ops RUNBOOK \+ WI\_v2.1.0-r2.md | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Ops RUNBOOK \+ WI\_v2.1.0-r2.md\#\[ANCHOR:SOMOC-SUBP1MVP-OPS-S0-COVER\] | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Ops RUNBOOK \+ WI\_v2.1.0-r2.md\#\[ANCHOR:OPS-RBWI-08-EVIDENCE-CONTRACT\] |  |
| Spartoi-OMOC\_SubP1-LITE+MVP\_Dev RUNBOOK \+ WI\_ v2.2.0-r1.md | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Dev RUNBOOK \+ WI\_ v2.2.0-r1.md\#(MISSING) | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Dev RUNBOOK \+ WI\_ v2.2.0-r1.md\#(MISSING) | TT-DEP-DEV-RBWI-01 |
| Spartoi｜SubP1-LITE+MVP 開發 RUNBOOK & WI\_v1.4.0.md | DOCLOC:/mnt/data/Spartoi｜SubP1-LITE+MVP 開發 RUNBOOK & WI\_v1.4.0.md\#\[ANCHOR:SPLMVP-RB-V140-COVER\] | DOCLOC:/mnt/data/Spartoi｜SubP1-LITE+MVP 開發 RUNBOOK & WI\_v1.4.0.md\#\[ANCHOR:SPLMVP-S7-GATE\] |  |
| OMOC\_藍圖\_v4.0.1-r1.md | DOCLOC:/mnt/data/OMOC\_藍圖\_v4.0.1-r1.md\#\[ANCHOR:OMOC-BP-0100\] | DOCLOC:/mnt/data/OMOC\_藍圖\_v4.0.1-r1.md\#\[ANCHOR:OMOC-BP-1100\] |  |
| Spartoi-OMOC\_MIP\_v2.2.0.txt | DOCLOC:/mnt/data/Spartoi-OMOC\_MIP\_v2.2.0.txt\#\[ANCHOR:MIP-V220-0-2-PREFLIGHT\] | DOCLOC:/mnt/data/Spartoi-OMOC\_MIP\_v2.2.0.txt\#\[ANCHOR:MIP-V220-0-4-SCOPE\] |  |
| Spartoi-OMOC\_SRS\_v8.1.0.md | DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-REQ-EVID-TRIPLET\] | DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-GATE-DICTIONARY\] |  |
| Spartoi-OMOC\_ARCH\_v8.1.0.md | DOCLOC:/mnt/data/Spartoi-OMOC\_ARCH\_v8.1.0.md\#\[ANCHOR:ARCH-V810-9-2-1-SUBSYSTEMS\] | DOCLOC:/mnt/data/Spartoi-OMOC\_ARCH\_v8.1.0.md\#\[ANCHOR:ARCH-V810-9-2-2-PIPELINES\] |  |
| Spartoi-OMOC\_dev RB \+ WI\_v8.1.1-dev-r2.md | DOCLOC:/mnt/data/Spartoi-OMOC\_dev RB \+ WI\_v8.1.1-dev-r2.md\#\[ANCHOR:DEV-RBWI-S0-PREFLIGHT\] | DOCLOC:/mnt/data/Spartoi-OMOC\_dev RB \+ WI\_v8.1.1-dev-r2.md\#\[ANCHOR:DEV-RBWI-APPX-D-EVIDENCE-CONTRACT\] |  |
| Pipeline-A\_組合方案 v2.md | DOCLOC:/mnt/data/Pipeline-A\_組合方案 v2.md\#L1-L9 | DOCLOC:/mnt/data/Pipeline-A\_組合方案 v2.md\#L10-L18 | no anchors in source |
| Pipeline-B 組合方案 v2.md | DOCLOC:/mnt/data/Pipeline-B 組合方案 v2.md\#L1-L9 | DOCLOC:/mnt/data/Pipeline-B 組合方案 v2.md\#L12-L20 | no anchors in source |
| Pipeline-C組合方案.md | DOCLOC:/mnt/data/Pipeline-C組合方案.md\#L1-L9 | DOCLOC:/mnt/data/Pipeline-C組合方案.md\#L11-L19 | no anchors in source |
| Pipeline-A+B 整合資料庫方案.md | DOCLOC:/mnt/data/Pipeline-A+B 整合資料庫方案.md\#L1-L9 | DOCLOC:/mnt/data/Pipeline-A+B 整合資料庫方案.md\#L1-L9 | no anchors in source |

---

## **§0.3 Scope-Lock Preflight Check（是否越權）**

\[ANCHOR:SOMOC-WSPV0-S0-PREFLIGHT-GATES\]

| check\_id | check | fail\_condition | action |
| ----- | ----- | ----- | ----- |
| PF-SCOPE-01 | 本文件是否包含命令/點擊/平台操作細節 | 出現 HOW 細節且無 Route-Out | FAIL\_CLOSED；移至 Route-Out Register |
| PF-NORM-01 | 是否有 MUST/門檻/定義缺 evidence\_ptr | 任一規則句缺定位 | UNVERIFIED→TT；不得硬寫 |
| PF-INV-01 | Doc Inventory 是否與可讀檔一致 | 宣告 FOUND 但實際 MISSING | UNVERIFIED→TT；修正 Inventory |

evidence\_ptr：DOCLOC:/mnt/data/OMOC\_藍圖\_v4.0.1-r1.md\#\[ANCHOR:OMOC-BP-0500\]

---

# **§1 Charter**

\[ANCHOR:SOMOC-WSPV0-S1-CHARTER\]

## **§1.1 目的（Purpose）**

\[ANCHOR:SOMOC-WSPV0-S1-PURPOSE\]

* 定義「Walking Skeleton」在 SubP1-LITE+MVP 的**可驗收最小閉環**：包含最小交付物集合、證據契約、Gate 對齊點、TT/撤銷條件。  
  evidence\_ptr：DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_藍圖\_v1.3.0-r2.md\#\[ANCHOR:SOMOC-SUBP1MVP-07-1-SPINE\]

## **§1.2 適用人群（Audience）**

\[ANCHOR:SOMOC-WSPV0-S1-AUDIENCE\]

* Doc 稽核/裁決官、Integration owner、測試/驗收包組裝者、RAG/檢索工程設計者（不含施工操作者）。  
  evidence\_ptr：WSP-R-03

## **§1.3 非目標（Non-goals）**

\[ANCHOR:SOMOC-WSPV0-S1-NONGOALS\]

* 不提供：環境安裝、CI 設定、平台點擊、腳本命令、具體施工教程。  
  evidence\_ptr：DOCLOC:/mnt/data/OMOC\_藍圖\_v4.0.1-r1.md\#\[ANCHOR:OMOC-BP-1200\]

---

# **§3 Scope Lock（In/Out；Route-Out Map）**

\[ANCHOR:SOMOC-WSPV0-S3-SCOPE\]

## **§3.1 In-Scope（允許）**

\[ANCHOR:SOMOC-WSPV0-S3-IN\]

* 定位/目的/邊界裁決；最小閉環定義；交付物與目錄契約；Gate 與 Evidence Triplet 契約；映射/保留/反幻覺檢索設計；TT/撤銷條件治理。  
  evidence\_ptr：DOCLOC:/mnt/data/OMOC\_藍圖\_v4.0.1-r1.md\#\[ANCHOR:OMOC-BP-0500\]

## **§3.2 Out-of-Scope（禁止；一律 Route-Out）**

\[ANCHOR:SOMOC-WSPV0-S3-OUT\]

* 任何施工步驟/命令/點擊路徑/環境細節/平台操作細節。  
  evidence\_ptr：DOCLOC:/mnt/data/OMOC\_藍圖\_v4.0.1-r1.md\#\[ANCHOR:OMOC-BP-1100\]

## **§3.3 Route-Out Map（本文件 → 承接文件）**

\[ANCHOR:SOMOC-WSPV0-S3-ROUTE-OUT-MAP\]

| topic | route\_out\_to | acceptance\_interface\_retained\_here |
| ----- | ----- | ----- |
| Pipeline 施工/腳本/CI | Dev RBWI（全域）`DOCLOC:/mnt/data/Spartoi-OMOC_dev RB + WI_v8.1.1-dev-r2.md#[ANCHOR:DEV-RBWI-S4-STAGE-RUNBOOK]` | Gate \+ Evidence Triplet 契約（§7） |
| SubP1 Dev 操作（legacy） | `DOCLOC:/mnt/data/Spartoi｜SubP1-LITE+MVP 開發 RUNBOOK & WI_v1.4.0.md#[ANCHOR:SPLMVP-GATERUNNER]` | Gate 字典（§7） |
| Ops 運維/回放/故障處置 | `DOCLOC:/mnt/data/Spartoi-OMOC_SubP1-LITE+MVP_Ops RUNBOOK + WI_v2.1.0-r2.md#[ANCHOR:SOMOC-SUBP1MVP-OPS-S10-STAGE-RUNBOOK]` | 判定字典（§7.4） |
| 安全/注入/供應鏈細則 | Control Plane `DOCLOC:/mnt/data/Spartoi-OMOC_SubP1-LITE+MVP_總控控制平面_v2.1.0-r2.md#[ANCHOR:SOMOC-CTRL-S10-SECURITY]` | 風險/反模式清單（§9） |

---

# **§4 Walking Skeleton Definition（什麼叫“可驗收的最小閉環”）**

\[ANCHOR:SOMOC-WSPV0-S4-DEF\]

## **§4.1 定義（Definition）**

\[ANCHOR:SOMOC-WSPV0-S4-DEFINITION\]

「Walking Skeleton（WSP-v0）」在本文件中，指**至少一次**能端到端產出以下三類物件，並能以 Gate+Evidence Triplet 形成可回放的驗收包：

1. **最小輸入基底**（可追溯、可回退）  
* 至少含：來源/版次/lineage 指針（由 Pipeline-A 與資料層承接）。  
  evidence\_ptr：DOCLOC:/mnt/data/Pipeline-A\_組合方案 v2.md\#L10-L18  
2. **最小策略產出**（策略卡 \+ 回測證據）  
* 由 Pipeline-B 產出 StrategyPack（策略卡/回測報告/工件），並綁 Gate。  
  evidence\_ptr：DOCLOC:/mnt/data/Pipeline-B 組合方案 v2.md\#L12-L20  
3. **最小訊號到輸出**（穩定訊息契約 \+ 可留存 artifacts）  
* 由 Pipeline-C 封裝 SignalCard/SelectResult/Translate outputs 等穩定契約與 artifacts。  
  evidence\_ptr：DOCLOC:/mnt/data/Pipeline-C組合方案.md\#L11-L19

「可驗收」的最低門檻：Gate Verdict 可裁決（PASS/FAIL/TEMP\_CLOSED→TEST\_TRACK），且 Evidence Triplet 可機械追溯。  
evidence\_ptr：DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-REQ-EVID-TRIPLET\]

## **§4.2 Tutorial（最短驗收路徑；不是施工）**

\[ANCHOR:SOMOC-WSPV0-S4-TUTORIAL\]

你要驗收的是「閉環存在」而不是「人很努力」。以下只描述**驗收包應長什麼樣**。

**最短驗收包（Acceptance Bundle）應包含**：

* `inputs_manifest`（來源與版本指針）  
* `gate_reports`（至少覆蓋核心 gates）  
* `evidence_triplets`（每個 gate 一組）  
* `tt_register`（若任何 drift/缺件）  
  evidence\_ptr：DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_總控控制平面\_v2.1.0-r2.md\#\[ANCHOR:SOMOC-CTRL-S7-EVIDENCE-TRIPLET\]

---

# **§5 Deliverables & Directory Contract（交付物、檔名、結構、最小集合）**

\[ANCHOR:SOMOC-WSPV0-S5-DELIVERABLES\]

## **§5.1 本 Pack 的「最小交付物集合」**

\[ANCHOR:SOMOC-WSPV0-S5-MIN-SET\]

| deliverable | minimum | produced\_by | evidence\_ptr |
| ----- | ----- | ----- | ----- |
| Inputs Manifest | 1份（含來源/版次/lineage） | Pipeline-A / 資料層 | DOCLOC:/mnt/data/Pipeline-A\_組合方案 v2.md\#L10-L18 |
| StrategyPack | 1份（method\_card \+ backtest\_report \+ artifacts） | Pipeline-B | DOCLOC:/mnt/data/Pipeline-B 組合方案 v2.md\#L12-L20 |
| Stable Message Outputs | 至少 SignalCard/SelectResult/Translate outputs 任一組 | Pipeline-C | DOCLOC:/mnt/data/Pipeline-C組合方案.md\#L11-L19 |
| Gate Evidence Triplets | 至少覆蓋核心 gates（§7.3） | Gate Runner（Route-Out） | DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-REQ-EVID-TRIPLET\] |
| TT Register | 若有缺件/漂移/外部依賴，必有 | Control Plane（狀態機） | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_總控控制平面\_v2.1.0-r2.md\#\[ANCHOR:SOMOC-CTRL-S8-TT-STATE-MACHINE\] |

## **§5.2 Directory Contract（驗收包的穩定路徑）**

\[ANCHOR:SOMOC-WSPV0-S5-DIR-CONTRACT\]

下列為**接口契約**（不等於你該怎麼產生它）。產生方式 Route-Out。  
evidence\_ptr：WSP-R-03

acceptance\_bundle/\<run\_id\>/  
  manifest/  
    inputs\_manifest.json  
  gates/  
    \<gate\_id\>/  
      verdict.json  
      evidence\_index.json  
      bundle.tar\[.\*\]        \# gate-specific artifacts bundle  
  registries/  
    tt\_register.csv  
    cr\_ledger.csv          \# CR\_OPEN=0 仍可有 closed ledger  
  docs/  
    this\_pack\_snapshot.md  \# 可選：本文件快照/版本指針

evidence\_ptr：DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_總控控制平面\_v2.1.0-r2.md\#\[ANCHOR:SOMOC-CTRL-S7-EVIDENCE-TRIPLET\]

---

# **§6 End-to-End Minimal Flow（與 Pipeline-A/B/C、15CA 的最小端到端對齊點）**

\[ANCHOR:SOMOC-WSPV0-S6-E2E\]

## **§6.1 Minimal Flow（概念閉環）**

\[ANCHOR:SOMOC-WSPV0-S6-MIN-FLOW\]

**E2E 最小閉環（概念）**：  
Pipeline-A（素材/原語/蒸餾） → Pipeline-B（方法→回測→表現） → Pipeline-C（訊號封裝→選擇→翻譯輸出） → Gates（驗收） → TT（漂移治理）  
evidence\_ptr：DOCLOC:/mnt/data/Spartoi-OMOC\_ARCH\_v8.1.0.md\#\[ANCHOR:ARCH-V810-9-2-2-PIPELINES\]

## **§6.2 15 Subsystems Matrix（只做邊界/映射；不寫 HOW）**

\[ANCHOR:SOMOC-WSPV0-S6-SUBSYSTEM-MATRIX\]

來源為 ARCH 的 Subsystem Registry；本節只保留「WSP-v0 需要接的接口/證據」。  
evidence\_ptr：DOCLOC:/mnt/data/Spartoi-OMOC\_ARCH\_v8.1.0.md\#\[ANCHOR:ARCH-V810-9-2-1-SUBSYSTEMS\]

| subsystem\_id | responsibility (boundary-level) | WSP-v0 touchpoint | route\_out\_owner |
| ----- | ----- | ----- | ----- |
| CA-WRC | writing-resource /教材庫 | Inputs Manifest 的來源指針 | Pipeline-A |
| CA-CORPUS | 原語庫 | Inputs Manifest \+ lineage | Pipeline-A |
| CA-DISTILL | 蒸餾/SpecPack | SpecPack 指針 | Pipeline-A |
| CA-DSL | 形式語法/規格 | SpecPack/Schema 指針 | Pipeline-A |
| CA-MAP | 映射/對齊 | Coverage/Trace（§8/附錄） | Doc |
| CA-METHOD | 方法生成 | StrategyPack 方法卡 | Pipeline-B |
| CA-BACKTEST | 回測 | backtest\_report \+ artifacts | Pipeline-B |
| CA-TA | 技術分析 | SignalCard/中間 artifacts | Pipeline-C |
| CA-SELECT | 選擇/排名 | SelectResult | Pipeline-C |
| CA-TRANSLATE | 翻譯輸出 | Translate outputs | Pipeline-C |
| CA-WATCH | 監控/追蹤 | Evidence/Gate 產物的觀測指標（僅接口） | Ops |
| CA-EXECUTE | 執行 | 不在 WSP-v0 施工；只保留接口 | Ops |
| CA-PERFORM | 表現評估 | perform report（若有） | Pipeline-B |
| CA-COLLAB | 協作/人機回圈 | HITL log（若有） | Ops/Dev |
| CA-UI | UI/展示 | 不在 WSP-v0 施工；只保留接口 | UI |

---

# **§7 Gate & Evidence Contract**

\[ANCHOR:SOMOC-WSPV0-S7-GATE-EVIDENCE\]

## **§7.1 Evidence Triplet（Reference）**

\[ANCHOR:SOMOC-WSPV0-S7-EVIDENCE-TRIPLET\]

Evidence Triplet 最小構成（每 gate 一組）：

* `verdict.json`（含 gate\_id、verdict、reason、evidence\_ptrs、run\_id、timestamp 等）  
* `evidence_index.json`（列出 bundle 內工件清單與校驗資訊）  
* `bundle.tar[.*]`（gate-specific artifacts）  
  evidence\_ptr：DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_總控控制平面\_v2.1.0-r2.md\#\[ANCHOR:SOMOC-CTRL-S7-EVIDENCE-TRIPLET\]

同時需符合 SRS 對 Evidence Triplet 的要求與可裁決性。  
evidence\_ptr：DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-REQ-EVID-TRIPLET\]

## **§7.2 Gate Dictionary（Reference）**

\[ANCHOR:SOMOC-WSPV0-S7-GATE-DICT\]

Gate 清單與模板的施工細節 Route-Out；本節只保留「WSP-v0 最小覆蓋」的 Gate 名稱與證據要求。  
evidence\_ptr：DOCLOC:/mnt/data/Spartoi｜SubP1-LITE+MVP 開發 RUNBOOK & WI\_v1.4.0.md\#\[ANCHOR:SPLMVP-S7-GATE\]

核心 gates（WSP-v0 最小覆蓋建議集；缺件則 TT）：

* G-RUN、G-SCHEMA、G-SRC、G-BT-H、G-SEG-L、G-SEC-PASS、G-EVID-PASS、G-CONF-L、G-HITL-LOG、G-XQ-PARITY  
  evidence\_ptr：DOCLOC:/mnt/data/Spartoi｜SubP1-LITE+MVP 開發 RUNBOOK & WI\_v1.4.0.md\#\[ANCHOR:SPLMVP-S7-GATE\]

## **§7.3 Gate → Evidence Contract（Coverage Map C）**

\[ANCHOR:SOMOC-WSPV0-S7-GATE-EVIDENCE-MAP\]

| gate\_id | intent (boundary) | minimum evidence (triplet) | acceptance\_bundle location |
| ----- | ----- | ----- | ----- |
| G-RUN | 流程可重跑/可回放 | verdict \+ index \+ bundle（run snapshot） | `gates/G-RUN/*` |
| G-SCHEMA | 輸出/契約 schema 合規 | verdict \+ schema report | `gates/G-SCHEMA/*` |
| G-SRC | 來源/引用可追溯 | verdict \+ source manifest | `gates/G-SRC/*` |
| G-BT-H | 回測基本健康度 | verdict \+ backtest artifacts | `gates/G-BT-H/*` |
| G-SEG-L | 分段/切分一致性 | verdict \+ segment report | `gates/G-SEG-L/*` |
| G-SEC-PASS | 安全檢查通過 | verdict \+ security findings | `gates/G-SEC-PASS/*` |
| G-EVID-PASS | Evidence Triplet 自身合規 | verdict \+ index validation | `gates/G-EVID-PASS/*` |
| G-CONF-L | 配置/版本鎖定 | verdict \+ config snapshot | `gates/G-CONF-L/*` |
| G-HITL-LOG | 人機介入可稽核 | verdict \+ HITL log | `gates/G-HITL-LOG/*` |
| G-XQ-PARITY | 外部等價性/對照 | verdict \+ parity report | `gates/G-XQ-PARITY/*` |

evidence\_ptr：DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-GATE-DICTIONARY\]

## **§7.4 判定字典（Decision Dictionary）**

\[ANCHOR:SOMOC-WSPV0-S7-DECISION-DICT\]

| verdict | meaning | required follow-up |
| ----- | ----- | ----- |
| PASS | 證據契約滿足、可回放 | 可進下一 gate |
| FAIL\_CLOSED | 阻斷級缺陷；不得前進 | 必須修補後重跑（HOW Route-Out） |
| TEMP\_CLOSED→TEST\_TRACK | 外部漂移/缺件/待驗；先封存 | 必須建 TT（含撤銷條件/驗證法/owner） |

evidence\_ptr：DOCLOC:/mnt/data/Spartoi-OMOC\_LBP-C(ADR) v8.1.1-r2.md\#\[ANCHOR:LBPC-ADR-V811R2-ADR-037\]

---

# **§8 Traceability & Registries**

\[ANCHOR:SOMOC-WSPV0-S8-TRACE\]

## **§8.1 Anchor Registry（本文件）**

\[ANCHOR:SOMOC-WSPV0-S8-ANCHOR-REG\]

| anchor\_id | section |
| ----- | ----- |
| SOMOC-WSPV0-S0-COVER | Title |
| SOMOC-WSPV0-S0-DOC-META | Cover Card / Doc Meta |
| SOMOC-WSPV0-S0-SUPERSEDES | Supersedence Clause |
| SOMOC-WSPV0-S2-AUTH | Authority Stack |
| SOMOC-WSPV0-S2-AUTH-STACK | Authority Stack detail |
| SOMOC-WSPV0-S2-CONFLICT-RULES | Conflict Rules table |
| SOMOC-WSPV0-S0-AI-GUIDE | AI Reader Guide |
| SOMOC-WSPV0-S0-TOC | TOC |
| SOMOC-WSPV0-S0-QUICK-INDEX | Quick Index |
| SOMOC-WSPV0-S0-PREFLIGHT | §0 Preflight |
| SOMOC-WSPV0-S0-INV | Doc Inventory |
| SOMOC-WSPV0-S0-LOCATOR-PROOF | Locator Proof |
| SOMOC-WSPV0-S0-PREFLIGHT-GATES | Preflight checks |
| SOMOC-WSPV0-S1-CHARTER | §1 Charter |
| SOMOC-WSPV0-S3-SCOPE | §3 Scope Lock |
| SOMOC-WSPV0-S3-ROUTE-OUT-MAP | Route-Out Map |
| SOMOC-WSPV0-S4-DEF | §4 WSP Definition |
| SOMOC-WSPV0-S4-TUTORIAL | Tutorial |
| SOMOC-WSPV0-S5-DELIVERABLES | §5 Deliverables |
| SOMOC-WSPV0-S5-DIR-CONTRACT | Directory Contract |
| SOMOC-WSPV0-S6-E2E | §6 E2E |
| SOMOC-WSPV0-S6-SUBSYSTEM-MATRIX | 15 Subsystems Matrix |
| SOMOC-WSPV0-S7-GATE-EVIDENCE | §7 Gate & Evidence |
| SOMOC-WSPV0-S7-EVIDENCE-TRIPLET | Evidence Triplet |
| SOMOC-WSPV0-S7-GATE-DICT | Gate Dictionary |
| SOMOC-WSPV0-S7-GATE-EVIDENCE-MAP | Gate→Evidence Map |
| SOMOC-WSPV0-S7-DECISION-DICT | Decision Dictionary |
| SOMOC-WSPV0-S8-TRACE | §8 Registries |
| SOMOC-WSPV0-S9-RISK | §9 Risk |
| SOMOC-WSPV0-S10-APPX | §10 Appendices |

---

## **§8.2 Route-Out Register（索引）**

\[ANCHOR:SOMOC-WSPV0-S8-ROUTE-OUT-REG\]

| route\_out\_id | topic | route\_out\_target | retained\_interface\_here |
| ----- | ----- | ----- | ----- |
| RO-DEV-01 | 施工/命令/CI/容器 | DEV-RBWI（全域）`DOCLOC:/mnt/data/Spartoi-OMOC_dev RB + WI_v8.1.1-dev-r2.md#[ANCHOR:DEV-RBWI-S4-STAGE-RUNBOOK]` | §7 Gate & Evidence |
| RO-OPS-01 | 回放/故障處置/運維 | OPS-RBWI（SubP1）`DOCLOC:/mnt/data/Spartoi-OMOC_SubP1-LITE+MVP_Ops RUNBOOK + WI_v2.1.0-r2.md#[ANCHOR:SOMOC-SUBP1MVP-OPS-S10-STAGE-RUNBOOK]` | §7 判定字典 |
| RO-CTRL-01 | TT 狀態機/裁決 | Control Plane `DOCLOC:/mnt/data/Spartoi-OMOC_SubP1-LITE+MVP_總控控制平面_v2.1.0-r2.md#[ANCHOR:SOMOC-CTRL-S8-TT-STATE-MACHINE]` | §10 附錄（TT） |
| RO-SEC-01 | 注入/供應鏈安全細則 | Control Plane `DOCLOC:/mnt/data/Spartoi-OMOC_SubP1-LITE+MVP_總控控制平面_v2.1.0-r2.md#[ANCHOR:SOMOC-CTRL-S10-SECURITY]` | §9 反模式 |

---

## **§8.3 CR & TT Governance（摘要）**

\[ANCHOR:SOMOC-WSPV0-S8-CRTT\]

* **CR\_OPEN 必須為 0**（未決事項一律轉 TT/TEST\_TRACK）。  
  evidence\_ptr：DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Ops RUNBOOK \+ WI\_v2.1.0-r2.md\#\[ANCHOR:SOMOC-SUBP1MVP-12-2-CR\_OPEN\_ZERO\]

---

# **§9 Risk & Anti-Patterns**

\[ANCHOR:SOMOC-WSPV0-S9-RISK\]

## **§9.1 Prompt-Injection / Confused-Deputy / Supply-Chain**

\[ANCHOR:SOMOC-WSPV0-S9-INJECTION\]

* **指令與資料分離**：規則以表格/契約呈現；引用材料以 evidence\_ptr 呈現。  
  evidence\_ptr：DOCLOC:/mnt/data/Spartoi-OMOC\_LBP-C(ADR) v8.1.1-r2.md\#\[ANCHOR:LBPC-ADR-V811R2-ADR-032\]  
* **外部資料不得升格**：Web 只 SUPPORT-only，最多導出 TT。  
  evidence\_ptr：WSP-R-04

## **§9.2 宣告式完成（“寫了就算有”）禁止**

\[ANCHOR:SOMOC-WSPV0-S9-DECLARATIVE-DONE\]

* 沒有 Gate evidence 就沒有完成；沒有 Locator 就沒有規則。  
  evidence\_ptr：WSP-R-01 / DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-REQ-EVID-TRIPLET\]

---

# **§10 Appendices**

\[ANCHOR:SOMOC-WSPV0-S10-APPX\]

---

## **Appendix A — Issue Closure Table（審查報告逐條結案）**

\[ANCHOR:SOMOC-WSPV0-APPX-A-ISSUE-CLOSURE\]

來源：`DOCLOC:/mnt/data/Spartoi-OMOC_SubP1-LITE+MVP Spine_Walking Skeleton Pack v0_v2.0.0-r1_審查報告.md`（DG-xxx \+ P-xxx）。  
evidence\_ptr：DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1\_審查報告.md\#L237-L288

| finding\_id | 描述摘要 | 修補動作 | 落點章節(錨點) | closure\_status |
| ----- | ----- | ----- | ----- | ----- |
| DG-001 | Legacy v1.2.0 缺件導致覆蓋不可驗 | 建 TT-DEP-LEGACY-01；Coverage/Anti-regression 以 TEMP\_CLOSED 控制 | SOMOC-WSPV0-APPX-D-CRTT | TEMP\_CLOSED→TEST\_TRACK |
| DG-002 | Dev RBWI v2.2.0-r1 缺件/引用失真 | Inventory+Locator 修正；建 TT-DEP-DEV-RBWI-01；Route-Out 指向可用 Dev RBWI | SOMOC-WSPV0-S0-INV / SOMOC-WSPV0-S8-ROUTE-OUT-REG | TEMP\_CLOSED→TEST\_TRACK |
| DG-003 | 控制平面 Inventory 與實際不一致風險 | 本文件 Preflight 以實際檔案計；建 TT-INV-PROOF-01 追蹤跨文檔一致性 | SOMOC-WSPV0-S0-PREFLIGHT | TEMP\_CLOSED→TEST\_TRACK |
| DG-004 | Route-Out anchor 漂移（OMOC-BP-1100 未用） | 全面改用 OMOC-BP-1100（穩定錨點） | SOMOC-WSPV0-S3-SCOPE | CLOSED |
| DG-005 | SRS 以行號引用 gate 字典（漂移） | 改用 SRS-V810-\* 穩定錨點 | SOMOC-WSPV0-S7-GATE-EVIDENCE | CLOSED |
| DG-006 | Inputs manifest 宣告 FOUND 但缺證據 | 改為 Doc Inventory/sha256 實際反映 | SOMOC-WSPV0-S0-INV | CLOSED |
| DG-007 | TT Register schema 欄位不完整 | 追加必備欄位與撤銷條件/驗證法 | SOMOC-WSPV0-APPX-D-CRTT | CLOSED |
| DG-008 | Web Evidence Appendix 不完整/未綁 TT | 追加 WE 格式並綁 TT；未抓網頁則標 UNFETCHED | SOMOC-WSPV0-APPX-E-WEB-EVIDENCE | TEMP\_CLOSED→TEST\_TRACK |
| P-001 | Scope-Lock/Authority 條文需硬化 | 以 Authority Stack+Rule 表固化 | SOMOC-WSPV0-S2-AUTH | CLOSED |
| P-002 | Route-Out Register 需可稽核 | 追加 RO Register \+ 承接錨點 | SOMOC-WSPV0-S8-ROUTE-OUT-REG | CLOSED |
| P-003 | Evidence Triplet/ Gate 映射需補齊 | §7 形成 Triplet+Gate→Evidence map | SOMOC-WSPV0-S7-GATE-EVIDENCE | CLOSED |
| P-004 | Inputs/Locator Proof 需機械可驗 | §0 Inventory \+ sha256 \+ 2 locators | SOMOC-WSPV0-S0-PREFLIGHT | CLOSED |
| P-005 | TT/TEST\_TRACK 清單需完整欄位 | Appendix D TT Register 完整欄位 | SOMOC-WSPV0-APPX-D-CRTT | CLOSED |
| P-006 | Legacy 映射保留要求 | 以 TEMP\_CLOSED→TEST\_TRACK 管理；待補件後關閉 | SOMOC-WSPV0-APPX-D-CRTT | TEMP\_CLOSED→TEST\_TRACK |
| P-007 | Final self-audit checklist 未填 | Appendix G 已填完（含 TT 指回） | SOMOC-WSPV0-APPX-G-SELF-AUDIT | CLOSED |

---

## **Appendix B — Coverage Maps**

\[ANCHOR:SOMOC-WSPV0-APPX-B-COVERAGE\]

### **Coverage Map A：SSOT → New**

\[ANCHOR:SOMOC-WSPV0-APPX-B-COV-A\]

| source | topic | source\_ptr | new\_anchor |
| ----- | ----- | ----- | ----- |
| OMOC Blueprint | Scope-Lock / Route-Out | DOCLOC:/mnt/data/OMOC\_藍圖\_v4.0.1-r1.md\#\[ANCHOR:OMOC-BP-1100\] | SOMOC-WSPV0-S3-SCOPE |
| OMOC Blueprint | Evidence/Contract allowed in blueprint | DOCLOC:/mnt/data/OMOC\_藍圖\_v4.0.1-r1.md\#\[ANCHOR:OMOC-BP-0500\] | SOMOC-WSPV0-S7-EVIDENCE-TRIPLET |
| SubP1 Blueprint | MVP Spine / WSP 定位 | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_藍圖\_v1.3.0-r2.md\#\[ANCHOR:SOMOC-SUBP1MVP-07-1-SPINE\] | SOMOC-WSPV0-S4-DEF |
| SubP1 Blueprint | 最小 Schema / Gate 接口 | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_藍圖\_v1.3.0-r2.md\#\[ANCHOR:SOMOC-SUBP1MVP-11-0-MIN-SCHEMA\] | SOMOC-WSPV0-S7-GATE-DICT |
| Control Plane | Evidence Triplet | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_總控控制平面\_v2.1.0-r2.md\#\[ANCHOR:SOMOC-CTRL-S7-EVIDENCE-TRIPLET\] | SOMOC-WSPV0-S7-EVIDENCE-TRIPLET |
| Control Plane | TT State Machine | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_總控控制平面\_v2.1.0-r2.md\#\[ANCHOR:SOMOC-CTRL-S8-TT-STATE-MACHINE\] | SOMOC-WSPV0-APPX-D-CRTT |
| Ops RBWI | Evidence Contract（Ops） | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Ops RUNBOOK \+ WI\_v2.1.0-r2.md\#\[ANCHOR:OPS-RBWI-08-EVIDENCE-CONTRACT\] | SOMOC-WSPV0-S7-EVIDENCE-TRIPLET |
| Dev RBWI (legacy) | Gate 索引 | DOCLOC:/mnt/data/Spartoi｜SubP1-LITE+MVP 開發 RUNBOOK & WI\_v1.4.0.md\#\[ANCHOR:SPLMVP-S7-GATE\] | SOMOC-WSPV0-S7-GATE-DICT |
| SRS | Gate Dictionary | DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-GATE-DICTIONARY\] | SOMOC-WSPV0-S7-GATE-EVIDENCE-MAP |
| ARCH | 15 Subsystems Registry | DOCLOC:/mnt/data/Spartoi-OMOC\_ARCH\_v8.1.0.md\#\[ANCHOR:ARCH-V810-9-2-1-SUBSYSTEMS\] | SOMOC-WSPV0-S6-SUBSYSTEM-MATRIX |
| Pipeline-A plan | SpecPack/基底 | DOCLOC:/mnt/data/Pipeline-A\_組合方案 v2.md\#L10-L18 | SOMOC-WSPV0-S4-DEF |
| Pipeline-B plan | StrategyPack/回測 | DOCLOC:/mnt/data/Pipeline-B 組合方案 v2.md\#L12-L20 | SOMOC-WSPV0-S5-MIN-SET |
| Pipeline-C plan | Stable message outputs | DOCLOC:/mnt/data/Pipeline-C組合方案.md\#L11-L19 | SOMOC-WSPV0-S4-DEF |

### **Coverage Map B：Legacy(v2.0.0-r1(B), v1.2.0) → New**

\[ANCHOR:SOMOC-WSPV0-APPX-B-COV-B\]

#### **B1：v2.0.0-r1(B版) → New（逐條）**

（逐條＝逐 anchor）

| legacy\_anchor | legacy\_ptr | new\_ptr | status |
| ----- | ----- | ----- | ----- |
| SPINE-V0-15-SUBSYSTEM-MATRIX | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1(B版).md\#\[ANCHOR:SPINE-V0-15-SUBSYSTEM-MATRIX\] | \[ANCHOR:SOMOC-WSPV0-S6-SUBSYSTEM-MATRIX\] (this\_doc) | Preserved/Refined |
| SPINE-V0-ACCEPTANCE-MAP | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1(B版).md\#\[ANCHOR:SPINE-V0-ACCEPTANCE-MAP\] | \[ANCHOR:SOMOC-WSPV0-S7-ACCEPTANCE-MAP\] (this\_doc) | Preserved/Refined |
| SPINE-V0-AI-GUIDE | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1(B版).md\#\[ANCHOR:SPINE-V0-AI-GUIDE\] | \[ANCHOR:SOMOC-WSPV0-S0-AI-GUIDE\] (this\_doc) | Preserved/Refined |
| SPINE-V0-ANTI-REGRESSION | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1(B版).md\#\[ANCHOR:SPINE-V0-ANTI-REGRESSION\] | \[ANCHOR:SOMOC-WSPV0-APPX-C-ANTI-REGRESSION\] (this\_doc) | Preserved/Refined |
| SPINE-V0-APPENDICES | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1(B版).md\#\[ANCHOR:SPINE-V0-APPENDICES\] | \[ANCHOR:SOMOC-WSPV0-S10-APPX\] (this\_doc) | Preserved/Refined |
| SPINE-V0-APPX-A | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1(B版).md\#\[ANCHOR:SPINE-V0-APPX-A\] | \[ANCHOR:SOMOC-WSPV0-APPX-A-ISSUE-CLOSURE\] (this\_doc) | Preserved/Refined |
| SPINE-V0-APPX-B | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1(B版).md\#\[ANCHOR:SPINE-V0-APPX-B\] | \[ANCHOR:SOMOC-WSPV0-APPX-B-COVERAGE\] (this\_doc) | Preserved/Refined |
| SPINE-V0-APPX-C | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1(B版).md\#\[ANCHOR:SPINE-V0-APPX-C\] | \[ANCHOR:SOMOC-WSPV0-APPX-C-ANTI-REGRESSION\] (this\_doc) | Preserved/Refined |
| SPINE-V0-APPX-D | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1(B版).md\#\[ANCHOR:SPINE-V0-APPX-D\] | \[ANCHOR:SOMOC-WSPV0-APPX-D-CRTT\] (this\_doc) | Preserved/Refined |
| SPINE-V0-APPX-E | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1(B版).md\#\[ANCHOR:SPINE-V0-APPX-E\] | \[ANCHOR:SOMOC-WSPV0-APPX-E-WEB-EVIDENCE\] (this\_doc) | Preserved/Refined |
| SPINE-V0-CHANGELOG | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1(B版).md\#\[ANCHOR:SPINE-V0-CHANGELOG\] | \[ANCHOR:SOMOC-WSPV0-S0-SUPERSEDES\] (this\_doc) | Refined |
| SPINE-V0-CODESPACES-UPGRADE | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1(B版).md\#\[ANCHOR:SPINE-V0-CODESPACES-UPGRADE\] | \[ANCHOR:SOMOC-WSPV0-S3-SCOPE\] (this\_doc) | Route-Out |
| SPINE-V0-CONNECTIVITY-SPIKE | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1(B版).md\#\[ANCHOR:SPINE-V0-CONNECTIVITY-SPIKE\] | \[ANCHOR:SOMOC-WSPV0-S6-E2E\] (this\_doc) | Refined |
| SPINE-V0-CONTRACTS | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1(B版).md\#\[ANCHOR:SPINE-V0-CONTRACTS\] | \[ANCHOR:SOMOC-WSPV0-S7-EVIDENCE-TRIPLET\] (this\_doc) | Refined |
| SPINE-V0-COVER-CARD | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1(B版).md\#\[ANCHOR:SPINE-V0-COVER-CARD\] | \[ANCHOR:SOMOC-WSPV0-S0-DOC-META\] (this\_doc) | Preserved/Refined |
| SPINE-V0-COVERAGE-MAPS | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1(B版).md\#\[ANCHOR:SPINE-V0-COVERAGE-MAPS\] | \[ANCHOR:SOMOC-WSPV0-APPX-B-COVERAGE\] (this\_doc) | Preserved/Refined |
| SPINE-V0-DEFINITIONS | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1(B版).md\#\[ANCHOR:SPINE-V0-DEFINITIONS\] | \[ANCHOR:SOMOC-WSPV0-S4-DEF\] (this\_doc) | Preserved/Refined |
| SPINE-V0-DOC-MAP | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1(B版).md\#\[ANCHOR:SPINE-V0-DOC-MAP\] | \[ANCHOR:SOMOC-WSPV0-S2-AUTH\] (this\_doc) | Refined |
| SPINE-V0-DOC-META | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1(B版).md\#\[ANCHOR:SPINE-V0-DOC-META\] | \[ANCHOR:SOMOC-WSPV0-S0-DOC-META\] (this\_doc) | Preserved/Refined |
| SPINE-V0-EVIDENCE-INDEX | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1(B版).md\#\[ANCHOR:SPINE-V0-EVIDENCE-INDEX\] | \[ANCHOR:SOMOC-WSPV0-S7-EVIDENCE-TRIPLET\] (this\_doc) | Refined |
| SPINE-V0-GATE-MAPPING | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1(B版).md\#\[ANCHOR:SPINE-V0-GATE-MAPPING\] | \[ANCHOR:SOMOC-WSPV0-S7-ACCEPTANCE-MAP\] (this\_doc) | Preserved/Refined |
| SPINE-V0-GATEKIT-POSITION | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1(B版).md\#\[ANCHOR:SPINE-V0-GATEKIT-POSITION\] | \[ANCHOR:SOMOC-WSPV0-S7-GATE-EVIDENCE\] (this\_doc) | Refined |
| SPINE-V0-GATES-EVIDENCE | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1(B版).md\#\[ANCHOR:SPINE-V0-GATES-EVIDENCE\] | \[ANCHOR:SOMOC-WSPV0-S7-GATE-EVIDENCE\] (this\_doc) | Preserved/Refined |
| SPINE-V0-HEADER | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1(B版).md\#\[ANCHOR:SPINE-V0-HEADER\] | \[ANCHOR:SOMOC-WSPV0-S0-COVER\] (this\_doc) | Preserved/Refined |
| SPINE-V0-INDEX-SUITE | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1(B版).md\#\[ANCHOR:SPINE-V0-INDEX-SUITE\] | \[ANCHOR:SOMOC-WSPV0-S8-TRACE\] (this\_doc) | Refined |
| SPINE-V0-INPUTS-MANIFEST | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1(B版).md\#\[ANCHOR:SPINE-V0-INPUTS-MANIFEST\] | \[ANCHOR:SOMOC-WSPV0-S0-INV\] (this\_doc) | Preserved/Refined |
| SPINE-V0-JSON-HEADER | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1(B版).md\#\[ANCHOR:SPINE-V0-JSON-HEADER\] | \[ANCHOR:SOMOC-WSPV0-S0-DOC-META\] (this\_doc) | Preserved/Refined |
| SPINE-V0-OVERVIEW | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1(B版).md\#\[ANCHOR:SPINE-V0-OVERVIEW\] | \[ANCHOR:SOMOC-WSPV0-S1-CHARTER\] (this\_doc) | Preserved/Refined |
| SPINE-V0-QUICK-INDEX | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1(B版).md\#\[ANCHOR:SPINE-V0-QUICK-INDEX\] | \[ANCHOR:SOMOC-WSPV0-S0-QUICK-INDEX\] (this\_doc) | Preserved/Refined |
| SPINE-V0-RISK-POLICY | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1(B版).md\#\[ANCHOR:SPINE-V0-RISK-POLICY\] | \[ANCHOR:SOMOC-WSPV0-S9-RISK\] (this\_doc) | Preserved/Refined |
| SPINE-V0-ROUTE-OUT-REGISTER | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1(B版).md\#\[ANCHOR:SPINE-V0-ROUTE-OUT-REGISTER\] | \[ANCHOR:SOMOC-WSPV0-S8-ROUTE-OUT-REG\] (this\_doc) | Preserved/Refined |
| SPINE-V0-SCAFFOLDING | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1(B版).md\#\[ANCHOR:SPINE-V0-SCAFFOLDING\] | \[ANCHOR:SOMOC-WSPV0-S5-DELIVERABLES\] (this\_doc) | Refined |
| SPINE-V0-SCENARIO-1 | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1(B版).md\#\[ANCHOR:SPINE-V0-SCENARIO-1\] | \[ANCHOR:SOMOC-WSPV0-S4-TUTORIAL\] (this\_doc) | Preserved/Refined |
| SPINE-V0-SCENARIO-2 | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1(B版).md\#\[ANCHOR:SPINE-V0-SCENARIO-2\] | \[ANCHOR:SOMOC-WSPV0-S4-TUTORIAL\] (this\_doc) | Preserved/Refined |
| SPINE-V0-SCENARIOS | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1(B版).md\#\[ANCHOR:SPINE-V0-SCENARIOS\] | \[ANCHOR:SOMOC-WSPV0-S4-TUTORIAL\] (this\_doc) | Preserved/Refined |
| SPINE-V0-SCOPE-LOCK | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1(B版).md\#\[ANCHOR:SPINE-V0-SCOPE-LOCK\] | \[ANCHOR:SOMOC-WSPV0-S3-SCOPE\] (this\_doc) | Preserved/Refined |
| SPINE-V0-SELF-CHECK | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1(B版).md\#\[ANCHOR:SPINE-V0-SELF-CHECK\] | \[ANCHOR:SOMOC-WSPV0-APPX-G-SELF-AUDIT\] (this\_doc) | Preserved/Refined |
| SPINE-V0-STABLE-ANCHOR-REGISTRY | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1(B版).md\#\[ANCHOR:SPINE-V0-STABLE-ANCHOR-REGISTRY\] | \[ANCHOR:SOMOC-WSPV0-S8-ANCHOR-REG\] (this\_doc) | Preserved/Refined |
| SPINE-V0-SUBSYSTEM-STUBS | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1(B版).md\#\[ANCHOR:SPINE-V0-SUBSYSTEM-STUBS\] | \[ANCHOR:SOMOC-WSPV0-S6-SUBSYSTEM-MATRIX\] (this\_doc) | Preserved/Refined |
| SPINE-V0-TOC | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1(B版).md\#\[ANCHOR:SPINE-V0-TOC\] | \[ANCHOR:SOMOC-WSPV0-S0-TOC\] (this\_doc) | Preserved/Refined |
| SPINE-V0-TT-REGISTER | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1(B版).md\#\[ANCHOR:SPINE-V0-TT-REGISTER\] | \[ANCHOR:SOMOC-WSPV0-APPX-D-CRTT\] (this\_doc) | Preserved/Refined |
| SPINE-V0-TWO-MIN-GUIDE | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1(B版).md\#\[ANCHOR:SPINE-V0-TWO-MIN-GUIDE\] | \[ANCHOR:SOMOC-WSPV0-S4-TUTORIAL\] (this\_doc) | Preserved/Refined |
| SPINE-V0-WEB-EVIDENCE | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1(B版).md\#\[ANCHOR:SPINE-V0-WEB-EVIDENCE\] | \[ANCHOR:SOMOC-WSPV0-APPX-E-WEB-EVIDENCE\] (this\_doc) | Preserved/Refined |

#### **B2：v1.2.0 → New（來源缺件 → TEMP\_CLOSED）**

\[ANCHOR:SOMOC-WSPV0-APPX-B-COV-B2\]

| legacy | status | controlling\_tt | revoke\_condition |
| ----- | ----- | ----- | ----- |
| v1.2.0（檔案 MISSING） | TEMP\_CLOSED→TEST\_TRACK | TT-DEP-LEGACY-01 | 提供檔案後：逐條產出 Coverage/Anti-regression \+ Closure（CLOSED） |

---

### **Coverage Map C：Gate → Evidence**

（見正文 §7.3）  
\[ANCHOR:SOMOC-WSPV0-APPX-B-COV-C\]

---

## **Appendix C — Anti-Regression Preservation Map（舊版→新版逐條保留/裁決）**

\[ANCHOR:SOMOC-WSPV0-APPX-C-ANTI-REGRESSION\]

| old\_anchor\_id | old\_ptr | new\_ptr | status |
| ----- | ----- | ----- | ----- |
| CP-CHECKS-MANIFEST-MIN | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1(B版).md\#\[ANCHOR:CP-CHECKS-MANIFEST-MIN\] | (refined) DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_總控控制平面\_v2.1.0-r2.md\#\[ANCHOR:SOMOC-CTRL-S7-EVIDENCE-TRIPLET\] (alias missing \-\> TT-ANCH-ALIAS-01) | Refined (pointer update) |
| CP-VERDICT-SCHEMA-MIN | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1(B版).md\#\[ANCHOR:CP-VERDICT-SCHEMA-MIN\] | (refined) DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_總控控制平面\_v2.1.0-r2.md\#\[ANCHOR:SOMOC-CTRL-S7-EVIDENCE-TRIPLET\] (alias missing \-\> TT-ANCH-ALIAS-01) | Refined (pointer update) |
| MIP-V220-0-0-HEADER | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1(B版).md\#\[ANCHOR:MIP-V220-0-0-HEADER\] | (refined) DOCLOC:/mnt/data/Spartoi-OMOC\_MIP\_v2.2.0.txt\#\[ANCHOR:MIP-V220-0-1-META\] | Refined (pointer update) |
| MIP-V220-0-1-PURPOSE | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1(B版).md\#\[ANCHOR:MIP-V220-0-1-PURPOSE\] | (refined) DOCLOC:/mnt/data/Spartoi-OMOC\_MIP\_v2.2.0.txt\#\[ANCHOR:MIP-V220-0-4-SCOPE\] | Refined (pointer update) |
| OMOC-BP-CORE-WALKING-SKELETON | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1(B版).md\#\[ANCHOR:OMOC-BP-CORE-WALKING-SKELETON\] | (refined) DOCLOC:/mnt/data/OMOC\_藍圖\_v4.0.1-r1.md\#\[ANCHOR:OMOC-BP-0500\] | Refined (pointer update) |
| OMOC-BP-ROUTE-OUT-PRINCIPLE | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1(B版).md\#\[ANCHOR:OMOC-BP-ROUTE-OUT-PRINCIPLE\] | (refined) DOCLOC:/mnt/data/OMOC\_藍圖\_v4.0.1-r1.md\#\[ANCHOR:OMOC-BP-1100\] | Refined (pointer update) |
| OMOCMVU-BP-RAG-CHUNKING | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1(B版).md\#\[ANCHOR:OMOCMVU-BP-RAG-CHUNKING\] | UNVERIFIED→TT-DEP-OMOCMVU-01 | UNVERIFIED→TT |
| OMOCMVU-BP-SEC-INPUT-ISOLATION | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1(B版).md\#\[ANCHOR:OMOCMVU-BP-SEC-INPUT-ISOLATION\] | UNVERIFIED→TT-DEP-OMOCMVU-01 | UNVERIFIED→TT |
| SOMOC-CTRL-S10-SECURITY | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1(B版).md\#\[ANCHOR:SOMOC-CTRL-S10-SECURITY\] | (external) DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_總控控制平面\_v2.1.0-r2.md\#\[ANCHOR:SOMOC-CTRL-S10-SECURITY\] | Preserved (external ref) |
| SOMOC-CTRL-S7-GATE-EVIDENCE | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1(B版).md\#\[ANCHOR:SOMOC-CTRL-S7-GATE-EVIDENCE\] | (external) DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_總控控制平面\_v2.1.0-r2.md\#\[ANCHOR:SOMOC-CTRL-S7-GATE-EVIDENCE\] | Preserved (external ref) |
| SOMOC-CTRL-S8-TT-STATE-MACHINE | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1(B版).md\#\[ANCHOR:SOMOC-CTRL-S8-TT-STATE-MACHINE\] | (external) DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_總控控制平面\_v2.1.0-r2.md\#\[ANCHOR:SOMOC-CTRL-S8-TT-STATE-MACHINE\] | Preserved (external ref) |
| SOMOC-DEV-RBWI-V220R1-2-0-SCOPE | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1(B版).md\#\[ANCHOR:SOMOC-DEV-RBWI-V220R1-2-0-SCOPE\] | UNVERIFIED→TT-DEP-DEV-RBWI-01 | UNVERIFIED→TT |
| SOMOC-DEV-RBWI-V220R1-6-2-EVIDENCE\_CONTRACT | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1(B版).md\#\[ANCHOR:SOMOC-DEV-RBWI-V220R1-6-2-EVIDENCE\_CONTRACT\] | UNVERIFIED→TT-DEP-DEV-RBWI-01 | UNVERIFIED→TT |
| SOMOC-SUBP1MVP-00-OVERVIEW | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1(B版).md\#\[ANCHOR:SOMOC-SUBP1MVP-00-OVERVIEW\] | (refined) DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_藍圖\_v1.3.0-r2.md\#\[ANCHOR:SOMOC-SUBP1MVP-00-COVER\] | Refined (pointer update) |
| SOMOC-SUBP1MVP-OPS-S12-GATE-EVIDENCE | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.0.0-r1(B版).md\#\[ANCHOR:SOMOC-SUBP1MVP-OPS-S12-GATE-EVIDENCE\] | (external) DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Ops RUNBOOK \+ WI\_v2.1.0-r2.md\#\[ANCHOR:SOMOC-SUBP1MVP-OPS-S12-GATE-EVIDENCE\] | Preserved (external ref) |
| (其餘 SPINE-V0-\* anchors) | （見 Coverage Map B1） | （見 Coverage Map B1） | Preserved/Refined 或 Route-Out |

---

## **Appendix D — CR Register \+ TT Register \+ TEST\_TRACK List（CR\_OPEN=0）**

\[ANCHOR:SOMOC-WSPV0-APPX-D-CRTT\]

### **D1：CR Register（本版結論：CR\_OPEN \= 0）**

\[ANCHOR:SOMOC-WSPV0-APPX-D-CR\]

| cr\_id | status | note |
| ----- | ----- | ----- |
| (none) | CR\_OPEN=0 | 未決事項一律轉 TT（見下表） |

evidence\_ptr：DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Ops RUNBOOK \+ WI\_v2.1.0-r2.md\#\[ANCHOR:SOMOC-SUBP1MVP-12-2-CR\_OPEN\_ZERO\]

### **D2：TT Register \+ TEST\_TRACK List（必備欄位齊備）**

\[ANCHOR:SOMOC-WSPV0-APPX-D-TT\]

| tt\_id | 主題 | 缺口原因 | 需要的外部資料(若有) | 驗證方式 | 撤銷條件 | owner | status |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| TT-DEP-LEGACY-01 | Legacy v1.2.0 來源缺件 | 檔案未掛載 | 該 md 檔 \+ sha256 | 補檔後逐條 Coverage/Anti-regression | 完成逐條映射並關閉 | Doc | OPEN |
| TT-DEP-DEV-RBWI-01 | SubP1 Dev RBWI v2.2.0-r1 缺件 | 檔案未掛載 | 該 md 檔 \+ sha256 | 補檔後核對 Route-Out/證據契約 | 對齊完成 \+ Closure | DevDoc | OPEN |
| TT-INV-PROOF-01 | 跨文檔 Inventory 一致性 | 其他文件可能宣告錯誤 | N/A | 比對各 SSOT 的 inventory 章節 | 一致化並固定錨點 | Doc | OPEN |
| TT-ANCH-RANGE-01 | 來源以行號引用風險 | 無 anchor 的 source | N/A | 對 source 加 stable anchors 或改用具 anchor 版本 | anchors 可用 | Doc | OPEN |
| TT-ANCH-ALIAS-01 | 舊 anchor alias 缺失 | `CP-*` alias 不存在 | N/A | 在 Control Plane 增加 alias 或提供映射表 | alias 可解析 | CtrlPlane | OPEN |
| TT-WEB-SEC-01 | 安全最佳實務（SUPPORT-only） | 未抓 Web snapshot | Web source snapshots | 抓取後填 WE 表；不得升格 | WE 完整 \+ 影響評估 | Sec | OPEN |
| TT-WEB-LANG-01 | prompt 語言一致性（SUPPORT-only） | 未抓 Web snapshot | Web source snapshots | 同上 | 同上 | PromptEng | OPEN |
| TT-WEB-RAG-CHUNK-01 | RAG chunking 指引（SUPPORT-only） | 未抓 Web snapshot | Web source snapshots | 同上 | 同上 | RAG | OPEN |
| TT-WEB-RAG-EVAL-01 | RAG eval 指標（SUPPORT-only） | 未抓 Web snapshot | Web source snapshots | 同上 | 同上 | RAG | OPEN |
| TT-DEP-15CA-BP-01 | 15CA 重構升級藍圖缺件 | 檔案未掛載 | 該 md 檔 | 補檔後補映射與依賴裁決 | Coverage A 補齊 | Arch | OPEN |
| TT-DEP-5PACK-01 | 五子系統組合方案缺件 | 檔案未掛載 | 該 md 檔 | 補檔後更新 E2E 對齊 | 更新後關閉 | Arch | OPEN |
| TT-DEP-SUBSYS-REF-01 | 子系統重構藍圖缺件 | 檔案未掛載 | 該 md 檔 | 補檔後更新映射 | 更新後關閉 | Arch | OPEN |
| TT-DEP-RENAME-01 | 子系統改名方案缺件 | 檔案未掛載 | 該 md 檔 | 補檔後更新命名對照 | 更新後關閉 | Arch | OPEN |
| TT-DEP-DELIVERY-01 | Delivery Plan 缺件 | 檔案未掛載 | 該 md 檔 | 補檔後更新交付對齊 | 更新後關閉 | PMO | OPEN |
| TT-DEP-OMOCMVU-01 | OMOC-MVU 藍圖/安全錨點缺件 | 檔案未掛載 | 該 md 檔 | 補檔後更新外部 anchor 參照 | 更新後關閉 | Doc | OPEN |

---

## **Appendix E — Web Evidence Appendix（SUPPORT-only）**

\[ANCHOR:SOMOC-WSPV0-APPX-E-WEB-EVIDENCE\]

本版未抓取任何 Web 來源；以下以 **UNFETCHED** 記錄格式，並全部綁定 TT。抓取後不得升格為 MUST，只能影響 TT/撤銷條件。  
evidence\_ptr：WSP-R-04

| we\_id | title | publisher | url | published\_at | accessed\_at (Asia/Taipei) | evidence\_tier | 用途 | 對應TT |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| WE-SEC-01 | UNFETCHED | UNFETCHED | UNFETCHED | UNFETCHED | UNFETCHED | SUPPORT-only | 安全最佳實務補缺/佐證 | TT-WEB-SEC-01 |
| WE-LANG-01 | UNFETCHED | UNFETCHED | UNFETCHED | UNFETCHED | UNFETCHED | SUPPORT-only | prompt 語言一致性補缺 | TT-WEB-LANG-01 |
| WE-RAG-CHUNK-01 | UNFETCHED | UNFETCHED | UNFETCHED | UNFETCHED | UNFETCHED | SUPPORT-only | RAG chunking 指引補缺 | TT-WEB-RAG-CHUNK-01 |
| WE-RAG-EVAL-01 | UNFETCHED | UNFETCHED | UNFETCHED | UNFETCHED | UNFETCHED | SUPPORT-only | RAG eval 指標補缺 | TT-WEB-RAG-EVAL-01 |

---

## **Appendix F — Locator Proof Appendix（sha256）**

\[ANCHOR:SOMOC-WSPV0-APPX-F-LOCATOR-SHA256\]

sha256 以「檔案位元」計算；若需再現：對 `DOCLOC:/mnt/data/<file>` 直接計算 SHA-256。  
evidence\_ptr：DOCLOC:/mnt/data/Spartoi-OMOC\_MIP\_v2.2.0.txt\#\[ANCHOR:MIP-V220-0-2-PREFLIGHT\]

（已於 §0.1 Doc Inventory 全量列出；以該表為準。）

---

## **Appendix G — Final Self-Audit Checklist（已填完）**

\[ANCHOR:SOMOC-WSPV0-APPX-G-SELF-AUDIT\]

| check\_item | PASS/FAIL/TT | evidence\_ptr / tt\_id |
| ----- | ----- | ----- |
| §0 Preflight（Inventory+Locator Proof）存在且可定位 | PASS | SOMOC-WSPV0-S0-PREFLIGHT |
| Authority Stack 明示且可裁決 | PASS | SOMOC-WSPV0-S2-AUTH |
| Scope Lock（In/Out；Route-Out）無越權 HOW | PASS | SOMOC-WSPV0-S3-SCOPE |
| TOC \+ Quick Index 可檢索 | PASS | SOMOC-WSPV0-S0-TOC / SOMOC-WSPV0-S0-QUICK-INDEX |
| Anchor Registry（本文件）存在 | PASS | SOMOC-WSPV0-S8-ANCHOR-REG |
| Issue Closure 覆蓋審查報告所有 findings（DG+P） | PASS | SOMOC-WSPV0-APPX-A-ISSUE-CLOSURE |
| Coverage Map A/B/C 具備 | PASS | SOMOC-WSPV0-APPX-B-COVERAGE / SOMOC-WSPV0-S7-GATE-EVIDENCE-MAP |
| Anti-Regression Map（逐條）具備 | PASS | SOMOC-WSPV0-APPX-C-ANTI-REGRESSION |
| CR\_OPEN=0（未決轉 TT） | PASS | SOMOC-WSPV0-APPX-D-CR |
| TT Register 欄位完整（撤銷條件/驗證法/owner） | PASS | SOMOC-WSPV0-APPX-D-TT |
| Legacy v1.2.0 覆蓋可驗（來源缺件） | TT | TT-DEP-LEGACY-01 |
| SubP1 Dev RBWI v2.2.0-r1 覆蓋可驗（來源缺件） | TT | TT-DEP-DEV-RBWI-01 |
| Web Evidence Appendix（SUPPORT-only）格式齊備、綁 TT | PASS | SOMOC-WSPV0-APPX-E-WEB-EVIDENCE |
| 外部 Web 未升格為 MUST | PASS | WSP-R-04 |

---

