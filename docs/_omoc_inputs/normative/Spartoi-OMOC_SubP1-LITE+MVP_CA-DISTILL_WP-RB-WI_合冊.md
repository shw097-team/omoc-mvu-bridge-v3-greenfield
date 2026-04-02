# Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-RB-WI_合冊_v2026.03.30-r6.md

> document_verdict = `PASS_PATCHED_AUDIT_CLOSURE_MATERIALIZED_DOCUMENT_PACKAGE`  
> execution_verdict = `FAIL_CLOSED`  
> release_verdict = `BLOCK_RELEASE`  
> delivery_verdict = `PASS_MATERIALIZED_CURRENT_SESSION_PATCHED_DOCUMENT_PACKAGE`

<a id="sec-1"></a>
## 1. Cover Card / Doc Meta / Machine Summary / Versioning Note

| field | value |
|---|---|
| external_name | Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-RB-WI_合冊 |
| internal_short_name | SOMOC-CADISTILL-WPRBWI |
| stable_id | CA-DISTILL |
| subsystem_id | CA-DISTILL |
| doc_kind | WP_RB_WI_BUNDLE |
| version | v2026.03.30-r6 |
| date | 2026-03-30 |
| timezone | Asia/Taipei |
| supersedes | Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-RB-WI_合冊.md；Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-RB-WI_合冊_v2026.03.29-r4.md；Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-RB-WI_合冊_v2026.03.30-r5.md（document layer） |
| absorbs | current MC4+；current WP-M；Pipeline-A_Obsidian升級藍圖；uploaded legacy WP-RB-WI baseline；r5 destructive audit report |
| authority_order_fixed | 中央工程正文 → SSOT → LBP → Pack A-E+工程指南 → SubP1-LITE+MVP_合冊 → OMOC_合冊 → 參考方案合冊 |
| fixed_goal_premise_order | 嚴禁自己造輪子 → 現成工具原生能力 → 現成工具+極少配置 → 最後才准許自寫薄腳本 → 低磨合 → 100%逐項達成正文系統需求 |
| pipeline_mainline | CA-WRC → CA-CORPUS → CA-DISTILL → CA-DSL |
| public_canonical_artifact | distill_bundle.json |
| internal_companion_artifact | distill_pack.json |
| package_scope | DOCUMENT_PACKAGE_ONLY |
| obsidian_legal_position | SUPPORT_FRONTSTAGE_ONLY |
| document_verdict | PASS_PATCHED_AUDIT_CLOSURE_MATERIALIZED_DOCUMENT_PACKAGE |
| execution_verdict | FAIL_CLOSED |
| release_verdict | BLOCK_RELEASE |
| delivery_verdict | PASS_MATERIALIZED_CURRENT_SESSION_PATCHED_DOCUMENT_PACKAGE |

### 1.1 任務級最終裁決
本版不是 cosmetic patch，也不是替 r5 換個日期再祈禱 audit 失憶。r6 做了四件實事：
1. 保留 r5 已經正確的上位法、canonical naming、truth split、missing-exact-file honesty、execution/release fail-closed posture。
2. 全量整合 r5 destructive audit，把 `ghost LOC/REQ IDs`、`declared-but-unmaterialized sidecars`、`schema/sample/validator/sourcepack 缺失`、`Self-Audit/Final Truthful Verdict 過度宣稱` 全數閉合。
3. 真正物化 audit 點名缺失的 substrate：`source_hit_list.tsv`、`interface_closure_matrix.tsv`、`artifact_family_legal_registry.tsv`、`phase_caps.tsv`、`owner_evidence_acquisition_plan.tsv`、`audit_patch_closure_matrix.tsv`、`release_readiness_support_matrix.tsv`、`book_system_legal_registry.tsv`、`canonical_crosswalk.json`、`artifact_family_registry.tsv`、`rbwi_similarity_guard.tsv`、`schemas/*`、`samples/*`、`scripts/ca_distill_validate.py`、sourcepack 四檔。
4. 重寫 Self-Audit、Final Truthful Verdict、Download Inventory、MANIFEST / CHECKSUMS / package tree，讓 package reality 與條文回到同一層真相面。

### 1.2 固定憲制事實
- `Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文` = `Spartoi-OMOC_SubP1-LITE+MVP_正文合冊::DOC-0001`。
- `Spartoi-OMOC_系統需求正文` = `Spartoi-OMOC_SubP1-LITE+MVP_正文合冊::DOC-0002`。
- `參考方案_合冊` 一律正規化為 `參考方案合冊`。
- `distill_bundle.json` = **public canonical artifact**。
- `distill_pack.json` = **internal companion artifact**。
- `document/package truth != runtime truth != execution truth != release truth`。
- `route-out != absorbed`；`support-only != owner proof`；`Declaration-Is-Not-Implementation`。
- `Obsidian = SUPPORT_FRONTSTAGE_ONLY`；frontstage note / `.obsidian/**` / `.base/**` 不得直升 canonical/package/runtime/release truth。

### 1.3 Versioning Note
- r5 的可取部分保留：authority stack、goal premise order、canonical naming、truth split、missing-file honesty、WP/RB/WI 全量外形。
- r6 的修補重點：補 ID chain、補 missing substrate、補 sourcepack/schema/sample/validator、補 audit closure ledger、補 truthful verdict。
- r6 沒有洗綠燈：execution 仍 `FAIL_CLOSED`，release 仍 `BLOCK_RELEASE`。

<a id="sec-2"></a>
## 2. 導讀 / Reader Guide / 強制檢索順序 / Quick Index / Anti-Hallucination Rules

### 2.1 強制檢索順序
1. 先讀 §4 Inputs Manifest / Missing Ledger，先確認你手上的是 exact file、carrier readback，還是 support-only。
2. 再讀 §5 Authority / Conflict / Goal Premise / One-Rule-One-Owner，先確認誰有法位。
3. 再讀 §10 Interface Closure 與 §11 OpsFlow Binding，確認 CA-DISTILL 的上下游邊界。
4. 再讀 §15 WP Full Expansion，最後進 §25 fences。
5. 一切 `PASS / MUST / SHALL / BLOCK_RELEASE` 主張，先對 `exact_locator_registry.tsv` 與對應來源 readback；無 locator 只配當疑點，不配當法條。

### 2.2 Anti-Hallucination Rules
- No-Source-No-Norm
- No-Anchor-No-Claim
- No-Validator-No-Release-Claim
- support-only != owner proof
- route-out != absorbed
- document/package pass != execution/release pass
- exact file missing 時必須 fail-closed；漂亮的語氣不算 readback

### 2.3 Quick Index
| 想確認什麼 | 先讀 | 再看 |
|---|---|---|
| 固定裁決序位與目標前提 | §5 | machine_summary.json |
| 哪些 exact file 缺席 | §4 | closure_register.tsv / exact_locator_registry.tsv |
| 為何 release 仍 BLOCK_RELEASE | §16 / §22 | release_blocker_contract.json |
| Obsidian 可以做什麼、不能做什麼 | §12 / §17 | TT-OBS rows / support_web_registry.tsv |
| CA-DISTILL -> CA-DSL handoff 邊界 | §10 / §15 / WP-004 | route_out_registry.json |
| 實際交付了哪些檔案 | §23 | delivery_manifest.json / MANIFEST.json / CHECKSUMS.sha256 |

<a id="sec-3"></a>
## 3. TOC（完整目錄 + anchors）

1. [Cover Card / Doc Meta / Machine Summary / Versioning Note](#sec-1)
2. [導讀 / Reader Guide / 強制檢索順序 / Quick Index / Anti-Hallucination Rules](#sec-2)
3. [TOC（完整目錄 + anchors）](#sec-3)
4. [Inputs Manifest / Source Hit List / Missing / Alias / Version Resolution](#sec-4)
5. [Authority Stack / Conflict Rules / Goal Premise Order / Scope-Lock / One-Rule-One-Owner Matrix](#sec-5)
6. [Review Fix Integration Matrix](#sec-6)
7. [Upstream Coverage / Absorption / Supersede / Archive Matrix](#sec-7)
8. [Support Absorption Ledger](#sec-8)
9. [SRS / ARCH / LBP / Pack A-E / Ops / Pipeline-A Index / sibling subsystem Crosswalk](#sec-9)
10. [Interface Closure Matrix](#sec-10)
11. [OpsFlow Binding Table / Operator-Flow Mapping / Stage-Binding Note](#sec-11)
12. [Tooling / Slot / Sidecar / Fallback / Support-only Legal Position](#sec-12)
13. [Truthful Verdict Framework](#sec-13)
14. [Deliver Reality Table](#sec-14)
15. [WP Full Expansion](#sec-15)
16. [CR_OPEN Temporary Closure Register / TT Register / Reopen Rules / Block-release Conditions](#sec-16)
17. [External Evidence Appendix（SUPPORT-only）](#sec-17)
18. [Exact Locator Registry / FQ_DOC_ID Registry / Anchor Registry Summary](#sec-18)
19. [Coverage Matrix / Requirement Closure Ledger](#sec-19)
20. [Legacy Coverage / Replacement / Contradiction Closure](#sec-20)
21. [Final Self-Audit](#sec-21)
22. [Final Truthful Verdict](#sec-22)
23. [Packaging Manifest / Download Inventory / Package Tree / Checksums Note](#sec-23)
24. [Machine-readable Blocks](#sec-24)
25. [全部 WP / RB / WI fences](#sec-25)

<a id="sec-4"></a>
## 4. Inputs Manifest / Source Hit List / Missing / Alias / Version Resolution

### 4.1 Inputs Manifest
| source_id | source_file | role | status | disposition | note |
|---|---|---|---|---|---|
| SRC-001 | Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md | ROOT_NORMATIVE_CARRIER | FOUND_DIRECT | TOP_AUTHORITY_CARRIER | carrier of 中央工程正文 / 系統需求正文 |
| SRC-002 | Spartoi-OMOC_SSOT_合冊.md | ROOT_NORMATIVE | FOUND_DIRECT | ALIGNED | index-first / anti-hallucination / route-out discipline |
| SRC-003 | Spartoi-OMOC_LBP_合冊.md | ROOT_NORMATIVE | FOUND_DIRECT | ALIGNED | LBP contract and route-out discipline |
| SRC-004 | Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊.md | ROOT_NORMATIVE | FOUND_DIRECT | ALIGNED | Package B/D/E owner ceilings |
| SRC-005 | Spartoi-OMOC_SubP1-LITE+MVP_合冊.md | ROOT_NORMATIVE | FOUND_DIRECT | ALIGNED | Spine / control-plane context |
| SRC-006 | OMOC_合冊.md | ROOT_NORMATIVE_LOW | FOUND_DIRECT | TRACEABILITY_CONTEXT | routing / docs-as-code precedent |
| SRC-007 | 參考方案合冊.md | ROOT_NORMATIVE_LOW | FOUND_DIRECT | TRACEABILITY_CONTEXT | reference-family and naming precedent |
| SRC-008 | Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_MC4+_合冊.md | CURRENT_OWNER_CONSTITUTION | FOUND_DIRECT | OWNER_CORE | current owner constitution |
| SRC-009 | Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-M_合冊.md | CURRENT_OWNER_WP_MASTER | FOUND_DIRECT | OWNER_EXECUTION_BASE | current WP-M execution and acceptance base |
| SRC-010 | Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-RB-WI_合冊.md | LEGACY_TARGET | FOUND_DIRECT | SUPERSEDED_BASELINE | uploaded baseline substantively replaced |
| SRC-011 | Spartoi-OMOC_SubP1-LITE+MVP_Pipeline-A_MC4+_WP-M_合冊.md | PIPELINE_CARRIER | FOUND_DIRECT | PRIMARY_NAV_CHAIN | carrier for sibling interface truth and placement order |
| SRC-012 | Pipeline-A_Obsidian升級藍圖.md | PATCHED_BLUEPRINT | FOUND_DIRECT | ABSORB_WITH_SCOPE_LOCK | Obsidian support-frontstage-only blueprint |
| SRC-013 | Ops RUNBOOK_合冊.md | ROUTE_OUT_OWNER | FOUND_DIRECT | NORMATIVE_ROUTE_OUT | operator HOW / rollback choreography owner |
| SRC-014 | Pipeline-A設計資料參考_合冊.md | SUPPORT_DESIGN | FOUND_DIRECT | SUPPORT_ONLY | design support only |
| SRC-015 | Pipeline-A實作資料參考_合冊.md | SUPPORT_IMPLEMENTATION | FOUND_DIRECT | SUPPORT_ONLY | implementation support only |
| SRC-016 | SEM³資料參考_合冊.md | SUPPORT_BRIDGE | FOUND_DIRECT | SUPPORT_ONLY | semantic-fidelity terminology support only |
| SRC-017 | 多模態多向量圖像檢索技術指南_筆記.txt | SUPPORT_TOOLING | FOUND_DIRECT | SUPPORT_ONLY | multivector / late-interaction support only |
| SRC-018 | Pipeline-A_MC4+_WP-M_WP-RB-WI_最終升級藍圖.md | DIRECT_DRIVER | MISSING_EXACT_FILE | TRACEABILITY_ONLY | exact file not mounted; cannot be marked FOUND |
| SRC-019 | CA-DISTILL_MC4+_WP-M_WP-RB-WI_最終升級藍圖.md | DIRECT_DRIVER | MISSING_EXACT_FILE | TRACEABILITY_ONLY | exact file not mounted; cannot be marked FOUND |
| SRC-020 | Spartoi-OMOC_Master_Spine_Full_Monolith.md | MASTER_SPINE_EXACT_TARGET | MISSING_EXACT_FILE | NAVIGATION_CHAIN_ONLY | exact file absent; carrier/navigation only |
| SRC-021 | Spartoi-OMOC_SubP1-LITE+MVP_CA-WRC_合冊.md | SIBLING_EXACT_TARGET | MISSING_EXACT_FILE | CARRIER_READBACK_ONLY | interface truth only via Pipeline-A carrier |
| SRC-022 | Spartoi-OMOC_SubP1-LITE+MVP_CA-CORPUS_合冊.md | SIBLING_EXACT_TARGET | MISSING_EXACT_FILE | CARRIER_READBACK_ONLY | interface truth only via Pipeline-A carrier |
| SRC-023 | Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_合冊.md | SIBLING_EXACT_TARGET | MISSING_EXACT_FILE | CARRIER_READBACK_ONLY | interface truth only via Pipeline-A carrier |
| SRC-024 | Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-RB-WI_合冊_v2026.03.30-r5_AUDIT_v2026.03.30-r1.md | PATCH_AUDIT | FOUND_DIRECT | PATCH_MANDATORY | destructive audit findings that must be fully closed in r6 |

### 4.2 Source Hit List
| hit_id | source_id | hit_surface | locators | why_it_matters |
|---|---|---|---|---|
| HIT-001 | SRC-001 | Top-law fail-closed pair | LOC-001,LOC-002 | Freeze No-Source-No-Norm / No-Anchor-No-Claim |
| HIT-002 | SRC-001 | Package B/D/E owner ceilings | LOC-003,LOC-004,LOC-005 | Prevent local over-legislation |
| HIT-003 | SRC-008 | Current owner canonical naming | LOC-012,LOC-013,LOC-014 | Lock current MC4+ canonical naming and Package E blocker posture |
| HIT-004 | SRC-009 | Current WP-M integrity and Obsidian gates | LOC-015,LOC-016,LOC-017,LOC-018,LOC-019 | Lock selfref policy and TT-OBS lanes |
| HIT-005 | SRC-012 | Patched Obsidian blueprint adoption model | LOC-020,LOC-021,LOC-022,LOC-023 | Lock repo-native mainline + Obsidian shadow frontstage |
| HIT-006 | SRC-011 | Pipeline placement and CA-DISTILL carrier slots | LOC-024,LOC-025,LOC-026,LOC-033 | Bind carrier truth for placement and locator chain |
| HIT-007 | SRC-009 | WP-M preflight and handoff operational bindings | LOC-034,LOC-035,LOC-037,LOC-038 | Bind current exact WP-M/MC4+ intake and handoff flow |
| HIT-008 | SRC-024 | Audit findings driving patch closure | LOC-036,LOC-039,LOC-040,LOC-041 | Bind ghost-ID repair, materialization repair, and verdict repair |

### 4.3 Alias Normalization / Carrier Resolution / Version Resolution
| alias | canonical | status | note |
|---|---|---|---|
| Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文 | Spartoi-OMOC_SubP1-LITE+MVP_正文合冊::DOC-0001 | CARRIER_RESOLVED | fixed by task law |
| Spartoi-OMOC_系統需求正文 | Spartoi-OMOC_SubP1-LITE+MVP_正文合冊::DOC-0002 | CARRIER_RESOLVED | fixed by task law |
| 參考方案_合冊 | 參考方案合冊 | NORMALIZED | filename normalization |
| distill_bundle.json | public canonical artifact | FIXED_ADJUDICATION | wins over reverse legacy wording |
| distill_pack.json | internal companion artifact | FIXED_ADJUDICATION | must not replace canonical |
| Pipeline-A / CA-DISTILL direct drivers | MISSING_EXACT_FILE | FIXED_HONESTY | no fake direct readback claim |
| WRC/CORPUS/DSL sibling standalone carriers | CARRIER_READBACK_ONLY | FIXED_HONESTY | interface truth only via Pipeline-A carrier |

### 4.4 Missing / Unverified Ledger
| item | state | legal_effect | note |
|---|---|---|---|
| Pipeline-A_MC4+_WP-M_WP-RB-WI_最終升級藍圖.md | MISSING_EXACT_FILE | traceability only / TT reopen | cannot be marked FOUND |
| CA-DISTILL_MC4+_WP-M_WP-RB-WI_最終升級藍圖.md | MISSING_EXACT_FILE | traceability only / TT reopen | cannot be marked FOUND |
| Spartoi-OMOC_Master_Spine_Full_Monolith.md | MISSING_EXACT_FILE | navigation-chain only | carrier extracted surface cannot fake exact file |
| Spartoi-OMOC_SubP1-LITE+MVP_CA-WRC_合冊.md | MISSING_EXACT_FILE | interface truth only via carrier | no exact sibling readback claim |
| Spartoi-OMOC_SubP1-LITE+MVP_CA-CORPUS_合冊.md | MISSING_EXACT_FILE | interface truth only via carrier | no exact sibling readback claim |
| Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_合冊.md | MISSING_EXACT_FILE | interface truth only via carrier | no exact sibling readback claim |

### 4.5 Absorption Note
r6 吸收的不只是 r5 主文，還包括 r5 audit 對 D-001..D-005 / S-001 / S-002 / L-001 / L-002 / G-001 的破壞性結論。這不是把審查報告放進抽屜，而是把它變成 patch driver。

<a id="sec-5"></a>
## 5. Authority Stack / Conflict Rules / Goal Premise Order / Scope-Lock / One-Rule-One-Owner Matrix

### 5.1 Authority Stack（固定裁決序位）
1. `Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文`（carrier=`正文合冊::DOC-0001`）
2. `Spartoi-OMOC_SSOT_合冊`
3. `Spartoi-OMOC_LBP_合冊`
4. `Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊`
5. `Spartoi-OMOC_SubP1-LITE+MVP_合冊`
6. `OMOC_合冊`
7. `參考方案合冊`

### 5.2 Fixed Goal Premise Order
1. 嚴禁自己造輪子
2. 第一優先：現成工具原生能力
3. 第二優先：現成工具 + 極少配置
4. 最後才准許自寫薄腳本
5. 低磨合
6. 100%逐項達成《正文合冊》的系統需求

### 5.3 Conflict Rules
- 上位法 > 下位法 > support-only。
- current owner books > legacy WPRBWI baseline。
- exact file readback > carrier readback > support-only。
- release guard / validator / required checks / shipped package reality 一律不得由 document package 代簽。
- route-out 還是 route-out；不要把它寫得像已經 absorbed。那不是工程，那是文件版洗綠燈。

### 5.4 One-Rule-One-Owner Matrix
| surface | owner | local legal position | note |
|---|---|---|---|
| canonical naming / distill artifact family | CA-DISTILL | OWNER_OWNED | but still bounded by top law |
| lawful intake consume-only interface | CA-DISTILL | OWNER_OWNED_CONSUME_ONLY | cannot rewrite upstream owner truth |
| parser / OCR / retrieval correctness | CA-CORPUS / upstream owners | ROUTE_OUT_ONLY | not re-legislated here |
| schema / registry / evidence schema exact fields | Package B | ROUTE_OUT_ONLY | proof absent => BLOCK_RELEASE |
| required checks / factory validators | Package D | ROUTE_OUT_ONLY | proof absent => BLOCK_RELEASE |
| validator / release_guard / shipped package reality | Package E | ROUTE_OUT_ONLY | proof absent => BLOCK_RELEASE |
| operator HOW / shell commands / rollback choreography | Ops RUNBOOK | ROUTE_OUT_ONLY | bind-only; no HOW rewrite |
| consumer acceptance | CA-DSL | ROUTE_OUT_ONLY | producer may speak PASS-only handoff, not downstream acceptance |

<a id="sec-6"></a>
## 6. Review Fix Integration Matrix

| fix_id | problem | landing | status |
|---|---|---|---|
| FIX-001 | Old source manifest falsely treated direct drivers as FOUND_DIRECT | §4 Inputs Manifest + closure register | CLOSED |
| FIX-002 | Old source manifest falsely treated sibling exact carriers as FOUND_DIRECT | §4 Inputs Manifest + FQ_DOC_ID registry | CLOSED |
| FIX-003 | Obsidian adoption rules needed refresh from r2 blueprint | §12 + §17 + TT-OBS rows | CLOSED |
| FIX-004 | WP fences were not physically included as standalone fence surfaces in this book | §25 WP fences from current WP-M book | CLOSED |
| FIX-005 | Packaging had to be re-materialized for current session | §23 + actual sidecars + actual zip | CLOSED |
| FIX-006 | Machine blocks required exact requested filenames | §24 + sidecar package | CLOSED |
| FIX-007 | Direct-driver exact absence needed fail-closed honesty instead of guessed readback | §4 + §16 + closure register | CLOSED |
| FIX-008 | Master Spine exact absence needed hard honesty | §4 + §18 + CR-003 | CLOSED |
| FIX-009 | Release blockers needed explicit contract not prose drift | release_blocker_contract.json + §22 | CLOSED |
| FIX-010 | Delivery inventory needed real files and checksums | MANIFEST.json + CHECKSUMS.sha256 + package_tree.txt | CLOSED |
| FIX-011 | Audit D-001/D-002 ghost IDs had to be closed structurally | exact_locator_registry.tsv + requirement_closure_ledger.tsv + §18/§19 | CLOSED |
| FIX-012 | Audit D-003/D-004 missing substrate had to be materially landed | new sidecars + schemas + samples + validator + sourcepack | CLOSED |
| FIX-013 | Audit D-005 verdict overclaim had to be rewritten truthfully | §21 / §22 / machine_summary.json / package_validation.json | CLOSED |

### 6.1 Audit Patch Closure Matrix
| finding_id | audit_problem | closure_landing | status |
|---|---|---|---|
| D-001 | Ghost LOC IDs 027..041 undefined | Expanded exact_locator_registry.tsv with LOC-027..LOC-041 and aligned main section §18 | CLOSED |
| D-002 | Ghost REQ IDs 021/022/023/025/031/032 undefined | Expanded requirement_closure_ledger.tsv / coverage_matrix.tsv and aligned §19 | CLOSED |
| D-003 | Declared sidecars absent | Materialized all audit-listed missing sidecars and added them to inventory/manifest/tree | CLOSED |
| D-004 | schema / sample / validator / sourcepack not landed | Materialized schemas/, samples/, scripts/, and sourcepack four-file set | CLOSED |
| D-005 | Self-Audit / Final Truthful Verdict overclaimed completeness | Rewrote §21/§22 and machine blocks to match actual package reality | CLOSED |
| S-001 | Artifactization break under otherwise complete structure | Patched package tree, delivery manifest, and deliver reality table to include new landed artifacts | CLOSED |
| S-002 | Self-audit lacked ghost-ID and declared-artifact existence scans | Added explicit self-audit checks and package_validation declared-vs-materialized check | CLOSED |
| L-001 | materialized_sidecar_count ambiguous | Machine summary now states count and scope explicitly | CLOSED |
| L-002 | Fence contract and package reality split | Landed missing artifacts and synchronized deliverables, registries, and inventories | CLOSED |
| G-001 | High friction by declaration sprawl | Collapsed audit-critical substrate into actual files and removed sprawl/absence mismatch | CLOSED |

### 6.2 Patch Principle
- 先補 ID integrity，再補 substrate，最後才重寫 verdict。
- 任何被 fence 列為 required/output/related 的 artifact，要嘛真落盤，要嘛降級成 `CONTRACT_ONLY`；r6 採前者為主。
- r6 不靠口頭合理化 audit finding；每一個 finding 都要落到文件、sidecar、manifest 或 tree。

<a id="sec-7"></a>
## 7. Upstream Coverage / Absorption / Supersede / Archive Matrix

| source_family | coverage status | winning legal effect | archive / note |
|---|---|---|---|
| 《正文合冊》 | ABSORBED | highest law frozen | carrier of 中央工程正文 / 系統需求正文 |
| 《SSOT_合冊》 | ABSORBED | index-first / anti-hallucination / route-out discipline | readback via LOC-007/008 |
| 《LBP_合冊》 | ABSORBED | contract / route-out / docs-as-code discipline | readback via LOC-009 |
| 《Pack A-E+工程指南_合冊》 | ABSORBED | Package B/D/E ceilings | readback via LOC-010/011 |
| 《CA-DISTILL_MC4+_合冊》 | ABSORBED | current constitution and naming truth | LOC-012~014 |
| 《CA-DISTILL_WP-M_合冊》 | ABSORBED | current WP gates, integrity policy, TT-OBS | LOC-015~019 |
| 《Pipeline-A_Obsidian升級藍圖》 | ABSORBED_WITH_SCOPE_LOCK | support-frontstage-only adoption model | LOC-020~023 |
| uploaded legacy WP-RB-WI baseline | SUPERSEDED | document-layer replacement | retained only for traceability |
| exact direct drivers | MISSING_EXACT_FILE | traceability only | TT-DISTILL-006/007 |
| Master Spine exact file | MISSING_EXACT_FILE | navigation-chain only | TT-DISTILL-008 |

<a id="sec-8"></a>
## 8. Support Absorption Ledger

| support_source | absorbed_as | why allowed | hard ceiling |
|---|---|---|---|
| Pipeline-A設計資料參考_合冊 | design support | 補 CA-DISTILL / CA-DSL uplift design vocabulary | SUPPORT_ONLY |
| Pipeline-A實作資料參考_合冊 | implementation support | 補 run-first / evidence-first implementation posture | SUPPORT_ONLY |
| SEM³資料參考_合冊 | semantic-fidelity support | 補術語與 traceability discipline | SUPPORT_ONLY |
| 多模態多向量圖像檢索技術指南_筆記 | retrieval support | 補 multivector / late-interaction 背景 | SUPPORT_ONLY |
| official GitHub / devcontainer / Obsidian docs | external support | 補工具事實與 adoption guard | SUPPORT_ONLY |

<a id="sec-9"></a>
## 9. SRS / ARCH / LBP / Pack A-E / Ops / Pipeline-A Index / sibling subsystem Crosswalk

| domain | winning surface | why it matters to this book |
|---|---|---|
| SRS / system demand | 正文合冊 + SSOT | 凍結 minimum distill output / fail-closed posture / retrieval discipline |
| ARCH / route-out / subsystem map | SSOT + Pipeline-A carrier | 確認主線與 subsystem placement |
| LBP A-E | LBP_合冊 | 固定 contract / route-out / exactness discipline |
| Package B/D/E owner ceilings | Pack A-E+工程指南_合冊 | 阻止本冊越權重立法 |
| Ops HOW owner | Ops RUNBOOK_合冊 | 所有 HOW / rollback drill 只能 bind-only route-out |
| Pipeline-A bridge shell | Pipeline-A carrier | 提供 sibling interface truth 的 carrier readback |
| WRC / CORPUS / DSL sibling truths | Pipeline-A carrier only | 只鎖 interface truth，不假裝 exact sibling carrier 已讀到 |

<a id="sec-10"></a>
## 10. Interface Closure Matrix

| interface_id | from | to | contract | local legal effect | blocker / reopen |
|---|---|---|---|---|---|
| IF-001 | CA-CORPUS | CA-DISTILL | lawful consume-only handoff with provenance and stable locators | OWNER_OWNED_CONSUME_ONLY | reopen on unstable chunk/source locator |
| IF-002 | CA-DISTILL | Package B/D/E | schema / validator / release-guard questions route out | ROUTE_OUT_ONLY | block release until owner proof exists |
| IF-003 | CA-DISTILL | CA-DSL | PASS-only producer handoff; consumer acceptance remains downstream owner truth | OWNER_OWNED_PASS_ONLY + CONSUMER_ROUTE_OUT | reopen on CA-DSL rejection or spec drift |
| IF-004 | Obsidian frontstage | repo-native mainline | capture / review / shadow authoring / crosswalk only | SUPPORT_FRONTSTAGE_ONLY | reopen on promotion drift |
| IF-005 | .obsidian / notes/obsidian / .base | package truth plane | manifest exclusion + nonpromotion | PROHIBITED_UNLESS_MATERIALIZE_VALIDATE_PACKAGE | reopen on any truth-plane citation |

<a id="sec-11"></a>
## 11. OpsFlow Binding Table / Operator-Flow Mapping / Stage-Binding Note

| op_id | stage | binding_surface | primary_section | stopline |
|---|---|---|---|---|
| OP-00 | Bootstrap source law | Inputs manifest, authority stack, missing ledger | §4/§5 | FAIL_CLOSED on false FOUND |
| OP-01 | Canonical fence | distill_bundle/distill_pack naming, path policy, sourcepack governance | WP-001 | FAIL_CLOSED on naming drift |
| OP-02 | Lawful intake | mandatory vs optional split, provenance, allowlist, consume-only interface | WP-002 | FAIL_CLOSED on unlawful intake |
| OP-03 | Three-phase distill | blind_abstract / cross_review / targeted_integrate + provenance binding | WP-003 | FAIL_CLOSED on hidden phase or fabricated provenance |
| OP-04 | Producer-side acceptance | SGF / triplet / handoff_allowed / blocker sync | WP-004 | FAIL_CLOSED on release overclaim |
| OP-05 | Package truth and delivery | manifest / checksums / inventory / truthful delivery | §23 | document pass only |

<a id="sec-12"></a>
## 12. Tooling / Slot / Sidecar / Fallback / Support-only Legal Position

| tool / surface | position | allowed role | forbidden role |
|---|---|---|---|
| repo-native markdown + sidecars | PRIMARY | mainline book + manifest + checksums + machine blocks | none |
| current WP-M / MC4+ books | PRIMARY_OWNER_BOOKS | current owner readback and fence source | cannot be bypassed by support-only docs |
| GitHub Actions / merge_group aware checks | SUPPORT_OFFICIAL | CI-shell fact support and TT design | not owner proof by itself |
| Dev Container spec / devcontainer.json | SUPPORT_OFFICIAL | deterministic dev-env support fact | not release truth |
| Obsidian core plugins / Bases | SUPPORT_FRONTSTAGE_ONLY | capture / review / shadow authoring / optional views | canonical artifact source / validator / release guard |
| Obsidian community plugins | OPTIONAL_SUPPORT_ONLY | optional local productivity aid under restricted-mode governance | required baseline path |
| thin scripts | ALLOWED_LAST_RESORT | packaging / checksum / extraction glue only | high-coupling platform wheel |

### 12.1 Nonpromotion Rules
- `frontstage note / notes/obsidian/** / .obsidian/** / .base/**` 可以進 archive ledger，但不得進 mandatory package truth。
- promotion 一律遵守：**materialize → validate → package**。
- note 直升 canonical，就像拿便條紙當海關放行單；看起來省事，實際上只是把稽核官氣醒。

<a id="sec-13"></a>
## 13. Truthful Verdict Framework

| truth_plane | meaning | what this package can honestly say |
|---|---|---|
| document truth | book text, section anchors, fences, embedded machine blocks | PASS |
| package truth | manifest / checksums / inventory / downloadable package contents | PASS |
| runtime truth | distill runtime outputs and companion runtime artifacts | CONTRACT_ONLY |
| execution truth | owner/runtime proofs and successful execution evidence | FAIL_CLOSED |
| release truth | Package B/D/E + consumer + ops proofs for release-ready claim | BLOCK_RELEASE |

### 13.1 Hard Rules
- document pass 不能倒推 execution pass。
- package pass 不能倒推 release pass。
- support-only 不能覆蓋 owner proof。
- exact file 不在場時，只能說 missing，不准說『我大概懂它的意思所以算 found』。

<a id="sec-14"></a>
## 14. Deliver Reality Table

| artifact_or_surface | role | artifact_state | note |
|---|---|---|---|
| main markdown | Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-RB-WI_合冊_v2026.03.30-r6.md | MATERIALIZED_IN_PACKAGE | authoritative main markdown |
| outer zip | Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-RB-WI_合冊_v2026.03.30-r6_package.zip | MATERIALIZED_IN_SESSION | single downloadable zip for this package |
| audit_patch_closure_matrix.tsv | audit patch closure | MATERIALIZED_IN_PACKAGE | closes D-001..D-005 / S / L / G findings |
| source_hit_list.tsv | source hit substrate | MATERIALIZED_IN_PACKAGE | r5 missing, r6 landed |
| interface_closure_matrix.tsv | interface closure substrate | MATERIALIZED_IN_PACKAGE | r5 missing, r6 landed |
| phase_caps.tsv | phase substrate | MATERIALIZED_IN_PACKAGE | r5 missing, r6 landed |
| artifact_family_legal_registry.tsv | artifact legal substrate | MATERIALIZED_IN_PACKAGE | r5 missing, r6 landed |
| toolchain_adjudication_matrix.tsv | tool posture substrate | MATERIALIZED_IN_PACKAGE | r5 missing, r6 landed |
| schemas/* | schema substrate | MATERIALIZED_IN_PACKAGE | r5 missing, r6 landed |
| samples/* | sample substrate | MATERIALIZED_IN_PACKAGE | r5 missing, r6 landed |
| scripts/ca_distill_validate.py | validator substrate | MATERIALIZED_IN_PACKAGE | r5 missing, r6 landed |
| meta.json / CA-CORE.md / CA-MC4.md / CA-WP.md | sourcepack four-file set | MATERIALIZED_IN_PACKAGE | r5 missing, r6 landed |
| distill_bundle.json | public canonical runtime artifact | CONTRACT_ONLY | not materialized as runtime output here |
| distill_pack.json | internal companion runtime artifact | CONTRACT_ONLY | not materialized as runtime output here |
| Package B/D/E owner proofs | foreign owner proof | ROUTE_OUT_ONLY | not materialized in this package |
<a id="sec-15"></a>
## 15. WP Full Expansion

### 15.1 WP-MASTER
凍結 mission、authority、truth split、global stoplines、owner escalation path、acceptance gates；任何 release overclaim 一律 fail-closed。

### 15.2 WP-001
固化 canonical naming fence、artifact family registry、sourcepack governance、path policy、provider/tool stance、Obsidian nonpromotion boundary、route-out boundaries。

### 15.3 WP-002
固化 lawful intake、allowlist / provenance / sealing prerequisites、WRC / CORPUS adjacency 的 consume-only interface、preconditions / postconditions / evidence minimum set。

### 15.4 WP-003
固化 three-phase distill engine、SGF / semantic-fidelity binding、provenance logging、evidence pointers、rollback rule、runtime truth 與 document truth 的邊界。

### 15.5 WP-004
固化 packaging、PASS-only handoff to CA-DSL、release blockers、TT / reopen rules、rollback / withdrawal / blocker sync、final package truth vs release truth separation。

> 完整 WP fences 見 §25；此處做的是總覽，不偷吃 fence 正文。

<a id="sec-16"></a>
## 16. CR_OPEN Temporary Closure Register / TT Register / Reopen Rules / Block-release Conditions

### 16.1 CR_OPEN Temporary Closure Register
| cr_id | issue | state | temporary_status | tt_id | reopen_trigger | effect |
|---|---|---|---|---|---|---|
| CR-001 | Pipeline-A direct driver exact file absent | MISSING_EXACT_FILE | TEMP_CLOSED | TT-DISTILL-006 | exact file mounted later or carrier-trace contradicted | No direct-driver FOUND claim |
| CR-002 | CA-DISTILL direct driver exact file absent | MISSING_EXACT_FILE | TEMP_CLOSED | TT-DISTILL-007 | exact file mounted later or current owner books contradicted | No direct-driver FOUND claim |
| CR-003 | Master Spine exact file absent | MISSING_EXACT_FILE | TEMP_CLOSED | TT-DISTILL-008 | exact file appears or extracted navigation diverges | navigation-chain only |
| CR-004 | Package B authoritative schema proof absent | FOREIGN_OWNER_PROOF_MISSING | TEMP_CLOSED | TT-DISTILL-001 | owner proof arrives | BLOCK_RELEASE |
| CR-005 | Package D required checks proof absent | FOREIGN_OWNER_PROOF_MISSING | TEMP_CLOSED | TT-DISTILL-002 | owner proof arrives | BLOCK_RELEASE |
| CR-006 | Package E release guard proof absent | FOREIGN_OWNER_PROOF_MISSING | TEMP_CLOSED | TT-DISTILL-003 | owner proof arrives | BLOCK_RELEASE |
| CR-007 | CA-DSL consumer acceptance direct proof absent | DOWNSTREAM_PROOF_MISSING | TEMP_CLOSED | TT-DISTILL-004 | consumer owner readback arrives | FAIL_CLOSED |
| CR-008 | Ops rollback drill evidence absent | OPS_PROOF_MISSING | TEMP_CLOSED | TT-DISTILL-005 | ops drill evidence arrives | FAIL_CLOSED |
| CR-009 | Obsidian nonpromotion proof not direct in this package | OBSIDIAN_PROOF_PENDING | TEMP_CLOSED | TT-OBS-001..TT-OBS-006 | mainline/manifest/nonpromotion tests directly evidenced | FAIL_CLOSED |

### 16.2 Test Tracking Register
| tt_id | topic | acceptance_condition | status | effect |
|---|---|---|---|---|
| TT-DISTILL-001 | Package B owner proof | Package B authoritative schema / registry / evidence schema | OPEN | BLOCK_RELEASE |
| TT-DISTILL-002 | Package D owner proof | required checks / factory validators | OPEN | BLOCK_RELEASE |
| TT-DISTILL-003 | Package E owner proof | validator / release_guard / shipped package reality | OPEN | BLOCK_RELEASE |
| TT-DISTILL-004 | CA-DSL consumer acceptance | PASS-only handoff acceptance direct proof | OPEN | FAIL_CLOSED |
| TT-DISTILL-005 | Ops rollback drill | rollback choreography / drill evidence | OPEN | FAIL_CLOSED |
| TT-DISTILL-006 | Pipeline-A direct driver exact file | exact file presence and readback | OPEN | TRACEABILITY_ONLY |
| TT-DISTILL-007 | CA-DISTILL direct driver exact file | exact file presence and readback | OPEN | TRACEABILITY_ONLY |
| TT-DISTILL-008 | Master Spine exact file | exact file presence and readback | OPEN | TRACEABILITY_ONLY |
| TT-OBS-001 | Mainline without Obsidian | render / validate / CI still pass with no Obsidian present | OPEN | FAIL_CLOSED |
| TT-OBS-002 | Manifest exclusion | mandatory manifest excludes .obsidian/** and notes/obsidian/** | OPEN | FAIL_CLOSED |
| TT-OBS-003 | Nonpromotion gate | canonical/package-truth paths never reference note/frontstage | OPEN | FAIL_CLOSED |
| TT-OBS-004 | Shadow nonblocking | frontstage absence does not block mainline validation | OPEN | FAIL_CLOSED |
| TT-OBS-005 | Promotion path smoke | materialize → validate → package path smoke passes | OPEN | FAIL_CLOSED |
| TT-OBS-006 | Optional plugin absence | no optional community plugin required for baseline flow | OPEN | FAIL_CLOSED |

### 16.3 Reopen Rules / Block-release Conditions
- 任一 owner proof 缺席但文字開始宣稱 release-ready：立即 reopen，維持 `BLOCK_RELEASE`。
- 任一 canonical naming drift、support-only 升格、frontstage 直升 truth plane：立即 reopen，維持 `FAIL_CLOSED`。
- 任一 carrier readback 與 source carrier 本身不一致：立即降級為 `CARRIER_DRIFT / REOPEN`。
- 任一 mainline validator / CI 依賴 Obsidian 才能跑：TT-OBS-001 直接 reopen。

<a id="sec-17"></a>
## 17. External Evidence Appendix（SUPPORT-only）

| claim_key | source_title | access_date | claim_summary | use_boundary | reopen_when |
|---|---|---|---|---|---|
| WEB-001 | GitHub Docs — Events that trigger workflows | 2026-03-30 | If required checks are used with merge queue, workflows need the merge_group event or required checks will not report for queue entries. | SUPPORT_ONLY | re-open if GitHub changes merge queue semantics |
| WEB-002 | GitHub Docs — Troubleshooting required status checks | 2026-03-30 | Required checks must succeed against the latest commit SHA. | SUPPORT_ONLY | re-open if GitHub changes required-check semantics |
| WEB-003 | GitHub Docs — Managing a merge queue | 2026-03-30 | Merge limits do not combine merge_group builds; queue behavior remains separate from final base-branch merge. | SUPPORT_ONLY | re-open if GitHub changes merge queue behavior |
| WEB-004 | Development Container Specification | 2026-03-30 | The Development Container Specification provides reusable metadata to create and recreate development environments. | SUPPORT_ONLY | re-open if spec materially changes |
| WEB-005 | Dev Container metadata reference | 2026-03-30 | devcontainer.json defines metadata and settings for a well-defined development container environment. | SUPPORT_ONLY | re-open if metadata model materially changes |
| WEB-006 | Obsidian Help — Plugin security | 2026-03-30 | Restricted Mode is on by default to prevent third-party code execution; only disable if plugins are trusted. | SUPPORT_ONLY | re-open if Obsidian changes plugin security model |
| WEB-007 | Obsidian Help — Community plugins | 2026-03-30 | Community plugins are optional and require turning on community plugins / disabling restricted mode. | SUPPORT_ONLY | re-open if Obsidian changes community plugin activation model |
| WEB-008 | Obsidian Help — Bases | 2026-03-30 | Bases is a core plugin for database-like views over notes and properties. | SUPPORT_ONLY | re-open if Obsidian changes Bases role |

> Web 只補工具事實與 adoption shell；它不替代 owner proof，也不改寫法位序。

<a id="sec-18"></a>
## 18. Exact Locator Registry / FQ_DOC_ID Registry / Anchor Registry Summary

### 18.1 Exact Locator Registry
| locator_id | source_file | locator | pattern | purpose |
|---|---|---|---|---|
| LOC-001 | Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md | L49 | No-Source-No-Norm | top-law fail-closed rule |
| LOC-002 | Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md | L50 | No-Anchor-No-Claim | top-law exact-claim rule |
| LOC-003 | Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md | L109 | Package B（Control Plane Pack） | Package B owner ceiling |
| LOC-004 | Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md | L111 | Package D（Factory Pack） | Package D owner ceiling |
| LOC-005 | Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md | L112 | Package E（Subsystem Delivery Pack） | Package E owner ceiling |
| LOC-006 | Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md | L1954 | distill_bundle.json | system demand for minimum distill output |
| LOC-007 | Spartoi-OMOC_SSOT_合冊.md | L35 | ## Index Contract (AI retrieval MUST follow) | SSOT index-first retrieval contract |
| LOC-008 | Spartoi-OMOC_SSOT_合冊.md | L42 | ## Anti-Miss / Anti-Confusion / Anti-Hallucination Guard | SSOT anti-hallucination guard |
| LOC-009 | Spartoi-OMOC_LBP_合冊.md | L25 | ## Index Contract | LBP index contract |
| LOC-010 | Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊.md | L1545 | No-Source-No-Norm | Pack A-E no-source-no-norm |
| LOC-011 | Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊.md | L2501 | No-Anchor-No-Claim | Pack A-E no-anchor-no-claim |
| LOC-012 | Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_MC4+_合冊.md | L46 | public_canonical_artifact | distill_bundle.json | current MC4+ canonical naming |
| LOC-013 | Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_MC4+_合冊.md | L49 | obsidian_legal_position | SUPPORT_FRONTSTAGE_ONLY | current MC4+ Obsidian legal position |
| LOC-014 | Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_MC4+_合冊.md | L265 | validator / release_guard / shipped package reality | Package E | route-out only; blocker if proof absent | current MC4+ Package E blocker |
| LOC-015 | Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-M_合冊.md | L58 | integrity_policy | SELFREF_EXEMPT_CONTROL_FILES | current WP-M integrity policy |
| LOC-016 | Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-M_合冊.md | L56 | obsidian_legal_position | SUPPORT_FRONTSTAGE_ONLY | current WP-M Obsidian legal position |
| LOC-017 | Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-M_合冊.md | L519 | TT-OBS-001 | Mainline without Obsidian | current WP-M TT-OBS-001 |
| LOC-018 | Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-M_合冊.md | L520 | TT-OBS-002 | Manifest exclusion | current WP-M TT-OBS-002 |
| LOC-019 | Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-M_合冊.md | L521 | TT-OBS-003 | Nonpromotion gate | current WP-M TT-OBS-003 |
| LOC-020 | Pipeline-A_Obsidian升級藍圖.md | L6 | SUPPORT_FRONTSTAGE_ONLY | patched blueprint support-frontstage-only stance |
| LOC-021 | Pipeline-A_Obsidian升級藍圖.md | L105 | Repo-native mainline + Obsidian shadow frontstage | blueprint adoption model |
| LOC-022 | Pipeline-A_Obsidian升級藍圖.md | L409 | TT-OBS-001 | Mainline without Obsidian | blueprint TT-OBS-001 |
| LOC-023 | Pipeline-A_Obsidian升級藍圖.md | L417 | TT-OBS-009 | Community plugin absence | blueprint TT-OBS-009 |
| LOC-024 | Spartoi-OMOC_SubP1-LITE+MVP_Pipeline-A_MC4+_WP-M_合冊.md | L12 | placement_order: `CA-WRC → CA-CORPUS → CA-DISTILL → CA-DSL` | pipeline mainline placement order |
| LOC-025 | Spartoi-OMOC_SubP1-LITE+MVP_Pipeline-A_MC4+_WP-M_合冊.md | L26 | DOC-0005 · CA-DISTILL · MC4+ | pipeline carrier CA-DISTILL MC4+ doc slot |
| LOC-026 | Spartoi-OMOC_SubP1-LITE+MVP_Pipeline-A_MC4+_WP-M_合冊.md | L27 | DOC-0006 · CA-DISTILL · WP-M | pipeline carrier CA-DISTILL WP-M doc slot |
| LOC-027 | Pipeline-A實作資料參考_合冊.md | L53 | Whole-Doc Slots | implementation support locus for run-first materialization posture |
| LOC-028 | 多模態多向量圖像檢索技術指南_筆記.txt | L44 | 第三章：多向量圖像檢索核心技術 | optional multivector support locus |
| LOC-029 | 台股實戰映射_合冊.md | L35 | Global Index Contract | domain support boundary locus |
| LOC-030 | Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_MC4+_合冊.md | L378 | IF-003 | CA-DISTILL | CA-DSL | PASS-only dsl_handoff_payload.json | current owner PASS-only handoff contract |
| LOC-031 | Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_MC4+_合冊.md | L1005-L1008 | CA-DISTILL_MC4+_WP-M_WP-RB-WI_最終升級藍圖 / Pipeline-A_MC4+_WP-M_WP-RB-WI_最終升級藍圖 | current exact owner MC4+ appendix preserves exact locators for direct blueprint readback |
| LOC-032 | Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_MC4+_合冊.md | L995-L996 | FOUND_FILE_LIBRARY_READBACK | current exact owner MC4+ source existence proof for direct upgrade drivers |
| LOC-033 | Spartoi-OMOC_SubP1-LITE+MVP_Pipeline-A_MC4+_WP-M_合冊.md | L6763-L6767 | LOC-005~LOC-009 | Pipeline-A carrier preserves blueprint locator chain and OP-03/05/09 mapping |
| LOC-034 | Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-M_合冊.md | L398 | IF-002 | CA-CORPUS | CA-DISTILL | corpus snapshot / source locator / grounding truth | current exact WP-M consume-only preflight boundary |
| LOC-035 | Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-M_合冊.md | L408 | OP-03 | CA-CORPUS -> CA-DISTILL intake / preflight / engine start | current exact WP-M operator-flow binding for preflight and engine start |
| LOC-036 | Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-RB-WI_合冊_v2026.03.30-r5_AUDIT_v2026.03.30-r1.md | §4-§6 | D-003 / D-004 substrate absence | audit driver proving r5 lacked declared substrate files |
| LOC-037 | Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_MC4+_合冊.md | L396 | OP-05 | CA-DISTILL -> CA-DSL handoff edge | current owner handoff and SGF gate binding |
| LOC-038 | Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_MC4+_合冊.md | L397 | OP-09 | package / release truth stopline | current owner package/release stopline binding |
| LOC-039 | Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-RB-WI_合冊_v2026.03.30-r5_AUDIT_v2026.03.30-r1.md | §12-§13 | D-005 Final Truthful Verdict overclaim | audit driver for verdict and self-audit downgrade/repair |
| LOC-040 | Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-RB-WI_合冊_v2026.03.30-r5_AUDIT_v2026.03.30-r1.md | §4 / Appendix A | D-001 / D-002 ghost LOC / REQ IDs | audit driver for traceability repair |
| LOC-041 | Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-RB-WI_合冊_v2026.03.30-r5_AUDIT_v2026.03.30-r1.md | Appendix B / Appendix C | declared-artifact absence / actual package inventory | audit driver for artifact materialization and inventory repair |

### 18.2 FQ_DOC_ID Registry
| FQ_DOC_ID | carrier | use_boundary |
|---|---|---|
| PIPELINE-A/DOC-0005 | Spartoi-OMOC_SubP1-LITE+MVP_Pipeline-A_MC4+_WP-M_合冊.md | CA-DISTILL MC4+ carrier readback only |
| PIPELINE-A/DOC-0006 | Spartoi-OMOC_SubP1-LITE+MVP_Pipeline-A_MC4+_WP-M_合冊.md | CA-DISTILL WP-M carrier readback only |
| 正文/DOC-0001 | Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md | 中央工程正文 |
| 正文/DOC-0002 | Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md | 系統需求正文 |

### 18.3 Anchor Registry Summary
| fence_id | kind | begin_anchor | end_anchor |
|---|---|---|---|
| WP-MASTER | WP | fence-wp-master-begin | fence-wp-master-end |
| WP-001 | WP | fence-wp-001-begin | fence-wp-001-end |
| WP-002 | WP | fence-wp-002-begin | fence-wp-002-end |
| WP-003 | WP | fence-wp-003-begin | fence-wp-003-end |
| WP-004 | WP | fence-wp-004-begin | fence-wp-004-end |
| RB-MASTER | RB | fence-rb-master-begin | fence-rb-master-end |
| WI-MASTER | WI | fence-wi-master-begin | fence-wi-master-end |
| RB-001 | RB | fence-rb-001-begin | fence-rb-001-end |
| WI-001 | WI | fence-wi-001-begin | fence-wi-001-end |
| RB-002 | RB | fence-rb-002-begin | fence-rb-002-end |
| WI-002 | WI | fence-wi-002-begin | fence-wi-002-end |
| RB-003 | RB | fence-rb-003-begin | fence-rb-003-end |
| WI-003 | WI | fence-wi-003-begin | fence-wi-003-end |
| RB-004 | RB | fence-rb-004-begin | fence-rb-004-end |
| WI-004 | WI | fence-wi-004-begin | fence-wi-004-end |

### 18.4 Locator Integrity Note
r6 已閉合 audit 點名的 ghost locator 問題：本節 LOC-027..LOC-041 全數具體定義，後段 fences 的 upstream references 與 traceability rows 不再漂浮。

<a id="sec-19"></a>
## 19. Coverage Matrix / Requirement Closure Ledger

| requirement_id | requirement | closure_surface | status |
|---|---|---|---|
| REQ-001 | Fixed authority order frozen | §5.1 / machine_summary.json | PASS |
| REQ-002 | Fixed goal premise order frozen | §5.2 / machine_summary.json | PASS |
| REQ-003 | distill_bundle.json public canonical artifact | §1 / §15 / artifact_naming_resolution.json | PASS |
| REQ-004 | distill_pack.json internal companion artifact | §1 / §15 / artifact_naming_resolution.json | PASS |
| REQ-005 | Pipeline mainline fixed | §1 / §8 / LOC-024 | PASS |
| REQ-006 | Obsidian support-frontstage-only | §12 / §17 / LOC-013/016/020/021 | PASS |
| REQ-007 | Package B route-out only | §5.4 / route_out_registry.json / LOC-003 | PASS |
| REQ-008 | Package D route-out only | §5.4 / route_out_registry.json / LOC-004 | PASS |
| REQ-009 | Package E route-out only | §5.4 / route_out_registry.json / LOC-005 | PASS |
| REQ-010 | Execution remains fail-closed absent owner proofs | §22 / release_blocker_contract.json | PASS |
| REQ-011 | Release remains block-release absent owner proofs | §22 / release_blocker_contract.json | PASS |
| REQ-012 | Inputs manifest honest about missing exact files | §4 / inputs_manifest.tsv | PASS |
| REQ-013 | Quick index and anchors-first navigation | §2 / section anchors / fence anchors | PASS |
| REQ-014 | WP inventory complete | §15 / section 25 fences | PASS |
| REQ-015 | RB/WI inventory complete | §25 fences / fence_registry.tsv | PASS |
| REQ-016 | Machine-readable blocks materialized | §24 / sidecars | PASS |
| REQ-017 | Packaging manifest / inventory / checksums note | §23 / MANIFEST.json / CHECKSUMS.sha256 | PASS |
| REQ-018 | Support-only evidence demoted | §8 / §17 / support_web_registry.tsv | PASS |
| REQ-019 | Legacy target substantively replaced | §20 / contradiction_closure_table.tsv | PASS |
| REQ-020 | No fake download links | §23 + actual sandbox links only | PASS |
| REQ-021 | Lawful input gate decomposed into mandatory / optional / foreign-owner classes with explicit halt discipline | RB/WI-002 + interface_closure_matrix.tsv + owner_evidence_acquisition_plan.tsv | PASS |
| REQ-022 | Three-phase distill route, provenance binding, and phase journal substrate are materially defined | RB/WI-003 + phase_caps.tsv + schemas/samples | PASS |
| REQ-023 | PASS-only CA-DISTILL -> CA-DSL handoff remains explicitly bounded and blocker-preserving | RB/WI-004 + release_blocker_contract.json + samples/sample_dsl_handoff_payload.json | PASS |
| REQ-025 | Foundation-side artifact family / wording / tooling substrate is materially landed rather than merely declared | RB/WI-001 + artifact_family_legal_registry.tsv + wording_contract_artifact_check.tsv + toolchain_adjudication_matrix.tsv | PASS |
| REQ-031 | Five-segment WI pattern is present and similarity-guarded across all WI fences | WI-MASTER + rbwi_similarity_guard.tsv | PASS |
| REQ-032 | Final verdict axes remain truthful after audit closure and do not erase Package B/D/E / CA-DSL / Ops blockers | §22 + document_truth_split.json + release_blocker_contract.json | PASS |

### 19.1 Requirement Integrity Note
r6 已補齊 `REQ-021 / REQ-022 / REQ-023 / REQ-025 / REQ-031 / REQ-032`，因此後段 RB/WI 的 requirement references 不再落空。

<a id="sec-20"></a>
## 20. Legacy Coverage / Replacement / Contradiction Closure

### 20.1 Replacement Statement
本版對 uploaded legacy 《Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-RB-WI_合冊》與 r5 《..._v2026.03.30-r5》做的是 **substantive document-layer replacement**。新的 winning wording 是：
- `distill_bundle.json` = public canonical artifact
- `distill_pack.json` = internal companion artifact
- exact direct drivers / Master Spine / sibling standalone carriers 缺席時，不得假裝 direct readback
- Obsidian 只能是 `SUPPORT_FRONTSTAGE_ONLY`
- owner proof 缺席時 execution=`FAIL_CLOSED`，release=`BLOCK_RELEASE`
- 被 fence 聲稱為 required/output/related 的 substrate 檔案，r6 已實體落盤或明示為 `CONTRACT_ONLY`

### 20.2 Contradiction Closure Table
| contradiction_id | retired_wording | current_winning_wording | status |
|---|---|---|---|
| CCT-001 | direct driver exact files read directly in current workspace | direct driver exact files are MISSING_EXACT_FILE; only current owner books and blueprint are directly read | CLOSED |
| CCT-002 | sibling standalone exact carriers are present | sibling standalone exact carriers are not mounted; only pipeline carrier readback is available | CLOSED |
| CCT-003 | document package truth may imply runtime / release truth | document/package truth is explicitly separated from runtime/execution/release truth | CLOSED |
| CCT-004 | frontstage note may be promoted directly into canonical truth | promotion requires materialize → validate → package; otherwise prohibited | CLOSED |
| CCT-005 | support-only evidence may substitute for owner proof | support-only never substitutes for owner proof | CLOSED |
| CCT-006 | artifact existence implies self-verifying release pass | artifact existence proves only artifact existence | CLOSED |
| CCT-007 | r5 declared critical substrate artifacts as output without materialization | r6 either materializes them or explicitly marks contract-only | CLOSED |
<a id="sec-21"></a>
## 21. Final Self-Audit

| audit_axis | result | note |
|---|---|---|
| single main markdown | PASS | main markdown materialized in current session |
| single zip | PASS | single outer zip materialized in current session |
| fixed authority order | PASS | §5.1 + machine_summary.json |
| fixed goal premise order | PASS | §5.2 + machine_summary.json |
| current MC4+ / WP-M absorption | PASS | §7 + current owner locators + WP fences |
| Obsidian blueprint absorption | PASS | §12 / §17 / TT-OBS rows |
| legacy substantive replacement | PASS | §20 |
| missing exact-file honesty | PASS | §4 / closure_register.tsv |
| support-only demotion | PASS | §8 / §17 |
| route-out boundaries | PASS | §5.4 / route_out_registry.json |
| truth split clarity | PASS | §13 / document_truth_split.json |
| ghost locator scan | PASS | LOC-027..LOC-041 now defined in §18 + exact_locator_registry.tsv |
| ghost requirement scan | PASS | REQ-021/022/023/025/031/032 now defined in §19 + requirement_closure_ledger.tsv |
| declared-artifact existence scan | PASS | all audit-listed missing files now present in package tree |
| fence-dependency existence scan | PASS | schemas/samples/scripts/sourcepack + supporting TSV/JSON landed |
| no fake links / no fake package | PASS | actual files materialized in current session |

### 21.1 Self-Audit Note
r6 把 r5 最危險的盲點納入自審：`ghost ID scan`、`declared-artifact existence scan`、`fence-dependency existence scan`。這三項在 r5 缺席，在 r6 變成 mandatory。

<a id="sec-22"></a>
## 22. Final Truthful Verdict

| axis | verdict | truthful_statement |
|---|---|---|
| document verdict | PASS_PATCHED_AUDIT_CLOSURE_MATERIALIZED_DOCUMENT_PACKAGE | 新版主文、WP fences、RB/WI fences、machine blocks、audit-closure sidecars、schema/sample/validator/sourcepack substrate 已完整物化。 |
| execution verdict | FAIL_CLOSED | 缺 Package B/D/E owner proofs、CA-DSL consumer acceptance、Ops rollback drill、Obsidian gate direct proof；不得宣稱 execution ready。 |
| release verdict | BLOCK_RELEASE | 缺 owner validators / release_guard / shipped package reality proof；不得宣稱 release-ready。 |
| delivery verdict | PASS_MATERIALIZED_CURRENT_SESSION_PATCHED_DOCUMENT_PACKAGE | 本回合實際生成 main markdown、zip、manifest、checksums、inventory、machine sidecars、registries、schemas、samples、validator、sourcepack、audit closure ledger。 |

### 22.1 Truthfulness Note
r6 的 `PASS` 是 document/package truth 的 PASS，不是 runtime/release truth 的 PASS。這不是謙虛，而是避免把文件當成魔法 wand。

<a id="sec-23"></a>
## 23. Packaging Manifest / Download Inventory / Package Tree / Checksums Note

### 23.1 Packaging Manifest
- main_markdown: `Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-RB-WI_合冊_v2026.03.30-r6.md`
- zip_package: `Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-RB-WI_合冊_v2026.03.30-r6_package.zip`
- package_scope: `DOCUMENT_PACKAGE_ONLY`
- truthful_note: 本 package 物化的是 book/package truth，不是 runtime/release success proof。

### 23.2 Download Inventory
- `BUILD.md`
- `CA-CORE.md`
- `CA-MC4.md`
- `CA-WP.md`
- `CHECKSUMS.sha256`
- `MANIFEST.json`
- `Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-RB-WI_合冊_v2026.03.30-r6.md`
- `absorbed_inputs/legacy_baseline_Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-RB-WI_合冊.md`
- `absorbed_inputs/r5_audit_Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-RB-WI_合冊_v2026.03.30-r5_AUDIT_v2026.03.30-r1.md`
- `absorbed_inputs/r5_baseline_Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-RB-WI_合冊_v2026.03.30-r5.md`
- `artifact_family_legal_registry.tsv`
- `artifact_family_registry.tsv`
- `artifact_naming_resolution.json`
- `artifact_registry.json`
- `audit_patch_closure_matrix.tsv`
- `book_system_legal_registry.tsv`
- `canonical_crosswalk.json`
- `closure_register.tsv`
- `contradiction_closure_table.tsv`
- `coverage_matrix.tsv`
- `delivery_manifest.json`
- `delivery_reality_table.tsv`
- `document_truth_split.json`
- `download_inventory.tsv`
- `exact_locator_registry.tsv`
- `fence_registry.tsv`
- `inputs_manifest.tsv`
- `interface_closure_matrix.tsv`
- `machine_summary.json`
- `meta.json`
- `opsflow_binding_table.tsv`
- `owner_evidence_acquisition_plan.tsv`
- `package_tree.txt`
- `package_validation.json`
- `phase_caps.tsv`
- `rbwi_similarity_guard.tsv`
- `release_blocker_contract.json`
- `release_readiness_support_matrix.tsv`
- `requirement_closure_ledger.tsv`
- `review_fix_integration_matrix.tsv`
- `route_out_registry.json`
- `samples/sample_distill_bundle.json`
- `samples/sample_distill_pack.json`
- `samples/sample_dsl_handoff_payload.json`
- `schemas/distill_bundle.schema.json`
- `schemas/distill_pack.schema.json`
- `schemas/dsl_handoff_payload.schema.json`
- `scripts/ca_distill_validate.py`
- `source_hit_list.tsv`
- `support_web_registry.tsv`
- `test_tracking_register.tsv`
- `toolchain_adjudication_matrix.tsv`
- `wording_contract_artifact_check.tsv`

### 23.3 Package Tree
```text
BUILD.md
CA-CORE.md
CA-MC4.md
CA-WP.md
CHECKSUMS.sha256
MANIFEST.json
Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-RB-WI_合冊_v2026.03.30-r6.md
absorbed_inputs/legacy_baseline_Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-RB-WI_合冊.md
absorbed_inputs/r5_audit_Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-RB-WI_合冊_v2026.03.30-r5_AUDIT_v2026.03.30-r1.md
absorbed_inputs/r5_baseline_Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-RB-WI_合冊_v2026.03.30-r5.md
artifact_family_legal_registry.tsv
artifact_family_registry.tsv
artifact_naming_resolution.json
artifact_registry.json
audit_patch_closure_matrix.tsv
book_system_legal_registry.tsv
canonical_crosswalk.json
closure_register.tsv
contradiction_closure_table.tsv
coverage_matrix.tsv
delivery_manifest.json
delivery_reality_table.tsv
document_truth_split.json
download_inventory.tsv
exact_locator_registry.tsv
fence_registry.tsv
inputs_manifest.tsv
interface_closure_matrix.tsv
machine_summary.json
meta.json
opsflow_binding_table.tsv
owner_evidence_acquisition_plan.tsv
package_tree.txt
package_validation.json
phase_caps.tsv
rbwi_similarity_guard.tsv
release_blocker_contract.json
release_readiness_support_matrix.tsv
requirement_closure_ledger.tsv
review_fix_integration_matrix.tsv
route_out_registry.json
samples/sample_distill_bundle.json
samples/sample_distill_pack.json
samples/sample_dsl_handoff_payload.json
schemas/distill_bundle.schema.json
schemas/distill_pack.schema.json
schemas/dsl_handoff_payload.schema.json
scripts/ca_distill_validate.py
source_hit_list.tsv
support_web_registry.tsv
test_tracking_register.tsv
toolchain_adjudication_matrix.tsv
wording_contract_artifact_check.tsv
```

### 23.4 Checksums Note
`CHECKSUMS.sha256` 覆蓋 package 內容；`MANIFEST.json` 與 `CHECKSUMS.sha256` 作為 control files 採 `SELFREF_EXEMPT_CONTROL_FILES`，外層 ZIP 不納入 inner checksum scope，避免遞迴自咬。
<a id="sec-24"></a>
## 24. Machine-readable Blocks

### 24.1 machine_summary.json
```json
{
  "external_name": "Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-RB-WI_合冊",
  "internal_short_name": "SOMOC-CADISTILL-WPRBWI",
  "stable_id": "CA-DISTILL",
  "subsystem_id": "CA-DISTILL",
  "doc_kind": "WP_RB_WI_BUNDLE",
  "version": "v2026.03.30-r6",
  "date": "2026-03-30",
  "timezone": "Asia/Taipei",
  "supersedes": [
    "Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-RB-WI_合冊.md",
    "Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-RB-WI_合冊_v2026.03.29-r4.md",
    "Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-RB-WI_合冊_v2026.03.30-r5.md"
  ],
  "absorbs": [
    "Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_MC4+_合冊.md",
    "Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-M_合冊.md",
    "Pipeline-A_Obsidian升級藍圖.md",
    "Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-RB-WI_合冊.md",
    "Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-RB-WI_合冊_v2026.03.30-r5_AUDIT_v2026.03.30-r1.md"
  ],
  "authority_order_fixed": [
    "Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文",
    "Spartoi-OMOC_SSOT_合冊",
    "Spartoi-OMOC_LBP_合冊",
    "Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊",
    "Spartoi-OMOC_SubP1-LITE+MVP_合冊",
    "OMOC_合冊",
    "參考方案合冊"
  ],
  "fixed_goal_premise_order": [
    "嚴禁自己造輪子",
    "現成工具原生能力",
    "現成工具+極少配置",
    "最後才准許自寫薄腳本",
    "低磨合",
    "100%逐項達成正文系統需求"
  ],
  "pipeline_mainline": "CA-WRC → CA-CORPUS → CA-DISTILL → CA-DSL",
  "public_canonical_artifact": "distill_bundle.json",
  "internal_companion_artifact": "distill_pack.json",
  "package_scope": "DOCUMENT_PACKAGE_ONLY",
  "obsidian_legal_position": "SUPPORT_FRONTSTAGE_ONLY",
  "document_verdict": "PASS_PATCHED_AUDIT_CLOSURE_MATERIALIZED_DOCUMENT_PACKAGE",
  "execution_verdict": "FAIL_CLOSED",
  "release_verdict": "BLOCK_RELEASE",
  "delivery_verdict": "PASS_MATERIALIZED_CURRENT_SESSION_PATCHED_DOCUMENT_PACKAGE",
  "wp_inventory": [
    "WP-MASTER",
    "WP-001",
    "WP-002",
    "WP-003",
    "WP-004"
  ],
  "rbwi_inventory": [
    "RB-MASTER",
    "WI-MASTER",
    "RB-001",
    "WI-001",
    "RB-002",
    "WI-002",
    "RB-003",
    "WI-003",
    "RB-004",
    "WI-004"
  ],
  "missing_exact_files": [
    "Pipeline-A_MC4+_WP-M_WP-RB-WI_最終升級藍圖.md",
    "CA-DISTILL_MC4+_WP-M_WP-RB-WI_最終升級藍圖.md",
    "Spartoi-OMOC_Master_Spine_Full_Monolith.md",
    "Spartoi-OMOC_SubP1-LITE+MVP_CA-WRC_合冊.md",
    "Spartoi-OMOC_SubP1-LITE+MVP_CA-CORPUS_合冊.md",
    "Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_合冊.md"
  ],
  "materialized_sidecar_count": 46,
  "materialized_sidecar_count_scope": "all materialized inner packaged files except main markdown, absorbed_inputs copies, MANIFEST.json, CHECKSUMS.sha256, and outer zip"
}
```

### 24.2 artifact_naming_resolution.json
```json
{
  "version": "v2026.03.30-r6",
  "external_name": "Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-RB-WI_合冊",
  "canonical_filename": "Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-RB-WI_合冊_v2026.03.30-r6.md",
  "aliases": {
    "Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文": "Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md::DOC-0001",
    "Spartoi-OMOC_系統需求正文": "Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md::DOC-0002",
    "參考方案_合冊": "參考方案合冊",
    "distill_bundle.json": "PUBLIC_CANONICAL_ARTIFACT",
    "distill_pack.json": "INTERNAL_COMPANION_ARTIFACT"
  },
  "nonpromotable_paths": [
    ".obsidian/**",
    "notes/obsidian/**",
    ".base/**"
  ],
  "canonical_public_artifact": "distill_bundle.json",
  "internal_companion_artifact": "distill_pack.json"
}
```

### 24.3 release_blocker_contract.json
```json
{
  "version": "v2026.03.30-r6",
  "document_verdict": "PASS_PATCHED_AUDIT_CLOSURE_MATERIALIZED_DOCUMENT_PACKAGE",
  "execution_verdict": "FAIL_CLOSED",
  "release_verdict": "BLOCK_RELEASE",
  "blockers": [
    {
      "id": "BLK-001",
      "owner": "Package B",
      "title": "authoritative schema / registry / evidence schema owner proof absent",
      "effect": "BLOCK_RELEASE",
      "tt_id": "TT-DISTILL-001"
    },
    {
      "id": "BLK-002",
      "owner": "Package D",
      "title": "required checks / factory validator proof absent",
      "effect": "BLOCK_RELEASE",
      "tt_id": "TT-DISTILL-002"
    },
    {
      "id": "BLK-003",
      "owner": "Package E",
      "title": "validator / release_guard / shipped package reality proof absent",
      "effect": "BLOCK_RELEASE",
      "tt_id": "TT-DISTILL-003"
    },
    {
      "id": "BLK-004",
      "owner": "CA-DSL",
      "title": "consumer acceptance direct proof absent",
      "effect": "FAIL_CLOSED",
      "tt_id": "TT-DISTILL-004"
    },
    {
      "id": "BLK-005",
      "owner": "Ops",
      "title": "rollback drill evidence absent",
      "effect": "FAIL_CLOSED",
      "tt_id": "TT-DISTILL-005"
    },
    {
      "id": "BLK-006",
      "owner": "Repo mainline / Obsidian adoption gate",
      "title": "mainline-without-Obsidian, manifest exclusion, nonpromotion, optional-plugin-absence tests not yet directly proven in this package",
      "effect": "FAIL_CLOSED",
      "tt_id": "TT-OBS-001..TT-OBS-006"
    }
  ],
  "note": "No validator, no release claim. SUPPORT-only evidence never substitutes for owner proof."
}
```

### 24.4 route_out_registry.json
```json
{
  "version": "v2026.03.30-r6",
  "route_out": [
    {
      "id": "RO-001",
      "topic": "schema / registry / evidence schema exact fields",
      "owner": "Package B",
      "legal_position": "ROUTE_OUT_ONLY",
      "trigger": "exact owner field law required"
    },
    {
      "id": "RO-002",
      "topic": "required checks / factory validators / package-validation runtime proof",
      "owner": "Package D",
      "legal_position": "ROUTE_OUT_ONLY",
      "trigger": "required-check green or factory validator proof required"
    },
    {
      "id": "RO-003",
      "topic": "validator / release_guard / shipped package reality",
      "owner": "Package E",
      "legal_position": "ROUTE_OUT_ONLY",
      "trigger": "release-ready or shipped-package claim attempted"
    },
    {
      "id": "RO-004",
      "topic": "operator HOW / shell-specific commands / incident drill choreography",
      "owner": "Ops RUNBOOK",
      "legal_position": "ROUTE_OUT_ONLY",
      "trigger": "HOW / WI / rollback drill detail requested"
    },
    {
      "id": "RO-005",
      "topic": "parser / OCR / retrieval correctness and upstream truth",
      "owner": "CA-CORPUS / upstream owners",
      "legal_position": "ROUTE_OUT_ONLY",
      "trigger": "upstream intake law or correctness proof requested"
    },
    {
      "id": "RO-006",
      "topic": "frontstage note / .obsidian / .base promotion into package truth",
      "owner": "Nonpromotion gate",
      "legal_position": "PROHIBITED_UNLESS_MATERIALIZE_VALIDATE_PACKAGE",
      "trigger": "note/frontstage directly cited as canonical/package/runtime/release truth"
    }
  ]
}
```

### 24.5 artifact_registry.json
```json
{
  "version": "v2026.03.30-r6",
  "main_markdown": "Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-RB-WI_合冊_v2026.03.30-r6.md",
  "zip_package": "Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-RB-WI_合冊_v2026.03.30-r6_package.zip",
  "package_scope": "DOCUMENT_PACKAGE_ONLY",
  "artifacts": [
    {
      "name": "distill_bundle.json",
      "role": "PUBLIC_CANONICAL_RUNTIME_ARTIFACT",
      "state": "CONTRACT_ONLY"
    },
    {
      "name": "distill_pack.json",
      "role": "INTERNAL_COMPANION_RUNTIME_ARTIFACT",
      "state": "CONTRACT_ONLY"
    },
    {
      "name": "BUILD.md",
      "role": "SIDECAR",
      "state": "MATERIALIZED_IN_PACKAGE"
    },
    {
      "name": "CA-CORE.md",
      "role": "SOURCEPACK_FILE",
      "state": "MATERIALIZED_IN_PACKAGE"
    },
    {
      "name": "CA-MC4.md",
      "role": "SOURCEPACK_FILE",
      "state": "MATERIALIZED_IN_PACKAGE"
    },
    {
      "name": "CA-WP.md",
      "role": "SOURCEPACK_FILE",
      "state": "MATERIALIZED_IN_PACKAGE"
    },
    {
      "name": "CHECKSUMS.sha256",
      "role": "SIDECAR",
      "state": "MATERIALIZED_IN_PACKAGE"
    },
    {
      "name": "MANIFEST.json",
      "role": "SIDECAR",
      "state": "MATERIALIZED_IN_PACKAGE"
    },
    {
      "name": "Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-RB-WI_合冊_v2026.03.30-r6.md",
      "role": "MAIN_DOCUMENT",
      "state": "MATERIALIZED_IN_PACKAGE"
    },
    {
      "name": "absorbed_inputs/legacy_baseline_Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-RB-WI_合冊.md",
      "role": "ABSORBED_INPUT_COPY",
      "state": "MATERIALIZED_IN_PACKAGE"
    },
    {
      "name": "absorbed_inputs/r5_audit_Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-RB-WI_合冊_v2026.03.30-r5_AUDIT_v2026.03.30-r1.md",
      "role": "ABSORBED_INPUT_COPY",
      "state": "MATERIALIZED_IN_PACKAGE"
    },
    {
      "name": "absorbed_inputs/r5_baseline_Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-RB-WI_合冊_v2026.03.30-r5.md",
      "role": "ABSORBED_INPUT_COPY",
      "state": "MATERIALIZED_IN_PACKAGE"
    },
    {
      "name": "artifact_family_legal_registry.tsv",
      "role": "SIDECAR",
      "state": "MATERIALIZED_IN_PACKAGE"
    },
    {
      "name": "artifact_family_registry.tsv",
      "role": "SIDECAR",
      "state": "MATERIALIZED_IN_PACKAGE"
    },
    {
      "name": "artifact_naming_resolution.json",
      "role": "SIDECAR",
      "state": "MATERIALIZED_IN_PACKAGE"
    },
    {
      "name": "artifact_registry.json",
      "role": "SIDECAR",
      "state": "MATERIALIZED_IN_PACKAGE"
    },
    {
      "name": "audit_patch_closure_matrix.tsv",
      "role": "SIDECAR",
      "state": "MATERIALIZED_IN_PACKAGE"
    },
    {
      "name": "book_system_legal_registry.tsv",
      "role": "SIDECAR",
      "state": "MATERIALIZED_IN_PACKAGE"
    },
    {
      "name": "canonical_crosswalk.json",
      "role": "SIDECAR",
      "state": "MATERIALIZED_IN_PACKAGE"
    },
    {
      "name": "closure_register.tsv",
      "role": "SIDECAR",
      "state": "MATERIALIZED_IN_PACKAGE"
    },
    {
      "name": "contradiction_closure_table.tsv",
      "role": "SIDECAR",
      "state": "MATERIALIZED_IN_PACKAGE"
    },
    {
      "name": "coverage_matrix.tsv",
      "role": "SIDECAR",
      "state": "MATERIALIZED_IN_PACKAGE"
    },
    {
      "name": "delivery_manifest.json",
      "role": "SIDECAR",
      "state": "MATERIALIZED_IN_PACKAGE"
    },
    {
      "name": "delivery_reality_table.tsv",
      "role": "SIDECAR",
      "state": "MATERIALIZED_IN_PACKAGE"
    },
    {
      "name": "document_truth_split.json",
      "role": "SIDECAR",
      "state": "MATERIALIZED_IN_PACKAGE"
    },
    {
      "name": "download_inventory.tsv",
      "role": "SIDECAR",
      "state": "MATERIALIZED_IN_PACKAGE"
    },
    {
      "name": "exact_locator_registry.tsv",
      "role": "SIDECAR",
      "state": "MATERIALIZED_IN_PACKAGE"
    },
    {
      "name": "fence_registry.tsv",
      "role": "SIDECAR",
      "state": "MATERIALIZED_IN_PACKAGE"
    },
    {
      "name": "inputs_manifest.tsv",
      "role": "SIDECAR",
      "state": "MATERIALIZED_IN_PACKAGE"
    },
    {
      "name": "interface_closure_matrix.tsv",
      "role": "SIDECAR",
      "state": "MATERIALIZED_IN_PACKAGE"
    },
    {
      "name": "machine_summary.json",
      "role": "SIDECAR",
      "state": "MATERIALIZED_IN_PACKAGE"
    },
    {
      "name": "meta.json",
      "role": "SOURCEPACK_FILE",
      "state": "MATERIALIZED_IN_PACKAGE"
    },
    {
      "name": "opsflow_binding_table.tsv",
      "role": "SIDECAR",
      "state": "MATERIALIZED_IN_PACKAGE"
    },
    {
      "name": "owner_evidence_acquisition_plan.tsv",
      "role": "SIDECAR",
      "state": "MATERIALIZED_IN_PACKAGE"
    },
    {
      "name": "package_tree.txt",
      "role": "SIDECAR",
      "state": "MATERIALIZED_IN_PACKAGE"
    },
    {
      "name": "phase_caps.tsv",
      "role": "SIDECAR",
      "state": "MATERIALIZED_IN_PACKAGE"
    },
    {
      "name": "rbwi_similarity_guard.tsv",
      "role": "SIDECAR",
      "state": "MATERIALIZED_IN_PACKAGE"
    },
    {
      "name": "release_blocker_contract.json",
      "role": "SIDECAR",
      "state": "MATERIALIZED_IN_PACKAGE"
    },
    {
      "name": "release_readiness_support_matrix.tsv",
      "role": "SIDECAR",
      "state": "MATERIALIZED_IN_PACKAGE"
    },
    {
      "name": "requirement_closure_ledger.tsv",
      "role": "SIDECAR",
      "state": "MATERIALIZED_IN_PACKAGE"
    },
    {
      "name": "review_fix_integration_matrix.tsv",
      "role": "SIDECAR",
      "state": "MATERIALIZED_IN_PACKAGE"
    },
    {
      "name": "route_out_registry.json",
      "role": "SIDECAR",
      "state": "MATERIALIZED_IN_PACKAGE"
    },
    {
      "name": "samples/sample_distill_bundle.json",
      "role": "SAMPLE",
      "state": "MATERIALIZED_IN_PACKAGE"
    },
    {
      "name": "samples/sample_distill_pack.json",
      "role": "SAMPLE",
      "state": "MATERIALIZED_IN_PACKAGE"
    },
    {
      "name": "samples/sample_dsl_handoff_payload.json",
      "role": "SAMPLE",
      "state": "MATERIALIZED_IN_PACKAGE"
    },
    {
      "name": "schemas/distill_bundle.schema.json",
      "role": "SCHEMA",
      "state": "MATERIALIZED_IN_PACKAGE"
    },
    {
      "name": "schemas/distill_pack.schema.json",
      "role": "SCHEMA",
      "state": "MATERIALIZED_IN_PACKAGE"
    },
    {
      "name": "schemas/dsl_handoff_payload.schema.json",
      "role": "SCHEMA",
      "state": "MATERIALIZED_IN_PACKAGE"
    },
    {
      "name": "scripts/ca_distill_validate.py",
      "role": "VALIDATOR_SCRIPT",
      "state": "MATERIALIZED_IN_PACKAGE"
    },
    {
      "name": "source_hit_list.tsv",
      "role": "SIDECAR",
      "state": "MATERIALIZED_IN_PACKAGE"
    },
    {
      "name": "support_web_registry.tsv",
      "role": "SIDECAR",
      "state": "MATERIALIZED_IN_PACKAGE"
    },
    {
      "name": "test_tracking_register.tsv",
      "role": "SIDECAR",
      "state": "MATERIALIZED_IN_PACKAGE"
    },
    {
      "name": "toolchain_adjudication_matrix.tsv",
      "role": "SIDECAR",
      "state": "MATERIALIZED_IN_PACKAGE"
    },
    {
      "name": "wording_contract_artifact_check.tsv",
      "role": "SIDECAR",
      "state": "MATERIALIZED_IN_PACKAGE"
    }
  ]
}
```

### 24.6 delivery_manifest.json
```json
{
  "version": "v2026.03.30-r6",
  "main_markdown": "Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-RB-WI_合冊_v2026.03.30-r6.md",
  "zip_package": "Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-RB-WI_合冊_v2026.03.30-r6_package.zip",
  "package_scope": "DOCUMENT_PACKAGE_ONLY",
  "document_verdict": "PASS_PATCHED_AUDIT_CLOSURE_MATERIALIZED_DOCUMENT_PACKAGE",
  "execution_verdict": "FAIL_CLOSED",
  "release_verdict": "BLOCK_RELEASE",
  "delivery_verdict": "PASS_MATERIALIZED_CURRENT_SESSION_PATCHED_DOCUMENT_PACKAGE",
  "files": [
    "BUILD.md",
    "CA-CORE.md",
    "CA-MC4.md",
    "CA-WP.md",
    "CHECKSUMS.sha256",
    "MANIFEST.json",
    "Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-RB-WI_合冊_v2026.03.30-r6.md",
    "absorbed_inputs/legacy_baseline_Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-RB-WI_合冊.md",
    "absorbed_inputs/r5_audit_Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-RB-WI_合冊_v2026.03.30-r5_AUDIT_v2026.03.30-r1.md",
    "absorbed_inputs/r5_baseline_Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-RB-WI_合冊_v2026.03.30-r5.md",
    "artifact_family_legal_registry.tsv",
    "artifact_family_registry.tsv",
    "artifact_naming_resolution.json",
    "artifact_registry.json",
    "audit_patch_closure_matrix.tsv",
    "book_system_legal_registry.tsv",
    "canonical_crosswalk.json",
    "closure_register.tsv",
    "contradiction_closure_table.tsv",
    "coverage_matrix.tsv",
    "delivery_manifest.json",
    "delivery_reality_table.tsv",
    "document_truth_split.json",
    "download_inventory.tsv",
    "exact_locator_registry.tsv",
    "fence_registry.tsv",
    "inputs_manifest.tsv",
    "interface_closure_matrix.tsv",
    "machine_summary.json",
    "meta.json",
    "opsflow_binding_table.tsv",
    "owner_evidence_acquisition_plan.tsv",
    "package_tree.txt",
    "package_validation.json",
    "phase_caps.tsv",
    "rbwi_similarity_guard.tsv",
    "release_blocker_contract.json",
    "release_readiness_support_matrix.tsv",
    "requirement_closure_ledger.tsv",
    "review_fix_integration_matrix.tsv",
    "route_out_registry.json",
    "samples/sample_distill_bundle.json",
    "samples/sample_distill_pack.json",
    "samples/sample_dsl_handoff_payload.json",
    "schemas/distill_bundle.schema.json",
    "schemas/distill_pack.schema.json",
    "schemas/dsl_handoff_payload.schema.json",
    "scripts/ca_distill_validate.py",
    "source_hit_list.tsv",
    "support_web_registry.tsv",
    "test_tracking_register.tsv",
    "toolchain_adjudication_matrix.tsv",
    "wording_contract_artifact_check.tsv"
  ]
}
```

### 24.7 coverage_matrix.tsv
```tsv
requirement_id	requirement	closure_surface	status
REQ-001	Fixed authority order frozen	§5.1 / machine_summary.json	PASS
REQ-002	Fixed goal premise order frozen	§5.2 / machine_summary.json	PASS
REQ-003	distill_bundle.json public canonical artifact	§1 / §15 / artifact_naming_resolution.json	PASS
REQ-004	distill_pack.json internal companion artifact	§1 / §15 / artifact_naming_resolution.json	PASS
REQ-005	Pipeline mainline fixed	§1 / §8 / LOC-024	PASS
REQ-006	Obsidian support-frontstage-only	§12 / §17 / LOC-013/016/020/021	PASS
REQ-007	Package B route-out only	§5.4 / route_out_registry.json / LOC-003	PASS
REQ-008	Package D route-out only	§5.4 / route_out_registry.json / LOC-004	PASS
REQ-009	Package E route-out only	§5.4 / route_out_registry.json / LOC-005	PASS
REQ-010	Execution remains fail-closed absent owner proofs	§22 / release_blocker_contract.json	PASS
REQ-011	Release remains block-release absent owner proofs	§22 / release_blocker_contract.json	PASS
REQ-012	Inputs manifest honest about missing exact files	§4 / inputs_manifest.tsv	PASS
REQ-013	Quick index and anchors-first navigation	§2 / section anchors / fence anchors	PASS
REQ-014	WP inventory complete	§15 / section 25 fences	PASS
REQ-015	RB/WI inventory complete	§25 fences / fence_registry.tsv	PASS
REQ-016	Machine-readable blocks materialized	§24 / sidecars	PASS
REQ-017	Packaging manifest / inventory / checksums note	§23 / MANIFEST.json / CHECKSUMS.sha256	PASS
REQ-018	Support-only evidence demoted	§8 / §17 / support_web_registry.tsv	PASS
REQ-019	Legacy target substantively replaced	§20 / contradiction_closure_table.tsv	PASS
REQ-020	No fake download links	§23 + actual sandbox links only	PASS
REQ-021	Lawful input gate decomposed into mandatory / optional / foreign-owner classes with explicit halt discipline	RB/WI-002 + interface_closure_matrix.tsv + owner_evidence_acquisition_plan.tsv	PASS
REQ-022	Three-phase distill route, provenance binding, and phase journal substrate are materially defined	RB/WI-003 + phase_caps.tsv + schemas/samples	PASS
REQ-023	PASS-only CA-DISTILL -> CA-DSL handoff remains explicitly bounded and blocker-preserving	RB/WI-004 + release_blocker_contract.json + samples/sample_dsl_handoff_payload.json	PASS
REQ-025	Foundation-side artifact family / wording / tooling substrate is materially landed rather than merely declared	RB/WI-001 + artifact_family_legal_registry.tsv + wording_contract_artifact_check.tsv + toolchain_adjudication_matrix.tsv	PASS
REQ-031	Five-segment WI pattern is present and similarity-guarded across all WI fences	WI-MASTER + rbwi_similarity_guard.tsv	PASS
REQ-032	Final verdict axes remain truthful after audit closure and do not erase Package B/D/E / CA-DSL / Ops blockers	§22 + document_truth_split.json + release_blocker_contract.json	PASS

```

### 24.8 closure_register.tsv
```tsv
cr_id	issue	state	temporary_status	tt_id	reopen_trigger	effect
CR-001	Pipeline-A direct driver exact file absent	MISSING_EXACT_FILE	TEMP_CLOSED	TT-DISTILL-006	exact file mounted later or carrier-trace contradicted	No direct-driver FOUND claim
CR-002	CA-DISTILL direct driver exact file absent	MISSING_EXACT_FILE	TEMP_CLOSED	TT-DISTILL-007	exact file mounted later or current owner books contradicted	No direct-driver FOUND claim
CR-003	Master Spine exact file absent	MISSING_EXACT_FILE	TEMP_CLOSED	TT-DISTILL-008	exact file appears or extracted navigation diverges	navigation-chain only
CR-004	Package B authoritative schema proof absent	FOREIGN_OWNER_PROOF_MISSING	TEMP_CLOSED	TT-DISTILL-001	owner proof arrives	BLOCK_RELEASE
CR-005	Package D required checks proof absent	FOREIGN_OWNER_PROOF_MISSING	TEMP_CLOSED	TT-DISTILL-002	owner proof arrives	BLOCK_RELEASE
CR-006	Package E release guard proof absent	FOREIGN_OWNER_PROOF_MISSING	TEMP_CLOSED	TT-DISTILL-003	owner proof arrives	BLOCK_RELEASE
CR-007	CA-DSL consumer acceptance direct proof absent	DOWNSTREAM_PROOF_MISSING	TEMP_CLOSED	TT-DISTILL-004	consumer owner readback arrives	FAIL_CLOSED
CR-008	Ops rollback drill evidence absent	OPS_PROOF_MISSING	TEMP_CLOSED	TT-DISTILL-005	ops drill evidence arrives	FAIL_CLOSED
CR-009	Obsidian nonpromotion proof not direct in this package	OBSIDIAN_PROOF_PENDING	TEMP_CLOSED	TT-OBS-001..TT-OBS-006	mainline/manifest/nonpromotion tests directly evidenced	FAIL_CLOSED

```

### 24.9 test_tracking_register.tsv
```tsv
tt_id	topic	acceptance_condition	status	effect
TT-DISTILL-001	Package B owner proof	Package B authoritative schema / registry / evidence schema	OPEN	BLOCK_RELEASE
TT-DISTILL-002	Package D owner proof	required checks / factory validators	OPEN	BLOCK_RELEASE
TT-DISTILL-003	Package E owner proof	validator / release_guard / shipped package reality	OPEN	BLOCK_RELEASE
TT-DISTILL-004	CA-DSL consumer acceptance	PASS-only handoff acceptance direct proof	OPEN	FAIL_CLOSED
TT-DISTILL-005	Ops rollback drill	rollback choreography / drill evidence	OPEN	FAIL_CLOSED
TT-DISTILL-006	Pipeline-A direct driver exact file	exact file presence and readback	OPEN	TRACEABILITY_ONLY
TT-DISTILL-007	CA-DISTILL direct driver exact file	exact file presence and readback	OPEN	TRACEABILITY_ONLY
TT-DISTILL-008	Master Spine exact file	exact file presence and readback	OPEN	TRACEABILITY_ONLY
TT-OBS-001	Mainline without Obsidian	render / validate / CI still pass without Obsidian	OPEN	FAIL_CLOSED
TT-OBS-002	Manifest exclusion	mandatory manifest excludes .obsidian/** and notes/obsidian/**	OPEN	FAIL_CLOSED
TT-OBS-003	Nonpromotion gate	canonical/package-truth paths never reference note/frontstage	OPEN	FAIL_CLOSED
TT-OBS-004	Shadow nonblocking	frontstage absence does not block mainline validation	OPEN	FAIL_CLOSED
TT-OBS-005	Promotion path smoke	materialize → validate → package path smoke passes	OPEN	FAIL_CLOSED
TT-OBS-006	Optional plugin absence	no optional community plugin required for baseline flow	OPEN	FAIL_CLOSED

```

### 24.10 exact_locator_registry.tsv
```tsv
locator_id	source_file	locator	pattern	purpose
LOC-001	Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md	L49	No-Source-No-Norm	top-law fail-closed rule
LOC-002	Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md	L50	No-Anchor-No-Claim	top-law exact-claim rule
LOC-003	Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md	L109	Package B（Control Plane Pack）	Package B owner ceiling
LOC-004	Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md	L111	Package D（Factory Pack）	Package D owner ceiling
LOC-005	Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md	L112	Package E（Subsystem Delivery Pack）	Package E owner ceiling
LOC-006	Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md	L1954	distill_bundle.json	system demand for minimum distill output
LOC-007	Spartoi-OMOC_SSOT_合冊.md	L35	## Index Contract (AI retrieval MUST follow)	SSOT index-first retrieval contract
LOC-008	Spartoi-OMOC_SSOT_合冊.md	L42	## Anti-Miss / Anti-Confusion / Anti-Hallucination Guard	SSOT anti-hallucination guard
LOC-009	Spartoi-OMOC_LBP_合冊.md	L25	## Index Contract	LBP index contract
LOC-010	Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊.md	L1545	No-Source-No-Norm	Pack A-E no-source-no-norm
LOC-011	Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊.md	L2501	No-Anchor-No-Claim	Pack A-E no-anchor-no-claim
LOC-012	Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_MC4+_合冊.md	L46	public_canonical_artifact | distill_bundle.json	current MC4+ canonical naming
LOC-013	Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_MC4+_合冊.md	L49	obsidian_legal_position | SUPPORT_FRONTSTAGE_ONLY	current MC4+ Obsidian legal position
LOC-014	Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_MC4+_合冊.md	L265	validator / release_guard / shipped package reality | Package E | route-out only; blocker if proof absent	current MC4+ Package E blocker
LOC-015	Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-M_合冊.md	L58	integrity_policy | SELFREF_EXEMPT_CONTROL_FILES	current WP-M integrity policy
LOC-016	Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-M_合冊.md	L56	obsidian_legal_position | SUPPORT_FRONTSTAGE_ONLY	current WP-M Obsidian legal position
LOC-017	Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-M_合冊.md	L519	TT-OBS-001 | Mainline without Obsidian	current WP-M TT-OBS-001
LOC-018	Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-M_合冊.md	L520	TT-OBS-002 | Manifest exclusion	current WP-M TT-OBS-002
LOC-019	Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-M_合冊.md	L521	TT-OBS-003 | Nonpromotion gate	current WP-M TT-OBS-003
LOC-020	Pipeline-A_Obsidian升級藍圖.md	L6	SUPPORT_FRONTSTAGE_ONLY	patched blueprint support-frontstage-only stance
LOC-021	Pipeline-A_Obsidian升級藍圖.md	L105	Repo-native mainline + Obsidian shadow frontstage	blueprint adoption model
LOC-022	Pipeline-A_Obsidian升級藍圖.md	L409	TT-OBS-001 | Mainline without Obsidian	blueprint TT-OBS-001
LOC-023	Pipeline-A_Obsidian升級藍圖.md	L417	TT-OBS-009 | Community plugin absence	blueprint TT-OBS-009
LOC-024	Spartoi-OMOC_SubP1-LITE+MVP_Pipeline-A_MC4+_WP-M_合冊.md	L12	placement_order: `CA-WRC → CA-CORPUS → CA-DISTILL → CA-DSL`	pipeline mainline placement order
LOC-025	Spartoi-OMOC_SubP1-LITE+MVP_Pipeline-A_MC4+_WP-M_合冊.md	L26	DOC-0005 · CA-DISTILL · MC4+	pipeline carrier CA-DISTILL MC4+ doc slot
LOC-026	Spartoi-OMOC_SubP1-LITE+MVP_Pipeline-A_MC4+_WP-M_合冊.md	L27	DOC-0006 · CA-DISTILL · WP-M	pipeline carrier CA-DISTILL WP-M doc slot
LOC-027	Pipeline-A實作資料參考_合冊.md	L53	Whole-Doc Slots	implementation support locus for run-first materialization posture
LOC-028	多模態多向量圖像檢索技術指南_筆記.txt	L44	第三章：多向量圖像檢索核心技術	optional multivector support locus
LOC-029	台股實戰映射_合冊.md	L35	Global Index Contract	domain support boundary locus
LOC-030	Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_MC4+_合冊.md	L378	IF-003 | CA-DISTILL | CA-DSL | PASS-only dsl_handoff_payload.json	current owner PASS-only handoff contract
LOC-031	Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_MC4+_合冊.md	L1005-L1008	CA-DISTILL_MC4+_WP-M_WP-RB-WI_最終升級藍圖 / Pipeline-A_MC4+_WP-M_WP-RB-WI_最終升級藍圖	current exact owner MC4+ appendix preserves exact locators for direct blueprint readback
LOC-032	Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_MC4+_合冊.md	L995-L996	FOUND_FILE_LIBRARY_READBACK	current exact owner MC4+ source existence proof for direct upgrade drivers
LOC-033	Spartoi-OMOC_SubP1-LITE+MVP_Pipeline-A_MC4+_WP-M_合冊.md	L6763-L6767	LOC-005~LOC-009	Pipeline-A carrier preserves blueprint locator chain and OP-03/05/09 mapping
LOC-034	Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-M_合冊.md	L398	IF-002 | CA-CORPUS | CA-DISTILL | corpus snapshot / source locator / grounding truth	current exact WP-M consume-only preflight boundary
LOC-035	Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-M_合冊.md	L408	OP-03 | CA-CORPUS -> CA-DISTILL intake / preflight / engine start	current exact WP-M operator-flow binding for preflight and engine start
LOC-036	Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-RB-WI_合冊_v2026.03.30-r5_AUDIT_v2026.03.30-r1.md	§4-§6	D-003 / D-004 substrate absence	audit driver proving r5 lacked declared substrate files
LOC-037	Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_MC4+_合冊.md	L396	OP-05 | CA-DISTILL -> CA-DSL handoff edge	current owner handoff and SGF gate binding
LOC-038	Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_MC4+_合冊.md	L397	OP-09 | package / release truth stopline	current owner package/release stopline binding
LOC-039	Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-RB-WI_合冊_v2026.03.30-r5_AUDIT_v2026.03.30-r1.md	§12-§13	D-005 Final Truthful Verdict overclaim	audit driver for verdict and self-audit downgrade/repair
LOC-040	Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-RB-WI_合冊_v2026.03.30-r5_AUDIT_v2026.03.30-r1.md	§4 / Appendix A	D-001 / D-002 ghost LOC / REQ IDs	audit driver for traceability repair
LOC-041	Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-RB-WI_合冊_v2026.03.30-r5_AUDIT_v2026.03.30-r1.md	Appendix B / Appendix C	declared-artifact absence / actual package inventory	audit driver for artifact materialization and inventory repair

```

### 24.11 delivery_reality_table.tsv
```tsv
path	role	artifact_state	note
Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-RB-WI_合冊_v2026.03.30-r6.md	main_markdown	MATERIALIZED_IN_PACKAGE	authoritative main markdown
Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-RB-WI_合冊_v2026.03.30-r6_package.zip	outer_zip	MATERIALIZED_IN_SESSION	single downloadable zip for this package
source_hit_list.tsv	sidecar	MATERIALIZED_IN_PACKAGE	audit-listed missing substrate now landed
interface_closure_matrix.tsv	sidecar	MATERIALIZED_IN_PACKAGE	audit-listed missing substrate now landed
phase_caps.tsv	sidecar	MATERIALIZED_IN_PACKAGE	audit-listed missing substrate now landed
artifact_family_legal_registry.tsv	sidecar	MATERIALIZED_IN_PACKAGE	audit-listed missing substrate now landed
toolchain_adjudication_matrix.tsv	sidecar	MATERIALIZED_IN_PACKAGE	audit-listed missing substrate now landed
schemas/*	schema_family	MATERIALIZED_IN_PACKAGE	schema substrate landed
samples/*	sample_family	MATERIALIZED_IN_PACKAGE	sample substrate landed
scripts/ca_distill_validate.py	validator_script	MATERIALIZED_IN_PACKAGE	validator substrate landed
meta.json / CA-CORE.md / CA-MC4.md / CA-WP.md	sourcepack	MATERIALIZED_IN_PACKAGE	sourcepack four-file set landed
distill_bundle.json	runtime_artifact	CONTRACT_ONLY	public canonical runtime artifact not materialized here
distill_pack.json	runtime_artifact	CONTRACT_ONLY	internal companion runtime artifact not materialized here
Package B/D/E owner proofs	foreign_owner_proof	ROUTE_OUT_ONLY	not materialized in this package

```
<a id="sec-25"></a>
## 25. 全部 WP / RB / WI fences

### 25.1 Fence Index
- [WP-MASTER](#fence-wp-master-begin)
- [WP-001](#fence-wp-001-begin)
- [WP-002](#fence-wp-002-begin)
- [WP-003](#fence-wp-003-begin)
- [WP-004](#fence-wp-004-begin)
- [RB-MASTER](#fence-rb-master-begin)
- [WI-MASTER](#fence-wi-master-begin)
- [RB-001](#fence-rb-001-begin)
- [WI-001](#fence-wi-001-begin)
- [RB-002](#fence-rb-002-begin)
- [WI-002](#fence-wi-002-begin)
- [RB-003](#fence-rb-003-begin)
- [WI-003](#fence-wi-003-begin)
- [RB-004](#fence-rb-004-begin)
- [WI-004](#fence-wi-004-begin)

### 25.2 Fences

---
<a id="fence-wp-master-begin"></a>
## FENCE:WP-MASTER

## WP-MASTER
```text
WP_FENCE_BEGIN: WP-MASTER
```

### Front-Matter
- WP_ID: `WP-MASTER`
- Name: `Mission / Scope / Authority / Truth Split / Global Stoplines`
- Purpose: fix mission, scope, source-law order, truth split, artifact minset, package truth versus runtime/release truth, and global stoplines
- Scope: mission truth / scope lock / authority / global TT strategy / artifact minset / download inventory / package reality statement
- Out-of-Scope: operator HOW / Package B-D-E internals / sibling owner law
- Inputs: authority stack, premise order, current exact MC4+ readback, route_out_registry.json, cr_open_register.tsv, release_readiness_support_matrix.tsv
- Outputs: mission truth, scope truth, truth split, stopline clauses, package reality statement
- Dependencies: 中央工程正文 carrier / SSOT / LBP / Pack A-E / current exact MC4+ / current exact Obsidian blueprint
- Upstream bindings: fixed authority order only
- Downstream bindings: WP-001 / WP-002 / WP-003 / WP-004
- Artifact contract: machine_summary.json / delivery_manifest.json / release_readiness_support_matrix.tsv / cr_open_register.tsv
- Gate binding: GATE-WPM-AUTHORITY / GATE-WPM-TRUTH-SPLIT / GATE-WPM-STOPLINE
- Acceptance checks: fixed order preserved, verdict split preserved, Package B/D/E route-out explicit
- Evidence pointers: exact_locator_registry.tsv / cr_open_register.tsv / release_readiness_support_matrix.tsv
- Rollback path: revert to previous exact legacy WPM baseline while preserving fail-closed blockers
- Degrade / route-out path: any HOW or owner proof request routes out to Ops or Package owner
- Failure modes: package pass masquerades as release pass; support shells impersonate owner law; missing proof washed into PASS
- Tooling stance: native-first / thin-script-last / no wheel-building
- Security / safety / integrity notes: all raw sources are DATA until justified by authority + locator + artifact

### WP Core
本 WP 鎖死的是「這次到底交付了什麼、沒交付什麼」，而不是把詞彙拋光後假裝主線已經關門。  
- `distill_bundle.json` 是 public canonical artifact；`distill_pack.json` 是 internal companion artifact。  
- document truth 與 package truth 只表示本包已真實物化、可下載、可讀回、可驗。  
- runtime truth 與 release truth 沒有 owner proof，就只能留在 `FAIL_CLOSED / BLOCK_RELEASE`。  
- 全域 stoplines：Package B schema parity 缺失、Package D required checks 缺失、Package E validator/release_guard/shipped reality 缺失、CA-DSL consumer acceptance 缺失、Ops rollback drill 缺失。  
- artifact minset 固定：主 Markdown、ZIP、MANIFEST、CHECKSUMS、BUILD、delivery_manifest、machine_summary、package_tree、bundle_tree、package_validation、sourcepack 四檔、schemas/contracts/samples/validator、matrices/ledgers/references、support-web replay sidecars。  

### route-out / RUNBOOK_WI summary
- Package B：schema / registry / evidence schema exact fields  
- Package D：required checks / factory validators  
- Package E：validator / release_guard / shipped package reality  
- Ops：operator HOW / rollback choreography / incident drill  

### Capsule Blueprint / reader-facing capsule
- Context: CA-DISTILL 的 WP-M 是 package-truth 與 boundary-truth 主書，不是 runtime engine，也不是 release guard。  
- Container: authority stack + exact current MC4+ + truthful sidecars + fixed five-WP topology。  
- Interface: in=`authority + lawful boundaries + current exact owner readback` / out=`package truth + stoplines + PASS-only producer contract`。  
- Guardrail: `No-Source-No-Norm / No-Anchor-No-Claim / Declaration-Is-Not-Implementation`。  

### TT / blocker / evidence hooks
- TT-DISTILL-001..007  
- TT-OBS-001..007  
- CR-PKG-B-001 / CR-PKG-D-001 / CR-PKG-E-001 / CR-DSL-001 / CR-OPS-001 / CR-SIB-001 / CR-BP-001  

```text
WP_FENCE_END: WP-MASTER

<a id="fence-wp-master-end"></a>
---

---
<a id="fence-wp-001-begin"></a>
## FENCE:WP-001

## WP-001
```text
WP_FENCE_BEGIN: WP-001
```

### Front-Matter
- WP_ID: `WP-001`
- Name: `Foundation / Backbone / Canonical Fence`
- Purpose: path policy, canonical/alias fence, sourcepack four-file governance, backbone contract, canonical artifact naming, provider/tool position, WRC adjacency
- Scope: canonical naming, sourcepack governance, path policy, provider/tool position, WRC adjacency, artifact family registry
- Out-of-Scope: input manifesting, engine execution, SGF, release packaging, required checks, release guard internals
- Inputs: current exact MC4+ readback, Pack A-E owner ceiling, current Obsidian blueprint, exact locator set
- Outputs: canonical fence, sourcepack governance, artifact family registry, route-out boundary, provider/tool stance
- Dependencies: artifact_family_registry.tsv / canonical_crosswalk.json / route_out_registry.json / sourcepack four files
- Upstream bindings: current exact MC4+ + higher-law package ceilings
- Downstream bindings: WP-002 / WP-003 / WP-004
- Artifact contract: artifact_family_registry.tsv / canonical_crosswalk.json / docs/subsystems/CA-DISTILL/sourcepack/*
- Gate binding: GATE-CANONICAL-NAMING / GATE-SOURCEPACK-MINSET / GATE-NONPROMOTION
- Acceptance checks: distill_bundle.json is PUBLIC_CANONICAL; distill_pack.json is INTERNAL_COMPANION; sourcepack four files all present
- Evidence pointers: exact_locator_registry.tsv / artifact_family_registry.tsv / package_validation.json
- Rollback path: reopen if canonical and companion drift or sourcepack minset breaks
- Degrade / route-out path: Package B/D/E questions route out; WRC adjacency remains interface-only
- Failure modes: companion artifact masquerades as canonical; sourcepack missing required file; frontstage note promoted without materialization
- Tooling stance: repo-native mainline; Obsidian shadow frontstage only; thin validator allowed
- Security / safety / integrity notes: canonical hash must be the only hash used by downstream payloads

### WP Core
- canonical naming 裁決：`distill_bundle.json` 是唯一對外 canonical；`distill_pack.json` 不得奪權。  
- sourcepack 固定治理單位：`docs/subsystems/CA-DISTILL/sourcepack/`，四檔 `meta.json / CA-CORE.md / CA-MC4.md / CA-WP.md` 必須齊。  
- path policy：canonical/package-truth 路徑不得引用 `.obsidian/**`、`notes/obsidian/**`、frontstage views。  
- provider/tool position：原生工具先行；Obsidian 僅允許 capture / review / shadow authoring / crosswalk / sourcepack 人工編修輔助 / optional views。  
- WRC adjacency：本書只鎖 `allowlist / provenance / sealing / intake truth` 的 consume-only interface，不補造上游真相。  

### route-out / RUNBOOK_WI summary
- WRC intake allowlist/provenance/sealing exact fields：回 CA-WRC owner  
- canonical schema authorship：回 Package B  
- release proof：回 Package D / E  

### Capsule Blueprint / reader-facing capsule
- Context: 先把 artifact 與 path 說死，再談 intake、engine、handoff。  
- Component: canonical fence / sourcepack governance / tool position / path policy。  
- Risk: 兩個 canonical、假的 sourcepack completeness、frontstage note 直升 package truth。  
- Guardrail: nonpromotion gate + manifest exclusion gate + canonical-crosswalk.  

### TT / blocker / evidence hooks
- TT-OBS-002 Manifest exclusion  
- TT-OBS-003 Nonpromotion gate  
- TT-OBS-004 Shadow-nonblocking gate  
- CR-SIB-001 / CR-BP-001  

```text
WP_FENCE_END: WP-001

<a id="fence-wp-001-end"></a>
---

---
<a id="fence-wp-002-begin"></a>
## FENCE:WP-002

## WP-002
```text
WP_FENCE_BEGIN: WP-002
```

### Front-Matter
- WP_ID: `WP-002`
- Name: `Input Contract / Preflight / Authority Map`
- Purpose: lawful CORPUS->DISTILL handoff truth, mandatory/optional split, input manifest, authority map, preflight report, chunk/source locator stability
- Scope: lawful intake, provenance completeness, authority map, optional-support demotion, preflight decision
- Out-of-Scope: inventing absent upstream fields, consumer acceptance, final packaging, release truth
- Inputs: lawful upstream handoff contract as required by higher law, exact locator registry, source hit truth, current exact MC4+ boundary
- Outputs: preflight decision, input manifest, authority map, quarantine note, owner evidence acquisition plan
- Dependencies: exact_locator_registry.tsv / owner_evidence_acquisition_plan.tsv / route_out_registry.json
- Upstream bindings: CA-CORPUS consume-only truth, CA-WRC intake truth (interface-only)
- Downstream bindings: WP-003
- Artifact contract: owner_evidence_acquisition_plan.tsv / exact_locator_registry.tsv / current truth-state notes
- Gate binding: GATE-DISTILL-PREFLIGHT / GATE-PROVENANCE-COMPLETE / GATE-INPUT-AUTHORITY-MAP
- Acceptance checks: corpus_handoff_manifest != distill_bundle != distill_pack; unresolved locator cannot pass; optional supports stay demoted
- Evidence pointers: exact_locator_registry.tsv / interface_closure_matrix.tsv / owner_evidence_acquisition_plan.tsv
- Rollback path: quarantine intake and reopen relevant CR if upstream truth conflicts
- Degrade / route-out path: source-intake questions route out to CA-WRC or CA-CORPUS; schema questions route out Package B
- Failure modes: upstream artifact impersonates distill artifact; provenance incomplete; support-only enhancements become mandatory
- Tooling stance: intake truth before fancy retrieval
- Security / safety / integrity notes: unresolved locators are quarantined, not hallucinated away

### WP Core
- mandatory：lawful upstream handoff、source/provenance completeness、authority map、owner boundary confirmation。  
- optional：multivector / GraphRAG / RAPTOR / CRAG / scorecard / semantic shell；只能 support，不能替代 owner proof。  
- preflight truth rule：缺 lawful_handoff、缺 anchor/hash/locator、缺 owner boundary 任一，即不得進入 PASS-side output contract。  
- 本回合 truthfully 結論：因 CA-WRC、CA-CORPUS exact owner files未掛載，WP-002 只能把 interface truth 鎖死，不能假稱 direct upstream readback 已完成。  

### route-out / RUNBOOK_WI summary
- source-intake origin：回 CA-WRC  
- corpus snapshot / locator / grounding truth：回 CA-CORPUS  
- absent schema exact fields：回 Package B  

### Capsule Blueprint / reader-facing capsule
- Context: intake 若不乾淨，後面所有 claim 都只是更精緻的污染。  
- Interface: in=`upstream lawful handoff truth` / out=`preflight truth + quarantine decision`。  
- Observability: CR / TT / owner_evidence_acquisition_plan。  
- Risk: 假 completeness、假 provenance、假 upstream closure。  

### TT / blocker / evidence hooks
- TT-DISTILL-001 / 006 / 007  
- CR-SIB-001 / CR-BP-001  

```text
WP_FENCE_END: WP-002

<a id="fence-wp-002-end"></a>
---

---
<a id="fence-wp-003-begin"></a>
## FENCE:WP-003

## WP-003
```text
WP_FENCE_BEGIN: WP-003
```

### Front-Matter
- WP_ID: `WP-003`
- Name: `Three-Phase Distill Engine / Provenance Binding`
- Purpose: blind_abstract / cross_review / targeted_integrate, canonical artifact generation, provenance binding, prompt assets / config snapshot / phase traces, optional WT-NA non-bypass support lane
- Scope: three-phase engine governance, provenance binding, canonical bundle specimen, support-lane demotion, prompt/config asset governance
- Out-of-Scope: final packaging, release truth, consumer acceptance, required checks, release guard internals
- Inputs: lawful intake truth, canonical fence, support demotion rules, semantic shell vocabulary
- Outputs: document-scope distill_bundle specimen, provenance-bound claims, function specs, reader quadrants, SGF binding prerequisites
- Dependencies: schemas/distill_bundle.schema.json / samples/sample_distill_bundle.json / scripts/ca_distill_validate.py / support ledgers
- Upstream bindings: WP-001 / WP-002
- Downstream bindings: WP-004
- Artifact contract: distill_bundle schema+sample / distill_pack schema+sample / provenance-friendly registry notes
- Gate binding: GATE-DISTILL-ENGINE / GATE-PROVENANCE-BINDING / GATE-SUPPORT-LANE-NONBYPASS
- Acceptance checks: sample validates; provenance-bound claims exist; optional retrieval enhancements remain support-only
- Evidence pointers: package_validation.json / schemas/* / samples/*
- Rollback path: withdraw sample-level assertions and reopen if canonical or provenance drift
- Degrade / route-out path: owner schema parity -> Package B; runtime green claim -> Package D/E
- Failure modes: multiple truth routes, detached claim without provenance, support lane becomes bypass lane
- Tooling stance: thin validation, no reinvention of parser / retrieval / release machinery
- Security / safety / integrity notes: prompt assets are governance assets, not release proof

### WP Core
- three-phase distill engine 只允許單一路徑：`blind_abstract -> cross_review -> targeted_integrate`。  
- provenance binding 最低要求：每一筆 claim 至少綁 `source_ref + evidence_refs + provenance_ok`。  
- `reader_quadrants`、`function_specs`、`job-card-like summaries` 可以存在，但它們是 canonical bundle family 的 document-scope surfaces，不是 release-ready runtime proof。  
- WT-NA、multivector、rerank、graph、semantic shell 都只能是 non-bypass support lane；再花俏也不能跨越 lawful intake 與 owner proof。  

### route-out / RUNBOOK_WI summary
- exact engine runtime / provider parity：回 owner runtime lanes  
- release-ready engine evidence：回 Package D / E  
- upstream parser/retrieval correctness：回 CA-WRC / CA-CORPUS owner  

### Capsule Blueprint / reader-facing capsule
- Context: provenance 不是裝飾品；沒有 provenance，claim 只是穿西裝的孤兒。  
- Container: three-phase engine governance + schema specimen + support demotion。  
- Interface: in=`lawful intake` / out=`canonical bundle family specimen`。  
- Guardrail: no-wheel / non-bypass / provenance-complete / fail-closed.  

### TT / blocker / evidence hooks
- TT-DISTILL-001 / 006 / 007  
- TT-OBS-005 Promotion path smoke  
- CR-PKG-B-001 / CR-BP-001  

```text
WP_FENCE_END: WP-003

<a id="fence-wp-003-end"></a>
---

---
<a id="fence-wp-004-begin"></a>
## FENCE:WP-004

## WP-004
```text
WP_FENCE_BEGIN: WP-004
```

### Front-Matter
- WP_ID: `WP-004`
- Name: `Semantic Faithfulness / Evidence Triplet / Packaging / PASS-only Handoff / Rollback`
- Purpose: SGF / traceability / golden-set posture / verdict synthesis, Evidence Triplet, package record / package truthfulness, PASS-only downstream handoff to CA-DSL, rollback / reopen / release stoplines
- Scope: SGF and evidence-triplet producer-side binding, packaging truthfulness, handoff sample, rollback and reopen policy, release stoplines
- Out-of-Scope: Package E validator logic, Package D required checks internals, Package B exact evidence schema authorship, consumer-side acceptance proof
- Inputs: canonical distill bundle specimen, blocker register, release-readiness matrix, current exact MC4+ release posture
- Outputs: dsl_handoff_payload specimen, package truth record, release stoplines, rollback/reopen policy
- Dependencies: schemas/dsl_handoff_payload.schema.json / samples/sample_dsl_handoff_payload.json / cr_open_register.tsv / test_tracking_list.tsv / release_readiness_support_matrix.tsv
- Upstream bindings: WP-003
- Downstream bindings: CA-DSL boundary / Package D / Package E / Ops rollback lane
- Artifact contract: handoff schema+sample / blocker ledgers / release readiness matrix / package validation result
- Gate binding: GATE-DISTILL-SGF / GATE-DISTILL-HANDOFF-DSL / GATE-PACKAGE-TRUTH / GATE-RELEASE-STOPLINE
- Acceptance checks: handoff sample validates; blocker table preserved; document/package truth never overrides runtime/release truth
- Evidence pointers: package_validation.json / release_readiness_support_matrix.tsv / cr_open_register.tsv / test_tracking_list.tsv
- Rollback path: withdraw handoff_allowed and reopen CR/TT on canonical hash drift, schema drift, SGF drift, or owner-proof failure
- Degrade / route-out path: any HOW or release guard internals route out to Package D/E or Ops
- Failure modes: handoff without PASS; package pass marketed as release pass; blocker silently washed out
- Tooling stance: truthful packaging before flashy promotion
- Security / safety / integrity notes: downstream payload must reference canonical bundle hash only

### WP Core
- SGF 是 producer-side 最終 binding surface；沒有 `PASS` 就不得 handoff。  
- `dsl_handoff_payload.json` 是唯一 PASS-only handoff payload；它必須綁 `distill_bundle.json` 與其 canonical hash。  
- Package E validator 與 DSL consumer schema 仍是 route-out owner surfaces，本書不能偷吞。  
- rollback/reopen：任何 canonical drift、schema drift、SGF drift、consumer rejection、owner proof mismatch，立即撤回 `handoff_allowed` 並保持 `BLOCK_RELEASE`。  
- package truthfulness：本回合 materialized 的只有 document package；runtime outputs 與 release truth 沒有被假裝為已存在。  

### route-out / RUNBOOK_WI summary
- Package E validator / release_guard / shipped package reality：回 Package E  
- Package D required checks / factory validators：回 Package D  
- CA-DSL consumer acceptance / downstream exact schema：回 CA-DSL  
- Ops rollback drill：回 Ops  

### Capsule Blueprint / reader-facing capsule
- Context: 這裡最接近 release surface，但仍然不是 release guard 本人。  
- Interface: in=`canonical bundle family + blocker register` / out=`truthful package verdict + blocked handoff specimen`。  
- Risk: handoff without PASS, consumer proof overclaim, release-green washing。  
- Guardrail: PASS-only + blocker-preserving + rollback-first。  

### TT / blocker / evidence hooks
- TT-DISTILL-002 / 003 / 004 / 005  
- CR-PKG-D-001 / CR-PKG-E-001 / CR-DSL-001 / CR-OPS-001  

```text
WP_FENCE_END: WP-004

<a id="fence-wp-004-end"></a>
---

---
<a id="fence-rb-master-begin"></a>

# FENCE:RB-MASTER-BEGIN

## RB-MASTER

### A. 文件身份
| field | value |
|---|---|
| external_name | Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_RB-MASTER |
| internal_short_name | CADISTILL-RB-MASTER |
| stable_id | CA-DISTILL |
| wp_id | WP-MASTER |
| run_mode | governance-first / fail-closed / evidence-first |
| acceptance_mode | family-level review + cross-fence closure |
| version | v2026.03.30-r6 |
| status_vocabulary | DRAFT / READY_FOR_REVIEW / PASS_PATCHED_WITH_GUARDS / READY_FOR_ACCEPTANCE_BASELINE / FAIL_CLOSED / BLOCK_RELEASE / TEMP_CLOSED / ROUTE_OUT_ONLY |
| upstream_requirement_references | LOC-001,LOC-002,LOC-004,LOC-008,LOC-012,LOC-040, TT-DISTILL-001..TT-DISTILL-005 |

### B. 任務定位
- 本 RB 解決：固定整個 WP-RB-WI family 的 inventory、裁決法位、owner boundary、truth split、route-out 與 close discipline。
- 與 MC4+ / WP-M 的 obligation 對應：承接 owner blueprint + current MC4+ + current WP-M + book-system law，並把 RB/WI family 壓成可審、可導讀、可回歸的單一主書。
- 與相鄰 subsystem / Package B / D / E / Ops 的邊界：不重寫 parser/OCR/retrieval/Package B/Package D/Package E/Ops HOW；只做 bind、freeze、demote、route-out、truth split。

### C. Preflight
- inputs：authority stack; current owner blueprint; current MC4+ book; current WP-M book; audit findings F-001..F-009; adjacent owner body carriers
- required artifacts：inputs_manifest.tsv; source_hit_list.tsv; exact_locator_registry.tsv; review_fix_integration_matrix.tsv; audit_patch_closure_matrix.tsv
- required evidence：carrier resolution proof; adjacent owner direct binding; audit closure trace; missing exact file honesty
- prerequisites：authority frozen; alias normalized; missing exact files declared; direct core + adjacent owner carriers loaded
- stopline conditions：any attempt to flip route-out into local owner; any release-ready claim without Package D/E direct proof; any fake FOUND on missing exact file
- fail-closed triggers：no-source-no-norm breach; no-anchor-no-claim breach; document truth spoken as release truth

### D. Runbook
| field | value |
|---|---|
| stage objective | Stabilize the family so later RB/WI units inherit one vocabulary, one boundary model, and one truthful verdict model. |
| stage owner | CA-DISTILL doc factory / acceptance surface |
| stage in | opening instruction + owner/pipeline/book-system sources + audit package |
| stage out | fence inventory, closure ledger, route-out registry, package truth split, self-audit baseline |
| rollback / retry / reopen discipline | rollback unit = family inventory revision + impacted sidecars + verdict tables + fence registry |
| evidence pointers | review_fix_integration_matrix.tsv; audit_patch_closure_matrix.tsv; route_out_registry.json; delivery_reality_table.tsv |
| observability / logs / manifests / gate outputs | watch closure count, blocker count, missing exact-file count, and similarity-guard count |

#### step-by-step execution flow
1. Freeze authority stack and carrier resolution before any local rewriting.
2. Bind direct core sources and adjacent current owner body carriers into manifest, hit ledger, and locators.
3. Decompose audit findings into patch-closure rows instead of free-form prose.
4. Define family inventory: RB/WI-MASTER plus RB/WI-001..004, with no silent shrinkage.
5. Publish route-out boundaries and layered verdicts before detailed runbooks to stop false optimism early.
6. Materialize thicker sidecars so later review does not depend on memory or manual diffing.

#### exception branches
- If adjacent owner carrier is missing, mark MISSING_REQUIRED_SOURCE and refuse interface closure overclaim.
- If blueprint-generated sidecar cannot be materialized, downgrade closure to partial and log TT.

### E. Work Instructions
#### operator-facing concrete actions
- Verify that every later RB/WI references only legal upstream obligations.
- Cross-check fence names, wp_id values, and stable_id against the main package manifest.
- Refuse any row that merges Package B, D, and E into one fake closure bucket.

#### shell-neutral command / checklist / review sequence
1. Discover：找出本單元合法 inputs、artifacts、locators、與既有 blockers。
2. Verify：對照 owner law / interface matrix / gate rule 核對每一條前提。
3. Write：只寫本 owner 合法擁有的 registry / ledger / contract rows。
4. Cross-check：把 filename / hash / locator / closure 狀態互相對撞，不讓宣告單飛。
5. Close：更新 closure / TT / download inventory；若命中 stopline，顯式 fail-closed。
- checklist：authority fixed; adjacent carriers bound; audit findings decomposed; family inventory fixed; truth split published; route-out registry present
- review sequence：manifest → locators → interface matrix → coverage ledger → fences → package truth

#### do / don’t
**Do**
- promote source-backed obligations only
- keep foreign-owner claims demoted
- bind TT/reopen rules to every unresolved proof gap

**Don’t**
- invent exact parity for missing files
- collapse route-out into owner absorption
- treat package existence as release pass

#### acceptance observations
- family inventory count == 10 fences
- audit finding closure rows present
- adjacent owner sources appear in manifest/hit/locator surfaces

#### escalation path
- If any family rule collides with book-system law or owner blueprint, escalate to top authority rather than patch locally.

#### handoff mechanics
- RB-MASTER closes only when every downstream RB/WI unit is listed, sidecars are declared, and verdict layering is fixed.

### F. Gate / Validation / Acceptance
| field | value |
|---|---|
| gate name | GATE-DISTILL-RBWI-FAMILY |
| pass criteria | family inventory fixed, source/hit/locator surfaces honest, audit findings mapped to patch closure, foreign-owner stoplines preserved |
| fail criteria | inventory shrinkage, fake closure, adjacency overclaim, missing audit trace, or release overclaim |
| evidence required | carrier resolution proof; adjacent owner direct binding; audit closure trace; missing exact file honesty |
| exact owner of each check | CA-DISTILL document acceptance surface |
| which checks are route-out only | Package B/D/E proof and Ops HOW remain route-out only |
| which findings become TT / TEMP_CLOSED / BLOCK_RELEASE | See closure_register.tsv + test_tracking_register.tsv |

### G. Security / Integrity / Truthfulness
- no-source-no-norm
- no-anchor-no-claim
- no-validator-no-release-claim
- support-only demotion mandatory

### H. Handoff / Deliverables
| field | value |
|---|---|
| output artifacts | main MD family section; review_fix_integration_matrix.tsv; audit_patch_closure_matrix.tsv; fence_registry.tsv; rbwi_similarity_guard.tsv |
| consumer | reviewer / owner / docops |
| handoff contract | RB-MASTER closes only when every downstream RB/WI unit is listed, sidecars are declared, and verdict layering is fixed. |
| package truth | present / contract-bound for this document package |
| document truth | present |
| runtime truth | contract-only unless direct runtime proof exists |
| release truth | blocked until foreign-owner proof closes |

### I. Traceability
| field | value |
|---|---|
| exact locators | LOC-001,LOC-002,LOC-004,LOC-008,LOC-012,LOC-040; TT-DISTILL-001..TT-DISTILL-005; route_out_registry.json; delivery_reality_table.tsv |
| source coverage notes | See source_hit_list.tsv + coverage_matrix.tsv + requirement_closure_ledger.tsv |
| reopened conditions | See closure_register.tsv reopen_trigger column |
| TT id / CR id | See TT-DISTILL-001..TT-DISTILL-005 / CR-001..CR-006 |
| related sidecars | inputs_manifest.tsv; source_hit_list.tsv; test_tracking_register.tsv; closure_register.tsv |

# FENCE:RB-MASTER-END

<a id="fence-rb-master-end"></a>
---

---
<a id="fence-wi-master-begin"></a>

# FENCE:WI-MASTER-BEGIN

## WI-MASTER

### A. 文件身份
| field | value |
|---|---|
| external_name | Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WI-MASTER |
| internal_short_name | CADISTILL-WI-MASTER |
| stable_id | CA-DISTILL |
| wp_id | WP-MASTER |
| run_mode | operator-facing / shell-neutral / evidence-first |
| acceptance_mode | checklist + cross-unit closure |
| version | v2026.03.30-r6 |
| status_vocabulary | DRAFT / READY_FOR_REVIEW / PASS_PATCHED_WITH_GUARDS / READY_FOR_ACCEPTANCE_BASELINE / FAIL_CLOSED / BLOCK_RELEASE / TEMP_CLOSED / ROUTE_OUT_ONLY |
| upstream_requirement_references | LOC-040,LOC-041, RO-005 |

### B. 任務定位
- 本 WI 解決：把整個 family 的共同動作序固定成可執行但不偷走 Ops HOW 的 shell-neutral pattern。
- 與 MC4+ / WP-M 的 obligation 對應：承接 Ops WI schema 與 owner law，給每份 WI 一套共通的 Discover → Verify → Write → Cross-check → Close 節奏。
- 與相鄰 subsystem / Package B / D / E / Ops 的邊界：不指定 bash/powershell/python 為唯一合法 shell；但必須給足 input/output/verify/rollback pattern，不能只說『自己想辦法』。

### C. Preflight
- inputs：RB-MASTER; Ops WI schema; inputs manifest; exact locators; route-out registry
- required artifacts：artifact_registry.json; closure_register.tsv; package_tree.txt; download_inventory.tsv
- required evidence：actual file paths; locator-backed source readback; closure or TT row for every blocker
- prerequisites：RB-MASTER pass; sidecar names fixed; verdict vocabulary fixed
- stopline conditions：cannot identify legal input path; cannot identify output artifact family; cannot write verify or rollback note
- fail-closed triggers：shell-neutral is abused as shell-vague; support-only tool promoted as mandatory; validator/release claims emitted without direct proof

### D. Runbook
| field | value |
|---|---|
| stage objective | Standardize how operators approach every WP without creating a second constitution or hiding actions behind abstraction fog. |
| stage owner | CA-DISTILL operator surface |
| stage in | RB-MASTER + per-WP RB + legal artifacts |
| stage out | per-WP action records, verification notes, rollback triggers, updated ledgers |
| rollback / retry / reopen discipline | rollback unit = affected artifact path + prior checksum + closure row + re-open trigger |
| evidence pointers | LOC-040,LOC-041; artifact_registry.json; closure_register.tsv; download_inventory.tsv |
| observability / logs / manifests / gate outputs | for each WI, record inputs discovered, verifications executed, artifacts written, blockers found, and rollback trigger if any |

#### step-by-step execution flow
1. Discover legal inputs and exact locator IDs before touching artifacts.
2. Verify owner boundary and stopline for the current WP.
3. Write or update only the artifacts legally owned by this WP.
4. Cross-check filenames, hashes, locators, and closure rows.
5. Close the session by updating ledger/TT state and download inventory.

#### exception branches
- When a path or field belongs to a foreign owner, record route-out target instead of improvising.
- When evidence is partial, mark TEMP_CLOSED/TT rather than smoothing over with prose.

### E. Work Instructions
#### operator-facing concrete actions
- Use five-segment command pattern in every WI: discover, verify, write, cross-check, close.
- Store command pattern as shell-neutral verbs plus concrete input/output fields.
- Tie every route-out to an owner and a reason, not a vague 'elsewhere'.

#### shell-neutral command / checklist / review sequence
1. Discover：找出本單元合法 inputs、artifacts、locators、與既有 blockers。
2. Verify：對照 owner law / interface matrix / gate rule 核對每一條前提。
3. Write：只寫本 owner 合法擁有的 registry / ledger / contract rows。
4. Cross-check：把 filename / hash / locator / closure 狀態互相對撞，不讓宣告單飛。
5. Close：更新 closure / TT / download inventory；若命中 stopline，顯式 fail-closed。
- checklist：discover complete; verify legal owner; write only local artifacts; cross-check evidence; close ledger/TT/download inventory
- review sequence：discover → verify → write → cross-check → close

#### do / don’t
**Do**
- record actual paths and fields
- record exact owner for every check
- record rollback trigger immediately when blocker appears

**Don’t**
- hide command surface behind high-level slogans
- merge multiple owners into one action
- silently skip download inventory or checksum impact

#### acceptance observations
- every WI contains the five-segment pattern
- every WI names input/output artifacts and verify step
- every WI ends with closure or TT discipline

#### escalation path
- If a WI requires shell-specific or incident-specific handling, escalate to Ops RUNBOOK and keep only the binding note here.

#### handoff mechanics
- WI-MASTER is complete when all child WIs inherit the same five-segment pattern with stage-specific content and without shell-specific lock-in.

### F. Gate / Validation / Acceptance
| field | value |
|---|---|
| gate name | GATE-DISTILL-WI-FAMILY |
| pass criteria | five-segment pattern present, per-WI verify/rollback notes present, route-out explicit, shell-neutral but not action-empty |
| fail criteria | action abstraction fog, missing verify step, missing rollback trigger, or fake direct proof |
| evidence required | actual file paths; locator-backed source readback; closure or TT row for every blocker |
| exact owner of each check | CA-DISTILL operator acceptance surface |
| which checks are route-out only | true HOW, incident playbooks, environment init, and release operations remain Ops-owned |
| which findings become TT / TEMP_CLOSED / BLOCK_RELEASE | See closure_register.tsv + test_tracking_register.tsv |

### G. Security / Integrity / Truthfulness
- default deny on foreign-owner surfaces
- no secret material in examples
- no false finality

### H. Handoff / Deliverables
| field | value |
|---|---|
| output artifacts | WI family discipline; rbwi_similarity_guard.tsv; download_inventory.tsv; closure/test tracking updates |
| consumer | operator / reviewer |
| handoff contract | WI-MASTER is complete when all child WIs inherit the same five-segment pattern with stage-specific content and without shell-specific lock-in. |
| package truth | present / contract-bound for this document package |
| document truth | present |
| runtime truth | contract-only unless direct runtime proof exists |
| release truth | blocked until foreign-owner proof closes |

### I. Traceability
| field | value |
|---|---|
| exact locators | LOC-040,LOC-041; RO-005; TT-DISTILL-003..TT-DISTILL-005; rbwi_similarity_guard.tsv |
| source coverage notes | See source_hit_list.tsv + coverage_matrix.tsv + requirement_closure_ledger.tsv |
| reopened conditions | See closure_register.tsv reopen_trigger column |
| TT id / CR id | See TT-DISTILL-001..TT-DISTILL-005 / CR-001..CR-006 |
| related sidecars | artifact_registry.json; test_tracking_register.tsv; closure_register.tsv |

# FENCE:WI-MASTER-END

<a id="fence-wi-master-end"></a>
---

---
<a id="fence-rb-001-begin"></a>

# FENCE:RB-001-BEGIN

## RB-001

### A. 文件身份
| field | value |
|---|---|
| external_name | Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_RB-001 |
| internal_short_name | CADISTILL-RB-001 |
| stable_id | CA-DISTILL |
| wp_id | WP-001 |
| run_mode | foundation / lexical-policy / fail-closed |
| acceptance_mode | contract review + registry consistency |
| version | v2026.03.30-r6 |
| status_vocabulary | DRAFT / READY_FOR_REVIEW / PASS_PATCHED_WITH_GUARDS / READY_FOR_ACCEPTANCE_BASELINE / FAIL_CLOSED / BLOCK_RELEASE / TEMP_CLOSED / ROUTE_OUT_ONLY |
| upstream_requirement_references | LOC-004,LOC-009,LOC-020,LOC-021, RO-001..RO-005 |

### B. 任務定位
- 本 RB 解決：固定 backbone、路徑政策、artifact family 法位、canonical/alias fence、provider/tooling posture。
- 與 MC4+ / WP-M 的 obligation 對應：把 WP-M 的 Backbone Contract / Canonical Fence / Environment Truth 轉成可審計的 foundation rulebook。
- 與相鄰 subsystem / Package B / D / E / Ops 的邊界：不定義 parser HOW、不生成 runtime distill output、不發 validator/release 判決。

### C. Preflight
- inputs：WP-MASTER; WP-M WP-001 clauses; owner blueprint invariants; pipeline canonical registry; artifact family registry
- required artifacts：artifact_registry.json; toolchain_adjudication_matrix.tsv; book_system_legal_registry.tsv; artifact_family_legal_registry.tsv
- required evidence：canonical artifact wording; path policy rows; tooling demotion proof; route-out references
- prerequisites：family law fixed; stable_id fixed; mainline fixed
- stopline conditions：canonical artifact ambiguous; alias treated as sole handoff; vector/cache/index implied as SSOT; provider elevated to constitution
- fail-closed triggers：canonical/alias drift; path policy contradicts owner law; tooling promotion without justification

### D. Runbook
| field | value |
|---|---|
| stage objective | Lay the floor: if names, paths, and legal positions drift here, every later stage will merely fail in more expensive ways. |
| stage owner | CA-DISTILL foundation owner surface |
| stage in | family law + owner blueprint invariants + artifact family registry |
| stage out | foundation contract tables, path rules, tooling demotion matrix, canonical fence |
| rollback / retry / reopen discipline | rollback unit = artifact family registry row set + wording contract rows + affected manifest references |
| evidence pointers | LOC-004,LOC-009,LOC-020,LOC-021; artifact_family_legal_registry.tsv; wording_contract_artifact_check.tsv |
| observability / logs / manifests / gate outputs | watch canonical wording coverage, alias-only coverage, and tooling promotion count |

#### step-by-step execution flow
1. Fix canonical runtime artifact and non-canonical companion wording across all package surfaces.
2. Define legal roots for evidence, handoff, and package-truth artifacts without pretending runtime generation already happened.
3. Separate primary native tools from fallback/support-only tools.
4. Bind provider and environment statements as posture only, not as doctrinal truth.
5. Write artifact family legal registry and cross-check wording consistency.

#### exception branches
- If an alias has already appeared in historical docs, keep compatibility note but never change canonical status.
- If support tooling offers convenience, keep it optional and document why it does not become prerequisite.

### E. Work Instructions
#### operator-facing concrete actions
- Normalize every reference to distill_pack/distill_bundle before touching any downstream contract.
- Ensure package truth tables talk about contract or document reality, never about absent runtime proof.
- Keep provider posture in a bounded table instead of narrative sprawl.

#### shell-neutral command / checklist / review sequence
1. Discover：找出本單元合法 inputs、artifacts、locators、與既有 blockers。
2. Verify：對照 owner law / interface matrix / gate rule 核對每一條前提。
3. Write：只寫本 owner 合法擁有的 registry / ledger / contract rows。
4. Cross-check：把 filename / hash / locator / closure 狀態互相對撞，不讓宣告單飛。
5. Close：更新 closure / TT / download inventory；若命中 stopline，顯式 fail-closed。
- checklist：canonical unique; alias demoted; path roots fixed; tooling matrix present; provider not elevated; wording check passes
- review sequence：invariants → path roots → tooling matrix → wording contract → artifact registry

#### do / don’t
**Do**
- state legal path roots
- keep contract-vs-runtime distinction
- use existing repo/package primitives

**Don’t**
- write cache/vector as truth source
- pretend fallback parser is mandatory
- invent runtime artifact existence

#### acceptance observations
- artifact_registry and wording_contract agree on canonical status
- toolchain matrix marks support tools as optional
- no release-ready language leaks into foundation text

#### escalation path
- Schema disputes escalate to Package B; shell/provider execution issues escalate to Ops/runtime owner.

#### handoff mechanics
- RB-001 hands off a stabilized naming/path/tooling floor to WP-002..004.

### F. Gate / Validation / Acceptance
| field | value |
|---|---|
| gate name | GATE-DISTILL-FOUNDATION |
| pass criteria | canonical/alias fence fixed, path roots legal, tooling demoted correctly, wording contract clean |
| fail criteria | alias promoted, path truth overclaimed, provider doctrinalized, or support tool mandatoryized |
| evidence required | canonical artifact wording; path policy rows; tooling demotion proof; route-out references |
| exact owner of each check | CA-DISTILL foundation acceptance surface |
| which checks are route-out only | parser HOW, schema exactness, validator proofs |
| which findings become TT / TEMP_CLOSED / BLOCK_RELEASE | See closure_register.tsv + test_tracking_register.tsv |

### G. Security / Integrity / Truthfulness
- no secrets in path policy
- no ghost runtime claims
- support-only demotion mandatory

### H. Handoff / Deliverables
| field | value |
|---|---|
| output artifacts | artifact_family_legal_registry.tsv; toolchain_adjudication_matrix.tsv; wording_contract_artifact_check.tsv; RB/WI-001 sections |
| consumer | WP-002/003/004 and reviewers |
| handoff contract | RB-001 hands off a stabilized naming/path/tooling floor to WP-002..004. |
| package truth | present / contract-bound for this document package |
| document truth | present |
| runtime truth | contract-only unless direct runtime proof exists |
| release truth | blocked until foreign-owner proof closes |

### I. Traceability
| field | value |
|---|---|
| exact locators | LOC-004,LOC-009,LOC-020,LOC-021; RO-001..RO-005; artifact_registry.json |
| source coverage notes | See source_hit_list.tsv + coverage_matrix.tsv + requirement_closure_ledger.tsv |
| reopened conditions | See closure_register.tsv reopen_trigger column |
| TT id / CR id | See TT-DISTILL-001..TT-DISTILL-005 / CR-001..CR-006 |
| related sidecars | toolchain_adjudication_matrix.tsv; artifact_registry.json; test_tracking_register.tsv; closure_register.tsv |

# FENCE:RB-001-END

<a id="fence-rb-001-end"></a>
---

---
<a id="fence-wi-001-begin"></a>

# FENCE:WI-001-BEGIN

## WI-001

### A. 文件身份
| field | value |
|---|---|
| external_name | Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WI-001 |
| internal_short_name | CADISTILL-WI-001 |
| stable_id | CA-DISTILL |
| wp_id | WP-001 |
| run_mode | operator-facing / foundation-floor |
| acceptance_mode | registry + wording + path verification |
| version | v2026.03.30-r6 |
| status_vocabulary | DRAFT / READY_FOR_REVIEW / PASS_PATCHED_WITH_GUARDS / READY_FOR_ACCEPTANCE_BASELINE / FAIL_CLOSED / BLOCK_RELEASE / TEMP_CLOSED / ROUTE_OUT_ONLY |
| upstream_requirement_references | LOC-020,LOC-021,LOC-040, REQ-014,REQ-015,REQ-025,REQ-031 |

### B. 任務定位
- 本 WI 解決：把 foundation rulebook 變成 operator 可執行的 path/wording/tooling 固定動作。
- 與 MC4+ / WP-M 的 obligation 對應：落實 canonical fence、artifact path roots、package truth wording、tooling demotion。
- 與相鄰 subsystem / Package B / D / E / Ops 的邊界：不跑 distill engine；不宣稱 runtime artifact 已產生；不下 schema/release 結論。

### C. Preflight
- inputs：RB-001; artifact_registry.json; toolchain_adjudication_matrix.tsv; existing package directory
- required artifacts：artifact_registry.json; artifact_family_legal_registry.tsv; wording_contract_artifact_check.tsv; package_tree.txt
- required evidence：canonical wording readback; actual package relative paths; tooling posture rows; checksum regeneration plan
- prerequisites：RB-001 accepted; package directory exists; stable version fixed
- stopline conditions：path root unknown; canonical alias unresolved; wording contract fails on a major artifact
- fail-closed triggers：runtime reality claimed from document-only evidence; checksum generated before package tree settles; support tooling promoted to mandatory

### D. Runbook
| field | value |
|---|---|
| stage objective | Make the package speak one language about what is canonical, where artifacts logically belong, and which tools are merely helpers. |
| stage owner | CA-DISTILL operator surface for foundation |
| stage in | package root + foundation law |
| stage out | clean artifact registry, wording checks, rebuilt package tree, ready foundation state for WP-002 |
| rollback / retry / reopen discipline | rollback unit = artifact registry rows + wording check rows + package_tree snapshot |
| evidence pointers | artifact_registry.json; artifact_family_legal_registry.tsv; wording_contract_artifact_check.tsv; package_tree.txt |
| observability / logs / manifests / gate outputs | track count of canonical mentions, alias-only mentions, contract-only paths, and promoted-tool incidents |

#### step-by-step execution flow
1. Discover current package paths and artifact filenames under the working package root.
2. Verify each major artifact family against RB-001: canonical, alias-only, pass-only payload, evidence support, package truth.
3. Write or update registry rows so every artifact has legal_position, owner, and truth note.
4. Cross-check wording in main MD, machine_summary, release blocker contract, and registry surfaces.
5. Close by rebuilding package tree and delaying checksums until later stages finish.

#### exception branches
- If historical wording says 'bundle' where canonical should be 'pack', preserve compatibility note but correct the current normative wording.
- If a path is absent because the artifact is contract-only, record CONTRACT_ONLY instead of fabricating a file.

### E. Work Instructions
#### operator-facing concrete actions
- Discover: list package root, expected artifact families, and current filenames.
- Verify: compare each artifact family against canonical/alias/support truth.
- Write: update registry and wording-check tables; mark contract-only outputs explicitly.
- Cross-check: ensure main MD and machine-readable blocks reuse identical canonical wording.
- Close: rebuild package_tree.txt; defer CHECKSUMS until every later WI completes.

#### shell-neutral command / checklist / review sequence
1. Discover：找出本單元合法 inputs、artifacts、locators、與既有 blockers。
2. Verify：對照 owner law / interface matrix / gate rule 核對每一條前提。
3. Write：只寫本 owner 合法擁有的 registry / ledger / contract rows。
4. Cross-check：把 filename / hash / locator / closure 狀態互相對撞，不讓宣告單飛。
5. Close：更新 closure / TT / download inventory；若命中 stopline，顯式 fail-closed。
- checklist：package root read; artifact families classified; contract-only rows explicit; wording checks clean; package tree rebuilt; checksum deferred
- review sequence：path discovery → family verify → registry write → wording cross-check → package tree rebuild

#### do / don’t
**Do**
- write relative paths
- mark contract-only honestly
- keep alias derivation one-way

**Don’t**
- precompute release claims
- rebuild checksums too early
- treat support parser docs as local owner proof

#### acceptance observations
- artifact_registry counts match main MD family claims
- wording_contract has no RED rows
- package_tree reflects actual files

#### escalation path
- If path policy conflicts with repo reality or CI layout, escalate to Ops/docops rather than rewriting owner law.

#### handoff mechanics
- WI-001 hands a clean foundation registry and wording floor to WI-002.

### F. Gate / Validation / Acceptance
| field | value |
|---|---|
| gate name | GATE-DISTILL-WI-FOUNDATION |
| pass criteria | registry complete, wording clean, package tree rebuilt, no premature checksum or runtime overclaim |
| fail criteria | canonical drift, alias promotion, missing registry rows, or overclaim of runtime existence |
| evidence required | canonical wording readback; actual package relative paths; tooling posture rows; checksum regeneration plan |
| exact owner of each check | CA-DISTILL operator acceptance surface |
| which checks are route-out only | environment bootstrapping and shell-specific commands stay in Ops RUNBOOK |
| which findings become TT / TEMP_CLOSED / BLOCK_RELEASE | See closure_register.tsv + test_tracking_register.tsv |

### G. Security / Integrity / Truthfulness
- no secret paths
- no false runtime claim
- no support-only promotion

### H. Handoff / Deliverables
| field | value |
|---|---|
| output artifacts | artifact_registry.json; artifact_family_legal_registry.tsv; wording_contract_artifact_check.tsv; package_tree.txt |
| consumer | WI-002 and reviewers |
| handoff contract | WI-001 hands a clean foundation registry and wording floor to WI-002. |
| package truth | present / contract-bound for this document package |
| document truth | present |
| runtime truth | contract-only unless direct runtime proof exists |
| release truth | blocked until foreign-owner proof closes |

### I. Traceability
| field | value |
|---|---|
| exact locators | LOC-020,LOC-021,LOC-040; REQ-014,REQ-015,REQ-025,REQ-031; RO-005 |
| source coverage notes | See source_hit_list.tsv + coverage_matrix.tsv + requirement_closure_ledger.tsv |
| reopened conditions | See closure_register.tsv reopen_trigger column |
| TT id / CR id | See TT-DISTILL-001..TT-DISTILL-005 / CR-001..CR-006 |
| related sidecars | artifact_registry.json; test_tracking_register.tsv; closure_register.tsv; artifact_family_legal_registry.tsv |

# FENCE:WI-001-END

<a id="fence-wi-001-end"></a>
---

---
<a id="fence-rb-002-begin"></a>

# FENCE:RB-002-BEGIN

## RB-002

### A. 文件身份
| field | value |
|---|---|
| external_name | Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_RB-002 |
| internal_short_name | CADISTILL-RB-002 |
| stable_id | CA-DISTILL |
| wp_id | WP-002 |
| run_mode | preflight / input-law / fail-closed |
| acceptance_mode | input contract review + stopline check |
| version | v2026.03.30-r6 |
| status_vocabulary | DRAFT / READY_FOR_REVIEW / PASS_PATCHED_WITH_GUARDS / READY_FOR_ACCEPTANCE_BASELINE / FAIL_CLOSED / BLOCK_RELEASE / TEMP_CLOSED / ROUTE_OUT_ONLY |
| upstream_requirement_references | LOC-022,LOC-023,LOC-034,LOC-035,LOC-036, IF-002 |

### B. 任務定位
- 本 RB 解決：把 CA-CORPUS→CA-DISTILL 的 lawful handoff 壓成不可腦補的 preflight contract。
- 與 MC4+ / WP-M 的 obligation 對應：承接 WP-M 的 mandatory/optional split、authority map、output contract，並直接綁定 CA-CORPUS current owner body carrier。
- 與相鄰 subsystem / Package B / D / E / Ops 的邊界：不補 upstream 缺欄位、不做 parser/OCR/retrieval owner 決定、不偷寫 downstream schema。

### C. Preflight
- inputs：RB-001/WI-001 outputs; CA-CORPUS current owner body carrier; current WP-M WP-002 clauses; interface matrix
- required artifacts：inputs_manifest.tsv; source_hit_list.tsv; interface_closure_matrix.tsv; requirement_closure_ledger.tsv
- required evidence：mandatory field list; source locator recoverability; chunk identity stability; upstream identity readback
- prerequisites：foundation floor clean; CORPUS direct binding present; mandatory/optional law loaded
- stopline conditions：corpus snapshot absent; chunk/source locator unrecoverable; upstream identity ambiguous; support file trying to impersonate owner handoff
- fail-closed triggers：fabricated missing fields; optional support promoted to mandatory truth; handoff accepted before authority map closes

### D. Runbook
| field | value |
|---|---|
| stage objective | Decide whether CA-DISTILL may legally start — not whether it wishes to start. |
| stage owner | CA-DISTILL preflight owner surface |
| stage in | foundation registry + CORPUS handoff law + source hit ledger |
| stage out | preflight rules, mandatory/optional matrix, missing-field discipline, interface closure rows |
| rollback / retry / reopen discipline | rollback unit = IF-002 row + mandatory/optional rows + closure rows for REQ-008..010/REQ-020 |
| evidence pointers | LOC-022,LOC-023,LOC-034,LOC-035,LOC-036; interface_closure_matrix.tsv; source_hit_list.tsv |
| observability / logs / manifests / gate outputs | watch counts of mandatory-present, mandatory-missing, optional-present, optional-missing, and route-out fields |

#### step-by-step execution flow
1. Read direct CORPUS owner boundary, mandatory artifact set, and handoff rules from adjacent current owner body carrier.
2. Separate mandatory, optional, and foreign-owner fields without collapsing them into one convenience bucket.
3. Define missing-field behavior: halt, flag, or route-out.
4. Bind IF-002 directly to CORPUS source rows and locator IDs.
5. Update requirement closure rows per decomposed subrequirement, not per vague topic.

#### exception branches
- If a supporting manifest is present without owner-canonical snapshot, it remains support-only and cannot open the gate.
- If lineages are partial, record degraded evidence but do not convert it into green preflight.

### E. Work Instructions
#### operator-facing concrete actions
- Force every input field into exactly one class: mandatory, optional, or foreign-owner.
- Keep upstream identity and source locator recoverability visible in tables, not hidden in narrative.
- Tie preflight truth to direct CORPUS readback rather than to DISTILL self-description alone.

#### shell-neutral command / checklist / review sequence
1. Discover：找出本單元合法 inputs、artifacts、locators、與既有 blockers。
2. Verify：對照 owner law / interface matrix / gate rule 核對每一條前提。
3. Write：只寫本 owner 合法擁有的 registry / ledger / contract rows。
4. Cross-check：把 filename / hash / locator / closure 狀態互相對撞，不讓宣告單飛。
5. Close：更新 closure / TT / download inventory；若命中 stopline，顯式 fail-closed。
- checklist：CORPUS direct binding present; mandatory fields explicit; missing behavior explicit; IF-002 row locator-backed; closure rows decomposed
- review sequence：CORPUS readback → class split → stopline matrix → interface closure → requirement ledger

#### do / don’t
**Do**
- treat missing as missing
- route-out foreign-owner fields
- separate degraded from pass

**Don’t**
- guess chunk ids
- upgrade support manifests to owner truth
- merge all gaps into one closure row

#### acceptance observations
- mandatory-vs-optional table cites direct locators
- IF-002 carries source_owner_doc and locator_ids
- closure ledger splits WRC/CORPUS/DSL and Package B/D/E separately

#### escalation path
- Upstream handoff incompleteness escalates to CA-CORPUS/WRC, not to local patching.

#### handoff mechanics
- RB-002 passes a lawful input gate to WP-003; on fail, it emits halt/TT, not optimistic prose.

### F. Gate / Validation / Acceptance
| field | value |
|---|---|
| gate name | GATE-DISTILL-PREFLIGHT |
| pass criteria | mandatory inputs defined and recoverable, missing behavior explicit, IF-002 direct-bound, no fabricated fields |
| fail criteria | ambiguous mandatory set, guessed lineage, support manifest impersonation, or undeclared degraded state |
| evidence required | mandatory field list; source locator recoverability; chunk identity stability; upstream identity readback |
| exact owner of each check | CA-DISTILL preflight acceptance surface |
| which checks are route-out only | upstream intake/parsing issues and foreign schema issues remain external |
| which findings become TT / TEMP_CLOSED / BLOCK_RELEASE | See closure_register.tsv + test_tracking_register.tsv |

### G. Security / Integrity / Truthfulness
- never synthesize absent owner fields
- never lose source locator lineage
- keep support-only demoted

### H. Handoff / Deliverables
| field | value |
|---|---|
| output artifacts | interface_closure_matrix.tsv; source_hit_list.tsv; requirement_closure_ledger.tsv; RB/WI-002 sections |
| consumer | WP-003 and reviewers |
| handoff contract | RB-002 passes a lawful input gate to WP-003; on fail, it emits halt/TT, not optimistic prose. |
| package truth | present / contract-bound for this document package |
| document truth | present |
| runtime truth | contract-only unless direct runtime proof exists |
| release truth | blocked until foreign-owner proof closes |

### I. Traceability
| field | value |
|---|---|
| exact locators | LOC-022,LOC-023,LOC-034,LOC-035,LOC-036; IF-002; TT-DISTILL-003..TT-DISTILL-005 |
| source coverage notes | See source_hit_list.tsv + coverage_matrix.tsv + requirement_closure_ledger.tsv |
| reopened conditions | See closure_register.tsv reopen_trigger column |
| TT id / CR id | See TT-DISTILL-001..TT-DISTILL-005 / CR-001..CR-006 |
| related sidecars | inputs_manifest.tsv; source_hit_list.tsv; test_tracking_register.tsv; closure_register.tsv |

# FENCE:RB-002-END

<a id="fence-rb-002-end"></a>
---

---
<a id="fence-wi-002-begin"></a>

# FENCE:WI-002-BEGIN

## WI-002

### A. 文件身份
| field | value |
|---|---|
| external_name | Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WI-002 |
| internal_short_name | CADISTILL-WI-002 |
| stable_id | CA-DISTILL |
| wp_id | WP-002 |
| run_mode | operator-facing / preflight-gate |
| acceptance_mode | mandatory-field sheet + halt discipline |
| version | v2026.03.30-r6 |
| status_vocabulary | DRAFT / READY_FOR_REVIEW / PASS_PATCHED_WITH_GUARDS / READY_FOR_ACCEPTANCE_BASELINE / FAIL_CLOSED / BLOCK_RELEASE / TEMP_CLOSED / ROUTE_OUT_ONLY |
| upstream_requirement_references | LOC-034,LOC-035,LOC-036, IF-002 |

### B. 任務定位
- 本 WI 解決：把 lawful handoff 檢查拆成 operator 能逐欄驗證的 preflight 動作。
- 與 MC4+ / WP-M 的 obligation 對應：實際檢查 corpus snapshot / lineage / locator / upstream identity，並把缺欄位分類為 halt、flag、route-out。
- 與相鄰 subsystem / Package B / D / E / Ops 的邊界：不修 upstream 資料；不猜測 chunk/source ids；不把 support-only file 當 owner handoff。

### C. Preflight
- inputs：RB-002; CA-CORPUS handoff rows; inputs_manifest.tsv; source_hit_list.tsv
- required artifacts：interface_closure_matrix.tsv; coverage_matrix.tsv; requirement_closure_ledger.tsv; closure_register.tsv
- required evidence：mandatory field sheet; missing-field log; route-out row if foreign-owner field encountered
- prerequisites：RB-002 accepted; CORPUS carrier locators present
- stopline conditions：cannot confirm source locator family; cannot confirm chunk identity stability; cannot classify field owner
- fail-closed triggers：operator starts engine despite mandatory gap; operator fills absent field with inference; operator marks support-only manifest as mandatory

### D. Runbook
| field | value |
|---|---|
| stage objective | Turn preflight from polite prose into a blunt gate: either the handoff is lawful enough to start, or it is not. |
| stage owner | CA-DISTILL operator surface for preflight |
| stage in | current handoff description and locator-backed source law |
| stage out | preflight sheet, closure rows, route-out rows, or halt/TT |
| rollback / retry / reopen discipline | rollback unit = preflight field sheet status changes + IF-002 row + related closure rows |
| evidence pointers | interface_closure_matrix.tsv; requirement_closure_ledger.tsv; closure_register.tsv; test_tracking_register.tsv |
| observability / logs / manifests / gate outputs | track mandatory present ratio, halt triggers, route-out count, and degraded-but-nonfabricated notes |

#### step-by-step execution flow
1. Discover the handoff surfaces named in IF-002 and verify that each can be recovered from source or carrier.
2. Verify four mandatory clusters: corpus snapshot, chunk identity, source locator family, upstream identity.
3. Write a field sheet with status = PRESENT / MISSING / FOREIGN_OWNER / SUPPORT_ONLY for every checked field.
4. Cross-check the field sheet against interface_closure_matrix and requirement_closure_ledger.
5. Close with either PRELIGHT_PASS, FAIL_CLOSED, or TEMP_CLOSED+TT; never with ambiguous optimism.

#### exception branches
- If only supporting anchor maps exist but no owner-canonical snapshot exists, classify SUPPORT_ONLY and halt.
- If a field exists but comes from foreign owner schema or validator docs, classify FOREIGN_OWNER and route out.

### E. Work Instructions
#### operator-facing concrete actions
- Discover: enumerate expected inputs from IF-002 and CORPUS handoff rules.
- Verify: check each mandatory cluster and tag evidence source/locator.
- Write: update preflight status, closure rows, and any TT/route-out rows.
- Cross-check: ensure closure ledger status matches field sheet status.
- Close: halt or pass explicitly; no silent 'looks okay'.

#### shell-neutral command / checklist / review sequence
1. Discover：找出本單元合法 inputs、artifacts、locators、與既有 blockers。
2. Verify：對照 owner law / interface matrix / gate rule 核對每一條前提。
3. Write：只寫本 owner 合法擁有的 registry / ledger / contract rows。
4. Cross-check：把 filename / hash / locator / closure 狀態互相對撞，不讓宣告單飛。
5. Close：更新 closure / TT / download inventory；若命中 stopline，顯式 fail-closed。
- checklist：mandatory clusters checked; field sheet written; IF-002 updated; closure rows synced; halt/pass explicit
- review sequence：expected inputs → field sheet → owner classification → interface row sync → verdict

#### do / don’t
**Do**
- tag every field with owner and status
- use direct CORPUS locators
- raise TT immediately on unresolved mandatory gap

**Don’t**
- guess from semantics
- bury missing data in narrative
- advance to WP-003 on degraded mandatory state

#### acceptance observations
- each mandatory cluster has evidence or explicit missing tag
- no field has undefined owner class
- preflight verdict is explicit

#### escalation path
- Missing or unstable upstream handoff escalates to CA-CORPUS/WRC; schema ambiguity escalates to Package B.

#### handoff mechanics
- WI-002 hands off only PRELIGHT_PASS or emits halt/TT; there is no 'probably good enough' lane.

### F. Gate / Validation / Acceptance
| field | value |
|---|---|
| gate name | GATE-DISTILL-WI-PREFLIGHT |
| pass criteria | all mandatory clusters present and recoverable, classifications complete, no fabricated field, verdict explicit |
| fail criteria | any undefined mandatory cluster, fabricated field, hidden degraded state, or advance after halt condition |
| evidence required | mandatory field sheet; missing-field log; route-out row if foreign-owner field encountered |
| exact owner of each check | CA-DISTILL operator acceptance surface |
| which checks are route-out only | schema/validator details remain foreign-owner |
| which findings become TT / TEMP_CLOSED / BLOCK_RELEASE | See closure_register.tsv + test_tracking_register.tsv |

### G. Security / Integrity / Truthfulness
- no fabricated upstream field
- no support-only upgrade
- no hidden degraded handoff

### H. Handoff / Deliverables
| field | value |
|---|---|
| output artifacts | interface_closure_matrix.tsv; coverage_matrix.tsv; requirement_closure_ledger.tsv; closure/test tracking rows |
| consumer | WP-003 and reviewers |
| handoff contract | WI-002 hands off only PRELIGHT_PASS or emits halt/TT; there is no 'probably good enough' lane. |
| package truth | present / contract-bound for this document package |
| document truth | present |
| runtime truth | contract-only unless direct runtime proof exists |
| release truth | blocked until foreign-owner proof closes |

### I. Traceability
| field | value |
|---|---|
| exact locators | LOC-034,LOC-035,LOC-036; IF-002; REQ-008..REQ-010,REQ-021 |
| source coverage notes | See source_hit_list.tsv + coverage_matrix.tsv + requirement_closure_ledger.tsv |
| reopened conditions | See closure_register.tsv reopen_trigger column |
| TT id / CR id | See TT-DISTILL-001..TT-DISTILL-005 / CR-001..CR-006 |
| related sidecars | closure_register.tsv; test_tracking_register.tsv; interface_closure_matrix.tsv; coverage_matrix.tsv |

# FENCE:WI-002-END

<a id="fence-wi-002-end"></a>
---

---
<a id="fence-rb-003-begin"></a>

# FENCE:RB-003-BEGIN

## RB-003

### A. 文件身份
| field | value |
|---|---|
| external_name | Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_RB-003 |
| internal_short_name | CADISTILL-RB-003 |
| stable_id | CA-DISTILL |
| wp_id | WP-003 |
| run_mode | engine-contract / provenance-first |
| acceptance_mode | phase contract + provenance contract review |
| version | v2026.03.30-r6 |
| status_vocabulary | DRAFT / READY_FOR_REVIEW / PASS_PATCHED_WITH_GUARDS / READY_FOR_ACCEPTANCE_BASELINE / FAIL_CLOSED / BLOCK_RELEASE / TEMP_CLOSED / ROUTE_OUT_ONLY |
| upstream_requirement_references | LOC-024,LOC-025,LOC-009,LOC-010, REQ-022 |

### B. 任務定位
- 本 RB 解決：把三階段 distill 主線、canonical artifact 欄位、provenance 綁定、prompt governance、alias derivation 寫成工程契約。
- 與 MC4+ / WP-M 的 obligation 對應：承接 WP-M WP-003，讓 operator 在不偷渡第二條主線的前提下生成 contract-ready distill surface。
- 與相鄰 subsystem / Package B / D / E / Ops 的邊界：不替代 SGF/release guard；不把 prompt 記憶體當資產；不讓 alias 反客為主。

### C. Preflight
- inputs：RB-002/WI-002 pass; WP-M WP-003 clauses; pipeline handoff master; artifact registry
- required artifacts：artifact_registry.json; route_out_registry.json; coverage_matrix.tsv; phase_caps.tsv
- required evidence：phase order; canonical field minset; provenance pointer minset; prompt/config version trace
- prerequisites：preflight pass explicit; canonical naming fixed; route-out registry present
- stopline conditions：phase skipped; provenance pointers missing; prompt asset unversioned; alias carrying unique truth
- fail-closed triggers：multiple competing mainlines; failed run evidence discarded; hidden prompt dependency

### D. Runbook
| field | value |
|---|---|
| stage objective | Constrain generation to one auditable route and one canonical artifact story. |
| stage owner | CA-DISTILL engine-contract surface |
| stage in | lawful input gate + foundation naming floor |
| stage out | phase contract, artifact field contract, provenance contract, alias rule |
| rollback / retry / reopen discipline | rollback unit = run_id + canonical artifact hash + provenance rows + phase journal references |
| evidence pointers | LOC-024,LOC-025; artifact_registry.json; phase_caps.tsv; route_out_registry.json |
| observability / logs / manifests / gate outputs | track phase journal completeness, provenance pointer completeness, prompt asset versioning, and alias drift count |

#### step-by-step execution flow
1. Fix the single route: blind_abstract → cross_review → targeted_integrate.
2. Define the minimum canonical artifact field family and forbid placeholder fabrication.
3. Bind every claim/assertion/function_spec/invariant back to lineage pointers and quote hashes.
4. Require prompt/model/config assets to be versioned and replayable.
5. Demote alias derivation to a one-way compatibility consequence.

#### exception branches
- WT-NA or alternate model lanes may exist only as evidence-bound auxiliary lanes, never as secret canonical lanes.
- If any phase fails, preserve failed-run evidence rather than sweeping it away.

### E. Work Instructions
#### operator-facing concrete actions
- Expose the canonical artifact field contract in a table instead of burying it in prose.
- Tie phase outputs to provenance and evidence refs so later SGF work has real anchors.
- State explicitly what remains contract-only in this session.

#### shell-neutral command / checklist / review sequence
1. Discover：找出本單元合法 inputs、artifacts、locators、與既有 blockers。
2. Verify：對照 owner law / interface matrix / gate rule 核對每一條前提。
3. Write：只寫本 owner 合法擁有的 registry / ledger / contract rows。
4. Cross-check：把 filename / hash / locator / closure 狀態互相對撞，不讓宣告單飛。
5. Close：更新 closure / TT / download inventory；若命中 stopline，顯式 fail-closed。
- checklist：single route fixed; canonical field minset published; provenance minset published; prompt governance stated; alias derivation one-way
- review sequence：phase order → field minset → provenance → prompt governance → alias rule

#### do / don’t
**Do**
- keep one mainline
- retain failed-run evidence
- use versioned prompt/config references

**Don’t**
- invent hidden phase
- hide prompt assets in chat memory
- let alias carry unique truth

#### acceptance observations
- canonical artifact table lists lawful fields only
- provenance rows cite direct lineage pointers
- phase order appears identically in main doc and sidecars

#### escalation path
- If engine specifics require shell/model/runtime details, escalate to Ops/runtime owner while preserving contract boundaries here.

#### handoff mechanics
- RB-003 hands a contract-ready canonical artifact and provenance model to WP-004, not a fake release claim.

### F. Gate / Validation / Acceptance
| field | value |
|---|---|
| gate name | GATE-DISTILL-ENGINE-CONTRACT |
| pass criteria | single-route fixed, field minset lawful, provenance complete at contract level, alias rule one-way, no hidden prompt dependencies |
| fail criteria | phase skipping, provenance holes, unversioned prompt assets, alias uniqueness, or evidence erasure |
| evidence required | phase order; canonical field minset; provenance pointer minset; prompt/config version trace |
| exact owner of each check | CA-DISTILL engine acceptance surface |
| which checks are route-out only | runtime execution specifics and validator logic stay external |
| which findings become TT / TEMP_CLOSED / BLOCK_RELEASE | See closure_register.tsv + test_tracking_register.tsv |

### G. Security / Integrity / Truthfulness
- prompt assets versioned
- failed-run evidence retained
- no hidden canonical lane

### H. Handoff / Deliverables
| field | value |
|---|---|
| output artifacts | phase_caps.tsv; artifact_registry.json; RB/WI-003 sections; coverage/closure updates |
| consumer | WP-004 and reviewers |
| handoff contract | RB-003 hands a contract-ready canonical artifact and provenance model to WP-004, not a fake release claim. |
| package truth | present / contract-bound for this document package |
| document truth | present |
| runtime truth | contract-only unless direct runtime proof exists |
| release truth | blocked until foreign-owner proof closes |

### I. Traceability
| field | value |
|---|---|
| exact locators | LOC-024,LOC-025,LOC-009,LOC-010; REQ-022; RO-005 |
| source coverage notes | See source_hit_list.tsv + coverage_matrix.tsv + requirement_closure_ledger.tsv |
| reopened conditions | See closure_register.tsv reopen_trigger column |
| TT id / CR id | See TT-DISTILL-001..TT-DISTILL-005 / CR-001..CR-006 |
| related sidecars | route_out_registry.json; artifact_registry.json; test_tracking_register.tsv; closure_register.tsv |

# FENCE:RB-003-END

<a id="fence-rb-003-end"></a>
---

---
<a id="fence-wi-003-begin"></a>

# FENCE:WI-003-BEGIN

## WI-003

### A. 文件身份
| field | value |
|---|---|
| external_name | Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WI-003 |
| internal_short_name | CADISTILL-WI-003 |
| stable_id | CA-DISTILL |
| wp_id | WP-003 |
| run_mode | operator-facing / phase-journal / provenance-write |
| acceptance_mode | phase journal + field sheet + provenance sheet |
| version | v2026.03.30-r6 |
| status_vocabulary | DRAFT / READY_FOR_REVIEW / PASS_PATCHED_WITH_GUARDS / READY_FOR_ACCEPTANCE_BASELINE / FAIL_CLOSED / BLOCK_RELEASE / TEMP_CLOSED / ROUTE_OUT_ONLY |
| upstream_requirement_references | LOC-024,LOC-025, REQ-022 |

### B. 任務定位
- 本 WI 解決：把三階段 distill 契約翻成 operator 可依序執行的 phase journal 與 provenance 寫入動作。
- 與 MC4+ / WP-M 的 obligation 對應：對 blind_abstract / cross_review / targeted_integrate 各自寫明輸入、輸出、核對點、失敗留痕與 alias 派生規則。
- 與相鄰 subsystem / Package B / D / E / Ops 的邊界：不執行 release guard、不憑空補 provenance、不用聊天記憶替代 prompt 資產。

### C. Preflight
- inputs：RB-003; preflight pass; artifact family registry; phase caps
- required artifacts：artifact_registry.json; coverage_matrix.tsv; closure_register.tsv; phase_caps.tsv
- required evidence：phase journal; field minset sheet; provenance pointer sheet; prompt/config revision note
- prerequisites：preflight pass explicit; contract-only vs materialized status known
- stopline conditions：phase journal missing; field minset incomplete; provenance pointers cannot be attached; prompt/config revisions absent
- fail-closed triggers：phase skipped silently; failed-run evidence deleted; alias written before canonical; non-source-backed field fabricated

### D. Runbook
| field | value |
|---|---|
| stage objective | Make generation auditable as a journaled sequence rather than a magical blob. |
| stage owner | CA-DISTILL operator surface for distill engine contract |
| stage in | preflight pass + lawful input set |
| stage out | phase journal, canonical field sheet, provenance notes, alias derivation note or explicit absence |
| rollback / retry / reopen discipline | rollback unit = run_id + phase journal rows + canonical field sheet + provenance sheet + alias note |
| evidence pointers | phase_caps.tsv; coverage_matrix.tsv; closure_register.tsv; artifact_registry.json |
| observability / logs / manifests / gate outputs | track phase-complete count, unresolved ambiguity count, missing-but-lawful count, and alias derivation count |

#### step-by-step execution flow
1. Discover the current run scope: run_id, source snapshot revision, expected claim/assertion/function_spec/invariant sets.
2. Verify phase 1 inputs and log blind_abstract output targets without finalizing claims.
3. Write phase 2 cross_review notes: disagreements, recovered citations, unresolved ambiguities, route_status.
4. Write phase 3 targeted_integrate notes: final canonical field sheet and evidence refs.
5. Cross-check that every logic unit has chunk/source/locator linkage and that alias derivation, if any, is one-way from canonical.
6. Close with preserved failed-run notes if any phase fails, and with closure/TT updates for unresolved provenance gaps.

#### exception branches
- If an auxiliary model lane contributes evidence, capture it as auxiliary support and keep canonical assembly on the single route.
- If a field has lawful missing status, leave it missing and annotate route_status instead of guessing.

### E. Work Instructions
#### operator-facing concrete actions
- Discover: run_id, source revision, expected outputs, prompt/config revisions.
- Verify: phase order, preconditions, and field families for each phase.
- Write: phase journal rows and canonical field sheet with provenance columns.
- Cross-check: confirm every final unit has lineage pointers and route_status.
- Close: record failed-run evidence or ready-for-SGF contract explicitly.

#### shell-neutral command / checklist / review sequence
1. Discover：找出本單元合法 inputs、artifacts、locators、與既有 blockers。
2. Verify：對照 owner law / interface matrix / gate rule 核對每一條前提。
3. Write：只寫本 owner 合法擁有的 registry / ledger / contract rows。
4. Cross-check：把 filename / hash / locator / closure 狀態互相對撞，不讓宣告單飛。
5. Close：更新 closure / TT / download inventory；若命中 stopline，顯式 fail-closed。
- checklist：run_id logged; three phases journaled; canonical field sheet written; provenance columns filled or lawfully missing; failed-run evidence preserved
- review sequence：run scope → phase 1 → phase 2 → phase 3 → provenance cross-check → close

#### do / don’t
**Do**
- log disagreements and unresolved points
- preserve failed-run evidence
- bind every final unit to lineage columns

**Don’t**
- jump directly to final artifact
- bury prompt/config revisions
- make alias the only visible output

#### acceptance observations
- phase journal has three named phases
- field sheet exposes missing vs present honestly
- provenance sheet supports later SGF review

#### escalation path
- If runtime/model orchestration becomes necessary, escalate to Ops/runtime owner while leaving contract and evidence expectations here.

#### handoff mechanics
- WI-003 hands a canonical-contract-ready artifact set to WI-004 for SGF/evidence/handoff gating.

### F. Gate / Validation / Acceptance
| field | value |
|---|---|
| gate name | GATE-DISTILL-WI-ENGINE |
| pass criteria | three-phase journal complete, field sheet lawful, provenance sheet present, alias one-way, failed-run evidence retained |
| fail criteria | hidden skipped phase, hidden prompt dependency, fabricated field, lost failed-run evidence, or alias-first output |
| evidence required | phase journal; field minset sheet; provenance pointer sheet; prompt/config revision note |
| exact owner of each check | CA-DISTILL operator acceptance surface |
| which checks are route-out only | runtime shell/model commands and validator logic stay external |
| which findings become TT / TEMP_CLOSED / BLOCK_RELEASE | See closure_register.tsv + test_tracking_register.tsv |

### G. Security / Integrity / Truthfulness
- no hidden prompt memory
- no fabricated provenance
- preserve failure evidence

### H. Handoff / Deliverables
| field | value |
|---|---|
| output artifacts | phase_caps.tsv; coverage_matrix.tsv; closure_register.tsv; artifact_registry.json |
| consumer | WI-004 and reviewers |
| handoff contract | WI-003 hands a canonical-contract-ready artifact set to WI-004 for SGF/evidence/handoff gating. |
| package truth | present / contract-bound for this document package |
| document truth | present |
| runtime truth | contract-only unless direct runtime proof exists |
| release truth | blocked until foreign-owner proof closes |

### I. Traceability
| field | value |
|---|---|
| exact locators | LOC-024,LOC-025; REQ-022; TT-DISTILL-003..TT-DISTILL-005 |
| source coverage notes | See source_hit_list.tsv + coverage_matrix.tsv + requirement_closure_ledger.tsv |
| reopened conditions | See closure_register.tsv reopen_trigger column |
| TT id / CR id | See TT-DISTILL-001..TT-DISTILL-005 / CR-001..CR-006 |
| related sidecars | artifact_registry.json; test_tracking_register.tsv; closure_register.tsv; coverage_matrix.tsv |

# FENCE:WI-003-END

<a id="fence-wi-003-end"></a>
---

---
<a id="fence-rb-004-begin"></a>

# FENCE:RB-004-BEGIN

## RB-004

### A. 文件身份
| field | value |
|---|---|
| external_name | Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_RB-004 |
| internal_short_name | CADISTILL-RB-004 |
| stable_id | CA-DISTILL |
| wp_id | WP-004 |
| run_mode | acceptance-gate / evidence-family / handoff-stopline |
| acceptance_mode | gate review + blocker review |
| version | v2026.03.30-r6 |
| status_vocabulary | DRAFT / READY_FOR_REVIEW / PASS_PATCHED_WITH_GUARDS / READY_FOR_ACCEPTANCE_BASELINE / FAIL_CLOSED / BLOCK_RELEASE / TEMP_CLOSED / ROUTE_OUT_ONLY |
| upstream_requirement_references | LOC-030,LOC-037,LOC-038,LOC-039, IF-003 |

### B. 任務定位
- 本 RB 解決：把 SGF、traceability、evidence triplet、PASS-only handoff、rollback unit、package truth stopline 寫成最終 acceptance rulebook。
- 與 MC4+ / WP-M 的 obligation 對應：承接 WP-M WP-004 與 CA-DSL current owner body carrier，確保 handoff 只在 lawful PASS 狀態下發生。
- 與相鄰 subsystem / Package B / D / E / Ops 的邊界：不自稱 Package D required-check owner，不自稱 Package E validator/release_guard owner，不自稱 CA-DSL formalization owner。

### C. Preflight
- inputs：RB/WI-001..003 outputs; WP-M WP-004 clauses; CA-DSL current owner body carrier; release blocker contract
- required artifacts：release_blocker_contract.json; closure_register.tsv; test_tracking_register.tsv; delivery_reality_table.tsv
- required evidence：SGF rule surface; traceability completeness criteria; evidence triplet minset; handoff payload minset; rollback/reopen rules
- prerequisites：canonical artifact contract-ready; provenance sheet available; adjacent DSL carrier bound
- stopline conditions：SGF fail or unknown; traceability incomplete; triplet incomplete; handoff_allowed not true; direct release proof absent
- fail-closed triggers：handoff on FAIL/unknown; document truth spoken as shipped package truth; old verdict retained after drift

### D. Runbook
| field | value |
|---|---|
| stage objective | Separate 'good enough to read' from 'lawful to hand off' and from 'lawful to release'. |
| stage owner | CA-DISTILL acceptance surface |
| stage in | contract-ready canonical artifact + evidence family + release blockers |
| stage out | layered verdict, handoff contract, blockers, rollback unit, truthful package split |
| rollback / retry / reopen discipline | rollback unit = run_id + canonical hash + handoff payload hash + evidence family + related ledger rows |
| evidence pointers | LOC-026,LOC-027,LOC-028,LOC-029,LOC-030; release_blocker_contract.json; test_tracking_register.tsv |
| observability / logs / manifests / gate outputs | watch SGF gate status, traceability completeness, handoff_allowed state, blocker count, withdrawn-handoff count |

#### step-by-step execution flow
1. Define SGF as source-grounded faithfulness and tie it to traceability completeness.
2. Fix evidence triplet minset and supporting evidence family members.
3. Bind lawful handoff payload to CA-DSL current owner body carrier and PASS-only condition.
4. Separate document pass, engineering pass, execution proof, release proof, and delivery proof.
5. Publish rollback and reopen rules for post-handoff drift.

#### exception branches
- If evidence is partial but non-fabricated, keep TEMP_CLOSED or FAIL_CLOSED; do not coerce PASS.
- If handoff was emitted before a later drift is detected, withdraw handoff and reopen TT.

### E. Work Instructions
#### operator-facing concrete actions
- Keep verdict axes separate in tables and machine-readable blocks.
- Map every blocker to TT and reopen trigger; no orphan blockers.
- Name the exact fields required for lawful handoff so downstream DSL consumption is not hand-waved.

#### shell-neutral command / checklist / review sequence
1. Discover：找出本單元合法 inputs、artifacts、locators、與既有 blockers。
2. Verify：對照 owner law / interface matrix / gate rule 核對每一條前提。
3. Write：只寫本 owner 合法擁有的 registry / ledger / contract rows。
4. Cross-check：把 filename / hash / locator / closure 狀態互相對撞，不讓宣告單飛。
5. Close：更新 closure / TT / download inventory；若命中 stopline，顯式 fail-closed。
- checklist：SGF defined; triplet fixed; handoff payload fixed; verdict axes separated; rollback/reopen fixed; Package D/E stoplines preserved
- review sequence：SGF definition → evidence family → handoff contract → blocker review → verdict separation → rollback unit

#### do / don’t
**Do**
- block handoff on unknown
- withdraw stale handoff on drift
- speak layered truth

**Don’t**
- smuggle release readiness into document completion
- forget TT linkage
- treat DSL consumer rules as local owner law

#### acceptance observations
- handoff payload minset appears in WI-004 and interface row IF-003
- blockers are still present in final verdict
- rollback unit includes canonical hash and evidence family

#### escalation path
- Schema purity or formalization concerns escalate to CA-DSL; release proof concerns escalate to Package D/E.

#### handoff mechanics
- RB-004 closes only when lawful handoff is fully bounded and release blockers are truthfully preserved.

### F. Gate / Validation / Acceptance
| field | value |
|---|---|
| gate name | GATE-DISTILL-ACCEPTANCE |
| pass criteria | SGF/traceability/triplet/handoff/rollback rules explicit and aligned; release blockers preserved truthfully |
| fail criteria | handoff on non-pass, merged verdict axes, hidden blockers, or missing rollback/reopen discipline |
| evidence required | SGF rule surface; traceability completeness criteria; evidence triplet minset; handoff payload minset; rollback/reopen rules |
| exact owner of each check | CA-DISTILL acceptance surface |
| which checks are route-out only | Package D/E proofs and CA-DSL formalization remain external |
| which findings become TT / TEMP_CLOSED / BLOCK_RELEASE | See closure_register.tsv + test_tracking_register.tsv |

### G. Security / Integrity / Truthfulness
- no false finality
- no leaked secrets in evidence tables
- withdraw handoff on drift

### H. Handoff / Deliverables
| field | value |
|---|---|
| output artifacts | release_blocker_contract.json; delivery_reality_table.tsv; closure/test tracking rows; RB/WI-004 sections |
| consumer | CA-DSL / reviewer / docops |
| handoff contract | RB-004 closes only when lawful handoff is fully bounded and release blockers are truthfully preserved. |
| package truth | present / contract-bound for this document package |
| document truth | present |
| runtime truth | contract-only unless direct runtime proof exists |
| release truth | blocked until foreign-owner proof closes |

### I. Traceability
| field | value |
|---|---|
| exact locators | LOC-030,LOC-037,LOC-038,LOC-039; IF-003; TT-DISTILL-003..TT-DISTILL-005 |
| source coverage notes | See source_hit_list.tsv + coverage_matrix.tsv + requirement_closure_ledger.tsv |
| reopened conditions | See closure_register.tsv reopen_trigger column |
| TT id / CR id | See TT-DISTILL-001..TT-DISTILL-005 / CR-001..CR-006 |
| related sidecars | test_tracking_register.tsv; release_blocker_contract.json; closure_register.tsv |

# FENCE:RB-004-END

<a id="fence-rb-004-end"></a>
---

---
<a id="fence-wi-004-begin"></a>

# FENCE:WI-004-BEGIN

## WI-004

### A. 文件身份
| field | value |
|---|---|
| external_name | Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WI-004 |
| internal_short_name | CADISTILL-WI-004 |
| stable_id | CA-DISTILL |
| wp_id | WP-004 |
| run_mode | operator-facing / SGF-and-handoff-gate |
| acceptance_mode | gate checklist + blocker ledger sync |
| version | v2026.03.30-r6 |
| status_vocabulary | DRAFT / READY_FOR_REVIEW / PASS_PATCHED_WITH_GUARDS / READY_FOR_ACCEPTANCE_BASELINE / FAIL_CLOSED / BLOCK_RELEASE / TEMP_CLOSED / ROUTE_OUT_ONLY |
| upstream_requirement_references | LOC-030,LOC-037,LOC-038,LOC-039, IF-003 |

### B. 任務定位
- 本 WI 解決：把 SGF、evidence triplet、PASS-only handoff、rollback/reopen 變成 operator 可逐項核對的 acceptance 操作。
- 與 MC4+ / WP-M 的 obligation 對應：實際檢查 handoff_allowed 條件、evidence family 完整性、release blockers、以及 post-handoff drift 撤回規則。
- 與相鄰 subsystem / Package B / D / E / Ops 的邊界：不冒充 validator/release guard；不在無 direct proof 時講 shipped package ready；不把 DSL consume truth 寫成 local law。

### C. Preflight
- inputs：RB-004; phase journal / provenance notes; release_blocker_contract.json; CA-DSL carrier locators
- required artifacts：release_blocker_contract.json; closure_register.tsv; test_tracking_register.tsv; delivery_reality_table.tsv; download_inventory.tsv
- required evidence：SGF observation sheet; triplet presence sheet; handoff payload field sheet; rollback/reopen note
- prerequisites：WI-003 contract-ready output; blocker contract present; DSL carrier binding present
- stopline conditions：SGF not pass; triplet incomplete; traceability incomplete; handoff payload fields missing; Package D/E proof absent but release claim attempted
- fail-closed triggers：handoff on FAIL/unknown; release wording beyond blocker contract; stale handoff left alive after drift

### D. Runbook
| field | value |
|---|---|
| stage objective | Make the final acceptance gate strict enough that the document cannot talk the package past reality. |
| stage owner | CA-DISTILL operator acceptance surface |
| stage in | contract-ready output + blocker ledger |
| stage out | explicit handoff decision, updated blockers/TT, truthful verdict tables, or withdrawn handoff |
| rollback / retry / reopen discipline | rollback unit = handoff payload sheet + verdict axis rows + blocker rows + canonical/evidence hashes |
| evidence pointers | release_blocker_contract.json; closure_register.tsv; test_tracking_register.tsv; delivery_reality_table.tsv |
| observability / logs / manifests / gate outputs | track SGF pass/fail, handoff_allowed, blocker count, withdrawn-handoff count, and reopened TT count |

#### step-by-step execution flow
1. Discover the current canonical hash, evidence family members, and existing blocker rows.
2. Verify SGF and traceability completeness criteria against the acceptance rulebook.
3. Write a handoff payload field sheet: upstream_artifact, canonical hash, chunk ids, trace refs, schema refs, route status.
4. Cross-check that handoff_allowed is true only when SGF/triplet/traceability all pass and no contradiction remains.
5. Close by either issuing PASS-only handoff contract, or by preserving/expanding blockers and TT; if drift is found after handoff, withdraw and reopen.

#### exception branches
- If supporting metrics exist without internal threshold authorization, keep them support-only and do not let them flip the verdict.
- If downstream DSL consume rules change, reopen IF-003 and update the handoff sheet instead of silently assuming compatibility.

### E. Work Instructions
#### operator-facing concrete actions
- Discover: canonical hash, triplet members, blocker rows, DSL consume expectations.
- Verify: SGF/traceability/triplet completeness and blocker posture.
- Write: handoff field sheet and verdict axis rows; update blocker/TT rows immediately.
- Cross-check: ensure release wording never exceeds blocker contract and that IF-003 matches the handoff sheet.
- Close: emit PASS-only handoff or explicit block/withdraw decision.

#### shell-neutral command / checklist / review sequence
1. Discover：找出本單元合法 inputs、artifacts、locators、與既有 blockers。
2. Verify：對照 owner law / interface matrix / gate rule 核對每一條前提。
3. Write：只寫本 owner 合法擁有的 registry / ledger / contract rows。
4. Cross-check：把 filename / hash / locator / closure 狀態互相對撞，不讓宣告單飛。
5. Close：更新 closure / TT / download inventory；若命中 stopline，顯式 fail-closed。
- checklist：SGF checked; triplet checked; handoff sheet written; verdict axes updated; blockers synced; withdraw/reopen rule ready
- review sequence：hash/evidence discovery → SGF verify → handoff sheet → blocker sync → final verdict

#### do / don’t
**Do**
- block on unknown
- keep blockers visible
- withdraw stale handoff

**Don’t**
- let document pass masquerade as release pass
- hide post-handoff drift
- treat external support metrics as internal thresholds

#### acceptance observations
- handoff sheet fields match IF-003
- blocker ledger still contains Package B/D/E gaps
- final verdict preserves execution/release stoplines

#### escalation path
- Any formalization or release promotion question escalates to CA-DSL / Package D / Package E respectively.

#### handoff mechanics
- WI-004 is the only WI allowed to speak handoff_allowed, and even then only as PASS-only contract, never as release proof.

### F. Gate / Validation / Acceptance
| field | value |
|---|---|
| gate name | GATE-DISTILL-WI-ACCEPTANCE |
| pass criteria | SGF/traceability/triplet complete, handoff sheet lawful, blockers synced, verdict axes truthful |
| fail criteria | handoff on non-pass, blocker suppression, stale verdict after drift, or release overclaim |
| evidence required | SGF observation sheet; triplet presence sheet; handoff payload field sheet; rollback/reopen note |
| exact owner of each check | CA-DISTILL operator acceptance surface |
| which checks are route-out only | validator/release guard/direct shipped package proof remain external |
| which findings become TT / TEMP_CLOSED / BLOCK_RELEASE | See closure_register.tsv + test_tracking_register.tsv |

### G. Security / Integrity / Truthfulness
- no false release claim
- no orphan blocker
- withdraw stale handoff on drift

### H. Handoff / Deliverables
| field | value |
|---|---|
| output artifacts | release_blocker_contract.json; closure_register.tsv; test_tracking_register.tsv; delivery_reality_table.tsv |
| consumer | CA-DSL / reviewer / docops |
| handoff contract | WI-004 is the only WI allowed to speak handoff_allowed, and even then only as PASS-only contract, never as release proof. |
| package truth | present / contract-bound for this document package |
| document truth | present |
| runtime truth | contract-only unless direct runtime proof exists |
| release truth | blocked until foreign-owner proof closes |

### I. Traceability
| field | value |
|---|---|
| exact locators | LOC-030,LOC-037,LOC-038,LOC-039; IF-003; REQ-023,REQ-032 |
| source coverage notes | See source_hit_list.tsv + coverage_matrix.tsv + requirement_closure_ledger.tsv |
| reopened conditions | See closure_register.tsv reopen_trigger column |
| TT id / CR id | See TT-DISTILL-001..TT-DISTILL-005 / CR-001..CR-006 |
| related sidecars | test_tracking_register.tsv; release_blocker_contract.json; closure_register.tsv |

# FENCE:WI-004-END

<a id="fence-wi-004-end"></a>
---
