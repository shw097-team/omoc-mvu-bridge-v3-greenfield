# HOW (extracted)


| field | value |
| ----- | ----- |
| doc\_id | `OMOC_RIP-E` |
| version | `v1.1.0` |
| generated\_at | `2026-02-21T00:00:00+08:00` |
| timezone | `Asia/Taipei` |
| supersedes | `OMOC_RIP-E_v1.0.0` |
| aligned\_wps | `WP-010` / `WP-011` / `WP-012` (+ interface: `WP-013` / `WP-014`) |
| overall\_verdict | `TEMP_CLOSED` |
| scope\_status | `WSP_SCOPE_MISSING (SSOT GAP)` |
| CR\_OPEN | `0`（所有缺口以 TT 承接） |


---


| section | anchor |
| ----- | ----- |
| Cover Card | `#a-cover-card` |
| Document Control | `#b-document-control` |
| TOC | `#c-toc` |
| Reader Guide | `#d-reader-guide` |
| Anchor Registry | `#e-anchor-registry` |
| Authority & SSOT | `#f-authority-ssot` |
| Scope/Route-Out | `#g-scope-routeout` |
| Requirements | `#h-requirements` |
| Contracts | `#i-contracts` |
| Gates/DoD | `#j-gates-dod` |
| Closure Matrix | `#k-closure-matrix` |
| Traceability | `#l-traceability` |
| Artifacts Pack | `#m-artifacts-pack` |
| Runbook | `#n-runbook` |
| WI | `#o-wi` |
| TT Register | `#p-tt-register` |
| Web Evidence | `#q-web-evidence` |
| Change Log | `#r-change-log` |
| Machine Summary | `#s-machine-summary` |
| Self-Audit | `#t-self-audit` |


---


| gate\_id | meaning | pass\_criteria | fail\_action |
| ----- | ----- | ----- | ----- |
| GATE-RIPE-PR-ALWAYS-REPORT | PR 路徑必回報 `omoc / ci-gate` | PR 有同名 check 結論 | FAIL\_CLOSED \+ TT |
| GATE-RIPE-MG-ALWAYS-REPORT | merge\_group 路徑必回報 `omoc / ci-gate` | merge\_group run 有同名 check 結論 | FAIL\_CLOSED \+ TT |
| GATE-RIPE-MQ-ENABLE-BLOCK | readiness 未過＝阻擋 MQ | readiness JSON `ready=true` | 禁止啟用 MQ（Fail-Closed） |


---


| state | conditions（必要且充分） | machine\_check |
| ----- | ----- | ----- |
| PASS | PR \+ merge\_group 皆回報 `omoc / ci-gate` 且 checks\_manifest diff=0（或在 contract 允許範圍內） | `jq` 驗 manifest；run matching 證據齊備 |
| TEMP\_CLOSED | 無法做 runtime（例如 MQ 未啟用）但已完成靜態 readiness、輸出契約、並有 TT 承接 closure | readiness JSON \+ TT |
| FAIL\_CLOSED | required check 永久 pending / merge\_group 不觸發 / 命名漂移 / workflow-level filters / hygiene scan 命中 | `rg`/readiness/hygiene 任一失敗即 fail |


---


| finding\_id | category | severity | proof\_locator | impact | fix\_strategy | patch\_locus（New） | closure\_check（mechanical） | TT |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| F-R-001 | Risk | BLOCKER | 全庫未命中 WSP 條文 | scope 越界無法裁決 | 不腦補；以 TT 承接並在本文 Scope 明示暫行裁決 | [G](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999bacf-21c4-83a4-9aee-e88cea068929#g-scope-routeout) \+ [P](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999bacf-21c4-83a4-9aee-e88cea068929#p-tt-register) | `rg -n "WSP" /mnt/data/*.md`（需在 SSOT 出現） | TT-WSP-SCOPE-001 |
| F-D-001 | Drift | BLOCKER | 命名斜線/空白混用 | ruleset/contract 漂移、MQ 卡死 | 全文/工件唯一化 `omoc / ci-gate` \+ 禁則 | [I.1](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999bacf-21c4-83a4-9aee-e88cea068929#i1-required-check-name-lock) \+ FILE-BLOCK | `rg 'omoc/ci-gate'`\=0 | TT-RIPE-NAME-DRIFT-001 |
| F-C-001 | Consistency | BLOCKER | `:contentReference[...]` 污染 | 不可稽核/不可定位 | 清除污染 \+ 新增 Doc Hygiene Gate | [M](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999bacf-21c4-83a4-9aee-e88cea068929#m-artifacts-pack) | hygiene script exit 0 | TT-RIPE-DOC-HYGIENE-001 |
| F-E-001 | Feasibility | MAJOR | 缺最小 repo 驗收劇本 | runtime 無證據鏈 | 補 runbook \+ evidence locators \+ run matching doc | [N](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999bacf-21c4-83a4-9aee-e88cea068929#n-runbook) \+ [M](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999bacf-21c4-83a4-9aee-e88cea068929#m-artifacts-pack) | 產出 check\_runs.json & status.json | TT-RIPE-RUNTIME-001 |
| F-A-001 | Destructive | MAJOR | MQ 可能採信錯 run / merge\_group 不觸發 | 靜默卡死 | 新增 MQ run matching 最小模板 \+ 納入 DoD | `docs/MQ_RUN_MATCHING.md` | 按模板收集兩份證據 | TT-RIPE-MQ-RUN-MATCH-001 |
| F-B-002 | Drift | MAJOR | Web drift 欄位化不足 | 長期漂移不可追 | Web Evidence 欄位化（published/accessed/drift\_action/web\_refs\>=2） | [Q](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999bacf-21c4-83a4-9aee-e88cea068929#q-web-evidence) | 表格欄位齊全 | TT-RIPE-WEB-FIELDS-001 |
| F-D-002 | Logic | MAJOR | readiness 停機規則缺可執行阻擋點 | 先開 MQ 再說 | readiness 固定 JSON \+ exit code；WP-013 可 consume | `scripts/omoc_mq_readiness_check.sh` | `jq -e .` \+ rc 行為 | TT-RIPE-READINESS-IO-001 |
| F-D-003 | Logic | MINOR | timeout\_unknown 缺保守處置 | 超時治理口號化 | timeout 未知→readiness fail（阻擋 MQ） | readiness script \+ policy | readiness JSON `timeout_known=false` → ready=false | TT-RIPE-TIMEOUT-UNKNOWN-001 |
| F-F-002 | Risk | MAJOR | SPEC-LEAK（web 指令句誤升格） | drift/越權 | Web Appendix 明示 DATA-only | [Q](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999bacf-21c4-83a4-9aee-e88cea068929#q-web-evidence) | 抽查 3 條含 purpose/ref | TT-RIPE-SPEC-LEAK-001 |
| F-F-003 | Risk | MAJOR | merge\_group types drift 風險 | 未來不觸發 | Web drift\_action=NEEDS-TEST \+ 重測入口 | [Q](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999bacf-21c4-83a4-9aee-e88cea068929#q-web-evidence) \+ TT | TT 有 retest | TT-RIPE-MG-TYPES-DRIFT-001 |
| F-G-001 | GlobalPatch | BLOCKER | TT Register=0 不可接受 | closure 斷鏈 | 新增 TT Register（不得為 0） | [P](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999bacf-21c4-83a4-9aee-e88cea068929#p-tt-register) | TT\>=1 | （已落地） |
| F-G-002 | GlobalPatch | MAJOR | 需 Doc Hygiene Gate | 污染再發 | hygiene script \+ workflow gate | [M](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999bacf-21c4-83a4-9aee-e88cea068929#m-artifacts-pack) | `bash scripts/omoc_doc_hygiene_check.sh` | TT-RIPE-DOC-HYGIENE-001 |
| F-G-003 | GlobalPatch | MAJOR | 需 MQ run matching doc | MQ 仍高風險 | 新增 `docs/MQ_RUN_MATCHING.md` | [M](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999bacf-21c4-83a4-9aee-e88cea068929#m-artifacts-pack) | file exists \+ ≤15行+1表 | TT-RIPE-MQ-RUN-MATCH-001 |


---


| RIPE-REQ | SSOT locator | RIP-E locus |
| ----- | ----- | ----- |
| RIPE-REQ-001 | WP-010 contract spec | [I.2](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999bacf-21c4-83a4-9aee-e88cea068929#i-contracts) \+ artifacts: contract/manifest scripts |
| RIPE-REQ-002 | WP-011 \+ RBWI G2 | workflow `ci-gate` always-report |
| RIPE-REQ-003 | WP-012 | workflow `on: merge_group` \+ readiness |
| RIPE-REQ-004 | 總體RIP修補方案 DoD | readiness JSON \+ DoD block |
| RIPE-REQ-005 | 總體RIP修補方案 RIP-F 原則 | upstream jobs \+ aggregator 收斂 |


---


| Legacy section（v1.0.0） | New section（v1.1.0） | note |
| ----- | ----- | ----- |
| Cover/Doc Control/Anchor Registry | A/B/E | 結構保留、版本升級 |
| Authority/Scope/Route-Out | F/G | 明確 WSP 缺口與 TT |
| RIPE-REQ-001..005 | H | 命名/驗收/禁則加嚴 |
| Workflows/Scripts/Docs/Policy | M | FILE-BLOCK 重產（可抽取） |
| Runbook/WI | N/O | 補 run matching 與 JSON 契約 |
| Gates/DoD | J | 清除污染、加機械驗證 |
| TT / Web Evidence / Machine Summary | P/Q/S | TT 不得為 0；Web 欄位化 |


---


| tt\_id | status | severity | closure\_criteria | owner\_role | retest\_steps |
| ----- | ----- | ----- | ----- | ----- | ----- |
| TT-WSP-SCOPE-001 | OPEN | BLOCKER | SSOT 中新增可定位 **WSP v0 Scope Contract** 條文，且本 RIP-E 引用 locator | Platform governance | `rg 'WSP'` 命中且可定位；更新本文件 G 章引用 |
| TT-RIPE-NAME-DRIFT-001 | OPEN | BLOCKER | 全文件/工件僅保留 `omoc / ci-gate`；`omoc/ci-gate` 命中=0；並有一次 PR+merge\_group check-run 證據 | Doc maintainer | `rg` 掃描 \+ evidence 入包 |
| TT-RIPE-RUNTIME-001 | OPEN | BLOCKER | 目標 repo 實測：PR 與 merge\_group 均產生 `omoc / ci-gate` 結論；checks\_manifest diff=0；入 evidence bundle | Repo operator | 依 Runbook N.1/N.2 跑完 |
| TT-RIPE-MQ-RUN-MATCH-001 | OPEN | MAJOR | 完成一次 MQ enqueue 的 run matching（PR vs merge\_group 兩份 check-runs.json \+ 表） | MQ operator | 依 `docs/MQ_RUN_MATCHING.md` |
| TT-RIPE-DOC-HYGIENE-001 | OPEN | MAJOR | hygiene script 被 workflow 呼叫且掃描=0；插入禁字串會 fail | Docs-as-Code | 故意插入 `:contentReference[` 驗證 fail |
| TT-RIPE-CONCURRENCY-001 | OPEN | MAJOR | readiness 能偵測 cancel-in-progress 風險；或落地 required job 豁免策略（SSOT 支持） | CI architect | 增加樣本 → readiness fail |
| TT-RIPE-READINESS-IO-001 | OPEN | MAJOR | readiness 輸出 JSON schema 固定化；WP-013 Entry Gate 可直接 consume | CI architect | `jq -e` 驗 schema |
| TT-RIPE-TIMEOUT-UNKNOWN-001 | OPEN | MINOR | timeout 未知 → readiness 直接阻擋 MQ；待 snapshot 後解除 | Governance owner | 模擬 `known=false` → ready=false |
| TT-RIPE-WEB-FIELDS-001 | OPEN | MAJOR | Web Evidence 全條目欄位齊（published/accessed/drift\_action/web\_refs\>=2） | Drift manager | 抽查 3 條 |


---


| web\_id | purpose | claim\_supported | published\_at | accessed\_at | drift\_action | web\_refs\>=2 | rip\_e\_section\_ref | tt\_if\_needed |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| WEB-E1 | pitfall | paths-ignore 造成 required check 永久等待 | (N/A) | 2026-02-21T00:00:00+08:00 | KEEP | 2 | J/I | — |
| WEB-E2 | pitfall | merge queue 可能參考錯 run（需 run matching） | (N/A) | 同上 | NEEDS-TEST | 2 | N/MQ\_RUN\_MATCHING | TT-RIPE-MQ-RUN-MATCH-001 |
| WEB-E3 | drift | merge\_group activity types 可能漂移 | (N/A) | 同上 | NEEDS-TEST | 2 | I/J | TT-RIPE-MG-TYPES-DRIFT-001 |
| WEB-F1 | tooling | OpenSSF Scorecard / zizmor / pinact 作 upstream jobs | (varies) | 同上 | KEEP | 2 | M/workflow | TT-RIPE-SC-TOOLS-001 |

