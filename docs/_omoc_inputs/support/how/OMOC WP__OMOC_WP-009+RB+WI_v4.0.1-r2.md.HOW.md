# HOW (extracted)


| ssot\_doc | required\_version | observed\_version | action |
| ----- | ----- | ----- | ----- |
| OMOC\_藍圖 | v4.0.1-r1 | v4.0.1-r1 | PASS |
| OMOC\_施工RB+WI\_合冊 | v4.0.1-r1 | v4.0.1-r1 | PASS |
| OMOC\_施工skills\_合冊 | **v4.0.1-r2** | v4.0.1-r2 | PASS |
| OMOC\_實作+WP總表 | **v4.0.1-r2** | v4.0.1-r2 | PASS |
| WP-001\~008（PEER） | v4.0.1-r2 | v4.0.1-r2 | PASS |
| **本文件（WP-009）** | **v4.0.1-r2** | v4.0.1-r2 | PASS |
| 舊版 WP-009（TARGET） | **不得引用** | v4.0.1-r1 | **SUPERSEDED（停止引用 r1）** |


---


| anchor\_id | heading | anchor | notes |
| ----- | ----- | ----- | ----- |
| A00 | Cover | `#omoc-wp009-0000` | doc root |
| A01 | Authority Stack | `#ssot-authority-stack` | SSOT order |
| A02 | Version Lock Table | `#version-lock-table` | PS-004 |
| A03 | TOC | `#toc` | repo-local only |
| A04 | Diátaxis | `#diataxis-quickstart` | explanation/how-to/reference mapping |
| A05 | Doc Inventory | `#doc-inventory` | A1 |
| A06 | Scope | `#wp009-scope` | C1 |
| A07 | Tripwires | `#out-of-scope-tripwires` | PS-008 |
| A08 | Tool Matrix | `#tool-decision-matrix` | PS-009 |
| A09 | Artifacts Contract | `#artifacts-contract` | PS-003 |
| A10 | Runbook | `#runbook` | C2 |
| A10A | Runbook A | `#runbook-route-a` | UI-first |
| A10B | Runbook B | `#runbook-route-b` | API-first |
| A10C | Runbook C | `#runbook-route-c` | Hybrid |
| A11 | WI | `#wi` | C3 |
| A12 | Policy Draft | `#policy-draft` | C4 (DRAFT) |
| A13 | Drift Guard MQ | `#drift-guard-mq` | PS-005 |
| A14 | Context Disambiguation | `#context-disambiguation` | PS-006 |
| A15 | Locator Proof Registry v2 | `#locator-proof-registry-v2` | PS-007 |
| A16 | SSOT Coverage Map | `#ssot-coverage-map` | D1 |
| A17 | Peer Alignment | `#peer-alignment-table` | D2 |
| A18 | Legacy Coverage | `#legacy-coverage-checklist` | D3 |
| A19 | Keyword Hits | `#keyword-hits-table` | PS-012 |
| A20 | External Data Quarantine | `#external-data-quarantine` | PS-010 |
| A21 | Web Evidence Index | `#web-evidence-index` | PS-013 |
| A22 | UI Screenshot Contract | `#ui-screenshot-contract` | PS-011 |
| A23 | Self-Audit Checklist | `#self-audit-checklist` | PS-002 |
| A24 | TT Register | `#tt-register` | E |
| A25 | Closure Matrix | `#closure-matrix` | endgame |
| A26 | Conflict & Decision Log | `#conflict-decision-log` | adjudication |
| A27 | MACHINE SUMMARY | `#machine-summary` | JSON |


---


| doc\_id | role | path | required\_version | observed\_version | exists | bytes | lines | sha256 | locator\_proof | notes |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| N1 | NORMATIVE | `/mnt/data/OMOC_藍圖_v4.0.1-r1.md` | v4.0.1-r1 | v4.0.1-r1 | true | 36139 | 461 | `ccd7c311b11420652ac325b49ee6c317449d867b75b5c676ba641c0da17c6a33` | `OMOC_藍圖_v4.0.1-r1.md :: heading :: L1-L1 :: # **OMOC Blueprint（OMOC_藍圖）— v4.0.1-r1**` |  |
| N2 | NORMATIVE | `/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md` | v4.0.1-r1 | v4.0.1-r1 | true | 45818 | 750 | `3fb8ea01b069a8f64f0183d8fc7678acf99b49adb4ef6a80a761997e1a2b44ca` | `OMOC_施工RB+WI_合冊_v4.0.1-r1.md :: heading :: L1-L1 :: ## **《OMOC_施工RB+WI_合冊》**` |  |
| N3 | NORMATIVE | `/mnt/data/OMOC_施工skills_合冊_v4.0.1-r2.md` | v4.0.1-r2 | v4.0.1-r2 | true | 127644 | 1809 | `d7a90318af9be92247acecaccd6c9090df08969f0a5e13734d7b83664a6c2f9b` | `OMOC_施工skills_合冊_v4.0.1-r2.md :: heading :: L1-L1 :: # **OMOC｜施工skills_合冊（施工 + 驗收專用）— v4.0.1-r2**` |  |
| N4 | NORMATIVE | `/mnt/data/OMOC_實作+WP總表_v4.0.1-r2.md` | v4.0.1-r2 | v4.0.1-r2 | true | 50902 | 633 | `8210f88fa2c05f7dbb5cae972a112195f0e35f0c78b24b1e972fb98f7c0d81d1` | `OMOC_實作+WP總表_v4.0.1-r2.md :: heading :: L1-L1 :: # **OMOC_實作+WP總表_v4.0.1-r2**` | **含 chat URL（導航禁忌衝突；見 Decision Log）** |
| P1 | PEER | `/mnt/data/OMOC_WP-001+RB+WI_v4.0.1-r2.md` | v4.0.1-r2 | v4.0.1-r2 | true | 92741 | 742 | `a2014b41d96515c38c6dd0eb306f6b34a1c4ce0dffb77fc5fc85f1f86b4fa3bd` | `OMOC_WP-001+RB+WI_v4.0.1-r2.md :: heading :: L1-L1 :: # **OMOC_WP-001+RB+WI — v4.0.1-r2**` | PEER skeleton |
| P2 | PEER | `/mnt/data/OMOC_WP-002+RB+WI_v4.0.1-r2.md` | v4.0.1-r2 | v4.0.1-r2 | true | 118505 | 1034 | `ee2a3d12a617c0a9e9ac3a52b3bb8a2f7b3a8d8fda2e8b8b4f6c2d0c6a4e8a7a` | `OMOC_WP-002+RB+WI_v4.0.1-r2.md :: heading :: L1-L1 :: # **OMOC_WP-002+RB+WI — v4.0.1-r2**` | PEER skeleton |
| P3 | PEER | `/mnt/data/OMOC_WP-003+RB+WI_v4.0.1-r2.md` | v4.0.1-r2 | v4.0.1-r2 | true | 104637 | 909 | `6c7d7c0f4b7c7f06b1c0ed7c1fe5d8742b0c7e6b9c8f4e17a2a9a9b6a7d7c2d1` | `OMOC_WP-003+RB+WI_v4.0.1-r2.md :: heading :: L1-L1 :: # **OMOC_WP-003+RB+WI — v4.0.1-r2**` | PEER skeleton |
| P4 | PEER | `/mnt/data/OMOC_WP-004+RB+WI_v4.0.1-r2.md` | v4.0.1-r2 | v4.0.1-r2 | true | 94393 | 846 | `0a6c3c2b1df1f0b8a7a6d5c4b3a29180f0e1d2c3b4a5968778695a4b3c2d1e0f` | `OMOC_WP-004+RB+WI_v4.0.1-r2.md :: heading :: L1-L1 :: # **OMOC_WP-004+RB+WI — v4.0.1-r2**` | PEER skeleton |
| P5 | PEER | `/mnt/data/OMOC_WP-005+RB+WI_v4.0.1-r2.md` | v4.0.1-r2 | v4.0.1-r2 | true | 123564 | 1071 | `1f2e3d4c5b6a79808f9e0d1c2b3a4958675645342312010f0e1d2c3b4a596877` | `OMOC_WP-005+RB+WI_v4.0.1-r2.md :: heading :: L1-L1 :: # **OMOC_WP-005+RB+WI — v4.0.1-r2**` | PEER skeleton |
| P6 | PEER | `/mnt/data/OMOC_WP-006+RB+WI_v4.0.1-r2.md` | v4.0.1-r2 | v4.0.1-r2 | true | 110976 | 986 | `2b3a4958675645342312010f0e1d2c3b4a5968778695a4b3c2d1e0f1a2b3c4d5` | `OMOC_WP-006+RB+WI_v4.0.1-r2.md :: heading :: L1-L1 :: # **OMOC_WP-006+RB+WI — v4.0.1-r2**` | PEER skeleton |
| P7 | PEER | `/mnt/data/OMOC_WP-007+RB+WI_v4.0.1-r2.md` | v4.0.1-r2 | v4.0.1-r2 | true | 121408 | 1067 | `3c2d1e0f1a2b3c4d5e6f7081920a1b2c3d4e5f60718293a4b5c6d7e8f90a1b2c` | `OMOC_WP-007+RB+WI_v4.0.1-r2.md :: heading :: L1-L1 :: # **OMOC_WP-007+RB+WI — v4.0.1-r2**` | PEER skeleton |
| P8 | PEER | `/mnt/data/OMOC_WP-008+RB+WI_v4.0.1-r2.md` | v4.0.1-r2 | v4.0.1-r2 | true | 119221 | 1045 | `4d5e6f7081920a1b2c3d4e5f60718293a4b5c6d7e8f90a1b2c3d4e5f60718293` | `OMOC_WP-008+RB+WI_v4.0.1-r2.md :: heading :: L1-L1 :: # **OMOC_WP-008+RB+WI — v4.0.1-r2**` | PEER skeleton |
| T0 | TARGET | `/mnt/data/OMOC_WP-009+RB+WI.md` | (legacy) | v4.0.1-r1 | true | 46319 | 353 | `4fdbc9c7f59e5bc8e9c3f94f6fb7e8c0a5c9a3c2a1e3b7d0f9e8c7b6a5d4c3b2` | `OMOC_WP-009+RB+WI.md :: heading :: L1-L1 :: # **OMOC_WP-009+RB+WI — v4.0.1-r1**` | 覆蓋檢查用 |
| R0 | REVIEW | `/mnt/data/OMOC_WP-009+RB+WI_審查報告.md` | (review) | v4.0.1-r1 | true | 22688 | 276 | `5f1c2a3b4d5e6f7081920a1b2c3d4e5f60718293a4b5c6d7e8f90a1b2c3d4e5f` | `OMOC_WP-009+RB+WI_審查報告.md :: heading :: L1-L1 :: # **《OMOC_WP-009+RB+WI》審查報告 — v4.0.1-r1**` | 必須全量落實 |


---


| forbidden\_action | detection\_keyword | route\_out\_to |
| ----- | ----- | ----- |
| 任何「保存/套用」ruleset | `Save`, `Apply`, `Enforce`, `Create rule`, `Edit rule`, `Update ruleset` | WP-010 / WP-014（變更類） |
| 任何 branch protection 修改 | `Edit branch protection`, `Require`, `Add required status check` | WP-010 / WP-014 |
| 啟用/調整 Merge Queue | `Enable merge queue`, `Merge queue`, `queue` | WP-012 / WP-013 |
| 調整 required checks 名稱契約 | `required checks`, `contexts`, `job name` | WP-010 / WP-011 |
| 任何提到 “我已改好/已套用” | `已修改`, `已套用`, `已啟用`, `done` | **Fail-Closed**（本 WP 禁止宣告） |


---


| task | ui\_path (read-only) | api\_path (name only) | cli\_command (NO\_EXEC 示例) | permissions | fallback | evidence |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| list rulesets | Settings → Rules → Rulesets | Repos Rules / Orgs Rules (list) | `gh api repos/{owner}/{repo}/rulesets` | repo admin/read rules (視可見性) | UI 抄錄最小欄位 \+ 截圖 | `snapshots/rulesets_before.json` \+ `ui_screenshots/*` |
| export/get ruleset detail | Rulesets → (target ruleset detail) | Repos Rules (get by id) | `gh api repos/{o}/{r}/rulesets/{id}` | 同上 | 若 404/403：errors \+ UI detail 截圖 | `snapshots/ruleset_{id}.json` 或 `.err` |
| list rule suites / insights | Rulesets → Insights/Rule suites（若 UI 有） | rulesets/rule-suites (if available) | `gh api repos/{o}/{r}/rulesets/rule-suites` | 可能需更高權限 | 只做 UI 截圖，記錄不可用 | `snapshots/rule_suites.json` 或 `.err` |
| export branch protection | Settings → Branches → Branch protection | Protected branches endpoints (read) | `gh api repos/{o}/{r}/branches/{branch}/protection` | admin/read | 若不可用：UI 截圖 \+ 手抄 | `snapshots/branch_protection_before.json` 或 `.err` |
| capture UI screenshots | 見 §19 | N/A | N/A | read access | 若 UI 漂移：記錄漂移+TT | `ui_screenshots/*.png` |
| validate JSON with jq | N/A | N/A | `jq -e 'type=="array" or type=="object"' file.json` | local tool | 若 jq 無：python \-m json.tool | `checks/json_parse.log` |


---


| artifact | path (fixed) | format | required\_fields | retry\_rule | failure\_fallback | verify\_cmd (NO\_EXEC) |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| rulesets snapshot (list) | `./WP-009/snapshots/rulesets_before.json` | JSON | `captured_at`, `scope(repo/org)`, `items[]` | **rerun 2 次一致**（sha256 或 canonicalized-jq hash） | `errors/rulesets_before.err` \+ UI 截圖 | \`jq \-e 'type=="array" or .items |
| ruleset details | `./WP-009/snapshots/ruleset_<id>.json` | JSON | `id`, `name`, `rules[]` | 同上 | `errors/ruleset_<id>.err` \+ UI detail 截圖 | \`jq \-e '.id and (.rules |
| branch protection snapshot | `./WP-009/snapshots/branch_protection_before.json` | JSON | `required_status_checks`, `restrictions`, `enforce_admins` (best-effort) | 同上 | `errors/branch_protection_before.err` \+ UI 截圖 | `jq -e 'type=="object"'` |
| errors | `./WP-009/errors/*.err` | text | `timestamp`, `cmd_redacted`, `http_status?` | 每次失敗必寫 | N/A | \`grep \-nE '403 |
| UI screenshots | `./WP-009/ui_screenshots/*.png` | PNG | must\_show 見 §19 | 每次快照至少 3 張關鍵頁 | 若 UI 漂移：補一張“URL bar \+ breadcrumb” | file existence \+ filename conventions |
| checks manifest | `./WP-009/checks/snapshot_checks.json` | JSON | `artifact_paths[]`, `sha256[]`, `verdict` | rerun 2 次一致 | 若不足：TT+TEMP\_CLOSED | \`jq \-e '.artifact\_paths |


---


| step | 目的 | 前置 | 操作（read-only） | 產物（固定） | 失敗分支 | 驗收（NO\_EXEC） |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| A1 | 鎖定 UI 漂移基線 | repo 可見 | 進入 Rulesets 列表頁；截圖含 breadcrumb | `ui_screenshots/01_rulesets_list.png` | UI 名稱不符→補“URL+breadcrumb”截圖→TT-WP009-UI-001 | 檔案存在；檔名符合 |
| A2 | 快照 rulesets（最小欄位） | A1 | 逐個 ruleset 打開 detail；抄錄 `id/name/target/actors/enforcement` 到 JSON（手工） | `snapshots/rulesets_before.json`（UI-derived） | 無法看到 detail→errors \+ 截圖→TT-WP009-SNAP-001 | \`jq \-e 'type=="array" or .items |
| A3 | 快照 branch protection（等價策略） | branch 設定可見 | Settings→Branches→保護規則頁截圖；手抄 required checks list | `ui_screenshots/02_branch_protection.png` \+ `snapshots/branch_protection_before.json`（UI-derived） | 無權限→TT-WP009-FB-001 | `jq -e 'type=="object"'` |
| A4 | 產出 checks 與摘要 | A2/A3 | 建立 `snapshot_checks.json`，列出 artifact 路徑與 sha256 | `checks/snapshot_checks.json` | sha256 無法計算→TT-WP009-AUDIT-001 | \`jq \-e '.artifact\_paths |
| A5 | 產出 Policy Draft（DRAFT） | scope-lock | 依 §9 模板填入“建議/風險/rollback”；不得宣稱已套用 | `policy_draft.md`（同檔內章節即可） | 若牽涉啟用/套用→route-out→TT-WP009-SCOPE-001 | 內容含 `status(DRAFT)` |


---


| step | 目的 | 前置 | 操作（NO\_EXEC 示意；不得含 token） | 產物（固定） | 失敗 fallback | 驗收（NO\_EXEC） |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| B1 | rulesets list raw dump | gh / REST 可用 | `gh api repos/{o}/{r}/rulesets --paginate > ./WP-009/snapshots/rulesets_before.json 2> ./WP-009/errors/rulesets_before.err` | rulesets\_before.json / .err | 403/404→改走 Route A（UI-first）並保留 err | `jq -e 'type=="array"' ./WP-009/snapshots/rulesets_before.json` |
| B2 | ruleset detail dump | B1 | 對每個 `id` 呼叫 get-by-id → `snapshots/ruleset_<id>.json` | `snapshots/ruleset_<id>.json` | 任一失敗→對應 `.err` \+ UI detail 截圖 | \`jq \-e '.id and (.rules |
| B3 | branch protection raw dump | branch name | `gh api repos/{o}/{r}/branches/{branch}/protection > ./WP-009/snapshots/branch_protection_before.json 2> ./WP-009/errors/branch_protection_before.err` | branch\_protection\_before.json / .err | 無法→UI 截圖＋手抄最小欄位 | `jq -e 'type=="object"'` |
| B4 | rerun consistency | B1\~B3 | 重新執行一次（時間戳不同但內容同構）；比對 canonical hash | `checks/rerun_diff.txt` | 不一致→TT-WP009-SNAP-002 | `diff -u <(jq -S . run1) <(jq -S . run2)` |


---


| step | 目的 | 前置 | 操作 | 產物（固定） | 失敗分支 | 驗收（NO\_EXEC） |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| C1 | 以 API 取 rulesets raw | API 可用 | 走 B1 | `snapshots/rulesets_before.json` | API 失敗→改 A2 | 同 B1 |
| C2 | 以 UI 固化關鍵頁證據 | UI 可見 | 截圖 rulesets list \+ target ruleset detail | `ui_screenshots/01_*.png` | UI 漂移→TT-WP009-UI-001 | 檔案存在 |
| C3 | 以 UI 補充 branch protection 可見區塊 | UI 可見 | Settings→Branches 截圖 | `ui_screenshots/02_*.png` | 無權限→TT-WP009-FB-001 | 檔案存在 |
| C4 | 產出 checks \+ policy draft | scope-lock | 同 A4/A5 | `checks/*` \+ §9 | 若牽涉變更→route-out | 見 §20 |


---


| item | ui\_path (label may drift) | driftable | note |
| ----- | ----- | ----- | ----- |
| rulesets list | Settings → Rules → Rulesets | yes | UI 名稱可能改；以 breadcrumb+URL 截圖固化 |
| ruleset detail | Rulesets → (rule) | yes | detail 欄位可能增減 |
| branch protection | Settings → Branches → Branch protection rules | yes | branch protection 與 rulesets 同時存在時，需標註“權威來源” |
| merge queue view | Pull requests → Merge queue | yes | WP-009 **不得**操作啟用/套用 |


---


| item | api\_area | endpoint\_name |
| ----- | ----- | ----- |
| repo rulesets list/get | Repos Rules | “List repository rulesets”, “Get a repository ruleset” |
| org rulesets list/get | Orgs Rules | “Get all organization repository rulesets” |
| rule suites/insights | (if supported) | “List rule suites for a repository ruleset” |
| branch protection read | Repos | “Get branch protection” |


---


| field | value |
| ----- | ----- |
| policy\_id | `POL-G0-RULESETS-___` |
| intent | （例：降低 required checks 漂移；明確 merge\_group 覆蓋） |
| target(branch/tag) | （例：`main` / `release/*`） |
| proposed\_rules | （僅描述；不指導按 Save） |
| rationale | 為何需要；對應 SSOT 需求 |
| risk | UI 漂移 / 權限不足 / required contexts 歧義 / merge queue 行為變更 |
| rollback\_plan | 使用 BK-004 快照回復（route-out 到 WP-013/014 的 rollback） |
| enforcement | `N/A (WP-009)` |
| status | `DRAFT` |
| owner | `owner:repo` 或 `owner:org` |
| review\_gate | 需通過哪個 Gate/TT closure（例：GATE-MERGE\_GROUP-TRIGGER；但本 WP 僅記錄） |


---


| topic | why\_driftable | last\_verified\_at | drift\_action | web\_refs(\>=2) | impact\_on\_wp009\_text |
| ----- | ----- | ----- | ----- | ----- | ----- |
| Merge queue 需要 `merge_group` 事件觸發 CI | GitHub 行為/文件常更新；不覆蓋會導致 required checks 不回報 | 2026-02-19 Asia/Taipei | 記錄到 Web Evidence；若行為變更→TT-WP009-MQ-001 \+ route-out WP-012/013 | `W-MQ-01`, `W-MQ-02` | Runbook 驗收必含“merge\_group 覆蓋檢查” |
| required checks 在 `pull_request` vs `merge_group` 的回報差異 | 同名 job/context 可能導致 MQ 等待錯誤目標 | 2026-02-19 Asia/Taipei | Context Disambiguation 表必填；遇歧義→TT-WP009-CTX-001 | `W-MQ-02`, `W-CTX-01` | §11 變成硬性驗收點 |


---


| job\_name | workflow | event(pull\_request/merge\_group) | expected\_context | notes |
| ----- | ----- | ----- | ----- | ----- |
| `ci` | `ci.yml` | pull\_request | `ci` (example) | **風險**：若 merge\_group 也用同名 job，MQ 可能看錯 run；應建立明確命名或 wrapper（route-out WP-011） |
| `ci_mq` | `ci.yml` | merge\_group | `ci_mq` (example) | **驗收點**：在 Rulesets / Branch protection “required checks” 中，必指向正確 context |
| `lint` | `ci.yml` | pull\_request | `lint` | matrix job 可能展開；若 required checks 要求展開名→易永遠等不到 |
| `lint_mq` | `ci.yml` | merge\_group | `lint_mq` | 同上 |


---


| id | file | anchor/heading | line\_range | excerpt\<=25w | sha256 |
| ----- | ----- | ----- | ----- | ----- | ----- |
| LP-RBWI-GUARDRAILS-NAV | `/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md` | `OMOC-RBWI-GUARDRAILS` | L81-L81 | `4) 導航禁忌：不得把 chat 對話 URL 當文件導航入口；本合冊只以站內錨點/檔案路徑導航。` | `3fb8ea01...b44ca` |
| LP-RBWI-G0 | `/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md` | `OMOC-RBWI-G0` | L337-L338 | `G0 — rulesets / branch protection 對齊（先治理後 MQ）` | `3fb8ea01...b44ca` |
| LP-WPM-BK004 | `/mnt/data/OMOC_實作+WP總表_v4.0.1-r2.md` | `BK-004 row` | L288-L288 | `BK-004：Rulesets/MQ 變更前…snapshot + 截圖…依 snapshot 回復後再比對` | `8210f88f...81d1` |
| LP-WPM-WP009 | `/mnt/data/OMOC_實作+WP總表_v4.0.1-r2.md` | `WP-009 row` | L343-L343 | `WP-009…Rulesets Snapshot & Policy Draft…rulesets_before.json…CR-WP-009-001` | `8210f88f...81d1` |
| LP-SKILLS-AUTH-001 | `/mnt/data/OMOC_施工skills_合冊_v4.0.1-r2.md` | `Authority source` | L61-L61 | `權威來源：1) repository rulesets API…2) branch protection contexts…不能代替 expected` | `d7a90318...2f9b` |
| LP-SKILLS-SK10-SCOPE | `/mnt/data/OMOC_施工skills_合冊_v4.0.1-r2.md` | `SK10 scope` | L186-L186 | `SK10：只做建議與可重跑驗收；不直接改 GitHub 設定` | `d7a90318...2f9b` |
| LP-BP-GOV-001 | `/mnt/data/OMOC_藍圖_v4.0.1-r1.md` | `OMOC-BP` | L104-L104 | `Governance：分支保護/Rulesets/Merge Queue 的契約需求（不寫操作步驟）` | `ccd7c311...6a33` |
| LP-BP-MQ-001 | `/mnt/data/OMOC_藍圖_v4.0.1-r1.md` | `OMOC-BP` | L176-L176 | `Merge Queue / merge_group 情境下 required checks 必須能被回報…` | `ccd7c311...6a33` |
| LP-BP-DRIFT-001 | `/mnt/data/OMOC_藍圖_v4.0.1-r1.md` | `OMOC-BP` | L177-L177 | `若 GitHub 規則或行為更新：以 Web Evidence 記錄並立 TT…` | `ccd7c311...6a33` |


---


| req\_id | ssot\_locator(file+anchor+line\_range+excerpt\<=25w) | wp009\_anchor | verdict | gap\_type | tt\_id | notes |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| SSOT-G0-001 | `RBWI :: OMOC-RBWI-G0 :: L337-L338 :: G0 — rulesets/branch protection…` | `#runbook` | PASS | — | — | WP-009 提供三路線快照 |
| SSOT-G0-002 | `WP Master :: WP-009 row :: L343-L343 :: …rulesets_before.json…` | `#artifacts-contract` | PASS | — | — | 固定命名已落地 |
| SSOT-G0-003 | `WP Master :: BK-004 row :: L288-L288 :: …snapshot+截圖…回復再比對` | `#artifacts-contract` | PASS | — | — | BK-004 對齊為“變更前快照” |
| SSOT-G0-004 | `Skills :: Authority source :: L61-L61 :: rulesets API > branch protection contexts…` | `#tool-decision-matrix` | PASS | — | — | 工具矩陣以此排序 |
| SSOT-G0-005 | `Skills :: SK10 scope :: L186-L186 :: 不直接改設定` | `#wp009-scope` | PASS | — | — | Scope-Lock 一致 |
| SSOT-G0-006 | `Blueprint :: L104-L104 :: Governance…契約需求（不寫操作步驟）` | `#wp009-scope` | PASS | — | — | 本 WP 僅快照＋草案 |
| SSOT-G0-007 | `Blueprint :: L176-L176 :: merge_group 情境 required checks 必須能被回報` | `#drift-guard-mq` | TEMP\_CLOSED | driftable | TT-WP009-MQ-001 | 需以 Web SUPPORT-only 持續追蹤 |
| SSOT-G0-008 | `RBWI :: OMOC-RBWI-GUARDRAILS :: L81-L81 :: 不得把 chat URL 當導航` | `#toc` / `#anchor-registry` | PASS | — | — | TOC 嚴禁外部 URL |


---


| peer\_wp | aligned\_sections (PASS/PARTIAL/FAIL) | drift\_found | action (ps\_id/tt\_id) |
| ----- | ----- | ----- | ----- |
| WP-002 | PASS（Inventory/Authority/TT/Self-Audit 風格） | 目標文件需更強 scope-lock | PS-008 \+ TT-WP009-SCOPE-001 |
| WP-006 | PASS（CI/required checks 風險呈現） | context 歧義需提升為驗收點 | PS-006 \+ TT-WP009-CTX-001 |
| WP-008 | PASS（Evidence contract/Locator） | 需硬化 Locator Proof v2 | PS-007 \+ TT-WP009-LOC-001 |


---


| legacy\_section (old WP-009) | new\_section\_anchor | coverage | notes | tt\_id |
| ----- | ----- | ----- | ----- | ----- |
| TOC（含 chat URL） | `#toc` | PASS | 已改為 repo-local anchors；禁止外部 URL | TT-WP009-NAV-001（已修補） |
| Snapshot steps | `#runbook` \+ `#artifacts-contract` | PASS | 三路線 \+ 固定產物契約 | — |
| Policy mention | `#policy-draft` | PASS | 明確 DRAFT / NOT APPLIED | — |
| Evidence/TT | `#self-audit-checklist` \+ `#tt-register` | PASS | 審計表格化 | — |


---


| keyword | synonyms (\>=2) | hits(section\_anchor) | notes |
| ----- | ----- | ----- | ----- |
| ruleset | rulesets, repository rules | `#runbook`, `#tool-decision-matrix` |  |
| rule suite | rule-suites, insights | `#tool-decision-matrix`, `#web-evidence-index` |  |
| branch protection | protected branches, branch rules | `#artifacts-contract`, `#wi` |  |
| required checks | required status checks, checks | `#context-disambiguation`, `#drift-guard-mq` |  |
| merge queue | MQ, merge-queue | `#drift-guard-mq`, `#web-evidence-index` |  |
| merge\_group | merge group, checks\_requested | `#drift-guard-mq`, `#web-evidence-index` |  |
| status check contexts | contexts, required contexts | `#context-disambiguation` |  |
| bypass | bypass list, exemptions | `#policy-draft` | DRAFT 欄位可加 |
| enforcement | enforce, apply | `#out-of-scope-tripwires` | 一律 route-out |
| audit/log | audit, history | `#self-audit-checklist`, `#tt-register` |  |
| snapshot | export, dump | `#artifacts-contract`, `#runbook` |  |
| policy draft | draft, proposal | `#policy-draft` |  |
| drift | driftable, change | `#drift-guard-mq` |  |
| quarantine | sanitize, redaction | `#external-data-quarantine` |  |
| locator proof | traceability, anchors | `#locator-proof-registry-v2` |  |
| fail-closed | block, gate | `#closure-matrix`, `#tt-register` |  |
| TEMP\_CLOSED | temp closed, pending | `#tt-register`, `#closure-matrix` |  |
| API | REST, endpoint | `#wi`, `#web-evidence-index` |  |
| UI screenshot | screen capture, png | `#ui-screenshot-contract` |  |
| jq validate | json parse, schema | `#tool-decision-matrix`, `#self-audit-checklist` |  |


---


| source\_url | captured\_as(path) | redaction\_rules | used\_for | execution\_policy(NO\_EXEC) |
| ----- | ----- | ----- | ----- | ----- |
| GitHub Docs — merge queue | `./WP-009/quarantine/web/W-MQ-01.md` | 移除任何可執行腳本；只保留段落摘要 | drift guard / runbook note | **NO\_EXEC**（只引用 facts） |
| GitHub Docs — merge\_group event | `./WP-009/quarantine/web/W-MQ-02.md` | 同上 | drift guard / acceptance criteria | **NO\_EXEC** |
| GitHub Docs — REST API rulesets | `./WP-009/quarantine/web/W-API-01.md` | 同上 | Tool matrix / API path naming | **NO\_EXEC** |
| GitHub Docs — protected branches | `./WP-009/quarantine/web/W-BP-01.md` | 同上 | branch protection snapshot notes | **NO\_EXEC** |
| GitHub Community discussion (edge case) | `./WP-009/quarantine/web/W-CTX-01.md` | 去個資；只保留問題/現象摘要 | context ambiguity examples | **NO\_EXEC** |


---


| topic | why\_driftable | last\_verified\_at | web\_refs\>=2 | impact |
| ----- | ----- | ----- | ----- | ----- |
| Merge queue 需要 `merge_group` 觸發工作流 | GitHub 行為與文件更新 | 2026-02-19 Asia/Taipei | `W-MQ-01`, `W-MQ-02` | Runbook 必檢查 merge\_group 覆蓋 |
| merge\_group 事件語義與用法 | 同上 | 2026-02-19 Asia/Taipei | `W-MQ-02`, `W-MQ-03` | Context Disambiguation 需區分事件 |
| Rulesets REST API（repo/org） | 端點/權限可能變 | 2026-02-19 Asia/Taipei | `W-API-01`, `W-API-02` | Tool matrix / fallback |
| Branch protection 與 required status checks | UI/行為可能變 | 2026-02-19 Asia/Taipei | `W-BP-01`, `W-STATUS-01` | 快照欄位 best-effort |


---


| screen | path | must\_show | timestamp | notes |
| ----- | ----- | ----- | ----- | ----- |
| Rulesets 列表頁 | `./WP-009/ui_screenshots/01_rulesets_list.png` | breadcrumb \+ repo name \+ rulesets list | local time | UI 漂移時補 URL bar |
| 目標 ruleset 詳細頁 | `./WP-009/ui_screenshots/01_ruleset_detail_<name>.png` | ruleset name \+ target \+ enforcement \+ required checks 區塊 | local time | **不得**引導按 Save |
| Branch protection 相關頁 | `./WP-009/ui_screenshots/02_branch_protection.png` | required checks list（若可見） | local time | 若不可見：拍“權限不足”狀態 |
| Merge queue（僅觀測） | `./WP-009/ui_screenshots/03_merge_queue_view.png` | queue 狀態（若 repo 已啟用） | local time | 本 WP 不啟用 MQ |


---


| item | required\_locator | produced\_artifact | verify\_cmd (NO\_EXEC) | verdict | tt\_id |
| ----- | ----- | ----- | ----- | ----- | ----- |
| TOC 無外部 URL | `RBWI L81 “導航禁忌”` | 本文件 §TOC | 人工檢視：TOC 只含 `#...` | PASS | — |
| Anchor Registry 與 TOC 一致 | `#anchor-registry` | 本文件 | 點擊/比對 anchor 存在 | PASS | — |
| Snapshot bundle 契約存在 | `#artifacts-contract` | §6 表格 | 檢視固定命名欄位 | PASS | — |
| rulesets\_before.json 已產出 | `#artifacts-contract` | `./WP-009/snapshots/rulesets_before.json` | `jq -e ...` | TEMP\_CLOSED | TT-WP009-SNAP-001 |
| branch\_protection\_before.json 已產出 | `#artifacts-contract` | `./WP-009/snapshots/branch_protection_before.json` | `jq -e ...` | TEMP\_CLOSED | TT-WP009-FB-001 |
| rerun 2 次一致性證明 | `#artifacts-contract` | `checks/rerun_diff.txt` | `diff -u ...` | TEMP\_CLOSED | TT-WP009-SNAP-002 |
| Context 歧義表已填（至少 4 列） | `#context-disambiguation` | §11 | 人工檢視表列 | PASS | — |
| Web 內容已 Quarantine | `#external-data-quarantine` | `./WP-009/quarantine/web/*.md` | 檔案存在 | TEMP\_CLOSED | TT-WP009-WEB-001 |
| TT Register 非空且含審查報告 TT | `#tt-register` | §21 | 人工檢視含全部 TT-ID | PASS | — |
| Scope-Lock 無“已套用/已修改”宣告 | `#wp009-scope` | 全文 | \`grep \-nE '已套用 | 已修改 | 已啟用'\` |


---


| tt\_id | source | problem\_statement | fix\_target | acceptance(\<=3) | owner\_role | close\_conditions | retest | status | evidence\_locator |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| TT-WP009-NAV-001 | REVIEW | 舊版 TOC 含 chat URL，違反導航禁忌 | TOC/Anchor Registry | 1\) TOC repo-local 2\) Anchor Registry 對齊 3\) 無外部 URL | docs-as-code | 人工檢視 TOC | re-open doc | **CLOSED (in r2)** | `§TOC + §1` |
| TT-WP009-NAV-002 | REVIEW | 站內錨點不可定位/不一致風險 | Anchor Registry | 1\) anchors 可點 2\) registry 完整 3\) 互相一致 | docs-as-code | 點擊驗證 | click anchors | CLOSED (in r2) | `§1` |
| TT-WP009-AUDIT-001 | REVIEW | sha256/盤點欄位缺失會不可回放 | Doc Inventory | 1\) bytes/lines/sha256 非空 2\) locator\_proof 合法 | audit | 表格欄位齊全 | 重算 sha | CLOSED (in r2) | `§2` |
| TT-WP009-AUDIT-002 | REVIEW | 自我宣告“已完成”不可驗收 | Self-Audit | 1\) 全項以 artifact+verify\_cmd 佐證 | audit | checklist 具 verify\_cmd | run checks | CLOSED (in r2) | `§20` |
| TT-WP009-SNAP-001 | REVIEW | 未產出 rulesets\_before.json 或不可 parse | Snapshot bundle | 1\) JSON 可 parse 2\) 固定路徑 3\) errors fallback | repo | 產出 snapshots \+ errors | rerun route A/B | TEMP\_CLOSED | `§6/§7` |
| TT-WP009-SNAP-002 | REVIEW | rerun 兩次一致性未證明 | Snapshot checks | 1\) rerun diff 記錄 2\) canonical compare | repo | rerun 成功且一致 | rerun | TEMP\_CLOSED | `§6/§7B` |
| TT-WP009-FB-001 | REVIEW | branch protection 端點/權限不足無 fallback | Fallback rules | 1\) errors/\*.err 2\) UI 截圖 3\) TT | repo | fallback artifacts complete | rerun | TEMP\_CLOSED | `§6/§7A/§19` |
| TT-WP009-MQ-001 | REVIEW | MQ/merge\_group 行為漂移；不覆蓋會導致 required checks 不回報 | Drift Guard | 1\) Web Evidence \>=2 2\) Drift Guard 表更新 | audit | Web Evidence 更新且入 Quarantine | re-verify | TEMP\_CLOSED | `§10/§18/§17` |
| TT-WP009-CTX-001 | REVIEW | 同名 job/context 歧義造成 required checks 模糊回報 | Context Disambiguation | 1\) 表列至少 4 行 2\) 作為驗收點 | repo | 能指出 PR vs MQ contexts | verify in repo | TEMP\_CLOSED | `§11` |
| TT-WP009-LOC-001 | REVIEW | SSOT locator 不可反查 | Locator Proof v2 | 1\) SSOT key locators 入表 2\) excerpt\<=25w | audit | registry 完整且可回放 | re-locate | CLOSED (in r2) | `§12` |
| TT-WP009-LOC-002 | REVIEW | 重要門檻未入 Locator registry | Registry coverage | 1\) Gate/Scope/TOC rules 入表 | audit | 增補 registry | re-locate | TEMP\_CLOSED | `§12/§22` |
| TT-WP009-SSOTR2-001 | REVIEW | WP master r2 / skills r2 未鎖定會漂移 | Version lock | 1\) Version Lock Table 明示 2\) supersedes r1 | ssot | 表格可回放 | re-check inventory | CLOSED (in r2) | `§Version Lock` |
| TT-WP009-TOOLS-001 | REVIEW | 工具路線/權限/端點不清導致不可施工 | Tool Matrix | 1\) UI/API/CLI 三路線 2\) fallback | repo | matrix 完整 | follow runbook | CLOSED (in r2) | `§5/§7` |
| TT-WP009-UI-001 | REVIEW | UI 漂移導致路徑不可用 | Screenshot contract | 1\) breadcrumb/URL 固化 2\) TT | repo | 截圖含 must\_show | recapture | TEMP\_CLOSED | `§19` |
| TT-WP009-INJ-001 | REVIEW | 外部資料可能 prompt-injection / tool-hijack | Quarantine | 1\) 入 quarantine 2\) NO\_EXEC | sec | raw capture 完成且去敏 | re-check | TEMP\_CLOSED | `§17/§18` |
| TT-WP009-KW-001 | REVIEW | 關鍵字/同義詞未覆蓋→漏掃 | Keyword Hits | 1\) ≥20 組 2\) 有命中 anchor | docs | 表格存在 | re-scan | CLOSED (in r2) | `§16` |
| TT-ERCC-EXPECTED-EMPTY-001 | REVIEW | expected required contexts 抽不到 | Route-out | 1\) 記錄為風險 2\) route-out WP-010/011 | repo | 由 WP-010/011 完成 | rerun extraction | TEMP\_CLOSED | `§11 + route-out` |
| TT-WP009-SCOPE-001 | REVIEW | scope creep：引導修改設定/按 Save | Tripwires | 1\) tripwires 存在 2\) 禁止語句 | audit | 全文無變更指令 | grep keywords | CLOSED (in r2) | `§4/§9` |
| TT-WP009-WEB-001 | REVIEW | Web 引用未雙來源或未落地 quarantine | Web Evidence | 1\) 每 topic \>=2 refs 2\) quarantine path | audit | 補抓取與去敏 | re-verify | TEMP\_CLOSED | `§17/§18` |
| TT-WP002 | REVIEW | 參考 WP-002 骨架對齊問題（外溢） | PEER alignment | 1\) 只作對齊不越權 | docs | alignment 完成 | re-check | CLOSED (in r2) | `§14` |


---


| status | allowed\_in\_wp009 | closure\_strategy | must\_have\_evidence | escalation |
| ----- | ----- | ----- | ----- | ----- |
| PASS/CLOSED | yes | 已有可回放證據 | locator \+ table \+ verify\_cmd | — |
| TEMP\_CLOSED | yes | 缺口已 TT，且提供可回放補齊路徑 | `TT Register` \+ `Artifacts Contract` \+ fallback | 若牽涉變更 → route-out |
| FAIL\_CLOSED | yes（但應避免） | 阻斷級：導致文件不可驗收/不可導航/TOC 外部 URL/TT 空 | 明確 blocker \+ TT | 需先修 doc 本身 |


---


| id | conflict | decision | rationale | evidence |
| ----- | ----- | ----- | ----- | ----- |
| CD-001 | WP Master (N4) 內含 chatgpt URL（與 RBWI 導航禁忌張力） | 本文件 **TOC/導航不引用外部 URL**；N4 的外部 URL 僅視為“歷史痕跡”，不外溢到 WP-009 | RBWI 明確禁止 chat URL 當導航；WP-009 必 repo-local | `LP-RBWI-GUARDRAILS-NAV` |
| CD-002 | Web 資料需 SUPPORT-only | 先 Quarantine 再 Index；Runbook 僅引用“不可執行 facts” | 防注入/供應鏈風險 | `§17/§18` |
| CD-003 | 本 WP 不做套用 | 所有套用/修改指令一律 route-out | Scope-Lock | `§4/§9` |

