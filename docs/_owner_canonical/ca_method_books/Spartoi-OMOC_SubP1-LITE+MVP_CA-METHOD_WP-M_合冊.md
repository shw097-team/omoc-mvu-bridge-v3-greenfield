# 《Spartoi-OMOC_SubP1-LITE+MVP_CA-METHOD_WP-M_合冊》

<a id="cover-card"></a>
## 1. Cover Card / Document Identity / Verdict Split
- external_name: `Spartoi-OMOC_SubP1-LITE+MVP_CA-METHOD_WP-M_合冊`
- internal_short_name: `CAMETHOD_WPM`
- version: `v2026.03.30-r2-patched`
- release_date: `2026-03-30 (Asia/Taipei)`
- bundle_id: `BUNDLE-CAMETHOD-WPM-20260330-02`
- status:
  - Document = `PASS_WITH_GUARDS`
  - Packaging = `PASS`
  - Execution = `FAIL_CLOSED`
  - Release = `BLOCK_RELEASE`
  - Delivery = `PASS`
- supersedes:
  - `Spartoi-OMOC_SubP1-LITE+MVP_CA-METHOD_WP-M_合冊.md` (`v2026.03.30-r1`)
  - `Spartoi-OMOC_SubP1-LITE+MVP_CA-METHOD_WP合冊.md`
- patch_basis: `Spartoi-OMOC_SubP1-LITE+MVP_CA-METHOD_WP-M_合冊_AUDIT.md`
- one-line verdict: 本修補版把 audit 指出的 locator、artifact、coverage、RAG hook、package truth 缺口全部 materialize；但 repo/runtime/release truth 仍未被觀測，因此 execution/release 維持 fail-closed。

<a id="reader-guide"></a>
## 2. Reader Guide / 強制讀序 / Anti-miss / Anti-confusion / Anti-hallucination
1. 先讀 `Authority Stack`、`Patch Closure Matrix`、`Exact Locator Discipline`。
2. 再讀 `Coverage Matrix`、`Interface Closure`、`Artifact Constitution`。
3. 最後讀 `WP-MASTER -> WP-01 -> WP-02 -> WP-03`。
4. 任何 HOW / click-path / operator drill，一律 route-out 到 `generated/WP-RB-WI.md` 與外部 owner Runbook。

Anti-miss:
- 沒有 `LOC-*` 的 PASS/CLOSED 不成立。
- 沒有實體檔的「已物化」不成立。
- 沒有 repo/runtime/release 證跡的結論不得升格。

Anti-confusion:
- `WP-M != WP-RB-WI`
- `proposal-only != finalize`
- `consume-only != rewrite`
- `publish-only mapping != runtime ownership`
- `Document PASS != Execution PASS != Release PASS`

Anti-hallucination:
- No-Source-No-Norm
- No-Anchor-No-Claim
- No-Validator-No-Release-Claim
- One-Rule-One-Place
- One-Rule-One-Owner
- Fail-Closed by default

<a id="toc"></a>
## 3. TOC（anchors-first）
1. [Cover Card / Document Identity / Verdict Split](#cover-card)
2. [Reader Guide / 強制讀序 / Anti-miss / Anti-confusion / Anti-hallucination](#reader-guide)
3. [TOC（anchors-first）](#toc)
4. [Quick Index / Router / Upstream Map](#quick-index)
5. [Authority Stack / Conflict Rules / Scope Lock / Goal Premise Ordering](#authority-stack)
6. [Patch Closure Matrix](#patch-closure)
7. [Exact Locator Discipline / Exact Locator Registry](#exact-locator-discipline)
8. [Inputs Manifest / Alias Normalization / Missing / Unverified / Recovery Register](#inputs-manifest)
9. [Upstream Absorption Ledger / Replacement Matrix / Conflict Adjudication Ledger](#upstream-absorption-ledger)
10. [Requirement Canonical Set / Requirement Closure Matrix](#requirement-canonical-set)
11. [Interface Closure](#interface-closure)
12. [Docs-as-Code × Diátaxis × GraphRAG / RAPTOR / CRAG × RAG-Triad 設計](#docsascode-design)
13. [Tooling Adjudication](#tooling-adjudication)
14. [Artifact Constitution / Packaging Contract / Manifest / Checksums / Build / Bundle Tree](#artifact-constitution)
15. [Coverage Matrix / WP Inventory Rationalization](#coverage-matrix)
16. [WP-MASTER](#fence-wp-master)
17. [WP-01](#fence-wp-01)
18. [WP-02](#fence-wp-02)
19. [WP-03](#fence-wp-03)
20. [CR_OPEN / CONFIGURE_REQUIRED / TEMP_CLOSED / TEST_TRACK Registers](#registers)
21. [Risk / Degrade / Block / Stopline / Rollback / Handoff Rules](#risk-rules)
22. [ChangeLog / Self-Audit / Final Verdicts](#final-verdicts)
23. [Download / Delivery Section](#download-delivery)

<a id="quick-index"></a>
## 4. Quick Index / Router / Upstream Map
- exact locator 看第 7 章
- audit 修補閉環看第 6 章
- policy / consumer / StrategyPack 看第 14、18、19 章
- coverage 1.0 與 WP-04 不授權看第 15 章
- package truth / self-proof 看第 14、22、23 章

Router:
- `WP-01` = upstream absorption / XF-lite cadence / scenario-binding
- `WP-02` = MethodSpec + policy bundle + consumer contracts
- `WP-03` = StrategyPack + handoff + data backbone + package truth

Upstream Map:
- 15CA and body requirements: `LOC-002`~`LOC-004`
- CA-METHOD home / DB components / StrategyPack MUST: `LOC-005`~`LOC-010`
- adjacency / route-out / Package E scope: `LOC-011`~`LOC-015`
- owner patch and audit closure: `LOC-016`~`LOC-023`
- support-only shell / XF-lite cadence: `LOC-024`~`LOC-030`

<a id="authority-stack"></a>
## 5. Authority Stack / Conflict Rules / Scope Lock / Goal Premise Ordering
1. 《Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文》 [LOC-001]
2. 《Spartoi-OMOC_SSOT_合冊》 [LOC-005]~[LOC-010]
3. 《Spartoi-OMOC_LBP_合冊》 [LOC-011]~[LOC-012]
4. 《Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊》 [LOC-013]~[LOC-015]
5. 《Spartoi-OMOC_SubP1-LITE+MVP_合冊》
6. 《OMOC_合冊》
7. 《參考方案合冊》 [LOC-025]~[LOC-027]

正文合冊內部固定子序位：
1. 中央工程正文 [LOC-001]
2. 系統需求正文 r3 [LOC-002]~[LOC-004]
3. bridge / router / derived 補充內容

固定總前提：
1. 嚴禁自己造輪子
2. 第一優先：現成工具原生能力
3. 第二優先：現成工具 + 極少配置
4. 最後才准許自寫薄腳本
5. 低磨合
6. 100%逐項達成《正文合冊》的系統需求 [LOC-002]~[LOC-004]

固定硬規則：Higher authority wins / One-Rule-One-Place / One-Rule-One-Owner / No-Source-No-Norm / No-Anchor-No-Claim / No-Validator-No-Release-Claim / Fail-Closed by default / route-out 不得偽裝成再立法 [LOC-012] / support-only 不得越級 [LOC-013]。

Scope lock：本冊只負責 WP-MASTER + WP-01/02/03 的責任、工件、契約、驗收、停線、回退、打包、交接與稽核；不負責 HOW、不負責 Package-B schema 全文、不負責 repo-side release engine 真值 [LOC-014][LOC-019]。

<a id="patch-closure"></a>
## 6. Patch Closure Matrix
| audit_id | issue | resolution | materialized proof | status |
|---|---|---|---|---|
| P0-001 | exact locator discipline 未落地 | 新增 `Exact Locator Discipline` + `sidecars/EXACT_LOCATOR_REGISTRY.tsv` | `sidecars/EXACT_LOCATOR_REGISTRY.tsv` | CLOSED |
| P0-002 | WP-02 artifacts 18/18 缺失 | 實體化 MethodCard/MethodSpec/policy/consumers/mapping/xq projection/semantic invariants | `method/specs/*`, `method/pack/MethodPack/**/*` | CLOSED |
| P0-003 | WP-03 StrategyPack / handoff / data backbone / evidence 缺失 | 實體化 immutable StrategyPack + handoff + sqlite placeholders + evidence triplet | `packs/*`, `data/*`, `evidence/*` | CLOSED |
| P0-004 | absorption/closure 過度摘要化 | 所有 closure 綁 locator + materialized proof，並逐本列 inputs | multiple sidecars | CLOSED |
| P1-005 | 缺 Docs-as-Code / Diátaxis / GraphRAG / RAPTOR / CRAG / RAG-Triad | 新增第 12 章 + `rag/` hooks | `rag/*`, `sidecars/section_*`, `RAG_TRIAD_CHECKLIST.tsv` | CLOSED |
| P1-006 | Coverage=1.0 / no-WP04 無矩陣 | 新增第 15 章與 `sidecars/COVERAGE_MATRIX.tsv` | matrix | CLOSED |
| P1-007 | package path truth 不一致 / 缺自證 | root-level manifest/checksums/build/package_validation/zip_integrity | root proof files | CLOSED |

<a id="exact-locator-discipline"></a>
## 7. Exact Locator Discipline / Exact Locator Registry
- 任一 `MUST / SHALL / BLOCK / PASS / CLOSED / REPLACED / ABSORBED` 類主張若沒有 `LOC-*`，視為未完成。
- locator = `source_file + exact line range + topic + class`。
- locator 只負責證據綁定；repo/runtime/release truth 仍需另外證跡 [LOC-007][LOC-009][LOC-010]。

| loc_id | source_file | line_range | topic | class |
|---|---|---|---|---|
| LOC-001 | Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文.md | L32-L32 | 正文合冊 internal order: 中央工程正文 first | NORMATIVE |
| LOC-002 | Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md | L1343-L1350 | CA-METHOD/CA-BACKTEST/CA-PERFORM rows in 15CA matrix | NORMATIVE |
| LOC-003 | Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md | L3233-L3235 | MethodPack / StrategyPack / BacktestPack rows | NORMATIVE |
| LOC-004 | Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md | L3966-L3967 | proposal-only feedback and no direct rewrite | NORMATIVE |
| LOC-005 | Spartoi-OMOC_SSOT_合冊.md | L685-L685 | CA-METHOD architectural home anchor | NORMATIVE |
| LOC-006 | Spartoi-OMOC_SSOT_合冊.md | L2413-L2413 | ARCH-V810-4-5-METHOD anchor body start | NORMATIVE |
| LOC-007 | Spartoi-OMOC_SSOT_合冊.md | L4047-L4049 | EXECUTE_DISABLED gate semantics | NORMATIVE |
| LOC-008 | Spartoi-OMOC_SSOT_合冊.md | L5240-L5242 | ReferenceDB / RunLedger / DB-CORPUS components | NORMATIVE |
| LOC-009 | Spartoi-OMOC_SSOT_合冊.md | L10444-L10445 | RunLedger and ReferenceDB MUST rows | NORMATIVE |
| LOC-010 | Spartoi-OMOC_SSOT_合冊.md | L10472-L10473 | Pipeline-B MUST produce StrategyPack | NORMATIVE |
| LOC-011 | Spartoi-OMOC_LBP_合冊.md | L384-L391 | CA-METHOD / CA-BACKTEST / CA-PERFORM adjacency rows | NORMATIVE |
| LOC-012 | Spartoi-OMOC_LBP_合冊.md | L2691-L2725 | Pipeline-C route-out and no HOW overreach | NORMATIVE |
| LOC-013 | Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊.md | L564-L564 | unknown/missing/unlocatable items are not assumed | NORMATIVE |
| LOC-014 | Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊.md | L3594-L3596 | Package E scope lock and one-page card cannot replace MC4/WP | NORMATIVE |
| LOC-015 | Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊.md | L3923-L3924 | CA-METHOD and CA-BACKTEST package rows exist but repo truth may be TT | NORMATIVE |
| LOC-016 | CA-METHOD_MC4&WP_重構升級藍圖_v2.md | L117-L123 | MethodSpec split, MappingCard restore, flip_criteria policy closeout | OWNER_PATCH |
| LOC-017 | CA-METHOD_MC4&WP_重構升級藍圖_v2.md | L242-L253 | consumer views and policy bundle file tree | OWNER_PATCH |
| LOC-018 | CA-METHOD_MC4_WP_升級方案.md | L70-L76 | FeedbackPack proposal-only / Pipeline-C consume-only / XF-lite posture | OWNER_PATCH |
| LOC-019 | CA-METHOD_MC4_WP_升級方案.md | L1227-L1231 | WP-01/02/03 outputs and Day-1 low-friction lane | OWNER_PATCH |
| LOC-020 | Spartoi-OMOC_SubP1-LITE+MVP_CA-METHOD_WP合冊.md | L1182-L1183 | StrategyPack and handoff manifest old WP contract | LEGACY_OWNER |
| LOC-021 | Spartoi-OMOC_SubP1-LITE+MVP_CA-METHOD_WP合冊.md | L1199-L1200 | Feedback proposal-only old WP contract | LEGACY_OWNER |
| LOC-022 | Spartoi-OMOC_SubP1-LITE+MVP_CA-METHOD_WP合冊.md | L1207-L1209 | data backbone bootstrap old WP contract | LEGACY_OWNER |
| LOC-023 | Spartoi-OMOC_SubP1-LITE+MVP_CA-METHOD_WP-M_合冊_AUDIT.md | L78-L142 | audit blockers P0/P1 to be repaired | AUDIT_INPUT |
| LOC-024 | SEM8-ICT-TW_重構升級藍圖_v1.2.1-r1.md | L18-L20 | ICT is soul / Ops is spine / audit shell | SUPPORT_INTERNAL |
| LOC-025 | 參考方案合冊.md | L171-L172 | Pipeline-B = StrategyPack/FeedbackPack | SUPPORT_BRIDGE |
| LOC-026 | 參考方案合冊.md | L3460-L3461 | FeedbackPack proposal-only | SUPPORT_BRIDGE |
| LOC-027 | 參考方案合冊.md | L3480-L3482 | Pipeline-C consumes fixed SpecPack + StrategyPack | SUPPORT_BRIDGE |
| LOC-028 | 台股實戰映射_合冊.md | L497-L497 | XF-lite default in method layer | SUPPORT_INTERNAL |
| LOC-029 | 台股實戰映射_合冊.md | L531-L532 | Distill -> XF-lite weekly gate cadence | SUPPORT_INTERNAL |
| LOC-030 | 台股實戰映射_合冊.md | L668-L669 | daily sandbox then weekly/RC promotion cadence | SUPPORT_INTERNAL |

<a id="inputs-manifest"></a>
## 8. Inputs Manifest / Alias Normalization / Missing / Unverified / Recovery Register
- 逐本輸入已落盤於 `sidecars/INPUTS_MANIFEST.tsv`，不再把高位文件群組成一列 [LOC-023]。
- Alias normalization 已落盤於 `sidecars/ALIAS_NORMALIZATION_LEDGER.tsv`。
- repo checks / branch protection / parity / provenance 仍屬 `UNVERIFIED -> CR_OPEN`，不假裝解決 [LOC-007][LOC-009][LOC-010]。

<a id="upstream-absorption-ledger"></a>
## 9. Upstream Absorption Ledger / Replacement Matrix / Conflict Adjudication Ledger
- `CA-METHOD_MC4+` -> exact locator / policy/consumer contracts / release guard [LOC-016][LOC-017]
- `CA-METHOD_MC4_WP_升級方案` -> three-WP lane / low-friction / proposal-only / consume-only / XF-lite [LOC-018][LOC-019]
- `舊 CA-METHOD_WP合冊` -> StrategyPack/data bootstrap valid contracts only [LOC-020]~[LOC-022]
- `SEM8/參考方案/台股映射` -> support-only absorption [LOC-024]~[LOC-030]

See `sidecars/UPSTREAM_ABSORPTION_LEDGER.tsv`, `REPLACEMENT_MATRIX.tsv`, `CONFLICT_ADJUDICATION_LEDGER.tsv`.

<a id="requirement-canonical-set"></a>
## 10. Requirement Canonical Set / Requirement Closure Matrix
1. 承接 CA-METHOD constitution / requirement core / interface closure / packaging truth / gate semantics [LOC-002]~[LOC-010]
2. 承接四份升級藍圖 / 方案要求 [LOC-016]~[LOC-019]
3. 提取 SEM8 設計內容為 support-only absorption [LOC-024]
4. 對齊中央工程正文、SSOT、LBP、Pack A-E、參考方案 [LOC-001]~[LOC-015], [LOC-025]~[LOC-027]
5. 對齊 A/B other subsystems interface but not whole-book version lock [LOC-010][LOC-012]
6. 覆蓋並取代舊 WP 合冊之 WP-MASTER/WP 系列 [LOC-020]~[LOC-022]
7. 維持 proposal-only / consume-only / XQ-only / local-no-order / no runtime overreach [LOC-004][LOC-007][LOC-018][LOC-026][LOC-027]
8. 物化方法與交付核心、政策與護欄核心、證據與驗收核心、接口與資料骨幹核心、台股/ICT/映射/SEM3 核心 [LOC-016]~[LOC-030]
9. 未授權數值不得硬寫成規範 [LOC-013][LOC-014]

Detailed closure is in `sidecars/REQUIREMENT_CLOSURE_MATRIX.tsv`.

<a id="interface-closure"></a>
## 11. Interface Closure
- Pipeline-A -> CA-METHOD: `SpecPack / provenance_ptr / evidence chain / market_profile_ref` only [LOC-010]
- CA-METHOD -> CA-BACKTEST: immutable `StrategyPack + handoff_manifest` [LOC-003][LOC-020]
- CA-METHOD -> CA-PERFORM: proposal-only feedback only [LOC-004][LOC-021][LOC-026]
- CA-METHOD -> Pipeline-C: fixed-version consume-only [LOC-018][LOC-027]
- CA-METHOD -> EXECUTE/XQ: `execute_handoff_stub.json` only, no local broker/order engine [LOC-007]
- A+B shared backbone: `ReferenceDB / RunLedger / market pointer / evidence` as owner-safe placeholders only [LOC-008][LOC-009][LOC-022]

Matrix-level proofs are materialized in the five interface TSVs under `sidecars/`.

<a id="docsascode-design"></a>
## 12. Docs-as-Code × Diátaxis × GraphRAG / RAPTOR / CRAG × RAG-Triad 設計
### Docs-as-Code
單一 Markdown 主冊 + deterministic sidecars + exact locator registry + manifest/checksums。
### Diátaxis
- `WP-MASTER` = reference + explanation
- `WP-01/02/03` = working-reference/contract docs
- `generated/WP-RB-WI.md` = route-out how-to stub only
### GraphRAG
- `sidecars/section_graph.tsv` 提供節點/邊 hook。
### RAPTOR
- `sidecars/section_tree.tsv` 提供 section tree hook。
### CRAG
- `CR_OPEN / TEMP_CLOSED / TEST_TRACK + CONFLICT_ADJUDICATION_LEDGER.tsv` 提供 quarantine/correction layer。
### RAG-Triad
- `sidecars/RAG_TRIAD_CHECKLIST.tsv` 提供 `context relevance / groundedness / answer relevance` hook。

<a id="tooling-adjudication"></a>
## 13. Tooling Adjudication
1. 現成工具原生能力
2. 現成工具 + 極少配置
3. 自寫薄腳本
4. 禁止自造 schema/orchestration/release/evidence frameworks

本次採用：JSON Schema 2020-12, Pydantic, jsonschema, DuckDB/SQLite, optional DVC/pluggy, minimal `tools/run_wp.py` and `tools/validate_bundle.py`。

<a id="artifact-constitution"></a>
## 14. Artifact Constitution / Packaging Contract / Manifest / Checksums / Build / Bundle Tree
### Root-Level Minimum Deliverables
- `Spartoi-OMOC_SubP1-LITE+MVP_CA-METHOD_WP-M_合冊.md`
- `MANIFEST.json`
- `CHECKSUMS.sha256`
- `BUILD_NOTES.md`
- `package_validation.json`
- `zip_integrity_report.json`
- `method/specs/*`
- `method/pack/MethodPack/**/*`
- `packs/StrategyPack/SPK-CAMETHOD-20260330-01/*`
- `data/*`
- `evidence/*`
- `sourcepack/*`
- `generated/*`
- `sidecars/*`
- `tools/*`

### Packaging Contract
single markdown + ZIP + manifest + checksums + build notes + package validation + zip integrity self-proof; root-level path truth must match the book.

### Bundle Tree
```text
ca_method_wp_m_bundle_patched/
  Spartoi-OMOC_SubP1-LITE+MVP_CA-METHOD_WP-M_合冊.md
  MANIFEST.json
  CHECKSUMS.sha256
  BUILD_NOTES.md
  package_validation.json
  zip_integrity_report.json
  method/
  packs/
  data/
  evidence/
  sourcepack/
  generated/
  sidecars/
  tools/
```

### Packaging Truth
- Document packaging truth = proven
- Execution truth = not proven
- Release truth = not proven
- Delivery truth = proven by actual files

<a id="coverage-matrix"></a>
## 15. Coverage Matrix / WP Inventory Rationalization
| cluster | mandatory content group | landed section | materialized proof |
|---|---|---|---|
| A | 方法與交付核心 | WP-02 + WP-03 | MethodSpec, MethodPack, StrategyPack |
| B | 政策與護欄核心 | WP-02 + WP-MASTER | policy/*.json + forbidden_actions_matrix.tsv |
| C | 證據與驗收核心 | WP-MASTER + WP-03 | evidence/* + package_validation.json |
| D | 接口與資料骨幹核心 | Interface Closure + WP-03 | interface TSVs + data/* |
| E | 台股 / ICT / 映射 / SEM3 吸收核心 | WP-01 | scenario_binding + primitive_coverage_map + LOC-024~030 |

WP Inventory = `WP-MASTER + WP-01 + WP-02 + WP-03`。

Why 3 WPs are enough:
- WP-01 = absorption
- WP-02 = formalization
- WP-03 = handoff + package truth

Why no WP-04:
Coverage matrix now proves all five mandatory content groups have landed section + actual artifacts. Therefore `WP-04 = NOT AUTHORIZED` [LOC-023].

<a id="fence-wp-master"></a>
<!-- FENCE:WP-MASTER:BEGIN -->
## 16. WP-MASTER
- doc_id: `CAMETHOD-WPM-WPMASTER`
- role: master routing + constitution + closure + packaging + release guard
- artifact set: `EXACT_LOCATOR_REGISTRY.tsv`, `INPUTS_MANIFEST.tsv`, `REQUIREMENT_CLOSURE_MATRIX.tsv`, `MANIFEST.json`, `CHECKSUMS.sha256`, `package_validation.json`, `zip_integrity_report.json`
- acceptance: every PASS/CLOSED has locator; every claimed package artifact exists; unresolved repo/runtime/release truths remain fail-closed.
- stoplines: no locator -> BLOCK; claimed artifact missing -> BLOCK; unauthorized threshold hardcoded -> BLOCK; repo/release overclaim -> BLOCK_RELEASE.
<!-- FENCE:WP-MASTER:END -->

<a id="fence-wp-01"></a>
<!-- FENCE:WP-01:BEGIN -->
## 17. WP-01
- doc_id: `CAMETHOD-WPM-WP01`
- role: upstream absorption / triple-source fusion / support downgrade discipline
- artifact set: `scenario_binding.json`, `primitive_coverage_map.tsv`
- acceptance: absorbed items are classified; no support source becomes owner constitution; XF-lite cadence remains support-only, not hardcoded threshold [LOC-024][LOC-028][LOC-029][LOC-030].
<!-- FENCE:WP-01:END -->

<a id="fence-wp-02"></a>
<!-- FENCE:WP-02:BEGIN -->
## 18. WP-02
- doc_id: `CAMETHOD-WPM-WP02`
- role: method definition hardening
- artifact set:
  - `method/specs/MethodSpec.schema.json`
  - `method/pack/MethodPack/MethodCard.md`
  - `method/pack/MethodPack/MethodCard.json`
  - `method/pack/MethodPack/MethodSpec.json`
  - `method/pack/MethodPack/mapping_card.json`
  - `method/pack/MethodPack/xq_xs_projection_manifest.json`
  - `method/pack/MethodPack/semantic_invariants.json`
  - `method/pack/MethodPack/scenario_binding.json`
  - `method/pack/MethodPack/primitive_coverage_map.tsv`
  - `method/pack/MethodPack/policy/*.json`
  - `method/pack/MethodPack/consumers/*.json`
  - `method/pack/MethodPack/evidence/*`
- acceptance: missing schema/instance/policy/consumer/evidence hook -> BLOCK.
- boundaries: Feedback proposal-only [LOC-004][LOC-026]; Pipeline-C consume-only [LOC-018][LOC-027]; XQ-only execution stub [LOC-007].
<!-- FENCE:WP-02:END -->

<a id="fence-wp-03"></a>
<!-- FENCE:WP-03:BEGIN -->
## 19. WP-03
- doc_id: `CAMETHOD-WPM-WP03`
- role: StrategyPack handoff / data backbone bootstrap / packaging truth
- artifact set:
  - `packs/StrategyPack/SPK-CAMETHOD-20260330-01/*`
  - `data/reference_db/reference_placeholder.sqlite`
  - `data/runledger/ledger.sqlite`
  - `data/market/lake_pointer.yaml`
  - `evidence/gate/GATE-PIPE-B-READY/RUN-CAMETHOD-20260330-01/*`
  - `MANIFEST.json`, `CHECKSUMS.sha256`, `BUILD_NOTES.md`, `package_validation.json`, `zip_integrity_report.json`
- acceptance: StrategyPack/handoff/data roots/evidence/proof files all must exist.
- stoplines: missing StrategyPack/handoff/data root/proof file -> BLOCK.
- handoff: immutable versions only; Pipeline-C fixed-version consume; CA-PERFORM proposal-only.
<!-- FENCE:WP-03:END -->

<a id="registers"></a>
## 20. CR_OPEN / CONFIGURE_REQUIRED / TEMP_CLOSED / TEST_TRACK Registers
See root files under `sidecars/`: `CR_OPEN_REGISTER.tsv`, `CONFIGURE_REQUIRED_REGISTER.tsv`, `TEMP_CLOSED_REGISTER.tsv`, `TEST_TRACKING_LIST.tsv`.

<a id="risk-rules"></a>
## 21. Risk / Degrade / Block / Stopline / Rollback / Handoff Rules
- missing locator -> BLOCK
- missing policy / consumer / StrategyPack / data root -> BLOCK
- missing parity/runtime truth -> `EXECUTION_FAIL_CLOSED`
- missing repo/release provenance truth -> `BLOCK_RELEASE`
- default degrade states: `RADAR_ONLY`, `BLOCK`, `EXECUTE_DISABLED`

<a id="final-verdicts"></a>
## 22. ChangeLog / Self-Audit / Final Verdicts
ChangeLog:
- repaired exact locator discipline
- materialized WP-02 and WP-03 missing artifacts
- added Docs-as-Code/Diátaxis/RAG hook chapter
- added Coverage Matrix and no-WP04 proof
- fixed root path truth and package self-proof

Self-Audit:
- resolves audit P0-001: yes
- resolves audit P0-002: yes
- resolves audit P0-003: yes
- resolves audit P1-005: yes
- resolves audit P1-006: yes
- resolves audit P1-007: yes
- retains fail-closed honesty on repo/runtime/release: yes

Final Verdicts:
- Document = `PASS_WITH_GUARDS`
- Packaging = `PASS`
- Execution = `FAIL_CLOSED`
- Release = `BLOCK_RELEASE`
- Delivery = `PASS`

Reason: document/package blockers identified by audit are closed in this bundle; repo/runtime/release truths remain unproven and therefore stay fail-closed [LOC-007][LOC-009][LOC-010].

<a id="download-delivery"></a>
## 23. Download / Delivery Section
- single markdown master book
- single zip bundle
- root manifest / checksums / build notes / package validation / zip integrity report
- this patch certifies only document/package lane, not repo/runtime/release truth
