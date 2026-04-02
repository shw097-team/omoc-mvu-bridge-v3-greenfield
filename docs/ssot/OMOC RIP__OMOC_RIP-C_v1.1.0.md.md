# HOW (extracted)


| field | value |
| ----- | ----- |
| doc\_id | OMOC\_RIP-C |
| version | v1.1.0 |
| generated\_at | 2026-02-21T00:00:00+08:00 |
| timezone | Asia/Taipei |
| supersedes | OMOC\_RIP-C v1.0.0 OMOC\_RIP-C\_v1.0.0 |
| aligned\_wps | WP-007（primary）；WP-001\~006/008（style+interfaces）；WP-009\~014（route-out only） |
| overall\_verdict | TEMP\_CLOSED |
| CR\_OPEN | 0 |


---


| legacy\_anchor (v1.0.0) | new\_anchor (v1.1.0) | note |
| ----- | ----- | ----- |
| OMOC-RIP-C-A-COVER | OMOC-RIP-C-A-COVER | stable |
| OMOC-RIP-C-B-DOC-CONTROL | OMOC-RIP-C-B-DOC-CONTROL | stable |
| OMOC-RIP-C-O-GATES-DOD | OMOC-RIP-C-O-GATES | renamed heading, aliased |
| OMOC-RIP-C-Q-TT-REGISTER | OMOC-RIP-C-R-TT | fixed (typo/label) |


---


| topic | route\_out\_target | why | ssot\_locator |
| ----- | ----- | ----- | ----- |
| required checks contract lock / checks\_manifest schema | WP-010 | RIP-C 只能驗「存在/位置/schema 基礎」，不得代替合約鎖與平台設定 | `/mnt/data/OMOC_WP-010+RB+WI_v4.0.1-r2.md` \[ANCHOR:OMOC-WP010-12-contract-spec\] OMOC\_WP-011+RB+WI\_v4.0.1-r2 |
| always-report / status hygiene | WP-011 | RIP-C 不處理 merge\_group/PR status 回報策略 | `/mnt/data/OMOC_WP-011+RB+WI_v4.0.1-r2.md` §Spec OMOC\_WP-011+RB+WI\_v4.0.1-r2 |
| merge\_group/MQ probe / enablement | WP-012/013 | Phase-G runtime governance | `/mnt/data/OMOC_WP-012+RB+WI_v4.0.1-r2.md` / `/mnt/data/OMOC_WP-013+RB+WI_v4.0.1-r2.md` |
| drift guard / closure cadence | WP-014 | 長期漂移治理 | `/mnt/data/OMOC_WP-014+RB+WI_v4.0.1-r2.md` OMOC\_WP-014+RB+WI\_v4.0.1-r2 |
| env/toolchain readiness (ENV-READY) | WP-002 | RIP-C 只提供 optional hook \+ preflight artifact | `/mnt/data/OMOC_WP-002+RB+WI_v4.0.1-r2.md` gate=GATE-ENV-READY OMOC\_WP-002+RB+WI\_v4.0.1-r2 |


---


| doc\_id | path | role | version | locator\_hints |
| ----- | ----- | ----- | ----- | ----- |
| N1 | /mnt/data/OMOC\_藍圖\_v4.0.1-r1.md | NORMATIVE | v4.0.1-r1 | \[ANCHOR:OMOC-BP-0000\] OMOC\_WP-001+RB+WI\_v4.0.1-r2 |
| N2 | /mnt/data/OMOC\_施工RB+WI\_合冊\_v4.0.1-r1.md | NORMATIVE | v4.0.1-r1+rbwi.1.0 | \[ANCHOR:OMOC-RBWI-GUARDRAILS\] OMOC\_施工RB+WI\_合冊\_v4.0.1-r1 |
| N3 | /mnt/data/OMOC\_施工skills\_合冊\_v4.0.1-r2.md | NORMATIVE | v4.0.1-r2 | id=OMOC-CSK-0000（DoD/packager/validator） OMOC\_施工skills\_v4.0.1-r2 |
| N4 | /mnt/data/OMOC\_實作+WP總表\_v4.0.1-r2.md | NORMATIVE | v4.0.1-r2 | support\_policy / version-lock OMOC\_實作+WP總表\_v4.0.1-r2 |
| N5 | /mnt/data/OMOC\_WP-007+RB+WI\_v4.0.1-r2.md | NORMATIVE | v4.0.1-r2 | L5 runbook / TT style OMOC\_WP-007+RB+WI\_v4.0.1-r2 |
| R1 | /mnt/data/OMOC\_RIP-C\_v1.0.0\_審查報告.md | REVIEW/FIX | n/a | (4) FINDINGS A\~G / TT stubs |
| T1 | /mnt/data/OMOC\_RIP-C\_v1.0.0.md | TARGET | v1.0.0 | O. Gates/DoD; scripts blocks |
| S\* | /mnt/data/OMOC\_RIP\_外部資料\*.md | SUPPORT | v1.0.0 | SUPPORT-only; double-sourcing; quarantine OMOC\_RIP\_外部資料 |


---


| SSOT locator | RIPC-REQ | Artifact(s) | Evidence locator | Closure rule |
| ----- | ----- | ----- | ----- | ----- |
| RIP-C DoD（validator PASS \+ required files） OMOC\_RIP-C\_v1.0.0 | RIPC-REQ-002 | `scripts/omoc_validate_contracts.sh` | `evidence/skills_pack_validation/<TS>/report.json` | report.overall\_verdict==PASS |
| required\_files contract v2（版本/hash/枚舉） | RIPC-REQ-003 | `config/required_files.json` | `evidence/.../contract_snapshot.json` | snapshot.contract\_sha256 \== computed |
| src dir required | RIPC-REQ-004 | `docs/skills_pack_src/*` | `evidence/.../required_files_diff.json` | missing ⇒ FAIL\_CLOSED |
| preflight artifact | RIPC-REQ-005 | `scripts/omoc_preflight.sh` | `evidence/preflight/<TS>/preflight.json` | exists & report references |
| runtime probe | RIPC-REQ-006 | `scripts/probe_opencode_runtime.sh` | `evidence/runtime_probe/<TS>/runtime_probe.json` | exists; drift\_action set |
| policy write\_targets | RIPC-REQ-007 | `.opencode/policy/...` | `evidence/.../report.json.results` | violation ⇒ FAIL\_CLOSED |
| CI no silent-fail | RIPC-REQ-008 | `.github/workflows/...` | Actions artifact \+ summary | rc rules satisfied |
| web metadata hygiene | RIPC-REQ-009 | Web appendix rows | `web_evidence_log` | missing published\_at ⇒ QUARANTINE |


---


| finding\_id | severity | claim | proof\_locator | fix\_skeleton | acceptance(\<=3) | retest\_steps | owner\_role | closure\_status | landed\_in |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| F-A-001 | BLOCKER | docs/skills\_pack\_src 未納入 required\_files | R1\#F-A-001 OMOC\_RIP-C\_v1.0.0\_審查報告 | required\_files v2 \+ src README | src missing ⇒ FAIL\_CLOSED | rm \-rf docs/skills\_pack\_src; run validate | Skills Runtime/Packaging | PASS (doc+artifacts) | §K2.1/§K2.2 |
| F-A-002 | MAJOR | 缺 preflight artifact | R1\#F-A-002 OMOC\_RIP-C\_v1.0.0\_審查報告 | omoc\_preflight.sh \+ preflight.json | preflight.json exists; referenced | uninstall jq; run preflight | DevSecOps | PASS | §K2.3/§D |
| F-A-003 | MAJOR | manifest/lock placeholder 裁決易誤解 | R1\#F-A-003 OMOC\_RIP-C\_v1.0.0\_審查報告 | report.json 增 manifest\_contract.verdict（schema） | report 明示 manifest verdict | rm manifest/lock; validate ⇒ TEMP/FAIL per rules | Repo Packaging | PASS (spec) / TEMP\_CLOSED (runtime) | §L2/§R |
| F-B-001 | BLOCKER | .ohmy required 未枚舉 | R1\#F-B-001 OMOC\_RIP-C\_v1.0.0\_審查報告 | required\_files 枚舉 ≥8 | delete one .ohmy file ⇒ FAIL\_CLOSED | rm .ohmy/opencode.json; validate | SSOT Editor | PASS (contract) | §K2.1 |
| F-B-002 | MAJOR | compat\_optional 可能變寫入目標 | R1\#F-B-002 OMOC\_RIP-C\_v1.0.0\_審查報告 | policy write\_targets.allowlist | non-allowlist write ⇒ FAIL\_CLOSED | attempt write .claude; validate | DevSecOps | PASS (policy) | §K2.5 |
| F-B-003 | MINOR | workflow 語義易誤吞 WP-010/011 | R1\#F-B-003 OMOC\_RIP-C\_v1.0.0\_審查報告 | workflow header 註解 | grep “NOT WP-010/011” 命中 | grep in workflow | Docs-as-Code | PASS | §K2.6 |
| F-C-001 | BLOCKER | CI \` |  | true\` silent-fail | R1\#F-C-001 OMOC\_RIP-C\_v1.0.0\_審查報告 | rc-aware steps | rc=2 fail; rc=42 report+artifact | inject failure; run workflow | CI Gate |
| F-C-002 | MAJOR | Traceability 缺 required\_files 合約欄位 | R1\#F-C-002 OMOC\_RIP-C\_v1.0.0\_審查報告 | trace table add version/hash/locator | trace has columns | edit required list ⇒ hash changes recorded | Evidence/Trace | PASS | §P |
| F-C-003 | MINOR | CR\_OPEN=0 易誤讀 | R1\#F-C-003 OMOC\_RIP-C\_v1.0.0\_審查報告 | clarify CR\_OPEN definition | 文首定義清楚 | search “CR\_OPEN 定義” | Governance | PASS | §B |
| F-D-001 | MAJOR | runtime facts 缺 probe+evidence | R1\#F-D-001 OMOC\_RIP-C\_v1.0.0\_審查報告 | probe\_opencode\_runtime.sh | runtime\_probe.json exists | run probe on 2 env | Skills Runtime | PASS (artifact) / TEMP\_CLOSED (verification) | §K2.4/§R |
| F-D-002 | MINOR | secrets scan 性能/噪音風險 | R1\#F-D-002 OMOC\_RIP-C\_v1.0.0\_審查報告 | route-out \+ TT | scan tuning 有 SSOT locator 才能改 | benchmark scan | Security | TEMP\_CLOSED (TT) | §R (TT-SECRETS-SCAN-TUNING-001) |
| F-D-003 | MINOR | 缺 schema registry（可選） | R1\#F-D-003 OMOC\_RIP-C\_v1.0.0\_審查報告 | TT optional | registry exists (optional) | lint | Docs-as-Code | TEMP\_CLOSED (TT) | §R |
| F-E-001 | BLOCKER | DoD 缺實跑可回放證據 | R1\#F-E-001 OMOC\_RIP-C\_v1.0.0\_審查報告 | Evidence locator contract \+ TT | real repo run produces report | run quickpath in repo | DevOps/CI | TEMP\_CLOSED (TT) | §L1/§R |
| F-E-002 | BLOCKER | required files 未明確枚舉 | R1\#F-E-002 OMOC\_RIP-C\_v1.0.0\_審查報告 | required\_files v2 \+ .ohmy list | delete one required ⇒ FAIL | delete one; validate | SSOT Editor | PASS (contract) | §K2.1 |
| F-E-003 | MAJOR | 缺 ENV-READY hook | R1\#F-E-003 OMOC\_RIP-C\_v1.0.0\_審查報告 | optional hook \+ preflight artifact \+ route-out | preflight recorded | run on fresh env | WP-002 aligner | PASS (interface) / TEMP\_CLOSED (runtime) | §D/§G3/§R |
| F-F-001 | MAJOR | CI 綠但實際 FAIL | R1\#F-F-001 OMOC\_RIP-C\_v1.0.0\_審查報告 | same as F-C-001 | same | same | CI Gate | PASS | §K2.6 |
| F-F-002 | MAJOR | scan scope 缺 SSOT allowlist | R1\#F-F-002 OMOC\_RIP-C\_v1.0.0\_審查報告 | TT（需 SSOT 才能縮掃描） | scan scope has SSOT locator | benchmark | Security/Evidence | TEMP\_CLOSED (TT) | §R (TT-SCAN-SCOPE-001) |
| F-F-003 | MAJOR | Web Evidence 缺 published\_at → 應 QUARANTINE | R1\#F-F-003 OMOC\_RIP-C\_v1.0.0\_審查報告 | web table欄位 \+ drift\_action | missing published\_at ⇒ NEEDS-TEST | web refresh | Governance | PASS (policy) / TEMP\_CLOSED (items) | §S/§R |
| F-G-001 | BLOCKER | required\_files 合約必 v2 | R1\#F-G-001 OMOC\_RIP-C\_v1.0.0\_審查報告 | implemented v2 | contract fields present | change list ⇒ hash updates | Repo Packaging | PASS (contract) / TEMP\_CLOSED (hash runtime) | §K2.1/§R |
| F-G-002 | MAJOR | WSP scope 缺 SSOT locator | R1\#F-G-002 OMOC\_RIP-C\_v1.0.0\_審查報告 | route-out \+ TT | WSP scope becomes locatable | search WSP keywords | Blueprint editor | TEMP\_CLOSED (TT) | §R (TT-WSP-SCOPE-001) |
| F-G-003 | MAJOR | WP-010/011 只能接口不吞併 | R1\#F-G-003 OMOC\_RIP-C\_v1.0.0\_審查報告 | validator interface rule | checks\_manifest only schema/loc | add dummy checks\_manifest | WP align auditor | PASS (interface) | §J/RIPC-REQ-010 |


---


| tt\_id | source | problem\_statement | fix\_target | acceptance(\<=3) | owner\_role | close\_conditions | retest | status | evidence\_locator |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| TT-DOD-VALIDATE-001 | F-E-001 | 缺真實 repo 實跑 PASS 證據 | produce report.json/report.md | validator exit=0 \+ report PASS | DevOps/CI | evidence exists in repo | run Quickpath | OPEN | `evidence/skills_pack_validation/<TS>/` OMOC\_RIP-C\_v1.0.0\_審查報告 |
| TT-REQFILES-CONTRACT-V2-001 | F-G-001 | contract\_sha256 需由工具生成/驗證 | installer/validator compute hash | hash recorded & validated | Repo Packaging | computed==recorded | change list; rerun | OPEN | `evidence/.../contract_snapshot.json` OMOC\_RIP-C\_v1.0.0\_審查報告 |
| TT-WSP-SCOPE-001 | F-G-002 | WSP scope 未在 SSOT 可定位 | add SSOT anchor | anchor exists | Blueprint 主編 | SSOT contains WSP scope | search WSP keywords | OPEN | `docs/blueprint/...` (route-out) |
| TT-RUNTIME-PROBE-001 | F-D-001 | runtime precedence 需 2 env 實測 | run probe twice | runtime\_probe has last\_verified\_at | Skills Runtime | 2 env evidence | run on 2 env | OPEN | `evidence/runtime_probe/<TS>/runtime_probe.json` OMOC\_RIP-C\_v1.0.0\_審查報告 |
| TT-ENV-READY-HOOK-001 | F-E-003 | fresh env 安裝成功條件需對齊 ENV-READY | route-out WP-002 \+ preflight | preflight recorded | WP-002 對齊官 | run WP-002 gate then RIP-C | run on fresh env | OPEN | `evidence/preflight/<TS>/preflight.json` |
| TT-SCAN-SCOPE-001 | F-F-002 | secrets scan scope tuning 缺 SSOT | add SSOT allowlist/ignore | SSOT locator exists | Security/Evidence | locator exists \+ performance ok | benchmark scan | OPEN | `evidence/.../secrets_hits.txt` OMOC\_RIP-C\_v1.0.0\_審查報告 |
| TT-SECRETS-SCAN-TUNING-001 | F-D-002 | rg 全 repo 風險/誤報 | route-out skills security | allowlist defined | 安全硬化官 | SSOT defined | large repo scan | OPEN | `evidence/.../secrets_hits.txt` OMOC\_RIP-C\_v1.0.0\_審查報告 |
| TT-WEB-METADATA-001 | F-F-003 | web evidence 缺 published\_at | enforce published\_at\_required | all items have published\_at or NEEDS-TEST | 治理稽核官 | table completed | web refresh | OPEN | `web_evidence_appendix` OMOC\_RIP-C\_v1.0.0\_審查報告 |
| TT-SCHEMA-REGISTRY-001 | F-D-003 | schema registry（可選） | docs/schema\_registry.md | registry exists | Docs-as-Code | file exists | lint | OPEN | `docs/schema_registry.md` OMOC\_RIP-C\_v1.0.0\_審查報告 |


---


| web\_id | topic | web\_refs(\>=2) | published\_at | accessed\_at | last\_verified\_at | published\_at\_required | drift\_action | status | note |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| WEB-RIPC-001 | OpenCode skills loading semantics | (SUPPORT-only) see OMOC\_RIP\_外部資料 | MISSING | 2026-02-21+08:00 | 2026-02-21+08:00 | Y | NEEDS-TEST | QUARANTINE | published\_at 缺 → 不採信為確定事實 |
| WEB-RIPC-002 | GitHub Actions best practices (pinning/permissions) | (SUPPORT-only) see OMOC\_RIP\_外部資料 | MISSING | 2026-02-21+08:00 | 2026-02-21+08:00 | Y | NEEDS-TEST | QUARANTINE | Phase-G，僅提示 route-out OMOC\_RIP\_外部資料 |

