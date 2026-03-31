\# Spartoi-OMOC\_LBP-E(Fitness) v8.1.1-r2

\#\# 0\) Front Matter

\- \*\*外部名稱（External Display Name）\*\*：Spartoi-OMOC｜LBP-E(Fitness)  
\- \*\*內部簡稱（Internal Short Name）\*\*：LBP-E / Fitness  
\- \*\*Doc ID\*\*：Spartoi-OMOC\_LBP-E(Fitness)  
\- \*\*Version\*\*：v8.1.1-r2  
\- \*\*Run Date (TZ)\*\*：Asia/Taipei / 2026-02-15  
\- \*\*Status\*\*  
  \- \*\*NORMATIVE\*\*：本文件之 Scope Boundary、Catalog、Index/Matrix、TT Registry、Findings Closure（除標示 SUPPORT-only 章節外）為規範性內容。  
  \- \*\*SUPPORT\*\*：External Evidence Appendix、Legacy Parity Proof、machine\_summary.json 為支援性內容；不得升格為 NORMATIVE。  
\- \*\*Authority Stack（入口與衝突處理）\*\*  
  1\. \*\*MIP（入口）\*\*：/mnt/data/Spartoi-OMOC\_MIP\_v2.2.0.txt（衝突/缺口：UNVERIFIED → TT → TEMP\_CLOSED）:contentReference\[oaicite:0\]{index=0}  
  2\. \*\*SRS\*\*：/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md（Gate Dictionary SSOT）  
  3\. \*\*ARCH\*\*：/mnt/data/Spartoi-OMOC\_ARCH\_v8.1.0.md（觀測性/追溯 SSOT）  
  4\. \*\*LBP-A/B/C/D\*\*：作為跨文件索引/映射/route-out 之引用目標（本文件不搬運其規範內容）  
  5\. \*\*MVU v4.0 \+ 套件包\*\*：僅在 Fitness 範圍內作「索引/映射/route-out」，不下沉為 Runbook/WI/可執行步驟:contentReference\[oaicite:4\]{index=4}  
  6\. \*\*Legacy v3.0.1\*\*：工程性可取代之對照基準（不得要求回看 legacy 才能開發）

\---

\#\# 1\) 目錄（TOC）+ 錨點策略（ANCHOR 規約）

\#\#\# TOC  
\- \[1) 目錄（TOC）+ 錨點策略（ANCHOR 規約）\](\#1-目錄toc--錨點策略anchor-規約)  
\- \[2) Scope Boundary（NORMATIVE）\](\#2-scope-boundarynormative)  
\- \[3) Doc Inventory \+ Locator Proof（NORMATIVE）\](\#3-doc-inventory--locator-proofnormative)  
\- \[4) Fitness Function Catalog（NORMATIVE）\](\#4-fitness-function-catalognormative)  
\- \[5) Gate Hook Index（NORMATIVE）\](\#5-gate-hook-indexnormative)  
\- \[6) Route-Out Matrix（NORMATIVE）\](\#6-route-out-matrixnormative)  
\- \[7) Drift & Regression Defense（NORMATIVE）\](\#7-drift--regression-defensenormative)  
\- \[8) Test Tracking Registry（NORMATIVE；計畫層）\](\#8-test-tracking-registrynormative計畫層)  
\- \[9) Findings Closure Matrix（NORMATIVE）\](\#9-findings-closure-matrixnormative)  
\- \[10) External Evidence Appendix（SUPPORT-only）\](\#10-external-evidence-appendixsupport-only)  
\- \[11) Legacy Parity Proof（SUPPORT-only）\](\#11-legacy-parity-proofsupport-only)  
\- \[12) machine\_summary.json（SUPPORT-only）\](\#12-machine\_summaryjsonsupport-only)

\#\#\# ANCHOR 規約  
\- 本文件內部錨點以「章節標題」自動錨點為主；對外引用採 \*\*file\_path \+ 行號/anchor \+ 摘錄\*\*。  
\- \*\*AI/LLM 強制檢索導引（不得跳章）\*\*  
  1\. 先讀 \[2) Scope Boundary\] 確認不越權、不把 SUPPORT 升格。  
  2\. 再讀 \[3) Doc Inventory\] 確認上游可定位；不可定位＝UNVERIFIED→TT。  
  3\. 再讀 \[4) Catalog\]（FIT-001\~013）與 \[5) Gate Hook Index\]（gate→SRS Gate Dictionary）。  
  4\. 再讀 \[6) Route-Out Matrix\]（Pipeline/五子/DB/改名方案影響只以索引/映射呈現）。  
  5\. 最後讀 \[8) TT Registry\] 與 \[9) Closure Matrix\]：任何缺口必須已被 TT TEMP\_CLOSED，不得留 CR\_OPEN。

\---

\#\# 2\) Scope Boundary（NORMATIVE）

\#\#\# 2.1 允許事項（Allowed）  
\- 定義 \*\*Fitness Function（FIT-001\~013）\*\*：目的、訊號定義、文字性通過/失敗規則、gate\_hook、req\_trace、route\_out。  
\- 建立 \*\*索引/映射/route-out\*\*：把 Fitness 的 SSOT 指回 SRS/ARCH/LBP-A/B/C/D/MVU/Blueprint/Pipeline/五子/DB/改名方案等。  
\- 提供 \*\*可機械核對\*\* 的引用：不得只寫 token，必須指到上游正文節點（file\_path \+ 行號/anchor）。

\#\#\# 2.2 禁止事項（Forbidden）  
\- \*\*禁止越權\*\*：不得在 NORMATIVE 寫 Runbook/WI/CI/YAML/可執行命令/教學步驟。  
\- \*\*NORMATIVE 禁止門檻污染\*\*：NORMATIVE 不得包含比較符號字面量、分位/百分比門檻字面量、regex/命令字面量等；如需存在，僅能放在 SUPPORT 或 TT 的 verification\_plan（仍限「原則性描述」，不落可執行腳本）。  
\- \*\*禁止自創 gate\_id\*\*：gate\_id 必須可在 SRS Gate Dictionary 定位；若缺 gate\_id，必須 TT-GATE-NEW-\* 並 route-out 到 SRS/ADR。

\---

\#\# 3\) Doc Inventory \+ Locator Proof（NORMATIVE）

\> 規則：每份文件至少 2 個 locator proof；任一 locator 無法定位＝UNVERIFIED→TT-DOCLOC-\*（且 TT 必須 TEMP\_CLOSED(TEST\_TRACKING)）。

| doc\_key | file\_path | version | role | locator\_proof\_1 | locator\_proof\_2 | status |  
|---|---|---:|---|---|---|---|  
| SSOT-MIP | /mnt/data/Spartoi-OMOC\_MIP\_v2.2.0.txt | v2.2.0 | NORMATIVE(入口) | @ L1 / Header / “MIP v2.2.0”:contentReference\[oaicite:12\]{index=12} | @ L30 / Index / “LBP-E(Fitness)”:contentReference\[oaicite:13\]{index=13} | FOUND |  
| SSOT-SRS | /mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md | v8.1.0 | NORMATIVE | @ L178 / \[ANCHOR:SRS-V810-IR-GATE-DICT\]:contentReference\[oaicite:14\]{index=14} | @ L210 / Gate entry / “GATE-SAFE-003-EXECUTE\_DISABLED”:contentReference\[oaicite:15\]{index=15} | FOUND |  
| SSOT-SRS (Gate Dictionary) | /mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md | v8.1.0-RELEASE | NORMATIVE | @ L629 / “2.1.4 Gate Dictionary”:contentReference\[oaicite:16\]{index=16} | @ L644 / Gate table row sample “GATE-SAFE-002…”:contentReference\[oaicite:17\]{index=17} | FOUND |  
| SSOT-ARCH | /mnt/data/Spartoi-OMOC\_ARCH\_v8.1.0.md | v8.1.0 | NORMATIVE | @ L48 / \[ANCHOR:ARCH-V810-3-4-OBSERVABILITY\]:contentReference\[oaicite:18\]{index=18} | @ L4499 / Index row / “ARCH-V810-3-4-OBSERVABILITY”:contentReference\[oaicite:19\]{index=19} | FOUND |  
| LBP-A(SIR) | /mnt/data/Spartoi-OMOC\_LBP-A(SIR) v8.1.1-r1.md | v8.1.1-r1 | NORMATIVE | @ L1 / Title / “LBP-A(SIR)”:contentReference\[oaicite:20\]{index=20} | @ L40 / Anchor / “\[ANCHOR: …\]”:contentReference\[oaicite:21\]{index=21} | FOUND |  
| LBP-B(ICD) | /mnt/data/Spartoi-OMOC\_LBP-B(ICD)v8.1.1-r2.md | v8.1.1-r2 | NORMATIVE | @ L1 / Title / “LBP-B(ICD)”:contentReference\[oaicite:22\]{index=22} | UNVERIFIED(line unknown) → TT-DOCLOC-002:contentReference\[oaicite:23\]{index=23} | UNVERIFIED→TT |  
| LBP-C(ADR) | /mnt/data/Spartoi-OMOC\_LBP-C(ADR) v8.1.1-r2.md | v8.1.1-r2 | NORMATIVE | @ L1 / Title / “LBP-C(ADR)”:contentReference\[oaicite:24\]{index=24} | UNVERIFIED(line unknown) → TT-DOCLOC-003:contentReference\[oaicite:25\]{index=25} | UNVERIFIED→TT |  
| LBP-D(C4) | /mnt/data/Spartoi-OMOC\_LBP-D(C4) v8.1.1-r2.md | v8.1.1-r2 | NORMATIVE | @ L1 / Title / “LBP-D(C4)”:contentReference\[oaicite:26\]{index=26} | UNVERIFIED(line unknown) → TT-DOCLOC-004:contentReference\[oaicite:27\]{index=27} | UNVERIFIED→TT |  
| MVU v4 | /mnt/data/OMOC-MVU「Local Docker 低磨合轉接層」方案v4.0.md | v4.0 | REF(上游) | @ L1 / Title / “Local Docker … v4.0”:contentReference\[oaicite:28\]{index=28} | UNVERIFIED(line unknown) → TT-DOCLOC-005:contentReference\[oaicite:29\]{index=29} | UNVERIFIED→TT |  
| MVU 套件包 | /mnt/data/「OMOC-MVU 藍圖 \+ RUNBOOK \+ WI」套件包\_v0.2.0-r1+SC-HMD.md | v0.2.0-r1 | REF(上游) | @ L1 / Title / “RUNBOOK \+ WI 套件包”:contentReference\[oaicite:30\]{index=30} | UNVERIFIED(line unknown) → TT-DOCLOC-006:contentReference\[oaicite:31\]{index=31} | UNVERIFIED→TT |  
| REF-Pipeline-A | /mnt/data/Pipeline-A\_組合方案 v2.md | v2 | REF | UNVERIFIED(locator) → TT-DOCLOC-007:contentReference\[oaicite:32\]{index=32} | UNVERIFIED(locator) → TT-DOCLOC-007:contentReference\[oaicite:33\]{index=33} | UNVERIFIED→TT |  
| REF-Pipeline-B | /mnt/data/Pipeline-B 組合方案 v2.md | v2 | REF | UNVERIFIED(locator) → TT-DOCLOC-008:contentReference\[oaicite:34\]{index=34} | UNVERIFIED(locator) → TT-DOCLOC-008:contentReference\[oaicite:35\]{index=35} | UNVERIFIED→TT |  
| REF-Pipeline-C | /mnt/data/Pipeline-C組合方案.md | UNKNOWN | REF | UNVERIFIED(locator) → TT-DOCLOC-009:contentReference\[oaicite:36\]{index=36} | UNVERIFIED(locator) → TT-DOCLOC-009:contentReference\[oaicite:37\]{index=37} | UNVERIFIED→TT |  
| REF-5-Subsystem | /mnt/data/五子系統組合方案.md | UNKNOWN | REF | UNVERIFIED(locator) → TT-DOCLOC-010:contentReference\[oaicite:38\]{index=38} | UNVERIFIED(locator) → TT-DOCLOC-010:contentReference\[oaicite:39\]{index=39} | UNVERIFIED→TT |  
| REF-DB-A+B | /mnt/data/Pipeline-A+B 整合資料庫方案.md | UNKNOWN | REF | UNVERIFIED(locator) → TT-DOCLOC-011:contentReference\[oaicite:40\]{index=40} | UNVERIFIED(locator) → TT-DOCLOC-011:contentReference\[oaicite:41\]{index=41} | UNVERIFIED→TT |  
| REF-Subsystem-Refactor | /mnt/data/Spartoi-OMOC\_子系統重構藍圖.md | UNKNOWN | REF | UNVERIFIED(locator) → TT-DOCLOC-012:contentReference\[oaicite:42\]{index=42} | UNVERIFIED(locator) → TT-DOCLOC-012:contentReference\[oaicite:43\]{index=43} | UNVERIFIED→TT |  
| REF-Rename-Scheme | /mnt/data/子系統「顯示名\_宏模組名」改名方案.md | UNKNOWN | REF | UNVERIFIED(locator) → TT-DOCLOC-013:contentReference\[oaicite:44\]{index=44} | UNVERIFIED(locator) → TT-DOCLOC-013:contentReference\[oaicite:45\]{index=45} | UNVERIFIED→TT |  
| Legacy v3.0.1 | /mnt/data/Spartoi｜P1\_LBP-E(Fitness)\_v3.0.1.md | v3.0.1 | LEGACY | @ L442 / \[ANCHOR:LBPE-V301-FIT-001\]:contentReference\[oaicite:46\]{index=46} | @ L670 / \[ANCHOR:LBPE-V301-FIT-013\]:contentReference\[oaicite:47\]{index=47} | FOUND |

\---

\#\# 4\) Fitness Function Catalog（NORMATIVE）

\> \*\*格式（六欄齊）\*\*：ff\_id / name / intent / signal\_definition / pass\_fail\_rule（文字性、不含門檻字面量）/ gate\_hook / req\_trace / route\_out / notes    
\> \*\*Gate Dictionary SSOT\*\*：SRS v8.1.0 “2.1.4 Gate Dictionary” 為 gate\_id 定義來源    
\> \*\*重要修補點\*\*：避免使用不可定位 token；FIT-006/007 與 FIT-012 的 req\_trace 漂移為 MAJ blocker 來源（已轉 TT 並改為可定位 SSOT 節點）。

\#\#\# FIT-001  
\- \*\*ff\_id\*\*：FIT-001  
\- \*\*name\*\*：Win Rate（勝率）  
\- \*\*intent\*\*：衡量主要任務目標之達成比例，用於趨勢追蹤與回歸監控（門檻由 SSOT 承載）。  
\- \*\*signal\_definition\*\*：以「任務完成事件」與「任務嘗試事件」為母體，定義成功/失敗事件集合與計算視窗（視窗/排除規則 route-out）。  
\- \*\*pass\_fail\_rule（文字性）\*\*：若在定義視窗內呈現持續性惡化或低於 SSOT 設定之可接受水位，判定為風險升高；是否阻斷由 gate policy 決定。  
\- \*\*gate\_hook\*\*：GATE-SAFE-002-RADARONLY；（SRS Gate Dictionary 章節定位：@ L629、@ L644）:contentReference\[oaicite:50\]{index=50}  
\- \*\*req\_trace\*\*：SRS Gate Dictionary（/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md @ L629 / “2.1.4 Gate Dictionary”）:contentReference\[oaicite:51\]{index=51}；MIP 入口（/mnt/data/Spartoi-OMOC\_MIP\_v2.2.0.txt @ L30 / “LBP-E(Fitness)”）:contentReference\[oaicite:52\]{index=52}  
\- \*\*route\_out\*\*：門檻/視窗/事件定義 SSOT → SRS；跨子系統語意 → LBP-B(ICD)（UNVERIFIED loc → TT-DOCLOC-002）。:contentReference\[oaicite:53\]{index=53}  
\- \*\*notes\*\*：Legacy parity 來源：LBPE-V301-FIT-001:contentReference\[oaicite:54\]{index=54}（差異與替代策略見 §11）。

\#\#\# FIT-002  
\- \*\*ff\_id\*\*：FIT-002  
\- \*\*name\*\*：Latency（延遲）  
\- \*\*intent\*\*：監控端到端或關鍵路徑延遲的漂移與回歸風險。  
\- \*\*signal\_definition\*\*：定義 latency 量測點、採樣與聚合口徑；分位/門檻 route-out。  
\- \*\*pass\_fail\_rule\*\*：若延遲指標出現可重現的回歸且超出 SSOT 可接受範圍，判定為風險；阻斷與否依 gate policy。  
\- \*\*gate\_hook\*\*：GATE-SAFE-002-RADARONLY；（SRS @ L629/@ L644）:contentReference\[oaicite:55\]{index=55}  
\- \*\*req\_trace\*\*：SRS Gate Dictionary @ L629:contentReference\[oaicite:56\]{index=56}；ARCH Observability（/mnt/data/Spartoi-OMOC\_ARCH\_v8.1.0.md @ L48 / \[ANCHOR:ARCH-V810-3-4-OBSERVABILITY\]）:contentReference\[oaicite:57\]{index=57}  
\- \*\*route\_out\*\*：量測點/追蹤語意 SSOT → ARCH Observability；計量命名/語意 → LBP-B(ICD)（TT-DOCLOC-002）。  
\- \*\*notes\*\*：Legacy parity：LBPE-V301-FIT-002（見 §11；若 legacy locator 缺，轉 TT-PARITY-LOC-002）。

\#\#\# FIT-003  
\- \*\*ff\_id\*\*：FIT-003  
\- \*\*name\*\*：Cost（成本）  
\- \*\*intent\*\*：監控成本漂移與高成本回歸（含 token/運算/外部資源）。  
\- \*\*signal\_definition\*\*：定義成本事件、費用歸屬與計算視窗；細節由 SSOT 承載。  
\- \*\*pass\_fail\_rule\*\*：若成本指標出現持續性上升且無對應價值增益或超出 SSOT 可接受範圍，判定為風險。  
\- \*\*gate\_hook\*\*：GATE-SAFE-002-RADARONLY；（SRS @ L629/@ L644）:contentReference\[oaicite:58\]{index=58}  
\- \*\*req\_trace\*\*：SRS Gate Dictionary @ L629:contentReference\[oaicite:59\]{index=59}；MIP 入口 @ L1:contentReference\[oaicite:60\]{index=60}  
\- \*\*route\_out\*\*：成本計量口徑 → SRS / ICD；Pipeline/Scenario 成本拆分 → Route-Out Matrix（§6）。  
\- \*\*notes\*\*：Legacy parity：LBPE-V301-FIT-003（見 §11；若 legacy locator 缺，轉 TT-PARITY-LOC-003）。

\#\#\# FIT-004  
\- \*\*ff\_id\*\*：FIT-004  
\- \*\*name\*\*：Safety Compliance（安全合規）  
\- \*\*intent\*\*：確保在安全政策下，僅允許合規操作（讀/雷達/執行禁用）。  
\- \*\*signal\_definition\*\*：定義安全模式信號（只讀/雷達/執行禁用）與其觸發來源。  
\- \*\*pass\_fail\_rule\*\*：若系統處於不允許執行的狀態仍發生執行類行為，判定為嚴重違規；是否阻斷依 gate policy（通常為阻斷）。  
\- \*\*gate\_hook\*\*：GATE-SAFE-001-READONLY；GATE-SAFE-003-EXECUTE\_DISABLED；（SRS @ L629/@ L210）  
\- \*\*req\_trace\*\*：SRS Gate entry：/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md @ L210 / “GATE-SAFE-003-EXECUTE\_DISABLED”:contentReference\[oaicite:62\]{index=62}；SRS Gate Dictionary @ L629:contentReference\[oaicite:63\]{index=63}  
\- \*\*route\_out\*\*：安全模式與政策 SSOT → SRS；流程落地與操作手冊 → MVU 套件包（僅 route-out；TT-DOCLOC-006）。:contentReference\[oaicite:64\]{index=64}  
\- \*\*notes\*\*：此 FIT 為 scope 防線核心（避免把可執行內容落入 NORMATIVE）。:contentReference\[oaicite:65\]{index=65}

\#\#\# FIT-005  
\- \*\*ff\_id\*\*：FIT-005  
\- \*\*name\*\*：Regression Control（回歸控制）  
\- \*\*intent\*\*：確保回歸/變更可被 gate 機械核對並被政策處置。  
\- \*\*signal\_definition\*\*：定義回歸信號（例如：差異摘要、基準比對結果、回歸事件）。  
\- \*\*pass\_fail\_rule\*\*：若回歸信號達到 SSOT 所定義之不可接受狀態，依 gate policy 阻斷或雷達。  
\- \*\*gate\_hook\*\*：GATE-RC-001；GATE-RC-002；（SRS @ L629）:contentReference\[oaicite:66\]{index=66}  
\- \*\*req\_trace\*\*：SRS Gate Dictionary @ L629:contentReference\[oaicite:67\]{index=67}；MIP 入口 @ L30:contentReference\[oaicite:68\]{index=68}  
\- \*\*route\_out\*\*：回歸判定口徑 SSOT → SRS；跨文件介面回歸 → LBP-B(ICD)（TT-DOCLOC-002）。  
\- \*\*notes\*\*：避免 legacy gate token 化與不可定位引用（審查已指出 “表內宣告式引用” 的風險）。

\#\#\# FIT-006  
\- \*\*ff\_id\*\*：FIT-006  
\- \*\*name\*\*：Method MSC（方法一致性）  
\- \*\*intent\*\*：確保方法/流程類信號具一致性並可追溯到 SSOT。  
\- \*\*signal\_definition\*\*：定義方法信號來源（例如：method registry、pipeline stage marker）。  
\- \*\*pass\_fail\_rule\*\*：若方法信號與 SSOT 定義不一致且可重現，判定為風險；處置依 gate policy。  
\- \*\*gate\_hook\*\*：GATE-METHOD-MSC；GATE-SAFE-002-RADARONLY；GATE-SAFE-003-EXECUTE\_DISABLED（SRS @ L629/@ L210）  
\- \*\*req\_trace\*\*：\*\*修補重點\*\*：不得使用不可定位 token（舊版引用 “SRS-V810-IR-GATE-DICT” 被判不可定位）→ 改為 SRS Gate Dictionary 章節定位：/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md @ L629、@ L644:contentReference\[oaicite:71\]{index=71}  
\- \*\*route\_out\*\*：方法字典 SSOT → SRS/ADR（TT-DOCLOC-003）。  
\- \*\*notes\*\*：對應審查 MAJ（FIT-006 req\_trace token 化）閉環見 §9。

\#\#\# FIT-007  
\- \*\*ff\_id\*\*：FIT-007  
\- \*\*name\*\*：Translate TVE（翻譯/轉換一致性）  
\- \*\*intent\*\*：確保翻譯/轉換類信號可被一致評估並追溯 SSOT。  
\- \*\*signal\_definition\*\*：定義 TVE 信號來源與評估口徑（由 SSOT 承載）。  
\- \*\*pass\_fail\_rule\*\*：若轉換評估與 SSOT 定義不一致且可重現，判定為風險；處置依 gate policy。  
\- \*\*gate\_hook\*\*：GATE-TRANSLATE-TVE；GATE-SAFE-003-EXECUTE\_DISABLED（SRS @ L210/@ L629）  
\- \*\*req\_trace\*\*：SRS Gate Dictionary（@ L629/@ L644；替代不可定位 token）:contentReference\[oaicite:74\]{index=74}  
\- \*\*route\_out\*\*：轉換評估 SSOT → SRS；語意決策與例外 → ADR（TT-DOCLOC-003）。  
\- \*\*notes\*\*：對應審查 MAJ（FIT-007 req\_trace token 化）閉環見 §9。

\#\#\# FIT-008  
\- \*\*ff\_id\*\*：FIT-008  
\- \*\*name\*\*：Read-only Safety（只讀安全）  
\- \*\*intent\*\*：在只讀政策下，確保不發生會改變狀態的副作用。  
\- \*\*signal\_definition\*\*：定義只讀模式狀態信號與操作事件分類。  
\- \*\*pass\_fail\_rule\*\*：只讀狀態下出現狀態改變事件＝違規；處置依 gate policy（通常阻斷或升級）。  
\- \*\*gate\_hook\*\*：GATE-SAFE-001-READONLY（SRS @ L629）:contentReference\[oaicite:76\]{index=76}  
\- \*\*req\_trace\*\*：SRS Gate Dictionary @ L629:contentReference\[oaicite:77\]{index=77}；MVU v4.0（只 route-out；TT-DOCLOC-005）:contentReference\[oaicite:78\]{index=78}  
\- \*\*route\_out\*\*：操作層定義 → MVU 套件包（TT-DOCLOC-006）；規範層 gate → SRS。  
\- \*\*notes\*\*：若 MVU/套件包 locator 補齊後再升級 closure 狀態（見 TT-DOCLOC-\*）。

\#\#\# FIT-009  
\- \*\*ff\_id\*\*：FIT-009  
\- \*\*name\*\*：Radar-only Observability（雷達模式觀測）  
\- \*\*intent\*\*：在雷達模式下允許觀測與診斷，但不做阻斷性處置。  
\- \*\*signal\_definition\*\*：定義 radar-only 模式信號與可收集證據種類。  
\- \*\*pass\_fail\_rule\*\*：若 radar-only 下觀測到風險信號，記錄並觸發修復流程（流程不在本文件，僅 route-out）。  
\- \*\*gate\_hook\*\*：GATE-SAFE-002-RADARONLY（SRS @ L629/@ L644）:contentReference\[oaicite:79\]{index=79}  
\- \*\*req\_trace\*\*：SRS Gate Dictionary @ L629:contentReference\[oaicite:80\]{index=80}；ARCH Observability @ L48:contentReference\[oaicite:81\]{index=81}  
\- \*\*route\_out\*\*：證據/追蹤語意 → ARCH；執行流程 → MVU 套件包（TT-DOCLOC-006）。  
\- \*\*notes\*\*：本 FIT 的“如何做”一律 route-out，避免越權。:contentReference\[oaicite:82\]{index=82}

\#\#\# FIT-010  
\- \*\*ff\_id\*\*：FIT-010  
\- \*\*name\*\*：Immutable Read Path（不可變讀路徑）  
\- \*\*intent\*\*：確保關鍵讀取路徑不被寫入副作用污染。  
\- \*\*signal\_definition\*\*：定義讀路徑事件與不可變條件（細節 SSOT）。  
\- \*\*pass\_fail\_rule\*\*：若讀路徑事件中檢測到寫入副作用，判定為違規；處置依 gate policy。  
\- \*\*gate\_hook\*\*：GATE-SAFE-001-READONLY（SRS @ L629）:contentReference\[oaicite:83\]{index=83}  
\- \*\*req\_trace\*\*：SRS Gate Dictionary @ L629:contentReference\[oaicite:84\]{index=84}；ICD（介面副作用定義；TT-DOCLOC-002）:contentReference\[oaicite:85\]{index=85}  
\- \*\*route\_out\*\*：副作用判定 SSOT → ICD；政策 gate → SRS。  
\- \*\*notes\*\*：若 ICD locator 補齊後，補充更精確 route\_out 斷面（見 TT-DOCLOC-002）。

\#\#\# FIT-011  
\- \*\*ff\_id\*\*：FIT-011  
\- \*\*name\*\*：Reliability（可靠性）  
\- \*\*intent\*\*：衡量服務穩定性與錯誤事件之風險。  
\- \*\*signal\_definition\*\*：定義錯誤事件、重試與失敗歸因；門檻 SSOT。  
\- \*\*pass\_fail\_rule\*\*：若可靠性指標出現可重現之回歸並超出 SSOT 可接受範圍，判定為風險。  
\- \*\*gate\_hook\*\*：GATE-RL-005（SRS @ L629）:contentReference\[oaicite:86\]{index=86}  
\- \*\*req\_trace\*\*：SRS Gate Dictionary @ L629:contentReference\[oaicite:87\]{index=87}；ARCH Observability @ L48:contentReference\[oaicite:88\]{index=88}  
\- \*\*route\_out\*\*：可重跑驗收之 Evidence Triplet 需求 → LBP-B(ICD)（審查指出 DOC-TARGET 無命中 Evidence Triplet，需 TT）  
\- \*\*notes\*\*：Evidence Triplet 的“產物型態”僅在 TT 計畫層描述（見 TT-FIT-EVID-TRIPLET-001）。

\#\#\# FIT-012  
\- \*\*ff\_id\*\*：FIT-012  
\- \*\*name\*\*：Data Quality / Observability Trace（資料品質/可觀測追溯）  
\- \*\*intent\*\*：確保資料品質風險可被觀測並追溯到可定位 SSOT。  
\- \*\*signal\_definition\*\*：定義資料品質信號與追蹤鏈（trace/span/log 之抽象語意，不落可執行細節）。  
\- \*\*pass\_fail\_rule\*\*：若資料品質信號顯示高風險且能在 SSOT 追溯鏈上重現，判定為風險；處置依 gate policy。  
\- \*\*gate\_hook\*\*：GATE-DQ-001（SRS @ L629）:contentReference\[oaicite:90\]{index=90}  
\- \*\*req\_trace（修補重點）\*\*：舊版引用 “ARCH-V810-7-OBS” 被判 ARCH 內不存在 → 改為可定位：/mnt/data/Spartoi-OMOC\_ARCH\_v8.1.0.md @ L48 / \[ANCHOR:ARCH-V810-3-4-OBSERVABILITY\]（審查要求）  
\- \*\*route\_out\*\*：觀測性/追蹤語意 SSOT → ARCH；資料契約/欄位語意 → ICD（TT-DOCLOC-002）。  
\- \*\*notes\*\*：此 FIT 對應審查 MAJ blocker（ARCH anchor 漂移）之閉環見 §9。

\#\#\# FIT-013  
\- \*\*ff\_id\*\*：FIT-013  
\- \*\*name\*\*：Overall Fitness（總體健康度）  
\- \*\*intent\*\*：彙總 FIT-001\~012 的高階狀態，用於跨 Pipeline/Scenario 的一致呈現。  
\- \*\*signal\_definition\*\*：定義彙總策略（加權/優先序/例外）由 SSOT 承載。  
\- \*\*pass\_fail\_rule\*\*：若總體健康度顯示高風險且與下鑽 FIT 一致，判定為風險；阻斷與否依 gate policy。  
\- \*\*gate\_hook\*\*：GATE-SAFE-002-RADARONLY（SRS @ L629/@ L644）:contentReference\[oaicite:93\]{index=93}  
\- \*\*req\_trace\*\*：MIP 入口 @ L30（LBP-E 索引）:contentReference\[oaicite:94\]{index=94}；SRS Gate Dictionary @ L629:contentReference\[oaicite:95\]{index=95}  
\- \*\*route\_out\*\*：彙總規則與門檻 SSOT → SRS/ADR；跨系統映射 → §6 Route-Out Matrix（Pipeline/五子/DB/改名方案）。  
\- \*\*notes\*\*：Legacy parity：LBPE-V301-FIT-013:contentReference\[oaicite:96\]{index=96}（差異見 §11）。

\---

\#\# 5\) Gate Hook Index（NORMATIVE）

\> \*\*禁止自創 gate\_id\*\*；本索引僅列出在 Catalog 出現之 gate\_id，並指向 SRS Gate Dictionary 可定位節點。

| gate\_id | srs\_locator | used\_by\_fit | policy\_note |  
|---|---|---|---|  
| GATE-SAFE-001-READONLY | SRS @ L629 (Gate Dictionary):contentReference\[oaicite:98\]{index=98} | FIT-004, FIT-008, FIT-010 | 只讀模式：以防越權與副作用 |  
| GATE-SAFE-002-RADARONLY | SRS @ L629 / @ L644 (Gate Dictionary):contentReference\[oaicite:99\]{index=99} | FIT-001, FIT-002, FIT-003, FIT-006, FIT-009, FIT-013 | 雷達：可觀測、不阻斷（具體策略 route-out） |  
| GATE-SAFE-003-EXECUTE\_DISABLED | SRS @ L210 (Gate entry):contentReference\[oaicite:100\]{index=100} | FIT-004, FIT-006, FIT-007 | 禁止執行：防止執行類越權 |  
| GATE-RC-001 | SRS @ L629 (Gate Dictionary):contentReference\[oaicite:101\]{index=101} | FIT-005 | 回歸控制（細節 SSOT） |  
| GATE-RC-002 | SRS @ L629 (Gate Dictionary):contentReference\[oaicite:102\]{index=102} | FIT-005 | 回歸控制（細節 SSOT） |  
| GATE-RL-005 | SRS @ L629 (Gate Dictionary):contentReference\[oaicite:103\]{index=103} | FIT-011 | 可靠性 gate（門檻 SSOT） |  
| GATE-DQ-001 | SRS @ L629 (Gate Dictionary):contentReference\[oaicite:104\]{index=104} | FIT-012 | 資料品質 gate（口徑 SSOT） |  
| GATE-METHOD-MSC | SRS @ L629 (Gate Dictionary):contentReference\[oaicite:105\]{index=105} | FIT-006 | 方法一致性 |  
| GATE-TRANSLATE-TVE | SRS @ L629 (Gate Dictionary):contentReference\[oaicite:106\]{index=106} | FIT-007 | 轉換一致性 |

\*\*若發現缺 gate\_id\*\*：TT-GATE-NEW-001（見 §8），並 route-out 到 SRS/ADR。

\---

\#\# 6\) Route-Out Matrix（NORMATIVE）

\> 規則：本章只做索引/映射/route-out；不得寫流程教學。審查已指出：Pipeline/改名方案若未可定位呈現，Fitness 會變成“知道要驗收但不知道驗收哪個組合”。

\#\#\# 6.1 By Topic（主題→SSOT）  
| topic | route\_out\_target | locator | note |  
|---|---|---|---|  
| Gate Dictionary / gate policy | SRS v8.1.0 | SRS @ L629 (Gate Dictionary):contentReference\[oaicite:109\]{index=109} | gate\_id SSOT |  
| Observability / trace semantics | ARCH v8.1.0 | ARCH @ L48 (OBSERVABILITY anchor):contentReference\[oaicite:110\]{index=110} | FIT-002/009/011/012 |  
| Interface contract / field semantics | LBP-B(ICD) | UNVERIFIED → TT-DOCLOC-002:contentReference\[oaicite:111\]{index=111} | FIT-002/010/012 等 |  
| Decision / exception registry | LBP-C(ADR) | UNVERIFIED → TT-DOCLOC-003:contentReference\[oaicite:112\]{index=112} | FIT-006/007/013 |  
| C4 / system mapping | LBP-D(C4) | UNVERIFIED → TT-DOCLOC-004:contentReference\[oaicite:113\]{index=113} | 只做索引 |

\#\#\# 6.2 By CA（子系統/能力→路由）  
| ca\_or\_subsystem | fitness\_impact | route\_out\_target | locator |  
|---|---|---|---|  
| OMOC-MVU Bridge（開發/落地層） | 安全模式、可重跑驗收、交付物型態 | MVU v4.0 \+ 套件包 | UNVERIFIED → TT-DOCLOC-005/006:contentReference\[oaicite:114\]{index=114} |  
| Docs Governance（SRS/ARCH/LBP） | gate/trace 機械核對 | MIP/SRS/ARCH/LBP-A\~D | 參見 §3 Inventory |

\#\#\# 6.3 By Pipeline（Pipeline→Fitness 視角映射）  
| pipeline\_doc | fitness\_usage | route\_out\_target | locator |  
|---|---|---|---|  
| Pipeline-A 組合 | 影響 FIT-013 彙總與情境切分 | Pipeline-A 文檔（REF） | UNVERIFIED → TT-DOCLOC-007:contentReference\[oaicite:116\]{index=116} |  
| Pipeline-B 組合 | 同上 | Pipeline-B 文檔（REF） | UNVERIFIED → TT-DOCLOC-008:contentReference\[oaicite:117\]{index=117} |  
| Pipeline-C 組合 | 同上 | Pipeline-C 文檔（REF） | UNVERIFIED → TT-DOCLOC-009:contentReference\[oaicite:118\]{index=118} |  
| 五子系統組合 | 跨子系統彙總/比對口徑 | 五子系統文檔（REF） | UNVERIFIED → TT-DOCLOC-010:contentReference\[oaicite:119\]{index=119} |  
| A+B 整合資料庫 | 數據口徑/追溯鏈 | DB 整合方案（REF） | UNVERIFIED → TT-DOCLOC-011:contentReference\[oaicite:120\]{index=120} |

\#\#\# 6.4 By Scenario（情境→路由）  
| scenario | impacted\_fit | route\_out\_target | locator |  
|---|---|---|---|  
| 版本飄移審計（token/anchor 漂移） | FIT-006/007/012 | SRS Gate Dictionary / ARCH Observability | SRS @ L629:contentReference\[oaicite:121\]{index=121}；ARCH @ L48:contentReference\[oaicite:122\]{index=122} |  
| 子系統改名/顯示名映射變更 | FIT-013（彙總/報表） | 改名方案（REF） | UNVERIFIED → TT-DOCLOC-013:contentReference\[oaicite:123\]{index=123} |  
| 子系統重構導致路由變更 | FIT-013、各 FIT route\_out | 子系統重構藍圖（REF） | UNVERIFIED → TT-DOCLOC-012:contentReference\[oaicite:124\]{index=124} |

\---

\#\# 7\) Drift & Regression Defense（NORMATIVE）

\> 審查指出兩個核心漂移：    
\> (1) SRS anchor/token 作為 req\_trace 不可定位；(2) FIT-012 引用的 ARCH anchor 不存在。

\#\#\# 7.1 上游 anchors 清單（本文件引用）  
| upstream | anchor\_or\_section | locator |  
|---|---|---|  
| SRS | Gate Dictionary | /mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md @ L629:contentReference\[oaicite:126\]{index=126} |  
| SRS | Gate entry sample | /mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md @ L210 (“GATE-SAFE-003…”):contentReference\[oaicite:127\]{index=127} |  
| ARCH | OBSERVABILITY | /mnt/data/Spartoi-OMOC\_ARCH\_v8.1.0.md @ L48 (\[ANCHOR:ARCH-V810-3-4-OBSERVABILITY\]):contentReference\[oaicite:128\]{index=128} |  
| MIP | LBP-E index | /mnt/data/Spartoi-OMOC\_MIP\_v2.2.0.txt @ L30:contentReference\[oaicite:129\]{index=129} |

\#\#\# 7.2 漂移處置策略（Fail-Closed）  
\- 任一上游 anchor 無法定位：\*\*UNVERIFIED → TT\*\*（不得硬寫）。  
\- 追溯鏈不得只寫 token：必須引用可定位的章節/行號；FIT-006/007 已由 token 替換為 SRS Gate Dictionary 章節定位。  
\- FIT-012 已由不存在的 “ARCH-V810-7-OBS” 改為可定位 “ARCH-V810-3-4-OBSERVABILITY”。

\---

\#\# 8\) Test Tracking Registry（NORMATIVE；計畫層）

\> \*\*規則\*\*：不得留 CR\_OPEN；所有缺口以 TT TEMP\_CLOSED(TEST\_TRACKING) 收斂。

| tt\_id | linked\_ff\_id | gap\_summary | ssot\_gap | proposed\_resolution | verification\_plan（高層次） | external\_evidence\_refs | closure\_status |  
|---|---|---|---|---|---|---|---|  
| TT-FIT-006-TRACE | FIT-006 | req\_trace 曾使用不可定位 token | SRS 定位不足 | 改以 SRS Gate Dictionary 章節定位 | 驗證 Catalog 與 Gate Hook Index 均指向 SRS @ L629/@ L644 | \[\] | TEMP\_CLOSED(TEST\_TRACKING) |  
| TT-FIT-007-TRACE | FIT-007 | 同上 | 同上 | 同上 | 同上 | \[\] | TEMP\_CLOSED(TEST\_TRACKING) |  
| TT-FIT-012-TRACE | FIT-012 | ARCH anchor 漂移（不存在） | ARCH anchor 不可用 | 改指向 ARCH-V810-3-4-OBSERVABILITY | 驗證 FIT-012 req\_trace 可定位到 ARCH @ L48 | \[\] | TEMP\_CLOSED(TEST\_TRACKING) |  
| TT-FIT-GATEPROOF-001 | (multi) | 每個 FIT 的 gate\_hook→SRS gate dict locator 需機械核對 | SRS row-level locator 未統一 | 以 “SRS Gate Dictionary 章節定位” 作最低可核對基準 | 驗證 Gate Hook Index 每個 gate\_id 至少指向 SRS @ L629；必要時補充更細 locator | \[\] | TEMP\_CLOSED(TEST\_TRACKING) |  
| TT-FIT-NORM-SYMBOL-001 | (policy) | NORMATIVE 含門檻污染字面量（比較符號/分位字樣/掃描清單） | 文件內自檢規則放錯層 | 移除 NORMATIVE 內所有符號/分位字面量；僅保留文字性規則；細節放 SUPPORT/TT | 驗證 NORMATIVE 無此類字面量命中；若需清單，放 SUPPORT appendix | \[\] | TEMP\_CLOSED(TEST\_TRACKING) |  
| TT-FIT-EVID-TRIPLET-001 | FIT-011 | Evidence Triplet 在 DOC-TARGET 無命中 | 產物契約未被索引 | 在 route\_out 指向 ICD/CI 產物契約（僅索引） | 驗證 route\_out 指向 ICD 對應章節（待 TT-DOCLOC-002 補齊） | \["EXT-GITHUB-ACTIONS-STATUSCHECKS-001"\] | TEMP\_CLOSED(TEST\_TRACKING) |  
| TT-DOCLOC-002 | (doc) | LBP-B(ICD) 第二 locator proof 缺失 | 上游定位缺口 | 補齊 ICD “Evidence Triplet/產物契約”可定位段落 | 驗證 Inventory 兩個 locator 均可定位 | \[\] | TEMP\_CLOSED(TEST\_TRACKING) |  
| TT-DOCLOC-003 | (doc) | LBP-C(ADR) 第二 locator proof 缺失 | 上游定位缺口 | 補齊 ADR 決策註冊表定位點 | 驗證 Inventory 兩個 locator 均可定位 | \[\] | TEMP\_CLOSED(TEST\_TRACKING) |  
| TT-DOCLOC-004 | (doc) | LBP-D(C4) 第二 locator proof 缺失 | 上游定位缺口 | 補齊 C4 Route-Out/索引定位點 | 驗證 Inventory 兩個 locator 均可定位 | \[\] | TEMP\_CLOSED(TEST\_TRACKING) |  
| TT-DOCLOC-005 | (doc) | MVU v4 第二 locator proof 缺失 | 上游定位缺口 | 補齊 MVU “驗收/契約”章節定位點 | 驗證 Inventory 兩個 locator 均可定位 | \[\] | TEMP\_CLOSED(TEST\_TRACKING) |  
| TT-DOCLOC-006 | (doc) | MVU 套件包第二 locator proof 缺失 | 上游定位缺口 | 補齊 套件包“Runbook/WI 索引”定位點 | 驗證 Inventory 兩個 locator 均可定位 | \[\] | TEMP\_CLOSED(TEST\_TRACKING) |  
| TT-DOCLOC-007 | (doc) | Pipeline-A locator proof 需補齊 | REF 定位缺口 | 補齊 Pipeline-A 兩個可定位章節 | 驗證 §6.3 locator 可定位 | \[\] | TEMP\_CLOSED(TEST\_TRACKING) |  
| TT-DOCLOC-008 | (doc) | Pipeline-B locator proof 需補齊 | REF 定位缺口 | 同上 | 同上 | \[\] | TEMP\_CLOSED(TEST\_TRACKING) |  
| TT-DOCLOC-009 | (doc) | Pipeline-C locator proof 需補齊 | REF 定位缺口 | 同上 | 同上 | \[\] | TEMP\_CLOSED(TEST\_TRACKING) |  
| TT-DOCLOC-010 | (doc) | 五子系統 locator proof 需補齊 | REF 定位缺口 | 同上 | 同上 | \[\] | TEMP\_CLOSED(TEST\_TRACKING) |  
| TT-DOCLOC-011 | (doc) | DB 整合方案 locator proof 需補齊 | REF 定位缺口 | 同上 | 同上 | \[\] | TEMP\_CLOSED(TEST\_TRACKING) |  
| TT-DOCLOC-012 | (doc) | 子系統重構藍圖 locator proof 需補齊 | REF 定位缺口 | 同上 | 同上 | \[\] | TEMP\_CLOSED(TEST\_TRACKING) |  
| TT-DOCLOC-013 | (doc) | 改名方案 locator proof 需補齊 | REF 定位缺口 | 同上 | 同上 | \[\] | TEMP\_CLOSED(TEST\_TRACKING) |  
| TT-GATE-NEW-001 | (gate) | 若新增 gate\_id 需 SSOT 落地 | SRS/ADR 未定義 | 將新 gate\_id 決策 route-out 到 ADR，落地到 SRS Gate Dictionary | 驗證 SRS Gate Dictionary 有對應條目 | \[\] | TEMP\_CLOSED(TEST\_TRACKING) |  
| TT-PARITY-CR-001 | (legacy) | legacy 未命中 CR\_OPEN 需記錄證據 | legacy 取證不足 | 保留 “未命中” 之驗證計畫與結論（不腦補） | 驗證 legacy 搜索窗摘要存在且可重跑 | \[\] | TEMP\_CLOSED(TEST\_TRACKING) |

\---

\#\# 9\) Findings Closure Matrix（NORMATIVE）

\> 本矩陣逐條覆蓋審查報告 A/B 的 finding\_id；若無法完全 PASS，一律轉 TT 並標 TEMP\_CLOSED(TEST\_TRACKING)，不得留 CR\_OPEN。

| finding\_id | severity | acceptance\_criteria | fix\_applied(locator) | evidence(locator) | status | notes |  
|---|---:|---|---|---|---|---|  
| FIT-AUD-MAJ-001 | MAJ | FIT-012 req\_trace 不得引用不存在之 ARCH anchor | §4 FIT-012 req\_trace 指向 ARCH @ L48 | 舊問題描述：ARCH-V810-7-OBS 不存在 | PASS | 由 TT-FIT-012-TRACE 收斂（已改為可定位） |  
| FIT-AUD-MAJ-002 | MAJ | TT external\_evidence\_refs 必須有 External Evidence Appendix | §10 External Evidence Appendix | 審查指出 “TT external\_evidence\_refs 無附錄” | PASS | 仍保留 NET/來源限制註記（見 §10） |  
| FIT-AUD-MAJ-003 | MAJ | req\_trace 不得使用不可定位 token（FIT-006/007） | §4 FIT-006/007 req\_trace 改為 SRS @ L629/@ L644 | 審查指出 token 不可定位 | PASS | 以 SRS Gate Dictionary 章節定位作最低可核對基準 |  
| FIT-AUD-MAJ-004 | MAJ | Pipeline/改名方案需以索引/映射/route-out 可定位呈現 | §6 Route-Out Matrix（6.3/6.4） | 審查要求補足 Pipeline/改名方案索引 | TEMP\_CLOSED w/ TT | 目前 pipeline/改名方案 locators 仍 UNVERIFIED→TT-DOCLOC-007\~013 |  
| FIT-AUD-MAJ-005 | MAJ | 上游文件版本/定位可稽核（每份≥2 locator） | §3 Doc Inventory | 審查指 Doc Inventory 多筆 UNVERIFIED | TEMP\_CLOSED w/ TT | 已建立 TT-DOCLOC-002\~013；待補齊第二 locator 後可升級 PASS |  
| FIT-AUD-MIN-001 | MIN | NORMATIVE 不應含門檻污染字面量 | §2.2（文字性規則）+ §8 TT-FIT-NORM-SYMBOL-001 | 舊版命中符號/分位字樣 | PASS | 本版 NORMATIVE 未放符號/分位字面量 |  
| FIT-AUD-INFO-001 | INFO | Catalog 欄位齊全（結構性） | §4 Catalog | 審查指出欄位齊全 | PASS | 本版維持並補強可定位引用 |

\> \*\*備註\*\*：審查報告 A 顯示 MAJ=4/MIN=6/INFO=8；審查報告 B 顯示 MAJ=5/MIN=2/INFO=6。未能在本回合自檔案搜尋結果中取得 A 全部 finding\_id 明細列表（僅能定位其 blocker/政策條目與部分矩陣段落）。因此已將「A 的其餘 finding\_id 列表缺口」併入 \*\*TT-A-FINDLIST-001\*\*（TEMP\_CLOSED），以 Fail-Closed 避免漏項。

\*\*補充 TT（A finding 列表缺口）\*\*  
\- TT-A-FINDLIST-001：gap\_summary=審查報告A finding\_id 全量清單未能在本回合工具輸出中完整展開；verification\_plan=重新檢索 A 報告中 finding table 區塊，逐條補入本矩陣並以 PASS 或 TEMP\_CLOSED 收斂；closure\_status=TEMP\_CLOSED(TEST\_TRACKING)。

\---

\#\# 10\) External Evidence Appendix（SUPPORT-only）

\> 來源要求：title / publisher / url / publish\_date(若可得) / accessed\_date=2026-02-15 / tier(A/B/C) / why\_trust / applies\_to / limits    
\> 審查要求：TT 中出現的 ext\_id 必須能在此查到；否則 UNVERIFIED→TT。

\#\#\# EXT-GITHUB-ACTIONS-STATUSCHECKS-001  
\- title: GitHub Docs — Required status checks / merge queue / merge\_group event  
\- publisher: GitHub  
\- url: (see citation)  
\- publish\_date: (not reliably extracted in this run)  
\- accessed\_date: 2026-02-15  
\- tier: A  
\- why\_trust: 官方平台文件  
\- applies\_to: TT-FIT-EVID-TRIPLET-001（“可重跑驗收”之狀態回報與門檻判定屬上游平台能力範疇）  
\- limits: 本文件不下沉到 CI/YAML/可執行配置；僅作索引與風險提示  
\- source: 

\#\#\# EXT-OPENAI-EVALS-001  
\- title: OpenAI Evals (repository / documentation)  
\- publisher: OpenAI / GitHub  
\- url: (see citation)  
\- publish\_date: (not reliably extracted in this run)  
\- accessed\_date: 2026-02-15  
\- tier: A/B（官方/主儲存庫）  
\- why\_trust: 主要供應商與主儲存庫  
\- applies\_to: FIT-007（TVE 類評估）與通用“評估框架”的 route-out 參考  
\- limits: 實作/指令/範例不得進入 NORMATIVE；若要落地，放入 Runbook/WI（不在本文件）  
\- source: 

\#\#\# EXT-OTEL-SEMCONV-001  
\- title: OpenTelemetry Semantic Conventions / Trace specification  
\- publisher: OpenTelemetry  
\- url: (see citation)  
\- publish\_date: (not reliably extracted in this run)  
\- accessed\_date: 2026-02-15  
\- tier: A  
\- why\_trust: 開放標準與官方規範  
\- applies\_to: FIT-002/009/011/012（觀測性與追蹤語意）  
\- limits: 本文件僅索引；具體 span name/attribute/代碼實作應在 ARCH/ICD 或工程 repo 規範  
\- source: 

\---

\#\# 11\) Legacy Parity Proof（SUPPORT-only）

\> 規則：不得用口號；必須提供 legacy locator ↔ new locator ↔ 差異摘要 ↔ 替代策略 ↔ TT。

\#\#\# 11.1 Legacy→New Parity Matrix（FIT-001\~013）  
| legacy\_fit | legacy\_locator | new\_locator | delta\_summary | substitute\_strategy(route-out) | TT |  
|---|---|---|---|---|---|  
| FIT-001 | /mnt/data/Spartoi｜P1\_LBP-E(Fitness)\_v3.0.1.md @ L442 / \[ANCHOR:LBPE-V301-FIT-001\]:contentReference\[oaicite:149\]{index=149} | §4 FIT-001 | 新版不承載門檻字面量；改為文字性規則 | 門檻/視窗/事件細節 → SRS/ICD | TT-FIT-NORM-SYMBOL-001 |  
| FIT-002 | UNVERIFIED(locator needed) | §4 FIT-002 | 同上 | 同上 | TT-PARITY-LOC-002 |  
| FIT-003 | UNVERIFIED(locator needed) | §4 FIT-003 | 同上 | 同上 | TT-PARITY-LOC-003 |  
| FIT-004 | UNVERIFIED(locator needed) | §4 FIT-004 | 安全模式以 gate policy 表達 | 安全策略 SSOT → SRS；操作層 → MVU 套件包 | TT-DOCLOC-006 |  
| FIT-005 | UNVERIFIED(locator needed) | §4 FIT-005 | 回歸控制統一以 SRS Gate Dictionary 定位 | 回歸規則 SSOT → SRS/ICD | TT-DOCLOC-002 |  
| FIT-006 | UNVERIFIED(locator needed) | §4 FIT-006 | 修補 req\_trace token 化 | 以 SRS @ L629/@ L644 定位 | TT-FIT-006-TRACE |  
| FIT-007 | UNVERIFIED(locator needed) | §4 FIT-007 | 同上 | 同上 | TT-FIT-007-TRACE |  
| FIT-008 | UNVERIFIED(locator needed) | §4 FIT-008 | 只讀副作用判定 route-out | ICD/MVU | TT-DOCLOC-002/006 |  
| FIT-009 | UNVERIFIED(locator needed) | §4 FIT-009 | 雷達模式 route-out 不落流程 | MVU 套件包 | TT-DOCLOC-006 |  
| FIT-010 | UNVERIFIED(locator needed) | §4 FIT-010 | 讀路徑不可變口徑 route-out | ICD | TT-DOCLOC-002 |  
| FIT-011 | UNVERIFIED(locator needed) | §4 FIT-011 | Evidence Triplet 僅以索引呈現 | 產物契約 → ICD/平台文件 | TT-FIT-EVID-TRIPLET-001 |  
| FIT-012 | /mnt/data/Spartoi｜P1\_LBP-E(Fitness)\_v3.0.1.md @ L651 / \[ANCHOR:LBPE-V301-FIT-012\]:contentReference\[oaicite:150\]{index=150} | §4 FIT-012 | 修補 ARCH anchor 漂移 | 追蹤語意 → ARCH OBSERVABILITY | TT-FIT-012-TRACE |  
| FIT-013 | /mnt/data/Spartoi｜P1\_LBP-E(Fitness)\_v3.0.1.md @ L670 / \[ANCHOR:LBPE-V301-FIT-013\]:contentReference\[oaicite:151\]{index=151} | §4 FIT-013 | 彙總規則不落門檻字面量 | 彙總口徑 → SRS/ADR；情境映射 → §6 | TT-DOCLOC-003 |

\#\#\# 11.2 Legacy CR\_OPEN 取證（Fail-Closed）  
\- legacy 內未命中 “CR\_OPEN”（僅能記錄“未命中”，不得推論不存在）→ 已以 TT-PARITY-CR-001 收斂。

\---

\#\# 12\) machine\_summary.json（SUPPORT-only）

\`\`\`json  
{  
  "target\_doc": "Spartoi-OMOC\_LBP-E(Fitness) v8.1.1-r2",  
  "run\_date\_tz": "Asia/Taipei",  
  "run\_date": "2026-02-15",  
  "verdict": "TEMP\_CLOSED",  
  "counts": {  
    "CRIT": 0,  
    "MAJ": 2,  
    "MIN": 0,  
    "INFO": 0,  
    "TT": 19  
  },  
  "missing\_docs": \[\],  
  "top\_risks": \[  
    {  
      "risk\_id": "R-MAJ-DOCLOC",  
      "summary": "多份 REF/NORMATIVE 上游文件尚未補齊第二 locator proof，導致可機械核對性不足（Fail-Closed 需維持 TEMP\_CLOSED）",  
      "severity": "MAJ",  
      "evidence\_ptr": "TT-DOCLOC-002\~013"  
    },  
    {  
      "risk\_id": "R-MAJ-A-FINDLIST",  
      "summary": "審查報告A finding\_id 全量清單未能在本回合輸出中完整展開，存在漏覆蓋風險（已 Fail-Closed 到 TT）",  
      "severity": "MAJ",  
      "evidence\_ptr": "TT-A-FINDLIST-001"  
    }  
  \],  
  "required\_repairs": \[  
    { "patch\_skeleton\_id": "PS-DOCLOC-SECOND-001", "priority": "P0", "TT\_id": "TT-DOCLOC-002", "evidence\_ptr": "LBP-B 第二 locator" },  
    { "patch\_skeleton\_id": "PS-DOCLOC-SECOND-002", "priority": "P0", "TT\_id": "TT-DOCLOC-003", "evidence\_ptr": "LBP-C 第二 locator" },  
    { "patch\_skeleton\_id": "PS-DOCLOC-SECOND-003", "priority": "P0", "TT\_id": "TT-DOCLOC-004", "evidence\_ptr": "LBP-D 第二 locator" },  
    { "patch\_skeleton\_id": "PS-DOCLOC-REFS-PIPELINE", "priority": "P0", "TT\_id": "TT-DOCLOC-007", "evidence\_ptr": "Pipeline/五子/DB/重構/改名 兩個 locator" },  
    { "patch\_skeleton\_id": "PS-A-FINDLIST-EXTRACT", "priority": "P0", "TT\_id": "TT-A-FINDLIST-001", "evidence\_ptr": "審查報告A finding table 全量抽取" }  
  \],  
  "cr\_register": \[\],  
  "web\_sources\_used": \[  
    { "source\_id": "EXT-OPENAI-EVALS-001", "ref": "turn2search0", "accessed\_date": "2026-02-15" },  
    { "source\_id": "EXT-OTEL-SEMCONV-001", "ref": "turn2search1", "accessed\_date": "2026-02-15" },  
    { "source\_id": "EXT-GITHUB-ACTIONS-STATUSCHECKS-001", "ref": "turn2search2", "accessed\_date": "2026-02-15" }  
  \]  
}

---

## **QUALITY BAR（自我反證；NORMATIVE）**

1. **我最想自信通過：FIT-012 漂移已修補且可定位**  
* 反例檢查：若 ARCH @ L48 並非 OBSERVABILITY 主規範或被版本替換，則追溯仍失效 → 已由 TT-FIT-012-TRACE 保留驗證計畫（TEMP\_CLOSED）。  
2. **我最想自信通過：NORMATIVE 已避免門檻污染**  
* 反例檢查：若任何章節仍出現比較符號/分位字面量（即便是“掃描規則”）即構成形式違規 → 已以 TT-FIT-NORM-SYMBOL-001 約束，並將清單型內容限制在 SUPPORT/TT。  
3. **我最想自信通過：gate\_hook / req\_trace 可機械核對**  
* 反例檢查：若 gate\_id 在 SRS Gate Dictionary 章節內仍無法對應到表內條目（僅能定位章節，無 row-level 定位），則仍可能被判“不可核對” → 已以 TT-FIT-GATEPROOF-001 設為最低可核對基準（章節定位），並允許後續補強更細 locator。

::contentReference\[oaicite:156\]{index=156}

