# HOW (extracted)


| field | value |
| ----- | ----- |
| doc\_id | OMOC\_RIP-B |
| external\_name | OMOC\_RIP-B：MCP Toolchain \+ Security RIP |
| internal\_short\_name | RIPB-MCP-SEC |
| canonical\_version | v1.1.0 |
| release\_date | 2026-02-21 |
| generated\_at | 2026-02-21T00:00:00+08:00 |
| timezone | Asia/Taipei (UTC+08:00) |
| supersedes | v1.0.0 (`/mnt/data/OMOC_RIP-B_v1.0.0.md`) OMOC\_RIP-B\_v1.0.0 |
| aligned\_wps | WP-004, WP-014 (primary); WP-001/008/009/010/011/012/013 (interface route-out) OMOC\_WP-004+RB+WI\_v4.0.1-r2 OMOC\_WP-014+RB+WI\_v4.0.1-r2 OMOC\_WP-001+RB+WI\_v4.0.1-r2 OMOC\_WP-009+RB+WI\_v4.0.1-r2 |
| overall\_verdict | **TEMP\_CLOSED**（文件/工件已閉環；需在你的 repo/runner 內實跑產生 evidence 才能轉 PASS） |
| CR\_OPEN | 0 |


---


| canonical\_anchor | alias\_anchors (legacy) | alias\_of | notes |
| ----- | ----- | ----- | ----- |
| `#omoc-ripb-top` | `#omoc-ripb-a-cover-card` | `#omoc-ripb-top` | 舊版 A cover 合併到 0\) |
| `#omoc-ripb-b-document-control` | `#omoc-ripb-b-document-control` | self |  |
| `#omoc-ripb-c-diataxis` | `#omoc-ripb-c-diataxis` | self |  |
| `#omoc-ripb-d-anchor-registry` | `#omoc-ripb-d-anchor-registry` | self |  |
| `#omoc-ripb-e-authority` | `#omoc-ripb-e-authority` | self |  |
| `#omoc-ripb-f-scope` | `#omoc-ripb-f-scope` | self |  |
| `#omoc-ripb-g-requirements` | `#omoc-ripb-g-requirements` | self |  |
| `#omoc-ripb-h-threat-model` | `#omoc-ripb-h-threat-model` | self |  |
| `#omoc-ripb-i-architecture` | `#omoc-ripb-i-architecture` | self |  |
| `#omoc-ripb-n-gates-dod` | `#omoc-ripb-n-gates-dod` | self |  |
| `#omoc-ripb-o-drift-closure` | `#omoc-ripb-o-drift-closure` | self |  |
| `#omoc-ripb-p-traceability` | `#omoc-ripb-p-traceability` | self |  |
| `#omoc-ripb-findings-closure` | (new) | self | 審查報告閉環矩陣 |
| `#omoc-ripb-q-tt-register` | `#omoc-ripb-q-tt-register` | self |  |
| `#omoc-ripb-k-artifacts` | `#omoc-ripb-k-artifacts` | self | FILE BLOCKS |
| `#omoc-ripb-r-web-evidence` | `#omoc-ripb-r-web-evidence` | self | SUPPORT-only |
| `#omoc-ripb-s-changelog-verdict` | `#omoc-ripb-s-changelog-verdict` | self |  |
| `#omoc-ripb-t-machine-summary` | `#omoc-ripb-t-machine-summary` | self |  |


---


| topic | route\_out\_target | locator | decision |
| ----- | ----- | ----- | ----- |
| Auth isolation（token hygiene / no passthrough） | WP-004 | \`WP004:/mnt/data/OMOC\_WP-004+RB+WI\_v4.0.1-r2.md | lines=28\` OMOC\_WP-004+RB+WI\_v4.0.1-r2 |
| Drift/closure \+ superseded ban | WP-014 | \`WP014:/mnt/data/OMOC\_WP-014+RB+WI\_v4.0.1-r2.md | lines=25,787,801\` OMOC\_WP-014+RB+WI\_v4.0.1-r2 |
| Evidence packager/validator \+ Secrets Zero | 施工skills \+ WP-008 | \`CSK:/mnt/data/OMOC\_施工skills\_v4.0.1-r2.md | lines=82\` OMOC\_總體RIP修補方案 |
| Required checks contract lock | WP-010 | WP-010 本檔 anchors（route-out） OMOC\_WP-010+RB+WI\_v4.0.1-r2 | RIP-B 只提供可被鎖定的 check name |
| Rulesets snapshot/diff | WP-009 | WP-009 本檔 anchors（route-out） OMOC\_WP-008+RB+WI\_v4.0.1-r2 | RIP-B 僅提供「子集腳本+證據契約」 |
| Merge Queue / merge\_group trigger | WP-012/013 | WP-012/013 anchors（route-out） OMOC\_WP-013+RB+WI\_v4.0.1-r2 OMOC\_WP-012+RB+WI\_v4.0.1-r2 | RIP-B 不啟用 MQ，只確保 required checks 命名可鎖 |


---


| threat | primary\_control | gate\_id | destructive\_test |
| ----- | ----- | ----- | ----- |
| shadow endpoint bypass | endpoints discover \+ hash lock | GATE-RIPB-ENDPOINTS-HASH | DT-01 OMOC\_RIP-B\_v1.0.0\_審查報告 |
| pinning missing | pinning\_comp OMOC\_RIP-B\_v1.0.0\_審查報告 interaction | GATE-RIPB-PINNING-COMPLETE | DT-02 OMOC\_RIP-B\_v1.0.0\_審查報告 |
| audit bypass | audit\_ready pre OMOC\_RIP-B\_v1.0.0\_審查報告 sitive tools | GATE-RIPB-AUDIT-READY | DT-03 OMOC\_RIP-B\_v1.0.0\_審查報告 |
| schema poisoning | capability OMOC\_RIP-B\_v1.0.0\_審查報告 \-CAPABILITY-DRIFT | DT-04 OMOC\_RIP-B\_v1.0.0\_審查報告 |  |
| tooling drift | versions.lock OMOC\_RIP-B\_v1.0.0\_審查報告 IPB-TOOL-PIN | DT-05 OMOC\_RIP-B\_v1.0.0\_審查報告 |  |


---


| input | producer | consumer | must | fail\_action |
| ----- | ----- | ----- | ----- | ----- |
| token source (env) | runner/CI | RIP-B scripts | token 不落地、不透傳、不輸出 | FAIL\_CLOSED |
| redaction policy | WP-004 policy intent | audit redactor | 只輸出 hash/metadata | FAIL\_CLOSED |
| proof artifacts | WP-004 runbook | RIP-B evidence | proof 以 evidence 路徑落盤（不含 token） | TEMP\_CLOSED→TT（無法實測） |


---


| output | path | schema | must | fail\_action |
| ----- | ----- | ----- | ----- | ----- |
| closure\_matrix | `evidence/_drift_guard/<TS>/closure_matrix.ripb.json` | `schemas/closure_matrix.ripb.schema.json` | machine-parseable | FAIL\_CLOSED（schema invalid） |
| tt\_export | `evidence/_drift_guard/<TS>/tt_export.ripb.json` | `schemas/tt_export.schema.json` | CR\_OPEN=0 | FAIL\_CLOSED（OPEN without TT fields） |
| superseded scan | `.../superseded_scan.txt` | text (scan=0) | scan=0 | FAIL\_CLOSED |


---


| case\_id | scenario | break\_point | expected\_verdict | guardrail implemented |
| ----- | ----- | ----- | ----- | ----- |
| DT-01 | Shadow endpoint 注入 | endpoints 未納入 coverage | FAIL\_CLOSED | endpoints discover \+ hash lock \+ enforcement OMOC\_RIP-B\_v1.0.0\_審查報告 |
| DT-02 | pinning 欄位缺失仍連線 | pinn OMOC\_RIP-B\_v1.0.0\_審查報告 ecuted | FAIL\_CLOSED | pinning\_complete\_check exit=2 before interaction OMOC\_RIP-B\_v1.0.0\_審查報告 |
| DT-03 | 敏感 tool-call 無 audit | OMOC\_RIP-B\_v1.0.0\_審查報告 CLOSED | audit\_ready gate \+ “no audit ⇒ block sensitive tools” exit=3 OMOC\_RIP-B\_v1.0.0\_審查報告 |  |
| DT-04 | capability drift | dri OMOC\_RIP-B\_v1.0.0\_審查報告 P\_CLOSED→TT（若仍允許敏感工具則 FAIL\_CLOSED） | capability diff gate \+ sensitive coupling OMOC\_RIP-B\_v1.0.0\_審查報告 |  |
| DT-05 | 工具供應鏈漂移（latest） | muta OMOC\_RIP-B\_v1.0.0\_審查報告 TEMP\_CLOSED→FAIL\_CLOSED（直到固定） | versions.lock \+ sha verify \+ pinned installer OMOC\_RIP-B\_v1.0.0\_審查報告 |  |


---


| SSOT | ssot\_locator | RIP-B req\_id | artifact | evidence\_locator | closure\_rule |
| ----- | ----- | ----- | ----- | ----- | ----- |
| RIP-B DoD | FIXPLAN lines=130-150 OMOC\_總體RIP修補方案 | RIPB-REQ-001 | `scripts/mcp_allo:contentReference[oaicite:109]{index=109}evidence/_drift_guard/<TS>/allowlist_decisions.jsonl` | decisions contain no ALLOW for unknown |  |
| RIP-B DoD | FIXPLAN lines=130-150 OMOC\_總體RIP修補方案 | RIPB-REQ-002 | `scripts/mcp_pinn:contentReference[oaicite:111]{index=111}` \+ `allowlist.lock.json` | `.../pinning_check.json` | pinning\_missing \=\> rc=2 before interaction |
| WP-004 | WP004 line=28 OMOC\_WP-004+RB+WI\_v4.0.1-r2 | RIPB-REQ-003 | `config/mcp_polic:contentReference[oaicite:113]{index=113}../token_probe.json` | token-like hit \=\> FAIL\_CLOSED |  |
| RIP-B DoD | FIXPLAN lines=130-150 OMOC\_總體RIP修補方案 | RIPB-REQ-004 | \`config/mcp\_sensi OMOC\_總體RIP修補方案 dit guard | `.../audit_ready.json` | not\_ready \=\> sensitive blocked, rc=3 |
| WP-014 | WP014 lines=25/787/801 OMOC\_WP-014+RB+WI\_v4.0.1-r2 | RIPB-REQ-008 | `scripts/superse:contentReference[oaicite:117]{index=117}perseded_scan.txt` | scan=0 else FAIL\_CLOSED |  |
| RIP-F subset | FIXPLAN supply-chain section OMOC\_總體RIP修補方案 | RIPB-REQ-011 | `.github/workflo:contentReference[oaicite:119]{index=119}l` | `.../supplychain_report.json` | required checks lockable (WP-010) |


---


| tt\_id | status | severity | close\_conditions | retest\_steps | owner\_role |
| ----- | ----- | ----- | ----- | ----- | ----- |
| TT-RIPB-AUDIT-ENFORCE-001 | OPEN | BLOCKER | audit\_ready=false 時 sensitive tools 必 BLOCK（rc=3），且證據落盤 | run DT-03; verify audit\_ready.json \+ decisions | MCP Toolchain & Security 架構師 |
| TT-RIPB-PINNING-ENFORCE-001 | OPEN | BLOCKER | commit\_sha/pinned\_digest 任一缺失 → L1/L2 不得 server 互動（rc=2） | run DT-02; verify pinning\_check.json | DevSecOps 稽核官 |
| TT-RIPB-ENDPOINTS-DISCOVER-001 | OPEN | BLOCKER | endpoints 可重跑生成且 hash 鎖定；L1 覆蓋所有 targets | run DT-01; verify endpoints.hash \+ decisions | Docs-as-Code 工程師 |
| TT-RIPB-CAP-DRIFT-001 | OPEN | MAJOR | capability\_diff 可偵測漂移；漂移時 sensitive tools 不得 ALLOW | run DT-04; verify report \+ rc | Confused-Deputy Red Team |
| TT-RIPB-TOOL-PIN-001 | OPEN | MAJOR | yq/jq 等版本+sha256 可重跑一致；workflow 無 latest | run DT-05; verify install logs | Supply-chain 稽核官 |
| TT-RIPB-SUPERSEDED-GATE-001 | OPEN | MAJOR | superseded\_scan=0，違反即 FAIL\_CLOSED | run superseded\_scan.sh | WP-014 對齊稽核官 |
| TT-RIPB-SLOWMIST-MAP-001 | OPEN | MAJOR | SlowMist checklist 條目逐條映射到 gate/script/evidence/rollback 且 validator 可檢查 | run map validator | MCP Security 稽核官 |
| TT-RIPB-WEB-QUARANTINE-001 | OPEN | MINOR | Web appendix 含 injection\_risk/quarantine\_reason/last\_verified\_at | validate web appendix schema | Docs-as-Code 工程師 |
| TT-RIPB-WSP-SCOPE-REF-001 | OPEN | MAJOR | SubP1（WSP v0 scope）文件納入 Files-first，並在 §6.4 引用 locator | add file; re-run locator scan | Scope Marshal |
| TT-RIPB-SECRETS-ROUTEOUT-001 | OPEN | MAJOR | validator 成為唯一門檻；grep 非主判定 | run ripb\_validate.sh | Evidence Chain 稽核官 |
| TT-RIPB-SCHEDULE-OPTIN-001 | OPEN | MINOR | schedule 預設關閉；enablement 有 evidence/rollback | verify workflow triggers | Platform Governance 稽核官 |
| TT-RIPB-RIPF-SUPPLYCHAIN-001 | OPEN | MAJOR | pinact/zizmor/scorecard 回報名稱可鎖且可重跑 | run workflow on PR+merge\_group | RIP-F 稽核官 |
| TT-RIPB-RIPF-RULESETS-001 | OPEN | MAJOR | rulesets snapshot/diff 可重跑；無權限時 TEMP\_CLOSED+TT | run snapshot script | Platform Governance 稽核官 |

