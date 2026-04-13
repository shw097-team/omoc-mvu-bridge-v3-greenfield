# Spartoi-OMOC_SubP1-LITE+MVP_CA-METHOD_WP-RB-WI_合冊
<a id="cover-card"></a>

## Cover Card / Document Identity / Verdict Split

- **external_name**: `Spartoi-OMOC_SubP1-LITE+MVP_CA-METHOD_WP-RB-WI_合冊`
- **internal_short_name**: `CAMETHOD_WPRBWI`
- **version**: `v2026.03.31-r2`
- **release_date**: `2026-03-31`
- **bundle_id**: `BUNDLE-CAMETHOD-WPRBWI-20260331-0002`
- **status_split**:
  - **Document** = `PASS_WITH_GUARDS`
  - **Execution** = `FAIL_CLOSED`
  - **Release** = `BLOCK_RELEASE`
  - **Delivery** = `PASS`
- **supersedes**:
  - `Spartoi-OMOC_SubP1-LITE+MVP_CA-METHOD_WP-RB-WI_合冊`（prior non-observed target name; replaced by this materialized delivery）
  - `CA-METHOD_MC4_WP_升級方案.md`
  - `CA-METHOD_MC4&WP_重構升級藍圖_v2.md` 在 WP-RB-WI 落地層之 carrier role
- **absorbs**:
  - `Spartoi-OMOC_SubP1-LITE+MVP_CA-METHOD_MC4+_合冊.md`（owner constitution；**UNVERIFIED_DIRECT / PARTIAL_CARRIER_ONLY**，本環境未直接觀測 exact file）
  - `CA-METHOD_MC4_WP_升級方案.md`
  - `CA-METHOD_MC4&WP_重構升級藍圖_v2.md`
  - `Pipeline-B_MC4+_WP-M_WP-RB-WI_升級藍圖.md`
  - `MC4+_WP-M_WP-RB-WI_升級藍圖_v1.1.0-r2.md`
- **one_line_conclusion**: 本版已全量吸收審查報告並修補 fenced metadata、Authority Crosswalk、Requirement Intake Matrix、coverage landing、以及 package truth 自證鏈；因此文檔與交付封裝已恢復可稽核狀態，但 Package D / E owner proof 與 repo truth 仍未在本環境直接觀測，release 維持 block。

---

## TOC（anchors-first）
1. [Reader Guide / 強制讀序 / Quick Index / Router / Upstream Map](#reader-guide)
2. [Authority Stack / Conflict Rules / Scope Lock / Goal Premise Ordering](#authority-stack)
3. [Document Design / Status Split / Fixed Legal Position](#document-design)
4. [Inputs Manifest / Alias Normalization / Missing / Unverified / Recovery Register](#inputs-manifest)
5. [Exact Locator Discipline / Exact Locator Registry Summary](#exact-locator-discipline)
6. [Upstream Absorption Ledger / Replacement Matrix / Conflict Adjudication](#upstream-absorption)
7. [Requirement Canonical Set / Requirement Closure Matrix](#requirement-canonical-set)
8. [Interface Closure / Route-out Registry / Owner Ceiling](#interface-closure)
9. [CA-METHOD Artifact Constitution / Packaging Contract / Bundle Tree](#artifact-constitution)
10. [Support Source Absorption / TW-ICT Domain Guardrails](#support-source-absorption)
11. [Tooling Adjudication](#tooling-adjudication)
12. [CR_OPEN / CONFIGURE_REQUIRED / TEMP_CLOSED / TEST_TRACK / Release Blockers](#cr-open-closure)
13. [Docs-as-Code × Diátaxis × GraphRAG / RAPTOR / CRAG × RAG-Triad 最小落地設計](#docs-as-code)
14. [Coverage Matrix / Self-Audit / Final Verdicts / Download Section](#coverage-matrix)
15. [Fenced documents](#fenced-documents)
16. [Appendix A: Web Evidence Registry (SUPPORT-only)](#appendix-a)

---

<a id="reader-guide"></a>
## 1. Reader Guide / 強制讀序 / Quick Index / Router / Upstream Map

### 1.1 強制讀序
1. 先讀本書 `Authority Stack`、`Inputs Manifest`、`Exact Locator Discipline`。
2. 再讀 `Requirement Canonical Set` 與 `Interface Closure`，確認 CA-METHOD 只擁有 method-facing artifacts，不擁有 TA/SELECT/TRANSLATE/WATCH/EXECUTE runtime。
3. 再讀 `Artifact Constitution` 與 `Tooling Adjudication`，確認主路徑是現成工具原生能力 + 極少配置 + 薄腳本，而不是重新造輪子。
4. 最後讀 fenced 的 `WP-RB-WI-MASTER / WP-01 / WP-02 / WP-03`，因為這些才是 operator 可直接抽出的交付級文檔。

### 1.2 Quick Index
- `CA-METHOD / MethodCard / MethodSpec / MethodPack / mapping_card / scenario_binding / primitive_coverage_map`
- `StrategyPack_draft / publish-only / proposal-only / consume-only`
- `event_gate_registry / board_rule_matrix / time_window_policy / flip_criteria_policy / execution_restraints`
- `WP-01 intake / WP-02 formalization / WP-03 packaging-handoff`
- `READ_ONLY_UI / EXECUTE_DISABLED / BLOCK_RELEASE / TEMP_CLOSED / TEST_TRACK`
- `13:10 / 13:20 / weekly reset / monthly reset / XF-lite / RC cadence`

### 1.3 Router
| 問題型別 | 先讀哪裡 | 再 route-out 到哪裡 | fail-closed fallback |
|---|---|---|---|
| identity / scope / verdict | §2, §4 | 中央工程正文 / 正文合冊 | UNVERIFIED |
| CA-METHOD artifact / owner / boundary | §7, §8, WP-02 | MC4+ owner book | BLOCK_RELEASE when owner proof absent |
| exact schema / `_ref` / payload | §8 | Package B / LBP-B | CONFIGURE_REQUIRED |
| factory / workflow / required checks / lockfile | §11, §12 | Package D | BLOCK_RELEASE |
| validator / release_guard / package reality | §9, §12 | Package E / LBP-E | BLOCK_RELEASE |
| operator steps / how-to / click-path | fenced WP-* docs | Ops RUNBOOK / Dev-Ops HOW owner | TEMP_CLOSED |
| runtime / XQ parity / execute profile | §8, §12 | CA-TRANSLATE / CA-EXECUTE / Package E | EXECUTE_DISABLED |

### 1.4 Upstream Map
| peer | imported / exported surface | hard boundary |
|---|---|---|
| Pipeline-A / CA-DISTILL / CA-DSL | import `SpecPack`, `primitive`, evidence pointers, semantic report | consume-only upstream truth |
| CA-BACKTEST | export `MethodCard / MethodSpec / MethodPack / StrategyPack_draft` and receive no rewrite back | BACKTEST owns backtest truth |
| Pipeline-C（TA/SELECT/TRANSLATE） | export consumer views + publish-only contracts | consume-only fixed-version artifacts; no method rewrite |
| CA-WATCH / CA-EXECUTE | export watch/execute handoff stubs + policy refs only | METHOD does not own runtime |
| CA-PERFORM | receive proposal-only feedback | no direct MethodCard mutation |
| Package B / D / E | route-out for schema, factory checks, release guard, package truth | owner ceiling cannot be bypassed |

---

<a id="authority-stack"></a>
## 2. Authority Stack / Conflict Rules / Authority Crosswalk / Scope Lock / Goal Premise Ordering

### 2.1 Fixed authority order
1. `Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文`
2. `Spartoi-OMOC_SSOT_合冊`
3. `Spartoi-OMOC_LBP_合冊`
4. `Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊`
5. `Spartoi-OMOC_SubP1-LITE+MVP_合冊`
6. `OMOC_合冊`
7. `參考方案合冊`

若使用《Spartoi-OMOC_SubP1-LITE+MVP_正文合冊》定位，內部固定子序位：
1. `中央工程正文`
2. `系統需求正文r3`
3. `bridge / router / derived` 補充內容

### 2.2 Goal premise ordering
1. 嚴禁自己造輪子
2. 第一優先：現成工具原生能力
3. 第二優先：現成工具 + 極少配置
4. 最後才准許：自寫薄腳本
5. 低磨合
6. 100% 逐項達成正文合冊的系統需求

### 2.3 Conflict rules
- Higher authority wins.
- One-Rule-One-Place / One-Rule-One-Owner.
- No-Source-No-Norm.
- No-Anchor-No-Claim.
- No-Validator-No-Release-Claim.
- route-out 不得偽裝成再立法。
- support-only 不得越級覆寫 normative。
- unknown / missing / unlocatable items are not assumed.

### 2.4 Scope lock
- 本冊是 **CA-METHOD 的 WP-RB-WI 施工實作 + 驗收主冊**。
- 本冊不是 schema owner；不是 release engine；不是 runtime owner；不是 order-entry endpoint。
- CA-METHOD 只擁有 method-facing artifacts 與 publish-only contracts；不得把 TA/SELECT/TRANSLATE/WATCH/EXECUTE runtime 義務偷回灌到本冊。


### 2.5 Authority Crosswalk
| authority_tier | source_family | allowed_use | forbidden_use | route-out owner_when_needed |
|---|---|---|---|---|
| Tier-1 | 中央工程正文 / 正文合冊::DOC-0001 | subsystem law / owner ceiling / pack boundary / fail-closed | local override / release overclaim | Package B/C/D/E or peer owner |
| Tier-2 | SSOT_合冊 | SRS/ARCH/MIP hard rules / CA identity / gate root | HOW 化重寫 / threshold 私設 | SRS / ARCH / MIP owner |
| Tier-3 | LBP_合冊 | ICD / ADR / C4 / Fitness route-out and owner mapping | 本地再立法 schema / release guard / runtime truth | LBP-B/C/D/E owners |
| Tier-4 | Pack A-E+工程指南_合冊 | Package boundaries / proof pointers / rollout discipline | 假裝已擁有 owner proof | Package D / E owners |
| Tier-5 | SubP1-LITE+MVP_合冊 / 藍圖 / control-plane carrier | blueprint framing / route-out context / evidence vocabulary | 取代上位條文 | 上位 Tier-1~4 |
| Tier-6 | OMOC_合冊 / 參考方案合冊 | nav-only / bridge-only / consume-contract hints | override owner constitution | peer owner |
| Tier-7 | OWNER_PATCH carriers (`CA-METHOD_MC4_WP_升級方案`, `CA-METHOD_MC4&WP_重構升級藍圖_v2`) | clause rewrite / subsystem-local patch / artifact matrix | 覆寫更高權威 / fabricate repo truth | Package D / E or higher authority |
| Tier-S | SUPPORT_INTERNAL / SUPPORT_BRIDGE / SUPPORT_WEB | bootstrap / domain guardrails / tool maturity support | normative override / release certificate | never owner-replacing |


---

<a id="document-design"></a>
## 3. Document Design / Status Split / Fixed Legal Position

### 3.1 Status split
- **Document PASS_WITH_GUARDS**：本冊文字、矩陣、fenced docs、sidecars、package truth 在本工作區已物化。
- **Execution FAIL_CLOSED**：實際 repo / runtime / required checks / parity / release guard 未被本環境直接證成。
- **Release BLOCK_RELEASE**：Package D / E direct owner proof 缺件。
- **Packaging PASS**：manifest/checksums/validation/zip report 已按 self-excluded canonicalization 重建並交叉驗證。
- **Delivery PASS**：MD/ZIP/manifest/checksums/validation/integrity 均已生成。

### 3.2 Fixed legal position of source classes
| class | legal position | usable boundary |
|---|---|---|
| NORMATIVE | 可裁決 | 可形成 MUST / SHALL / BLOCK |
| OWNER_PATCH | owner-local patched blueprint / owner constitution | 可形成 subsystem-local implementation law |
| ROUTE_OUT_EXECUTION | HOW / SOP / operator flow | 只可承接操作，不可升格 owner constitution |
| SUPPORT_INTERNAL | 語義、欄位骨架、bootstrap hints | 僅補洞，不可越級 |
| SUPPORT_BRIDGE | crosswalk / domain bridge / route-out support | 只可補 interface / cadence / guardrails |
| TRACEABILITY_ONLY | 歷史脈絡 / legacy skeleton | 僅留 trace，不能作現行 normative |

### 3.3 Honest observation that changes the delivery
- `Spartoi-OMOC_SubP1-LITE+MVP_CA-METHOD_WP-M_合冊.md` **未被直接觀測到**。
- `Spartoi-OMOC_SubP1-LITE+MVP_CA-METHOD_WP合冊.md` **只被間接引用，未在本工作區直接觀測到實體檔**。
- 因此本冊對 WP-M / legacy WP 的吸收，採 `CA-METHOD_MC4_WP_升級方案.md`、`CA-METHOD_MC4&WP_重構升級藍圖_v2.md`、`正文合冊` 與 `MC4+` 主冊為主要 carrier，不偽裝已讀到缺席檔。

---

<a id="inputs-manifest"></a>
## 4. Inputs Manifest / Alias Normalization / Missing / Unverified / Recovery Register / Requirement Intake Matrix

### 4.1 Inputs Manifest（摘要）

| source_name | class | legal_role | status | decision_note |
|---|---|---|---|---|
| Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文.md | NORMATIVE | PRIMARY_AUTHORITY | FOUND | Top authority; central CA-METHOD and route-out law |
| Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md::DOC-0001 | NORMATIVE | PRIMARY_AUTHORITY_CARRIER | FOUND | Carrier for 中央工程正文 |
| Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md::DOC-0002 | NORMATIVE | PRIMARY_AUTHORITY_CARRIER | FOUND | Carrier for 系統需求正文r3 |
| Spartoi-OMOC_SSOT_合冊.md | NORMATIVE | PRIMARY_AUTHORITY | FOUND | SRS/ARCH/MIP root |
| Spartoi-OMOC_LBP_合冊.md | NORMATIVE | PRIMARY_AUTHORITY | FOUND | ICD/ADR/C4/Fitness root |
| Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊.md | NORMATIVE | PRIMARY_AUTHORITY | FOUND | Package boundaries and proof pointers |
| Spartoi-OMOC_SubP1-LITE+MVP_合冊.md | NORMATIVE | PRIMARY_AUTHORITY | FOUND | Blueprint + control plane carrier |
| OMOC_合冊.md | NORMATIVE | PRIMARY_AUTHORITY | FOUND | OMOC base and anti-hallucination support |
| 參考方案合冊.md | NORMATIVE_BRIDGE | PRIMARY_AUTHORITY_BRIDGE | FOUND | Pipeline-A/B/C and A+B DB bridge |
| Spartoi-OMOC_SubP1-LITE+MVP_CA-METHOD_MC4+_合冊.md | OWNER_PATCH | PRIMARY_SUBSYSTEM_SOURCE | UNVERIFIED_DIRECT / PARTIAL_CARRIER_ONLY | exact-title file not directly observed in current workspace slice; obligations only partially recoverable via legacy upgrade carriers and higher authority rows |
| Spartoi-OMOC_SubP1-LITE+MVP_CA-METHOD_WP-M_合冊.md | OWNER_PATCH | PATCH_BASELINE | MISSING | Exact-title file not observed in workspace or file library search; cannot be pretended into existence |
| Spartoi-OMOC_SubP1-LITE+MVP_CA-METHOD_WP合冊.md | OWNER_PATCH | LEGACY_WP_SOURCE | MISSING_DIRECT / INDIRECT_REFERENCED | Used as indirect absorbed baseline only; exact file not observed here |
| CA-METHOD_MC4&WP_重構升級藍圖_v2.md | OWNER_PATCH | PATCH_BASELINE | FOUND | Patched owner blueprint v2 |
| CA-METHOD_MC4_WP_升級方案.md | OWNER_PATCH | LEGACY_UPGRADE_DRIVER | FOUND | Old upgrade plan with WP clause maps and artifact matrix |
| Pipeline-B_MC4+_WP-M_WP-RB-WI_升級藍圖.md | OWNER_PATCH | PRIMARY_UPGRADE_DRIVER | FOUND | Pipeline-B shared contract / proposal-only / XQ-only boundaries |
| MC4+_WP-M_WP-RB-WI_升級藍圖_v1.1.0-r2.md | OWNER_PATCH | GLOBAL_UPGRADE_DRIVER | FOUND | Sourcepack/materialization/required-check discipline |
| SEM8-ICT-TW_重構升級藍圖_v1.2.1-r1.md | SUPPORT_BRIDGE | AUDIT_SHELL | FOUND | Audit shell / bind shell / route-out shell only |
| SEM³資料參考_合冊.md | SUPPORT_INTERNAL | RETRIEVAL_SUPPORT | FOUND | RAG anti-miss / SEM3 property report support only |
| Pipeline-B資料參考_合冊.md | SUPPORT_INTERNAL | PIPELINE_SUPPORT | FOUND | Primitive registry / threshold / integrated method+backtest bridge |
| Pipeline-B&C資料參考_合冊.md | SUPPORT_BRIDGE | PIPELINE_SUPPORT | FOUND | TA/SELECT/TRANSLATE consume chain and reason-chain support |
| 台股實戰映射_合冊.md | SUPPORT_BRIDGE | DOMAIN_SUPPORT | FOUND | XF-lite / weekly+RC cadence / TW microstructure |
| 台股歷史資料庫實作參考_合冊.md | SUPPORT_INTERNAL | DATA_SUBSTRATE_SUPPORT | FOUND | Historical DB substrate support |
| Ops RUNBOOK_合冊.md | ROUTE_OUT_EXECUTION | HOW_AUTHORITY | FOUND | Weekly four-card, 13:10/13:20, operator flow |
| 2022 ICT Mentorship 技術指南合冊_v2.md | SUPPORT_INTERNAL | DOMAIN_SUPPORT | FOUND | ICT semantics and mentorship vocabulary support |
| 2022_台股ICT技術研究_合冊.md | SUPPORT_INTERNAL | DOMAIN_SUPPORT | FOUND | Monthly/weekly reset, journal/replay, event-time governance support |
| Package D exact required-check proof bundle | OWNER_PROOF | FACTORY_TRUTH | UNVERIFIED | Cannot be synthesized locally |
| Package E release_guard / package reality direct proof bundle | OWNER_PROOF | RELEASE_TRUTH | UNVERIFIED | Cannot be synthesized locally |


### 4.2 Alias normalization ledger（摘要）
| alias | canonical | note |
|---|---|---|
| 參考方案_合冊 | 參考方案合冊 | filename normalization; same source |
| CA-PERFORM_MC4&WP_重構升級藍圖_v2 when context points to CA-METHOD | CA-METHOD_MC4&WP_重構升級藍圖_v2 | task normalization rule |
| MC4+_WP-RB-WI_WP-RB-WI_升級藍圖_v1.1.0-r2 | MC4+_WP-M_WP-RB-WI_升級藍圖_v1.1.0-r2 | task normalization rule |
| Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文 | Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文.md / 正文合冊::DOC-0001 | materialized carrier rule |
| Spartoi-OMOC_系統需求正文r3 | Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md::DOC-0002 | materialized carrier rule |
| Spartoi-OMOC_SubP1-LITE+MVP_CA-METHOD_WP-M_合冊 | UNOBSERVED_EXACT_TITLE | not physically observed; recover through owner carriers and indirect legacy maps |


### 4.3 Missing / Unverified / Recovery Register
| item | status | recovery_or_route_out | final stance |
|---|---|---|---|
| `Spartoi-OMOC_SubP1-LITE+MVP_CA-METHOD_WP-M_合冊.md` | MISSING | indirect absorption via `CA-METHOD_MC4_WP_升級方案.md` + `CA-METHOD_MC4&WP_重構升級藍圖_v2.md` + higher-authority carrier rows | PARTIAL / TEMP_CLOSED; not full closure |
| `Spartoi-OMOC_SubP1-LITE+MVP_CA-METHOD_WP合冊.md` | MISSING_DIRECT / INDIRECT_REFERENCED | use clause-to-clause map in old upgrade plan | traceability only |
| `Spartoi-OMOC_系統需求正文r3.md` standalone exact-title file | RECOVERED_VIA_CARRIER | `正文合冊::DOC-0002` | allowed as higher-body carrier |
| `Spartoi-OMOC_SubP1-LITE+MVP_CA-METHOD_MC4+_合冊.md` standalone exact-title file | UNVERIFIED_DIRECT | recover only through higher-authority rows and old upgrade carriers until exact file is directly observed | PARTIAL / TEMP_CLOSED |
| Package D exact required-check proof bundle | UNVERIFIED | route-out to Package D owner | BLOCK_RELEASE |
| Package E release_guard / package reality direct proof bundle | UNVERIFIED | route-out to Package E owner | BLOCK_RELEASE |


### 4.4 Requirement Intake Matrix
| intake_id | task-origin requirement | decomposed subrequirement | landing_in_book | verification_mode | status |
|---|---|---|---|---|---|
| RI-001 | 單一 Markdown 主檔 | 主書正文全量展開，非骨架/摘要 | cover + §15 fences + package tree | file exists + section scan | CLOSED |
| RI-002 | ZIP 打包檔 | zip 內 root truth 與 manifest/checksum一致 | §9.2 / §14.4 / package files | package validation + zip integrity | CLOSED |
| RI-003 | Preflight | Inputs Manifest / Alias Ledger / Missing Register | §4.1~§4.3 | table exists + row scan | CLOSED |
| RI-004 | Authority Crosswalk | authority tier / allowed use / forbidden use / route-out owner | §2.5 | body table exists | CLOSED |
| RI-005 | Requirement Intake Matrix | 將任務原始硬要求拆成獨立子項 | §4.4 | body table exists | CLOSED |
| RI-006 | Requirement Canonical Set | CA-METHOD owner ceiling / publish-only / consume-only / artifact duties | §7 | body rows + locators | CLOSED |
| RI-007 | Upstream Absorption | owner patch / blueprint / support source 的吸收、覆蓋、衝突裁決 | §6 | ledger rows + adjudication | CLOSED |
| RI-008 | 全部 WP RB/WI | WP-RB-WI-MASTER + WP-01/02/03 RB/WI 全量展開 | §15 | seven fences present | CLOSED |
| RI-009 | Tooling Adjudication | Primary / Allowed / Optional-Lab / Route-out / Reject | §11 | adjudication table exists | CLOSED |
| RI-010 | Packaging consistency | main md + zip + manifest + checksums + validation + zip report | §9.2 / §14.4 | actual file/hash checks | CLOSED |
| RI-011 | Download Section | 正文內物化相對路徑與檔案樹 | §14.6 | section scan | CLOSED |
| RI-012 | CR_OPEN / TT / Blockers | unresolved owner proof / repo truth honest downgrade | §12 | register scan | CLOSED |
| RI-013 | Official-first web evidence | official docs/specs prioritized in support registry | Appendix A | registry scan | CLOSED |
| RI-014 | Owner-book full absorption claim | missing exact-title WP-M baseline and direct MC4+ carrier must be downgraded honestly | §4.3 / §6 / §14.5 | wording + coverage status | CLOSED |

---

<a id="exact-locator-discipline"></a>
## 5. Exact Locator Discipline / Exact Locator Registry Summary

### 5.1 Discipline
- 每個 `MUST / SHALL / BLOCK / PASS / CLOSED / ABSORBED` 類主張都必須回指 `source + exact locator` 或等效直接證據。
- 任何與 repo truth、required checks、branch protection、merge queue、artifact attestations、runtime parity、release provenance 有關的句子，若沒有 owner proof，必須降級為 `UNVERIFIED / TEMP_CLOSED / BLOCK_RELEASE`。
- 本冊 sidecar `EXACT_LOCATOR_REGISTRY.tsv` 是唯一精確定位清單。

### 5.2 Registry summary（節錄）
| locator_id | source | locator | claim |
|---|---|---|---|
| LOC-001 | Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md | L1967-L1974 | 中央對 CA-METHOD 的 concise row：角色/最低輸入/最低輸出/G-SRC/fail-closed |
| LOC-002 | Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md | L3233-L3237 | MethodPack / StrategyPack / BacktestPack / FeedbackPack 在中央工件分類中的身份 |
| LOC-003 | Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md | L3907-L3918 | CA-METHOD 定位、in-scope、StrategyPack draft/frozen handoff |
| LOC-004 | Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md | L3920-L3924 | CA-METHOD out-of-scope：不做回測引擎、不做下單、不直接改平台狀態 |
| LOC-005 | Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md | L3926-L3931 | 核心職責：整合 ICT/類ICT/互補方法與台股微結構，維持語義一致 |
| LOC-006 | Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md | L3939-L3961 | 下游輸出與關鍵工件：MethodCard/MethodSpec/MethodPack/primitive_coverage_map/scenario_binding/StrategyPack |
| LOC-007 | Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md | L3963-L3967 | 接收 CA-PERFORM proposal-only feedback；不得接受直接改寫 |
| LOC-008 | Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md | L3973-L3983 | Gate/evidence/fail-closed 條件：MSC、微結構綁定、legacy coverage registry |
| LOC-009 | Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md | L7155-L7174 | 系統需求正文r3載體中的 CA-METHOD subsystem card、route-out owner、expected artifacts |
| LOC-010 | CA-METHOD_MC4_WP_升級方案.md | L204-L216 | 對舊 CA-METHOD WP 合冊的 clause-to-clause patch map，覆蓋 WP-01/02/03 |
| LOC-011 | CA-METHOD_MC4_WP_升級方案.md | L210-L216 | WP-01/02/03 核心產物與 packaging/repro/data backbone 擴充 |
| LOC-012 | CA-METHOD_MC4_WP_升級方案.md | L223-L243 | 完整 artifact matrix：method_card/method_spec/primitive_coverage_map/scenario_binding/mapping_card/TWMappingPack/policies/consumer views/StrategyPack/MANIFEST/CHECKSUMS/ledger.sqlite |
| LOC-013 | CA-METHOD_MC4_WP_升級方案.md | L252-L257 | 上游輸入契約：SpecPack/source pointers, semantic/evidence, ReferenceDB refs, TW microstructure refs, thresholds |
| LOC-014 | CA-METHOD_MC4_WP_升級方案.md | L261-L266 | CA-METHOD 對 CA-BACKTEST 輸出契約與 G-BT-H 依賴 |
| LOC-015 | CA-METHOD_MC4_WP_升級方案.md | L268-L279 | CA-METHOD 對 Pipeline-C/Watch/Execute 的輸出契約與禁止事項 |
| LOC-016 | CA-METHOD_MC4_WP_升級方案.md | L279-L280 | MethodPack/StrategyPack 均屬 canonical deliverable，必帶 run_id/hash/lineage/refs |
| LOC-017 | CA-METHOD_MC4_WP_升級方案.md | L1227-L1229 | WP-01 / WP-02 / WP-03 的 one-path MVP 執行序 |
| LOC-018 | CA-METHOD_MC4&WP_重構升級藍圖_v2.md | L290-L314 | 恢復 MappingCard / translate-facing contract 與 consumer required refs 全量恢復 |

| LOC-SUP-001 | Ops RUNBOOK_合冊.md | L190-L195 | 週級四卡與 13:10 / 13:20 operator constraints summary |
| LOC-SUP-002 | 台股實戰映射_合冊.md | L497-L505 | XF-lite default position + 日更蒸餾不可直接升格 |
| LOC-SUP-003 | 台股實戰映射_合冊.md | L842-L843 | 週批 / RC cadence for promotion |
| LOC-SUP-004 | 2022_台股ICT技術研究_合冊.md | L198-L205 | Monthly Reset / Weekly Reset / Replay / Journal / Review anchors |
| LOC-SUP-005 | CA-METHOD_MC4&WP_重構升級藍圖_v2.md | L123-L124 | MappingCard and consumer required refs restored |
| LOC-SUP-006 | CA-METHOD_MC4_WP_升級方案.md | L64-L77 | Method mandatory artifacts, proposal-only feedback, consume-only Pipeline-C, XF-lite cadence |

### 5.3 Unresolved exact-locator rule
- 任何 row 若僅能以 indirect carrier 或 historical DOCLOC 指認，而無當前 workspace exact file + exact line，必須標記 `PARTIAL / TEMP_CLOSED / UNVERIFIED_DIRECT`。
- `CA-METHOD_MC4+_合冊` 與 exact-title `CA-METHOD_WP-M_合冊` 在本版都受此規則約束。

---

<a id="upstream-absorption"></a>
## 6. Upstream Absorption Ledger / Replacement Matrix / Conflict Adjudication

### 6.1 Upstream absorption ledger
| absorb_id | source | absorbed_topic | landing | status |
|---|---|---|---|---|
| ABS-001 | 中央工程正文 | CA-METHOD concise row and threshold/fail-closed law | retained verbatim in Requirement Canonical Set and Exact Locator Registry | CLOSED |
| ABS-002 | 正文合冊 | CA-METHOD subsystem card and expected artifacts | translated into Inputs Manifest, Route-out Registry, and WP scope | CLOSED |
| ABS-003 | SSOT_合冊 | ARCH/SRS gate and owner root | used as normative root; no local override | CLOSED |
| ABS-004 | LBP_合冊 | ICD/ADR/C4/Fitness route-out owner ceiling | absorbed as Route-out owner law and TT/CR owner assignments | CLOSED |
| ABS-005 | Pack A-E+工程指南_合冊 | Package D/E proof pointers and 15x delivery fail-closed posture | absorbed into Release Blocker Register and package validation rules | CLOSED |
| ABS-006 | SubP1-LITE+MVP_合冊 | Blueprint and control-plane route-out context | used for blueprint framing only | CLOSED |
| ABS-007 | OMOC_合冊 | retrieval/anti-hallucination and RAG hooks | absorbed as nav-only / support-only retrieval discipline | CLOSED_SUPPORT |
| ABS-008 | 參考方案合冊 | Pipeline-B StrategyPack/FeedbackPack and Pipeline-C fixed-version consume contract | absorbed as owner-patch bridge only | CLOSED |
| ABS-009 | CA-METHOD_MC4&WP_重構升級藍圖_v2 | mapping_card, consumer refs, policy bundle, checkrun contract | absorbed directly into WP-02 and release block logic | CLOSED |
| ABS-010 | CA-METHOD_MC4_WP_升級方案 | legacy WP clause map and full artifact matrix | used as primary replacement matrix for missing WP-M baseline | PARTIAL_CARRIER_FALLBACK |
| ABS-011 | CA-METHOD_MC4+_合冊 | latest owner constitution and release blockers | no current-workspace exact locator; only higher-authority overlap and old carrier obligations were retained | TEMP_CLOSED / UNVERIFIED_DIRECT |
| ABS-012 | MC4+_WP-M_WP-RB-WI_升級藍圖_v1.1.0-r2 | sourcepack discipline and four-book materialization pattern | adopted as packaging contract and validation pattern | CLOSED |
| ABS-013 | Pipeline-B_MC4+_WP-M_WP-RB-WI_升級藍圖 | Pipeline-B shared contract / proposal-only / XQ-only boundary | absorbed as Boundary Law | CLOSED |
| ABS-014 | Ops RUNBOOK_合冊 | weekly four-card and 13:10/13:20 operator constraints | translated into TW/ICT domain guardrails and operator WI | CLOSED_SUPPORT |
| ABS-015 | 台股實戰映射_合冊 | XF-lite + weekly/RC cadence + TW microstructure | translated into promotion governance and policy bootstrap | CLOSED_SUPPORT |
| ABS-016 | 2022_台股ICT技術研究_合冊 | monthly/weekly reset, journal/replay cadence | absorbed into WP-03 review clock and evidence filing | CLOSED_SUPPORT |


### 6.2 Replacement matrix
| previous_or_missing_item | replacement / absorption path | adjudication |
|---|---|---|
| Missing exact `CA-METHOD_WP-M_合冊` | `CA-METHOD_MC4_WP_升級方案.md` + `CA-METHOD_MC4&WP_重構升級藍圖_v2.md` + higher-authority carrier rows (`正文合冊` / central law) | PARTIAL_CARRIER_FALLBACK / TEMP_CLOSED |
| Legacy `CA-METHOD_WP合冊` | clause map + artifact matrix + consumer refs + packaging clauses | absorbed and rewritten |
| MethodCard-only worldview | `MethodCard + MethodSpec + MethodPack + policy bundle + consumer contracts + StrategyPack_draft` | superseded |
| direct runtime mutation by METHOD | publish-only/consume-only contract + route-out owner ceiling | rejected |

### 6.3 Conflict adjudication ledger
| conflict_id | issue | higher_authority | lower_source | adjudication | rationale |
|---|---|---|---|---|---|
| CON-001 | CA-METHOD owner scope vs runtime temptation | 正文合冊/中央工程正文 | support/how-to texts | CA-METHOD is owner for method artifacts only; runtime duties remain route-out | Higher authority + one-rule-one-owner |
| CON-002 | FeedbackPack can alter MethodCard | 參考方案合冊 + CA-METHOD owner books | any downstream wishful rewrite | proposal-only only; no direct finalization | Explicit pipeline rule + owner boundary |
| CON-003 | Pipeline-C may edit method semantics | 參考方案合冊 + CA-METHOD owner books | implementation convenience | consume-only fixed-version SpecPack + StrategyPack | Boundary and reproducibility |
| CON-004 | Missing CA-METHOD WP-M exact file | task asks full absorption | workspace observation | mark MISSING_DIRECT; absorb through clause carriers and rewrite matrix | Fail-closed honesty |
| CON-005 | release-ready claim without Package D/E proofs | package sidecars exist | owner proof absent | BLOCK_RELEASE maintained | No-validator-no-release-claim |


---

<a id="requirement-canonical-set"></a>
## 7. Requirement Canonical Set / Requirement Closure Matrix

### 7.1 Requirement Canonical Set
1. CA-METHOD 是 Pipeline-B 的 **方法 formalization owner**，不是 runtime owner。
2. CA-METHOD 必須交付 `MethodCard / MethodSpec / MethodPack / primitive_coverage_map / scenario_binding / mapping_card / StrategyPack_draft / publish-only consumer contracts / publish-only TW mapping contracts`。
3. `FeedbackPack` 只能 proposal-only；不得直接 finalize MethodCard / MethodSpec。
4. `Pipeline-C` 只能 consume 固定版本 `SpecPack + StrategyPack`；不得改方法卡、不得改回測參數。
5. `event_gate_registry / board_rule_matrix / time_window_policy / flip_criteria_policy / execution_restraints` 為 METHOD-side policy bundle 的最低集合。
6. `ta_consumer_view / select_consumer_view / translate_consumer_view / watch_consumer_view / execute_handoff_stub` 為 METHOD-side consumer / handoff contract 的最低集合。
7. 日更蒸餾不得直接升格為 canonical method；只能先進 sandbox / weight layer / XF-lite queue；週批或 RC 才可 promotion。
8. `MethodPack` 與 `StrategyPack` 均屬 canonical deliverable，必帶 `run_id / hash / lineage / upstream_refs / downstream_refs`。
9. 無 exact locator、無 owner、無 validator、無 release guard、無 repo truth 的 release claim 一律不成立。

### 7.2 Requirement closure matrix
| requirement_id | requirement | main_landing | secondary_landing | status |
|---|---|---|---|---|
| REQ-METHOD-001 | CA-METHOD is Pipeline-B owner for method formalization, not runtime owner | §09 Requirement Canonical Set | WP-RB-WI-MASTER / WP-02-RB / WP-02-WI | CLOSED |
| REQ-METHOD-002 | Must produce MethodCard / MethodSpec / MethodPack / primitive_coverage_map / scenario_binding / mapping_card / StrategyPack_draft | §09 Requirement Canonical Set | WP-02-RB / WP-02-WI / WP-03-RB | CLOSED |
| REQ-METHOD-003 | FeedbackPack is proposal-only and may not finalize MethodCard | §09 Requirement Canonical Set | WP-03-RB / WP-03-WI | CLOSED |
| REQ-METHOD-004 | Pipeline-C is consume-only for fixed SpecPack + StrategyPack | §09 Requirement Canonical Set | WP-03-RB / WP-03-WI / Interface Closure | CLOSED |
| REQ-METHOD-005 | CA-METHOD must not take TA/SELECT/TRANSLATE/WATCH/EXECUTE runtime duties | §09 Requirement Canonical Set | WP-RB-WI-MASTER / Route-out Registry | CLOSED |
| REQ-METHOD-006 | TW microstructure / board rules / event/time windows must be materialized as policy artifacts | §09 Requirement Canonical Set | WP-01-RB / WP-01-WI / WP-02-WI | CLOSED |
| REQ-METHOD-007 | Weekly/RC cadence governs promotion of daily distill into canonical method artifacts | §09 Requirement Canonical Set | WP-01-RB / WP-03-RB | CLOSED |
| REQ-METHOD-008 | MethodPack and StrategyPack are canonical deliverables with lineage/hash/refs | §09 Requirement Canonical Set | WP-03-RB / Packaging Contract | CLOSED |
| REQ-METHOD-009 | No-source-no-norm / no-anchor-no-claim / no-validator-no-release-claim | §04 Authority Stack | Whole book | CLOSED |
| REQ-METHOD-010 | Package D exact required-check proof absent => BLOCK_RELEASE | §12 TT/CR/Block | Release Blocker Register | TEMP_CLOSED |
| REQ-METHOD-011 | Package E release_guard / package reality direct proof absent => BLOCK_RELEASE | §12 TT/CR/Block | Release Blocker Register | TEMP_CLOSED |
| REQ-METHOD-012 | All WP RB/WI docs must be individually extractable and operator-usable | §15 Fenced documents | WP-01/02/03 RB/WI fences | CLOSED |


---

<a id="interface-closure"></a>
## 8. Interface Closure / Route-out Registry / Owner Ceiling

### 8.1 Interface closure
- 本冊**不鎖死 peer 版本號**；只鎖 `import surface / minimum keys / owner / fallback / route-out`。
- `SpecPack` / source pointers / semantic report / ReferenceDB refs / TW rule refs 是上游 intake truth。
- `MethodCard / MethodSpec / MethodPack / policy bundle / consumer views / StrategyPack_draft` 是 CA-METHOD 對外發布的 method-facing truth。
- `Pipeline-C` 只 consume；`CA-PERFORM` 只 proposal-only feedback；`WATCH/EXECUTE` 只拿 handoff/policy refs，不拿 METHOD runtime ownership。
- exact payload / validator / release_guard / execute profile 真相一律 route-out，不在本冊本地偽補。

### 8.2 Route-out registry
| topic | route_out_target | why | fail-closed consequence |
|---|---|---|---|
| schema / manifest / evidence schema | Package B / LBP-B | CA-METHOD may declare minimum keys but not redefine owner schema | BLOCK_RELEASE when mandatory exact payload truth absent |
| factory workflow / required checks / build execution / lockfiles | Package D / Factory Pack | exact workflow execution proof is owner-external | BLOCK_RELEASE |
| validator / release_guard / package reality / release provenance | Package E / LBP-E | release truth remains owner-external | BLOCK_RELEASE |
| operator step-by-step / click-path / SOP | Ops RUNBOOK / Dev-Ops HOW owner | this book is not HOW constitution | TEMP_CLOSED if referenced item missing |
| backtest truth / ART-BACKTEST-RESULT | CA-BACKTEST | CA-METHOD cannot fabricate backtest truth | BLOCK_RELEASE |
| translate runtime / XQ parity / execution profile | CA-TRANSLATE + CA-EXECUTE + Package E | METHOD publishes contract only | EXECUTE_DISABLED or BLOCK_RELEASE |


### 8.3 Owner ceiling
- CA-METHOD 不得越權進入 `TA/SELECT/TRANSLATE/WATCH/EXECUTE` runtime。
- CA-METHOD 不得替下游產生最終分析、最終候選清單、最終 XS runtime truth、最終 watch runtime truth、最終 execute truth。
- CA-METHOD 只能把 **自己該交付的 contract 說完整**，不能替別人做事。

---

<a id="artifact-constitution"></a>
## 9. CA-METHOD Artifact Constitution / Packaging Contract / Bundle Tree

### 9.1 Artifact Constitution
| artifact_family | producer_wp | minimum_path | rule |
|---|---|---|---|
| MethodCard / MethodSpec / MethodPack | WP-02 | `build/methodpack/{{method_id}}/{{version_id}}/` | schema and instance must not be same-name same-slot |
| primitive_coverage_map / scenario_binding / source_usage_trace | WP-01 | `build/methodpack/.../coverage|bindings|trace/` | every legacy concept maps to modern coverage row or traceability-only |
| mapping_card / xq_xs_projection_manifest / semantic_invariants | WP-02 | `build/methodpack/.../mapping/` | publish-only translate-facing contract |
| event_gate_registry / board_rule_matrix / time_window_policy / flip_criteria_policy / execution_restraints | WP-01 / WP-02 | `build/methodpack/.../policy/` | TW / Ops hard rules must be machine-readable |
| ta/select/translate/watch/execute consumer views | WP-02 | `build/methodpack/.../consumers/` | consumer-only; no runtime owner leakage |
| StrategyPack_draft / repro_baseline / dataset_binding / slice_manifest | WP-03 | `build/strategypack/.../` | gated handoff to BACKTEST / Pipeline-C |
| MANIFEST / CHECKSUMS / BUILD / handoff_manifest / ledger.sqlite | WP-03 | package root | package truth required before delivery claim |

### 9.2 Packaging contract
1. package root must contain the single markdown main book, sidecars, manifest, checksums, build notes, validation and integrity reports.
2. ZIP 內 root path truth、主書正文、manifest、checksums、build notes、package validation、zip integrity 必須互相一致。
3. `MANIFEST.json` 與 `CHECKSUMS.sha256` 採 **self-excluded canonicalization**：MANIFEST 不記錄自身與 CHECKSUMS 的 hash；CHECKSUMS 不記錄自身 hash，但可以記錄 MANIFEST 的 hash。禁止自咬尾巴式自我雜湊。
4. `package_validation.json` 必須驗 `path existence / actual sha256 / manifest policy / zip freshness / zip content parity`，不能只做數量檢查。
5. `runtime_contract_skeletons` 若存在，只代表 contract materialization，不代表 runtime truth。
6. `Document PASS != Execution PASS != Release PASS != Delivery PASS`。

### 9.3 Bundle tree
```text
{main_name}.md
MANIFEST.json
CHECKSUMS.sha256
BUILD_NOTES.md
package_validation.json
zip_integrity_report.json
sidecars/
  EXACT_LOCATOR_REGISTRY.tsv
  INPUTS_MANIFEST.tsv
  ALIAS_NORMALIZATION_LEDGER.tsv
  REQUIREMENT_CLOSURE_MATRIX.tsv
  UPSTREAM_ABSORPTION_LEDGER.tsv
  CONFLICT_ADJUDICATION_LEDGER.tsv
  COVERAGE_MATRIX.tsv
  TEST_TRACK_LIST.tsv
  RELEASE_BLOCKER_REGISTER.tsv
  ROUTE_OUT_REGISTRY.tsv
  TOOLING_ADJUDICATION.tsv
```

---

<a id="support-source-absorption"></a>
## 10. Support Source Absorption / TW-ICT Domain Guardrails

### 10.1 Legal boundary
- `SEM8` 只作 audit shell / bind shell / route-out shell，不升格 owner 憲法。
- `SEM³` 只補 property report / RTM / anti-miss 橋接，不改 owner law。
- `Ops RUNBOOK` 只提供 HOW / operator cadence / 13:10 / 13:20 / 四卡承接，不得越級為制度 owner。
- `台股實戰映射`、`2022 ICT`、`HistDB` 只補 domain guardrails / cadence / replay discipline / substrate。

### 10.2 TW / ICT domain guardrails
1. 週級四卡是日級盤前定案的上游；盤中不得臨時改四卡，方法變更需回到週級流程重做。
2. `13:10` 起禁新倉（含加碼），`13:20` 強制清倉；這些規則必須在 `time_window_policy` 與 `event_gate_registry` 中落地。
3. `XF-lite` 是方法層預設定位；日更蒸餾只進 sandbox/weight layer/queue，不做日級 canonical promotion；週批或 RC 才可吸收。
4. `Monthly Reset / Weekly Reset / Journal / Replay / Event-Time Governance` 必須進入 WP-03 review clock 與 evidence filing rules。
5. 台股微結構（漲跌幅、VI、tick size、集合競價、零股限制、當沖限制）必須進 `board_rule_matrix`、`event_gate_registry`、`time_window_policy`；缺其一視為 `CONFIGURE_REQUIRED`。

### 10.3 Support-source absorption matrix
| support_source | absorbed_for | not allowed_to_do |
|---|---|---|
| SEM8-ICT-TW | audit shell / route-out shell / owner-boundary reminder | rewrite owner constitution |
| SEM³資料參考 | method.report / RTM / spec_property_report mirror / anti-miss | redefine gate law |
| Ops RUNBOOK | four-card, 13:10/13:20, operator step flow | become schema owner |
| 台股實戰映射 | XF-lite, RC cadence, TW microstructure, parity caution | rewrite central owner law |
| 2022 ICT研究 | monthly/weekly reset, journal/replay/event-time | redefine modern stable IDs |
| HistDB | read-only substrate support | become second primary backbone |

---

<a id="tooling-adjudication"></a>
## 11. Tooling Adjudication

| tool_or_pattern | bucket | adjudication | note |
|---|---|---|---|
| Parquet + DuckDB | Primary | Local analytical backbone; zero-copy-ish Parquet querying; aligns with low-friction local-first stack | OFFICIAL |
| SQLite + DuckDB(view) | Allowed with minimal config | Append-only RunLedger truth + analytics view split | OWNER_PREFERRED |
| NDJSON | Primary | Append-only events/replay/audit logs | STABLE |
| jsonschema 2020-12 | Primary | Contract validation for JSON artifacts; vocabulary/spec current is 2020-12 | OFFICIAL |
| python-jsonschema | Allowed with minimal config | Reference validator implementation; thin validation CLI okay | OFFICIAL |
| DVC pointers | Allowed with minimal config | Version large data/artifact pointers without inventing new framework | OFFICIAL_SUPPORT |
| APScheduler / cron / Task Scheduler | Allowed with minimal config | Light scheduling only; not a grand orchestrator | OFFICIAL |
| Prefect 3 | Optional-Lab | May be revisited only if APScheduler path proven insufficient by owner evidence | DEFERRED |
| Codespaces | Route-out | Fallback environment, not day-1 mainline for this book | SUPPORT_ONLY |
| self-built orchestrator | Reject | Violates no-reinvent / high-friction / fake completeness pattern | REJECT |
| self-built release validator/evidence framework | Reject | Owner truth already exists upstream; reinvention forbidden | REJECT |


### 11.1 Primary path
- `Parquet + DuckDB`
- `SQLite + DuckDB(view)`
- `NDJSON`
- `jsonschema 2020-12`
- `python-jsonschema` thin validators
- `DVC pointers`
- `APScheduler / cron / Task Scheduler`
- `local-first`

### 11.2 Rejected path
- self-built orchestrator
- self-built release validator
- self-built evidence framework
- any “看起來很全，但其實把 owner truth 重造一次”的方案

---

<a id="cr-open-closure"></a>
## 12. CR_OPEN / CONFIGURE_REQUIRED / TEMP_CLOSED / TEST_TRACK / Release Blockers

### 12.1 CR_OPEN / TEMP_CLOSED policy
- 能用上位文件閉合者，直接閉合。
- 能用最新可信官方資料證明工具成熟度者，作 support-only 補洞。
- 不能閉合者，一律 `TEMP_CLOSED + TEST_TRACK`；不得懸空。

### 12.2 TEST_TRACK list
| tt_id | topic | status | owner | reopen_criteria |
|---|---|---|---|---|
| TT-CAMETHOD-WPRBWI-001 | Exact CA-METHOD WP-M baseline file not physically observed | TEMP_CLOSED | Document owner | Exact-title file appears and matches higher-authority scope |
| TT-CAMETHOD-WPRBWI-002 | Package D exact required-check execution proof absent | BLOCK_RELEASE | Package D owner | Owner proof observed |
| TT-CAMETHOD-WPRBWI-003 | Package E release_guard/package reality direct proof absent | BLOCK_RELEASE | Package E owner | Owner proof observed |
| TT-CAMETHOD-WPRBWI-004 | Threshold numeric bands remain owner-controlled / profile-bound | TEMP_CLOSED | Package E owner | Profile-bound thresholds supplied |
| TT-CAMETHOD-WPRBWI-005 | XQ parity/runtime parity not observed in this workspace | BLOCK_RELEASE | Translate/Execute/Package E owners | Observed parity evidence + release guard green |
| TT-CAMETHOD-WPRBWI-006 | CA-UI exact read-only payload ICD not bound in current workspace slice | TEMP_CLOSED | CA-UI ICD owner | Higher-authority ICD observed |
| TT-CAMETHOD-WPRBWI-007 | Web support evidence may drift | TEMP_CLOSED | Document owner | Re-verify official docs on rebuild |
| TT-CAMETHOD-WPRBWI-008 | Runtime contract skeletons are not runtime truths | BOUND_OPEN | Subsystem owner | Real run evidence observed |


### 12.3 Release blocker register
| blocker_id | issue | verdict | owner |
|---|---|---|---|
| RB-001 | repo-side required checks not directly observed | BLOCK_RELEASE | Package D owner |
| RB-002 | branch protection / rulesets / merge queue truth not directly observed | BLOCK_RELEASE | Repo owner |
| RB-003 | artifact attestations / provenance verification not observed on actual repo artifacts | BLOCK_RELEASE | Package E / repo owner |
| RB-004 | XQ parity / runtime parity evidence not observed | BLOCK_RELEASE | Translate/Execute owners |
| RB-005 | exact CA-METHOD WP-M baseline file unobserved; absorption uses indirect carriers | PASS_WITH_GUARDS | Document owner |


---

<a id="docs-as-code"></a>
## 13. Docs-as-Code × Diátaxis × GraphRAG / RAPTOR / CRAG × RAG-Triad 最小落地設計

### 13.1 Docs-as-Code
- 本主冊與 sidecars 皆採 machine-parseable anchors / tables / registries / manifests。
- `EXACT_LOCATOR_REGISTRY.tsv`、`REQUIREMENT_CLOSURE_MATRIX.tsv`、`ROUTE_OUT_REGISTRY.tsv` 是可機械稽核主體。

### 13.2 Diátaxis 分層
- **Reference / Normative**：§2, §5, §7, §8, §9, fenced docs 中的 acceptance / boundary / artifacts。
- **How-to**：fenced WI documents。
- **Explanation**：§6, §10, §11 的設計理由與吸收說明。
- **Route-out**：§8.2 registry + §12 blockers/TT。

### 13.3 GraphRAG / RAPTOR / CRAG hooks（最小介面，不新增系統）
- Graph hook：`exact_locator_registry.tsv` 的 source→claim edges。
- RAPTOR hook：以 fenced docs 作 coarse nodes；以 sidecars 作 deterministic summary leaves。
- CRAG hook：`TEST_TRACK_LIST.tsv` + `RELEASE_BLOCKER_REGISTER.tsv` 作 conflict/quarantine list。
- RAG-Triad:
  - context relevance = 先命中 authority stack + requirement rows
  - groundedness = 每個結論回指 exact locator 或 owner proof status
  - answer relevance = 每份 RB/WI 可被單獨抽出直接執行或審核

### 13.4 Section classification
- **normative**：Authority / Requirement / Interface / Artifact Constitution / fenced RB/WI acceptance rules
- **support-only**：TW/ICT bridge absorption, web evidence appendix
- **nav-only**：Reader Guide / Quick Index / Download section

---

<a id="coverage-matrix"></a>
## 14. Coverage Matrix / Self-Audit / Final Verdicts / Download Section

### 14.1 Coverage matrix
| coverage_id | obligation | landing | status |
|---|---|---|---|
| COV-001 | Preflight: Inputs Manifest / Alias Ledger / Missing Register | §4.1-§4.3 | CLOSED |
| COV-002 | Authority Crosswalk / Scope Lock / Goal Premise Ordering | §2.2-§2.5 | CLOSED |
| COV-003 | Requirement Canonical Set / Closure Matrix | §7 | CLOSED |
| COV-004 | Owner book absorption and replacement matrix | §6 | PARTIAL / TEMP_CLOSED |
| COV-005 | Blueprint absorption incl sourcepack/materialization discipline | §6 / §9.2 / §11 | CLOSED |
| COV-006 | Support-source absorption without escalation | §10 | CLOSED |
| COV-007 | CR_OPEN closure policy | §12 | CLOSED |
| COV-008 | WP-RB-WI-MASTER + WP-01/02/03 RB/WI full fences | §15 | CLOSED |
| COV-009 | Packaging: md/zip/manifest/checksums/build/package validation/zip integrity | §9.2 / §14.4 / generated files | CLOSED |
| COV-010 | Download section and delivery links | §14.6 | CLOSED |
| COV-011 | Docs-as-Code / Diátaxis / GraphRAG-RAPTOR-CRAG / RAG-Triad minimal design | §13 | CLOSED |
| COV-012 | Release blockers and test track list | §12 / sidecars | CLOSED |


### 14.2 Self-audit checklist
- [x] Inputs manifest built and normalized
- [x] Authority order fixed and not inverted
- [x] Missing / unverified items honestly downgraded
- [x] Requirement canonical set formed
- [x] Owner-book absorption performed
- [x] Support sources absorbed without escalation
- [x] WP-RB-WI-MASTER + WP-01/02/03 RB/WI fully expanded
- [x] Packaging files generated and cross-checked
- [x] ZIP integrity checked
- [x] Delivery links can be produced by this interface

### 14.3 Final verdicts
- **Document**: PASS_WITH_GUARDS
- **Packaging**: PASS
- **Execution**: FAIL_CLOSED
- **Release**: BLOCK_RELEASE
- **Delivery**: PASS

### 14.4 Repair Closure Matrix against AUDIT
| audit_id | repair_result | status |
|---|---|---|
| D-001 | all seven fenced docs now carry literal version `v2026.03.31-r2` | CLOSED |
| S-001 | coverage matrix landings corrected; no `§16` ghost refs remain | CLOSED |
| S-002 | independent `Authority Crosswalk` added at §2.5 | CLOSED |
| S-003 | independent `Requirement Intake Matrix` added at §4.4 | CLOSED |
| L-001 | ABS-011 downgraded to `TEMP_CLOSED / UNVERIFIED_DIRECT`; exact-locator rule added | CLOSED |
| L-002 | owner absorption status downgraded from pseudo-closed to `PARTIAL / TEMP_CLOSED` where direct baseline is missing | CLOSED |
| P-001 | `package_validation.json` rewritten to validate actual path/hash/freshness/policy | CLOSED |
| P-002 | self-hash loop removed; MANIFEST and CHECKSUMS now use self-excluded canonicalization | CLOSED |
| P-003 | `zip_integrity_report.json` regenerated after final zip build | CLOSED |
| P-004 | zip internal MANIFEST/CHECKSUMS now match actual packaged files | CLOSED |
| E-001 | appendix now prioritizes official docs/spec pages | CLOSED |
| D-002 | download section now materializes package-relative paths | CLOSED |
| C-001 | each fence header now binds to locator IDs, not only source-name bundles | CLOSED |

### 14.5 Self-audit checklist
- [x] Inputs manifest built and normalized
- [x] Authority order fixed and not inverted
- [x] Missing / unverified items honestly downgraded
- [x] Requirement canonical set formed
- [x] Authority Crosswalk materialized
- [x] Requirement Intake Matrix materialized
- [x] Owner-book absorption reclassified honestly
- [x] Support sources absorbed without escalation
- [x] WP-RB-WI-MASTER + WP-01/02/03 RB/WI fully expanded
- [x] Packaging files regenerated in stable order
- [x] ZIP integrity checked after final build
- [x] Delivery links can be produced by this interface

### 14.6 Download section
```text
./Spartoi-OMOC_SubP1-LITE+MVP_CA-METHOD_WP-RB-WI_合冊.md
./Spartoi-OMOC_SubP1-LITE+MVP_CA-METHOD_WP-RB-WI_合冊.zip
./MANIFEST.json
./CHECKSUMS.sha256
./BUILD_NOTES.md
./package_validation.json
./zip_integrity_report.json
./camethod_wp_rb_wi_bundle/sidecars/EXACT_LOCATOR_REGISTRY.tsv
./camethod_wp_rb_wi_bundle/sidecars/INPUTS_MANIFEST.tsv
./camethod_wp_rb_wi_bundle/sidecars/ALIAS_NORMALIZATION_LEDGER.tsv
./camethod_wp_rb_wi_bundle/sidecars/REQUIREMENT_CLOSURE_MATRIX.tsv
./camethod_wp_rb_wi_bundle/sidecars/UPSTREAM_ABSORPTION_LEDGER.tsv
./camethod_wp_rb_wi_bundle/sidecars/CONFLICT_ADJUDICATION_LEDGER.tsv
./camethod_wp_rb_wi_bundle/sidecars/COVERAGE_MATRIX.tsv
./camethod_wp_rb_wi_bundle/sidecars/TEST_TRACK_LIST.tsv
./camethod_wp_rb_wi_bundle/sidecars/RELEASE_BLOCKER_REGISTER.tsv
./camethod_wp_rb_wi_bundle/sidecars/ROUTE_OUT_REGISTRY.tsv
./camethod_wp_rb_wi_bundle/sidecars/TOOLING_ADJUDICATION.tsv
```

---


<a id="fenced-documents"></a>
## 15. Fenced documents

<!-- BEGIN:FENCE:WP-RB-WI-MASTER -->
# WP-RB-WI-MASTER
- external_name: Spartoi-OMOC_SubP1-LITE+MVP_CA-METHOD_WP-RB-WI-MASTER
- internal_short_name: CAMETHOD_WPRBWI_MASTER
- version: v2026.03.31-r2
- scope: CA-METHOD WP-RB-WI master shell / sequencing / global boundary / package truth / stopline / route-out
- owner: CA-METHOD document owner（subsystem-local, not runtime owner）
- source_bindings: LOC-001, LOC-003, LOC-004, LOC-006, LOC-007, LOC-008, LOC-010, LOC-012, LOC-014, LOC-015, LOC-017, LOC-018, LOC-SUP-001, LOC-SUP-002, LOC-SUP-003, LOC-SUP-004, LOC-SUP-005, LOC-SUP-006
- downstream_handoff_target: WP-01-RB, WP-01-WI, WP-02-RB, WP-02-WI, WP-03-RB, WP-03-WI, Package D, Package E, CA-BACKTEST, Pipeline-C
- verdict_split: DOCUMENT_PASS_WITH_GUARDS / EXECUTION_FAIL_CLOSED / RELEASE_BLOCK_RELEASE / DELIVERY_PASS

## 1. 文件定位與適用範圍
本 master 不是重寫 owner law，而是把 CA-METHOD 在 WP-RB-WI 層的施工順序、全域 stopline、rollup acceptance gate、package truth 與 route-out ceiling 固定下來。任何局部 RB/WI 與本 master 衝突時，以本 master 為準；本 master 與上位 norm 衝突時，以上位 norm 為準。

## 2. 對應 WP 任務與邊界
- WP-01：upstream intake / source fusion / trace/bootstrap
- WP-02：method formalization / policy bundle / consumer contracts / methodpack build
- WP-03：StrategyPack_draft / handoff / evidence packaging / review clock / route-out compile
- 禁止：本地聲稱 runtime / release / repo truth 已通過。

## 3. 前置條件
- 上位 authority files 可讀。
- SpecPack/source pointers, primitive, evidence, TW rule refs 可定位。
- Package D / E route-out owner 已知。
- 缺任何 mandatory truth 時，允許文檔交付，但不得 release pass。

## 4. 所需輸入
- distill outputs / DSL spec / evidence chain
- ReferenceDB refs / market profile refs / TW rule refs
- threshold/profile refs（若缺則 profile-bound TEMP_CLOSED）
- prior Method lineage（若存在）

## 5. 所需工具與環境
- DuckDB, SQLite, Parquet, NDJSON
- jsonschema 2020-12 + thin validator CLI
- local-first filesystem
- APScheduler/cron/Task Scheduler（light schedule only）
- DVC pointers（optional but allowed）

## 6. execution order
1. WP-01 intake and trace bootstrap
2. WP-02 formalize MethodCard/MethodSpec/MethodPack and consumer/policy bundle
3. WP-03 package StrategyPack_draft, evidence, review clock, handoff and package truth
4. package validation and zip integrity
5. final verdict split and blockers

## 7. stopline / degrade / block conditions
- no source / no anchor / no owner / no route-out / no package truth -> stop
- missing TW policy bundle -> CONFIGURE_REQUIRED
- missing exact Package D/E owner proof -> BLOCK_RELEASE
- any attempt to push CA-METHOD into runtime owner role -> reject
- any attempt to let FeedbackPack auto-finalize MethodCard -> reject

## 8. acceptance gate
- all six fenced docs generated and self-consistent
- sidecars generated
- exact locator registry exists
- package_validation.json green for internal consistency
- release blockers explicitly listed

## 9. rollback / handoff rules
- rollback to last valid MethodPack / StrategyPack_draft snapshot
- downstream handoff only via immutable artifacts + manifest + checksums
- operator HOW remains route-out; this master only declares handoff contract
<!-- END:FENCE:WP-RB-WI-MASTER -->

<!-- BEGIN:FENCE:WP-01-RB -->
# WP-01-RB
- external_name: Spartoi-OMOC_SubP1-LITE+MVP_CA-METHOD_WP-01-RB
- internal_short_name: CAMETHOD_WP01_RB
- version: v2026.03.31-r2
- scope: upstream intake / source fusion / TW rule bootstrap / coverage trace runbook
- owner: CA-METHOD
- source_bindings: LOC-001, LOC-009, LOC-010, LOC-011, LOC-013, LOC-017, LOC-SUP-001, LOC-SUP-002, LOC-SUP-003, LOC-SUP-006
- downstream_handoff_target: WP-01-WI -> WP-02-RB
- verdict_split: DOCUMENT_PASS_WITH_GUARDS / EXECUTION_FAIL_CLOSED / RELEASE_BLOCK_RELEASE / DELIVERY_PASS

## 1. 文件定位與適用範圍
WP-01-RB 負責把上游 `SpecPack / source pointers / primitive / evidence / TW rule refs` 吸收成可被 WP-02 使用的 intake truth。它不產生 MethodCard 定案；它產生 intake trace、coverage、scenario 與 policy bootstrap。

## 2. 權威來源綁定
- 正文合冊 `L1967-L1974`, `L7155-L7174`
- CA-METHOD old upgrade plan `L210-L243`, `L252-L257`, `L1227-L1227`
- 台股實戰映射 `L497-L541`, `L868-L913`
- Ops RUNBOOK `週級四卡 / 13:10 / 13:20`

## 3. 對應 WP 任務與邊界
- 任務：建立 `primitive_coverage_map.tsv`, `scenario_binding.json`, `story_seed/risk_seed`（或 owner-approved equivalent trace), `time_window_policy.json`, `event_gate_registry.json`, `board_rule_matrix.json`, `source_usage_trace.json`。
- 邊界：不得直接 finalize MethodCard；不得改下游 consumer contracts；不得偽造 backtest/runtime truth。

## 4. 前置條件
- upstream source pointers 可定位
- primitive / DSL / evidence pointers 可定位
- TW microstructure rule refs 可定位
- threshold/profile refs 若缺，先記入 TEMP_CLOSED

## 5. 所需輸入
- SpecPack / source pointers
- claim_registry / evidence_chain / semantic report
- ReferenceDB / market profile refs
- TW microstructure rule refs
- whitelist/support refs（support-only）

## 6. 所需工具與環境
- filesystem + DuckDB/Parquet read-only access
- thin ingestion script or manual operator form
- jsonschema for source_usage_trace and binding structure

## 7. 施工實作步驟
1. 建立 Inputs Receipt，逐條記錄 source pointer、hash、時間、用途。
2. 產出 `source_usage_trace.json`，標明哪條 source 進了哪個 artifact family。
3. 由 primitive / DSL / evidence 生成 `primitive_coverage_map.tsv`，所有 legacy concept 必有現代 coverage row 或標 `traceability-only`。
4. 生成 `scenario_binding.json`，綁定 route_mode / market context / session windows。
5. 生成 `time_window_policy.json`、`event_gate_registry.json`、`board_rule_matrix.json`；把 13:10/13:20、VI、集合競價、tick size、板別/處置等寫成 machine-readable keys。
6. 若日更蒸餾要進 canonical queue，僅能寫入 XF-lite queue / sandbox / weight layer，不得直接 promotion。
7. 產出 WP-01 evidence bundle，交給 WP-02。

## 8. 檢查點 / stopline / degrade / block 條件
- 缺 source pointer -> STOP
- 缺 semantic/evidence chain -> `G-SRC fail`
- 缺 TW rule refs -> `CONFIGURE_REQUIRED`
- 直接把 support refs 升格為 normative -> STOP
- 想把日更蒸餾直接升 canonical -> BLOCK

## 9. 驗收條件
- `primitive_coverage_map.tsv` 可覆蓋新舊概念，不留無主鍵黑洞
- `scenario_binding.json` 與 route_mode / windows 能對位
- `time_window_policy / event_gate_registry / board_rule_matrix` 三件齊全
- `source_usage_trace.json` 能回指每條來源用途

## 10. 需要產出的 artifacts
- `primitive_coverage_map.tsv`
- `scenario_binding.json`
- `source_usage_trace.json`
- `story_seed.json` / `risk_seed.json` 或等價 trace artifact
- `time_window_policy.json`
- `event_gate_registry.json`
- `board_rule_matrix.json`

## 11. 必備 evidence
- source receipt
- locator proof list
- hash list
- policy bootstrap review note

## 12. 失敗處置與 rollback
- rollback to prior intake snapshot
- keep failed rows in quarantine register
- never silently drop legacy concept; mark `traceability-only`

## 13. handoff / downstream contract
- handoff to WP-02 only when all above artifacts exist or are explicitly TEMP_CLOSED
- handoff packet must include unresolved list

## 14. TW / ICT / domain guardrails
- 13:10 禁新倉、13:20 強清需在 policy keys落地
- 日更蒸餾只進 XF-lite queue
- 週級四卡是盤前定案上游，不得盤中臨改

## 15. TEST_TRACK / TEMP_CLOSED
- threshold/profile refs absent -> TT-CAMETHOD-WPRBWI-004
<!-- END:FENCE:WP-01-RB -->

<!-- BEGIN:FENCE:WP-01-WI -->
# WP-01-WI
- external_name: Spartoi-OMOC_SubP1-LITE+MVP_CA-METHOD_WP-01-WI
- internal_short_name: CAMETHOD_WP01_WI
- version: v2026.03.31-r2
- scope: operator-facing intake instructions and field-level fill rules
- owner: CA-METHOD
- source_bindings: LOC-010, LOC-011, LOC-013, LOC-SUP-001, LOC-SUP-002, LOC-SUP-003
- downstream_handoff_target: WP-02 operator lane
- verdict_split: DOCUMENT_PASS_WITH_GUARDS / EXECUTION_FAIL_CLOSED / RELEASE_BLOCK_RELEASE / DELIVERY_PASS

## 1. operator checklist
1. 開 `INPUTS_MANIFEST.tsv`，確認 source status 不是 `MISSING` 或已寫明 recovery path。
2. 對每個 source 填：`source_id / file / hash / locator / use_case / authority_class / support_only?`。
3. 若 source 是 support-only，`normative_override=false` 必填。
4. legacy concept 沒對到現代 key 時，不可刪除；在 `primitive_coverage_map.tsv` 填 `traceability_only=true`。

## 2. field-level fill rules
- `primitive_coverage_map.tsv`
  - `legacy_term`
  - `modern_key`
  - `coverage_status = mapped | traceability_only | missing`
  - `source_locator`
  - `operator_note`
- `scenario_binding.json`
  - `scenario_id`
  - `market_context`
  - `route_mode`
  - `time_window_ref`
  - `event_gate_ref`
- `time_window_policy.json`
  - must include `no_new_position_after_1310`
  - must include `force_flatten_at_1320`
  - may include `rod_only_close_auction_1325_1330`
- `event_gate_registry.json`
  - include `vi_window`, `board_rule_ref`, `session_cutoff_ref`

## 3. evidence filing rules
- Each row/file must include `source_locator` and `generated_by`.
- Every JSON file must be pretty-printed UTF-8 and pass schema lint.
- Store raw input receipt under `evidence/wp01/input_receipts/`.

## 4. stopline reminders
- missing != pass
- support-only != owner law
- queue != promotion
- traceability-only != absorbed normative

## 5. handoff form
```yaml
wp_id: WP-01
handoff_to: WP-02
artifacts:
  - primitive_coverage_map.tsv
  - scenario_binding.json
  - source_usage_trace.json
  - time_window_policy.json
  - event_gate_registry.json
  - board_rule_matrix.json
open_items:
  - []
operator_verdict: READY | TEMP_CLOSED | BLOCKED
```
<!-- END:FENCE:WP-01-WI -->

<!-- BEGIN:FENCE:WP-02-RB -->
# WP-02-RB
- external_name: Spartoi-OMOC_SubP1-LITE+MVP_CA-METHOD_WP-02-RB
- internal_short_name: CAMETHOD_WP02_RB
- version: v2026.03.31-r2
- scope: method formalization / policy bundle / consumer contracts / MethodPack runbook
- owner: CA-METHOD
- source_bindings: LOC-003, LOC-004, LOC-006, LOC-007, LOC-008, LOC-012, LOC-014, LOC-015, LOC-018, LOC-SUP-005, LOC-SUP-006
- downstream_handoff_target: WP-02-WI -> WP-03-RB -> CA-BACKTEST / Pipeline-C
- verdict_split: DOCUMENT_PASS_WITH_GUARDS / EXECUTION_FAIL_CLOSED / RELEASE_BLOCK_RELEASE / DELIVERY_PASS

## 1. 文件定位與適用範圍
WP-02-RB 是 CA-METHOD 的核心 formalization lane。它把 WP-01 intake truth 固化為 `MethodCard / MethodSpec / MethodPack / mapping_card / consumer views / policy bundle / sem3 reports`。

## 2. 權威來源綁定
- 正文合冊 `L3907-L3983`
- old upgrade plan `L223-L243`, `L261-L279`
- v2 patched blueprint `L290-L314`, `L318-L322`, `L788-L793`, `L975-L986`, `L998-L1004`
- MC4+ owner book（file-library observed）

## 3. 對應 WP 任務與邊界
- 任務：產出 owner-canonical method-facing artifacts。
- 邊界：不做 TA/SELECT/TRANSLATE/WATCH/EXECUTE runtime；只發 publish-only / consume-only contracts。

## 4. 前置條件
- WP-01 handoff READY or TEMP_CLOSED with explicit open items
- TW policy bundle bootstrap exists
- semantic/evidence chain exists

## 5. 所需輸入
- `primitive_coverage_map.tsv`
- `scenario_binding.json`
- `time_window_policy.json`, `event_gate_registry.json`, `board_rule_matrix.json`
- semantic/evidence chain
- market/ref data refs

## 6. 所需工具與環境
- method models / thin validator / JSON Schema
- deterministic file renderer
- optional sem3 property checker

## 7. 施工實作步驟
1. 根據 intake truth 生成 `MethodCard.md/json`。
2. 生成 `MethodSpec.schema.json` 與 `MethodSpec.json`；禁止 schema/instance 同名同位混用。
3. 組裝 `MethodPack/`。
4. 恢復並生成 `mapping_card.json`, `xq_xs_projection_manifest.json`, `semantic_invariants.json`。
5. 生成 policy bundle：`event_gate_registry.json`, `board_rule_matrix.json`, `time_window_policy.json`, `flip_criteria_policy.json`, `execution_restraints.json`。
6. 生成 consumer/handoff contracts：`ta_consumer_view.json`, `select_consumer_view.json`, `translate_consumer_view.json`, `watch_consumer_view.json`, `execute_handoff_stub.json`。
7. 生成 `sem3/method.report.json`, `sem3/rtm_sem3.csv`, `sem3/spec_property_report.json`。
8. 執行 METHOD-side boundary lint：任何 consumer view 若出現 runtime owner leakage，立即 stop。

## 8. 檢查點 / stopline / degrade / block 條件
- `MethodSpec.schema.json` 與 `MethodSpec.json` 同名同位 -> STOP
- 缺 `mapping_card / policy bundle / consumer views` 任一 -> STOP
- consumer view 出現 TA runner / SELECT ranking runtime / TRANSLATE runtime / execute logic -> STOP
- 微結構規則未綁 -> `CONFIGURE_REQUIRED`

## 9. 驗收條件
- `MethodCard / MethodSpec / MethodPack` 完整
- policy bundle 五件套完整
- consumer/handoff contracts 五件套完整
- sem3 artifacts complete or explicitly TEMP_CLOSED
- no runtime owner leakage

## 10. 需要產出的 artifacts
- `MethodCard.md`, `MethodCard.json`
- `MethodSpec.schema.json`, `MethodSpec.json`
- `MethodPack/`
- `mapping_card.json`, `xq_xs_projection_manifest.json`, `semantic_invariants.json`
- `event_gate_registry.json`, `board_rule_matrix.json`, `time_window_policy.json`, `flip_criteria_policy.json`, `execution_restraints.json`
- `ta_consumer_view.json`, `select_consumer_view.json`, `translate_consumer_view.json`, `watch_consumer_view.json`, `execute_handoff_stub.json`
- `sem3/method.report.json`, `sem3/rtm_sem3.csv`, `sem3/spec_property_report.json`

## 11. 必備 evidence
- schema lint log
- boundary lint log
- method rationale note
- sem3 property note

## 12. 失敗處置與 rollback
- revert to previous MethodPack snapshot
- mark invalid consumer/policy artifact in quarantine
- no partial publish of MethodPack if canonical set incomplete

## 13. handoff / downstream contract
- to CA-BACKTEST: publish `MethodCard / MethodSpec / MethodPack / StrategyPack_draft refs`
- to Pipeline-C: publish consumer views and policy refs only
- to CA-WATCH/EXECUTE: publish handoff stubs only

## 14. TW / ICT / domain guardrails
- all TW time/board/event limits must be in policy files, not prose only
- translate-facing mapping is publish-only; runtime remains elsewhere
- old ICT / module numbering can survive only as dual-key/hot-swap trace, not stable ID

## 15. TEST_TRACK / TEMP_CLOSED
- missing exact numeric thresholds remain owner-controlled and TEMP_CLOSED until profile-bound proof arrives
<!-- END:FENCE:WP-02-RB -->

<!-- BEGIN:FENCE:WP-02-WI -->
# WP-02-WI
- external_name: Spartoi-OMOC_SubP1-LITE+MVP_CA-METHOD_WP-02-WI
- internal_short_name: CAMETHOD_WP02_WI
- version: v2026.03.31-r2
- scope: operator-facing formalization and artifact fill instructions
- owner: CA-METHOD
- source_bindings: LOC-006, LOC-007, LOC-008, LOC-012, LOC-014, LOC-015, LOC-018, LOC-SUP-005
- downstream_handoff_target: WP-03 operator lane
- verdict_split: DOCUMENT_PASS_WITH_GUARDS / EXECUTION_FAIL_CLOSED / RELEASE_BLOCK_RELEASE / DELIVERY_PASS

## 1. operator flow
1. Build `MethodCard.md/json` from intake truth; every claim needs locator.
2. Build `MethodSpec.schema.json` first, then `MethodSpec.json` instance.
3. Materialize `MethodPack/` directory.
4. Fill mapping/consumer/policy artifacts.
5. Run boundary lint.
6. File evidence and open items.

## 2. field-level artifact rules
- `MethodCard.json`
  - `method_id`
  - `rationale`
  - `primitive_refs[]`
  - `scenario_refs[]`
  - `tw_policy_refs[]`
  - `evidence_ptrs[]`
- `MethodSpec.json`
  - `inputs`
  - `rules`
  - `invariants`
  - `degrade_modes`
  - `consumer_contract_refs`
- `mapping_card.json`
  - `projection_scope`
  - `xq_xs_projection_manifest_ref`
  - `semantic_invariants_ref`
  - `publish_only=true`
- `translate_consumer_view.json`
  - must reference `mapping_card.json`
  - must reference `xq_xs_projection_manifest.json`
  - must reference `semantic_invariants.json`
  - must not embed runtime owner fields
- `execute_handoff_stub.json`
  - may reference `flip_criteria_policy`, `board_rule_matrix`, `event_gate_registry`, `time_window_policy`
  - must declare `hitl_only=true`

## 3. evidence filing rules
- Every canonical artifact gets `generated_at`, `generated_by`, `source_locator_list`, `sha256_pending`.
- Save schema lint under `evidence/wp02/schema/`.
- Save boundary lint under `evidence/wp02/boundary/`.
- If sem3 files are unavailable, create `TEMP_CLOSED_NOTE.md` with reason and owner.

## 4. rejection triggers
- schema/instance same path
- consumer view contains runtime fields
- missing `rationale`
- missing `source_locator_list`
- direct use of support-only material as normative rule

## 5. handoff form
```yaml
wp_id: WP-02
handoff_to: WP-03
canonical_outputs:
  - MethodCard.md
  - MethodCard.json
  - MethodSpec.schema.json
  - MethodSpec.json
  - MethodPack/
  - policy_bundle
  - consumer_views
  - sem3_reports
open_items:
  - []
operator_verdict: READY | TEMP_CLOSED | BLOCKED
```
<!-- END:FENCE:WP-02-WI -->

<!-- BEGIN:FENCE:WP-03-RB -->
# WP-03-RB
- external_name: Spartoi-OMOC_SubP1-LITE+MVP_CA-METHOD_WP-03-RB
- internal_short_name: CAMETHOD_WP03_RB
- version: v2026.03.31-r2
- scope: StrategyPack_draft / handoff / packaging / review clock / package truth runbook
- owner: CA-METHOD
- source_bindings: LOC-002, LOC-010, LOC-012, LOC-016, LOC-017, LOC-SUP-001, LOC-SUP-002, LOC-SUP-003, LOC-SUP-004
- downstream_handoff_target: CA-BACKTEST / Pipeline-C / Package D / Package E / operator review lane
- verdict_split: DOCUMENT_PASS_WITH_GUARDS / EXECUTION_FAIL_CLOSED / RELEASE_BLOCK_RELEASE / DELIVERY_PASS

## 1. 文件定位與適用範圍
WP-03-RB 把已 formalized 的 MethodPack 封裝為可 handoff、可重播、可審核的 `StrategyPack_draft` 與 package truth；同時把日/週/月/RC review clock、journal/replay、TT/CR/block 信息綁進 evidence lane。

## 2. 權威來源綁定
- old upgrade plan `L214-L216`, `L240-L244`, `L263-L279`, `L1229-L1229`
- 正文合冊 central artifacts `L3233-L3239`
- 參考方案合冊 `L3438-L3482`
- 台股實戰映射 `L497-L541`
- 2022 台股ICT研究 `L1105-L1112`
- Pack A-E proof pointers and 15x deliveries fail-closed posture

## 3. 對應 WP 任務與邊界
- 任務：生成 `StrategyPack_draft`, `repro_baseline`, `dataset_binding`, `slice_manifest`, `handoff_manifest`, `MANIFEST`, `CHECKSUMS`, `BUILD`, `ledger.sqlite`, review clock evidence。
- 邊界：不宣稱 release ready；不伪造 Package D/E owner proof；不把 FeedbackPack 當修法通道。

## 4. 前置條件
- WP-02 READY or TEMP_CLOSED with explicit open items
- MethodPack canonical set complete
- unresolved profile-bound items are documented

## 5. 所需輸入
- MethodPack / MethodSpec / MethodCard / policy bundle / consumer views
- data slice refs / dataset binding refs / lineage refs
- prior strategy lineage if any
- review-clock context

## 6. 所需工具與環境
- deterministic packager
- hashing tool
- zip tool
- optional DVC pointer layer
- package validation script

## 7. 施工實作步驟
1. Materialize `StrategyPack_draft/` and `repro_baseline.json`, `dataset_binding.json`, `slice_manifest.json`.
2. Generate `handoff_manifest.json`, `MANIFEST.json`, `CHECKSUMS.sha256`, `BUILD_NOTES.md`.
3. Initialize/append `ledger.sqlite` for package lineage only.
4. Compile review clock outputs: daily / weekly / monthly_reset / rc note placeholders for downstream use.
5. Freeze immutable downstream handoff packet for CA-BACKTEST and Pipeline-C.
6. Run package validation and zip integrity checks.
7. If Package D/E direct owner proofs are absent, keep `BLOCK_RELEASE` and attach blockers.

## 8. 檢查點 / stopline / degrade / block 條件
- MethodPack incomplete -> STOP
- missing MANIFEST/CHECKSUMS -> STOP
- package_validation mismatch -> STOP
- direct owner proof absent -> package may deliver, release remains blocked
- attempt to auto-apply feedback into MethodCard -> BLOCK

## 9. 驗收條件
- package tree complete
- hashes and manifest consistent
- route-out registry complete
- review clock and TT/CR registers included
- explicit release blockers present

## 10. 需要產出的 artifacts
- `StrategyPack_draft/`
- `repro_baseline.json`
- `dataset_binding.json`
- `slice_manifest.json`
- `handoff_manifest.json`
- `MANIFEST.json`
- `CHECKSUMS.sha256`
- `BUILD_NOTES.md`
- `ledger.sqlite` (or documented placeholder if local package only)
- `package_validation.json`
- `zip_integrity_report.json`

## 11. 必備 evidence
- package manifest hash report
- zip integrity report
- unresolved blocker register
- review clock note

## 12. 失敗處置與 rollback
- revert to previous StrategyPack_draft snapshot
- mark failed package as invalid and non-publishable
- retain hashes of failed build for audit

## 13. handoff / downstream contract
- to CA-BACKTEST: MethodPack refs + repro/data bindings + package truth
- to Pipeline-C: fixed-version consumer-facing packet only
- to operator review lane: weekly/monthly reset / journal / replay compile note
- to Package D/E: owner-proof pending block note

## 14. TW / ICT / domain guardrails
- daily updates do not auto-promote
- weekly batch can adjust parameter layer only if acceptance gates pass
- RC may perform structural change, but only after gating and freeze
- monthly/weekly reset discipline must be documented in the packet

## 15. TEST_TRACK / TEMP_CLOSED
- RB-001~RB-004 remain attached until owner proof observed
<!-- END:FENCE:WP-03-RB -->

<!-- BEGIN:FENCE:WP-03-WI -->
# WP-03-WI
- external_name: Spartoi-OMOC_SubP1-LITE+MVP_CA-METHOD_WP-03-WI
- internal_short_name: CAMETHOD_WP03_WI
- version: v2026.03.31-r2
- scope: operator-facing packaging / evidence / handoff instructions
- owner: CA-METHOD
- source_bindings: LOC-002, LOC-010, LOC-012, LOC-016, LOC-017, LOC-SUP-004
- downstream_handoff_target: CA-BACKTEST / Pipeline-C / Package D/E owner lanes
- verdict_split: DOCUMENT_PASS_WITH_GUARDS / EXECUTION_FAIL_CLOSED / RELEASE_BLOCK_RELEASE / DELIVERY_PASS

## 1. operator checklist
1. Confirm MethodPack canonical set is complete.
2. Create `StrategyPack_draft/` root and copy immutable canonical artifacts.
3. Write lineage files and hashes.
4. Build `MANIFEST.json`, `CHECKSUMS.sha256`, `BUILD_NOTES.md`.
5. Run package validation and zip integrity.
6. Attach release blockers.

## 2. field-level fill rules
- `MANIFEST.json`
  - `bundle_id`
  - `generated_at`
  - `generated_from[]`
  - `outputs[]`
  - `status_split`
- `handoff_manifest.json`
  - `to_backtest`
  - `to_pipeline_c`
  - `publish_only_contracts[]`
  - `consume_only_constraints[]`
- `review_clock.json` (if used)
  - `daily`, `weekly`, `monthly_reset`, `rc`
  - each key must point to evidence files or TEMP_CLOSED note

## 3. evidence filing rules
- Save manifest/checksum proof under `evidence/wp03/package_truth/`.
- Save zip integrity result under `evidence/wp03/zip_integrity/`.
- Save unresolved Package D/E proofs under `evidence/wp03/blockers/`.

## 4. block conditions
- manifest lists a file that does not exist
- checksum mismatch
- zip missing required sidecar
- status split claims release pass while blockers exist

## 5. handoff form
```yaml
wp_id: WP-03
handoff_to:
  - CA-BACKTEST
  - Pipeline-C
  - Package D
  - Package E
required_packet:
  - StrategyPack_draft/
  - MANIFEST.json
  - CHECKSUMS.sha256
  - BUILD_NOTES.md
  - package_validation.json
  - zip_integrity_report.json
release_blockers_attached: true
operator_verdict: DELIVERABLE | BLOCKED_FOR_RELEASE
```
<!-- END:FENCE:WP-03-WI -->

---

<a id="appendix-a"></a>
## Appendix A: Web Evidence Registry (SUPPORT-only)

| source | url | last_verified_at | used_for | drift_action |
|---|---|---|---|---|
| GitHub Docs: Managing a merge queue | https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/configuring-pull-request-merges/managing-a-merge-queue | 2026-03-31 | support `merge_group` / required-check caution in Package D blocker language | re-verify before repo-side release decision |
| GitHub Docs: Using artifact attestations to establish provenance for builds | https://docs.github.com/actions/security-for-github-actions/using-artifact-attestations/using-artifact-attestations-to-establish-provenance-for-builds | 2026-03-31 | support release provenance caution and attestation route-out | re-verify before release lane opens |
| GitHub Docs: Artifact attestations overview | https://docs.github.com/en/actions/concepts/security/artifact-attestations | 2026-03-31 | support integrity/provenance wording | re-verify before release lane opens |
| DuckDB Docs: Reading and Writing Parquet Files | https://duckdb.org/docs/stable/data/parquet/overview.html | 2026-03-31 | support Parquet + DuckDB primary stack | re-verify on lockfile refresh |
| JSON Schema official draft 2020-12 | https://json-schema.org/draft/2020-12 | 2026-03-31 | support dialect selection | re-verify when schema tooling changes |
| JSON Schema specification page | https://json-schema.org/specification | 2026-03-31 | support claim that current released version is 2020-12 | re-verify when schema tooling changes |

---
## Final note
本冊已完成審查後的 document-delivery lane 修補版：把該修的版本佔位、矩陣章位、Authority Crosswalk、Requirement Intake Matrix、以及 package truth 都修到可稽核，但仍不替缺席的 repo truth、factory proof、release guard 代簽。這不是保守，這是工程誠實。
