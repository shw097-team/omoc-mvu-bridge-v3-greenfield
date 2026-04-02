# 《Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_MC4+_合冊》
<a id="top"></a>

## 目錄（TOC｜anchors-first）
1. [0. Cover Card / Doc Meta](#sec-0-cover-card-doc-meta)
2. [1. 導讀 / AI-LLM Reader Guide / 強制檢索順序 / Quick Index / Anti-Hallucination Rules](#sec-1-reader-guide)
3. [2. Inputs Manifest / Source Hit List / Missing / Unverified / Alias Normalization](#sec-2-inputs-manifest)
4. [3. Authority / Conflict / Scope-Lock / One-Rule-One-Owner Matrix](#sec-3-authority)
5. [4. Review Fix Integration Matrix](#sec-4-review-fix)
6. [5. Upstream Coverage / Absorption / Supersede / Archive Matrix](#sec-5-upstream-coverage)
7. [6. Support Absorption Ledger](#sec-6-support-absorption)
8. [7. SRS / ARCH / LBP / Ops / Pack A-E / Pipeline-A Index / sibling subsystem Crosswalk](#sec-7-crosswalk)
9. [8. Interface Closure Matrix](#sec-8-interface-closure)
10. [9. OpsFlow Binding Table / Operator-Flow Mapping / Stage-Binding Note](#sec-9-opsflow)
11. [10. Tooling / Slot / Sidecar / Fallback / Support-only Legal Position](#sec-10-tooling)
12. [11. Truthful Verdict Framework](#sec-11-verdict)
13. [12. Deliver Reality Table](#sec-12-deliver-reality)
14. [13. CR_OPEN Closure Register / TT Register / Reopen Rules / Block-release Conditions](#sec-13-tt)
15. [14. Web Evidence Appendix（SUPPORT-only）](#sec-14-web-evidence)
16. [15. Machine-readable blocks](#sec-15-machine-readable)
17. [16. FENCE:SS_README](#fence-ss-readme)
18. [17. FENCE:SS_SRS](#fence-ss-srs)
19. [18. FENCE:SS_ARCH](#fence-ss-arch)
20. [19. FENCE:SS_DELIVER](#fence-ss-deliver)
21. [20. FENCE:SS_LBP_ANNEX](#fence-ss-lbp-annex)
22. [21. Appendices](#sec-21-appendices)

---
<a id="sec-0-cover-card-doc-meta"></a>

## 0. Cover Card / Doc Meta

| item | value |
|---|---|
| external_name | Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_MC4+_合冊 |
| internal_short_name | SOMOC-CADISTILL-MC4PLUS |
| stable_id | CA-DISTILL |
| version | v2026.03.30-r6 |
| date | 2026-03-30 |
| timezone | Asia/Taipei |
| document_verdict | PASS_PATCHED_FULLY_MATERIALIZED_DOCUMENT_PACKAGE |
| engineering_verdict | DOCUMENT_SCOPE_ACCEPTABLE_WITH_RUNTIME_RELEASE_GUARDS |
| execution_verdict | FAIL_CLOSED |
| release_verdict | BLOCK_RELEASE |
| delivery_verdict | PASS_MATERIALIZED_DOCUMENT_PACKAGE |
| public_canonical_artifact | distill_bundle.json |
| internal_companion_artifact | distill_pack.json |
| pipeline_mainline | CA-WRC → CA-CORPUS → CA-DISTILL → CA-DSL |
| obsidian_legal_position | SUPPORT_FRONTSTAGE_ONLY |
| fixed_authority_order | 中央工程正文 → SSOT → LBP → Pack A-E+工程指南 → SubP1-LITE+MVP 合冊 → OMOC 合冊 → 參考方案合冊 |
| delivery_truth | 本回合 materialize 的是 document package；不得倒推成 runtime distill outputs 已存在 |
| supersedes | Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_MC4+_合冊.md（workspace baseline；document layer） |

### 0.1 任務級總裁決
本冊不是摘要、不是評論、不是 patch memo，而是 **依直接升級驅動 + 中央正文 + destructive audit** 重建的完整可交付主文與 document package。  
本次修補不是補字數，而是把 **正文、schema、specimen、validator、workflow、package descriptors、release blockers** 拉回同一個真相面。

### 0.2 本次 patch 的硬修補成果
1. `distill_bundle.json` / `distill_pack.json` 命名裁決已固定到 cover/meta、schema、sample payload、artifact registry、delivery manifest。  
2. exact schemas 已從 thin pointer shape 升級為 rich object/array parity，補回 `artifact_kind`、`canonical_public_artifact`、`claims[]`、`function_specs[]`、`reader_quadrants[]`、`job_card`、`evidence_cards[]`、`semantic_gate`、`logic_units[]`、`provenance`、`gate_summary`、`rollback_rule`。  
3. mandatory artifact family 已從 contract-only 升級為 **contract + specimen + 正文摘要**。  
4. Family Path Contract 已不再指向不存在的 tgz；本版明確指向外部實體交付 ZIP。  
5. source usage trace 已從 13 筆補齊為 25 筆，完整對齊 inputs manifest 與 audit driver。  
6. document/package truth 與 runtime/release truth 仍維持 fail-closed 分流；沒有用新修補去偷洗 release green。  
7. 依《Pipeline-A_Obsidian升級藍圖》補入 **repo-native mainline + Obsidian shadow frontstage** 裁決，並明確把 Obsidian/Bases/Web Clipper 鎖定為 `SUPPORT_FRONTSTAGE_ONLY`。  
8. CA-DISTILL 的 Obsidian frontstage 路徑、共同 gates、`.obsidian` / `.base` 政策、promotion 規則、TT 與 package exclusion 已正式落盤。  
9. package truth 與 archive truth 分離：`notes/obsidian/**`、`.obsidian/**` 進 ZIP 與 archive ledger，但不進 mandatory manifest/checksums/package truth。  

10. source existence taxonomy 已拆成 `FOUND_CONTAINER_MOUNT / FOUND_FILE_LIBRARY_READBACK / MISSING_EXACT_FILE / UNVERIFIED_NOT_PROVIDED_AS_SEPARATE_FILE`，並把 sibling exact-file 缺口誠實降級為 trace-only。  
11. `artifact_proof.tsv` 已改成 **SELF_EXCLUDED control-file policy**，`archive_ledger.tsv` 亦補上 proof ledger 自身登錄。  
12. duplicated HTML anchor 已修正；`2.5 Obsidian integration delta` 改用獨立 anchor，不再與 `§3 Authority` 撞位。  
13. shipped validator 已升級為 **content-aware document/package validator**：補入 schema↔sample、required sections/fences/gates、trace coverage、archive completeness、artifact proof control-file policy 檢查。  
14. workflow 已補 `pull_request` 觸發，同時保留 `merge_group`；因此 review-time visibility 與 merge-queue correctness 兩者都被顧到。  
15. frontstage 五個資料夾已補入 non-canonical exemplar notes / cards / `.base` view，避免只剩 README 佔位。  
16. `LOC-018` 已從弱 locator 升級為 audit file 精確 line-range；附帶把相鄰子系統界面依據改寫為 mounted carrier locators，避免再把 absent exact file 假裝成 current exact readback。  

### 0.3 固定憲制事實
1. `distill_bundle.json` 是 **public canonical artifact**。  
2. `distill_pack.json` 是 **internal companion artifact**；不得回頭冒充 canonical。  
3. `CA-WRC → CA-CORPUS → CA-DISTILL → CA-DSL` 是唯一 Pipeline-A 主線。  
4. `document pass != engineering pass != execution pass != release pass`。  
5. `document/package truth != runtime truth != release truth`。  
6. `MISSING_EXACT_FILE` 一律不得標記為 `FOUND`。  
7. `route-out != re-legislation`；送回 owner，不代表本冊已 exact 吸收 owner 正文。  

### 0.4 Obsidian integration verdict
- CA-DISTILL 對 Obsidian 的正式裁決不是「升格採納」，而是 **repo-native mainline + Obsidian shadow frontstage**。  
- frontstage 只承擔 capture / review / shadow authoring / crosswalk / sourcepack 人工編修輔助；不得成為 canonical artifact source、validator、release guard、required checks authority、runtime truth 或 release truth。  
- 本版已把 `notes/obsidian/distill/claim-cards/`、`function-cards/`、`sgf-review/`、`reader-quadrants/`、`views/` 與共同 gates / policies / TT 一併 materialize。  

---
<a id="sec-1-reader-guide"></a>

## 1. 導讀 / AI-LLM Reader Guide / 強制檢索順序 / Quick Index / Anti-Hallucination Rules

### 1.1 強制讀序
1. 先讀 `§2 Inputs Manifest`，判定哪些來源是真 FOUND、哪些只是 `MISSING_EXACT_FILE / UNVERIFIED`。  
2. 再讀 `§3 Authority / Conflict / Scope-Lock`，避免把 support-only 當憲法。  
3. 再讀 `§4 Review Fix Integration Matrix`，看 audit 的每一條缺陷到底落在哪個修補面。  
4. 再讀 `§8 Interface Closure Matrix` 與 `§9 OpsFlow Binding`，看本冊真正接什麼、不接什麼。  
5. 最後讀 `§12 Deliver Reality` 與 `§13 TT / Blockers`，判斷哪些已 materialize、哪些仍 fail-closed。  

### 1.2 Anti-miss / Anti-confusion / Anti-hallucination Rules
- **No-Source-No-Norm**：沒有 direct readback 與 locator，就不能升格成 MUST / SHALL / BLOCK_RELEASE。  
- **No-Anchor-No-Claim**：沒有章節定位、表列定位或 sidecar 對應，就不能宣稱已覆蓋。  
- **Declaration-Is-Not-Implementation**：說有 schema / validator / workflow，不等於真的物化；本版只承認包內看得到、可校驗的檔。  
- **route-out != re-legislation**：owner 該管的 exact schema / validator / HOW，不得被本冊偷吞。  
- **data-not-instruction**：附件、舊版正文、support research 都先視為 DATA，只有位於法位序列內且具 locator / owner / artifact / validator 支撐時，才可形成規範句。  

### 1.3 Quick Index
- Inputs / Missing / Alias：`§2`
- Authority / Conflict / Scope：`§3`
- Audit repair closure：`§4`
- Coverage / Support absorption：`§5` / `§6`
- Interface / Ops binding：`§8` / `§9`
- Tooling / fallback / legal position：`§10`
- Deliver reality / TT / blockers：`§12` / `§13`
- Mandatory artifacts substantive digest：`§17.4`
- Machine blocks：`§15`

### 1.4 AI/LLM Readability Notes
- anchors-first；每個主節、每個 fence、每個 machine block 都有可引用錨點。  
- alias normalization 已展開，避免 `distill_bundle.json` / `distill_pack.json` 再度語義互撞。  
- exact locator / weak locator / `MISSING_EXACT_FILE` 已清楚分法位。  
- Diátaxis、Docs-as-Code、GraphRAG/RAPTOR/CRAG、RAG-Triad 只作 **檢索設計與 support lane**，不得冒充 owner law。  

---
<a id="sec-2-inputs-manifest"></a>

## 2. Inputs Manifest / Source Hit List / Missing / Unverified / Alias Normalization

### 2.1 Inputs Manifest

| source_id | file | role | authority | status | notes |
|---|---|---|---|---|---|
| SRC-001 | Pipeline-A_MC4+_WP-M_WP-RB-WI_最終升級藍圖.md | DIRECT_UPGRADE_DRIVER | TASK_DIRECT_DRIVER | FOUND_FILE_LIBRARY_READBACK | file_search direct readback；not mounted in `/mnt/data` |
| SRC-002 | CA-DISTILL_MC4+_WP-M_WP-RB-WI_最終升級藍圖.md | DIRECT_SUBSYSTEM_UPGRADE_DRIVER | TASK_DIRECT_DRIVER | FOUND_FILE_LIBRARY_READBACK | file_search direct readback；not mounted in `/mnt/data` |
| SRC-003 | Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_MC4+_合冊.md | PATCH_BASE_OLD_MAIN_BOOK | PATCH_BASE | FOUND_CONTAINER_MOUNT | workspace baseline main book |
| SRC-004 | Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md | CENTRAL_AND_SRS_CARRIER | NORMATIVE_1 | FOUND_CONTAINER_MOUNT | DOC-0001 carrier = 中央工程正文；DOC-0002 carrier = 系統需求正文r3 |
| SRC-005 | Spartoi-OMOC_SSOT_合冊.md | ROOT_SSOT | NORMATIVE_2 | FOUND_CONTAINER_MOUNT | README/ARCH/MIP/SRS/root registry and retrieval guard |
| SRC-006 | Spartoi-OMOC_LBP_合冊.md | ROOT_LBP | NORMATIVE_3 | FOUND_CONTAINER_MOUNT | Docs-as-Code / ADR / ICD / route-out / fitness |
| SRC-007 | Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊.md | ROOT_PACK_GUIDE | NORMATIVE_4 | FOUND_CONTAINER_MOUNT | Package B/D/E owner ceiling + No-Source-No-Norm |
| SRC-008 | Spartoi-OMOC_SubP1-LITE+MVP_合冊.md | ROOT_SUBP1_CARRIER | NORMATIVE_5 | FOUND_CONTAINER_MOUNT | integrated merged carrier / navigation / package truth |
| SRC-009 | OMOC_合冊.md | ROOT_LOW_PRECEDENT | NORMATIVE_6 | FOUND_CONTAINER_MOUNT | Docs-as-Code precedent / navigation / RAG triad hooks |
| SRC-010 | 參考方案合冊.md | ROOT_LOW_REFERENCE | NORMATIVE_7 | FOUND_CONTAINER_MOUNT | low-rank supplement only |
| SRC-011 | Pipeline-A_Index_Pack_Full_Monolith.md | PIPELINE_NAV_BRIDGE | BRIDGE_INDEX | FOUND_CONTAINER_MOUNT | index bridge / declaration-is-not-implementation |
| SRC-012 | Pipeline-A設計資料參考_合冊.md | SUPPORT_DESIGN | SUPPORT_ONLY | FOUND_CONTAINER_MOUNT | design uplift patterns |
| SRC-013 | Pipeline-A實作資料參考_合冊.md | SUPPORT_IMPLEMENTATION | SUPPORT_ONLY | FOUND_CONTAINER_MOUNT | offline-first / thin-script / events logging discipline |
| SRC-014 | SEM8-ICT-TW_重構升級藍圖_v1.2.1-r1.md | SUPPORT_BRIDGE | SUPPORT_ONLY | FOUND_CONTAINER_MOUNT | audit shell / bind shell / route-out shell |
| SRC-014A | Pipeline-A_Obsidian升級藍圖.md | DIRECT_OBSIDIAN_PATCH_DRIVER | TASK_DIRECT_DRIVER | FOUND_CONTAINER_MOUNT | repo-native mainline + Obsidian shadow frontstage |
| SRC-015 | SEM³資料參考_合冊.md | SUPPORT_SEMANTIC_FRAME | SUPPORT_ONLY | FOUND_CONTAINER_MOUNT | SEG / MSC / TVE semantic shell |
| SRC-016 | 多模態多向量圖像檢索技術指南_筆記.txt | SUPPORT_MMVR_NOTE | SUPPORT_ONLY | FOUND_CONTAINER_MOUNT | Qdrant / ColPali / MuVERA optional rich-doc lane |
| SRC-017 | 台股實戰映射_合冊.md | SUPPORT_DOMAIN_CALIBRATION | SUPPORT_BOUNDARY_ONLY | FOUND_CONTAINER_MOUNT | TW calibration / no backflow into method law |
| SRC-018 | Spartoi-OMOC_SubP1-LITE+MVP_CA-WRC_合冊.md | SIBLING_OWNER_WRC | INTERFACE_ONLY | MISSING_EXACT_FILE | exact merged carrier absent in current workspace；interface truth only via mounted Pipeline-A carrier locators |
| SRC-019 | Spartoi-OMOC_SubP1-LITE+MVP_CA-CORPUS_合冊.md | SIBLING_OWNER_CORPUS | INTERFACE_ONLY | MISSING_EXACT_FILE | exact merged carrier absent in current workspace；interface truth only via mounted Pipeline-A carrier locators |
| SRC-020 | Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_合冊.md | SIBLING_OWNER_DSL | INTERFACE_ONLY | MISSING_EXACT_FILE | exact merged carrier absent in current workspace；interface truth only via mounted Pipeline-A carrier locators |
| SRC-021 | Ops RUNBOOK_合冊.md | HOW_OWNER_UPPER | HOW_ROUTE_OUT_ONLY | FOUND_CONTAINER_MOUNT | bind phase/gate/evidence/rollback/stopline only；do not rewrite HOW |
| SRC-022 | Spartoi-OMOC_Master_Spine_Full_Monolith.md | MASTER_SPINE_EXACT_TARGET | NAVIGATION_CHAIN_ONLY | MISSING_EXACT_FILE | must remain manifested / TT / no direct normative absorption |
| SRC-023 | CA-DISTILL_重構升級藍圖_v2026.03.12-r4.md | LEGACY_STANDALONE_BLUEPRINT | TRACEABILITY_ONLY | MISSING_EXACT_FILE | legacy exact target absent；equivalence scope only |
| SRC-024 | 舊版 audit / review / patch driver（separate exact file） | PATCH_DRIVER_OPTIONAL | PATCH_TRACE_ONLY | UNVERIFIED_NOT_PROVIDED_AS_SEPARATE_FILE | no standalone exact file in current workspace |
| SRC-025 | Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_MC4+_合冊_AUDIT.md | PATCH_AUDIT_DRIVER | PATCH_DIRECT_DRIVER | FOUND_CONTAINER_MOUNT | current audit file uploaded and mounted in `/mnt/data` |


### 2.2 Source Hit Truth Summary

- `FOUND_CONTAINER_MOUNT`：exact file 目前位於 `/mnt/data`；可 direct readback，可進入當次法位裁決。  
- `FOUND_FILE_LIBRARY_READBACK`：exact file 可經 file_search direct readback；但本輪未掛載於 `/mnt/data`，不得冒充 container-mount。  
- `MISSING_EXACT_FILE`：exact file 不在當前 workspace；可保留 traceability 或 carrier-bound reference，但不可寫成 FOUND，更不可 direct exact absorption。  
- `UNVERIFIED_NOT_PROVIDED_AS_SEPARATE_FILE`：只有弱 trace / conversation trace，沒有獨立 exact file。  


### 2.3 Alias Normalization
| alias | canonical | note |
|---|---|---|
| Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文 | Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md::DOC-0001 carrier | carrier resolution per task rule |
| Spartoi-OMOC_系統需求正文r3 | Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md::DOC-0002 carrier | carrier resolution per task rule |
| Spartoi-OMOC_Master_Spine_Full_Monolith | MISSING_EXACT_FILE / navigation-chain only | cannot be marked FOUND |
| distill_bundle.json | public canonical artifact | authority-adjudicated and schema-fixed |
| distill_pack.json | internal companion artifact | must not replace canonical |
| GATE-DISTILL-SGF | CA-DISTILL subsystem local gate name | mapped to template shell `G-SEG-L[distill-semantic-profile]` |
| Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_MC4+_合冊_AUDIT | Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_MC4+_合冊_AUDIT.md | patch driver exact file in current workspace |

### 2.4 Missing / Unverified / Fail-Closed Ledger

| item | state | treatment | release_effect | note |
|---|---|---|---|---|
| Spartoi-OMOC_SubP1-LITE+MVP_CA-WRC_合冊.md | MISSING_EXACT_FILE | carrier-trace only + no exact absorption | NO_DIRECT_DOCUMENT_BLOCK | interface truth bound through mounted Pipeline-A carrier and local interface matrix only |
| Spartoi-OMOC_SubP1-LITE+MVP_CA-CORPUS_合冊.md | MISSING_EXACT_FILE | carrier-trace only + no exact absorption | NO_DIRECT_DOCUMENT_BLOCK | interface truth bound through mounted Pipeline-A carrier and local interface matrix only |
| Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_合冊.md | MISSING_EXACT_FILE | carrier-trace only + no exact absorption | NO_DIRECT_DOCUMENT_BLOCK | interface truth bound through mounted Pipeline-A carrier and local interface matrix only |
| Spartoi-OMOC_Master_Spine_Full_Monolith.md | MISSING_EXACT_FILE | manifest + TT + navigation-chain only | NO_DIRECT_DOCUMENT_BLOCK | 不可 direct absorb |
| CA-DISTILL_重構升級藍圖_v2026.03.12-r4.md | MISSING_EXACT_FILE | equivalence scope only + TT | NO_DIRECT_DOCUMENT_BLOCK | 不可宣稱 exact parity |
| separate old audit/review/patch driver | UNVERIFIED_NOT_PROVIDED_AS_SEPARATE_FILE | traceability only | NO_DIRECT_DOCUMENT_BLOCK | 不可冒充 FOUND |
| Package B exact schema parity | MISSING_OWNER_READBACK | keep FAIL_CLOSED | BLOCK_RELEASE | owner readback required |
| Package D required checks / factory validator | MISSING_OWNER_READBACK | keep FAIL_CLOSED | BLOCK_RELEASE | owner readback required |
| Package E validator / release_guard / package reality | MISSING_OWNER_READBACK | keep FAIL_CLOSED | BLOCK_RELEASE | owner readback required |
| runtime distill outputs | NOT_MATERIALIZED_IN_THIS_PACKAGE | document package != runtime bundle | BLOCK_EXECUTION_AND_RELEASE | cannot claim release-ready |


---
<a id="sec-2-5-obsidian-delta"></a>

### 2.5 Obsidian integration delta（2026-03-30）
| item | adjudication | legal_position | package_effect |
|---|---|---|---|
| `Pipeline-A_Obsidian升級藍圖.md` | direct patch input for this edition | TASK_LOCAL_PATCH_DRIVER | absorbed into §10 / §13 / §14 / fences / appendices |
| `notes/obsidian/distill/claim-cards/` | allowed shadow authoring surface | SUPPORT_FRONTSTAGE_ONLY | archived in ZIP; excluded from mandatory manifest/checksums |
| `notes/obsidian/distill/function-cards/` | allowed shadow authoring surface | SUPPORT_FRONTSTAGE_ONLY | archived in ZIP; excluded from mandatory manifest/checksums |
| `notes/obsidian/distill/sgf-review/` | reviewer cockpit / SGF board | SUPPORT_FRONTSTAGE_ONLY | archived in ZIP; excluded from mandatory manifest/checksums |
| `notes/obsidian/distill/reader-quadrants/` | reader-facing draft quadrants | SUPPORT_FRONTSTAGE_ONLY | archived in ZIP; excluded from mandatory manifest/checksums |
| `notes/obsidian/distill/views/` | optional `.base` / views landing zone | OPTIONAL_TRACKED_FRONTSTAGE_ARTIFACT | archived in ZIP; excluded from mandatory manifest/checksums |
| `GATE-OBS-NOTE-NONPROMOTION` | note cannot directly become canonical/package truth | DOCUMENT_GATE | violation => FAIL_CLOSED at package truth layer |
| `GATE-OBS-MANIFEST-EXCLUSION` | frontstage paths excluded from mandatory manifest/checksums | DOCUMENT_GATE | violation => FAIL_CLOSED at package validation |
| `GATE-OBS-SHADOW-NONBLOCKING` | mainline must remain runnable without Obsidian | DOCUMENT_GATE | violation => TEMP_CLOSED + TT |

---
<a id="sec-3-authority"></a>

## 3. Authority / Conflict / Scope-Lock / One-Rule-One-Owner Matrix

### 3.1 固定裁決序位（不得改序）
1. 《Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文》——以《Spartoi-OMOC_SubP1-LITE+MVP_正文合冊》DOC-0001 carrier 承載  
2. 《Spartoi-OMOC_SSOT_合冊》  
3. 《Spartoi-OMOC_LBP_合冊》  
4. 《Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊》  
5. 《Spartoi-OMOC_SubP1-LITE+MVP_合冊》  
6. 《OMOC_合冊》  
7. 《參考方案合冊》  

### 3.2 衝突裁決硬規則
- 較高 authority source 勝。  
- direct exact locator 勝過 summary prose。  
- machine-auditable clause 勝過 slogan。  
- owner schema / owner validator / owner release guard 勝過 consumer rewrite。  
- unresolved -> `TT / TEMP_CLOSED / FAIL_CLOSED / BLOCK_RELEASE`。  

### 3.3 Scope-Lock（CA-DISTILL 必須負責）
- lawful corpus handoff consumption  
- input contract verification  
- claim / assertion / function spec / invariant / acceptance / report family  
- provenance completeness  
- SGF / semantic fidelity / SEG evidence  
- canonical distill artifact contract（以本版裁決結果為準）  
- PASS-only handoff to CA-DSL  
- evidence -> rules -> interface convergence  

### 3.4 Scope-Lock（CA-DISTILL 明確不得越權）
- parser owner / OCR owner / retrieval correctness owner  
- Package B exact schema owner  
- Package D exact factory / required checks owner  
- Package E validator / release_guard / shipped package reality owner  
- operator HOW owner  
- CA-DSL purity owner  
- CA-METHOD 制法 owner  
- 回頭改寫相鄰子系統 owner law  

### 3.5 One-Rule-One-Owner Matrix
| topic | owner | legal_effect_in_this_book |
|---|---|---|
| input intake / allowlist / sealing / provenance | CA-WRC | DISTILL consumes only; does not rewrite upstream contract |
| page / region grounding generation | CA-CORPUS | DISTILL uses but does not generate grounding truth |
| claims / evidence / function specs / acceptance reports | CA-DISTILL | local owner responsibilities materialized in this package |
| formalization / purity / consumer acceptance | CA-DSL | DISTILL only hands off PASS-only payload |
| exact schema / ICD / evidence schema | Package B | route-out only; blocker if owner proof absent |
| required checks / factory validators | Package D | route-out only; blocker if proof absent |
| validator / release_guard / shipped package reality | Package E | route-out only; blocker if proof absent |
| operator HOW / WI details | Ops RUNBOOK | bind-only; no HOW rewrite in this book |

### 3.6 Conflict Adjudication Register
| adjudication_id | topic | decision | authority_basis | reopen | reopen_when |
|---|---|---|---|---|---|
| ADJ-001 | artifact naming conflict | distill_bundle.json = canonical public artifact ; distill_pack.json = internal companion only | SRC-002 + SRC-004 + SRC-011 | YES | higher-law owner revises naming |
| ADJ-002 | gate alias mapping | GATE-DISTILL-SGF is local gate; G-SEG-L[distill-semantic-profile] is template shell alias | SRC-004 + SRC-014 + SRC-021 | YES | template registry changes |
| ADJ-003 | OP-09 meaning conflict | OP-09 is bound only as package/release truth stopline surface; no HOW rewrite | SRC-001 + SRC-021 | YES | Ops owner remaps phase semantics |
| ADJ-004 | Master Spine carrier conflict | MISSING_EXACT_FILE / navigation-chain only / TT; never FOUND | task law + workspace reality | YES | exact file later appears |
| ADJ-005 | artifact subject conflict | family_path_contract now points to external zip deliverable, not nonexistent tgz | SRC-025 finding P0-003 + current package reality | YES | deliverable basename changes |

### 3.7 本節裁決
本版 **推翻並取代** 舊目標書中所有把 `distill_pack.json` 寫死為 canonical 的 wording。  
新書、sidecars、schemas、samples、deliver reality、machine blocks 一律採用：
- `distill_bundle.json` = public canonical artifact  
- `distill_pack.json` = internal companion artifact  

---
<a id="sec-4-review-fix"></a>

## 4. Review Fix Integration Matrix

| finding_id | closure_status | landing | note |
|---|---|---|---|
| P0-001 | CLOSED | schemas/distill_bundle.schema.json ; schemas/dsl_handoff_payload.schema.json ; samples/sample_distill_bundle.json ; samples/sample_dsl_handoff_payload.json | rich fields, semantic interop keys, reader quadrants, job/evidence/function/provenance/rollback now materialized |
| P0-002 | CLOSED | samples/* ; artifact_family_registry.tsv ; §15 machine blocks ; FENCE:SS_SRS | mandatory family upgraded from contract-only to contract + specimen +正文摘要 |
| P0-003 | CLOSED | §12.1 ; delivery_manifest.json ; MANIFEST.json ; workflow | artifact subject unified to actual external zip deliverable; no tgz ghost |
| P1-001 | CLOSED | §9 ; matrices/ops_support_closure_matrix.tsv | evidence pointers / rollback_rule / stopline_condition columns added |
| P1-002 | CLOSED | source_usage_trace.tsv ; samples/sample_distill_bundle.json | 25 input sources fully traced with usage mode and legal position |
| P1-003 | CLOSED | cr_open_register.tsv ; §13.1 | real CR_OPEN register materialized |
| P1-004 | CLOSED | FENCE:SS_SRS ; FENCE:SS_DELIVER ; FENCE:SS_LBP_ANNEX | fences expanded with substantive artifact, package, route-out, fitness details |
| P1-005 | CLOSED | matrices/upstream_clause_absorption_matrix.tsv ; matrices/crosswalk_clause_matrix.tsv ; matrices/central_clause_closure_matrix.tsv | coverage and closure upgraded from coarse rows to clause-level tables |
| P1-006 | CLOSED | scripts/ca_distill_validate.py ; reports/package_validation_report.json | validator upgraded to content-aware document/package checks (schema↔sample / required sections-fences-gates / trace / archive / proof control-file policy) |
| P1-007 | CLOSED | schemas/* ; reports/semantic_report.sample.json ; sample payloads | SEM³ / SQM-7 minimal interop keys and event families materialized |
| P1-008 | CLOSED | web_evidence_registry.tsv ; §14 | support-research governance columns completed |
| P2-001 | CLOSED | machine_summary.json | tt_ids separated from release_blocker_ids |
| P2-002 | CLOSED | MANIFEST.json ; CHECKSUMS.sha256 ; artifact_proof.tsv | control-file self-reference policy made explicit; fake self-hash removed |
| P2-003 | CLOSED | package_tree.txt | duplicate bundle_tree removed |
| AUD-F001 | CLOSED | §2.1 ; §2.2 ; §2.4 ; Appendix A ; inputs_manifest.tsv ; source_usage_trace.tsv | source existence taxonomy corrected; fake FOUND removed |
| AUD-F002 | CLOSED | artifact_proof.tsv ; archive_ledger.tsv ; scripts/ca_distill_validate.py | proof ledger control-file policy and archive completeness fixed |
| AUD-F003 | CLOSED | sec-2-5-obsidian-delta | duplicate HTML anchor removed |
| AUD-F004 | CLOSED | scripts/ca_distill_validate.py ; reports/package_validation_report.json ; reports/distill_test_report.json | shipped validator depth now matches document wording |
| AUD-F005 | CLOSED_WITH_POLICY_NOTE | .github/workflows/ca_distill_document_package.yml ; §10.6 ; §19.3 | `pull_request` added for review visibility while retaining `merge_group` |
| AUD-F006 | CLOSED | notes/obsidian/distill/** | non-canonical exemplar notes/cards/views added to each frontstage folder |
| AUD-F007 | CLOSED | Appendix B::LOC-015~LOC-018 | weak/overclaimed locators replaced with mounted carrier lines or exact audit line-ranges |


### 4.1 Audit integration note
本節不是「已修」口頭宣告，而是把 audit 每一條缺陷轉成 **package 內可點名的 landing**。  
也就是說，這裡每一列都能在 ZIP 內找到對應檔，而不是只在正文裡看見一種美觀的承諾。

---
<a id="sec-5-upstream-coverage"></a>

## 5. Upstream Coverage / Absorption / Supersede / Archive Matrix
| row_id | source_id | requirement_family | landing | status | note |
|---|---|---|---|---|---|
| UP-001 | SRC-001 | note-3 mandatory artifact family closure | artifact family registry + specimens + contracts + reports | CLOSED | driver absorbed at artifact family level |
| UP-002 | SRC-001 | note-4 OP-03/05/09 explicit phase mapping | ops_support_closure_matrix.tsv + §9 | CLOSED | bind only; no HOW rewrite |
| UP-003 | SRC-001 | family_path_contract row | §12.1 + delivery_manifest.json | CLOSED | artifact subject fixed to actual zip deliverable |
| UP-004 | SRC-002 | public canonical artifact / internal companion settlement | §0/§3/§12 + schemas/* | CLOSED | naming parity restored |
| UP-005 | SRC-002 | exact schemas must be rich object/array parity | schemas/* + samples/* | CLOSED | claims/function_specs/provenance/rollback fields present |
| UP-006 | SRC-004 | mandatory artifact family list | artifact_family_registry.tsv + samples/* | CLOSED | all mandatory family items materialized |
| UP-007 | SRC-004 | reader quadrants must have substantive content | samples/reader_quadrants.sample.md + §17.4 | CLOSED | all four quadrants non-empty |
| UP-008 | SRC-004 | SEM³ minimum interoperability keys | schemas/* + semantic report + handoff payload | CLOSED | keys retained with alias-neutral mapping |
| UP-009 | SRC-007 | Package B/D/E owner ceiling | §3.4 + §8 + release_blocker_contract.json | CLOSED | route-out preserved |
| UP-010 | SRC-011 | Master Spine linkage without false FOUND | §2 + TT-DISTILL-001 | CLOSED | navigation chain only |
| UP-011 | SRC-021 | phase/gate/evidence/rollback/stopline binding only | §9 + matrices/ops_support_closure_matrix.tsv | CLOSED | HOW remains route-out |
| UP-012 | SRC-025 | audit P0/P1/P2 findings fully integrated | review_fix_integration_matrix.tsv + package deltas | CLOSED | all audit findings mapped to landing |

---
<a id="sec-6-support-absorption"></a>

## 6. Support Absorption Ledger
| source | use | boundary | landing | note |
|---|---|---|---|---|
| Pipeline-A設計資料參考_合冊 | invariants / design discipline | SUPPORT_ONLY | §6 / Appendix B | never overrides owner law |
| Pipeline-A實作資料參考_合冊 | offline-first / no-api / thin-script / events logging | SUPPORT_ONLY | §10 / Appendix B | implementation discipline only |
| SEM8-ICT-TW | audit/bind/route-out shell | SUPPORT_ONLY | §6 / §7 | bridge only |
| SEM³資料參考_合冊 | SEG / MSC / TVE shell | SUPPORT_ONLY | §6 / §7 / semantic report | semantic shell only |
| 多模態多向量圖像檢索技術指南_筆記 | optional multivector lane | SUPPORT_ONLY | §10 / §14 / multivector matrix | never correctness prerequisite |
| 台股實戰映射_合冊 | TW calibration context | SUPPORT_BOUNDARY_ONLY | §6 | must not backflow into method law |

### 6.1 Support-only Legal Position
- support-only 只可補 document-layer closure、工具可行性、workflow 可行性、validator 可行性、schema exactness、attestation / packaging reality 的 **support proof**。  
- 只要缺的是 direct runtime proof / shipped release proof / owner readback，就不能用 support-only 轉成 PASS。  

---
<a id="sec-7-crosswalk"></a>

## 7. SRS / ARCH / LBP / Ops / Pack A-E / Pipeline-A Index / sibling subsystem Crosswalk
| row_id | domain | binding | landing | status |
|---|---|---|---|---|
| XW-001 | 正文 / SRS | mandatory artifact family | artifact_family_registry.tsv + samples/* | PASS |
| XW-002 | 正文 / SRS | SEM³ / SQM-7 minimum interop keys | schemas/* + reports/semantic_report.sample.json | PASS |
| XW-003 | SSOT | No-Source-No-Norm / anti-hallucination / stable anchors | §1 + exact_locator_register | PASS |
| XW-004 | LBP A-E | ADR / ICD / C4 / fitness / route-out | FENCE:SS_LBP_ANNEX | PASS |
| XW-005 | Pack A-E | Package B/D/E owner ceiling | §3.4 / §8 / release_blocker_contract.json | PASS |
| XW-006 | Pipeline-A Index | Master Spine linkage / distill bundle wording | §2 / Appendix B | PASS |
| XW-007 | Ops | OP-03/05/09 bind-only mapping | §9 + matrices/ops_support_closure_matrix.tsv | PASS |
| XW-008 | CA-WRC | allowlist/provenance/sealing intake dependency | matrices/interface_closure_matrix.tsv#IF-001 | PASS |
| XW-009 | CA-CORPUS | corpus snapshot / locator / grounding truth dependency | matrices/interface_closure_matrix.tsv#IF-002 | PASS |
| XW-010 | CA-DSL | PASS-only handoff / release stopline adjacency | matrices/interface_closure_matrix.tsv#IF-003 | PASS |

---
<a id="sec-8-interface-closure"></a>

## 8. Interface Closure Matrix
| if_id | producer | consumer | surface | legal_effect | route_out | stopline |
|---|---|---|---|---|---|---|
| IF-001 | CA-WRC | CA-DISTILL | allowlist / provenance / sealing | CONSUME_ONLY | CA-WRC owner | absence => FAIL_CLOSED before distill |
| IF-002 | CA-CORPUS | CA-DISTILL | corpus snapshot / source locator / grounding truth | CONSUME_ONLY | CA-CORPUS owner | absence => FAIL_CLOSED before claim/evidence materialization |
| IF-003 | CA-DISTILL | CA-DSL | PASS-only dsl_handoff_payload.json | MANDATORY_HANDOFF_CONTRACT | CA-DSL owner for consumer acceptance | handoff_allowed=false or missing SGF => no handoff |
| IF-004 | CA-DISTILL | Package B | schema / registry / evidence schema exact fields | ROUTE_OUT_ONLY | Package B owner | missing readback => BLOCK_RELEASE |
| IF-005 | CA-DISTILL | Package D | required checks / factory validators | ROUTE_OUT_ONLY | Package D owner | missing proof => BLOCK_RELEASE |
| IF-006 | CA-DISTILL | Package E | validator / release_guard / shipped package reality | ROUTE_OUT_ONLY | Package E owner | missing proof => BLOCK_RELEASE |

### 8.1 Interface Closure Note
- 對上游：`consume-only with completeness check`。  
- 對下游：`PASS-only handoff`。  
- 對 Package B/D/E：`route-out only`。  
- 對 sibling docs：鎖 interface truth 與 stable subsystem IDs，不鎖某一本兄弟書的版號。  

---
<a id="sec-9-opsflow"></a>

## 9. OpsFlow Binding Table / Operator-Flow Mapping / Stage-Binding Note
| ops_phase | edge_or_meaning | local_landing | gates | expected_artifacts | evidence_pointers | rollback_rule | stopline_condition | owner |
|---|---|---|---|---|---|---|---|---|
| OP-03 | CA-CORPUS -> CA-DISTILL intake / preflight / engine start | WP-002/WP-003 bridge ; §9 ; FENCE:SS_SRS | GATE-DISTILL-PREFLIGHT ; GATE-DISTILL-ENGINE | preflight_report.json ; input_manifest.json ; authority_map.json | Appendix B::LOC-022 ; source_usage_trace.tsv::SRC-019 ; sample_distill_bundle.json::source_usage_trace | rollback to intake review; quarantine unresolved locators | stop if allowlist/provenance/sealing or locator completeness absent | CA-DISTILL |
| OP-05 | CA-DISTILL -> CA-DSL handoff edge | WP-004 ; §9 ; IF-003 | GATE-DISTILL-SGF ; GATE-DISTILL-HANDOFF-DSL | distill_bundle.json ; dsl_handoff_payload.json ; semantic_gate.report.json | Appendix B::LOC-005 ; reports/semantic_report.sample.json ; samples/sample_dsl_handoff_payload.json | withdraw handoff_allowed and reopen package on gate/schema mismatch | stop if SGF decision != PASS or provenance incomplete | CA-DISTILL + CA-DSL |
| OP-09 | package / release truth stopline | §11 / §12 / §13 / FENCE:SS_DELIVER | GATE-PACKAGE-TRUTH ; GATE-RELEASE-STOPLINE | verdict.json ; evidence_index.json ; checks_manifest.json ; bundle_audit.json | release_blocker_contract.json ; package_validation.json ; machine_summary.json | reissue BLOCK_RELEASE and rerun validator when owner proof missing or checksum drifts | stop if Package B/D/E proof absent or runtime artifacts not materialized | Package E owner + subsystem local package truth |

### 9.1 Stage-Binding Note
本冊只綁：
- phase  
- gate  
- expected artifacts  
- evidence pointers  
- rollback  
- stopline  
- owner  

本冊 **不重寫** Ops HOW / WI / jobcard 全文。這一點不是保守，而是法位隔離。

---
<a id="sec-10-tooling"></a>

## 10. Tooling / Slot / Sidecar / Fallback / Support-only Legal Position
| tool_or_lane | position | why chosen / why not over-chosen | legal_position | fallback | release_impact |
|---|---|---|---|---|---|
| native markdown + JSON/TSV sidecars | PRIMARY_NATIVE | lowest friction / auditable / package-friendly | NORMATIVE_LOCAL | n/a | none |
| repo-local thin Python validator | THIN_SCRIPT_ALLOWED | after native + minimal config; bounded to schema/sample/trace/checksum checks | NORMATIVE_LOCAL | manual verification commands | document-scope only |
| GitHub Actions reusable workflow | MINIMAL_CONFIG_ALLOWED | native validation lane without inventing orchestration framework | SUPPORT_IMPLEMENTATION | local CLI | no release green by itself |
| Qdrant multivector / ColPali / MuVERA | OPTIONAL_LAB_ONLY | useful retrieval accelerator but wrong owner layer for correctness core | SUPPORT_ONLY | keep off | no impact when off |
| heavy custom control-plane framework | REJECT | violates anti-wheel and low-friction order | REJECTED | n/a | n/a |

### 10.1 Tooling Adjudication
- 先 native、再 minimal config、最後 thin script。  
- 同一能力不得堆太多主工具，避免高磨合與多頭裁決。  
- optional rich-doc / multivector / late interaction lane 一律 `OPTIONAL_LAB_ONLY / SUPPORT_ONLY / NEVER_CORRECTNESS_PREREQUISITE`。  
- 工具存在 != release readiness。  

### 10.2 Obsidian Shadow Frontstage / Sourcepack Editing
| lane_or_surface | allowed_use | forbidden_promotion | legal_position | package_truth_effect |
|---|---|---|---|---|
| `notes/obsidian/distill/claim-cards/` | claim drafting / claim review / source-crosswalk | direct note -> `distill_bundle.json` / `distill_pack.json` | SUPPORT_FRONTSTAGE_ONLY | excluded from mandatory manifest/checksums |
| `notes/obsidian/distill/function-cards/` | function-spec drafting / invariant review | direct note -> canonical artifact | SUPPORT_FRONTSTAGE_ONLY | excluded from mandatory manifest/checksums |
| `notes/obsidian/distill/sgf-review/` | SGF board / semantic review notes / reviewer queue | note as SGF verdict evidence of record | SUPPORT_FRONTSTAGE_ONLY | excluded from mandatory manifest/checksums |
| `notes/obsidian/distill/reader-quadrants/` | frontstage reader aid / drafting quadrants | note as shipped runtime quadrant truth | SUPPORT_FRONTSTAGE_ONLY | excluded from mandatory manifest/checksums |
| `notes/obsidian/distill/views/` | optional Bases / `.base` placement | `.base` as canonical package truth | OPTIONAL_TRACKED_FRONTSTAGE_ARTIFACT | archived only |
| `.obsidian/**` | local shell / vault config / layout convenience | shared settings as owner law or package truth | SUPPORT_FRONTSTAGE_ONLY | archived only |

### 10.3 Distill frontstage note tree（materialized）

```text
notes/obsidian/distill/
  claim-cards/
  function-cards/
  sgf-review/
  reader-quadrants/
  views/
```
- 以上路徑是 **frontstage note tree**，不是 canonical source tree。  
- sourcepack / schemas / contracts / reports / validators 仍在 repo-native mainline。  
- 唯一合法升格路徑：`materialize -> validate -> package`。  
- 本版另補 non-canonical exemplar：  
  - `notes/obsidian/distill/claim-cards/claim-card-canonical-distill-bundle.md`  
  - `notes/obsidian/distill/function-cards/function-card-pass-only-handoff.md`  
  - `notes/obsidian/distill/sgf-review/sgf-review-sample.md`  
  - `notes/obsidian/distill/reader-quadrants/reference-quadrant-note.md`  
  - `notes/obsidian/distill/views/distill-review.base`  


### 10.4 Obsidian gates / policies / promotion rule
| gate_or_policy | meaning | fail_condition | landing |
|---|---|---|---|
| `GATE-OBS-NOTE-NONPROMOTION` | note 不得直接冒充 canonical/package truth | mandatory path 直接引用 note/frontstage | contracts/obsidian_gate_registry.tsv |
| `GATE-OBS-MANIFEST-EXCLUSION` | `.obsidian/**`、`notes/obsidian/**` 不進 mandatory manifest/checksums | excluded paths 出現在 mandatory manifest/checksums | contracts/obsidian_gate_registry.tsv |
| `GATE-OBS-SHADOW-NONBLOCKING` | 關閉 Obsidian 後 mainline validator / CI / package path 仍須成立 | note-dependent hard failure | contracts/obsidian_gate_registry.tsv |
| `.base` placement policy | `.base` 只可落 `notes/obsidian/distill/views/` | `.base` 進 canonical path 或 package truth path | policies/base_file_placement_policy.md |
| `.obsidian` share policy | 不把共享設定升格為 correctness owner | shared config 成為 release/readback 依據 | policies/obsidian_share_policy.md |

### 10.5 Support-only legal ceiling（official-source bounded）
- Obsidian Bases / Web Clipper / Headless / plugin security 只作 **frontstage capability / risk / optional shell**；不得改寫 owner law。  
- GitHub Dev Containers / merge queue 只作 **mainline environment 與 CI shell** 佐證；不得把 support docs 升格為 release proof。  
- Community plugins（Dataview / Tasks / QuickAdd / Templater / Git）一律 optional；不裝也必須能完成最小 frontstage 流程。  

### 10.6 Mainline without Obsidian（hard rule）

- 關閉 Obsidian / 不載入 optional community plugins 時，`python scripts/ca_distill_validate.py --root .` 與 `.github/workflows/ca_distill_document_package.yml` 仍必須可跑。  
- `notes/obsidian/**`、`.obsidian/**` 只進 archive ledger，不進 package truth。  
- shipped validator 現在必須同時檢查：manifest/checksum/frontstage leaks、schema↔sample、required sections/fences/gates、inputs↔trace coverage、archive completeness、artifact_proof control-file policy。  
- workflow 現在同時掛 `pull_request`、`push`、`merge_group`、`workflow_dispatch`：`pull_request` 提供 review-time visibility，`merge_group` 保持 merge queue correctness。  
- 因此 Obsidian 加速的是 reviewer cycle / 文檔收斂 / frontstage authoring，不會自動補齊 Package B / D / E owner proof，也不會自動把 runtime/release blockers 關閉。  


---
<a id="sec-11-verdict"></a>

## 11. Truthful Verdict Framework
| layer | meaning | status |
|---|---|---|
| document | main markdown + sidecars + samples + package descriptors materialized and validated | PASS_PATCHED_FULLY_MATERIALIZED_DOCUMENT_PACKAGE |
| engineering | owner boundaries / route-out / matrices / schemas / substantive specimens document-scope ready | DOCUMENT_SCOPE_ACCEPTABLE_WITH_RUNTIME_RELEASE_GUARDS |
| execution | runtime artifacts and owner proofs not fully present | FAIL_CLOSED |
| release | Package B/D/E direct proofs missing | BLOCK_RELEASE |

---
<a id="sec-12-deliver-reality"></a>

## 12. Deliver Reality Table
| category | items | truth |
|---|---|---|
| materialized in this package | main MD, MANIFEST.json, CHECKSUMS.sha256, machine_summary.json, artifact_proof.tsv, package_tree.txt, delivery_manifest.json, validator script, workflow, schemas, contracts, matrices, reports, samples | EXISTS |
| runtime contract only | runtime distill_bundle.json instance, runtime distill_pack.json instance, live semantic_gate.report.json, runtime CA-DISTILL engine outputs | NOT_MATERIALIZED_HERE |
| direct release proofs still missing | Package B final schema readback, Package D required checks proof, Package E validator/release_guard/package reality proof | BLOCK_RELEASE |

### 12.1 Family Path Contract（CA-DISTILL local）
| scope | manifest_path | checksums_path | proof/support | verifier_cmd | artifact_subject_external | authority |
|---|---|---|---|---|---|---|
| CA-DISTILL | MANIFEST.json | CHECKSUMS.sha256 | release_readiness_support_matrix.tsv ; artifact_proof.tsv | python scripts/ca_distill_validate.py --root . | Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_MC4+_合冊_PACKAGE.zip | NORMATIVE_LOCAL |
| FAMILY_TEMPLATE | <input.manifest_path> | <input.checksums_path> | <input.proof_path> | <input.verifier_cmd> | <input.artifact_name> | SUPPORT_TEMPLATE_ONLY |

### 12.2 Artifact specimen digest
| artifact | specimen_path | what_now_exists | why_this_matters |
|---|---|---|---|
| claim_registry | samples/claim_registry.sample.json | 5 筆 claim，涵蓋 canonical naming、mandatory family、handoff、SEM³ 互通鍵位、truth split | 不是只列欄位；每筆 claim 均綁 source_locators、evidence_refs、rule_refs |
| evidence_chain | samples/evidence_chain.sample.jsonl | 7 筆 claim-evidence linkage，標示 normative / bridge 支撐層級 | 能回指 claim 與 evidence，不再只剩 contract |
| semantic_report | reports/semantic_report.sample.json | 含 semantic_ok / method_ok / translation_ok 與 SGF/MSC/TVE 分數、門檻、decision、rtm refs | 補齊中央正文最小互通鍵位 |
| alignment_matrix | samples/alignment_matrix.sample.tsv | 5 列 source→claim→function→interface 對位 | 不再只有一句『已對齊』 |
| reader_quadrants | samples/reader_quadrants.sample.md | Tutorial / How-to / Reference / Explanation 四象限各一個非空段落，且有 claim/source/evidence anchors | 修掉 title-only 假 closure |
| evidence_to_rules_interface_flow | samples/evidence_to_rules_interface_flow.sample.md | 6 步收斂鏈：source→evidence→claim→function_spec→semantic_gate→handoff | 避免 evidence 直接跳 interface |
| job_card | samples/job_card.sample.json | 含 task_description、input_adapters、expected_output_spec、constraints_and_gates、quadrant_checklist、verify、rollback_rule | 不重寫 Ops HOW，但保留可回放 job card |
| evidence_cards | samples/evidence_cards.sample.jsonl | 7 筆標準化 evidence cards，含 route_status | 支援 audit-safe evidence pointer |
| function_spec_chain | samples/function_spec_chain.sample.json | 1 條完整 function lineage，含 pre/post/types/error/examples/io_roundtrip | 補齊 rich object parity |
| distill_consistency_report | reports/distill_consistency_report.json | 4 項一致性檢查 | 明示 artifact naming / ops binding / family path parity |
| distill_test_report | reports/distill_test_report.json | 7 項測試結果與 NA_with_rationale | 把未啟用輔助證據誠實標成 NA |
| distill_bundle_manifest | samples/distill_bundle_manifest.sample.json | 列出 canonical artifact 與 specimen files | 與 rich schema 對齊 |
| source_usage_trace | source_usage_trace.tsv | 25 筆來源全覆蓋 | 修掉 trace 缺口 |

---
<a id="sec-13-tt"></a>

## 13. CR_OPEN Closure Register / TT Register / Reopen Rules / Block-release Conditions

### 13.1 CR_OPEN Closure Register
| cr_id | gap | source | landing | state | note |
|---|---|---|---|---|---|
| CR-001 | thin exact schemas in prior package | AUDIT::P0-001 | schemas/* + samples/* | TEMP_CLOSED | runtime Package B readback still absent; release remains blocked |
| CR-002 | mandatory family contract-only closure in prior package | AUDIT::P0-002 | samples/* + artifact_family_registry.tsv + §17.4 | TEMP_CLOSED | specimens now materialized for document scope; runtime instances still not claimed |
| CR-003 | family path contract pointed at nonexistent tgz | AUDIT::P0-003 | §12.1 + delivery_manifest.json | CLOSED | reopen only if deliverable basename changes |
| CR-004 | ops binding lacked evidence/rollback/stopline columns | AUDIT::P1-001 | §9 + matrices/ops_support_closure_matrix.tsv | CLOSED | reopen if Ops owner remaps phases |
| CR-005 | source usage trace incomplete | AUDIT::P1-002 | source_usage_trace.tsv | CLOSED | reopen if inputs manifest changes |
| CR-006 | support-web governance fields insufficient | AUDIT::P1-008 | web_evidence_registry.tsv | CLOSED | reopen if support research sources or rules change |
| CR-OBS-001 | Obsidian frontstage legal position absent from prior main book | OBSIDIAN::PATCH-DISTILL-MC4-OBS-001 | §10.2 + fences + contracts/obsidian_frontstage_contract.json | CLOSED | reopen if higher-law changes frontstage ceiling |
| CR-OBS-002 | manifest/checksums exclusion for `.obsidian/**` / `notes/obsidian/**` was not package-realized | OBSIDIAN::PATCH-FAM-OBS-003 | §10.4 + §19.2 + archive_ledger.tsv | CLOSED | reopen if excluded paths enter mandatory manifest |
| CR-OBS-003 | `.base` placement / `.obsidian` share policy absent | OBSIDIAN::F-006/F-010 | policies/* + §10.4 | CLOSED | reopen if policy owner changes or shared settings drift into truth path |
| CR-OBS-004 | shadow path nonblocking / promotion rule not TT-bound | OBSIDIAN::TT | §10.6 + §13.2 + test_tracking_list.tsv | TEMP_CLOSED | render/validate linkage still document-scope only |

### 13.2 TT Register
| tt_id | gap | class | state | release_effect | owner | reopen_when |
|---|---|---|---|---|---|---|
| TT-DISTILL-001 | Master Spine exact file absent | MISSING_EXACT_FILE | TEMP_CLOSED | NO_DIRECT_DOCUMENT_BLOCK | book owner / workspace source provider | reopen when exact file appears |
| TT-DISTILL-002 | Package B final schema / registry / evidence-schema readback absent | MISSING_OWNER_READBACK | BLOCK_RELEASE | BLOCK_RELEASE | Package B | reopen when authoritative owner readback is supplied |
| TT-DISTILL-003 | Package D required checks / factory validator proof absent | MISSING_OWNER_READBACK | BLOCK_RELEASE | BLOCK_RELEASE | Package D | reopen when proof bundle exists |
| TT-DISTILL-004 | Package E validator / release_guard / shipped package reality proof absent | MISSING_OWNER_READBACK | BLOCK_RELEASE | BLOCK_RELEASE | Package E | reopen when owner green proof exists |
| TT-DISTILL-005 | runtime distill outputs not materialized in this document package | NOT_MATERIALIZED_IN_THIS_PACKAGE | FAIL_CLOSED | BLOCK_EXECUTION_AND_RELEASE | CA-DISTILL runtime lane | reopen when runtime artifact bundle is actually produced |
| TT-DISTILL-006 | legacy standalone blueprint exact file absent | MISSING_EXACT_FILE | TEMP_CLOSED | NO_DIRECT_DOCUMENT_BLOCK | legacy source provider | reopen when file appears |
| TT-DISTILL-007 | separate old audit/review/patch driver exact file not provided | UNVERIFIED_SEPARATE_INPUT | TEMP_CLOSED | NO_DIRECT_DOCUMENT_BLOCK | source provider | reopen when standalone file appears |
| TT-DISTILL-008 | optional multivector / late-interaction lane not owner-validated | OPTIONAL_LAB_UNPROVEN | TEMP_CLOSED | NO_RELEASE_IMPACT_IF_OFF | support-only lab lane | reopen only if lane-on is requested |
| TT-OBS-001 | Mainline without Obsidian | NONBLOCKING_FRONTSTAGE | TEMP_CLOSED→TEST_TRACK | NO_RELEASE_IMPACT_IF_PASS | CA-DISTILL doc/package maintainer | reopen when validator or workflow becomes note-dependent |
| TT-OBS-002 | Manifest exclusion for `.obsidian/**` / `notes/obsidian/**` | PACKAGE_TRUTH_GUARD | TEMP_CLOSED→TEST_TRACK | BLOCK_DOCUMENT_PACKAGE_IF_BROKEN | CA-DISTILL package maintainer | reopen when manifest scope changes |
| TT-OBS-003 | Nonpromotion gate | PACKAGE_TRUTH_GUARD | TEMP_CLOSED→TEST_TRACK | BLOCK_DOCUMENT_PACKAGE_IF_BROKEN | CA-DISTILL package maintainer | reopen when canonical truth paths change |
| TT-OBS-006 | DISTILL promotion path = materialize -> validate -> package only | PROMOTION_RULE | TEMP_CLOSED→TEST_TRACK | BLOCK_RELEASE_IF_BROKEN | CA-DISTILL + Package D/E boundary | reopen when real render hook lands |
| TT-OBS-008 | merge_group / required checks coverage | CI_SUPPORT_GUARD | TEMP_CLOSED→TEST_TRACK | BLOCK_RELEASE_IF_OWNER_REQUIRES | GitHub / Package D route-out | reopen when required checks topology changes |
| TT-OBS-009 | Community plugin absence | OPTIONAL_PLUGIN_GUARD | TEMP_CLOSED→TEST_TRACK | NO_RELEASE_IMPACT_IF_PASS | frontstage maintainer | reopen when optional plugin becomes de facto mandatory |

### 13.3 Reopen Rules
- 任一 higher-law owner 調整 artifact naming、Package B schema、Package D required checks、Package E release guard、或 sibling handoff contract，即 reopen。  
- 任一 `MISSING_EXACT_FILE` 日後補到 direct file，必須重跑 parity diff，不得直接口頭宣稱 closure。  
- 任一 sample artifact 若被 owner readback 推翻，必須把 document-scope PASS 降回 TEMP_CLOSED。  
- 任一 Obsidian note/frontstage path 被誤寫進 canonical path / mandatory manifest / checksum truth，立即 reopen `CR-OBS-002/003` 並重建 package。  
- 任一 mainline validator / workflow 在關閉 Obsidian 後失效，立即 reopen `TT-OBS-001/009`。  

---
<a id="sec-14-web-evidence"></a>

## 14. Web Evidence Appendix（SUPPORT-only）
| web_id | support_claim | legal_position | primary_use | accessed_at | revoke_condition |
|---|---|---|---|---|---|
| SUP-WEB-OBS-01 | GitHub Dev Containers 將開發環境固定為 full-featured dev environment；Codespaces 亦以 dev container 為基礎 | SUPPORT_OFFICIAL | mainline deterministic dev environment / low-friction shell | 2026-03-30 Asia/Taipei | official spec / product behavior materially changes |
| SUP-WEB-OBS-02 | GitHub merge queue / merge_group 需讓 required checks 對 `merge_group` 事件回報，否則 merge queue 會失敗 | SUPPORT_OFFICIAL | required-check shell / TT-OBS-008 watchpoint | 2026-03-30 Asia/Taipei | GitHub merge queue semantics change |
| SUP-WEB-OBS-03 | Obsidian Bases 為 core plugin，支援 view / sort / filter / edit properties，且 view 可存成 `.base` | SUPPORT_OFFICIAL | optional tracked frontstage artifact / `.base` placement policy | 2026-03-30 Asia/Taipei | Bases or `.base` storage model changes |
| SUP-WEB-OBS-04 | `.base` 為 Obsidian accepted file type | SUPPORT_OFFICIAL | `.base` placement policy | 2026-03-30 Asia/Taipei | file-type support changes |
| SUP-WEB-OBS-05 | Obsidian Restricted Mode 預設阻止第三方 code execution；未信任前不應關閉 | SUPPORT_OFFICIAL | community plugin optional-only ceiling / security posture | 2026-03-30 Asia/Taipei | security model changes |
| SUP-WEB-OBS-06 | Obsidian Web Clipper Interpreter 可使用本地或外部語言模型，屬 capability shell 而非 owner truth | SUPPORT_OFFICIAL | capture / review aid only | 2026-03-30 Asia/Taipei | interpreter/privacy/provider model changes |
| SUP-WEB-OBS-07 | Obsidian Headless / CLI 為 beta / optional shell，不得被寫成 required correctness path | SUPPORT_OFFICIAL | optional automation shell / not canonical owner | 2026-03-30 Asia/Taipei | beta/CLI behavior materially changes |
| SUP-WEB-OBS-08 | `.obsidian/` 跨 vault 共享設定存在高漂移/損毀風險，故本冊不把 shared config 升格為 package truth | SUPPORT_COMMUNITY_RISK | supports conservative share policy only | 2026-03-30 Asia/Taipei | official sharing guidance materially changes |

### 14.1 Support-only usage rules
- 一律 **support-only**；不得覆寫中央正文 / SSOT / LBP / Pack A-E / sibling owner books。  
- 高決策權 support claim（會改動 gate / 主線 / 法位）優先雙來源；一般 capability 說明可採官方單一來源。  
- web evidence 的作用是：更新 capability freshness、界定 optional shell、提示 drift risk；不是 owner proof。  

### 14.2 Obsidian-specific support conclusion
- Bases / Web Clipper / Headless / community plugins 只支持 **frontstage 能力與風險辨識**。  
- 真正的 package truth 仍在 repo-native mainline：`schemas / contracts / reports / manifests / checksums / validators / workflows`。  
- 因此本版只把 Obsidian 納入 **support-frontstage**，不讓它越權碰 runtime / release truth。  

---
<a id="sec-15-machine-readable"></a>

## 15. Machine-readable blocks

### 15.1 Artifact Naming Resolution
```json
{
  "stable_id": "CA-DISTILL",
  "canonical_public_artifact": "distill_bundle.json",
  "internal_companion_artifact": "distill_pack.json",
  "adjudication_id": "ADJ-001",
  "legacy_wording_superseded": true
}
```

### 15.2 Verdict Snapshot
```json
{
  "document_verdict": "PASS_PATCHED_FULLY_MATERIALIZED_DOCUMENT_PACKAGE",
  "engineering_verdict": "DOCUMENT_SCOPE_ACCEPTABLE_WITH_RUNTIME_RELEASE_GUARDS",
  "execution_verdict": "FAIL_CLOSED",
  "release_verdict": "BLOCK_RELEASE",
  "delivery_verdict": "PASS_MATERIALIZED_DOCUMENT_PACKAGE"
}
```

### 15.3 Family Path Contract
```tsv
scope	manifest_path	checksums_path	proof/support	verifier_cmd	artifact_subject_external	authority
CA-DISTILL	MANIFEST.json	CHECKSUMS.sha256	release_readiness_support_matrix.tsv ; artifact_proof.tsv	python scripts/ca_distill_validate.py --root .	Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_MC4+_合冊_PACKAGE.zip	NORMATIVE_LOCAL
```

### 15.4 TT Summary
```json
{
  "tt_ids": [
    "TT-DISTILL-001",
    "TT-DISTILL-002",
    "TT-DISTILL-003",
    "TT-DISTILL-004",
    "TT-DISTILL-005",
    "TT-DISTILL-006",
    "TT-DISTILL-007",
    "TT-DISTILL-008",
    "TT-OBS-001",
    "TT-OBS-002",
    "TT-OBS-003",
    "TT-OBS-006",
    "TT-OBS-008",
    "TT-OBS-009"
  ],
  "release_blocker_ids": [
    "TT-DISTILL-002",
    "TT-DISTILL-003",
    "TT-DISTILL-004",
    "TT-DISTILL-005",
    "TT-OBS-006",
    "TT-OBS-008"
  ],
  "materialized_scope": "DOCUMENT_PACKAGE_ONLY"
}
```

### 15.5 Obsidian Frontstage Contract
```json
{
  "legal_position": "SUPPORT_FRONTSTAGE_ONLY",
  "repo_mode": "REPO_NATIVE_MAINLINE_PLUS_OBSIDIAN_SHADOW_FRONTSTAGE",
  "note_roots": [
    "notes/obsidian/distill/claim-cards/",
    "notes/obsidian/distill/function-cards/",
    "notes/obsidian/distill/sgf-review/",
    "notes/obsidian/distill/reader-quadrants/",
    "notes/obsidian/distill/views/"
  ],
  "mandatory_manifest_exclusions": [
    ".obsidian/**",
    "notes/obsidian/**"
  ],
  "gates": [
    "GATE-OBS-NOTE-NONPROMOTION",
    "GATE-OBS-MANIFEST-EXCLUSION",
    "GATE-OBS-SHADOW-NONBLOCKING"
  ],
  "promotion_rule": "materialize -> validate -> package",
  "forbidden_roles": [
    "canonical_artifact_source",
    "validator",
    "release_guard",
    "required_checks_authority",
    "runtime_truth",
    "release_truth"
  ]
}
```

### 15.6 Frontstage Path Matrix
```tsv
path	role	legal_position	manifest_truth	archive_truth
notes/obsidian/distill/claim-cards/	claim drafting / review	SUPPORT_FRONTSTAGE_ONLY	EXCLUDED	INCLUDED
notes/obsidian/distill/function-cards/	function drafting / review	SUPPORT_FRONTSTAGE_ONLY	EXCLUDED	INCLUDED
notes/obsidian/distill/sgf-review/	SGF review cockpit	SUPPORT_FRONTSTAGE_ONLY	EXCLUDED	INCLUDED
notes/obsidian/distill/reader-quadrants/	reader drafting quadrants	SUPPORT_FRONTSTAGE_ONLY	EXCLUDED	INCLUDED
notes/obsidian/distill/views/	.base / saved views	OPTIONAL_TRACKED_FRONTSTAGE_ARTIFACT	EXCLUDED	INCLUDED
.obsidian/	vault shell / local settings	SUPPORT_FRONTSTAGE_ONLY	EXCLUDED	INCLUDED
```

### 15.7 Packaging Pointer Register
```tsv
pointer_id	path	purpose
PKG-001	MANIFEST.json	mandatory package truth inventory
PKG-002	CHECKSUMS.sha256	checksum ledger for package files
PKG-003	archive_ledger.tsv	full archive inventory including excluded frontstage paths
PKG-004	artifact_proof.tsv	observed bytes/sha256/status proof
PKG-005	package_tree.txt	human-readable package tree
```


---
<a id="fence-ss-readme"></a>

# FENCE:SS_README

本冊入口責任：
- 告訴讀者 **先看什麼、不要誤讀什麼、哪些只是 support-only、哪些仍是 blockers**。  
- 保留單一路徑主線：`CA-WRC -> CA-CORPUS -> CA-DISTILL -> CA-DSL`。  
- 鎖死 `No-Source-No-Norm / No-Anchor-No-Claim / Declaration-Is-Not-Implementation / route-out != re-legislation`。  

快速檢索路由：
1. 要看來源是否真的存在：`§2`  
2. 要看衝突怎麼裁決：`§3`  
3. 要看 audit 問題怎麼被修掉：`§4`  
4. 要看 mandatory artifacts 到底是不是只有名字：`§12.2` 與 `§17.4`  
5. 要看還有什麼不能放行：`§13`  

使用邊界：
- 本冊可作為 **document package 驗收與追溯主文**。  
- 本冊不可被誤用為 runtime artifact bundle、Package B schema owner body、Package D/E release green proof、或 Ops HOW 手冊。  

## R6. Obsidian frontstage note
- `notes/obsidian/distill/**` 僅是 reviewer / authoring frontstage。  
- `.obsidian/**` 與 `notes/obsidian/**` 不得被誤讀為 package truth。  
- 使用者若看到 note 很完整，也不能把它直接當成 canonical artifact readback；先 materialize，再 validate。  

# END_FENCE:SS_README

---
<a id="fence-ss-srs"></a>

# FENCE:SS_SRS

## 17.1 需求與邊界
- 需求：把 lawful corpus handoff 收斂成可回指 claim / evidence / distill bundle / PASS-only handoff 的正式 owner 文面。  
- 邊界：不生成 OCR、不擁有 retrieval correctness、不擁有 Package B/D/E exact owner law、不重寫 Ops HOW、不代替 CA-DSL 做 purity acceptance。  

## 17.2 Mandatory artifacts（contract + specimen 雙落盤）
| artifact_family_item | kind | purpose | truth_class | specimen_path | contract_or_schema_path | doc_anchor |
|---|---|---|---|---|---|---|
| claim_registry | mandatory family artifact | normalized claim units with source/evidence anchors | document | samples/claim_registry.sample.json | contracts/claim_registry_contract.tsv | §17.4 + §15 |
| evidence_chain | mandatory family artifact | claim-to-evidence lineage chain | document | samples/evidence_chain.sample.jsonl | contracts/evidence_chain_contract.tsv | §17.4 + §15 |
| semantic_report | mandatory family artifact | semantic fidelity / SGF oriented report | document | reports/semantic_report.sample.json | contracts/semantic_report_contract.tsv | §17.4 + §15 |
| alignment_matrix | mandatory family artifact | evidence/rules/interface alignment | document | samples/alignment_matrix.sample.tsv | matrices/alignment_matrix.tsv | §17.4 + §15 |
| reader_quadrants.tutorial | mandatory quadrant | tutorial quadrant with substantive content | document | samples/reader_quadrants.sample.md#tutorial | contracts/reader_quadrants_contract.tsv | §17.4 + §15 |
| reader_quadrants.how_to | mandatory quadrant | how-to quadrant with substantive content | document | samples/reader_quadrants.sample.md#how-to | contracts/reader_quadrants_contract.tsv | §17.4 + §15 |
| reader_quadrants.reference | mandatory quadrant | reference quadrant with substantive content | document | samples/reader_quadrants.sample.md#reference | contracts/reader_quadrants_contract.tsv | §17.4 + §15 |
| reader_quadrants.explanation | mandatory quadrant | explanation quadrant with substantive content | document | samples/reader_quadrants.sample.md#explanation | contracts/reader_quadrants_contract.tsv | §17.4 + §15 |
| evidence_to_rules_interface_flow | mandatory family artifact | convergence path from evidence to rules to interface | document | samples/evidence_to_rules_interface_flow.sample.md | matrices/evidence_rules_interface.tsv | §17.4 + §15 |
| job_card | mandatory family artifact | distill job identity / trigger / verify / rollback | document | samples/job_card.sample.json | contracts/job_card_contract.tsv | §17.4 + §15 |
| evidence_cards | mandatory family artifact | normalized evidence cards | document | samples/evidence_cards.sample.jsonl | contracts/evidence_cards_contract.tsv | §17.4 + §15 |
| function_spec_chain | mandatory family artifact | function-spec lineage chain | document | samples/function_spec_chain.sample.json | contracts/function_spec_chain_contract.tsv | §17.4 + §15 |
| distill_consistency_report | mandatory family artifact | consistency verification output | document | reports/distill_consistency_report.json | NONE | §17.4 + §15 |
| distill_test_report | mandatory family artifact | validator / package / contract test output | document | reports/distill_test_report.json | NONE | §17.4 + §15 |
| distill_bundle_manifest | mandatory family artifact | manifest for canonical public artifact | document | samples/distill_bundle_manifest.sample.json | schemas/distill_bundle.schema.json | §17.4 + §15 |
| source_usage_trace | mandatory family artifact | trace of consumed sources and scope limits | document | source_usage_trace.tsv | NONE | §2.1 + §15 |
| dsl_handoff_payload | adjacent handoff artifact | PASS-only handoff payload to CA-DSL | document | samples/sample_dsl_handoff_payload.json | schemas/dsl_handoff_payload.schema.json | §15 |

## 17.3 Interfaces / gates / acceptance / blockers / non-goals
- Interfaces：`IF-001 ~ IF-006`。  
- Gates：`GATE-DISTILL-PREFLIGHT`、`GATE-DISTILL-ENGINE`、`GATE-DISTILL-SGF`、`GATE-DISTILL-HANDOFF-DSL`、`GATE-PACKAGE-TRUTH`、`GATE-RELEASE-STOPLINE`。  
- Acceptance：四象限非空、claim/evidence 雙錨、SEM³ minimum interop keys 保留、huffman? 不，這裡沒有魔法，只有 evidence。  
- Blockers：Package B/D/E owner readback 缺失、runtime distill outputs 未物化。  
- Non-goals：不在本書自立最終 schema body、不替 Ops RUNBOOK 寫 HOW、不把 optional multivector lane 升格為 correctness prerequisite。  

## 17.4 Mandatory artifacts substantive digest
| artifact | specimen_path | what_now_exists | why_this_matters |
|---|---|---|---|
| claim_registry | samples/claim_registry.sample.json | 5 筆 claim，涵蓋 canonical naming、mandatory family、handoff、SEM³ 互通鍵位、truth split | 不是只列欄位；每筆 claim 均綁 source_locators、evidence_refs、rule_refs |
| evidence_chain | samples/evidence_chain.sample.jsonl | 7 筆 claim-evidence linkage，標示 normative / bridge 支撐層級 | 能回指 claim 與 evidence，不再只剩 contract |
| semantic_report | reports/semantic_report.sample.json | 含 semantic_ok / method_ok / translation_ok 與 SGF/MSC/TVE 分數、門檻、decision、rtm refs | 補齊中央正文最小互通鍵位 |
| alignment_matrix | samples/alignment_matrix.sample.tsv | 5 列 source→claim→function→interface 對位 | 不再只有一句『已對齊』 |
| reader_quadrants | samples/reader_quadrants.sample.md | Tutorial / How-to / Reference / Explanation 四象限各一個非空段落，且有 claim/source/evidence anchors | 修掉 title-only 假 closure |
| evidence_to_rules_interface_flow | samples/evidence_to_rules_interface_flow.sample.md | 6 步收斂鏈：source→evidence→claim→function_spec→semantic_gate→handoff | 避免 evidence 直接跳 interface |
| job_card | samples/job_card.sample.json | 含 task_description、input_adapters、expected_output_spec、constraints_and_gates、quadrant_checklist、verify、rollback_rule | 不重寫 Ops HOW，但保留可回放 job card |
| evidence_cards | samples/evidence_cards.sample.jsonl | 7 筆標準化 evidence cards，含 route_status | 支援 audit-safe evidence pointer |
| function_spec_chain | samples/function_spec_chain.sample.json | 1 條完整 function lineage，含 pre/post/types/error/examples/io_roundtrip | 補齊 rich object parity |
| distill_consistency_report | reports/distill_consistency_report.json | 4 項一致性檢查 | 明示 artifact naming / ops binding / family path parity |
| distill_test_report | reports/distill_test_report.json | 7 項測試結果與 NA_with_rationale | 把未啟用輔助證據誠實標成 NA |
| distill_bundle_manifest | samples/distill_bundle_manifest.sample.json | 列出 canonical artifact 與 specimen files | 與 rich schema 對齊 |
| source_usage_trace | source_usage_trace.tsv | 25 筆來源全覆蓋 | 修掉 trace 缺口 |

### 17.4.1 四象限實質內容摘記
- **Tutorial**：說明從 lawful snapshot 到 claim/evidence/function-spec 的最小 walkthrough，避免讀者把 bundle 當黑箱。  
- **How-to**：說明如何檢查 trace、schema、validator、TT；沒有偷寫成 Ops HOW。  
- **Reference**：列出 artifact_kind、canonical_public_artifact、reader_quadrants、semantic_gate、handoff payload rich fields 與 fail semantics。  
- **Explanation**：交代為何要用 low-friction 的 specimen + schema，而不是再堆工具把責任面藏起來。  

## 17.5 Truth split / pass-fail semantics
- document pass：本冊正文、samples、schemas、contracts、reports、matrices 已 materialize 且可校驗。  
- execution pass：需 runtime artifacts 真實存在並 readback pass。  
- release pass：另需 Package B/D/E proofs 全綠。  

## 17.5 Obsidian frontstage requirements（added in this edition）
- 必須存在：`notes/obsidian/distill/claim-cards/`、`function-cards/`、`sgf-review/`、`reader-quadrants/`、`views/`。  
- 必須成立：`GATE-OBS-NOTE-NONPROMOTION`、`GATE-OBS-MANIFEST-EXCLUSION`、`GATE-OBS-SHADOW-NONBLOCKING`。  
- `.base` 只可落 `notes/obsidian/distill/views/`。  
- 不裝 optional community plugins 時，frontstage 最小流程仍須可完成。  

# END_FENCE:SS_SRS

---
<a id="fence-ss-arch"></a>

# FENCE:SS_ARCH

## 18.1 架構圖（文字化）
`CA-WRC (allowlist/provenance/sealing) -> CA-CORPUS (snapshot/locator/grounding) -> CA-DISTILL (claims/evidence/spec/invariant/SGF) -> CA-DSL (formalization/purity/consumer acceptance)`

## 18.2 Owner boundaries
- 上游 owner 真相只 consume，不吞。  
- 下游只 PASS-only handoff，不替 consumer 做 acceptance。  
- Package B/D/E 一律 route-out only。  

## 18.3 Data / evidence / rules / interface flows
- **Data flow**：lawful corpus handoff -> preflight contract -> distill engine -> public canonical artifact contract -> PASS-only DSL handoff。  
- **Evidence flow**：source locator -> evidence card -> evidence chain -> semantic report -> verdict surface。  
- **Rules flow**：higher-law clauses -> local conflict adjudication -> matrices/contracts/schemas -> validator。  
- **Interface flow**：WRC intake truth -> CORPUS handoff truth -> DISTILL artifact truth -> DSL consumer truth。  

## 18.4 Fallback / degrade / quarantine
- missing exact file -> manifest + TT + TEMP_CLOSED  
- missing Package B/D/E proof -> FAIL_CLOSED / BLOCK_RELEASE  
- optional multivector lane unproven -> OPTIONAL_LAB_ONLY  
- support-only web research -> appendix only  

## 18.5 Anti-wheel rationale
- native markdown + sidecars already close the contract surface。  
- minimal workflow suffices for package validation。  
- thin script 只做 schema/sample/trace/checksum checks，避免把責任埋進框架。  

## 18.6 Route-out map
- schema -> Package B  
- required checks / factory validators -> Package D  
- validator / release guard / shipped package reality -> Package E  
- exact HOW / WI / jobcards -> Ops RUNBOOK  
- formalization purity / consumer acceptance -> CA-DSL  

## 18.6 Obsidian frontstage architecture overlay
- mainline：repo-native sourcepack / schemas / contracts / reports / manifests / validators / workflows。  
- shadow：`notes/obsidian/distill/**`。  
- crossing rule：note -> materialized sourcepack/specimen -> validator -> package；禁止 note 直接越級到 package truth。  
- `.obsidian/` 僅為 vault shell；不得成為 shared correctness owner。  

# END_FENCE:SS_ARCH

---
<a id="fence-ss-deliver"></a>

# FENCE:SS_DELIVER

## 19.1 Deliverables
- `Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_MC4+_合冊_v2026.03.30-r6.md`
- `Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_MC4+_合冊_PACKAGE_v2026.03.30-r6.zip`

## 19.2 Package tree（minimum）
- 主 MD  
- `MANIFEST.json`  
- `CHECKSUMS.sha256`  
- `machine_summary.json`  
- `artifact_proof.tsv`  
- `package_tree.txt`  
- `delivery_manifest.json`  
- `release_blocker_contract.json`  
- `inputs_manifest.tsv`  
- `conflict_adjudication_register.tsv`  
- `cr_open_register.tsv`  
- `test_tracking_list.tsv`  
- `web_evidence_registry.tsv`  
- `artifact_family_registry.tsv`  
- `source_usage_trace.tsv`  
- `archive_ledger.tsv`  
- `contracts/*`  
- `schemas/*`  
- `samples/*`  
- `matrices/*`  
- `policies/*`  
- `reports/*`  
- `scripts/*`  
- `.github/workflows/*`  
- `notes/obsidian/**`（archive-only；not mandatory manifest truth）  
- `.obsidian/**`（archive-only；not mandatory manifest truth）  

## 19.3 Validators / workflows
- `python scripts/ca_distill_validate.py --root .`
- `python scripts/promotion_smoke.py --root .`
- `.github/workflows/ca_distill_document_package.yml`
- workflow triggers：`pull_request` + `push` + `merge_group` + `workflow_dispatch`

## 19.4 Truthful packaging statement
- 本回合已物化的是 **document package**。  
- 本回合已把 `notes/obsidian/distill/**`、`.obsidian/**` 與其政策/契約一併放入 ZIP / archive ledger；其中 frontstage 五個資料夾已補 exemplar notes / cards / `.base` view，但它們 **仍不進 mandatory manifest/checksums/package truth**。  
- 本回合沒有物化 runtime `distill_bundle.json` instance、runtime `distill_pack.json` instance、Package D validator outputs、Package E release_guard green proof。  
- 因此 package pass 不可倒推成 runtime/release pass。  
- note/frontstage existence 亦不可倒推成 render/validate/release green。  

## 19.5 Release blockers
- Package B authoritative schema readback absent  
- Package D required checks / factory proof absent  
- Package E validator / release_guard / shipped package reality proof absent  
- runtime distill outputs absent in this package  
- promotion-smoke 尚未接到 real render engine / owner validator chain  

# END_FENCE:SS_DELIVER

---
<a id="fence-ss-lbp-annex"></a>

# FENCE:SS_LBP_ANNEX

## 20.1 ADR
- 將 artifact naming conflict 從 prose 吵架改為 explicit adjudication register。  
- 將 support-only lane 全數降法位，避免 MMVR / web docs 越位。  
- 將 mandatory family 從 contract-only 升級為 contract + specimen +正文摘要。  

## 20.2 ICD
- `CA-CORPUS -> CA-DISTILL`：lawful snapshot + source locator + grounding truth  
- `CA-DISTILL -> CA-DSL`：PASS-only `dsl_handoff_payload.json`  
- `CA-DISTILL -> Package B/D/E`：schema / validators / release guard route-out only  

## 20.3 C4
- Container：document main book + sidecar family + validator + workflow  
- Component：contracts / schemas / samples / matrices / reports / truth registries  
- External systems：WRC / CORPUS / DSL / Package B / D / E / Ops  

## 20.4 Fitness
- fake FOUND disallowed  
- fake runtime/release closure disallowed  
- checksum divergence invalidates package  
- support-only promoted to normative = fail  
- quadrants title-only = fail  
- trace rows < inputs rows = fail  

## 20.5 Package D/E adjacency
- 本 annex 只列 adjacency、blocker、owner map；不偷渡 D/E owner schema 正文或 HOW 正文。  

## 20.6 Obsidian adjacency
- ADR：frontstage 只能加速 reviewer cycle，不可替代 canonical/package truth。  
- ICD：`notes/obsidian/distill/**` -> materialize -> validator -> package；不得 note 直連 interface truth。  
- C4：shadow frontstage 是輔助容器，不是 correctness owner。  
- Fitness：frontstage path 進 mandatory manifest = fail；note 直升 canonical = fail；optional plugin 變 required = fail。  

# END_FENCE:SS_LBP_ANNEX

---
<a id="sec-21-appendices"></a>

## 21. Appendices

### Appendix A — Source Existence Proof

### Appendix A — Source Existence Proof
> 本版把「`/mnt/data` 工作區可直讀」與「只能 file_search readback」與「只有 carrier trace」拆開處理。只有 exact file 真正在 `/mnt/data` 存在，才可作 `workspace_mount_state=EXISTS_IN_WORKSPACE_ROOT` 類證明。

| source_id | file | status | workspace_mount_state |
|---|---|---|---|
| SRC-001 | Pipeline-A_MC4+_WP-M_WP-RB-WI_最終升級藍圖.md | FOUND_FILE_LIBRARY_READBACK | NOT_MOUNTED_IN_WORKSPACE_ROOT |
| SRC-002 | CA-DISTILL_MC4+_WP-M_WP-RB-WI_最終升級藍圖.md | FOUND_FILE_LIBRARY_READBACK | NOT_MOUNTED_IN_WORKSPACE_ROOT |
| SRC-003 | Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_MC4+_合冊.md | FOUND_CONTAINER_MOUNT | EXISTS_IN_WORKSPACE_ROOT |
| SRC-004 | Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md | FOUND_CONTAINER_MOUNT | EXISTS_IN_WORKSPACE_ROOT |
| SRC-005 | Spartoi-OMOC_SSOT_合冊.md | FOUND_CONTAINER_MOUNT | EXISTS_IN_WORKSPACE_ROOT |
| SRC-006 | Spartoi-OMOC_LBP_合冊.md | FOUND_CONTAINER_MOUNT | EXISTS_IN_WORKSPACE_ROOT |
| SRC-007 | Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊.md | FOUND_CONTAINER_MOUNT | EXISTS_IN_WORKSPACE_ROOT |
| SRC-008 | Spartoi-OMOC_SubP1-LITE+MVP_合冊.md | FOUND_CONTAINER_MOUNT | EXISTS_IN_WORKSPACE_ROOT |
| SRC-009 | OMOC_合冊.md | FOUND_CONTAINER_MOUNT | EXISTS_IN_WORKSPACE_ROOT |
| SRC-010 | 參考方案合冊.md | FOUND_CONTAINER_MOUNT | EXISTS_IN_WORKSPACE_ROOT |
| SRC-011 | Pipeline-A_Index_Pack_Full_Monolith.md | FOUND_CONTAINER_MOUNT | EXISTS_IN_WORKSPACE_ROOT |
| SRC-012 | Pipeline-A設計資料參考_合冊.md | FOUND_CONTAINER_MOUNT | EXISTS_IN_WORKSPACE_ROOT |
| SRC-013 | Pipeline-A實作資料參考_合冊.md | FOUND_CONTAINER_MOUNT | EXISTS_IN_WORKSPACE_ROOT |
| SRC-014 | SEM8-ICT-TW_重構升級藍圖_v1.2.1-r1.md | FOUND_CONTAINER_MOUNT | EXISTS_IN_WORKSPACE_ROOT |
| SRC-014A | Pipeline-A_Obsidian升級藍圖.md | FOUND_CONTAINER_MOUNT | EXISTS_IN_WORKSPACE_ROOT |
| SRC-015 | SEM³資料參考_合冊.md | FOUND_CONTAINER_MOUNT | EXISTS_IN_WORKSPACE_ROOT |
| SRC-016 | 多模態多向量圖像檢索技術指南_筆記.txt | FOUND_CONTAINER_MOUNT | EXISTS_IN_WORKSPACE_ROOT |
| SRC-017 | 台股實戰映射_合冊.md | FOUND_CONTAINER_MOUNT | EXISTS_IN_WORKSPACE_ROOT |
| SRC-018 | Spartoi-OMOC_SubP1-LITE+MVP_CA-WRC_合冊.md | MISSING_EXACT_FILE | NOT_MOUNTED_IN_WORKSPACE_ROOT |
| SRC-019 | Spartoi-OMOC_SubP1-LITE+MVP_CA-CORPUS_合冊.md | MISSING_EXACT_FILE | NOT_MOUNTED_IN_WORKSPACE_ROOT |
| SRC-020 | Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_合冊.md | MISSING_EXACT_FILE | NOT_MOUNTED_IN_WORKSPACE_ROOT |
| SRC-021 | Ops RUNBOOK_合冊.md | FOUND_CONTAINER_MOUNT | EXISTS_IN_WORKSPACE_ROOT |
| SRC-022 | Spartoi-OMOC_Master_Spine_Full_Monolith.md | MISSING_EXACT_FILE | NOT_MOUNTED_IN_WORKSPACE_ROOT |
| SRC-023 | CA-DISTILL_重構升級藍圖_v2026.03.12-r4.md | MISSING_EXACT_FILE | NOT_MOUNTED_IN_WORKSPACE_ROOT |
| SRC-024 | 舊版 audit / review / patch driver（separate exact file） | UNVERIFIED_NOT_PROVIDED_AS_SEPARATE_FILE | NOT_MOUNTED_IN_WORKSPACE_ROOT |
| SRC-025 | Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_MC4+_合冊_AUDIT.md | FOUND_CONTAINER_MOUNT | EXISTS_IN_WORKSPACE_ROOT |

### Appendix B — Exact-locator Register
| locator_id | source | locator | why_used |
|---|---|---|---|
| LOC-001 | Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md | L34 | Master Spine appears in top-level source list; proves source-list presence only |
| LOC-002 | Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md | L3271-L3282 | CA-DISTILL mandatory artifact family base including claim_registry and reader_quadrants |
| LOC-003 | Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md | L3316-L3324 | SEM³ / SQM-7 minimum interoperability keys |
| LOC-004 | Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md | L3446 | single Pipeline-A mainline = CA-WRC -> CA-CORPUS -> CA-DISTILL -> CA-DSL |
| LOC-005 | CA-DISTILL_MC4+_WP-M_WP-RB-WI_最終升級藍圖.md | L141-L145 | artifact constitution: public canonical artifact / internal companion / payload |
| LOC-006 | CA-DISTILL_MC4+_WP-M_WP-RB-WI_最終升級藍圖.md | L220-L242 | exact schema principles for distill_bundle and dsl_handoff payload |
| LOC-007 | Pipeline-A_MC4+_WP-M_WP-RB-WI_最終升級藍圖.md | L207-L217 | note-3 mandatory artifact family closure for CA-DISTILL |
| LOC-008 | Pipeline-A_MC4+_WP-M_WP-RB-WI_最終升級藍圖.md | L221-L226 | note-4 OP-03 / OP-05 / OP-09 phase mapping |
| LOC-009 | Ops RUNBOOK_合冊.md | L3383-L3401 | OP-03 / OP-05 / OP-09 operator flow names |
| LOC-010 | Pipeline-A_Index_Pack_Full_Monolith.md | L88-L89 ; L197 | Master Spine linkage + distill bundle wording at index bridge layer |
| LOC-011 | SEM8-ICT-TW_重構升級藍圖_v1.2.1-r1.md | L15 ; L377 | audit shell / bind shell / route-out shell + G-SEG-L shell |
| LOC-012 | SEM³資料參考_合冊.md | L42 ; L94-L95 | SEG / MSC / TVE semantic shell |
| LOC-013 | Pipeline-A實作資料參考_合冊.md | L58 | Offline-First / No-API / events logging discipline |
| LOC-014 | 多模態多向量圖像檢索技術指南_筆記.txt | L8-L16 ; L26 | Qdrant / ColPali / MuVERA / MaxSim optional multivector lane |
| LOC-015 | Spartoi-OMOC_SubP1-LITE+MVP_Pipeline-A_MC4+_WP-M_合冊.md | L1882-L1908 | mounted carrier proof for WRC intake / allowlist / provenance / sealing / handoff boundary |
| LOC-016 | Spartoi-OMOC_SubP1-LITE+MVP_Pipeline-A_MC4+_WP-M_合冊.md | L3158-L3159 | mounted carrier proof for CORPUS adjacent-boundary locators |
| LOC-017 | Spartoi-OMOC_SubP1-LITE+MVP_Pipeline-A_MC4+_WP-M_合冊.md | L3160-L3164 | mounted carrier proof for DISTILL->DSL PASS-only / DSL owner boundary locators |
| LOC-018 | Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_MC4+_合冊_v2026.03.30-r5_AUDIT_v2026.03.30-r1.md | L55-L100 ; L182-L200 | destructive audit findings, patch priorities, and ordered repair plan |


### Appendix C — Package Truth Summary
- 本 package 自身是可下載、可解壓、可校驗、可追溯的 document package。  
- package 內 sample artifacts 是 **document-scope specimen**，不是 runtime outputs。  
- runtime / release 缺證據之處，一律仍保留 `FAIL_CLOSED / BLOCK_RELEASE`。  


### Appendix D — Obsidian Frontstage Package Note
- materialized note tree：`notes/obsidian/distill/claim-cards/`、`function-cards/`、`sgf-review/`、`reader-quadrants/`、`views/`。  
- archive truth：在 ZIP 與 `archive_ledger.tsv` 可見。  
- package truth：預設排除於 `MANIFEST.json` / `CHECKSUMS.sha256` mandatory scope 之外。  
- legal effect：reviewer/frontstage aid only。  

### Appendix E — Package Tree / Manifest / Checksum Pointers
| pointer | path | note |
|---|---|---|
| TREE-001 | `package_tree.txt` | 人類可讀 package tree |
| MF-001 | `MANIFEST.json` | mandatory package truth inventory（excludes frontstage paths） |
| CS-001 | `CHECKSUMS.sha256` | checksum ledger for package files（excludes self） |
| AR-001 | `archive_ledger.tsv` | full archive inventory including excluded frontstage paths |

### Appendix F — Self-audit closeout
- Obsidian integration 已落入主文、fences、policies、contracts、matrices、TT、archive/package truth separation。  
- `DOCUMENT_PACKAGE_ONLY` 維持；runtime / release truth 未被洗綠。  
- Package B / D / E owner proofs 仍 absent，故 release verdict 維持 `BLOCK_RELEASE`。  
