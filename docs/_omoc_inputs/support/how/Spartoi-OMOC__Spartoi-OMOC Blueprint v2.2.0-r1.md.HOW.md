# HOW (extracted)


| doc\_key | 檔案/外部名稱 | 版本 | 角色 | 可取得 | 處置 |
| ----- | ----- | ----- | ----- | ----- | ----- |
| AUDIT-A | 審查報告A | v2.2.0審查 | 稽核輸入 | OK | 全量抽取 → Backlog |
| AUDIT-B | 審查報告B | v2.2.0審查 | 稽核輸入 | OK | 全量抽取 → Backlog |
| TARGET | Blueprint+RUNBOOK+WI v2.1 | v2.1 | 被取代主體 | OK | 由 Supersedence Clause 取代 |
| PLAN | 產出計畫 | v? | 最高規格 | OK | 決定交付物/結構/契約 |
| SRC-DEV | 開發實作方案 | v? | 主幹來源 | OK | 覆蓋映射 ≥10 條 |
| SRC-SA | 啟用子代理-方案v2 | v2 | Execution 補強 | OK | 覆蓋映射 ≥10 條 |
| SRC-OC | OpenClaw 升級方案v2 | v2 | Peripheral 補強 | OK | 覆蓋映射 ≥10 條 |
| SSOT-RUN (pointer) | SubP1-LITE+MVP 開發 RUNBOOK & WI\_v1.4.0 | v1.4.0 | SSOT pointer | **UNAVAILABLE** | 轉 TEST\_TRACK：TT-SSOT-001（待補正文） |


---


| Check ID | Reports | v2.2 Anchor(s) | closure\_status |
| ----- | ----- | ----- | ----- |
| BP21-DEST-001 | A/B | `bp-supersedence`, `bp-coverage-map` | CLOSED |
| BP21-DEST-002 | A/B | `bp-authority-stack`, `bp-conflict-rule` | CLOSED |
| BP21-DEST-003 | A | `bp-package-deliverables`, `rbk-package-deliverables` | CLOSED |
| BP21-DRIFT-001 | A/B | `bp-stable-anchor-registry`, `bp-glossary` | CLOSED |
| BP21-DRIFT-002 | A/B | `bp-authority-stack` | CLOSED |
| BP21-EP-001 | A/B | `bp-exec-roles-boundary` | CLOSED |
| BP21-EP-002 | A/B | `bp-exec-permission-policy`, `bp-exec-agent-precedence` | CLOSED |
| BP21-FEAS-001 | A/B | `bp-control-merge-queue`, `bp-control-merge-group-matrix` | TEMP\_CLOSED→TEST\_TRACK |
| BP21-FEAS-002 | A/B | `bp-control-required-checks`, `bp-control-checkname-stability` | TEMP\_CLOSED→TEST\_TRACK |
| BP21-GLOB-001 | B | `bp-no-wheel-policy`, `bp-route-out-rules` | CLOSED |
| BP21-LOGIC-001 | A/B | `bp-fail-closed-verdict-rules` | CLOSED |
| BP21-LOGIC-002 | A/B | `bp-schema-unavailable-rule`, `bp-gate-report-schema` | CLOSED |
| BP21-LOGIC-003 | A/B | `bp-model-policy`, `bp-model-policy-pass` | CLOSED |
| BP21-PP-002 | A/B | `bp-peripheral-enable-contract`, `bp-peripheral-default-deny` | CLOSED |
| BP21-PP-003 | A/B | `bp-peripheral-no-go`, `bp-peripheral-clawhub-no-go` | CLOSED |
| BP21-RAG-001 | A/B | `bp-rag-header-policy`, `bp-chunk-policy`, `bp-doc-split-map` | CLOSED |
| BP21-REP-001 | A/B | `ur-external-sources-registry`, `ur-test-track-ledger` | CLOSED |
| BP21-REP-002 | A/B | `ur-machine-json-summary` | CLOSED |
| BP21-RISK-001 | A/B | `bp-owasp-risk-guardrail-mapping` | CLOSED |
| BP21-RISK-002 | B | `bp-mcp-security-baseline` | TEMP\_CLOSED→TEST\_TRACK |
| BP21-STR-001 | A/B | `bp-diataxis-map`, `bp-two-minute-guide` | CLOSED |
| BP21-STR-002 | A/B | `bp-route-out-rules` | CLOSED |
| BP21-STR-003 | A/B | `rbk-acceptance-loop`, `bp-evidence-bundle` | CLOSED |
| BP21-STRUCT-001 | A/B | `rdm-diataxis-layout`, `rdm-route-out-rules` | CLOSED |
| BP21-STRUCT-002 | A/B | `bp-chunk-policy`, `rdm-chunk-policy` | CLOSED |
| DCL-001 | A/B | `bp-stable-anchor-registry`, `bp-glossary` | CLOSED |
| DCL-002 | A/B | `bp-rag-header-policy` | CLOSED |
| DCL-003 | A/B | `bp-chunk-policy`, `bp-doc-split-map` | CLOSED |
| DCL-004 | A/B | `spec-runbook-gen-contract` | CLOSED |
| DCL-005 | A/B | `rbk-acceptance-checklist`, `bp-dod` | CLOSED |


---


| legacy\_item | TEMP\_CLOSED 理由 | TEST\_TRACK | external\_sources\_used | 撤銷/結案條件 |
| ----- | ----- | ----- | ----- | ----- |
| CR\_OPEN.GH.MERGE\_QUEUE\_MERGE\_GROUP | 平台行為/事件觸發細節需以官方文件鎖定 | TT-GH-001 | GitHub Docs（Merge queue / merge\_group event）([GitHub Docs](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/configuring-pull-request-merges/managing-a-merge-queue)) | 在目標 repo 實測：merge\_group 觸發 required checks 並產出 gate\_report=PASS |
| CR\_OPEN.OC.PERM\_PRECEDENCE | 權限規則 precedence 需以官方文件鎖定 | TT-OC-001 | OpenCode Docs（permissions / precedence）([開放代碼](https://open-code.ai/en/docs/permissions)) | 用最小樣例證明「last matching rule wins」且不破壞自動化 |
| CR\_OPEN.MCP.SECURITY\_AUTHZ | MCP 授權/安全建議需以 MCP 官方規範鎖定 | TT-MCP-001 | MCP spec \+ security 概覽([Model Context Protocol](https://modelcontextprotocol.io/specification/draft/basic?utm_source=chatgpt.com)) | OpenClaw 啟用時：allowlist+sandbox+post-scan 證據齊全且 Gate PASS |
| CR\_OPEN.OWASP.LLM05 | 供應鏈風險映射需對齊 OWASP LLM Top10 | TT-OWASP-001 | OWASP LLM Top10（LLM05）([OWASP Gen AI Security Project](https://genai.owasp.org/llmrisk2023-24/llm08-excessive-agency/)) | 掃描證據進 Gate；FAIL 時必有 remediation\_pr\_ref |
| CR\_OPEN.OWASP.LLM08 | 過度代理風險映射需對齊 OWASP LLM Top10 | TT-OWASP-002 | OWASP LLM Top10（LLM08）([OWASP Gen AI Security Project](https://genai.owasp.org/llmrisk2023-24/llm08-excessive-agency/)) | NO-GO 工具/技能被 HITL 擋下；放行必有 allowlist\_ref |
| CR\_OPEN.SSOT.SUBP1\_RUNBOOK\_WI\_V1\_4\_0 | 指標文件正文缺失 | TT-SSOT-001 | N/A（待補正文） | 正文到位後：對齊 Coverage Map 與 Runbook 章節差異清零 |


---


| 類別 | Blueprint（保留） | Field-Runbook+WI（移交） |
| ----- | ----- | ----- |
| GitHub 控制平面 | Rulesets/Required checks/Merge queue 的硬條文與矩陣 | 點哪裡、怎麼設定、實測步驟、常見踩雷排除 |
| OpenCode/OMOC 執行平面 | 角色邊界、權限政策、模型政策、產物契約 | 實際指令、設定檔範本、診斷/修補腳本 |
| MCP/OpenClaw 外圍平面 | default deny、enable contract、NO-GO、掃描入 Gate | server/tool/skill 的具體 allowlist、sandbox profile 實作、掃描工具選型與執行 |


---


| source | source\_requirement\_id | v2.2\_anchor | status |
| ----- | ----- | ----- | ----- |
| DEV | DEV-REQ-01 | bp-control-plane | PASS |
| DEV | DEV-REQ-02 | bp-control-required-checks | PASS |
| DEV | DEV-REQ-03 | bp-evidence-bundle | PASS |
| DEV | DEV-REQ-04 | bp-fail-closed-verdict-rules | PASS |
| DEV | DEV-REQ-05 | bp-route-out-rules | PASS |
| DEV | DEV-REQ-06 | bp-model-policy | PASS |
| DEV | DEV-REQ-07 | bp-peripheral-default-deny | PASS |
| DEV | DEV-REQ-08 | bp-owasp-risk-guardrail-mapping | PASS |
| DEV | DEV-REQ-09 | bp-test-track-ledger | PASS |
| DEV | DEV-REQ-10 | bp-execution-plane | PASS |
| SA | SA-REQ-01 | bp-exec-roles-boundary | PASS |
| SA | SA-REQ-02 | bp-exec-permission-policy | PASS |
| SA | SA-REQ-03 | bp-model-policy | PASS |
| SA | SA-REQ-04 | bp-evidence-bundle | PASS |
| SA | SA-REQ-05 | bp-fail-closed-verdict-rules | PASS |
| SA | SA-REQ-06 | bp-route-out-rules | PASS |
| SA | SA-REQ-07 | bp-peripheral-no-go | PASS |
| SA | SA-REQ-08 | bp-peripheral-enable-contract | PASS |
| SA | SA-REQ-09 | bp-doc-split-map | PASS |
| SA | SA-REQ-10 | bp-owasp-risk-guardrail-mapping | PASS |
| OC | OC-REQ-01 | bp-peripheral-default-deny | PASS |
| OC | OC-REQ-02 | bp-peripheral-enable-contract | PASS |
| OC | OC-REQ-03 | bp-peripheral-no-go | PASS |
| OC | OC-REQ-04 | bp-mcp-security-baseline | PASS |
| OC | OC-REQ-05 | bp-evidence-bundle | PASS |
| OC | OC-REQ-06 | bp-owasp-risk-guardrail-mapping | PASS |
| OC | OC-REQ-07 | bp-test-track-ledger | PASS |
| OC | OC-REQ-08 | bp-fail-closed-verdict-rules | PASS |
| OC | OC-REQ-09 | bp-route-out-rules | PASS |
| OC | OC-REQ-10 | bp-doc-split-map | PASS |


---


| 事件/觸發 | 必須產生 checks | 必須進 Gate | 裁決 |
| ----- | ----- | ----- | ----- |
| pull\_request | yes | yes | non-PASS → FAIL |
| merge\_group | yes | yes | non-PASS → FAIL |
| workflow\_dispatch（手動驗收） | yes | yes | non-PASS → FAIL |


---


| 角色 | 允許做 | 禁止做（違規=FAIL） |
| ----- | ----- | ----- |
| Chef | 任務拆解、指派、收斂裁決、產物整併 | 直接執行高風險外部操作、繞過 Gate |
| Deputy | 執行協調、證據彙整、重跑 | 自行新增子代理階層（禁止遞迴） |
| Experts | 專題分析/修補建議/生成 patch | 變更權限政策、變更模型政策（需 Chef 裁決） |


---


| peripheral\_id | allowlist\_ref | sandbox\_profile | post\_scan\_required | scan\_evidence\_index | verdict\_rule |
| ----- | ----- | ----- | ----- | ----- | ----- |
| MCP\_SERVER\_ANY | required | required | yes | required | 缺任一欄位→FAIL |
| OPENCLAW\_TOOLING | required | required | yes | required | scan FAIL→FAIL \+ remediation\_pr\_ref required |
| CODE\_EXECUTION | required | strict | yes | required | 未 sandbox→FAIL |
| NETWORK\_EGRESS | required | strict | yes | required | 未 post-scan→FAIL |
| CLAWHUB\_SKILLS | required | strict | yes | required | 另見 NO-GO（必 HITL） |


---


| item | required | 用途 |
| ----- | ----- | ----- |
| manifest.json | yes | 本次驗收輸入/版本/來源索引 |
| gate\_report.json | yes | 機械裁決輸出（PASS/FAIL/UNAVAILABLE） |
| evidence\_index.jsonl | yes | 證據索引（每筆 evidence 的 type/path/hash） |


---


| field | type | required | rule |
| ----- | ----- | ----- | ----- |
| overall | enum(PASS/FAIL/UNAVAILABLE) | yes | 非 PASS → merge blocked |
| model\_policy\_pass | bool | yes | false/缺 → UNAVAILABLE |
| required\_checks\_pass | bool | yes | false/缺 → FAIL |
| peripheral\_policy\_pass | bool | yes | false/缺 → FAIL |
| schema\_version | string | yes | 缺 → UNAVAILABLE |
| remediation\_pr\_ref | string | conditional | scan FAIL 時必填 |


---


| owasp\_id | risk | guardrail | required\_evidence | verdict\_rule |
| ----- | ----- | ----- | ----- | ----- |
| LLM05 | Supply Chain Vulnerabilities | 依賴/外掛/工具引入必須掃描入 Gate；FAIL 必須 remediation | scan\_report \+ evidence\_index \+ remediation\_pr\_ref | scan FAIL → FAIL |
| LLM08 | Excessive Agency | 工具/技能 allowlist \+ HITL；禁止暗開 | allowlist\_ref \+ hitl\_record \+ gate\_report | 未 HITL 仍放行 → FAIL |
| (aux) | Data exfiltration via tools | sandbox \+ egress control | sandbox\_profile \+ egress\_log | 缺任一 → FAIL |
| (aux) | Prompt injection via tools | tool boundary \+ policy | policy\_snapshot \+ regression\_test | 缺任一 → UNAVAILABLE |


---


| test\_track\_id | topic | external\_sources | tracking\_test | revoke\_condition |
| ----- | ----- | ----- | ----- | ----- |
| TT-GH-001 | Merge Queue/merge\_group 實測與踩雷對策 | SRC-GH-001/002 | merge\_group 觸發 required checks 並產生 gate\_report PASS | 任一事件 check name 漂移即撤銷 |
| TT-OC-001 | OpenCode permission precedence | SRC-OC-001 | 規則衝突時 last match wins 可重現 | precedence 不可重現即撤銷 |
| TT-MCP-001 | MCP security/authz 落地 | SRC-MCP-001/002 | allowlist+sandbox+post-scan→Gate PASS | 缺證據或暗開即撤銷 |
| TT-OWASP-001 | LLM05 護欄/證據完整性 | SRC-OWASP-001 | scan evidence 入 Gate；FAIL 有 remediation | 無 remediation 即撤銷 |
| TT-OWASP-002 | LLM08 HITL+allowlist | SRC-OWASP-001 | NO-GO 觸發 HITL 記錄 | 無 HITL 放行即撤銷 |
| TT-SSOT-001 | 補齊 SubP1 RUNBOOK\&WI v1.4.0 | N/A | 正文到位後做差異清零 | 到位前維持 UNAVAILABLE |


---


| doc | diataxis\_quadrant | primary\_anchors |
| ----- | ----- | ----- |
| TriPlane-Blueprint | Reference/Explanation | bp-control-plane, bp-execution-plane, bp-peripheral-plane, bp-evidence |
| GitHub Multi-Agent\_Readme | Tutorial/How-to | rdm-\* |
| Field-Runbook+WI | How-to/Reference | rbk-\* |


---


| 現象 | 最可能原因 | 裁決 | 必備證據 |
| ----- | ----- | ----- | ----- |
| merge\_group 沒觸發 checks | workflow 未覆蓋 merge\_group | UNAVAILABLE→TT-GH-001 | 事件記錄 \+ checks 截圖 |
| required checks 名稱漂移 | job name/flow name 不一致 | FAIL | 兩事件 check 名稱對照 |
| 一直 Permission required | 權限規則漂移/precedence 不明 | UNAVAILABLE→TT-OC-001 | policy\_snapshot \+ 生效規則 |
| 啟用外掛但無掃描證據 | 沒 post-scan 或未入 evidence\_index | FAIL | scan\_report \+ evidence\_index |
| 使用 NO-GO skills 未 HITL | 風險繞過 | FAIL | HITL 記錄缺失證據 |

