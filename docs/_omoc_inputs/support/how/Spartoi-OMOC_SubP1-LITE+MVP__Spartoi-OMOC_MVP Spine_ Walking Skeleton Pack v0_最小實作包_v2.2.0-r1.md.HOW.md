# HOW (extracted)


| Topic（本文件不寫 HOW） | Route-Out To | evidence\_ptr |
| ----- | ----- | ----- |
| Dev 施工步驟 / CI / repo 操作 | Dev RBWI（全域 \+ SubP1） | `DOCLOC:/mnt/data/Spartoi-OMOC_dev RB + WI_v8.1.1-dev-r2.md#[ANCHOR:DEV-RBWI-S0-COVER]` \+ `DOCLOC:/mnt/data/Spartoi-OMOC_SubP1-LITE+MVP_Dev RUNBOOK + WI_ v2.1.0-r2.md#[ANCHOR:SOMOC-SUBP1MVP-DEV-S0-COVER]` |
| Ops 上線 / 事件處理 / 回放 | Ops RBWI（全域 \+ SubP1） | `DOCLOC:/mnt/data/Spartoi-OMOC_ops RB + WI _v8.1.1-ops-r1.md#[ANCHOR:OPS-RBWI-S0-COVER]` \+ `DOCLOC:/mnt/data/Spartoi-OMOC_SubP1-LITE+MVP_Ops RUNBOOK + WI_v2.1.0-r2.md#[ANCHOR:SOMOC-SUBP1MVP-OPS-S0-COVER]` |
| JSON Schema 的 canonical 定義 | ICD (LBP-B) | `DOCLOC:/mnt/data/Spartoi-OMOC_LBP-B(ICD)v8.1.1-r2.md#[ANCHOR:ICD-V811-8-4-JSONSCHEMA-PROPS]` |
| Gate 的參數、覆蓋率門檻、評分 | Fitness (LBP-E) / TT | `DOCLOC:/mnt/data/Spartoi-OMOC_LBP-E(Fitness) v8.1.1-r2.md#[ANCHOR:FITNESS-V811-0-0-DOCMETA]` |
| 架構細節、視圖、決策脈絡 | ARCH / ADR / C4 | `DOCLOC:/mnt/data/Spartoi-OMOC_ARCH_v8.1.0.md#[ANCHOR:ARCH-V810-0-0-DOCMETA]` \+ `DOCLOC:/mnt/data/Spartoi-OMOC_LBP-C(ADR) v8.1.1-r2.md#[ANCHOR:ADR-V811-0-0-DOCMETA]` \+ `DOCLOC:/mnt/data/Spartoi-OMOC_LBP-D(C4) v8.1.1-r2.md#[ANCHOR:C4-V811-0-0-DOCMETA]` |


---


| Term | 定義 | SSOT 對齊 |
| ----- | ----- | ----- |
| MVP Spine | OMOC 的最小閉環「脊椎」：控制/執行/周邊三平面接口的可驗收骨架 | `DOCLOC:/mnt/data/OMOC_藍圖_v4.0.1-r1.md#[ANCHOR:OMOC-BP-0800]` |
| Gate | 治理閘門：缺證據/不合規即 Fail-Closed | `DOCLOC:/mnt/data/Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-GATE-DICTIONARY]` |
| Evidence Triplet | Verdict \+ Bundle \+ Index 三件套 | `DOCLOC:/mnt/data/Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-REQ-EVID-TRIPLET]` |
| TT / TEST\_TRACK | 可變動事實或未決事項的驗證台帳（含撤銷條件） | `DOCLOC:/mnt/data/Spartoi-OMOC_MIP_v2.2.0.txt#[ANCHOR:MIP-V220-8-2-TESTTRACK]` \+ `DOCLOC:/mnt/data/Spartoi-OMOC_SubP1-LITE+MVP_總控控制平面_v2.1.0-r2.md#[ANCHOR:SOMOC-CTRL-S8-TT-STATE-MACHINE]` |
| Route-Out | 規格不膨脹：HOW/門檻/Schema 外導 | `DOCLOC:/mnt/data/Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-GATE-ROUTEOUT]` |


---


| Capability | 最小驗收語句（不含 HOW） | SSOT 對齊 |
| ----- | ----- | ----- |
| Evidence Triplet 產生 | 任一 Gate/Pipeline/關鍵操作產出 Triplet，缺一 Fail-Closed | `DOCLOC:/mnt/data/Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-REQ-EVID-TRIPLET]` |
| Anti-tamper | Verdict 內含 Bundle 的 SHA-256（或等價雜湊） | `DOCLOC:/mnt/data/Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-REQ-EVID-TRIPLET]`（SRS81-GOV-EVID-002） |
| Core Gate 覆蓋 | 至少實作 SRS 核心 Gate 字典（見 S10） | `DOCLOC:/mnt/data/Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-GATE-DICTIONARY]` |
| TT 治理 | 未決/可變動事項登記 TT（含驗證方法與撤銷條件） | `DOCLOC:/mnt/data/Spartoi-OMOC_MIP_v2.2.0.txt#[ANCHOR:MIP-V220-8-2-TESTTRACK]` \+ `DOCLOC:/mnt/data/Spartoi-OMOC_SubP1-LITE+MVP_總控控制平面_v2.1.0-r2.md#[ANCHOR:SOMOC-CTRL-S8-TT-STATE-MACHINE]` |
| Replay 最小要求 | 每次執行輸出可回放所需的 run\_config\_snapshot 與 evidence index | `DOCLOC:/mnt/data/Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-REQ-EVID-TRACE]` |


---


| Artifact | 最小用途 | Schema / Route-Out |
| ----- | ----- | ----- |
| `schemas/*` | 讓 Evidence/Gate/RunConfig 可機械驗收 | ICD（LBP-B）為 canonical；本文件僅提供參考模板（S11.5） |
| `evidence/<run_id>/verdict.json` | 最終裁決（PASS/FAIL/RADAR\_ONLY/EXECUTE\_DISABLED） | SRS Evidence Triplet；Schema→ICD |
| `evidence/<run_id>/evidence_bundle.tgz` | 原始證據包（log/report/snapshot） | SRS Evidence Triplet |
| `evidence/<run_id>/index.json` | bundle 索引 \+ hash \+ trace\_refs | SRS Evidence Trace |
| `gate_report.json` | Gate 統整報告（對應 Gate IDs） | Schema→ICD |
| `run_config_snapshot.json` | 回放所需最小配置快照 | Schema→ICD |
| `TT register` | 未決/可變動事項台帳 | 參考 S13；canonical 需 TT-ICD（見 S13） |


---


| Plane | 本文件承載（接口/產物） | Route-Out（HOW） | evidence\_ptr |
| ----- | ----- | ----- | ----- |
| Control Plane | Gate 字典引用、Evidence 契約引用、TT state 最小欄位、路由註冊表 | 總控控制平面實作與操作 | `DOCLOC:/mnt/data/OMOC_藍圖_v4.0.1-r1.md#[ANCHOR:OMOC-BP-0800]` \+ `DOCLOC:/mnt/data/Spartoi-OMOC_SubP1-LITE+MVP_總控控制平面_v2.1.0-r2.md#[ANCHOR:SOMOC-CTRL-S8-TT-STATE-MACHINE]` |
| Execution Plane | Pipeline A/B/C 的最小 I/O 契約、Evidence 產出要求、DoD | Pipeline 選型與編排細節 | `DOCLOC:/mnt/data/Spartoi-OMOC_MIP_v2.2.0.txt#[ANCHOR:MIP-V220-6-2-PIPELINE]` |
| Peripheral Plane | 外部系統/工具/技能的「禁默認」與降級策略（TT 驗證） | 具體工具整合 | `DOCLOC:/mnt/data/Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-GATE-ROUTEOUT]` |


---


| Layer | 最小交付物 | DoD（可驗收語句） | 狀態 |
| ----- | ----- | ----- | ----- |
| L0: Governance Skeleton | Gate 字典引用 \+ Evidence Triplet 契約引用 \+ TT 機制 | Gate/Evidence/TT 均可定位且可稽核 | PASS |
| L1: Evidence-First Execution | 任一最小 pipeline 能產出 Triplet | Triplet 缺一 Fail-Closed | PASS |
| L2: Gate Orchestration | Gate report 可覆蓋核心 Gate | Gate report 可映射到 SRS Gate IDs | PASS |
| L3: Replay | run\_config\_snapshot \+ evidence index 可回放 | 可重現到「同一裁決規則版本」 | TT（TT-MINIMPL-REPLAY-001） |


---


| Gate ID | 主要輸入 | 主要輸出 | 判定 | 證據索引（最小） |
| ----- | ----- | ----- | ----- | ----- |
| GATE-BP-001 | docs tables | lint report | BLOCK\_RELEASE | Triplet \+ gate\_report |
| GATE-BP-002 | anchors scan | anchor\_scan report | BLOCK\_RELEASE | Triplet \+ anchor registry snapshot |
| GATE-BP-003 | verdict/index/bundle | integrity check report | BLOCK\_RELEASE | Triplet（自驗） |
| GATE-BP-004 | RTM matrix | coverage report | BLOCK\_RELEASE | Triplet \+ rtm artifact |
| GATE-MQ-001 | merge\_group trace | mq trace artifact | BLOCK\_RELEASE | Triplet \+ mq trace |
| GATE-SC-002 | dep/actions list | scan report | BLOCK\_RELEASE | Triplet \+ scan report |
| GATE-HITL-001 | env approval event | approval log | EXECUTE\_DISABLED | Triplet \+ approval evidence |
| GATE-SAFE-002 | runtime mode | radar-only log | RADAR\_ONLY | Triplet \+ radar-only evidence |
| GATE-SAFE-003 | kill-switch/auth | execute-disabled log | EXECUTE\_DISABLED | Triplet \+ exec-disabled evidence |


---


| Artifact ID | Path（建議） | 用途 | Canonical Source |
| ----- | ----- | ----- | ----- |
| ART-EVIDENCE-TRIPLET | `evidence/<run_id>/{verdict.json,evidence_bundle.tgz,index.json}` | 核心證據 | SRS / ICD |
| ART-GATE-REPORT | `gate_report.json` | Gate 統整 | ICD |
| ART-RUN-CONFIG-SNAPSHOT | `run_config_snapshot.json` | 回放 | ICD |
| ART-TT-REGISTER | `tt_register.jsonl` | TT 台帳 | Control Plane / MIP（需 TT 定稿） |


---


| Conflict ID | 衝突描述 | 高位裁決 | 影響 | 處置 |
| ----- | ----- | ----- | ----- | ----- |
| CL-MINIMPL-001 | MIP 註記「8 大核心 Gate」vs SRS 核心 Gate 字典列出 9 條 | 以 SRS 為 Normative | Gate 模板數量與驗收 | TT-MINIMPL-GATE-COUNT-001 |
| CL-MINIMPL-002 | 舊版 README 斷言「不可新增第 9 gate」 | 以 SRS 為 Normative | 文件與模板需調整 | TT-MINIMPL-GATE-COUNT-001 |


---


| MIP Anchor | 本文件落點 |
| ----- | ----- |
| MIP-V220-SEC0（Preflight/Gov） | S15（Locator Proof）+ S4（Authority/Scope） |
| MIP-V220-SEC5（Evidence/Gates） | S10 |
| MIP-V220-SEC6（Route-Out） | S4.4 \+ S11.2 |
| MIP-V220-SEC8（CR\_OPEN/TT） | S13 |
| MIP-V220-SEC10（Self-Check） | S18 |


---


| SSOT | 本文件落點 |
| ----- | ----- |
| OMOC Blueprint v4.0.1-r1 | S7（Tri-Plane）+ S4（Fail-Closed/Authority） |
| SRS v8.1.0 | S10（Gate/Evidence） |
| ICD (LBP-B) | S4.4（Route-Out）+ S11（Registries） |
| Control Plane (SubP1) | S7.2 \+ S13（TT） |


---


| Field | Value |
| ----- | ----- |
| CR\_OPEN (this doc) | **0** |
| Policy | 本文件不得留下 CR\_OPEN；一律轉 TT |
| evidence\_ptr: `DOCLOC:/mnt/data/Spartoi-OMOC_MIP_v2.2.0.txt#[ANCHOR:MIP-V220-8-1-CROPEN]` |  |


---


| TT-ID | 主題 | 原因 | 影響 | 驗證方法 | 撤銷條件 | Owner | 狀態 |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| TT-MINIMPL-GATE-COUNT-001 | 核心 Gate 數量 8 vs 9 衝突 | MIP 註記 8；SRS 列 9 | Gate 模板/驗收 | 以 SRS Gate Dictionary 條文為準，核對 15CA Gate Registry \+ CheckMap 的可定位條文 | 15CA/SSOT 可定位且一致後，更新模板與映射表 | GOV | TEMP\_CLOSED→TEST\_TRACK |
| TT-MINIMPL-ICD-SCHEMA-001 | canonical schema locator/版本鏈未閉合 | ICD registry 仍含 TT/legacy 指向 | Schema 驗收 | 逐一核對 ICD registry 的 canonical\_path 與 export\_format 是否能定位到 repo | ICD registry 全欄可定位且版本鏈閉合 | ICD | TEST\_TRACK |
| TT-MINIMPL-PIPEA-001 | Pipeline-A 工具與版本漂移 | 組合方案屬規劃層 | 工程可重現性 | 在 repo evidence 中加入「pipeline\_engine \+ version」並可重現同結果 | 兩次獨立回放產出一致裁決（允許 RADAR\_ONLY） | DEV | TEST\_TRACK |
| TT-MINIMPL-PIPEB-001 | Pipeline-B 工具與版本漂移 | 同上 | 同上 | 同上 | 同上 | DEV | TEST\_TRACK |
| TT-MINIMPL-PIPEC-001 | Pipeline-C 工具與版本漂移 | 同上 | 同上 | 同上 | 同上 | OPS | TEST\_TRACK |
| TT-MINIMPL-REPLAY-001 | Replay 最小確定性 | 回放可能受環境/工具影響 | 審計可信度 | 定義「可接受的非決定性範圍」並在 evidence index 記錄 | Fitness/ICD 明確化後落地 | GOV | TEST\_TRACK |
| TT-MINIMPL-NAME-001 | stable id 不可變命名原則升格 | 改名方案屬規劃層 | 命名一致性 | 對齊 15CA SSOT 的可定位條文 | SSOT 條文化後升格 | ARCH | TEST\_TRACK |


---


| Input Doc | Status | Locator Proof |
| ----- | ----- | ----- |
| Spartoi｜MVP Spine \_ Walking Skeleton Pack v0\_最小實作包v1.3.0 | FOUND | `DOCLOC:/mnt/data/Spartoi｜MVP Spine _ Walking Skeleton Pack v0_最小實作包v1.3.0.md#[ANCHOR:PACK-DOC-META]` |
| SubP1 WSP v0 v2.1.0-r1 | FOUND | `DOCLOC:/mnt/data/Spartoi-OMOC_SubP1-LITE+MVP Spine_Walking Skeleton Pack v0_v2.1.0-r1.md#[ANCHOR:SOMOC-WSPV0-S0-COVER]` |
| SubP1 藍圖 v1.3.0-r2 | FOUND | `DOCLOC:/mnt/data/Spartoi-OMOC_SubP1-LITE+MVP_藍圖_v1.3.0-r2.md#[ANCHOR:SOMOC-SUBP1MVP-00-COVER]` |
| SubP1 總控控制平面 v2.1.0-r2 | FOUND | `DOCLOC:/mnt/data/Spartoi-OMOC_SubP1-LITE+MVP_總控控制平面_v2.1.0-r2.md#[ANCHOR:SOMOC-CTRL-S0-COVER]` |
| OMOC 藍圖 v4.0.1-r1 | FOUND | `DOCLOC:/mnt/data/OMOC_藍圖_v4.0.1-r1.md#[ANCHOR:OMOC-BP-0000]` |
| MIP v2.2.0 | FOUND | `DOCLOC:/mnt/data/Spartoi-OMOC_MIP_v2.2.0.txt#[ANCHOR:MIP-V220-SEC0]` |
| SRS v8.1.0 | FOUND | `DOCLOC:/mnt/data/Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-0-0-DOCMETA]` |
| ARCH v8.1.0 | FOUND | `DOCLOC:/mnt/data/Spartoi-OMOC_ARCH_v8.1.0.md#[ANCHOR:ARCH-V810-0-0-DOCMETA]` |
| LBP-A\~E | FOUND | 以各 LBP `*-DOCMETA` 錨點為準 |


---


| Issue | 原因 | 修補 | 落點 Anchor | 驗收方式 | 狀態 |
| ----- | ----- | ----- | ----- | ----- | ----- |
| 新增完整 Authority/Scope/Route-Out | 舊版易越界 | 以 MIP/SRS/OMOC 條文化 | S4 | 稽核：是否可定位 \+ 外導表 | PASS |
| Gate 核心集合對齊 SRS | 舊版 gate 數量斷言不一致 | 引用 SRS Gate Dictionary；衝突入 TT | S10 \+ S11.3 | 稽核：SRS gate ids 可映射 | TT |
| CR\_OPEN 清零 | 多文件含 CR\_OPEN 概念 | 本文件 CR=0；全部未決轉 TT | S13 | 稽核：CR=0 \+ TT 完整欄位 | PASS |
| 避免搬運 Runbook HOW | 文件邊界要求 | Route-Out Register 固化 | S4.4 \+ S11.2 | 抽查：無施工步驟 | PASS |


---


| Old Anchor (v1.3.0) | New Anchor | 處置 | 理由 |
| ----- | ----- | ----- | ----- |
| PACK-DOC-META | S0 | 重寫 | 對齊新版本鏈與 SSOT |
| PACK-AUTHORITY-SCOPE | S4 | 重寫 | 以 MIP/SRS/OMOC 條文化 |
| PACK-REPO-TREE | S6.4.1 | 保留 | 仍是最小骨架 |
| FILE-README | S11.4.1 | 保留（修訂註解） | 舊版 gate 斷言被 SRS 覆蓋 → TT |
| FILE-ENTRYPOINT-SH | S11.4.4 | 保留 | 仍屬最小可跑入口（但非唯一入口） |
| FILE-GATE-RUNNER-PY | S11.4.7 | 保留（降格為 Reference） | Gate canonical 以 SRS/15CA 決定 |
| FILE-RUN-SPINE-V0-PY | S11.4.8 | 保留（Reference） | 仍可用於最小閉環證據骨架 |
| PACK-CR-OPEN-ALIGN-V130 | S13 | 重寫 | 本文件 CR\_OPEN 必須為 0，未決事項轉 TT |
| PACK-SELF-AUDIT | S18 | 重寫 | 以本版硬性骨架補齊 |


---


| Check | 結果 |
| ----- | ----- |
| 完整性：S0\~S18 章節齊備 | PASS |
| 可定位性：核心 MUST/SHALL 皆附 evidence\_ptr | PASS |
| 權威對齊：Authority Stack 明確且衝突入帳 | PASS |
| CR\_OPEN=0（本文件） | PASS |
| TT 完整：每筆含驗證方法 \+ 撤銷條件 \+ owner \+ 狀態 | PASS |
| 未越界：未搬運 Dev/Ops 施工步驟 | PASS |
| 可檢索性：TOC \+ Anchor Index \+ Quick Routes | PASS |
| 反幻覺條款：Fail-Closed / No-Source-No-Norm | PASS |
| 舊版覆蓋率：Old anchors 均有落點/處置 | PASS（以 S17 表覆蓋；若後續補齊更細項，走 TT） |
| Gate 集合一致性（8 vs 9） | TT-MINIMPL-GATE-COUNT-001 |

