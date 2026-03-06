# HOW (extracted)


| field | value |
| ----- | ----- |
| External Name | OMOC RIP-F: Platform Governance \+ Supply-chain Hardening |
| Internal Short Name | OMOC-RIPF |
| Canonical Version | v1.1.0 |
| Supersedes | v1.0.0 OMOC\_RIP-F\_v1.0.0 |
| generated\_at | 2026-02-21T00:00:00+08:00 |
| timezone | Asia/Taipei (UTC+08:00) |
| overall\_verdict | **TEMP\_CLOSED**（文件層：可回放閉環已落地；平台/Repo 實際狀態需依 Runbook 實跑產 evidence 才能轉 PASS） |
| CR\_OPEN | 0（所有缺口/漂移/外部不確定性皆以 TT 收斂；不得嘴巴留洞） |
| aligned\_wps | WP-009/010/011/012/013/014（Phase-G 治理/合約/回報/MQ/closure） OMOC\_WP-010+RB+WI\_v4.0.1-r2 OMOC\_WP-011+RB+WI\_v4.0.1-r2 OMOC\_WP-012+RB+WI\_v4.0.1-r2 OMOC\_WP-014+RB+WI\_v4.0.1-r2 |
| Authority Stack | Blueprint / RB+WI / Skills Compendium / WP-MASTER / WP001\~014 / Total RIP Fix Plan OMOC\_施工RB+WI\_合冊\_v4.0.1-r1 OMOC\_施工skills\_v4.0.1-r2 OMOC\_WP-001+RB+WI\_v4.0.1-r2 Spartoi-OMOC\_SubP1-LITE+MVP\_RIP… |


---


| topic | route\_to | locator\_hint |
| ----- | ----- | ----- |
| rulesets snapshot & policy draft | WP-009 | WP-009 scope/tool matrix |
| required checks contract lock / checks\_manifest | WP-010 | WP-010 contract spec OMOC\_WP-010+RB+WI\_v4.0.1-r2 |
| always-report wrappers & status hygiene | WP-011 | WP-011 spec OMOC\_WP-011+RB+WI\_v4.0.1-r2 |
| merge\_group trigger alignment / MQ probe | WP-012 | WP-012 gates & probes OMOC\_WP-012+RB+WI\_v4.0.1-r2 |
| merge queue enablement & verification | WP-013 | WP-013 runbook |
| drift guard & closure management | WP-014 | WP-014 decision table OMOC\_WP-014+RB+WI\_v4.0.1-r2 |


---


| trigger (if you see…) | MUST route\_to | why |
| ----- | ----- | ----- |
| 需要修改 rulesets / required workflows / bypass actors | WP-009/013 | RIP-F 不負責改平台狀態，只負責可回放證據與 guard |
| “Expected — Waiting…” 或 merge\_group 回報不一致 | WP-011/012 | 這是回報性治理問題，不是文件好看問題 OMOC\_WP-011+RB+WI\_v4.0.1-r2 OMOC\_WP-012+RB+WI\_v4.0.1-r2 |
| drift 要放行 | WP-014 | closure 是可稽核合約流程，不是 env 開關 OMOC\_WP-014+RB+WI\_v4.0.1-r2 |
| check 名稱/contexts 對不上 | WP-010 | 以 checks\_manifest 合約鎖裁決 OMOC\_WP-010+RB+WI\_v4.0.1-r2 |


---


| tt\_id | severity | status | title | closure\_criteria | retest\_steps | owner\_role |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| TT-RIPF-001 | BLOCKER | CLOSED | rule\_suites endpoint 修正 \+ 403/404不中止 | snapshot 產出 rule\_suites.json（raw+normalized）且 meta.api\_calls 一致 | 跑 Q-1；檢視 evidence 產物 | Supply-chain/CI Hardening |
| TT-RIPF-002 | BLOCKER | CLOSED | contract guard subshell bug 修補 | required workflow 含 paths-ignore → guard 必 exit 1 | 建 DT-F-003 反例、跑 guard | CI Gatekeeper |
| TT-RIPF-003 | BLOCKER | CLOSED | WSP v0 scope contract 補齊 | 本文件 §G.5 可定位，含 IN/OUT/route-out | 搜尋 WSP v0 章節 | Scope Marshal |
| TT-RIPF-007 | MINOR | CLOSED | artifacts\_manifest.yaml | O.0 檔案存在且可一眼核對 | 搜尋檔名 | Repo Packager |
| TT-RIPF-008 | MINOR | CLOSED | route-out trigger conditions table | §G.4 表格存在 | 搜尋表格 | Scope Marshal |
| TT-RIPF-010 | MAJOR | TEMP\_CLOSED | secret-leak gate placeholder 禁入 required | required\_checks\_contract.json 不含 required；並標 OPTIONAL/TEMP\_CLOSED | 檢視 contract \+ workflow | Supply-chain Owner |
| TT-RIPF-011 | MAJOR | CLOSED | allowable drift schema（reason/expiry/evidence\_required） | config/governance\_allowable\_drift.json 欄位齊全且可定位 | jq 驗證 | Drift Closure Owner |
| TT-RIPF-012 | MAJOR | CLOSED | closure\_allow 不得接受裸 env | drift\_guard 只接受 closure\_allow artifact，且必綁 diff sha | 跑 Q-4（缺 artifact 必 fail） | Governance Red Team |
| TT-RIPF-014 | MINOR | CLOSED | machine\_summary.json 可 jq 解析 | jq . machine\_summary.json rc=0 | 跑 jq | Docs-as-Code Engineer |


---


| web\_id | claim\_supported | source\_1 | source\_2 | published\_at | accessed\_at | last\_verified\_at | web\_conflict\_flag | drift\_action |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| WEB-TEMPLATE-001 | (fill) | (fill) | (fill) | unknown | 2026-02-21T00:00:00+08:00 | 2026-02-21T00:00:00+08:00 | NONE | NEEDS-TEST |


---


| finding\_id | severity | fix\_location | artifacts | acceptance | tt\_status |
| ----- | ----- | ----- | ----- | ----- | ----- |
| F-E-001 | BLOCKER | §P.1 snapshot script | scripts/omoc\_governance\_snapshot.sh | rule\_suites.json 產出且不中止 | TT-RIPF-001=CLOSED |
| F-E-002 / F-A-003 / F-D-001 | BLOCKER | §P.4 contract guard | scripts/omoc\_required\_checks\_contract\_guard.sh | paths-ignore 反例必 fail | TT-RIPF-002=CLOSED |
| WSP\_SCOPE\_MISSING | BLOCKER | §G.5 | 本文件章節 | scope 可定位+route-out | TT-RIPF-003=CLOSED |
| F-F-001 | MAJOR | §P.3 drift guard | scripts/omoc\_governance\_drift\_guard.sh \+ config/closure\_allow.json | drift=1 且無有效 artifact 必 fail | TT-RIPF-012=CLOSED |
| F-E-003 | MAJOR | §P.6 | config/governance\_allowable\_drift.json | schema 欄位齊全 | TT-RIPF-011=CLOSED |
| F-D-003 | MINOR/MAJOR | §P.8 \+ §N.2 | required\_checks\_contract.json | placeholder 不列 required | TT-RIPF-010=TEMP\_CLOSED |
| F-C-001 | MAJOR | §P.10 \+ §U | config/tt\_external.json | 可掛載外部 TT | TT-RIPF-006=CLOSED |
| F-C-002 | MINOR | §P.0 | O.0 artifacts\_manifest.yaml | 可一眼核對 | TT-RIPF-007=CLOSED |
| F-C-003 | MINOR | §G.4 | route-out triggers table | 可定位表格 | TT-RIPF-008=CLOSED |
| TT-RIPF-014 | MINOR | §X/§W | machine\_summary.json | jq parse rc=0 | CLOSED |

