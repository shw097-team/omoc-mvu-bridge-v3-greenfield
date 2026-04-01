# Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_WP-M_合冊
<a id="cover-card"></a>

## 0. Cover Card / Meta / Identity

| field | value |
|---|---|
| external_name | Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_WP-M_合冊 |
| internal_short_name | SOMOC-CADSL-WPM |
| subsystem_id | CA-DSL |
| stable_id | DOC-CA-DSL-WPM-20260330-R6 |
| doc_id | SOMOC-CADSL-WPM.v2026.03.30-r6 |
| fq_doc_id | SOMOC-CADSL-WPM.v2026.03.30-r6 |
| version | v2026.03.30-r6 |
| date | 2026-03-30 |
| timezone | Asia/Taipei |
| document_verdict | PASS_PATCHED_WITH_GUARDS |
| engineering_verdict | READY_PATCHED_WITH_AUDIT_FIXES |
| runtime_verdict | FAIL_CLOSED / CONTRACT_ONLY |
| release_verdict | BLOCK_RELEASE |
| delivery_verdict | PASS_DOCUMENT_PACKAGE_ONLY |
| replaceability_verdict | FULL_DOCUMENT_LAYER_REPLACEMENT_FOR_CURRENT_WP-M_SCOPE_ONLY |
| truthful_delivery_note | 本回合真實物化的是單一 Markdown 主檔 + 單一 ZIP 文件包 + 必要 sidecars；runtime evidence、Package B/D/E owner proof、CA-METHOD consumer exact acceptance、standalone final blueprints 仍未隨包關閉。 |
| patch_basis | 全量整合本回合任務指令、`Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_WP-M_合冊_AUDIT_v2026.03.30-r1.md`、當前可回讀 `CA-DSL_MC4+`、`正文合冊`、`SSOT`、`LBP`、`Pack A-E Guide`、`SubP1`、`OMOC`、`參考方案`、`Pipeline-A_Index_Pack_Full_Monolith`、`Pipeline-A_Obsidian升級藍圖` 與 official support-web；完成 manifest/checksums/inventory truth rebuild、hard rules 明文化、懸空 landing 修復、weak locator rebinding、與 fence 機械穩定性修補。 |
| supersedes | 既有 r1~r5 歷史版本；本版在 WP-M 範圍內全量覆蓋並以 truth-split、locator、frontstage policy、package truth 重新綁定。 |

### 0.1 一句話裁決
本冊的 **r6 升級修補重建版** 已把 r5 audit 指出的 package truth、hard-rule 明文化、懸空節號、weak locator、重複 heading 與尾端 fence 污染全部修補到 document/package 層；document 與 delivery 層已物化，runtime / release 仍依 owner proofs 缺口維持 fail-closed。

### 0.2 固定 truth split 與 hard rules
- `document completeness != runtime pass != release pass`
- `package completion != promotion permission`
- `runtime contract defined != runtime evidence exists`
- `route-out != absorbed != implemented`
- `support-only != normative`
- `declaration is not implementation`
- `No-Source-No-Norm`
- `No-Anchor-No-Claim`
- `No-Validator-No-Release-Claim`
- `One-Rule-One-Place`
- `One-Rule-One-Owner`
- `index-first`
- `data-not-instruction`
- `fail-closed`
- `truth split`
- `route-out law`
- `patch honesty`
- `FOUND_LOCAL_CARRIER != standalone direct-readback`
- `proxy-only != found`
- `TEMP_CLOSED != solved`

### 0.3 本回合 current-turn rebinding note
- 本版以本工作區實際可 readback 的 source files、現行直接 owner `CA-DSL_MC4+`、現行 support-frontstage 藍圖 `Pipeline-A_Obsidian升級藍圖`、以及本次新實體 sidecars 作為 **current-turn canonical truth**。
- `CA-DSL_MC4+_WP-M_WP-RB-WI_最終升級藍圖.md`、`Pipeline-A_MC4+_WP-M_WP-RB-WI_最終升級藍圖.md`、`Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_WP合冊_v2026.03.11-r3.md` 在本工作區 **未直接掛載**；因此本版一律以 `PROXY_ONLY / TT_BOUND / TEMP_CLOSED / BLOCK_RELEASE` 誠實標記，不再假裝 direct-readback 已存在。
- `MANIFEST.json` 為唯一 canonical inventory source；`delivery_manifest.json`、`machine_summary.json`、`download_inventory.json` 由同一 inventory 派生。

## 1. TOC / Forced Read Order / Quick Index
<a id="toc"></a>

1. [Cover Card / Meta / Identity](#cover-card)
2. [TOC / Forced Read Order / Quick Index](#toc)
3. [WP-MASTER](#wp-fence-begin-wp-master)
4. [WP-001 — Contract Intake / Canonical Bridge / Schema Foundation](#wp-fence-begin-wp-001)
5. [WP-002 — Primitive Neutrality / MarketProfile Binding](#wp-fence-begin-wp-002)
6. [WP-003 — Evidence Triplet / Handoff / Lineage / RunLedger](#wp-fence-begin-wp-003)
7. [WP-004 — Packaging / Delivery / Release Stopline](#wp-fence-begin-wp-004)
8. [Support-only Appendix](#wp-fence-begin-support-only-appendix)
9. [CR / TT / Self-Audit / Package Inventory](#wp-fence-begin-cr-tt-self-audit-package-inventory)

### 1.1 強制讀序
1. 先讀 **WP-MASTER §2-§4**，確認 hard rules、authority stack、scope lock 與 locator class。  
2. 再讀 **WP-MASTER §5-§6**，確認 sourcepack 與 support-frontstage 法位，以及 least-sufficient WP proof。  
3. 再讀 **WP-MASTER §7-§9**，確認 audit finding 如何被修、以及 closure 是否真有 landing。  
4. 接著按 **WP-001 → WP-002 → WP-003 → WP-004** 順序閱讀。  
5. 涉及 support/tooling 時，讀 **Support-only Appendix**；涉及 blockers / TT / package truth 時，讀 **CR / TT / Self-Audit / Package Inventory** fenced block。  

### 1.2 Quick Index
| question | go_to | stop_when |
|---|---|---|
| 本冊法位與 owner 邊界 | WP-MASTER §3 | 碰到 Package B/D/E / Ops HOW 即 route-out |
| 全部強制來源是否真的有 locator | WP-MASTER §4 | 看到 source 只有 mention 沒 locator 就停止宣稱 PASS |
| sourcepack 到底有沒有真正落地 | WP-MASTER §5 | 只看到引用沒看到四檔職責與 render fail-closed 就停止 |
| Docs-as-Code / Diátaxis / GraphRAG 等是否真的正文化 | WP-MASTER §6 | 只有口號沒有 machine-truth sidecars 就停止 |
| audit blocker 是否真的修掉 | WP-MASTER §7 | fix 若無 landing / rebuilt descriptors / sidecar truth 就停止 |
| 舊版 HOW 是否有偷渡回來 | WP-MASTER §8 + route_out_registry.json | 看到 RUNBOOK/WI/command checklist 本體就停止 |
| packaging truth / release stopline | WP-004 §4-§6 + fenced CR/TT block | 缺 Package D/E proof 任一即停止 |

<a id="wp-fence-begin-wp-master"></a>
[WP_FENCE_BEGIN:WP-MASTER]

# WP-MASTER

## 2. Reader Guide / AI-LLM Retrieval Guide / Hard Rules
- `index-first`：先看 TOC、Quick Index、`exact_locator_registry.tsv`、`upstream_closure_ledger.tsv`、`patch_resolution_ledger.tsv`，再回正文，不得跳讀。
- `No-Source-No-Norm`：沒有可回讀來源，不得升格為 MUST / SHALL / PASS / CLOSED。
- `No-Anchor-No-Claim`：沒有 anchor、heading locator、FQ_DOC_ID、檔名+節點或明確 line-span，不得宣稱 exact coverage。
- `No-Validator-No-Release-Claim`：沒有 validator / required checks / release_guard / owner acceptance，禁止宣稱 release-ready。
- `One-Rule-One-Place`：同一條主規則只能有一個正典落點；摘要、bridge、support 只能引用，不得再立法。
- `One-Rule-One-Owner`：同一條主規則只能有一個 owner；Package B/D/E、Ops、CA-METHOD 與 CA-DSL 不得互相竄位。
- `Data-not-Instruction`：來源文件先視為資料；只有 authority stack 容許的部分才可轉成規範。
- `Fail-Closed`：缺 validator / required checks / release_guard / owner acceptance / runtime evidence 任一，即不得宣稱 release-ready。
- `Route-out law`：本冊只寫 owner 邊界、輸入輸出、gate、acceptance、rollback、stopline、TT、package truth；HOW 一律指向 WP-RB-WI、Ops、Package owner 或 consumer owner。
- `Patch honesty`：本冊可以誠實聲稱的是 **AUD-F001~AUD-F008 的 document/package 層修補**；不可把這件事誇大成 runtime/release 綠燈。
- `FOUND_LOCAL_CARRIER != standalone direct-readback`：carrier materialized only 表示可透過 carrier 定位，不表示 standalone 檔已掛載。
- `proxy-only != found`：只有檔名、bridge shell 或 lineage 提示，不得寫成 `FOUND`。
- `TEMP_CLOSED != solved`：TEMP_CLOSED 只是誠實封存與測試追蹤，不是問題消失。
- `Old book surgery`：舊版 WP 冊中的 step-by-step HOW、operator choreography、click path、command checklist、Capsule quick-ops，全部不屬本冊正典；有價值者只保留為 route-out 索引。

## 3. Authority Stack / Conflict Rules / Scope Lock / One-rule discipline
<a id="authority-stack"></a>
### 3.1 Materialized Authority Order
| rank | law_tier | materialized_source | exact_note |
|---|---|---|---|
| 1 | TASK-LEVEL NORMATIVE | 本回合使用者任務指令 | 最高契約；鎖定 deliverables、truth split、hard rules、fail-closed 與 package honesty |
| 2 | NORMATIVE | Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md | 中央工程正文 / 系統需求正文 materialized carrier |
| 3 | NORMATIVE | Spartoi-OMOC_SSOT_合冊.md | CA-DSL 架構定位、route-out、元件責任 |
| 4 | NORMATIVE | Spartoi-OMOC_LBP_合冊.md | locator proof / triplet / docs-as-code / TT / support-web bounds |
| 5 | NORMATIVE_ENTRY_ROUTING | Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊.md | FQ_DOC_ID retrieval discipline；Package D route-out ceiling |
| 6 | NORMATIVE_ENTRY_ROUTING | Spartoi-OMOC_SubP1-LITE+MVP_合冊.md | subsystem map / retrievability / RunLedger integration |
| 7 | LOWER_TIER_TRACEABILITY | OMOC_合冊.md / 參考方案合冊.md / Pipeline-A_Index_Pack_Full_Monolith.md | docs-as-code / minimal RAG hygiene / locator quality floor |
| 8 | DIRECT_OWNER_CURRENT_BASELINE | Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_MC4+_合冊.md | current direct owner baseline actually mounted in workspace |
| 9 | SUPPORT_FRONTSTAGE_BLUEPRINT | Pipeline-A_Obsidian升級藍圖.md | support-frontstage legal position / `.base` placement / no-promotion / TT-OBS shell |
| 10 | ADJACENCY / OPS / SUPPORT | Ops RUNBOOK_合冊.md / SEM8 / SEM3 / Pipeline-A refs / 台股映射 / multivector note / official support-web | 只補邊界、route-out、成熟度與 reject rationale；不得越級立法 |

### 3.2 《正文合冊》內部固定子序位
1. `DOC-0001 / Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文r1`
2. `DOC-0002 / Spartoi-OMOC_系統需求正文r3`
3. `DOC-0003 / derived bridge / router / retrieval helper`

### 3.3 Conflict Rules
- owner law > bridge shell > lower-tier traceability > support note  
- current materialized body > file-name assumption  
- canonical identity > alias label  
- release blocker truth > optimistic narrative  
- route-out target > local improvisation  
- audit report can block or demand patch, but **cannot** replace owner law  

### 3.4 One-rule-one-place / One-rule-one-owner landing
- `One-Rule-One-Place` 依 `GCERM-RULE-001` 與本回合任務契約落地：主規則只在本冊或其唯一 owner 文書宣告一次；support/bridge 只做 crosswalk。
- `One-Rule-One-Owner` 依 `GCERM-OWNER-001` 落地：
  - Package B：gate registry / evidence schema / TT engine
  - Package C：execution entrance / handoff / replay surface
  - Package D：devcontainer / workflows / checks manifest / merge_group / adapters
  - Package E：MC4 / WP.Master / traceability / manifest-validator-release_guard
  - CA-DSL：`ART-DISTILL-BASE -> ART-DSL-SPEC` formalization、schema / purity / profile binding、triplet / handoff / RunLedger linkage

### 3.5 Scope Lock
- CA-DSL 是 **Pipeline-A terminal / Pipeline-B spec entry**。  
- 僅處理 `ART-DISTILL-BASE → ART-DSL-SPEC`。  
- 核心：schema-first、primitive neutrality、MarketProfile 間接引用、evidence triplet、RunLedger linkage、handoff、rollback、release stopline。  
- 不得偷渡 execution / order / fill / broker semantics。  
- XQ 仍為唯一下單端。  
- 不得擴編或竄位到 CA-WRC / CA-CORPUS / CA-DISTILL / CA-METHOD / Package B / D / E 的 owner 憲法與 HOW 手冊。  
- SEM8 只作 bind/audit/route-out shell；不是 owner 憲法。  
- sourcepack 是治理單位；**不是** 本回合 package 已物化事實。  

## 4. Inputs Manifest / Exact Locator Discipline / Mandatory Source Binding
<a id="inputs-manifest"></a>

### 4.1 Source-class legend
- `LOCATED`：目前工作區可直接 readback。
- `SUPPORT_ONLY_OR_BOUNDARY`：只補缺 / 比較 / 佐證，不得升格為 owner law。
- `ROUTE_OUT_ONLY`：只證明 owner / HOW surface 的存在與優先序，不能在本冊落實作 HOW。
- `TT_BOUND / PROXY_ONLY`：只知道檔名 / carrier / lineage，不得當成 standalone readback。
- `MISSING_AT_PATCH_TIME`：目前工作區不存在，禁止用記憶硬補。

### 4.2 Exact Locator Matrix（direct readback first；缺件誠實標記）
| locator_id | source_file | locator_type | locator | why_used | landing | status |
|---|---|---|---|---|---|---|
| LIVE-TASK-001 | current_conversation_opening_instruction | task_context | current conversation opener | task contract / scope lock / package truth / hard rules | whole package | CLOSED |
| AUDIT-R1-001 | Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_WP-M_合冊_AUDIT_v2026.03.30-r1.md | section_block | AUD-F001~AUD-F008 / Final Audit Verdict | patch driver / exact defect list / repair priority | WP-MASTER §7 + WP-004 + CR/TT block | CLOSED |
| GCERM-RULE-001 | Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md | line_span | 271-341 | No-Source-No-Norm / No-Anchor-No-Claim / One-Rule-One-Place / Fail-Closed | WP-MASTER §§2-3 | CLOSED |
| GCERM-OWNER-001 | Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md | line_span | 370-464 | 5-Pack 邊界與 One-rule-one-owner matrix | WP-MASTER §3.4 | CLOSED |
| GCERM-PKGE-001 | Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md | line_span | 439-450 | Package E manifest-validator-release_guard ceiling | WP-MASTER §3.4; WP-004 | CLOSED |
| GCERM-ART-001 | Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md | line_span | 746-790 | Data Backbone / Evidence minimum / RunLedger / SpecPack-EvidencePack contract | WP-MASTER §12; WP-003 | CLOSED |
| GCERM-DSL-001 | Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md | line_span | 3823-3904 | CA-DSL duties / inputs / outputs / fail-closed / interface contract duty | WP-MASTER §3; WP-001..003 | CLOSED |
| GCERM-DOCRET-001 | Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md | line_span | 6182-6188 | docs-as-code landing / retrieval hygiene ceiling | WP-MASTER §6 | CLOSED |
| SSOT-DSL-001 | Spartoi-OMOC_SSOT_合冊.md | line_span | 2301-2324 | Pipeline-A terminal / Pipeline-B spec entry / DSL Generator / Purity Validator / Artifact Packager responsibilities | WP-MASTER §3; WP-001..003 | CLOSED |
| LBP-ADR-001 | Spartoi-OMOC_LBP_合冊.md | line_span | 1530-1539 | Evidence Triplet / Docs-as-Code / locator proof / TT / support-only web rules | WP-MASTER §§4,6,15; WP-003 | CLOSED |
| PACKGUIDE-FQDOC-001 | Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊.md | line_span | 49-51 | FQ_DOC_ID / find_tokens minimal retrieval discipline | WP-MASTER §4 | CLOSED |
| SUBP1-DOCRET-001 | Spartoi-OMOC_SubP1-LITE+MVP_合冊.md | line_span | 2800-2818 | anchor / evidence_ptr / route_out / tt_ref retrievability rules | WP-MASTER §6 | CLOSED |
| INDEXPACK-ANTI-001 | Pipeline-A_Index_Pack_Full_Monolith.md | line_span | 23-49 | exact locator quality / UNVERIFIED / FAIL_CLOSED retrieval floor | WP-MASTER §§2,4,16 | CLOSED |
| OWNER-MC4-OBS-001 | Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_MC4+_合冊.md | line_span | 159-165 | Obsidian policy already absorbed into current owner baseline | WP-MASTER §§3,5.6,16 | CLOSED |
| OWNER-MC4-BOOKSYS-001 | Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_MC4+_合冊.md | line_span | 485-512 | shadow frontstage pattern / machine-readable local equivalents / promotion-smoke ceiling | WP-MASTER §§5.6,13,16 | CLOSED |
| OBS-BLUEPRINT-FAM-001 | Pipeline-A_Obsidian升級藍圖.md | line_span | 193-205 | support-frontstage legal position / repo-as-vault / manifest exclusion / `.base` placement | WP-MASTER §§3,5.6,16 | CLOSED |
| OBS-BLUEPRINT-TT-001 | Pipeline-A_Obsidian升級藍圖.md | line_span | 406-417 | TT-OBS-001..009 regression expectations | WP-MASTER §15; CR/TT block | CLOSED |
| OWNER_BLUEPRINT_DIRECT_MISSING | CA-DSL_MC4+_WP-M_WP-RB-WI_最終升級藍圖.md | missing_direct | standalone file not mounted in current workspace | user-requested upstream owner blueprint filename known but no direct readback | CR/TT block + source-class honesty | TT_BOUND / PROXY_ONLY |
| PIPELINE_BLUEPRINT_DIRECT_MISSING | Pipeline-A_MC4+_WP-M_WP-RB-WI_最終升級藍圖.md | missing_direct | standalone file not mounted in current workspace | user-requested pipeline bridge blueprint filename known but no direct readback | CR/TT block + source-class honesty | TT_BOUND / PROXY_ONLY |
| OWNER_WP_HISTORY_MISSING | Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_WP合冊_v2026.03.11-r3.md | missing_direct | historical file not mounted in current workspace | historical parity requested but not direct-readable | CR/TT block + replacement boundedness | TT_BOUND / MISSING_AT_PATCH_TIME |

### 4.3 Mandatory Source Binding Coverage
| source_file | status | locator_ids | line_spans_or_locator | why_used |
|---|---|---|---|---|
| Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_MC4+_合冊.md | LOCATED | OWNER-MC4-OBS-001, OWNER-MC4-BOOKSYS-001 | 159-165, 485-512 | current direct owner baseline / Obsidian local equivalents / route-out ceiling |
| Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md | LOCATED | GCERM-RULE-001, GCERM-OWNER-001, GCERM-PKGE-001, GCERM-ART-001, GCERM-DSL-001, GCERM-DOCRET-001 | 271-341, 370-464, 439-450, 746-790, 3823-3904, 6182-6188 | hard rules / 5-Pack boundaries / data backbone / CA-DSL duties / docs-as-code landing |
| Spartoi-OMOC_SSOT_合冊.md | LOCATED | SSOT-DSL-001 | 2301-2324 | architecture placement and component responsibilities |
| Spartoi-OMOC_LBP_合冊.md | LOCATED | LBP-ADR-001 | 1530-1539 | triplet / locator proof / docs-as-code / TT |
| Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊.md | LOCATED | PACKGUIDE-FQDOC-001 | 49-51 | FQ_DOC_ID retrieval discipline |
| Spartoi-OMOC_SubP1-LITE+MVP_合冊.md | LOCATED | SUBP1-DOCRET-001 | 2800-2818 | document retrievability |
| Pipeline-A_Index_Pack_Full_Monolith.md | LOCATED | INDEXPACK-ANTI-001 | 23-49 | exact locator quality / FAIL_CLOSED retrieval discipline |
| Pipeline-A_Obsidian升級藍圖.md | LOCATED | OBS-BLUEPRINT-FAM-001, OBS-BLUEPRINT-TT-001 | 193-205, 406-417 | support-frontstage legal position / TT / fail-closed |
| CA-DSL_MC4+_WP-M_WP-RB-WI_最終升級藍圖.md | NOT_MOUNTED_DIRECT | OWNER_BLUEPRINT_DIRECT_MISSING | standalone file absent | only filename/lineage known; direct readback unavailable |
| Pipeline-A_MC4+_WP-M_WP-RB-WI_最終升級藍圖.md | NOT_MOUNTED_DIRECT | PIPELINE_BLUEPRINT_DIRECT_MISSING | standalone file absent | only filename/lineage known; direct readback unavailable |
| Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_WP合冊_v2026.03.11-r3.md | MISSING_AT_PATCH_TIME | OWNER_WP_HISTORY_MISSING | historical file absent | historical parity bounded to TT / replacement ledger |

### 4.4 Alias / Stable Naming Rules
- canonical subsystem id：`CA-DSL`
- canonical semantic artifact id：`ART-DSL-SPEC`
- canonical concrete file：`art_dsl_spec.json`
- compatibility alias only：`dsl_schema.json`
- local adjunct assets：`baseline_v1.vpc.yaml`、`dsl_mapping.json`
- runtime lineage root：`run_id` + RunLedger row
- document package truth sidecars：`MANIFEST.json`、`CHECKSUMS.sha256`、`BUILD.md`、`delivery_manifest.json`、`machine_summary.json`、`bundle_tree.txt`、`package_tree.txt`
- patch proof sidecars：`patch_resolution_ledger.tsv`、`package_validation.json`
- retrieval/audit sidecars：`exact_locator_registry.tsv`、`upstream_closure_ledger.tsv`、`route_out_registry.json`

### 4.5 子來源分解台帳
| subsource_id | source_file | tier | used_for | adjudication |
|---|---|---|---|---|
| LIVE_TASK | current task instruction | TASK_AUTHORITY | rebuild scope / deliverable lock / hard rules / truth split | DIRECT_ABSORB |
| AUDIT_R1 | Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_WP-M_合冊_AUDIT_v2026.03.30-r1.md | PATCH_DRIVER | package/inventory/locator/hard-rule/fence defect list | DIRECT_ABSORB_AS_PATCH_DRIVER |
| OWNER_MC4PLUS | Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_MC4+_合冊.md | DIRECT_OWNER | scope lock / artifact constitution / Obsidian local equivalents / blocker truth | DIRECT_ABSORB |
| UPSTREAM_GCERM | Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md | NORMATIVE | hard rules / pack boundaries / CA-DSL duties / data backbone | DIRECT_ABSORB |
| UPSTREAM_SSOT | Spartoi-OMOC_SSOT_合冊.md | NORMATIVE | architectural placement / component responsibilities | DIRECT_ABSORB |
| UPSTREAM_LBP | Spartoi-OMOC_LBP_合冊.md | NORMATIVE | triplet / locator proof / docs-as-code / TT / support-web rules | DIRECT_ABSORB |
| UPSTREAM_PACK_GUIDE | Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊.md | ENTRY_ROUTING | FQ_DOC_ID retrieval discipline | BOUND_REFERENCE |
| OBSIDIAN_BLUEPRINT | Pipeline-A_Obsidian升級藍圖.md | SUPPORT_FRONTSTAGE_BLUEPRINT | support-frontstage legal position / no-promotion / manifest exclusion / TT-OBS shell | DIRECT_ABSORB_AS_SUPPORT_ONLY |
| OWNER_BLUEPRINT_FILENAME | CA-DSL_MC4+_WP-M_WP-RB-WI_最終升級藍圖.md | DIRECT_OWNER_FILENAME_ONLY | requested lineage / owner blueprint filename | TT_BOUND_MISSING_DIRECT |
| PIPELINE_BLUEPRINT_FILENAME | Pipeline-A_MC4+_WP-M_WP-RB-WI_最終升級藍圖.md | PRIMARY_BRIDGE_FILENAME_ONLY | requested lineage / bridge blueprint filename | TT_BOUND_MISSING_DIRECT |
| OWNER_WP_HISTORY | Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_WP合冊_v2026.03.11-r3.md | DIRECT_OWNER_HISTORY | historical parity only | TT_BOUND_MISSING |
| OPS_HIGH_HOW | Ops RUNBOOK_合冊.md | HIGH_HOW_SSOT | precedence / scenario doc map / OP-04 adjunct rule | ROUTE_OUT_ONLY |

## 5. Sourcepack Constitutional Landing / Render Fail-Closed
<a id="sourcepack-landing"></a>

### 5.1 唯一治理單位
CA-DSL 的 sourcepack 治理單位固定為：

```text
docs/subsystems/CA-DSL/sourcepack/
├─ meta.json
├─ CA-CORE.md
├─ CA-MC4.md
└─ CA-WP.md
```

### 5.2 四檔職責（正文化，不再只是引用）
| sourcepack_file | constitutional_role | must_contain | must_not_contain |
|---|---|---|---|
| `meta.json` | identity / verdict / supersedes / route_out / owner_boundary / package_truth_profile | `ca_id`、`document_verdict`、`runtime_verdict`、`release_verdict`、`route_out[]`、`owner_boundary` | 任何 HOW、本體規格正文 |
| `CA-CORE.md` | 共享制度核心 | truth split、authority note、route-out/stopline/TT skeleton、anti-hallucination、reader order | 大段 MC4+/WP-M 實質內容重複 |
| `CA-MC4.md` | subsystem constitution / reference / contracts | positioning、scope lock、canonical I/O、artifact constitution、gates、adjacency summary | step-by-step HOW |
| `CA-WP.md` | execution / acceptance / operator guidance source | `WP-MASTER`、`WP-001..004`、`RUNBOOK_WI` block、package truth / release stopline | Package D/E owner law、將 HOW 偷塞回 MC4+ |

### 5.3 內容分層禁令
- `CA-CORE.md` 不得重複大段 MC4+/WP-M 內容。
- `CA-MC4.md` 不得塞 HOW。
- `CA-WP.md` 不得偽裝成 Package D/E owner 規範。
- HOW 只能經 `RUNBOOK_WI` 區塊 route-out 到 `WP-RB-WI` / Ops。
- `SS_LBP Annex` 僅在複雜度確有需要時啟用；不得無限制膨脹。

### 5.4 Render / Validate Minimum Contract
- `REQUIRED_SOURCE = ["CA-CORE.md", "CA-MC4.md", "CA-WP.md", "meta.json"]`
- 任一檔缺席 → render 直接 fail-closed
- render 不得改寫 owner law
- render 不得替 sourcepack 補腦
- render 只可組裝，不可立法

### 5.5 Truthful Note for This Session
本回合 **已落地的是 sourcepack 的制度條文**，不是 sourcepack 四檔本體。  
可以宣稱：本冊已把 sourcepack 規格寫成可裁決條文。  
不可以宣稱：`meta.json / CA-CORE.md / CA-MC4.md / CA-WP.md` 已在本 ZIP 一併交付。

### 5.6 Obsidian support-frontstage authoring surface / `.base` placement
- Obsidian / Bases / Web Clipper 的正式法位固定為 `SUPPORT_FRONTSTAGE_ONLY`。
- 正確模式固定為 `repo-native mainline + Obsidian shadow frontstage`；render / validate / package truth 只讀 sourcepack 與 canonical sidecars，不讀 `.obsidian/**`、`notes/obsidian/**`、`.base/**` 當最終真相。
- `.base` 僅允許位於 support/frontstage 路徑，作為資料視圖 / review cockpit；不得作為 canonical artifact source。
- frontstage note 若要升格，必須先 materialize 成 sourcepack / canonical sidecar，再經 render / validate / package validation。
- `manifest exclusion` 固定包含 `.obsidian/**`、`notes/obsidian/**`、`.base/**`、`frontstage/obsidian/**`。

## 6. Docs-as-Code / Diátaxis / Retrieval Hygiene / AI-LLM Readability
<a id="retrieval-hygiene"></a>

### 6.1 Docs-as-Code 落地條款
本冊至少把以下 sidecars 視為 **machine-truth surfaces**：
- `exact_locator_registry.tsv`
- `upstream_closure_ledger.tsv`
- `replacement_ledger.tsv`
- `patch_resolution_ledger.tsv`
- `route_out_registry.json`
- `test_tracking_list.tsv`
- `tooling_decision_ledger.tsv`
- `canonical_crosswalk.json`
- `package_validation.json`

### 6.2 Diátaxis 分流條款
- **Reference / Explanation**：本冊保留制度、輸入輸出、gate、acceptance、rollback、stopline、truth split、route-out。
- **How-to / Tutorial**：一律 route-out 至 Ops RUNBOOK、WP-RB-WI、Package D 或 Package E。
- 本冊不是 workflow 工廠使用說明書，也不是 operator 手冊。

### 6.3 GraphRAG / RAPTOR / CRAG / RAG-Triad 最小落地設計
這些名詞在本冊只能以 **檢索與防遺漏工件** 的形式存在，禁止升格成 normative engine：
- `exact_locator_registry.tsv`
- `upstream_closure_ledger.tsv`
- `route_out_registry.json`
- `package_validation.json`
- `machine_summary.json`
- `support_web_registry.tsv/json`

### 6.4 Retrieval Hygiene 硬規則
- 優先：`FQ_DOC_ID + anchor / explicit section locator + line-span`
- 缺 source / 缺 anchor / 缺 owner / 缺 evidence / 缺 artifact proof → `UNVERIFIED / FAIL_CLOSED`
- review report 不得原封不動當正文；只能變成 patch driver
- support-only web 永遠不能變成 owner law
- rich-doc retrieval / multivector retrieval 只能當 support note，不可反客為主

### 6.5 Least-sufficient WP proof（最少數量、合理可行、覆蓋度 1.0）
- `WP-MASTER + WP-001..004` 已完整覆蓋 authority、ingress、neutrality/profile boundary、evidence/handoff/lineage、packaging/release stopline。
- 若再新增 `WP-005+`，只會把既有條文切碎或重複，反而增加審計與維護成本。
- 因此本冊對「最少數量、合理可行、工程覆蓋度 1.0、不膨脹」的裁決是：**維持五個主 fence，拒絕無故擴編。**

## 7. Audit Patch Resolution Ledger
<a id="patch-resolution"></a>
| audit_finding | gap | fix | landing | status |
|---|---|---|---|---|
| AUD-F001 | MANIFEST / CHECKSUMS mismatch | 以單一 build pipeline 重建 MANIFEST / CHECKSUMS；MANIFEST 不承載遞迴 hash；CHECKSUMS 明示 self-excluded policy | WP-004 §4 + `MANIFEST.json` + `CHECKSUMS.sha256` + `package_validation.json` | RESOLVED_PACKAGE_REBUILT |
| AUD-F002 | inventory truth split across delivery/machine/download descriptors | 定義 `MANIFEST.json` 為唯一 canonical inventory source；其餘 descriptors 由同一 inventory 派生 | WP-MASTER §16.3 + `delivery_manifest.json` + `machine_summary.json` + `download_inventory.json` | RESOLVED_PACKAGE_REBUILT |
| AUD-F003 | landing refs pointed to missing `WP-MASTER §5.6 / §6.5` | 新增 `§5.6` 與 `§6.5`，並重綁所有引用 | WP-MASTER §§5.6, 6.5 + related sidecars | RESOLVED_TRACEABILITY |
| AUD-F004 | hard rules missing in explicit normative wording | 補 `No-Validator-No-Release-Claim`、`One-Rule-One-Place`、`One-Rule-One-Owner`、`FOUND_LOCAL_CARRIER != standalone direct-readback`、`proxy-only != found`、`TEMP_CLOSED != solved` | WP-MASTER §2 + cover truth split block | RESOLVED_NORMATIVE |
| AUD-F005 | duplicate headings and malformed trailing fence | 重寫 preamble / WP-MASTER / CR-TT block；刪除重複 heading；每個 fence closing 獨立成行 | whole document mechanical structure | RESOLVED_STRUCTURE |
| AUD-F006 | weak Package E ceiling locator | 改以 `GCERM-PKGE-001` 作 Package E ceiling 核心依據 | locator matrix + closure ledger + route-out register | RESOLVED_EVIDENCE_STRENGTH |
| AUD-F007 | package_validation false-negative guard too weak | package_validation 增加 inventory parity / count parity / checksum cross-check / internal section ref checks | `package_validation.json` | RESOLVED_VALIDATION |
| AUD-F008 | least-sufficient WP proof had content but misbound landing | 保留 proof 並重綁至 `WP-MASTER §6.5` | WP-MASTER §6.5 + `upstream_closure_ledger.tsv` + `obsidian_policy_crosswalk.tsv` | RESOLVED_TRACEABILITY |

## 8. Old-to-New Replacement Matrix / HOW Stripping Proof
<a id="replacement-ledger"></a>
| legacy_id | legacy_surface | new_landing | disposition | note |
|---|---|---|---|---|
| LEG-00-COVER | r4/r5 cover/meta / truthful note | Cover Card §0 | REPLACED_AND_PATCHED | verdict split updated; audit patch basis absorbed |
| LEG-01-RULES | Reader guide lacked explicit hard rules | WP-MASTER §2 | REPLACED_AND_EXPANDED | adds missing hard rules and explicit inequalities |
| LEG-02-AUTH | authority stack overclaimed absent direct files | WP-MASTER §3 | REPLACED_AND_PATCHED | current mounted files only; missing direct blueprints stay TT-bound |
| LEG-03-LOCATOR | exact locator matrix included absent direct blueprint locators as CLOSED | WP-MASTER §4 + exact_locator_registry.tsv | REPLACED_AND_PATCHED | direct-readback first; missing direct files downgraded |
| LEG-04-SOURCEPACK | sourcepack law incomplete for frontstage authoring surface | WP-MASTER §5 | ABSORBED_AND_EXPANDED | adds `.base` / note/frontstage segregation |
| LEG-05-DOCS | Docs-as-Code / Diátaxis / AI readability | WP-MASTER §6 | ABSORBED_AND_EXPANDED | adds least-sufficient WP proof and retrieval hygiene |
| LEG-06-HOW | old WP HOW / RB / WI fragments | route_out_registry.json / replacement ledger | STRIPPED_AND_ROUTE_OUT | WP-M remains non-HOW |

### 8.1 Why no `WP-005+` in this edition
- `WP-MASTER + WP-001..004` 已覆蓋本冊全部必要責任面：authority、ingress、neutrality/profile boundary、evidence/handoff/lineage、packaging/release stopline。
- `WP-005+` 若存在，只會複製或切碎既有條文，並把 route-out / acceptance / stopline 關係變得更難審計。
- 因此本冊維持五個主 fence，拒絕無故擴編。

## 9. Upstream Requirement Closure Ledger（以已掛載來源為準；缺件 fail-closed）
<a id="upstream-closure"></a>
| req_id | parent_requirement | child_requirement | source_locator | landing | verdict | gap_or_tt | notes |
|---|---|---|---|---|---|---|---|
| REQ-001A | BOOK_SYSTEM | 只交付 WP-M，不冒充 WP-RB-WI / WP-FULL 已完成 | LIVE-TASK-001 | Cover Card + CR/TT block | CLOSED |  | 書系職責分明 |
| REQ-001B | BOOK_SYSTEM | canonical minimum fixed to `WP-MASTER + WP-001..004` | LIVE-TASK-001 | WP-MASTER §6.5 | CLOSED |  | 最小充分解明文化 |
| REQ-002A | MC4PLUS | `ART-DSL-SPEC / art_dsl_spec.json` constitutional landing | GCERM-DSL-001 + SSOT-DSL-001 | WP-001 §§1-5 | CLOSED |  | canonical identity settled |
| REQ-002B | MC4PLUS | schema/purity/triplet/handoff evidence minimum settled | GCERM-ART-001 + SSOT-DSL-001 | WP-001..003 | CLOSED |  | runtime truth仍待 owner readback |
| REQ-003A | OWNER_BASELINE | current owner baseline scope/Obsidian policy absorbed | OWNER-MC4-OBS-001 + OWNER-MC4-BOOKSYS-001 | WP-MASTER §§3,5.6,16 | CLOSED |  | 以現行已掛載 owner baseline 為準 |
| REQ-004A | GCERM | hard rules explicitly landed | GCERM-RULE-001 + GCERM-OWNER-001 + LIVE-TASK-001 | WP-MASTER §§2-3.4 | CLOSED |  | 含 one-rule-one-place / owner / no-validator-no-release-claim |
| REQ-005A | SSOT | Pipeline-A terminal / Pipeline-B spec entry landed | SSOT-DSL-001 | WP-MASTER §3.5 | CLOSED |  |  |
| REQ-006A | LBP | Evidence Triplet / locator proof / TT discipline landed | LBP-ADR-001 | WP-MASTER §§4,15; WP-003 | CLOSED |  |  |
| REQ-007A | PACK_GUIDE / GCERM | Package D/E owner ceiling maintained with strong locator | GCERM-PKGE-001 + PACKGUIDE-FQDOC-001 | WP-MASTER §3.4; WP-004 | CLOSED |  | Package E rebound from weak locator |
| REQ-008A | SUBP1 | document retrievability rules landed | SUBP1-DOCRET-001 | WP-MASTER §6 | CLOSED |  |  |
| REQ-009A | INDEX_PACK | exact locator quality / UNVERIFIED / FAIL_CLOSED guard landed | INDEXPACK-ANTI-001 | WP-MASTER §§2,4,16 | CLOSED |  |  |
| REQ-010A | OBSIDIAN_BLUEPRINT | support-frontstage legal position / repo-as-vault / manifest exclusion landed | OBS-BLUEPRINT-FAM-001 | WP-MASTER §§3,5.6,16 | CLOSED_WITH_BOUNDARY |  | support-only，不升格 |
| REQ-010B | OBSIDIAN_BLUEPRINT | TT-OBS regression set and fail-closed conclusion landed | OBS-BLUEPRINT-TT-001 | WP-MASTER §15 + CR/TT block | CLOSED_WITH_BOUNDARY |  | runtime/release 仍 fail-closed |
| REQ-011A | DIRECT_BLUEPRINT_FILES | absent standalone final blueprints must not be overclaimed | OWNER_BLUEPRINT_DIRECT_MISSING + PIPELINE_BLUEPRINT_DIRECT_MISSING | CR/TT fenced block | TEMP_CLOSED | TT-CADSL-WPM-010 | filename known, direct readback absent |
| REQ-012A | PACKAGING | md + zip + mandatory sidecars truly materialized | LIVE-TASK-001 + AUDIT-R1-001 | WP-MASTER §17 + package root | CLOSED |  | package truth rebuilt from actual files |
| REQ-012B | PACKAGING | package completion not equal promotion permission | LIVE-TASK-001 + OBS-BLUEPRINT-TT-001 | Cover Card + WP-MASTER §§14-16 + WP-004 | CLOSED |  | no fake release claim |

## 10. Ops Support Absorption Ledger
<a id="ops-support-absorption"></a>
| ops_absorb_id | source_doc | why_used | what_is_absorbed | what_must_remain_route_out | landing_wp | owner_ceiling | evidence_or_tt |
|---|---|---|---|---|---|---|---|
| OPS-ABS-001 | Spartoi-OMOC_ops RB + WI / SubP1 Ops RUNBOOK | Ops precedence / high-order HOW owner ceiling | precedence and route-out target existence only | exact HOW / operator choreography | WP-MASTER §10 | Ops | route_out_only |
| OPS-ABS-002 | OP-04 baseline_v1.vpc.yaml + MarketProfile + L10N-EX | adjunct surface exists and MarketProfile is referenced | baseline_v1.vpc.yaml remains adjunct; MarketProfile indirect binding preserved | L10N-EX exact thresholds and overlap choreography | WP-002 §§1,5,9 | Ops | route_out_only |

## 11. Support Absorption Ledger（C-class / support-only）
<a id="support-absorption"></a>
| support_absorb_id | source_doc | why_used | what_is_absorbed | what_must_not_be_promoted | landing_wp | status |
|---|---|---|---|---|---|---|
| SUP-ABS-001 | SEM³資料參考_合冊.md | Index Contract / Anti-Hallucination Guard | DOC_ID + canonical anchor + line_start discipline | normative upgrade or owner override | WP-MASTER §11 | support-only |
| SUP-ABS-002 | Pipeline-A設計資料參考_合冊.md | CA-DISTILL & CA-DSL 升級方案 | schema-constrained generation + evidence-chain hardening rationale | authoritative owner constitution | WP-MASTER §11 | support-only |
| SUP-ABS-003 | Pipeline-A實作資料參考_合冊.md | ASCII-safe thin-script fragment | thin-script-allowed local guard pattern only | replace native/minimal tools | WP-MASTER §13 | support-only |
| SUP-ABS-004 | 台股實戰映射_合冊.md | Signal DSL → XS architecture caution | downstream execution adjacency only | execution semantics in CA-DSL core | WP-MASTER §12 | support-only |
| SUP-ABS-005 | 多模態多向量圖像檢索技術指南_筆記.txt | ColPali/Qdrant storage bottleneck and compression burden | justify REJECT/SUPPORT_ONLY for heavy multivector retrieval in CA-DSL core | becoming canonical owner path | WP-MASTER §13 | support-only |
| SUP-ABS-006 | Pipeline-A_Obsidian升級藍圖.md | support-frontstage legal position / no-promotion / `.base` placement / TT-OBS shell | support-frontstage landing, path segregation, manifest exclusion, promotion-smoke guard, regression expectations | promoting Obsidian/Bases/Web Clipper to canonical truth, validator, required checks authority, runtime truth, or release truth | WP-MASTER §§3,5.6,15,16 | support-only |

## 12. Interface / Adjacency / Handoff Overview
<a id="adjacency"></a>
| handoff | payload | producer | consumer | pass_condition | fail_closed |
|---|---|---|---|---|---|
| CA-DISTILL -> CA-DSL | `ART-DISTILL-BASE` + `dsl_handoff_payload.json` | CA-DISTILL | CA-DSL | ingress payload exists and traceable | payload missing / unsupported primitive -> stop |
| CA-DSL -> CA-METHOD | `ART-DSL-SPEC` + `schema_report.json` + `purity_report.json` + `trace_refs` + `market_profile_id` | CA-DSL | CA-METHOD | schema+purity+trace+profile resolve PASS | alias-only input / unresolved profile / broken trace |
| CA-DSL -> local ops surface | `baseline_v1.vpc.yaml` + `dsl_mapping.json` | CA-DSL | Ops/local stage | adjunct assets align to canonical spec and profile | adjunct treated as canonical |
| CA-DSL -> GOVERN/replay | `verdict.json` + `index.json` + `bundle/` + RunLedger row | CA-DSL | GOVERN / replay | triplet complete and ledger persisted | missing triplet / missing RunLedger |

### 12.1 Canonical Artifact / Path / Data Backbone Settlement
| artifact | role | canonical | path | note |
|---|---|---|---|---|
| `ART-DSL-SPEC` | semantic subsystem artifact identity | YES | n/a | canonical 主鍵 |
| `art_dsl_spec.json` | canonical concrete file | YES | `data/pipeline-a/dsl_ssot/art_dsl_spec.json` | hash / ledger / handoff binding |
| `dsl_schema.json` | compatibility alias | NO | derived copy | 不可單獨成為 handoff 主鍵 |
| `baseline_v1.vpc.yaml` | adjunct asset | NO | `data/pipeline-a/dsl_ssot/baseline_v1.vpc.yaml` | must reference canonical/profile |
| `dsl_mapping.json` | adjunct asset | NO | `data/pipeline-a/dsl_ssot/dsl_mapping.json` | evidence/support |
| `schema_report.json` | runtime evidence | REQUIRED | `evidence/dsl/<run_id>/schema_report.json` | schema gate |
| `purity_report.json` | runtime evidence | REQUIRED | `evidence/dsl/<run_id>/purity_report.json` | purity gate |
| `verdict.json` | triplet | REQUIRED | `evidence/dsl/<run_id>/verdict.json` | runtime minimum |
| `index.json` | triplet | REQUIRED | `evidence/dsl/<run_id>/index.json` | trace index |
| `bundle/` | triplet bundle | REQUIRED | `evidence/dsl/<run_id>/bundle/` | replay/audit |
| RunLedger row | append-only lineage | REQUIRED | `runledger/ledger.sqlite` | delete/edit forbidden |

## 13. Tool Adoption / Backup / Reject Matrix
<a id="tooling"></a>

### 13.1 No-wheel priority order
1. 現成工具原生能力  
2. 現成工具 + 極少配置  
3. 薄腳本（只准包裝驗證或 package truth 類微薄工作）  
4. backup-only  
5. support-only  
6. reject  

### 13.2 Tool Decision Ledger
| tool | decision | policy_rank | reason | evidence_class |
|---|---|---|---|---|
| filesystem + Markdown | ADOPT_NATIVE | 1 | files-first / auditable / low-friction / repo-native mainline | INTERNAL_NORMATIVE |
| Python stdlib + thin scripts | THIN_SCRIPT_ALLOWED | 3 | only for checksum / manifest / package validation / zip materialization after native options are exhausted | INTERNAL_NORMATIVE |
| JSON Schema | ADOPT_NATIVE | 1 | canonical contract language; no custom schema DSL needed | INTERNAL_NORMATIVE |
| SQLite | ADOPT_NATIVE | 1 | single-file RunLedger / registry store; low operational friction | INTERNAL_NORMATIVE |
| Dev Container Specification / `devcontainer.json` | ADOPT_MINIMAL_CONFIG | 2 | official, deterministic dev environment contract; fits repo-native mainline | SUPPORT_OFFICIAL |
| GitHub Actions / rulesets / required checks / merge queue | ROUTE_OUT_OWNER_SUPPORT | 2 | official CI / release shell exists, but Package D/E still own required checks and release truth | SUPPORT_OFFICIAL |
| Obsidian Bases / Web Clipper | ALLOWED_SUPPORT_FRONTSTAGE_ONLY | 5 | useful as frontstage, never correctness owner | SUPPORT_OFFICIAL |
| Obsidian community plugins | OPTIONAL_NEVER_REQUIRED | 5 | third-party code risk / drift means optional only | SUPPORT_OFFICIAL |
| heavy multivector retrieval stack | REJECT_FOR_CA_DSL_CORE | 6 | wrong owner layer, higher friction, retrieval-heavy shape conflicts with CA-DSL core remit | SUPPORT_REFERENCE + INTERNAL_BOUNDARY |

### 13.3 Must-run gates declared by this family
- `sourcepack_schema_check`
- `registry_sync_check`
- `render_complete_check`
- `anchor_truth_check`
- `package_truth_check`
- `proof_presence_check`
- `instructions_sync_check`
- `release_blocker_check`

### 13.4 Reject logic
- 沒有 native/minimal option 的理由，不准直接跳到自寫框架
- heavy OCR/parser/retrieval tower 不得成為 CA-DSL core correctness owner
- sandbox/agent harness 不得替代 validator / release_guard / owner acceptance

## 14. Truthful Status Vocabulary / Gate Graph / Rollback Graph
<a id="truth-vocabulary"></a>

### 14.1 Truthful Status Vocabulary
| layer | meaning | verdict |
|---|---|---|
| document | 本冊正文、法位、WP 結構、locator、sidecars、package descriptors 已物化且驗證 | PASS_PATCHED_WITH_GUARDS |
| engineering | owner/bridge/locator/acceptance/route-out 已正文化，可支撐後續施工與 re-audit | READY_PATCHED_WITH_AUDIT_FIXES |
| runtime | 本冊只定義必備 runtime artifacts / gates；本回合未生成真機證據 | FAIL_CLOSED / CONTRACT_ONLY |
| release | 缺 Package D required checks proof、Package E validator/release_guard/owner acceptance，嚴禁 promotion | BLOCK_RELEASE |

### 14.2 Gate Graph
`GATE-INGRESS-CONTRACT -> GATE-SCHEMA -> GATE-DSL-PURITY -> GATE-EVIDENCE-TRIPLET -> GATE-HANDOFF-LINEAGE -> GATE-DELIVERY-PACK -> GATE-RELEASE-STOPLINE`

### 14.3 Rollback Graph
- ingress/schema fail → reject handoff / keep prior canonical digest  
- purity/profile fail → revert profile binding / invalidate adjunct set  
- triplet/lineage fail → reject METHOD handoff / do not write release-facing bundle  
- package invalid / D/E proof missing → keep `BLOCK_RELEASE` / invalidate bundle descriptors  

## 15. Release Stopline / CR_OPEN Temporary Closure / Test Tracking
<a id="release-stopline"></a>

### 15.1 Block-release conditions
- 缺 canonical ingress  
- 缺 `art_dsl_spec.json`  
- 缺 `schema_report.json` 或 `purity_report.json`  
- 缺 `verdict.json` / `index.json` / `bundle/`  
- 缺 RunLedger row  
- 缺 Package D exact required-check proof  
- 缺 Package E validator / release_guard / owner acceptance  
- 任何 alias 被冒充為 canonical  
- 任何 HOW 偷渡回 WP-M  
- 任何 package descriptor 與實際 ZIP 內容不一致  

### 15.2 CR_OPEN truth
本冊不保留漂浮的 `CR_OPEN`。所有未閉合項一律轉成 **TEMP_CLOSED + TT + BLOCK_RELEASE truth**。  
這不是拖延；這是避免把「尚未驗證」寫成「已完成」。

### 15.3 Current TT register
| tt_id | why_temp_closed | test_probe | close_criteria | reopen_trigger | rollback_trigger | owner | priority | related_wp | blocker_level |
|---|---|---|---|---|---|---|---|---|---|
| TT-CADSL-WPM-001 | runtime artifacts are defined here but not materialized in this package | run owner repo build to generate schema/purity/triplet outputs under evidence/dsl/<run_id>/ | runtime artifact set exists and readback passes | runtime build or owner proof becomes available | schema/purity/triplet missing or hash mismatch | CA-DSL + Package D/E | CRITICAL | WP-001/WP-002/WP-003 | runtime_blocker |
| TT-CADSL-WPM-002 | Package D exact required checks proof not mounted in this workspace | read Package D canonical required-check report and compare against must_run_gates | required-check proof exists and matches route_out contract | Package D publishes canonical proof | required checks absent / red / unverifiable | Package D | CRITICAL | WP-004 | release_blocker |
| TT-CADSL-WPM-003 | Package E validator / release_guard / owner acceptance absent | read validator report / release_guard / owner acceptance from Package E | validator + release_guard + acceptance all present and passing | Package E proof becomes available | any release proof absent or failing | Package E | CRITICAL | WP-004 | release_blocker |
| TT-CADSL-WPM-004 | consumer exact schema for CA-METHOD not independently read back | diff method ingress contract against CA-METHOD owner book | consumer schema exactness read back and accepted | CA-METHOD owner contract updates | handoff contract drift or alias-only handoff | CA-METHOD owner | HIGH | WP-003 | engineering_guard |
| TT-CADSL-WPM-005 | Package B authoritative schema / registry truth not independently re-read | compare local bridge settlement with Package B owner registry | Package B exact schema + registry accepted | Package B publishes updated owner truth | schema owner drift or registry mismatch | Package B / ICD owner | HIGH | WP-001 | engineering_guard |
| TT-CADSL-WPM-006 | support-only tooling freshness can drift over time | re-check official docs in support_web_registry | official docs still support current adopt/backup/reject decisions | official docs change materially | tooling contract or maturity changes materially | DocOps / Tooling steward | LOW | WP-MASTER | support_guard |
| TT-CADSL-WPM-007 | historical parity remains document-layer only because old WP history file is missing | if old file rematerializes, perform clause-by-clause diff and recut | historical parity evidence set complete | missing file appears in workspace | parity claim exceeds exact evidence | Doc owner | LOW | WP-MASTER | nonblocking_history |
| TT-CADSL-WPM-008 | Obsidian sourcepack editing path is documented but not runtime-proven in this package | edit sourcepack from repo-native vault, then run render/validate/package smoke | sourcepack edit path readback passes without using note/frontstage as canonical input | sourcepack layout, `.base` placement, or promotion path changes | sourcepack edit requires note/frontstage to pass | CA-DSL owner + frontstage maintainer | MEDIUM | WP-MASTER / WP-002 | engineering_guard |
| TT-CADSL-WPM-009 | mainline-without-Obsidian and manifest-exclusion are policy-only in this package | run render/validate/CI with Obsidian closed and confirm manifest excludes `.obsidian/**`, `notes/obsidian/**`, `.base/**` | CI/mainline succeeds without Obsidian and package tree stays clean | manifest rules or minimal frontstage assumptions change | canonical/package-truth starts depending on Obsidian UI/plugin | Package D / DocOps | MEDIUM | WP-MASTER / WP-004 | support_guard |
| TT-CADSL-WPM-010 | requested standalone final blueprints are not mounted, only filename lineage is known | mount standalone blueprint files and rebind exact locators | source-class upgraded from filename-only to direct-readback | blueprint files appear or source-class changes | package claims standalone direct-readback without files | central / subsystem owners | MEDIUM | WP-MASTER | evidence_guard |

## 16. Fence Index / Route-Out Register / Verification Loop / Packaging Truth Boundary
<a id="fence-index"></a>

### 16.1 Fence index
- `WP-MASTER`：制度、法位、邊界、sourcepack、retrieval hygiene、patch resolution、truth split、route-out、TT、packaging truth
- `WP-001`：contract intake / canonical bridge / schema foundation
- `WP-002`：primitive neutrality / MarketProfile binding / adjunct split
- `WP-003`：triplet / handoff / lineage / RunLedger
- `WP-004`：packaging / delivery / release stopline

### 16.2 Route-Out Register
| route_out_id | owner | subject | local_ceiling | local_entrypoints | why |
|---|---|---|---|---|---|
| RO-PKGB-001 | Package B / ICD | authoritative schema / registry truth / evidence schema | bridge / stopline / compatibility note only | WP-001 §9, WP-MASTER §13.1 | schema owner cannot be re-legislated inside WP-M |
| RO-PKGD-001 | Package D | required checks / merge queue / factory HOW / workflow choreography | must_run_gates declaration only | WP-004 §8, WP-MASTER §13.1 | factory implementation details are out of scope for WP-M |
| RO-PKGE-001 | Package E | validator / release_guard / owner acceptance / promotion permission | block-release contract only | WP-004 §8, WP-MASTER §15 | release truth cannot be inferred from document completeness |
| RO-OPS-001 | Ops RUNBOOK | OP-04 exact choreography / L10N-EX / operator click path / scenario steps | adjunct-only output contract + evidence expectations | WP-002 §9, WP-MASTER §10 | HOW remains in Ops high-order books |
| RO-METHOD-001 | CA-METHOD | consumer exact schema / final handoff acceptance | handoff payload minimum only | WP-003 §10 | consumer owner wins on interpretation |

### 16.3 Packaging truth boundary
- 本回合 package 只代表 **document package**。
- `MANIFEST.json` 是唯一 canonical inventory source；`delivery_manifest.json`、`machine_summary.json`、`download_inventory.json` 皆由它派生。
- `CHECKSUMS.sha256` 依規則 **不對自己做自我遞迴雜湊**；這是明示規則，不是漏算。
- `bundle_tree.txt` 為 canonical tree text；`package_tree.txt` 為交付相容別名，內容與 `bundle_tree.txt` 同步。
- `package_validation.json` 會檢查：required files、inventory parity、count parity、checksums parity、manifest/delivery/machine/download 一致性、重複 heading、尾端 fence 完整性。
- 不得把未物化的 `WP-RB-WI`、`WP-FULL`、runtime evidence、owner proofs 寫進 `delivered=true`。

### 16.4 Verification Loop
- 是否真的只交付 WP-M，而不是混回 WP_BUNDLE？ → **是**
- 是否真的完成 `WP-MASTER + WP-001..004`？ → **是**
- 是否真的把舊版 HOW / RB / WI 分流出去？ → **是，且有 replacement ledger + route_out_registry.json**
- 每個重大主張是否有內部來源承接？ → **是，全文以 exact locators 綁定**
- 最新外部資料是否明確標註 support-only？ → **是**
- 是否把 document/runtime/release truth split 說清楚？ → **是**
- 是否真的產出 MD 與 ZIP 與 sidecars？ → **是**
- ZIP 內容是否經 package truth 驗證？ → **是，以 `package_validation.json` readback**

## 17. Machine-readable Sidecars / Authoritative Tables in This Package
<a id="machine-sidecars"></a>

- `MANIFEST.json`
- `CHECKSUMS.sha256`
- `BUILD.md`
- `delivery_manifest.json`
- `machine_summary.json`
- `bundle_tree.txt`
- `package_tree.txt`
- `package_validation.json`
- `canonical_crosswalk.json`
- `exact_locator_registry.tsv`
- `subsource_decomposition_ledger.tsv`
- `support_absorption_ledger.tsv`
- `ops_support_absorption_ledger.tsv`
- `replacement_ledger.tsv`
- `upstream_closure_ledger.tsv`
- `interface_closure_matrix.tsv`
- `patch_resolution_ledger.tsv`
- `tooling_decision_ledger.tsv`
- `cr_open_temporary_closure_ledger.tsv`
- `test_tracking_list.tsv`
- `route_out_registry.json`
- `support_web_registry.tsv`
- `support_web_registry.json`
- `obsidian_policy_crosswalk.tsv`
- `frontstage_path_registry.json`
- `naming_registry.tsv`
- `adoption_matrix.tsv`
- `download_inventory.json`

## 18. Support-only Appendix pointer
- 以本冊後段的 `[WP_FENCE_BEGIN:Support-only Appendix]` 區塊與 `support_web_registry.tsv/json` 為唯一 canonical support-only appendix。

[WP_FENCE_END:WP-MASTER]

[WP_FENCE_BEGIN:WP-001]

# WP-001 — Contract Intake / Canonical Bridge / Schema Foundation

## 1. Purpose / Boundary
- 目的：把上游 `ART-DISTILL-BASE` 與 `dsl_handoff_payload.json` 正規化為唯一 canonical semantic artifact `ART-DSL-SPEC`，並落成唯一 canonical concrete file `art_dsl_spec.json`。
- 邊界：本 WP 只處理 ingress contract、canonical/alias law、schema validation、ingress rollback、handoff precondition。
- 不做：方法決策、交易執行語義、平台適配、Package B 終局 schema 立法、Package D/E proof 自證。

## 2. Upstream Mapping
| upstream source | absorbed obligation |
|---|---|
| 正文合冊 9.4 CA-DSL | primitive library / DSL spec / evidence-rule-interface / fail-closed |
| SSOT ARCH 4.4 | DSL Generator / schema binding / Artifact Packager |
| CA-DSL blueprint r3 | canonical outputs、paths、sourcepack-linked book roles |
| CA-DSL MC4+ | FR-DSL-002 / 005 / 007 / acceptance IDs MAI-DSL-001..002 / canonical law |
| old WP-001 | legacy bridge body recut, HOW stripped |

## 3. Canonical Inputs
- `ART-DISTILL-BASE`
- `dsl_handoff_payload.json`
- Package B / ICD owner schema refs
- prior canonical digest
- trace refs / generated_from

## 4. Canonical Outputs
- `ART-DSL-SPEC`
- `data/pipeline-a/dsl_ssot/art_dsl_spec.json`
- `evidence/dsl/<run_id>/ingress_contract_check.json`
- `evidence/dsl/<run_id>/schema_report.json`
- `canonical_crosswalk.json`
- optional alias note for `dsl_schema.json`

## 5. Canonical / Alias Rule
| item | legal posture | note |
|---|---|---|
| `ART-DSL-SPEC` | semantic canonical identity | subsystem output identity |
| `art_dsl_spec.json` | canonical local concrete file | hash / ledger / handoff binding |
| `dsl_schema.json` | compatibility alias only | never canonical; never sole handoff key |

## 6. Gate
| gate | purpose | minimum pass condition | fail-closed |
|---|---|---|---|
| `GATE-INGRESS-CONTRACT` | 驗上游 payload shell 與 traceability | input pointer exists / upstream refs present / prior digest resolvable | input missing or unsupported primitive -> stop |
| `GATE-SCHEMA` | 驗 canonical spec 結構與欄位合法性 | `schema_report.json` exists and pass | schema fail -> block handoff / block promotion |

## 7. Acceptance
| acceptance_id | requirement | minimum evidence |
|---|---|---|
| `MAI-DSL-001` | canonical spec exists | `art_dsl_spec.json` |
| `MAI-DSL-002` | schema valid | `schema_report.json` |
| `MAI-DSL-008-pre` | handoff key uses canonical file, not alias | ingress/handoff payload references canonical file |

## 8. Rollback
- canonical ingress fail → reject handoff and keep prior canonical digest  
- schema fail → invalidate current spec draft; do not write release-facing descriptors  
- alias/canonical confusion → delete alias outputs and rebuild from canonical source only  

## 9. Route-out
- Package B / ICD：authoritative schema、evidence schema、registry truth  
- LBP-B：exact field contract parity  
- Package E：consumer acceptance cannot be inferred here  

## 10. TT / Reopen Rules
- reopen when consumer exact schema or Package B owner schema conflicts with current bridge  
- rollback when `art_dsl_spec.json` absent, alias overclaims canonicality, or `schema_report.json` fails  

[WP_FENCE_END:WP-001]

[WP_FENCE_BEGIN:WP-002]

# WP-002 — Primitive Neutrality / MarketProfile Binding

## 1. Purpose / Boundary
- 目的：確保 CA-DSL core 保持 **primitive neutrality**，市場常數只透過 `MarketProfile / market_profile_id` 間接綁定；並把本地操作面 `baseline_v1.vpc.yaml` / `dsl_mapping.json` 固定為 adjunct assets，不得偽裝成 canonical output。
- 邊界：本 WP 只處理 purity、profile resolve、adjunct split、OP-04 reconciliation boundary。
- 不做：把 OP-04 操作細節或 L10N-EX 步驟搬進 WP-M；那是 Ops 的地盤。

## 2. Upstream Mapping
| upstream source | absorbed obligation |
|---|---|
| 正文合冊 9.4 | 市場中立 / 平台中立 / constants isolation |
| SSOT ARCH 4.4 | MarketProfile Binder responsibility |
| Ops RUNBOOK OP-04 | baseline_v1.vpc.yaml 含 MarketProfile 引用；L10N-EX/候選規則只 route-out |
| CA-DSL MC4+ | FR-DSL-003 / 004 / 006 / 008 / 014 |
| old WP-002 | neutrality / profile binding / OP-04 reconciliation skeleton |

## 3. Canonical Inputs
- `data/pipeline-a/dsl_ssot/art_dsl_spec.json`
- `market_profile_id` / MarketProfile refs
- OP-04 adjunct refs
- profile/reference revision pointer

## 4. Canonical Outputs
- `evidence/dsl/<run_id>/purity_report.json`
- `evidence/dsl/<run_id>/profile_resolve_note.json`
- `data/pipeline-a/dsl_ssot/baseline_v1.vpc.yaml`
- `data/pipeline-a/dsl_ssot/dsl_mapping.json`
- adjunct refresh result

## 5. Neutrality Rules
- DSL core 不得內嵌交易時段、漲跌幅、交易成本、broker/XQ 特定欄位語義。
- 市場常數只經 `MarketProfile / market_profile_id` 間接綁定。
- `baseline_v1.vpc.yaml` 與 `dsl_mapping.json` 可存在，但永遠不能替代 `ART-DSL-SPEC @ art_dsl_spec.json`。
- OP-04 的 L10N-EX / 事件旗標 / 操作摘要僅屬操作面；本冊只保留 route-out 與證據要求。

## 6. Gate
| gate | purpose | minimum pass condition | fail-closed |
|---|---|---|---|
| `GATE-DSL-PURITY` | no-hardcoded-market-constants / no unauthorized execution semantics | `purity_report.json` exists and pass | literal market constant or execution semantic drift -> purity fail |
| profile resolve check | 檢查 `market_profile_id` 可解析 | profile pointer resolvable | unresolved profile -> purity fail / block handoff |

## 7. Acceptance
| acceptance_id | requirement | minimum evidence |
|---|---|---|
| `MAI-DSL-003` | purity valid | `purity_report.json` |
| `MAI-DSL-004` | profile resolved | profile pointer / resolution note |
| `MAI-DSL-009` | local adjunct assets aligned | baseline/mapping assets generated and linked |
| `MAI-DSL-010` | no execution drift | core body contains no ordering/fill/broker semantics |

## 8. Rollback
- profile unresolved → revert profile binding / invalidate adjunct set  
- purity fail → reject METHOD handoff and keep current run non-promotable  
- adjunct overclaim → delete invalid baseline/mapping outputs and rebuild with canonical alignment  

## 9. Route-out
- Ops RUNBOOK：OP-04 steps / L10N-EX exact choreography / event flags  
- MarketProfile owner / ReferenceDB owner：profile truth and revision policy  
- Package B / LBP-E：exact fitness thresholds and schema discipline  

## 10. TT / Reopen Rules
- reopen when profile schema/revision materially changes  
- rollback when `market_profile_id` becomes unresolved or adjunct assets drift from canonical spec  

[WP_FENCE_END:WP-002]

[WP_FENCE_BEGIN:WP-003]

# WP-003 — Evidence Triplet / Handoff / Lineage / RunLedger

## 1. Purpose / Boundary
- 目的：把 canonical spec、reports 與 lineage 寫成 Evidence Triplet + Handoff + RunLedger 的可回放契約。
- 邊界：只處理 triplet completeness、trace continuity、METHOD handoff、RunLedger append-only linkage、ReferenceDB pointer note。
- 不做：consumer exact schema owner decision、validator / release_guard 自證。

## 2. Upstream Mapping
| upstream source | absorbed obligation |
|---|---|
| 正文合冊 8.2 / 8.3 | ReferenceDB / RunLedger central-only / evidence minimum |
| LBP | triplet contract / expected artifacts / locator proof / TT-based evidence indexing |
| CA-DSL MC4+ | FR-DSL-009..013 / verdict/index/bundle / RunLedger row |
| old WP-003 | triplet / handoff / lineage / RunLedger skeleton |

## 3. Canonical Inputs
- `ART-DISTILL-BASE`
- `dsl_handoff_payload.json`
- `art_dsl_spec.json`
- `schema_report.json`
- `purity_report.json`
- profile/reference revision pointer
- prior ledger state

## 4. Canonical Outputs
- `evidence/dsl/<run_id>/verdict.json`
- `evidence/dsl/<run_id>/index.json`
- `evidence/dsl/<run_id>/bundle/`
- RunLedger row in `runledger/ledger.sqlite`
- `evidence/dsl/<run_id>/run_manifest.json`
- `evidence/dsl/<run_id>/refdb_manifest.json`
- `evidence/dsl/<run_id>/method_ingress_handoff.json`

## 5. Evidence Triplet Contract
最小 evidence contract：
- `verdict.json`
- `index.json`
- `bundle/`
- `schema_report.json`
- `purity_report.json`
- `run_manifest.json`
- RunLedger row
- profile/reference revision pointer
- optional alias parity note（若產生 alias）

## 6. Handoff Contract
- handoff 對下游 CA-METHOD 的最小集合：canonical spec + schema report + purity report + `market_profile_id` + `trace_refs` + adjunct refs（若有，但不得替代 canonical）。
- 只要出現 alias-only input、unresolved profile、broken trace、missing RunLedger row，handoff 一律不得成立。
- `method_ingress_handoff.json` 必須引用 canonical concrete file，而非 compatibility alias。

## 7. Gate
| gate | purpose | minimum pass condition | fail-closed |
|---|---|---|---|
| `GATE-EVIDENCE-TRIPLET` | 驗 verdict/index/bundle completeness | triplet complete | any missing -> no runtime pass |
| `GATE-HANDOFF-LINEAGE` | 驗 trace continuity / ledger linkage / canonical handoff | handoff payload references canonical file; RunLedger row persisted | lineage broken / alias-only handoff / ledger failure |

## 8. Acceptance
| acceptance_id | requirement | minimum evidence |
|---|---|---|
| `MAI-DSL-005` | traceable | `index.json` with `trace_refs` |
| `MAI-DSL-006` | triplet complete | `verdict.json`, `index.json`, `bundle/` |
| `MAI-DSL-007` | run closure persisted | RunLedger row / `run_manifest.json` |
| `MAI-DSL-008` | handoff integrity | `method_ingress_handoff.json` references canonical file |
| `MAI-DSL-011` | MSG-ready downstream handoff | canonical spec + reports + adjunct refs present |
| `MAI-DSL-012` | TVG-ready downstream handoff | canonical spec + externalized profile + trace continuity + adjunct refs present |

## 9. Rollback
- triplet incomplete → reject handoff / do not write release-facing bundle  
- RunLedger write fail → mark build incomplete / no promotion  
- alias-only handoff → invalidate handoff pack and regenerate from canonical file  

## 10. Route-out
- Package E：validator / release_guard / promotion proof  
- CA-METHOD：consumer exact schema / final acceptance  
- GOVERN / central data backbone：ReferenceDB / ledger governance details  

## 11. TT / Reopen Rules
- reopen when consumer acceptance contract changes or ledger schema drifts  
- rollback when triplet incomplete, canonical hash mismatch, or trace continuity breaks  

[WP_FENCE_END:WP-003]

[WP_FENCE_BEGIN:WP-004]

# WP-004 — Packaging / Delivery / Release Stopline

## 1. Purpose / Boundary
- 目的：把 WP-M 主文、ledgers、route-out、TT 與 package descriptors 整理成 truthful document package，並把 release stopline 寫死。
- 邊界：本 WP 只處理 document package、delivery manifest、checksums、build note、tree text、package validation、release blocker record。
- 不做：workflow reality 自證、validator 自證、release_guard 自證。

## 2. Canonical Inputs
- WP-M main body
- exact locator / closure / replacement / patch / ops-support / TT sidecars
- route-out registry
- canonical crosswalk
- package metadata

## 3. Canonical Outputs
- `MANIFEST.json`
- `CHECKSUMS.sha256`
- `BUILD.md`
- `delivery_manifest.json`
- `machine_summary.json`
- `bundle_tree.txt`
- `package_tree.txt`
- `package_validation.json`
- blocker / route-out record

## 4. Packaging Truth Rules
- 本回合 package 只代表 **document package**。
- `MANIFEST.json` 是唯一 canonical inventory source；列出本工作區實際物化的檔名與 bytes；hash truth 由 `CHECKSUMS.sha256` 提供。
- `CHECKSUMS.sha256` **排除對自己做自我遞迴雜湊**；這是明示規則，不是漏算。
- `delivery_manifest.json`、`machine_summary.json`、`download_inventory.json` 必須由同一份 manifest inventory 派生，禁止手工多頭維護。
- `delivery_manifest.json` 必須包含 `CHECKSUMS.sha256`、`bundle_tree.txt`、`package_tree.txt` 與 `package_validation.json`。
- `bundle_tree.txt` 為 canonical tree；`package_tree.txt` 為交付相容別名，內容須同步。
- 不得把未物化的 `WP-RB-WI`、`WP-FULL`、runtime evidence、owner proofs 寫進 `delivered=true`。

## 5. Gate
| gate | purpose | minimum pass condition | fail-closed |
|---|---|---|---|
| `GATE-DELIVERY-PACK` | package descriptors complete and truthful | manifest/checksums/build/delivery_manifest/machine_summary/download_inventory/bundle_tree/package_tree/package_validation all exist and match | any missing / checksum mismatch / inventory parity failure / false deliver claim |
| `GATE-RELEASE-STOPLINE` | prevent fake release readiness | Package D required checks proof + Package E validator/release_guard/acceptance all present | any missing proof -> BLOCK_RELEASE |

## 6. Acceptance
| acceptance_id | requirement | minimum evidence |
|---|---|---|
| `PKG-001` | document package materialized | main markdown + ZIP |
| `PKG-002` | descriptors complete | `MANIFEST.json`, `CHECKSUMS.sha256`, `BUILD.md`, `delivery_manifest.json` |
| `PKG-003` | machine projection present | `machine_summary.json`, `download_inventory.json`, `bundle_tree.txt`, `package_tree.txt`, `package_validation.json` |
| `PKG-004` | blockers preserved | release blockers written into manifest / machine summary |
| `PKG-005` | no false finality | no claim of runtime/release pass without proofs |

## 7. Rollback
- checksum mismatch → invalidate package and rebuild  
- false delivered file list → invalidate manifest and rebuild  
- owner proof absent → keep `BLOCK_RELEASE`, regardless of document completeness  

## 8. Route-out
- Package D：required checks / merge queue / factory HOW  
- Package E：validator / release_guard / owner acceptance  
- Ops / RB-WI：smoke / probe / rollback choreography  

## 9. TT / Reopen Rules
- reopen when any owner proof is mounted or package inventory changes  
- rollback when manifest/checksum/build tree/package validation diverge or any false release claim appears  

[WP_FENCE_END:WP-004]

<a id="wp-fence-begin-support-only-appendix"></a>
[WP_FENCE_BEGIN:Support-only Appendix]

# Support-only Appendix

> 本附錄僅補官方功能存在性、frontstage 能力邊界、DevContainer / GitHub CI shell 可行性。  
> 一律 `SUPPORT_ONLY`；不得覆寫內部 normative、owner law、Package B/D/E ceiling。  
> canonical machine surfaces：`support_web_registry.tsv`、`support_web_registry.json`、`tooling_decision_ledger.tsv`。

## A. Support-only Web Registry（human mirror）
| claim_key | source_title | accessed_at | why_needed | used_for_which_claim | revocation_condition |
|---|---|---|---|---|---|
| obsidian_bases_intro | Introduction to Bases | 2026-03-30 | confirm Bases is a core plugin using local notes and properties | support-only for Bases as frontstage, not correctness owner | Bases no longer local-markdown/property centered |
| obsidian_bases_syntax | Bases syntax | 2026-03-30 | confirm bases are stored as `.base` files | `.base` placement policy and frontstage path segregation | `.base` format or placement semantics drift materially |
| obsidian_web_clipper_templates | Obsidian Web Clipper Templates | 2026-03-30 | confirm template-based capture exists | capture/review cockpit only; never canonical truth | template capability removed or materially changed |
| obsidian_web_clipper_interpreter | Interpret web pages | 2026-03-30 | confirm interpreter feature exists | frontstage assistance only | interpreter support removed or materially changed |
| obsidian_web_clipper_troubleshoot | Troubleshoot Web Clipper | 2026-03-30 | officially documents clipping incompleteness risk on some sites | why clipper cannot become canonical truth source | official docs no longer warn about incomplete capture risk |
| devcontainer_support | Supporting tools and services | 2026-03-30 | confirm devcontainer.json remains supported deterministic dev env contract | repo-native mainline + minimal config adoption | spec/support semantics drift materially |
| devcontainer_reference | Reference Implementation | 2026-03-30 | confirm reference implementation consumes devcontainer.json | minimal deterministic environment contract | reference implementation semantics drift materially |
| github_merge_queue | Managing a merge queue | 2026-03-30 | confirm merge queue requires merge_group event for required checks | Package D route-out wording and release stopline expectations | merge queue / merge_group semantics drift materially |
| github_required_checks | Troubleshooting required status checks | 2026-03-30 | confirm required checks and merge queue interaction remains official behavior | release stopline and owner ceiling wording | required checks semantics drift materially |

## B. Freshness hygiene patch note
- 2026-03-30 已重查官方一級來源；support registry 只保留 **official** 來源與必要用途。
- 所有 support-web 只能補 drift-aware capability 邊界；**不能**替代 owner proof。
- 若官方文件漂移，應先更新 `support_web_registry.tsv/json`，再判斷 tooling/adoption 是否需要重裁決。

[WP_FENCE_END:Support-only Appendix]

<a id="wp-fence-begin-cr-tt-self-audit-package-inventory"></a>
[WP_FENCE_BEGIN:CR / TT / Self-Audit / Package Inventory]

# CR / TT / Self-Audit / Package Inventory

## A. CR_OPEN Temporary Closure Ledger
| cr_id | current_state | converted_to | blocker_level | close_condition | reopen_trigger | note |
|---|---|---|---|---|---|---|
| CR-001-package-b-authoritative-schema | OPEN | TEMP_CLOSED + TT-CADSL-WPM-005 | HIGH | Package B authoritative schema / registry proof mounted | owner schema drift or proof mismatch | route-out owner wins |
| CR-002-package-d-required-checks | OPEN | TEMP_CLOSED + TT-CADSL-WPM-002 | CRITICAL | Package D required-check proof mounted and matches must_run_gates | checks absent / red / unverifiable | release blocker |
| CR-003-package-e-validator-release-guard | OPEN | TEMP_CLOSED + TT-CADSL-WPM-003 | CRITICAL | Package E validator / release_guard / owner acceptance all mounted | any proof absent or failing | release blocker |
| CR-004-ca-method-consumer-schema | OPEN | TEMP_CLOSED + TT-CADSL-WPM-004 | HIGH | CA-METHOD consumer exact schema / acceptance mounted | handoff contract drift | consumer owner wins |
| CR-005-old-wp-history-missing | OPEN | TEMP_CLOSED + TT-CADSL-WPM-007 | LOW | old WP history file rematerialized and clause-by-clause recut completed | file rematerializes | history only |
| CR-006-standalone-owner-blueprints-not-mounted | OPEN | TEMP_CLOSED + TT-CADSL-WPM-010 | HIGH | requested standalone final blueprint files become directly readable in workspace | standalone file appears or current carrier/source-class changes | no fake direct-readback claim |
| CR-007-obsidian-frontstage-runtime-proof-absent | OPEN | TEMP_CLOSED + TT-CADSL-WPM-008 + TT-CADSL-WPM-009 | MEDIUM | sourcepack edit→render / manifest exclusion / nonpromotion smoke directly read back in owner repo | frontstage path or manifest policy drifts | document/package policy landed; runtime smoke still absent |

## B. Test Tracking List
| tt_id | why_temp_closed | test_probe | close_criteria | reopen_trigger | rollback_trigger | owner | priority | related_wp | blocker_level |
|---|---|---|---|---|---|---|---|---|---|
| TT-CADSL-WPM-001 | runtime artifacts are defined here but not materialized in this package | run owner repo build to generate schema/purity/triplet outputs under evidence/dsl/<run_id>/ | runtime artifact set exists and readback passes | runtime build or owner proof becomes available | schema/purity/triplet missing or hash mismatch | CA-DSL + Package D/E | CRITICAL | WP-001/WP-002/WP-003 | runtime_blocker |
| TT-CADSL-WPM-002 | Package D exact required checks proof not mounted in this workspace | read Package D canonical required-check report and compare against must_run_gates | required-check proof exists and matches route_out contract | Package D publishes canonical proof | required checks absent / red / unverifiable | Package D | CRITICAL | WP-004 | release_blocker |
| TT-CADSL-WPM-003 | Package E validator / release_guard / owner acceptance absent | read validator report / release_guard / owner acceptance from Package E | validator + release_guard + acceptance all present and passing | Package E proof becomes available | any release proof absent or failing | Package E | CRITICAL | WP-004 | release_blocker |
| TT-CADSL-WPM-004 | consumer exact schema for CA-METHOD not independently read back | diff method ingress contract against CA-METHOD owner book | consumer schema exactness read back and accepted | CA-METHOD owner contract updates | handoff contract drift or alias-only handoff | CA-METHOD owner | HIGH | WP-003 | engineering_guard |
| TT-CADSL-WPM-005 | Package B authoritative schema / registry truth not independently re-read | compare local bridge settlement with Package B owner registry | Package B exact schema + registry accepted | Package B publishes updated owner truth | schema owner drift or registry mismatch | Package B / ICD owner | HIGH | WP-001 | engineering_guard |
| TT-CADSL-WPM-006 | support-only tooling freshness can drift over time | re-check official docs in support_web_registry | official docs still support current adopt/backup/reject decisions | official docs change materially | tooling contract or maturity changes materially | DocOps / Tooling steward | LOW | WP-MASTER | support_guard |
| TT-CADSL-WPM-007 | historical parity remains document-layer only because old WP history file is missing | if old file rematerializes, perform clause-by-clause diff and recut | historical parity evidence set complete | missing file appears in workspace | parity claim exceeds exact evidence | Doc owner | LOW | WP-MASTER | nonblocking_history |
| TT-CADSL-WPM-008 | Obsidian sourcepack editing path is documented but not runtime-proven in this package | edit sourcepack from repo-native vault, then run render/validate/package smoke | sourcepack edit path readback passes without using note/frontstage as canonical input | sourcepack layout, `.base` placement, or promotion path changes | sourcepack edit requires note/frontstage to pass | CA-DSL owner + frontstage maintainer | MEDIUM | WP-MASTER / WP-002 | engineering_guard |
| TT-CADSL-WPM-009 | mainline-without-Obsidian and manifest-exclusion are policy-only in this package | run render/validate/CI with Obsidian closed and confirm manifest excludes `.obsidian/**`, `notes/obsidian/**`, `.base/**` | CI/mainline succeeds without Obsidian and package tree stays clean | manifest rules or minimal frontstage assumptions change | canonical/package-truth starts depending on Obsidian UI/plugin | Package D / DocOps | MEDIUM | WP-MASTER / WP-004 | support_guard |
| TT-CADSL-WPM-010 | requested standalone final blueprints are not mounted, only filename lineage is known | mount standalone blueprint files and rebind exact locators | source-class upgraded from filename-only to direct-readback | blueprint files appear or source-class changes | package claims standalone direct-readback without files | central / subsystem owners | MEDIUM | WP-MASTER | evidence_guard |

## C. Final Self-Audit
| check | result | note |
|---|---|---|
| Only WP-M delivered | PASS | 本包只交付 WP-M 主書與 sidecars；未冒充 WP-RB-WI / WP-FULL 已完成 |
| WP-MASTER + WP-001..004 complete | PASS | 五個主 fence 全部物化 |
| least-sufficient count explicitly proven | PASS | `WP-MASTER + WP-001..004` coverage 1.0 / minimal sufficient proof 已明文化 |
| HOW / RB / WI not smuggled back | PASS | HOW 只保留 owner ceiling / route-out，不留步驟 |
| sourcepack constitutional landing | PASS | 四檔職責、render fail-closed、Obsidian authoring surface / `.base` placement 已正文化；但不假稱 sourcepack files 本身隨包交付 |
| major claims grounded | PASS_WITH_GUARDS | 缺件藍圖與歷史文件已降級為 `NOT_MOUNTED_DIRECT / PROXY_ONLY / MISSING_AT_PATCH_TIME / TT_BOUND` |
| support-frontstage absorbed without promotion | PASS | `SUPPORT_FRONTSTAGE_ONLY`、no-promotion gate、manifest exclusion、frontstage path registry 均已落盤 |
| support-only kept support-only | PASS | 外部資料僅在 fenced appendix 與 support registry / tooling ledger |
| document/runtime/release truth split explicit | PASS | cover card + WP-MASTER §§14-16 + WP-004 |
| MD and ZIP actually materialized | PASS | 見 `download_inventory.json` / `MANIFEST.json` |
| Package validation passes | PASS | 見 `package_validation.json` |
| CR_OPEN / TT / block-release handled | PASS | blockers 轉 TT / BLOCK_RELEASE，不留假閉合 |

## D. Package Inventory
- Main markdown: `Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_WP-M_合冊.md`
- ZIP package: `Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_WP-M_合冊_Package_v2026.03.30-r6.zip`
- Root payload file count: `29`
- Root payload files:
  - `Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_WP-M_合冊.md`
  - `MANIFEST.json`
  - `CHECKSUMS.sha256`
  - `BUILD.md`
  - `delivery_manifest.json`
  - `machine_summary.json`
  - `bundle_tree.txt`
  - `package_tree.txt`
  - `package_validation.json`
  - `exact_locator_registry.tsv`
  - `subsource_decomposition_ledger.tsv`
  - `support_absorption_ledger.tsv`
  - `ops_support_absorption_ledger.tsv`
  - `replacement_ledger.tsv`
  - `upstream_closure_ledger.tsv`
  - `interface_closure_matrix.tsv`
  - `patch_resolution_ledger.tsv`
  - `tooling_decision_ledger.tsv`
  - `cr_open_temporary_closure_ledger.tsv`
  - `test_tracking_list.tsv`
  - `route_out_registry.json`
  - `support_web_registry.tsv`
  - `support_web_registry.json`
  - `canonical_crosswalk.json`
  - `obsidian_policy_crosswalk.tsv`
  - `frontstage_path_registry.json`
  - `naming_registry.tsv`
  - `adoption_matrix.tsv`
  - `download_inventory.json`

[WP_FENCE_END:CR / TT / Self-Audit / Package Inventory]
