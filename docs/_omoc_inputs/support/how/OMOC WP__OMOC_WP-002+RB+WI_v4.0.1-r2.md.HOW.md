# HOW (extracted)


| anchor\_id | section |
| ----- | ----- |
| `cover` | Cover |
| `metadata-header` | Metadata Header |
| `toc` | TOC |
| `anchor-registry` | Anchor Registry |
| `reader-guide` | Reader Guide |
| `authority-stack` | Authority Stack & Version Policy |
| `status-glossary` | Status Glossary |
| `doc-inventory` | Doc Inventory |
| `scope` | Scope / Non-Goals / Out-of-scope Guardrails |
| `requirements-extraction` | Requirements Extraction |
| `coverage-map` | Coverage Map |
| `runbook` | Runbook |
| `rb-0` | RB-0 Bootstrap & Guardrails |
| `rb-1` | RB-1 Enter Dev Container (VS Code) |
| `rb-2` | RB-2 Toolchain Preflight (Inside Container) |
| `rb-3` | RB-3 Evidence Workspace Bootstrap |
| `rb-4` | RB-4 BK-001 Baseline Snapshot (Dual-path) |
| `rb-5` | RB-5 Gate Evaluation: GATE-ENV-READY |
| `rb-6` | RB-6 Failure Handling & Auto-Repair Loop (Local) |
| `work-instructions` | Work Instructions |
| `wi-1` | WI-1 VS Code Dev Containers UI Path |
| `wi-2` | WI-2 Codespaces Rebuild Container (SUPPORT, Out-of-scope) |
| `wi-3` | WI-3 devcontainer.json Fields Reference (SUPPORT) |
| `gate-env-ready` | Gate: GATE-ENV-READY |
| `bk-001` | BK-001 |
| `security-evidence-hygiene` | Security & Evidence Hygiene |
| `web-evidence-appendix` | Web Evidence Appendix (SUPPORT ONLY) |
| `tt-register` | TT Register |
| `closure-matrix` | Closure Matrix |
| `self-audit` | Self-Audit |


---


| doc\_id | role | path | exists | bytes | sha256 | lines | locator\_proof | notes |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| NORMATIVE-SSOT | NORMATIVE | `/mnt/data/OMOC_藍圖_v4.0.1-r1.md` | YES | 17,107 | TEMP\_CLOSED | 282 | `/mnt/data/OMOC_藍圖_v4.0.1-r1.md :: L169-L197 :: "[ANCHOR:OMOC-BP-1000]"` | SSOT blueprint |
| NORMATIVE-RBWI | NORMATIVE | `/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md` | YES | 37,067 | TEMP\_CLOSED | 697 | `/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md :: L220-L242 :: "[ANCHOR:OMOC-RBWI-L0]"` | Phase-L/L0 runbook+WI contracts |
| NORMATIVE-SKILLS | NORMATIVE | `/mnt/data/OMOC_施工skills_合冊_v4.0.1-r2.md` | YES | 47,949 | TEMP\_CLOSED | 793 | `/mnt/data/OMOC_施工skills_合冊_v4.0.1-r2.md :: L308-L327 :: "skill_id: omoc-baseline-snap"` | skills contracts (incl. SK01) |
| NORMATIVE-WPMASTER | NORMATIVE | `/mnt/data/OMOC_實作+WP總表_v4.0.1-r2.md` | YES | 37,758 | TEMP\_CLOSED | 580 | `/mnt/data/OMOC_實作+WP總表_v4.0.1-r2.md :: L536-L546 :: "\"gate_id\": \"GATE-ENV-READY\""` | WP master \+ gate registry \+ BK matrix |
| TARGET-LEGACY | TARGET | `/mnt/data/OMOC_WP-002+RB+WI.md` | YES | 28,559 | TEMP\_CLOSED | 576 | `/mnt/data/OMOC_WP-002+RB+WI.md :: L1-L12 :: "# OMOC｜WP-002"` | legacy (to be superseded) |
| REVIEW-A | REVIEW | `/mnt/data/OMOC_WP-002+RB+WI_審查報告A.md` | YES | 12,747 | TEMP\_CLOSED | 267 | `/mnt/data/OMOC_WP-002+RB+WI_審查報告A.md :: L234-L247 :: "TT-WP002-001"` | review findings/TT |
| REVIEW-B | REVIEW | `/mnt/data/OMOC_WP-002+RB+WI_審查報告B.md` | YES | 8,248 | TEMP\_CLOSED | 200 | `/mnt/data/OMOC_WP-002+RB+WI_審查報告B.md :: L190-L201 :: "TT-WP002-001"` | review findings/TT |
| ALIGN-WP001-R2 | ALIGNMENT | `/mnt/data/OMOC_WP-001+RB+WI_v4.0.1-r2.md` | MISSING |  |  |  | N/A | WP-001 r2 target alignment |
| ALIGN-WP001 | ALIGNMENT | `/mnt/data/OMOC_WP-001+RB+WI.md` | YES | 41,867 | TEMP\_CLOSED | 654 | `/mnt/data/OMOC_WP-001+RB+WI.md :: L1-L15 :: "# OMOC｜WP-001"` | WP-001 legacy (support mapping only) |


---


| req\_id | requirement | norm\_locator | implemented\_at | verdict | evidence/notes |
| ----- | ----- | ----- | ----- | ----- | ----- |
| `REQ-WPM-WP002-DEF` | WP-002 僅涵蓋 Phase-L/L0（Dev Container & Toolchain Ready） | \`/mnt/data/OMOC\_實作+WP總表\_v4.0.1-r2.md :: L334-L336 :: "WP-002 | ENV ready"\` | \#scope / \#runbook / \#gate-env-ready | PASS |
| `REQ-WPM-GATE-ENV-READY` | GATE-ENV-READY：hash+required\_artifacts+verify\_steps | `/mnt/data/OMOC_實作+WP總表_v4.0.1-r2.md :: L536-L546 :: "\"gate_id\": \"GATE-ENV-READY\""` | \#gate-env-ready / \#rb-5 | PASS | Gate Contract Lock 固定化。 |
| `REQ-WPM-BK-001` | BK-001：baseline snapshot \+ evidence\_required \+ rollback\_min | \`/mnt/data/OMOC\_實作+WP總表\_v4.0.1-r2.md :: L284-L286 :: "BK-001 | 進入任何 WP 前"\` | \#bk-001 / \#rb-4 | PASS |
| `REQ-RBWI-CMD-TEMPLATE` | RBWI CMD template：timeout/tee/rc/run.log | `/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md :: L188-L208 :: "[ANCHOR:OMOC-RBWI-CMD-TEMPLATE]"` | \#runbook / \#rb-3 / \#rb-5 | PASS | 以同構模板落地（不引入 Phase-G）。 |
| `REQ-RBWI-L0` | RBWI L0：Docker/DevContainer 環境就緒與工具檢查 | `/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md :: L220-L242 :: "[ANCHOR:OMOC-RBWI-L0]"` | \#rb-1 / \#rb-2 | PASS | 工具鏈檢查與缺失處置決策樹。 |
| `REQ-SKILLS-SK01` | SK01 baseline snapshot（含 GitHub API read-only） | `/mnt/data/OMOC_施工skills_合冊_v4.0.1-r2.md :: L308-L327 :: "skill_id: omoc-baseline-snap"` | \#rb-4（可選） | PASS\* | PASS\* \= 僅 read-only/最佳努力；不做任何 Phase-G 改動。 |
| `REQ-SEC-NO-SECRETS` | Evidence 不得包含 secrets/token/.env；命中即 FAIL\_CLOSED | `/mnt/data/OMOC_藍圖_v4.0.1-r1.md :: L169-L197 :: "[ANCHOR:OMOC-BP-1000]"` | \#security-evidence-hygiene | PASS | 提供掃描點與遮罩策略。 |
| `REQ-ALIGN-WP001-R2` | WP-001 r2 alignment file 必須存在才可宣稱對齊 | `/mnt/data/OMOC_WP-001+RB+WI_v4.0.1-r2.md` | \#tt-register | TEMP\_CLOSED | 上游缺檔；closure\_criteria 見 TT-WP002-009。 |
| `REQ-INVENTORY-SHA256` | Doc Inventory 必須填入 sha256（不得留白） | H2/H3/H6 | \#doc-inventory | TEMP\_CLOSED | 立案 TT-WP002-013；不影響 Gate，但不應對外發布。 |


---


| gate\_sub\_id | condition | satisfied\_by | fail\_behavior |
| ----- | ----- | ----- | ----- |
| `GATE-ENV-READY-01` | Docker daemon 可用 | RB-2 | FAIL\_CLOSED |
| `GATE-ENV-READY-02` | 於 Dev Container 內執行 | RB-1 \+ WI-1 | FAIL\_CLOSED |
| `GATE-ENV-READY-03` | git/python3 可用 | RB-2 | FAIL\_CLOSED |
| `GATE-ENV-READY-04` | BK-001 baseline 產出（雙路徑） | RB-4 | FAIL\_CLOSED |
| `GATE-ENV-READY-05` | required\_artifacts 齊備且 rc=0 | RB-5 | FAIL\_CLOSED |


---


| tt\_id | status | title | closure\_criteria | notes |
| ----- | ----- | ----- | ----- | ----- |
| `TT-WP002-001` | CLOSED | Doc Inventory drift→WP-MASTER r2（禁止再用 r1 作裁決依據） | N/A | 已以 r2 locator 綁定；r1 僅標 SUPPORTED-SUPERSEDED。 |
| `TT-WP002-002` | CLOSED | Gate locator \+ Gate Contract Lock（hash+required\_artifacts 固定化） | N/A | 已嵌入 gate\_contract\_hash=001e08336480… 並綁 r2 gate registry。 |
| `TT-WP002-003` | CLOSED | BK-001 evidence\_required 對齊 r2 BK Matrix；補 rollback\_min | N/A | 已落地 dual-path baseline（root+evidence）。 |
| `TT-WP002-004` | CLOSED | 補齊 TOC/Anchor Registry；修復舊版缺失 §10\~§15 anchors | N/A | 本文件所有章節均有 。 |
| `TT-WP002-005` | CLOSED | Runbook CMD template：timeout/tee/rc 分離；固定 run.log/rc.txt | N/A | 模板與 RBWI 同構；run.log/rc.txt 命名固定。 |
| `TT-WP002-006` | CLOSED | 移除 oaicite/placeholder；以 Web Evidence Appendix（\>=2 refs）取代 | N/A | Web evidence 已補齊 \>=2 refs 且含官方。 |
| `TT-WP002-007` | CLOSED | Toolchain 缺失處置 decision tree（docker/git/jq/node/python/devcontainer/gh） | N/A | RB-2 已落地可驗收輸出與 Fail-Closed 行為。 |
| `TT-WP002-008` | CLOSED | Link/Anchor Audit：TOC 內鏈不得斷 | N/A | Anchor Registry 完整；Self-Audit 規則落地。 |
| `TT-WP002-009` | TEMP\_CLOSED | WP-001 v4.0.1-r2 對齊（ALIGNMENT） | 若 `/mnt/data/OMOC_WP-001+RB+WI_v4.0.1-r2.md` 存在：補齊 Authority/Version policy 映射並更新 Coverage Map | 上游檔案 MISSING；不阻斷 WP-002 Gate。 |
| `TT-WP002-010` | CLOSED | Out-of-scope guard：不得偷渡 Phase-G（Rulesets/Merge Queue/Required contexts 改動） | N/A | 已在 Scope/Runbook/WI 明示「不影響 Gate」。 |
| `TT-WP002-011` | CLOSED | WPM r2 路徑歧義（BK baseline/\* vs Gate evidence/\_acceptance/.../baseline/\*） | 上游釐清後移除雙寫並更新本文件 | 本版以雙寫產物同時滿足兩者，避免 FAIL\_CLOSED。 |
| `TT-WP002-012` | CLOSED | Status Glossary：確保 TEMP\_CLOSED 可被搜尋命中（NO\_HIT 風險） | N/A | 已新增 Glossary 並多處引用 TEMP\_CLOSED。 |
| `TT-WP002-013` | TEMP\_CLOSED | Doc Inventory sha256 未實填（必須可重算） | 於同一環境重算所有輸入檔 sha256；填入 §5；並在 Self-Audit 記錄命令與結果摘要 | 不影響 Gate，但屬文件稽核阻斷：外部交付前必須關閉。 |


---


| report | reported\_tt\_id | mapped\_to | note |
| ----- | ----- | ----- | ----- |
| REVIEW-B | `TT-WP002-003` | `TT-WP002-006` | Web evidence（Dev Containers） |
| REVIEW-B | `TT-WP002-004` | `TT-WP002-006` | Web evidence（Codespaces） |
| REVIEW-B | `TT-WP002-005` | `TT-WP002-009` | WP-001 r2 alignment missing |
| REVIEW-B | `TT-WP002-006` | `TT-WP002-012` | Status glossary / TEMP\_CLOSED NO\_HIT |
| REVIEW-B | `TT-WP002-007` | `TT-WP002-010` | Out-of-scope guard（本版已落地） |


---


| finding\_id | source | summary | patch\_location | TT | verdict |
| ----- | ----- | ----- | ----- | ----- | ----- |
| `F-WP002-001` | REVIEW-A | WP-MASTER 版本漂移（r1→r2） | \#doc-inventory / \#requirements-extraction | `TT-WP002-001` | PASS |
| `F-WP002-002` | REVIEW-A | 缺 Gate Contract Lock（hash/required\_artifacts） | \#gate-env-ready | `TT-WP002-002` | PASS |
| `F-WP002-003` | REVIEW-A | BK-001 evidence\_required/rollback 缺失或不對齊 | \#bk-001 | `TT-WP002-003` | PASS |
| `F-WP002-004` | REVIEW-A | Anchor/TOC 缺失、§10\~§15 不可定位 | \#toc / \#anchor-registry | `TT-WP002-004` | PASS |
| `F-WP002-005` | REVIEW-A | RBWI CMD template 未落地（timeout/tee/rc） | \#runbook | `TT-WP002-005` | PASS |
| `F-WP002-006` | REVIEW-A | oaicite/placeholder/未填 URL | \#web-evidence-appendix | `TT-WP002-006` | PASS |
| `F-WP002-007` | REVIEW-A | 缺 Toolchain decision tree | \#rb-2 | `TT-WP002-007` | PASS |
| `F-WP002-009` | REVIEW-A | WP-001 r2 對齊宣稱風險 | \#authority-stack / \#tt-register | `TT-WP002-009` | TEMP\_CLOSED |
| `F-WP002-010` | REVIEW-A | Out-of-scope guard 不足（Phase-G 偷渡風險） | \#scope | `TT-WP002-010` | PASS |
| `F-WP002-DRIFT-001` | REVIEW-B | Doc Inventory 綁錯版本（r1） | \#doc-inventory | `TT-WP002-001` | PASS |
| `F-WP002-GATE-001` | REVIEW-B | Gate locator/registry 不可機器驗收 | \#gate-env-ready | `TT-WP002-002` | PASS |
| `F-WP002-BK-001` | REVIEW-B | BK-001/證據命名不固定 | \#bk-001 | `TT-WP002-003` | PASS |
| `F-WP002-STATUS-001` | REVIEW-B | TEMP\_CLOSED NO\_HIT（詞彙未定義/未出現） | \#status-glossary | `TT-WP002-012` | PASS |
| `F-WP002-INVENTORY-001` | INTERNAL | sha256 未實填（文件稽核阻斷） | \#doc-inventory | `TT-WP002-013` | TEMP\_CLOSED |

