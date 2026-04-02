# Spartoi-OMOC_Master_Spine_Full_Monolith

> Build revision: r4
> Status: DOCUMENT_PASS / EXECUTION_FAIL_CLOSED
> Notes: concatenated active bridge package including sidecar and packaging volumes.


<!-- BEGIN 00_README_DELIVERY_INDEX.md -->

# 00_README_DELIVERY_INDEX

> artifact: `Spartoi-OMOC Master Spine r4`
> build_date: `2026-03-15`
> package_status: `GENERATED_OBSERVED`
> coverage: `old r3 spine package + review package + blueprint r2 + notes 1~4 + authority stack + domain reference set`

## 升級結果總裁決

- overall_verdict: `DOCUMENT_PASS / EXECUTION_FAIL_CLOSED`
- replaces_r3_as_active_bridge_package: `YES`
- review_findings_absorbed: `YES, except owner-execution items that remain route-out / fail-closed`
- legal_position: `Derived Crosswalk + Retrieval Router + Source Alignment Contract + Upgrade-Integrated Delivery Routing Spec`

## 已修復的審查問題摘要

| review_item | status | resolution | evidence |
|---|---|---|---|
| CA-COLLAB / CA-UI / CA-GOVERN obligations swapped | FIXED | 08 route packs corrected from SR §9.13~§9.15 | 08_SUBSYSTEM_ROUTE_PACKS.md + 01 condensed cards |
| 15 condensed cards missing system_positioning | FIXED | 15/15 condensed cards now contain minimal formal positioning lines | 01_MASTER_SPINE.md §10 |
| generic toolchain drift | FIXED | 06 toolchain taxonomy now explicitly lists Local VS, Docker / DevContainer, GitHub repo, OpenCode, Oh My OpenCode, GitHub Copilot PRO, Codespaces fallback only | 06_SOURCE_AUTHORITY_CROSSWALK.md |
| blueprint sidecar / machine blocks not landed | FIXED_WITH_SCOPE_LOCK | 09 added and actual sidecar files generated under registries/contracts/scripts/ci/machine | 09_MACHINE_BLOCKS_AND_SIDECAR_MANIFEST.md + sidecar tree |
| ZIP false closure | FIXED | package ZIP generated, hashed, and listed in artifact proof register | 10_ARTIFACT_PROOF_AND_PACKAGING.md |
| owner-critical locators too generic | PARTIAL_REMEDIATED | owner-critical rows upgraded to FQ_DOC_ID + doc_anchor with exact_claim_allowed flag; exact clause not claimed where source anchor remains weak | 02~05 domain source inventory |
| release-ready may be misread | RETAINED_FAIL_CLOSED | owner validators / required checks not executed; package remains EXECUTION_FAIL_CLOSED | 07_CONFLICT_GAP_TT_REGISTER.md + 10_ARTIFACT_PROOF_AND_PACKAGING.md |

## FOUND / MISSING / UNVERIFIED / EXCLUDED / SUPERSEDED 摘要

- FOUND: 36 active inputs including review package and authority/domain sources.
- MISSING: 0 within active bridge scope.
- UNVERIFIED: 4 residual items; exact clause remains blocked where locator is weak.
- EXCLUDED: 3 special-channel files by user highest decision.
- SUPERSEDED: 11 r3 package artifacts.

## 輸出檔案索引

- 01_MASTER_SPINE.md — master spine / global bridge router
- 02_BRIDGE_PIPELINE_A.md — domain bridge / Pipeline-A
- 03_BRIDGE_PIPELINE_B.md — domain bridge / Pipeline-B
- 04_BRIDGE_PIPELINE_C.md — domain bridge / Pipeline-C
- 05_BRIDGE_SYS5.md — domain bridge / five subsystems
- 06_SOURCE_AUTHORITY_CROSSWALK.md — authority/source crosswalk and toolchain taxonomy
- 07_CONFLICT_GAP_TT_REGISTER.md — conflict/gap/registers and remediation closure
- 08_SUBSYSTEM_ROUTE_PACKS.md — 15 subsystem route packs
- 09_MACHINE_BLOCKS_AND_SIDECAR_MANIFEST.md — sidecar landing and machine blocks
- 10_ARTIFACT_PROOF_AND_PACKAGING.md — artifact proof register and packaging honesty
- Spartoi-OMOC_Master_Spine_Full_Monolith.md — single-file monolith
- Spartoi-OMOC_Master_Spine_Package.zip — package archive

## Sidecar tree summary

- registries/*
- contracts/*
- machine/*
- scripts/*
- ci/*
- .github/CODEOWNERS

## 注意

- 本包件已吸收 review remediation，但**沒有**越權把 Master Spine 寫成 schema owner / validator owner / release guard owner / HOW owner。
- 本包件即使 ZIP 存在，仍維持 `EXECUTION_FAIL_CLOSED`，直到 owner validators / release guard / required checks 有實跑證據。


## Artifact proof summary

- zip_status: `GENERATED_OBSERVED`
- zip_sha256: `c7add251da77dd739bacded3cf48d53de0c55ebf139e722685b66889f7bf1b82`
- detail_register: `10_ARTIFACT_PROOF_AND_PACKAGING.md`


<!-- END 00_README_DELIVERY_INDEX.md -->


<!-- BEGIN 01_MASTER_SPINE.md -->

# 01_MASTER_SPINE

> Artifact: Derived Crosswalk + Retrieval Router + Source Alignment Contract + Upgrade-Integrated Delivery Routing Spec
> Date: 2026-03-15
> Build revision: r4
> Status: DOCUMENT_PASS / EXECUTION_FAIL_CLOSED
> Legal position: no governance, no legislation, no validator or release adjudication authority
> Replaces: `spine_delivery_20260315_r3/*` as the active bridge/router package

## 目錄

1. [封面卡](#1-封面卡)
2. [文件法律定位與非治理聲明](#2-文件法律定位與非治理聲明)
3. [導讀 / 強制檢索順序 / AI Reader Guide](#3-導讀--強制檢索順序--ai-reader-guide)
4. [唯一合法權威堆疊與衝突裁決規則](#4-唯一合法權威堆疊與衝突裁決規則)
5. [命名體系：外部名稱 / 內部簡稱 / 版本號 / alias registry](#5-命名體系外部名稱--內部簡稱--版本號--alias-registry)
6. [全量輸入來源清單（FOUND / MISSING / UNVERIFIED / EXCLUDED / SUPERSEDED）](#6-全量輸入來源清單found--missing--unverified--excluded--superseded)
7. [四分域冊定義與邊界](#7-四分域冊定義與邊界)
8. [中央工程正文 × 系統需求正文 × 四分域冊 總控母映射](#8-中央工程正文--系統需求正文--四分域冊-總控母映射)
9. [15 子系統總覽與四分域對位](#9-15-子系統總覽與四分域對位)
10. [15 子系統逐一 condensed bridge card](#10-15-子系統逐一-condensed-bridge-card)
11. [owner route-out register](#11-owner-route-out-register)
12. [evidence / citation / locator / anchor contract](#12-evidence--citation--locator--anchor-contract)
13. [anti-hallucination guard](#13-anti-hallucination-guard)
14. [docs-as-code / diataxis / GraphRAG / RAPTOR / CRAG / RAG-Triad 最小落地設計](#14-docs-as-code--diataxis--graphrag--raptor--crag--rag-triad-最小落地設計)
15. [交付路由規則](#15-交付路由規則)
16. [conflict ledger](#16-conflict-ledger)
17. [gap register](#17-gap-register)
18. [TT / CR_OPEN / CONFIGURE_REQUIRED / FAIL_CLOSED register](#18-tt--cr_open--configure_required--fail_closed-register)
19. [packaging manifest](#19-packaging-manifest)
20. [artifact proof note](#20-artifact-proof-note)
21. [release note / supersession note / build note / artifact list](#21-release-note--supersession-note--build-note--artifact-list)

## Quick Index

| key | location |
|---|---|
| Authority stack | 01_MASTER_SPINE.md §4 |
| Input source ledger | 01_MASTER_SPINE.md §6 |
| 15 subsystem overview | 01_MASTER_SPINE.md §9 |
| 15 route packs | 08_SUBSYSTEM_ROUTE_PACKS.md |
| Crosswalk tables | 06_SOURCE_AUTHORITY_CROSSWALK.md |
| Conflicts / gaps / TT | 07_CONFLICT_GAP_TT_REGISTER.md |
| Pipeline-A bridge | 02_BRIDGE_PIPELINE_A.md |
| Pipeline-B bridge | 03_BRIDGE_PIPELINE_B.md |
| Pipeline-C bridge | 04_BRIDGE_PIPELINE_C.md |
| 五子系統 bridge | 05_BRIDGE_SYS5.md |
| Machine blocks / sidecar manifest | 09_MACHINE_BLOCKS_AND_SIDECAR_MANIFEST.md |
| Artifact proof / packaging | 10_ARTIFACT_PROOF_AND_PACKAGING.md |

## 1. 封面卡

- 文件名稱：Spartoi-OMOC Master Spine｜中央工程正文 × 系統需求正文 × 四分域冊 直連映射／橋接／交付路由規格書
- 輸出角色：Derived Crosswalk + Retrieval Router + Source Alignment Contract + Upgrade-Integrated Delivery Routing Spec
- 本次裁決：1 Master Spine + 4 分域冊；以 CA home ownership 切冊，不以來源 bundle 名稱切冊。
- 文件狀態：DOCUMENT_PASS / EXECUTION_FAIL_CLOSED。
- 核心句：本規格書只有映射權、橋接權、路由權、缺件登記權、artifact honest packaging 權；沒有治理權、立法權、驗收放行權。

## 2. 文件法律定位與非治理聲明

### 2.1 這份文件是什麼

- 它是雙主正文（中央工程正文r1、系統需求正文r3）到權威堆疊、四分域冊、審查修補包之間的 crosswalk。
- 它負責映射、橋接、對照、route-out、衝突標示、缺件標示、source pack 導流與 artifact honest packaging。
- 它服務 AI/LLM、人類讀者與後續 owner deliverables，但不取代 owner。
- 它在實質內容上覆蓋並取代 r3 bridge package；日後橋接工作不再需要回看 r3 舊版或 review skeleton 才能完成基礎路由。

### 2.2 這份文件不是什麼

- 不是新的中央工程正文。
- 不是新的系統需求正文。
- 不是新的 SSOT / LBP / Pack owner spec。
- 不是 MC4 / WP.Master / schema / validator / release_guard 正文。
- 不是 Dev/Ops HOW / job card / click path 手冊。
- 不是 release-ready 的偽代理。

### 2.3 非治理聲明

- 不得新增 MUST / SHALL / Gate / Threshold（除非直接引用 owner source，且本檔只做引用不做再立法）。
- 不得重寫 Package B / D / E owner 邏輯。
- 不得把 support-only、data-only、how-to 文檔升格為 normative。
- 不得以 route-out 假裝再立法。
- 不得用 bridge sidecar 冒充 owner schema / validator / release guard engine。

## 3. 導讀 / 強制檢索順序 / AI Reader Guide

### 3.1 強制檢索順序

1. 先讀本檔 §4 權威堆疊。
2. 再讀本檔 §6 輸入來源與 FOUND/MISSING/UNVERIFIED/EXCLUDED/SUPERSEDED 狀態。
3. 若問題屬某一主域，進對應分冊（02~05）。
4. 若問題涉及 15 子系統具體工件、gate、deliverable、fail-closed，進 08_SUBSYSTEM_ROUTE_PACKS.md。
5. 若問題涉及 schema / validator / release guard / MC4 / WP.Master / HOW，立即 route-out，不在本檔內立法。
6. 若需要 sidecar / machine-readable blocks / checks，進 09。
7. 若需要 artifact proof / ZIP truth / sha256，進 10。

### 3.2 AI Reader Guide

- 一律 index-first：先表格，後正文。
- 一律 anchor-first：沒有可定位來源，就不得升格為 exact claim。
- 一律 owner-first：先判斷單一 owner，再決定能否回答。
- 一律 fail-closed：缺 source / 缺 owner / 缺 evidence / 缺 manifest / 缺 validator → 停。
- 先讀 condensed card，再讀 route pack；不要直接從 support-only 材料衝去下結論。

### 3.3 Do / Do-Not-Use Box

| mode | rule |
|---|---|
| DO | 用本檔找 authority、source family、route-out、subsystem home volume |
| DO | 用本檔生成 source pack，交給 owner 文檔消費 |
| DO | 用 09 / sidecar files 提升 machine readability 與 CI 接口穩定性 |
| DO NOT | 直接從本檔複製 normative MC4 / WP / validator 規則 |
| DO NOT | 以本檔內容宣布 release-ready |
| DO NOT | 把 review suggestion 原封不動當新治理條文 |

## 4. 唯一合法權威堆疊與衝突裁決規則

### 4.1 權威序位（本回合固定）

1. Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文r1
2. Spartoi-OMOC_系統需求正文r3
3. Spartoi-OMOC_SSOT_合冊
4. Spartoi-OMOC_LBP_合冊
5. Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊
6. Spartoi-OMOC_SubP1-LITE+MVP_合冊
7. OMOC_合冊
8. 參考方案合冊

### 4.2 裁決硬規則

- Higher Authority Wins
- More concrete, machine-auditable clause wins within same tier
- Owner schema wins over consumer rewrite
- Route-out is routing, not re-legislation
- No-Source-No-Norm
- No-Anchor-No-Claim
- One-Rule-One-Place
- Declaration-Is-Not-Implementation
- Artifact Claim Requires Artifact Proof
- Fail-Closed by default

### 4.3 特別補充

- Ops RUNBOOK_合冊只作 HOW / 落地 / route-out 輔助，不得推翻上述 1~8。
- 參考方案合冊只能被吸收為 design intent / support / archived reference，不得越級成憲法。
- Mini-P1 系列本次明確排除，不納入 operative source。
- review package 是 remediation checklist，不是新正文。

## 5. 命名體系：外部名稱 / 內部簡稱 / 版本號 / alias registry

### 5.1 命名原則

- 對 15 子系統一律使用 stable_id（CA-*）作工程主鍵。
- 對合冊內部文檔一律使用 FQ_DOC_ID = CMP-xx/DOC-xxxx。
- 對四分域冊與 support docs，允許 bridge-local FQ_DOC_ID（DOM-A/B/C/SYS5/SUP）。
- display_name / macro_module_name 可供讀者與 UI 使用，但不得取代 stable_id。
- bridge_id 格式：`BRG-<domain>-<stable_id>`。

### 5.2 Alias Registry

| requested | canonical | note |
|---|---|---|
| Master Spine | 01_MASTER_SPINE.md | top-level master volume |
| old r3 spine package | spine_delivery_20260315_r3/* | superseded baseline only |
| review monolith | Spartoi-OMOC_Master_Spine_Review_Full_Monolith.md | review-only input |
| 2022 ICT | 2022 ICT Mentorship 技術指南合冊_v2.md | support-only / data-only |
| 多模態多向量圖像檢索技術指南_筆記 | 多模態多向量圖像檢索技術指南_筆記.txt | extension normalization |

## 6. 全量輸入來源清單（FOUND / MISSING / UNVERIFIED / EXCLUDED / SUPERSEDED）

### 6.1 FOUND

| source_name | role |
|---|---|
| Master_Spine_藍圖_升級版_v2026.03.15-r2.md | BASELINE_DESIGN |
| 橋接索引規格書_藍圖筆記-1.md | DESIGN_RECORD |
| 橋接索引規格書_藍圖筆記-2.md | DESIGN_RECORD |
| 橋接索引規格書_藍圖筆記-3.md | DESIGN_RECORD |
| 橋接索引規格書_藍圖筆記-4.md | DESIGN_RECORD |
| Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文r1.md | PRIMARY_NORM |
| Spartoi-OMOC_系統需求正文r3.md | PRIMARY_NORM |
| Spartoi-OMOC_SSOT_合冊.md | NORMATIVE_ROOT |
| Spartoi-OMOC_LBP_合冊.md | NORMATIVE_ROOT |
| Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊.md | NORMATIVE_ROOT |
| Spartoi-OMOC_SubP1-LITE+MVP_合冊.md | NORMATIVE_ROOT |
| OMOC_合冊.md | NORMATIVE_ROOT |
| 參考方案合冊.md | LOW_TIER_REFERENCE |
| Ops RUNBOOK_合冊.md | ROUTE_OUT_ONLY |
| SEM³資料參考_合冊.md | SUPPORT_ONLY |
| Pipeline-A設計資料參考_合冊.md | PRIMARY_BRIDGE_A |
| Pipeline-A實作資料參考_合冊.md | PRIMARY_BRIDGE_A_IMPL |
| 台股實戰映射_合冊.md | SUPPORT_ONLY |
| 多模態多向量圖像檢索技術指南_筆記.txt | SUPPORT_ONLY |
| Pipeline-B資料參考_合冊.md | PRIMARY_BRIDGE_B |
| Pipeline-B&C資料參考_合冊.md | BORROWED_BRIDGE_BC |
| 台股歷史資料庫實作參考_合冊.md | SUPPORT_ONLY/DATA_SUBSTRATE |
| Pipeline-C資料參考_合冊.md | PRIMARY_BRIDGE_C |
| CA-TRANSLATE資料參考_合冊A.md | SUPPORT_BRIDGE_C |
| CA-TRANSLATE資料參考_合冊B.md | PRIMARY_BRIDGE_C/BORROWED_TO_SYS5 |
| 2022 ICT Mentorship 技術指南合冊_v2.md | SUPPORT_ONLY/DATA_ONLY |
| Spartoi-OMOC_Master_Spine_Review_Full_Monolith.md | REVIEW_INPUT |
| 00_README_REVIEW_INDEX.md | REVIEW_INPUT |
| 01_EXECUTIVE_VERDICT.md | REVIEW_INPUT |
| 02_SCOPE_AUTHORITY_BOUNDARY_AUDIT.md | REVIEW_INPUT |
| 03_BLUEPRINT_ALIGNMENT_AUDIT.md | REVIEW_INPUT |
| 04_DOMAIN_SUBSYSTEM_COVERAGE_AUDIT.md | REVIEW_INPUT |
| 05_STRUCTURE_LOGIC_ENGINEERING_AUDIT.md | REVIEW_INPUT |
| 06_RISK_DRIFT_DESTRUCTIVE_AUDIT.md | REVIEW_INPUT |
| 07_PATCH_SKELETONS.md | REVIEW_INPUT |
| 08_FAILCLOSED_EVIDENCE_REGISTERS.md | REVIEW_INPUT |

### 6.2 MISSING

- 無（依 active bridge scope 與本回合附件 / 專案工作區可用集合）。

### 6.3 UNVERIFIED

- Pack A-E ledger transitive compendia: CMP-06 / CMP-07 / CMP-08（未作 direct input，不得做 exact clause claim）
- 任何僅以 Doc TOC / Doc Map 作 locator 而未給 doc_anchor / section_anchor 的 exact clause 主張
- owner validators / release guard / required checks 未實跑，故 release-ready 仍不得宣稱
- threshold register / parity profile / capability profile 最終數值與 owner schema 未由 Package B/E 授權落盤

### 6.4 EXCLUDED

- 多代理設置相關筆記合冊.md — EXCLUDED_BY_USER_DECISION（special channel）
- skills和智能文件相關筆記合冊.md — EXCLUDED_BY_USER_DECISION（special channel）
- OpenClaw_工程技術指南_合冊.md — EXCLUDED_BY_USER_DECISION（special channel）

### 6.5 SUPERSEDED

- spine_delivery_20260315_r3/00_README_DELIVERY_INDEX.md
- spine_delivery_20260315_r3/01_MASTER_SPINE.md
- spine_delivery_20260315_r3/02_BRIDGE_PIPELINE_A.md
- spine_delivery_20260315_r3/03_BRIDGE_PIPELINE_B.md
- spine_delivery_20260315_r3/04_BRIDGE_PIPELINE_C.md
- spine_delivery_20260315_r3/05_BRIDGE_SYS5.md
- spine_delivery_20260315_r3/06_SOURCE_AUTHORITY_CROSSWALK.md
- spine_delivery_20260315_r3/07_CONFLICT_GAP_TT_REGISTER.md
- spine_delivery_20260315_r3/08_SUBSYSTEM_ROUTE_PACKS.md
- spine_delivery_20260315_r3/Spartoi-OMOC_Master_Spine_Full_Monolith.md
- spine_delivery_20260315_r3/Spartoi-OMOC_Master_Spine_Package.zip

## 7. 四分域冊定義與邊界

| domain | owned_subsystems | scope_lock | must_not_become |
|---|---|---|---|
| Pipeline-A | CA-WRC, CA-CORPUS, CA-DISTILL, CA-DSL | 知識入口 / 語料 / 蒸餾 / 中立 DSL formalization | 方法 owner / schema owner / HOW constitution |
| Pipeline-B | CA-METHOD, CA-BACKTEST, CA-PERFORM | 方法制定 / 回測衛生 / 績效與改善提案 | 實盤執行 / release guard / broker endpoint |
| Pipeline-C | CA-TA, CA-SELECT, CA-TRANSLATE | 分析包 / 選股 / XS 轉譯與 parity | WATCH/EXECUTE local engine / order endpoint |
| 五子系統 | CA-WATCH, CA-EXECUTE, CA-COLLAB, CA-UI, CA-GOVERN | runtime observation / HITL handoff / collab / entry / governance thin layer | 第二主幹 / 第二治理引擎 / 第二下單端 |

## 8. 中央工程正文 × 系統需求正文 × 四分域冊 總控母映射

| central_clause | sr_clause | domain | affected_subsystems | owner | disposition | evidence_ptr |
|---|---|---|---|---|---|---|
| GCERM §3 / §4 / §5 | SR §1~§3 | ALL | ALL | Central + SR | bridge only, not new law | central intro / SR intro / authority stack |
| GCERM §5 | SR §6 | ALL | ALL | SR for toolchain ruling | ACTIVE_PRIMARY=Local VS + Docker/DevContainer + GitHub repo; Codespaces fallback only; execution slot/provider slot separated | GCERM toolchain + SR §6.1~§6.2 |
| GCERM §7 / §12 / §13 | SR §8 / §9 | ALL | 15 subsystems | Central / SR | stable_id / macro / role / deliverable / gate / fail-closed extracted into route packs | GCERM 15CA tables + SR subsystem sections |
| GCERM §9.2 | SR §10.1 | Pipeline-A | CA-WRC, CA-CORPUS, CA-DISTILL, CA-DSL | Pipeline-A home volume | PRIMARY_BRIDGE_A + impl + support corpora + 2022 ICT support-only | Pipeline-A設計 / 實作 + SEM³ + 台股實戰映射 + 2022 ICT |
| GCERM §9.3 | SR §10.2 | Pipeline-B | CA-METHOD, CA-BACKTEST, CA-PERFORM | Pipeline-B home volume | Pipeline-B主橋接 + B&C borrowed bridge + DOM-B/DOC-0006 precedence row | Pipeline-B main doc + DOM-B/DOC-0006 + 2022 ICT |
| GCERM §9.4 | SR §10.3 | Pipeline-C | CA-TA, CA-SELECT, CA-TRANSLATE | Pipeline-C home volume | Pipeline-C merged + CA-TRANSLATE B preferred + A support + 2022 ICT support-only | Pipeline-C main doc + DOM-C/DOC-0002 + 2022 ICT |
| GCERM §9.5 | SR §10.4 | 五子系統 | CA-WATCH, CA-EXECUTE, CA-COLLAB, CA-UI, CA-GOVERN | 五子系統 home volume | Ops route-out + CA-TRANSLATE B borrowed bridge + special-channel exclusions honored | Ops RUNBOOK + DOM-SYS5/DOC-0002 + exclusion boundary |
| GCERM §8 / §9.6 | SR §7 / §10.5 | ALL | Data backbone consumers | Central data backbone | ReferenceDB + RunLedger central; Pipeline C / Sys5 consume only | GCERM §8.2 / §9.6 + SR §7 |

## 9. 15 子系統總覽與四分域對位

### 9.1 15 Subsystems × 4 Domains Matrix

| subsystem | pipeline_a | pipeline_b | pipeline_c | sys5 | owner | notes |
|---|---|---|---|---|---|---|
| CA-WRC | HOME | — | — | — | Pipeline-A | 系統知識進場的白名單蒐集、來源分級與 provenance 固化 owner。 |
| CA-CORPUS | HOME | — | — | — | Pipeline-A | 可追溯語料快照與混合檢索政策的正式 owner。 |
| CA-DISTILL | HOME | — | — | — | Pipeline-A | 把語料收斂為可回指 claim / evidence / distill bundle 的正式 owner。 |
| CA-DSL | HOME | — | — | — | Pipeline-A | 市場中立、平台中立原語與 DSL formalization 的正式 owner。 |
| CA-METHOD | USE | HOME | — | — | Pipeline-B | 把 primitive/evidence 收斂為可回測、可轉譯、可審查方法包的正式 owner。 |
| CA-BACKTEST | — | HOME | — | — | Pipeline-B | MethodCard 的回測、衛生與可重播性驗證 owner。 |
| CA-TA | — | USE | HOME | — | Pipeline-C | 由 MethodCard 與市場資料生成 AnalysisPack / StoryCard 的正式 owner。 |
| CA-SELECT | — | USE | HOME | — | Pipeline-C | 把分析結果與成本/流動性約束轉成候選清單與理由的正式 owner。 |
| CA-TRANSLATE | — | USE | HOME | — | Pipeline-C | 中立 DSL 到 XS 的唯一轉譯與 parity/capability profile owner。 |
| CA-WATCH | — | — | USE | HOME | 五子系統 | 盤中 radar-only 觀測與事件記錄 owner，不是下單端。 |
| CA-EXECUTE | — | — | USE | HOME | 五子系統 | XQ 落地前 HITL handoff / approval trace owner，不是本地下單器。 |
| CA-PERFORM | — | HOME | — | — | Pipeline-B | 全鏈路事後績效與 uplift proposal owner，但不得改寫方法 owner。 |
| CA-COLLAB | USE | USE | USE | HOME | 五子系統 | 多 AI/LLM 協作 bundle、session log、slot/provider traceability owner。 |
| CA-UI | USE | USE | USE | HOME | 五子系統 | 全部子系統的受控單一入口與 evidence 可視化 owner。 |
| CA-GOVERN | USE | USE | USE | HOME | 五子系統 | 最小治理、索引、收納與降級決策落盤 owner，不是第二治理引擎。 |

### 9.2 15 子系統總索引矩陣

| stable_id | display_name | macro_module_name | domain | one_line | canonical_deliverable | primary_gate | threshold_ref |
|---|---|---|---|---|---|---|---|
| CA-WRC | 白名單廣域蒐集 | K.Knowledge-Ingest | Pipeline-A | 系統知識進場的白名單蒐集、來源分級與 provenance 固化 owner。 | ``source_registry.json`, `source_tiering_manifest.json`, `provenance_log.ndjson`, `usage_limit_policy.yaml`, `quarantine_register.jsonl`` | 角色=教材入口；最低輸入=source\_list, provenance；最低輸出=`input_manifest.json`；主 Gate=`G-SRC[wrc-ingest-profile]`。 | route-out / fail-closed as applicable |
| CA-CORPUS | 教材庫\&RAG | K.Knowledge-Ingest | Pipeline-A | 可追溯語料快照與混合檢索政策的正式 owner。 | ``corpus_snapshot_manifest.json`, `corpus_index/` 或 owner-approved 等價索引, `anchor_chunk_map.tsv`, `retrieval_mode_policy.yaml`, `corpus_quarantine_register.jsonl`` | 角色=語料儲存、索引與可檢索；最低輸入=input\_manifest, source files；最低輸出=`corpus_snapshot.json`；主 Gate=`G-SRC + G-SCHEMA`。 | route-out / fail-closed as applicable |
| CA-DISTILL | 蒸餾 | K.Knowledge-Ingest | Pipeline-A | 把語料收斂為可回指 claim / evidence / distill bundle 的正式 owner。 | ``claim_registry.json`, `evidence_chain.jsonl`, `semantic_report.md` 或 machine-readable 等價格式, `alignment_matrix.tsv`, `reader_quadrants.md` 或 bundle 等價格式` | 角色=蒸餾與語意還原；最低輸入=corpus\_snapshot, source docs；最低輸出=`distill_bundle.json`；主 Gate=`G-SEG-L`。 | route-out / fail-closed as applicable |
| CA-DSL | 偽代碼原語庫/中立DSL | S.Strategy-Formalize | Pipeline-A | 市場中立、平台中立原語與 DSL formalization 的正式 owner。 | `Primitive library, DSL schema, EvidenceCard, Function spec / pseudo spec, `evidence_rule_map.tsv`` | 角色=中立原語 formalize；最低輸入=baseline inputs, distill outputs；最低輸出=`dsl_schema.json`；主 Gate=`G-SCHEMA`。 | route-out / fail-closed as applicable |
| CA-METHOD | 方法制定 | S.Strategy-Formalize | Pipeline-B | 把 primitive/evidence 收斂為可回測、可轉譯、可審查方法包的正式 owner。 | ``MethodCard.md/json`, `MethodSpec.json` 或 owner-approved 等價格式, `MethodPack/`, `primitive_coverage_map.tsv`, `scenario_binding.json`` | 角色=方法定案；最低輸入=distill, dsl, three-source refs；最低輸出=`method_card.md + primitive_spec.json`；主 Gate=`G-SRC[method-source-profile]`。 | route-out / fail-closed as applicable |
| CA-BACKTEST | 回測 | B.Backtest-Learn | Pipeline-B | MethodCard 的回測、衛生與可重播性驗證 owner。 | ``BacktestPack/`, `backtest_report.json`, `repro_manifest.json`, `slice_manifest.json`, `hygiene_report.json`` | 角色=回測與衛生驗證；最低輸入=method\_card, historical\_db；最低輸出=`backtest_report.json`；主 Gate=`G-BT-H`。 | route-out / fail-closed as applicable |
| CA-TA | 技術分析 | F.Signal-Analysis | Pipeline-C | 由 MethodCard 與市場資料生成 AnalysisPack / StoryCard 的正式 owner。 | `AnalysisPack, StoryCard, RiskCard, feature evidence bundle` | 角色=分析包與故事卡；最低輸入=method\_card, K-line data；最低輸出=`ta_pack.json + story_cards/`；主 Gate=`G-CONF-L[ta-profile]`。 | route-out / fail-closed as applicable |
| CA-SELECT | 選股 | F.Signal-Analysis | Pipeline-C | 把分析結果與成本/流動性約束轉成候選清單與理由的正式 owner。 | `TopK list, ranking evidence, confidence report` | 角色=候選清單形成；最低輸入=ta\_pack, WL/BL；最低輸出=`watchlist.csv + selection_rationale.md`；主 Gate=`G-CONF-L[select-profile]`。 | route-out / fail-closed as applicable |
| CA-TRANSLATE | XS轉譯 | O.Operate-XQ | Pipeline-C | 中立 DSL 到 XS 的唯一轉譯與 parity/capability profile owner。 | `XSPack, parity report, capability profile, field mapping matrix` | 角色=XS 腳本與 parity；最低輸入=technical pack, S1/S2 list；最低輸出=`xs_script.txt + xs_script_pack.json`；主 Gate=`G-XQ-PARITY`。 | route-out / fail-closed as applicable |
| CA-WATCH | 盯盤 | O.Operate-XQ | 五子系統 | 盤中 radar-only 觀測與事件記錄 owner，不是下單端。 | `watch logs, signal packet, handoff signal, route_mode-marked monitoring output` | 角色=僅觀測，不下單；最低輸入=xs\_watchlist；最低輸出=`watch_events.ndjson`；主 Gate=`G-HITL-LOG[watch-profile]`。 | route-out / fail-closed as applicable |
| CA-EXECUTE | 操盤/HITL交接 | O.Operate-XQ | 五子系統 | XQ 落地前 HITL handoff / approval trace owner，不是本地下單器。 | `approval_log.json, execute handoff pack, safety / kill-switch events, event ledger refs` | 角色=HITL handoff，不 unattended；最低輸入=xs alerts, story cards；最低輸出=`hitl_handoff.json`；主 Gate=`G-HITL-LOG[execute-profile]`。 | route-out / fail-closed as applicable |
| CA-PERFORM | 績效分析 | B.Backtest-Learn | Pipeline-B | 全鏈路事後績效與 uplift proposal owner，但不得改寫方法 owner。 | ``FeedbackPack/`, `top3_proposals.json`, `performance_report.md`, `parity_or_missing_inputs_statement.json`, `retest_linkage.json`` | 角色=績效分析與 uplift proposal；最低輸入=watch/execute/performance files；最低輸出=`perf_report.json + upgrade_proposal.md`；主 Gate=`G-CONF-L[perform-uplift-profile] + G-BT-H[retest-profile]`。 | route-out / fail-closed as applicable |
| CA-COLLAB | 多AI協作 | G.Govern-UI-Collab | 五子系統 | 多 AI/LLM 協作 bundle、session log、slot/provider traceability owner。 | ``CollabBundle.zip`, `collab_session_*.json`, `review_matrix.tsv`, `integration_notes.md`, `slot_usage_manifest.json`` | 角色=bundle 交接與 session log；最低輸入=export/import packs；最低輸出=`export_bundle.zip + collab_session_*.json`；主 Gate=`G-SRC + G-SCHEMA`。 | route-out / fail-closed as applicable |
| CA-UI | 受控單一入口 | G.Govern-UI-Collab | 五子系統 | 全部子系統的受控單一入口與 evidence 可視化 owner。 | ``UIProfilePack/`, `ui_profile_manifest.json`, `ui_smoke_record.json`, `visible_evidence_state.json`, `backpaste_verification_log.json`（若啟用桌面 / Windows profile）` | 角色=受控單一入口、一鍵閉環、evidence 可視化；最低輸入=user action / run config；最低輸出=`ui_app_ready + e2e_smoke.json`；主 Gate=`G-RUN[ui-profile]`。 | route-out / fail-closed as applicable |
| CA-GOVERN | 治理/索引/收納 | G.Govern-UI-Collab | 五子系統 | 最小治理、索引、收納與降級決策落盤 owner，不是第二治理引擎。 | `GovPack, manifest.json, gate_report.json, evidence_index.json, run ledger rows` | 角色=最小治理、索引、版本、證據收納；最低輸入=all run artifacts；最低輸出=`version_manifest.json + gov_evidence_pack.zip + ssot_index.json`；主 Gate=`G-RUN[govern-packaging-profile] + G-SCHEMA[govern-manifest-profile]`。 | route-out / fail-closed as applicable |

## 10. 15 子系統逐一 condensed bridge card

以下卡片為本檔的濃縮版；完整 route pack 見 08_SUBSYSTEM_ROUTE_PACKS.md。

### 10.1 CA-WRC — 白名單廣域蒐集

- `bridge_id`: BRG-PA-CA-WRC
- `home_volume`: Pipeline-A
- `macro_module_name`: K.Knowledge-Ingest
- `central_anchor`: GCERM-V220R1-13-CA-WRC
- `central_role`: 角色=教材入口；最低輸入=source\_list, provenance；最低輸出=`input_manifest.json`；主 Gate=`G-SRC[wrc-ingest-profile]`。
- `system_positioning`: 系統知識進場的白名單蒐集、來源分級與 provenance 固化 owner。
- `canonical_deliverable`: ``source_registry.json`, `source_tiering_manifest.json`, `provenance_log.ndjson`, `usage_limit_policy.yaml`, `quarantine_register.jsonl``
- `route_out_owner`: Package E（MC4/WP / validator / release guard）; Package B（schema / manifest / evidence schema）; Ops/Dev HOW owners（流程）
- `must_not_claim`: `將 support-only / data-only 文檔升格為 normative; 把 Ops RUNBOOK 或 HOW 寫成制度 owner; 把 bridge layer 當 MC4 / WP / schema owner`

### 10.2 CA-CORPUS — 教材庫\&RAG

- `bridge_id`: BRG-PA-CA-CORPUS
- `home_volume`: Pipeline-A
- `macro_module_name`: K.Knowledge-Ingest
- `central_anchor`: GCERM-V220R1-13-CA-CORPUS
- `central_role`: 角色=語料儲存、索引與可檢索；最低輸入=input\_manifest, source files；最低輸出=`corpus_snapshot.json`；主 Gate=`G-SRC + G-SCHEMA`。
- `system_positioning`: 可追溯語料快照與混合檢索政策的正式 owner。
- `canonical_deliverable`: ``corpus_snapshot_manifest.json`, `corpus_index/` 或 owner-approved 等價索引, `anchor_chunk_map.tsv`, `retrieval_mode_policy.yaml`, `corpus_quarantine_register.jsonl``
- `route_out_owner`: Package E（MC4/WP / validator / release guard）; Package B（schema / manifest / evidence schema）; Ops/Dev HOW owners（流程）
- `must_not_claim`: `將 support-only / data-only 文檔升格為 normative; 把 Ops RUNBOOK 或 HOW 寫成制度 owner; 把 bridge layer 當 MC4 / WP / schema owner`

### 10.3 CA-DISTILL — 蒸餾

- `bridge_id`: BRG-PA-CA-DISTILL
- `home_volume`: Pipeline-A
- `macro_module_name`: K.Knowledge-Ingest
- `central_anchor`: GCERM-V220R1-13-CA-DISTILL
- `central_role`: 角色=蒸餾與語意還原；最低輸入=corpus\_snapshot, source docs；最低輸出=`distill_bundle.json`；主 Gate=`G-SEG-L`。
- `system_positioning`: 把語料收斂為可回指 claim / evidence / distill bundle 的正式 owner。
- `canonical_deliverable`: ``claim_registry.json`, `evidence_chain.jsonl`, `semantic_report.md` 或 machine-readable 等價格式, `alignment_matrix.tsv`, `reader_quadrants.md` 或 bundle 等價格式`
- `route_out_owner`: Package E（MC4/WP / validator / release guard）; Package B（schema / manifest / evidence schema）; Ops/Dev HOW owners（流程）
- `must_not_claim`: `將 support-only / data-only 文檔升格為 normative; 把 Ops RUNBOOK 或 HOW 寫成制度 owner; 把 bridge layer 當 MC4 / WP / schema owner`

### 10.4 CA-DSL — 偽代碼原語庫/中立DSL

- `bridge_id`: BRG-PA-CA-DSL
- `home_volume`: Pipeline-A
- `macro_module_name`: S.Strategy-Formalize
- `central_anchor`: GCERM-V220R1-13-CA-DSL
- `central_role`: 角色=中立原語 formalize；最低輸入=baseline inputs, distill outputs；最低輸出=`dsl_schema.json`；主 Gate=`G-SCHEMA`。
- `system_positioning`: 市場中立、平台中立原語與 DSL formalization 的正式 owner。
- `canonical_deliverable`: `Primitive library, DSL schema, EvidenceCard, Function spec / pseudo spec, `evidence_rule_map.tsv``
- `route_out_owner`: Package E（MC4/WP / validator / release guard）; Package B（schema / manifest / evidence schema）; Ops/Dev HOW owners（流程）
- `must_not_claim`: `將 support-only / data-only 文檔升格為 normative; 把 Ops RUNBOOK 或 HOW 寫成制度 owner; 把 bridge layer 當 MC4 / WP / schema owner`

### 10.5 CA-METHOD — 方法制定

- `bridge_id`: BRG-PB-CA-METHOD
- `home_volume`: Pipeline-B
- `macro_module_name`: S.Strategy-Formalize
- `central_anchor`: GCERM-V220R1-13-CA-METHOD
- `central_role`: 角色=方法定案；最低輸入=distill, dsl, three-source refs；最低輸出=`method_card.md + primitive_spec.json`；主 Gate=`G-SRC[method-source-profile]`。
- `system_positioning`: 把 primitive/evidence 收斂為可回測、可轉譯、可審查方法包的正式 owner。
- `canonical_deliverable`: ``MethodCard.md/json`, `MethodSpec.json` 或 owner-approved 等價格式, `MethodPack/`, `primitive_coverage_map.tsv`, `scenario_binding.json``
- `route_out_owner`: Package E（MC4/WP / validator / release guard）; Package B（schema / manifest / evidence schema）; Ops/Dev HOW owners（流程）
- `must_not_claim`: `將 support-only / data-only 文檔升格為 normative; 把 Ops RUNBOOK 或 HOW 寫成制度 owner; 把 bridge layer 當 MC4 / WP / schema owner`

### 10.6 CA-BACKTEST — 回測

- `bridge_id`: BRG-PB-CA-BACKTEST
- `home_volume`: Pipeline-B
- `macro_module_name`: B.Backtest-Learn
- `central_anchor`: GCERM-V220R1-13-CA-BACKTEST
- `central_role`: 角色=回測與衛生驗證；最低輸入=method\_card, historical\_db；最低輸出=`backtest_report.json`；主 Gate=`G-BT-H`。
- `system_positioning`: MethodCard 的回測、衛生與可重播性驗證 owner。
- `canonical_deliverable`: ``BacktestPack/`, `backtest_report.json`, `repro_manifest.json`, `slice_manifest.json`, `hygiene_report.json``
- `route_out_owner`: Package E（MC4/WP / validator / release guard）; Package B（schema / manifest / evidence schema）; Ops/Dev HOW owners（流程）
- `must_not_claim`: `將 support-only / data-only 文檔升格為 normative; 把 Ops RUNBOOK 或 HOW 寫成制度 owner; 把 bridge layer 當 MC4 / WP / schema owner`

### 10.7 CA-TA — 技術分析

- `bridge_id`: BRG-PC-CA-TA
- `home_volume`: Pipeline-C
- `macro_module_name`: F.Signal-Analysis
- `central_anchor`: GCERM-V220R1-13-CA-TA
- `central_role`: 角色=分析包與故事卡；最低輸入=method\_card, K-line data；最低輸出=`ta_pack.json + story_cards/`；主 Gate=`G-CONF-L[ta-profile]`。
- `system_positioning`: 由 MethodCard 與市場資料生成 AnalysisPack / StoryCard 的正式 owner。
- `canonical_deliverable`: `AnalysisPack, StoryCard, RiskCard, feature evidence bundle`
- `route_out_owner`: Package E（MC4/WP / validator / release guard）; Package B（schema / manifest / evidence schema）; Ops/Dev HOW owners（流程）
- `must_not_claim`: `將 support-only / data-only 文檔升格為 normative; 把 Ops RUNBOOK 或 HOW 寫成制度 owner; 把 bridge layer 當 MC4 / WP / schema owner`

### 10.8 CA-SELECT — 選股

- `bridge_id`: BRG-PC-CA-SELECT
- `home_volume`: Pipeline-C
- `macro_module_name`: F.Signal-Analysis
- `central_anchor`: GCERM-V220R1-13-CA-SELECT
- `central_role`: 角色=候選清單形成；最低輸入=ta\_pack, WL/BL；最低輸出=`watchlist.csv + selection_rationale.md`；主 Gate=`G-CONF-L[select-profile]`。
- `system_positioning`: 把分析結果與成本/流動性約束轉成候選清單與理由的正式 owner。
- `canonical_deliverable`: `TopK list, ranking evidence, confidence report`
- `route_out_owner`: Package E（MC4/WP / validator / release guard）; Package B（schema / manifest / evidence schema）; Ops/Dev HOW owners（流程）
- `must_not_claim`: `將 support-only / data-only 文檔升格為 normative; 把 Ops RUNBOOK 或 HOW 寫成制度 owner; 把 bridge layer 當 MC4 / WP / schema owner`

### 10.9 CA-TRANSLATE — XS轉譯

- `bridge_id`: BRG-PC-CA-TRANSLATE
- `home_volume`: Pipeline-C
- `macro_module_name`: O.Operate-XQ
- `central_anchor`: GCERM-V220R1-13-CA-TRANSLATE
- `central_role`: 角色=XS 腳本與 parity；最低輸入=technical pack, S1/S2 list；最低輸出=`xs_script.txt + xs_script_pack.json`；主 Gate=`G-XQ-PARITY`。
- `system_positioning`: 中立 DSL 到 XS 的唯一轉譯與 parity/capability profile owner。
- `canonical_deliverable`: `XSPack, parity report, capability profile, field mapping matrix`
- `route_out_owner`: Package E（MC4/WP / validator / release guard）; Package B（schema / manifest / evidence schema）; Ops/Dev HOW owners（流程）
- `must_not_claim`: `將 support-only / data-only 文檔升格為 normative; 把 Ops RUNBOOK 或 HOW 寫成制度 owner; 把 bridge layer 當 MC4 / WP / schema owner`

### 10.10 CA-WATCH — 盯盤

- `bridge_id`: BRG-SYS5-CA-WATCH
- `home_volume`: 五子系統
- `macro_module_name`: O.Operate-XQ
- `central_anchor`: GCERM-V220R1-13-CA-WATCH
- `central_role`: 角色=僅觀測，不下單；最低輸入=xs\_watchlist；最低輸出=`watch_events.ndjson`；主 Gate=`G-HITL-LOG[watch-profile]`。
- `system_positioning`: 盤中 radar-only 觀測與事件記錄 owner，不是下單端。
- `canonical_deliverable`: `watch logs, signal packet, handoff signal, route_mode-marked monitoring output`
- `route_out_owner`: Package E（MC4/WP / validator / release guard）; Package B（schema / manifest / evidence schema）; Ops/Dev HOW owners（流程）
- `must_not_claim`: `將 support-only / data-only 文檔升格為 normative; 把 Ops RUNBOOK 或 HOW 寫成制度 owner; 把 bridge layer 當 MC4 / WP / schema owner; 把本子系統寫成第二下單端或本地 execution engine`

### 10.11 CA-EXECUTE — 操盤/HITL交接

- `bridge_id`: BRG-SYS5-CA-EXECUTE
- `home_volume`: 五子系統
- `macro_module_name`: O.Operate-XQ
- `central_anchor`: GCERM-V220R1-13-CA-EXECUTE
- `central_role`: 角色=HITL handoff，不 unattended；最低輸入=xs alerts, story cards；最低輸出=`hitl_handoff.json`；主 Gate=`G-HITL-LOG[execute-profile]`。
- `system_positioning`: XQ 落地前 HITL handoff / approval trace owner，不是本地下單器。
- `canonical_deliverable`: `approval_log.json, execute handoff pack, safety / kill-switch events, event ledger refs`
- `route_out_owner`: Package E（MC4/WP / validator / release guard）; Package B（schema / manifest / evidence schema）; Ops/Dev HOW owners（流程）
- `must_not_claim`: `將 support-only / data-only 文檔升格為 normative; 把 Ops RUNBOOK 或 HOW 寫成制度 owner; 把 bridge layer 當 MC4 / WP / schema owner; 把本子系統寫成第二下單端或本地 execution engine`

### 10.12 CA-PERFORM — 績效分析

- `bridge_id`: BRG-PB-CA-PERFORM
- `home_volume`: Pipeline-B
- `macro_module_name`: B.Backtest-Learn
- `central_anchor`: GCERM-V220R1-13-CA-PERFORM
- `central_role`: 角色=績效分析與 uplift proposal；最低輸入=watch/execute/performance files；最低輸出=`perf_report.json + upgrade_proposal.md`；主 Gate=`G-CONF-L[perform-uplift-profile] + G-BT-H[retest-profile]`。
- `system_positioning`: 全鏈路事後績效與 uplift proposal owner，但不得改寫方法 owner。
- `canonical_deliverable`: ``FeedbackPack/`, `top3_proposals.json`, `performance_report.md`, `parity_or_missing_inputs_statement.json`, `retest_linkage.json``
- `route_out_owner`: Package E（MC4/WP / validator / release guard）; Package B（schema / manifest / evidence schema）; Ops/Dev HOW owners（流程）
- `must_not_claim`: `將 support-only / data-only 文檔升格為 normative; 把 Ops RUNBOOK 或 HOW 寫成制度 owner; 把 bridge layer 當 MC4 / WP / schema owner; 讓 PERFORM 直接改定 MethodCard`

### 10.13 CA-COLLAB — 多AI協作

- `bridge_id`: BRG-SYS5-CA-COLLAB
- `home_volume`: 五子系統
- `macro_module_name`: G.Govern-UI-Collab
- `central_anchor`: GCERM-V220R1-13-CA-COLLAB
- `central_role`: 角色=bundle 交接與 session log；最低輸入=export/import packs；最低輸出=`export_bundle.zip + collab_session_*.json`；主 Gate=`G-SRC + G-SCHEMA`。
- `system_positioning`: 多 AI/LLM 協作 bundle、session log、slot/provider traceability owner。
- `canonical_deliverable`: ``CollabBundle.zip`, `collab_session_*.json`, `review_matrix.tsv`, `integration_notes.md`, `slot_usage_manifest.json``
- `route_out_owner`: Package E（MC4/WP / validator / release guard）; Package B（schema / manifest / evidence schema）; Ops/Dev HOW owners（流程）
- `must_not_claim`: `將 support-only / data-only 文檔升格為 normative; 把 Ops RUNBOOK 或 HOW 寫成制度 owner; 把 bridge layer 當 MC4 / WP / schema owner`

### 10.14 CA-UI — 受控單一入口

- `bridge_id`: BRG-SYS5-CA-UI
- `home_volume`: 五子系統
- `macro_module_name`: G.Govern-UI-Collab
- `central_anchor`: GCERM-V220R1-13-CA-UI
- `central_role`: 角色=受控單一入口、一鍵閉環、evidence 可視化；最低輸入=user action / run config；最低輸出=`ui_app_ready + e2e_smoke.json`；主 Gate=`G-RUN[ui-profile]`。
- `system_positioning`: 全部子系統的受控單一入口與 evidence 可視化 owner。
- `canonical_deliverable`: ``UIProfilePack/`, `ui_profile_manifest.json`, `ui_smoke_record.json`, `visible_evidence_state.json`, `backpaste_verification_log.json`（若啟用桌面 / Windows profile）`
- `route_out_owner`: Package E（MC4/WP / validator / release guard）; Package B（schema / manifest / evidence schema）; Ops/Dev HOW owners（流程）
- `must_not_claim`: `將 support-only / data-only 文檔升格為 normative; 把 Ops RUNBOOK 或 HOW 寫成制度 owner; 把 bridge layer 當 MC4 / WP / schema owner`

### 10.15 CA-GOVERN — 治理/索引/收納

- `bridge_id`: BRG-SYS5-CA-GOVERN
- `home_volume`: 五子系統
- `macro_module_name`: G.Govern-UI-Collab
- `central_anchor`: GCERM-V220R1-13-CA-GOVERN
- `central_role`: 角色=最小治理、索引、版本、證據收納；最低輸入=all run artifacts；最低輸出=`version_manifest.json + gov_evidence_pack.zip + ssot_index.json`；主 Gate=`G-RUN[govern-packaging-profile] + G-SCHEMA[govern-manifest-profile]`。
- `system_positioning`: 最小治理、索引、收納與降級決策落盤 owner，不是第二治理引擎。
- `canonical_deliverable`: `GovPack, manifest.json, gate_report.json, evidence_index.json, run ledger rows`
- `route_out_owner`: Package E（MC4/WP / validator / release guard）; Package B（schema / manifest / evidence schema）; Ops/Dev HOW owners（流程）
- `must_not_claim`: `將 support-only / data-only 文檔升格為 normative; 把 Ops RUNBOOK 或 HOW 寫成制度 owner; 把 bridge layer 當 MC4 / WP / schema owner; 把 GOVERN 寫成第二治理引擎或 schema owner`

## 11. owner route-out register

| need | owner_doc | when_to_route | forbidden_rewrite | evidence_requirement |
|---|---|---|---|---|
| MC4 source pack | CMP-01/DOC-0005 Package E | 任何子系統 MC4 / SS-Lite / WP.Master 文本與欄位定義 | 本橋接層直接撰寫 MC4 / WP 正文 | source_pack + FQ_DOC_ID + anchor + owner review |
| WP.Master source pack | CMP-01/DOC-0005 Package E | 需要落盤 WP.Master / deliverable contract | 本橋接層直接替 owner 決定 validator / release_guard | source_pack + route_out ledger |
| Schema / manifest / gate registry decision | CMP-01/DOC-0002 Package B + CMP-03/DOC-0002 LBP-B(ICD) | 出現 schema 欄位、manifest 欄位、gate registry、triplet schema、evidence schema | 本橋接層新增 schema / gate / threshold | owner locator + exact schema id |
| Dev / Ops HOW | Ops RUNBOOK + CMP-01/DOC-0003~0004 + DOC-0006 | 任何操作步驟、CI、workflow、launcher、checks、jobcard、按鍵/CLI | 本橋接層把 HOW 憲法化 | route_out target + stage / doc anchor |
| Release guard / validator adjudication | CMP-01/DOC-0005 Package E | 宣稱 release-ready、validator pass、closure pass | 本橋接層自行宣布放行 | validator output + required checks + release guard verdict |

## 12. evidence / citation / locator / anchor contract

- No-Source-No-Norm：沒有直接來源依據，不得升格為 MUST / SHALL / 必須 / 不得。
- No-Anchor-No-Claim：沒有 FQ_DOC_ID + doc_anchor / section_anchor，就不得宣稱 exact absorbed clause。
- One-Rule-One-Place：同一規則只能有一個最終 owner；bridge 只能引用或路由。
- Higher Authority Wins：高順位文件永遠優先。
- Owner Schema Wins Over Consumer Rewrite：schema / validator / release guard / package contract 以 owner 文件為準。
- Route-Out Is Routing, Not Re-Legislation：route-out 是導流，不是偷偷再立法。
- Artifact Claim Requires Artifact Proof：凡宣稱已產生工件，必須有 observed path / hash / status。
- Declaration-Is-Not-Implementation：sidecar / CI seed 存在，不等於 owner engine 已落地。

## 13. anti-hallucination guard

- 先看 source ledger，再看 condensed card，再看 route pack；不要跳過 authority stack 直接看 support-only 文件。
- 遇到 doc-map-only locator 時，exact claim 一律降為 UNVERIFIED。
- review suggestion 不是 owner law；審查報告只能當 remediation checklist。
- EXCLUDED_BY_USER_DECISION 的資料不得 retroactively 說成已吸收。
- WATCH / EXECUTE 僅 runtime boundary / HITL handoff，不得誤寫成本地下單引擎。
- OpenCode / Oh My OpenCode 是 execution slots；GitHub Copilot PRO 是 provider slot；Codespaces 是 fallback only。

## 14. docs-as-code / diataxis / GraphRAG / RAPTOR / CRAG / RAG-Triad 最小落地設計

- Docs-as-Code：用 `registries/`、`contracts/`、`machine/`、`ci/` 把藍圖 r2 的 engineering landing 變成實體 sidecar。
- Diátaxis：Master Spine 與 02~05 提供 explanation / reference / navigation；HOW 仍 route-out。
- GraphRAG / RAPTOR / CRAG / RAG-Triad：只作 retrieval / organization / anti-miss 設計；**不是上位規範來源**。
- machine blocks：`machine_summary.json`、`change_plan.tsv`、`checkrun_contract.tsv` 已落盤；但 owner validator engine 仍 route-out。
- validation hooks / required checks：已以 seed 形式落盤；實跑與 owner release verdict 仍未在本包件內發生。

## 15. 交付路由規則

| deliverable_kind | master_spine_allowed | must_route_to | notes |
|---|---|---|---|
| requirements_answer | yes | n/a | bridge answer with citations only |
| bridge_lookup | yes | n/a | index / crosswalk / source alignment |
| subsystem_card | yes | n/a | condensed bridge card / route pack |
| source_pack | yes | owner after pack build | bridge may assemble source pack, not owner rules |
| mc4_source_pack | yes | Package E | source pack only, not normative MC4 text |
| wp_source_pack | yes | Package E | source pack only, not normative WP text |
| runbook_source_pack | yes | Ops RUNBOOK / Package C/D | route-out for HOW |
| schema_decision | no | Package B / LBP-B(ICD) | owner-only |
| validator_rule_authoring | no | Package E | owner-only |
| release_guard_decision | no | Package E | owner-only |

## 16. conflict ledger

| conflict_id | higher_authority | lower_authority | topic | adjudication | status |
|---|---|---|---|---|---|
| CFL-001 | User highest decision | earlier bridge scope assumption | 五子系統特例資料是否納入本版橋接索引 | 三份特例資料改列 EXCLUDED_BY_USER_DECISION，另走 special channel；本版不映射、不索引內容 | CLOSED |
| CFL-002 | 中央工程正文r1 | Pipeline-C 的本地執行延伸解讀 | Pipeline-C 終點與 WATCH / EXECUTE 地位 | Pipeline-C 終點固定為 CA-TRANSLATE；WATCH / EXECUTE 僅 runtime boundary / HITL handoff，不得當本地 execution engine | CLOSED |
| CFL-003 | 中央工程正文r1 | 任何 PERFORM 反向立法 METHOD 的解讀 | PERFORM 與 MethodCard owner 邊界 | PERFORM 僅回饋與 uplift proposal，不得直接改定 MethodCard | CLOSED |
| CFL-004 | CA-TRANSLATE資料參考_合冊B precedence | CA-TRANSLATE A/B support ladder | TRANSLATE/WATCH/EXECUTE 綜合借引優先序 | TRANSLATE/WATCH/EXECUTE 的綜合借引以 CA-TRANSLATE資料參考_合冊B DOC-0001 為先；A 與 B 其餘文檔降為 support ladder | CLOSED |
| CFL-005 | Pipeline-B資料參考_合冊 integrated note | older method/backtest fragments | 方法+回測重疊範圍優先文檔 | 方法+回測重疊範圍優先導向 Pipeline-B資料參考_合冊 DOC-0006；原版保留 traceability | CLOSED |
| CFL-006 | Review remediation + SR §9.13~§9.15 | r3 route pack copy-paste drift | CA-COLLAB / CA-UI / CA-GOVERN obligations swapped | 本版按 SR 9.13~§9.15 重填三者 system requirements obligations 與 system_positioning | CLOSED |
| CFL-007 | SR §6.1~§6.2 | generic toolchain wording in old bridge | OpenCode / Oh My OpenCode / GitHub Copilot PRO / Codespaces taxonomy | 本版按 execution slot / provider slot / fallback only 精準重寫工具鏈表 | CLOSED |

## 17. gap register

| gap_id | missing_source | impact | fallback | disposition | status |
|---|---|---|---|---|---|
| GAP-001 | owner validators / release guard execution evidence | 不能宣稱 execution-ready / release-ready | 維持 DOCUMENT_PASS / EXECUTION_FAIL_CLOSED | CR_OPEN | OPEN |
| GAP-002 | TA / SELECT confidence thresholds final owner grant | 不得把 confidence numbers 升格為 final release gates | CONFIGURE_REQUIRED | threshold register owner route-out | OPEN |
| GAP-003 | TRANSLATE parity profile / XQ capability profile owner-final values | 不得宣稱 parity-ready 或 capability-closure | CONFIGURE_REQUIRED | CA-TRANSLATE + Package B/E route-out | OPEN |
| GAP-004 | Owner schema / manifest / gate registry final field definitions | bridge sidecar seeds 不能冒充 owner schema | route-out to Package B / LBP-B(ICD) | CR_OPEN | OPEN |

## 18. TT / CR_OPEN / CONFIGURE_REQUIRED / FAIL_CLOSED register

| id | kind | topic | blocking | state | owner | note |
|---|---|---|---|---|---|---|
| CR-001 | CR_OPEN | owner validators not executed | YES | OPEN | Package E | release-ready claim blocked |
| CFG-001 | CONFIGURE_REQUIRED | TA / SELECT confidence thresholds | NO | OPEN | threshold register owner | numbers cannot be promoted without owner grant |
| CFG-002 | CONFIGURE_REQUIRED | TRANSLATE parity profile / XQ capability profile | NO | OPEN | CA-TRANSLATE owner + Package B/E | cannot claim parity-ready without owner proof |
| CR-002 | CR_OPEN | Package B/E final schema field definitions for sidecar seeds | NO | OPEN | Package B / LBP-B(ICD) / Package E | bridge ships seeds, not owner schema law |
| TT-001 | TT | 若未來把 special-channel docs 併回 bridge scope，必須另起 patch | NO | OPEN | source custodian | 不得 retroactively claim already absorbed |
| FC-001 | FAIL_CLOSED | 無 source / 無 anchor / 無 owner / 無 manifest / 無 evidence | YES | ALWAYS_ON | all consumers | No-Source-No-Norm / No-Anchor-No-Claim |

## 19. packaging manifest

| filename | role | depends_on | included_in_zip | status |
|---|---|---|---|---|
| 00_README_DELIVERY_INDEX.md | top-level artifact | source set + generated sidecars | YES | GENERATED |
| 01_MASTER_SPINE.md | top-level artifact | source set + generated sidecars | YES | GENERATED |
| 02_BRIDGE_PIPELINE_A.md | top-level artifact | source set + generated sidecars | YES | GENERATED |
| 03_BRIDGE_PIPELINE_B.md | top-level artifact | source set + generated sidecars | YES | GENERATED |
| 04_BRIDGE_PIPELINE_C.md | top-level artifact | source set + generated sidecars | YES | GENERATED |
| 05_BRIDGE_SYS5.md | top-level artifact | source set + generated sidecars | YES | GENERATED |
| 06_SOURCE_AUTHORITY_CROSSWALK.md | top-level artifact | source set + generated sidecars | YES | GENERATED |
| 07_CONFLICT_GAP_TT_REGISTER.md | top-level artifact | source set + generated sidecars | YES | GENERATED |
| 08_SUBSYSTEM_ROUTE_PACKS.md | top-level artifact | source set + generated sidecars | YES | GENERATED |
| 09_MACHINE_BLOCKS_AND_SIDECAR_MANIFEST.md | top-level artifact | source set + generated sidecars | YES | GENERATED |
| Spartoi-OMOC_Master_Spine_Full_Monolith.md | top-level artifact | source set + generated sidecars | YES | GENERATED |
| Spartoi-OMOC_Master_Spine_Package.zip | top-level artifact | source set + generated sidecars | self | GENERATED |

## 20. artifact proof note

- artifact claim 必須以 observed path、observed status、sha256_or_not_available 支撐。
- r3 的 ZIP 假性 closure 已被視為 superseded baseline defect；本版以實際觀測取代口頭 GENERATED。
- 即使 ZIP 已存在，release-ready 仍取決於 owner validators / required checks / release guard execution evidence。

## 21. release note / supersession note / build note / artifact list

- supersession: 本版取代 `spine_delivery_20260315_r3/*` 作為 active bridge/router package。
- integrated review: `Spartoi-OMOC_Master_Spine_Review_Full_Monolith.md` 及 00~08 審查分冊全部作為 remediation checklist 已吸收；但未越權把 review 建議升格成新治理條文。
- repaired findings summary: sys5 obligations fixed, 15 condensed card `system_positioning` completed, toolchain precision corrected, sidecar/machine blocks landed, artifact-proof honesty completed, owner-critical locators partially upgraded.
- still route-out: owner validators / release guard / required checks execution evidence、TA/SELECT thresholds、TRANSLATE parity/capability profile、owner schema field law。


<!-- END 01_MASTER_SPINE.md -->


<!-- BEGIN 02_BRIDGE_PIPELINE_A.md -->

# 02_BRIDGE_PIPELINE_A

> Status: DOCUMENT_PASS / EXECUTION_FAIL_CLOSED
> Domain: Pipeline-A

## 1. domain cover card

- domain: Pipeline-A
- domain_cover: Pipeline-A Bridge / 知識入口與 formalization 入口冊
- legal_position: derived bridge / retrieval router / source alignment slice
- build_revision: r4

## 2. domain scope-lock

只處理 CA-WRC / CA-CORPUS / CA-DISTILL / CA-DSL 的橋接、引用與 route-out；不得在此冊立方法、立 schema、立 HOW。

## 3. domain authority handling rule

以中央工程正文r1 + 系統需求正文r3 為 controlling source；domain docs 僅作 home-volume bridge/support。

## 4. domain source inventory

| source | role | FQ_DOC_ID | doc_anchor | optional_section_anchor | exact_claim_allowed | notes |
|---|---|---|---|---|---|---|
| Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文r1.md | PRIMARY_NORM | GCERM-V220R1 | 15ca / pipeline topology / subsystem owner anchors | §7 / §9 / §13 | Y | home ownership, stable_id, topology, central obligations |
| Spartoi-OMOC_系統需求正文r3.md | PRIMARY_NORM | SOMOC-SR-MAIN.v2026.03.13-r3 | toolchain + subsystem正文 | §6 / §9 / §10 | Y | system positioning, slot taxonomy, fail-closed rules |
| Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊.md | OWNER_ROUTE_OUT_ENTRY | CMP-01 | package entry / owner boundaries | DOC-0002 / DOC-0005 / DOC-0006 | Y | Package B/E owner route-out and engineering guide |
| Pipeline-A設計資料參考_合冊.md | PRIMARY_BRIDGE_A | DOM-A/DOC-0001 | domain-doc-map-design | doc-map | N | design intent / domain coverage |
| Pipeline-A實作資料參考_合冊.md | PRIMARY_BRIDGE_A_IMPL | DOM-A/DOC-0002 | domain-doc-map-implementation | doc-map | N | implementation reference / route support |
| SEM³資料參考_合冊.md | SUPPORT_ONLY | DOM-SUP/DOC-0001 | semantic-quality-support | index-contract | N | quality / retrieval fidelity support |
| 台股實戰映射_合冊.md | SUPPORT_ONLY | DOM-SUP/DOC-0002 | tw-domain-calibration | doc-map | N | TW domain calibration support |
| 多模態多向量圖像檢索技術指南_筆記.txt | SUPPORT_ONLY | DOM-SUP/DOC-0003 | multimodal-retrieval-note | full-note | N | multimodal retrieval path support |
| 2022 ICT Mentorship 技術指南合冊_v2.md | SUPPORT_ONLY/DATA_ONLY | DOM-SUP/DOC-0004 | index-contract / anti-hallucination | whole-doc-merge | N | index-first / anti-hallucination techniques |

## 5. domain doc map

| bridge_fq_doc_id | source | why_read | read_order | note |
|---|---|---|---|---|
| GCERM-V220R1 | Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文r1.md | owner/bridge/support lookup | 1 | home ownership, stable_id, topology, central obligations |
| SOMOC-SR-MAIN.v2026.03.13-r3 | Spartoi-OMOC_系統需求正文r3.md | owner/bridge/support lookup | 2 | system positioning, slot taxonomy, fail-closed rules |
| CMP-01 | Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊.md | owner/bridge/support lookup | 3 | Package B/E owner route-out and engineering guide |
| DOM-A/DOC-0001 | Pipeline-A設計資料參考_合冊.md | owner/bridge/support lookup | 4 | design intent / domain coverage |
| DOM-A/DOC-0002 | Pipeline-A實作資料參考_合冊.md | owner/bridge/support lookup | 5 | implementation reference / route support |
| DOM-SUP/DOC-0001 | SEM³資料參考_合冊.md | owner/bridge/support lookup | 6 | quality / retrieval fidelity support |
| DOM-SUP/DOC-0002 | 台股實戰映射_合冊.md | owner/bridge/support lookup | 7 | TW domain calibration support |
| DOM-SUP/DOC-0003 | 多模態多向量圖像檢索技術指南_筆記.txt | owner/bridge/support lookup | 8 | multimodal retrieval path support |
| DOM-SUP/DOC-0004 | 2022 ICT Mentorship 技術指南合冊_v2.md | owner/bridge/support lookup | 9 | index-first / anti-hallucination techniques |

## 6. central正文 / system正文 / domain資料 的三向映射表

| central_clause | sr_clause | domain_data | affected_subsystems | owner | disposition | evidence_ptr |
|---|---|---|---|---|---|---|
| GCERM §9.2 / §13.1~§13.4 | SR §9.1~§9.4 + §10.1 | Pipeline-A設計/實作 + SEM³ + 台股實戰映射 + 2022 ICT | CA-WRC, CA-CORPUS, CA-DISTILL, CA-DSL | Pipeline-A home volume | PRIMARY_BRIDGE_A + impl + support ladder | GCERM anchors + SR subsystem正文 + domain doc map |

## 7. 該域涉及的 CA / 子系統 / 宏模組 對位表

| subsystem_id | display_name | macro_module_name | system_positioning | canonical_deliverable |
|---|---|---|---|---|
| CA-WRC | 白名單廣域蒐集 | K.Knowledge-Ingest | 系統知識進場的白名單蒐集、來源分級與 provenance 固化 owner。 | ``source_registry.json`, `source_tiering_manifest.json`, `provenance_log.ndjson`, `usage_limit_policy.yaml`, `quarantine_register.jsonl`` |
| CA-CORPUS | 教材庫\&RAG | K.Knowledge-Ingest | 可追溯語料快照與混合檢索政策的正式 owner。 | ``corpus_snapshot_manifest.json`, `corpus_index/` 或 owner-approved 等價索引, `anchor_chunk_map.tsv`, `retrieval_mode_policy.yaml`, `corpus_quarantine_register.jsonl`` |
| CA-DISTILL | 蒸餾 | K.Knowledge-Ingest | 把語料收斂為可回指 claim / evidence / distill bundle 的正式 owner。 | ``claim_registry.json`, `evidence_chain.jsonl`, `semantic_report.md` 或 machine-readable 等價格式, `alignment_matrix.tsv`, `reader_quadrants.md` 或 bundle 等價格式` |
| CA-DSL | 偽代碼原語庫/中立DSL | S.Strategy-Formalize | 市場中立、平台中立原語與 DSL formalization 的正式 owner。 | `Primitive library, DSL schema, EvidenceCard, Function spec / pseudo spec, `evidence_rule_map.tsv`` |

## 8. owner route-out 表

| need | owner_doc | when_to_route | forbidden_rewrite | evidence_requirement |
|---|---|---|---|---|
| MC4/WP / schema | Package E / Package B | formal subsystem spec or schema field needed | 本冊不得代寫 owner text | source pack + owner anchor |
| retrieval implementation HOW | Ops RUNBOOK / engineering guide | chunking/indexing/ops flow needed | 本冊不得憲法化 HOW | route target + doc anchor |

## 9. 可直接供後續 AI 提取的 reference pack

| subsystem_id | minimum_sources | minimum_artifacts | owner_route_out | fail_closed_note |
|---|---|---|---|---|
| CA-WRC | `Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文r1.md; Spartoi-OMOC_系統需求正文r3.md; Spartoi-OMOC_SSOT_合冊.md | ``source_registry.json`, `source_tiering_manifest.json`, `provenance_log.ndjson`, `usage_limit_policy.yaml`, `quarantine_register.jsonl`` | Package E（MC4/WP / validator / release guard）; Package B（schema / manifest / evidence schema）; Ops/Dev HOW owners（流程） | 來源斷鏈、hash 缺失、manifest 缺欄，即 FAIL。 |
| CA-CORPUS | `Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文r1.md; Spartoi-OMOC_系統需求正文r3.md; Spartoi-OMOC_SSOT_合冊.md | ``corpus_snapshot_manifest.json`, `corpus_index/` 或 owner-approved 等價索引, `anchor_chunk_map.tsv`, `retrieval_mode_policy.yaml`, `corpus_quarantine_register.jsonl`` | Package E（MC4/WP / validator / release guard）; Package B（schema / manifest / evidence schema）; Ops/Dev HOW owners（流程） | snapshot 不可解析、來源覆蓋斷裂，即 FAIL。 |
| CA-DISTILL | `Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文r1.md; Spartoi-OMOC_系統需求正文r3.md; Spartoi-OMOC_SSOT_合冊.md | ``claim_registry.json`, `evidence_chain.jsonl`, `semantic_report.md` 或 machine-readable 等價格式, `alignment_matrix.tsv`, `reader_quadrants.md` 或 bundle 等價格式` | Package E（MC4/WP / validator / release guard）; Package B（schema / manifest / evidence schema）; Ops/Dev HOW owners（流程） | 關鍵遺漏、語意不保真、無 SEG 證跡，即 FAIL。 |
| CA-DSL | `Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文r1.md; Spartoi-OMOC_系統需求正文r3.md; Spartoi-OMOC_SSOT_合冊.md | `Primitive library, DSL schema, EvidenceCard, Function spec / pseudo spec, `evidence_rule_map.tsv`` | Package E（MC4/WP / validator / release guard）; Package B（schema / manifest / evidence schema）; Ops/Dev HOW owners（流程） | schema 無法解析、欄位不完整、無 formal contract，即 FAIL。 |

## 10. conflict / gap / quarantine / fail-closed 區

### 10.1 conflict ledger

| conflict_id | higher_authority | lower_authority | topic | adjudication | status |
|---|---|---|---|---|---|
| — | — | — | — | — | — |

### 10.2 gap register

| gap_id | missing_source | impact | fallback | disposition | status |
|---|---|---|---|---|---|
| GAP-001 | owner validators / release guard execution evidence | 不能宣稱 execution-ready / release-ready | 維持 DOCUMENT_PASS / EXECUTION_FAIL_CLOSED | CR_OPEN | OPEN |
| GAP-002 | TA / SELECT confidence thresholds final owner grant | 不得把 confidence numbers 升格為 final release gates | CONFIGURE_REQUIRED | threshold register owner route-out | OPEN |
| GAP-003 | TRANSLATE parity profile / XQ capability profile owner-final values | 不得宣稱 parity-ready 或 capability-closure | CONFIGURE_REQUIRED | CA-TRANSLATE + Package B/E route-out | OPEN |
| GAP-004 | Owner schema / manifest / gate registry final field definitions | bridge sidecar seeds 不能冒充 owner schema | route-out to Package B / LBP-B(ICD) | CR_OPEN | OPEN |

### 10.3 quarantine notes

- support-only / data-only / route-out-only 不得升格為 normative。
- exact_claim_allowed = N 的列，只可作 doc-level bridge，不得冒充 exact clause absorbed。
- 若需要 HOW / schema / validator / release guard，直接 route-out。

## 11. retrieval quick path

- 先讀 01 §4 → 02 §4 source inventory → 02 §6 三向映射 → 08 route packs for WRC/CORPUS/DISTILL/DSL
- 若問 schema/HOW，立即 route-out

## 12. 嚴禁越權條款

- 本冊不得變成新的中央正文 / 系統需求正文 / SSOT / LBP / Package owner spec。
- 本冊不得代寫 MC4 / WP / schema / validator / release guard / HOW。
- 本冊不得把 support-only / data-only 文件升格為 owner source。
- 本冊不得在沒有 owner proof 時宣稱 release-ready。


<!-- END 02_BRIDGE_PIPELINE_A.md -->


<!-- BEGIN 03_BRIDGE_PIPELINE_B.md -->

# 03_BRIDGE_PIPELINE_B

> Status: DOCUMENT_PASS / EXECUTION_FAIL_CLOSED
> Domain: Pipeline-B

## 1. domain cover card

- domain: Pipeline-B
- domain_cover: Pipeline-B Bridge / 方法、回測、績效冊
- legal_position: derived bridge / retrieval router / source alignment slice
- build_revision: r4

## 2. domain scope-lock

只處理 CA-METHOD / CA-BACKTEST / CA-PERFORM 的橋接、引用與 route-out；PERFORM 不得反向立法 METHOD。

## 3. domain authority handling rule

以中央工程正文r1 + 系統需求正文r3 為 controlling source；Pipeline-B資料參考_合冊 DOC-0006 優先處理 METHOD/BACKTEST overlap。

## 4. domain source inventory

| source | role | FQ_DOC_ID | doc_anchor | optional_section_anchor | exact_claim_allowed | notes |
|---|---|---|---|---|---|---|
| Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文r1.md | PRIMARY_NORM | GCERM-V220R1 | 15ca / pipeline topology / subsystem owner anchors | §7 / §9 / §13 | Y | home ownership, stable_id, topology, central obligations |
| Spartoi-OMOC_系統需求正文r3.md | PRIMARY_NORM | SOMOC-SR-MAIN.v2026.03.13-r3 | toolchain + subsystem正文 | §6 / §9 / §10 | Y | system positioning, slot taxonomy, fail-closed rules |
| Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊.md | OWNER_ROUTE_OUT_ENTRY | CMP-01 | package entry / owner boundaries | DOC-0002 / DOC-0005 / DOC-0006 | Y | Package B/E owner route-out and engineering guide |
| Pipeline-B資料參考_合冊.md | PRIMARY_BRIDGE_B | DOM-B/DOC-0001 | domain-doc-map-main | doc-map | N | main bridge for method/backtest/perform |
| Pipeline-B&C資料參考_合冊.md | BORROWED_BRIDGE_BC | DOM-B/DOC-0002 | shared-bc-borrowed-bridge | doc-map | N | borrowed bridge across B/C |
| 台股歷史資料庫實作參考_合冊.md | SUPPORT_ONLY/DATA_SUBSTRATE | DOM-B/DOC-0003 | historical-db-data-substrate | doc-map | N | data substrate / replay support |
| 台股實戰映射_合冊.md | SUPPORT_ONLY | DOM-B/DOC-0004 | tw-domain-calibration | doc-map | N | TW domain calibration support |
| 2022 ICT Mentorship 技術指南合冊_v2.md | SUPPORT_ONLY/DATA_ONLY | DOM-B/DOC-0005 | index-contract / anti-hallucination | whole-doc-merge | N | index-first / anti-hallucination techniques |
| Pipeline-B資料參考_合冊.md::DOC-0006 | OWNER_CRITICAL_PRECEDENCE_ROW | DOM-B/DOC-0006 | integrated-method-backtest-precedence | doc-map-only | N | priority row for METHOD/BACKTEST overlap; upgraded from generic locator |

## 5. domain doc map

| bridge_fq_doc_id | source | why_read | read_order | note |
|---|---|---|---|---|
| GCERM-V220R1 | Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文r1.md | owner/bridge/support lookup | 1 | home ownership, stable_id, topology, central obligations |
| SOMOC-SR-MAIN.v2026.03.13-r3 | Spartoi-OMOC_系統需求正文r3.md | owner/bridge/support lookup | 2 | system positioning, slot taxonomy, fail-closed rules |
| CMP-01 | Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊.md | owner/bridge/support lookup | 3 | Package B/E owner route-out and engineering guide |
| DOM-B/DOC-0001 | Pipeline-B資料參考_合冊.md | owner/bridge/support lookup | 4 | main bridge for method/backtest/perform |
| DOM-B/DOC-0002 | Pipeline-B&C資料參考_合冊.md | owner/bridge/support lookup | 5 | borrowed bridge across B/C |
| DOM-B/DOC-0003 | 台股歷史資料庫實作參考_合冊.md | owner/bridge/support lookup | 6 | data substrate / replay support |
| DOM-B/DOC-0004 | 台股實戰映射_合冊.md | owner/bridge/support lookup | 7 | TW domain calibration support |
| DOM-B/DOC-0005 | 2022 ICT Mentorship 技術指南合冊_v2.md | owner/bridge/support lookup | 8 | index-first / anti-hallucination techniques |
| DOM-B/DOC-0006 | Pipeline-B資料參考_合冊.md::DOC-0006 | owner/bridge/support lookup | 9 | priority row for METHOD/BACKTEST overlap; upgraded from generic locator |

## 6. central正文 / system正文 / domain資料 的三向映射表

| central_clause | sr_clause | domain_data | affected_subsystems | owner | disposition | evidence_ptr |
|---|---|---|---|---|---|---|
| GCERM §9.3 / §13.5~§13.6 / §13.12 | SR §9.5 / §9.6 / §9.12 + §10.2 | Pipeline-B主橋接 + B&C借引 + 台股歷史DB + 2022 ICT | CA-METHOD, CA-BACKTEST, CA-PERFORM | Pipeline-B home volume | Pipeline-B主冊優先；DOC-0006 precedence row noted | GCERM anchors + SR subsystem正文 + DOM-B/DOC-0006 |

## 7. 該域涉及的 CA / 子系統 / 宏模組 對位表

| subsystem_id | display_name | macro_module_name | system_positioning | canonical_deliverable |
|---|---|---|---|---|
| CA-METHOD | 方法制定 | S.Strategy-Formalize | 把 primitive/evidence 收斂為可回測、可轉譯、可審查方法包的正式 owner。 | ``MethodCard.md/json`, `MethodSpec.json` 或 owner-approved 等價格式, `MethodPack/`, `primitive_coverage_map.tsv`, `scenario_binding.json`` |
| CA-BACKTEST | 回測 | B.Backtest-Learn | MethodCard 的回測、衛生與可重播性驗證 owner。 | ``BacktestPack/`, `backtest_report.json`, `repro_manifest.json`, `slice_manifest.json`, `hygiene_report.json`` |
| CA-PERFORM | 績效分析 | B.Backtest-Learn | 全鏈路事後績效與 uplift proposal owner，但不得改寫方法 owner。 | ``FeedbackPack/`, `top3_proposals.json`, `performance_report.md`, `parity_or_missing_inputs_statement.json`, `retest_linkage.json`` |

## 8. owner route-out 表

| need | owner_doc | when_to_route | forbidden_rewrite | evidence_requirement |
|---|---|---|---|---|
| validator / release adjudication | Package E | pass/fail or release-ready requested | 本冊不得自行判放行 | validator output + required checks |
| schema / manifest details | Package B / LBP-B(ICD) | MethodPack/BacktestPack field details needed | 本冊不得創 schema | owner schema id |

## 9. 可直接供後續 AI 提取的 reference pack

| subsystem_id | minimum_sources | minimum_artifacts | owner_route_out | fail_closed_note |
|---|---|---|---|---|
| CA-METHOD | `Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文r1.md; Spartoi-OMOC_系統需求正文r3.md; Spartoi-OMOC_SSOT_合冊.md | ``MethodCard.md/json`, `MethodSpec.json` 或 owner-approved 等價格式, `MethodPack/`, `primitive_coverage_map.tsv`, `scenario_binding.json`` | Package E（MC4/WP / validator / release guard）; Package B（schema / manifest / evidence schema）; Ops/Dev HOW owners（流程） | 方法卡不可追溯、三源融合斷裂、無 rationale，即 FAIL。 |
| CA-BACKTEST | `Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文r1.md; Spartoi-OMOC_系統需求正文r3.md; Spartoi-OMOC_SSOT_合冊.md | ``BacktestPack/`, `backtest_report.json`, `repro_manifest.json`, `slice_manifest.json`, `hygiene_report.json`` | Package E（MC4/WP / validator / release guard）; Package B（schema / manifest / evidence schema）; Ops/Dev HOW owners（流程） | 不可重播、無 hygiene、無 historical\_db lineage，即 FAIL。 |
| CA-PERFORM | `Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文r1.md; Spartoi-OMOC_系統需求正文r3.md; Spartoi-OMOC_SSOT_合冊.md | ``FeedbackPack/`, `top3_proposals.json`, `performance_report.md`, `parity_or_missing_inputs_statement.json`, `retest_linkage.json`` | Package E（MC4/WP / validator / release guard）; Package B（schema / manifest / evidence schema）; Ops/Dev HOW owners（流程） | 不可追溯、與 method\_card 矛盾、無 retest linkage，即 FAIL。 |

## 10. conflict / gap / quarantine / fail-closed 區

### 10.1 conflict ledger

| conflict_id | higher_authority | lower_authority | topic | adjudication | status |
|---|---|---|---|---|---|
| — | — | — | — | — | — |

### 10.2 gap register

| gap_id | missing_source | impact | fallback | disposition | status |
|---|---|---|---|---|---|
| GAP-001 | owner validators / release guard execution evidence | 不能宣稱 execution-ready / release-ready | 維持 DOCUMENT_PASS / EXECUTION_FAIL_CLOSED | CR_OPEN | OPEN |
| GAP-002 | TA / SELECT confidence thresholds final owner grant | 不得把 confidence numbers 升格為 final release gates | CONFIGURE_REQUIRED | threshold register owner route-out | OPEN |
| GAP-003 | TRANSLATE parity profile / XQ capability profile owner-final values | 不得宣稱 parity-ready 或 capability-closure | CONFIGURE_REQUIRED | CA-TRANSLATE + Package B/E route-out | OPEN |
| GAP-004 | Owner schema / manifest / gate registry final field definitions | bridge sidecar seeds 不能冒充 owner schema | route-out to Package B / LBP-B(ICD) | CR_OPEN | OPEN |

### 10.3 quarantine notes

- support-only / data-only / route-out-only 不得升格為 normative。
- exact_claim_allowed = N 的列，只可作 doc-level bridge，不得冒充 exact clause absorbed。
- 若需要 HOW / schema / validator / release guard，直接 route-out。

## 11. retrieval quick path

- 先讀 01 §4 → 03 §4 source inventory → 03 §6 三向映射 → 08 route packs for METHOD/BACKTEST/PERFORM
- METHOD/BACKTEST overlap 先看 DOM-B/DOC-0006 precedence row

## 12. 嚴禁越權條款

- 本冊不得變成新的中央正文 / 系統需求正文 / SSOT / LBP / Package owner spec。
- 本冊不得代寫 MC4 / WP / schema / validator / release guard / HOW。
- 本冊不得把 support-only / data-only 文件升格為 owner source。
- 本冊不得在沒有 owner proof 時宣稱 release-ready。


<!-- END 03_BRIDGE_PIPELINE_B.md -->


<!-- BEGIN 04_BRIDGE_PIPELINE_C.md -->

# 04_BRIDGE_PIPELINE_C

> Status: DOCUMENT_PASS / EXECUTION_FAIL_CLOSED
> Domain: Pipeline-C

## 1. domain cover card

- domain: Pipeline-C
- domain_cover: Pipeline-C Bridge / 分析、選股、轉譯冊
- legal_position: derived bridge / retrieval router / source alignment slice
- build_revision: r4

## 2. domain scope-lock

只處理 CA-TA / CA-SELECT / CA-TRANSLATE 的橋接、引用與 route-out；Pipeline-C 終點固定為 CA-TRANSLATE。

## 3. domain authority handling rule

以中央工程正文r1 + 系統需求正文r3 為 controlling source；CA-TRANSLATE資料參考_合冊B 的 borrowed bridge 優先於 A。

## 4. domain source inventory

| source | role | FQ_DOC_ID | doc_anchor | optional_section_anchor | exact_claim_allowed | notes |
|---|---|---|---|---|---|---|
| Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文r1.md | PRIMARY_NORM | GCERM-V220R1 | 15ca / pipeline topology / subsystem owner anchors | §7 / §9 / §13 | Y | home ownership, stable_id, topology, central obligations |
| Spartoi-OMOC_系統需求正文r3.md | PRIMARY_NORM | SOMOC-SR-MAIN.v2026.03.13-r3 | toolchain + subsystem正文 | §6 / §9 / §10 | Y | system positioning, slot taxonomy, fail-closed rules |
| Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊.md | OWNER_ROUTE_OUT_ENTRY | CMP-01 | package entry / owner boundaries | DOC-0002 / DOC-0005 / DOC-0006 | Y | Package B/E owner route-out and engineering guide |
| Pipeline-C資料參考_合冊.md | PRIMARY_BRIDGE_C | DOM-C/DOC-0001 | domain-doc-map-main | doc-map | N | main bridge for TA/SELECT/TRANSLATE |
| CA-TRANSLATE資料參考_合冊B.md | PRIMARY_BRIDGE_C/BORROWED_TO_SYS5 | DOM-C/DOC-0002 | translate-borrowed-bridge-preferred | DOC-0001 integrated precedence | N | preferred borrowed bridge for TRANSLATE/WATCH/EXECUTE |
| CA-TRANSLATE資料參考_合冊A.md | SUPPORT_BRIDGE_C | DOM-C/DOC-0003 | translate-support-bridge | doc-map | N | support ladder behind B |
| Pipeline-B&C資料參考_合冊.md | BORROWED_BRIDGE_BC | DOM-C/DOC-0004 | shared-bc-borrowed-bridge | doc-map | N | borrowed cross-domain support |
| 台股歷史資料庫實作參考_合冊.md | SUPPORT_ONLY/DATA_SUBSTRATE | DOM-C/DOC-0005 | historical-db-data-substrate | doc-map | N | data substrate / replay support |
| 2022 ICT Mentorship 技術指南合冊_v2.md | SUPPORT_ONLY/DATA_ONLY | DOM-C/DOC-0006 | index-contract / anti-hallucination | whole-doc-merge | N | index-first / anti-hallucination techniques |

## 5. domain doc map

| bridge_fq_doc_id | source | why_read | read_order | note |
|---|---|---|---|---|
| GCERM-V220R1 | Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文r1.md | owner/bridge/support lookup | 1 | home ownership, stable_id, topology, central obligations |
| SOMOC-SR-MAIN.v2026.03.13-r3 | Spartoi-OMOC_系統需求正文r3.md | owner/bridge/support lookup | 2 | system positioning, slot taxonomy, fail-closed rules |
| CMP-01 | Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊.md | owner/bridge/support lookup | 3 | Package B/E owner route-out and engineering guide |
| DOM-C/DOC-0001 | Pipeline-C資料參考_合冊.md | owner/bridge/support lookup | 4 | main bridge for TA/SELECT/TRANSLATE |
| DOM-C/DOC-0002 | CA-TRANSLATE資料參考_合冊B.md | owner/bridge/support lookup | 5 | preferred borrowed bridge for TRANSLATE/WATCH/EXECUTE |
| DOM-C/DOC-0003 | CA-TRANSLATE資料參考_合冊A.md | owner/bridge/support lookup | 6 | support ladder behind B |
| DOM-C/DOC-0004 | Pipeline-B&C資料參考_合冊.md | owner/bridge/support lookup | 7 | borrowed cross-domain support |
| DOM-C/DOC-0005 | 台股歷史資料庫實作參考_合冊.md | owner/bridge/support lookup | 8 | data substrate / replay support |
| DOM-C/DOC-0006 | 2022 ICT Mentorship 技術指南合冊_v2.md | owner/bridge/support lookup | 9 | index-first / anti-hallucination techniques |

## 6. central正文 / system正文 / domain資料 的三向映射表

| central_clause | sr_clause | domain_data | affected_subsystems | owner | disposition | evidence_ptr |
|---|---|---|---|---|---|---|
| GCERM §9.4 / §13.7~§13.9 | SR §9.7~§9.9 + §10.3 | Pipeline-C主冊 + CA-TRANSLATE B preferred + A support + 2022 ICT | CA-TA, CA-SELECT, CA-TRANSLATE | Pipeline-C home volume | TRANSLATE B preferred; parity/capability remains CONFIGURE_REQUIRED | GCERM anchors + SR subsystem正文 + DOM-C/DOC-0002 |

## 7. 該域涉及的 CA / 子系統 / 宏模組 對位表

| subsystem_id | display_name | macro_module_name | system_positioning | canonical_deliverable |
|---|---|---|---|---|
| CA-TA | 技術分析 | F.Signal-Analysis | 由 MethodCard 與市場資料生成 AnalysisPack / StoryCard 的正式 owner。 | `AnalysisPack, StoryCard, RiskCard, feature evidence bundle` |
| CA-SELECT | 選股 | F.Signal-Analysis | 把分析結果與成本/流動性約束轉成候選清單與理由的正式 owner。 | `TopK list, ranking evidence, confidence report` |
| CA-TRANSLATE | XS轉譯 | O.Operate-XQ | 中立 DSL 到 XS 的唯一轉譯與 parity/capability profile owner。 | `XSPack, parity report, capability profile, field mapping matrix` |

## 8. owner route-out 表

| need | owner_doc | when_to_route | forbidden_rewrite | evidence_requirement |
|---|---|---|---|---|
| parity / capability final profile | CA-TRANSLATE owner + Package B/E | 宣稱 parity-ready / capability-closure 時 | 本冊不得自行完成 parity adjudication | parity report + capability profile + owner verdict |
| XQ runtime HOW | Ops RUNBOOK | runtime操作與手動流程 | 本冊不得寫操作規範正文 | runbook anchor |

## 9. 可直接供後續 AI 提取的 reference pack

| subsystem_id | minimum_sources | minimum_artifacts | owner_route_out | fail_closed_note |
|---|---|---|---|---|
| CA-TA | `Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文r1.md; Spartoi-OMOC_系統需求正文r3.md; Spartoi-OMOC_SSOT_合冊.md | `AnalysisPack, StoryCard, RiskCard, feature evidence bundle` | Package E（MC4/WP / validator / release guard）; Package B（schema / manifest / evidence schema）; Ops/Dev HOW owners（流程） | 無分析包、無故事卡、無 confidence evidence，即 FAIL。 |
| CA-SELECT | `Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文r1.md; Spartoi-OMOC_系統需求正文r3.md; Spartoi-OMOC_SSOT_合冊.md | `TopK list, ranking evidence, confidence report` | Package E（MC4/WP / validator / release guard）; Package B（schema / manifest / evidence schema）; Ops/Dev HOW owners（流程） | 無候選、無理由、無 confidence evidence，即 FAIL。 |
| CA-TRANSLATE | `Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文r1.md; Spartoi-OMOC_系統需求正文r3.md; Spartoi-OMOC_SSOT_合冊.md | `XSPack, parity report, capability profile, field mapping matrix` | Package E（MC4/WP / validator / release guard）; Package B（schema / manifest / evidence schema）; Ops/Dev HOW owners（流程） | 無 compile / load / comparison / capability / parity report 任一，即 FAIL。 |

## 10. conflict / gap / quarantine / fail-closed 區

### 10.1 conflict ledger

| conflict_id | higher_authority | lower_authority | topic | adjudication | status |
|---|---|---|---|---|---|
| CFL-002 | 中央工程正文r1 | Pipeline-C 的本地執行延伸解讀 | Pipeline-C 終點與 WATCH / EXECUTE 地位 | Pipeline-C 終點固定為 CA-TRANSLATE；WATCH / EXECUTE 僅 runtime boundary / HITL handoff，不得當本地 execution engine | CLOSED |

### 10.2 gap register

| gap_id | missing_source | impact | fallback | disposition | status |
|---|---|---|---|---|---|
| GAP-001 | owner validators / release guard execution evidence | 不能宣稱 execution-ready / release-ready | 維持 DOCUMENT_PASS / EXECUTION_FAIL_CLOSED | CR_OPEN | OPEN |
| GAP-002 | TA / SELECT confidence thresholds final owner grant | 不得把 confidence numbers 升格為 final release gates | CONFIGURE_REQUIRED | threshold register owner route-out | OPEN |
| GAP-003 | TRANSLATE parity profile / XQ capability profile owner-final values | 不得宣稱 parity-ready 或 capability-closure | CONFIGURE_REQUIRED | CA-TRANSLATE + Package B/E route-out | OPEN |
| GAP-004 | Owner schema / manifest / gate registry final field definitions | bridge sidecar seeds 不能冒充 owner schema | route-out to Package B / LBP-B(ICD) | CR_OPEN | OPEN |

### 10.3 quarantine notes

- support-only / data-only / route-out-only 不得升格為 normative。
- exact_claim_allowed = N 的列，只可作 doc-level bridge，不得冒充 exact clause absorbed。
- 若需要 HOW / schema / validator / release guard，直接 route-out。

## 11. retrieval quick path

- 先讀 01 §4 → 04 §4 source inventory → 04 §6 三向映射 → 08 route packs for TA/SELECT/TRANSLATE
- TRANSLATE borrowed bridge 先看 DOM-C/DOC-0002

## 12. 嚴禁越權條款

- 本冊不得變成新的中央正文 / 系統需求正文 / SSOT / LBP / Package owner spec。
- 本冊不得代寫 MC4 / WP / schema / validator / release guard / HOW。
- 本冊不得把 support-only / data-only 文件升格為 owner source。
- 本冊不得在沒有 owner proof 時宣稱 release-ready。


<!-- END 04_BRIDGE_PIPELINE_C.md -->


<!-- BEGIN 05_BRIDGE_SYS5.md -->

# 05_BRIDGE_SYS5

> Status: DOCUMENT_PASS / EXECUTION_FAIL_CLOSED
> Domain: 五子系統

## 1. domain cover card

- domain: 五子系統
- domain_cover: 五子系統 Bridge / runtime 邊界、協作、入口、治理薄層冊
- legal_position: derived bridge / retrieval router / source alignment slice
- build_revision: r4

## 2. domain scope-lock

只處理 WATCH / EXECUTE / COLLAB / UI / GOVERN 的薄層橋接；不得把五子系統寫成第二主幹、第二治理引擎或第二下單端。

## 3. domain authority handling rule

以中央工程正文r1 + 系統需求正文r3 為 controlling source；Ops RUNBOOK 僅 route-out；special-channel docs 仍排除。

## 4. domain source inventory

| source | role | FQ_DOC_ID | doc_anchor | optional_section_anchor | exact_claim_allowed | notes |
|---|---|---|---|---|---|---|
| Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文r1.md | PRIMARY_NORM | GCERM-V220R1 | 15ca / pipeline topology / subsystem owner anchors | §7 / §9 / §13 | Y | home ownership, stable_id, topology, central obligations |
| Spartoi-OMOC_系統需求正文r3.md | PRIMARY_NORM | SOMOC-SR-MAIN.v2026.03.13-r3 | toolchain + subsystem正文 | §6 / §9 / §10 | Y | system positioning, slot taxonomy, fail-closed rules |
| Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊.md | OWNER_ROUTE_OUT_ENTRY | CMP-01 | package entry / owner boundaries | DOC-0002 / DOC-0005 / DOC-0006 | Y | Package B/E owner route-out and engineering guide |
| Ops RUNBOOK_合冊.md | ROUTE_OUT_ONLY | DOM-SYS5/DOC-0001 | ops-route-out-boundary | runbook-only | N | HOW / route-out only; cannot override authority stack |
| CA-TRANSLATE資料參考_合冊B.md | BORROWED_BRIDGE_TO_SYS5 | DOM-SYS5/DOC-0002 | translate-borrowed-bridge-preferred | DOC-0001 integrated precedence | N | borrowed source for WATCH/EXECUTE boundary |
| 多代理設置相關筆記合冊.md | SPECIAL_CHANNEL_EXCLUDED | DOM-SYS5/X-0001 | excluded-by-user-decision | special-channel | N | excluded from active bridge scope |
| skills和智能文件相關筆記合冊.md | SPECIAL_CHANNEL_EXCLUDED | DOM-SYS5/X-0002 | excluded-by-user-decision | special-channel | N | excluded from active bridge scope |
| OpenClaw_工程技術指南_合冊.md | SPECIAL_CHANNEL_EXCLUDED | DOM-SYS5/X-0003 | excluded-by-user-decision | special-channel | N | excluded from active bridge scope |

## 5. domain doc map

| bridge_fq_doc_id | source | why_read | read_order | note |
|---|---|---|---|---|
| GCERM-V220R1 | Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文r1.md | owner/bridge/support lookup | 1 | home ownership, stable_id, topology, central obligations |
| SOMOC-SR-MAIN.v2026.03.13-r3 | Spartoi-OMOC_系統需求正文r3.md | owner/bridge/support lookup | 2 | system positioning, slot taxonomy, fail-closed rules |
| CMP-01 | Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊.md | owner/bridge/support lookup | 3 | Package B/E owner route-out and engineering guide |
| DOM-SYS5/DOC-0001 | Ops RUNBOOK_合冊.md | owner/bridge/support lookup | 4 | HOW / route-out only; cannot override authority stack |
| DOM-SYS5/DOC-0002 | CA-TRANSLATE資料參考_合冊B.md | owner/bridge/support lookup | 5 | borrowed source for WATCH/EXECUTE boundary |
| DOM-SYS5/X-0001 | 多代理設置相關筆記合冊.md | owner/bridge/support lookup | 6 | excluded from active bridge scope |
| DOM-SYS5/X-0002 | skills和智能文件相關筆記合冊.md | owner/bridge/support lookup | 7 | excluded from active bridge scope |
| DOM-SYS5/X-0003 | OpenClaw_工程技術指南_合冊.md | owner/bridge/support lookup | 8 | excluded from active bridge scope |

## 6. central正文 / system正文 / domain資料 的三向映射表

| central_clause | sr_clause | domain_data | affected_subsystems | owner | disposition | evidence_ptr |
|---|---|---|---|---|---|---|
| GCERM §9.5 / §13.10~§13.15 | SR §9.10~§9.15 + §10.4 | Ops RUNBOOK route-out + CA-TRANSLATE B borrowed bridge + special-channel exclusion | CA-WATCH, CA-EXECUTE, CA-COLLAB, CA-UI, CA-GOVERN | 五子系統 home volume | thin cross-cut layer only; no second backbone or governance engine | GCERM anchors + SR 9.13~9.15 + exclusion decision |

## 7. 該域涉及的 CA / 子系統 / 宏模組 對位表

| subsystem_id | display_name | macro_module_name | system_positioning | canonical_deliverable |
|---|---|---|---|---|
| CA-WATCH | 盯盤 | O.Operate-XQ | 盤中 radar-only 觀測與事件記錄 owner，不是下單端。 | `watch logs, signal packet, handoff signal, route_mode-marked monitoring output` |
| CA-EXECUTE | 操盤/HITL交接 | O.Operate-XQ | XQ 落地前 HITL handoff / approval trace owner，不是本地下單器。 | `approval_log.json, execute handoff pack, safety / kill-switch events, event ledger refs` |
| CA-COLLAB | 多AI協作 | G.Govern-UI-Collab | 多 AI/LLM 協作 bundle、session log、slot/provider traceability owner。 | ``CollabBundle.zip`, `collab_session_*.json`, `review_matrix.tsv`, `integration_notes.md`, `slot_usage_manifest.json`` |
| CA-UI | 受控單一入口 | G.Govern-UI-Collab | 全部子系統的受控單一入口與 evidence 可視化 owner。 | ``UIProfilePack/`, `ui_profile_manifest.json`, `ui_smoke_record.json`, `visible_evidence_state.json`, `backpaste_verification_log.json`（若啟用桌面 / Windows profile）` |
| CA-GOVERN | 治理/索引/收納 | G.Govern-UI-Collab | 最小治理、索引、收納與降級決策落盤 owner，不是第二治理引擎。 | `GovPack, manifest.json, gate_report.json, evidence_index.json, run ledger rows` |

## 8. owner route-out 表

| need | owner_doc | when_to_route | forbidden_rewrite | evidence_requirement |
|---|---|---|---|---|
| runtime operation / click-path / handoff HOW | Ops RUNBOOK | 任何操作步驟或前台流程 | 本冊不得寫 HOW 憲法 | runbook anchor |
| schema / validator / release guard | Package B / Package E | 宣稱 schema closure / validator pass / release-ready | 本冊不得代 owner 裁決 | owner output + required checks |

## 9. 可直接供後續 AI 提取的 reference pack

| subsystem_id | minimum_sources | minimum_artifacts | owner_route_out | fail_closed_note |
|---|---|---|---|---|
| CA-WATCH | `Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文r1.md; Spartoi-OMOC_系統需求正文r3.md; Spartoi-OMOC_SSOT_合冊.md | `watch logs, signal packet, handoff signal, route_mode-marked monitoring output` | Package E（MC4/WP / validator / release guard）; Package B（schema / manifest / evidence schema）; Ops/Dev HOW owners（流程） | 任何直接下單語義、缺事件日誌、無 route\_mode，即 FAIL。 |
| CA-EXECUTE | `Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文r1.md; Spartoi-OMOC_系統需求正文r3.md; Spartoi-OMOC_SSOT_合冊.md | `approval_log.json, execute handoff pack, safety / kill-switch events, event ledger refs` | Package E（MC4/WP / validator / release guard）; Package B（schema / manifest / evidence schema）; Ops/Dev HOW owners（流程） | 無 approval trace、嘗試 unattended execute、破壞 XQ sole endpoint，即 FAIL。 |
| CA-COLLAB | `Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文r1.md; Spartoi-OMOC_系統需求正文r3.md; Spartoi-OMOC_SSOT_合冊.md | ``CollabBundle.zip`, `collab_session_*.json`, `review_matrix.tsv`, `integration_notes.md`, `slot_usage_manifest.json`` | Package E（MC4/WP / validator / release guard）; Package B（schema / manifest / evidence schema）; Ops/Dev HOW owners（流程） | bundle 不可解析、hash 不一致、session log 缺失，即 FAIL。 |
| CA-UI | `Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文r1.md; Spartoi-OMOC_系統需求正文r3.md; Spartoi-OMOC_SSOT_合冊.md | ``UIProfilePack/`, `ui_profile_manifest.json`, `ui_smoke_record.json`, `visible_evidence_state.json`, `backpaste_verification_log.json`（若啟用桌面 / Windows profile）` | Package E（MC4/WP / validator / release guard）; Package B（schema / manifest / evidence schema）; Ops/Dev HOW owners（流程） | 需額外 hidden launcher、evidence 不可視、核心流程仍需另開 PY/PS7 才能完成，即 FAIL。 |
| CA-GOVERN | `Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文r1.md; Spartoi-OMOC_系統需求正文r3.md; Spartoi-OMOC_SSOT_合冊.md | `GovPack, manifest.json, gate_report.json, evidence_index.json, run ledger rows` | Package E（MC4/WP / validator / release guard）; Package B（schema / manifest / evidence schema）; Ops/Dev HOW owners（流程） | run\_id 缺失、manifest 缺欄、索引缺失，即 FAIL。 |

## 10. conflict / gap / quarantine / fail-closed 區

### 10.1 conflict ledger

| conflict_id | higher_authority | lower_authority | topic | adjudication | status |
|---|---|---|---|---|---|
| CFL-001 | User highest decision | earlier bridge scope assumption | 五子系統特例資料是否納入本版橋接索引 | 三份特例資料改列 EXCLUDED_BY_USER_DECISION，另走 special channel；本版不映射、不索引內容 | CLOSED |
| CFL-002 | 中央工程正文r1 | Pipeline-C 的本地執行延伸解讀 | Pipeline-C 終點與 WATCH / EXECUTE 地位 | Pipeline-C 終點固定為 CA-TRANSLATE；WATCH / EXECUTE 僅 runtime boundary / HITL handoff，不得當本地 execution engine | CLOSED |
| CFL-004 | CA-TRANSLATE資料參考_合冊B precedence | CA-TRANSLATE A/B support ladder | TRANSLATE/WATCH/EXECUTE 綜合借引優先序 | TRANSLATE/WATCH/EXECUTE 的綜合借引以 CA-TRANSLATE資料參考_合冊B DOC-0001 為先；A 與 B 其餘文檔降為 support ladder | CLOSED |
| CFL-006 | Review remediation + SR §9.13~§9.15 | r3 route pack copy-paste drift | CA-COLLAB / CA-UI / CA-GOVERN obligations swapped | 本版按 SR 9.13~§9.15 重填三者 system requirements obligations 與 system_positioning | CLOSED |

### 10.2 gap register

| gap_id | missing_source | impact | fallback | disposition | status |
|---|---|---|---|---|---|
| GAP-001 | owner validators / release guard execution evidence | 不能宣稱 execution-ready / release-ready | 維持 DOCUMENT_PASS / EXECUTION_FAIL_CLOSED | CR_OPEN | OPEN |
| GAP-002 | TA / SELECT confidence thresholds final owner grant | 不得把 confidence numbers 升格為 final release gates | CONFIGURE_REQUIRED | threshold register owner route-out | OPEN |
| GAP-003 | TRANSLATE parity profile / XQ capability profile owner-final values | 不得宣稱 parity-ready 或 capability-closure | CONFIGURE_REQUIRED | CA-TRANSLATE + Package B/E route-out | OPEN |
| GAP-004 | Owner schema / manifest / gate registry final field definitions | bridge sidecar seeds 不能冒充 owner schema | route-out to Package B / LBP-B(ICD) | CR_OPEN | OPEN |

### 10.3 quarantine notes

- support-only / data-only / route-out-only 不得升格為 normative。
- exact_claim_allowed = N 的列，只可作 doc-level bridge，不得冒充 exact clause absorbed。
- special-channel exclusions remain active; do not retroactively absorb excluded docs.

## 11. retrieval quick path

- 先讀 01 §4 → 05 §4 source inventory → 05 §6 三向映射 → 08 route packs for WATCH/EXECUTE/COLLAB/UI/GOVERN
- 任何 HOW / click-path / UI launcher / runtime step 一律 route-out

## 12. 嚴禁越權條款

- 本冊不得變成新的中央正文 / 系統需求正文 / SSOT / LBP / Package owner spec。
- 本冊不得代寫 MC4 / WP / schema / validator / release guard / HOW。
- 本冊不得把 support-only / data-only 文件升格為 owner source。
- 本冊不得在沒有 owner proof 時宣稱 release-ready。


<!-- END 05_BRIDGE_SYS5.md -->


<!-- BEGIN 06_SOURCE_AUTHORITY_CROSSWALK.md -->

# 06_SOURCE_AUTHORITY_CROSSWALK

> Status: DOCUMENT_PASS / EXECUTION_FAIL_CLOSED
> Build revision: r4

## A. Authority Crosswalk

| topic | single_owner | controlling_doc | forbidden_move | route_out_target |
|---|---|---|---|---|
| Bridge layer legal position | Derived bridge only | Central + SR + blueprint r2 | 將 Master Spine 升格為第三本正文 / SSOT / owner spec | n/a |
| Authority stack | Central > SR > SSOT > LBP > Pack A-E > SubP1 > OMOC > reference plans | 中央工程正文r1 + 系統需求正文r3 + user task order | 低序位反寫高序位 | central / SR |
| 15CA whitelist / stable_id / macro modules | 中央工程正文r1 | GCERM-V220R1-07-15CA-NAMING | 新增第16子系統 / 改 stable_id | central / ARCH |
| Toolchain slot taxonomy | 系統需求正文r3 | SOMOC-SR-MAIN.v2026.03.13-r3 §6.1~6.2 | 把 Codespaces 寫回主路線；把 provider/execution slot 混為一談 | SR + Dev/Ops HOW |
| Pipeline topology and sys5 boundary | 中央工程正文r1 / 系統需求正文r3 | GCERM §9 / SR §10 | 把 WATCH/EXECUTE 當本地下單引擎；把五子系統寫成第二主幹 | central / SR |
| Schema / manifest / validator / release guard | Package B / Package E / LBP-B(ICD) | CMP-01/DOC-0002 + CMP-01/DOC-0005 + CMP-03/DOC-0002 | 橋接層自行定 schema / validator / release policy | owner docs |
| MC4 / WP.Master text | Package E | CMP-01/DOC-0005 | 橋接層代寫 normative MC4/WP | Package E |
| Ops / Dev HOW | Ops/Dev runbooks and execution/factory packs | Ops RUNBOOK + CMP-01/DOC-0003~0004 + DOC-0006 | 橋接層把 HOW 寫入自身 | HOW owners |
| Special-channel data scope | User highest decision | current task order | 把 special-channel docs 說成已吸收進 active bridge scope | special-channel patch only |

## B. Toolchain Precision Table

| category | canonical_name | legal_status | role | forbidden_misread |
|---|---|---|---|---|
| 主路線 | Local VS + Docker / DevContainer + GitHub repo | ACTIVE_PRIMARY | main reading/edit/execute/index carrier | 不得簡化成 generic local+AI 或把 Codespaces 升成主路線 |
| 執行槽位 | OpenCode | ACTIVE_EXECUTION_SLOT | execution slot for collaboration / generation / review | 不是 SSOT，不是 owner |
| 執行槽位 | Oh My OpenCode | ACTIVE_EXECUTION_SLOT | execution slot for collaboration / generation / review | 不是 SSOT，不是 owner |
| 模型供給側槽位 | GitHub Copilot PRO | ACTIVE_PROVIDER_SLOT | provider-side model supply slot | 不得覆寫 artifact/schema/gate ownership |
| fallback only | GitHub Codespaces | ACTIVE_FALLBACK_ONLY | bootstrap / reproduce / fallback environment | 不得寫成現行主路線 |

## C. Source Inventory Ledger

| source_name | role | authority_rank | found_status | alias | notes |
|---|---|---|---|---|---|
| Master_Spine_藍圖_升級版_v2026.03.15-r2.md | BASELINE_DESIGN | n/a | FOUND | Master_Spine_藍圖_升級版_v2026.03.15-r2.md | active input |
| 橋接索引規格書_藍圖筆記-1.md | DESIGN_RECORD | n/a | FOUND | 橋接索引規格書_藍圖筆記-1.md | active input |
| 橋接索引規格書_藍圖筆記-2.md | DESIGN_RECORD | n/a | FOUND | 橋接索引規格書_藍圖筆記-2.md | active input |
| 橋接索引規格書_藍圖筆記-3.md | DESIGN_RECORD | n/a | FOUND | 橋接索引規格書_藍圖筆記-3.md | active input |
| 橋接索引規格書_藍圖筆記-4.md | DESIGN_RECORD | n/a | FOUND | 橋接索引規格書_藍圖筆記-4.md | active input |
| Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文r1.md | PRIMARY_NORM | 1/2 | FOUND | Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文r1.md | active input |
| Spartoi-OMOC_系統需求正文r3.md | PRIMARY_NORM | 1/2 | FOUND | Spartoi-OMOC_系統需求正文r3.md | active input |
| Spartoi-OMOC_SSOT_合冊.md | NORMATIVE_ROOT | 3~8 | FOUND | Spartoi-OMOC_SSOT_合冊.md | active input |
| Spartoi-OMOC_LBP_合冊.md | NORMATIVE_ROOT | 3~8 | FOUND | Spartoi-OMOC_LBP_合冊.md | active input |
| Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊.md | NORMATIVE_ROOT | 3~8 | FOUND | Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊.md | active input |
| Spartoi-OMOC_SubP1-LITE+MVP_合冊.md | NORMATIVE_ROOT | 3~8 | FOUND | Spartoi-OMOC_SubP1-LITE+MVP_合冊.md | active input |
| OMOC_合冊.md | NORMATIVE_ROOT | 3~8 | FOUND | OMOC_合冊.md | active input |
| 參考方案合冊.md | LOW_TIER_REFERENCE | 8 | FOUND | 參考方案合冊.md | active input |
| Ops RUNBOOK_合冊.md | ROUTE_OUT_ONLY | route-out-only | FOUND | Ops RUNBOOK_合冊.md | active input |
| SEM³資料參考_合冊.md | SUPPORT_ONLY | support-only | FOUND | SEM³資料參考_合冊.md | active input |
| Pipeline-A設計資料參考_合冊.md | PRIMARY_BRIDGE_A | domain | FOUND | Pipeline-A設計資料參考_合冊.md | active input |
| Pipeline-A實作資料參考_合冊.md | PRIMARY_BRIDGE_A_IMPL | domain | FOUND | Pipeline-A實作資料參考_合冊.md | active input |
| 台股實戰映射_合冊.md | SUPPORT_ONLY | support-only | FOUND | 台股實戰映射_合冊.md | active input |
| 多模態多向量圖像檢索技術指南_筆記.txt | SUPPORT_ONLY | support-only | FOUND | 多模態多向量圖像檢索技術指南_筆記.txt | active input |
| Pipeline-B資料參考_合冊.md | PRIMARY_BRIDGE_B | domain | FOUND | Pipeline-B資料參考_合冊.md | active input |
| Pipeline-B&C資料參考_合冊.md | BORROWED_BRIDGE_BC | domain | FOUND | Pipeline-B&C資料參考_合冊.md | active input |
| 台股歷史資料庫實作參考_合冊.md | SUPPORT_ONLY/DATA_SUBSTRATE | n/a | FOUND | 台股歷史資料庫實作參考_合冊.md | active input |
| Pipeline-C資料參考_合冊.md | PRIMARY_BRIDGE_C | domain | FOUND | Pipeline-C資料參考_合冊.md | active input |
| CA-TRANSLATE資料參考_合冊A.md | SUPPORT_BRIDGE_C | domain | FOUND | CA-TRANSLATE資料參考_合冊A.md | active input |
| CA-TRANSLATE資料參考_合冊B.md | PRIMARY_BRIDGE_C/BORROWED_TO_SYS5 | domain | FOUND | CA-TRANSLATE資料參考_合冊B.md | active input |
| 2022 ICT Mentorship 技術指南合冊_v2.md | SUPPORT_ONLY/DATA_ONLY | support-only | FOUND | 2022 ICT Mentorship 技術指南合冊_v2.md | active input |
| Spartoi-OMOC_Master_Spine_Review_Full_Monolith.md | REVIEW_INPUT | review-only | FOUND | Spartoi-OMOC_Master_Spine_Review_Full_Monolith.md | active input |
| 00_README_REVIEW_INDEX.md | REVIEW_INPUT | review-only | FOUND | 00_README_REVIEW_INDEX.md | active input |
| 01_EXECUTIVE_VERDICT.md | REVIEW_INPUT | review-only | FOUND | 01_EXECUTIVE_VERDICT.md | active input |
| 02_SCOPE_AUTHORITY_BOUNDARY_AUDIT.md | REVIEW_INPUT | review-only | FOUND | 02_SCOPE_AUTHORITY_BOUNDARY_AUDIT.md | active input |
| 03_BLUEPRINT_ALIGNMENT_AUDIT.md | REVIEW_INPUT | review-only | FOUND | 03_BLUEPRINT_ALIGNMENT_AUDIT.md | active input |
| 04_DOMAIN_SUBSYSTEM_COVERAGE_AUDIT.md | REVIEW_INPUT | review-only | FOUND | 04_DOMAIN_SUBSYSTEM_COVERAGE_AUDIT.md | active input |
| 05_STRUCTURE_LOGIC_ENGINEERING_AUDIT.md | REVIEW_INPUT | review-only | FOUND | 05_STRUCTURE_LOGIC_ENGINEERING_AUDIT.md | active input |
| 06_RISK_DRIFT_DESTRUCTIVE_AUDIT.md | REVIEW_INPUT | review-only | FOUND | 06_RISK_DRIFT_DESTRUCTIVE_AUDIT.md | active input |
| 07_PATCH_SKELETONS.md | REVIEW_INPUT | review-only | FOUND | 07_PATCH_SKELETONS.md | active input |
| 08_FAILCLOSED_EVIDENCE_REGISTERS.md | REVIEW_INPUT | review-only | FOUND | 08_FAILCLOSED_EVIDENCE_REGISTERS.md | active input |
| 多代理設置相關筆記合冊.md | SPECIAL_CHANNEL_EXCLUDED | n/a | EXCLUDED_BY_USER_DECISION | 多代理設置相關筆記合冊.md | special channel only |
| skills和智能文件相關筆記合冊.md | SPECIAL_CHANNEL_EXCLUDED | n/a | EXCLUDED_BY_USER_DECISION | skills和智能文件相關筆記合冊.md | special channel only |
| OpenClaw_工程技術指南_合冊.md | SPECIAL_CHANNEL_EXCLUDED | n/a | EXCLUDED_BY_USER_DECISION | OpenClaw_工程技術指南_合冊.md | special channel only |
| spine_delivery_20260315_r3/00_README_DELIVERY_INDEX.md | SUPERSEDED_BASELINE | n/a | SUPERSEDED | 00_README_DELIVERY_INDEX.md | used as local baseline only |
| spine_delivery_20260315_r3/01_MASTER_SPINE.md | SUPERSEDED_BASELINE | n/a | SUPERSEDED | 01_MASTER_SPINE.md | used as local baseline only |
| spine_delivery_20260315_r3/02_BRIDGE_PIPELINE_A.md | SUPERSEDED_BASELINE | n/a | SUPERSEDED | 02_BRIDGE_PIPELINE_A.md | used as local baseline only |
| spine_delivery_20260315_r3/03_BRIDGE_PIPELINE_B.md | SUPERSEDED_BASELINE | n/a | SUPERSEDED | 03_BRIDGE_PIPELINE_B.md | used as local baseline only |
| spine_delivery_20260315_r3/04_BRIDGE_PIPELINE_C.md | SUPERSEDED_BASELINE | n/a | SUPERSEDED | 04_BRIDGE_PIPELINE_C.md | used as local baseline only |
| spine_delivery_20260315_r3/05_BRIDGE_SYS5.md | SUPERSEDED_BASELINE | n/a | SUPERSEDED | 05_BRIDGE_SYS5.md | used as local baseline only |
| spine_delivery_20260315_r3/06_SOURCE_AUTHORITY_CROSSWALK.md | SUPERSEDED_BASELINE | n/a | SUPERSEDED | 06_SOURCE_AUTHORITY_CROSSWALK.md | used as local baseline only |
| spine_delivery_20260315_r3/07_CONFLICT_GAP_TT_REGISTER.md | SUPERSEDED_BASELINE | n/a | SUPERSEDED | 07_CONFLICT_GAP_TT_REGISTER.md | used as local baseline only |
| spine_delivery_20260315_r3/08_SUBSYSTEM_ROUTE_PACKS.md | SUPERSEDED_BASELINE | n/a | SUPERSEDED | 08_SUBSYSTEM_ROUTE_PACKS.md | used as local baseline only |
| spine_delivery_20260315_r3/Spartoi-OMOC_Master_Spine_Full_Monolith.md | SUPERSEDED_BASELINE | n/a | SUPERSEDED | Spartoi-OMOC_Master_Spine_Full_Monolith.md | used as local baseline only |
| spine_delivery_20260315_r3/Spartoi-OMOC_Master_Spine_Package.zip | SUPERSEDED_BASELINE | n/a | SUPERSEDED | Spartoi-OMOC_Master_Spine_Package.zip | used as local baseline only |

## D. Central × SR × Domain Master Matrix

| central_clause | sr_clause | domain | affected_subsystems | owner | disposition | evidence_ptr |
|---|---|---|---|---|---|---|
| GCERM §3 / §4 / §5 | SR §1~§3 | ALL | ALL | Central + SR | bridge only, not new law | central intro / SR intro / authority stack |
| GCERM §5 | SR §6 | ALL | ALL | SR for toolchain ruling | ACTIVE_PRIMARY=Local VS + Docker/DevContainer + GitHub repo; Codespaces fallback only; execution slot/provider slot separated | GCERM toolchain + SR §6.1~§6.2 |
| GCERM §7 / §12 / §13 | SR §8 / §9 | ALL | 15 subsystems | Central / SR | stable_id / macro / role / deliverable / gate / fail-closed extracted into route packs | GCERM 15CA tables + SR subsystem sections |
| GCERM §9.2 | SR §10.1 | Pipeline-A | CA-WRC, CA-CORPUS, CA-DISTILL, CA-DSL | Pipeline-A home volume | PRIMARY_BRIDGE_A + impl + support corpora + 2022 ICT support-only | Pipeline-A設計 / 實作 + SEM³ + 台股實戰映射 + 2022 ICT |
| GCERM §9.3 | SR §10.2 | Pipeline-B | CA-METHOD, CA-BACKTEST, CA-PERFORM | Pipeline-B home volume | Pipeline-B主橋接 + B&C borrowed bridge + DOM-B/DOC-0006 precedence row | Pipeline-B main doc + DOM-B/DOC-0006 + 2022 ICT |
| GCERM §9.4 | SR §10.3 | Pipeline-C | CA-TA, CA-SELECT, CA-TRANSLATE | Pipeline-C home volume | Pipeline-C merged + CA-TRANSLATE B preferred + A support + 2022 ICT support-only | Pipeline-C main doc + DOM-C/DOC-0002 + 2022 ICT |
| GCERM §9.5 | SR §10.4 | 五子系統 | CA-WATCH, CA-EXECUTE, CA-COLLAB, CA-UI, CA-GOVERN | 五子系統 home volume | Ops route-out + CA-TRANSLATE B borrowed bridge + special-channel exclusions honored | Ops RUNBOOK + DOM-SYS5/DOC-0002 + exclusion boundary |
| GCERM §8 / §9.6 | SR §7 / §10.5 | ALL | Data backbone consumers | Central data backbone | ReferenceDB + RunLedger central; Pipeline C / Sys5 consume only | GCERM §8.2 / §9.6 + SR §7 |

## E. 15 Subsystems × 4 Domains Matrix

| subsystem | pipeline_a | pipeline_b | pipeline_c | sys5 | owner | notes |
|---|---|---|---|---|---|---|
| CA-WRC | HOME | — | — | — | Pipeline-A | 系統知識進場的白名單蒐集、來源分級與 provenance 固化 owner。 |
| CA-CORPUS | HOME | — | — | — | Pipeline-A | 可追溯語料快照與混合檢索政策的正式 owner。 |
| CA-DISTILL | HOME | — | — | — | Pipeline-A | 把語料收斂為可回指 claim / evidence / distill bundle 的正式 owner。 |
| CA-DSL | HOME | — | — | — | Pipeline-A | 市場中立、平台中立原語與 DSL formalization 的正式 owner。 |
| CA-METHOD | USE | HOME | — | — | Pipeline-B | 把 primitive/evidence 收斂為可回測、可轉譯、可審查方法包的正式 owner。 |
| CA-BACKTEST | — | HOME | — | — | Pipeline-B | MethodCard 的回測、衛生與可重播性驗證 owner。 |
| CA-TA | — | USE | HOME | — | Pipeline-C | 由 MethodCard 與市場資料生成 AnalysisPack / StoryCard 的正式 owner。 |
| CA-SELECT | — | USE | HOME | — | Pipeline-C | 把分析結果與成本/流動性約束轉成候選清單與理由的正式 owner。 |
| CA-TRANSLATE | — | USE | HOME | — | Pipeline-C | 中立 DSL 到 XS 的唯一轉譯與 parity/capability profile owner。 |
| CA-WATCH | — | — | USE | HOME | 五子系統 | 盤中 radar-only 觀測與事件記錄 owner，不是下單端。 |
| CA-EXECUTE | — | — | USE | HOME | 五子系統 | XQ 落地前 HITL handoff / approval trace owner，不是本地下單器。 |
| CA-PERFORM | — | HOME | — | — | Pipeline-B | 全鏈路事後績效與 uplift proposal owner，但不得改寫方法 owner。 |
| CA-COLLAB | USE | USE | USE | HOME | 五子系統 | 多 AI/LLM 協作 bundle、session log、slot/provider traceability owner。 |
| CA-UI | USE | USE | USE | HOME | 五子系統 | 全部子系統的受控單一入口與 evidence 可視化 owner。 |
| CA-GOVERN | USE | USE | USE | HOME | 五子系統 | 最小治理、索引、收納與降級決策落盤 owner，不是第二治理引擎。 |

## F. Route-Out Register

| need | owner_doc | when_to_route | forbidden_rewrite | evidence_requirement |
|---|---|---|---|---|
| MC4 source pack | CMP-01/DOC-0005 Package E | 任何子系統 MC4 / SS-Lite / WP.Master 文本與欄位定義 | 本橋接層直接撰寫 MC4 / WP 正文 | source_pack + FQ_DOC_ID + anchor + owner review |
| WP.Master source pack | CMP-01/DOC-0005 Package E | 需要落盤 WP.Master / deliverable contract | 本橋接層直接替 owner 決定 validator / release_guard | source_pack + route_out ledger |
| Schema / manifest / gate registry decision | CMP-01/DOC-0002 Package B + CMP-03/DOC-0002 LBP-B(ICD) | 出現 schema 欄位、manifest 欄位、gate registry、triplet schema、evidence schema | 本橋接層新增 schema / gate / threshold | owner locator + exact schema id |
| Dev / Ops HOW | Ops RUNBOOK + CMP-01/DOC-0003~0004 + DOC-0006 | 任何操作步驟、CI、workflow、launcher、checks、jobcard、按鍵/CLI | 本橋接層把 HOW 憲法化 | route_out target + stage / doc anchor |
| Release guard / validator adjudication | CMP-01/DOC-0005 Package E | 宣稱 release-ready、validator pass、closure pass | 本橋接層自行宣布放行 | validator output + required checks + release guard verdict |

## G. Compendium Registry（40-doc direct inventory）

| fq_doc_id | title | role | compendium | binding |
|---|---|---|---|---|
| CMP-01/DOC-0001 | Governance / Index Pack（Package A） | ENTRY / DERIVED | Pack A-E+工程指南 | route-out and derived-index boundary |
| CMP-01/DOC-0002 | Package B — Control Plane Pack | OWNER CONTRACT | Pack A-E+工程指南 | schema / gate registry / TT engine owner |
| CMP-01/DOC-0003 | Execution Pack | OWNER CONTRACT | Pack A-E+工程指南 | execution / handoff pack owner |
| CMP-01/DOC-0004 | Factory Pack | OWNER CONTRACT | Pack A-E+工程指南 | workflow / checks / factory owner |
| CMP-01/DOC-0005 | Subsystem Delivery Pack（Package E） | OWNER CONTRACT | Pack A-E+工程指南 | MC4 / WP.Master / validator / release guard owner |
| CMP-01/DOC-0006 | 工程指南 | OWNER HOW | Pack A-E+工程指南 | engineering guide / route-out |
| CMP-02/DOC-0001 | README (RDM v2.2.0) | REFERENCE | SSOT | entry / route-out / AI reader guide |
| CMP-02/DOC-0002 | ARCH v8.1.0 | NORMATIVE | SSOT | 15CA registry / topology / C4 |
| CMP-02/DOC-0003 | MIP v2.2.0 | NORMATIVE | SSOT | authority / TT / fail-closed |
| CMP-02/DOC-0004 | SRS v8.1.0 | NORMATIVE | SSOT | gate dictionary / evidence triplet |
| CMP-02/DOC-0005 | Upgrade Resolution Report | NORMATIVE RECORD | SSOT | replaceability / upgrade evidence |
| CMP-02/DOC-0006 | ops RB + WI | EXECUTION | SSOT | Ops HOW route-out |
| CMP-02/DOC-0007 | dev RB + WI | EXECUTION | SSOT | Dev HOW route-out |
| CMP-03/DOC-0001 | LBP-A (SIR) | NORMATIVE | LBP | system intent / scenario interpretation |
| CMP-03/DOC-0002 | LBP-B (ICD) | NORMATIVE | LBP | schema / contract / registry |
| CMP-03/DOC-0003 | LBP-C (ADR) | NORMATIVE | LBP | decision records |
| CMP-03/DOC-0004 | LBP-D (C4) | NORMATIVE | LBP | architecture / boundaries |
| CMP-03/DOC-0005 | LBP-E (Fitness) | NORMATIVE | LBP | metrics / acceptance fitness |
| CMP-04/DOC-0001 | RIP方案 | PLAN / DATA | SubP1-LITE+MVP | implementation strategy supplement |
| CMP-04/DOC-0002 | MVP Spine 最小實作包 | IMPLEMENTATION | SubP1-LITE+MVP | spine implementation |
| CMP-04/DOC-0003 | Walking Skeleton Pack | IMPLEMENTATION | SubP1-LITE+MVP | walking skeleton closure |
| CMP-04/DOC-0004 | Dev RUNBOOK + WI | HOWTO | SubP1-LITE+MVP | Dev route-out |
| CMP-04/DOC-0005 | Ops RUNBOOK + WI | HOWTO | SubP1-LITE+MVP | Ops route-out |
| CMP-04/DOC-0006 | Control Plane / Spine | CONTROL-PLANE DESIGN | SubP1-LITE+MVP | control-plane bridge only |
| CMP-04/DOC-0007 | SubP1 Blueprint | BLUEPRINT | SubP1-LITE+MVP | legacy blueprint supplement |
| CMP-05/DOC-0001 | OMOC 實作+WP總表 | PLAN / SUPPORT | OMOC | WP/Gate/TT engineering style |
| CMP-05/DOC-0002 | OMOC 施工 RB+WI | HOWTO / SUPPORT | OMOC | HOW style support |
| CMP-05/DOC-0003 | OMOC 施工 skills | SUPPORT | OMOC | skills / docops thought supplement |
| CMP-05/DOC-0004 | OMOC 總體 RIP 修補方案 | SUPPORT | OMOC | historical repair comparison |
| CMP-05/DOC-0005 | OMOC Blueprint | SUPPORT / DESIGN | OMOC | legacy blueprint mapping |
| CMP-05/DOC-0006 | OMOC-MVU Lane-F 驗收 RB+WI | SUPPORT / ACCEPTANCE | OMOC | acceptance style reference |
| CMP-09/DOC-0001 | Spartoi-OMOC(15 CA)重構升級藍圖v0.2.0-r1 | NORMATIVE / LOW-TIER | 參考方案 | 15CA reconstruction blueprint |
| CMP-09/DOC-0002 | Spartoi-OMOC_子系統重構藍圖 | DESIGN | 參考方案 | subsystem reconstruction design |
| CMP-09/DOC-0003 | 子系統「顯示名_宏模組名」改名方案 | NORMATIVE / LOW-TIER | 參考方案 | display/macro naming support |
| CMP-09/DOC-0004 | 五子系統組合方案 | NORMATIVE / LOW-TIER | 參考方案 | sys5 grouping source |
| CMP-09/DOC-0005 | Spartoi｜SubP1-LITE+MVP 開發 RUNBOOK & WI_v1.4.0 | HOWTO | 參考方案 | older runbook reference |
| CMP-09/DOC-0006 | Pipeline-A_組合方案 v2 | IMPLEMENTATION | 參考方案 | Pipeline-A design intent |
| CMP-09/DOC-0007 | Pipeline-B 組合方案 v2 | IMPLEMENTATION | 參考方案 | Pipeline-B design intent |
| CMP-09/DOC-0008 | Pipeline-C組合方案 | IMPLEMENTATION | 參考方案 | Pipeline-C design intent |
| CMP-09/DOC-0009 | Pipeline-A+B 整合資料庫方案 | IMPLEMENTATION | 參考方案 | ReferenceDB / RunLedger / A+B DB design intent |

## H. Alias Ledger

| requested | canonical | note |
|---|---|---|
| Master_Spine_藍圖_升級版_v2026.03.15-r2 | Master_Spine_藍圖_升級版_v2026.03.15-r2.md | extension normalization |
| Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文r1 | Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文r1.md | extension normalization |
| Spartoi-OMOC_系統需求正文r3 | Spartoi-OMOC_系統需求正文r3.md | extension normalization |
| 多模態多向量圖像檢索技術指南_筆記 | 多模態多向量圖像檢索技術指南_筆記.txt | extension normalization |
| old r3 spine package | spine_delivery_20260315_r3/* | superseded local baseline |

## I. Packaging Manifest（bridge package view）

| filename | role | depends_on | included_in_zip | status |
|---|---|---|---|---|
| 00_README_DELIVERY_INDEX.md | top-level artifact | source set + generated sidecars | YES | GENERATED |
| 01_MASTER_SPINE.md | top-level artifact | source set + generated sidecars | YES | GENERATED |
| 02_BRIDGE_PIPELINE_A.md | top-level artifact | source set + generated sidecars | YES | GENERATED |
| 03_BRIDGE_PIPELINE_B.md | top-level artifact | source set + generated sidecars | YES | GENERATED |
| 04_BRIDGE_PIPELINE_C.md | top-level artifact | source set + generated sidecars | YES | GENERATED |
| 05_BRIDGE_SYS5.md | top-level artifact | source set + generated sidecars | YES | GENERATED |
| 06_SOURCE_AUTHORITY_CROSSWALK.md | top-level artifact | source set + generated sidecars | YES | GENERATED |
| 07_CONFLICT_GAP_TT_REGISTER.md | top-level artifact | source set + generated sidecars | YES | GENERATED |
| 08_SUBSYSTEM_ROUTE_PACKS.md | top-level artifact | source set + generated sidecars | YES | GENERATED |
| 09_MACHINE_BLOCKS_AND_SIDECAR_MANIFEST.md | top-level artifact | source set + generated sidecars | YES | GENERATED |
| Spartoi-OMOC_Master_Spine_Full_Monolith.md | top-level artifact | source set + generated sidecars | YES | GENERATED |
| Spartoi-OMOC_Master_Spine_Package.zip | top-level artifact | source set + generated sidecars | self | GENERATED |

<!-- END 06_SOURCE_AUTHORITY_CROSSWALK.md -->


<!-- BEGIN 07_CONFLICT_GAP_TT_REGISTER.md -->

# 07_CONFLICT_GAP_TT_REGISTER

> Status: DOCUMENT_PASS / EXECUTION_FAIL_CLOSED
> Build revision: r4

## 1. Remediation Closure Table

| review_item | status | resolution | evidence |
|---|---|---|---|
| CA-COLLAB / CA-UI / CA-GOVERN obligations swapped | FIXED | 08 route packs corrected from SR §9.13~§9.15 | 08_SUBSYSTEM_ROUTE_PACKS.md + 01 condensed cards |
| 15 condensed cards missing system_positioning | FIXED | 15/15 condensed cards now contain minimal formal positioning lines | 01_MASTER_SPINE.md §10 |
| generic toolchain drift | FIXED | 06 toolchain taxonomy now explicitly lists Local VS, Docker / DevContainer, GitHub repo, OpenCode, Oh My OpenCode, GitHub Copilot PRO, Codespaces fallback only | 06_SOURCE_AUTHORITY_CROSSWALK.md |
| blueprint sidecar / machine blocks not landed | FIXED_WITH_SCOPE_LOCK | 09 added and actual sidecar files generated under registries/contracts/scripts/ci/machine | 09_MACHINE_BLOCKS_AND_SIDECAR_MANIFEST.md + sidecar tree |
| ZIP false closure | FIXED | package ZIP generated, hashed, and listed in artifact proof register | 10_ARTIFACT_PROOF_AND_PACKAGING.md |
| owner-critical locators too generic | PARTIAL_REMEDIATED | owner-critical rows upgraded to FQ_DOC_ID + doc_anchor with exact_claim_allowed flag; exact clause not claimed where source anchor remains weak | 02~05 domain source inventory |
| release-ready may be misread | RETAINED_FAIL_CLOSED | owner validators / required checks not executed; package remains EXECUTION_FAIL_CLOSED | 07_CONFLICT_GAP_TT_REGISTER.md + 10_ARTIFACT_PROOF_AND_PACKAGING.md |

## 2. Conflict Ledger

| conflict_id | higher_authority | lower_authority | topic | adjudication | status |
|---|---|---|---|---|---|
| CFL-001 | User highest decision | earlier bridge scope assumption | 五子系統特例資料是否納入本版橋接索引 | 三份特例資料改列 EXCLUDED_BY_USER_DECISION，另走 special channel；本版不映射、不索引內容 | CLOSED |
| CFL-002 | 中央工程正文r1 | Pipeline-C 的本地執行延伸解讀 | Pipeline-C 終點與 WATCH / EXECUTE 地位 | Pipeline-C 終點固定為 CA-TRANSLATE；WATCH / EXECUTE 僅 runtime boundary / HITL handoff，不得當本地 execution engine | CLOSED |
| CFL-003 | 中央工程正文r1 | 任何 PERFORM 反向立法 METHOD 的解讀 | PERFORM 與 MethodCard owner 邊界 | PERFORM 僅回饋與 uplift proposal，不得直接改定 MethodCard | CLOSED |
| CFL-004 | CA-TRANSLATE資料參考_合冊B precedence | CA-TRANSLATE A/B support ladder | TRANSLATE/WATCH/EXECUTE 綜合借引優先序 | TRANSLATE/WATCH/EXECUTE 的綜合借引以 CA-TRANSLATE資料參考_合冊B DOC-0001 為先；A 與 B 其餘文檔降為 support ladder | CLOSED |
| CFL-005 | Pipeline-B資料參考_合冊 integrated note | older method/backtest fragments | 方法+回測重疊範圍優先文檔 | 方法+回測重疊範圍優先導向 Pipeline-B資料參考_合冊 DOC-0006；原版保留 traceability | CLOSED |
| CFL-006 | Review remediation + SR §9.13~§9.15 | r3 route pack copy-paste drift | CA-COLLAB / CA-UI / CA-GOVERN obligations swapped | 本版按 SR 9.13~§9.15 重填三者 system requirements obligations 與 system_positioning | CLOSED |
| CFL-007 | SR §6.1~§6.2 | generic toolchain wording in old bridge | OpenCode / Oh My OpenCode / GitHub Copilot PRO / Codespaces taxonomy | 本版按 execution slot / provider slot / fallback only 精準重寫工具鏈表 | CLOSED |

## 3. Gap Register

| gap_id | missing_source | impact | fallback | disposition | status |
|---|---|---|---|---|---|
| GAP-001 | owner validators / release guard execution evidence | 不能宣稱 execution-ready / release-ready | 維持 DOCUMENT_PASS / EXECUTION_FAIL_CLOSED | CR_OPEN | OPEN |
| GAP-002 | TA / SELECT confidence thresholds final owner grant | 不得把 confidence numbers 升格為 final release gates | CONFIGURE_REQUIRED | threshold register owner route-out | OPEN |
| GAP-003 | TRANSLATE parity profile / XQ capability profile owner-final values | 不得宣稱 parity-ready 或 capability-closure | CONFIGURE_REQUIRED | CA-TRANSLATE + Package B/E route-out | OPEN |
| GAP-004 | Owner schema / manifest / gate registry final field definitions | bridge sidecar seeds 不能冒充 owner schema | route-out to Package B / LBP-B(ICD) | CR_OPEN | OPEN |

## 4. TT / CR_OPEN / CONFIGURE_REQUIRED / FAIL_CLOSED Register

| id | kind | topic | blocking | state | owner | note |
|---|---|---|---|---|---|---|
| CR-001 | CR_OPEN | owner validators not executed | YES | OPEN | Package E | release-ready claim blocked |
| CFG-001 | CONFIGURE_REQUIRED | TA / SELECT confidence thresholds | NO | OPEN | threshold register owner | numbers cannot be promoted without owner grant |
| CFG-002 | CONFIGURE_REQUIRED | TRANSLATE parity profile / XQ capability profile | NO | OPEN | CA-TRANSLATE owner + Package B/E | cannot claim parity-ready without owner proof |
| CR-002 | CR_OPEN | Package B/E final schema field definitions for sidecar seeds | NO | OPEN | Package B / LBP-B(ICD) / Package E | bridge ships seeds, not owner schema law |
| TT-001 | TT | 若未來把 special-channel docs 併回 bridge scope，必須另起 patch | NO | OPEN | source custodian | 不得 retroactively claim already absorbed |
| FC-001 | FAIL_CLOSED | 無 source / 無 anchor / 無 owner / 無 manifest / 無 evidence | YES | ALWAYS_ON | all consumers | No-Source-No-Norm / No-Anchor-No-Claim |

## 5. Quarantine Rules

- EXCLUDED_BY_USER_DECISION 的 special-channel docs 不得被腦補為已吸收。
- transitive reference 不得被說成 direct clause evidence。
- bridge sidecar seeds 不是 owner schema；Declaration is not implementation。
- artifact exists 與 release-ready 是兩件事；前者存在不代表後者已通過。

## 6. Blocking Summary

- 文件交付：可進行。
- exact clause 吸收：只在 FOUND + anchor 可回讀時成立。
- release-ready：阻斷，直到 owner validators / required checks / release guard 皆有證據。
- current package legal position：可取代 r3 bridge package；不可取代 owner docs。


<!-- END 07_CONFLICT_GAP_TT_REGISTER.md -->


<!-- BEGIN 08_SUBSYSTEM_ROUTE_PACKS.md -->

# 08_SUBSYSTEM_ROUTE_PACKS

> Status: DOCUMENT_PASS / EXECUTION_FAIL_CLOSED
> Rule: one subsystem, one home volume, one owner route-out chain.

## Route Pack Schema

- subsystem_id
- display_name
- macro_module_name
- 所屬主域 / 次域 / 橫切依賴
- primary owner documents
- required upstream docs
- allowed support docs
- forbidden source escalation
- central obligations
- system requirements obligations
- system_positioning
- domain bridge entrypoints
- route-out owner
- expected artifacts
- evidence minimum set
- open gaps
- conflict notes
- fail-closed conditions

## Route Pack Coverage Summary

| subsystem_id | home_domain | system_positioning | route_out_owner |
|---|---|---|---|
| CA-WRC | Pipeline-A | 系統知識進場的白名單蒐集、來源分級與 provenance 固化 owner。 | Package E（MC4/WP / validator / release guard）; Package B（schema / manifest / evidence schema）; Ops/Dev HOW owners（流程） |
| CA-CORPUS | Pipeline-A | 可追溯語料快照與混合檢索政策的正式 owner。 | Package E（MC4/WP / validator / release guard）; Package B（schema / manifest / evidence schema）; Ops/Dev HOW owners（流程） |
| CA-DISTILL | Pipeline-A | 把語料收斂為可回指 claim / evidence / distill bundle 的正式 owner。 | Package E（MC4/WP / validator / release guard）; Package B（schema / manifest / evidence schema）; Ops/Dev HOW owners（流程） |
| CA-DSL | Pipeline-A | 市場中立、平台中立原語與 DSL formalization 的正式 owner。 | Package E（MC4/WP / validator / release guard）; Package B（schema / manifest / evidence schema）; Ops/Dev HOW owners（流程） |
| CA-METHOD | Pipeline-B | 把 primitive/evidence 收斂為可回測、可轉譯、可審查方法包的正式 owner。 | Package E（MC4/WP / validator / release guard）; Package B（schema / manifest / evidence schema）; Ops/Dev HOW owners（流程） |
| CA-BACKTEST | Pipeline-B | MethodCard 的回測、衛生與可重播性驗證 owner。 | Package E（MC4/WP / validator / release guard）; Package B（schema / manifest / evidence schema）; Ops/Dev HOW owners（流程） |
| CA-TA | Pipeline-C | 由 MethodCard 與市場資料生成 AnalysisPack / StoryCard 的正式 owner。 | Package E（MC4/WP / validator / release guard）; Package B（schema / manifest / evidence schema）; Ops/Dev HOW owners（流程） |
| CA-SELECT | Pipeline-C | 把分析結果與成本/流動性約束轉成候選清單與理由的正式 owner。 | Package E（MC4/WP / validator / release guard）; Package B（schema / manifest / evidence schema）; Ops/Dev HOW owners（流程） |
| CA-TRANSLATE | Pipeline-C | 中立 DSL 到 XS 的唯一轉譯與 parity/capability profile owner。 | Package E（MC4/WP / validator / release guard）; Package B（schema / manifest / evidence schema）; Ops/Dev HOW owners（流程） |
| CA-WATCH | 五子系統 | 盤中 radar-only 觀測與事件記錄 owner，不是下單端。 | Package E（MC4/WP / validator / release guard）; Package B（schema / manifest / evidence schema）; Ops/Dev HOW owners（流程） |
| CA-EXECUTE | 五子系統 | XQ 落地前 HITL handoff / approval trace owner，不是本地下單器。 | Package E（MC4/WP / validator / release guard）; Package B（schema / manifest / evidence schema）; Ops/Dev HOW owners（流程） |
| CA-PERFORM | Pipeline-B | 全鏈路事後績效與 uplift proposal owner，但不得改寫方法 owner。 | Package E（MC4/WP / validator / release guard）; Package B（schema / manifest / evidence schema）; Ops/Dev HOW owners（流程） |
| CA-COLLAB | 五子系統 | 多 AI/LLM 協作 bundle、session log、slot/provider traceability owner。 | Package E（MC4/WP / validator / release guard）; Package B（schema / manifest / evidence schema）; Ops/Dev HOW owners（流程） |
| CA-UI | 五子系統 | 全部子系統的受控單一入口與 evidence 可視化 owner。 | Package E（MC4/WP / validator / release guard）; Package B（schema / manifest / evidence schema）; Ops/Dev HOW owners（流程） |
| CA-GOVERN | 五子系統 | 最小治理、索引、收納與降級決策落盤 owner，不是第二治理引擎。 | Package E（MC4/WP / validator / release guard）; Package B（schema / manifest / evidence schema）; Ops/Dev HOW owners（流程） |

## 1. CA-WRC — 白名單廣域蒐集

- subsystem_id: `CA-WRC`
- display_name: `白名單廣域蒐集`
- macro_module_name: `K.Knowledge-Ingest`
- 所屬主域 / 次域 / 橫切依賴: `Pipeline-A` / `—` / `—`
- primary owner documents: `Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文r1.md; Spartoi-OMOC_系統需求正文r3.md; Spartoi-OMOC_SSOT_合冊.md; Spartoi-OMOC_LBP_合冊.md; Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊.md; Pipeline-A設計資料參考_合冊.md; Pipeline-A實作資料參考_合冊.md; 台股實戰映射_合冊.md`
- required upstream docs: `01_MASTER_SPINE.md; 02_BRIDGE_PIPELINE_A.md`
- allowed support docs: `台股實戰映射_合冊.md; SEM³資料參考_合冊.md; 多模態多向量圖像檢索技術指南_筆記.txt; 2022 ICT Mentorship 技術指南合冊_v2.md`
- forbidden source escalation: `將 support-only / data-only 文檔升格為 normative; 把 Ops RUNBOOK 或 HOW 寫成制度 owner; 把 bridge layer 當 MC4 / WP / schema owner`
- central obligations: 角色=教材入口；最低輸入=source\_list, provenance；最低輸出=`input_manifest.json`；主 Gate=`G-SRC[wrc-ingest-profile]`。
- system requirements obligations: CA-WRC 是系統知識進場的第一道正式入口，負責外部教材、研究資料、支持性來源的白名單蒐集、來源可信分級、usage limit 與 provenance 固化。
- system_positioning: 系統知識進場的白名單蒐集、來源分級與 provenance 固化 owner。
- domain bridge entrypoints: Pipeline-A home volume → CA-WRC 條目；見 06_SOURCE_AUTHORITY_CROSSWALK.md 及本節
- route-out owner: Package E（MC4/WP / validator / release guard）; Package B（schema / manifest / evidence schema）; Ops/Dev HOW owners（流程）
- expected artifacts: ``source_registry.json`, `source_tiering_manifest.json`, `provenance_log.ndjson`, `usage_limit_policy.yaml`, `quarantine_register.jsonl``
- evidence minimum set: `manifest \+ gate\_report \+ artifacts`
- open gaps: `owner validators / release guard execution evidence 缺件`
- conflict notes: `—`
- fail-closed conditions: 來源斷鏈、hash 缺失、manifest 缺欄，即 FAIL。

## 2. CA-CORPUS — 教材庫\&RAG

- subsystem_id: `CA-CORPUS`
- display_name: `教材庫\&RAG`
- macro_module_name: `K.Knowledge-Ingest`
- 所屬主域 / 次域 / 橫切依賴: `Pipeline-A` / `—` / `—`
- primary owner documents: `Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文r1.md; Spartoi-OMOC_系統需求正文r3.md; Spartoi-OMOC_SSOT_合冊.md; Spartoi-OMOC_LBP_合冊.md; Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊.md; Pipeline-A設計資料參考_合冊.md; Pipeline-A實作資料參考_合冊.md; 台股實戰映射_合冊.md`
- required upstream docs: `01_MASTER_SPINE.md; 02_BRIDGE_PIPELINE_A.md`
- allowed support docs: `台股實戰映射_合冊.md; SEM³資料參考_合冊.md; 多模態多向量圖像檢索技術指南_筆記.txt; 2022 ICT Mentorship 技術指南合冊_v2.md`
- forbidden source escalation: `將 support-only / data-only 文檔升格為 normative; 把 Ops RUNBOOK 或 HOW 寫成制度 owner; 把 bridge layer 當 MC4 / WP / schema owner`
- central obligations: 角色=語料儲存、索引與可檢索；最低輸入=input\_manifest, source files；最低輸出=`corpus_snapshot.json`；主 Gate=`G-SRC + G-SCHEMA`。
- system requirements obligations: CA-CORPUS 負責把來源材料整理為可追溯、可檢索、可回讀的語料快照，並把 Hybrid retrieval 明確寫成制度化的檢索政策，而不是只剩漂亮名詞。
- system_positioning: 可追溯語料快照與混合檢索政策的正式 owner。
- domain bridge entrypoints: Pipeline-A home volume → CA-CORPUS 條目；見 06_SOURCE_AUTHORITY_CROSSWALK.md 及本節
- route-out owner: Package E（MC4/WP / validator / release guard）; Package B（schema / manifest / evidence schema）; Ops/Dev HOW owners（流程）
- expected artifacts: ``corpus_snapshot_manifest.json`, `corpus_index/` 或 owner-approved 等價索引, `anchor_chunk_map.tsv`, `retrieval_mode_policy.yaml`, `corpus_quarantine_register.jsonl``
- evidence minimum set: `manifest \+ snapshot \+ schema check`
- open gaps: `owner validators / release guard execution evidence 缺件`
- conflict notes: `—`
- fail-closed conditions: snapshot 不可解析、來源覆蓋斷裂，即 FAIL。

## 3. CA-DISTILL — 蒸餾

- subsystem_id: `CA-DISTILL`
- display_name: `蒸餾`
- macro_module_name: `K.Knowledge-Ingest`
- 所屬主域 / 次域 / 橫切依賴: `Pipeline-A` / `—` / `—`
- primary owner documents: `Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文r1.md; Spartoi-OMOC_系統需求正文r3.md; Spartoi-OMOC_SSOT_合冊.md; Spartoi-OMOC_LBP_合冊.md; Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊.md; Pipeline-A設計資料參考_合冊.md; Pipeline-A實作資料參考_合冊.md; 台股實戰映射_合冊.md`
- required upstream docs: `01_MASTER_SPINE.md; 02_BRIDGE_PIPELINE_A.md`
- allowed support docs: `台股實戰映射_合冊.md; SEM³資料參考_合冊.md; 多模態多向量圖像檢索技術指南_筆記.txt; 2022 ICT Mentorship 技術指南合冊_v2.md`
- forbidden source escalation: `將 support-only / data-only 文檔升格為 normative; 把 Ops RUNBOOK 或 HOW 寫成制度 owner; 把 bridge layer 當 MC4 / WP / schema owner`
- central obligations: 角色=蒸餾與語意還原；最低輸入=corpus\_snapshot, source docs；最低輸出=`distill_bundle.json`；主 Gate=`G-SEG-L`。
- system requirements obligations: CA-DISTILL 負責把語料轉為可回指的 claim、evidence、偽代碼候選與蒸餾 bundle，並把舊需求要求的 Claim 庫 / 語義報告 / 對齊矩陣 / 四象限讀者區 / Job-Card / Evidence→Rules→Interface 收斂，從「概念」升格為**正文級 mandatory artifacts**。
- system_positioning: 把語料收斂為可回指 claim / evidence / distill bundle 的正式 owner。
- domain bridge entrypoints: Pipeline-A home volume → CA-DISTILL 條目；見 06_SOURCE_AUTHORITY_CROSSWALK.md 及本節
- route-out owner: Package E（MC4/WP / validator / release guard）; Package B（schema / manifest / evidence schema）; Ops/Dev HOW owners（流程）
- expected artifacts: ``claim_registry.json`, `evidence_chain.jsonl`, `semantic_report.md` 或 machine-readable 等價格式, `alignment_matrix.tsv`, `reader_quadrants.md` 或 bundle 等價格式`
- evidence minimum set: `bundle \+ seg report \+ gate\_report`
- open gaps: `owner validators / release guard execution evidence 缺件`
- conflict notes: `—`
- fail-closed conditions: 關鍵遺漏、語意不保真、無 SEG 證跡，即 FAIL。

## 4. CA-DSL — 偽代碼原語庫/中立DSL

- subsystem_id: `CA-DSL`
- display_name: `偽代碼原語庫/中立DSL`
- macro_module_name: `S.Strategy-Formalize`
- 所屬主域 / 次域 / 橫切依賴: `Pipeline-A` / `—` / `—`
- primary owner documents: `Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文r1.md; Spartoi-OMOC_系統需求正文r3.md; Spartoi-OMOC_SSOT_合冊.md; Spartoi-OMOC_LBP_合冊.md; Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊.md; Pipeline-A設計資料參考_合冊.md; Pipeline-A實作資料參考_合冊.md; 台股實戰映射_合冊.md`
- required upstream docs: `01_MASTER_SPINE.md; 02_BRIDGE_PIPELINE_A.md`
- allowed support docs: `台股實戰映射_合冊.md; SEM³資料參考_合冊.md; 多模態多向量圖像檢索技術指南_筆記.txt; 2022 ICT Mentorship 技術指南合冊_v2.md`
- forbidden source escalation: `將 support-only / data-only 文檔升格為 normative; 把 Ops RUNBOOK 或 HOW 寫成制度 owner; 把 bridge layer 當 MC4 / WP / schema owner`
- central obligations: 角色=中立原語 formalize；最低輸入=baseline inputs, distill outputs；最低輸出=`dsl_schema.json`；主 Gate=`G-SCHEMA`。
- system requirements obligations: CA-DSL 是市場中立、平台中立的原語 formalization owner，負責建立 Primitive Library 與中立 DSL。
- system_positioning: 市場中立、平台中立原語與 DSL formalization 的正式 owner。
- domain bridge entrypoints: Pipeline-A home volume → CA-DSL 條目；見 06_SOURCE_AUTHORITY_CROSSWALK.md 及本節
- route-out owner: Package E（MC4/WP / validator / release guard）; Package B（schema / manifest / evidence schema）; Ops/Dev HOW owners（流程）
- expected artifacts: `Primitive library, DSL schema, EvidenceCard, Function spec / pseudo spec, `evidence_rule_map.tsv``
- evidence minimum set: `schema \+ manifest \+ verdict`
- open gaps: `owner validators / release guard execution evidence 缺件`
- conflict notes: `—`
- fail-closed conditions: schema 無法解析、欄位不完整、無 formal contract，即 FAIL。

## 5. CA-METHOD — 方法制定

- subsystem_id: `CA-METHOD`
- display_name: `方法制定`
- macro_module_name: `S.Strategy-Formalize`
- 所屬主域 / 次域 / 橫切依賴: `Pipeline-B` / `Pipeline-A` / `Pipeline-A`
- primary owner documents: `Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文r1.md; Spartoi-OMOC_系統需求正文r3.md; Spartoi-OMOC_SSOT_合冊.md; Spartoi-OMOC_LBP_合冊.md; Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊.md; Pipeline-B資料參考_合冊.md; Pipeline-B&C資料參考_合冊.md; 台股實戰映射_合冊.md`
- required upstream docs: `01_MASTER_SPINE.md; 03_BRIDGE_PIPELINE_B.md; Data Backbone / ReferenceDB / RunLedger constraints from central + SR`
- allowed support docs: `Pipeline-B&C資料參考_合冊.md; 台股實戰映射_合冊.md; SEM³資料參考_合冊.md; 台股歷史資料庫實作參考_合冊.md; 2022 ICT Mentorship 技術指南合冊_v2.md`
- forbidden source escalation: `將 support-only / data-only 文檔升格為 normative; 把 Ops RUNBOOK 或 HOW 寫成制度 owner; 把 bridge layer 當 MC4 / WP / schema owner`
- central obligations: 角色=方法定案；最低輸入=distill, dsl, three-source refs；最低輸出=`method_card.md + primitive_spec.json`；主 Gate=`G-SRC[method-source-profile]`。
- system requirements obligations: CA-METHOD 負責把 DSL / primitive / evidence 與台股微結構約束融合為可回測、可轉譯、可審查的 `MethodCard` / `MethodSpec` / `MethodPack`，並吸收舊體系中對方法母體、模組族與 StrategyPack 的有效要求。
- system_positioning: 把 primitive/evidence 收斂為可回測、可轉譯、可審查方法包的正式 owner。
- domain bridge entrypoints: Pipeline-B home volume → CA-METHOD 條目；見 06_SOURCE_AUTHORITY_CROSSWALK.md 及本節
- route-out owner: Package E（MC4/WP / validator / release guard）; Package B（schema / manifest / evidence schema）; Ops/Dev HOW owners（流程）
- expected artifacts: ``MethodCard.md/json`, `MethodSpec.json` 或 owner-approved 等價格式, `MethodPack/`, `primitive_coverage_map.tsv`, `scenario_binding.json``
- evidence minimum set: `method card \+ rationale \+ manifest`
- open gaps: `owner validators / release guard execution evidence 缺件`
- conflict notes: `Pipeline-B資料參考_合冊 DOC-0006 在方法+回測重疊範圍優先`
- fail-closed conditions: 方法卡不可追溯、三源融合斷裂、無 rationale，即 FAIL。

## 6. CA-BACKTEST — 回測

- subsystem_id: `CA-BACKTEST`
- display_name: `回測`
- macro_module_name: `B.Backtest-Learn`
- 所屬主域 / 次域 / 橫切依賴: `Pipeline-B` / `—` / `—`
- primary owner documents: `Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文r1.md; Spartoi-OMOC_系統需求正文r3.md; Spartoi-OMOC_SSOT_合冊.md; Spartoi-OMOC_LBP_合冊.md; Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊.md; Pipeline-B資料參考_合冊.md; Pipeline-B&C資料參考_合冊.md; 台股實戰映射_合冊.md`
- required upstream docs: `01_MASTER_SPINE.md; 03_BRIDGE_PIPELINE_B.md; Data Backbone / ReferenceDB / RunLedger constraints from central + SR`
- allowed support docs: `Pipeline-B&C資料參考_合冊.md; 台股實戰映射_合冊.md; SEM³資料參考_合冊.md; 台股歷史資料庫實作參考_合冊.md; 2022 ICT Mentorship 技術指南合冊_v2.md`
- forbidden source escalation: `將 support-only / data-only 文檔升格為 normative; 把 Ops RUNBOOK 或 HOW 寫成制度 owner; 把 bridge layer 當 MC4 / WP / schema owner`
- central obligations: 角色=回測與衛生驗證；最低輸入=method\_card, historical\_db；最低輸出=`backtest_report.json`；主 Gate=`G-BT-H`。
- system requirements obligations: CA-BACKTEST 是 Pipeline-B 的回測與衛生 owner，負責以本地資料主幹驗證 MethodCard 的有效性、可重播性與過擬合防線。
- system_positioning: MethodCard 的回測、衛生與可重播性驗證 owner。
- domain bridge entrypoints: Pipeline-B home volume → CA-BACKTEST 條目；見 06_SOURCE_AUTHORITY_CROSSWALK.md 及本節
- route-out owner: Package E（MC4/WP / validator / release guard）; Package B（schema / manifest / evidence schema）; Ops/Dev HOW owners（流程）
- expected artifacts: ``BacktestPack/`, `backtest_report.json`, `repro_manifest.json`, `slice_manifest.json`, `hygiene_report.json``
- evidence minimum set: `backtest report \+ hygiene \+ manifest`
- open gaps: `owner validators / release guard execution evidence 缺件`
- conflict notes: `Pipeline-B資料參考_合冊 DOC-0006 在方法+回測重疊範圍優先`
- fail-closed conditions: 不可重播、無 hygiene、無 historical\_db lineage，即 FAIL。

## 7. CA-TA — 技術分析

- subsystem_id: `CA-TA`
- display_name: `技術分析`
- macro_module_name: `F.Signal-Analysis`
- 所屬主域 / 次域 / 橫切依賴: `Pipeline-C` / `Pipeline-B` / `Pipeline-B`
- primary owner documents: `Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文r1.md; Spartoi-OMOC_系統需求正文r3.md; Spartoi-OMOC_SSOT_合冊.md; Spartoi-OMOC_LBP_合冊.md; Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊.md; Pipeline-C資料參考_合冊.md; CA-TRANSLATE資料參考_合冊B.md; CA-TRANSLATE資料參考_合冊A.md`
- required upstream docs: `01_MASTER_SPINE.md; 04_BRIDGE_PIPELINE_C.md; Data Backbone / ReferenceDB / RunLedger constraints from central + SR`
- allowed support docs: `CA-TRANSLATE資料參考_合冊A.md; Pipeline-B&C資料參考_合冊.md; 台股歷史資料庫實作參考_合冊.md; SEM³資料參考_合冊.md; 2022 ICT Mentorship 技術指南合冊_v2.md`
- forbidden source escalation: `將 support-only / data-only 文檔升格為 normative; 把 Ops RUNBOOK 或 HOW 寫成制度 owner; 把 bridge layer 當 MC4 / WP / schema owner`
- central obligations: 角色=分析包與故事卡；最低輸入=method\_card, K-line data；最低輸出=`ta_pack.json + story_cards/`；主 Gate=`G-CONF-L[ta-profile]`。
- system requirements obligations: CA-TA 負責根據 MethodCard 與市場資料生成技術分析包，作為 SELECT / WATCH 的上游決策輔助。
- system_positioning: 由 MethodCard 與市場資料生成 AnalysisPack / StoryCard 的正式 owner。
- domain bridge entrypoints: Pipeline-C home volume → CA-TA 條目；見 06_SOURCE_AUTHORITY_CROSSWALK.md 及本節
- route-out owner: Package E（MC4/WP / validator / release guard）; Package B（schema / manifest / evidence schema）; Ops/Dev HOW owners（流程）
- expected artifacts: `AnalysisPack, StoryCard, RiskCard, feature evidence bundle`
- evidence minimum set: `ta pack \+ confidence report`
- open gaps: `owner validators / release guard execution evidence 缺件`
- conflict notes: `—`
- fail-closed conditions: 無分析包、無故事卡、無 confidence evidence，即 FAIL。

## 8. CA-SELECT — 選股

- subsystem_id: `CA-SELECT`
- display_name: `選股`
- macro_module_name: `F.Signal-Analysis`
- 所屬主域 / 次域 / 橫切依賴: `Pipeline-C` / `Pipeline-B` / `Pipeline-B`
- primary owner documents: `Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文r1.md; Spartoi-OMOC_系統需求正文r3.md; Spartoi-OMOC_SSOT_合冊.md; Spartoi-OMOC_LBP_合冊.md; Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊.md; Pipeline-C資料參考_合冊.md; CA-TRANSLATE資料參考_合冊B.md; CA-TRANSLATE資料參考_合冊A.md`
- required upstream docs: `01_MASTER_SPINE.md; 04_BRIDGE_PIPELINE_C.md; Data Backbone / ReferenceDB / RunLedger constraints from central + SR`
- allowed support docs: `CA-TRANSLATE資料參考_合冊A.md; Pipeline-B&C資料參考_合冊.md; 台股歷史資料庫實作參考_合冊.md; SEM³資料參考_合冊.md; 2022 ICT Mentorship 技術指南合冊_v2.md`
- forbidden source escalation: `將 support-only / data-only 文檔升格為 normative; 把 Ops RUNBOOK 或 HOW 寫成制度 owner; 把 bridge layer 當 MC4 / WP / schema owner`
- central obligations: 角色=候選清單形成；最低輸入=ta\_pack, WL/BL；最低輸出=`watchlist.csv + selection_rationale.md`；主 Gate=`G-CONF-L[select-profile]`。
- system requirements obligations: CA-SELECT 負責把技術分析、流動性與成本約束整合為 TopK 候選清單。
- system_positioning: 把分析結果與成本/流動性約束轉成候選清單與理由的正式 owner。
- domain bridge entrypoints: Pipeline-C home volume → CA-SELECT 條目；見 06_SOURCE_AUTHORITY_CROSSWALK.md 及本節
- route-out owner: Package E（MC4/WP / validator / release guard）; Package B（schema / manifest / evidence schema）; Ops/Dev HOW owners（流程）
- expected artifacts: `TopK list, ranking evidence, confidence report`
- evidence minimum set: `watchlist \+ rationale \+ confidence`
- open gaps: `owner validators / release guard execution evidence 缺件`
- conflict notes: `—`
- fail-closed conditions: 無候選、無理由、無 confidence evidence，即 FAIL。

## 9. CA-TRANSLATE — XS轉譯

- subsystem_id: `CA-TRANSLATE`
- display_name: `XS轉譯`
- macro_module_name: `O.Operate-XQ`
- 所屬主域 / 次域 / 橫切依賴: `Pipeline-C` / `Pipeline-B` / `Pipeline-B`
- primary owner documents: `Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文r1.md; Spartoi-OMOC_系統需求正文r3.md; Spartoi-OMOC_SSOT_合冊.md; Spartoi-OMOC_LBP_合冊.md; Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊.md; Pipeline-C資料參考_合冊.md; CA-TRANSLATE資料參考_合冊B.md; CA-TRANSLATE資料參考_合冊A.md`
- required upstream docs: `01_MASTER_SPINE.md; 04_BRIDGE_PIPELINE_C.md; Data Backbone / ReferenceDB / RunLedger constraints from central + SR`
- allowed support docs: `CA-TRANSLATE資料參考_合冊A.md; Pipeline-B&C資料參考_合冊.md; 台股歷史資料庫實作參考_合冊.md; SEM³資料參考_合冊.md; 2022 ICT Mentorship 技術指南合冊_v2.md`
- forbidden source escalation: `將 support-only / data-only 文檔升格為 normative; 把 Ops RUNBOOK 或 HOW 寫成制度 owner; 把 bridge layer 當 MC4 / WP / schema owner`
- central obligations: 角色=XS 腳本與 parity；最低輸入=technical pack, S1/S2 list；最低輸出=`xs_script.txt + xs_script_pack.json`；主 Gate=`G-XQ-PARITY`。
- system requirements obligations: CA-TRANSLATE 是中立 DSL 到 XS 的唯一轉譯 owner，負責平台能力適配與等價驗證。
- system_positioning: 中立 DSL 到 XS 的唯一轉譯與 parity/capability profile owner。
- domain bridge entrypoints: Pipeline-C home volume → CA-TRANSLATE 條目；見 06_SOURCE_AUTHORITY_CROSSWALK.md 及本節
- route-out owner: Package E（MC4/WP / validator / release guard）; Package B（schema / manifest / evidence schema）; Ops/Dev HOW owners（流程）
- expected artifacts: `XSPack, parity report, capability profile, field mapping matrix`
- evidence minimum set: `xs script pack \+ parity report \+ capability profile`
- open gaps: `owner validators / release guard execution evidence 缺件`
- conflict notes: `—`
- fail-closed conditions: 無 compile / load / comparison / capability / parity report 任一，即 FAIL。

## 10. CA-WATCH — 盯盤

- subsystem_id: `CA-WATCH`
- display_name: `盯盤`
- macro_module_name: `O.Operate-XQ`
- 所屬主域 / 次域 / 橫切依賴: `五子系統` / `Pipeline-C` / `Pipeline-C`
- primary owner documents: `Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文r1.md; Spartoi-OMOC_系統需求正文r3.md; Spartoi-OMOC_SSOT_合冊.md; Spartoi-OMOC_LBP_合冊.md; Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊.md; Ops RUNBOOK_合冊.md; CA-TRANSLATE資料參考_合冊B.md`
- required upstream docs: `01_MASTER_SPINE.md; 05_BRIDGE_SYS5.md; Data Backbone / ReferenceDB / RunLedger constraints from central + SR; CA-TRANSLATE資料參考_合冊B.md`
- allowed support docs: `CA-TRANSLATE資料參考_合冊B.md; Ops RUNBOOK_合冊.md`
- forbidden source escalation: `將 support-only / data-only 文檔升格為 normative; 把 Ops RUNBOOK 或 HOW 寫成制度 owner; 把 bridge layer 當 MC4 / WP / schema owner; 把本子系統寫成第二下單端或本地 execution engine`
- central obligations: 角色=僅觀測，不下單；最低輸入=xs\_watchlist；最低輸出=`watch_events.ndjson`；主 Gate=`G-HITL-LOG[watch-profile]`。
- system requirements obligations: CA-WATCH 是盤中事件驅動觀測 owner，負責產生訊號與 HITL 交接前的 radar-only 監測結果。
- system_positioning: 盤中 radar-only 觀測與事件記錄 owner，不是下單端。
- domain bridge entrypoints: 五子系統 home volume → CA-WATCH 條目；見 06_SOURCE_AUTHORITY_CROSSWALK.md 及本節
- route-out owner: Package E（MC4/WP / validator / release guard）; Package B（schema / manifest / evidence schema）; Ops/Dev HOW owners（流程）
- expected artifacts: `watch logs, signal packet, handoff signal, route_mode-marked monitoring output`
- evidence minimum set: `watch log \+ alerts \+ manifest`
- open gaps: `owner validators / release guard execution evidence 缺件`
- conflict notes: `CA-TRANSLATE資料參考_合冊B DOC-0001 優先於 A / 其餘 support docs 的整合借引`
- fail-closed conditions: 任何直接下單語義、缺事件日誌、無 route\_mode，即 FAIL。

## 11. CA-EXECUTE — 操盤/HITL交接

- subsystem_id: `CA-EXECUTE`
- display_name: `操盤/HITL交接`
- macro_module_name: `O.Operate-XQ`
- 所屬主域 / 次域 / 橫切依賴: `五子系統` / `Pipeline-C` / `Pipeline-C`
- primary owner documents: `Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文r1.md; Spartoi-OMOC_系統需求正文r3.md; Spartoi-OMOC_SSOT_合冊.md; Spartoi-OMOC_LBP_合冊.md; Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊.md; Ops RUNBOOK_合冊.md; CA-TRANSLATE資料參考_合冊B.md`
- required upstream docs: `01_MASTER_SPINE.md; 05_BRIDGE_SYS5.md; Data Backbone / ReferenceDB / RunLedger constraints from central + SR; CA-TRANSLATE資料參考_合冊B.md`
- allowed support docs: `CA-TRANSLATE資料參考_合冊B.md; Ops RUNBOOK_合冊.md`
- forbidden source escalation: `將 support-only / data-only 文檔升格為 normative; 把 Ops RUNBOOK 或 HOW 寫成制度 owner; 把 bridge layer 當 MC4 / WP / schema owner; 把本子系統寫成第二下單端或本地 execution engine`
- central obligations: 角色=HITL handoff，不 unattended；最低輸入=xs alerts, story cards；最低輸出=`hitl_handoff.json`；主 Gate=`G-HITL-LOG[execute-profile]`。
- system requirements obligations: CA-EXECUTE 是 XQ 落地前的 handoff / approval trace owner，不是本地下單器。
- system_positioning: XQ 落地前 HITL handoff / approval trace owner，不是本地下單器。
- domain bridge entrypoints: 五子系統 home volume → CA-EXECUTE 條目；見 06_SOURCE_AUTHORITY_CROSSWALK.md 及本節
- route-out owner: Package E（MC4/WP / validator / release guard）; Package B（schema / manifest / evidence schema）; Ops/Dev HOW owners（流程）
- expected artifacts: `approval_log.json, execute handoff pack, safety / kill-switch events, event ledger refs`
- evidence minimum set: `handoff \+ execute log \+ approval trace`
- open gaps: `owner validators / release guard execution evidence 缺件`
- conflict notes: `CA-TRANSLATE資料參考_合冊B DOC-0001 優先於 A / 其餘 support docs 的整合借引`
- fail-closed conditions: 無 approval trace、嘗試 unattended execute、破壞 XQ sole endpoint，即 FAIL。

## 12. CA-PERFORM — 績效分析

- subsystem_id: `CA-PERFORM`
- display_name: `績效分析`
- macro_module_name: `B.Backtest-Learn`
- 所屬主域 / 次域 / 橫切依賴: `Pipeline-B` / `—` / `—`
- primary owner documents: `Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文r1.md; Spartoi-OMOC_系統需求正文r3.md; Spartoi-OMOC_SSOT_合冊.md; Spartoi-OMOC_LBP_合冊.md; Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊.md; Pipeline-B資料參考_合冊.md; Pipeline-B&C資料參考_合冊.md; 台股實戰映射_合冊.md`
- required upstream docs: `01_MASTER_SPINE.md; 03_BRIDGE_PIPELINE_B.md; Data Backbone / ReferenceDB / RunLedger constraints from central + SR`
- allowed support docs: `Pipeline-B&C資料參考_合冊.md; 台股實戰映射_合冊.md; SEM³資料參考_合冊.md; 台股歷史資料庫實作參考_合冊.md; 2022 ICT Mentorship 技術指南合冊_v2.md`
- forbidden source escalation: `將 support-only / data-only 文檔升格為 normative; 把 Ops RUNBOOK 或 HOW 寫成制度 owner; 把 bridge layer 當 MC4 / WP / schema owner; 讓 PERFORM 直接改定 MethodCard`
- central obligations: 角色=績效分析與 uplift proposal；最低輸入=watch/execute/performance files；最低輸出=`perf_report.json + upgrade_proposal.md`；主 Gate=`G-CONF-L[perform-uplift-profile] + G-BT-H[retest-profile]`。
- system requirements obligations: CA-PERFORM 是全鏈路事後績效與改善建議 owner，負責分析 Track-A / Track-B、產出 FeedbackPack，但不得直接改寫方法。
- system_positioning: 全鏈路事後績效與 uplift proposal owner，但不得改寫方法 owner。
- domain bridge entrypoints: Pipeline-B home volume → CA-PERFORM 條目；見 06_SOURCE_AUTHORITY_CROSSWALK.md 及本節
- route-out owner: Package E（MC4/WP / validator / release guard）; Package B（schema / manifest / evidence schema）; Ops/Dev HOW owners（流程）
- expected artifacts: ``FeedbackPack/`, `top3_proposals.json`, `performance_report.md`, `parity_or_missing_inputs_statement.json`, `retest_linkage.json``
- evidence minimum set: `perf report \+ proposal \+ retest link`
- open gaps: `owner validators / release guard execution evidence 缺件`
- conflict notes: `PERFORM 僅回饋 METHOD，不得改寫 MethodCard`
- fail-closed conditions: 不可追溯、與 method\_card 矛盾、無 retest linkage，即 FAIL。

## 13. CA-COLLAB — 多AI協作

- subsystem_id: `CA-COLLAB`
- display_name: `多AI協作`
- macro_module_name: `G.Govern-UI-Collab`
- 所屬主域 / 次域 / 橫切依賴: `五子系統` / `Pipeline-A, Pipeline-B, Pipeline-C` / `Pipeline-A, Pipeline-B, Pipeline-C`
- primary owner documents: `Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文r1.md; Spartoi-OMOC_系統需求正文r3.md; Spartoi-OMOC_SSOT_合冊.md; Spartoi-OMOC_LBP_合冊.md; Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊.md; Ops RUNBOOK_合冊.md; CA-TRANSLATE資料參考_合冊B.md`
- required upstream docs: `01_MASTER_SPINE.md; 05_BRIDGE_SYS5.md`
- allowed support docs: `CA-TRANSLATE資料參考_合冊B.md; Ops RUNBOOK_合冊.md`
- forbidden source escalation: `將 support-only / data-only 文檔升格為 normative; 把 Ops RUNBOOK 或 HOW 寫成制度 owner; 把 bridge layer 當 MC4 / WP / schema owner`
- central obligations: 角色=bundle 交接與 session log；最低輸入=export/import packs；最低輸出=`export_bundle.zip + collab_session_*.json`；主 Gate=`G-SRC + G-SCHEMA`。
- system requirements obligations: CA-COLLAB 是多 AI/LLM 協作流程的正式 owner，負責 bundle 交換、對話掛載、session log、交叉審核流程化、execution/provider slot traceability 與 WebTools-NA template / operation pack；它不是新憲法，也不得取代 GOVERN 或 UI。
- system_positioning: 多 AI/LLM 協作 bundle、session log、slot/provider traceability owner。
- domain bridge entrypoints: 五子系統 home volume → CA-COLLAB 條目；見 06_SOURCE_AUTHORITY_CROSSWALK.md 及本節
- route-out owner: Package E（MC4/WP / validator / release guard）; Package B（schema / manifest / evidence schema）; Ops/Dev HOW owners（流程）
- expected artifacts: ``CollabBundle.zip`, `collab_session_*.json`, `review_matrix.tsv`, `integration_notes.md`, `slot_usage_manifest.json``
- evidence minimum set: `bundle \+ session log \+ manifest`
- open gaps: `owner validators / release guard execution evidence 缺件`
- conflict notes: `skills / 多代理 / OpenClaw 為特例管道資料，依用戶最高決策不納入本版 bridge index`
- fail-closed conditions: bundle 不可解析、hash 不一致、session log 缺失，即 FAIL。

## 14. CA-UI — 受控單一入口

- subsystem_id: `CA-UI`
- display_name: `受控單一入口`
- macro_module_name: `G.Govern-UI-Collab`
- 所屬主域 / 次域 / 橫切依賴: `五子系統` / `Pipeline-A, Pipeline-B, Pipeline-C` / `Pipeline-A, Pipeline-B, Pipeline-C`
- primary owner documents: `Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文r1.md; Spartoi-OMOC_系統需求正文r3.md; Spartoi-OMOC_SSOT_合冊.md; Spartoi-OMOC_LBP_合冊.md; Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊.md; Ops RUNBOOK_合冊.md; CA-TRANSLATE資料參考_合冊B.md`
- required upstream docs: `01_MASTER_SPINE.md; 05_BRIDGE_SYS5.md`
- allowed support docs: `CA-TRANSLATE資料參考_合冊B.md; Ops RUNBOOK_合冊.md`
- forbidden source escalation: `將 support-only / data-only 文檔升格為 normative; 把 Ops RUNBOOK 或 HOW 寫成制度 owner; 把 bridge layer 當 MC4 / WP / schema owner`
- central obligations: 角色=受控單一入口、一鍵閉環、evidence 可視化；最低輸入=user action / run config；最低輸出=`ui_app_ready + e2e_smoke.json`；主 Gate=`G-RUN[ui-profile]`。
- system requirements obligations: CA-UI 是全部子系統的受控單一入口，負責一鍵最小閉環、visible evidence、run / gate / output trace view 與 conditional desktop profile；它必須吸收舊版 Desktop App 的有價值要求，但不得把已被降級的桌面 GUI 憲法偷偷復活。
- system_positioning: 全部子系統的受控單一入口與 evidence 可視化 owner。
- domain bridge entrypoints: 五子系統 home volume → CA-UI 條目；見 06_SOURCE_AUTHORITY_CROSSWALK.md 及本節
- route-out owner: Package E（MC4/WP / validator / release guard）; Package B（schema / manifest / evidence schema）; Ops/Dev HOW owners（流程）
- expected artifacts: ``UIProfilePack/`, `ui_profile_manifest.json`, `ui_smoke_record.json`, `visible_evidence_state.json`, `backpaste_verification_log.json`（若啟用桌面 / Windows profile）`
- evidence minimum set: `startup log \+ smoke \+ manifest`
- open gaps: `owner validators / release guard execution evidence 缺件`
- conflict notes: `skills / 多代理 / OpenClaw 為特例管道資料，依用戶最高決策不納入本版 bridge index`
- fail-closed conditions: 需額外 hidden launcher、evidence 不可視、核心流程仍需另開 PY/PS7 才能完成，即 FAIL。

## 15. CA-GOVERN — 治理/索引/收納

- subsystem_id: `CA-GOVERN`
- display_name: `治理/索引/收納`
- macro_module_name: `G.Govern-UI-Collab`
- 所屬主域 / 次域 / 橫切依賴: `五子系統` / `Pipeline-A, Pipeline-B, Pipeline-C` / `Pipeline-A, Pipeline-B, Pipeline-C`
- primary owner documents: `Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文r1.md; Spartoi-OMOC_系統需求正文r3.md; Spartoi-OMOC_SSOT_合冊.md; Spartoi-OMOC_LBP_合冊.md; Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊.md; Ops RUNBOOK_合冊.md; CA-TRANSLATE資料參考_合冊B.md`
- required upstream docs: `01_MASTER_SPINE.md; 05_BRIDGE_SYS5.md`
- allowed support docs: `CA-TRANSLATE資料參考_合冊B.md; Ops RUNBOOK_合冊.md`
- forbidden source escalation: `將 support-only / data-only 文檔升格為 normative; 把 Ops RUNBOOK 或 HOW 寫成制度 owner; 把 bridge layer 當 MC4 / WP / schema owner; 把 GOVERN 寫成第二治理引擎或 schema owner`
- central obligations: 角色=最小治理、索引、版本、證據收納；最低輸入=all run artifacts；最低輸出=`version_manifest.json + gov_evidence_pack.zip + ssot_index.json`；主 Gate=`G-RUN[govern-packaging-profile] + G-SCHEMA[govern-manifest-profile]`。
- system requirements obligations: CA-GOVERN 是最小治理、最小索引、最小收納與最小降級決策落盤 owner，負責 index / manifest / evidence packaging / run ledger write / artifact registration / route flags / degrade labels；它不是第二控制面，也不得取代 Package B / Package E。
- system_positioning: 最小治理、索引、收納與降級決策落盤 owner，不是第二治理引擎。
- domain bridge entrypoints: 五子系統 home volume → CA-GOVERN 條目；見 06_SOURCE_AUTHORITY_CROSSWALK.md 及本節
- route-out owner: Package E（MC4/WP / validator / release guard）; Package B（schema / manifest / evidence schema）; Ops/Dev HOW owners（流程）
- expected artifacts: `GovPack, manifest.json, gate_report.json, evidence_index.json, run ledger rows`
- evidence minimum set: `manifest \+ ssot\_index \+ gov pack`
- open gaps: `owner validators / release guard execution evidence 缺件`
- conflict notes: `skills / 多代理 / OpenClaw 為特例管道資料，依用戶最高決策不納入本版 bridge index`
- fail-closed conditions: run\_id 缺失、manifest 缺欄、索引缺失，即 FAIL。


<!-- END 08_SUBSYSTEM_ROUTE_PACKS.md -->


<!-- BEGIN 09_MACHINE_BLOCKS_AND_SIDECAR_MANIFEST.md -->

# 09_MACHINE_BLOCKS_AND_SIDECAR_MANIFEST

> Status: DOCUMENT_PASS / EXECUTION_FAIL_CLOSED
> Scope lock: sidecar 只提供 bridge-sidecar seeds，不升格為 owner schema / validator / release guard engine。

## 1. machine_summary

```json
{
  "artifact": "Spartoi-OMOC Master Spine r4",
  "identity": "Derived Crosswalk + Retrieval Router + Source Alignment Contract + Upgrade-Integrated Delivery Routing Spec",
  "authority_stack": [
    "中央工程正文r1",
    "系統需求正文r3",
    "SSOT",
    "LBP",
    "Pack A-E",
    "SubP1",
    "OMOC",
    "參考方案"
  ],
  "required_checks": [
    "ms-validate-inputs",
    "ms-validate-crosswalk",
    "ms-no-norm-drift",
    "ms-validate-route-out",
    "ms-validate-source-pack-schema",
    "ms-check-cr-open"
  ],
  "domain_volumes": {
    "pipeline_a": [
      "CA-WRC",
      "CA-CORPUS",
      "CA-DISTILL",
      "CA-DSL"
    ],
    "pipeline_b": [
      "CA-METHOD",
      "CA-BACKTEST",
      "CA-PERFORM"
    ],
    "pipeline_c": [
      "CA-TA",
      "CA-SELECT",
      "CA-TRANSLATE"
    ],
    "five_subsystems": [
      "CA-WATCH",
      "CA-EXECUTE",
      "CA-COLLAB",
      "CA-UI",
      "CA-GOVERN"
    ]
  },
  "review_findings_absorbed": [
    "sys5 obligations fix",
    "toolchain precision fix",
    "condensed card system_positioning fill",
    "sidecar landing",
    "artifact-proof honesty"
  ]
}
```

## 2. change_plan

```tsv
path	change_type	reason
00_README_DELIVERY_INDEX.md	update	rebuild delivery index with review remediation and artifact proof
01_MASTER_SPINE.md	update	fill system_positioning, add supersession/source ledgers, add artifact proof note
02~05 domain bridge files	update	upgrade owner-critical locators and retrieval quick paths
06_SOURCE_AUTHORITY_CROSSWALK.md	update	add precise toolchain taxonomy and review inputs
07_CONFLICT_GAP_TT_REGISTER.md	update	encode remediation closure and residual fail-closed items
08_SUBSYSTEM_ROUTE_PACKS.md	update	fix sys5 obligations and add system_positioning
09_MACHINE_BLOCKS_AND_SIDECAR_MANIFEST.md	create	land sidecar and machine blocks
10_ARTIFACT_PROOF_AND_PACKAGING.md	create	record observed artifacts and hashes
registries/*	create	land machine-auditable registries required by blueprint r2
contracts/*	create	land retrieval / validation / source-pack sidecar seeds without owner overreach
scripts/* and ci/*	create	land minimal validation harness seeds
```

## 3. checkrun_contract

```tsv
check_name	purpose	fail_condition	owner_route_out
ms-validate-inputs	verify required input docs and exclusions are recorded	missing active input or unrecorded exclusion	Package B / Package E / Ops HOW as applicable
ms-validate-crosswalk	verify authority/source matrices and subsystem home map exist	missing crosswalk rows or inconsistent subsystem mapping	Package B / Package E / Ops HOW as applicable
ms-no-norm-drift	block bridge from writing owner law	new MUST/SHALL without owner source	Package B / Package E / Ops HOW as applicable
ms-validate-route-out	ensure schema/HOW/release questions route to owner docs	route-out target absent	Package B / Package E / Ops HOW as applicable
ms-validate-source-pack-schema	validate bridge source pack seed structure	pack structure invalid	Package B / Package E / Ops HOW as applicable
ms-check-cr-open	surface open CR_OPEN / CONFIGURE_REQUIRED / FAIL_CLOSED items	blocked item hidden	Package B / Package E / Ops HOW as applicable
```

## 4. required_checks

```tsv
check_name	class	blocking	note
ms-validate-inputs	bridge_sidecar	YES	verify active inputs / exclusions / superseded ledger
ms-validate-crosswalk	bridge_sidecar	YES	verify authority matrices and subsystem maps
ms-no-norm-drift	bridge_sidecar	YES	block owner-law drift
ms-validate-route-out	bridge_sidecar	YES	ensure route-out table exists for owner-only areas
ms-validate-source-pack-schema	bridge_sidecar	NO	validate source pack seed structure
ms-check-cr-open	bridge_sidecar	NO	show blocked/open items honestly
```

## 5. sidecar package tree

```text
.github/CODEOWNERS
ci/master_spine_validate.yml
ci/required_checks.tsv
contracts/master_spine_profile.json
contracts/retrieval_recipes.yaml
contracts/source_pack.schema.json
contracts/validation_hooks.yaml
machine/change_plan.tsv
machine/checkrun_contract.tsv
machine/machine_summary.json
registries/authority_crosswalk.tsv
registries/compendium_doc_inventory.tsv
registries/compendium_registry.tsv
registries/conflict_quarantine_ledger.tsv
registries/deliverable_route_matrix.tsv
registries/inputs_manifest.tsv
registries/missing_proof_register.tsv
registries/route_out_targets.tsv
registries/source_family_registry.tsv
registries/subsystem_bridge_cards.tsv
registries/subsystem_home_map.tsv
scripts/build_source_pack.py
scripts/check_no_norm_drift.py
scripts/validate_master_spine.py
```

## 6. registries list / contracts list / scripts list / CI list

| sidecar_name | type | purpose | required_for_success | fail_closed_if_missing |
|---|---|---|---|---|
| registries/inputs_manifest.tsv | registry | 全量輸入來源清單 | YES | 缺失時無法證明 active scope |
| registries/compendium_registry.tsv | registry | 六冊總帳與 CMP family | YES | 缺失時 authority family 混亂 |
| registries/compendium_doc_inventory.tsv | registry | 40-doc inventory | YES | 缺失時 compendium-level bridge 降級 |
| registries/authority_crosswalk.tsv | registry | 權威主題對照 | YES | 缺失時 owner route-out 失真 |
| registries/source_family_registry.tsv | registry | source family 分群 | NO | 缺失時檢索與排錯成本上升 |
| registries/subsystem_home_map.tsv | registry | 15CA home domain 對位 | YES | 缺失時子系統路由不穩 |
| registries/subsystem_bridge_cards.tsv | registry | 15CA bridge card 種子 | YES | 缺失時 condensed extraction 不穩 |
| registries/deliverable_route_matrix.tsv | registry | deliverable route matrix | YES | 缺失時交付錯路風險上升 |
| registries/conflict_quarantine_ledger.tsv | registry | 衝突/隔離總帳 | YES | 缺失時 drift 被吞掉 |
| registries/missing_proof_register.tsv | registry | 缺證據登記 | YES | 缺失時 fail-closed 不誠實 |
| registries/route_out_targets.tsv | registry | route-out target table | YES | 缺失時 owner 導流不完整 |
| contracts/retrieval_recipes.yaml | contract | 檢索與閱讀配方 | YES | 缺失時 AI/LLM retrieval 容易走錯路 |
| contracts/validation_hooks.yaml | contract | bridge-sidecar validation hooks | YES | 缺失時 required checks 無落點 |
| contracts/source_pack.schema.json | contract | bridge source pack seed schema | YES | 缺失時 source pack 不可機械消費 |
| contracts/master_spine_profile.json | contract | bridge profile / identity / required checks | NO | 缺失時 profile drift 增加 |
| machine/machine_summary.json | machine | 機械摘要 | YES | 缺失時 machine landing 不完整 |
| machine/change_plan.tsv | machine | 變更計畫 | YES | 缺失時 remediation 不可稽核 |
| machine/checkrun_contract.tsv | machine | checkrun contract | YES | 缺失時 checks 無 contract |
| scripts/validate_master_spine.py | script | 結構驗證 seed | NO | 缺失時 CI 僅剩宣言 |
| scripts/build_source_pack.py | script | source pack build seed | NO | 缺失時 source pack automation 後接性下降 |
| scripts/check_no_norm_drift.py | script | 越權漂移檢查 seed | NO | 缺失時 no-governance 容易漂移 |
| ci/required_checks.tsv | ci | required checks table | YES | 缺失時 package honesty 下降 |
| ci/master_spine_validate.yml | ci | 最小 CI workflow seed | NO | 缺失時 repo/CI 落盤不完整 |
| .github/CODEOWNERS | control | review boundary seed | NO | 缺失時 owner review 邊界不清 |

## 7. source pack contract / schema

- contract file: `contracts/source_pack.schema.json`
- legal note: 這是 **bridge-sidecar seed schema**，只限制 Master Spine 輸出 source pack 的最小結構；不得拿它冒充 Package B / E 的 owner schema。
- allowed move: build source pack, attach route-out, attach evidence pointers。
- forbidden move: define owner field law, threshold law, validator law, release law。

## 8. validation hooks

- `ms-validate-inputs`: 驗證 active inputs / exclusions / superseded ledger。
- `ms-validate-crosswalk`: 驗證 authority crosswalk / subsystem map / route matrix。
- `ms-no-norm-drift`: 阻止 bridge 私自寫 owner law。
- `ms-validate-route-out`: 阻止 schema/HOW/release 問題失去 owner 目標。
- `ms-validate-source-pack-schema`: 驗證 source pack seed 形狀。
- `ms-check-cr-open`: 把 blocked / configure-required 項目浮上檯面。

## 9. fail-closed note

- 以上 sidecar 已落盤，但**未被 owner 文件正式吸收時，不得宣稱 owner closure**。
- sidecar 存在 ≠ validator executed；repo / CI seed 存在 ≠ release-ready。
- 這一冊解決的是「藍圖只停留在嘴上」的問題，不是替 owner 搶章蓋印。


<!-- END 09_MACHINE_BLOCKS_AND_SIDECAR_MANIFEST.md -->


<!-- BEGIN 10_ARTIFACT_PROOF_AND_PACKAGING.md -->

# 10_ARTIFACT_PROOF_AND_PACKAGING

> Status: DOCUMENT_PASS / EXECUTION_FAIL_CLOSED
> zip_status: `GENERATED_OBSERVED`

## 1. packaging honesty rules

- 不得宣稱不存在的 ZIP 已 GENERATED。
- 若 ZIP 不存在，必須標示 `ZIP_FAIL_CLOSED` 並提供現存 MD / sidecar 工件下載點。
- artifact exists ≠ release-ready；owner validators / required checks / release guard 未實跑時，仍維持 EXECUTION_FAIL_CLOSED。
- artifact claim 必須對應 observed path、observed status、sha256_or_not_available。

## 2. artifact proof register

| artifact_name | claimed_status | observed_status | evidence_path | sha256_or_not_available | disposition |
|---|---|---|---|---|---|
| .github/CODEOWNERS | GENERATED | EXISTS | .github/CODEOWNERS | a70d773cf1844e422c32307a4ad861012427f9d64ac6f5c73831d411865e7507 | PACKAGE_MEMBER |
| 00_README_DELIVERY_INDEX.md | GENERATED | EXISTS | 00_README_DELIVERY_INDEX.md | d7a1f448e16abd0326bfcfbef51777a788984a44ea520957928a3971623a4930 | PACKAGE_MEMBER |
| 01_MASTER_SPINE.md | GENERATED | EXISTS | 01_MASTER_SPINE.md | 8dea0928b2e398836c93d38e23a40020fb8c0f4d1d6f6cc1ced0d71e80d0ddbc | PACKAGE_MEMBER |
| 02_BRIDGE_PIPELINE_A.md | GENERATED | EXISTS | 02_BRIDGE_PIPELINE_A.md | ac68e9bfcadcb2d8b57668a1565ac2f1d6f3e22f9f7dec7ca5947e0ae440cb9a | PACKAGE_MEMBER |
| 03_BRIDGE_PIPELINE_B.md | GENERATED | EXISTS | 03_BRIDGE_PIPELINE_B.md | 6904840d17ebf9b6f2a027339864e659b2d778296d88bd0d677cd22a364e72ec | PACKAGE_MEMBER |
| 04_BRIDGE_PIPELINE_C.md | GENERATED | EXISTS | 04_BRIDGE_PIPELINE_C.md | 7012c26f42612f1fa8379543fde00966668b44f2e5aea6f89b4b089db36c0007 | PACKAGE_MEMBER |
| 05_BRIDGE_SYS5.md | GENERATED | EXISTS | 05_BRIDGE_SYS5.md | 3d88dbbe7e3e7340857ba448e8188ae0918ddd74f6e0c2a14e523881ad704dc2 | PACKAGE_MEMBER |
| 06_SOURCE_AUTHORITY_CROSSWALK.md | GENERATED | EXISTS | 06_SOURCE_AUTHORITY_CROSSWALK.md | 7071cb9c39dad169c0c9711222ac24fbc88903267429e9e916f62e88b61fc40f | PACKAGE_MEMBER |
| 07_CONFLICT_GAP_TT_REGISTER.md | GENERATED | EXISTS | 07_CONFLICT_GAP_TT_REGISTER.md | 7bd86ed4ab57b2a7ea125a867ce48fa3c3a152268a136858935c470ce399d0c1 | PACKAGE_MEMBER |
| 08_SUBSYSTEM_ROUTE_PACKS.md | GENERATED | EXISTS | 08_SUBSYSTEM_ROUTE_PACKS.md | b1295a67abd0816cc9c3da84fd96480e758f94167216eb60b01a8973b1f73d73 | PACKAGE_MEMBER |
| 09_MACHINE_BLOCKS_AND_SIDECAR_MANIFEST.md | GENERATED | EXISTS | 09_MACHINE_BLOCKS_AND_SIDECAR_MANIFEST.md | b86d324d2cf79d3ccddc676f9e817fe8b4a9e622f68815ebdbcd2ce0c74a35fc | PACKAGE_MEMBER |
| Spartoi-OMOC_Master_Spine_Full_Monolith.md | GENERATED | EXISTS | Spartoi-OMOC_Master_Spine_Full_Monolith.md | c7b22acb2cbf0d7cd0f9322b9c59b56c3c84029c162b00df6eccd25c68e5f09c | PACKAGE_MEMBER |
| Spartoi-OMOC_Master_Spine_Package.zip | GENERATED_OBSERVED | EXISTS | Spartoi-OMOC_Master_Spine_Package.zip | 72fc404d395f20b74f86ec60c76822710d86804121e4deba3705311ecca19261 | PACKAGE_ARCHIVE_PRESENT |
| ci/master_spine_validate.yml | GENERATED | EXISTS | ci/master_spine_validate.yml | 77f9f9d3f12434f57a99339327da805af6edc0ea331597be274f40f6a1464a74 | PACKAGE_MEMBER |
| ci/required_checks.tsv | GENERATED | EXISTS | ci/required_checks.tsv | c8fb151a8ba80cf3dde56cdb643376d21c3e201d6bd3b96c36301d6644023c08 | PACKAGE_MEMBER |
| contracts/master_spine_profile.json | GENERATED | EXISTS | contracts/master_spine_profile.json | dbc94ff5e1619cb424af2da1a5c490a87495a8a4d691cec1afe685fa3efc4749 | PACKAGE_MEMBER |
| contracts/retrieval_recipes.yaml | GENERATED | EXISTS | contracts/retrieval_recipes.yaml | 9849fe9f2f2973be83af6e6e6512d3db60587b76c977c52638a62add5d4a3a3b | PACKAGE_MEMBER |
| contracts/source_pack.schema.json | GENERATED | EXISTS | contracts/source_pack.schema.json | 3d737fdb90cc29dcc851406401e1103bc52bf3254bb2a6b3b95a2742a0f7659e | PACKAGE_MEMBER |
| contracts/validation_hooks.yaml | GENERATED | EXISTS | contracts/validation_hooks.yaml | 67b1db9dd95f5a838aa8b06596ba50438da3ff868620b40d124174d650b9113f | PACKAGE_MEMBER |
| machine/change_plan.tsv | GENERATED | EXISTS | machine/change_plan.tsv | 978ae4db2f521c7319840829a8c762f0656da26b40013b8b3847c416f18ddfef | PACKAGE_MEMBER |
| machine/checkrun_contract.tsv | GENERATED | EXISTS | machine/checkrun_contract.tsv | f07f38d55f9dc6e1f3f6845ec02099b6ec2aaf07e01dc7e3ea8c4010f8fe35e8 | PACKAGE_MEMBER |
| machine/machine_summary.json | GENERATED | EXISTS | machine/machine_summary.json | 5996dce3f90daa09f1c8f023f911997af02c76a024d8b6fe21b56f4308c7349b | PACKAGE_MEMBER |
| registries/authority_crosswalk.tsv | GENERATED | EXISTS | registries/authority_crosswalk.tsv | 504f270312d2a511c9ee103160c896ab6b28c83b4782f86bc365c13ee65257cb | PACKAGE_MEMBER |
| registries/compendium_doc_inventory.tsv | GENERATED | EXISTS | registries/compendium_doc_inventory.tsv | 831914dd9d7805b28e011e56c8a26ca3a896fb21714de13ab2be98e8d093d7bc | PACKAGE_MEMBER |
| registries/compendium_registry.tsv | GENERATED | EXISTS | registries/compendium_registry.tsv | 1873b42940ad0adc98643435a2145c81fc692fbbb63626346ea3a3e2d754657a | PACKAGE_MEMBER |
| registries/conflict_quarantine_ledger.tsv | GENERATED | EXISTS | registries/conflict_quarantine_ledger.tsv | 1c9d2cc34b1292f500923ee78365036e28f0cf3b245dd8365a30637684fb58ba | PACKAGE_MEMBER |
| registries/deliverable_route_matrix.tsv | GENERATED | EXISTS | registries/deliverable_route_matrix.tsv | 77ca6bb5729114cb2f05cd0adba13e2f257c8705668be34fcd025392fc122540 | PACKAGE_MEMBER |
| registries/inputs_manifest.tsv | GENERATED | EXISTS | registries/inputs_manifest.tsv | 5ade0ac8fe12ae8eff332f117f28ab627e8385bee2a1169ab03d29523b80d1ce | PACKAGE_MEMBER |
| registries/missing_proof_register.tsv | GENERATED | EXISTS | registries/missing_proof_register.tsv | c7ba5f813903e2f7a3081b80267b019d91090572575820d5295cd37ec14b821b | PACKAGE_MEMBER |
| registries/route_out_targets.tsv | GENERATED | EXISTS | registries/route_out_targets.tsv | cd39b5a163b8a5079226dddc7412714b2ddd83d2263fe4a7eee9d7a082391e7f | PACKAGE_MEMBER |
| registries/source_family_registry.tsv | GENERATED | EXISTS | registries/source_family_registry.tsv | 35af38b1d4e323197b7d518dba96e65ee356a230f0e99f1bac5f4b6913048f21 | PACKAGE_MEMBER |
| registries/subsystem_bridge_cards.tsv | GENERATED | EXISTS | registries/subsystem_bridge_cards.tsv | 32cb9e14de3299ffc00d8825b8bd39248864a37d0760c0a0c7a681ae133140c8 | PACKAGE_MEMBER |
| registries/subsystem_home_map.tsv | GENERATED | EXISTS | registries/subsystem_home_map.tsv | 8c4c6407d13785dece9b7839b6f0e600f36868790d4a3319cce1b055e3c0da24 | PACKAGE_MEMBER |
| scripts/build_source_pack.py | GENERATED | EXISTS | scripts/build_source_pack.py | 04cc360ece783edfcb7e46e11e47b930087b2db49fee6145eb41fdc2c8d78f36 | PACKAGE_MEMBER |
| scripts/check_no_norm_drift.py | GENERATED | EXISTS | scripts/check_no_norm_drift.py | 32c921b0502ad615429415c758bb889aad6e6a52b94f472742c3ac98a5cdd7b0 | PACKAGE_MEMBER |
| scripts/validate_master_spine.py | GENERATED | EXISTS | scripts/validate_master_spine.py | a6589da56dbbdc6b9268b6443c2d1e7ecfa77a44ecab691134a2fba5a956b4bc | PACKAGE_MEMBER |

## 3. packaging manifest

| filename | role | depends_on | included_in_zip | status |
|---|---|---|---|---|
| 00_README_DELIVERY_INDEX.md | top-level artifact | source set + generated sidecars | YES | GENERATED |
| 01_MASTER_SPINE.md | top-level artifact | source set + generated sidecars | YES | GENERATED |
| 02_BRIDGE_PIPELINE_A.md | top-level artifact | source set + generated sidecars | YES | GENERATED |
| 03_BRIDGE_PIPELINE_B.md | top-level artifact | source set + generated sidecars | YES | GENERATED |
| 04_BRIDGE_PIPELINE_C.md | top-level artifact | source set + generated sidecars | YES | GENERATED |
| 05_BRIDGE_SYS5.md | top-level artifact | source set + generated sidecars | YES | GENERATED |
| 06_SOURCE_AUTHORITY_CROSSWALK.md | top-level artifact | source set + generated sidecars | YES | GENERATED |
| 07_CONFLICT_GAP_TT_REGISTER.md | top-level artifact | source set + generated sidecars | YES | GENERATED |
| 08_SUBSYSTEM_ROUTE_PACKS.md | top-level artifact | source set + generated sidecars | YES | GENERATED |
| 09_MACHINE_BLOCKS_AND_SIDECAR_MANIFEST.md | top-level artifact | source set + generated sidecars | YES | GENERATED |
| Spartoi-OMOC_Master_Spine_Full_Monolith.md | top-level artifact | source set + generated sidecars | YES | GENERATED |
| Spartoi-OMOC_Master_Spine_Package.zip | top-level artifact | source set + generated sidecars | self | GENERATED |

## 4. zip status

- artifact_name: `Spartoi-OMOC_Master_Spine_Package.zip`
- claimed_status: `GENERATED_OBSERVED`
- observed_status: `EXISTS`
- evidence_path: `Spartoi-OMOC_Master_Spine_Package.zip`
- sha256: `c7add251da77dd739bacded3cf48d53de0c55ebf139e722685b66889f7bf1b82`
- disposition: `PACKAGE_ARCHIVE_PRESENT`

## 5. ZIP_FAIL_CLOSED handling rule

- 若未來任何重建回合未能產出 ZIP，`zip_status` 必須改為 `ZIP_FAIL_CLOSED`。
- 在 `ZIP_FAIL_CLOSED` 狀態下，只能宣稱 MD / sidecar files individually observed；不得宣稱 package archive complete。
- 本 build **不是** `ZIP_FAIL_CLOSED`；它是 `GENERATED_OBSERVED`。只是 release-ready 仍未被 owner 放行，別把「有壓縮檔」誤會成「有神諭」。


<!-- END 10_ARTIFACT_PROOF_AND_PACKAGING.md -->
