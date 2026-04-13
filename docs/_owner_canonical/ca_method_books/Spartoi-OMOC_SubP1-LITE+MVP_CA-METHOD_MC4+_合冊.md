# Cover Card / Document Identity / Verdict Split

<a id="cover-card--document-identity--verdict-split"></a>

- **external_name**: Spartoi-OMOC_SubP1-LITE+MVP_CA-METHOD_MC4+_合冊.md
- **internal_short_name**: CAMETHOD_MC4PLUS
- **version**: v2026.03.30-r2-patched
- **release_date**: 2026-03-30（Asia/Taipei）
- **bundle_id**: BUNDLE-CAMETHOD-MC4PLUS-20260330-02
- **status**: DOCUMENT_PASS_WITH_GUARDS / EXECUTION_FAIL_CLOSED / RELEASE_BLOCKED / DELIVERY_PASS
- **supersedes**:
  - `Spartoi-OMOC_SubP1-LITE+MVP_CA-METHOD_MC4+_合冊.md`（r1，同名先前交付版）
  - `Spartoi-OMOC_SubP1-LITE+MVP_CA-METHOD_MC4合冊.md`
  - `CA-METHOD_MC4_WP_升級方案.md`
- **absorbs**:
  - `Spartoi-OMOC_SubP1-LITE+MVP_CA-METHOD_MC4+_合冊_AUDIT.md`
  - `CA-METHOD_MC4&WP_重構升級藍圖_v2.md`
  - `Pipeline-B_MC4+_WP-M_WP-RB-WI_升級藍圖.md`
  - `MC4+_WP-M_WP-RB-WI_升級藍圖_v1.1.0-r2.md`
- **truth split**:
  - **Document** = PASS_WITH_GUARDS
  - **Execution** = FAIL_CLOSED
  - **Release** = BLOCK_RELEASE
  - **Delivery** = PASS
- **one-line verdict**: 本修補版已把 AUDIT 點名的 exact locator、sourcepack 四檔、policy/consumer contracts、接口閉合矩陣、legacy registers 與 package 自證全部物化；但 repo truth、runtime truth、release provenance 仍不可在本環境證成，因此 execution / release 維持 fail-closed。

## TOC（anchors-first）
1. [Reader Guide / 強制讀序 / Anti-miss / Anti-confusion / Anti-hallucination](#reader-guide)
2. [Authority Stack / Conflict Rules / Scope Lock / Data-not-Instruction](#authority-stack)
3. [Patch Scope / Audit Closure / Verdict Repair](#patch-scope)
4. [Inputs Manifest / Alias Normalization / Missing / Unverified / Support-only Register](#inputs-manifest)
5. [Exact Locator Discipline（重建版）](#exact-locator-discipline)
6. [Upstream Absorption Ledger / Closure Matrix / Replacement Matrix](#upstream-absorption-ledger)
7. [CA-METHOD 定位、邊界、禁止面、adjacency summary](#ca-method-boundary)
8. [Pipeline-A / Pipeline-B / Pipeline-C / 五子系統 / A+B DB 接口閉合](#interface-closure)
9. [Artifact Constitution / Sourcepack / MethodPack / Policy Bundle / Consumer Views](#artifact-constitution)
10. [Gate / Threshold / Degrade / Block / TT / Release Guard 規則](#gate-threshold)
11. [Tooling Adjudication（native > minimal config > thin script）](#tooling-adjudication)
12. [Packaging Truth / Manifest / Checksums / Build / Download package truth](#packaging-truth)
13. [Self-Audit / Issue Closure / ChangeLog](#self-audit)
14. [Test Tracking List](#test-tracking-list)
15. [Final Verdicts（Document / Execution / Release / Delivery）](#final-verdicts)
16. [Fenced documents](#fenced-documents)

# Reader Guide / 強制讀序 / Anti-miss / Anti-confusion / Anti-hallucination

<a id="reader-guide"></a>

## 強制讀序
1. 先讀本書 `Authority Stack` 與 `Patch Scope`。
2. 再讀 `Exact Locator Discipline`，確認本版已把上一版的 locator 漏洞封死。
3. 再讀 `Upstream Absorption Ledger` 與 `Replacement Matrix`，確認這不是重寫，而是工程性吸收與取代。
4. 再讀 `Interface Closure` 與 `Artifact Constitution`，確認 policy artifacts、consumer views、sourcepack 與 MethodPack 皆已物化。
5. 最後讀 `SS_README / SS_SRS / SS_ARCH / SS_DELIVER / SS_LBP Annex`，避免把 route-out、support-only、runtime truth 混成同一層。

## Anti-miss
- 任何 `MUST / SHALL / BLOCK / PASS` 類主張，若沒有出現在 `exact_locator_registry.tsv` 的 exact line range，就不算完成。
- 任何與 repo 現況、validator 實跑、required checks、branch protection、merge queue、artifact attestations、release provenance 有關的句子，若缺實際 repo 證跡，一律視為未證成。
- 任何來自 Ops / 2022 ICT / 台股映射 / SEM8 / HistDB 的內容，都只能補語義、欄位骨架、route-out、bootstrap support；不得回灌成 owner constitution。

## Anti-confusion
- **CA-METHOD 不是 runtime owner**：它不做 TA runtime、不做 ranking runtime、不做 translate runtime、不做 monitoring engine、更不做 order engine。
- **CA-METHOD 也不是文書器**：它必須交付 `MethodCard / MethodSpec / MethodPack / scenario_binding / primitive_coverage_map / mapping_card / publish-only consumer contracts / publish-only TW mapping contracts / StrategyPack_draft`。
- **FeedbackPack 不是修法管道**：proposal-only，不得直接 finalize MethodCard/MethodSpec。
- **Pipeline-C 不是 method editor**：只能 consume 固定版本 `SpecPack + StrategyPack`。

## Anti-hallucination
- 無 direct locator → 不得宣稱吸收完成。
- 無 validator / release guard / repo proof → 不得宣稱 release ready。
- 無 XQ parity evidence → 不得宣稱 runtime parity ready。
- 無 direct legacy canonical file → 不得把 legacy traceability 升格為 normative。

# Authority Stack / Conflict Rules / Scope Lock / Data-not-Instruction

<a id="authority-stack"></a>

## 固定裁決序位（本任務不可回退）
1. 《Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文》
2. 《Spartoi-OMOC_SSOT_合冊》
3. 《Spartoi-OMOC_LBP_合冊》
4. 《Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊》
5. 《Spartoi-OMOC_SubP1-LITE+MVP_合冊》
6. 《OMOC_合冊》
7. 《參考方案合冊》

### 正文合冊內部固定子序位
若使用《Spartoi-OMOC_SubP1-LITE+MVP_正文合冊》定位：
1. `中央工程正文`
2. `系統需求正文r3`
3. `bridge / router / derived` 補充內容

## 裁決規則
- 明文條文 > 摘要描述
- 機器可稽核條文 > 宏觀口號
- 直接來源 > 二手摘要
- owner 邊界 > 藍圖越權收編
- route-out = 導流，不是重新立法
- document replaceability ≠ execution readiness ≠ release readiness
- unknown / missing / unlocatable items are not assumed

## Fail-Closed 工作律
- **No-Source-No-Norm**
- **No-Anchor-No-Claim**
- **No-Validator-No-Release-Claim**
- **One-Rule-One-Place**
- **One-Rule-One-Owner**
- **DATA-not-Instruction**

## Scope Lock
- 本書只負責 **CA-METHOD constitution / interface / artifact / sourcepack / packaging / boundary / guard**。
- 本書不負責 Dev/Ops step-by-step HOW；不負責 Package-B schema 全文；不負責 Package-D workflow 實跑；不負責 Package-E release engine 真值。

# Patch Scope / Audit Closure / Verdict Repair

<a id="patch-scope"></a>

## 本次修補面向
本版不是把 r1 重新排版，而是把 `AUDIT F-001..F-008` 全部回寫成：
1. **正文條款**
2. **machine-readable sidecars**
3. **sourcepack 四檔實體**
4. **policy / consumer / schema / MethodPack sample artifacts**
5. **package 自證結果**

## Audit Closure Matrix
| audit_id | issue | status | resolution | materialized_files |
| --- | --- | --- | --- | --- |
| F-001 | exact locator registry 失真 | CLOSED | Rebuilt exact_locator_registry.tsv with exact line ranges only; removed n/a / wildcard / etc entries | exact_locator_registry.tsv; main book §Inputs/§Patch Closure |
| F-002 | sourcepack 四檔制度未物化 | CLOSED | Materialized sourcepack/meta.json + CA-CORE.md + CA-MC4.md + CA-WP.md and rendered WP-M/WP-RB-WI/WP-FULL | sourcepack/*; generated/*; main book §Sourcepack |
| F-003 | policy artifacts & consumer contracts absent | CLOSED | Materialized MethodSpec.schema.json, policy bundle JSONs, consumer views, mapping and XQ projection manifest | method/specs/*; method/pack/MethodPack/**/*; main book §Artifact Constitution |
| F-004 | 接口閉合過於抽象 | CLOSED | Added consumer_required_refs_matrix.tsv, forbidden_actions_matrix.tsv, degrade_fallback_matrix.tsv, adjacency_summary_matrix.tsv | *.tsv; main book §Interface Closure |
| F-005 | legacy disposition registers absent | CLOSED | Added legacy_disposition_matrix.tsv, removed_register.tsv, superseded_register.tsv, traceability_only_register.tsv | legacy_disposition_matrix.tsv and registers |
| F-006 | package_validation.json 自證不足 | CLOSED | Validation now writes checksum verification, zip integrity and exact-locator strictness back into package_validation.json | package_validation.json |
| F-007 | 低磨合最小施工路徑不足 | CLOSED | Added one-path minimal implementation lane and owner-by-file matrix in main book and sourcepack | main book §Minimal lane; sourcepack/meta.json |
| F-008 | 壓縮過度造成工程資訊流失 | CLOSED | Expanded main book with explicit matrices, artifact trees, route-out registers and audit closure sections | main book overall |

## 本版對 r1 的直接裁決
- r1 的 **包裝存在**、**硬邊界存在**、**fail-closed 誠實** 三件事保留。
- r1 被 AUDIT 指出的 **locator 不 exact / sourcepack 缺位 / policy 契約缺位 / interface matrix 過薄 / legacy registers 缺位 / package validation 不自證** 全部視為必修，不再以 `CLOSED` 宣告帶過。
- 本版因此是 **升級修補版**，不是「新開一份另案文件」。

# Inputs Manifest / Alias Normalization / Missing / Unverified / Support-only Register

<a id="inputs-manifest"></a>

## Inputs Manifest
| source_name | class | tier/role | status | use | notes |
| --- | --- | --- | --- | --- | --- |
| Spartoi-OMOC_SubP1-LITE+MVP_CA-METHOD_MC4+_合冊.md | PREVIOUS_DELIVERABLE | LEGACY_R1 | FOUND | superseded by this r2 patched book | prior delivery baseline |
| Spartoi-OMOC_SubP1-LITE+MVP_CA-METHOD_MC4+_合冊_AUDIT.md | AUDIT_INPUT | PATCH_DRIVER | FOUND | F-001..F-008 findings must be closed | current audit |
| Spartoi-OMOC_SubP1-LITE+MVP_CA-METHOD_MC4合冊.md | LEGACY_OWNER_BOOK | LEGACY_TARGET | FOUND | absorb + replace | old MC4 owner book |
| CA-METHOD_MC4_WP_升級方案.md | OWNER_PATCH | LEGACY_TARGET | FOUND | absorb + replace | old upgrade plan |
| CA-METHOD_MC4&WP_重構升級藍圖_v2.md | OWNER_PATCH | PATCH_BASELINE | FOUND | absorb + patch-close | v2 owner blueprint |
| Pipeline-B_MC4+_WP-M_WP-RB-WI_升級藍圖.md | PIPELINE_PATCH | PATCH_BASELINE | FOUND | shared pipeline contracts | pipeline B blueprint |
| MC4+_WP-M_WP-RB-WI_升級藍圖_v1.1.0-r2.md | GLOBAL_PATCH | PATCH_BASELINE | FOUND | sourcepack / booksystem discipline | global MC4+ blueprint |
| Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文.md | NORMATIVE | PRIMARY | FOUND | owner law / artifact law / XQ law | central engineering正文 |
| Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md | NORMATIVE | PRIMARY_CONTAINER | FOUND | body line-range / stable-anchor container | 正文合冊 |
| Spartoi-OMOC_SSOT_合冊.md | NORMATIVE | PRIMARY_ROOT | FOUND | ARCH / SRS / evidence / gates | SSOT root |
| Spartoi-OMOC_LBP_合冊.md | NORMATIVE | PRIMARY_ROOT | FOUND | route-out / ICD schema registry / owner ceiling | LBP root |
| Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊.md | NORMATIVE | PRIMARY_ROOT | FOUND | Package-E scope and package rows | Pack A-E guide |
| Spartoi-OMOC_SubP1-LITE+MVP_合冊.md | NORMATIVE | PRIMARY_ROOT | FOUND | SubP1 routing context | SubP1 merged spine |
| OMOC_合冊.md | NORMATIVE | PRIMARY_ROOT | FOUND | lower-tier normative context only | OMOC root |
| 參考方案合冊.md | SUPPORT_BRIDGE | TIER7 | FOUND | StrategyPack / FeedbackPack / XSPack bridge | reference bridge |
| SEM8-ICT-TW_重構升級藍圖_v1.2.1-r1.md | SUPPORT_INTERNAL | AUDIT_SHELL | FOUND | audit shell / field skeleton only | SEM8 |
| SEM³資料參考_合冊.md | SUPPORT_INTERNAL | METHOD_VALIDATION | FOUND | SGF / MSC / TVE semantics | SEM3 refs |
| Pipeline-B資料參考_合冊.md | SUPPORT_INTERNAL | PIPELINE_B_REF | FOUND | method-layer context | pipeline B refs |
| Pipeline-B&C資料參考_合冊.md | SUPPORT_INTERNAL | PIPELINE_BC_REF | FOUND | METHOD→TA→SELECT→TRANSLATE chain | pipeline BC refs |
| 台股實戰映射_合冊.md | SUPPORT_INTERNAL | TW_MAPPING | FOUND | XF-lite / weekly / RC promotion clock | TW mapping |
| 台股歷史資料庫實作參考_合冊.md | SUPPORT_INTERNAL | HISTDB_IMPL | FOUND | ICT-OBI / 5s→1m bootstrap references | histdb refs |
| Ops RUNBOOK_合冊.md | ROUTE_OUT_EXECUTION | OPS | FOUND | XQ chain and time-window restraints | ops runbook |
| 2022 ICT Mentorship 技術指南合冊_v2.md | SUPPORT_DOMAIN | ICT_DOMAIN | FOUND | AMD / PO3 / OTE / FVG semantics | ICT domain |
| 2022_台股ICT技術研究_合冊.md | SUPPORT_DOMAIN | TW_ICT_DOMAIN | FOUND | TW decision-gate and execution heuristics | TW ICT domain |
| repo truth: branch protection / required checks / merge queue / release provenance / runtime parity | EXECUTION_TRUTH | REPO_RUNTIME | MISSING | must remain fail-closed | not observable in this environment |
| legacy Mini-P1 / skeleton families not directly uploaded | TRACEABILITY_ONLY | LEGACY_TRACE | UNVERIFIED_NOT_UPLOADED | cannot be promoted to normative | trace only |

## Alias Normalization
| alias / old term | canonical / current meaning | disposition |
| --- | --- | --- |
| `CA-METHOD MC4合冊` | `Spartoi-OMOC_SubP1-LITE+MVP_CA-METHOD_MC4+_合冊` | replaced by this book |
| `CA-METHOD_MC4_WP_升級方案` | absorbed into this book and traceability ledgers | replaced |
| `story_card.json` at METHOD side | legacy compatibility alias only | not external canonical output |
| `risk_card.json` at METHOD side | legacy compatibility alias only | not external canonical output |
| `story_seed.json` | METHOD internal draft artifact | allowed internal-only |
| `risk_seed.json` | METHOD internal draft artifact | allowed internal-only |
| `MethodCard only` | `MethodCard + MethodSpec + MethodPack + scenario_binding + primitive_coverage_map + mapping_card + publish-only contracts` | expanded canonical set |
| `FeedbackPack direct fix` | forbidden | proposal-only only |
| `Pipeline-C rewrite` | forbidden | consume-only only |

## Missing / Unverified / Support-only Register（摘要）
- **UNVERIFIED_NOT_UPLOADED**：legacy Mini-P1 / old skeleton families沒有 direct uploaded canonical file，因此只保留 traceability；不被升格為 owner law。
- **MISSING REPO/RUNTIME TRUTH**：required checks、branch protection、merge queue、artifact attestations、runtime parity、release provenance 都不可在此環境直接觀測。
- **SUPPORT_INTERNAL / ROUTE_OUT_EXECUTION**：只補語義、欄位骨架、bootstrap 和 HOW 路由，不覆寫上位權威。

# Exact Locator Discipline（重建版）

<a id="exact-locator-discipline"></a>

## 重建規則
- `exact_locator_registry.tsv` 只允許：`source file + exact line range + concrete anchor/locator + topic + class`。
- 禁止：`n/a`、`DOC-0001..0006`、`etc.`、wildcard、純 section family、純概念詞。
- 任何原本在 r1 使用 non-exact row 才能成立的 `CLOSED` 判定，本版若無法補成 exact locator，就降級 `TEMP_CLOSED`；本版實際未留此類 non-exact row。

## Exact Locator Registry（摘要）
| locator_id | source | line_range | anchor / locator | topic | class |
| --- | --- | --- | --- | --- | --- |
| LOC-001 | Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文.md | L69-L73 | GCERM-V220R1-00-READER | No-Source-No-Norm / No-Anchor-No-Claim / No-Validator-No-Release-Claim | NORMATIVE |
| LOC-002 | Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文.md | L726-L742 | GCERM-V220R1-08-ARTIFACTS | ReferenceDB / RunLedger / SpecPack / EvidencePack artifact constitution | NORMATIVE |
| LOC-003 | Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md | L1321-L1329 | drv:DOC-0001:h0089 | CA-METHOD row in 15CA matrix | NORMATIVE |
| LOC-004 | Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md | L1330-L1338 | drv:DOC-0001:h0090 | CA-BACKTEST row in 15CA matrix | NORMATIVE |
| LOC-005 | Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md | L1384-L1392 | drv:DOC-0001:h0096 | CA-PERFORM row in 15CA matrix | NORMATIVE |
| LOC-006 | Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md | L3157-L3158 | drv:DOC-0002:data-backbone-localdb | DuckDB / SQLite / Parquet / DVC pointers local data backbone组合 | NORMATIVE |
| LOC-007 | Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md | L3233-L3235 | drv:DOC-0002:strategypack-row | StrategyPack as frozen strategy bundle and BacktestPack row | NORMATIVE |
| LOC-008 | Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md | L3966-L3967 | drv:DOC-0002:proposal-only-feedback | CA-PERFORM proposal-only feedback and no direct rewrite | NORMATIVE |
| LOC-009 | Spartoi-OMOC_SSOT_合冊.md | L685-L685 | ARCH-V810-4-5-METHOD | CA-METHOD architectural home | NORMATIVE |
| LOC-010 | Spartoi-OMOC_SSOT_合冊.md | L2422-L2423 | ARCH-V810-4-5-3-FUSION | ART-METHOD-SPEC and MSC assurance | NORMATIVE |
| LOC-011 | Spartoi-OMOC_SSOT_合冊.md | L1649-L1650 | ARCH-V810-9-2-3-DATA-COMPONENTS | ReferenceDB and RunLedger component mapping | NORMATIVE |
| LOC-012 | Spartoi-OMOC_SSOT_合冊.md | L2929-L2930 | GATE-SAFE-003-EXECUTE_DISABLED | Execute-disabled policy gate | NORMATIVE |
| LOC-013 | Spartoi-OMOC_SSOT_合冊.md | L2335-L2336 | ARCH-V810-4-4-IO | Upstream IO contract pattern for SpecPack/Evidence routing | NORMATIVE |
| LOC-014 | Spartoi-OMOC_LBP_合冊.md | L384-L391 | LBP-CA-ROWS | CA-METHOD / CA-BACKTEST / CA-PERFORM rows and adjacency names | NORMATIVE |
| LOC-015 | Spartoi-OMOC_LBP_合冊.md | L1078-L1078 | ICD-V811-8-1-REGISTRY-TABLE | Schema registry canonical path discipline | NORMATIVE |
| LOC-016 | Spartoi-OMOC_LBP_合冊.md | L4152-L4152 | LBP-ROUTE-OUT-MATRIX | Route-Out matrix doctrine | NORMATIVE |
| LOC-017 | Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊.md | L3595-L3595 | PKGE-R-SCOPE-01 | Package E scope lock: deliver MC4+ and WP families without rewriting other packages | NORMATIVE |
| LOC-018 | Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊.md | L3923-L3930 | PKGE-15CA-ROWS | CA-METHOD / CA-BACKTEST / CA-PERFORM package rows | NORMATIVE |
| LOC-019 | 參考方案合冊.md | L172-L174 | SPLMVP-STRATEGYPACK-XSPACK | StrategyPack / FeedbackPack / A+B shared DB / RunLedger bridge | SUPPORT_BRIDGE |
| LOC-020 | 參考方案合冊.md | L173-L173 | SPLMVP-XSPACK | Pipeline-C / XSPack consume-side bridge | SUPPORT_BRIDGE |
| LOC-021 | Ops RUNBOOK_合冊.md | L2475-L2479 | sec-3-xq-xs | XQ + XS execution chain and XQ-only endpoint context | ROUTE_OUT_EXECUTION |
| LOC-022 | Ops RUNBOOK_合冊.md | L2941-L2943 | ops-s2-1310 | 13:10 no-new-position restraint | ROUTE_OUT_EXECUTION |
| LOC-023 | Ops RUNBOOK_合冊.md | L3460-L3462 | ops-1320-flatten-dualrule | 13:20 flatten / dual-rule reminder | ROUTE_OUT_EXECUTION |
| LOC-024 | Pipeline-B&C資料參考_合冊.md | L82-L90 | P1-ICRU-E2E-DIAGRAM | METHOD→TA→SELECT→TRANSLATE chain | SUPPORT_INTERNAL |
| LOC-025 | 台股實戰映射_合冊.md | L497-L497 | twmap-xf-lite | XF-lite default placement and promotion clock | SUPPORT_INTERNAL |
| LOC-026 | 台股實戰映射_合冊.md | L843-L843 | twmap-weekly-merge | Weekly / RC promotion rule for daily distill pseudocode | SUPPORT_INTERNAL |
| LOC-027 | 台股歷史資料庫實作參考_合冊.md | L21-L26 | histdb-doc-toc | ICT-OBI and 5s→1m bootstrap references | SUPPORT_INTERNAL |
| LOC-028 | SEM8-ICT-TW_重構升級藍圖_v1.2.1-r1.md | L15-L15 | authority-stack-v2 | SEM8 as audit shell / bind shell / route-out shell only | SUPPORT_INTERNAL |
| LOC-029 | SEM8-ICT-TW_重構升級藍圖_v1.2.1-r1.md | L309-L328 | execution-annex | Execution annex supplies field skeleton only, not HOW | SUPPORT_INTERNAL |
| LOC-030 | CA-METHOD_MC4&WP_重構升級藍圖_v2.md | L117-L118 | v2-F003 | MethodSpec schema vs instance split | OWNER_PATCH |
| LOC-031 | CA-METHOD_MC4&WP_重構升級藍圖_v2.md | L239-L253 | v2-methodpack-tree | Policy and consumer artifact set in MethodPack tree | OWNER_PATCH |
| LOC-032 | CA-METHOD_MC4&WP_重構升級藍圖_v2.md | L306-L312 | v2-consumer-required-refs | ta/select/translate/watch/execute consumer required refs table | OWNER_PATCH |
| LOC-033 | CA-METHOD_MC4&WP_重構升級藍圖_v2.md | L320-L324 | v2-policy-bundle | Ops/TW policy bundle artifact list | OWNER_PATCH |
| LOC-034 | CA-METHOD_MC4_WP_升級方案.md | L64-L65 | oldplan-methodpack | MethodPack as formal artifact class with lineage fields | OWNER_PATCH |
| LOC-035 | CA-METHOD_MC4_WP_升級方案.md | L210-L210 | oldplan-wp01-outputs | WP-01 outputs include event_gate_registry.json and time_window_policy.json | OWNER_PATCH |
| LOC-036 | CA-METHOD_MC4_WP_升級方案.md | L236-L239 | oldplan-consumer-views | ta/select/translate consumer views and schema exports | OWNER_PATCH |
| LOC-037 | MC4+_WP-M_WP-RB-WI_升級藍圖_v1.1.0-r2.md | L230-L235 | mc4plus-sourcepack-spec | sourcepack four-file regime | GLOBAL_PATCH |
| LOC-038 | MC4+_WP-M_WP-RB-WI_升級藍圖_v1.1.0-r2.md | L243-L245 | mc4plus-books-def | MC4+ / WP-M / WP-RB-WI / WP-FULL definitions | GLOBAL_PATCH |
| LOC-039 | MC4+_WP-M_WP-RB-WI_升級藍圖_v1.1.0-r2.md | L382-L383 | mc4plus-required-source | renderer REQUIRED_SOURCE and generated outputs discipline | GLOBAL_PATCH |
| LOC-040 | Pipeline-B_MC4+_WP-M_WP-RB-WI_升級藍圖.md | L90-L100 | pb-interface-core | pipeline_a_b_interface_closure_matrix and xq_xs_projection_manifest in integrated contract package | PIPELINE_PATCH |
| LOC-041 | Pipeline-B_MC4+_WP-M_WP-RB-WI_升級藍圖.md | L165-L165 | pb-bc-handoff | b_c_handoff_profile_matrix materialization | PIPELINE_PATCH |
| LOC-042 | Pipeline-B_MC4+_WP-M_WP-RB-WI_升級藍圖.md | L263-L265 | pb-method-view-policy | translate_consumer_view.json and tw_guardrail_policy.json in repo tree | PIPELINE_PATCH |
| LOC-043 | Spartoi-OMOC_SubP1-LITE+MVP_CA-METHOD_MC4+_合冊_AUDIT.md | L179-L295 | audit-F001-F008 | Audit findings F-001..F-008 that this patch resolves | AUDIT_INPUT |

# Upstream Absorption Ledger / Closure Matrix / Replacement Matrix

<a id="upstream-absorption-ledger"></a>

## Closure Matrix
| req_id | requirement | status | landed section | exact basis | materialized proof |
| --- | --- | --- | --- | --- | --- |
| REQ-001 | 固定 authority order + 正文合冊內部子序位 | CLOSED | Authority Stack | LOC-001, LOC-003, LOC-009 | 主書 + exact_locator_registry.tsv |
| REQ-002 | CA-METHOD 是方法權威 owner，不是 runtime owner | CLOSED | Boundary / SS_SRS | LOC-003, LOC-009, LOC-010 | 主書 + forbidden_actions_matrix.tsv |
| REQ-003 | canonical outputs 擴展到 MethodSpec / MethodPack / scenario_binding / primitive_coverage_map / mapping_card / publish-only contracts | CLOSED | Artifact Constitution | LOC-002, LOC-030, LOC-031, LOC-034 | method/specs/* + method/pack/MethodPack/* |
| REQ-004 | FeedbackPack remains proposal-only | CLOSED | Interface Closure / SS_SRS | LOC-008, LOC-019 | forbidden_actions_matrix.tsv |
| REQ-005 | Pipeline-C remains consume-only and may not rewrite method/backtest params | CLOSED | Interface Closure / SS_SRS | LOC-020, LOC-024 | forbidden_actions_matrix.tsv + consumer views |
| REQ-006 | XQ remains sole execution endpoint; local no unattended execution claim | CLOSED | Boundary / Gate & Release Guard | LOC-012, LOC-021, LOC-022, LOC-023 | execute_handoff_stub.json + execution_restraints.json |
| REQ-007 | ReferenceDB / RunLedger central-only and downstream may not fork schema | CLOSED | Artifact Constitution / SS_ARCH | LOC-002, LOC-011 | main book + policy notes |
| REQ-008 | sourcepack four-file regime must be materialized | CLOSED | Sourcepack | LOC-037, LOC-038, LOC-039 | sourcepack/meta.json + CA-CORE.md + CA-MC4.md + CA-WP.md + generated books |
| REQ-009 | policy artifacts + consumer contracts must be absorbed as real files | CLOSED | Artifact Constitution | LOC-031, LOC-032, LOC-033, LOC-035, LOC-036 | method/pack/MethodPack/policy/* + consumers/* |
| REQ-010 | interface closure must be matrix-level not slogan-level | CLOSED | Interface Closure | LOC-032, LOC-040, LOC-041, LOC-042 | consumer_required_refs_matrix.tsv + adjacency_summary_matrix.tsv + degrade_fallback_matrix.tsv |
| REQ-011 | legacy removed/superseded/traceability-only must be mechanically listed | CLOSED | Replacement / Legacy registers | LOC-043 | legacy_disposition_matrix.tsv + removed/superseded/traceability registers |
| REQ-012 | package_validation must self-prove zip/checksum | CLOSED | Packaging Truth | LOC-043 | package_validation.json + zip_integrity_report.txt |
| REQ-013 | repo/runtime/release truth unprovable here must remain fail-closed | CLOSED_WITH_GUARDS | Gate / TT / Final Verdicts | LOC-001, LOC-012, LOC-021 | TT register + final verdicts |

## Replacement Matrix
| legacy_id | artifact/rule | disposition | replacement | future_status | note |
| --- | --- | --- | --- | --- | --- |
| LEG-001 | Spartoi-OMOC_SubP1-LITE+MVP_CA-METHOD_MC4+_合冊.md (r1) | SUPERSEDED | This r2 patched book | Traceability only | prior patched delivery |
| LEG-002 | Spartoi-OMOC_SubP1-LITE+MVP_CA-METHOD_MC4合冊.md | REPLACED | This r2 patched book | Traceability only | old MC4 book |
| LEG-003 | CA-METHOD_MC4_WP_升級方案.md | REPLACED | This r2 patched book + registers | Traceability only | old upgrade plan |
| LEG-004 | CA-METHOD_MC4&WP_重構升級藍圖_v2.md | ABSORBED | Patch closure + artifact materialization | Traceability only | v2 blueprint |
| LEG-005 | story_card.json as external final output | REMOVED_FROM_CANONICAL_SURFACE | story_seed.json internal draft only | Compatibility alias only | boundary hardening |
| LEG-006 | risk_card.json as external final output | REMOVED_FROM_CANONICAL_SURFACE | risk_seed.json internal draft only | Compatibility alias only | boundary hardening |
| LEG-007 | FeedbackPack direct write-back | REMOVED | proposal-only contract | Forbidden | must route through backtest/adjudication |
| LEG-008 | Pipeline-C rewrite of MethodCard/backtest params | REMOVED | consume-only contract | Forbidden | fixed-version consume only |

## Legacy Disposition Matrix
| legacy source | disposition | replacement / register | normative now? | trace retained? | mechanically listed? |
| --- | --- | --- | --- | --- | --- |
| Spartoi-OMOC_SubP1-LITE+MVP_CA-METHOD_MC4+_合冊.md (r1) | superseded | this r2 patched main book | yes | no | yes |
| Spartoi-OMOC_SubP1-LITE+MVP_CA-METHOD_MC4合冊.md | replaced | this r2 patched main book | yes | no | yes |
| CA-METHOD_MC4_WP_升級方案.md | replaced | this r2 patched main book | yes | no | yes |
| CA-METHOD_MC4&WP_重構升級藍圖_v2.md | absorbed | registers + artifact set + sourcepack rules | yes | no | yes |
| legacy Mini-P1 / skeleton families | traceability_only | traceability_only_register.tsv | no | yes | no |
| story_card.json external final role | removed | story_seed.json internal draft only | no | yes | n/a |
| risk_card.json external final role | removed | risk_seed.json internal draft only | no | yes | n/a |

# CA-METHOD 定位、邊界、禁止面、adjacency summary

<a id="ca-method-boundary"></a>

## CA-METHOD 的正式法位
CA-METHOD 是：
- 方法權威與方法交付 owner
- publish-only TW mapping contract owner
- StrategyPack draft / publish-side contract owner
- publish-only consumer contract publisher
- proposal-only feedback ingress / egress discipline owner

CA-METHOD 不是：
- CA-TA runtime 分析器
- CA-SELECT runtime ranking 引擎
- CA-TRANSLATE runtime
- CA-WATCH runtime monitoring engine
- CA-EXECUTE 下單引擎
- 本地 unattended order 系統

## External canonical outputs（固定）
- `MethodCard.md`
- `MethodCard.json`
- `MethodSpec.json`
- `MethodPack/`
- `primitive_coverage_map.tsv`
- `scenario_binding.json`
- `mapping_card.json`
- `xq_xs_projection_manifest.json`
- `semantic_invariants.json`
- `publish_only_consumer_contracts/`
- `publish_only_tw_mapping_contracts/`
- `StrategyPack_draft/`

## internal draft only（固定）
- `story_seed.json`
- `risk_seed.json`

## legacy alias only（不得再作 external canonical）
- `story_card.json`
- `risk_card.json`

## adjacency summary（摘要矩陣）
| adjacent / lane | relation | required refs | owner ceiling / restriction | handoff artifact |
| --- | --- | --- | --- | --- |
| Pipeline-A / CA-DSL | upstream | SpecPack; provenance_ptr; claim/evidence chain; market_profile_ref | no direct CA-CORPUS→CA-DSL jump; no METHOD-side rewrite of upstream owner law | CA-METHOD input closure |
| CA-BACKTEST | peer downstream | MethodCard; MethodSpec; MethodPack; primitive_coverage_map.tsv; scenario_binding.json; mapping_card.json | BACKTEST owns backtest runtime and hygiene validation | StrategyPack draft lane |
| CA-PERFORM | peer downstream | fixed-version StrategyPack; BacktestPack; performance evidence | proposal-only only; no direct method finalization | FeedbackPack |
| CA-TA | downstream consumer | ta_consumer_view.json + required refs | consume-only; TA owns final story/analysis outputs | signals/story artifacts |
| CA-SELECT | downstream consumer | select_consumer_view.json + required refs | consume-only; SELECT owns top-k and reasons | candidate artifacts |
| CA-TRANSLATE | downstream consumer | translate_consumer_view.json; xq_xs_projection_manifest.json; semantic_invariants.json | consume-only/publish-only split; METHOD not translate runtime owner | XS/XSAT artifacts |
| CA-WATCH | downstream consumer | watch_consumer_view.json + policy bundle | watch-only; no order placement | alerts / watch events |
| CA-EXECUTE / XQ | execution endpoint | execute_handoff_stub.json; XQ projection manifest | XQ sole execution terminal; local system no unattended order claim | execution only via XQ |
| A+B DB | shared infra | ReferenceDB; RunLedger | central-only schema; downstream consume, no fork | central data backbone |

# Pipeline-A / Pipeline-B / Pipeline-C / 五子系統 / A+B DB 接口閉合

<a id="interface-closure"></a>

## Interface Closure Rules
1. 不鎖鄰居整本書版本；只鎖 `stable subsystem id / artifact class / required refs / gate names / route-out rules / handoff contracts`。
2. `CA-CORPUS -> CA-DSL direct jump` 仍視為 forbidden；A→B 必須經由合法 `SpecPack / provenance_ptr / evidence chain / market_profile_ref`。
3. METHOD 向下游交付的不是 runtime，而是 **publish-only/consume-only contract files**。
4. FeedbackPack 只能 proposal-only；不得直接回寫 MethodCard/MethodSpec 定案。
5. Pipeline-C 只能 consume 固定版本 `SpecPack + StrategyPack`；不得改方法卡，不得改回測參數。
6. XQ 為唯一實際下單端；本地只可產生 `watch_event_id / translate_bundle_ref / xq_script_ref / approval_trace_ref` 等交接 artifacts。

## Consumer Required Refs Matrix
| consumer view | required refs | mode | boundary note |
| --- | --- | --- | --- |
| ta_consumer_view.json | story_seed.json; risk_seed.json; MethodSpec.json; policy/time_window_policy.json; policy/event_gate_registry.json | consume-only | TA owns final analysis/story outputs |
| select_consumer_view.json | MethodSpec.json; policy/board_rule_matrix.json; policy/event_gate_registry.json; contracts/topk.schema.json; contracts/reason_chain.schema.json | consume-only | SELECT owns candidate ranking and reasons |
| translate_consumer_view.json | mapping_card.json; xq_xs_projection_manifest.json; semantic_invariants.json | publish-only | TRANSLATE owns runtime and TVE execution |
| watch_consumer_view.json | policy/flip_criteria_policy.json; policy/event_gate_registry.json; policy/time_window_policy.json; policy/execution_restraints.json | watch-only | WATCH monitors triggers; no order placement |
| execute_handoff_stub.json | policy/flip_criteria_policy.json; policy/board_rule_matrix.json; policy/event_gate_registry.json; policy/time_window_policy.json; xq_xs_projection_manifest.json | handoff-only | XQ remains sole execution terminal |

## Forbidden Actions Matrix
| subject | forbidden action | allowed? | route-out / rationale |
| --- | --- | --- | --- |
| CA-METHOD | Implement TA runtime analyzer | No | route-out to CA-TA owner |
| CA-METHOD | Implement SELECT runtime ranking | No | route-out to CA-SELECT owner |
| CA-METHOD | Implement TRANSLATE runtime | No | route-out to CA-TRANSLATE owner |
| CA-METHOD | Implement WATCH runtime engine | No | route-out to CA-WATCH owner |
| CA-METHOD | Implement EXECUTE order engine | No | XQ sole order endpoint |
| FeedbackPack | Directly finalize MethodCard/MethodSpec | No | proposal-only; must re-enter adjudication/backtest lane |
| Pipeline-C | Rewrite MethodCard or backtest params | No | consume-only fixed-version contract |
| Local system | Claim unattended order execution | No | execute disabled without XQ parity + repo proof |

## Degrade / Fallback Matrix
| missing/invalid condition | state | current handling | reopen / proof needed |
| --- | --- | --- | --- |
| missing SpecPack or evidence chain | BLOCK_PUBLISH | method publish lane blocked | SpecPack + provenance/evidence chain |
| missing market_profile_ref / ReferenceDB refs | EXECUTE_DISABLED | document may stay design-ready only | validated reference refs |
| missing TW microstructure refs | WATCH_ONLY | mapping may remain support-only | tw_guardrail_policy + venue refs |
| missing route-out / handoff contract | BLOCK_CONSUMER_HANDOFF | do not emit consumer-ready pack | route_out_registry + handoff matrix |
| missing threshold owner / validator | CONFIGURE_REQUIRED | no authorized threshold claim | owner threshold registry + validator evidence |
| missing XQ parity evidence | EXECUTION_FAIL_CLOSED | no runtime parity claim | xq_parity_report + replay evidence |
| daily distill change without weekly/RC promotion | SANDBOX_ONLY | remain XF-lite weight layer | promotion verdict with RC evidence |
| histdb bootstrap references only, no execution evidence | TEMP_CLOSED | support-only bootstrap retained | download/transform logs + manifest |

## Five-subsystem / downstream closure note
- TA / SELECT / TRANSLATE / WATCH / EXECUTE 各有獨立 consume 或 handoff contract。
- METHOD 只交付欄位骨架與 publish-only contracts，不把下游 owner law 收編進來。
- `consumer_required_refs_matrix.tsv / forbidden_actions_matrix.tsv / degrade_fallback_matrix.tsv / adjacency_summary_matrix.tsv` 共同構成接口閉合的 machine-auditable 最小集合。

# Artifact Constitution / Sourcepack / MethodPack / Policy Bundle / Consumer Views

<a id="artifact-constitution"></a>

## Sourcepack 四檔制度（已物化）
| file | purpose | hard rule |
| --- | --- | --- |
| `sourcepack/meta.json` | meta / truth / verdict / route-out / minimal lane | one sourcepack per CA |
| `sourcepack/CA-CORE.md` | shared core truth and common doctrine | no重复大段 MC4/WP 正文 |
| `sourcepack/CA-MC4.md` | subsystem constitution / contracts / MC4+ fenced body | no step-by-step HOW |
| `sourcepack/CA-WP.md` | WP-MASTER / RUNBOOK_WI source | HOW only as route-out pointers |

## Rendered Books（已物化）
- `generated/Spartoi-OMOC_SubP1-LITE+MVP_CA-METHOD_WP-M.md`
- `generated/Spartoi-OMOC_SubP1-LITE+MVP_CA-METHOD_WP-RB-WI.md`
- `generated/Spartoi-OMOC_SubP1-LITE+MVP_CA-METHOD_WP-FULL.md`

## MethodPack / specs / contracts tree（已物化）
```text
method/
├─ specs/
│  ├─ MethodSpec.schema.json
│  ├─ ConsumerView.schema.json
│  └─ PolicyBundle.schema.json
└─ pack/
   └─ MethodPack/
      ├─ MethodSpec.json
      ├─ primitive_coverage_map.tsv
      ├─ scenario_binding.json
      ├─ policy_bundle.json
      ├─ mapping_card.json
      ├─ xq_xs_projection_manifest.json
      ├─ semantic_invariants.json
      ├─ consumers/
      │  ├─ ta_consumer_view.json
      │  ├─ select_consumer_view.json
      │  ├─ translate_consumer_view.json
      │  ├─ watch_consumer_view.json
      │  └─ execute_handoff_stub.json
      ├─ policy/
      │  ├─ event_gate_registry.json
      │  ├─ board_rule_matrix.json
      │  ├─ time_window_policy.json
      │  ├─ flip_criteria_policy.json
      │  └─ execution_restraints.json
      └─ docs/
         ├─ RB_CROSSWALK.tsv
         └─ SEM8_CROSSWALK.tsv
```

## Policy / consumer / schema artifacts（摘要）
| artifact | purpose | path |
| --- | --- | --- |
| event_gate_registry.json | event keys and gate references usable by TA/WATCH/EXECUTE handoff | policy/event_gate_registry.json |
| board_rule_matrix.json | venue/board rule matrix for TSE/OTC and execution restrictions | policy/board_rule_matrix.json |
| time_window_policy.json | pre/open/mid/close windows and no-new-position windows | policy/time_window_policy.json |
| flip_criteria_policy.json | flip criteria and invalidation references | policy/flip_criteria_policy.json |
| execution_restraints.json | 13:10/13:20 and execute-disabled / HITL / XQ restraints | policy/execution_restraints.json |
| xq_xs_projection_manifest.json | publish-only projection contract from METHOD mapping to XQ/XS | xq_xs_projection_manifest.json |
| semantic_invariants.json | invariants that TRANSLATE/WATCH/EXECUTE must not violate | semantic_invariants.json |
| ta_consumer_view.json | TA consume-only required refs and notes | consumers/ta_consumer_view.json |
| select_consumer_view.json | SELECT consume-only required refs and notes | consumers/select_consumer_view.json |
| translate_consumer_view.json | TRANSLATE publish-only required refs and notes | consumers/translate_consumer_view.json |
| watch_consumer_view.json | WATCH monitor semantics and required refs | consumers/watch_consumer_view.json |
| execute_handoff_stub.json | HITL/XQ handoff stub and required refs | consumers/execute_handoff_stub.json |
| MethodSpec.schema.json | schema/instance split for MethodSpec | ../../specs/MethodSpec.schema.json |

## MethodSpec schema vs instance 裁決
- **Schema**：`method/specs/MethodSpec.schema.json`
- **Instance**：`method/pack/MethodPack/MethodSpec.json`
- 兩者法律角色不同，禁止再以同名同位混用。

## StrategyPack / FeedbackPack 契約
- `StrategyPack`：immutable、fixed-version consume、manifest/hash/PR-tag handoff、不得 in-place overwrite。
- `FeedbackPack`：proposal-only，可包含 `performance_report / top3_proposals / retest_linkage / parity_or_missing_inputs_statement / op12_trace_report / journal_replay_report / weekly_rollup / monthly_reset_review`，不得直接 finalize MethodCard/MethodSpec。

## TW mapping and HistDB absorption
- `XF-lite` 預設保留在方法層；高頻日更蒸餾先進 sandbox / weight layer。
- 僅週批或 RC 才可升格 promotion lane。
- `ICT-OBI / 5s→1m` 僅作 bootstrap support；未實跑前不得宣稱 runtime-ready。

# Gate / Threshold / Degrade / Block / TT / Release Guard 規則

<a id="gate-threshold"></a>

## Gate Rules
- Gate 遺漏、alias 未解析、證據鏈缺失、required refs 缺失：一律 fail-closed。
- 未授權數值：不得自創；只能 `CONFIGURE_REQUIRED / TEMP_CLOSED`。
- 本書只鎖 gate 名稱與 handoff keys，不自造 package-B gate registry 替代品。

## Threshold Rules
- 本書不新造 threshold constitution。
- 本書只固定 threshold governance：
  - threshold must have owner
  - threshold must have direct source
  - threshold must have validator and evidence hook
  - 否則不得宣稱 authorized blocking threshold already exists

## Release Guard
release lane block conditions:
- repo required checks unproven
- release_guard / package reality proof absent
- artifact attestation truth unproven
- XQ parity/runtime truth absent
- package truth any one mandatory item missing

## TT / TEMP_CLOSED 原則
- 任何無法在本回合以內部權威 + uploaded support source 補齊的缺口，都進 TT。
- 每一筆 TT 都必須寫出 `current_handling / reopen_criteria / minimal_evidence_required / class`。

# Tooling Adjudication（native > minimal config > thin script）

<a id="tooling-adjudication"></a>

## 固定選型序位
1. 現成工具原生能力
2. 現成工具 + 極少配置
3. 自寫薄腳本（只在前兩者不足時）
4. 禁止自造 schema / orchestration / release / evidence frameworks

## 本版落地裁決
- **Schema / JSON shape**：本 package 只物化最小 JSON Schema 與 sample instance；正式 schema owner 仍是 Package-B。
- **Package generation**：本 package 只做本地 materialization、checksums、zip、self-validation；不冒充 Package-D/E 真實工廠或 release engine。
- **Sourcepack rendering**：本 package 以最小 render materialization 物化 `WP-M / WP-RB-WI / WP-FULL`，不新造框架。
- **Runtime/provenance**：仍 route-out 至 repo owner；本環境不宣稱已跑通 required checks / attestations / parity。

## One-Path minimal implementation lane
1. 產出 `MethodSpec.schema.json + MethodSpec.json + MethodPack/`。
2. 產出 `policy/*.json + consumers/*.json + primitive_coverage_map.tsv + scenario_binding.json`。
3. 交給 `CA-BACKTEST` 形成 `BacktestPack / StrategyPack_draft`。
4. `CA-PERFORM` 只回 proposal-only `FeedbackPack`。
5. 若任一 required ref / parity / evidence 缺失，停在 `TEMP_CLOSED / EXECUTION_FAIL_CLOSED / BLOCK_RELEASE`。

# Packaging Truth / Manifest / Checksums / Build / Download package truth

<a id="packaging-truth"></a>

## 本次最低交付實體
- 主書：`Spartoi-OMOC_SubP1-LITE+MVP_CA-METHOD_MC4+_合冊.md`
- 打包：`Spartoi-OMOC_SubP1-LITE+MVP_CA-METHOD_MC4+_合冊.zip`

## 已物化 sidecars / registers / contracts
- `MANIFEST.json`
- `CHECKSUMS.sha256`
- `BUILD.md`
- `machine_summary.json`
- `artifact_registry.json`
- `route_out_registry.json`
- `source_inputs_manifest.tsv`
- `exact_locator_registry.tsv`
- `upstream_closure_ledger.tsv`
- `replacement_ledger.tsv`
- `patch_resolution_ledger.tsv`
- `test_tracking_list.tsv`
- `package_validation.json`
- `consumer_required_refs_matrix.tsv`
- `forbidden_actions_matrix.tsv`
- `degrade_fallback_matrix.tsv`
- `adjacency_summary_matrix.tsv`
- `legacy_disposition_matrix.tsv`
- `removed_register.tsv`
- `superseded_register.tsv`
- `traceability_only_register.tsv`
- `sourcepack/*`
- `generated/*`
- `method/specs/*`
- `method/pack/MethodPack/**/*`

## package truth 定義
- file exists
- checksum recomputable
- zip members complete
- fence blocks present
- exact locator registry contains no wildcard / n/a / etc rows
- package_validation.json writes back checksum + zip verification results
- no fake release-ready claim

## Download package truth
- sandbox 下載點代表 **本地生成成功且可下載**。
- sandbox 下載點 **不代表** repo truth / runtime truth / release truth。

# Self-Audit / Issue Closure / ChangeLog

<a id="self-audit"></a>

## Self-Audit Checklist
- [x] 全部指定文檔家族已納入 Inputs Manifest
- [x] 先前 r1 主書與當前 AUDIT 已納入 patch scope
- [x] exact locator registry 已重建且無 non-exact row
- [x] sourcepack 四檔制度已物化
- [x] WP-M / WP-RB-WI / WP-FULL 已 render materialize
- [x] MethodSpec.schema.json / policy bundle / consumer views 已物化
- [x] interface closure 已 matrix 化
- [x] legacy removed/superseded/traceability-only 已獨立 sidecar 化
- [x] package_validation 已寫回 checksum / zip / exact-locator strictness
- [x] 任何未證成的 execution/release truths 仍維持 fail-closed

## Issue Closure Summary
- `F-001`：exact locator registry rebuilt
- `F-002`：sourcepack four-file regime materialized
- `F-003`：policy artifacts and consumer contracts materialized
- `F-004`：interface closure matrices materialized
- `F-005`：legacy registers materialized
- `F-006`：package self-validation strengthened
- `F-007`：one-path minimal implementation lane made explicit
- `F-008`：main book expanded to restore engineering density

## ChangeLog
- **r2-patched**
  - replaces prior r1 main book with audit-closed artifact set
  - adds sourcepack, generated books, method specs, policy/consumer artifacts
  - rebuilds exact locators and package validation
  - adds legacy machine registers and interface matrices

# Test Tracking List

<a id="test-tracking-list"></a>

| tt_id | issue | state | current handling | reopen criteria | minimal evidence required | class |
| --- | --- | --- | --- | --- | --- | --- |
| TT-CAMETHOD-0001 | MSC numeric scoring threshold not directly authorized in uploaded higher authority | TEMP_CLOSED | MSC may enforce schema/completeness/consistency only; numeric threshold remains config-protected | authorized threshold registry + validator evidence + repo proof | threshold registry entry + validator log + owner source | RELEASE_GUARD |
| TT-CAMETHOD-0002 | repo required checks / branch protection / merge queue not observable here | EXECUTION_FAIL_CLOSED | delivery package exists; release lane blocked | repo-side proof exported and verified | workflow run ids + required checks logs + policy export | RELEASE_GUARD |
| TT-CAMETHOD-0003 | artifact attestations depend on repo plan/permissions/visibility | TEMP_CLOSED | design lane only; no current repo attestation truth claim | repo-side attestation verification succeeds | attestation verify log + repo policy proof | RELEASE_GUARD |
| TT-CAMETHOD-0004 | XQ parity / runtime parity not provable in this environment | EXECUTION_FAIL_CLOSED | XQ remains sole order endpoint; local system only prepares artifacts | observed parity report and capability profile | xq_parity_report.json + replay evidence + sign-off | EXECUTION_GUARD |
| TT-CAMETHOD-0005 | legacy Mini-P1 / old skeleton lineage not directly uploaded | TEMP_CLOSED | kept in traceability registers only | direct legacy files uploaded and indexed | canonical legacy file + locator registry update | TRACEABILITY |
| TT-CAMETHOD-0006 | daily distill promotion beyond XF-lite requires operational governance | TEMP_CLOSED | default = sandbox/weight-layer only; weekly batch or RC required | promotion policy evidenced and accepted | promotion_verdict + RC evidence | DATA_GOVERNANCE |
| TT-CAMETHOD-0007 | histdb / ICT-OBI bootstrap not executed here | TEMP_CLOSED | support-only bootstrap patterns retained; no runtime success claim | bootstrap artifacts produced and checked | download log + transform log + manifest | EXECUTION_GUARD |
| TT-CAMETHOD-0008 | repo-side validator / release guard / package truth engine not executed here | EXECUTION_FAIL_CLOSED | local packaging validation only | owner engine run observed | validator logs + release guard outputs | RELEASE_GUARD |

# Final Verdicts（Document / Execution / Release / Delivery）

<a id="final-verdicts"></a>

| lane | verdict | meaning |
| --- | --- | --- |
| Document | PASS_WITH_GUARDS | 條款、邊界、接口、sourcepack、policy/consumer artifacts、legacy registers、package truth 已交付 |
| Execution | FAIL_CLOSED | 缺 repo/runtime truth；不得宣稱已可直接執行或 parity 成立 |
| Release | BLOCK_RELEASE | 缺 required checks / release guard / provenance / attestation / runtime proof |
| Delivery | PASS | 主書與 ZIP 已生成，可下載 |

## Release blockers（固定）
- repo-side required checks 未被本環境直接證成
- branch protection / merge queue / permissions truth 未被本環境直接證成
- artifact attestations 未完成 repo truth 驗證
- XQ parity / runtime parity 未被本環境直接證成
- owner-run validator / release engine 未在本環境觀測到

# Fenced documents

<a id="fenced-documents"></a>

<!-- FENCE:SS_README:BEGIN -->
# SS_README

## 1. 定位
CA-METHOD 是方法權威與方法交付 owner；它負責 MethodSpec / MethodPack / scenario_binding / primitive_coverage_map / mapping_card / publish-only consumer contracts / publish-only TW mapping contracts / StrategyPack_draft，並對下游只發布可 consume 的 method-facing artifacts。

## 2. 快速使用路徑
1. 讀 `Authority Stack`
2. 讀 `Exact Locator Discipline`
3. 讀 `Interface Closure`
4. 讀 `Artifact Constitution`
5. 若要查 operator steps，一律 route-out 到 Ops RUNBOOK；本書不提供 step-by-step HOW

## 3. Bundle Map
- SS_README：導讀 / 邊界 / anti-miss / anti-confusion
- SS_SRS：要求 / 契約 / gate / TT / release guard
- SS_ARCH：元件 / 資料流 / adjacency / tooling legal position / sourcepack discipline
- SS_DELIVER：檔案樹 / sidecars / checksums / zip / package validation / rendered books
- SS_LBP Annex：複雜 crosswalk / route-out / owner ceiling 補充

## 4. 強制提醒
- XQ 是唯一實際下單端
- FeedbackPack 僅 proposal-only
- Pipeline-C 僅 consume-only
- 缺 evidence / 缺 parity / 缺 route-out / 缺 handoff 時，必須 degrade 或 block
<!-- FENCE:SS_README:END -->

<!-- FENCE:SS_SRS:BEGIN -->
# SS_SRS

## 1. Requirement Core
- CA-METHOD external canonical outputs 已固定，不可再退回 MethodCard-only。
- `MethodSpec.schema.json` 與 `MethodSpec.json` 已明確分位；禁止 schema/instance 同名同位混用。
- `event_gate_registry.json / board_rule_matrix.json / time_window_policy.json / flip_criteria_policy.json / execution_restraints.json` 為 METHOD-side policy bundle 的最低集合。
- `ta_consumer_view.json / select_consumer_view.json / translate_consumer_view.json / watch_consumer_view.json / execute_handoff_stub.json` 為 METHOD-side consumer / handoff contract 的最低集合。
- CA-METHOD 不得越權進入 TA/SELECT/TRANSLATE/WATCH/EXECUTE runtime。
- Pipeline-C 不得改寫 MethodCard / MethodSpec / backtest params。
- FeedbackPack 不得直接 finalize 方法卡。
- XQ 唯一下單端與本地無 unattended 下單宣稱，為硬邊界。

## 2. Requirement-level closure
- 見本書 `Closure Matrix`
- 見 `upstream_closure_ledger.tsv`
- 見 `consumer_required_refs_matrix.tsv`
- 見 `forbidden_actions_matrix.tsv`

## 3. Acceptance semantics
- 所有 MUST 類條款需有 exact locator
- 所有 release 類主張需有 validator + release guard + repo proof
- 所有 runtime 類主張需有 parity report + capability profile + replay evidence
- 所有 policy / consumer contracts 需在 zip 內有實體檔，不能只停留在命名宣告

## 4. Gate / TT / Block semantics
- 無 direct source / exact locator → 不成立
- 無 authorized threshold → CONFIGURE_REQUIRED / TEMP_CLOSED
- 無 repo truth → EXECUTION_FAIL_CLOSED 或 RELEASE_GUARD
- 無 XQ parity → EXECUTION_FAIL_CLOSED
- 無 policy / consumer artifact → Document lane fail
<!-- FENCE:SS_SRS:END -->

<!-- FENCE:SS_ARCH:BEGIN -->
# SS_ARCH

## 1. 元件與資料流（owner-safe）
`Pipeline-A refs -> CA-METHOD -> CA-BACKTEST -> StrategyPack_draft -> (Pipeline-C consume-only / CA-PERFORM proposal-only)`

## 2. Interface closure
- 上游只提供 SpecPack / provenance_ptr / evidence chain / market_profile_ref
- CA-METHOD 向下只發布 method-facing artifacts 與 publish-only contracts
- Pipeline-C 只 consume，不 rewrite
- CA-PERFORM 只產 proposal-only FeedbackPack
- WATCH 只監控 event/time/flip semantics，不擁有 execute runtime
- EXECUTE 僅保留 XQ handoff stub，不在本地宣稱 order engine

## 3. Data Backbone
- ReferenceDB central-only
- RunLedger central-only
- vector index / embeddings are cache, rebuildable, not SSOT
- daily distill promotion follows XF-lite → weekly/RC promotion clock

## 4. Sourcepack and rendered books
- sourcepack four-file regime is materialized locally in this package
- rendered `WP-M / WP-RB-WI / WP-FULL` exist as local generated artifacts
- this materialization proves package shape only, not repo-side factory truth

## 5. Tooling legal position
- DevContainer / workflow / validator / release guard 只 route-out 至對應 owner
- 本書只保留 legal position、stopline、required handoff keys
- support-only maturity sanity checks 不等於已落地
<!-- FENCE:SS_ARCH:END -->

<!-- FENCE:SS_DELIVER:BEGIN -->
# SS_DELIVER

## 1. 產物樹（本次 package）
- main markdown
- manifests / checksums / build / machine summary
- closure / replacement / patch / TT ledgers
- interface closure matrices
- legacy registers
- sourcepack four files
- generated books
- method specs / MethodPack / policy bundle / consumer views
- package validation + zip integrity report
- zip

## 2. filename truth
- 主書：`Spartoi-OMOC_SubP1-LITE+MVP_CA-METHOD_MC4+_合冊.md`
- zip：`Spartoi-OMOC_SubP1-LITE+MVP_CA-METHOD_MC4+_合冊.zip`

## 3. package validation truth
- fence present
- required files present
- checksums recomputable
- zip includes mandatory files
- exact locator registry strict
- no fake release-ready language inserted as fact

## 4. truth split reminder
下載可用 ≠ release ready
<!-- FENCE:SS_DELIVER:END -->

<!-- FENCE:SS_LBP_ANNEX:BEGIN -->
# SS_LBP Annex

## 1. Route-Out Register
| topic | route-out target | owner | reason |
| --- | --- | --- | --- |
| schema / evidence schema / TT state machine / drift governance | Package-B / Control Plane | Package-B | Schema and gate registry owner |
| devcontainer / workflow / checks manifest / adapters | Package-D / Factory | Package-D | Factory and CI materialization owner |
| manifest / validator / release_guard / package truth | Package-E / Delivery Pack | Package-E | Package truth and release guard owner |
| step-by-step operator HOW / CLI / YAML / click path / time-of-day workflow | Ops RUNBOOK_合冊 | Ops | Route-out for execution HOW only |
| TA runtime analyzer / ranking / translate runtime / watch runtime / execute runtime | Adjacent subsystem owners | Adjacent owners | Outside CA-METHOD legal boundary |

## 2. Crosswalk notes
- LBP-A/B/C/D/E 只提供 route-out ceiling、contract hook、evidence/legal boundary；不在本書重寫其 owner-body。
- SEM8 只作 audit shell / bind shell / route-out shell。
- Ops / 2022 ICT / 台股映射 / histdb 只作 domain semantics、欄位骨架、流程 route-out、bootstrap support。

## 3. Owner ceiling
- 本 annex 不新增 HOW、不新增 runtime law、不新增 release law。
- 本 annex 只補複雜 contract crosswalk 與合法邊界，不把 MC4+ 膨脹成無邊界 MC5。
<!-- FENCE:SS_LBP_ANNEX:END -->
