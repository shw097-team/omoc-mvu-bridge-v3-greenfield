# HOW (extracted)


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


---


| failure\_mode | detection | response | rollback | evidence |
| ----- | ----- | ----- | ----- | ----- |
| required checks 名稱漂移 | registry mismatch | TT \+ 更新 registry \+ 回歸驗收 | 回退 rulesets | snapshot \+ drift\_record |
| merge\_group 未觸發 | 無 trigger evidence | 先驗 MQ 設定，再驗規則覆蓋矩陣 | 回退 MQ/rulesets | trigger evidence |
| 工具/skills hash 不一致 | verify\_report FAIL | 阻斷（GATE-SC-002）+ 回退 manifests | 回退到上一版 PASS | manifests \+ audit |
| 上游檔案缺失 | preflight MISSING | TT \+ BLOCK\_RELEASE | 無 | preflight manifest |
| evidence triplet 不完整 | triplet lint FAIL | 阻斷（GATE-BP-003） | 回退 schema | lint report |


---


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


| concept | dev canonical | ops expected (ref) | allowed\_alias | notes |
| ----- | ----- | ----- | ----- | ----- |
| verdict | verdict.json | verdict.json | — | 必須同名 |
| checks manifest | checks\_manifest.json | checks\_manifest.json（若存在） | index.json（僅作對接過渡） | 以 ops 實際為準；差異需 TT |
| index | evidence\_index.md | evidence\_index.md | evidence\_index.txt | human index |
| bundle | evidence\_bundle.tgz | single\_evidence\_bundle.txt（可能存在） | evidence\_bundle.zip | 以 compatibility report 記錄 |


---


| tt\_id | title | reason | upstream\_docloc | new\_anchor | min\_viable\_verification | expected\_evidence | close\_criteria | due\_gate | priority | state |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| TT-DEV-RBWI-1001 | 缺 OMOC\_藍圖\_v4.0.1-r1 | Mandatory input MISSING | OMOC\_藍圖\_v4.0.1-r1 | \#dev-rbwi-s0-preflight | 取得檔案並建立至少一個可回放 docloc | file hash \+ inventory update | 檔案 FOUND \+ docloc 可定位 \+ preflight PASS | GATE-BP-002-ANCHORREG | P0 | TEMP\_CLOSED→TEST\_TRACK |
| TT-DEV-RBWI-1002 | 缺 Spartoi-OMOC\_子系統重構藍圖 | Mandatory input MISSING | Spartoi-OMOC\_子系統重構藍圖 | \#dev-rbwi-s0-preflight | 取得檔案並建立 doc\_id/version \+ locator proof | preflight manifest | FOUND \+ coverage map 更新 | GATE-BP-002-ANCHORREG | P1 | TEMP\_CLOSED→TEST\_TRACK |
| TT-DEV-RBWI-1003 | ops RB+WI r2 未納入 | 版本漂移風險 | ops RB+WI | \#wi-dev-ops-handoff-001 | 檢查 repo 是否存在 r2；若存在納入矩陣 | version\_snapshot \+ compat report | matrix 更新 \+ compat rerun | GATE-DEV-OPS-COMPAT-001 | P1 | TEMP\_CLOSED→TEST\_TRACK |


---


| we\_id | source | access\_date | used\_at\_anchor | non\_normative\_notice | snapshot\_requirement |
| ----- | ----- | ----- | ----- | ----- | ----- |
| （空表） |  |  |  |  |  |


---


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


---


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


| legacy\_key | legacy\_docloc | new\_anchor |
| ----- | ----- | ----- |
| Phase交付欄位模板 | `...#[ANCHOR:SPLMVP-PHASE-TEMPLATE]` | \#dev-rbwi-s4-stage-runbook |
| Phase 0 Preflight | `...#[ANCHOR:SPLMVP-PHASE-0]` | \#dev-rbwi-stg-00 |
| Stage級RUNBOOK | `...#[ANCHOR:SPLMVP-S4-RUNBOOK]` | \#dev-rbwi-s4-stage-runbook |
| Stopline / Fail-Closed Behavior | `...#[ANCHOR:SPLMVP-PHASE-TEMPLATE]` | \#dev-rbwi-s2-global-conventions |
| （補樣本至 20） | （依抽樣規則） | （對應到 §4/§9） |


---


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

