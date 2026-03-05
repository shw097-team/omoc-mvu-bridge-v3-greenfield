# HOW (extracted)


| path | observed\_version | sha256 | key\_anchors / key\_sections | scan\_notes |
| ----- | ----- | ----- | ----- | ----- |
| `/mnt/data/OMOC_藍圖_v4.0.1-r1.md` | v4.0.1-r1 | `ccd7c311b11420652ac325b49ee6c317449d867b75b5c676ba641c0da17c6a33` | `[ANCHOR:OMOC-BP-1000]`（DoD/Required Checks/MQ 覆蓋要求） | N1（規範） |
| `/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md` | v4.0.1-r1 | `3fb8ea01b069a8f64f0183d8fc7678acf99b49adb4ef6a80a761997e1a2b44ca` | `[ANCHOR:OMOC-RBWI-G3]`（G3 merge\_group 觸發對齊）、`[ANCHOR:OMOC-RBWI-G2]`（G2 wrapper/回報衛生） | N2（規範） |
| `/mnt/data/OMOC_施工skills_合冊_v4.0.1-r2.md` | v4.0.1-r2 | `f3f4c5cae4b6ca928eee241dbb9854da9ef07eb0e211e513a01997ecd840ecab` | `<a id="omoc-skill-omoc-router">`、`<a id="omoc-skill-omoc-mq-merge-group-probe">` | N3（規範） |
| `/mnt/data/OMOC_實作+WP總表_v4.0.1-r2.md` | v4.0.1-r2 | `ffb92a86c26e12cc3d6bf492694fb81477f985f8f50d0744c4944dbdae1a49a9` | `§4 BK-004/BK-005`、`§5 Gate Registry`、`§8 WP Summary Table（WP-012 row）` | N4（規範；本版已對齊 r2） |
| `/mnt/data/OMOC_WP-012+RB+WI.md` | v4.0.1-r1 | `6c556747763d8020ae0c2a81baf6d1c0a9379d1301e5a6f804f32b62a258a35d` | 舊版（本次 superseded） | 僅作參考；不可再當目標版本 |
| `/mnt/data/OMOC_WP-012+RB+WI_審查報告.md` | 2026-02-17 | `6ba8b4e75d4cc160c529f4802270b06e25a4ce1f3f08d82dd3d1c00a963ceef9` | PATCH-WP012-001..006、TT Register | 本版已全量吸收並落地 |
| `/mnt/data/OMOC_WP-010+RB+WI_v4.0.1-r2.md` | v4.0.1-r2 | `f806dbb985fa9f8dc20c98dcba426ad5d9ba1dbbf1b45bcaa18baea3fc9dc5f3` | `[ANCHOR:WP010-REQ-003B]`（observed.merge\_group） | 依賴（checks\_manifest contract） |
| `/mnt/data/OMOC_WP-011+RB+WI_v4.0.1-r2.md` | v4.0.1-r2 | `e3efbb94e4b5c40f1fdceddce774e4b5d9659e2fa8d7d4566a7aefb429f0d621` | `12.3 Skip Hazard 規格`（paths/if/needs/concurrency） | 依賴（always-report / status hygiene） |
| `/mnt/data/OMOC_WP-013+RB+WI.md` | v4.0.1-r1（文件自述） | `33c4d2f5e1e76c33f099b032bf1c379f3b8a4c9cf0d7d66d3d06d826e9aeab32` | Scope / Non-goals | 僅作邊界參考；其 N4 仍需後續對齊（見 TT） |
| 其餘 WP-001..WP-009（r2） | v4.0.1-r2 | （略） | （略） | 本 WP 主要接口在 WP-010/011/013；其餘僅作全域一致性對照 |


---


| lp\_id | source | doc\_path | locator (line\_range \+ anchor/heading) | why\_it\_matters |
| ----- | ----- | ----- | ----- | ----- |
| LP-012-001 | N1 藍圖 | `/mnt/data/OMOC_藍圖_v4.0.1-r1.md` | L169-L177 `§10 DoD` \+ `[ANCHOR:OMOC-BP-1000]` | 定義：merge\_group 情境 required checks 必須可回報（Fail-Closed 根據） |
| LP-012-002 | N2 RBWI | `/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md` | L392-L409 `[ANCHOR:OMOC-RBWI-G3]`（G3：補 on: \[pull\_request, merge\_group\]） | G3 施工骨架（本 WP 的施工依據） |
| LP-012-003 | N3 skills | `/mnt/data/OMOC_施工skills_合冊_v4.0.1-r2.md` | L190-L214 `<a id="omoc-skill-omoc-router">`（router、OMOC\_MQ gating） | SK09/Router 的入口條件（缺失即 FAIL\_CLOSED 的一部分） |
| LP-012-004 | N3 skills | `/mnt/data/OMOC_施工skills_合冊_v4.0.1-r2.md` | L1276-L1315 `<a id="omoc-skill-omoc-mq-merge-group-probe">`（SK09） | MQ Probe 技能規格（Mode A 的工具依據） |
| LP-012-005 | N4 WP總表(r2) | `/mnt/data/OMOC_實作+WP總表_v4.0.1-r2.md` | L285-L290 `§4 Backup/Restore`（BK-004/BK-005） | 必備備份點與回滾證據命名 |
| LP-012-006 | N4 WP總表(r2) | `/mnt/data/OMOC_實作+WP總表_v4.0.1-r2.md` | L297-L305 `§5 Gate Registry`（GATE-MERGE\_GROUP-TRIGGER / MQ-PROBE） | gate\_id 與 gate\_contract\_hash（不得漂移） |
| LP-012-007 | N4 WP總表(r2) | `/mnt/data/OMOC_實作+WP總表_v4.0.1-r2.md` | L334-L349 `§8 WP Summary Table`（WP-012 row） | WP-012 定義、依賴、SK09 交叉描述（雙源定位） |
| LP-012-008 | WP-010 | `/mnt/data/OMOC_WP-010+RB+WI_v4.0.1-r2.md` | L282-L289 `[ANCHOR:WP010-REQ-003B]` | observed.merge\_group：MQ 未啟用時允許 TEMP\_CLOSED，但必路由 |
| LP-012-009 | WP-011 | `/mnt/data/OMOC_WP-011+RB+WI_v4.0.1-r2.md` | L322-L334 `12.3 Skip Hazard 規格` | required checks 不得被 paths/if/needs/concurrency 跳過（治理依據） |
| LP-012-010 | WP-013（邊界參考） | `/mnt/data/OMOC_WP-013+RB+WI.md` | L19-L25 `Scope/Goal`（merge queue/merge\_group） | 僅用於「不越界」與交接描述（非本 WP 的 N4） |


---


| req\_id | requirement（本次必達） | success\_definition（可驗收） | required\_evidence | normative\_locators (≥2) | failure\_counterexample（反例） \+ gate |
| ----- | ----- | ----- | ----- | ----- | ----- |
| REQ-WP012-001 | N4 必須 r2；全文不得再引用 N4=r1 | `rg` 搜不到 `WP總表_v4.0.1-r1`；Authority Stack / Doc Inventory / machine\_summary 的 N4 全為 r2 | `scan_authority.log`（rg 結果） | LP-012-007 \+ LP-012-006 | 反例：文件內仍殘留 r1 路徑或 locator → **GATE-WP012-ENTRY-N4R2 FAIL\_CLOSED** |
| REQ-WP012-010 | 必須存在 merge\_group 觸發的 workflow（至少涵蓋 required checks） | `.github/workflows` 中 required checks workflow 對 `on: merge_group` 有明確觸發；且不會因 filters 導致整體 skip | `workflows_merge_group_scan.log` \+ `workflows_required_checks_map.json` | LP-012-001 \+ LP-012-002 \+ LP-012-006 | 反例：只有 `pull_request` 沒有 `merge_group` → MQ 進場後 expected 卻等不到 → **GATE-MERGE\_GROUP-TRIGGER FAIL\_CLOSED** |
| REQ-WP012-020 | merge\_group `types: [checks_requested]` 的採用治理（不得腦補） | 若 workflow 使用 `types`：必有驗收方法與 route-out；若未使用：必證明仍能被 merge\_group 觸發 | `merge_group_types_scan.log` \+（Mode A 時）`runs_merge_group.json` | LP-012-001 \+ LP-012-002 | 反例：設了 types 但實際 event 未觸發（或 drift） → **GATE-MERGE\_GROUP-TYPES TEMP\_CLOSED \+ TT-WP012-TRIGGER-TYPES-001** |
| REQ-WP012-030 | required checks 不得因 paths/paths-ignore/if/needs 造成「不回報」 | 任意變更（含 docs-only）仍可觀測 required checks 的回報狀態（成功/失敗/中止均有可見結論或 wrapper 結論） | `pathfilter_scan.log` \+ `wrapper_presence.log` \+ 1 次反例驗收記錄 | LP-012-001 \+ LP-012-009 | 反例：paths-ignore 導致整個 workflow skipped → GitHub 仍等待 → **GATE-NO-SKIP-REQUIRED-CHECKS FAIL\_CLOSED** |
| REQ-WP012-040 | concurrency / cancel-in-progress 不得取消掉應回報的 merge\_group run | 若存在 concurrency：需證據顯示 merge\_group runs 不被互相取消；若取消發生：必可稽核並有裁決/route-out | `concurrency_scan.log` \+ `runs_merge_group.json`（Mode A） | LP-012-001 \+ LP-012-009 | 反例：push 與 merge\_group 共用同一 concurrency group，cancel-in-progress 取消其中之一 → **GATE-CONCURRENCY-NO-CANCEL FAIL\_CLOSED / TEMP\_CLOSED（依裁決規則）** |
| REQ-WP012-050 | Mode B 永遠不得當 PASS；僅 TEMP\_CLOSED | 任意輸出若只有 Mode B 證據：verdict 必為 TEMP\_CLOSED，且 TT 清楚寫明 closure | `verdict.json`（ModeB\_only=true） | LP-012-008 \+ LP-012-006 | 反例：用 Mode B 宣告 PASS → **GATE-MODEB-NO-PASS FAIL\_CLOSED** |
| REQ-WP012-060 | Mode A（runtime）取得 merge\_group runs 證據（MQ 已啟用時） | `runs_merge_group.json` 非空，且 `checks_manifest.json.observed.merge_group` 非空；能對應到 required checks 回報 | `runs_merge_group.json` \+ `checks_manifest.json` | LP-012-008 \+ LP-012-004 \+ LP-012-006 | 反例：MQ 已啟用但 observed.merge\_group 仍空 → **GATE-MQ-PROBE-RUNTIME FAIL\_CLOSED** |
| REQ-WP012-070 | 禁止靠改 rulesets required contexts 繞過（要可驗收） | 任何宣告「修好了」必附 rulesets snapshot/diff，且能判定是否屬繞過 | `BK-004_rulesets_before.json` \+ `rulesets_after.json` \+ diff | LP-012-005 \+ LP-012-001 | 反例：只改 UI contexts，workflow 仍不觸發 merge\_group → **GATE-ANTI-BYPASS-RULESETS FAIL\_CLOSED** |
| REQ-WP012-080 | SK09/Router 交叉支撐補強（缺失即 FAIL\_CLOSED 的入口條件） | WP-012 內可定位 SK09 locator；且 N4（WP-012 row）亦可定位到 SK09 依賴敘述 | `skill_presence.log` \+ locator 對照 | LP-012-003 \+ LP-012-004 \+ LP-012-007 | 反例：工具不存在或 OMOC\_MQ gating 未滿足卻硬跑 Mode A → **GATE-SK09-ENTRY FAIL\_CLOSED** |


---


| gate\_id | rule | verdict | counterexample（反例） | evidence |
| ----- | ----- | ----- | ----- | ----- |
| GATE-WP012-ENTRY-N4R2 | 本文件不得再引用 `OMOC_實作+WP總表_v4.0.1-r1`（全文） | FAIL\_CLOSED | 仍殘留 r1 路徑或 locator | `scan_authority.log`（rg 結果） |
| GATE-SK09-ENTRY | 若要跑 Mode A：必須滿足 Router 的 OMOC\_MQ gating（或等效），且 skills 中 SK09 可定位存在 | FAIL\_CLOSED | OMOC\_MQ=0 卻硬跑 Mode A；或 SK09 不存在 | `skill_presence.log` \+ Router/Skill locator |
| GATE-NO-SKIP-REQUIRED-CHECKS（Entry 部分） | required checks 的 workflow/job 不得被 paths/if/needs 直接整體 skip；若需條件化，必有 WP-011 always-report wrapper 保底 | FAIL\_CLOSED | docs-only 變更導致 required workflow skipped，GitHub 等不到回報 | `wrapper_presence.log` \+ 反例驗收證據 |


---


| artifact | must\_exist | purpose |
| ----- | ----- | ----- |
| `evidence/_acceptance/<ts>/log/scan_authority.log` | YES | 證明 N4=r2 且 r1=0（本文件自身稽核） |
| `evidence/_acceptance/<ts>/log/workflows_merge_group_scan.log` | YES | 列出所有 workflows 是否具 `on: merge_group`、是否含 `types` |
| `evidence/_acceptance/<ts>/log/pathfilter_scan.log` | YES | 列出 paths/paths-ignore/if/needs 等 skip 風險點 |
| `evidence/_acceptance/<ts>/log/concurrency_scan.log` | YES | 列出 concurrency/cancel-in-progress 風險點 |
| `evidence/_acceptance/<ts>/log/wrapper_presence.log` | YES | 證明 required checks 有 always-report/回報保底（WP-011 對齊） |
| `evidence/_bk/BK-004_rulesets_before.json` | YES | 反繞過基準（BK-004） |
| `evidence/_bk/rulesets_after.json` | CONDITIONAL | 若本次有改動任何 rulesets/分支規則（否則可不產出，但必寫明“未改”） |
| `evidence/_acceptance/<ts>/diff/rulesets_diff.txt` | CONDITIONAL | 若有 rulesets 變更，必提供 diff \+ 判定是否屬繞過 |
| `evidence/_acceptance/<ts>/json/runs_merge_group.json` | CONDITIONAL（Mode A） | Mode A runtime：列出 merge\_group runs（可稽核） |
| `checks_manifest.json`（repo 根） | YES | WP-010 合約；observed.merge\_group 用於閉環 |
| `evidence/_acceptance/<ts>/bundle/single_evidence_bundle.txt` | YES | 單檔 bundle 清單（利於上傳/驗收） |


---


| tt\_id | type | description | source\_locator | status | closure\_criteria（可驗收） | owner(route) | next\_actions |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| TT-WP012-001 | DRIFT | 舊版 WP-012 仍以 N4=r1；本版已修補為 r2（防回歸） | `A.2 Authority Stack` | TEMP\_CLOSED | `rg` 證明本文件 N4=r2 且 r1=0（見 `scan_authority.log`） | SSOT Curator / WP-012 Maintainer | 每次改版必重跑 F.2 |
| TT-WP012-002 | ALIGN | 版本宣告需與 r2 Authority 一致（本版已改為 r2 對齊） | `標題 + machine_summary.normative_sources` | TEMP\_CLOSED | 文件標題、Authority Stack、machine\_summary 的 N4 一致為 r2 | WP-012 Maintainer | 每次 release 前跑 Self-Audit |
| TT-WP012-TRIGGER-TYPES-001 | WEB | merge\_group.types（checks\_requested）行為屬 driftable；NORMATIVE 未固化細節 | `Coverage Map REQ-WP012-020` | TEMP\_CLOSED | 文件內已提供「採用/不採用裁決規則 \+ 驗收 \+ route-out」，且 Mode A 可驗收時以 evidence 收斂 | WP-012 Maintainer | 若要採用 types：必完成 Mode A 驗收並記錄 Web Evidence |
| TT-WP012-PATHFILTER-001 | RISK | paths/paths-ignore/條件式 skip 造成 required checks 不回報風險 | `WP-011 12.3` \+ `§F.3/§G.4` | TEMP\_CLOSED | 至少 1 次反例驗收（docs-only）仍可觀測 required check 回報；wrapper\_presence 可定位 | WP-011 \+ WP-012 | 執行 G.4；必要時修 WP-011 wrapper |
| TT-WP012-CONCURRENCY-001 | RISK | concurrency/cancel 造成 merge\_group run 被取消，回報不一致 | `WP-011 12.3` \+ `§F.3/§F.6` | TEMP\_CLOSED | Mode A：runs\_merge\_group.json 可見無互相取消或取消不影響 required checks 回報；否則保留取消證據 \+ 改善方案 | WP-012 \+ WP-013 | 先做靜態掃描，再在 WP-013 端到端驗收 |
| TT-WP012-MQ-PROBE-001 | ALIGN | Mode B 缺 runtime merge\_group runs；需 WP-013 啟用 MQ 後閉環 | `WP-010 [ANCHOR:WP010-REQ-003B]` | TEMP\_CLOSED | 取得 `runs_merge_group.json` 非空，且 `checks_manifest.json.observed.merge_group` 非空 | WP-013 | WP-013 啟用 MQ 後重跑 §F.6 |
| TT-WP012-GH-CLI-QUEUE-001 | WEB | “用 gh CLI 把 PR 加入 merge queue” 行為未被 NORMATIVE 證實 | `§F.6 前言` | TEMP\_CLOSED | 本文件不把 gh 加入隊列當必做；一律以 UI 路徑為準，或補 SUPPORT-only 官方證據 | WP-012 Maintainer | 保留 UI 指引；若要補證據放 Web Evidence Appendix |
| TT-WP012-SK09-XREF-001 | ALIGN | SK09 僅 skills 定義；需形成 ≥2 NORMATIVE 交叉可定位（本版已補：WP總表 r2 \+ skills） | `LP-012-004 + LP-012-007` | TEMP\_CLOSED | WP-012 內可定位 SK09，且 N4（WP-012 row）亦可定位到 SK09 依賴敘述 | skills/SSOT | 後續若 N4 要更強 cross-ref：由 SSOT Curator 處理 |
| TT-WP012-WEB-MQ-UI-001 | WEB | GitHub UI 路徑可能因版本/權限差異而不同 | `WI §G.1` | TEMP\_CLOSED | 提供實際 UI 截圖 \+ 路徑記錄於 evidence/ui；不把 UI 差異當成 PASS | Operator | 將差異放入 evidence 並更新內部手冊（不改 NORMATIVE） |


---


| patch\_id | intent | implemented\_in（本文件段落） | acceptance（可驗收） |
| ----- | ----- | ----- | ----- |
| PATCH-WP012-001 | 修正 N4=r1 → r2（阻斷級） | `A.2`、`Doc Inventory`、`LP-012-005/006/007`、`Self-Audit`、`machine_summary` | `scan_authority.log` 證明 r1=0；N4=r2 一致 |
| PATCH-WP012-002 | 標題/版本宣告對齊 r2 \+ machine\_summary 對齊 | `標題`、`A.2`、`machine_summary.normative_sources` | 版本宣告與 N4=r2 一致 |
| PATCH-WP012-003 | paths/skip 治理硬化 \+ 反例驗收 \+ 依賴 WP-011 | `Coverage Map REQ-WP012-030`、`§F.3/§F.4/§G.4`、`TT-WP012-PATHFILTER-001` | docs-only 反例驗收仍可觀測 required checks 回報 |
| PATCH-WP012-004 | concurrency/cancel 偵測與裁決 \+ evidence | `Coverage Map REQ-WP012-040`、`§F.3/§F.6`、`TT-WP012-CONCURRENCY-001` | runs\_merge\_group.json \+ 裁決規則可定位 |
| PATCH-WP012-005 | “不得靠改 rulesets 繞過” 變成可驗收 gate | `§F.5`、`Coverage Map REQ-WP012-070`、`Traceability H.2` | rulesets snapshot/diff 存在，且可判定是否繞過 |
| PATCH-WP012-006 | SK09/Router 交叉支撐補強（入口硬規則） | `LP-012-003/004/007`、`Coverage Map REQ-WP012-080`、`GATE-SK09-ENTRY` | 缺 SK09/入口不滿足即 FAIL\_CLOSED；雙源可定位成立 |


---


| wid | topic | title | source | accessed\_at | why\_relevant | how\_used (SUPPORT-only) | drift\_note |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| WEB-012-001 | merge queue 行為 | Managing a merge queue | GitHub Docs | `2026-02-19T10:22:55+08:00` | 說明 merge queue 會 dispatch `merge_group`（checks\_requested）並等待 CI 回報 | 支援理解 `merge_group` 與 checks\_requested 的關聯，用於 TT-WP012-TRIGGER-TYPES-001 的風險說明 | 可能因產品更新而變動 ([GitHub Docs](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/configuring-pull-request-merges/managing-a-merge-queue)) |
| WEB-012-002 | Actions 事件 | Events that trigger workflows | GitHub Docs | `2026-02-19T10:22:55+08:00` | 提供 `on: merge_group: types: [checks_requested]` 範例 | 用於補充 types 用法（仍不得當 NORMATIVE），並要求以 Mode A 驗收收斂 | driftable；需保留 accessed\_at ([GitHub Docs](https://docs.github.com/actions/using-workflows/events-that-trigger-workflows)) |
| WEB-012-003 | Rulesets API | REST API endpoints for rules | GitHub Docs | `2026-02-19T10:22:55+08:00` | 支援 rulesets snapshot（BK-004）可用 API 取得 | 用於 Runbook §F.5 的 SUPPORT-only 端點佐證；若端點/權限不符 → TT-WEB | 端點可能依版本調整 ([GitHub Docs](https://docs.github.com/en/rest/repos/rules)) |
| WEB-012-004 | merge\_group 事件背景 | Merge group webhook event and GitHub Actions workflow trigger | GitHub Blog Changelog | `2026-02-19T10:22:55+08:00` | 說明 merge\_group 支援 action=checks\_requested（歷史） | 只用於背景理解；不作規範依據 | 舊資料，僅供佐證 ([The GitHub Blog](https://github.blog/changelog/2022-08-18-merge-group-webhook-event-and-github-actions-workflow-trigger/)) |
| WEB-012-005 | concurrency/cancel 風險案例 | PR repeatedly removed from merge queue due to failed ... | GitHub Community Discussion | `2026-02-19T10:22:55+08:00` | 描述 merge\_group 與 push 可能共用 concurrency group 導致取消 | 用於強化 TT-WP012-CONCURRENCY-001 的風險合理性（仍需以本 WP gate \+ evidence 驗收） | 討論串非官方規範 ([GitHub](https://github.com/orgs/community/discussions/168145)) |
| WEB-012-006 | merge queue 設定項 | 规则集的可用规则 \- GitHub Enterprise Cloud Docs | GitHub Docs | `2026-02-19T10:22:55+08:00` | 提到 build concurrency 與 merge\_group.checks\_requested dispatch 的關聯 | 僅作 UI/設定理解補充；仍以 NORMATIVE gate 驗收為準 | 產品/版本差異可能很大 ([GitHub Docs](https://docs.github.com/zh/enterprise-cloud%40latest/repositories/configuring-branches-and-merges-in-your-repository/managing-rulesets/available-rules-for-rulesets)) |


---


| check\_item | pass\_fail | evidence\_pointer |
| ----- | ----- | ----- |
| N4 \= r2（Authority Stack / Doc Inventory / machine\_summary） | PASS | `A.2`、`Doc Inventory`、`machine_summary.normative_sources` |
| 文件內 N4=r1 引用為 0 | PASS | `§F.2 scan_authority.log` |
| CR\_OPEN \= 0（不得出現 CR\_OPEN 字樣/狀態） | PASS | `TT Register`（僅 TEMP\_CLOSED/FAIL\_CLOSED） |
| 已吸收 PATCH-WP012-001..006 並可定位 | PASS | `Patch Log` mapping |
| 三大風險（types / pathfilter / concurrency）已升級為可驗收 gate | PASS | `§E Gate Registry` \+ `Coverage Map` \+ `Runbook` |
| Mode B 不得當 PASS（違反即 FAIL\_CLOSED） | PASS | `REQ-WP012-050` \+ `GATE-MODEB-NO-PASS` |
| 不越界：不啟用 MQ；不靠 rulesets contexts 繞過 | PASS | `A.3` \+ `REQ-WP012-070` |
| 每個 “PASS/可行” 判定均附反例與 gate | PASS | `Coverage Map` 的 failure\_counterexample 欄位 |

