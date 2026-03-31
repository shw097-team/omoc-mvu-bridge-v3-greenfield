# 《Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-M_合冊》
<a id="top"></a>

## 0. 任務級最終裁決摘要
<a id="task-final-verdict"></a>

| verdict_axis | status | truthful_statement |
|---|---|---|
| document verdict | PASS_PATCHED_REPAIRED_DOCUMENT_PACKAGE | 新版 WP-M 已完成 audit-driven 升級修補，並以單一主 Markdown + 單一 ZIP document package 重物化。 |
| package truth verdict | PASS_CLEAN_WITH_SELFREF_EXEMPT_POLICY | package integrity 已改為 `SELFREF_EXEMPT_CONTROL_FILES` 政策；non-self files 已完成 manifest/checksum/inventory 三表對帳。 |
| execution verdict | FAIL_CLOSED | 本回合仍沒有 runtime distill outputs、沒有 Package D required checks green、沒有 Package E validator/release_guard/shipped package reality 直接 readback。 |
| release verdict | BLOCK_RELEASE | 缺 Package B/D/E owner proofs、CA-DSL consumer acceptance、Ops rollback drill evidence，故不得宣稱 release-ready。 |
| delivery verdict | PASS_MATERIALIZED_CURRENT_SESSION_CLEAN_PACKAGE | 本回合確實物化了 MD、ZIP、manifest、checksums、trees、sourcepack、schemas、samples、validator、matrices、support-web replay sidecars、references。 |
| materialized in this session | YES | 主 Markdown、ZIP、sourcepack 四檔、schemas、samples、validator、registries、matrices、opsflow binding table、support-web registry/replay、導航抽取件、audit readback。 |
| not materialized in this session | YES | runtime distill outputs、separate exact sibling owner carriers、separate exact current WP-RB-WI、legacy standalone exact audit driver。 |

### 本回合誠實存在狀態
- 這次交付的是 **document package**。  
- 不是 runtime distill package。  
- 不是 release-ready package。  
- 不是把 frontstage note 直接晉升成 canonical/package/runtime/release truth 的魔術表演。  
- 這次也不是靠「校驗表寫了就算」過關；r6 已把 control-file self-reference 問題明文制度化並實作。  

### 本次 audit-driven 修補閉合摘要
1. 修正 r5 package integrity mismatch：改採 `SELFREF_EXEMPT_CONTROL_FILES`，`MANIFEST.json` / `CHECKSUMS.sha256` 不再互相咬尾巴。  
2. 修正 shipped validator blind spot：新增 manifest/checksum/inventory 三重驗證，`package_validation.json` 拆出結構、schema、integrity、inventory 四層結果。  
3. 補回 `OpsFlow Binding Table / Operator-Flow Mapping`，不再只剩 note。  
4. 針對 direct upgrade drivers，不再默默降級成 missing；改為明文承認 current exact owner MC4+ 的 `FOUND_FILE_LIBRARY_READBACK` 狀態，並附 carrier-backed revalidation note。  
5. 補齊 inventory under-declaration：validator script、support registry、support replay、opsflow matrix、self-audit matrix 均已入 inventory。  
6. 明文化 `One-Rule-One-Place` 與 `Source-first`，避免未來多冊重複立法與 claim 先於 source。  

---

<a id="cover-card"></a>
## 1. Cover Card / Doc Meta / Machine Summary

| field | value |
|---|---|
| external_name | Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-M_合冊 |
| internal_short_name | SOMOC-CADISTILL-WPM |
| stable_id | CA-DISTILL-WP-M.v2026.03.30-r6 |
| subsystem_id | CA-DISTILL |
| doc_kind | WP-M_MASTER_BOOK |
| version | v2026.03.30-r6 |
| date | 2026-03-30 |
| timezone | Asia/Taipei |
| supersedes | CA-DISTILL-WP-M.v2026.03.30-r5 |
| absorbed_current_owner_book | Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_MC4+_合冊.md |
| absorbed_patch_audit | Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-M_合冊_v2026.03.30-r5_AUDIT_v2026.03.30-r1.md |
| fixed_authority_order | 中央工程正文 → SSOT → LBP → Pack A-E+工程指南 → SubP1-LITE+MVP_合冊 → OMOC_合冊 → 參考方案合冊 |
| fixed_goal_premise_order | 嚴禁自己造輪子 → 現成工具原生能力 → 現成工具+極少配置 → 最後才准許自寫薄腳本 → 低磨合 → 100%逐項達成正文系統需求 |
| pipeline_mainline | CA-WRC → CA-CORPUS → CA-DISTILL → CA-DSL |
| public_canonical_artifact | distill_bundle.json |
| internal_companion_artifact | distill_pack.json |
| wp_minset | WP-MASTER + WP-001 + WP-002 + WP-003 + WP-004 |
| obsidian_legal_position | SUPPORT_FRONTSTAGE_ONLY |
| package_scope | DOCUMENT_PACKAGE_ONLY |
| integrity_policy | SELFREF_EXEMPT_CONTROL_FILES |
| document_verdict | PASS_PATCHED_REPAIRED_DOCUMENT_PACKAGE |
| execution_verdict | FAIL_CLOSED |
| release_verdict | BLOCK_RELEASE |
| delivery_verdict | PASS_MATERIALIZED_CURRENT_SESSION_CLEAN_PACKAGE |

### Machine Summary
```json
{
  "external_name": "Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-M_合冊",
  "stable_id": "CA-DISTILL-WP-M.v2026.03.30-r6",
  "version": "v2026.03.30-r6",
  "subsystem_id": "CA-DISTILL",
  "public_canonical_artifact": "distill_bundle.json",
  "internal_companion_artifact": "distill_pack.json",
  "package_scope": "DOCUMENT_PACKAGE_ONLY",
  "integrity_policy": "SELFREF_EXEMPT_CONTROL_FILES",
  "document_verdict": "PASS_PATCHED_REPAIRED_DOCUMENT_PACKAGE",
  "execution_verdict": "FAIL_CLOSED",
  "release_verdict": "BLOCK_RELEASE",
  "obsidian_legal_position": "SUPPORT_FRONTSTAGE_ONLY",
  "route_out": {
    "Package B": "schema / registry / evidence schema exact fields",
    "Package D": "required checks / factory validators",
    "Package E": "validator / release_guard / shipped package reality",
    "Ops": "operator HOW / rollback choreography"
  }
}
```

### One-line Verdict
本版不是把 r5 換個版本號就想洗掉審查，而是把 **integrity chain、自帶 validator 盲點、OpsFlow table 缺口、direct upgrade-driver source-state regression、inventory under-declaration、Source-first / One-Rule-One-Place 顯式化** 一次補齊；同時保留 **runtime/release owner proof 未到位** 的 fail-closed 誠實邊界。

---
<a id="toc-anchors"></a>
## 2. TOC / Reader Guide / AI-LLM Retrieval Guide / Quick Index / Anti-Hallucination Rules

### 2.1 Section TOC
1. [任務級最終裁決摘要](#task-final-verdict)
2. [Cover Card / Doc Meta / Machine Summary](#cover-card)
3. [TOC / Reader Guide / AI-LLM Retrieval Guide / Quick Index / Anti-Hallucination Rules](#toc-anchors)
4. [Inputs Manifest / Source Hit List / Missing / Alias / Version Resolution](#inputs-manifest)
5. [Authority / Conflict / Goal Premise / Scope-Lock / One-Rule-One-Owner Matrix](#authority-stack)
6. [Review Fix Integration Matrix](#review-fix)
7. [Upstream Coverage / Absorption / Supersede / Archive Matrix](#upstream-coverage)
8. [Support Absorption Ledger](#support-absorption)
9. [Crosswalk / Interface Closure / OpsFlow Binding](#crosswalk-interface)
10. [Tooling / Slot / Sidecar / Fallback / Support-only Legal Position](#tooling-matrix)
11. [Truthful Verdict Framework](#truthful-verdict-framework)
12. [Deliver Reality Table](#deliver-reality-table)
13. [CR_OPEN Temporary Closure Register / TT Register / Reopen Rules / Block-release Conditions](#tt-register)
14. [Support-Web Appendix（SUPPORT-only）](#support-web-appendix)
15. [Packaging Manifest / Download Inventory / Package Tree](#packaging-manifest)
16. [Final Self-Audit](#final-self-audit)
17. [WP-MASTER](#wp-master-anchor)
18. [WP-001](#wp-001-anchor)
19. [WP-002](#wp-002-anchor)
20. [WP-003](#wp-003-anchor)
21. [WP-004](#wp-004-anchor)

### 2.2 強制檢索順序
1. 先讀 §4，先知道誰有法位、誰只有 support、誰只能 route-out。  
2. 再讀 §3，先知道哪些來源是 `FOUND_DIRECT`、哪些是 `EXTRACTED_FROM_CARRIER`、哪些只是 `MISSING_EXACT_FILE`。  
3. 再讀 §8~§12，把 interface truth、tooling stance、verdict split、CR/TT、package reality 全部鎖死。  
4. 最後按 `WP-MASTER -> WP-001 -> WP-002 -> WP-003 -> WP-004` 讀正文。  
5. 遇到 HOW、exact schema authorship、required checks、release guard、consumer acceptance proof，一律 route-out。  

### 2.3 Anti-miss / Anti-confusion / Anti-hallucination
- **No-Source-No-Norm**：沒有來源回讀，不得升格成 MUST / SHALL / PASS / BLOCK_RELEASE。  
- **No-Anchor-No-Claim**：沒有可定位 anchor / line / sidecar 對應，不得宣稱已覆蓋、已閉合、已放行。  
- **Declaration-Is-Not-Implementation**：說「有 schema / validator / package」不算完成；只有當前回合真實可見、可驗、可下載者才算 materialized。  
- **Route-out != Re-legislation**：把事情送回 owner，不代表本書已合法接管。  
- **support-only != owner proof**：SEM8 / SEM³ / MMVR / GraphRAG / RAPTOR / CRAG / RAG-Triad / Obsidian frontstage 都只能補強，不能奪權。  
- **document/package pass != runtime/release pass**：漂亮的 ZIP 不會自動長出 owner proof。  

### 2.4 Quick Index
- 想看固定裁決序位與固定前提：§4.1 / §4.2  
- 想看來源存在狀態：§3  
- 想看相鄰子系統與 Package B/D/E 邊界：§4.4 / §8  
- 想看 Obsidian 法位與 TT：§7 / §9 / §12  
- 想看 package 真實交付與未交付：§0 / §10 / §11 / §14 / §15  

---

<a id="inputs-manifest"></a>
## 3. Inputs Manifest / Source Hit List / Missing / Alias / Version Resolution

### 3.1 Source Hit List
| source_id | source_file | role | state | truth_note |
|---|---|---|---|---|
| SRC-001 | Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md | TOP_AUTHORITY_CARRIER | FOUND_DIRECT | authoritative carrier for 中央工程正文 / 系統需求正文 / Master Spine navigation root |
| SRC-002 | Spartoi-OMOC_SSOT_合冊.md | SSOT | FOUND_DIRECT | index-first / route-out / anti-hallucination / gate-evidence discipline |
| SRC-003 | Spartoi-OMOC_LBP_合冊.md | LBP | FOUND_DIRECT | index contract / SIR-ICD-ADR-C4-Fitness route-out ceiling |
| SRC-004 | Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊.md | PACK_AE_GUIDE | FOUND_DIRECT | Package B/D/E owner ceiling and no-source-no-norm discipline |
| SRC-005 | Spartoi-OMOC_SubP1-LITE+MVP_合冊.md | SUBP1_EXECUTION_VOLUME | FOUND_DIRECT | execution-side supporting volume |
| SRC-006 | OMOC_合冊.md | LOW_TIER_SUPPORT_NORMATIVE | FOUND_DIRECT | docs-as-code / delivery honesty precedent |
| SRC-007 | 參考方案合冊.md | LOW_TIER_REFERENCE | FOUND_DIRECT | reference patterns only; cannot override higher law |
| SRC-008 | Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_MC4+_合冊.md | CURRENT_OWNER_MC4PLUS | FOUND_DIRECT | current exact owner constitution for CA-DISTILL |
| SRC-009 | Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-M_合冊.md | LEGACY_WPM_BASELINE | FOUND_DIRECT | legacy exact WP-M baseline superseded by this edition |
| SRC-010 | Pipeline-A_Index_Pack_Full_Monolith.md | PIPELINE_A_INDEX_PACK | FOUND_DIRECT | Pipeline-A bridge / retrieval router / home subsystem registry |
| SRC-011 | Pipeline-A_Obsidian升級藍圖.md | OBSIDIAN_PATCH_BLUEPRINT | FOUND_DIRECT | task-local patched blueprint for repo-native mainline + Obsidian shadow frontstage |
| SRC-012 | SEM8-ICT-TW_重構升級藍圖_v1.2.1-r1.md | SEM8_AUDIT_SHELL | FOUND_DIRECT | audit shell / bind shell / route-out shell |
| SRC-013 | SEM³資料參考_合冊.md | SEMANTIC_SUPPORT | FOUND_DIRECT | semantic shell / metrics vocabulary support |
| SRC-014 | 多模態多向量圖像檢索技術指南_筆記.txt | MULTIVECTOR_SUPPORT | FOUND_DIRECT | optional multivector support lane only |
| SRC-015 | Pipeline-A設計資料參考_合冊.md | DESIGN_SUPPORT | FOUND_DIRECT | CA-DISTILL & CA-DSL design hints only |
| SRC-016 | Pipeline-A實作資料參考_合冊.md | IMPLEMENTATION_SUPPORT | FOUND_DIRECT | run-first / evidence-first implementation hints only |
| SRC-017 | 台股實戰映射_合冊.md | DOMAIN_CONTEXT | FOUND_DIRECT | domain vocabulary boundary only |
| SRC-018 | Ops RUNBOOK_合冊.md | OPS_ROUTE_OUT_OWNER | FOUND_DIRECT | HOW / rollback / stopline owner surface |
| SRC-019 | references/navigation/Spartoi-OMOC_Master_Spine_Full_Monolith.extracted-from-正文合冊.md | MASTER_SPINE_NAV_ROOT | EXTRACTED_FROM_CARRIER | materialized from authoritative carrier for navigation only |
| SRC-020 | Pipeline-A_MC4+_WP-M_WP-RB-WI_最終升級藍圖.md | PIPELINE_A_BLUEPRINT | FOUND_FILE_LIBRARY_READBACK | carrier-backed file-library readback inherited from current exact owner MC4+ appendix and exact locator set; not mounted in workspace root |
| SRC-021 | CA-DISTILL_MC4+_WP-M_WP-RB-WI_最終升級藍圖.md | CA_DISTILL_BLUEPRINT | FOUND_FILE_LIBRARY_READBACK | carrier-backed file-library readback inherited from current exact owner MC4+ appendix and exact locator set; not mounted in workspace root |
| SRC-022 | CA-DSL_MC4+_WP-M_WP-RB-WI_最終升級藍圖.md | CA_DSL_BLUEPRINT | UNVERIFIED | mounted Pipeline-A carrier preserves exact locators and boundary trace, but current-session standalone file-library nav item was not re-surfaced |
| SRC-023 | CA-WRC_MC4+_WP-M_WP-RB-WI_最終升級藍圖.md | CA_WRC_BLUEPRINT | MISSING_EXACT_FILE | separate exact file absent in current workspace |
| SRC-024 | CA-CORPUS_MC4+_WP-M_WP-RB-WI_最終升級藍圖.md | CA_CORPUS_BLUEPRINT | MISSING_EXACT_FILE | separate exact file absent in current workspace |
| SRC-025 | Spartoi-OMOC_SubP1-LITE+MVP_CA-WRC_合冊.md | SIBLING_OWNER_WRC | MISSING_EXACT_FILE | exact sibling carrier absent in current workspace; interface truth only |
| SRC-026 | Spartoi-OMOC_SubP1-LITE+MVP_CA-CORPUS_合冊.md | SIBLING_OWNER_CORPUS | MISSING_EXACT_FILE | exact sibling carrier absent in current workspace; interface truth only |
| SRC-027 | Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_合冊.md | SIBLING_OWNER_DSL | MISSING_EXACT_FILE | exact sibling carrier absent in current workspace; interface truth only |
| SRC-028 | Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-RB-WI_合冊.md | CURRENT_OWNER_WP_RB_WI | MISSING_EXACT_FILE | exact standalone WP-RB-WI file not mounted in current workspace |
| SRC-029 | Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-M_合冊_AUDIT.md | LEGACY_AUDIT_DRIVER | MISSING_EXACT_FILE | legacy r3/r4-era separate audit driver still absent as standalone exact file |
| SRC-030 | Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-M_合冊_v2026.03.30-r5_AUDIT_v2026.03.30-r1.md | CURRENT_PATCH_AUDIT_DRIVER | FOUND_DIRECT | current-session exact audit report used as mandatory patch driver |

### 3.2 Alias Normalization
| alias | canonical | note |
|---|---|---|
| Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文 | Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md::DOC-0001 authoritative carrier | authoritative carrier rule |
| Spartoi-OMOC_系統需求正文 | Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md::DOC-0002 authoritative carrier | authoritative carrier rule |
| Spartoi-OMOC_Master_Spine_Full_Monolith | references/navigation/Spartoi-OMOC_Master_Spine_Full_Monolith.extracted-from-正文合冊.md | navigation-root extraction only |
| distill_bundle.json | public canonical artifact | fixed canonical name |
| distill_pack.json | internal companion artifact | cannot supersede canonical |
| 參考方案_合冊 | 參考方案合冊.md | filename normalization |

### 3.3 Version Resolution / Supersede Note
- active edition: `Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-M_合冊_v2026.03.30-r6.md`  
- superseded exact legacy baseline: `Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-M_合冊.md`  
- current exact owner constitution absorbed: `Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_MC4+_合冊.md`  
- delivery truth: 本回合真實交付的是 **單一主 Markdown + 單一 ZIP document package + sidecars + validator + sourcepack**；**不是 runtime bundle，也不是 release package**。  

### 3.4 Missing / Unverified Ledger
- `Pipeline-A_MC4+_WP-M_WP-RB-WI_最終升級藍圖.md`：`FOUND_FILE_LIBRARY_READBACK`（not mounted in workspace root；carrier-backed revalidation）  
- `CA-DISTILL_MC4+_WP-M_WP-RB-WI_最終升級藍圖.md`：`FOUND_FILE_LIBRARY_READBACK`（not mounted in workspace root；carrier-backed revalidation）  
- `CA-DSL_MC4+_WP-M_WP-RB-WI_最終升級藍圖.md`：`UNVERIFIED`（locator trace exists, standalone nav item not re-surfaced in current patch session）  
- `CA-WRC_MC4+_WP-M_WP-RB-WI_最終升級藍圖.md` / `CA-CORPUS_MC4+_WP-M_WP-RB-WI_最終升級藍圖.md`：`MISSING_EXACT_FILE`  
- `Spartoi-OMOC_SubP1-LITE+MVP_CA-WRC_合冊.md` / `CA-CORPUS_合冊.md` / `CA-DSL_合冊.md`：`MISSING_EXACT_FILE`  
- `Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-RB-WI_合冊.md`：`MISSING_EXACT_FILE`  
- legacy standalone audit driver exact file：`MISSING_EXACT_FILE`  

### 3.5 Exact Locator Registry（direct subset）
| locator_id | source_file | locator | pattern | purpose |
|---|---|---|---|---|
| LOC-001 | Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md | L49 | No-Source-No-Norm | top-law fail-closed rule |
| LOC-002 | Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md | L50 | No-Anchor-No-Claim | top-law exact-claim rule |
| LOC-003 | Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md | L109 | Package B（Control Plane Pack） | Package B owner ceiling |
| LOC-004 | Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md | L111 | Package D（Factory Pack） | Package D owner ceiling |
| LOC-005 | Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md | L112 | Package E（Subsystem Delivery Pack） | Package E owner ceiling |
| LOC-006 | Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md | L1954 | distill_bundle.json | system demand mentions minimum distill output |
| LOC-007 | Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md | L31 | ## Highest Authority & Placement Order | authoritative carrier placement order |
| LOC-008 | Spartoi-OMOC_SSOT_合冊.md | L35 | ## Index Contract (AI retrieval MUST follow) | SSOT index-first retrieval contract |
| LOC-009 | Spartoi-OMOC_SSOT_合冊.md | L42 | ## Anti-Miss / Anti-Confusion / Anti-Hallucination Guard | SSOT anti-hallucination guard |
| LOC-010 | Spartoi-OMOC_LBP_合冊.md | L25 | ## Index Contract | LBP index contract |
| LOC-011 | Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊.md | L1545 | No-Source-No-Norm | Pack A-E no-source-no-norm |
| LOC-012 | Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊.md | L2501 | No-Anchor-No-Claim | Pack A-E no-anchor-no-claim |
| LOC-013 | Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_MC4+_合冊.md | L46 | public_canonical_artifact | current owner canonical artifact adjudication |
| LOC-014 | Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_MC4+_合冊.md | L47 | internal_companion_artifact | current owner internal companion artifact adjudication |
| LOC-015 | Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_MC4+_合冊.md | L49 | SUPPORT_FRONTSTAGE_ONLY | current owner obsidian legal position |
| LOC-016 | Pipeline-A_Index_Pack_Full_Monolith.md | L13 | artifact_status | declaration-is-not-implementation bridge |
| LOC-017 | Pipeline-A_Index_Pack_Full_Monolith.md | L88 | home_subsystems | Pipeline-A home subsystem registry |
| LOC-018 | Pipeline-A_Obsidian升級藍圖.md | L6 | SUPPORT_FRONTSTAGE_ONLY | Obsidian legal position |
| LOC-019 | Pipeline-A_Obsidian升級藍圖.md | L409 | Mainline without Obsidian | TT-OBS-001 |
| LOC-020 | Pipeline-A_Obsidian升級藍圖.md | L410 | Manifest exclusion | TT-OBS-002 |
| LOC-021 | Pipeline-A_Obsidian升級藍圖.md | L417 | Community plugin absence | TT-OBS-009 |
| LOC-022 | Pipeline-A_Obsidian升級藍圖.md | L68 | merge_group | support-official GitHub Docs evidence registry note |
| LOC-023 | SEM8-ICT-TW_重構升級藍圖_v1.2.1-r1.md | L15 | audit shell / bind shell / route-out shell | SEM8 legal position |
| LOC-024 | Ops RUNBOOK_合冊.md | L55 | Bundle-level Highest Adjudication Order | Ops highest adjudication order |
| LOC-025 | SEM³資料參考_合冊.md | L34 | Gate Snapshot | semantic shell gate snapshot |
| LOC-026 | Pipeline-A設計資料參考_合冊.md | L16 | CA-DISTILL & CA-DSL_升級方案 | design support locus |
| LOC-027 | Pipeline-A實作資料參考_合冊.md | L53 | Whole-Doc Slots | implementation support locus |
| LOC-028 | 多模態多向量圖像檢索技術指南_筆記.txt | L44 | 第三章：多向量圖像檢索核心技術 | optional multivector support locus |
| LOC-029 | 台股實戰映射_合冊.md | L35 | Global Index Contract | domain support boundary locus |
| LOC-030 | references/navigation/Spartoi-OMOC_Master_Spine_Full_Monolith.extracted-from-正文合冊.md | L6 | Spartoi-OMOC_Master_Spine_Full_Monolith | materialized navigation root extracted from authoritative carrier |
| LOC-031 | Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_MC4+_合冊.md | L1005-L1008 | CA-DISTILL_MC4+_WP-M_WP-RB-WI_最終升級藍圖 / Pipeline-A_MC4+_WP-M_WP-RB-WI_最終升級藍圖 | current exact owner MC4+ appendix preserves exact locators for direct blueprint readback |
| LOC-032 | Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_MC4+_合冊.md | L995-L996 | FOUND_FILE_LIBRARY_READBACK | current exact owner MC4+ source existence proof for direct upgrade drivers |
| LOC-033 | Spartoi-OMOC_SubP1-LITE+MVP_Pipeline-A_MC4+_WP-M_合冊.md | L6763-L6767 | LOC-005~LOC-009 | Pipeline-A carrier preserves blueprint locator chain and OP-03/05/09 mapping |
| LOC-034 | Ops RUNBOOK_合冊.md | L3383-L3401 | OP-03 / OP-05 / OP-09 operator flow names | operator-flow binding proof |
| LOC-035 | Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-M_合冊_v2026.03.30-r5_AUDIT_v2026.03.30-r1.md | §3-§10 | D-001 / D-002 / S-001 / S-002 / L-001 / L-002 | current patch audit findings driving r6 repair |


> 完整版 exact locator 已另落盤 `exact_locator_registry.tsv`。本版寧可少說，也不拿缺席 exact file 假扮 direct readback。

---

<a id="authority-stack"></a>
## 4. Authority / Conflict / Goal Premise / Scope-Lock / One-Rule-One-Owner Matrix

### 4.1 固定裁決序位（嚴禁改序）
1. 《Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文》  
2. 《Spartoi-OMOC_SSOT_合冊》  
3. 《Spartoi-OMOC_LBP_合冊》  
4. 《Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊》  
5. 《Spartoi-OMOC_SubP1-LITE+MVP_合冊》  
6. 《OMOC_合冊》  
7. 《參考方案_合冊》  

補充法位：
- 《Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文》與《Spartoi-OMOC_系統需求正文》均以《Spartoi-OMOC_SubP1-LITE+MVP_正文合冊》內 authoritative carrier 為準。  
- 同層衝突採：`direct clause / direct anchor / machine-auditable artifact > 摘要式主張`。  
- task-local 指令治理本次交付行為，但不改寫以上 source-law fixed order。  

### 4.2 固定目標前提序位（嚴禁改序）
1. 嚴禁自己造輪子  
2. 第一優先：現成工具原生能力  
3. 第二優先：現成工具 + 極少配置  
4. 最後才准許自寫薄腳本  
5. 低磨合  
6. 100%逐項達成《Spartoi-OMOC_SubP1-LITE+MVP_正文合冊》的系統需求  

補充硬規則：
- 禁止 A/B 混搭主線；若涉及 Pipeline-A 最終藍圖選線，固定採 **B 版家族** 作唯一主線。  
- 不得用「輪子很多」假裝「落地很強」。  
- 不得導入高磨合、高脆弱、高維護成本路線。  

### 4.3 Conflict Rules / Scope Lock
- source-law fixed order > mounted current owner books > support bridges > support web。  
- 明文條文 > 摘要。  
- 實體交付檔 > 文本宣稱已交付。  
- row-level coverage > 宏觀口號。  
- owner 邊界 > 本書越權收編。  
- **One-Rule-One-Place**：同一條 rule 只允許一個 owner surface；其他冊只能引用、不得重寫成第二憲法。  
- **Source-first**：先命中 source / locator / artifact，再下 claim；沒有 source 回指，不得升格成 MUST / PASS / BLOCK_RELEASE。  
- 本書可寫：mission / scope / truth split / artifact identity / sourcepack governance / input contract / engine governance / evidence triplet / packaging truth / PASS-only handoff / rollback stoplines。  
- 本書不可寫：Package B exact schema authorship、Package D required checks internals、Package E validator/release_guard internals、Ops HOW。  

### 4.4 One-Rule-One-Owner Matrix
| topic | owner | landed_here | law_position |
|---|---|---|---|
| public canonical artifact / internal companion artifact | CA-DISTILL | YES | OWNER_LAW |
| lawful corpus handoff truth | CA-CORPUS | boundary only | CONSUME_ONLY |
| allowlist / provenance / sealing / intake truth | CA-WRC | boundary only | CONSUME_ONLY |
| PASS-only downstream handoff | CA-DISTILL -> CA-DSL boundary | YES | PRODUCER_SIDE_OWNER_LAW |
| exact schema / registry / evidence schema | Package B | NO | ROUTE_OUT_ONLY |
| required checks / factory validators | Package D | NO | ROUTE_OUT_ONLY |
| validator / release_guard / shipped package reality | Package E | NO | ROUTE_OUT_ONLY |
| operator HOW / rollback choreography | Ops | NO | ROUTE_OUT_ONLY |

---

<a id="review-fix"></a>
## 5. Review Fix Integration Matrix
| patch_id | finding_or_requirement | closure_in_r6 | status |
|---|---|---|---|
| PATCH-001 | legacy false FOUND_DIRECT surfaces for non-mounted sibling / blueprint files | sibling carriers remain MISSING_EXACT_FILE; direct upgrade drivers differentiated into carrier-backed FOUND_FILE_LIBRARY_READBACK / UNVERIFIED where appropriate | CLOSED |
| PATCH-002 | fixed authority order had drift from user-fixed order | normalized to exact fixed source-law order with separate task-execution note | CLOSED |
| PATCH-003 | fixed goal premise order not explicit enough | materialized dedicated premise-order section and tooling ledger | CLOSED |
| PATCH-004 | Obsidian adoption needed legal-position hardening | SUPPORT_FRONTSTAGE_ONLY restated with nonpromotion / manifest exclusion / shadow-nonblocking / smoke TT | CLOSED |
| PATCH-005 | legacy package inventory not current-session truthful | rebuilt manifest/checksums/delivery manifest/package trees from current materialized files under SELFREF_EXEMPT policy | CLOSED |
| PATCH-006 | current exact owner WP-RB-WI readback unavailable | truthfully retained as MISSING_EXACT_FILE with no fake extracted parity claim | CLOSED |
| PATCH-007 | legacy audit-driver exact file unavailable | truthfully retained as MISSING_EXACT_FILE while current r5 audit driver exact file added as mandatory patch input | CLOSED |
| PATCH-008 | document/package/runtime/release truth drift risk | verdict split preserved and owner-proof gaps retained as FAIL_CLOSED/BLOCK_RELEASE | CLOSED |
| PATCH-009 | FINDING-D-001 checksum / manifest self-reference mismatch | adopted SELFREF_EXEMPT_CONTROL_FILES and rebuilt package verification order | CLOSED |
| PATCH-010 | FINDING-D-002 shipped validator blind spot | validator upgraded to structure + schema + integrity + inventory validation | CLOSED |
| PATCH-011 | FINDING-S-001 OpsFlow table collapsed into note | materialized OpsFlow Binding Table / Operator-Flow Mapping with OP-03 / OP-05 / OP-09 rows | CLOSED |
| PATCH-012 | FINDING-S-002 inventory under-declaration | download inventory explicitly lists validator, support registries, support replay, opsflow matrix and primary/full split note | CLOSED |
| PATCH-013 | FINDING-L-002 Source-first / One-Rule-One-Place not explicit | both clauses independently codified in authority section | CLOSED |


---

<a id="upstream-coverage"></a>
## 6. Upstream Coverage / Absorption / Supersede / Archive Matrix
| closure_id | source_group | state | landing_mode | note |
|---|---|---|---|---|
| UP-001 | 中央工程正文 / 系統需求正文 authoritative carrier | ABSORBED | DIRECT | higher-law fail-closed, package ceilings, system demand |
| UP-002 | SSOT | ABSORBED | DIRECT | index-first / anti-hallucination / route-out discipline |
| UP-003 | LBP | ABSORBED | DIRECT | contract / C4 / fitness / route-out ceiling |
| UP-004 | Pack A-E | ABSORBED | DIRECT | Package B/D/E owner boundaries |
| UP-005 | SubP1-LITE+MVP 合冊 | ABSORBED | DIRECT | execution-facing supporting context |
| UP-006 | OMOC 合冊 | ABSORBED | SUPPORT_PRECEDENT | docs-as-code / package honesty precedent |
| UP-007 | 參考方案合冊 | ABSORBED | SUPPORT_PRECEDENT | reference patterns only |
| UP-008 | CA-DISTILL current MC4+ | ABSORBED | DIRECT | owner constitution / current package truth / obsidian delta |
| UP-009 | legacy CA-DISTILL WP-M | SUPERSEDED | DIRECT | substantively replaced by this edition |
| UP-010 | Pipeline-A Index Pack | ABSORBED | BRIDGE_ONLY | home subsystem and declaration-is-not-implementation bridge |
| UP-011 | Pipeline-A Obsidian Blueprint | ABSORBED | DIRECT | repo-native mainline + shadow frontstage policy and TT |
| UP-012 | SEM8 blueprint | ABSORBED | SUPPORT_BRIDGE | audit shell / bind shell / route-out shell only |
| UP-013 | Pipeline-A design / implementation references | ABSORBED | SUPPORT_ONLY | implementation hints only |
| UP-014 | SEM³ / MMVR / 台股映射 | ABSORBED | SUPPORT_ONLY | semantic shell / optional multivector / domain boundary only |
| UP-015 | separate subsystem blueprints not mounted this session | PARTIAL_DIRECT / INDIRECT_ONLY | Pipeline-A and CA-DISTILL direct drivers retained as carrier-backed FOUND_FILE_LIBRARY_READBACK; others remain indirect or missing |
| UP-016 | current patch audit driver | ABSORBED | DIRECT | r5 audit findings D/S/L were integrated as mandatory repair driver |


### 6.1 固定五段 WP 拓撲裁決
- 本回合固定採：`WP-MASTER + WP-001 + WP-002 + WP-003 + WP-004`  
- 不增刪、不改名、不膨脹為高摩擦文檔森林。  
- 理由：五段已可完整覆蓋 mission/scope、canonical fence、input preflight、three-phase engine、semantic faithfulness / packaging / handoff / rollback。  

---

<a id="support-absorption"></a>
## 7. Support Absorption Ledger
| support_id | source | legal_position | use | revoke_condition |
|---|---|---|---|---|
| SUP-001 | SEM³資料參考_合冊 | SUPPORT_ONLY | semantic shell / metrics vocabulary | if higher law conflicts, demote immediately |
| SUP-002 | 多模態多向量圖像檢索技術指南_筆記.txt | SUPPORT_ONLY | optional multivector retrieval lab | cannot replace owner proof or canonical handoff |
| SUP-003 | Pipeline-A設計資料參考_合冊 | SUPPORT_ONLY | design uplift patterns | cannot rewrite owner boundaries |
| SUP-004 | Pipeline-A實作資料參考_合冊 | SUPPORT_ONLY | run-first implementation hints | cannot claim release truth |
| SUP-005 | 台股實戰映射_合冊 | SUPPORT_BOUNDARY_ONLY | domain vocabulary guard | not correctness owner |
| SUP-006 | SEM8-ICT-TW_重構升級藍圖_v1.2.1-r1.md | SUPPORT_BRIDGE | audit shell / bind shell / route-out shell | cannot become constitutional override |


### 7.1 Obsidian absorption delta（固定法位）
- 唯一合法位置：`repo-native mainline + Obsidian shadow frontstage`  
- legal position：`SUPPORT_FRONTSTAGE_ONLY`  
- frontstage 允許：capture / review / shadow authoring / crosswalk / sourcepack 人工編修輔助 / optional views / `.base` landing zone  
- frontstage 禁止：canonical artifact source / validator / required checks authority / release guard authority / runtime truth / release truth / package truth owner  
- promotion path：`note/frontstage -> materialize -> validate -> package`  
- `.obsidian/**`、`notes/obsidian/**`、frontstage views 可進 ZIP / archive ledger，但不得進 mandatory manifest / checksums / canonical truth paths  

---

<a id="crosswalk-interface"></a>
## 8. Crosswalk / Interface Closure / OpsFlow Binding

### 8.1 Crosswalk Matrix
| source_family | landed_use | landing_section_or_artifact | note |
|---|---|---|---|
| 中央工程正文 / 系統需求正文 | higher-law authority / fail-closed / package ceiling | §4 / §12 / exact_locator_registry.tsv | owner law |
| SSOT | index-first / anti-hallucination / evidence discipline | §2 / §4 / §11 | owner law |
| LBP | contract / route-out / docs-as-code / fitness boundary | §4 / §11 / route_out_registry.json | owner ceiling only |
| Pack A-E | Package B/D/E owner ceiling | §4 / §12 | owner ceiling only |
| Pipeline-A Index Pack | bridge / retrieval router / home_subsystems | §8 / §11 | bridge only |
| Pipeline-A Obsidian Blueprint | repo-native mainline + shadow frontstage / TT | §7 / §11 / §14 | direct patch input |
| SEM8 | audit shell / bind shell / route-out shell | §7 / §15 | support bridge only |
| SEM³ / MMVR | semantic shell / optional multivector lane | §7 / WP-003 | support only |
| Pipeline-A design / implementation references | design and implementation hints | §7 / WP-003 | support only |
| 台股實戰映射 | domain vocabulary guard | §7 | support boundary only |
| Ops RUNBOOK | HOW owner surface / rollback route-out | §10 / WP notes | route-out only |


### 8.2 Interface Closure Matrix
| if_id | producer | consumer | surface | legal_effect | evidence_state | stopline |
|---|---|---|---|---|---|---|
| IF-001 | CA-WRC | CA-DISTILL | allowlist / provenance / sealing / intake truth | CONSUME_ONLY | MISSING_EXACT_FILE_FOR_WRC_OWNER_BOOK | absence => FAIL_CLOSED before intake acceptance |
| IF-002 | CA-CORPUS | CA-DISTILL | corpus snapshot / source locator / grounding truth | CONSUME_ONLY | MISSING_EXACT_FILE_FOR_CORPUS_OWNER_BOOK | absence => FAIL_CLOSED before claim materialization |
| IF-003 | CA-DISTILL | CA-DSL | PASS-only dsl_handoff_payload.json | MANDATORY_HANDOFF_CONTRACT | BLUEPRINT_AND_OWNER_PROOF_ABSENT_AS_EXACT_FILES | handoff_allowed=false or SGF!=PASS => no handoff |
| IF-004 | CA-DISTILL | Package B | schema / registry / evidence schema exact fields | ROUTE_OUT_ONLY | OWNER_PROOF_MISSING | BLOCK_RELEASE |
| IF-005 | CA-DISTILL | Package D | required checks / factory validators | ROUTE_OUT_ONLY | OWNER_PROOF_MISSING | BLOCK_RELEASE |
| IF-006 | CA-DISTILL | Package E | validator / release_guard / shipped package reality | ROUTE_OUT_ONLY | OWNER_PROOF_MISSING | BLOCK_RELEASE |


### 8.3 OpsFlow Binding Table / Operator-Flow Mapping
| phase_stage | operator_flow_name | binding_surface | gated_by | required_outputs | evidence_hooks | rollback_expectation | stopline | owner_surface | route_out_target |
|---|---|---|---|---|---|---|---|---|---|
| OP-03 | 教材庫預處理+蒸餾 | CA-CORPUS -> CA-DISTILL intake / preflight / engine start | GATE-DISTILL-PREFLIGHT ; GATE-DISTILL-ENGINE | preflight_report.json ; input_manifest.json ; authority_map.json | exact_locator_registry.tsv::LOC-031/033/034 ; sample_distill_bundle.json | rollback to intake review; quarantine unresolved locators | stop if allowlist/provenance/sealing or locator completeness absent | CA-DISTILL | CA-WRC / CA-CORPUS / Ops |
| OP-05 | 方法制定 | CA-DISTILL -> CA-DSL handoff edge | GATE-DISTILL-SGF ; GATE-DISTILL-HANDOFF-DSL | distill_bundle.json ; dsl_handoff_payload.json ; semantic_gate.report.json | samples/sample_dsl_handoff_payload.json ; release_readiness_support_matrix.tsv | withdraw handoff_allowed and reopen package on gate/schema mismatch | stop if SGF decision != PASS or provenance incomplete | CA-DISTILL + CA-DSL | Package B / CA-DSL / Ops |
| OP-09 | XS轉譯 | package / release truth stopline | GATE-PACKAGE-TRUTH ; GATE-RELEASE-STOPLINE | verdict.json ; evidence_index.json ; checks_manifest.json ; bundle_audit.json | package_validation.json ; machine_summary.json ; release_readiness_support_matrix.tsv | reissue BLOCK_RELEASE and rerun validator when owner proof missing or checksum drifts | stop if Package B/D/E proof absent or runtime artifacts not materialized | Package E owner + subsystem local package truth | Package D / Package E / Ops |

### 8.4 OpsFlow Binding Note
- 本書只綁 **Outcome / Preconditions / Verify / Rollback expectation / Evidence Min Set** 的 owner surface。  
- 不抄 command、click-path、jobcard HOW。  
- Ops 是 HOW owner，不是本書可偷渡的影分身。  

---

<a id="tooling-matrix"></a>
## 9. Tooling / Slot / Sidecar / Fallback / Support-only Legal Position

### 9.1 Tooling Decision Ledger
| tool_or_family | tier | decision | note |
|---|---|---|---|
| GitHub Actions | PRIMARY_NATIVE | ADOPT | required-checks shell only; use pull_request + merge_group when merge queue applies |
| jsonschema + Python thin validator | PRIMARY_NATIVE | ADOPT | thin validator allowed; no engine reinvention |
| Obsidian core plugins / Bases / Web Clipper | SUPPORT_FRONTSTAGE_ONLY | ADOPT_WITH_GUARD | capture/review/shadow authoring only |
| community plugins | OPTIONAL_ONLY | DEMOTE | absence must not break mainline |
| Qdrant multivector / late interaction | OPTIONAL_LAB | DEMOTE | support-only retrieval experiments |
| Docs-as-Code × Diátaxis × GraphRAG/RAPTOR/CRAG × RAG-Triad | SUPPORT_METHOD | DEMOTE | reading / retrieval / traceability scaffold only |

### 9.2 Sourcepack and artifact constitution
- sourcepack 固定治理單位：`docs/subsystems/CA-DISTILL/sourcepack/`  
- 四檔固定：`meta.json / CA-CORE.md / CA-MC4.md / CA-WP.md`  
- public canonical artifact：`distill_bundle.json`  
- internal companion artifact：`distill_pack.json`  
- package_scope：`DOCUMENT_PACKAGE_ONLY`  
- 本回合 materialized 的是 document package；不得倒推成 runtime distill outputs 已存在。  
- execution / release 若缺 owner proof，維持 `FAIL_CLOSED / BLOCK_RELEASE`。  

### 9.3 Obsidian gate / TT set（最低必備）
- nonpromotion gate  
- manifest exclusion gate  
- shadow-nonblocking gate  
- mainline without Obsidian smoke  
- promotion path smoke  
- optional plugin absence  
- merge_group / required checks coverage  
- checksum / manifest / inventory tri-verify  
- support-web replay sidecar coverage  

---

<a id="truthful-verdict-framework"></a>
## 10. Truthful Verdict Framework

| layer | pass means | does not mean |
|---|---|---|
| document truth | 主書與正文可回讀、可審核、可對照 | runtime 已跑過 |
| package truth | ZIP、manifest、checksums、validator、tree、sidecars 已存在且自洽 | release 已放行 |
| runtime truth | runtime artifacts 與 execution evidence 已直接 readback | release guard 已綠 |
| release truth | Package D/E owner proofs 與 shipped reality 已直接 readback | 可以被 document/package pass 代替 |

### 10.1 本版真實結論
- document truth：**PASS**  
- package truth：**PASS**  
- runtime truth：**FAIL_CLOSED**  
- release truth：**BLOCK_RELEASE**  

---

<a id="deliver-reality-table"></a>
## 11. Deliver Reality Table
| item | state | note |
|---|---|---|
| Main Markdown | MATERIALIZED | current-session exact file created |
| ZIP document package | MATERIALIZED | current-session exact file created |
| integrity-clean control-file policy | MATERIALIZED | SELFREF_EXEMPT_CONTROL_FILES implemented in BUILD/manifest/checksum/validator surfaces |
| support-web replay sidecars | MATERIALIZED | support/support_web_replay.tsv + support/support_web_snapshot_notes.md |
| opsflow binding matrix | MATERIALIZED | matrices/opsflow_binding_table.tsv + §8.3 |
| sourcepack four-file governance | MATERIALIZED | meta.json / CA-CORE.md / CA-MC4.md / CA-WP.md |
| schemas / contracts / samples / validator | MATERIALIZED | document-scope local artifacts only |
| Master Spine navigation extract | MATERIALIZED | extracted from authoritative carrier, navigation-only legal position |
| current owner WP-RB-WI exact standalone readback | NOT_MATERIALIZED | exact file absent in current workspace |
| legacy audit-driver exact file | NOT_MATERIALIZED | exact file absent in current workspace |
| runtime distill outputs | NOT_MATERIALIZED | document package != runtime package |
| Package B/D/E owner proofs | NOT_MATERIALIZED | release remains BLOCK_RELEASE |


---

<a id="tt-register"></a>
## 12. CR_OPEN Temporary Closure Register / TT Register / Reopen Rules / Block-release Conditions

### 12.1 CR_OPEN Register
| cr_open_id | issue | temporary_closure_reason | close_criteria | reopen_trigger | rollback_trigger | owner | posture | tracking_mark |
|---|---|---|---|---|---|---|---|---|
| CR-PKG-B-001 | Package B exact schema owner parity absent | document-scope local schemas exist, but owner parity is not direct-readback green | Package B exact locator or explicit acceptance materialized | owner schema diff or locator move | canonical schema conflict | Package B | BLOCK_RELEASE | TEST_TRACK |
| CR-PKG-D-001 | Package D required checks / factory proof absent | document package is materialized, but required checks proof is not | required checks and factory validator readback green | promotion claim without proof | execution guard failure | Package D | BLOCK_RELEASE | TEST_TRACK |
| CR-PKG-E-001 | Package E validator / release_guard / shipped package reality absent | local validator exists, but owner release proof is absent | validator + release_guard + shipped reality direct readback green | release-ready claim without proof | release guard drift | Package E | BLOCK_RELEASE | TEST_TRACK |
| CR-DSL-001 | CA-DSL consumer acceptance absent | producer-side PASS-only contract is defined, downstream acceptance proof is absent | consumer acceptance materialized | consumer rejection or schema drift | withdraw handoff_allowed | CA-DSL | FAIL_CLOSED | TEST_TRACK |
| CR-OPS-001 | Ops rollback drill evidence absent | Ops mapping is bound but drill was not executed here | drill evidence bundle materialized | rollback semantics drift | rollback readiness withdrawn | Ops | FAIL_CLOSED | TEST_TRACK |
| CR-SIB-001 | sibling owner exact files absent in current workspace | interface truth is preserved via higher-law and current exact MC4+ but exact sibling carriers are absent | exact sibling carriers mounted or direct readback available | any claim of direct sibling readback without file | interface closure degrades to paper-only | CA-WRC/CA-CORPUS/CA-DSL | FAIL_CLOSED | TEST_TRACK |
| CR-BP-001 | separate per-subsystem blueprints absent as exact files | coverage inherited only through current exact carriers and bridge packs | exact blueprint files mounted or direct readback available | attempt to claim exact blueprint parity without file | revert to indirect-only absorption note | Pipeline-A / subsystem blueprint owners | FAIL_CLOSED | TEST_TRACK |


### 12.2 TT Register
| tt_id | topic | linked_cr_open | close_criteria |
|---|---|---|---|
| TT-DISTILL-001 | Schema owner parity | CR-PKG-B-001 | Package B owner exact schema parity |
| TT-DISTILL-002 | Required checks proof | CR-PKG-D-001 | Package D required checks / factory proof |
| TT-DISTILL-003 | Release guard proof | CR-PKG-E-001 | Package E validator / release_guard / shipped package reality |
| TT-DISTILL-004 | Consumer acceptance | CR-DSL-001 | CA-DSL PASS-only handoff acceptance |
| TT-DISTILL-005 | Ops rollback drill | CR-OPS-001 | Ops drill evidence |
| TT-DISTILL-006 | Sibling exact carriers | CR-SIB-001 | exact sibling owner files mounted |
| TT-DISTILL-007 | Separate blueprint exact files | CR-BP-001 | exact blueprint files mounted |
| TT-DISTILL-008 | Package integrity chain | - | checksum / manifest / inventory tri-verify remains green under SELFREF_EXEMPT policy |
| TT-DISTILL-009 | Support-web replayability | - | support_web_registry and support_web_replay sidecars remain aligned |
| TT-OBS-001 | Mainline without Obsidian | - | close when render/validate/CI pass without Obsidian |
| TT-OBS-002 | Manifest exclusion | - | close when mandatory manifest excludes .obsidian/** and notes/obsidian/** |
| TT-OBS-003 | Nonpromotion gate | - | close when canonical/package-truth paths never reference note/frontstage |
| TT-OBS-004 | Shadow-nonblocking gate | - | close when frontstage absence does not block mainline validation |
| TT-OBS-005 | Promotion path smoke | - | close when note/frontstage -> materialize -> validate -> package path smoke passes |
| TT-OBS-006 | Optional plugin absence | - | close when no optional community plugin is required for baseline flow |
| TT-OBS-007 | merge_group coverage | - | close when pull_request and merge_group required-check path both report |


### 12.3 Reopen Rules / Block-release Conditions
- 任一 owner proof 缺席而出現 promotion / release-ready claim：立即 reopen 對應 CR/TT，維持 `BLOCK_RELEASE`。  
- 任一 canonical hash drift、schema drift、SGF drift、consumer rejection：撤回 `handoff_allowed`。  
- 任一 support source 漂移：不影響 owner law，但需刷新 support registry。  
- 任一 extracted-from-carrier surface 與 carrier不一致：立即降級並 reopen。  
- 任一 mainline validator / workflow 在關閉 Obsidian 後失效：立即 reopen 並維持 `BLOCK_RELEASE`。  

---

<a id="support-web-appendix"></a>
## 13. Support-Web Appendix（SUPPORT-only）
| claim_key | source_title | source_ref_id | access_date | claim_summary | use_boundary | revoke_condition |
|---|---|---|---|---|---|---|
| WEB-GH-001 | GitHub Docs — Events that trigger workflows | turn876575search5 | 2026-03-30 | merge queues with required checks need the `merge_group` event in workflows or required checks will not report for queue entries. | SUPPORT_ONLY / CI-shell evidence only | re-open if GitHub changes merge_queue semantics |
| WEB-GH-002 | GitHub Docs — Troubleshooting required status checks | turn876575search3 | 2026-03-30 | required checks must succeed against the latest commit SHA. | SUPPORT_ONLY / required-checks background only | re-open if status-check semantics change |
| WEB-OBS-001 | Obsidian Help — Introduction to Bases | turn876575search1 | 2026-03-30 | Bases is a core plugin for database-like views over notes and properties. | SUPPORT_ONLY / frontstage views only | if Bases feature scope changes materially |
| WEB-OBS-002 | Obsidian Help — Community plugins / Restricted Mode | turn876575search4 | 2026-03-30 | community plugins require turning off Restricted Mode and therefore remain optional risk-bearing surfaces. | SUPPORT_ONLY / optional-plugin risk only | if plugin security defaults change |
| WEB-OBS-003 | Obsidian Help — Settings / Core plugins | turn876575search6 | 2026-03-30 | core plugins are built-in and can be enabled/disabled without community-plugin dependence. | SUPPORT_ONLY / local frontstage tooling only | if core plugin packaging materially changes |

> 所有外部資料均標記 `SUPPORT_ONLY`。它們只補背景、能力、風險與 drift context，不改寫 owner law，不當作 release proof。  
> replay sidecars 已另落盤：`support/support_web_replay.tsv`、`support/support_web_snapshot_notes.md`。

---

<a id="packaging-manifest"></a>
## 14. Packaging Manifest / Download Inventory / Package Tree

### 14.1 Download Inventory（primary list；full inventory = package_tree.txt）
- `Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-M_合冊_v2026.03.30-r6.md`
- `Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-M_合冊_v2026.03.30-r6_package.zip`
- `MANIFEST.json`
- `CHECKSUMS.sha256`
- `BUILD.md`
- `delivery_manifest.json`
- `machine_summary.json`
- `package_tree.txt`
- `bundle_tree.txt`
- `package_validation.json`
- `artifact_family_registry.tsv`
- `canonical_crosswalk.json`
- `route_out_registry.json`
- `tooling_decision_ledger.tsv`
- `owner_evidence_acquisition_plan.tsv`
- `cr_open_register.tsv`
- `test_tracking_list.tsv`
- `release_readiness_support_matrix.tsv`
- `exact_locator_registry.tsv`
- `matrices/crosswalk_matrix.tsv`
- `matrices/interface_closure_matrix.tsv`
- `matrices/review_fix_integration_matrix.tsv`
- `matrices/self_audit_matrix.tsv`
- `matrices/support_absorption_ledger.tsv`
- `matrices/upstream_coverage_supersede_matrix.tsv`
- `matrices/opsflow_binding_table.tsv`
- `schemas/*`
- `samples/*`
- `scripts/ca_distill_validate.py`
- `docs/subsystems/CA-DISTILL/sourcepack/*`
- `support/support_web_registry.json`
- `support/support_web_registry.tsv`
- `support/support_web_replay.tsv`
- `support/support_web_snapshot_notes.md`
- `references/navigation/Spartoi-OMOC_Master_Spine_Full_Monolith.extracted-from-正文合冊.md`
- `references/current_owner_extracted/CURRENT_OWNER_WP-RB-WI_MISSING_EXACT_FILE.md`
- `references/audit/LEGACY_AUDIT_DRIVER_MISSING_EXACT_FILE.md`
- `references/audit/Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-M_合冊_v2026.03.30-r5_AUDIT_v2026.03.30-r1.readback.md`
- `references/legacy/Spartoi-OMOC_SubP1-LITE+MVP_CA-DISTILL_WP-M_legacy_r4.readback.md`

### 14.2 Integrity Notes
- control-file policy：`SELFREF_EXEMPT_CONTROL_FILES`。  
- self-exempt files：`MANIFEST.json`、`CHECKSUMS.sha256`。  
- validator 現在會驗四層：`document_structure_pass`、`schema_sample_pass`、`integrity_validation_pass`、`inventory_validation_pass`。  
- `CHECKSUMS.sha256` 只覆蓋 non-self files；`MANIFEST.json` 會明文列出 self-exempt policy 與 non-self entries。  
- schemas 與 samples 是 **document-scope specimens**；Package B exact parity 仍缺 owner proof。  
- `notes/obsidian/**` 與 `.obsidian/**` 不在 mandatory manifest/checksums truth surface；本包以 policy 與 TT 鎖死此點。  

### 14.3 Build / Seal Order
1. materialize document + sidecars + sourcepack + support replay。  
2. run validator on structure + schema。  
3. generate `MANIFEST.json` for non-self files with explicit self-exempt policy。  
4. generate `CHECKSUMS.sha256` for the same non-self file set。  
5. rerun validator including integrity/inventory verification。  
6. package ZIP from the verified tree。  

### 14.4 Package Tree
請見同包 `package_tree.txt` 與 `bundle_tree.txt`。樹狀圖以實體 sidecar 為準，不在正文複寫第二份會過時的分身。

---

<a id="final-self-audit"></a>
## 15. Final Self-Audit
| item | result | note |
|---|---|---|
| 是否完全遵守固定裁決序位 | PASS | §4.1 |
| 是否完全遵守固定目標前提序位 | PASS | §4.2 |
| 是否固定採 WP-MASTER + WP-001..004 | PASS | §6.1 + fences |
| 是否已吸收 current MC4+ 設計 | PASS | §6 / WP blocks |
| 是否完整吸收 Obsidian 升級藍圖但保持 SUPPORT_FRONTSTAGE_ONLY | PASS | §7 / §9 / §12 |
| 是否保留 Package B/D/E route-out 邊界 | PASS | §4.4 / §8 / WP-004 |
| 是否完成所有 CR_OPEN 暫時結案與 TEST_TRACK | PASS | §12 |
| 是否 truthfully 區分 document/package/runtime/release truth | PASS | §0 / §10 / §11 |
| 是否真的 materialize 了 MD + ZIP；若沒有是否誠實揭露 | PASS | current-session files created |
| 是否沒有骨架化、假 closure、假放行、假下載 | PASS | all absent items explicitly disclosed |
| package integrity 是否 clean | PASS | §14.2 / package_validation.json |
| validator adequacy 是否補強 | PASS | scripts/ca_distill_validate.py + package_validation.json |
| OpsFlow Binding Table 是否完整落盤 | PASS | §8.3 + matrices/opsflow_binding_table.tsv |
| inventory 是否不再 under-declare | PASS | §14.1 + package_tree.txt |
| support-web replay sidecars 是否物化 | PASS | support/support_web_replay.tsv + support/support_web_snapshot_notes.md |

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
```


<a id="wp-001-anchor"></a>
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
```


<a id="wp-002-anchor"></a>
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
- Evidence pointers: exact_locator_registry.tsv / matrices/interface_closure_matrix.tsv / owner_evidence_acquisition_plan.tsv
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
```


<a id="wp-003-anchor"></a>
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
```


<a id="wp-004-anchor"></a>
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
```

