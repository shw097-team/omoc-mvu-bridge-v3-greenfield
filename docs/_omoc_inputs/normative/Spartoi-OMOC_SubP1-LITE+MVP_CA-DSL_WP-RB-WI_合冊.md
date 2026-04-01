# Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_WP-RB-WI_合冊
<a id="cover-card"></a>

## A. Cover Card / Meta / Identity / Machine Summary

| field | value |
| --- | --- |
| external_name | Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_WP-RB-WI_合冊 |
| internal_short_name | SOMOC-CADSL-WPRBWI |
| subsystem_id | CA-DSL |
| stable_id | DOC-CA-DSL-WPRBWI-20260330-R6 |
| doc_id | SOMOC-CADSL-WPRBWI.v2026.03.30-r6 |
| fq_doc_id | SOMOC-CADSL-WPRBWI.v2026.03.30-r6 |
| version | v2026.03.30-r6 |
| date | 2026-03-30 |
| timezone | Asia/Taipei |
| document_verdict | PASS_PATCHED_WITH_GUARDS |
| engineering_verdict | READY_DOCUMENT_PACKAGE_WITH_GUARDS |
| runtime_verdict | FAIL_CLOSED / CONTRACT_ONLY |
| release_verdict | BLOCK_RELEASE |
| delivery_verdict | PASS_DOCUMENT_PACKAGE_ONLY |
| truthful_delivery_note | 本回合真實物化的是單一 Markdown 主檔 + 單一 ZIP document package + listed sidecars + sourcepack 四檔 adjunct（以 docs/subsystems/CA-DSL/sourcepack/ shipping path 交付）；不是 runtime evidence package，也不是 release-ready package。 |
| supersedes | 舊版《Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_WP-RB-WI_合冊》、前一版 r5 document package，以及《Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_WP-RB-WI_合冊_v2026.03.30-r5_AUDIT_v2026.03.30-r1》提出之 mainline / locator / prerequisite / route-out / manifest / sourcepack path 缺陷，均由本版以 audit-closure 方式覆蓋。 |
| one_line_verdict | r6 吸收 audit-r1：收斂唯一主線、清除未定義 locator、把未掛載 blueprint 從 prerequisite 降回 filename-lineage、補齊 Package B route-out、校正 MANIFEST self-row 與 sourcepack shipping path，並維持 runtime/release fail-closed。 |

### A.1 Machine Summary
```json
{
  "document_name": "Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_WP-RB-WI_合冊",
  "internal_short_name": "SOMOC-CADSL-WPRBWI",
  "subsystem_id": "CA-DSL",
  "stable_id": "DOC-CA-DSL-WPRBWI-20260330-R6",
  "doc_id": "SOMOC-CADSL-WPRBWI.v2026.03.30-r6",
  "fq_doc_id": "SOMOC-CADSL-WPRBWI.v2026.03.30-r6",
  "version": "v2026.03.30-r6",
  "date": "2026-03-30",
  "timezone": "Asia/Taipei",
  "package_scope": "DOCUMENT_PACKAGE_ONLY",
  "document_verdict": "PASS_PATCHED_WITH_GUARDS",
  "engineering_verdict": "READY_DOCUMENT_PACKAGE_WITH_GUARDS",
  "runtime_verdict": "FAIL_CLOSED / CONTRACT_ONLY",
  "release_verdict": "BLOCK_RELEASE",
  "delivery_verdict": "PASS_DOCUMENT_PACKAGE_ONLY",
  "one_line_verdict": "r6 closes audit-r1 by converging a single authority mainline, eliminating dangling locators, materializing Package B route-out, normalizing sourcepack shipping path, and rebuilding package truth without relaxing fail-closed release guards.",
  "task_level_authority_order": [
    "《Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文》",
    "《Spartoi-OMOC_SSOT_合冊》",
    "《Spartoi-OMOC_LBP_合冊》",
    "《Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊》",
    "《Spartoi-OMOC_SubP1-LITE+MVP_合冊》",
    "《OMOC_合冊》",
    "《參考方案合冊》"
  ],
  "highest_open_blockers": [
    "CADSL-WPRBWI-004",
    "CADSL-WPRBWI-005",
    "CADSL-WPRBWI-006",
    "CADSL-WPRBWI-007"
  ],
  "package_required_checks": [
    "checksum_correctness",
    "manifest_correctness",
    "closure_join_integrity",
    "route_out_join_integrity",
    "fence_family_integrity",
    "blocker_preservation",
    "truth_split_preservation"
  ]
}
```

### A.2 fixed truth split
- `document completeness != runtime pass != release pass`
- `package completion != promotion permission`
- `runtime contract defined != runtime evidence exists`
- `package/document 交付完成 != owner proof 已補齊`
- `route-out != absorbed != implemented`
- `support-only != normative`
- `declaration is not implementation`

<a id="toc"></a>
## B. 完整 TOC + Anchors

1. [A. Cover Card / Meta / Identity / Machine Summary](#cover-card)
2. [B. 完整 TOC + Anchors](#toc)
3. [C. Reader Guide / Forced Read Order / Anti-Hallucination Rules](#reader-guide)
4. [D. Authority Stack / Conflict Rules / Goal Premise / Hard Rules / Done Criteria](#authority-stack)
5. [E. Inputs Manifest / Exact Locator Registry / Alias / Version Resolution](#inputs-manifest)
6. [F. Subsource Decomposition Ledger](#subsource-ledger)
7. [G. Upstream Requirement Closure Ledger](#upstream-closure)
8. [H. Support Absorption Ledger](#support-absorption)
9. [I. Tool Adoption / Backup / Reject Matrix](#tooling)
10. [J. Patch Resolution / CR_OPEN 暫時結案與測試追蹤](#cr-open)
11. [K. Final Truthful Verdict / Blocker / Stopline](#truthful-verdict)
12. [L. WP / RB / WI Fences](#fences)
13. [M. Packaging Truth / Sidecars / Verification Loop](#packaging-truth)

<a id="reader-guide"></a>
## C. Reader Guide / Forced Read Order / Anti-Hallucination Rules

### C.1 強制讀序
1. 先讀 §D，固定法位、目標前提序位、hard rules 與 done criteria。
2. 再讀 §E，確認哪些來源是 direct readback、哪些只是 carrier、哪些只是 filename lineage。
3. 再讀 §F~§J，確認 requirement closure、support absorption、tooling decisions、patch fixes、CR/TT 是否誠實。
4. 最後再讀 §L 的 `WP-MASTER → WP-001..004 → RB-001..004 → WI-001..004 → WI-COMMAND-CHECKLIST`。
5. 凡碰到 Package D/E、Ops HOW、CA-METHOD exact acceptance、runtime evidence，一律先看 route-out / stopline，不得 narrative bypass。

### C.2 navigation mainline / carrier reality
- 本回合 navigation mainline 固定為：`正文合冊 → SSOT → LBP → Pack A-E Guide → SubP1 → OMOC → 參考方案`。
- `Spartoi-OMOC_SubP1-LITE+MVP_Pipeline-A_MC4+_WP-M_合冊` 只作 **PRIMARY_BRIDGE_CARRIER**；它不是使用者指定固定權威序位的一部分，也不是 mainline。
- `Spartoi-OMOC_Master_Spine_Full_Monolith` 與 `Pipeline-A_Index_Pack_Full_Monolith` 只可作 proxy / router / retrieval support note；不得重寫本文件 mainline。
- `CA-DSL_MC4+_WP-M_WP-RB-WI_最終升級藍圖.md` 與 `Pipeline-A_MC4+_WP-M_WP-RB-WI_最終升級藍圖.md` 在本工作區 **未 direct-mounted**；只能保留 filename lineage 與 TT-bound honesty，不能再冒充 FOUND 或 prerequisite。
- `Spartoi-OMOC_系統需求正文` 的 requirement readback 目前透過《Spartoi-OMOC_SubP1-LITE+MVP_正文合冊》DOC-0002 carrier reality 取得；它不是額外新增的一條 task-level authority rank。
- direct readback > carrier readback > filename lineage。這不是保守；這是防止把 proxy 當 owner law。

### C.3 anti-hallucination / anti-confusion
- `document_verdict`、`engineering_verdict`、`runtime_verdict`、`release_verdict`、`delivery_verdict` 必須分層閱讀，不得混寫。
- `sourcepack four files delivered` 只代表 package-local adjunct 已物化；不代表 render engine、runtime evidence、Package D/E owner proofs 已存在。
- `support-frontstage adopted` 不等於 `Obsidian 成為 correctness owner`。
- `carrier-honest closure` 足以支撐法位與邊界說明，但不足以替代缺席的 standalone owner proof。


<a id="authority-stack"></a>
## D. Authority Stack / Conflict Rules / Goal Premise / Hard Rules / Done Criteria

### D.1 固定權威裁決序位（不可改動）
| rank | authority | carrier reality | effect |
| --- | --- | --- | --- |
| 1 | 《Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文》 | 以《Spartoi-OMOC_SubP1-LITE+MVP_正文合冊》DOC-0001 materialized carrier 回讀 | 最高法位；owner duties / No-Source-No-Norm / fail-closed ceiling |
| 2 | 《Spartoi-OMOC_SSOT_合冊》 | merged SSOT | architecture / IO / evidence / route-out |
| 3 | 《Spartoi-OMOC_LBP_合冊》 | LBP A-E merged carrier | index / ICD / ADR / C4 / Fitness / TT discipline |
| 4 | 《Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊》 | entry routing carrier | FQ_DOC_ID retrieval discipline / Package B-D-E owner ceilings |
| 5 | 《Spartoi-OMOC_SubP1-LITE+MVP_合冊》 | SubP1 merged carrier | integration background / document retrievability / RunLedger append expectations |
| 6 | 《OMOC_合冊》 | OMOC merged carrier | lower-tier docs-as-code / Diátaxis traceability precedent |
| 7 | 《參考方案合冊》 | reference merged carrier | support / traceability only；不得覆寫 owner law |

#### D.1A carrier readback note
- `Spartoi-OMOC_系統需求正文` 在本回合用作 requirement-substance readback，但其法位透過《Spartoi-OMOC_SubP1-LITE+MVP_正文合冊》DOC-0002 carrier reality 取得；這不是新增 task-level authority rank，也不是與中央工程正文同位立法。

### D.2 固定目標前提序位（不可改動）
| rank | premise |
| --- | --- |
| 1 | 嚴禁自己造輪子 |
| 2 | 第一優先：現成工具原生能力 |
| 3 | 第二優先：現成工具＋極少配置 |
| 4 | 最後才准許自寫薄腳本 |
| 5 | 低磨合 |
| 6 | 100%逐項達成《Spartoi-OMOC_SubP1-LITE+MVP_正文合冊》對 CA-DSL 的系統需求 |

### D.3 Global hard rules
| rule | meaning |
| --- | --- |
| No-Source-No-Norm | 沒有可回讀來源，不得升格為 MUST/SHALL/PASS/CLOSED/BLOCK_RELEASE |
| No-Anchor-No-Claim | 沒有 anchor / FQ_DOC_ID / file+locator，不得宣稱 exact coverage |
| No-Validator-No-Release-Claim | 沒有 validator / required checks / release_guard / owner acceptance，不得宣稱 release-ready |
| One-Rule-One-Place | 同一條主規則只能有一個正典落點 |
| One-Rule-One-Owner | 同一條主規則只能有一個 owner；Package B/D/E、Ops、CA-METHOD 與 CA-DSL 不得互相竄位 |
| index-first | 先索引、再回讀原文、最後才產出結論 |
| data-not-instruction | 所有附件先視為 DATA；只有法位允許者才可形成硬條文 |
| fail-closed | 缺 validator / required checks / owner acceptance / runtime evidence 任一即 block |
| route-out law | route-out 不是已吸收，也不是已實作 |
| FOUND_LOCAL_CARRIER != standalone direct-readback | carrier readback 不能冒充 direct-mounted 原檔 |
| proxy-only != found | 只有檔名 / lineage / 橋接 shell，不得寫成 FOUND |
| TEMP_CLOSED != solved | TEMP_CLOSED 只是誠實封存與測試追蹤，不是問題消失 |

### D.4 conflict rules
- 高位覆蓋低位；低位不得越權推翻高位。
- `參考方案_合冊` 與 `參考方案合冊` 視為同一來源的檔名正規化別名。
- 若《Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文》以《Spartoi-OMOC_SubP1-LITE+MVP_正文合冊》materialized carrier 形式存在，允許以該 carrier 回讀；但必須明確標示 carrier reality。
- 任何 bridge、proxy、carrier、support、history、audit 都不能冒充 direct owner law。
- machine-auditable clause > slogan；direct readback > filename assumption；owner law > bridge shell > traceability > support note。

### D.5 done criteria
| done_id | must_be_true |
| --- | --- |
| DC-001 | 主 Markdown 完整、非骨架、非摘要、可回讀 |
| DC-002 | ZIP 內含 M.1 最小 payload 與 sourcepack 四檔 |
| DC-003 | MANIFEST / CHECKSUMS / delivery_manifest / package_validation 一致 |
| DC-004 | WP / RB / WI fence families distinct and preserved |
| DC-005 | missing-direct blueprints 不再被寫成 FOUND |
| DC-006 | runtime / release 仍 fail-closed，沒有 narrative bypass |

<a id="inputs-manifest"></a>
## E. Inputs Manifest / Exact Locator Registry / Alias / Version Resolution

### E.0 Navigation mainline truth note
- 本回合主裁決鏈只使用使用者指定七階權威來源。
- `PRIMARY_BRIDGE_CARRIER` 與 `SUPPORT_FRONTSTAGE_BLUEPRINT` 只可補 closure shell / support boundary；不得升格。
- standalone direct source 缺席時，一律降為 `NOT_MOUNTED_DIRECT` / `TT_BOUND` / `MISSING_AT_PATCH_TIME`。

### E.1 Inputs Manifest
| source_file | status | role | locator_ids | line_spans_or_locator | why_used |
| --- | --- | --- | --- | --- | --- |
| current_conversation_opening_instruction | FOUND | TASK_AUTHORITY | LIVE-TASK-001 | current conversation opener | scope lock / deliverable lock / authority order / hard rules |
| Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_WP-RB-WI_合冊.md | FOUND | DIRECT_OWNER_CURRENT_BASELINE | WPRBWI-BASE-001;WPRBWI-BASE-002;WPRBWI-BASE-003 | 1-1420;486-531;1368-1419 | preserve current WP/RB/WI fenced corpus, blocker split, and package minimum |
| Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_MC4+_合冊.md | FOUND | DIRECT_OWNER_CONSTITUTION | CADSL-MC4-SOURCEPACK-001;CADSL-MC4-REQ-001;CADSL-MC4-ARCH-001;CADSL-MC4-TOOLS-001 | 410-429;679-753;800-849;526-543 | sourcepack book-system / FR-MAI / artifact constitution / tool-adoption ceiling |
| Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_WP-M_合冊.md | FOUND | DIRECT_OWNER_CONSTRUCTION_BASELINE | WPM-CURRENT-001;WPM-BIND-001;WPM-SOURCEPACK-001;WPM-TOOL-001;WPM-WP004-001;WPM-TRUTH-001 | 1-40;127-203;241-288;480-524;868-932;963-1004 | current owner baseline for source binding / sourcepack landing / tooling / packaging / CR-TT truth |
| Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md | FOUND | NORMATIVE_ROOT | GCERM-DSL-001;GCERM-ART-001;GCERM-DOCRET-001 | 3823-3904;1372-1409;6182-6188 | CA-DSL duties / ReferenceDB-RunLedger boundary / docs-as-code landing |
| Spartoi-OMOC_SSOT_合冊.md | FOUND | NORMATIVE_ROOT | SSOT-DSL-001 | 2301-2324 | Pipeline-A terminal / Pipeline-B spec entry / DSL component responsibilities |
| Spartoi-OMOC_LBP_合冊.md | FOUND | NORMATIVE_ROOT | LBP-CA-DSL-001;LBP-ADR-001 | 378-383;1530-1539 | route-out index / triplet / locator proof / TT / docs-as-code |
| Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊.md | FOUND | NORMATIVE_ENTRY_ROUTING | PACKGUIDE-FQDOC-001;PACKGUIDE-PKGD-001;PACKGUIDE-PKGE-001 | 49-51;3028-3034;3415-3429 | FQ_DOC_ID / Package D-E owner ceilings |
| Spartoi-OMOC_SubP1-LITE+MVP_合冊.md | FOUND | NORMATIVE_ENTRY_ROUTING | SUBP1-MAP-001;SUBP1-DOCRET-001;SUBP1-DB-001 | 1852-1865;2800-2818;4524-4540 | subsystem map / document retrievability / RunLedger append |
| OMOC_合冊.md | FOUND | LOWER_TIER_TRACEABILITY | OMOC-CORE-001 | 5476-5485 | docs-as-code / Diátaxis / minimal RAG traceability |
| 參考方案合冊.md | FOUND | LOWER_TIER_TRACEABILITY | REFPKG-PIPELINE-001;REFPKG-RAG-001 | 171-179;396-408 | support background only / RAG artifacts only |
| Spartoi-OMOC_SubP1-LITE+MVP_Pipeline-A_MC4+_WP-M_合冊.md | FOUND | PRIMARY_BRIDGE_CARRIER | PIPEA-CARRIER-001;PIPEA-CARRIER-002;PIPEA-CARRIER-003 | src:DOC-0007:sourcepack-book-system;src:DOC-0008:sourcepack-landing;src:DOC-0008:release-stopline | mounted bridge carrier for sourcepack four-file contract / release stopline / render fail-closed discipline |
| Pipeline-A_Obsidian升級藍圖.md | FOUND | SUPPORT_FRONTSTAGE_BLUEPRINT | OBS-BLUEPRINT-001;OBS-BLUEPRINT-002;OBS-BLUEPRINT-TT-001 | 68-70;122-149;406-417 | support-frontstage legal position / support-only web evidence mirror / TT-OBS shell |
| Ops RUNBOOK_合冊.md | FOUND | ROUTE_OUT_ONLY | OPS-DOCMAP-001;OPS-OP04-001 | 57-73;4669-4685 | high-order HOW / scenario doc map / OP-04 adjunct rule |
| SEM8-ICT-TW_重構升級藍圖_v1.2.1-r1.md | FOUND | SUPPORT_BRIDGE | SEM8-BRIDGE-001 | 341-378 | stable_id / naming shell support only |
| SEM³資料參考_合冊.md | FOUND | SUPPORT_REFERENCE | SEM3-INDEX-001 | 17-28 | DOC_ID + canonical anchor discipline support |
| Pipeline-A設計資料參考_合冊.md | FOUND | SUPPORT_REFERENCE | PA-DESIGN-001 | 680-688 | schema-constrained hardening support |
| Pipeline-A實作資料參考_合冊.md | FOUND | SUPPORT_REFERENCE | PA-IMPL-001 | 104-115 | thin-script local fail-closed support |
| 台股實戰映射_合冊.md | FOUND | SUPPORT_REFERENCE | TWMAP-001 | 103-117 | downstream execution remains non-owner |
| 多模態多向量圖像檢索技術指南_筆記.txt | FOUND | SUPPORT_REFERENCE | MULTIVECTOR-001 | 61-76 | heavy retrieval tower remains support-only / non-primary |
| CA-DSL_MC4+_WP-M_WP-RB-WI_最終升級藍圖.md | NOT_MOUNTED_DIRECT | OWNER_BLUEPRINT_FILENAME_ONLY | OWNER_BLUEPRINT_FILENAME-001 | filename lineage only | owner blueprint filename known but standalone direct readback unavailable in current workspace |
| Pipeline-A_MC4+_WP-M_WP-RB-WI_最終升級藍圖.md | NOT_MOUNTED_DIRECT | PIPELINE_BLUEPRINT_FILENAME_ONLY | PIPELINE_BLUEPRINT_FILENAME-001 | filename lineage only | pipeline blueprint filename known but standalone direct readback unavailable in current workspace |
| Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_WP合冊_v2026.03.11-r3.md | MISSING_AT_PATCH_TIME | OWNER_WP_HISTORY_MISSING | OWNER_WP_HISTORY-001 | historical file absent | historical parity only; cannot support current-turn closure |

### E.2 Alias / stable naming rules
| name | value |
| --- | --- |
| canonical subsystem id | CA-DSL |
| canonical semantic artifact id | ART-DSL-SPEC |
| canonical concrete file | art_dsl_spec.json |
| compatibility alias only | dsl_schema.json |
| local adjunct assets | baseline_v1.vpc.yaml；dsl_mapping.json |
| canonical source alias normalization | 參考方案_合冊 → 參考方案合冊.md |
| sourcepack governance unit | docs/subsystems/CA-DSL/sourcepack/{meta.json,CA-CORE.md,CA-MC4.md,CA-WP.md} |

### E.3 Exact Locator Registry（full materialized table）
| locator_id | source_file | locator_type | locator | why_used | landing | status | usable_for_current_closure |
| --- | --- | --- | --- | --- | --- | --- | --- |
| LIVE-TASK-001 | current_conversation_opening_instruction | task_context | conversation opener | task contract / scope lock | whole package | CLOSED | True |
| WPRBWI-BASE-001 | Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_WP-RB-WI_合冊.md | line_span | 1-1420 | current fenced corpus | Section L fences | CLOSED | True |
| WPRBWI-BASE-002 | Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_WP-RB-WI_合冊.md | line_span | 486-531 | baseline CR/TT / stopline truth | Section J / K | CLOSED | True |
| WPRBWI-BASE-003 | Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_WP-RB-WI_合冊.md | line_span | 1368-1419 | baseline package payload minimum | Section M | CLOSED | True |
| CADSL-MC4-SOURCEPACK-001 | Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_MC4+_合冊.md | line_span | 410-429 | owner sourcepack / four-book split confirmation | E/G/H + sourcepack files | CLOSED | True |
| CADSL-MC4-REQ-001 | Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_MC4+_合冊.md | line_span | 679-753 | FR / MAI / evidence contract settlement | WP-001..003 | CLOSED | True |
| CADSL-MC4-ARCH-001 | Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_MC4+_合冊.md | line_span | 800-849 | artifact roles / path-storage settlement | WP-MASTER / WP-001..004 | CLOSED | True |
| CADSL-MC4-TOOLS-001 | Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_MC4+_合冊.md | line_span | 526-543 | tool adoption / support-only heavy retrieval stack | Section I | CLOSED | True |
| WPM-CURRENT-001 | Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_WP-M_合冊.md | line_span | 1-40 | current owner cover/meta/truth split | authority binding | CLOSED | True |
| WPM-BIND-001 | Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_WP-M_合冊.md | line_span | 127-203 | current exact locator matrix / source binding coverage | Section E / G | CLOSED | True |
| WPM-SOURCEPACK-001 | Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_WP-M_合冊.md | line_span | 241-288 | sourcepack landing / content-layer prohibitions / render minimum contract | Section E / sourcepack files | CLOSED | True |
| WPM-TOOL-001 | Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_WP-M_合冊.md | line_span | 480-524 | tooling matrix and no-wheel priority order | Section I | CLOSED | True |
| WPM-WP004-001 | Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_WP-M_合冊.md | line_span | 868-932 | packaging / delivery / release stopline | WP-004 / Section M | CLOSED | True |
| WPM-TRUTH-001 | Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_WP-M_合冊.md | line_span | 963-1004 | CR / TT / package inventory truth | Section J / K | CLOSED | True |
| GCERM-ART-001 | Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md | line_span | 1372-1409 | ReferenceDB / RunLedger / cache-not-SSOT rule | WP-003 | CLOSED | True |
| GCERM-DOCRET-001 | Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md | line_span | 6182-6188 | docs-as-code landing | Reader / locators | CLOSED | True |
| GCERM-DSL-001 | Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md | line_span | 3823-3904 | CA-DSL scope / I-O / fail-closed / evidence-rule-interface duties | WP-MASTER / WP-001..003 | CLOSED | True |
| SSOT-DSL-001 | Spartoi-OMOC_SSOT_合冊.md | line_span | 2301-2324 | Pipeline-A terminal / Pipeline-B spec entry / DSL components | WP-MASTER / WP-001..003 | CLOSED | True |
| LBP-CA-DSL-001 | Spartoi-OMOC_LBP_合冊.md | line_span | 378-383 | CA-DSL route-out index position | WP-MASTER §authority | CLOSED | True |
| LBP-ADR-001 | Spartoi-OMOC_LBP_合冊.md | line_span | 1530-1539 | triplet / locator proof / docs-as-code / TT / support-only web rules | WP-MASTER / route-out | CLOSED | True |
| PACKGUIDE-FQDOC-001 | Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊.md | line_span | 49-51 | FQ_DOC_ID / find_tokens minimal retrieval rule | Reader / locators | CLOSED | True |
| PACKGUIDE-PKGD-001 | Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊.md | line_span | 3028-3034 | Package D owner ceiling | route_out_registry.json | CLOSED | True |
| PACKGUIDE-PKGE-001 | Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊.md | line_span | 3415-3429 | Package E owner ceiling | route_out_registry.json | CLOSED | True |
| SUBP1-MAP-001 | Spartoi-OMOC_SubP1-LITE+MVP_合冊.md | line_span | 1852-1865 | SubP1 integration boundary / CA-DSL route-out owner | Section G | CLOSED | True |
| SUBP1-DOCRET-001 | Spartoi-OMOC_SubP1-LITE+MVP_合冊.md | line_span | 2800-2818 | anchor/evidence_ptr/route_out/tt_ref retrievability rules | Reader / locators | CLOSED | True |
| SUBP1-DB-001 | Spartoi-OMOC_SubP1-LITE+MVP_合冊.md | line_span | 4524-4540 | RunLedger append / lineage fail-closed expectation | WP-003 | CLOSED | True |
| OMOC-CORE-001 | OMOC_合冊.md | line_span | 5476-5485 | docs-as-code / Diátaxis / minimal RAG use | support-only appendix | CLOSED_WITH_BOUNDARY | True |
| REFPKG-PIPELINE-001 | 參考方案合冊.md | line_span | 171-179 | ReferenceDB / RunLedger background | support-only appendix | CLOSED_WITH_BOUNDARY | True |
| REFPKG-RAG-001 | 參考方案合冊.md | line_span | 396-408 | RAG artifacts only / no normative promotion | support-only appendix | CLOSED_WITH_BOUNDARY | True |
| PIPEA-CARRIER-001 | Spartoi-OMOC_SubP1-LITE+MVP_Pipeline-A_MC4+_WP-M_合冊.md | stable_anchor | src:DOC-0007:sourcepack-book-system | mounted bridge carrier for sourcepack / four-book discipline | Section E / G / sourcepack files | CLOSED | True |
| PIPEA-CARRIER-002 | Spartoi-OMOC_SubP1-LITE+MVP_Pipeline-A_MC4+_WP-M_合冊.md | stable_anchor | src:DOC-0008:sourcepack-landing | mounted bridge carrier for sourcepack landing / render fail-closed | Section E / G / sourcepack files | CLOSED | True |
| PIPEA-CARRIER-003 | Spartoi-OMOC_SubP1-LITE+MVP_Pipeline-A_MC4+_WP-M_合冊.md | stable_anchor | src:DOC-0008:release-stopline | mounted bridge carrier for release stopline / package D-E route-out | Section K / M | CLOSED | True |
| OBS-BLUEPRINT-001 | Pipeline-A_Obsidian升級藍圖.md | line_span | 68-70 | support-frontstage legal position inputs | Section H / docs/subsystems/CA-DSL/sourcepack/meta.json | SUPPORT_ONLY_OR_BOUNDARY | True |
| OBS-BLUEPRINT-002 | Pipeline-A_Obsidian升級藍圖.md | line_span | 122-149 | support-web URL mirror | support_web_registry.* | SUPPORT_ONLY_OR_BOUNDARY | True |
| OBS-BLUEPRINT-TT-001 | Pipeline-A_Obsidian升級藍圖.md | line_span | 406-417 | TT-OBS shell | Section J / test_tracking | SUPPORT_ONLY_OR_BOUNDARY | True |
| OPS-DOCMAP-001 | Ops RUNBOOK_合冊.md | line_span | 57-73 | Ops doc precedence and named scenario docs | route_out_registry.json | ROUTE_OUT_ONLY | True |
| OPS-OP04-001 | Ops RUNBOOK_合冊.md | line_span | 4669-4685 | baseline_v1.vpc.yaml adjunct-only rule | WP-002 / route_out_registry.json | ROUTE_OUT_ONLY | True |
| SEM8-BRIDGE-001 | SEM8-ICT-TW_重構升級藍圖_v1.2.1-r1.md | line_span | 341-378 | stable_id / naming shell without owner override | support-only appendix | SUPPORT_ONLY_OR_BOUNDARY | True |
| SEM3-INDEX-001 | SEM³資料參考_合冊.md | line_span | 17-28 | DOC_ID + canonical anchor + line_start discipline | support-only appendix | SUPPORT_ONLY_OR_BOUNDARY | True |
| PA-DESIGN-001 | Pipeline-A設計資料參考_合冊.md | line_span | 680-688 | schema-constrained generation / evidence-chain hardening | support-only appendix | SUPPORT_ONLY_OR_BOUNDARY | True |
| PA-IMPL-001 | Pipeline-A實作資料參考_合冊.md | line_span | 104-115 | thin-script local fail-closed checks | support-only appendix | SUPPORT_ONLY_OR_BOUNDARY | True |
| TWMAP-001 | 台股實戰映射_合冊.md | line_span | 103-117 | downstream execution remains non-owner | support-only appendix | SUPPORT_ONLY_OR_BOUNDARY | True |
| MULTIVECTOR-001 | 多模態多向量圖像檢索技術指南_筆記.txt | line_span | 61-76 | heavy multivector retrieval remains non-primary | support-only appendix | SUPPORT_ONLY_OR_BOUNDARY | True |
| OWNER_BLUEPRINT_FILENAME-001 | CA-DSL_MC4+_WP-M_WP-RB-WI_最終升級藍圖.md | missing_direct | filename lineage only | standalone direct readback unavailable | CR/TT only | TT_BOUND | False |
| PIPELINE_BLUEPRINT_FILENAME-001 | Pipeline-A_MC4+_WP-M_WP-RB-WI_最終升級藍圖.md | missing_direct | filename lineage only | standalone direct readback unavailable | CR/TT only | TT_BOUND | False |
| OWNER_WP_HISTORY-001 | Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_WP合冊_v2026.03.11-r3.md | missing_direct | historical file absent | historical parity only | CR/TT only | MISSING_AT_PATCH_TIME | False |

### E.4 version resolution note
- active direct owner books：`CA-DSL_MC4+` + `CA-DSL_WP-M` + current `CA-DSL_WP-RB-WI baseline`
- active normative roots：`正文合冊 / SSOT / LBP / Pack A-E Guide / SubP1 / OMOC / 參考方案`
- active bridge shell：`Spartoi-OMOC_SubP1-LITE+MVP_Pipeline-A_MC4+_WP-M_合冊`（carrier-honest only）
- active support-frontstage blueprint：`Pipeline-A_Obsidian升級藍圖`
- filename-only lineage：`CA-DSL_MC4+_WP-M_WP-RB-WI_最終升級藍圖.md`、`Pipeline-A_MC4+_WP-M_WP-RB-WI_最終升級藍圖.md`
- historical standalone WP body：`Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_WP合冊_v2026.03.11-r3.md` → `MISSING_AT_PATCH_TIME`

<a id="subsource-ledger"></a>
## F. Subsource Decomposition Ledger

| subsource_id | source_file | tier | used_for | adjudication |
| --- | --- | --- | --- | --- |
| LIVE_TASK | current conversation opener | TASK_AUTHORITY | scope lock / authority order / hard rules / deliverable lock | DIRECT_ABSORB |
| BASELINE_WPRBWI | Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_WP-RB-WI_合冊.md | DIRECT_OWNER_CURRENT_BASELINE | preserve full WP/RB/WI fenced corpus and prior package minimum | DIRECT_ABSORB_AS_BASELINE |
| OWNER_MC4PLUS | Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_MC4+_合冊.md | DIRECT_OWNER | constitution / sourcepack / artifact constitution / tool ceiling | DIRECT_ABSORB |
| OWNER_WPM | Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_WP-M_合冊.md | DIRECT_OWNER | construction baseline / source binding / packaging stopline / CR-TT truth | DIRECT_ABSORB |
| UPSTREAM_GCERM | Spartoi-OMOC_SubP1-LITE+MVP_正文合冊.md | NORMATIVE | owner duties / data backbone / docs-as-code / fail-closed ceiling | DIRECT_ABSORB |
| UPSTREAM_SSOT | Spartoi-OMOC_SSOT_合冊.md | NORMATIVE | architecture placement / component responsibilities | DIRECT_ABSORB |
| UPSTREAM_LBP | Spartoi-OMOC_LBP_合冊.md | NORMATIVE | triplet / locator proof / TT / support-web rules | DIRECT_ABSORB |
| UPSTREAM_PACK_GUIDE | Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊.md | NORMATIVE | FQ_DOC_ID retrieval / Package D-E ceilings | BOUND_REFERENCE |
| UPSTREAM_SUBP1 | Spartoi-OMOC_SubP1-LITE+MVP_合冊.md | NORMATIVE | subsystem map / document retrievability / RunLedger append | BOUND_REFERENCE |
| UPSTREAM_OMOC | OMOC_合冊.md | LOWER_TIER_TRACEABILITY | docs-as-code / Diátaxis precedent | BOUND_REFERENCE |
| UPSTREAM_REFPKG | 參考方案合冊.md | LOWER_TIER_TRACEABILITY | background only / never owner override | SUPPORT_ONLY |
| PIPELINE_BRIDGE_CARRIER | Spartoi-OMOC_SubP1-LITE+MVP_Pipeline-A_MC4+_WP-M_合冊.md | PRIMARY_BRIDGE_CARRIER | sourcepack four-file / release stopline / render fail-closed carrier | DIRECT_ABSORB_AS_CARRIER |
| OBSIDIAN_BLUEPRINT | Pipeline-A_Obsidian升級藍圖.md | SUPPORT_FRONTSTAGE_BLUEPRINT | support-frontstage legal position / no-promotion / manifest exclusion / TT-OBS shell | DIRECT_ABSORB_AS_SUPPORT_ONLY |
| OPS_HIGH_HOW | Ops RUNBOOK_合冊.md | HIGH_HOW_SSOT | HOW / scenario docs / OP-04 adjunct | ROUTE_OUT_ONLY |
| SUPPORT_MISC | SEM8 / SEM3 / design / impl / tw mapping / multivector | SUPPORT_REFERENCE | naming shell / retrieval discipline / hardening / reject rationale | SUPPORT_ONLY |
| OWNER_BLUEPRINT_FILENAME | CA-DSL_MC4+_WP-M_WP-RB-WI_最終升級藍圖.md | DIRECT_OWNER_FILENAME_ONLY | requested lineage only | TT_BOUND_MISSING_DIRECT |
| PIPELINE_BLUEPRINT_FILENAME | Pipeline-A_MC4+_WP-M_WP-RB-WI_最終升級藍圖.md | PRIMARY_BRIDGE_FILENAME_ONLY | requested lineage only | TT_BOUND_MISSING_DIRECT |
| OWNER_WP_HISTORY | Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_WP合冊_v2026.03.11-r3.md | DIRECT_OWNER_HISTORY | historical parity only | TT_BOUND_MISSING |

<a id="upstream-closure"></a>
## G. Upstream Requirement Closure Ledger

| req_id | parent_requirement | child_requirement | source_locator | landing | verdict | gap_or_tt | notes |
| --- | --- | --- | --- | --- | --- | --- | --- |
| REQ-001A | BOOK_SYSTEM | MC4+/WP-M/WP-RB-WI/WP-FULL 書系分工固定 | CADSL-MC4-SOURCEPACK-001;WPM-SOURCEPACK-001 | Section D / sourcepack files | CLOSED |  | MC4+ 不塞 HOW；WP-RB-WI 完整承接 HOW/rollback/evidence/acceptance |
| REQ-001B | BOOK_SYSTEM | sourcepack 四檔治理單位正文化並實體化 | CADSL-MC4-SOURCEPACK-001;WPM-SOURCEPACK-001;PIPEA-CARRIER-001;PIPEA-CARRIER-002 | Section E / docs/subsystems/CA-DSL/sourcepack/ | CLOSED |  | 本包已實體交付 `meta.json / CA-CORE.md / CA-MC4.md / CA-WP.md` |
| REQ-001C | BOOK_SYSTEM | WP-FULL 僅 archive/audit snapshot；generated only | CADSL-MC4-SOURCEPACK-001 | Section D | CLOSED |  | 未在本回合手寫 WP-FULL |
| REQ-002A | GCERM | CA-DSL in-scope / out-of-scope / outputs landed | GCERM-DSL-001 | WP-MASTER / WP-001..003 | CLOSED |  | owner duties grounded by 正文合冊 |
| REQ-002B | GCERM | ReferenceDB / RunLedger / cache-not-SSOT landed | GCERM-ART-001;SUBP1-DB-001 | WP-003 | CLOSED |  | lineage / handoff / replay discipline preserved |
| REQ-002C | GCERM | docs-as-code / retrievability discipline landed | GCERM-DOCRET-001;SUBP1-DOCRET-001 | Reader / locators | CLOSED |  | index-first / anchor-first preserved |
| REQ-003A | SSOT | Pipeline-A terminal / Pipeline-B spec entry landed | SSOT-DSL-001 | WP-MASTER / WP-001..003 | CLOSED |  | component responsibilities preserved |
| REQ-003B | MC4PLUS | ART-DSL-SPEC / art_dsl_spec.json constitutional landing | CADSL-MC4-REQ-001 | WP-001 | CLOSED |  | canonical artifact identity preserved |
| REQ-003C | MC4PLUS | artifact paths / data backbone / handoff evidence minimum landed | CADSL-MC4-ARCH-001;CADSL-MC4-REQ-001 | WP-001..003 | CLOSED |  | path and evidence settlement preserved |
| REQ-004A | LBP | Evidence Triplet / locator proof / TT discipline landed | LBP-ADR-001 | WP-MASTER / WP-003 / J | CLOSED |  | No-Anchor-No-Claim and TT preserved |
| REQ-004B | PACK_GUIDE | Package D owner ceiling maintained | PACKGUIDE-PKGD-001 | route_out_registry.json | CLOSED |  | Package D proof absent keeps block |
| REQ-004C | PACK_GUIDE | Package E owner ceiling maintained | PACKGUIDE-PKGE-001;PIPEA-CARRIER-003 | route_out_registry.json / K | CLOSED |  | validator / release_guard / owner acceptance remain route-out |
| REQ-005A | PIPELINE_BRIDGE | mounted bridge carrier absorbed without filename-overclaim | PIPEA-CARRIER-001;PIPEA-CARRIER-002;PIPEA-CARRIER-003 | E/F/G | CLOSED_WITH_CARRIER_HONESTY |  | r4 的 standalone-blueprint overclaim 已改為 carrier-honest binding |
| REQ-005B | PIPELINE_BRIDGE | standalone blueprint filenames retained only as lineage / TT-bound | OWNER_BLUEPRINT_FILENAME-001;PIPELINE_BLUEPRINT_FILENAME-001 | J / exact_locator_registry.tsv | CLOSED_WITH_BOUNDARY | TT-CADSL-WPRBWI-002 | filename known != direct readback |
| REQ-006A | OBSIDIAN_BLUEPRINT | Obsidian 納入 support-frontstage only | OBS-BLUEPRINT-001 | H / docs/subsystems/CA-DSL/sourcepack/meta.json / CA-CORE.md | CLOSED_WITH_BOUNDARY |  | 不升格為 correctness owner |
| REQ-006B | OBSIDIAN_BLUEPRINT | manifest exclusion / no-promotion / TT-OBS shell absorbed | OBS-BLUEPRINT-001;OBS-BLUEPRINT-TT-001 | H / J / support_web_registry.* | CLOSED_WITH_BOUNDARY |  | frontstage useful，但不構成 owner proof |
| REQ-007A | SUPPORT_REFERENCE | SEM8 / SEM3 / design / impl / tw mapping / multivector only support-only | SEM8-BRIDGE-001;SEM3-INDEX-001;PA-DESIGN-001;PA-IMPL-001;TWMAP-001;MULTIVECTOR-001 | H / I | CLOSED_WITH_BOUNDARY |  | support-only != normative |
| REQ-008A | OPS | Ops precedence / named scenario docs registered as route-out only | OPS-DOCMAP-001;OPS-OP04-001 | route_out_registry.json | CLOSED_WITH_ROUTE_OUT |  | HOW 未被偷塞回 owner law |
| REQ-009A | PACKAGING | main MD + ZIP + mandatory sidecars + sourcepack four files materialized | WPRBWI-BASE-003;WPM-WP004-001 | M / delivery_manifest.json | CLOSED |  | 本回合可誠實宣稱 document package only |
| REQ-009B | PACKAGING | runtime / release 仍 fail-closed until owner proofs appear | WPM-TRUTH-001;PIPEA-CARRIER-003 | K / package_validation.json | CLOSED |  | document completeness != runtime pass != release pass |

<a id="support-absorption"></a>
## H. Support Absorption Ledger

### H.1 current support absorption rows
| support_id | source_file | absorbed_topic | promotion_rule | landing | verdict |
| --- | --- | --- | --- | --- | --- |
| SUP-OBS-001 | Pipeline-A_Obsidian升級藍圖.md | support-frontstage legal position / no-promotion / manifest exclusion | support-only | H / docs/subsystems/CA-DSL/sourcepack/meta.json / route_out_registry.json | CLOSED_WITH_BOUNDARY |
| SUP-OBS-002 | Pipeline-A_Obsidian升級藍圖.md | TT-OBS shell mirrored into package-local TT rows | support-only | J / test_tracking_list.tsv | CLOSED_WITH_BOUNDARY |
| SUP-SEM8-001 | SEM8-ICT-TW_重構升級藍圖_v1.2.1-r1.md | stable_id / naming shell | support-only | H | CLOSED_WITH_BOUNDARY |
| SUP-SEM3-001 | SEM³資料參考_合冊.md | DOC_ID + canonical anchor discipline | support-only | E / exact_locator_registry.tsv | CLOSED_WITH_BOUNDARY |
| SUP-DESIGN-001 | Pipeline-A設計資料參考_合冊.md | schema-constrained hardening rationale | support-only | I | CLOSED_WITH_BOUNDARY |
| SUP-IMPL-001 | Pipeline-A實作資料參考_合冊.md | thin-script local fail-closed checks | support-only | I | CLOSED_WITH_BOUNDARY |
| SUP-TWMAP-001 | 台股實戰映射_合冊.md | execution remains downstream / non-owner | support-only | H | CLOSED_WITH_BOUNDARY |
| SUP-MULTIVECTOR-001 | 多模態多向量圖像檢索技術指南_筆記.txt | heavy multivector retrieval remains reject/support-only | support-only | I | CLOSED_WITH_BOUNDARY |

### H.2 mandatory rejection / non-promotion notes
- `support-only != normative`
- `support-frontstage only != canonical truth`
- external/support mirrors may explain why a guard exists, but cannot cancel `BLOCK_RELEASE`
- no support note may erase Package D/E / Ops / CA-METHOD owner ceilings

<a id="tooling"></a>
## I. Tool Adoption / Backup / Reject Matrix

| class | tool_or_pattern | why | verdict |
| --- | --- | --- | --- |
| PRIMARY | repo-native sourcepack + current owner books + Markdown + JSON/TSV sidecars + thin validation scripts | lowest-friction / native-first / truthful package path | ADOPT |
| PRIMARY | current WP/RB/WI fenced corpus | already materialized; preserve and repackage | ADOPT |
| CONDITIONAL | Obsidian shadow frontstage (`notes/obsidian/**`, `.obsidian/**`, `.base/**`) | support-frontstage only; not in canonical manifest by default | ADOPT_WITH_GUARDS |
| CONDITIONAL | Python thin scripts for manifest/checksum/join validation | allowed only as thin scripts; no replacement of owner systems | ADOPT_WITH_GUARDS |
| SUPPORT_ONLY | GraphRAG / RAPTOR / CRAG / RAG-Triad artifacts | artifact-level support only; not mainline correctness | SUPPORT_ONLY |
| SUPPORT_ONLY | Dataview / Tasks / QuickAdd / Templater / Obsidian Git | optional plugins only; not required path | SUPPORT_ONLY |
| REJECT | 自建高耦合 renderer / validator / release orchestrator | violates no-wheel / low-friction / owner-boundary | REJECT |
| REJECT | heavy multivector retrieval tower 作為 CA-DSL core | not required for owner scope; increases coupling | REJECT |

### I.1 裁決摘要
- primary stack：repo-native sourcepack + current owner books + Markdown/JSON/TSV sidecars + thin validation scripts
- conditional stack：Obsidian shadow frontstage；但需 obey manifest exclusion / no-promotion gate
- reject：任何自建高耦合 correctness owner、heavy retrieval tower、或把 support stack 冒充 owner proof 的組合

<a id="cr-open"></a>
## J. Patch Resolution / CR_OPEN 暫時結案與測試追蹤

### J.1 patch resolution ledger
| patch_id | problem | closure | landing | note |
| --- | --- | --- | --- | --- |
| P-001 | authority order drift | FIXED | A/D | task-level authority stack normalized to the user-mandated seven-tier order only |
| P-002 | standalone blueprint overclaim | FIXED_WITH_HONESTY | E/F/G | missing direct blueprints remain filename-lineage / TT-bound; no prerequisite overclaim remains |
| P-003 | navigation mainline too proxy-heavy | FIXED | C/D/L | mainline converged to one seven-tier chain; bridge/proxy/router notes explicitly demoted |
| P-004 | sourcepack only promised, not materialized | FIXED | docs/subsystems/CA-DSL/sourcepack/* | materialized `meta.json / CA-CORE.md / CA-MC4.md / CA-WP.md` at the same shipping path declared by governance unit |
| P-005 | package truth needed full rebuild | FIXED | MANIFEST/CHECKSUMS/delivery_manifest/package_validation | rebuilt from final frozen payload after all patches |
| P-006 | route-out law under-specified | FIXED | route_out_registry.json | Package B/D/E, Ops, CA-METHOD, support-frontstage boundaries are all machine-readable |
| P-007 | support-web contract was only narrative | FIXED_WITH_BOUNDARY | support_web_registry.* | local blueprint URLs remain support-only mirrors; no normative promotion |
| P-008 | release blockers risked being washed out by package completion | FIXED | K/package_validation.json | runtime/release remain fail-closed and BLOCK_RELEASE |
| P-009 | WP/RB/WI corpus risked accidental rewrite | FIXED | L / docs/subsystems/CA-DSL/sourcepack/CA-WP.md | fenced corpus preserved while audit defects were patched structurally |
| P-010 | carrier reality not explicit enough | FIXED | A/C/E/F | carrier / filename-only / missing statuses split cleanly |
| P-011 | audit F-001 mainline conflict | FIXED | C/D/L | WP-MASTER no longer redefines a competing mainline |
| P-012 | audit F-002 undefined locator references | FIXED | E.3 / package_validation.json | dangling locator references removed or materialized as package-local locators |
| P-013 | audit F-003 blueprint prerequisite contradiction | FIXED | C/E/L | standalone blueprints demoted from prerequisites unless directly mounted |
| P-014 | audit F-004 machine route-out missing Package B | FIXED | route_out_registry.json / package_validation.json | `ROUTE-PKG-B` added and validated |
| P-015 | audit F-005 MANIFEST self-row stale | FIXED | MANIFEST.json / package_validation.json | self-row bytes now generated to fixed-point and validated |
| P-016 | audit F-006 sourcepack path drift | FIXED | docs/subsystems/CA-DSL/sourcepack/* / M | governance path and shipped path are identical in r6 |
| P-017 | audit F-007 rank1 carrier ambiguity | FIXED_WITH_NOTE | D.1 / machine_summary.json | task authority rank remains one row for central engineering正文; DOC-0002 retained as carrier requirement readback note only |

### J.2 CR_OPEN temporary closure ledger
| cr_id | risk_or_gap | status | truthful_note | reopen_condition |
| --- | --- | --- | --- | --- |
| CR-CADSL-WPRBWI-001 | CA-DSL owner blueprint standalone file not mounted | TT_BOUND | filename lineage known; direct readback absent | standalone direct source mounted and reconciled |
| CR-CADSL-WPRBWI-002 | Pipeline-A blueprint standalone file not mounted | TT_BOUND | mounted carrier used; standalone blueprint absent | standalone direct source mounted and reconciled |
| CR-CADSL-WPRBWI-003 | historical CA-DSL WP book absent | MISSING_AT_PATCH_TIME | historical parity cannot support current closure | historical file rematerialized and audited |
| CR-CADSL-WPRBWI-004 | Package D owner proof absent | BLOCK_RELEASE | factory/render/required-check proof not read back here | Package D owner proof mounted and validated |
| CR-CADSL-WPRBWI-005 | Package E validator / release_guard / owner acceptance absent | BLOCK_RELEASE | release-ready adjudication impossible | Package E owner proof mounted and validated |
| CR-CADSL-WPRBWI-006 | CA-METHOD consumer exact acceptance absent | BLOCK_RELEASE | consumer schema / final acceptance unavailable | consumer acceptance mounted and validated |
| CR-CADSL-WPRBWI-007 | runtime evidence bundle absent | FAIL_CLOSED | document package only; no runtime evidence bundle shipped | runtime evidence bundle materialized |

### J.3 test tracking list
| tt_id | topic | acceptance_condition | status |
| --- | --- | --- | --- |
| TT-CADSL-WPRBWI-001 | Package self-validation | `checksum_correctness` / `manifest_correctness` / joins / fence integrity all pass | OPEN_UNTIL_RECHECK |
| TT-CADSL-WPRBWI-002 | Standalone blueprint reconciliation | when standalone owner/pipeline blueprints are mounted, diff against carrier-based closure and reopen if drift exists | OPEN |
| TT-CADSL-WPRBWI-003 | Sourcepack render parity | render from `docs/subsystems/CA-DSL/sourcepack/*` and verify no illegal divergence from current owner law | OPEN |
| TT-CADSL-WPRBWI-004 | Obsidian non-promotion gate | confirm `.obsidian/**` / `.base/**` / `notes/obsidian/**` stay out of canonical package truth unless materialized | OPEN |
| TT-CADSL-WPRBWI-005 | Package D/E owner proof arrival | rerun release stopline once owner proofs appear | OPEN |
| TT-CADSL-WPRBWI-006 | CA-METHOD consumer acceptance | bind consumer exact acceptance / schema / required checks | OPEN |
| TT-CADSL-WPRBWI-007 | Runtime evidence bundle | generate and validate runtime evidence; until then runtime remains contract-only | OPEN |

> legacy note：`TT-CADSL-WPM-001..005` 保留為 fenced WP/RB/WI 內的 compatibility aliases；machine canonical TT rows 以 `TT-CADSL-WPRBWI-*` 為準。

<a id="truthful-verdict"></a>
## K. Final Truthful Verdict / Blocker / Stopline

### K.1 layer split
- `document completeness != runtime pass != release pass`
- `package completion != promotion permission`
- `runtime contract defined != runtime evidence exists`
- `document/package 交付完成 != owner proof 已補齊`

### K.2 highest blockers
- Package D owner proof absent
- Package E validator / release_guard / owner acceptance absent
- CA-METHOD consumer exact acceptance absent
- runtime evidence bundle absent
- standalone owner/pipeline blueprints not direct-mounted in current workspace

### K.3 stopline
- 只可宣稱：**Document package shipped truthfully**
- 不可宣稱：runtime green、validator green、release-ready、owner acceptance complete
- 任一 note/frontstage 若要升格，必須先 materialize 成 `docs/subsystems/CA-DSL/sourcepack/*` 或 explicit sidecar，再經 render / validate / package_validation

<a id="fences"></a>
## L. WP / RB / WI Fences

[WPRBWI_FENCE_BEGIN:WP-MASTER]

## purpose / objective
- 定義 CA-DSL WP-RB-WI family 的總法位、owner boundary、固定主線、truth split、route-out ceiling、package truth 與 stopline。
- 吸收本回合 audit-r1 findings 的修補要求，但不越權取代上游 owner law。

## scope / in-scope / out-of-scope
- in-scope：operator runbook、work instructions、rollback / fallback choreography、evidence minimums、acceptance path、document-package truth。
- out-of-scope：execution semantics、broker/order/fill behavior、Package B/D/E owner HOW、parser/OCR/retrieval correctness owner law、runtime/release proof。

## authority / owner boundary
- 以 `GCERM-DSL-001`、`SSOT-DSL-001`、`CADSL-MC4-SOURCEPACK-001`、`WPM-BIND-001`、`LBP-CA-DSL-001` 為主定位。
- WP-MASTER 不得重寫 mainline；其導航主線一律服從 §C.2 與 §D.1 的固定七階。
- `Spartoi-OMOC_SubP1-LITE+MVP_Pipeline-A_MC4+_WP-M_合冊`、`Spartoi-OMOC_Master_Spine_Full_Monolith`、`Pipeline-A_Index_Pack_Full_Monolith` 只可作 bridge/proxy/router 註記；不得冒充 owner authority row。

## prerequisites / dependencies
- current direct owner baseline：`Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_WP-M_合冊.md`
- direct owner constitution：`Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_MC4+_合冊.md`
- current uploaded baseline body：`Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_WP-RB-WI_合冊.md`
- standalone owner / pipeline blueprints：`filename-lineage only / NOT_MOUNTED_DIRECT / TT-bound`；在 current workspace **不是 prerequisite**。

## artifacts / schemas / sidecars
- root sidecars：`MANIFEST.json`、`CHECKSUMS.sha256`、`BUILD.md`、`machine_summary.json`、`delivery_manifest.json`、`package_tree.txt`、`bundle_tree.txt`
- governance sidecars：`exact_locator_registry.tsv`、`subsource_decomposition_ledger.tsv`、`upstream_closure_ledger.tsv`、`support_absorption_ledger.tsv`、`tooling_decision_ledger.tsv`、`route_out_registry.json`、`patch_resolution_ledger.tsv`
- blocker sidecars：`cr_open_temporary_closure_ledger.tsv`、`test_tracking_list.tsv`、`package_validation.json`
- support sidecars：`support_web_registry.tsv`、`support_web_registry.json`
- sourcepack：`docs/subsystems/CA-DSL/sourcepack/meta.json`、`docs/subsystems/CA-DSL/sourcepack/CA-CORE.md`、`docs/subsystems/CA-DSL/sourcepack/CA-MC4.md`、`docs/subsystems/CA-DSL/sourcepack/CA-WP.md`

## required checks
- checksum correctness
- manifest correctness
- manifest self-row consistency
- closure join integrity
- locator registry integrity
- route-out join integrity
- fence family integrity
- blocker preservation
- truth split preservation

## decision points
1. 是否為 canonical ingress / canonical output 問題？若是，優先看 WP-001。
2. 是否涉及 market_profile_id 與 purity？若是，優先看 WP-002。
3. 是否涉及 triplet / handoff / RunLedger？若是，優先看 WP-003。
4. 是否涉及 package truth / release stopline？若是，優先看 WP-004。

## acceptance criteria
- 來源綁定真實，沒有 dangling locator
- navigation mainline 僅有一套，且 proxy-only 誠實聲明存在
- WP / RB / WI fences 為 distinct families
- package_validation.json 能驗 checksum / manifest / self-row / joins / fences
- route_out_registry.json 欄位語義與實際值一致，且含 Package B / D / E / Ops / CA-METHOD / frontstage

## rollback / fallback
- 任一 validator 失敗 → 回到 fail-closed 狀態，不得 narrative bypass。
- 無 direct readback → route-out + TT + BLOCK_RELEASE/ENGINEERING_GUARD。
- 支援工具 only 只能作 support lane，不可提升為 owner proof。

## blockers / risks / TT
- `TT-CADSL-WPM-001`~`005` 為主要 blocker。
- sourcepack 雖已強化，但其 render contract 仍屬 constitutional input surface，不是 runtime render proof。

## package truth / release stopline
- document package pass 不等於 runtime pass
- runtime pass 不等於 release pass
- Package B authoritative schema absent → engineering guard
- Package D / E owner proof absent → 一律 `BLOCK_RELEASE`

[WPRBWI_FENCE_END:WP-MASTER]

---

[WPRBWI_FENCE_BEGIN:WP-001]

## purpose / objective
- 以 canonical ingress 規則承接 `ART-DISTILL-BASE`，產出唯一合法 canonical output `ART-DSL-SPEC` / `art_dsl_spec.json`。
- 解決 alias/canonical 混淆，並把 schema foundation 寫成可審計的 gate。

## scope / in-scope / out-of-scope
- in-scope：ingress contract、canonical bridge、schema validation、alias normalization。
- out-of-scope：consumer owner schema 終裁、execution semantics、runtime acceptance。

## authority / owner boundary
- owner locators：`GCERM-DSL-001`、`SSOT-DSL-001`、`CADSL-MC4-REQ-001`、`WPM-BIND-001`
- route-out：Package B / ICD authoritative schema, CA-METHOD consumer exact schema.

## inputs / outputs
- inputs：`ART-DISTILL-BASE`、`dsl_handoff_payload.json`、trace refs、upstream refs、prior digest
- outputs：`ART-DSL-SPEC`、`art_dsl_spec.json`、`ingress_contract_check.json`、`schema_report.json`、`canonical_crosswalk.json`

## prerequisites / dependencies
- upstream refs must be readable
- canonical output file identity must already be settled in owner books
- current WP-M direct binding must be available

## artifacts / schemas / sidecars
- `art_dsl_spec.json`
- `schema_report.json`
- `ingress_contract_check.json`
- `canonical_crosswalk.json`

## required checks
- `GATE-INGRESS-CONTRACT`
- `GATE-SCHEMA`
- canonical path check
- alias-only rejection check

## step order
1. verify canonical ingress pointers
2. verify trace / upstream refs
3. verify canonical output identity
4. run schema validation
5. write ingress and schema reports
6. reject alias-only output

## decision points
- ingress missing? → stop
- authoritative schema absent? → route-out Package B / ICD owner
- alias treated as canonical? → reject and rebuild canonical path

## acceptance criteria
- canonical concrete file = `art_dsl_spec.json`
- compatibility alias `dsl_schema.json` explicitly demoted
- `schema_report.json` exists and passes
- no local draft is promoted as canonical

## rollback / fallback
- ingress fail → preserve prior digest, no downstream handoff
- schema fail → invalidate current draft and stopline
- authoritative schema absent → `CR-CADSL-WPRBWI-004A` + `TT-CADSL-WPM-005`

## blockers / risks / TT
- `TT-CADSL-WPM-005`
- `TT-CADSL-WPM-004`

## route-out
- Package B / ICD owner
- CA-METHOD owner

## package truth / release stopline
- no schema pass → no runtime path
- no Package B proof → engineering guard remains

[WPRBWI_FENCE_END:WP-001]

---

[WPRBWI_FENCE_BEGIN:WP-002]

## purpose / objective
- 維持 DSL core 的 primitive neutrality，並只透過 `market_profile_id` 做間接市場綁定。
- 明確把 `baseline_v1.vpc.yaml`、`dsl_mapping.json` 降為 adjunct。

## scope / in-scope / out-of-scope
- in-scope：purity gate、MarketProfile indirect binding、adjunct split。
- out-of-scope：L10N-EX threshold 終裁、execution / broker semantics、XS downstream behavior。

## authority / owner boundary
- owner locators：`GCERM-DSL-001`、`OPS-OP04-001`、`TWMAP-001`
- route-out：Ops owner / downstream owner for thresholds and choreography

## inputs / outputs
- inputs：`art_dsl_spec.json`、`market_profile_id`、adjunct refs
- outputs：`purity_report.json`、`profile_resolve_note.json`、adjunct refresh notes

## prerequisites / dependencies
- WP-001 pass
- canonical output identity fixed

## artifacts / schemas / sidecars
- `purity_report.json`
- `profile_resolve_note.json`
- adjunct refs: `baseline_v1.vpc.yaml`, `dsl_mapping.json`

## required checks
- `GATE-DSL-PURITY`
- `GATE-MARKETPROFILE-BINDING`
- adjunct-demotion check

## step order
1. verify canonical spec exists
2. scan core for market constants leakage
3. resolve `market_profile_id`
4. write purity/profile notes
5. verify adjuncts only reference canonical spec

## decision points
- market constants leaked? → stop
- unresolved `market_profile_id`? → route-out
- adjunct promoted to canonical? → rollback adjunct surface

## acceptance criteria
- `purity_report.json` exists and passes
- `market_profile_id` resolved
- adjunct assets remain adjunct-only
- no execution semantics in DSL core

## rollback / fallback
- purity fail → stop and route-out
- unresolved profile → no downstream handoff
- adjunct drift → rollback to previous adjunct refs

## blockers / risks / TT
- `TT-CADSL-WPM-001`
- Ops and downstream thresholds remain route-out

## route-out
- Ops exact choreography
- MarketProfile thresholds / L10N-EX overlap choreography

## package truth / release stopline
- purity fail blocks runtime
- unresolved profile blocks handoff

[WPRBWI_FENCE_END:WP-002]

---

[WPRBWI_FENCE_BEGIN:WP-003]

## purpose / objective
- 實體化 evidence triplet、handoff、lineage、RunLedger，使 CA-DSL 對下游的交付具 replay / audit / trace 能力。
- 嚴禁 alias-only handoff 與 narrative-only closure。

## scope / in-scope / out-of-scope
- in-scope：`verdict.json`、`index.json`、`bundle/`、`run_manifest.json`、`refdb_manifest.json`、RunLedger row、`method_ingress_handoff.json`
- out-of-scope：CA-METHOD owner acceptance 終裁、Package E promotion reality

## authority / owner boundary
- owner locators：`GCERM-ART-001`、`SUBP1-DB-001`、`LBP-ADR-001`
- route-out：CA-METHOD owner acceptance / Package E release truth

## inputs / outputs
- inputs：canonical spec + schema/purity reports + trace refs + market_profile_id
- outputs：triplet, manifests, RunLedger row, handoff payload

## prerequisites / dependencies
- WP-001 pass
- WP-002 pass

## artifacts / schemas / sidecars
- `verdict.json`
- `index.json`
- `bundle/`
- `run_manifest.json`
- `refdb_manifest.json`
- RunLedger row
- `method_ingress_handoff.json`

## required checks
- `GATE-EVIDENCE-TRIPLET`
- `GATE-HANDOFF-LINEAGE`

## step order
1. write verdict
2. write index with trace refs
3. materialize bundle/
4. write run/refdb manifests
5. append RunLedger row
6. emit downstream handoff payload

## decision points
- any triplet member missing? → stop
- RunLedger append fail? → stop
- alias-only handoff? → invalidate and regenerate

## acceptance criteria
- triplet complete
- manifests present
- RunLedger row persisted
- handoff uses canonical spec, not alias
- downstream handoff is traceable

## rollback / fallback
- triplet incomplete → no handoff
- RunLedger fail → run incomplete, no promotion
- consumer exact schema absent → route-out CA-METHOD owner

## blockers / risks / TT
- `TT-CADSL-WPM-001`
- `TT-CADSL-WPM-004`

## route-out
- CA-METHOD consumer exact schema / acceptance
- Package E owner acceptance

## package truth / release stopline
- missing triplet or RunLedger row = runtime fail-closed
- consumer exact schema absent = engineering guard

[WPRBWI_FENCE_END:WP-003]

---

[WPRBWI_FENCE_BEGIN:WP-004]

## purpose / objective
- 把主書與 sidecars 組裝成 truthful document package，並把 release stopline 寫死。
- 任何 package truth、owner proof、runtime proof 的缺口，都不得被文案洗成綠燈。

## scope / in-scope / out-of-scope
- in-scope：MANIFEST、CHECKSUMS、BUILD、delivery_manifest、machine_summary、package_tree、bundle_tree、package_validation
- out-of-scope：Package D/E runtime owner proofs 的代償與偽造

## authority / owner boundary
- owner locators：`WPM-WP004-001`、`PACKGUIDE-PKGD-001`、`PACKGUIDE-PKGE-001`
- route-out：Package D owner、Package E owner

## inputs / outputs
- inputs：main markdown、all sidecars、sourcepack files
- outputs：truthful document package + ZIP + validation output

## prerequisites / dependencies
- all package files frozen before hashing
- no mutable file may change after hash generation

## artifacts / schemas / sidecars
- `MANIFEST.json`
- `CHECKSUMS.sha256`
- `BUILD.md`
- `delivery_manifest.json`
- `machine_summary.json`
- `package_tree.txt`
- `bundle_tree.txt`
- `package_validation.json`
- `patch_resolution_ledger.tsv`

## required checks
- `GATE-DELIVERY-PACK`
- `GATE-RELEASE-STOPLINE`
- checksum correctness
- manifest correctness
- closure join correctness
- route-out join correctness

## step order
1. freeze payload
2. build trees and machine projections
3. compute package validation
4. write MANIFEST
5. write CHECKSUMS
6. zip root payload
7. never mutate hashed files afterward

## decision points
- checksum mismatch? → invalidate package
- manifest mismatch? → invalidate package
- Package D proof absent? → block release
- Package E proof absent? → block release

## acceptance criteria
- required files present
- checksums valid
- manifest valid
- joins valid
- blockers preserved
- release remains blocked when owner proof absent

## rollback / fallback
- any descriptor divergence → rebuild descriptors and re-hash
- any owner proof absent → keep `BLOCK_RELEASE`
- if validation turns red, do not publish optimistic verdict

## blockers / risks / TT
- `TT-CADSL-WPM-002`
- `TT-CADSL-WPM-003`

## route-out
- Package D required checks / workflow / build factory
- Package E validator / release_guard / owner acceptance

## package truth / release stopline
- document package complete != runtime complete != release complete
- Package D/E proof absent → `BLOCK_RELEASE`
- runtime artifact set absent → `FAIL_CLOSED / CONTRACT_ONLY`

[WPRBWI_FENCE_END:WP-004]

---

[WPRBWI_FENCE_BEGIN:RB-001]

## trigger / entry condition
- 需要承接新的 `ART-DISTILL-BASE` 或重新驗證 canonical ingress / schema foundation 時啟動。

## preflight
- 確認 `ART-DISTILL-BASE`、`dsl_handoff_payload.json`、trace refs、upstream refs 可回讀。
- 確認 canonical output file = `art_dsl_spec.json`。

## operator steps
1. read ingress pointers and upstream refs
2. verify canonical output identity
3. reject alias-only inputs
4. run schema check
5. write ingress and schema reports

## evidence collection
- `ingress_contract_check.json`
- `schema_report.json`
- `canonical_crosswalk.json`

## checkpoint / probe
- canonical input probe pass
- schema pass
- alias demotion note present

## failure handling
- ingress missing → stop and record blocker
- schema fail → invalidate draft

## rollback
- revert to prior digest / prior canonical output
- remove release-facing descriptors from failed run

## escalation / handoff
- Package B / ICD owner
- CA-METHOD owner (consumer exact schema)

## exit criteria
- canonical file fixed
- schema report green
- no alias-only handoff path remains

## references / locators
- `GCERM-DSL-001`
- `CADSL-MC4-REQ-001`
- `WPM-BIND-001`

[WPRBWI_FENCE_END:RB-001]

---

[WPRBWI_FENCE_BEGIN:RB-002]

## trigger / entry condition
- schema gate已過，但需驗 DSL core purity、`market_profile_id` 與 adjunct boundary。

## preflight
- canonical spec exists
- schema report pass
- operator knows adjunct files are non-canonical

## operator steps
1. scan DSL core for market constants
2. resolve `market_profile_id`
3. write purity/profile notes
4. refresh adjunct refs without promoting them
5. verify downstream handoff remains primitive-neutral

## evidence collection
- `purity_report.json`
- `profile_resolve_note.json`
- adjunct reference notes

## checkpoint / probe
- no market constants leakage
- profile resolved
- adjunct files remain adjunct-only

## failure handling
- purity fail → stopline
- unresolved profile → no handoff

## rollback
- revert adjunct refs
- revert to previous canonical spec if contamination occurred

## escalation / handoff
- Ops owner
- downstream owner for thresholds/choreography

## exit criteria
- purity report green
- indirect binding only
- no execution semantics leaked

## references / locators
- `GCERM-DSL-001`
- `OPS-OP04-001`
- `TWMAP-001`

[WPRBWI_FENCE_END:RB-002]

---

[WPRBWI_FENCE_BEGIN:RB-003]

## trigger / entry condition
- canonical spec + schema/purity reports green and downstream handoff is being prepared.

## preflight
- verify canonical spec hash is stable
- verify trace refs and market_profile_id present

## operator steps
1. write verdict/index
2. materialize bundle/
3. write run/refdb manifests
4. append RunLedger row
5. emit `method_ingress_handoff.json`
6. verify no alias-only handoff survives

## evidence collection
- `verdict.json`
- `index.json`
- `bundle/`
- `run_manifest.json`
- `refdb_manifest.json`
- RunLedger row
- `method_ingress_handoff.json`

## checkpoint / probe
- triplet complete
- RunLedger append pass
- handoff references canonical file and trace refs

## failure handling
- triplet incomplete → stop
- RunLedger fail → no promotion
- handoff alias-only → invalidate and rebuild

## rollback
- remove incomplete handoff pack
- mark run incomplete and preserve failure evidence

## escalation / handoff
- CA-METHOD owner
- Package E owner when promotion truth is requested

## exit criteria
- triplet complete
- lineage closed at document/runtime-contract layer
- downstream handoff traceable

## references / locators
- `GCERM-ART-001`
- `SUBP1-DB-001`
- `LBP-ADR-001`

[WPRBWI_FENCE_END:RB-003]

---

[WPRBWI_FENCE_BEGIN:RB-004]

## trigger / entry condition
- document package needs to be frozen, validated, hashed, and zipped.

## preflight
- all root files and sourcepack files are present
- no pending mutation after hash generation

## operator steps
1. freeze payload
2. build package_tree / bundle_tree
3. generate machine_summary and delivery_manifest
4. run package validation
5. generate MANIFEST
6. generate CHECKSUMS
7. zip root payload

## evidence collection
- `package_validation.json`
- `MANIFEST.json`
- `CHECKSUMS.sha256`
- `delivery_manifest.json`
- `machine_summary.json`

## checkpoint / probe
- checksum pass
- manifest pass
- closure join pass
- route-out join pass
- release stopline preserved

## failure handling
- any mismatch → invalidate package
- any missing owner proof → keep block-release

## rollback
- rebuild descriptors from frozen payload
- regenerate hashes only after all mutable files are final

## escalation / handoff
- Package D owner
- Package E owner

## exit criteria
- truthful document package built
- blockers still visible
- no false green

## references / locators
- `WPM-WP004-001`
- `PKG-VALID-001`
- `PKG-MANIFEST-001`
- `PKG-DELIVERY-001`

[WPRBWI_FENCE_END:RB-004]

---

[WPRBWI_FENCE_BEGIN:WI-001]

## work objective
- 讓 operator 以 canonical ingress 產出合法 schema-checked DSL spec。

## exact operator instruction
1. 只接收 `ART-DISTILL-BASE` + `dsl_handoff_payload.json`
2. 拒絕 alias-only 或 narrative-only ingress
3. 確認 canonical output = `art_dsl_spec.json`
4. 跑 schema validation
5. 產出 `ingress_contract_check.json` / `schema_report.json`

## input example
- `ART-DISTILL-BASE`
- `dsl_handoff_payload.json`
- `trace_refs[]`

## output example
- `data/pipeline-a/dsl_ssot/art_dsl_spec.json`
- `evidence/dsl/<run_id>/schema_report.json`

## expected observable result
- schema report green
- canonical path fixed
- alias remains demoted

## verification point
- `schema_report.json` exists and pass
- canonical file is not `dsl_schema.json`

## common failure / pitfall
- 把 alias file 當 canonical
- 缺 upstream refs 卻繼續往下游傳播

## safe fallback / route-out
- ingress fail or authoritative schema absent → route-out Package B / ICD owner

[WPRBWI_FENCE_END:WI-001]

---

[WPRBWI_FENCE_BEGIN:WI-002]

## work objective
- 驗證 DSL core 保持 primitive-neutral，且市場綁定只經 `market_profile_id`。

## exact operator instruction
1. 檢視 canonical spec
2. 搜尋市場常數與 execution semantics
3. 解析 `market_profile_id`
4. 寫 `purity_report.json` / `profile_resolve_note.json`
5. 確認 adjunct 只引用 canonical spec

## input example
- `art_dsl_spec.json`
- `market_profile_id`
- `baseline_v1.vpc.yaml`
- `dsl_mapping.json`

## output example
- `evidence/dsl/<run_id>/purity_report.json`
- `evidence/dsl/<run_id>/profile_resolve_note.json`

## expected observable result
- purity green
- profile resolved
- adjunct not promoted

## verification point
- no market constants in core
- no execution semantics in handoff payload

## common failure / pitfall
- 將 threshold / session rules 寫回 DSL core
- 把 adjunct surface 誤當 canonical

## safe fallback / route-out
- unresolved profile or choreography ambiguity → route-out Ops/downstream owner

[WPRBWI_FENCE_END:WI-002]

---

[WPRBWI_FENCE_BEGIN:WI-003]

## work objective
- 產出可 replay / audit 的 triplet、lineage、RunLedger closure 與 downstream handoff。

## exact operator instruction
1. 寫 `verdict.json`
2. 寫 `index.json` with trace refs
3. materialize `bundle/`
4. 寫 `run_manifest.json` / `refdb_manifest.json`
5. append RunLedger row
6. emit `method_ingress_handoff.json`

## input example
- canonical spec hash
- schema/purity reports
- trace refs
- `market_profile_id`

## output example
- `evidence/dsl/<run_id>/bundle/`
- `runledger/ledger.sqlite` row
- `method_ingress_handoff.json`

## expected observable result
- triplet complete
- RunLedger append pass
- handoff traceable

## verification point
- all triplet members exist
- handoff references canonical file
- RunLedger row persisted

## common failure / pitfall
- 只寫 summary，不寫 bundle/index/verdict
- alias-only handoff
- RunLedger append failure ignored

## safe fallback / route-out
- consumer exact schema absent → route-out CA-METHOD owner

[WPRBWI_FENCE_END:WI-003]

---

[WPRBWI_FENCE_BEGIN:WI-004]

## work objective
- 生成 truthful document package，並把 block-release 條件明確寫死。

## exact operator instruction
1. freeze payload
2. build trees + summaries
3. validate package joins and checksums
4. write manifest and checksums
5. zip root payload
6. preserve all blockers in machine summary / delivery manifest / package validation

## input example
- main markdown
- sidecars
- sourcepack files

## output example
- `MANIFEST.json`
- `CHECKSUMS.sha256`
- `package_validation.json`
- ZIP package

## expected observable result
- descriptor truth一致
- checksum green
- release still blocked when owner proofs absent

## verification point
- checksums valid
- manifest valid
- route-out join valid
- closure join valid

## common failure / pitfall
- hash 完後又改檔
- 把 document completeness 說成 release pass

## safe fallback / route-out
- checksum or manifest fail → rebuild package
- Package D/E proof absent → keep `BLOCK_RELEASE`

[WPRBWI_FENCE_END:WI-004]

---

[WPRBWI_FENCE_BEGIN:WI-COMMAND-CHECKLIST]

## daily checklist
1. 確認 sourcepack 四檔職責與 owner boundary 未漂移。
2. 確認 `art_dsl_spec.json` 仍是 canonical concrete file。
3. 確認 `dsl_schema.json` 未被升格為 canonical。
4. 確認 release blockers 仍保留為 blocker，沒有被文字漂白。

## verify checklist
- 驗 canonical/alias fence
- 驗 schema/purity/triplet/ledger 最小集合
- 驗 package descriptors
- 驗 route-out registry and TT
- 驗 release stopline still BLOCK_RELEASE

## release-block checklist
- Package D required checks proof = absent -> block
- Package E validator/release_guard/owner acceptance = absent -> block
- runtime artifact set = absent -> block
- CA-METHOD exact schema readback = absent -> engineering guard
- Package B authoritative schema readback = absent -> engineering guard

[WPRBWI_FENCE_END:WI-COMMAND-CHECKLIST]

<a id="packaging-truth"></a>
## M. Packaging Truth / Sidecars / Verification Loop

### M.1 ZIP payload minimum
- `Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_WP-RB-WI_合冊.md`
- `MANIFEST.json`
- `CHECKSUMS.sha256`
- `BUILD.md`
- `machine_summary.json`
- `delivery_manifest.json`
- `package_tree.txt`
- `bundle_tree.txt`
- `artifact_registry.json`
- `canonical_crosswalk.json`
- `exact_locator_registry.tsv`
- `subsource_decomposition_ledger.tsv`
- `upstream_closure_ledger.tsv`
- `support_absorption_ledger.tsv`
- `support_web_registry.tsv`
- `support_web_registry.json`
- `tooling_decision_ledger.tsv`
- `route_out_registry.json`
- `cr_open_temporary_closure_ledger.tsv`
- `test_tracking_list.tsv`
- `package_validation.json`
- `patch_resolution_ledger.tsv`
- `docs/subsystems/CA-DSL/sourcepack/meta.json`
- `docs/subsystems/CA-DSL/sourcepack/CA-CORE.md`
- `docs/subsystems/CA-DSL/sourcepack/CA-MC4.md`
- `docs/subsystems/CA-DSL/sourcepack/CA-WP.md`

### M.2 verification loop
1. build main markdown and sourcepack adjuncts
2. write trees / machine summary / delivery manifest / ledgers
3. validate required files present and JSON/TSV readability
4. validate `checksum_correctness` / `manifest_correctness` / `manifest_self_row_consistency` / `closure_join_integrity` / `locator_registry_integrity` / `route_out_join_integrity`
5. confirm distinct WP/RB/WI fence families and blocker preservation
6. confirm runtime/release verdict still fail-closed / block-release
7. generate MANIFEST to fixed-point and generate CHECKSUMS from final frozen payload
8. zip root payload without mutating truth after checksum generation

### M.3 final self-audit promises executed in this build
- authority order normalized to user-mandated seven-tier stack
- missing-direct blueprints downgraded to filename-only honesty
- mounted bridge carrier used only as bridge carrier, not as authority-row usurper
- sourcepack four-file adjuncts materialized at the same shipping path declared by governance unit
- route_out_registry semantics normalized and expanded to Package B
- package_validation tied to actual payload, including manifest self-row and locator coverage
- runtime / release blockers preserved