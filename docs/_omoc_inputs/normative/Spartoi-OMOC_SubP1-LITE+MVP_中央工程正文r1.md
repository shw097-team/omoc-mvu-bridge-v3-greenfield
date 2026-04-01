# **《Spartoi-OMOC\_SubP1-LITE+MVP\_中央工程正文》**

\[ANCHOR:GCERM-V220R1-00-COVER\]

## **目錄（TOC｜anchors-first）**

1. 導讀、強制檢索順序、AI/LLM 使用規則、Quick Index、Anti-Hallucination Rules  
2. 文件後設資料、版本、doc\_id、status、supersedes、scope、stable\_id policy  
3. Inputs Manifest（FOUND / MISSING / UNVERIFIED）與 Missing Source Recovery Register  
4. Authority Stack、Conflict Rules、Fail-Closed、One-Rule-One-Place、No-Source-No-Norm、No-Anchor-No-Claim、Authority Crosswalk  
5. 5-Pack 角色邊界與 One-rule-one-owner matrix  
6. 現行工具鏈裁決章（Primary / Slots / Fallback / Archived）  
7. 舊 P1 / 古老需求 / 舊方案之法律地位、合法取代與封存政策  
8. 15CA 白名單、命名體系、display\_name / macro\_module\_name / stable\_id policy、5+1 宏模組  
9. 全域工件分類、資料主幹、ReferenceDB / RunLedger / SpecPack / EvidencePack 契約  
10. Pipeline A/B/C \+ 五子系統 \+ A+B DB 的整合模型與 route-out / ownership  
11. 七點需求項全量工程正文  
12. 七點需求項 closure matrix  
13. 15 子系統開發需求工程對照矩陣（machine-auditable）  
14. 15 子系統逐一正文要求  
15. Gate 三層架構、8 個固定模板 Gate 正文、alias resolution table、UI Gate / GOVERN Gate / 其他 alias 正式解析  
16. Threshold Register、CR\_OPEN / CONFIGURE / TT 規則、40% 門檻與信心條件、XQ parity 完整驗收條文  
17. UI 單一入口 / 一鍵閉環 / 每步 evidence、GOVERN 自動整理全部資料、XQ 唯一下單端、HITL / EXECUTE 邊界、T0/T1 雙路由要求、Scenario Parity Map  
18. MC4 / SS-Lite / WP.Master 中央定義 vs 本地綁定、local obligations、禁止事項  
19. Clause-level absorption ledger  
20. Legacy Archive Annex、Archive Disposition Matrix、Supersede / Traceability / Removed-from-MVP-Scope register  
21. Document Verdict / Release Verdict、Release Guard、Closure Dashboard、TT Register、Self-Audit Checklist、Issue Closure Table、ChangeLog

---

# **0\. 導讀、強制檢索順序、AI/LLM 使用規則、Quick Index、Anti-Hallucination Rules**

\<a id="anchor-gcerm-v220r1-00-reader"\>\</a\>  
\[ANCHOR:GCERM-V220R1-00-READER\]

## **0.1 文件定位**

本正文是 SubP1-LITE+MVP 在中央工程正文層的唯一 SSOT。  
本正文處理的唯一對象是：

* 15 子系統中央義務  
* 七點需求項  
* 8 個固定模板 Gate  
* threshold register  
* UI / GOVERN / XQ / HITL / T0T1 安全與路由規則  
* 15CA auditable matrix  
* clause-level absorption / archive / verdict / TT discipline

本正文不是：

* Package A 的索引替代品  
* Package B 的 schema / gate registry / TT engine 原文  
* Package C 的 HOW 憲法  
* Package D 的工廠 HOW  
* Package E 的 validator / release\_guard engine  
* 任一 legacy 文檔的原封合併貼上版

## **0.2 強制檢索順序**

1. 先讀本章與第 3 章 Authority Stack。  
2. 欲判定某規則是否為中央定義，先查第 3、4、10、14、15、16、17 章。  
3. 欲查 schema / evidence schema / TT state machine / drift governance，一律 route-out 至 Package B。  
4. 欲查 devcontainer / workflow / checks manifest / adapters，一律 route-out 至 Package D。  
5. 欲查 manifest / validator / release\_guard / MC4 / WP.Master / SS-Lite 正式契約，一律 route-out 至 Package E。  
6. 欲查 HOW / CLI / YAML / click path / 操作步驟，一律 route-out 至 Dev/Ops RBWI。  
7. 欲追舊規則去向、封存、替代關係，查第 6、18、19、20 章。  
8. 無 direct source、無 owner、無 validator、無 release guard 的終局主張，一律不成立。

## **0.3 AI/LLM 使用規則**

1. No-Source-No-Norm。  
2. No-Anchor-No-Claim。  
3. No-Validator-No-Release-Claim。  
4. No Summary-Only Evidence。  
5. One-Rule-One-Place。  
6. document-level replaceability ≠ release-level readiness。  
7. 對未授權數值，一律標記 `CONFIGURE_REQUIRED`、`CR_OPEN→TT`、`TEMP_CLOSED` 或 `FAIL_CLOSED`，不得自創。  
8. alias 未解析，不得執行 Gate。  
9. legacy 條目未明示 rewritten / archived / route-out / traceability\_only / tt，不得假裝不存在。  
10. 支援檢索設計採 Docs-as-Code × Diátaxis × GraphRAG / RAPTOR / CRAG × RAG-Triad，但這些是檢索與防遺漏設計，不是上位規範來源。

## **0.4 Quick Index**

* `Authority Stack` → `[ANCHOR:GCERM-V220R1-03-AUTHORITY]`  
* `Pack owner matrix` → `[ANCHOR:GCERM-V220R1-04-OWNER-MATRIX]`  
* `toolchain ruling` → `[ANCHOR:GCERM-V220R1-05-TOOLCHAIN]`  
* `legacy legal status` → `[ANCHOR:GCERM-V220R1-06-LEGACY-LEGAL]`  
* `15CA matrix` → `[ANCHOR:GCERM-V220R1-12-15CA-MATRIX]`  
* `seven requirements` → `[ANCHOR:GCERM-V220R1-10-SEVEN-REQS]`  
* `closure matrix` → `[ANCHOR:GCERM-V220R1-11-CLOSURE]`  
* `8 gates` → `[ANCHOR:GCERM-V220R1-14-GATE-TEMPLATES]`  
* `threshold register` → `[ANCHOR:GCERM-V220R1-15-THRESHOLD-REGISTER]`  
* `XQ parity` → `[ANCHOR:GCERM-V220R1-15-XQ-PARITY]`  
* `UI` → `[ANCHOR:GCERM-V220R1-16-UI]`  
* `GOVERN` → `[ANCHOR:GCERM-V220R1-16-GOVERN]`  
* `scenario parity` → `[ANCHOR:GCERM-V220R1-16-SCENARIO-PARITY]`  
* `MC4 / WP.Master / SS-Lite` → `[ANCHOR:GCERM-V220R1-17-MC4-WP]`  
* `absorption ledger` → `[ANCHOR:GCERM-V220R1-18-ABSORPTION]`  
* `archive disposition` → `[ANCHOR:GCERM-V220R1-19-ARCHIVE-DISPOSITION]`  
* `verdict / TT / release guard` → `[ANCHOR:GCERM-V220R1-20-VERDICT]`

## **0.5 Anti-Hallucination Rules**

* 無中央條文，不得宣稱已覆蓋。  
* 無 direct locator，不得宣稱 exact clause absorbed。  
* 無 release evidence，不得宣稱 release-ready。  
* 無 capability profile / parity report，不得宣稱 XQ parity ready。  
* 未經合法降級 / 封存 / route-out 的 legacy 設計，不得自動蒸發。  
* Package C、Codespaces、old Agent flow、desktop GUI 等舊語義，不得借模糊描述回流正文。

**source\_ptr:**

* `Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文_v2.1.0-r1`  
* `Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文_v1.0.0`  
* `Spartoi｜SubP1-LITE+MVP 開發中央工程正文_v1.1.0`  
* `Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文_v2.1.0-r1_審查報告`  
  Supported by  
   Spartoi｜SubP1-LITE+MVP 開發中央工程正文\_v…

   Spartoi｜SubP1-LITE+MVP 開發中央工程正文\_v…

   Spartoi-OMOC\_SubP1-LITE+MVP子系統\_…

---

# **1\. 文件後設資料、版本、doc\_id、status、supersedes、scope、stable\_id policy**

\<a id="anchor-gcerm-v220r1-01-meta"\>\</a\>  
\[ANCHOR:GCERM-V220R1-01-META\]

| field | value |
| ----- | ----- |
| external\_name | Spartoi-OMOC\_SubP1-LITE+MVP\_中央工程正文 |
| internal\_short\_name | SOMOC-GCERM |
| doc\_id | SOMOC-SUBP1MVP-GCERM.v2.2.0-r1 |
| version | v2.2.0-r1 |
| status | DEFINITIVE\_WITH\_BOUND\_TT / DOCUMENT\_PASS / RELEASE\_FAIL\_CLOSED |
| timezone | Asia/Taipei |
| default\_rule | Fail-Closed |
| document\_primary\_key | doc\_id |
| stable\_id\_policy | 只對 15× `CA-*` 使用 stable\_id；本正文自身不以 stable\_id 為主鍵 |
| scope | 中央工程正文、七點需求項、15CA auditable matrix、8 gate templates、threshold register、UI/GOVERN/XQ/HITL/T0T1 規則、MC4/SS-Lite/WP.Master 中央定義、absorption ledger、archive disposition、verdict/TT/release guard |
| supersedes | `SOMOC-SUBP1MVP-GCERM.v2.1.0-r1`、`SOMOC-SUBP1MVP-GCERM.v1.0.0`、`SPLMVP-DRM v1.1.0` 於中央工程正文範圍 |
| replaceability\_policy | document-level 可裁決；release-level 必須另經 repo evidence \+ manifest \+ validator \+ required checks \+ release guard 裁決 |

## **1.1 正式取代聲明**

本正文在**中央工程正文範圍**內，重寫並吸收：

* `GCERM v2.1.0-r1`  
* `GCERM v1.0.0`  
* `Spartoi｜SubP1-LITE+MVP 開發中央工程正文_v1.1.0`  
* `Spartoi｜SubP1-LITE+MVP 開發 RUNBOOK & WI_v1.4.0` 之中央義務部分  
* `《Spartoi｜SubP1-LITE + MVP + Agent_討論整合版_v1.0.0》`  
* `需求列表 A / B`  
* `需求總表 A / B`  
* `參考方案合冊`所含 8 類方案文檔  
* `台股當沖 / 各階段操作流程 / ICT 補件`於中央工程義務範圍內之內容

## **1.2 不取代範圍**

本正文不取代：

* `Spartoi-OMOC_SSOT_合冊` 全文  
* `Spartoi-OMOC_LBP_合冊` 全文  
* Package B / D / E 的 owner registry / schema / engine  
* Dev/Ops RBWI 的 HOW  
* repo 實體存在性、validator 實跑結果、required checks 結果

## **1.3 版本裁決理由**

相對 `v2.1.0-r1`，本版新增並固定以下終局裁決：

1. 權威順位正式改寫為：`SSOT_合冊 > Pack A-E+工程指南_合冊 > SubP1-LITE+MVP_合冊 > OMOC_合冊 > 參考方案合冊 > 本中央正文對舊體系的 absorb/archive/route-out/supersede 條文 > 舊 P1 / 舊需求 / 補件文檔`。  
2. `P1_SRS v7.0.0` 與 `P1_ARCH v6.0.0-r5` 自本版起均明文降為 `LEGACY_BASELINE / TRACEABILITY_ONLY`，其現行合法替代者分別為 `Spartoi-OMOC_SRS_v8.1.0` 與 `Spartoi-OMOC_ARCH_v8.1.0`。  
3. Package C 的法律角色不再曖昧；其唯一合法角色為 `索引 / 整合 / 補充入口 / 交接接口 / TT export summary / route-out 導航層`。  
4. 舊桌面 GUI 唯一合法、舊 Agent/reviewer/blind flow/toggle、舊雲端沙盒與 old toolchain 全部完成 formal archive 或 supersede。  
5. `XQ 盤中量化交易平台 / 盤中量化交易模組 / 盤後量化選股模組` 明文標註為 `NEW_MVP_REQUIREMENT`，但受 XQ 唯一下單端、WATCH 不下單、EXECUTE 僅 HITL handoff、capability/parity 先決條件嚴格限制。  
6. 古老需求 `P0-Q&A_1114`、`Spartoi系統21項需求`、`P2/P2.5 WP單檔三合一` 完成法律地位裁決，不再允許越級污染現行施工。

**source\_ptr:**

* `Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文_v2.1.0-r1`  
* `Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文_v2.1.0-r1_最新裁決部分重寫`  
* `Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文_v2.1.0-r1_審查報告`  
  Supported by  
   Spartoi-OMOC\_SubP1-LITE+MVP子系統\_…

   Spartoi-OMOC\_SubP1-LITE+MVP子系統\_…

   Spartoi-OMOC\_SubP1-LITE+MVP子系統\_…

---

# **2\. Inputs Manifest（FOUND / MISSING / UNVERIFIED）與 Missing Source Recovery Register**

\<a id="anchor-gcerm-v220r1-02-inputs"\>\</a\>  
\[ANCHOR:GCERM-V220R1-02-INPUTS\]

## **2.1 Mandatory Inputs Manifest**

| order | document | availability | role | legal\_status\_in\_this\_manual |
| ----- | ----- | ----- | ----- | ----- |
| 1 | Spartoi-OMOC\_SubP1-LITE+MVP\_Pack A-E+工程指南\_合冊 | FOUND | NORMATIVE ENTRY | active |
| 2 | Spartoi-OMOC\_SSOT\_合冊 | FOUND | HIGHEST NORMATIVE | active |
| 3 | Spartoi-OMOC\_SubP1-LITE+MVP\_合冊 | FOUND | NORMATIVE | active |
| 4 | OMOC\_合冊 | FOUND | NORMATIVE UPSTREAM BOUNDARY | active |
| 5 | 參考方案合冊 | FOUND | DESIGN / IMPLEMENTATION SOURCE FAMILY | absorbed / route-out / archive per chapter 18 |
| 6 | Spartoi-OMOC\_SubP1-LITE+MVP\_中央工程正文\_v2.1.0-r1 | FOUND | LEGACY TARGET | superseded |
| 7 | Spartoi-OMOC\_SubP1-LITE+MVP\_中央工程正文\_v2.1.0-r1\_審查報告 | FOUND | AUDIT BASIS | absorbed |
| 8 | Spartoi-OMOC\_SubP1-LITE+MVP\_中央工程正文\_v2.1.0-r1\_最新裁決部分重寫 | FOUND | ADJUDICATION PATCH BASIS | absorbed |
| 9 | Spartoi-OMOC\_SubP1-LITE+MVP\_中央工程正文\_v1.0.0 | FOUND | LEGACY TARGET | superseded |
| 10 | Spartoi｜SubP1-LITE+MVP 開發中央工程正文\_v1.1.0 | FOUND | LEGACY TARGET | superseded in central scope |
| 11 | Spartoi｜SubP1-LITE+MVP 開發 RUNBOOK & WI\_v1.4.0（位於參考方案合冊） | FOUND | HOW / LEGACY ENGINEERING SOURCE | central duties absorbed; HOW route-out retained |
| 12 | 《Spartoi｜SubP1-LITE \+ MVP \+ Agent\_討論整合版\_v1.0.0》 | FOUND | LEGACY REQUIREMENT SOURCE | partially absorbed / partially archived |
| 13 | 《Spartoi｜SubP1-LITE+MVP\_開發Runbook & WI》需求列表A | FOUND | LEGACY REQUIREMENT SOURCE | absorbed / archived |
| 14 | 《Spartoi｜SubP1-LITE+MVP\_開發Runbook & WI》需求列表B | FOUND | LEGACY REQUIREMENT SOURCE | absorbed / archived |
| 15 | Spartoi｜SubP1-LITE+MVP\_需求總表A | FOUND | LEGACY REQUIREMENT SOURCE | absorbed / archived |
| 16 | Spartoi｜SubP1-LITE+MVP\_需求總表B | FOUND | LEGACY REQUIREMENT SOURCE | absorbed / archived / temp\_closed(108) |
| 17 | ICT 偽代碼 × 類 ICT／互補方法 × 台股微結構 三源融合方案 | FOUND | DOMAIN DESIGN SOURCE | absorbed as method/calibration policy |
| 18 | ICT台股當沖流程\_0執行正文\_v1.7.0+ | FOUND | DOMAIN LEGACY FLOW SOURCE | absorbed / traceability |
| 19 | ICT股票分析總表\_v1.2.1 | FOUND | DOMAIN INDEX SOURCE | absorbed as semantic corpus / calibration reference |
| 20 | P2／P2.5 WP單檔三合一 | FOUND | HISTORICAL MOTHER SPEC | traceability\_only |
| 21 | Spartoi｜P0-Q\&A\_1114 | FOUND | ANCIENT REQUIREMENT SOURCE | traceability\_only / historical intent |
| 22 | Spartoi系統21項需求 | FOUND | ANCIENT REQUIREMENT SOURCE | traceability\_only / historical intent |
| 23 | Spartoi｜P1\_SRS\_v7.0.0 | FOUND | LEGACY BASELINE | LEGACY\_BASELINE / TRACEABILITY\_ONLY |
| 24 | Spartoi｜P1\_ARCH\_v6.0.0-r5 | FOUND | LEGACY BASELINE | LEGACY\_BASELINE / TRACEABILITY\_ONLY |
| 25 | Spartoi｜台股當沖\_隔日沖實際流程\_v1.0.0 Final | FOUND | SCENARIO ALIGNMENT SOURCE | active for scenario parity and XQ boundary |
| 26 | Spartoi｜各階段子系統操作流程\_v1.0.1 | FOUND | SCENARIO ALIGNMENT SOURCE | active for stage map / route / XQ boundary |

## **2.2 Inputs Recovery Register**

本版不再存在 mandatory input 缺件。  
前版審查報告中列為 direct-source recovery 缺口之來源，現已具備輸入存在性；但其法律地位分流如下：

| recovered\_source | input\_status | legal\_disposition |
| ----- | ----- | ----- |
| P0-Q\&A\_1114 | RECOVERED | ancient / traceability\_only / historical motive |
| Spartoi系統21項需求 | RECOVERED | ancient / traceability\_only / historical motive |
| P1\_SRS\_v7.0.0 | RECOVERED | LEGACY\_BASELINE / TRACEABILITY\_ONLY |
| P1\_ARCH\_v6.0.0-r5 | RECOVERED | LEGACY\_BASELINE / TRACEABILITY\_ONLY |
| P2/P2.5 WP單檔三合一 | RECOVERED | historical mother spec / traceability\_only |

## **2.3 Missing Source Recovery Register**

| register\_id | status | note |
| ----- | ----- | ----- |
| MSRR-001 | CLOSED | mandatory inputs missing count \= 0 |
| MSRR-002 | CLOSED | v2.1.0-r1 曾未直接讀到之 direct upstream texts，現均已具備輸入存在性 |
| MSRR-003 | ACTIVE\_GOVERNANCE | 法律地位不等於 normative；Recovered ≠ re-promoted |

**source\_ptr:**

* `Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文_v2.1.0-r1_審查報告`  
* `Spartoi｜P1_SRS_v7.0.0`  
* `Spartoi｜P1_ARCH_v6.0.0-r5`  
* `P2／P2.5 WP單檔三合一`  
* `Spartoi｜P0-Q&A_1114`  
* `Spartoi系統21項需求`  
  Supported by  
   Spartoi-OMOC\_SubP1-LITE+MVP子系統\_…

   Spartoi｜P1\_SRS\_v7.0.0

   Spartoi-OMOC\_SRS\_v8.1.0

   Spartoi｜P0-Q\&A\_1114

---

# **3\. Authority Stack、Conflict Rules、Fail-Closed、One-Rule-One-Place、No-Source-No-Norm、No-Anchor-No-Claim、Authority Crosswalk**

\<a id="anchor-gcerm-v220r1-03-authority"\>\</a\>  
\[ANCHOR:GCERM-V220R1-03-AUTHORITY\]

## **3.1 Authority Stack**

自本版起，SubP1-LITE+MVP 中央工程正文之裁決順位固定如下：

1. `Spartoi-OMOC_SSOT_合冊`  
2. `Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊`  
3. `Spartoi-OMOC_SubP1-LITE+MVP_合冊`  
4. `OMOC_合冊`  
5. `參考方案合冊`  
6. 本中央正文對舊體系之 absorb / archive / route-out / supersede 條文  
7. 舊版 P1 / 舊版 SubP1 / 舊需求表 / 舊方案 / 補件 / 場景文檔，僅於未衝突且具工程價值時被吸收；否則 `archive / supersede / traceability-only / tt / fail-closed`

硬規則：

* 上位衝突覆蓋下位。  
* 低位不得反向覆寫高位。  
* route-out 不得偽裝成再立法。  
* design source 不得越級成 constitution。

## **3.2 Conflict Rules**

1. Higher authority wins.  
2. More concrete machine-auditable clause wins over abstract slogan.  
3. Owner schema wins over consumer rewrite.  
4. Current SSOT wins over legacy baseline.  
5. direct source grounding wins over summary claim.  
6. 若仍無法裁決，僅可 `TT / TEMP_CLOSED / FAIL_CLOSED`，不得私自終局化。

## **3.3 Fail-Closed Rule**

下列任一成立，即不得宣稱 PASS：

* 缺 source / 缺 evidence / 缺 owner  
* Gate 未跑或 alias 未解析  
* canonical deliverable 不存在  
* threshold 未授權卻被寫死  
* lineage 斷裂  
* WATCH 下單  
* EXECUTE unattended  
* XQ sole order endpoint 被破壞  
* document-level 主張偷渡成 release-level

## **3.4 One-Rule-One-Place**

僅得在單一位置定義一次：

* authority\_stack / supersede / archive / crosswalk → 中央正文  
* gate\_registry / evidence\_schema / TT engine / drift governance → Package B  
* devcontainer / workflows / checks\_manifest / adapters → Package D  
* MC4 / WP.Master / SS-Lite / manifest-validator-release\_guard → Package E  
* HOW / commands / click path / SOP → Dev/Ops RBWI  
* 8 template gates / threshold register / scenario parity / archive disposition / verdict → 本中央正文

## **3.5 No-Source-No-Norm**

凡 MUST / SHALL / 必須 / 不得 / Gate / Threshold / Stopline / Rollback / Release Guard 類規範句，若無可回查來源定位與 owner，不得成為終局規範。

## **3.6 No-Anchor-No-Claim**

凡宣稱已覆蓋、已取代、已閉合、已 PASS，必須能回指：

* 穩定錨點  
* owner pack  
* evidence 或 validator 關聯  
* 若為 release claim，還必須有 release guard

## **3.7 Authority Crosswalk**

| topic | single\_owner | central\_handling | forbidden\_move |
| ----- | ----- | ----- | ----- |
| authority / supersede / archive | central | define once | 下游文件再立法 |
| gate registry / evidence schema / TT engine | Package B | route-in only | 中央正文重寫 registry |
| execution entrance / handoff / TT export | Package C | bound interface only | Package C 變 HOW 憲法 |
| factory contracts / checks | Package D | central 義務引用 | 中央正文教學 YAML |
| MC4 / WP.Master / validator / release\_guard | Package E | central 不複寫 engine | 子文檔自造 validator |
| route\_mode / scenario parity / threshold register | central | define once | 各 WP 私寫版本 |

**source\_ptr:**

* `Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文_v2.1.0-r1_最新裁決部分重寫`  
* `Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊`  
* `Spartoi-OMOC_SSOT_合冊`  
* `Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文_v2.1.0-r1`  
  Supported by  
   Spartoi-OMOC\_SubP1-LITE+MVP子系統\_…

   Spartoi-OMOC\_SubP1-LITE+MVP\_Pac…

   Spartoi-OMOC\_SSOT\_合冊

   Spartoi-OMOC\_SubP1-LITE+MVP子系統\_…

---

# **4\. 5-Pack 角色邊界與 One-rule-one-owner matrix**

\<a id="anchor-gcerm-v220r1-04-pack-boundary"\>\</a\>  
\[ANCHOR:GCERM-V220R1-04-PACK-BOUNDARY\]

## **4.1 Pack 邊界裁決**

### **Package A（Governance / Index Pack）**

只可作：

* derived index  
* mapping  
* locator  
* coverage map  
* route-out  
* TT ledger

不得：

* 立法  
* 承載 HOW  
* 取代中央正文或上位 SSOT

### **Package B（Control Plane Pack）**

唯一 control-plane 契約層，擁有：

* gate registry  
* evidence schema  
* TT state machine  
* drift governance  
* route registers

中央正文不得重寫其 registry / schema / TT engine。

### **Package C（Execution Pack）**

最終合法角色僅為：

* execution entrance  
* interface  
* handoff  
* TT export  
* route summaries  
* integration/locator/navigation

不得：

* 變成 HOW  
* 變成 schema owner  
* 變成 gate registry  
* 變成 release rule owner  
* 變成 implementation SSOT

### **Package D（Factory Pack）**

唯一工廠形狀契約層：

* devcontainer  
* workflow trigger contract  
* verify harness  
* checks manifest  
* merge\_group  
* always-report  
* adapters

中央正文只規定義務與邊界，不重寫 HOW。

### **Package E（Subsystem Delivery Pack）**

唯一 15× delivery 契約層：

* MC4  
* WP.Master  
* SS-Lite  
* traceability  
* manifest-validator-release\_guard

中央正文可以定中央義務，不得抹平 E 的 validator / guard 邊界。

## **4.2 One-rule-one-owner Matrix**

\<a id="anchor-gcerm-v220r1-04-owner-matrix"\>\</a\>  
\[ANCHOR:GCERM-V220R1-04-OWNER-MATRIX\]

| rule\_domain | single\_owner | central\_allowed | central\_forbidden |
| ----- | ----- | ----- | ----- |
| derived index / locator | A | consume / route-out | 以 A 再立法 |
| gate\_registry / evidence\_schema / TT\_engine | B | bind owner / cite / require use | 重寫 registry / schema / engine |
| execution entrance / handoff / replay surface | C | define interface obligation | 把 C 寫成 settled HOW |
| devcontainer / workflows / checks\_manifest | D | require conformance | 教學式重寫工廠 HOW |
| MC4 / WP.Master / SS-Lite / validator / release\_guard | E | define central obligations | 重寫 validator / release rule |
| seven requirements / threshold register / scenario parity / archive disposition / verdict | central | define once | Pack 分散私有版本 |

## **4.3 Owner Escalation Path**

* schema / evidence / TT / route-out conflicts → Package B owner  
* factory / checks / merge\_group / adapters conflicts → Package D owner  
* MC4 / WP.Master / validator / release\_guard conflicts → Package E owner  
* execution entrance / handoff / TT export conflicts → Package C owner  
* central scope / seven requirements / threshold / archive / verdict conflicts → Central manual owner

**source\_ptr:**

* `Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文_v2.1.0-r1_最新裁決部分重寫`  
* `Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊`  
* `Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文_v1.0.0`  
* `Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文_v2.1.0-r1_審查報告`  
  Supported by  
   Spartoi-OMOC\_SubP1-LITE+MVP子系統\_…

   Spartoi-OMOC\_SubP1-LITE+MVP\_Pac…

   Spartoi-OMOC\_SubP1-LITE+MVP子系統\_…

   Spartoi-OMOC\_SubP1-LITE+MVP子系統\_…

---

# **5\. 現行工具鏈裁決章（Primary / Slots / Fallback / Archived）**

\<a id="anchor-gcerm-v220r1-05-toolchain"\>\</a\>  
\[ANCHOR:GCERM-V220R1-05-TOOLCHAIN\]

## **5.1 正式裁決表**

| class | items | legal\_status |
| ----- | ----- | ----- |
| Primary / 主路線 | Local VS \+ Docker / DevContainer \+ GitHub repo | ACTIVE\_PRIMARY |
| Execution engine slots | OpenCode, Oh My OpenCode | ACTIVE\_SLOT |
| Fallback only | GitHub Codespaces | ACTIVE\_FALLBACK\_ONLY |
| Archived / Superseded | Codex, Claude Code, Claude/Cowork, 舊雲端沙盒細節, Drive+rclone, WT-NA 精靈作為 MVP 主施工介面, 舊 Agent/非Agent toggle, 第三方 reviewer, 多跨 LLM blind flow | ARCHIVED / REMOVED\_FROM\_MVP\_SCOPE |

## **5.2 硬規則**

1. 不得把 Codespaces 寫成絕對禁用；只能寫成 fallback only。  
2. 也不得以 Codespaces / Claude Code / Codex 作為新版主體。  
3. OpenCode / Oh My OpenCode 是 execution slots，不是 SSOT。  
4. 主施工語義為：本地 VS \+ Docker/DevContainer \+ GitHub repo。  
5. 舊工具鏈條目若未被本章明文保留，視為 archived，不得以“歷史上討論過”回流正文。

## **5.3 runner\_mode / execution\_mode / approval\_mode / tool\_slot 新抽象**

舊 `Agent/非Agent toggle` 不再作 MVP 實作能力。  
本版統一改寫為以下可審計抽象：

* `runner_mode`：`LOCAL_PRIMARY / FALLBACK_CODESPACES`  
* `execution_mode`：`RADAR_ONLY / AGENT_ASSIST / NON_AGENT`  
* `approval_mode`：`HITL_REQUIRED / READ_ONLY / RESEARCH_ONLY`  
* `tool_slot`：`OPENCODE / OHMYOPENCODE / NONE`

除非另有上位裁決，這些抽象僅作 governance / run\_config / evidence 用，不代表必做第三方多代理編排。

## **5.4 對 113 / 114 / 115 / 116 / 117 的裁決語義**

| req\_family | disposition |
| ----- | ----- |
| 113 Codespaces 雲端沙盒規劃 | `REWRITTEN_AS_FALLBACK_ONLY` |
| 114 Claude Code \+ Codex 分工 | `ARCHIVED` |
| 115 第三方 AI/LLM 驗收 | `SUPPORT_ONLY / ROUTE_OUT` |
| 116 多跨 LLM 蒸餾方式 | `ARCHIVED` |
| 117 三人協作 Pipeline 方案 | `ARCHIVED / TRACEABILITY_ONLY` |

**source\_ptr:**

* `Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文_v2.1.0-r1_最新裁決部分重寫`  
* `Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文_v2.1.0-r1_審查報告`  
* `《Spartoi｜SubP1-LITE + MVP + Agent_討論整合版_v1.0.0》`  
* `Spartoi｜SubP1-LITE+MVP_需求總表B`  
  Supported by  
   Spartoi-OMOC\_SubP1-LITE+MVP子系統\_…

   Spartoi-OMOC\_SubP1-LITE+MVP子系統\_…

   《Spartoi｜SubP1-LITE \+ MVP \+ Age…

   Spartoi｜SubP1-LITE+MVP\_需求總表B

---

# **6\. 舊 P1 / 古老需求 / 舊方案之法律地位、合法取代與封存政策**

\<a id="anchor-gcerm-v220r1-06-legacy-legal"\>\</a\>  
\[ANCHOR:GCERM-V220R1-06-LEGACY-LEGAL\]

## **6.1 舊 P1 文檔合法替代**

自本版起，以下替代關係固定，不得再爭論：

* `Spartoi｜P1_SRS_v7.0.0` → 合法被 `Spartoi-OMOC_SRS_v8.1.0` 取代  
* `Spartoi｜P1_ARCH_v6.0.0-r5` → 合法被 `Spartoi-OMOC_ARCH_v8.1.0` 取代

其法律地位固定為：

* `LEGACY_BASELINE`  
* `TRACEABILITY_ONLY`

不得再以舊 P1 文檔反向覆寫 `SSOT_合冊` 中之現行 SRS / ARCH。

## **6.2 古老需求封存政策**

`Spartoi｜P0-Q&A_1114` 與 `Spartoi系統21項需求` 自本版起僅可用於：

* 歷史動機  
* traceability  
* 古老設計語意辨識  
* supersede / archive 對照

不得用於：

* 覆寫現行需求  
* 重新啟動桌面 GUI 唯一合法  
* 重新啟動 old Agent / blind flow / reviewer  
* 直接作現行施工依賴

**封存後，之後無須再拿出來參照；避免污染與混淆。**

## **6.3 P2 / P2.5 WP 單檔三合一之地位**

`P2／P2.5 WP單檔三合一` 的法律地位固定為：

* `HISTORICAL_MOTHER_SPEC`  
* `TRACEABILITY_ONLY`  
* `ARCHIVE_REFERENCE`

可吸收其單檔 WP 表達方法與 traceability 思路；不得以其舊時代文件形態覆寫現行 `Pack / MC4 / WP.Master / delivery contract`。

## **6.4 參考方案與舊方案的合法使用方式**

`參考方案合冊`中的方案文件，自本版起只允許以下四種處置：

* `absorbed_as_central_rule`  
* `route-out_as_design_intent`  
* `superseded`  
* `archived`

禁止：

* 以 Pipeline A/B/C 或五子系統方案直接越級成憲法  
* 以 old UI / old agent / old cloud sandbox 細節反推當前 MVP 必做能力

## **6.5 舊 UI / Agent / reviewer / blind flow 的法律結論**

* `桌面 GUI 唯一合法` → `SUPERSEDED`  
* `Agent/非Agent 一鍵切換` → `ARCHIVED / REMOVED_FROM_MVP_SCOPE`  
* `第三方 reviewer / 多跨 LLM / blind flow` → `ARCHIVED / REMOVED_FROM_MVP_SCOPE / TRACEABILITY_ONLY`  
* `WT-NA 精靈作為 MVP 主施工介面` → `ARCHIVED AS MAINLINE`, 僅可保留 route-out 歷史參照

**source\_ptr:**

* `Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文_v2.1.0-r1_最新裁決部分重寫`  
* `Spartoi-OMOC_SSOT_合冊 → Spartoi-OMOC_SRS_v8.1.0 / Spartoi-OMOC_ARCH_v8.1.0`  
* `Spartoi｜P1_SRS_v7.0.0`  
* `Spartoi｜P1_ARCH_v6.0.0-r5`  
* `Spartoi｜P0-Q&A_1114`  
* `Spartoi系統21項需求`  
* `P2／P2.5 WP單檔三合一`  
  Supported by  
   Spartoi-OMOC\_SubP1-LITE+MVP子系統\_…

   Spartoi-OMOC\_SubP1-LITE+MVP子系統\_…

   Spartoi｜P1\_SRS\_v7.0.0

   Spartoi-OMOC\_SRS\_v8.1.0

---

# **7\. 15CA 白名單、命名體系、display\_name / macro\_module\_name / stable\_id policy、5+1 宏模組**

\<a id="anchor-gcerm-v220r1-07-15ca-naming"\>\</a\>  
\[ANCHOR:GCERM-V220R1-07-15CA-NAMING\]

## **7.1 Immutable 15CA whitelist**

正式子系統固定如下，禁止新增第 16 個：

1. CA-WRC  
2. CA-CORPUS  
3. CA-DISTILL  
4. CA-DSL  
5. CA-METHOD  
6. CA-BACKTEST  
7. CA-TA  
8. CA-SELECT  
9. CA-TRANSLATE  
10. CA-WATCH  
11. CA-EXECUTE  
12. CA-PERFORM  
13. CA-GOVERN  
14. CA-COLLAB  
15. CA-UI

## **7.2 命名三分法**

每個子系統必須同時擁有：

* `stable_id`：永不變，唯一工程主鍵  
* `display_name`：前台與文檔顯示名，可調整  
* `macro_module_name`：宏模組分組名，可調整

規則：

* stable\_id 永不被 display\_name 取代  
* gate\_binding / evidence\_ptr / row\_hash 僅綁 stable\_id  
* UI / docs / JobCard 可使用 display\_name / macro\_module\_name

## **7.3 5+1 宏模組**

| 宏模組 | 子系統 |
| ----- | ----- |
| K / Knowledge-Ingest | CA-WRC, CA-CORPUS, CA-DISTILL |
| S / Strategy-Formalize | CA-DSL, CA-METHOD |
| F / Signal-Analysis | CA-TA, CA-SELECT |
| B / Backtest-Learn | CA-BACKTEST, CA-PERFORM |
| O / Operate-XQ | CA-TRANSLATE, CA-WATCH, CA-EXECUTE |
| G / Govern-UI-Collab | CA-GOVERN, CA-COLLAB, CA-UI |

## **7.4 顯示名與責任宣告**

| stable\_id | display\_name | macro\_module\_name | 一行責任宣告 |
| ----- | ----- | ----- | ----- |
| CA-WRC | 白名單廣域蒐集 | K.Knowledge-Ingest | 管理教材與來源白名單、hash、provenance |
| CA-CORPUS | 教材庫與 RAG | K.Knowledge-Ingest | 建立可追溯、可檢索語料快照 |
| CA-DISTILL | 蒸餾 | K.Knowledge-Ingest | 產出可回指的蒸餾 bundle |
| CA-DSL | 偽代碼原語庫 / 中立 DSL | S.Strategy-Formalize | formalize 原語與結構契約 |
| CA-METHOD | 方法制定 | S.Strategy-Formalize | 產出方法卡與 primitive spec |
| CA-BACKTEST | 回測 | B.Backtest-Learn | 驗證方法與衛生可重播性 |
| CA-TA | 技術分析 | F.Signal-Analysis | 產出分析包與故事卡 |
| CA-SELECT | 選股 | F.Signal-Analysis | 形成候選清單與理由 |
| CA-TRANSLATE | XS 轉譯 | O.Operate-XQ | 產出 XS / parity 與 XQ handoff 規劃；不下單 |
| CA-WATCH | 盯盤 | O.Operate-XQ | XQ runtime 前觀測、提醒與交接；不下單 |
| CA-EXECUTE | 操盤 / HITL 交接 | O.Operate-XQ | XQ runtime 後 HITL / approval trace / 對帳；不自建下單端 |
| CA-PERFORM | 績效分析 | B.Backtest-Learn | 產出 uplift proposal |
| CA-GOVERN | 治理 / 索引 / 收納 | G.Govern-UI-Collab | 統一索引、版本、證據收納 |
| CA-COLLAB | 多 AI 協作 | G.Govern-UI-Collab | 匯出匯入 bundle 與 session log |
| CA-UI | 受控單一入口 | G.Govern-UI-Collab | 單一入口、一鍵最小閉環、evidence 可視化 |

**source\_ptr:**

* `Spartoi｜SubP1-LITE+MVP 開發中央工程正文_v1.1.0`  
* `Spartoi-OMOC_ARCH_v8.1.0`  
* `Spartoi-OMOC(15 CA)重構升級藍圖 v0.2.0-r1`  
* `子系統「顯示名_宏模組名」改名方案`  
  Supported by  
   Spartoi｜SubP1-LITE+MVP 開發中央工程正文\_v…

   Spartoi-OMOC\_SSOT\_合冊

   Spartoi-OMOC(15 CA)重構升級藍圖v0.2.0…

   子系統「顯示名\_宏模組名」改名方案

---

# **8\. 全域工件分類、資料主幹、ReferenceDB / RunLedger / SpecPack / EvidencePack 契約**

\<a id="anchor-gcerm-v220r1-08-artifacts"\>\</a\>  
\[ANCHOR:GCERM-V220R1-08-ARTIFACTS\]

## **8.1 工件分類**

| artifact\_class | meaning | owner |
| ----- | ----- | ----- |
| ReferenceDB | 中央唯一參考資料主幹 | central data backbone |
| RunLedger | 中央唯一 run-level 索引簿 | central data backbone |
| SpecPack | 規格性輸出包 | producing subsystem |
| EvidencePack | 驗收證據包 | producing subsystem \+ GOVERN |
| MethodPack | method / primitive / rationale artifacts | CA-METHOD |
| BacktestPack | 回測與衛生 artifacts | CA-BACKTEST |
| XSPack | XS 腳本與 parity 證跡 | CA-TRANSLATE |
| FeedbackPack | 績效與 uplift proposal | CA-PERFORM |
| GovPack | manifest / ssot index / packaged evidence | CA-GOVERN |
| CollabBundle | export/import bundle \+ session log | CA-COLLAB |

## **8.2 Data Backbone 總則**

1. ReferenceDB、RunLedger 為中央唯一。  
2. Pipeline C 與五子系統只可 consume，不得 fork schema。  
3. 向量索引 / embeddings 一律視為 cache，可重建，不可作 SSOT。  
4. 所有產物必須有 `run_id / hash / lineage / upstream_refs / downstream_refs`。  
5. GOVERN 為最小索引器與收納器，不得偽裝為第二治理引擎。

## **8.3 Evidence 最低集合**

每次可裁決執行，至少應存在：

* `manifest.json`  
* `gate_report.json`  
* `artifacts/`  
* 視需要附：`verdict.json`、`evidence_index.json`、`bundle.json`、`bundle_audit.json`

schema owner 僅在 Package B。

## **8.4 RunLedger 最低欄位**

`run_id, pipeline_id, subsystem_id, route_mode, inputs, outputs, gate_verdict, threshold_refs, degrade_label, evidence_refs, environment_fingerprint, upstream_refs, downstream_refs, operator`

## **8.5 SpecPack / EvidencePack 契約原則**

* canonical deliverable 為中央工程驗收主鍵  
* legacy alias 只作相容層  
* 若 canonical 與 alias 衝突，以 canonical 為準  
* 沒有 canonical deliverable，不得宣稱 subsystem deliverable exists

**source\_ptr:**

* `Pipeline-A+B 整合資料庫方案`  
* `Spartoi｜SubP1-LITE+MVP 開發中央工程正文_v1.1.0`  
* `Spartoi-OMOC_ARCH_v8.1.0`  
* `Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文_v2.1.0-r1`  
  Supported by  
   Spartoi-OMOC\_SSOT\_合冊

   Spartoi｜SubP1-LITE+MVP 開發中央工程正文\_v…

   Spartoi-OMOC\_ARCH\_v8.1.0

---

# **9\. Pipeline A/B/C \+ 五子系統 \+ A+B DB 的整合模型與 route-out / ownership**

\<a id="anchor-gcerm-v220r1-09-pipelines"\>\</a\>  
\[ANCHOR:GCERM-V220R1-09-PIPELINES\]

## **9.1 整合總則**

* A → B → C 單向依賴。  
* `Pipeline C` 的 planning / compile owner 為 `TA / SELECT / TRANSLATE`；`WATCH / EXECUTE` 為 `XQ 全球贏家` runtime boundary responsibilities。  
* 五子系統為橫切薄層，不得自建第二主幹。  
* UI / COLLAB / GOVERN / WATCH / EXECUTE 以薄封裝、evidence-facing adapter、HITL boundary 為原則。  
* `TRANSLATE` 為 XS planning / compile / parity owner；`WATCH / EXECUTE` 為 XQ runtime boundary adapters，不得在本地重建第二套盯盤或下單執行引擎。  
* 參考方案是吸收對象，不是上位憲法。

## **9.2 Pipeline A**

Owner CAs：WRC / CORPUS / DISTILL / DSL  
中央責任：教材可回讀、語料可檢索、蒸餾可保真、DSL 可驗結構。  
HOW route-out：抽取、切分、索引、成熟組件選型、object storage 等具體操作不進中央正文。

## **9.3 Pipeline B**

Owner CAs：METHOD / BACKTEST / PERFORM  
中央責任：方法卡、可重播回測、回測衛生、績效 uplift proposal。  
明文禁止：PERFORM 不得直接改定 MethodCard；只能回饋 METHOD。

## **9.4 Pipeline C**

Owner CAs：TA / SELECT / TRANSLATE  
中央責任：分析包、候選清單、XS 轉譯、TVE / parity 檢核，以及 `XQ 全球贏家` 可載入 artifacts 的 planning / compile handoff。  
明文裁決：`Pipeline C` 的終點是 `CA-TRANSLATE`；不得把 `WATCH / EXECUTE` 解讀為本地 execution engine。  
補充裁決：Package C 僅為 interface / handoff / TT-aware，不是 settled HOW 憲法。

## **9.5 五子系統**

Owner CAs：COLLAB / UI / GOVERN / WATCH / EXECUTE  
中央責任：協作契約、單一入口、治理收納、XQ runtime boundary adapters、HITL handoff、approval trace、reconcile。  
明文禁止：重做治理引擎、重做下單引擎、重做資料主幹、在本地重建第二套盯盤 / 送單執行引擎。

## **9.6 A+B DB 裁決**

* Git 管規格 / 索引  
* DVC 管大資料指針  
* object storage 管版本化實體  
* 中央補齊：ReferenceDB \+ RunLedger

**source\_ptr:**

* `Pipeline-A_組合方案 v2`  
* `Pipeline-B 組合方案 v2`  
* `Pipeline-C組合方案`  
* `五子系統組合方案`  
* `Pipeline-A+B 整合資料庫方案`  
* `Spartoi-OMOC_ARCH_v8.1.0`  
  Supported by  
   Spartoi-OMOC\_ARCH\_v8.1.0

   Spartoi-OMOC\_SSOT\_合冊

---

# **10\. 七點需求項全量工程正文**

\<a id="anchor-gcerm-v220r1-10-seven-reqs"\>\</a\>  
\[ANCHOR:GCERM-V220R1-10-SEVEN-REQS\]

## **10.1 Req-01｜15 子系統可實際完整運行的結果性要求**

\[ANCHOR:GCERM-V220R1-10-REQ-01\]

**正式定義**  
15 子系統均具最小可交付工件，且能形成從教材 → 語料 → 蒸餾 → DSL → 方法 → 回測 → 分析 / 選股 → XS / XQ 使用前交接 → 盯盤 / HITL → 績效回饋 → 治理索引之最薄閉環。

**結果性要求**

* 15CA 全部在 allowlist 中。  
* 每一 CA 皆有 canonical deliverable / gate alias / evidence path / downstream handoff。  
* UI single entry 成立。  
* GOVERN auto-packaging 成立。  
* 任一 CA 缺工件、缺 gate、缺 evidence、缺 lineage，即視為 MVP 不完整。

**接受條文**

* 15CA matrix 逐列 `closure_state` 不得為 `OPEN`。  
* closure matrix 中 `REQ-101` 為 `CLOSED` 或 `CLOSED_WITH_CONFIGURE`，不得為 open。  
* 至少存在 UI smoke 與 GOVERN packaging 的 evidence path。

**Fail-Closed**

* 任一 CA 缺工件、缺 Gate、缺 evidence、缺 lineage → FAIL  
* 任一路徑落到 unattended execute → FAIL

**evidence / gate / threshold / UI / GOVERN / XQ / HITL 接點**

* Gate：`G-RUN` \+ 各 CA 主 Gate  
* Evidence：manifest / gate\_report / evidence\_index  
* UI：單一入口  
* GOVERN：run\_id 索引與資料收納  
* XQ/HITL：終端只到 HITL handoff，不到 unattended execute

**15CA 映射**  
全部 15CA

**closure matrix 位置**  
第 11 章 `REQ-101 / 102 / 103 / 104`

## **10.2 Req-02｜各子系統 MVP 最小行為的具體可用定義**

\[ANCHOR:GCERM-V220R1-10-REQ-02\]

**正式定義**  
每個子系統 MVP 最小行為，必須同時具備最小輸入、最小輸出工件、對應 Gate 可跑、Evidence 可追溯。

**結果性要求**

* 每個 CA 均須有 `minimum_inputs / canonical_deliverables / primary_gate_alias / evidence_minset`  
* 不得以「只有概念、沒有工件」主張最小可用

**接受條文**

* 第 12 章每列 `minimum_inputs / canonical_deliverables / evidence_minset` 不為空  
* 第 13 章每個 CA 均有 local fail-closed

**Fail-Closed**

* 缺任一項即不得宣稱最小可用  
* 任何 CA 將全系統 orchestration 私藏為本地義務 → FAIL

**接點**

* Gate：各 CA 主 Gate  
* Evidence：第 12 章 `evidence_minset`  
* UI / GOVERN：所有 CA 均必須有 UI\_touchpoint / GOVERN\_touchpoint  
* XQ / HITL：TRANSLATE / WATCH / EXECUTE 三者需有明確分工

**15CA 映射**  
全部 15CA

**closure matrix 位置**  
第 11 章 `105a~105h`

## **10.3 Req-03｜40% 門檻與信心條件**

\[ANCHOR:GCERM-V220R1-10-REQ-03\]

**正式定義**  
本正文承認 `>40%` 為 literal threshold 類需求存在；但不授權未封版之 metric definition / sample size / CI / parity exact floor。

**結果性要求**

* 40% 只能作 literal threshold reference，不得私自擴張成精確公式  
* 各 CA 只可引用 `threshold_ref`，不得在子文件寫死

**接受條文**

* Threshold Register 中必須分出 `ACTIVE / CONFIGURE_REQUIRED / TT`  
* TA / SELECT / TRANSLATE / BACKTEST 僅可讀 threshold\_ref

**Fail-Closed**

* 未授權公式被寫死 → FAIL  
* 以未授權 sample / CI / exact floor 宣稱 PASS → FAIL

**接點**

* Gate：`G-CONF-L / G-XQ-PARITY / G-BT-H`  
* Threshold：第 15 章 Threshold Register  
* UI / GOVERN：必須可顯示 threshold\_ref 與 actual state

**15CA 映射**  
CA-TA / CA-SELECT / CA-TRANSLATE / CA-BACKTEST / CA-PERFORM

**closure matrix 位置**  
第 11 章 `105c / 105d / 105e / 106`

## **10.4 Req-04｜XQ parity 的完整驗收條文**

\[ANCHOR:GCERM-V220R1-10-REQ-04\]

**正式定義**  
同資料、同窗、同策略意圖下，reference 方法/分析/選股與 XS/XQ 轉譯輸出的語義與行為一致性，必須經 compile / load / reference-vs-XS / capability profile / parity report 驗證。

**結果性要求**

* XS compile pass  
* XQ load pass  
* reference-vs-XS comparison evidence 存在  
* capability profile 存在  
* parity report 存在  
* degrade needed 時有 degradation report

**接受條文**

* TRANSLATE row 必綁 `G-XQ-PARITY`  
* `XQ/XS Connectivity Spike` 未完成前，不得宣稱 parity readiness

**Fail-Closed**

* compile log alone 不算 parity  
* 只交 XS script、不交 parity report → FAIL  
* 以 XQ 唯一下單端之規則被弱化 → FAIL

**接點**

* Gate：`G-XQ-PARITY`  
* Evidence：compile / load / comparison / profile / report  
* XQ / HITL：不得繞過 XQ sole endpoint；不得以 parity 檢核名義偷渡自動下單

**15CA 映射**  
CA-TRANSLATE / CA-WATCH / CA-EXECUTE

**closure matrix 位置**  
第 11 章 `105e / 108`

## **10.5 Req-05｜UI 單一入口 / 一鍵閉環 / 每步 evidence**

\[ANCHOR:GCERM-V220R1-10-REQ-05\]

**正式定義**  
UI 在 MVP 中不是展示板，而是全部 MVP 子系統的單一操作入口、最小閉環的統一編排入口、每步 evidence 的可視化入口。

**結果性要求**

* 單一入口  
* 一鍵跑最小閉環  
* 每步 evidence visible  
* backend / hash / failure reason 顯示  
* 不得把核心路徑藏在額外 CLI 之外

**接受條文**

* `UI Gate = G-RUN[ui-profile]`  
* 至少存在 `ui_startup_log.json` 與 `e2e_smoke.json`

**Fail-Closed**

* 需要額外未公開 launcher 才能完成閉環 → FAIL  
* UI 只展示、不落 evidence → FAIL

**接點**

* Gate：`UI Gate`  
* UI：本條即 UI 本體  
* GOVERN：必須能從 UI 讀到 run\_id / gate\_verdict / outputs  
* XQ / HITL：只顯示控制點，不得繞過安全邊界

**15CA 映射**  
CA-UI \+ all

**closure matrix 位置**  
第 11 章 `105g / 109a`

## **10.6 Req-06｜GOVERN 自動化整理全部資料**

\[ANCHOR:GCERM-V220R1-10-REQ-06\]

**正式定義**  
GOVERN 於 MVP 階段為最小編排器、最小資料倉、最小證據索引器、最小降級決策落盤器。

**結果性要求**

* 每次 run 生成 run\_id 目錄  
* 寫入 inputs / outputs / sha256 / route\_flags / gate\_verdict  
* 產出 version\_manifest / ssot\_index / gov\_evidence\_pack  
* 失敗時標記 advisory\_only / research\_only / degrade\_label

**接受條文**

* `GOVERN Gate = G-RUN + G-SCHEMA`  
* GOVERN row 必綁 manifest / index / packaging evidence

**Fail-Closed**

* run\_id 缺失 → FAIL  
* 輸出未被索引收納 → FAIL

**接點**

* Gate：`GOVERN Gate`  
* Evidence：manifest / ssot\_index / gov pack  
* UI：必須可見  
* XQ/HITL：僅收納間接觸點，不得下單

**15CA 映射**  
CA-GOVERN \+ all

**closure matrix 位置**  
第 11 章 `105h / 110a`

## **10.7 Req-07｜8 個固定模板 Gate 的完整模板化正文**

\[ANCHOR:GCERM-V220R1-10-REQ-07\]

**正式定義**  
現行中央模板 Gate 僅有 8 個；alias 只是別名解析，不是第 9 個模板。

**結果性要求**

* 8 模板 Gate 正文在中央只定一次  
* 所有 subsystem / MC4 / WP 只綁 alias → template resolution  
* UI Gate 與 GOVERN Gate 均為 alias，不得誤增為第 9 / 第 10 Gate

**接受條文**

* 第 14 章完整列出 8 模板 Gate  
* alias resolution table 完整

**Fail-Closed**

* 任意文檔自創第 9 Gate → FAIL  
* alias 未解析即執行 Gate → FAIL

**接點**

* Gate：第 14 章模板層 / alias 層 / profile 層  
* Evidence：對應 gate\_report / evidence\_index  
* UI / GOVERN：作為 alias，不作新模板

**15CA 映射**  
全部 15CA

**closure matrix 位置**  
第 11 章 `107 / 107a`

**source\_ptr:**

* `Spartoi｜SubP1-LITE+MVP 開發中央工程正文_v1.1.0`  
* `Spartoi｜SubP1-LITE+MVP_需求總表A`  
* `Spartoi｜SubP1-LITE+MVP_需求總表B`  
* `《Spartoi｜SubP1-LITE + MVP + Agent_討論整合版_v1.0.0》`  
* `Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文_v2.1.0-r1`  
  Supported by  
   Spartoi｜SubP1-LITE+MVP 開發中央工程正文\_v…

   《Spartoi｜SubP1-LITE+MVP\_開發Runbo…

   Spartoi｜SubP1-LITE+MVP\_需求總表B

   《Spartoi｜SubP1-LITE \+ MVP \+ Age…

   Spartoi｜SubP1-LITE+MVP 開發中央工程正文\_v…

---

# **11\. 七點需求項 closure matrix**

\<a id="anchor-gcerm-v220r1-11-closure"\>\</a\>  
\[ANCHOR:GCERM-V220R1-11-CLOSURE\]

| req\_id | source\_doc | exact\_source\_state | target\_anchor | closure\_state | owner | evidence\_minset | TT\_if\_any |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| 101 | 需求總表B | DIRECT\_TEXT\_FOUND | GCERM-V220R1-10-REQ-01 | CLOSED | central | 15CA matrix \+ UI smoke \+ Gov pack | — |
| 102 | 需求總表B | DIRECT\_TEXT\_FOUND | GCERM-V220R1-10-REQ-01 / §17 | CLOSED | central | design review note \+ rollback/degrade | — |
| 103 | 需求總表B | DIRECT\_TEXT\_FOUND | GCERM-V220R1-13-CA-METHOD / CA-BACKTEST | CLOSED | central \+ CA-METHOD/BACKTEST | method\_card \+ backtest\_report | — |
| 104 | 需求總表B | DIRECT\_TEXT\_FOUND | §14 / §15 / §16 | CLOSED | central | gate set \+ evidence pack \+ closure dashboard | — |
| 105a | 需求總表B | DIRECT\_TEXT\_FOUND | GCERM-V220R1-11-REQ-105A | CLOSED | CA-CORPUS/DISTILL | corpus\_snapshot \+ distill\_bundle \+ SEG evidence | — |
| 105b | 需求總表B | DIRECT\_TEXT\_FOUND | GCERM-V220R1-11-REQ-105B | CLOSED | CA-METHOD/BACKTEST | method\_card \+ backtest\_report \+ hygiene | — |
| 105c | 需求總表B | DIRECT\_TEXT\_FOUND | GCERM-V220R1-11-REQ-105C | CLOSED\_WITH\_CONFIGURE | CA-TA | ta\_pack \+ story\_cards \+ G-CONF-L | THR-CONF-METRIC-001 |
| 105d | 需求總表B | DIRECT\_TEXT\_FOUND | GCERM-V220R1-11-REQ-105D | CLOSED\_WITH\_CONFIGURE | CA-SELECT | watchlist \+ rationale \+ select profile | THR-SELECT-FLOOR-001 |
| 105e | 需求總表B | DIRECT\_TEXT\_FOUND | GCERM-V220R1-11-REQ-105E | CLOSED\_WITH\_CONFIGURE | CA-TRANSLATE | xs\_script\_pack \+ parity report | THR-XQ-PARITY-001 |
| 105f | 需求總表B | DIRECT\_TEXT\_FOUND | GCERM-V220R1-11-REQ-105F | CLOSED | CA-PERFORM | perf\_summary \+ upgrade\_proposal | — |
| 105g | 需求總表B | DIRECT\_TEXT\_FOUND | GCERM-V220R1-11-REQ-105G | CLOSED | CA-UI | ui\_startup\_log \+ e2e\_smoke | — |
| 105h | 需求總表B | DIRECT\_TEXT\_FOUND | GCERM-V220R1-11-REQ-105H | CLOSED | CA-GOVERN | version\_manifest \+ ssot\_index \+ gov pack | — |
| 106 | 需求總表B | DIRECT\_TEXT\_FOUND | GCERM-V220R1-15-THRESHOLD-REGISTER | CLOSED\_WITH\_CONFIGURE | central | threshold register \+ threshold snapshot | THR-CONF-METRIC-001 |
| 107 | 需求總表B | DIRECT\_TEXT\_FOUND | GCERM-V220R1-14-GATE-TEMPLATES | CLOSED | central | gate templates | — |
| 107a | 需求總表B | DIRECT\_TEXT\_FOUND | GCERM-V220R1-11-REQ-107A | CLOSED | central \+ GOVERN | gate coverage report | — |
| 108 | 需求總表B | DIRECT\_TEXT\_FOUND | GCERM-V220R1-11-REQ-108 | TEMP\_CLOSED | central \+ CA-TRANSLATE/O.Operate-XQ | capability profile reserve \+ scenario replay reserve | TT-XQ-PAID-001 |
| 109a | 需求總表B | DIRECT\_TEXT\_FOUND | GCERM-V220R1-16-UI | CLOSED | CA-UI | ui app ready \+ smoke \+ evidence visible | — |
| 110a | 需求總表B | DIRECT\_TEXT\_FOUND | GCERM-V220R1-16-GOVERN | CLOSED | CA-GOVERN | manifest \+ pack \+ index | — |
| 111 | 需求總表B / Agent整合版 | DIRECT\_TEXT\_FOUND | GCERM-V220R1-19-ARCHIVE-DISPOSITION | ARCHIVED\_REMOVED\_FROM\_MVP\_SCOPE | central | archive disposition | — |
| 112 | 需求總表B | DIRECT\_TEXT\_FOUND | GCERM-V220R1-09-PIPELINES / §13 CA-BACKTEST | CLOSED | CA-BACKTEST | historical\_db locator \+ run evidence | — |
| 113 | 需求總表B / Agent整合版 | DIRECT\_TEXT\_FOUND | GCERM-V220R1-05-TOOLCHAIN | CLOSED\_REWRITTEN | central | toolchain ruling | — |
| 114 | 需求總表B / Agent整合版 | DIRECT\_TEXT\_FOUND | GCERM-V220R1-19-ARCHIVE-DISPOSITION | ARCHIVED | central | archive disposition | — |
| 115 | 需求總表B / Agent整合版 | DIRECT\_TEXT\_FOUND | GCERM-V220R1-19-ARCHIVE-DISPOSITION | ROUTE\_OUT\_SUPPORT\_ONLY | central | support-only rule | — |
| 116 | 需求總表B / Agent整合版 | DIRECT\_TEXT\_FOUND | GCERM-V220R1-19-ARCHIVE-DISPOSITION | ARCHIVED | central | archive disposition | — |
| 117 | 需求總表B / Agent整合版 | DIRECT\_TEXT\_FOUND | GCERM-V220R1-19-ARCHIVE-DISPOSITION | ARCHIVED\_ROUTE\_OUT | central | archive disposition | — |

## **11.1 專項 acceptance clauses**

### **REQ-105A｜CORPUS \+ DISTILL**

\[ANCHOR:GCERM-V220R1-11-REQ-105A\]  
必須能正確無遺漏蒸餾 ICT 教材 PDF；無 `corpus_snapshot`、無 `distill_bundle`、無 `SEG-L` 證跡，即 FAIL。

### **REQ-105B｜METHOD \+ BACKTEST**

\[ANCHOR:GCERM-V220R1-11-REQ-105B\]  
必須制定並回測出適用方法定案；無 `method_card`、無 `backtest_report`、無回測衛生證跡，即 FAIL。

### **REQ-105C｜TA**

\[ANCHOR:GCERM-V220R1-11-REQ-105C\]  
必須產出分析包與故事卡；`>40%` 為 literal requirement，但精確口徑採 `CONFIGURE_REQUIRED`。無 TA pack / stories / confidence evidence，即 FAIL。

### **REQ-105D｜SELECT**

\[ANCHOR:GCERM-V220R1-11-REQ-105D\]  
必須落地選股規劃並輸出高價值候選；exact Hit@K floor 未授權，不得私寫。無 `watchlist / rationale / select evidence`，即 FAIL。

### **REQ-105E｜TRANSLATE**

\[ANCHOR:GCERM-V220R1-11-REQ-105E\]  
必須正確轉譯為 XS，且以 parity 為主、勝率類要求為輔；無 compile/load/reference-vs-XS/capability profile/parity report 即 FAIL。

### **REQ-105F｜PERFORM**

\[ANCHOR:GCERM-V220R1-11-REQ-105F\]  
必須提出讓 METHOD 正確升級的報告；無 `upgrade proposal`、無 `retest linkage`，即 FAIL。

### **REQ-105G｜UI**

\[ANCHOR:GCERM-V220R1-11-REQ-105G\]  
必須連接全部子系統並完整執行最小任務；無 single entry、無 e2e\_smoke、無 evidence visible，即 FAIL。

### **REQ-105H｜GOVERN**

\[ANCHOR:GCERM-V220R1-11-REQ-105H\]  
必須以最小治理達成任務目標；無 run\_id、無 version\_manifest、無 ssot\_index、無 gov pack，即 FAIL。

### **REQ-107A｜Gate 遺漏檢查**

\[ANCHOR:GCERM-V220R1-11-REQ-107A\]  
每次版本裁決必須輸出 gate coverage report；若 alias、template 或 gate hook 遺漏，必須 fail-closed 並開 TT，不得默認略過。

### **REQ-108｜XQ 付費模組預留**

\[ANCHOR:GCERM-V220R1-11-REQ-108\]  
本版僅承認「需預留 capability profile、scenario route 與 reserve/upgrade path」。未完成 capability evidence 前，僅 `TEMP_CLOSED`，不得宣稱已完成實裝。

**source\_ptr:**

* `Spartoi｜SubP1-LITE+MVP_需求總表B`  
* `《Spartoi｜SubP1-LITE + MVP + Agent_討論整合版_v1.0.0》`  
* `Spartoi｜SubP1-LITE+MVP 開發中央工程正文_v1.1.0`  
* `Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文_v2.1.0-r1_最新裁決部分重寫`  
  Supported by  
   Spartoi｜SubP1-LITE+MVP\_需求總表B

   《Spartoi｜SubP1-LITE \+ MVP \+ Age…

   Spartoi｜SubP1-LITE+MVP 開發中央工程正文\_v…

   Spartoi-OMOC\_SubP1-LITE+MVP子系統\_…

---

# **12\. 15 子系統開發需求工程對照矩陣（machine-auditable）**

\<a id="anchor-gcerm-v220r1-12-15ca-matrix"\>\</a\>  
\[ANCHOR:GCERM-V220R1-12-15CA-MATRIX\]

`row_hash = SHA256(subsystem_id|display_name|macro_module_name|pipeline|source_req_id|primary_gate_alias|template_gate_resolution|threshold_ref|route_mode|validator_schema_id)[:12]`

| subsystem\_id | display\_name | macro\_module\_name | pipeline | source\_ptr | source\_req\_id | direct\_upstream\_locator | owner\_pack | subsystem\_role\_in\_closure | minimum\_inputs | canonical\_deliverables | accepted\_legacy\_aliases | primary\_gate\_alias | template\_gate\_resolution | threshold\_ref | degrade\_mode | evidence\_minset | manifest\_validator\_link | validator\_schema\_id | row\_hash | MC4\_local\_obligation\_ref | WP.Master\_route\_mode | upstream\_pack\_contract | downstream\_pack\_contract | release\_guard\_relevance | TT\_id\_if\_unresolved | closure\_state | owner\_escalation\_path | UI\_touchpoint | GOVERN\_touchpoint | XQ\_or\_HITL\_touchpoint | fail\_closed\_clause\_anchor |  
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|  
| CA-WRC | 白名單廣域蒐集 | K.Knowledge-Ingest | A | 中央工程正文/流程總表 | REQ-105a/101 | OPS-FLOW-TOTAL-MAP OP-02 | E | 教材入口 | source\_list, provenance | input\_manifest.json | wrc\_manifest.json | GATE-WRC-TIER | G-SRC\[wrc-ingest-profile\] | THR-NONE | BLOCK | manifest \+ gate\_report \+ artifacts | PKGE §9 | triplet.schema.json | 3323a01acbfc | MC4-WRC-LOCAL | BOTH | E-delivery | A→CORPUS | YES | — | CLOSED | E→central | import/start | hash/version/run\_id | none | GCERM-V220R1-13-CA-WRC |  
| CA-CORPUS | 教材庫\&RAG | K.Knowledge-Ingest | A | 中央工程正文/流程總表 | REQ-105a/101 | OPS-FLOW-TOTAL-MAP OP-03(part1) | E | 語料儲存檢索 | input\_manifest, source files | corpus\_snapshot.json | — | CORPUS Gate | G-SRC\[corpus-ingest-profile\]+G-SCHEMA\[corpus-snapshot-profile\] | THR-NONE | ADVISORY\_ONLY | manifest \+ snapshot \+ schema check | PKGE §9 | evidence\_index.schema.json | d953260ee165 | MC4-CORPUS-LOCAL | BOTH | E-delivery | A→DISTILL | YES | — | CLOSED | E→B | browse/ingest | index/snapshot | none | GCERM-V220R1-13-CA-CORPUS |  
| CA-DISTILL | 蒸餾 | K.Knowledge-Ingest | A | 中央工程正文/需求總表B | REQ-105a | OPS-FLOW-TOTAL-MAP OP-03(part2) | E | 蒸餾語義還原 | corpus\_snapshot, source docs | distill\_bundle.json | distill\_pack.json | DISTILL Gate | G-SEG-L\[distill-semantic-profile\] | THR-SEG-L | RESEARCH\_ONLY | bundle \+ seg report \+ gate\_report | PKGE §9 | bundle.schema.json | 544e7e4f47a0 | MC4-DISTILL-LOCAL | BOTH | E-delivery | A→DSL/METHOD | YES | — | CLOSED | E→B | launch distill | bundle index | none | GCERM-V220R1-13-CA-DISTILL |  
| CA-DSL | 偽代碼原語庫/中立DSL | S.Strategy-Formalize | A | 中央工程正文/流程總表 | REQ-101 | OPS-FLOW-TOTAL-MAP OP-04 | E | 中立原語 formalize | baseline inputs, distill outputs | dsl\_schema.json | dsl\_draft.json | DSL Gate | G-SCHEMA\[dsl-purity-profile\] | THR-NONE | BLOCK | schema \+ manifest \+ verdict | PKGE §9 | verdict.schema.json | e5ee5fbd65bf | MC4-DSL-LOCAL | BOTH | E-delivery | A→METHOD/TRANSLATE | YES | — | CLOSED | E→B | upload mapping | schema index | none | GCERM-V220R1-13-CA-DSL |  
| CA-METHOD | 方法制定 | S.Strategy-Formalize | B | 中央工程正文/需求總表B | REQ-103/105b | OPS-FLOW-TOTAL-MAP OP-05 | E | 方法定案 | distill, dsl, three-source refs | method\_card.md \+ primitive\_spec.json | method\_card\_v1.json, methodcards.jsonl | METHOD Gate | G-SRC\[method-source-profile\] | THR-NONE | BLOCK | method card \+ rationale \+ manifest | PKGE §9 | bundle.schema.json | 23ad918f12fd | MC4-METHOD-LOCAL | BOTH | E-delivery | B→BACKTEST/TA/SELECT/TRANSLATE | YES | — | CLOSED | E→central | create/edit method | version/index | none | GCERM-V220R1-13-CA-METHOD |  
| CA-BACKTEST | 回測 | B.Backtest-Learn | B | 中央工程正文/需求總表B/流程總表 | REQ-103/105b | OPS-FLOW-TOTAL-MAP OP-06 | E | 方法驗證 | method\_card, historical\_db | backtest\_report.json | backtest\_summary.json | BACKTEST Gate | G-BT-H\[repro-hygiene-profile\] | THR-CONF-REF | RADAR\_ONLY | backtest report \+ hygiene \+ manifest | PKGE §9 | bundle\_audit.schema.json | c9c297b47859 | MC4-BACKTEST-LOCAL | BOTH | E-delivery | B→METHOD/PERFORM | YES | — | CLOSED | E→D/B | run backtest | capture summary | XQ optional compare only | GCERM-V220R1-13-CA-BACKTEST |  
| CA-TA | 技術分析 | F.Signal-Analysis | C | 中央工程正文/需求總表B | REQ-105c/106 | OPS-FLOW-TOTAL-MAP OP-07 | E | 分析包與故事卡 | method\_card, K-line data | ta\_pack.json \+ story\_cards/ | ta\_package.json | TA Gate | G-CONF-L\[ta-profile\] | THR-40PCT-LITERAL | ADVISORY\_ONLY | ta pack \+ confidence report | PKGE §9 | triplet.schema.json | b293b32ac997 | MC4-TA-LOCAL | BOTH | E-delivery | C→SELECT/TRANSLATE | YES | THR-CONF-METRIC-001 | CLOSED\_WITH\_CONFIGURE | E→central | run analysis | pack/index | none | GCERM-V220R1-13-CA-TA |  
| CA-SELECT | 選股 | F.Signal-Analysis | C | 中央工程正文/需求總表B | REQ-105d/106 | OPS-FLOW-TOTAL-MAP OP-08 | E | 候選清單形成 | ta\_pack, WL/BL | watchlist.csv \+ selection\_rationale.md | select\_results.json | SELECT Gate | G-CONF-L\[select-profile\] | THR-CONF-REF | ADVISORY\_ONLY | watchlist \+ rationale \+ confidence | PKGE §9 | triplet.schema.json | 1800ab932c1a | MC4-SELECT-LOCAL | BOTH | E-delivery | C→TRANSLATE | YES | THR-SELECT-FLOOR-001 | CLOSED\_WITH\_CONFIGURE | E→central | review candidates | list/index | none | GCERM-V220R1-13-CA-SELECT |  
| CA-TRANSLATE | XS轉譯 | O.Operate-XQ | C | 中央工程正文/需求總表B/流程總表 | REQ-105e/106 | OPS-FLOW-TOTAL-MAP OP-09 | E | XS 腳本與 parity | technical pack, S1/S2 list | xs\_script.txt \+ xs\_script\_pack.json | xs\_pack.zip | TRANSLATE Gate | G-XQ-PARITY\[translate-profile\] | THR-40PCT-LITERAL \+ THR-XQ-PARITY-CONFIG | EXECUTE\_DISABLED | xs script pack \+ parity report \+ capability profile | PKGE §9 | locator\_proof.schema.json | 4ebc3e713d2d | MC4-TRANSLATE-LOCAL | T0/T1 | E-delivery | C→WATCH/EXECUTE | YES | THR-XQ-PARITY-001 | CLOSED\_WITH\_CONFIGURE | E→central | translate trigger | script/index | XQ load only | GCERM-V220R1-13-CA-TRANSLATE |  
| CA-WATCH | 盯盤 | O.Operate-XQ | Cross-Cut | 中央工程正文/流程總表 | REQ-101 | OPS-FLOW-TOTAL-MAP OP-10 | E | 僅觀測不下單 | xs\_watchlist | watch\_events.ndjson | watch\_plan.json | WATCH Gate | G-HITL-LOG\[watch-profile\] | THR-NONE | RADAR\_ONLY | watch log \+ alerts \+ manifest | PKGE §9 | evidence\_index.schema.json | e0b4b8d0e639 | MC4-WATCH-LOCAL | T0/T1 | E-delivery | O→PERFORM | YES | — | CLOSED | E→central | open monitoring | watch logs | XQ monitor only | GCERM-V220R1-13-CA-WATCH |  
| CA-EXECUTE | 操盤/HITL交接 | O.Operate-XQ | Cross-Cut | 中央工程正文/流程總表 | REQ-101 | OPS-FLOW-TOTAL-MAP OP-11 | E | HITL 交接，不 unattended | xs alerts, story cards | hitl\_handoff.json | execute\_events.ndjson | EXECUTE Gate | G-HITL-LOG\[execute-profile\] | THR-NONE | HITL\_REQUIRED | handoff \+ execute log \+ approval trace | PKGE §9 | evidence\_index.schema.json | 026d98a01614 | MC4-EXECUTE-LOCAL | T0/T1 | E-delivery | O→PERFORM | YES | — | CLOSED | E→central | confirm execute | approval/index | XQ only order endpoint | GCERM-V220R1-13-CA-EXECUTE |  
| CA-PERFORM | 績效分析 | B.Backtest-Learn | B | 中央工程正文/需求總表B | REQ-105f | OPS-FLOW-TOTAL-MAP OP-12 | E | uplift 提案 | watch/execute/performance files | perf\_report.json \+ upgrade\_proposal.md | perf\_summary.json | PERFORM Gate | G-CONF-L\[perform-uplift-profile\] \+ G-BT-H\[retest-profile\] | THR-CONF-REF | ADVISORY\_ONLY | perf report \+ proposal \+ retest link | PKGE §9 | bundle\_audit.schema.json | b634691142aa | MC4-PERFORM-LOCAL | BOTH | E-delivery | B→METHOD | YES | — | CLOSED | E→central | review report | summary/index | none | GCERM-V220R1-13-CA-PERFORM |  
| CA-COLLAB | 多AI協作 | G.Govern-UI-Collab | Cross-Cut | 中央工程正文/需求總表B/Agent整合版 | REQ-107a/111\~117 | OPS-FLOW-15-SUBSYSTEMS | E | 協作痕跡與 bundle | export/import packs | export\_bundle.zip \+ collab\_session\_\*.json | wtna\_action\_log.jsonl | COLLAB Gate | G-SRC\[collab-source-profile\] \+ G-SCHEMA\[bundle-profile\] | THR-NONE | RESEARCH\_ONLY | bundle \+ session log \+ manifest | PKGE §9 | bundle.schema.json | e250fb99464f | MC4-COLLAB-LOCAL | BOTH | E-delivery | cross-cut only | NO | — | CLOSED | E→central | import/export | bundle index | none | GCERM-V220R1-13-CA-COLLAB |  
| CA-UI | 受控單一入口 | G.Govern-UI-Collab | Cross-Cut | 中央工程正文/需求總表B | REQ-105g/109a | OPS-FLOW-TOTAL-MAP OP-01 | E | 單一入口與可視化 evidence | user\_action, run\_config | ui\_app\_ready \+ e2e\_smoke.json | UI executable, ui\_launch, ui\_startup\_log.json | UI Gate | G-RUN\[ui-profile\] | THR-NONE | READ\_ONLY\_UI | startup log \+ smoke \+ manifest | PKGE §9 | verdict.schema.json | 843664bbc2f4 | MC4-UI-LOCAL | BOTH | E-delivery | all CAs | YES | — | CLOSED | E→central | primary | render evidence | none | GCERM-V220R1-13-CA-UI |  
| CA-GOVERN | 治理/索引/收納 | G.Govern-UI-Collab | Cross-Cut | 中央工程正文/需求總表B | REQ-105h/110a | OPS-FLOW-TOTAL-MAP OP-13/14 | E | 最小治理與資料收納 | all run artifacts | version\_manifest.json \+ gov\_evidence\_pack.zip \+ ssot\_index.json | — | GOVERN Gate | G-RUN\[govern-packaging-profile\] \+ G-SCHEMA\[govern-manifest-profile\] | THR-NONE | ADVISORY\_ONLY / RESEARCH\_ONLY | manifest \+ ssot\_index \+ gov pack | PKGE §9 | checks\_manifest.schema.json | 79bbae3a7f22 | MC4-GOVERN-LOCAL | BOTH | E-delivery | final packaging | YES | — | CLOSED | E→central | show summaries | primary owner | XQ touchpoint indirect only | GCERM-V220R1-13-CA-GOVERN |

**source\_ptr:**

* `Spartoi｜SubP1-LITE+MVP 開發中央工程正文_v1.1.0`  
* `Spartoi｜各階段子系統操作流程_v1.0.1`  
* `Spartoi-OMOC_ARCH_v8.1.0`  
* `子系統「顯示名_宏模組名」改名方案`  
* `Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文_v2.1.0-r1`  
  Supported by  
   Spartoi｜SubP1-LITE+MVP 開發中央工程正文\_v…

   Spartoi｜各階段子系統操作流程\_v1.0.1

   Spartoi-OMOC\_SSOT\_合冊

   子系統「顯示名\_宏模組名」改名方案

---

# **13\. 15 子系統逐一正文要求**

\<a id="anchor-gcerm-v220r1-13-subsystems"\>\</a\>  
\[ANCHOR:GCERM-V220R1-13-SUBSYSTEMS\]

## **13.1 CA-WRC**

\[ANCHOR:GCERM-V220R1-13-CA-WRC\]  
角色：教材入口。  
最低輸入：source\_list, provenance。  
最低輸出：`input_manifest.json`。  
主 Gate：`G-SRC[wrc-ingest-profile]`。  
Fail-Closed：來源斷鏈、hash 缺失、manifest 缺欄，即 FAIL。

## **13.2 CA-CORPUS**

\[ANCHOR:GCERM-V220R1-13-CA-CORPUS\]  
角色：語料儲存、索引與可檢索。  
最低輸入：input\_manifest, source files。  
最低輸出：`corpus_snapshot.json`。  
主 Gate：`G-SRC + G-SCHEMA`。  
Fail-Closed：snapshot 不可解析、來源覆蓋斷裂，即 FAIL。

## **13.3 CA-DISTILL**

\[ANCHOR:GCERM-V220R1-13-CA-DISTILL\]  
角色：蒸餾與語意還原。  
最低輸入：corpus\_snapshot, source docs。  
最低輸出：`distill_bundle.json`。  
主 Gate：`G-SEG-L`。  
Fail-Closed：關鍵遺漏、語意不保真、無 SEG 證跡，即 FAIL。

## **13.4 CA-DSL**

\[ANCHOR:GCERM-V220R1-13-CA-DSL\]  
角色：中立原語 formalize。  
最低輸入：baseline inputs, distill outputs。  
最低輸出：`dsl_schema.json`。  
主 Gate：`G-SCHEMA`。  
Fail-Closed：schema 無法解析、欄位不完整、無 formal contract，即 FAIL。

## **13.5 CA-METHOD**

\[ANCHOR:GCERM-V220R1-13-CA-METHOD\]  
角色：方法定案。  
最低輸入：distill, dsl, three-source refs。  
最低輸出：`method_card.md + primitive_spec.json`。  
主 Gate：`G-SRC[method-source-profile]`。  
Fail-Closed：方法卡不可追溯、三源融合斷裂、無 rationale，即 FAIL。

## **13.6 CA-BACKTEST**

\[ANCHOR:GCERM-V220R1-13-CA-BACKTEST\]  
角色：回測與衛生驗證。  
最低輸入：method\_card, historical\_db。  
最低輸出：`backtest_report.json`。  
主 Gate：`G-BT-H`。  
Fail-Closed：不可重播、無 hygiene、無 historical\_db lineage，即 FAIL。

## **13.7 CA-TA**

\[ANCHOR:GCERM-V220R1-13-CA-TA\]  
角色：分析包與故事卡。  
最低輸入：method\_card, K-line data。  
最低輸出：`ta_pack.json + story_cards/`。  
主 Gate：`G-CONF-L[ta-profile]`。  
Fail-Closed：無分析包、無故事卡、無 confidence evidence，即 FAIL。

## **13.8 CA-SELECT**

\[ANCHOR:GCERM-V220R1-13-CA-SELECT\]  
角色：候選清單形成。  
最低輸入：ta\_pack, WL/BL。  
最低輸出：`watchlist.csv + selection_rationale.md`。  
主 Gate：`G-CONF-L[select-profile]`。  
Fail-Closed：無候選、無理由、無 confidence evidence，即 FAIL。

## **13.9 CA-TRANSLATE**

\[ANCHOR:GCERM-V220R1-13-CA-TRANSLATE\]  
角色：XS 腳本與 parity。  
最低輸入：technical pack, S1/S2 list。  
最低輸出：`xs_script.txt + xs_script_pack.json`。  
主 Gate：`G-XQ-PARITY`。  
Fail-Closed：無 compile / load / comparison / capability / parity report 任一，即 FAIL。

## **13.10 CA-WATCH**

\[ANCHOR:GCERM-V220R1-13-CA-WATCH\]  
角色：僅觀測，不下單。  
最低輸入：xs\_watchlist。  
最低輸出：`watch_events.ndjson`。  
主 Gate：`G-HITL-LOG[watch-profile]`。  
Fail-Closed：任何直接下單語義、缺事件日誌、無 route\_mode，即 FAIL。

## **13.11 CA-EXECUTE**

\[ANCHOR:GCERM-V220R1-13-CA-EXECUTE\]  
角色：HITL handoff，不 unattended。  
最低輸入：xs alerts, story cards。  
最低輸出：`hitl_handoff.json`。  
主 Gate：`G-HITL-LOG[execute-profile]`。  
Fail-Closed：無 approval trace、嘗試 unattended execute、破壞 XQ sole endpoint，即 FAIL。

## **13.12 CA-PERFORM**

\[ANCHOR:GCERM-V220R1-13-CA-PERFORM\]  
角色：績效分析與 uplift proposal。  
最低輸入：watch/execute/performance files。  
最低輸出：`perf_report.json + upgrade_proposal.md`。  
主 Gate：`G-CONF-L[perform-uplift-profile] + G-BT-H[retest-profile]`。  
Fail-Closed：不可追溯、與 method\_card 矛盾、無 retest linkage，即 FAIL。

## **13.13 CA-COLLAB**

\[ANCHOR:GCERM-V220R1-13-CA-COLLAB\]  
角色：bundle 交接與 session log。  
最低輸入：export/import packs。  
最低輸出：`export_bundle.zip + collab_session_*.json`。  
主 Gate：`G-SRC + G-SCHEMA`。  
Fail-Closed：bundle 不可解析、hash 不一致、session log 缺失，即 FAIL。  
限制：協作工具選型不是中央 normative 主體。

## **13.14 CA-UI**

\[ANCHOR:GCERM-V220R1-13-CA-UI\]  
角色：受控單一入口、一鍵閉環、evidence 可視化。  
最低輸入：user action / run config。  
最低輸出：`ui_app_ready + e2e_smoke.json`。  
主 Gate：`G-RUN[ui-profile]`。  
Fail-Closed：需額外 hidden launcher、evidence 不可視、核心流程仍需另開 PY/PS7 才能完成，即 FAIL。

## **13.15 CA-GOVERN**

\[ANCHOR:GCERM-V220R1-13-CA-GOVERN\]  
角色：最小治理、索引、版本、證據收納。  
最低輸入：all run artifacts。  
最低輸出：`version_manifest.json + gov_evidence_pack.zip + ssot_index.json`。  
主 Gate：`G-RUN[govern-packaging-profile] + G-SCHEMA[govern-manifest-profile]`。  
Fail-Closed：run\_id 缺失、manifest 缺欄、索引缺失，即 FAIL。

**source\_ptr:**

* `Spartoi｜SubP1-LITE+MVP 開發中央工程正文_v1.1.0`  
* `Spartoi｜各階段子系統操作流程_v1.0.1`  
* `《Spartoi｜SubP1-LITE + MVP + Agent_討論整合版_v1.0.0》`  
* `Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文_v2.1.0-r1`  
  Supported by  
   Spartoi｜SubP1-LITE+MVP 開發中央工程正文\_v…

   Spartoi｜各階段子系統操作流程\_v1.0.1

   《Spartoi｜SubP1-LITE \+ MVP \+ Age…

   Spartoi-OMOC\_SubP1-LITE+MVP子系統\_…

---

# **14\. Gate 三層架構、8 個固定模板 Gate 正文、alias resolution table、UI Gate / GOVERN Gate / 其他 alias 正式解析**

\<a id="anchor-gcerm-v220r1-14-gates"\>\</a\>  
\[ANCHOR:GCERM-V220R1-14-GATES\]

## **14.1 三層架構**

1. **Template Gate Layer**：中央固定 8 模板 Gate。  
2. **Alias Resolution Layer**：子系統 / 流程使用 alias，必須解析回模板。  
3. **Profile / Instance Layer**：具體 profile、route\_mode、threshold\_ref、schema binding、evidence binding。

## **14.2 8 個固定模板 Gate**

\<a id="anchor-gcerm-v220r1-14-gate-templates"\>\</a\>  
\[ANCHOR:GCERM-V220R1-14-GATE-TEMPLATES\]

| template\_gate | formal\_scope | minimum\_check |
| ----- | ----- | ----- |
| G-SRC | 來源、完整性、可回讀 | source, hash, provenance |
| G-SEG-L | 語意保真 / 小 golden set | semantic fidelity |
| G-SCHEMA | 結構、欄位、可解析性 | schema validity |
| G-BT-H | 回測衛生與可重播 | repro \+ hygiene |
| G-CONF-L | 信心 / 候選 / uplift 類治理 | confidence / ranking / uplift |
| G-XQ-PARITY | XS/XQ parity | compile/load/reference-vs-XS/capability/parity |
| G-HITL-LOG | 人工確認與事件日誌 | approval trace / event log |
| G-RUN | 執行閉環與 packaging | smoke / run\_id / packaging / visible evidence |

## **14.3 Alias Resolution Table**

| alias | resolution |
| ----- | ----- |
| UI Gate | G-RUN\[ui-profile\] |
| GOVERN Gate | G-RUN\[govern-packaging-profile\] \+ G-SCHEMA\[govern-manifest-profile\] |
| SELECT Gate | G-CONF-L\[select-profile\] |
| PERFORM Gate | G-CONF-L\[perform-uplift-profile\] \+ G-BT-H\[retest-profile\] |
| COLLAB Gate | G-SRC\[collab-source-profile\] \+ G-SCHEMA\[bundle-profile\] |
| GATE-UI-INIT | UI Gate.startup-check |
| GATE-WRC-TIER | G-SRC\[wrc-ingest-profile\] |
| GATE-DISTILL-SGF | G-SEG-L\[distill-semantic-profile\] |
| GATE-DSL-PURITY | G-SCHEMA\[dsl-purity-profile\] |
| GATE-METHOD-MSC | G-SRC\[method-source-profile\] |
| GATE-BACKTEST-RC5 | G-BT-H\[repro-hygiene-profile\] |
| GATE-TA-PREDICT | G-CONF-L\[ta-profile\] |
| GATE-SELECT-NDCG | G-CONF-L\[select-profile\] |
| GATE-TRANSLATE-TVE | G-XQ-PARITY\[translate-profile\] |
| GATE-WATCH-SIGNAL | G-HITL-LOG\[watch-profile\] |
| GATE-EXECUTE-HITL | G-HITL-LOG\[execute-profile\] |

## **14.4 UI Gate / GOVERN Gate 正式解析**

* UI Gate 不是第 9 個模板 Gate；它是 `G-RUN[ui-profile]`  
* GOVERN Gate 不是第 10 個模板 Gate；它是 `G-RUN[govern-packaging-profile] + G-SCHEMA[govern-manifest-profile]`

## **14.5 禁止事項**

* 不得新增第 9 個模板 Gate  
* 不得把 UI Gate / GOVERN Gate 當新模板  
* 不得 alias 未解析就執行  
* 不得在 MC4 / WP / Pack 內全文複寫 8 模板 Gate

**source\_ptr:**

* `Spartoi｜SubP1-LITE+MVP 開發中央工程正文_v1.1.0`  
* `Spartoi｜各階段子系統操作流程_v1.0.1`  
* `Spartoi｜SubP1-LITE+MVP_需求總表B`  
* `Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文_v2.1.0-r1`  
  Supported by  
   Spartoi｜SubP1-LITE+MVP 開發中央工程正文\_v…

   Spartoi｜各階段子系統操作流程\_v1.0.1

   Spartoi｜SubP1-LITE+MVP\_需求總表B

---

# **15\. Threshold Register、CR\_OPEN / CONFIGURE / TT 規則、40% 門檻與信心條件、XQ parity 完整驗收條文**

\<a id="anchor-gcerm-v220r1-15-threshold"\>\</a\>  
\[ANCHOR:GCERM-V220R1-15-THRESHOLD\]

## **15.1 Threshold Register**

\<a id="anchor-gcerm-v220r1-15-threshold-register"\>\</a\>  
\[ANCHOR:GCERM-V220R1-15-THRESHOLD-REGISTER\]

| threshold\_id | subject | state | use\_rule |
| ----- | ----- | ----- | ----- |
| THR-40PCT-LITERAL | `>40%` literal requirement | ACTIVE\_LITERAL | 可作要求存在之依據，不可外推公式 |
| THR-CONF-METRIC-001 | confidence metric definition | CONFIGURE\_REQUIRED | 只能在 threshold\_ref / report / config 中出現 |
| THR-SELECT-FLOOR-001 | select exact floor / hit@k | CONFIGURE\_REQUIRED | 未授權，不得寫死 |
| THR-XQ-PARITY-001 | parity exact floor | CONFIGURE\_REQUIRED | parity 需驗，但 exact floor 不得私定 |
| THR-SEG-L | semantic fidelity lite threshold | ACTIVE | 依 profile 驗證 |
| THR-BT-H | backtest hygiene | ACTIVE | 依 repro/hygiene profile 驗證 |

## **15.2 CR\_OPEN / CONFIGURE / TT 規則**

* `ACTIVE`：可直接作 PASS/FAIL 依據  
* `CONFIGURE_REQUIRED`：只能進 threshold\_ref、report、manifest、config；不得直接 gate-pass  
* `TT`：來源缺字句、未定位、或需環境驗證時使用  
* `CR_OPEN`：本正文不保留懸空 CR\_OPEN；一律轉可追蹤 TT

## **15.3 40% 門檻正式落地**

* TA：受 `>40%` 類治理  
* TRANSLATE：受 `>40%` 類結果治理，但 parity 為主體  
* SELECT：由 `G-CONF-L` 管理，exact floor 未授權  
* BACKTEST：可進信心摘要，但 exact floor 未授權

## **15.4 XQ parity 完整驗收條文**

\<a id="anchor-gcerm-v220r1-15-xq-parity"\>\</a\>  
\[ANCHOR:GCERM-V220R1-15-XQ-PARITY\]

XQ parity 必須同時滿足：

1. XS compile pass  
2. XQ load pass  
3. reference vs XS comparison evidence present  
4. capability profile present  
5. parity report present  
6. degrade needed 時，degradation report present  
7. 未完成 XQ/XS Connectivity Spike，不得宣稱 parity readiness

任一缺失即 FAIL。

## **15.5 XQ 新增需求的限制條文**

XQ 付費模組 / 盤中量化交易模組 / 盤後量化選股模組屬 `NEW_MVP_REQUIREMENT`，但仍受下列限制：

1. 不得破壞 `XQ 唯一下單端`  
2. 不得破壞 `WATCH 不下單 / EXECUTE 僅 HITL handoff`  
3. 未有 `capability profile + compile/load/reference-vs-XS + parity report` 前，不得宣稱 release-ready  
4. `盤後量化選股模組` 目前僅屬 `reserve / upgrade path`；除非另有明確裁決，否則不得偽裝成當前 MVP 必做最小可用

**source\_ptr:**

* `Spartoi｜SubP1-LITE+MVP 開發中央工程正文_v1.1.0`  
* `Spartoi｜SubP1-LITE+MVP_需求總表B`  
* `Spartoi｜各階段子系統操作流程_v1.0.1`  
* `Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文_v2.1.0-r1_最新裁決部分重寫`  
  Supported by  
   Spartoi｜SubP1-LITE+MVP 開發中央工程正文\_v…

   Spartoi｜SubP1-LITE+MVP\_需求總表B

   Spartoi-OMOC\_SSOT\_合冊

   Spartoi-OMOC\_SubP1-LITE+MVP子系統\_…

---

# **16\. UI 單一入口 / 一鍵閉環 / 每步 evidence、GOVERN 自動整理全部資料、XQ 唯一下單端、HITL / EXECUTE 邊界、T0/T1 雙路由要求、Scenario Parity Map**

\<a id="anchor-gcerm-v220r1-16-ui-gov-xq"\>\</a\>  
\[ANCHOR:GCERM-V220R1-16-UI-GOV-XQ\]

## **16.1 UI**

\<a id="anchor-gcerm-v220r1-16-ui"\>\</a\>  
\[ANCHOR:GCERM-V220R1-16-UI\]

UI 是：

* 全部 MVP 子系統的單一操作入口  
* 最小閉環的統一編排入口  
* 每步 evidence 的可視化入口  
* run\_id / gate\_verdict / outputs 的追證入口

MVP 階段的 UI 合法形態固定為：

* local minimal entry  
* 受控 TUI  
* 受控 CLI  
* 輕量本地入口頁 / 本地操作殼

桌面 GUI 非必須。  
`桌面 GUI 唯一合法` 自本版起正式降級出 MVP。

唯一硬要求是：

* 單一入口  
* 一鍵最小閉環  
* evidence visible  
* 不可要求使用者再額外開 PY / PS7 完成核心流程

## **16.2 GOVERN**

\<a id="anchor-gcerm-v220r1-16-govern"\>\</a\>  
\[ANCHOR:GCERM-V220R1-16-GOVERN\]

GOVERN 在 MVP 階段是：

* 最小編排器  
* 最小資料倉  
* 最小證據索引器  
* 最小降級決策落盤器

每次 run 必須寫入：  
`run_id / inputs / outputs / sha256 / route_flags / gate_verdict / degrade_label / evidence_refs`

## **16.3 XQ 唯一下單端與 WATCH / EXECUTE 硬規則**

* 實際下單與成交：僅在 `XQ 全球贏家` 端完成  
* TRANSLATE：僅處理 XS 規劃 / 轉譯 / parity / handoff artifact；不構成本地下單或本地 runtime 執行控制  
* WATCH：僅觀測，不下單  
* EXECUTE：僅處理 HITL handoff / approval trace，不得 unattended 下單  
* `WATCH / EXECUTE` 只允許作為 XQ runtime boundary adapters；不得在本地重建第二盯盤引擎、第二送單引擎或 order-like payload controller  
* 未經中央裁決與 owner 文件另行授權，任何本地盤中條件觸發、自動送單、倉位調整、平倉執行能力，均不得以 `WATCH / EXECUTE / parity / adapter` 名義回流系統  
* `allow_xsat` 預設 false  
* `RADAR_ONLY / EXECUTE_DISABLED / READ_ONLY_UI` 為安全硬規則

## **16.4 T0 / T1 雙路由要求**

* `route_mode` 只允許 `T0 / T1 / BOTH`  
* T0 主線含 13:10 禁新倉、13:20 強清倉硬規則  
* T1 副線無 13:20 強清，但需隔夜監控腳本與次日處置  
* TRANSLATE / WATCH / EXECUTE / BACKTEST 均需標記 route\_mode

## **16.5 Scenario Parity Map**

\<a id="anchor-gcerm-v220r1-16-scenario-parity"\>\</a\>  
\[ANCHOR:GCERM-V220R1-16-SCENARIO-PARITY\]

| scenario\_id | route\_mode | involved\_CAs | XQ\_touchpoint | HITL\_touchpoint | legacy\_intent\_ref | parity\_state | TT\_if\_any |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| SCN-T0-E2E-MIN | T0 | UI→WRC→…→EXECUTE→PERFORM→GOVERN | XQ intraday load/use | execute approval | REQ-101, 105g | CLOSED | — |
| SCN-T1-E2E-MIN | T1 | UI→…→TRANSLATE→WATCH→EXECUTE→PERFORM | XQ overnight monitor/use | execute approval | REQ-101, 105g | CLOSED | — |
| SCN-XQ-CONNECTIVITY-SPIKE | BOTH | TRANSLATE, WATCH, EXECUTE | compile/load/reference | handoff ready | REQ-105e | CLOSED\_WITH\_CONFIGURE | THR-XQ-PARITY-001 |
| SCN-UI-ONECLICK | BOTH | UI \+ all | indirect | N/A | REQ-105g, 109a | CLOSED | — |
| SCN-GOVERN-PACKAGING | BOTH | GOVERN \+ all | indirect | N/A | REQ-105h, 110a | CLOSED | — |
| SCN-WATCH-RADAR-ONLY | T0/T1 | WATCH | XQ watch only | no trade | REQ-101 | CLOSED | — |
| SCN-EXECUTE-HITL | T0/T1 | EXECUTE | XQ order endpoint only | required | REQ-101 | CLOSED | — |
| SCN-XQ-PAID-MODULE-RESERVE | BOTH | TRANSLATE/WATCH/EXECUTE | paid module reserve | TBD | REQ-108 | TEMP\_CLOSED | TT-XQ-PAID-001 |

**Interpretation Note：**
- Scenario Parity Map 中 `TRANSLATE / WATCH / EXECUTE` 的參與，只表示 compile / monitor / handoff / reconcile 責任被納入 parity 檢查；不得被解讀為本地存在第二套盯盤或下單執行引擎。

**source\_ptr:**

* `Spartoi｜SubP1-LITE+MVP 開發中央工程正文_v1.1.0`  
* `Spartoi｜各階段子系統操作流程_v1.0.1`  
* `Spartoi｜台股當沖_隔日沖實際流程_v1.0.0 Final`  
* `Spartoi-OMOC_SRS_v8.1.0`  
* `Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文_v2.1.0-r1_最新裁決部分重寫`  
  Supported by  
   Spartoi｜SubP1-LITE+MVP 開發中央工程正文\_v…

   Spartoi-OMOC\_SSOT\_合冊

   Spartoi｜台股當沖\_隔日沖實際流程\_v1.0.0 Fin…

   Spartoi-OMOC\_SRS\_v8.1.0

   Spartoi-OMOC\_SubP1-LITE+MVP子系統\_…

---

# **17\. MC4 / SS-Lite / WP.Master 中央定義 vs 本地綁定、local obligations、禁止事項**

\<a id="anchor-gcerm-v220r1-17-mc4-wp"\>\</a\>  
\[ANCHOR:GCERM-V220R1-17-MC4-WP\]

## **17.1 中央定義**

中央正文只定：

* 七點需求項  
* 8 模板 Gate  
* alias 解析  
* 15CA canonical deliverable  
* Threshold Register  
* evidence / run\_id / degrade / release\_guard 規則  
* one-rule-one-owner matrix  
* clause-level absorption ledger  
* 15CA auditable matrix  
* scenario parity map  
* archive disposition matrix

## **17.2 MC4 最低必寫欄位**

* subsystem\_id  
* subsystem\_role\_in\_closure  
* scope / non\_responsibility  
* minimum\_behavior  
* minimum\_inputs  
* canonical\_deliverables  
* accepted\_legacy\_aliases  
* primary\_gate\_alias  
* template\_gate\_resolution  
* local\_fail\_closed  
* evidence\_pack  
* ui\_touchpoint  
* govern\_touchpoint  
* threshold\_refs  
* route\_out

## **17.3 WP.Master 最低必寫欄位**

* 前置條件  
* 執行步驟  
* 交付物路徑  
* Gate 執行步驟  
* local evidence 路徑  
* stopline  
* rollback / degrade  
* run\_id / manifest 寫入  
* UI 操作點或 UI 觸發方式  
* GOVERN 收納點  
* threshold\_ref 讀取方式  
* 失敗分類與重跑規則  
* T0/T1 route contract

## **17.4 SS-Lite 最低必寫欄位**

* subsystem stable\_id  
* role summary  
* upstream refs  
* canonical artifacts  
* gate bindings  
* evidence contract summary  
* data backbone refs  
* risk / degrade summary

## **17.5 禁止事項**

* 不得全文複寫 8 Gate 模板  
* 不得自創第 9 個模板 Gate  
* 不得自行寫死未授權 threshold  
* 不得改寫 15CA allowlist  
* 不得把全系統 orchestration 塞進單一 CA 的 MC4 / WP  
* 不得把 Package D / E 的 HOW 搬進中央正文重寫

**source\_ptr:**

* `Spartoi｜SubP1-LITE+MVP 開發中央工程正文_v1.1.0`  
* `Spartoi-OMOC_SubP1-LITE+MVP_Subsystem Delivery Pack`  
* `Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊`  
* `Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文_v2.1.0-r1`  
  Supported by  
   Spartoi｜SubP1-LITE+MVP 開發中央工程正文\_v…

   Spartoi-OMOC\_SubP1-LITE+MVP子系統\_…

   Spartoi-OMOC\_SubP1-LITE+MVP\_Pac…

---

# **18\. Clause-level absorption ledger**

\<a id="anchor-gcerm-v220r1-18-absorption"\>\</a\>  
\[ANCHOR:GCERM-V220R1-18-ABSORPTION\]

| source\_family | source\_items | handling\_mode | landed\_at | final\_status |
| ----- | ----- | ----- | ----- | ----- |
| Base central manual | GCERM v2.1.0-r1 | rewrite \+ supersede | all chapters | superseded\_by\_v2.2.0-r1 |
| Review basis | GCERM v2.1.0-r1 審查報告 | blocker/major/medium closure | chapters 2/3/4/5/6/10/11/12/15/16/19/20 | absorbed |
| Latest adjudication rewrite | 最新裁決部分重寫 | direct embed | chapters 3/4/5/6/15/16/19 | absorbed |
| Historical central baseline | GCERM v1.0.0 | seed / cross-check / route-out discipline | chapters 0/3/7/8/17/20 | superseded |
| Legacy central engineering manual | 開發中央工程正文 v1.1.0 | direct engineering absorption | chapters 7/10/11/12/13/14/15/16/17 | superseded\_in\_central\_scope |
| Legacy HOW | 開發 RUNBOOK & WI v1.4.0 | central duties absorbed / HOW route-out retained | chapters 10/17/18 | route\_out\_for\_how |
| Legacy discussion | Agent 整合版 | gate intent absorbed; agent flow archived | chapters 5/11/18/19 | partial\_absorb\_partial\_archive |
| Legacy requirement lists | 需求列表A/B | closure / archive / traceability mapping | chapters 10/11/18/19 | absorbed\_or\_archived |
| Legacy requirement summaries | 需求總表A/B | closure / legal crosswalk / archive | chapters 6/10/11/15/16/19 | absorbed\_or\_archived |
| Reference bundle: pipeline plans | Pipeline-A/B/C \+ A+B DB | absorb engineering decisions | chapters 8/9 | absorbed |
| Reference bundle: five-subsystem scheme | 五子系統組合方案 | absorb thin cross-cut / UI legal correction | chapters 9/16 | absorbed |
| Reference bundle: rename / subsystem blueprint / 15CA blueprint | 改名方案 / 子系統重構藍圖 / 15CA藍圖 | stable\_id / display\_name / 5+1 / boundary / hooks | chapters 7/8/12 | absorbed |
| Domain supplements | 三源融合方案 / ICT執行正文 / ICT分析總表 | absorb semantic corpus / method calibration / placeholder correction | chapters 6/13/16/19 | absorbed\_as\_domain\_policy |
| Ancient requirements | P0-Q\&A\_1114 / 系統21項需求 | archive \+ historical motive \+ no future dependency | chapters 6/19 | traceability\_only |
| Old P1 | P1\_SRS v7 / P1\_ARCH v6 | legal replacement declaration | chapter 6 / 19 | LEGACY\_BASELINE\_TRACEABILITY\_ONLY |
| Historical mother spec | P2/P2.5 WP單檔三合一 | archive / traceability-only | chapters 6/19 | traceability\_only |
| Scenario alignment | 台股當沖\_隔日沖實際流程 / 各階段子系統操作流程 | route \+ XQ/HITL/T0/T1 alignment | chapters 11/12/16 | absorbed |

## **18.1 Absorption Rule**

本 ledger 的法律效果僅限中央工程正文範圍。  
凡標記 `absorbed`，表示其中央工程義務已在本正文有唯一落點；  
凡標記 `route_out_for_how`，表示 HOW 不進中央正文；  
凡標記 `traceability_only / archived`，表示不再作現行施工依賴。

**source\_ptr:**

* `GCERM v2.1.0-r1`  
* `GCERM v2.1.0-r1_審查報告`  
* `GCERM 最新裁決部分重寫`  
* `Spartoi｜SubP1-LITE+MVP 開發中央工程正文_v1.1.0`  
* `參考方案合冊`  
* `三源融合方案 / ICT 補件 / 場景文檔`  
  Supported by  
   Spartoi-OMOC\_SubP1-LITE+MVP子系統\_…

   Spartoi-OMOC\_SubP1-LITE+MVP子系統\_…

   Spartoi-OMOC\_SubP1-LITE+MVP子系統\_…

   Spartoi｜SubP1-LITE+MVP 開發中央工程正文\_v…

   ICT股票分析總表\_v1.2.1

   ICT 偽代碼 ×「類 ICT／互補」台股方法 × 台股微結構…

---

# **19\. Legacy Archive Annex、Archive Disposition Matrix、Supersede / Traceability / Removed-from-MVP-Scope register**

\<a id="anchor-gcerm-v220r1-19-archive"\>\</a\>  
\[ANCHOR:GCERM-V220R1-19-ARCHIVE\]

## **19.1 Archive 原則**

* 舊條目不得直接消失  
* 每個 legacy item 必須被標記為 `rewritten / archived / route-out / traceability_only / tt`  
* archived item 不得再入 normative 正文  
* rewritten item 必須有新抽象與 traceability locator  
* traceability\_only item 不得再成為現行施工依賴

## **19.2 Archive Disposition Matrix**

\<a id="anchor-gcerm-v220r1-19-archive-disposition"\>\</a\>  
\[ANCHOR:GCERM-V220R1-19-ARCHIVE-DISPOSITION\]

| legacy\_item | original\_source | disposition | final\_owner | reentry\_forbidden | traceability\_locator |
| ----- | ----- | ----- | ----- | ----- | ----- |
| Agent / 非Agent 一鍵切換 | 需求總表A / Agent整合版 | ARCHIVED / REMOVED\_FROM\_MVP\_SCOPE | central | YES | §5.3 |
| Codespaces 雲端沙盒主路線 | 需求總表B 113 | REWRITTEN(FALLBACK\_ONLY) | central | YES | §5 |
| Claude Code \+ Codex 分工 | 需求總表B 114 | ARCHIVED | central | YES | §5, §20 |
| 第三方 AI/LLM 驗收 | 需求總表B 115 | ROUTE\_OUT\_SUPPORT\_ONLY | central | YES | §5, §20 |
| 多跨 LLM 蒸餾方式 | 需求總表B 116 | ARCHIVED | central | YES | §5, §20 |
| 三人協作 Pipeline 方案 | 需求總表B 117 | ARCHIVED\_ROUTE\_OUT | central | YES | §5, §20 |
| reviewer / blind flow / blind production | 舊需求與舊審查族群 | ARCHIVED / REMOVED\_FROM\_MVP\_SCOPE | central | YES | §6.5 |
| WT-NA 精靈作為 MVP 主施工介面 | 舊流程文件 | ARCHIVED\_AS\_MAINLINE / ROUTE\_OUT\_AS\_HISTORY | central | YES | §6.5 |
| Drive / rclone 流程 | 舊工具鏈 | ARCHIVED | central | YES | §5 |
| 舊雲端沙盒細節 | 舊工具鏈 | ARCHIVED | central | YES | §5 |
| 本地 UI 觸發雲端 CLI 主路線 | v1.1 非現行正文排除 | ARCHIVED | central | YES | §16 |
| 桌面 GUI 唯一合法 | 系統21項需求 / 需求總表A | SUPERSEDED\_BY\_CONTROLLED\_SINGLE\_ENTRY\_UI | central | YES | §16.1 |
| P0-Q\&A\_1114 作現行施工依賴 | 古老需求 | TRACEABILITY\_ONLY | central | YES | §6.2 |
| 系統21項需求作現行施工依賴 | 古老需求 | TRACEABILITY\_ONLY | central | YES | §6.2 |
| P1\_SRS v7 作現行上位規範 | 舊 P1 | LEGACY\_BASELINE\_TRACEABILITY\_ONLY | central | YES | §6.1 |
| P1\_ARCH v6 作現行上位規範 | 舊 P1 | LEGACY\_BASELINE\_TRACEABILITY\_ONLY | central | YES | §6.1 |
| P2/P2.5 WP 單檔三合一覆寫現行 Pack/E 契約 | 歷史母本 | TRACEABILITY\_ONLY | central | YES | §6.3 |
| XQ 付費模組未驗整合 | 需求總表B 108 | TT / TEMP\_CLOSED | central | NO | §11 REQ-108 / §15.5 |
| 盤後量化選股模組視為當前必做最小可用 | 新增需求誤解 | RESERVE\_ONLY | central | YES | §15.5 |

## **19.3 Legacy Domain Annex：ICT 1\~107 與三源融合**

* `ICT 1~107` 的法律地位：`METHOD / TA / TRANSLATE` 的 `legacy semantic corpus + calibration reference`；**不是**要求 MVP 分拆 107 個獨立子功能。  
* `三源融合` 的法律地位：METHOD 的台股在地化、語義組裝、風控組裝、轉譯前校準原則；**不是**獨立 Pack owner。  
* `ICT 1~107` 與 `三源融合` 已可作中央工程需求之 traceable domain policy；但不得回退為“只寫概念，不落工程”的口號。

## **19.4 Ancient Requirement Closure Note**

對 `P0-Q&A_1114` 與 `系統21項需求` 的正式處理結論是：

* 已保留歷史意圖  
* 已保留對照價值  
* 已完成封存  
* 之後無須再拿出來參照現行施工

**source\_ptr:**

* `GCERM 最新裁決部分重寫`  
* `Spartoi｜SubP1-LITE+MVP 開發中央工程正文_v1.1.0`  
* `Spartoi｜SubP1-LITE+MVP_需求總表A / B`  
* `《Spartoi｜SubP1-LITE + MVP + Agent_討論整合版_v1.0.0》`  
* `ICT 偽代碼 × 類 ICT / 互補方法 × 台股微結構 三源融合方案`  
* `ICT股票分析總表_v1.2.1`  
* `ICT台股當沖流程_0執行正文_v1.7.0+`  
  Supported by  
   Spartoi-OMOC\_SubP1-LITE+MVP子系統\_…

   Spartoi｜SubP1-LITE+MVP 開發中央工程正文\_v…

   《Spartoi｜SubP1-LITE+MVP\_開發Runbo…

   Spartoi｜SubP1-LITE+MVP\_需求總表B

   《Spartoi｜SubP1-LITE \+ MVP \+ Age…

   ICT 偽代碼 ×「類 ICT／互補」台股方法 × 台股微結構…

   ICT股票分析總表\_v1.2.1

   ICT台股當沖流程\_0執行正文\_v1.7.0+

---

# **20\. Document Verdict / Release Verdict、Release Guard、Closure Dashboard、TT Register、Self-Audit Checklist、Issue Closure Table、ChangeLog**

\<a id="anchor-gcerm-v220r1-20-verdict"\>\</a\>  
\[ANCHOR:GCERM-V220R1-20-VERDICT\]

## **20.1 Document Verdict**

\[ANCHOR:GCERM-V220R1-20-DOC-VERDICT\]

**verdict:** `DOCUMENT_PASS_WITH_BOUND_TT`

**document-level effect**

* 本版已可作 SubP1-LITE+MVP 中央工程正文  
* 本版已吸收 v2.1.0-r1 審查報告與最新裁決重寫  
* 本版已把 15CA / 七點需求 / Gate / Threshold / UI/GOVERN/XQ/HITL / archive / verdict 統一落到單一中央位置

**bound TT**

* `TT-XQ-PAID-001`：XQ 付費模組 / 盤中量化交易模組 / 盤後量化選股模組仍僅 reserve / capability / parity 前置，未達 release-ready

## **20.2 Release Verdict**

\[ANCHOR:GCERM-V220R1-20-RELEASE-VERDICT\]

**verdict:** `FAIL_CLOSED`

理由：

* 本回合未驗 repo existence  
* 未驗 15× deliverables existence  
* 未驗 manifest-validator execution  
* 未驗 required checks / always-report / merge\_group  
* 未驗 run logs / replay surface

文件成立，不等於 release 可放行。

## **20.3 Release Guard**

| guard\_id | requirement | state |
| ----- | ----- | ----- |
| RG-001 | 15× deliverables exist in repo | NOT\_EVIDENCED |
| RG-002 | manifest \+ validator pass | NOT\_EVIDENCED |
| RG-003 | evidence triplet pass | NOT\_EVIDENCED |
| RG-004 | required checks \+ always-report \+ merge\_group pass | NOT\_EVIDENCED |
| RG-005 | run logs / replay surface present | NOT\_EVIDENCED |
| RG-006 | no TT blocks release path | FAIL |

## **20.4 Closure Dashboard**

| metric | value |
| ----- | ----- |
| mandatory\_input\_found\_count | 26 |
| mandatory\_input\_missing\_count | 0 |
| normative\_missing\_count | 0 |
| principal\_tt\_count | 1 |
| req\_closed\_or\_closed\_with\_configure | 23 |
| req\_temp\_closed | 1 |
| machine\_auditable\_matrix\_rows | 15 |
| release\_guard\_satisfied\_count | 0 |

## **20.5 TT Register**

| tt\_id | owner | severity | normative\_block\_scope | exit\_criteria | retest\_method | auto\_revoke\_rule |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| TT-XQ-PAID-001 | central \+ O.Operate-XQ | High | REQ-108 paid-module integration | capability profile \+ parity-compatible evidence \+ scenario replay | XQ paid module scenario replay | once direct capability/parity evidence lands |
| TT-RELEASE-EVIDENCE-001 | repo/release owner | High | release-level pass claim | repo evidence \+ validator \+ checks \+ logs | release guard suite | once all RG-001\~005 pass |

## **20.6 Self-Audit Checklist**

* 15CA 是否不多不少  
* stable\_id 是否未被 display\_name 取代  
* ReferenceDB 是否唯一  
* RunLedger 是否唯一  
* 8 模板 Gate 是否完整  
* alias 是否全部可解析  
* MC4 / WP 是否只寫本地義務  
* UI 是否仍為單一入口而非 hidden launcher  
* desktop GUI 是否未被偷渡為唯一合法  
* GOVERN 是否仍自動整理全部資料  
* EXECUTE 是否仍 HITL-only  
* XQ parity 是否仍完整  
* CONFIGURE\_REQUIRED 是否未被偷寫死  
* Package C 是否未被寫成 settled HOW  
* Codespaces 是否未被情緒化禁用或誤升主路線  
* ancient requirements 是否未回流現行規範  
* P1\_SRS v7 / P1\_ARCH v6 的合法替代關係是否明文  
* XQ 新需求是否已標 NEW\_MVP\_REQUIREMENT 且不破壞 XQ sole endpoint  
* reviewer / blind flow / toggle 是否已 formal archive  
* document-level 是否未偷渡成 release-ready

## **20.7 Issue Closure Table**

| issue\_family | status | landed\_at |
| ----- | ----- | ----- |
| Authority Stack rewrite | CLOSED | §3 |
| Package C boundary rewrite | CLOSED | §4 |
| Toolchain primary / fallback / archive ruling | CLOSED | §5 |
| Old P1 legal replacement | CLOSED | §6 |
| Ancient requirement archival | CLOSED | §6 / §19 |
| UI legal form correction | CLOSED | §16 |
| Agent / reviewer / blind flow formal archive | CLOSED | §5 / §19 |
| Seven requirement acceptance closure | CLOSED\_WITH\_CONFIGURE | §10 / §11 / §15 |
| 15CA machine-auditable matrix | CLOSED | §12 |
| Gate alias / template closure | CLOSED | §14 |
| Threshold register / 40% governance | CLOSED\_WITH\_CONFIGURE | §15 |
| XQ parity full clauses | CLOSED\_WITH\_CONFIGURE | §15 |
| XQ paid module reserve discipline | TEMP\_CLOSED | §11 / §15 / §20 |
| Document vs release verdict split | CLOSED | §20 |
| Scenario parity map | CLOSED | §16 |
| Archive disposition matrix | CLOSED | §19 |
| No Summary-Only Evidence discipline | CLOSED | §§0,3,20 |

## **20.8 ChangeLog**

* `v2.2.0-r1`  
  * 導入最新裁決重寫四組正文：Authority / Package C / Legacy Archive / UI-Agent-Reviewer-XQ Crosswalk  
  * 插入獨立第 6 章，固定舊 P1 / 古老需求 / P2/P2.5 / 舊方案法律地位  
  * 將 UI 正式改寫為 `受控單一入口`；桌面 GUI 不再是 MVP 唯一合法形態  
  * 正式將 `XQ 盤中量化交易平台 / 盤中量化交易模組 / 盤後量化選股模組` 標註為 `NEW_MVP_REQUIREMENT`  
  * 正式封存 Agent/reviewer/blind flow/toggle 舊設計  
  * 維持 document-level 與 release-level 分層；不作虛假放行

**source\_ptr:**

* `GCERM v2.1.0-r1_審查報告`  
* `GCERM 最新裁決部分重寫`  
* `GCERM v2.1.0-r1`  
* `Spartoi-OMOC_SRS_v8.1.0`  
* `Spartoi｜SubP1-LITE+MVP 開發中央工程正文_v1.1.0`  
  Supported by  
   Spartoi-OMOC\_SubP1-LITE+MVP子系統\_…

   Spartoi-OMOC\_SubP1-LITE+MVP子系統\_…

   Spartoi-OMOC\_SubP1-LITE+MVP子系統\_…

   Spartoi-OMOC\_SRS\_v8.1.0

   Spartoi｜SubP1-LITE+MVP 開發中央工程正文\_v…

