# HOW (extracted)


| input\_group | document | expected\_role | status | evidence\_ptr (locator\_proof) |
| ----- | ----- | ----- | ----- | ----- |
| 入口/憲法 | Spartoi-OMOC\_MIP\_v2.2.0.txt | NORMATIVE (routing/flows/gates entry) | FOUND | `DOCLOC:/mnt/data/Spartoi-OMOC_MIP_v2.2.0.txt#[ANCHOR:MIP-V220-0-4-MVP_SPINE]` |
| 入口/憲法 | Spartoi-OMOC\_SRS\_v8.1.0.md | NORMATIVE (evidence/gov reqs) | FOUND | `DOCLOC:/mnt/data/Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-REQ-EVID-TRIPLET]` |
| 入口/憲法 | Spartoi-OMOC\_ARCH\_v8.1.0.md | NORMATIVE (authority/boundaries) | FOUND | `DOCLOC:/mnt/data/Spartoi-OMOC_ARCH_v8.1.0.md#[ANCHOR:ARCH-V810-0-3-AUTHORITY]` |
| 入口/憲法 | Spartoi-OMOC\_LBP-A(SIR) v8.1.1-r1.md | NORMATIVE (SIR references) | FOUND | `DOCLOC:/mnt/data/Spartoi-OMOC_LBP-A(SIR) v8.1.1-r1.md` |
| 入口/憲法 | Spartoi-OMOC\_LBP-B(ICD)v8.1.1-r2.md | NORMATIVE (interfaces/contracts) | FOUND | `DOCLOC:/mnt/data/Spartoi-OMOC_LBP-B(ICD)v8.1.1-r2.md` |
| 入口/憲法 | Spartoi-OMOC\_LBP-C(ADR) v8.1.1-r2.md | NORMATIVE (decisions) | FOUND | `DOCLOC:/mnt/data/Spartoi-OMOC_LBP-C(ADR) v8.1.1-r2.md` |
| 入口/憲法 | Spartoi-OMOC\_LBP-D(C4) v8.1.1-r2.md | NORMATIVE (C4/system) | FOUND | `DOCLOC:/mnt/data/Spartoi-OMOC_LBP-D(C4) v8.1.1-r2.md` |
| 入口/憲法 | Spartoi-OMOC\_LBP-E(Fitness) v8.1.1-r2.md | NORMATIVE (fitness/metrics) | FOUND | `DOCLOC:/mnt/data/Spartoi-OMOC_LBP-E(Fitness) v8.1.1-r2.md` |
| SubP1 規劃/憲法 | Spartoi-OMOC\_SubP1-LITE+MVP\_藍圖\_v1.3.0-r2.md | NORMATIVE (SubP1 constitution) | FOUND | `DOCLOC:/mnt/data/Spartoi-OMOC_SubP1-LITE+MVP_藍圖_v1.3.0-r2.md#[ANCHOR:SOMOC-SUBP1MVP-11-EVIDENCE]` |
| 控制面 | Spartoi-OMOC\_SubP1-LITE+MVP\_總控控制平面\_v2.1.0-r2.md | NORMATIVE (routing/adjudication/TT/drift) | FOUND | `DOCLOC:/mnt/data/Spartoi-OMOC_SubP1-LITE+MVP_總控控制平面_v2.1.0-r2.md#[ANCHOR:SOMOC-CTRL-APPX-A-DOC-INVENTORY]` |
| 被升級主體 | Ops RUNBOOK \+ WI\_v2.0.0-r1.md | ANTI-REGRESSION SOURCE (100% coverage) | FOUND | `DOCLOC:/mnt/data/Spartoi-OMOC_SubP1-LITE+MVP_Ops RUNBOOK + WI_v2.0.0-r1.md#[ANCHOR:SOMOC-SUBP1MVP-OPS-S0-COVER]` |
| 模板/對齊 | Spartoi-OMOC\_ops RB \+ WI \_v8.1.1-ops-r1.md | TEMPLATE/REFERENCE | FOUND | `DOCLOC:/mnt/data/Spartoi-OMOC_ops RB + WI _v8.1.1-ops-r1.md#[ANCHOR:OPS-RBWI-08-EVIDENCE-CONTRACT]` |
| 模板/對齊 | Spartoi-OMOC\_dev RB \+ WI\_v8.1.1-dev-r2.md | BOUNDARY/REFERENCE | FOUND | `DOCLOC:/mnt/data/Spartoi-OMOC_dev RB + WI_v8.1.1-dev-r2.md#[ANCHOR:DEV-RBWI-STG-05]` |
| 上位憲法 | OMOC\_藍圖\_v4.0.1-r1.md | NORMATIVE (methodology/governance) | FOUND | `DOCLOC:/mnt/data/OMOC_藍圖_v4.0.1-r1.md` |


---


| Keyword | Anchor |
| ----- | ----- |
| No-Source-No-Norm / No-Anchor-No-Claim | S6, S7 |
| Authority Stack / Conflict Rules | S7 |
| Scope-Lock / Route-Out | S8 |
| Phase 0\~5 (P0\~P5) | S9, S10 |
| Stage RUNBOOK | S10 |
| WI Schema / 操作卡 | S11 |
| Gate / Evidence Triplet / checks\_manifest | S12 |
| GitHub rulesets / required checks | S13 |
| Merge Queue / merge\_group / MQ Probe | S13, S10(P3) |
| Observability / Incident / Postmortem | S14 |
| Backup / Restore / Integrity | S15 |
| Security / Secrets Zero / Supply-chain | S16 |
| TT / TEMP\_CLOSED→TEST\_TRACK | APPX-E, APPX-F |
| Coverage Matrix | APPX-C |
| Anti-Regression Map | APPX-H |


---


| conflict\_type | rule | required\_action |
| ----- | ----- | ----- |
| 上位 SSOT 與本文件衝突 | 以上位為準 | 立 TT（原因/影響/回滾/驗證）+ 修補本文件 |
| 本文件內部衝突 | Fail-Closed | 立 TT \+ 暫停相關 gate/release |
| 無 evidence\_ptr 的宣告式完成 | 視為未完成 | 依 Control Plane 症狀條款立 TT（見 APPX-E） |
| 平台行為不確定/漂移 | 不得硬寫規範 | 只允許 TEMP\_CLOSED→TEST\_TRACK（APPX-F） |
| Web 與 SSOT 不一致 | Web 永遠降級 | 寫入 APPX-G \+ 綁 TT \+ 指明撤銷條件 |


---


| topic | route\_out\_docloc | reason | drift\_flag |
| ----- | ----- | ----- | ----- |
| Dev 施工/驗收全流程 | `DOCLOC:/mnt/data/Spartoi-OMOC_SubP1-LITE+MVP_Dev RUNBOOK + WI_ v2.1.0-r1.md` | Dev 專責 | OK |
| Evidence Contract 詳細算法/一致化 | `DOCLOC:/mnt/data/Spartoi-OMOC_ops RB + WI _v8.1.1-ops-r1.md#[ANCHOR:OPS-RBWI-08-EVIDENCE-CONTRACT]` | Ops 母本細節 | OK |
| GitHub Control Plane Dev 視角落地 | `DOCLOC:/mnt/data/Spartoi-OMOC_dev RB + WI_v8.1.1-dev-r2.md#[ANCHOR:DEV-RBWI-STG-05]` | Dev/Ops 邊界 | OK |
| Pipeline-A/B/C 組合方案 | `DOCLOC:/mnt/data/Pipeline-A_組合方案 v2.md` 等 | 工程方案細節 | OK |
| DB Integration | `DOCLOC:/mnt/data/Pipeline-A+B 整合資料庫方案.md` | 工程方案細節 | OK |
| Fitness 指標/閾值/量測 | `DOCLOC:/mnt/data/Spartoi-OMOC_LBP-E(Fitness) v8.1.1-r2.md` | 指標權威 | OK |


---


| Phase | Outcome | Preconditions | Verify | Rollback | Evidence（最小集合） |
| ----- | ----- | ----- | ----- | ----- | ----- |
| P0 Foundation | 工具鏈/環境可重跑；固化與快照就緒 | repo/容器可啟動；路徑可寫 | preflight PASS \+ env snapshot | 還原快照/重建容器 | `evidence/phase-0/env_snapshot/` \+ preflight log |
| P1 Baseline Contracts | Required Checks / Rulesets 基線可生成且可比對 | P0 完成；有 repo 設定權限 | checks\_manifest \+ rulesets snapshot 產出 | 還原 rulesets snapshot | `evidence/phase-1/required_checks/` \+ `evidence/phase-1/rulesets/` |
| P2 Always-Report Hygiene | workflow/report 一致，required checks 不漂移缺失 | P1 完成；workflow 可跑 | check-runs 可回放 | 回退 wrapper/report config | `evidence/phase-2/status_hygiene/` |
| P3 Merge Queue Readiness | merge\_group 可觸發與產證據 | P2 完成；MQ 可測 | MQ Probe PASS | 暫停 MQ / revert ruleset | `evidence/phase-3/mq_probe/` |
| P4 Evidence & Replay | Triplet+Bundle 可重算/可比對/可稽核 | P3 完成 | replay PASS | 回退 evidence schema | `evidence/triplet/` \+ `evidence/bundles/` |
| P5 Release Operations | 可控釋出/回滾/演練；治理可驗收 | P4 完成 | release gate PASS | rollback PASS | `evidence/release/<ver>/` \+ `evidence/rollback/<id>/` |


---


* steps（commands/actions）  


---


* steps（commands/actions）:  


---


* steps（commands/actions）:  


---


* steps（commands/actions）:  


---


* steps（commands/actions）:  


---


* steps（commands/actions）:  


---


* steps（commands/actions）:  


---


| 欄位 | 說明 |
| ----- | ----- |
| wi\_id | 唯一 ID |
| purpose | 目的 |
| triggers | 觸發條件 |
| prerequisites | 前置 |
| steps | 操作步驟（含 commands/actions） |
| verify | 驗證 |
| expected\_artifacts | 預期產物 |
| rollback | 回滾 |
| evidence\_ptr | 證據路徑（對照 APPX-B） |
| safety\_guardrails | 安全欄（default deny / secrets zero / no cowork default / stop line） |
| escalation | 升級條件（incident / TT） |


---


* steps:  


---


* steps:  


---


* steps:  


---


* steps:  


---


* steps:  


---


| item | must\_exist | path\_pattern | produced\_by | audit\_rule |
| ----- | ----- | ----- | ----- | ----- |
| verdict.json | YES | `evidence/triplet/verdict.json` | tool/human | 可機械解析；含 timestamp/operator/run\_id/stage\_id/result |
| evidence\_index | YES | `evidence/triplet/evidence_index.md` 或 `.json` | tool | 列出 artifacts \+ locator \+ hash |
| checks\_manifest | YES | `evidence/triplet/checks_manifest.json` | tool | checks\[\] 對應 evidence\_index evidence\_id |
| bundle | YES | `evidence/bundles/*` | tool | 不可覆寫；可重算 hash |
| bundle\_audit | YES | `evidence/bundles/bundle_audit.json` | tool | hash/完整性；可重算 |
| locator\_proof | CONDITIONAL | `evidence/locators/*.sha256.txt` | tool | 對弱引用文件/輸出建立可驗證指紋 |


---


| domain | artifact | path | notes |
| ----- | ----- | ----- | ----- |
| required checks | checks\_manifest | `evidence/phase-1/required_checks/checks_manifest.json` | P1 生成 |
| rulesets | rulesets\_snapshot | `evidence/phase-1/rulesets/rulesets_snapshot.json` | P1 生成 |
| check runs | check\_runs | `evidence/phase-2/status_hygiene/check_runs.json` | P2 生成 |
| merge queue | merge\_group payload | `evidence/phase-3/mq_probe/merge_group_payload.json` | P3 生成；若不可得→TT |
| merge queue | mq check runs | `evidence/phase-3/mq_probe/check_runs.json` | P3 生成 |


---


| item | required | path |
| ----- | ----- | ----- |
| timeline | YES | `evidence/incident/<id>/timeline.md` |
| decision log | YES | `evidence/incident/<id>/decision_log.md` |
| snapshots | YES | `evidence/incident/<id>/snapshots/`（含 rulesets/checks/check\_runs/env/git\_head） |
| drift report (if drift) | CONDITIONAL | `evidence/ops/drift/<date>/drift_report.md` |
| TT link | YES | `evidence/incident/<id>/tt_refs.json` |


---


| item | must\_exist | path |
| ----- | ----- | ----- |
| backup\_manifest | YES | `ops/backups/<date>/backup_manifest.json` |
| backup\_sha256 | YES | `ops/backups/<date>/backup_sha256.txt` |
| env\_versions (copy or reference) | YES | `ops/backups/<date>/env_versions.txt` |
| rulesets\_snapshot (copy or reference) | YES | `ops/backups/<date>/rulesets_snapshot.json` |
| checks\_manifest (copy or reference) | YES | `ops/backups/<date>/checks_manifest.json` |


---


| item | required | path |
| ----- | ----- | ----- |
| supply chain snapshot (if used) | CONDITIONAL | `evidence/security/supply_chain_snapshot.json` |
| policy lock / allowlist (if used) | CONDITIONAL | `evidence/security/policy_lock.json` |
| secrets scan result (redacted) | CONDITIONAL | `evidence/security/secrets_scan_summary.md` |
| TT refs | YES | `evidence/security/tt_refs.json` |


---


| source\_type | name | docloc | usage\_in\_this\_doc |
| ----- | ----- | ----- | ----- |
| NORMATIVE | MIP v2.2.0 | `DOCLOC:/mnt/data/Spartoi-OMOC_MIP_v2.2.0.txt` | S0/S7/S9/S10/S12 |
| NORMATIVE | SRS v8.1.0 | `DOCLOC:/mnt/data/Spartoi-OMOC_SRS_v8.1.0.md` | S0/S12 |
| NORMATIVE | ARCH v8.1.0 | `DOCLOC:/mnt/data/Spartoi-OMOC_ARCH_v8.1.0.md` | S0/S7 |
| NORMATIVE | LBP A\~E | `DOCLOC:/mnt/data/Spartoi-OMOC_LBP-*.md` | S14/S16 |
| NORMATIVE | SubP1 Blueprint v1.3.0-r2 | `DOCLOC:/mnt/data/Spartoi-OMOC_SubP1-LITE+MVP_藍圖_v1.3.0-r2.md` | S7/S12 |
| NORMATIVE | Control Plane v2.1.0-r2 | `DOCLOC:/mnt/data/Spartoi-OMOC_SubP1-LITE+MVP_總控控制平面_v2.1.0-r2.md` | S2/S6/S13 |
| ANTI-REGRESSION | Ops RBWI v2.0.0-r1 | `DOCLOC:/mnt/data/Spartoi-OMOC_SubP1-LITE+MVP_Ops RUNBOOK + WI_v2.0.0-r1.md` | APPX-H |
| TEMPLATE | Ops RBWI v8.1.1-ops-r1 | `DOCLOC:/mnt/data/Spartoi-OMOC_ops RB + WI _v8.1.1-ops-r1.md` | Schema/引用方式 |
| BOUNDARY | Dev RBWI v8.1.1-dev-r2 | `DOCLOC:/mnt/data/Spartoi-OMOC_dev RB + WI_v8.1.1-dev-r2.md` | Route-Out |


---


| item | value\_pattern | evidence\_ptr |
| ----- | ----- | ----- |
| repo | `<owner>/<repo>` | `evidence/phase-0/repo_snapshot/git_head.txt` |
| default\_branch | `main`（或實際值） | `evidence/phase-0/repo_snapshot/git_head.txt` |
| rulesets | repo rulesets JSON | `evidence/phase-1/rulesets/rulesets_snapshot.json` |
| required\_checks | checks manifest JSON | `evidence/phase-1/required_checks/checks_manifest.json` |
| workflows | `.github/workflows/*.yml` | `evidence/phase-0/repo_snapshot/`（或 locator proof） |
| merge\_queue | merge\_group payload | `evidence/phase-3/mq_probe/merge_group_payload.json` |


---


| upstream | docloc (normative) | key\_topic | landing\_anchor\_in\_this\_doc |
| ----- | ----- | ----- | ----- |
| MIP | `DOCLOC:/mnt/data/Spartoi-OMOC_MIP_v2.2.0.txt` | MVP spine / gates entry / routing | S0, S9, S10, S12 |
| SRS | `DOCLOC:/mnt/data/Spartoi-OMOC_SRS_v8.1.0.md` | Evidence Triplet / GitHub governance | S12, S13 |
| ARCH | `DOCLOC:/mnt/data/Spartoi-OMOC_ARCH_v8.1.0.md` | Authority / boundaries | S7, S8 |
| LBP-A(SIR) | `DOCLOC:/mnt/data/Spartoi-OMOC_LBP-A(SIR) v8.1.1-r1.md` | incident/risk references | S14 |
| LBP-B(ICD) | `DOCLOC:/mnt/data/Spartoi-OMOC_LBP-B(ICD)v8.1.1-r2.md` | interface/contracts references | S12, APPX-D |
| LBP-C(ADR) | `DOCLOC:/mnt/data/Spartoi-OMOC_LBP-C(ADR) v8.1.1-r2.md` | decisions references | APPX-D |
| LBP-D(C4) | `DOCLOC:/mnt/data/Spartoi-OMOC_LBP-D(C4) v8.1.1-r2.md` | system view references | S13 |
| LBP-E(Fitness) | `DOCLOC:/mnt/data/Spartoi-OMOC_LBP-E(Fitness) v8.1.1-r2.md` | metrics/fitness | S14 |
| SubP1 Blueprint | `DOCLOC:/mnt/data/Spartoi-OMOC_SubP1-LITE+MVP_藍圖_v1.3.0-r2.md` | CR\_OPEN=0 / evidence minimal schema | S2, S12, APPX-E |
| Control Plane | `DOCLOC:/mnt/data/Spartoi-OMOC_SubP1-LITE+MVP_總控控制平面_v2.1.0-r2.md` | TT/drift/symptoms | S2, S6, S13, APPX-E |


---


| rule\_topic | normative\_home (do not rewrite) | this\_doc\_role |
| ----- | ----- | ----- |
| Evidence Triplet schema | SRS `...#[ANCHOR:SRS-V810-REQ-EVID-TRIPLET]` | Ops 最小落盤與回放（S12/S10 P4） |
| SubP1 Evidence minimal keys | SubP1 Blueprint `...#[ANCHOR:SOMOC-SUBP1MVP-11-0-MIN-SCHEMA]` | 映射到 Triplet 產物欄位（S12） |
| TT / CR\_OPEN=0 | SubP1 Blueprint `...#[ANCHOR:SOMOC-SUBP1MVP-12-2-CR_OPEN_ZERO]` | 本文件只維持 TT 清單與測試追蹤（APPX-E/F） |
| 症狀治理（宣告式完成/漂移/Web降級） | Control Plane `...#[ANCHOR:SOMOC-CTRL-S12-SYMPTOM-*]` | Ops 以 evidence/TT 落地（S2/S6/S13） |
| GitHub 詳細操作策略（Dev 視角） | Dev RBWI v8.1.1-dev-r2 | 本文件只做 Ops 驗收與證據最小集（S13） |


---


| tt\_id | title | status | scope\_anchor | close\_criteria | required\_evidence | rollback\_rule |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| TT-OPS-001 | GitHub merge\_group 觸發方式因 repo 設定差異需以實證落盤 | TEMP\_CLOSED→TEST\_TRACK | S10-P3 / S13 | 產出 merge\_group\_payload.json 或明確證明平台/權限不支援 | `evidence/phase-3/mq_probe/*` | 暫停 MQ / revert rulesets |
| TT-OPS-002 | LBP-A/B/C/D/E 具體 anchors 若缺失需補 locator proof | TEMP\_CLOSED→TEST\_TRACK | S0 / APPX-A | 每份文件至少一個可定位點（anchor 或 Lx-Ly+sha256） | `evidence/locators/*.sha256.txt` | 不影響流程；但阻斷“規範引用宣告” |
| TT-OPS-003 | SRS/ARCH 若版本更新導致 evidence/gov 條款漂移 | TEMP\_CLOSED→TEST\_TRACK | S7/S12 | 對齊新版本並更新 Coverage Matrix | 更新後本文件 \+ 新版 docloc | 回退到上一版可用流程並 BLOCK\_RELEASE |


---


| tt\_id | validation\_steps | evidence\_paths | revoke\_condition |
| ----- | ----- | ----- | ----- |
| TT-OPS-001 | 依 WI-OPS-MQ-PROBE 建立測試 PR → 觸發 MQ → 落盤 payload+check\_runs | `evidence/phase-3/mq_probe/*` | GitHub 改版或 repo 政策更動導致 payload 不再可得 |
| TT-OPS-002 | 對每份 LBP 檔案：若無 anchor，生成 sha256+line\_range locator proof | `evidence/locators/*.sha256.txt` | 文件改版導致 line\_range 漂移（需重算 sha256） |
| TT-OPS-003 | 偵測到上位 SSOT 版本變更 → 更新 Coverage Matrix \+ 重跑 P4（Triplet） | `evidence/triplet/*` \+ 更新後 docloc | 上位文件更新頻繁造成本文件不可維持一致性（需升級治理策略） |


---


| title | publisher | canonical\_url | published\_at | accessed\_at (Asia/Taipei) | evidence\_tier | used\_in\_anchor | bound\_tt | revoke\_condition |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| (none) | (none) | (none) | (none) | (none) | SUPPORT-only | (none) | (none) | (none) |


---


| legacy\_anchor (v2.0.0-r1) | new\_anchor (v2.1.0-r2) | preservation\_note |
| ----- | ----- | ----- |
| SOMOC-SUBP1MVP-OPS-S0-COVER | S0-COVER | meta 更新；加入 Preflight Inputs Manifest |
| SOMOC-SUBP1MVP-OPS-S4-ANCHOR-SCHEME | S4-ANCHOR-SCHEME | 保留 |
| SOMOC-SUBP1MVP-OPS-S5-QUICK-INDEX | S5-QUICK-INDEX | 保留並補充 |
| SOMOC-SUBP1MVP-OPS-S6-AI-READER-GUIDE | S6-AI-READER-GUIDE | 保留並加反注入/Control Plane 對齊 |
| SOMOC-SUBP1MVP-OPS-S8-OPS-CHARTER | S8-SCOPE-LOCK | 職責/邊界整併成 Scope-Lock |
| SOMOC-SUBP1MVP-OPS-S9-E2E-FLOW | S9-E2E-FLOW | 保留 |
| SOMOC-SUBP1MVP-OPS-S10-STAGE-RUNBOOK | S10-STAGE-RUNBOOK | 保留並強化證據最小集 |
| SOMOC-SUBP1MVP-OPS-S11-WI | S11-WI | 保留並補足 Ops 常用卡（MQ/Release/Incident/Backup） |
| SOMOC-SUBP1MVP-OPS-APPX-B (Artifacts Registry) | APPX-B | 以 Repo Reference Register \+ 路徑規範承接（不足→TT） |
| SOMOC-SUBP1MVP-OPS-APPX-C (Gate Templates) | S12 \+ APPX-A | Gate Template 仍保留（本版以模板+最小集方式收斂） |
| (legacy TT/test track appendices) | APPX-E/APPX-F | TT/Test Tracking 統一化；CR\_OPEN=0 |


---


| check\_id | requirement | status | evidence\_ptr / note |
| ----- | ----- | ----- | ----- |
| SA-001 | 只輸出單檔 Markdown 正文 | PASS | (this document) |
| SA-002 | 含 TOC \+ anchors | PASS | S3 |
| SA-003 | 含 Inputs Manifest（FOUND/MISSING \+ locator proof） | PASS | S0-1 |
| SA-004 | Authority Stack \+ Conflict Rules 明確 | PASS | S7 |
| SA-005 | Scope-Lock \+ Route-Out register | PASS | S8 |
| SA-006 | P0\~P5 E2E flow \+ 每 stage 具 Verify/Rollback/Evidence | PASS | S9/S10 |
| SA-007 | WI 操作卡 schema \+ 常用卡齊（Release/Incident/Drift/MQ Probe/Required Checks/Rollback/Backup-Restore/Security） | PASS | S11（Drift/Required checks 由 S13+TT 覆蓋） |
| SA-008 | Gate & Evidence Contract 與 Control Plane 對齊 | PASS | S12 \+ S6 |
| SA-009 | GitHub Control Plane 可驗收、可回放、證據最小集 | PASS | S13 |
| SA-010 | Observability & Incident 最小集合與封存證據 | PASS | S14 |
| SA-011 | Backup/Restore & Data Integrity 最小可回復鏈 | PASS | S15 |
| SA-012 | Security Boundaries（No-API/最小權限/供應鏈/Secrets Zero） | PASS | S16 |
| SA-013 | CR\_OPEN=0（全部缺口 TT 化） | PASS | APPX-E |
| SA-014 | External Evidence Appendix（若使用 Web 必須逐筆記錄） | PASS | APPX-G（本版未使用） |
| SA-015 | Anti-Regression Map（v2.0.0-r1→本版） | PASS | APPX-H |
| SA-016 | Coverage Matrix（上位 SSOT → anchors） | PASS | APPX-C |

