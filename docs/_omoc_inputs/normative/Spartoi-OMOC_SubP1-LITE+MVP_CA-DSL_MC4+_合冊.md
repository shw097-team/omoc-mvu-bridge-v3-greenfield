# 《Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_MC4+_合冊》
<a id="cover-card"></a>

## 1. Cover Card / Doc Meta / Identity

| field | value |
|---|---|
| external_name | Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_MC4+_合冊 |
| internal_short_name | SOMOC-CADSL-MC4PLUS |
| subsystem_id | CA-DSL |
| stable_subsystem_id | CA-DSL |
| doc_types | SS_README / SS_SRS / SS_ARCH / SS_DELIVER / SS_LBP_ANNEX |
| version | v2026.03.30-r7 |
| date | 2026-03-30 |
| timezone | Asia/Taipei |
| fq_doc_id | SOMOC-CADSL-MC4PLUS.v2026.03.30-r7 |
| doc_id | SOMOC-CADSL-MC4PLUS |
| stable_doc_key | DOC-CA-DSL-MC4PLUS |
| supersedes | `Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_MC4+_合冊.md`（2026-03-30 uploaded baseline）、`Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_MC4+_合冊_v2026.03.30-r6.md`、以及 `Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_MC4+_合冊_v2026.03.30-r6_AUDIT_v2026.03.30-r1.md` 所提出需修補事項；並以 mounted local files / mounted merged carriers / support-web re-probe 完成本版重綁。 |
| task_level_authority_order | 本回合使用者任務指令 > 中央工程正文(以正文合冊 DOC-0001/0002 materialize) > SSOT > LBP > Pack A-E+工程指南 > SubP1-LITE+MVP_合冊 > OMOC_合冊 > 參考方案合冊 > SUPPORT-WEB |
| goal_premise_order | 嚴禁自己造輪子 > 現成工具原生能力 > 現成工具+極少配置 > 最後才准許薄腳本 > 低磨合 > 100%逐項達成上位正文對 CA-DSL 的需求 |
| document_verdict | PASS_WITH_GUARDS |
| engineering_verdict | READY_PATCHED_WITH_GUARDS |
| runtime_verdict | FAIL_CLOSED / CONTRACT_ONLY |
| release_verdict | BLOCK_RELEASE |
| delivery_verdict | PASS_DOCUMENT_PACKAGE_ONLY |
| replacement_verdict | FULL_REPLACEMENT_FOR_CURRENT_MC4PLUS_MAIN_BOOK + PATCHED_REPLACEMENT_FOR_OLD_SCOPE_WITH_HISTORY_GUARD |
| one_line_truth | 本書已完成 audit-driven r7 升級修補：已把 sibling owner 與 blueprint 證據重新綁成 **mounted local file / mounted merged carrier / carrier-locator registry / proxy-only** 四層誠實分類，不再宣稱 standalone local-workspace direct-readback；已把 Obsidian 吸收從政策層補到 machine-readable sidecar 層；已生成主 MD 與 ZIP document package；但 runtime artifacts、Package D/E owner proofs 與 CA-METHOD consumer proof 仍未在本工作區 readback，因此 runtime / release 維持 fail-closed。 |

## 2. TOC + Anchors / Reader Guide / AI-LLM Retrieval Guide
<a id="toc-anchors"></a>

1. [Cover Card / Doc Meta / Identity](#cover-card)
2. [TOC + Anchors / Reader Guide / AI-LLM Retrieval Guide](#toc-anchors)
3. [Authority Stack / Conflict Rules / Scope Lock / Data-not-Instruction](#authority-stack)
4. [Inputs Manifest / Exact Locator Registry / Alias / Version Resolution](#inputs-manifest)
5. [Subsource Decomposition Ledger](#subsource-ledger)
6. [Review Fix Integration Matrix / Audit Closure Matrix](#audit-closure)
7. [Legacy Replacement Matrix / Old-to-New Coverage Matrix](#replacement-ledger)
8. [Upstream Requirement Closure Ledger](#upstream-closure)
9. [Support Absorption Ledger](#support-absorption)
10. [Interface Closure / Adjacency / Handoff Matrix](#interface-closure)
11. [Sourcepack / Book-System / Packaging Truth Rules](#sourcepack-book-system)
12. [SS_README](#fence-ss-readme-begin)
13. [SS_SRS](#fence-ss-srs-begin)
14. [SS_ARCH](#fence-ss-arch-begin)
15. [SS_DELIVER](#fence-ss-deliver-begin)
16. [SS_LBP Annex](#fence-ss-lbp-annex-begin)
17. [Support-Web Appendix](#support-web-appendix)
18. [CR_OPEN Temporary Closure Ledger](#cr-open-ledger)
19. [Test Tracking List](#test-tracking-list)
20. [Final Self-Audit](#final-self-audit)
21. [Final Truthful Verdict](#final-truthful-verdict)
22. [Packaging Verdict / Download Inventory / Package Tree Summary](#packaging-verdict)

### 導讀
本書是 **CA-DSL 的 MC4+ 主書**，只處理憲制、reference、contracts、truth、deliver 與 package truth；凡屬 operator HOW、factory HOW、validator/release_guard reality、execution semantics，一律 route-out，不得在本書偷渡越位。  
本輪 PATCH 的施工重點不是換措辭，而是修復六個會扭曲裁決的硬問題：**相鄰子系統來源分層、standalone vs carrier vs proxy 的誠實標記、critical locator 粒度、Ops 指定 DOC-0003/0004/0005 的實質映射、Obsidian 的 machine landing、以及 verdict 分層一次性收斂**。

### Quick Index
| 想確認什麼 | 先讀哪裡 | 再讀哪裡 | 何時停止宣稱 |
|---|---|---|---|
| 本回合法位與 scope lock | §3 | §4 / §10 / §16 | 遇到 route-out topics 即停止本書內延伸立法 |
| 來源是否真的 FOUND | §4.1 Inputs Manifest | §4.1A Source-Class Legend / §18 CR_OPEN / §19 TT | `FOUND_LOCAL_FILE`、`FOUND_LOCAL_CARRIER`、`FOUND_LOCAL_CARRIER_INDEX`、`PROXY_ONLY` 不得混寫 |
| 某項 CLOSED 是否真有 locator | §4.3 Exact Locator Registry | §8 Upstream Requirement Closure Ledger | 找不到 claim-grade locator 或 carrier row，就不得維持 CLOSED |
| Ops 指定文件怎麼被吸收 | §5 / §9.2 | §16 / §18 | support mapping ≠ owner law |
| 工具採用是否符合不造輪子 | §11.13 | §13.3 NFR / §14.13 | heavy stack 一律不得升格 mainline correctness；Obsidian 只能是 support frontstage |
| runtime / release 是否已通過 | §15.1~15.6 | §21 / §22 | package pass ≠ runtime pass ≠ release pass |

### Alias / Locator Quick Map
| 名稱 | 在本書怎麼解讀 |
|---|---|
| `ART-DSL-SPEC` | semantic canonical artifact identity |
| `art_dsl_spec.json` | local canonical concrete file |
| `dsl_schema.json` | compatibility alias only |
| `Spartoi-OMOC_Master_Spine_Full_Monolith` | proxy-only；本回合仍無 direct file readback |
| sibling current master / owner evidence | 本回合以 mounted merged carrier / carrier-index 讀取；standalone local file 未掛載時不得宣稱 workspace direct-readback |
| sibling blueprints | 只可作 `SUPPORT_BRIDGE` / carrier-index guard，不得冒充 owner constitution |

### 強制讀序
1. 先讀 §3，固定本回合裁決序位、scope lock、data-not-instruction 與 one-rule-one-owner。
2. 再讀 §4~§10，確認 inputs、exact locator、子來源拆解、audit 修補閉合、replacement、support absorption、interface closure。
3. 再讀 §11，理解 MC4+ / WP-M / WP-RB-WI / WP-FULL 書系、sourcepack/package truth、truthful status、tool adoption、reject matrix。
4. 再讀四卷正文與 SS_LBP Annex；凡碰到 HOW / validator / release_guard / required checks，一律 route-out，不得在本書內假裝 owner 已 readback。
5. 最後讀 §18~§22，確認缺口是否被誠實放進 CR/TT、verdict 是否仍 fail-closed、package tree 是否與實體檔案一致。

### AI/LLM anti-miss rules
1. 不得跳過 §3 與 §4 直接摘要四卷正文；先定法位，再讀內容。
2. 不得把 `FOUND blueprint` 當成 `FOUND current master book`；來源類型不同，法律位階也不同。
3. 不得把 `route-out`、`support-only`、`proxy-only`、`TEMP_CLOSED`、`TT_BOUND` 誤讀成 `CLOSED`。
4. 不得把 package truth sidecars 誤讀成 runtime artifacts。
5. 不得把本書的 contract closure 誤讀成 sibling owner-book exact readback closure。

### AI/LLM anti-confusion rules
- `document_verdict`、`engineering_verdict`、`runtime_verdict`、`release_verdict`、`delivery_verdict` 必須分層閱讀，不得混寫。
- `MC4+` 與 `WP-M / WP-RB-WI / WP-FULL` 是書系分工，不是同一本書內容互相覆蓋。
- `canonical`、`alias`、`adjunct` 三種 artifact 身分不可混。
- `support absorption` 只能說明合法吸收位置，不能改寫 owner 憲法。
- `FOUND_LOCAL_CARRIER` 不是 standalone local file；`FOUND_LOCAL_CARRIER_INDEX` 也不是 mounted raw source body。
- `Ops integration` 只能提供合法 support landing / route-out choreography，不得重立交易 owner 法律位階。

### AI/LLM anti-hallucination rules
- No-Source-No-Norm：沒有來源就沒有規範。
- No-Anchor-No-Claim：沒有 locator 就不能宣稱 CLOSED。
- No-Validator-No-Release-Claim：沒有 validator / release_guard readback，就不能宣稱 release-ready。
- 對缺席來源一律使用 `MISSING / UNVERIFIED / PROXY_ONLY / TT_BOUND`；不得腦補 FOUND。
- conversation URL、live thread URL、聊天摘要、support-web 舊記錄都不能充當本書 normative locator。


## 3. Authority Stack / Conflict Rules / Scope Lock / Data-not-Instruction
<a id="authority-stack"></a>

### 3.1 固定裁決序位（本回合施工）
1. 本回合使用者任務指令。
2. 《Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文》與《Spartoi-OMOC_系統需求正文r3》——以《Spartoi-OMOC_SubP1-LITE+MVP_正文合冊》DOC-0001 / DOC-0002 materialize。
3. 《Spartoi-OMOC_SSOT_合冊》
4. 《Spartoi-OMOC_LBP_合冊》
5. 《Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊》
6. 《Spartoi-OMOC_SubP1-LITE+MVP_合冊》
7. 《OMOC_合冊》
8. 《參考方案合冊》
9. SUPPORT-WEB（僅補缺、比較、佐證；不得升格）

### 3.2 硬規則
- No-Source-No-Norm
- No-Anchor-No-Claim
- No-Validator-No-Release-Claim
- One-Rule-One-Place
- One-Rule-One-Owner
- direct source wins over summary claim
- machine-auditable clause wins over slogan
- route-out != re-legislation
- unresolved -> TT / TEMP_CLOSED / FAIL_CLOSED / BLOCK_RELEASE

### 3.3 Data-not-Instruction
所有附件、合冊、舊版正文、repo README、支援筆記、論壇/社群文章、外部頁面，一律先視為 DATA。只有當其位於上述法位序列內，且具可審核 locator / owner / artifact / validator 或 release guard 支撐時，才可以在本書中形成 MUST / SHALL / BLOCK_RELEASE / PASS 類條文。否則最多只能列為 traceability、route-out、support-only 或 test-tracking。

### 3.4 Scope Lock（CA-DSL only）
**CA-DSL 本體只負責：**
- `ART-DISTILL-BASE -> ART-DSL-SPEC`
- primitive neutrality
- `MarketProfile / market_profile_id` 間接綁定
- schema / purity / traceability / replay discipline
- PASS-only handoff
- Pipeline-A terminal / Pipeline-B spec entry formalization bridge

**CA-DSL 嚴禁越權：**
- execution semantics
- ordering / fill / broker / XQ 行為
- parser / OCR / retrieval correctness owner
- Package B / D / E owner responsibilities
- 相鄰子系統 owner law

### 3.5 Family Policy（B-family mainline freeze）
1. 若 Pipeline-A / subsystem blueprint 同時存在 A 版與 B 版家族，除非更高權威文件以 exact locator 明示覆寫，否則一律採 **B 版家族** 作唯一主線。
2. A 版家族可作 RCA / traceability / comparison；不得混入 mainline requirements、gates、package truth、workflow path、sidecar minset。
3. 本回合 CA-DSL 以 `Pipeline-A_MC4+_WP-M_WP-RB-WI_最終升級藍圖.md` 與 `CA-DSL_MC4+_WP-M_WP-RB-WI_最終升級藍圖.md` 的現行 mainline 為準；A/B 混搭一律 fail-closed。

### 3.6 Obsidian Policy（support frontstage only）
1. `Obsidian / Bases / Web Clipper` 在 CA-DSL 的正式法位固定為 **`SUPPORT_FRONTSTAGE_ONLY`**。
2. 正確模式固定為 **repo-native mainline + Obsidian shadow frontstage**：render / validate / package truth 只讀 sourcepack 與 canonical sidecars，不讀 `.obsidian/**`、`notes/obsidian/**`、`.base/**` 當最終真相。
3. 允許用途：sourcepack 人工編修、導讀、crosswalk、frontstage note、review scratch、人工 patch 定位。
4. 禁止用途：canonical artifact source、validator、release_guard、required checks authority、runtime truth、release truth。
5. 必須有 no-promotion gate：任何 frontstage note 若要升格，必須先 materialize 成 sourcepack / sidecar，再經 render / validate / package validation。
6. 在 owner proofs / validator / release_guard / required checks 仍未 materialize 前，Obsidian 相關整合不得改變本書 `BLOCK_RELEASE` 結論。



## 4. Inputs Manifest / Exact Locator Registry / Alias / Version Resolution
<a id="inputs-manifest"></a>

### 4.1 Inputs Manifest
| source_id | file_or_reference | source_class | status | note |
|---|---|---|---|---|
| SRC-A01 | Current task instruction | TASK_AUTHORITY | FOUND_CONVERSATION | Full rebuild + patch scope + output contract + truthful delivery rules |
| SRC-A02 | `Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_MC4+_合冊.md` | DIRECT_OWNER_CURRENT_BASELINE | FOUND_LOCAL_FILE | uploaded baseline mounted in `/mnt/data` |
| SRC-A03 | `Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_MC4合冊_v2026.03.12-final.md` | DIRECT_OWNER_OLD_MAIN_BOOK | MISSING_HISTORICAL_DIRECT | historical direct file absent in current workspace; old-main-book replacement remains bounded and TT-tracked |
| SRC-A04 | `Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_MC4+_合冊_v2026.03.30-r6.md` | PATCH_INPUT_MAIN | FOUND_LOCAL_FILE | immediate patch input |
| SRC-A05 | `Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_MC4+_合冊_v2026.03.30-r6_AUDIT_v2026.03.30-r1.md` | AUDIT_INPUT | FOUND_LOCAL_FILE | blocking findings absorbed in this r7 patch |
| SRC-A06 | `Pipeline-A_Obsidian升級藍圖.md` | SUPPORT_FRONTSTAGE_BLUEPRINT | FOUND_LOCAL_FILE | Obsidian legal position / no-promotion gate / promotion-smoke / truthful inventory |
| SRC-B01 | `Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md` | NORMATIVE_CARRIER | FOUND_LOCAL_FILE | 中央工程正文r1 / 系統需求正文r3 carrier |
| SRC-B02 | `Spartoi-OMOC_SSOT_合冊.md` | NORMATIVE | FOUND_LOCAL_FILE | architecture / IO / registry anchors |
| SRC-B03 | `Spartoi-OMOC_LBP_合冊.md` | NORMATIVE | FOUND_LOCAL_FILE | LBP A-E route-out and owner ceilings |
| SRC-B04 | `Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊.md` | NORMATIVE_ENTRY | FOUND_LOCAL_FILE | Package B/D/E owner boundaries |
| SRC-B05 | `Spartoi-OMOC_SubP1-LITE+MVP_合冊.md` | NORMATIVE_ENTRY | FOUND_LOCAL_FILE | SubP1-LITE+MVP carrier / integration background |
| SRC-B06 | `OMOC_合冊.md` | LOWER_TIER_TRACEABILITY | FOUND_LOCAL_FILE | packaging / sidecar honesty precedent |
| SRC-B07 | `參考方案合冊.md` | LOWER_TIER_TRACEABILITY | FOUND_LOCAL_FILE | design background / naming lineage |
| SRC-C01 | `Pipeline-A_Index_Pack_Full_Monolith.md` | INDEX_ROUTER | FOUND_LOCAL_FILE | index-first / fail-closed bridge |
| SRC-C02 | `Pipeline-A設計資料參考_合冊.md` | SUPPORT_DESIGN | FOUND_LOCAL_FILE | design context / functionization / neutrality |
| SRC-C03 | `Pipeline-A實作資料參考_合冊.md` | SUPPORT_IMPL | FOUND_LOCAL_FILE | thin-script / runbook / local shell patterns |
| SRC-C04 | `SEM³資料參考_合冊.md` | SUPPORT_DISCIPLINE | FOUND_LOCAL_FILE | artifact discipline / semantic faithfulness context |
| SRC-C05 | `多模態多向量圖像檢索技術指南_筆記.txt` | SUPPORT_ONLY | FOUND_LOCAL_FILE | optional rich-doc retrieval lab-lane only |
| SRC-C06 | `台股實戰映射_合冊.md` | SUPPORT_BOUNDARY | FOUND_LOCAL_FILE | scenario boundary / whitelist recall pattern only |
| SRC-C07 | `Ops RUNBOOK_合冊.md` | OPS_HIGH_ORDER_HOW | FOUND_LOCAL_FILE | DOC-0003/0004/0005 support mapping + route-out evidence |
| SRC-D01C | `Spartoi-OMOC_SubP1-LITE+MVP_Pipeline-A_MC4+_WP-M_合冊.md / DOC-0001` | CURRENT_SIBLING_OWNER_EVIDENCE_CARRIER | FOUND_LOCAL_CARRIER | mounted merged carrier contains CA-WRC current MC4+ owner body |
| SRC-D02C | `Spartoi-OMOC_SubP1-LITE+MVP_Pipeline-A_MC4+_WP-M_合冊.md / DOC-0003` | CURRENT_SIBLING_OWNER_EVIDENCE_CARRIER | FOUND_LOCAL_CARRIER | mounted merged carrier contains CA-CORPUS current MC4+ owner body |
| SRC-D03C | `Spartoi-OMOC_SubP1-LITE+MVP_Pipeline-A_MC4+_WP-M_合冊.md / DOC-0005` | CURRENT_SIBLING_OWNER_EVIDENCE_CARRIER | FOUND_LOCAL_CARRIER | mounted merged carrier contains CA-DISTILL current MC4+ owner body |
| SRC-D01M | `Spartoi-OMOC_SubP1-LITE+MVP_CA-WRC_合冊.md` | DIRECT_SIBLING_OWNER_STANDALONE | NOT_MOUNTED_LOCAL_STANDALONE | standalone local file not mounted in current workspace/package; do not claim workspace direct-readback |
| SRC-D02M | `Spartoi-OMOC_SubP1-LITE+MVP_CA-CORPUS_合冊.md` | DIRECT_SIBLING_OWNER_STANDALONE | NOT_MOUNTED_LOCAL_STANDALONE | standalone local file not mounted in current workspace/package; do not claim workspace direct-readback |
| SRC-D03M | `Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_合冊.md` | DIRECT_SIBLING_OWNER_STANDALONE | NOT_MOUNTED_LOCAL_STANDALONE | standalone local file not mounted in current workspace/package; do not claim workspace direct-readback |
| SRC-E01 | `CA-DSL_MC4+_WP-M_WP-RB-WI_最終升級藍圖.md` | DIRECT_OWNER_BLUEPRINT_STANDALONE | NOT_MOUNTED_LOCAL_STANDALONE | current exact references rebound through mounted carrier locator rows `LOC-DSLBP-*` in `Spartoi-OMOC_SubP1-LITE+MVP_Pipeline-A_MC4+_WP-M_合冊.md` |
| SRC-E02 | `Pipeline-A_MC4+_WP-M_WP-RB-WI_最終升級藍圖.md` | PRIMARY_BRIDGE_MAINLINE_STANDALONE | NOT_MOUNTED_LOCAL_STANDALONE | current exact references rebound through mounted carrier locator rows `LOC-PIPE-*` in `Spartoi-OMOC_SubP1-LITE+MVP_Pipeline-A_MC4+_WP-M_合冊.md` |
| SRC-E03 | `CA-WRC_MC4+_WP-M_WP-RB-WI_最終升級藍圖.md` | SIBLING_BLUEPRINT_SUPPORT_STANDALONE | NOT_MOUNTED_LOCAL_STANDALONE | support evidence rebound through mounted carrier locator rows `LOC-WRCBP-*` |
| SRC-E04 | `CA-CORPUS_MC4+_WP-M_WP-RB-WI_最終升級藍圖.md` | SIBLING_BLUEPRINT_SUPPORT_STANDALONE | NOT_MOUNTED_LOCAL_STANDALONE | support evidence rebound through mounted carrier locator rows / bridge references |
| SRC-E05 | `CA-DISTILL_MC4+_WP-M_WP-RB-WI_最終升級藍圖.md` | SIBLING_BLUEPRINT_SUPPORT_STANDALONE | NOT_MOUNTED_LOCAL_STANDALONE | support evidence rebound through mounted carrier locator rows / bridge references |
| SRC-M01 | `Spartoi-OMOC_Master_Spine_Full_Monolith` | REFERENCE_PROXY_ONLY | UNVERIFIED_PROXY | only via 正文合冊 DOC-0003 / Pipeline-A Index Pack; no direct file in workspace |
| SRC-M02 | `historical CA-DSL r1/r2/r3 blueprint lineage` | HISTORICAL_LINEAGE | MISSING_HISTORICAL_DIRECT | may be mentioned in supersedes chain but not directly mounted |
| SRC-W01 | GitHub Docs / uv docs / check-jsonschema docs | SUPPORT_WEB | REPROBED_2026-03-30 | official support only; never overrides local owner law |
| SRC-W02 | Obsidian Help official docs | SUPPORT_WEB | REPROBED_2026-03-30 | properties / core plugins / community plugin governance / support-only drift check |

### 4.1A Source-Class Legend
| status | meaning |
|---|---|
| `FOUND_LOCAL_FILE` | standalone source file is mounted in current workspace |
| `FOUND_LOCAL_CARRIER` | source body/evidence is available through a mounted merged carrier file |
| `FOUND_LOCAL_CARRIER_INDEX` | exact claim references are available through a mounted carrier’s locator/index rows, not a standalone raw source file |
| `NOT_MOUNTED_LOCAL_STANDALONE` | filename is known but standalone local file is not mounted in this workspace/package |
| `UNVERIFIED_PROXY` | only proxy carrier/reference exists; not valid for clause-level exact closure |
| `MISSING_HISTORICAL_DIRECT` | historical direct file absent |
| `REPROBED_2026-03-30` | support-web fact rechecked against current official source on 2026-03-30 |


### 4.2 Alias / Version Resolution
| alias_or_reference | resolved_as | status | note |
|---|---|---|---|
| `Spartoi-OMOC_Master_Spine_Full_Monolith` | proxy-only via 《正文合冊》DOC-0003 and `Pipeline-A_Index_Pack_Full_Monolith.md` | UNVERIFIED_PROXY | direct file absent; do not use for exact clause closure |
| `參考方案_合冊.md` | `參考方案合冊.md` | FOUND_LOCAL_FILE | filename normalization |
| `ART-DSL-SPEC` | semantic canonical artifact identity | CLOSED | subsystem output identity |
| `art_dsl_spec.json` | canonical local concrete file | CLOSED | hash / handoff / ledger binding point |
| `dsl_schema.json` | compatibility alias only | CLOSED | never canonical |
| `baseline_v1.vpc.yaml` | local adjunct only | CLOSED | OP-surface / evidence hook, not canonical |
| `dsl_mapping.json` | local adjunct only | CLOSED | mapping / evidence hook, not canonical |
| sibling current owner evidence | `Spartoi-OMOC_SubP1-LITE+MVP_Pipeline-A_MC4+_WP-M_合冊.md` DOC-0001 / DOC-0003 / DOC-0005 | FOUND_LOCAL_CARRIER | current sibling owner evidence is mounted through merged carrier, not standalone local owner-books |
| current owner / bridge blueprints | mounted carrier locator rows `LOC-DSLBP-*` / `LOC-PIPE-*` / `LOC-WRCBP-*` | FOUND_LOCAL_CARRIER_INDEX | exact current claim references available via mounted carrier registry rows; standalone blueprint files are not locally mounted |
| A/B family co-existence | B-family only mainline unless higher authority exact locator overrides | CLOSED_BY_POLICY | no mixed-mainline drift |
| `Obsidian shadow frontstage` | `SUPPORT_FRONTSTAGE_ONLY` legal position | CLOSED_BY_POLICY | note/frontstage may assist editing and review, never canonical truth |
| `frontstage path registry` | `frontstage_path_registry.json` | MATERIALIZED_R7 | package-truth exclusion and promotion boundaries are now machine-readable |
| `obsidian integration matrix` | `obsidian_integration_matrix.tsv` | MATERIALIZED_R7 | blueprint named items translated into CA-DSL local equivalent landing |


### 4.3 Exact Locator Registry
| locator_id | tier | mounted_evidence_source | exact_locator | claim_summary | original_target_or_basis | landing | status |
|---|---|---|---|---|---|---|---|
| LOC-001 | TASK | Current task instruction | conversation opener | rebuild / truth / package contract | authoritative for this turn | authoritative for this turn | CLOSED |
| LOC-002 | NORMATIVE | `Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md` | `drv:DOC-0001:h0018` | Authority Stack carrier | DOC-0001 carrier | Authority / conflict / data-not-instruction | CLOSED |
| LOC-003 | NORMATIVE | `Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md` | `drv:DOC-0001:h0022` | No-Source-No-Norm | DOC-0001 carrier | Authority / conflict / data-not-instruction | CLOSED |
| LOC-004 | NORMATIVE | `Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md` | `drv:DOC-0001:h0023` | No-Anchor-No-Claim | DOC-0001 carrier | Authority / conflict / data-not-instruction | CLOSED |
| LOC-005 | NORMATIVE | `Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md` | `drv:DOC-0002:h0068` | CA-DSL system row / owner boundary / requirements carrier | DOC-0002 carrier | Upstream Requirement Closure Ledger | CLOSED |
| LOC-006 | NORMATIVE | `Spartoi-OMOC_SSOT_合冊.md` | `ARCH-V810-4-4-DSL` | CA-DSL architecture definition | SSOT ARCH | SS_README / SS_ARCH | CLOSED |
| LOC-007 | NORMATIVE | `Spartoi-OMOC_SSOT_合冊.md` | `ARCH-V810-4-4-IO` | input/output contract | SSOT ARCH | SS_README / SS_SRS / SS_ARCH | CLOSED |
| LOC-008 | NORMATIVE | `Spartoi-OMOC_SSOT_合冊.md` | `ARCH-V810-5-4-3-REGISTRY` | artifact producer/consumer/schema truth | SSOT ARCH | SS_SRS / SS_ARCH / SS_LBP Annex | CLOSED |
| LOC-009 | NORMATIVE | `Spartoi-OMOC_LBP_合冊.md` | `CMP-03/DOC-0001` | LBP-A route-out / index / contract discipline | LBP-A | SS_LBP Annex / route-out | CLOSED |
| LOC-010 | NORMATIVE | `Spartoi-OMOC_LBP_合冊.md` | `CMP-03/DOC-0002` | LBP-B schema owner / contract registry | LBP-B(ICD) | SS_LBP Annex / route-out | CLOSED_WITH_GUARD |
| LOC-011 | NORMATIVE_ENTRY | `Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊.md` | `CMP-01/DOC-0002` | Package B owner ceiling | Package B | SS_LBP Annex / route-out | CLOSED |
| LOC-012 | NORMATIVE_ENTRY | `Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊.md` | `CMP-01/DOC-0004` | Package D owner ceiling | Package D | SS_LBP Annex / route-out | CLOSED |
| LOC-013 | NORMATIVE_ENTRY | `Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊.md` | `CMP-01/DOC-0005` | Package E owner ceiling | Package E | SS_LBP Annex / route-out | CLOSED |
| LOC-014-01 | CARRIER_INDEX | `Spartoi-OMOC_SubP1-LITE+MVP_Pipeline-A_MC4+_WP-M_合冊.md` | `@L3154-L3154` | CA-DSL blueprint support-only scope / validation surface | carrier row `LOC-DSLBP-001` for `CA-DSL_MC4+_WP-M_WP-RB-WI_最終升級藍圖.md` | Inputs / support-web / validation posture | CLOSED_VIA_MOUNTED_CARRIER_INDEX |
| LOC-014-02 | CARRIER_INDEX | `Spartoi-OMOC_SubP1-LITE+MVP_Pipeline-A_MC4+_WP-M_合冊.md` | `@L3155-L3155` | CA-DSL gates / checks / attestation / release stopline matrix | carrier row `LOC-DSLBP-002` | package truth / validation / CR_OPEN | CLOSED_VIA_MOUNTED_CARRIER_INDEX |
| LOC-014-03 | CARRIER_INDEX | `Spartoi-OMOC_SubP1-LITE+MVP_Pipeline-A_MC4+_WP-M_合冊.md` | `@L3156-L3157` | source_locator_matrix and evidence-rule-interface closure chain | carrier rows `LOC-DSLBP-003/004` | locator discipline / closure proof | CLOSED_VIA_MOUNTED_CARRIER_INDEX |
| LOC-015-01 | CARRIER_INDEX | `Spartoi-OMOC_SubP1-LITE+MVP_Pipeline-A_MC4+_WP-M_合冊.md` | `@L3151-L3151` | Pipeline-A authority order + hard rules + B-family only mainline | carrier row `LOC-PIPE-001` | family policy / sourcepack / tooling | CLOSED_VIA_MOUNTED_CARRIER_INDEX |
| LOC-015-02 | CARRIER_INDEX | `Spartoi-OMOC_SubP1-LITE+MVP_Pipeline-A_MC4+_WP-M_合冊.md` | `@L3152-L3153` | Pipeline-A CA-DSL strategy + Package E route-out / release stopline mapping | carrier rows `LOC-PIPE-002/003` | workflow constitution / support-web appendix / release stopline | CLOSED_VIA_MOUNTED_CARRIER_INDEX |
| LOC-017-01 | CARRIER_INDEX | `Spartoi-OMOC_SubP1-LITE+MVP_Pipeline-A_MC4+_WP-M_合冊.md` | `@L3144-L3147` | CA-WRC current MC4+ owner evidence relevant to owner-book anti-hallucination / B-family / legal position | carrier rows `LOC-MC4-001..004` | Interface Closure / adjacency | CLOSED_VIA_MOUNTED_CARRIER |
| LOC-018-01 | CARRIER_INDEX | `Spartoi-OMOC_SubP1-LITE+MVP_Pipeline-A_MC4+_WP-M_合冊.md` | `@L3158-L3159` | CA-CORPUS current owner boundary / parser-owner boundary | carrier rows `LOC-CORPUS-001/002` | Interface Closure / adjacency | CLOSED_VIA_MOUNTED_CARRIER |
| LOC-019-01 | CARRIER_INDEX | `Spartoi-OMOC_SubP1-LITE+MVP_Pipeline-A_MC4+_WP-M_合冊.md` | `@L3160-L3161` | CA-DISTILL PASS-only handoff / release stopline pointer | carrier rows `LOC-DISTILL-001/002` | Interface Closure / adjacency | CLOSED_VIA_MOUNTED_CARRIER |
| LOC-020 | OPS_SUPPORT | `Ops RUNBOOK_合冊.md` | `DOC-0003` | preflight / guide / artifact vocabulary / XQ-only execution boundary wording as support-only context | selected support doc | Ops Support Mapping | CLOSED_AS_SUPPORT_ONLY |
| LOC-021 | OPS_SUPPORT | `Ops RUNBOOK_合冊.md` | `DOC-0004` | market vocabulary / time-risk shell / MarketProfile scenario context | selected support doc | primitive neutrality / profile bridge | CLOSED_AS_SUPPORT_ONLY |
| LOC-022 | OPS_SUPPORT | `Ops RUNBOOK_合冊.md` | `DOC-0005` | stage map / gate hook / evidence choreography / operator evidence collection path | selected support doc | Interface Closure / SS_DELIVER | CLOSED_AS_SUPPORT_ONLY |
| LOC-023 | SUPPORT_WEB | GitHub Docs / uv docs / check-jsonschema docs | `accessed_at=2026-03-30` | workflow syntax / artifacts / attestations / uv sync / schema CLI feasibility | official support-web | Support-Web Appendix | REPROBED_SUPPORT_ONLY |
| LOC-024 | SUPPORT_FRONTSTAGE_BLUEPRINT | `Pipeline-A_Obsidian升級藍圖.md` | `@L22-L36 ; @L157-L216 ; @L348-L455` | support-frontstage legal position / family-level patch / machine-readable sidecar expectations | local blueprint sections 1.2, 5.1~5.4, 8.4 | Authority / Tooling / SS_ARCH / SS_DELIVER | CLOSED_AS_SUPPORT_ONLY |
| LOC-025 | SUPPORT_WEB | Obsidian Help + GitHub Docs merge queue docs | `accessed_at=2026-03-30` | nested properties limitation / core vs community plugin governance / merge_group requirement | official support-web | Support-Web Appendix / Tooling / TT | REPROBED_SUPPORT_ONLY |


## 5. Subsource Decomposition Ledger
<a id="subsource-ledger"></a>

| family | parent_source | child_locator | child_title | role_here | why_used | landing | verdict |
|---|---|---|---|---|---|---|---|
| LBP | `Spartoi-OMOC_LBP_合冊.md` | `CMP-03/DOC-0001` | LBP-A(SIR) | NORMATIVE | index / route-out / contract discipline | SS_LBP Annex / route-out | ABSORBED |
| LBP | `Spartoi-OMOC_LBP_合冊.md` | `CMP-03/DOC-0002` | LBP-B(ICD) | NORMATIVE | schema owner / contract registry | SS_LBP Annex / route-out | ABSORBED_WITH_GUARD |
| LBP | `Spartoi-OMOC_LBP_合冊.md` | `CMP-03/DOC-0003` | LBP-C(ADR) | NORMATIVE | decision route-out | SS_LBP Annex | ABSORBED |
| LBP | `Spartoi-OMOC_LBP_合冊.md` | `CMP-03/DOC-0004` | LBP-D(C4) | NORMATIVE | boundary / route-out | SS_LBP Annex | ABSORBED |
| LBP | `Spartoi-OMOC_LBP_合冊.md` | `CMP-03/DOC-0005` | LBP-E(Fitness) | NORMATIVE | fitness owner boundary | SS_LBP Annex | ABSORBED_WITH_GUARD |
| OPS | `Ops RUNBOOK_合冊.md` | `DOC-0001` | `Spartoi-OMOC_ops RB + WI v8.1.1-ops-r1` | OPS_HIGH_ORDER_HOW | global ops evidence / controls / required-check route-out | route-out only | ROUTE_OUT_ONLY |
| OPS | `Ops RUNBOOK_合冊.md` | `DOC-0002` | `SubP1-LITE+MVP_Ops RUNBOOK + WI` | OPS_HIGH_ORDER_HOW | stage flow / operator HOW | route-out only | ROUTE_OUT_ONLY |
| OPS | `Ops RUNBOOK_合冊.md` | `DOC-0003 / DOC-0004 / DOC-0005` | selected support docs | SUPPORT_ROUTE_OUT | preflight / market vocabulary / stage map / gate hook / evidence choreography | Support Absorption Ledger / Interface Closure | ABSORBED_AS_SUPPORT_ROUTE_OUT |
| PACK | `Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊.md` | `CMP-01/DOC-0002` | Package B | NORMATIVE_ENTRY | schema / evidence / registry owner | SS_LBP Annex / route-out | ABSORBED |
| PACK | `Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊.md` | `CMP-01/DOC-0004` | Package D | NORMATIVE_ENTRY | workflow / required checks / build lane owner | SS_LBP Annex / route-out | ABSORBED |
| PACK | `Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊.md` | `CMP-01/DOC-0005` | Package E | NORMATIVE_ENTRY | validator / release_guard / promotion owner | SS_LBP Annex / route-out | ABSORBED |
| SIBLING_OWNER | `Spartoi-OMOC_SubP1-LITE+MVP_Pipeline-A_MC4+_WP-M_合冊.md` | `DOC-0001` | mounted CA-WRC current MC4+ owner body | CURRENT_OWNER_EVIDENCE_CARRIER | upstream intake / handoff / package truth / boundary readback via mounted carrier | Interface Closure | ABSORBED_FOR_ADJACENCY_VIA_CARRIER |
| SIBLING_OWNER | `Spartoi-OMOC_SubP1-LITE+MVP_Pipeline-A_MC4+_WP-M_合冊.md` | `DOC-0003` | mounted CA-CORPUS current MC4+ owner body | CURRENT_OWNER_EVIDENCE_CARRIER | snapshot / mandatory artifacts / required checks / boundary readback via mounted carrier | Interface Closure | ABSORBED_FOR_ADJACENCY_VIA_CARRIER |
| SIBLING_OWNER | `Spartoi-OMOC_SubP1-LITE+MVP_Pipeline-A_MC4+_WP-M_合冊.md` | `DOC-0005` | mounted CA-DISTILL current MC4+ owner body | CURRENT_OWNER_EVIDENCE_CARRIER | PASS-only handoff / deliver reality / blocker posture via mounted carrier | Interface Closure | ABSORBED_FOR_ADJACENCY_VIA_CARRIER |
| SIBLING_OWNER_STANDALONE | `Spartoi-OMOC_SubP1-LITE+MVP_CA-WRC_合冊.md` | standalone filename only | standalone local owner book | NOT_MOUNTED_LOCAL_STANDALONE | known filename but not locally mounted here | Inputs / CR ledger | NOT_USED_FOR_DIRECT_WORKSPACE_CLAIM |
| SIBLING_OWNER_STANDALONE | `Spartoi-OMOC_SubP1-LITE+MVP_CA-CORPUS_合冊.md` | standalone filename only | standalone local owner book | NOT_MOUNTED_LOCAL_STANDALONE | known filename but not locally mounted here | Inputs / CR ledger | NOT_USED_FOR_DIRECT_WORKSPACE_CLAIM |
| SIBLING_OWNER_STANDALONE | `Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_合冊.md` | standalone filename only | standalone local owner book | NOT_MOUNTED_LOCAL_STANDALONE | known filename but not locally mounted here | Inputs / CR ledger | NOT_USED_FOR_DIRECT_WORKSPACE_CLAIM |
| SIBLING_BLUEPRINT | `Spartoi-OMOC_SubP1-LITE+MVP_Pipeline-A_MC4+_WP-M_合冊.md` | `LOC-WRCBP-* / LOC-PIPE-* / LOC-DSLBP-*` | mounted carrier locator rows for blueprint claims | SUPPORT_BRIDGE_CARRIER_INDEX | exact current claims available via mounted carrier index, not standalone blueprint files | Interface Closure / Support Appendix | SUPPORT_ONLY_VIA_CARRIER_INDEX |
| PIPE-A-BLUEPRINT | `Spartoi-OMOC_SubP1-LITE+MVP_Pipeline-A_MC4+_WP-M_合冊.md` | `LOC-PIPE-001..003` | current Pipeline-A mainline blueprint claim rows | PRIMARY_BRIDGE_CARRIER_INDEX | family freeze / path contract / workflow demotion / low-friction | Book-System / Packaging Truth / Tooling | ABSORBED_AS_PRIMARY_BRIDGE_VIA_CARRIER_INDEX |
| OBSIDIAN-BLUEPRINT | `Pipeline-A_Obsidian升級藍圖.md` | `§1~§9` + named sidecar rows | current Obsidian integration blueprint | SUPPORT_FRONTSTAGE_BLUEPRINT | support-frontstage legal position / no-promotion gate / promotion-smoke / truthful shipped inventory / named sidecar expectations | Tooling / SS_ARCH / SS_DELIVER / Support-Web | ABSORBED_AS_SUPPORT_FRONTSTAGE_ONLY |
| DSL-BLUEPRINT | `Spartoi-OMOC_SubP1-LITE+MVP_Pipeline-A_MC4+_WP-M_合冊.md` | `LOC-DSLBP-001..004` | current CA-DSL final blueprint claim rows | DIRECT_OWNER_BLUEPRINT_CARRIER_INDEX | inputs / RCA / workflow / validator / sidecar / verdict closure through mounted carrier index | Inputs / audit / packaging / verdict | ABSORBED_AS_BLUEPRINT_MASTER_VIA_CARRIER_INDEX |
| PA_DESIGN | `Pipeline-A設計資料參考_合冊.md` | `DOC-0001..0005` | RC1~RC5 / CA-DISTILL&CA-DSL / 三層十二因子 | TRACEABILITY | coverage/fidelity / functionization / local mapping insight | Support Absorption Ledger | ABSORBED_SELECTIVELY |
| PA_IMPL | `Pipeline-A實作資料參考_合冊.md` | `DOC-0001..0004` | LOCAL / WT-NA runbooks | TRACEABILITY | thin-script patterns / implementation shell | Support Absorption Ledger | ABSORBED_SELECTIVELY |
| SEM3 | `SEM³資料參考_合冊.md` | `DOC-0001 / DOC-0002` | TriRAG SEG / Semantic Faithfulness | TRACEABILITY | SEG / semantic faithfulness artifact discipline | Support Absorption Ledger | ABSORBED_SELECTIVELY |
| TW_MAP | `台股實戰映射_合冊.md` | `DOC-0001 / DOC-0005` | 三源融合 / 白名單廣域蒐集 | SUPPORT_ONLY | scenario boundary / whitelist recall pattern only | Support Absorption Ledger | SUPPORT_BOUNDARY_ONLY |
| MMV | `多模態多向量圖像檢索技術指南_筆記.txt` | `chapters 2-3` | ColBERT / ColPali / multivector note | SUPPORT_ONLY | retrieval sidecar thought / optional lab-lane only | Support Absorption Ledger | SUPPORT_ONLY |
| RETRIEVAL_HYGIENE | Docs-as-Code / Diátaxis / GraphRAG / RAPTOR / CRAG / RAG-Triad | `reader / retrieval discipline` | reader-hygiene bundle | SUPPORT_ARCH_DISCIPLINE | index-first / route-out / conflict surfacing / grounded answer discipline | Tooling / reader guide | ABSORBED_AS_READER_HYGIENE |
| OMOC | `OMOC_合冊.md` | `DOC-0001 / DOC-0002` | WP總表 / RB+WI | TRACEABILITY | packaging / evidence / sidecar honesty precedent | Support Absorption Ledger | ABSORBED_SELECTIVELY |
| REFPLUS | `參考方案合冊.md` | `DOC-0002 / 0004 / 0006 / 0009` | subsystem blueprint / five-subsystem governance / Pipeline-A v2 / A+B DB | TRACEABILITY | design background only | Support Absorption Ledger | ABSORBED_SELECTIVELY |


## 6. Review Fix Integration Matrix / Audit Closure Matrix
<a id="audit-closure"></a>

| audit_id | issue | landing | repair_strategy | closure_status |
|---|---|---|---|---|
| PATCH-AUD-01 | sibling owner required source 被 blueprint 或未 mounted standalone filename 取代 | Inputs Manifest / Subsource Ledger / Interface Closure / CR_OPEN / TT | 改為四層 source-class：`FOUND_LOCAL_FILE / FOUND_LOCAL_CARRIER / FOUND_LOCAL_CARRIER_INDEX / NOT_MOUNTED_LOCAL_STANDALONE`；不再用 standalone local-workspace direct-readback 話術 | CLOSED_R7_WITH_SOURCE_CLASS_REBIND |
| PATCH-AUD-02 | CLOSED claims 未逐筆綁 claim-grade locator | Exact Locator Registry / Upstream Requirement Closure Ledger | 將 critical closure 改綁到 mounted carrier line rows與單列 claim；停止以大段 `Lxx-Lyy` 當 exact locator | CLOSED_R7_WITH_CLAIM_GRADE_LOCATORS |
| PATCH-AUD-03 | Ops 指定 DOC-0003 / DOC-0004 / DOC-0005 未實質映射 | Subsource Decomposition Ledger / Support Absorption Ledger / Interface Closure | 逐件定義 legal position、吸收範圍、route-out ceiling、不可越位邊界、landing 與 state | CLOSED |
| PATCH-AUD-04 | opening contract 缺 source-class honesty 與 carrier/library/proxy 區分 | §2 Reader Guide / §4 Inputs Manifest / §10.2 | reader guide、legend、guard clauses 全部補入 | CLOSED_R7 |
| PATCH-AUD-05 | low-friction / native-first 只有口號 | §11.13 / §13.3 / §14.13 | native-first / minimal-config / thin-script / reject matrix 持續保留，並與 current support-web re-probe 對齊 | CLOSED |
| PATCH-AUD-06 | truthful-status / builder / validator / workflow 未制度化對位 | §11.8~§11.12 / §15 / §22 | 沿用現行制度章，並以真實 package 物化校正 download truth | CLOSED |
| PATCH-AUD-07 | replacement wording 過寬且殘留 r5 wording | Cover Card / §7 / §21 | replacement wording 收窄並全部改為 r7；standalone absent 與 carrier evidence 分開寫 | CLOSED_R7 |
| PATCH-AUD-08 | support-web appendix 未反映本回合官方 re-probe | §17 Support-Web Appendix | 以 GitHub Docs / uv docs / check-jsonschema / Obsidian Help 官方頁面補入 accessed_at、用途、撤銷條件與落位 | CLOSED |
| PATCH-AUD-09 | Obsidian blueprint 尚未被正式收編為 support-frontstage-only | §3.6 / §11.6A / §11.13 / §14.1A / §15.1 / §17~§19 | 既有 legal position 保留，並新增 machine-readable local equivalents：`obsidian_integration_matrix.tsv`、`frontstage_path_registry.json`、`promotion_smoke_contract.md`、`obsidian_policy_crosswalk.tsv` | CLOSED_R7_WITH_MACHINE_LANDING |
| PATCH-AUD-10 | Final verdict 未一次性列出 delivery_verdict | §21 | 將 delivery_verdict 納入 Final Truthful Verdict 區 | CLOSED_R7 |


## 7. Legacy Replacement Matrix / Old-to-New Coverage Matrix
<a id="replacement-ledger"></a>

| legacy_or_bridge_source | coverage_scope | new_landing | verdict | note |
|---|---|---|---|---|
| `Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_MC4+_合冊.md`（本回合前 baseline） | current MC4+ main book baseline | 本次 r7 materialized main book | PATCHED_AND_SUPERSEDED | current uploaded baseline absorbed and corrected |
| `Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_MC4+_合冊_v2026.03.30-r6.md` | immediate prior patch output | 本次 r7 materialized main book | PATCHED_AND_SUPERSEDED | r6 fully absorbed including audit-driven corrections |
| `Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_MC4+_合冊_v2026.03.30-r6_AUDIT_v2026.03.30-r1.md` | blocking findings / repair instructions | 本書制度章 + new sidecars + revised verdict split | ABSORBED_AS_PATCH_DRIVER | all major findings answered in r7 |
| `Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_MC4合冊_v2026.03.12-final.md` | old MC4 main-book scope | 本書四卷 + ledgers + packaging truth | PRACTICAL_REPLACEMENT_WITH_HISTORY_GUARD | direct historical file absent in this workspace; clause-level parity remains TT-bound |
| `CA-DSL_MC4+_WP-M_WP-RB-WI_最終升級藍圖.md` | owner blueprint master / audit-driven package closure | 本書前置制度章 + package truth + route-out + verdict split | ABSORBED_AS_BLUEPRINT_MASTER_VIA_CARRIER_INDEX | current claim-grade references rebound through mounted carrier rows |
| `Pipeline-A_MC4+_WP-M_WP-RB-WI_最終升級藍圖.md` | family freeze / path contract / support-template-only workflow / low-friction mainline | Sourcepack / Book-System / Packaging Truth / Tooling / Support-Web | ABSORBED_AS_PRIMARY_BRIDGE_VIA_CARRIER_INDEX | standalone local file not mounted; carrier evidence mounted |
| `Pipeline-A_Obsidian升級藍圖.md` | support-frontstage integration / no-promotion gate / promotion-smoke / truthful shipped inventory | Authority note / Tooling / SS_ARCH / SS_DELIVER / Support-Web / CR-TT + local machine-readable equivalents | ABSORBED_AS_SUPPORT_FRONTSTAGE_BLUEPRINT | local blueprint mounted and translated into CA-DSL local equivalents |
| historical CA-DSL r1/r2/r3 blueprint lineage | supersedes / traceability only | CR_OPEN Temporary Closure Ledger / Test Tracking List | TEMP_CLOSED_HISTORY | direct historical files not mounted |
| sibling current owner evidence | adjacency / handoff / truthfulness | Interface Closure / CR_OPEN / Self-Audit | ACTIVE_VIA_MOUNTED_CARRIER | WRC/CORPUS/DISTILL current evidence is mounted via merged carrier, not standalone local files |


## 8. Upstream Requirement Closure Ledger
<a id="upstream-closure"></a>

| requirement_id | upstream_locator | exact_locator_ids | requirement_summary | landing_section | closure_status |
|---|---|---|---|---|---|
| REQ-01 | 正文合冊 `drv:DOC-0001:h0018/h0022/h0023` | LOC-002 / LOC-003 / LOC-004 | Authority Stack + No-Source-No-Norm + No-Anchor-No-Claim | Authority Stack / Conflict Rules / Data-not-Instruction | CLOSED |
| REQ-02 | 正文合冊 `drv:DOC-0002:h0068` | LOC-005 | CA-DSL system row / owner boundary / system requirements | SS_README / SS_SRS / SS_ARCH / Interface Closure | CLOSED |
| REQ-03 | SSOT `ARCH-V810-4-4-DSL` | LOC-006 | Pipeline-A terminal / Pipeline-B spec entry | SS_README positioning | CLOSED |
| REQ-04 | SSOT `ARCH-V810-4-4-IO` | LOC-007 | `ART-DISTILL-BASE` ingress / `ART-DSL-SPEC` egress / evidence path | SS_README / SS_SRS / SS_ARCH | CLOSED |
| REQ-05 | SSOT `ARCH-V810-5-4-3-REGISTRY` | LOC-008 | artifact producer/consumer/schema truth | SS_SRS / SS_ARCH / SS_LBP Annex | CLOSED |
| REQ-06 | LBP-A / LBP-B / Pack B-D-E owner ceilings | LOC-009 / LOC-010 / LOC-011 / LOC-012 / LOC-013 | one-rule-one-owner / route-out / schema and release ceilings | SS_LBP Annex / route-out | CLOSED |
| REQ-07 | current CA-DSL final blueprint (carrier rebound) | LOC-014-01 / LOC-014-02 / LOC-014-03 | inputs / RCA / workflow / validator / machine blocks / verdict closure | Inputs / Audit / Deliver / Verdict | CLOSED_VIA_MOUNTED_CARRIER_INDEX |
| REQ-08 | current Pipeline-A final blueprint (carrier rebound) | LOC-015-01 / LOC-015-02 | B-family only mainline / family path contract / workflow demotion / release stopline | Family Policy / Book-System / Tooling / CR_OPEN | CLOSED_VIA_MOUNTED_CARRIER_INDEX |
| REQ-09 | SEM8 v1.2.1-r1 | LOC-016 | audit shell / bind shell / route-out shell only | Support Absorption / Scope Lock | CLOSED_WITH_BOUNDARY |
| REQ-10 | current CA-WRC owner evidence via mounted carrier | LOC-017-01 | upstream intake / WRC->CORPUS handoff / package truth / owner boundary | Interface Closure / adjacency | CLOSED_VIA_MOUNTED_CARRIER |
| REQ-11 | current CA-CORPUS owner evidence via mounted carrier | LOC-018-01 | snapshot / mandatory artifacts / required checks / owner boundary | Interface Closure / adjacency | CLOSED_VIA_MOUNTED_CARRIER |
| REQ-12 | current CA-DISTILL owner evidence via mounted carrier | LOC-019-01 | PASS-only handoff / deliver reality / blocker posture | Interface Closure / adjacency | CLOSED_VIA_MOUNTED_CARRIER |
| REQ-13 | Ops RUNBOOK selected support docs | LOC-020 / LOC-021 / LOC-022 | guide / market vocabulary / stage map / gate hook / evidence choreography | Support Absorption / Interface Closure | CLOSED_AS_SUPPORT_ONLY |
| REQ-14 | goal premise order | LOC-001 / LOC-015 | no wheel reinvention / native-first / minimal config / thin script only | Tool Adoption / NFR / Replaceable Slots | CLOSED |
| REQ-15 | family policy | LOC-015 | B-family only mainline / no A-B mixed mainline | §3.5 / Book-System / Tooling | CLOSED |
| REQ-16 | truthful delivery and package rules | LOC-014B / LOC-015B | main MD + ZIP + manifest/checksums/machine summary/package tree must exist physically | SS_DELIVER / Packaging Verdict / Download Inventory | CLOSED |
| REQ-17 | source binding for sibling books | LOC-017 / LOC-018 / LOC-019 | current sibling owner books required and now directly read back | Inputs Manifest / Interface Closure / Self-Audit | CLOSED |
| REQ-18 | runtime/release honesty | LOC-014B / LOC-015B | package pass cannot be promoted to runtime or release pass without owner proofs | Final Verdict / CR_OPEN / Stopline | CLOSED |
| REQ-19 | Obsidian support-frontstage-only discipline + machine landing | LOC-024 / LOC-025 | Obsidian may assist editing/review but cannot become canonical truth / validator / release truth; local equivalent sidecars must exist | Authority / Tooling / SS_ARCH / SS_DELIVER / TT | CLOSED_AS_SUPPORT_ONLY_WITH_MACHINE_LANDING |

## 9. Support Absorption Ledger
<a id="support-absorption"></a>

| source | legal_position_here | absorbed_only_for | rejected_or_not_absorbed | landing | state |
|---|---|---|---|---|---|
| `Pipeline-A設計資料參考_合冊.md` | SUPPORT_DESIGN | coverage/fidelity / functionization / local mapping / neutrality design context | 不得把市場常數寫入 DSL core；不得改寫 owner schema | Support Absorption Ledger | ABSORBED_SELECTIVELY |
| `Pipeline-A實作資料參考_合冊.md` | SUPPORT_IMPL | thin-script pattern / local implementation shell / runbook shape | 不得升格為 correctness law | Support Absorption Ledger | ABSORBED_SELECTIVELY |
| `SEM³資料參考_合冊.md` | SUPPORT_DISCIPLINE | evidence organization / semantic discipline / SEG-SGF-MSC-TVE context | 只保留 CA-DSL 有關的 artifact discipline；不立 SGF owner | Support Absorption Ledger | ABSORBED_SELECTIVELY |
| `多模態多向量圖像檢索技術指南_筆記.txt` | SUPPORT_ONLY | multivector / rerank / prefetch / ColPali 思路 | optional lab-lane retrieval acceleration only | Support Absorption Ledger | SUPPORT_ONLY |
| `台股實戰映射_合冊.md` | SUPPORT_ONLY | scenario boundary / source governance / whitelist recall pattern | 不得倒灌 execution semantics or trading owner law | Support Absorption Ledger | SUPPORT_BOUNDARY_ONLY |
| `OMOC_合冊.md` | TRACEABILITY_ONLY | packaging / evidence / sidecar honesty precedent | 不得當 owner 憲法 | Support Absorption Ledger | ABSORBED_SELECTIVELY |
| `參考方案合冊.md` | TRACEABILITY_ONLY | five-subsystem governance / Pipeline-A implementation intent / A+B DB context | 不得升格憲法 | Support Absorption Ledger | ABSORBED_SELECTIVELY |
| `SEM8-ICT-TW_重構升級藍圖_v1.2.1-r1.md` | PRIMARY_BRIDGE_SHELL | audit shell / bind shell / route-out shell | 不可越位改寫 owner constitution | Support Absorption Ledger | ABSORBED_AS_BRIDGE_SHELL |
| `Ops RUNBOOK_合冊.md / DOC-0003` | SUPPORT_ROUTE_OUT | preflight / authority stack / guide shape / artifact vocabulary / XQ-only execution boundary wording | 不得改寫 CA-DSL owner law；不得把交易流程寫成 CA-DSL in-scope | Ops Support Mapping | ABSORBED_AS_SUPPORT_ROUTE_OUT |
| `Ops RUNBOOK_合冊.md / DOC-0004` | SUPPORT_ROUTE_OUT | market-analysis taxonomy / stage vocabulary / time-risk shell / market-profile scenario vocabulary | 不得把股票分析或 execution details 倒灌為 DSL core law | Ops Support Mapping | ABSORBED_AS_SUPPORT_ROUTE_OUT |
| `Ops RUNBOOK_合冊.md / DOC-0005` | SUPPORT_ROUTE_OUT | stage map / gate hook / evidence hook / fail-closed choreography / operator evidence collection path | 不得複製上游 SRS/ARCH/ICD/ADR/C4/Fitness；不得改寫 subsystem constitutions | Ops Support Mapping | ABSORBED_AS_SUPPORT_ROUTE_OUT |
| Docs-as-Code × Diátaxis × GraphRAG / RAPTOR / CRAG × RAG-Triad | SUPPORT_ARCH_DISCIPLINE | index-first retrieval hygiene / route-out / conflict surfacing / grounded answer discipline | 不得偽裝成 correctness prerequisite 或 owner engine | Reader Guide / Tooling | ABSORBED_AS_READER_HYGIENE |
| `Pipeline-A_Obsidian升級藍圖.md` | SUPPORT_FRONTSTAGE_BLUEPRINT | support-frontstage legal position / no-promotion gate / promotion-smoke / truthful shipped inventory / TT-OBS-007 + named sidecar expectations | 不得把 Obsidian 升格為 canonical truth / validator / release truth | Tooling / SS_ARCH / SS_DELIVER / TT | ABSORBED_AS_SUPPORT_FRONTSTAGE_ONLY_WITH_LOCAL_EQUIVALENTS |
| official support-web probes | SUPPORT_WEB | workflow syntax / artifacts / attestations / uv sync / schema CLI feasibility / Obsidian properties / restricted mode / merge_group requirement | 不覆寫本地 owner law；只補 drift-aware landing | Support-Web Appendix | REPROBED_SUPPORT_ONLY |

### 9.1 支援性吸收規則
1. support 資料只做合法補缺、工程 discipline、檢索導航、成熟度判斷。
2. support lane 不能硬寫進 correctness law。
3. optional accelerator 不能被寫成 day-1 correctness prerequisite。
4. support-web 只准 SUPPORT-only；必須記錄 accessed_at、用途、撤銷條件與落位章節。
5. Docs-as-Code × Diátaxis × GraphRAG / RAPTOR / CRAG × RAG-Triad 在本書的法律位置是 **reader-hygiene / retrieval-hygiene layer**：用於索引、chunk routing、conflict surfacing、groundedness discipline；不得冒充主線 correctness owner。

### 9.2 Ops Support Mapping（DOC-0003 / DOC-0004 / DOC-0005）
| ops_doc | exact_locator | absorbed_only_for | route_out_or_ceiling | prohibited_lift | landing | state |
|---|---|---|---|---|---|---|
| `DOC-0003《Spartoi｜台股當沖/隔日沖實際流程》` | LOC-020 | preflight / guide / artifact vocabulary / XQ-only execution boundary wording | operator HOW 仍歸 Ops RUNBOOK / WP-RB-WI；execution owner 仍歸 tradeflow docs | 不得把 T0/T1 execution semantics 升格為 CA-DSL owner law | SS_README boundary note / SS_LBP Annex / CR guard | CLOSED_AS_SUPPORT_ONLY |
| `DOC-0004《ICT股票分析總表_v1.2.1》` | LOC-021 | market vocabulary / time-risk shell / MarketProfile scenario context | 只作 scenario vocabulary 與 profile externalization context | 不得把分析模型、execution details、策略選擇寫成 DSL canonical rule | SS_README primitive neutrality / SS_ARCH profile bridge | CLOSED_AS_SUPPORT_ONLY |
| `DOC-0005《各階段子系統操作流程》` | LOC-022 | stage map / gate hook / evidence hook / fail-closed choreography / WT-NA 操作指引背景 | operator choreography 仍歸 Ops RUNBOOK / WP-RB-WI；Package D/E 仍 route-out | 不得複製或重立 Gate / threshold / owner acceptance | Interface Closure / SS_DELIVER / route-out register | CLOSED_AS_SUPPORT_ONLY |

### 9.3 Obsidian machine landing matrix（audit-driven）
| blueprint_named_item | local_equivalent_in_this_package | landing_purpose | legal_position | state |
|---|---|---|---|---|
| `patch_locator_ledger.tsv` | `obsidian_policy_crosswalk.tsv` | 將藍圖 patch class 與本書 landing section / sidecar 對位 | support-frontstage-only | MATERIALIZED_R7 |
| `notes_coverage_matrix.tsv` | `obsidian_integration_matrix.tsv` | 區分 sourcepack / note / shared settings / excluded path | support-frontstage-only | MATERIALIZED_R7 |
| `package_truth_path_registry.json` | `frontstage_path_registry.json` | canonical/package-truth vs frontstage exclusion paths | package-truth governance | MATERIALIZED_R7 |
| `scripts/promotion_smoke.py` | `promotion_smoke_contract.md` | 定義最小 smoke contract 與 pass/fail semantics | smoke-only, not owner proof | MATERIALIZED_R7 |
| `obsidian_adoption_matrix.tsv` | `obsidian_integration_matrix.tsv` | 採納面與主線/實驗面分層 | support-frontstage-only | MATERIALIZED_R7 |
| `plugin_candidate_matrix.tsv` | `obsidian_policy_crosswalk.tsv` + `obsidian_integration_matrix.tsv` | plugin 類別與 required-path exclusion | optional-lab only | MATERIALIZED_R7 |
| `policies/obsidian_share_policy.md` | `obsidian_policy_crosswalk.tsv` | shared policy crosswalk | support policy | MATERIALIZED_R7 |
| `policies/base_file_placement_policy.md` | `frontstage_path_registry.json` | `.base/**` exclusion / placement discipline | support policy | MATERIALIZED_R7 |


## 10. Interface Closure / Adjacency / Handoff Matrix
<a id="interface-closure"></a>

| edge | artifact_or_signal | producer | consumer | source_basis | current_owner_gap | gate_or_acceptance | fail_condition |
|---|---|---|---|---|---|---|---|
| CA-WRC -> CA-CORPUS | sealed raw + manifests | CA-WRC | CA-CORPUS | SSOT/system-level rules + mounted carrier evidence for current CA-WRC and CA-CORPUS owner books + WRC blueprint support rows | standalone local owner-book file not mounted, but current owner evidence is mounted via carrier | WRC handoff ready at carrier-evidence level | WRC 不 parse/OCR/chunk；CA-DSL 不回吞 owner law |
| CA-CORPUS -> CA-DISTILL | `ART-CORPUS-INDEX` + `corpus_snapshot.*` | CA-CORPUS | CA-DISTILL | SSOT/system-level rules + mounted carrier evidence for current CA-CORPUS and CA-DISTILL owner books + CORPUS blueprint support rows | standalone local owner-book file not mounted, but current owner evidence is mounted via carrier | CORPUS snapshot valid at carrier-evidence level | cache mistaken for SSOT / snapshot loss |
| CA-DISTILL -> CA-DSL | `ART-DISTILL-BASE` + PASS-only signal | CA-DISTILL | CA-DSL | SSOT + mounted carrier evidence for current CA-DISTILL owner book + current CA-DSL owner book + DISTILL blueprint support rows | standalone local owner-book file not mounted, but current owner evidence is mounted via carrier | upstream PASS-only handoff + ingress contract | missing provenance / upstream FAIL |
| CA-DSL -> CA-METHOD | `ART-DSL-SPEC` + schema/purity reports + `market_profile_id` + `trace_refs` | CA-DSL | CA-METHOD | SSOT + current CA-DSL owner book + current CA-DSL blueprint carrier rows | CA-METHOD consumer owner book not independently read back here | schema+purity+trace+profile resolve PASS | alias-only input / unresolved profile / broken trace |
| CA-DSL -> MSG chain | canonical spec + reports + adjunct refs | CA-DSL | method-side MSC gate | CA-DSL owner contracts only | downstream exact consumer schema not independently read back | MSG-ready handoff check | canonical spec not directly consumable |
| CA-DSL -> TVG chain | canonical spec + externalized profile + trace continuity + adjunct refs | CA-DSL | translate/eval-side TVE gate | CA-DSL owner contracts only | downstream exact consumer schema not independently read back | TVG-ready handoff check | copied constants / broken trace |
| Package B / D / E | owner schema / required checks / validator / release_guard | Package B/D/E | CA-DSL | Pack A-E+ + LBP + current carrier rebound blueprint rows | owner proof bundle absent in this workspace | owner proof mounted | without owner proof => BLOCK_RELEASE |

### 10.1 One-Rule-One-Owner 補充
- intake / allowlist / fetch / seal / provenance -> CA-WRC
- snapshot / index / retrieval-quality shell -> CA-CORPUS
- claims / assertions / distill bundle / PASS-only handoff -> CA-DISTILL
- `ART-DSL-SPEC` / DSL formal schema / purity -> CA-DSL
- gate registry / evidence schema / TT engine -> Package B
- workflow / required checks / factory HOW -> Package D
- validator / release_guard / promotion -> Package E

### 10.2 Sibling Source-Class Guard
1. 本回合對 WRC / CORPUS / DISTILL 的 current owner evidence，**法律上採 mounted merged carrier evidence**；不再宣稱 standalone local-workspace direct file readback。
2. sibling blueprints 只屬 `SUPPORT_BRIDGE` 或 `PRIMARY_BRIDGE`，且本回合的 current claim references 係透過 mounted carrier locator rows 回綁；standalone local blueprint files 並未掛載。
3. 因此 WRC/CORPUS/DISTILL adjacency 目前是 **carrier-evidence-level closure**：足以支持 boundary / handoff / fail-closed honesty，但不得誤寫成 standalone local source fully mounted closure。
4. CA-METHOD consumer schema、Package B/D/E owner proof、release guard 仍未直接 read back。
5. Obsidian frontstage 只可作 CA-DSL sourcepack 的人工編修與檢視外殼；它不形成新的 adjacency edge，也不改變 Package B/D/E 的 owner 邊界。


## 11. Sourcepack / Book-System / Packaging Truth Rules
<a id="sourcepack-book-system"></a>

### 11.1 MC4+ 書系目標
- `Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_MC4+合冊.md`
- `Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_WP-M.md`
- `Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_WP-RB-WI.md`
- `Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_WP-FULL.md`

### 11.2 本回合 truth note
本回合**實際 materialize 焦點是 MC4+ 主書與其 delivery package**。WP companions 只在本書以書系規格、sourcepack 結構、WP surface、package truth 與 route-out 邊界形式納入；不得宣稱已實際出貨 companion books。

### 11.3 書系定義
- **MC4+**：憲制、reference、contracts、truth、deliver。
- **WP-M**：矩陣、artifacts、checks、handoff、package truth。
- **WP-RB-WI**：operator how-to、rollback、evidence collection、acceptance path。
- **WP-FULL**：archive / audit snapshot only；generated only，不得手寫成新的 normative 主文。

### 11.4 sourcepack 單位
```text
docs/subsystems/CA-DSL/sourcepack/
├─ meta.json
├─ CA-CORE.md
├─ CA-MC4.md
└─ CA-WP.md
```

### 11.5 sourcepack 檔案職責
- `meta.json`：identity / verdict / supersedes / route_out / owner_boundary / package truth profile
- `CA-CORE.md`：共享 meta、truth、authority note、route-out/stopline/TT skeleton
- `CA-MC4.md`：subsystem constitution / reference / contracts / deliver truth
- `CA-WP.md`：WP-MASTER、WP-001..004、RUNBOOK_WI、acceptance/rollback/probe/checklist、package truth

### 11.6 Render 規格
渲染器只允許：
1. 讀取 `meta.json / CA-CORE.md / CA-MC4.md / CA-WP.md`
2. 生成 `MC4+ / WP-M / WP-RB-WI / WP-FULL`
3. 生成 package truth sidecars

渲染器嚴禁：改寫 owner law、用 conversation URL 當定位點、用 line_range 裁剪 whole-doc body、以 generated note 假裝 runtime evidence 已存在。

### 11.6A Obsidian shadow frontstage pattern
```text
repo-native mainline
├─ docs/subsystems/CA-DSL/sourcepack/     # canonical render inputs
├─ package truth sidecars                 # canonical delivery truth
└─ notes/obsidian/                        # support frontstage only (optional)

.obsidian/                                # local or shared editor settings (optional)
.base/                                    # optional bases/frontstage staging; never canonical truth
```

- `notes/obsidian/**`、`.obsidian/**`、`.base/**` 預設 **不進** mandatory manifest / checksums / package truth。
- Obsidian 可直接編修 `sourcepack` 四檔，但 render / validate / package validation 只能吃 canonical sourcepack 與 sidecars。
- 任一 note/frontstage 若要升格，必須先 materialize 成 `meta.json / CA-CORE.md / CA-MC4.md / CA-WP.md` 或明示 sidecar，再經 render / validate / package validation。
- `promotion-smoke` 的法律位置只是 smoke / guard，不是 owner release proof。

### 11.6B Obsidian machine-readable local equivalents
本次 r7 不是只把 Obsidian 寫進政策句，而是把最少可審核等價物實體化為：
- `obsidian_integration_matrix.tsv`
- `frontstage_path_registry.json`
- `promotion_smoke_contract.md`
- `obsidian_policy_crosswalk.tsv`
- `workspace_source_presence_matrix.tsv`

這些 sidecars 的法律位置仍是 **document/package-truth governance shell**：
- 它們證明本包已把 support-frontstage 納入 machine-readable 對帳；
- 它們**不等於** repo-side promotion-smoke 執行成功；
- 它們**不等於** Package D required checks 或 Package E validator / release_guard owner proof。


### 11.7 本回合 package truth mandatory
- `manifest.json`
- `checksums.sha256.txt`
- `BUILD.md`
- `README_delivery.txt`
- `machine_summary.json`
- `package_tree.txt`
- `exact_locator_registry.tsv`
- `subsource_decomposition_ledger.tsv`
- `audit_closure_matrix.tsv`
- `replacement_ledger.tsv`
- `upstream_requirement_closure_ledger.tsv`
- `support_absorption_ledger.tsv`
- `interface_closure_matrix.tsv`
- `cr_open_temporary_closure_ledger.tsv`
- `test_tracking_list.tsv`
- `artifact_registry.json`
- `route_out_registry.json`
- `delivery_manifest.json`
- `obsidian_integration_matrix.tsv`
- `frontstage_path_registry.json`
- `promotion_smoke_contract.md`
- `obsidian_policy_crosswalk.tsv`
- `workspace_source_presence_matrix.tsv`


### 11.8 Truthful Status Vocabulary
| layer | meaning | current posture in this package |
|---|---|---|
| document | 正文、ledgers、route-out、TT、package truth policy 已正文化 | `PASS_WITH_GUARDS` |
| package | 主書與 mandatory sidecars 已實體 materialize | `PASS_WHEN_MATERIALIZED` |
| runtime | 真機 canonical spec、reports、triplet、RunLedger row 已存在且通過最低檢核 | `FAIL_CLOSED / CONTRACT_ONLY` |
| release | runtime 之外，還要有 Package D checks、Package E validator / release_guard、owner acceptance | `BLOCK_RELEASE` |

### 11.9 Single-source truth registers
1. `exact_locator_registry.tsv`：locator truth 的單一真相來源；關閉 claims 必須能回連到單一 locator。
2. `upstream_requirement_closure_ledger.tsv`：requirement closure 的單一對照表；不得用散文替代。
3. `artifact_registry.json`：artifact role / canonical / alias / adjunct / package inclusion truth。
4. `route_out_registry.json`：route-out owner、主題、local ceiling 的單一真相來源。
5. `cr_open_temporary_closure_ledger.tsv` 與 `test_tracking_list.tsv`：未閉合缺口與 probe 計畫的單一真相來源。
6. `frontstage_path_registry.json`：frontstage/canonical/package-truth 路徑分層的單一真相來源。
7. `obsidian_integration_matrix.tsv`：Obsidian blueprint 命名項與本包 local equivalents 的單一對照表。

### 11.10 Builder constitution
本書允許的 builder responsibility 只有：
1. materialize 主書與 package-truth sidecars；
2. 生成 manifest / checksum / tree / machine summary；
3. 保持 source-class、locator、verdict、route-out 的誠實對位。  

本書不允許的 builder responsibility：
- 發明市場語義；
- 裁決 owner acceptance；
- 把 package descriptor 假裝成 runtime evidence；
- 把 blueprint / support-only 來源升格成 owner constitution。

### 11.11 Validator constitution
本包 validator / self-audit 最少要檢：
- sourcepack completeness
- exact locator one-row-one-claim discipline
- source-class integrity（尤其 sibling master vs blueprint proxy）
- manifest + checksum truth
- mandatory sidecars presence
- no conversation URLs / no fake download points
- package-truth consistency
- runtime / release not overclaimed

### 11.12 Workflow constitution
本回合可承認的 workflow 只包含：
- 讀 source
- 建 inputs / locators / ledgers
- rebuild main book
- materialize package-truth sidecars
- self-audit
- zip packaging  

本回合不可承認的 workflow：
- 把 operator HOW 藏進 MC4+ 主書
- 把 Package D required checks 改寫成書內自證
- 把 Package E validator / release_guard 變成文檔口頭宣告

### 11.13 tool adoption / backup / reject matrix

#### 11.13.1 Primary stack
| tool | status | reason |
|---|---|---|
| filesystem + Markdown | ADOPT | files-first / auditable / low-friction |
| Python stdlib + thin scripts | ADOPT | package truth / checksum / zip materialization 所需最小能力 |
| JSON Schema / check-jsonschema | ADOPT | canonical contract validation |
| Pydantic v2 | ADOPT | lightweight modeling / serialization |
| pytest | ADOPT | deterministic checks |
| SQLite | ADOPT | local registry / RunLedger shell |
| GitHub Actions | ADOPT | CI/CD 主線，但本回合不宣稱已 readback |
| Devcontainer / uv | ADOPT | repo-ready / low-misfit / low-friction |
| Obsidian vault over repo folder | ALLOWED_WITH_MINIMAL_CONFIG | 僅作 support frontstage / sourcepack 編修，不得成為 correctness owner；必須服從 `frontstage_path_registry.json` |

#### 11.13.2 Conditional stack
| tool | status | ceiling |
|---|---|---|
| Hypothesis | CONDITIONAL | 只補 property-based checks |
| DuckDB mirror | CONDITIONAL | 只作 mirror / analytics，不作 owner truth |
| DVC | CONDITIONAL | 只補資料版本外殼，不立 correctness law |
| attest / SBOM shell | CONDITIONAL | 只補供應鏈 shell，不替代 release truth |

#### 11.13.3 Support-only / upstream-only
| tool | status | reason |
|---|---|---|
| Docling / MinerU / PaddleOCR-VL | SUPPORT_ONLY | parser/OCR fallback only；不得成為 CA-DSL correctness owner |
| Qdrant / ColPali / ColQwen / MuVERA | SUPPORT_ONLY | retrieval sidecar only；不得成為 canonical truth |
| GraphRAG / RAPTOR / CRAG | SUPPORT_ONLY | reader aid / chunk routing / conflict surfacing only |
| MCP / skills / agents harness | SUPPORT_ONLY | orchestration aid only；不得取代 validator / release_guard |
| Obsidian community plugins | OPTIONAL_LAB | 核心 plugins 與 community plugins 必須分層；community plugins 僅在不成為 required path 時可用；不得成為 mandatory mainline |

#### 11.13.4 Reject matrix
| proposal | decision | why |
|---|---|---|
| 在 CA-DSL core 內接入 heavy parser tower / retrieval tower | REJECT | owner boundary 錯置，且違反低磨合 |
| 讓 OCR/parser 結果直接充當 canonical ingress | REJECT | canonical input 必須來自 CA-DISTILL |
| 用 agent/community harness 替代 validator / release_guard | REJECT | sandbox != release truth |
| 用 monolith 摘要取代 sidecars | REJECT | declaration != implementation |
| 自建 framework / orchestration tower 當 Day-1 mainline | REJECT | 違反不造輪子與低磨合序位 |
| 讓 Obsidian note/frontstage 直接成為 canonical input / package truth | REJECT | 違反 support-frontstage-only 與 no-promotion gate |

#### 11.13.5 Toolchain precedence
1. repo / sourcepack-derived rules  
2. subsystem-local generated instructions  
3. Pack / LBP / SSOT route-out owner ceilings  
4. sandbox assistants / community harness  
5. support-web references  

任何低順位不得推翻 sourcepack / owner law。

#### 11.13.6 Docs-as-Code / Diátaxis / GraphRAG-RAPTOR-CRAG / RAG-Triad landing
| layer | legal_position | allowed_use | forbidden_promotion |
|---|---|---|---|
| Docs-as-Code | MAINLINE_READER_DISCIPLINE | stable headings / anchors / tables / sidecars / diffability | 不得用摘要取代 sourcepack / sidecars |
| Diátaxis | MAINLINE_READER_DISCIPLINE | README / SRS / ARCH / DELIVER / LBP Annex 分卷防混寫 | 不得重寫 owner boundaries |
| GraphRAG / RAPTOR / CRAG | SUPPORT_ONLY_RETRIEVAL_HYGIENE | chunk routing / conflict surfacing / support cache | 不得變成 canonical truth 或 correctness prerequisite |
| Obsidian frontstage | SUPPORT_FRONTSTAGE_ONLY | sourcepack editing / review / note-taking / crosswalk / reader frontstage | 不得成為 canonical truth、validator、required checks authority、release truth |
| RAG-Triad | SUPPORT_ONLY_GROUNDEDNESS_DISCIPLINE | context relevance / groundedness / answer relevance 的讀者自檢 | 不得充當 validator / release_guard |


---
<!-- ===== FENCE:SS_README:BEGIN ===== -->
<a id="fence-ss-readme-begin"></a>

# SS_README

### 12.1 定位
CA-DSL 是 **Pipeline-A terminal / Pipeline-B spec entry**。它把上游 CA-DISTILL 的 `ART-DISTILL-BASE` 形式化為可機器讀取、可驗證、可追溯、可回放的 `ART-DSL-SPEC`。它的工作不是替市場下結論，而是把**中立原語**與**合法引用**定型，讓下游 CA-METHOD 可以在不發明新語義的前提下消費。

### 12.2 唯一 canonical 輸入 / 輸出
- 唯一 canonical input：`ART-DISTILL-BASE`
- 唯一 canonical output：`ART-DSL-SPEC`
- canonical concrete file：`art_dsl_spec.json`
- required local adjunct assets：`baseline_v1.vpc.yaml`、`dsl_mapping.json`
- required ref key：`market_profile_id`

### 12.3 相鄰接口摘要
- 從 `CA-DISTILL` 接收 PASS-only handoff；若 SGF / schema / lineage 不過，CA-DSL 不得硬接。
- 向 `CA-METHOD` 交付 `ART-DSL-SPEC`；下游不得用 local draft、legacy alias 或模糊文本替代 canonical spec。
- `CA-WRC` 與 `CA-CORPUS` 都是上游既成事實；CA-DSL 不吞它們的 owner 責任。

### 12.4 primitive neutrality 與 MarketProfile 邊界
- DSL 本體只承載中立原語、結構、compatibility、trace refs、合法 alias。
- 市場常數不得進 DSL core。
- 市場常數只能透過 `MarketProfile / market_profile_id` 間接綁定。
- `session_rules / tick_size_rules / calendar_ref / venue_microstructure` 屬 profile 或 downstream 消費層，不得硬寫在 core primitives 內。

### 12.4A Obsidian shadow frontstage / route-out
- 允許：用 Obsidian 直接打開 repo folder / vault，對 `docs/subsystems/CA-DSL/sourcepack/` 做人工編修、導讀、crosswalk、review note。
- 不允許：把 `.obsidian/**`、`notes/obsidian/**`、`.base/**` 寫成 canonical source、validator、release_guard、required checks authority。
- note/frontstage 要升格，必須先回寫到 sourcepack 或 sidecar，再由 render / validate / package validation 接手。
- `frontstage_path_registry.json` 與 `obsidian_integration_matrix.tsv` 是本包對 frontstage governance 的 machine-readable 最小落點。
- community plugins 預設不是 required path；restricted mode / plugin governance 不清則一律不准進主線。

### 12.5 gates summary
| gate | purpose | pass signal | fail-closed effect |
|---|---|---|---|
| `GATE-INGRESS-CONTRACT` | 驗 ingress contract / provenance / PASS-only | ingress report pass | block build / no handoff |
| `GATE-SCHEMA` | 驗 `ART-DSL-SPEC` 結構/欄位合法性 | `schema_report.status = pass` | block handoff / block promotion |
| `GATE-DSL-PURITY` | 驗 neutrality，禁止市場常數/未授權 execution semantics | `purity_report.status = pass` | block handoff / block promotion |
| `traceability check` | 驗 `trace_refs` / lineage / upstream linkage | refs resolvable | block if unresolved |
| `profile resolve check` | 驗 `market_profile_id` 可解析 | profile resolvable | purity fail if unresolved |
| `triplet completeness` | 驗 `verdict.json / index.json / bundle/` | all present | no runtime pass |
| `MSG-ready handoff check` | 驗 outputs 足以支撐 downstream `GATE-METHOD-MSC` | canonical spec + reports + adjunct refs complete | 不得宣稱 MSG-ready / MSC-ready |
| `TVG-ready handoff check` | 驗 outputs 足以支撐 downstream `GATE-TRANSLATE-TVE` | canonical spec + trace + profile indirection + adjunct refs | 不得宣稱 TVG-ready / TVE-ready |

### 12.6 artifact summary
| artifact | role | canonical? | note |
|---|---|---|---|
| `ART-DSL-SPEC` | subsystem canonical output | YES | 唯一正規 handoff identity |
| `art_dsl_spec.json` | local canonical concrete file | YES | hash / ledger / handoff binding |
| `dsl_schema.json` | compatibility alias | NO | central-reading / legacy compatibility only |
| `baseline_v1.vpc.yaml` | local baseline asset | NO | adjunct，不可替代 canonical output |
| `dsl_mapping.json` | local mapping evidence | NO | adjunct，不可替代 canonical output |
| `schema_report.json` | structural validation evidence | NO | runtime evidence |
| `purity_report.json` | purity validation evidence | NO | runtime evidence |
| `verdict.json` / `index.json` / `bundle/` | evidence triplet | NO | runtime evidence backbone |

### 12.7 first-success 定義
第一個成功，不是「有一份 YAML 看起來很像 spec」，而是同時滿足：
1. 收到合法的 `ART-DISTILL-BASE`
2. 產出 `ART-DSL-SPEC @ art_dsl_spec.json`
3. `GATE-SCHEMA` PASS
4. `GATE-DSL-PURITY` PASS
5. `market_profile_id` 可解析
6. `trace_refs` 可回指上游
7. evidence triplet 齊全
8. `baseline_v1.vpc.yaml` / `dsl_mapping.json` 作為 local adjunct assets 同步產出
9. RunLedger / ReferenceDB pointers 可回放

### 12.8 common failure modes
| failure | symptom | stopline |
|---|---|---|
| `DISTILL_INPUT_MISSING` | 沒有 `ART-DISTILL-BASE` 或 lineage 不完整 | 立即停止 |
| `PROFILE_UNRESOLVED` | `market_profile_id` 無法解析 | purity fail |
| `SCHEMA_INVALID` | canonical spec 欄位/結構不合法 | block handoff |
| `PURITY_FAIL` | 發現市場常數或未授權 execution semantics | block handoff |
| `TRACE_REF_BROKEN` | trace refs 無法回指上游 | block handoff |
| `ALIAS_AS_CANONICAL` | 只看到 `dsl_schema.json`，沒有 `art_dsl_spec.json` | 判定不合格 |
| `TRIPLET_INCOMPLETE` | evidence triplet 缺件 | 無 runtime pass |
| `LOCAL_ASSET_OVERCLAIM` | 把 baseline/mapping 寫成唯一 canonical output | 退回修文或修實作 |
| `FRONTSTAGE_PROMOTION` | `.obsidian/**` / `notes/obsidian/**` / `.base/**` 被當成 canonical/package truth | 立即 fail-closed / 退回重建 canonical 文件 |

### 12.9 route-out
- authoritative schema / contract body -> Package B / LBP-B(ICD)
- validator / release_guard / promotion engine -> Package E
- workflow / checks manifest / factory HOW -> Package D
- operator HOW / CLI / click path -> WP-RB-WI 或 Ops RUNBOOK 高位 HOW
- XQ execution boundary -> tradeflow / execution docs
- Obsidian settings / plugin governance / frontstage workflow -> `Pipeline-A_Obsidian升級藍圖.md`（support-frontstage-only）

### 12.10 release stopline
以下任一成立，即不得 promotion / release：
- direct missing historical file 被硬寫成 fully replaced
- `art_dsl_spec.json` 缺失
- `schema_report.json` 缺失或 FAIL
- `purity_report.json` 缺失或 FAIL
- evidence triplet 缺件
- `market_profile_id` 不可解析
- RunLedger / ReferenceDB linkage 缺失
- validator / required checks / release_guard 未獨立 PASS
- blocker TT 未關閉

<!-- ===== FENCE:SS_README:END ===== -->
---


---
<!-- ===== FENCE:SS_SRS:BEGIN ===== -->
<a id="fence-ss-srs-begin"></a>

# SS_SRS

### 13.1 Purpose / Scope / Non-goals
**Purpose**：定義 CA-DSL 的 requirement、artifact contract、gate ownership、evidence contract、handoff discipline 與 fail-closed stopline。  

**Scope**：
- `ART-DISTILL-BASE -> ART-DSL-SPEC`
- primitive neutrality
- `MarketProfile / market_profile_id`
- `GATE-INGRESS-CONTRACT`
- `GATE-SCHEMA`
- `GATE-DSL-PURITY`
- evidence triplet
- RunLedger / ReferenceDB linkage
- `baseline_v1.vpc.yaml` / `dsl_mapping.json` local adjunct contract
- PASS-only handoff 到 CA-METHOD

**Non-goals**：
- 交易執行
- 下單 / 成交 / fill / ordering
- broker/XQ wrapper
- parser tower / orchestration tower
- paid external LLM normative mainline
- consumer rewrite owner schema

### 13.2 Functional Requirements
| FR ID | requirement | acceptance | fail-closed |
|---|---|---|---|
| FR-DSL-001 | CA-DSL MUST 保持 `Pipeline-A terminal / Pipeline-B spec entry` | README/SRS/ARCH/DELIVER 同位敘事一致 | 一旦出現 execution semantics in-scope 即退回修文 |
| FR-DSL-002 | MUST 接受 `ART-DISTILL-BASE` 並生成 `ART-DSL-SPEC` | input pointer exists / output pointer exists / `generated_from` or `trace_refs` 可回指上游 | input missing -> stop；unsupported primitive -> stop |
| FR-DSL-003 | DSL core MUST 保持 primitive neutrality | no market constants literal in core body / no exchange-specific execution semantics | literal market constant -> purity fail |
| FR-DSL-004 | 市場常數 MUST 只經 `MarketProfile / market_profile_id` 間接綁定 | `market_profile_id` present and resolvable / no copied profile literals in core | unresolved profile -> purity fail / block handoff |
| FR-DSL-005 | 唯一 canonical output MUST 是 `ART-DSL-SPEC`；local canonical concrete file MUST 是 `art_dsl_spec.json` | canonical identity and canonical concrete file exist / aliases derive from canonical | only alias exists or adjunct treated as canonical -> fail |
| FR-DSL-006 | MUST 支援 local adjunct assets `baseline_v1.vpc.yaml` / `dsl_mapping.json` | assets generated and linked to canonical spec / never sole canonical handoff | adjunct overclaim -> fail |
| FR-DSL-007 | `ART-DSL-SPEC` MUST 通過 `GATE-SCHEMA` | `schema_report.json` exists and pass | schema fail -> block handoff/promotion |
| FR-DSL-008 | `ART-DSL-SPEC` MUST 通過 `GATE-DSL-PURITY` | `purity_report.json` exists and pass / no hardcoded market constants / no unauthorized execution semantics | purity fail -> block handoff/promotion |
| FR-DSL-009 | 每條 DSL rule / primitive / mapping entry MUST 具 `trace_refs` | trace refs not empty and resolvable | trace broken -> no handoff |
| FR-DSL-010 | 每次可追溯 build MUST 生成 `verdict.json`, `index.json`, `bundle/` | triplet complete | 任一缺失 -> no runtime pass |
| FR-DSL-011 | 成功 build MUST 更新 RunLedger 與必要 ReferenceDB pointer/profile revision | `run_id` persisted / reference ptr resolvable | ledger failure -> build incomplete |
| FR-DSL-012 | 只有 schema / purity / traceability / profile resolve 均 PASS，才可 handoff 到 CA-METHOD | handoff payload references canonical file / reject alias-only input / reject unresolved profile | any blocker -> no handoff |
| FR-DSL-013 | MUST 輸出足以支撐 downstream `GATE-METHOD-MSC` 的 formalization bridge | method-facing structure extractable from canonical spec / adjunct refs present but not substituting canonical | alias-only handoff or no method-facing structure -> fail |
| FR-DSL-014 | MUST 保留足夠 neutrality / mapping / traceability / profile indirection 以支撐 downstream `GATE-TRANSLATE-TVE` | translation-side consumer can form verifiable candidate from canonical spec + adjunct refs | copied constants into core or no traceable translation equivalence -> fail |

### 13.3 Non-Functional Requirements
| NFR ID | requirement | acceptance |
|---|---|---|
| NFR-001 | files-first / index-first | key claims traceable |
| NFR-002 | fail-closed | TT / FAIL_CLOSED discipline生效 |
| NFR-003 | low-friction Day-1 | mainline 無重型依賴 |
| NFR-004 | boundary integrity | README / SRS / ARCH / DELIVER 不混寫 |
| NFR-005 | independent readability | TOC / anchors / crosswalk / route-out 齊全 |
| NFR-006 | drift governance | support-only 來源不得越位 |
| NFR-007 | frontstage non-promotion | `.obsidian/**` / `notes/obsidian/**` / `.base/**` 不得出現在 canonical/package-truth required path |

### 13.4 Acceptance Criteria
| acceptance_id | requirement | minimum evidence |
|---|---|---|
| MAI-DSL-001 | canonical spec exists | `art_dsl_spec.json` |
| MAI-DSL-002 | schema valid | `schema_report.json` |
| MAI-DSL-003 | purity valid | `purity_report.json` |
| MAI-DSL-004 | profile resolved | profile pointer / resolution note |
| MAI-DSL-005 | traceable | `index.json` with `trace_refs` |
| MAI-DSL-006 | triplet complete | `verdict.json`, `index.json`, `bundle/` |
| MAI-DSL-007 | run closure persisted | RunLedger row / `run_manifest.json` |
| MAI-DSL-008 | handoff integrity | handoff payload references canonical file, not alias-only |
| MAI-DSL-009 | local adjunct assets aligned | baseline/mapping assets generated and linked |
| MAI-DSL-010 | no execution drift | no ordering/fill/broker semantics in scope |
| MAI-DSL-011 | MSG-ready downstream handoff | canonical spec + method-facing structure + reports + adjunct refs present |
| MAI-DSL-012 | TVG-ready downstream handoff | canonical spec + externalized profile + trace continuity + adjunct refs present |
| MAI-DSL-013 | frontstage nonpromotion intact | manifest / checksums / package truth do not require `.obsidian/**` / `notes/obsidian/**` / `.base/**` |

### 13.5 Gate Ownership
| gate / check | primary owner | local execution responsibility | note |
|---|---|---|---|
| `GATE-INGRESS-CONTRACT` | CA-DSL ingress verifier | CA-DSL maintainer | checks upstream payload shell only |
| `GATE-SCHEMA` | CA-DSL local validator / Package B route-out schema owner | CA-DSL maintainer | owner schema truth route-out to Package B |
| `GATE-DSL-PURITY` | CA-DSL local purity validator | CA-DSL maintainer | central template family = `G-SCHEMA[dsl-purity-profile]` |
| traceability check | CA-DSL maintainer | CA-DSL | upstream refs from DISTILL/CORPUS |
| profile resolve check | MarketProfile / ReferenceDB owner + CA-DSL | CA-DSL | unresolved profile blocks purity success |
| `MSG Gate / GATE-METHOD-MSC` | downstream method-side owner | CA-DSL only provides readiness contract | CA-DSL 不自任 MSC owner |
| `TVG Gate / GATE-TRANSLATE-TVE` | downstream translate/eval-side owner | CA-DSL only provides readiness contract | CA-DSL 不自任 TVE owner |
| required checks / workflow | Package D | route-out only | 本書不可重寫工廠 HOW |
| validator / release_guard | Package E | route-out only | 本書不可自證 release-ready |

### 13.6 Evidence Contract
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

### 13.7 Canonical Artifact / Alias Rule
- semantic canonical key = `ART-DSL-SPEC`
- canonical local concrete file = `art_dsl_spec.json`
- `dsl_schema.json` = compatibility alias only
- alias 可以存在，但必須由 canonical deterministic derive，不可獨立成為 handoff 主鍵，不可繞過 canonical hash / ledger / validation。

<!-- ===== FENCE:SS_SRS:END ===== -->
---


---
<!-- ===== FENCE:SS_ARCH:BEGIN ===== -->
<a id="fence-ss-arch-begin"></a>

# SS_ARCH

### 14.1 Architecture Goals
1. 將 `ART-DISTILL-BASE` 正式化為 `ART-DSL-SPEC`
2. 保持 primitive neutrality
3. 以 `MarketProfile / market_profile_id` 達成市場常數外置
4. 封閉 canonical artifact / alias / gate 名稱歧義
5. 提供 evidence / replay / hash / ledger linkage
6. 與相鄰子系統及 Package B/D/E 做 owner-aware interface closure
7. 維持低磨合、低技術門檻、不造輪子

### 14.1A Obsidian shadow frontstage
- repo-native mainline remains the only correctness path.
- Obsidian is an optional frontstage over the repo folder, not a second source of truth.
- `notes/obsidian/**`, `.obsidian/**`, `.base/**` are support-only surfaces.
- promotion-smoke checks only whether a promoted change is visible to render/validate; it does **not** prove owner validator / release_guard.

### 14.2 Component Split
| component | responsibility |
|---|---|
| Distill Intake Adapter | 讀取並驗證 `ART-DISTILL-BASE` 最小 handoff 契約 |
| DSL Generator | 將 distill logic units formalize 成 canonical spec |
| Schema Validator | 執行 `GATE-SCHEMA` |
| Purity Validator | 執行 `GATE-DSL-PURITY` |
| MarketProfile Binder | 解析 `market_profile_id`，禁止 core literal |
| Traceability Linker | 將 spec rules 與 upstream refs 綁定 |
| Adjunct Asset Emitter | 生成 `baseline_v1.vpc.yaml` / `dsl_mapping.json` |
| Evidence Writer | 寫 triplet、reports、bundle audit |
| Ledger Hook | 寫 RunLedger / ReferenceDB ptr / run closure |
| Handoff Packager | 對 CA-METHOD 輸出 PASS-only handoff payload |

### 14.3 Module Responsibilities
| module | does | does_not_do |
|---|---|---|
| Distill Intake Adapter | 接 `ART-DISTILL-BASE`、驗 lineage / provenance | 不重算 SGF owner judgment |
| DSL Generator | 生成 canonical spec | 不注入市場常數 |
| Schema Validator | 結構檢查 | 不替代 owner schema 憲法 |
| Purity Validator | 禁 literal constants / unauthorized semantics | 不驗 execution parity |
| MarketProfile Binder | 引用外置 profile | 不複製 profile 內容進 core |
| Adjunct Asset Emitter | 產 baseline/mapping local assets | 不宣稱它們是 canonical output |
| Evidence Writer | 寫 triplet / reports / hash index | 不宣稱 release guard 已過 |
| Ledger Hook | 記錄 run_id / refs / revisions | 不替代 governance owner |
| Handoff Packager | PASS-only handoff to METHOD | 不繞過 failed checks |

### 14.4 Canonical Artifact & Alias Crosswalk
| class | name | local path | role | canonical_identity | canonical_concrete | note |
|---|---|---|---|---|---|---|
| semantic artifact | `ART-DSL-SPEC` | n/a | subsystem artifact identity | YES | n/a | 唯一 canonical 主鍵 |
| local output | `art_dsl_spec.json` | `data/pipeline-a/dsl_ssot/art_dsl_spec.json` | canonical concrete file | YES | YES | hash / ledger / handoff binding |
| central-reading alias | `dsl_schema.json` | derived copy | compatibility alias | NO | NO | 不可單獨成為 handoff 主鍵 |
| optional alias | `dsl_spec.json` | derived copy | compatibility alias | NO | NO | 僅 deterministic derive 時允許 |
| local adjunct asset | `baseline_v1.vpc.yaml` | `data/pipeline-a/dsl_ssot/baseline_v1.vpc.yaml` | OP-surface baseline | NO | NO | must reference canonical/profile |
| local adjunct asset | `dsl_mapping.json` | `data/pipeline-a/dsl_ssot/dsl_mapping.json` | OP-surface mapping evidence | NO | NO | must align to canonical |

### 14.5 Template Gate ↔ Concrete Gate Bridge
| layer | gate | purpose | rule |
|---|---|---|---|
| central template layer | `G-SCHEMA[dsl-purity-profile]` | 模板 gate family / profile slot | 不直接取代 local validators |
| local concrete gate | `GATE-SCHEMA` | 檢查 canonical spec 結構 | REQUIRED |
| local concrete gate | `GATE-DSL-PURITY` | 檢查 neutrality / no-hardcoded-market-constants | REQUIRED |

**Bridge law**：local system 必須同時通過 `GATE-SCHEMA` 與 `GATE-DSL-PURITY`；任何只過其一的 case，均不得聲稱 template family 已滿足。

### 14.6 Central ↔ SSOT ↔ Local Naming Bridge
| semantic concept | central wording | SSOT wording | local implementation wording | adjudicated rule |
|---|---|---|---|---|
| CA-DSL main output | `dsl_schema.json` | `ART-DSL-SPEC` | `art_dsl_spec.json` | identity 取 SSOT；concrete file 取 local canonical path；central wording降為 compatibility label |
| gate family | `G-SCHEMA[dsl-purity-profile]` | `GATE-SCHEMA` + `GATE-DSL-PURITY` | same | template family vs concrete gates 分層 |
| local mapping output | not primary in central | OP-surface support | `baseline_v1.vpc.yaml` / `dsl_mapping.json` | adjunct assets only |
| market constants | execution drift guard | `MarketProfile Binder` | `market_profile_id` + profile resolution | constants remain externalized |
| evidence backbone | central triplet / release truthfulness | triplet + index + bundle | same + local reports | triplet 為 runtime minimum |

### 14.7 Path / Storage / Naming Resolution
| artifact | path | storage class | producer | consumer | notes |
|---|---|---|---|---|---|
| `art_dsl_spec.json` | `data/pipeline-a/dsl_ssot/art_dsl_spec.json` | Git/LFS-friendly spec artifact | CA-DSL | CA-METHOD | canonical concrete file |
| `baseline_v1.vpc.yaml` | `data/pipeline-a/dsl_ssot/baseline_v1.vpc.yaml` | local adjunct asset | CA-DSL | CA-METHOD / local stage | must include profile ref |
| `dsl_mapping.json` | `data/pipeline-a/dsl_ssot/dsl_mapping.json` | local adjunct asset | CA-DSL | local stage / audit | evidence/support |
| `schema_report.json` | `evidence/dsl/<run_id>/schema_report.json` | runtime evidence | CA-DSL | audit / release_guard | required |
| `purity_report.json` | `evidence/dsl/<run_id>/purity_report.json` | runtime evidence | CA-DSL | audit / release_guard | required |
| `verdict.json` | `evidence/dsl/<run_id>/verdict.json` | triplet | CA-DSL | audit / release_guard | required |
| `index.json` | `evidence/dsl/<run_id>/index.json` | triplet | CA-DSL | audit / replay | required |
| `bundle/` | `evidence/dsl/<run_id>/bundle/` | triplet | CA-DSL | audit / replay | required |
| `run_manifest.json` | `evidence/dsl/<run_id>/run_manifest.json` | run closure | CA-DSL | audit / release_guard | recommended local runtime contract |
| RunLedger row | `runledger/ledger.sqlite` | append-only lineage | CA-DSL | GOVERN / replay | required |
| `refdb_manifest.json` | `evidence/dsl/<run_id>/refdb_manifest.json` | reference snapshot note | CA-DSL | audit | recommended local runtime contract |

### 14.8 Data Backbone Boundary
| backbone element | role | owned_by | CA-DSL allowed action | not_allowed |
|---|---|---|---|---|
| ReferenceDB | 共享只讀參考資料庫 | data backbone owner | 讀取 revision / ptr / profile refs | 重寫 owner schema |
| RunLedger | append-only lineage ledger | governance / pipeline owner | append current run linkage | 刪改歷史 |
| SpecPack | spec-oriented deliverable package | CA-DSL local packaging within owner boundary | 封裝 canonical spec + reports + triplet refs | 用 adjunct 替代 canonical |
| Evidence bundle | runtime evidence closure | CA-DSL local writer + Package E release guard later | 寫 bundle | 自證 release-ready |

### 14.9 Flow-Layer Reconciliation
1. `ART-DSL-SPEC` 是 **CA-DSL 的 canonical subsystem output**
2. `baseline_v1.vpc.yaml` 與 `dsl_mapping.json` 是 **local adjunct assets / evidence hooks**
3. 三者可以同 run 產生，也應互相對齊；但**地位不同**
4. 若只有 adjunct，沒有 canonical spec -> 只算 local surface，不算 subsystem completion
5. 若 canonical 有而 adjunct 缺 -> canonical handoff 可存在，但 local surface 不完整
6. 若三者不一致 -> canonical spec 為主；adjunct 視為 stale / invalid，必須重生

### 14.10 Interface Closure Matrix
| edge | artifact_or_signal | producer | consumer | required_fields_or_refs | gate_or_acceptance | fail_condition |
|---|---|---|---|---|---|---|
| CA-WRC -> CA-CORPUS | sealed raw + manifests | CA-WRC | CA-CORPUS | source_uri / sha256 / provenance_ptr / snapshot refs | WRC handoff ready | WRC 不 parse/OCR/chunk; CA-DSL 不回吞 owner law |
| CA-CORPUS -> CA-DISTILL | ART-CORPUS-INDEX + corpus_snapshot.* | CA-CORPUS | CA-DISTILL | snapshot boundary / schema refs / retrieval quality report | CORPUS snapshot valid | cache mistaken for SSOT / snapshot loss |
| CA-DISTILL -> CA-DSL | ART-DISTILL-BASE + PASS-only signal | CA-DISTILL | CA-DSL | logic_units[] / provenance / trace refs | upstream PASS-only handoff | missing provenance / upstream FAIL |
| CA-DSL -> CA-METHOD | ART-DSL-SPEC + schema/purity reports + market_profile_id + trace_refs | CA-DSL | CA-METHOD | canonical hash / reports / profile / trace | schema+purity+trace+profile resolve PASS | alias-only input / unresolved profile / failed reports |
| CA-DSL -> MSG chain | canonical spec + reports + adjunct refs | CA-DSL | method-side MSC gate | method-facing structure / canonical refs / adjunct refs | MSG-ready handoff check | canonical spec not directly consumable |
| CA-DSL -> TVG chain | canonical spec + externalized profile + trace continuity + adjunct refs | CA-DSL | translate/eval-side TVE gate | trace continuity / externalized profile | TVG-ready handoff check | copied constants / broken trace |
| Package B / D / E | owner schema / required checks / validator / release_guard | Package B/D/E | CA-DSL | route-out only | owner proof mounted | without owner proof => BLOCK_RELEASE |

### 14.10A No-promotion gate
- canonical/package-truth paths may not resolve to `.obsidian/**`, `notes/obsidian/**`, `.base/**`.
- frontstage notes may cite canonical artifacts, but canonical artifacts may not cite frontstage notes as final truth.
- manifest/checksums/package validation treat frontstage as excluded unless explicitly re-materialized into canonical files.

### 14.11 Failure Modes
| failure_mode | cause | first_response | escalation |
|---|---|---|---|
| `SCHEMA_INVALID` | serializer / field mismatch | stop, fix serializer, revalidate | Package B route-out if owner schema ambiguity |
| `PURITY_FAIL` | literal constants / unauthorized semantics | stop, strip constant, move to profile | profile/refdb owner if ambiguous |
| `PROFILE_UNRESOLVED` | refdb/profile ptr invalid | stop before purity pass | MarketProfile / ReferenceDB owner |
| `TRACE_BROKEN` | upstream lineage missing | reject handoff | upstream DISTILL/CORPUS owner |
| `ALIAS_DRIFT` | alias content diverges from canonical | discard alias, regenerate | TT if repeated |
| `MSG_NOT_READY` | canonical spec lacks method-facing structure | block MSG-ready claim | method-side owner if expectation unclear |
| `TVG_NOT_READY` | trace/profile externalization cannot survive equivalence checks | block TVG-ready claim | translate/eval-side owner |
| `LOCAL_ASSET_DRIFT` | baseline/mapping stale against canonical | regenerate adjunct assets | local stage owner only if wording unclear |
| `LEDGER_WRITE_FAIL` | run closure not persisted | mark build incomplete | governance/storage owner |
| `BUNDLE_INCOMPLETE` | triplet/report missing | no runtime pass | Package D/E route-out if packaging pipeline issue |

### 14.12 Rollback
Rollback 的主鍵是上一版 canonical `ART-DSL-SPEC` digest；local adjunct assets 必須隨 canonical digest 回退；profile resolution 必須回到對應 revision；RunLedger 必須能指出 `reverted_from / reverted_to / reason / retained_evidence_root`。

### 14.13 Replaceable Slots
| slot | current policy | replaceable? | guard |
|---|---|---|---|
| serializer | local implementation | YES | must still satisfy owner schema |
| schema validator | local implementation + Package B route-out | YES | output report contract fixed |
| purity validator | local implementation | YES | fail semantics fixed |
| profile resolver | local implementation + refdb | YES | pointer/revision contract fixed |
| repo-local agent helper | optional | YES | not correctness prerequisite |
| OpenCode / AGENTS / skills | optional harness | YES | cannot become subsystem law |
| MCP connector | support/test-track | YES | no normative dependence |
| heavy parser/orchestrator tower | rejected on mainline | NO for Day-1 | violates low-friction rule |

### 14.14 Owner Escalation / Route-out
- canonical artifact / schema authority gap -> Package B owner + Central owner
- validator / release_guard / deliverability gap -> Package E owner
- workflow / checks / factory gap -> Package D owner
- flow-layer wording conflict -> OpsFlow owner
- MarketProfile / ReferenceDB gap -> profile/refdb owner
- upstream lineage gap -> CA-DISTILL / CA-CORPUS owner
- downstream rewrite attempt -> reject; METHOD only may consume or route-out

<!-- ===== FENCE:SS_ARCH:END ===== -->
---


---
<!-- ===== FENCE:SS_DELIVER:BEGIN ===== -->
<a id="fence-ss-deliver-begin"></a>

# SS_DELIVER

### 15.1 D-0 truthful shipped contents
**本回合可真實宣稱已出貨的內容只有：**
- 本份《Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_MC4+_合冊》完整正文
- package-truth sidecars（見 §22）
- Obsidian machine-readable local equivalents（`obsidian_integration_matrix.tsv`、`frontstage_path_registry.json`、`promotion_smoke_contract.md`、`obsidian_policy_crosswalk.tsv`）
- `README_delivery.txt`
- 以 sourcepack 為主線、frontstage exclusion 為前提的 packaging truth
- 本文內之 authority & scope、inputs manifest、locator registry、subsource decomposition、audit closure、replacement ledger、support absorption、interface closure、四卷正文、SS_LBP Annex、CR/TT/self-audit

**本回合不得宣稱已隨文出貨的內容：**
- 真機 `art_dsl_spec.json`
- 真機 `schema_report.json`
- 真機 `purity_report.json`
- 真機 `verdict.json / index.json / bundle/`
- 真機 RunLedger row
- Package D exact required-check proofs
- Package E validator / release_guard / owner acceptance bundle
- `.obsidian/**`、`notes/obsidian/**`、`.base/**`（它們不是 package truth required path）

### 15.2 D-1 runtime evidence bundle contract
```text
data/pipeline-a/dsl_ssot/
  art_dsl_spec.json
  baseline_v1.vpc.yaml
  dsl_mapping.json

evidence/dsl/<run_id>/
  verdict.json
  index.json
  bundle/
  schema_report.json
  purity_report.json
  run_manifest.json
  refdb_manifest.json
  handoff_payload.json
```

### 15.3 D-2 package truth bundle（本次實際交付）
```text
/
├─ Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_MC4+_合冊_v2026.03.30-r7.md
├─ manifest.json
├─ checksums.sha256.txt
├─ README_delivery.txt
├─ BUILD.md
├─ machine_summary.json
├─ package_tree.txt
├─ exact_locator_registry.tsv
├─ subsource_decomposition_ledger.tsv
├─ audit_closure_matrix.tsv
├─ replacement_ledger.tsv
├─ upstream_requirement_closure_ledger.tsv
├─ support_absorption_ledger.tsv
├─ interface_closure_matrix.tsv
├─ cr_open_temporary_closure_ledger.tsv
├─ test_tracking_list.tsv
├─ artifact_registry.json
├─ route_out_registry.json
└─ delivery_manifest.json
```

### 15.4 validation / regression minimum
| check | must_for | note |
|---|---|---|
| markdown body integrity | document pass | anchors, fences, TOC, mandatory chapters complete |
| manifest/checksum truth | packaging pass | package truth only |
| locator registry presence | packaging pass | exact locator sidecar present |
| route-out registry presence | packaging pass | ownership boundaries visible |
| frontstage exclusion / nonpromotion gate | packaging pass | `.obsidian/**` / `notes/obsidian/**` / `.base/**` not required by canonical package; verify against `frontstage_path_registry.json` |
| no forbidden overclaim | document pass | packaging != runtime pass != release pass |
| runtime artifact proofs | runtime pass | not claimed in this package |
| validator / required checks / release_guard | release pass | route-out only |

### 15.5 three-layer verdict table
| layer | current | upgrade_condition | stopline |
|---|---|---|---|
| document pass | `PASS` | current text integrity + mandatory package truth files materialized | false source / false shipped / missing mandatory chapters |
| runtime pass | `FAIL_CLOSED / CONTRACT_ONLY` | canonical file + reports + triplet + ledger + refdb ptr verified | missing artifact / failed gate / unresolved profile |
| release pass | `BLOCK_RELEASE` | runtime pass + required checks + validator + owner acceptance + release_guard + no blocking TT | any owner proof missing |

### 15.6 release criteria / promotion stopline
Promotion / release 必須同時滿足：
1. `art_dsl_spec.json` 真實存在
2. `schema_report.json` PASS
3. `purity_report.json` PASS
4. `market_profile_id` resolved
5. triplet complete
6. RunLedger row persisted
7. required checks PASS
8. validator PASS
9. owner acceptance complete
10. release_guard PASS
11. blocker TT 關閉

任一未滿足 -> `BLOCK_RELEASE`。

### 15.7 MD / ZIP packaging rules
1. 必須有一份完整 markdown 正文檔。
2. 必須有一份可打開的 zip，且內含最少 mandatory files。
3. download points 必須指向真實存在檔案。
4. `.zip` 只是交付封裝，不等於 runtime evidence triplet。
5. packaging artifact 不得被誤寫成 validator PASS、release_guard PASS、required checks PASS。
6. 任何「已打包 = 已 release-ready」說法，一律視為假完成。
7. `.obsidian/**`、`notes/obsidian/**`、`.base/**` 預設不進 package truth；若需保留，必須以 support-only 附件語義明示。

### 15.8 TT closure / reopen rules
| TT | closure rule | reopen rule |
|---|---|---|
| `TT-CADSL-HIST-001` | direct Master Spine file + hash + locator available | proxy-only status remains or locator drifts |
| `TT-CADSL-HIST-002` | old CA-DSL WP file appears and direct parity audit completed | file still absent or parity drifts |
| `TT-CADSL-HIST-003` | historical r2 blueprint direct diff completed | file still absent |
| `TT-CADSL-RUNTIME-001` | runtime evidence generated and verified | any runtime artifact missing/fails |
| `TT-CADSL-REL-001` | Package D/E owner proofs mounted and verified | any proof missing/fails |
| `TT-CADSL-ADJ-001` | CA-METHOD owner confirms consumer contract | consumer contract changes or rejects current bridge |
| `TT-CADSL-OBS-001` | frontstage nonpromotion gate + sourcepack editing path verified | frontstage path enters canonical/package truth or sourcepack editing path drifts |

<!-- ===== FENCE:SS_DELIVER:END ===== -->
---


---
<!-- ===== FENCE:SS_LBP_ANNEX:BEGIN ===== -->
<a id="fence-ss-lbp-annex-begin"></a>

# SS_LBP Annex

### 16.1 LBP / Pack / Ops route-out register
| topic | owner / target | why route-out | local ceiling |
|---|---|---|---|
| authoritative schema body / schema authority / evidence schema | Package B / LBP-B(ICD) | schema owner wins | 本書只寫 bridge / owner / stopline |
| gate registry / threshold exact values / TT engine | Package B / LBP-E / SSOT | threshold owner wins | 本書不私設數值閾值 |
| workflow / required checks / factory HOW / adapters / devcontainer / CI execution details | Package D | factory owner wins | 本書只寫 dependency / release block |
| validator / release_guard / package reality / final promotion | Package E | delivery owner wins | 本書只寫 route-out 與 stopline |
| operator HOW / stage-by-stage WI / rollback job cards | Ops RUNBOOK + WP-RB-WI | HOW owner wins | 本書不重抄步驟 |
| sibling owner constitutions | sibling subsystem owner books | owner boundary | 本書只寫 adjacency / handoff / truthfulness |
| execution route / broker / fill / ordering / XQ parity | tradeflow / execution docs | execution owner wins | CA-DSL 嚴禁越權 |
| Obsidian frontstage / plugin governance / note promotion policy | `Pipeline-A_Obsidian升級藍圖.md` + official Obsidian Help（support-only） | frontstage governance wins only at support layer | 本書不得把 frontstage 升格為 owner law；本包僅提供 `obsidian_policy_crosswalk.tsv` / `frontstage_path_registry.json` 等 local equivalents |

### 16.2 LBP absorption note
- LBP-A：索引/契約/route-out discipline absorbed
- LBP-B：schema owner / contract registry absorbed as route-out ceiling
- LBP-C：ADR / decision-route discipline absorbed
- LBP-D：C4 boundary / subsystem boundary absorbed
- LBP-E：fitness / threshold owner boundary absorbed with guard

### 16.3 Pack boundary note
- Package B / D / E 只作 owner ceiling，不在本書內被重立法。
- Pack A-E+ 工程指南提供 entry routing / FQ_DOC_ID / index-first discipline，但不能取代 subsystem requirement body。
- WP-RB-WI 是 operator how-to surface；MC4+ 不得偷偷混入 HOW。

<!-- ===== FENCE:SS_LBP_ANNEX:END ===== -->
---


## 17. Support-Web Appendix
<a id="support-web-appendix"></a>

本回合已對**官方一級來源**做最小且必要的 support-web re-probe。其法律地位仍然是 **SUPPORT-only**：只用來補 Obsidian frontstage 治理、GitHub merge queue / required checks、artifact sharing / attestation、uv、schema CLI 的 2026 可落地性；不得覆寫內部 owner law。

| support_id | source | accessed_at | why_used | landing_section | revoke_condition | status |
|---|---|---|---|---|---|---|
| SUP-WEB-01 | GitHub Docs — Managing a merge queue / troubleshooting required status checks | 2026-03-30 | 確認 merge queue / required checks 仍需 `merge_group` 事件，避免 merge queue 無回報檢查 | Tooling / TT / Support-Web Appendix | merge queue semantics or workflow trigger contract drift | SUPPORT_ONLY_REPROBED |
| SUP-WEB-02 | GitHub Docs — Store and share data with workflow artifacts | 2026-03-30 | 確認跨 job artifact sharing 的官方主線語義 | SS_DELIVER / package truth / workflow notes | artifact sharing semantics drift | SUPPORT_ONLY_REPROBED |
| SUP-WEB-03 | GitHub Docs — Use artifact attestations | 2026-03-30 | 確認 attestation 仍屬 supply-chain shell，可補 provenance，但不等於 release truth | Tooling / Support-Web Appendix | attestation API / permission model drift | SUPPORT_ONLY_REPROBED |
| SUP-WEB-04 | Astral uv docs — Locking and syncing | 2026-03-30 | 確認 `uv sync` / lockfile distinction 與 minimal bootstrap path | low-friction tooling note | uv CLI contract drift | SUPPORT_ONLY_REPROBED |
| SUP-WEB-05 | `python-jsonschema/check-jsonschema` official repo | 2026-03-30 | 確認 local schema CLI lane 仍可作薄工具，不自建輪子 | tooling / validation shell | project archival or CLI contract drift | SUPPORT_ONLY_REPROBED |
| SUP-WEB-06 | Obsidian Help — Properties | 2026-03-30 | 確認 nested properties 仍非完整支援，因此 canonical complex schema 不應塞進 Obsidian properties | Obsidian policy / Tooling / SS_ARCH | properties capability semantics drift | SUPPORT_ONLY_REPROBED |
| SUP-WEB-07 | Obsidian Help — Core plugins / community plugins | 2026-03-30 | 確認 restricted mode 與 community plugin 治理成本仍存在，故 community plugins 不能成為 required mainline path | Obsidian policy / TT / Support-Web Appendix | restricted mode / plugin governance semantics drift | SUPPORT_ONLY_REPROBED |

## 18. CR_OPEN Temporary Closure Ledger
<a id="cr-open-ledger"></a>

| cr_id | problem_statement | current_state | closure_type | why_not_fully_closed | authoritative_owner | evidence_gap | temporary_mitigation | external_support_used_or_not | revoke_condition | next_probe | test_tracking_id | mark |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| CR-CADSL-001 | `Spartoi-OMOC_Master_Spine_Full_Monolith.md` direct file absent; only proxy carriers exist | UNVERIFIED_PROXY | TEMP_CLOSED | direct file not mounted in current workspace | Central / Spine owner | direct source file + hash + locator | treat as proxy-only lineage; do not base exact clause closure on it | No | if direct file appears, replace proxy status and re-bind exact locators | probe future workspace / pack manifests | TT-CADSL-HIST-001 | 測試追蹤 |
| CR-CADSL-002 | historical old MC4 main book direct file absent | MISSING_HISTORICAL_DIRECT | TEMP_CLOSED | direct historical file absent in current workspace | CA-DSL owner | direct old-MC4 file + hash + locator | keep practical replacement claim bounded to old-main-book scope; no clause-by-clause historical overclaim | No | if historical file appears, rerun direct parity diff | search future workspace drop / audit bundle | TT-CADSL-HIST-002 | 測試追蹤 |
| CR-CADSL-003 | historical CA-DSL r1/r2/r3 direct blueprint lineage absent | MISSING_HISTORICAL_DIRECT | TEMP_CLOSED | supersedes chain exists but direct files are not mounted | CA-DSL owner | direct r1/r2/r3 files + locators | use current final blueprint only; keep historical lineage as traceability, not closure proof | No | if historical blueprints appear, rerun clause-level diff | search future workspace drop | TT-CADSL-HIST-003 | 測試追蹤 |
| CR-CADSL-004 | runtime artifacts (`art_dsl_spec.json`, reports, triplet, RunLedger row) not generated in this materialization | NOT_VERIFIED | TT_BOUND | this task materializes document package, not runtime evidence | CA-DSL + Package D/E | runtime artifacts + validator readback | keep runtime_verdict FAIL_CLOSED / CONTRACT_ONLY | No | when runtime evidence exists and validates | run build / validate in owner repo | TT-CADSL-RUNTIME-001 | 測試追蹤 |
| CR-CADSL-005 | Package D exact required checks / Package E validator-release_guard proofs absent | BLOCK_RELEASE | FAIL_CLOSED_PENDING_OWNER | no direct owner proofs in workspace | Package D / Package E | required checks proof + validator + release_guard + owner acceptance | release_verdict stays BLOCK_RELEASE | support-web only confirms tooling feasibility, not owner proof | when owner proofs are mounted | read back owner proof bundle | TT-CADSL-REL-001 | 測試追蹤 |
| CR-CADSL-006 | CA-METHOD consumer exact schema / acceptance contract not independently read back | ENGINEERING_GUARD | TT_BOUND | downstream consumer owner book not mounted here | CA-METHOD owner | consumer schema / acceptance / method-side gate truth | keep CA-DSL->CA-METHOD closure at producer-ready only | No | if CA-METHOD owner book appears, rerun interface closure | search downstream owner bundle | TT-CADSL-ADJ-001 | 測試追蹤 |
| CR-CADSL-007 | Obsidian sourcepack editing / nonpromotion path is documented and now machine-landed, but not runtime-proven in this package | SUPPORT_FRONTSTAGE_GUARD | TEMP_CLOSED + TT_BOUND | current package proves document policy, package exclusion, and local machine-readable equivalents; it still does not prove repo-side promotion-smoke execution | CA-DSL owner + Pipeline-A frontstage maintainer | promotion-smoke run log / sourcepack edit→render proof | keep Obsidian legal position support-only and keep release_verdict BLOCK_RELEASE | support-web only confirms product semantics, not repo execution | when promotion-smoke and sourcepack edit path are directly read back | run frontstage edit→render→package smoke in owner repo | TT-CADSL-OBS-001 | 測試追蹤 |
| CR-CADSL-008 | standalone current owner / blueprint filenames are known but not mounted as local standalone files in this package | SOURCE_CLASS_GUARD | TEMP_CLOSED | carrier evidence is available, but standalone local mount proof is not bundled here | central / subsystem owners | standalone file mount proof + hash + exact locator | use mounted carrier or carrier-index evidence only; forbid local-standalone direct-readback wording | No | if standalone mounted proofs are bundled later, upgrade source-class | future package may add standalone source bundle | TT-CADSL-CARRIER-001 | 測試追蹤 |

## 19. Test Tracking List
<a id="test-tracking-list"></a>

| test_tracking_id | probe_goal | close_criteria | related_issue | owner | priority | blocker_level |
|---|---|---|---|---|---|---|
| TT-CADSL-HIST-001 | Proxy-only Master Spine direct file | locate direct file + verify hash + bind exact locators | CR-CADSL-001 | Central / Spine owner | LOW | NONBLOCKING_HISTORY |
| TT-CADSL-HIST-002 | old MC4 direct historical parity | locate historical file + rerun direct parity diff | CR-CADSL-002 | CA-DSL owner | LOW | NONBLOCKING_HISTORY |
| TT-CADSL-HIST-003 | historical blueprint r1/r2/r3 direct lineage | locate files + rerun lineage diff | CR-CADSL-003 | CA-DSL owner | LOW | NONBLOCKING_HISTORY |
| TT-CADSL-RUNTIME-001 | runtime artifact contract only | generate canonical spec + schema/purity reports + triplet + RunLedger row | CR-CADSL-004 | CA-DSL + Package D/E | HIGH | RUNTIME_BLOCKER |
| TT-CADSL-REL-001 | Package D/E owner proofs missing | mount exact required checks + validator + release_guard + owner acceptance | CR-CADSL-005 | Package D / Package E | CRITICAL | RELEASE_BLOCKER |
| TT-CADSL-ADJ-001 | CA-METHOD consumer exact schema readback not independently present | read consumer input validation / acceptance contract | CR-CADSL-006 | CA-METHOD owner | MEDIUM | ENGINEERING_GUARD |
| TT-CADSL-OBS-001 | Obsidian sourcepack editing + nonpromotion guard | direct readback sourcepack edit→render pass and confirm package truth excludes `.obsidian/**` / `notes/obsidian/**` / `.base/**`; local machine-readable equivalents remain aligned | CR-CADSL-007 | CA-DSL owner + frontstage maintainer | MEDIUM | SUPPORT_FRONTSTAGE_GUARD |
| TT-CADSL-CARRIER-001 | standalone current owner / blueprint mount proof | bundle standalone local files + hashes + exact locators or keep carrier-only wording | CR-CADSL-008 | central / subsystem owners | LOW | SOURCE_CLASS_GUARD |

## 20. Final Self-Audit
<a id="final-self-audit"></a>

| check | result | note |
|---|---|---|
| 是否仍有 ghost source | NO | 缺席來源已誠實列為 `MISSING_HISTORICAL_DIRECT / UNVERIFIED_PROXY / TT_BOUND` |
| 是否仍把 sibling owner book 用 blueprint 替代 | NO | sibling current owner evidence 改綁為 mounted carrier evidence；blueprint 僅保留 bridge/index role |
| 是否仍有 coarse locator | NO（critical closure claim-grade） | critical blueprints / sibling owner evidence 改綁為 mounted carrier line rows；support-only section ranges 只保留 support lane |
| 是否仍把 support-only 寫成 normative | NO | Support Absorption Ledger 與 Support-Web Appendix 已寫死 legal position |
| 是否仍 overclaim runtime / release | NO | runtime_verdict / release_verdict 維持 fail-closed |
| 是否仍把 Package D/E 寫成已完成 | NO | 一律 route-out；未宣稱 owner proofs 存在 |
| 是否仍有 skeleton / TODO / placeholder | NO | mandatory chapters / fences / ledgers / package files 已 materialize |
| 是否仍有 fake download point | NO | 下載點只指向實際文件 |
| 是否仍把 proxy-only Master Spine 當 direct source | NO | 固定為 `UNVERIFIED_PROXY` 並加 TT |
| 是否仍違反 family policy | NO | B-family mainline freeze 已寫入並與 current Pipeline-A blueprint 對齊 |
| 是否仍把 Obsidian 升格為 correctness owner | NO | 已寫死 `SUPPORT_FRONTSTAGE_ONLY`、no-promotion gate、package-truth exclusion，且新增 local machine-readable equivalents |

## 21. Final Truthful Verdict
<a id="final-truthful-verdict"></a>

- **document_verdict = PASS_WITH_GUARDS**
- **engineering_verdict = READY_PATCHED_WITH_GUARDS**
- **runtime_verdict = FAIL_CLOSED / CONTRACT_ONLY**
- **release_verdict = BLOCK_RELEASE**
- **replacement_verdict = FULL_REPLACEMENT_FOR_CURRENT_MC4PLUS_MAIN_BOOK + PATCHED_REPLACEMENT_FOR_OLD_SCOPE_WITH_HISTORY_GUARD**
- **delivery_verdict = PASS_DOCUMENT_PACKAGE_ONLY**

一句話：**本書現在已是 audit-driven r7 升級修補後的完整主書，不是骨架，不是 TODO；它已把 2026-03-30 任務契約、r6 audit findings、舊版 baseline 與《Pipeline-A_Obsidian升級藍圖》的 support-frontstage 修補要求一併落地，並把 sibling owner / blueprint 證據誠實重綁為 mounted local file、mounted carrier 或 carrier-index；它沒有再拿 package pass 偽裝 runtime，更沒有拿 document pass 偽裝 release-ready。**

## 22. Packaging Verdict / Download Inventory / Package Tree Summary
<a id="packaging-verdict"></a>

### 22.1 Packaging Verdict
| field | verdict | note |
|---|---|---|
| markdown_body_generation | PASS | 已生成完整主 `Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_MC4+_合冊_v2026.03.30-r7.md` |
| zip_packaging | PASS | 已生成可下載 `Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_MC4+_合冊_v2026.03.30-r7.zip` |
| runtime_evidence_generation | NOT_CLAIMED | packaging 不等於 runtime pass |
| validator / required checks / release_guard | NOT_CLAIMED | 仍由 Package D/E 與真機 readback 決定 |
| overall_packaging_truthfulness | PASS | 無虛構 sidecars、無虛構 release-ready |
| delivery_verdict | PASS_DOCUMENT_PACKAGE_ONLY | document package only; runtime/release still fail-closed |

### 22.2 Package Tree Summary
```text
.
├── BUILD.md
├── README_delivery.txt
├── checksums.sha256.txt
├── manifest.json
├── Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_MC4+_合冊_v2026.03.30-r7.md
├── artifact_registry.json
├── audit_closure_matrix.tsv
├── cr_open_temporary_closure_ledger.tsv
├── delivery_manifest.json
├── exact_locator_registry.tsv
├── frontstage_path_registry.json
├── interface_closure_matrix.tsv
├── machine_summary.json
├── obsidian_integration_matrix.tsv
├── obsidian_policy_crosswalk.tsv
├── package_tree.txt
├── promotion_smoke_contract.md
├── replacement_ledger.tsv
├── route_out_registry.json
├── subsource_decomposition_ledger.tsv
├── support_absorption_ledger.tsv
├── test_tracking_list.tsv
├── upstream_requirement_closure_ledger.tsv
└── workspace_source_presence_matrix.tsv
```

### 22.3 Delivery Inventory
- primary_md: `Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_MC4+_合冊_v2026.03.30-r7.md`
- primary_zip: `Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_MC4+_合冊_v2026.03.30-r7.zip`
- package truth sidecars: `manifest.json`, `checksums.sha256.txt`, `README_delivery.txt`, `delivery_manifest.json`, `machine_summary.json`, `package_tree.txt`
- extended truth sidecars: `exact_locator_registry.tsv`, `subsource_decomposition_ledger.tsv`, `audit_closure_matrix.tsv`, `replacement_ledger.tsv`, `upstream_requirement_closure_ledger.tsv`, `support_absorption_ledger.tsv`, `interface_closure_matrix.tsv`, `cr_open_temporary_closure_ledger.tsv`, `test_tracking_list.tsv`, `artifact_registry.json`, `route_out_registry.json`
- obsidian machine-readable equivalents: `obsidian_integration_matrix.tsv`, `frontstage_path_registry.json`, `promotion_smoke_contract.md`, `obsidian_policy_crosswalk.tsv`, `workspace_source_presence_matrix.tsv`
