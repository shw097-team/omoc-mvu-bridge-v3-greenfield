# HOW (extracted)


| section | anchor |
| ----- | ----- |
| Document Control | `#omoc-wp011-doc-control` |
| Authority | `#omoc-wp011-authority` |
| Doc Inventory | `#omoc-wp011-doc-inventory` |
| Version Lock | `#omoc-wp011-version-lock` |
| Scope / Route-out | `#omoc-wp011-scope` |
| Tool Matrix | `#omoc-wp011-tool-matrix` |
| Requirements | `#omoc-wp011-requirements` |
| Closure Matrix | `#omoc-wp011-closure-matrix` |
| Spec | `#omoc-wp011-spec` |
| Runbook | `#omoc-wp011-runbook` |
| WI | `#omoc-wp011-wi` |
| Gates & DoD | `#omoc-wp011-gates` |
| Quickpath | `#omoc-wp011-quickpath` |
| Counterexamples | `#omoc-wp011-counterexamples` |
| SECURITY | `#omoc-wp011-security` |
| Appendices | `#omoc-wp011-appendices` |
| TT Register | `#omoc-wp011-tt-register` |
| Web Evidence Appendix | `#omoc-wp011-web-evidence` |
| Glossary | `#omoc-wp011-glossary` |
| Change Log | `#omoc-wp011-changelog` |
| machine\_summary.json | `#omoc-wp011-machine-summary` |


---


| doc\_path | role | required\_version | why\_needed | primary\_locators（示例） | sha256 |
| ----- | ----- | ----- | ----- | ----- | ----- |
| `/mnt/data/OMOC_藍圖_v4.0.1-r1.md` | NORMATIVE | v4.0.1-r1 | 藍圖定義 required checks / evidence 契約（BP-1000/1200） | `BP-1000`, `BP-1200`（關鍵字定位；行號不可得→TT） | TT |
| `/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md` | NORMATIVE | v4.0.1-r1 | Phase-G/G2 的可施工骨架、Guardrails | `#[ANCHOR:OMOC-RBWI-G2]`、`#[ANCHOR:OMOC-RBWI-GUARDRAILS]` | TT |
| `/mnt/data/OMOC_施工skills_合冊_v4.0.1-r2.md` | NORMATIVE | v4.0.1-r2 | skills 使用時機/路由（避免越權） | `#OMOC-CSK-0000`、（router/mq probe 相關錨點以 PEER/總表定位；不足→TT） | TT |
| `/mnt/data/OMOC_實作+WP總表_v4.0.1-r2.md` | NORMATIVE | v4.0.1-r2 | gate\_registry、WP-MASTER、BK 矩陣 | `gate_registry.json`、`WP-MASTER`（關鍵字定位）；r1 禁用 | TT |
| `/mnt/data/OMOC_WP-011+RB+WI_審查報告.md` | REVIEW/FIX | n/a | 必修閉環與 TT 定義 | Findings/TT/Web Appendix（本檔內） | TT |
| `/mnt/data/OMOC_WP-011+RB+WI.md` | TARGET | n/a | Legacy 覆蓋對照 | 逐段落條目化（不足→TT） | TT |
| `/mnt/data/OMOC_WP-001..010+RB+WI_v4.0.1-r2.md` | PEER | v4.0.1-r2 | 版型、Gate/TT/證據樣式對齊 | 以 WP-003、WP-010 作樣式基準（不足→TT） | TT |


---


| item | path | version | status |
| ----- | ----- | ----- | ----- |
| SSOT-N1 | OMOC\_藍圖\_v4.0.1-r1.md | v4.0.1-r1 | LOCK |
| SSOT-N2 | OMOC\_施工RB+WI\_合冊\_v4.0.1-r1.md | v4.0.1-r1 | LOCK |
| SSOT-N3 | OMOC\_施工skills\_合冊\_v4.0.1-r2.md | v4.0.1-r2 | LOCK |
| SSOT-N4 | OMOC\_實作+WP總表\_v4.0.1-r2.md | v4.0.1-r2 | LOCK（r1 視為 superseded） |
| PEER | WP-001～WP-010 v4.0.1-r2 | v4.0.1-r2 | STYLE-LOCK |
| TARGET | OMOC\_WP-011+RB+WI.md | n/a | SUPERSEDED |


---


| gate\_id | gate\_contract\_hash | verify\_steps\_ref (this doc) | rollback\_ref (this doc) | owner\_wp |
| ----- | ----- | ----- | ----- | ----- |
| GATE-ALWAYS-REPORT | **TT（需從 N4 可定位抄錄）** | `RB-STEP-G2-AR-VERIFY` | `RB-STEP-G2-AR-ROLLBACK` | WP-011 |
| GATE-REQCHECK-CANONICAL | **TT（需從 N4 可定位抄錄）** | `RB-STEP-G2-ERCC-VERIFY` | `RB-STEP-G2-AR-ROLLBACK` | WP-011（只讀接口；規格來源 WP-010） |
| GATE-EVIDENCE-MINSET | **TT（需從 N4 可定位抄錄）** | `RB-STEP-G2-EVIDENCE-VERIFY` | n/a（證據產出不可回滾；僅可重跑） | WP-011（證據樣式對齊 WP-003） |


---


| topic | route\_out\_to | locator（Files-first） |
| ----- | ----- | ----- |
| checks\_manifest schema / expected/observed/diff 定義 | WP-010 | `/mnt/data/OMOC_WP-010+RB+WI_v4.0.1-r2.md`（關鍵字：checks\_manifest / expected / observed / diff；不可定位→TT） |
| required checks baseline / presence | WP-006 | `/mnt/data/OMOC_WP-006+RB+WI_v4.0.1-r2.md`（關鍵字：required checks baseline） |
| merge queue enablement & merge\_group 驗證 | WP-013 | `/mnt/data/OMOC_WP-013+RB+WI.md`（如不存在或不可定位→TT） |
| 藍圖層政策裁決 | OMOC\_藍圖 | `BP-1000 / BP-1200`（不可定位→TT） |
| BK/備份與回復矩陣 | WP總表 r2 | `Backup/Restore/Recovery`（不可定位→TT） |


---


| task | preferred | allowed | forbidden\_by\_wp011 | evidence\_required |
| ----- | ----- | ----- | ----- | ----- |
| 確保必回報（Always-Report wrapper） | GitHub Actions workflow（on: pull\_request \+ merge\_group；job if: always()） | gh CLI 查詢 runs/statuses；UI 僅做核對 | 直接改 rulesets 的「required checks 清單」作為修補（越界） | workflow YAML（最小骨架）+ run evidence（IDs/結論） |
| Status Hygiene / 名稱對齊（ERCC） | Read-only 對齊腳本/步驟（比較 checks\_manifest vs observed checks） | gh CLI/API 讀取 statuses & check-runs | 在本 WP 內改 checks\_manifest（越界） | ercc\_diff.json \+ 取證截圖/JSON |
| 改 rulesets / branch protection（若必要） | Route-out（Repo Admin Runbook） | UI/gh（視 SSOT 允許） | 在 WP-011 內指示「照網頁貼上命令」 | BK before/after \+ 回滾步驟 |


---


| finding\_id | severity | fix\_location (anchor) | fix\_result | acceptance\_method | evidence\_required | status |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| F-011-001（SSOT drift：引用 r1） | BLOCKER | `#omoc-wp011-version-lock` \+ `#omoc-wp011-authority` | 本版明示 r1 superseded；所有 SSOT 指向 r2 | grep：不得出現 `WP總表_v4.0.1-r1` | grep proof \+ locator proof | CLOSED（文件層） |
| F-011-002（Gate hash 缺失） | BLOCKER | `#omoc-wp011-version-lock` | 建 Gate Dependencies 表；但 hash 需 N4 可定位抄錄 | N4 對照核對 | 表格+N4片段 | TEMP\_CLOSED→TT-011-002 |
| F-011-003（merge\_group \+ always-report YAML 骨架缺） | MAJOR | `#omoc-wp011-spec-always-report` \+ `#omoc-wp011-runbook` | 補最小 YAML 骨架與驗收步驟 | PR/merge\_group 兩情境跑通 | workflow \+ run evidence | TEMP\_CLOSED→TT-011-003 |
| F-011-004（skip/filtering 風險未落地） | MAJOR | `#omoc-wp011-spec-skip-hazard` \+ `#omoc-wp011-wi` | 補清單與替代策略 | docs-only PR 仍回報 | checklist \+ run evidence | TEMP\_CLOSED→TT-011-004 |
| F-011-005（ERCC 機械化缺） | MAJOR | `#omoc-wp011-spec-ercc` \+ `#omoc-wp011-runbook` | 補 ercc\_diff 產出/Fail-Closed | diff=0 才 PASS | ercc\_diff.json | TEMP\_CLOSED→TT-011-005 |
| F-011-006（Evidence Minset 不明） | MAJOR | `#omoc-wp011-evidence-minset` | 表格化 minset | minset 完整+audit PASS | artifacts \+ audit | TEMP\_CLOSED→TT-011-006 |
| F-011-007（UI 變更缺 BK/回滾卡） | MINOR | `#omoc-wp011-wi-settings-change` | 補 Settings Change Card 模板 | before/after/rollback 可驗收 | BK evidence | TEMP\_CLOSED→TT-011-007 |
| F-011-009（Web SUPPORT 防注入未落地） | MINOR | `#omoc-wp011-security` \+ `#omoc-wp011-web-evidence` | Web 僅 Appendix；每筆綁 finding/TT | lint：正文無裸 URL | appendix mapping | CLOSED（文件層） |
| F-011-010（缺 canonical version block） | MAJOR | `#omoc-wp011-doc-control` | 已補 | header 可機讀 | n/a | CLOSED |


---


| legacy\_topic（舊版常見段落） | new\_anchor | coverage\_status |
| ----- | ----- | ----- |
| Scope/Non-goals（不啟用 MQ、不定義 manifest） | `#omoc-wp011-scope` | PASS |
| Always-Report 概念與必要性 | `#omoc-wp011-spec-always-report` | PASS |
| Status Hygiene（命名/狀態） | `#omoc-wp011-spec-status-hygiene` | PASS |
| ERCC / manifest 對齊（只讀） | `#omoc-wp011-spec-ercc` | PASS（實測 TT） |
| Gate / hash / BK / rollback | `#omoc-wp011-version-lock` \+ `#omoc-wp011-runbook` | PARTIAL（hash/BK 需 SSOT 可定位補齊→TT） |
| Evidence minset / bundle audit | `#omoc-wp011-evidence-minset` | PASS（驗收 TT） |
| WI 任務卡 | `#omoc-wp011-wi` | PASS |


---


| check\_item | forbidden\_pattern | safer\_alternative | verification |
| ----- | ----- | ----- | ----- |
| paths-ignore / branches-ignore | required workflow 使用 ignore 導致不觸發 | 用 always-report wrapper 作「無條件回報」保底 | docs-only PR 仍有回報 |
| job/workflow `if:` | 以條件跳過整個 workflow/job | 只在「主要任務」上做 if，保留「回報 job」always() | 任意失敗/取消仍回報 |
| needs/concurrency | 依賴鏈失敗使回報 job 不執行 | 回報 job 不依賴會被跳過的 jobs | 模擬上游失敗仍回報 |
| matrix 造成名稱漂移 | matrix 展開導致 check name 改變/倍增 | 固定 wrapper check name，不用 matrix 命名 | name 列表一致 |


---


| artifact | path (recommend) | generator(step) | validator | retention | redact\_rules |
| ----- | ----- | ----- | ----- | ----- | ----- |
| verdict.json | `evidence/_acceptance/wp011/verdict.json` | `RB-STEP-G2-EVIDENCE-COLLECT` | schema check（若無→TT） | keep | secrets-zero |
| evidence\_index.md | `evidence/_acceptance/wp011/evidence_index.md` | `RB-STEP-G2-EVIDENCE-COLLECT` | link/locator lint（若無→TT） | keep | no tokens |
| ercc\_diff.json | `evidence/_acceptance/wp011/ercc_diff.json` | `RB-STEP-G2-ERCC-VERIFY` | json parse | keep | mask ids if needed |
| run\_proof.json | `evidence/_acceptance/wp011/run_proof.json` | `RB-STEP-G2-AR-VERIFY` | json parse | keep | no secrets |
| bundle\_audit.json（可選，若採 WP-003 樣式） | `evidence/_acceptance/wp011/bundle_audit.json` | packager | audit==PASS | keep | mask logs |


---


| field | value |
| ----- | ----- |
| change\_id | CHG-011-\_\_\_\_ |
| change\_type | rulesets / branch protection / required checks（route-out） |
| bk\_id | BK-\_\_\_\_（SSOT 定義；不可定位→TT） |
| before\_evidence | 截圖/JSON（去敏） |
| after\_evidence | 截圖/JSON（去敏） |
| rollback\_plan | revert / restore BK（可驗收） |
| post\_verify | ERCC diff=0 \+ always-report 回報存在 |


---


| gate | PASS | TEMP\_CLOSED | FAIL\_CLOSED |
| ----- | ----- | ----- | ----- |
| GATE-ALWAYS-REPORT | PR path 回報存在且名稱固定；（若啟用 MQ）merge\_group path 回報亦存在 | 僅有文件骨架，缺環境 run evidence | 無回報或名稱漂移導致 required check 缺失 |
| GATE-REQCHECK-CANONICAL（ERCC） | `ercc_diff.json` 全空 | 有 diff → 已建 TT 並可追蹤 | 缺 ERCC 產出且仍宣稱已對齊 |
| GATE-EVIDENCE-MINSET | minset 齊全可解析 | 缺一兩件但已建 TT | 缺關鍵件（verdict/index）或含 secrets |


---


| test\_id | how\_to\_break | expected\_detection | expected\_outcome |
| ----- | ----- | ----- | ----- |
| CE-011-001 | 在 required workflow 加 `paths-ignore: ["docs/**"]` | docs-only PR 無 run\_proof | Gate FAIL 或 TT-011-004 |
| CE-011-002 | 移除 `merge_group` 事件（但啟用 MQ） | merge\_group 無回報 | TT-011-003（直到補回） |
| CE-011-003 | 將 wrapper check name 改成動態（含 matrix） | ERCC 出現 unexpected\_observed/name\_mismatch | TT-011-005 |
| CE-011-004 | evidence 收錄含 token 的 log | secrets-zero 檢查失敗 | FAIL\_CLOSED（SEC） |


---


| lp\_id | target | locator |
| ----- | ----- | ----- |
| LP-011-001 | RB+WI Guardrails | `/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md#[ANCHOR:OMOC-RBWI-GUARDRAILS]` |
| LP-011-002 | Phase-G/G2 定義 | `/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md#[ANCHOR:OMOC-RBWI-G2]`（行距參照：WP-012 的 LP-004） |
| LP-011-003 | 審查必修（Gate hash / drift / ERCC / minset） | `/mnt/data/OMOC_WP-011+RB+WI_審查報告.md`（Findings/TT/Web Appendix） |


---


| ssot\_topic | ssot\_locator | wp011\_anchor | status |
| ----- | ----- | ----- | ----- |
| Always-Report（G2） | RB+WI G2 | `#omoc-wp011-spec-always-report` | PASS（文件）/ TT（實測） |
| Guardrails | RB+WI Guardrails | `#omoc-wp011-authority` \+ `#omoc-wp011-security` | PASS |
| Gate hash 一致化 | N4（需可定位抄錄） | `#omoc-wp011-version-lock` | TEMP\_CLOSED→TT |


---


| tt\_id | status | type | description | closure\_criteria | retest\_steps | owner\_role | evidence\_required |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| TT-011-001 | CLOSED（文件層） | DRIFT | 禁用 WP總表 r1 引用 | grep 無 r1；SSOT note 完整 | n/a | WP-011 Doc Owner | grep proof |
| TT-011-002 | **FAIL\_CLOSED** | CONSISTENCY | Gate table 未補齊 `gate_contract_hash` 的 N4 可定位抄錄 | 從 N4 r2 可定位抄錄三個 gate hash 並填入 §7.2 | 對照 N4 片段核對 | WP-011 Doc Owner | 表格 \+ N4 locator proof |
| TT-011-003 | TEMP\_CLOSED | GAP | merge\_group \+ always() 的最小 wrapper 在環境中未實測 | PR 與 merge\_group 皆回報同名 check | 建 PR 測試 \+（若啟用 MQ）merge\_group 測試 | CI/Workflow Owner | workflow \+ run evidence |
| TT-011-004 | TEMP\_CLOSED | RISK | filtering/skip 風險控管需環境驗證 | docs-only PR 仍回報 required check | 建 docs-only PR 測試 | CI/Workflow Owner | run evidence \+ checklist |
| TT-011-005 | TEMP\_CLOSED | CONSISTENCY | ERCC diff 產出與判斷需實測 | `ercc_diff.json` diff=0 | 跑 ERCC 步驟 | Evidence Steward | checks\_manifest \+ ercc\_diff.json |
| TT-011-006 | TEMP\_CLOSED | GAP | Evidence Minset 與 audit PASS 需落地 | minset 全件 \+（若採）bundle\_audit PASS | 跑 evidence collect/verify | Evidence Steward | artifacts \+ audit |
| TT-011-007 | TEMP\_CLOSED | FEASIBILITY | BK/回滾卡需對齊 N4 BK 矩陣可定位條文 | BK locator 可定位 \+ before/after/rollback evidence | 依 route-out 流程實作一次 | Repo Admin | BK evidence |
| TT-011-LGC-001 | TEMP\_CLOSED | TRACE | 舊版 WP-011 逐段落 1:1 覆蓋對照未建立 | 提供舊版段落索引（行距/錨點）並逐段對照 | 建立 legacy map 表 | WP-011 Doc Owner | legacy locator proof |


---


| source\_id | title | publisher/domain | url | accessed\_at (Asia/Taipei) | why\_relevant | related\_finding\_ids |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| W-01 | Managing a merge queue | docs.github.com | [https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/configuring-pull-request-merges/managing-a-merge-queue](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/configuring-pull-request-merges/managing-a-merge-queue) | 2026-02-19T(UTC+08) | merge\_group 與 MQ required checks 行為佐證 | F-011-003 / TT-011-003 |
| W-04 | Troubleshooting required status checks | docs.github.com | [https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/collaborating-on-repositories-with-code-quality-features/troubleshooting-required-status-checks](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/collaborating-on-repositories-with-code-quality-features/troubleshooting-required-status-checks) | 2026-02-19T(UTC+08) | filtering/skip 造成 waiting 類問題佐證 | F-011-004 / TT-011-004 |
| W-07 | merge\_group webhook/event changelog | github.blog | [https://github.blog/changelog/2022-08-18-merge-group-webhook-event-and-github-actions-workflow-trigger/](https://github.blog/changelog/2022-08-18-merge-group-webhook-event-and-github-actions-workflow-trigger/) | 2026-02-19T(UTC+08) | merge\_group 的官方背景補充 | F-011-003 |

