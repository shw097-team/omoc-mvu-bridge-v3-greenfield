# 《Spartoi-OMOC_SubP1-LITE+MVP_15CA實作前準備_RBWI合冊》

<a id="cover-card-doc-meta"></a>
## 1. Cover Card + Doc Meta

| field | value |
| --- | --- |
| external_name | Spartoi-OMOC_SubP1-LITE+MVP_15CA實作前準備_RBWI合冊 |
| internal_short_name | SOMOC-15CA-PREFLIGHT-RBWI |
| doc_id | SOMOC-15CA-PREFLIGHT-RBWI.2026-03-08 |
| version | v1.0.0 |
| status | DEFINITIVE_WITH_TT / FAIL-CLOSED |
| generated_at_utc | 2026-03-09T04:31:25Z |
| canonical_topology | Lane-F → Lane-P → 4區 → 15子系統 |
| overall_verdict | TEMP_CLOSED → TEST_TRACK（可交付為施工前準備文檔；不可宣告可直接進場） |
| hard_rule_note | 若來源缺失、定位不足、版本衝突、live config 不可證，必須 fail-closed；不得包裝成 PASS。 |

> 一句話結論：本回合可交付的是 **正式施工前準備合冊與可審計附表**；不能交付的是「可直接開工」的最終綠燈。正式主結構已固定為 `Lane-F → Lane-P → 4區 → 15子系統`，但新一輪 multi-zone preflight、Lane-F requalification、Package E repo_existence、OpenCode runtime isolation 與 live rulesets export 尚未補證，所以全案必須維持 `TEMP_CLOSED → TEST_TRACK`。

<a id="toc-anchors"></a>
## 2. TOC + Anchors

- [1. Cover Card + Doc Meta](#cover-card-doc-meta)
- [2. TOC + Anchors](#toc-anchors)
- [3. AI Reader Guide / Retrieval Guide](#ai-reader-guide-retrieval-guide)
- [4. Inputs Manifest](#inputs-manifest)
- [5. Authority Stack](#authority-stack)
- [6. Scope Lock / Route-Out](#scope-lock-route-out)
- [7. 現況封存基線總覽](#sealed-baselines)
- [8. Lane-F → Lane-P → 4區 → 15子系統 正式拓樸](#canonical-topology)
- [9. 4區治理與責任切分](#zone-governance)
- [10. 15子系統區隔與交付契約](#subsystem-contracts)
- [11. opencode / Oh My OpenCode runtime isolation / window rules / worktree rules](#runtime-isolation)
- [12. Preflight Defenses / 全域風險防線](#preflight-defenses)
- [13. 施工 RUNBOOK（完整）](#runbook)
- [14. 施工 WI（完整）](#work-instructions)
- [15. Acceptance / Adjudication / Evidence / Handoff / Upload / Minset / Checkpoint / Dossier 規則](#acceptance-evidence-handoff)
- [16. CR_OPEN closure / TT register / Test Tracking List](#cr-open-tt)
- [17. External SUPPORT-only Evidence Appendix](#external-support-only-evidence-appendix)
- [18. Final Self-Audit Checklist](#final-self-audit-checklist)
- [19. Delivery Manifest / Download Section](#delivery-manifest-download-section)

<a id="ai-reader-guide-retrieval-guide"></a>
## 3. AI Reader Guide / Retrieval Guide

### 3.1 強制檢索路徑

1. **先入口，後正文**：先以《Pack A-E+工程指南_合冊》作入口，確認 `CMP-01~CMP-09` 與 `FQ_DOC_ID`；不得直接跳去參考方案或單一交接報告拍板。
2. **先 authority，後 how**：先讀工程指南、Blueprint、Control Plane、WSP、MVP Spine、Dev/Ops RBWI，再讀 Packages B–E，最後才讀參考方案與交接報告。
3. **No-Source-No-Norm**：任何 MUST / SHALL / REQUIRED 若缺可回指來源，必須標記 `UNVERIFIED`，並轉入 `TEMP_CLOSED → TEST_TRACK`。
4. **Package A 僅導引，不立法**：治理與索引包只能做 index / mapping / locator / coverage；不能越權生成 HOW 或新法條。
5. **外部資料僅 SUPPORT-only**：只可補強 prompt engineering、OpenCode / Oh-My runtime 風險、GitHub merge queue / rulesets / pinning 等工程做法；不得覆蓋本地規範。

### 3.2 Anti-hallucination 規則

- 不把 `FULL / SPINE` 改寫成未來 canonical lane 名稱。
- 不把 20260304 dual-lane preflight 直接當新階段綠燈。
- 不把 Package C / D / E 未掛載 WI split-source 的 HOW 細節寫成已證規則。
- 不把 `repo_existence != PASS` 的 Package E 說成 release-ready。
- 不把 OpenCode / Oh My OpenCode 的 project/global plugin、session store、hook、cache、compaction 風險省略不寫。

<a id="inputs-manifest"></a>
## 4. Inputs Manifest

### 4.1 來源覆蓋矩陣（摘要）

| source_id | document | role | tier | status | used_in_sections | notes |
| --- | --- | --- | --- | --- | --- | --- |
| SRC-001 | Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊.md | ENTRY/NORMATIVE | T1 | FOUND | §4, §5, §6, §7, §8, §9, §10, §11, §12, §13, §14, §15, §16 | 入口導航；CMP ledger；FQ_DOC_ID 路由。 |
| SRC-002 | Spartoi-OMOC_SubP1-LITE+MVP_前端文檔到實作驗收_工程指南.md | NORMATIVE | T1 | FOUND | §4, §7, §8, §9, §10, §12, §13, §14, §15 | Two-Lane、5-Packages、merge_group、always-report、MC4/WP.Master、Phase 0~5。 |
| SRC-003 | Spartoi-OMOC_SubP1-LITE+MVP_Governance_Index Pack_v1.2.0.md | DERIVED INDEX | T2 | FOUND | §3, §4, §5, §6, §12, §16 | Package A 僅索引/映射，不得立法。 |
| SRC-004 | Spartoi-OMOC_SubP1-LITE+MVP_Control Plane Pack_v2.2.0.md | NORMATIVE INTERFACE | T2 | FOUND | §5, §6, §11, §12, §15, §16 | Authority/Conflict、TT state machine、schema/registry、route-out。 |
| SRC-005 | Spartoi-OMOC_SubP1-LITE+MVP_Execution Pack_v1.2.0.md | EXECUTION/HANDOFF | T2 | FOUND | §5, §11, §13, §14, §15 | Execution interfaces、handoff、logs、route-out；不得升格上位法。 |
| SRC-006 | Spartoi-OMOC_SubP1-LITE+MVP_Factory Pack_v1.2.0.md | FACTORY CONTRACT | T2 | FOUND | §7, §8, §11, §12, §13, §15, §16 | Required checks、merge_group、always-report、verify harness、checks_manifest。 |
| SRC-007 | Spartoi-OMOC_SubP1-LITE+MVP_Subsystem Delivery Pack_v1.2.0.md | DELIVERY CONTRACT | T2 | FOUND | §8, §10, §15, §16 | 15× delivery、release_guard、repo_existence、15CA whitelist。 |
| SRC-008 | Spartoi-OMOC_SubP1-LITE+MVP_藍圖_v1.3.0-r2.md | BLUEPRINT | T2 | FOUND | §5, §8, §10, §12, §15 | Blueprint only；route-out；evidence/replay/governance。 |
| SRC-009 | Spartoi-OMOC_SubP1-LITE+MVP_總控控制平面_v2.1.0-r2.md | CONTROL PLANE | T2 | FOUND | §5, §7, §11, §15, §16 | Route/Adjudication/TT/Conflict/Schema。 |
| SRC-010 | Spartoi-OMOC_SubP1-LITE+MVP Spine_Walking Skeleton Pack v0_v2.1.0-r1.md | WSP | T2 | FOUND | §7, §8, §13, §15 | WSP 只保留契約/接口，不寫 HOW。 |
| SRC-011 | Spartoi-OMOC_MVP Spine_ Walking Skeleton Pack v0_最小實作包_v2.2.0-r1.md | MVP SPINE MINIMUM | T2 | FOUND | §7, §8, §13, §15 | 最小可驗收骨架、evidence/gate interface、anti-regression。 |
| SRC-012 | Spartoi-OMOC_SubP1-LITE+MVP_Dev RUNBOOK + WI_ v2.1.0-r2.md | DEV RBWI | T2 | FOUND | §11, §13, §14, §15 | Dev in-scope/out-of-scope、shared evidence boundary、preflight inputs。 |
| SRC-013 | Spartoi-OMOC_SubP1-LITE+MVP_Ops RUNBOOK + WI_v2.1.0-r2.md | OPS RBWI | T2 | FOUND | §11, §13, §15, §16 | Ops boundary、prefight inputs、gate/evidence handling。 |
| SRC-014 | 參考方案合冊.md | MERGED REFERENCE COMPENDIUM | T3 | FOUND | §4, §8, §9, §10 | Pipeline↔CA 最小映射；四區路由；authority ordering。 |
| SRC-015 | 15CA實作前準備_方案.md | TASK-SPEC SUPPORT | T3 | FOUND | §4, §6, §7, §11, §12, §16 | 現況缺口盤點、fail-closed 結論、待補證清單。 |
| SRC-016 | 15CA實作前準備_方案筆記-1.md | TASK-SPEC SUPPORT | T3 | FOUND | §7, §8, §11, §13 | FULL=Factory baseline；2 主線 + 4 delivery streams。 |
| SRC-017 | 15CA實作前準備_方案筆記-2.md | TASK-SPEC SUPPORT | T3 | FOUND | §7, §8, §11, §12 | canonical 勘誤；OpenCode 隔離面；preflight 硬門檻。 |
| SRC-018 | 15CA實作前準備_方案筆記-3.md | TASK-SPEC SUPPORT | T3 | FOUND | §7, §8, §11, §12, §13, §16 | 21 worktrees、四區責任、八項開工前防線。 |
| SRC-019 | OMOC-任務交接報告_雙線預備PASS_03051120.md | SUPPORT | T3 | FOUND | §7, §12, §16 | 20260304 dual-lane preflight PASS 但 lint/artifact 仍 pending。 |
| SRC-020 | SPINE_COMPLETION_MASTER_EVIDENCE.md | SEALED BASELINE SUPPORT | T3 | FOUND | §7, §12, §15 | SPINE within acceptance scope PASS；checkpoint pack only pushed。 |
| SRC-021 | 20260308T052442Z_FULL_OMOC_COMPLETION_EVIDENCE.md | SEALED BASELINE SUPPORT | T3 | FOUND | §7, §12, §15 | WT-FULL PASS；minset already on origin/main；evidence not versioned。 |
| SRC-022 | 任務交接報告_SPINE_PASS_03070920.md | SUPPORT | T3 | FOUND | §7, §12 | SPINE remediation 已收口。 |
| SRC-023 | 任務交接報告_SPINE_PASS-2_03070920.md | SUPPORT | T3 | FOUND | §7, §12 | SPINE completion dossier 邊界：acceptance scope ≠ pushed scope。 |
| SRC-024 | 任務交接報告_FULL_PASS_03070820.md | SUPPORT | T3 | FOUND | §7 | FULL TT closure / minset history。 |
| SRC-025 | 任務交接報告_FULL_PASS-2_03081420.md | SUPPORT | T3 | FOUND | §7 | FULL docs-only publish / PR merge history。 |
| SRC-026 | LLM提示詞工程指南.md | LOCAL SUPPORT | T4 | FOUND | §3, §17 | 本地提示詞基礎；僅做 SUPPORT，不覆蓋 2026 官方最佳實務。 |
| SRC-027 | CMP-09 original split sources | NORMATIVE DETAIL | T2 | PARTIAL | §4, §8, §10, §16 | 合冊可讀；細粒度原始 split 檔未逐一獨立 mounted，細項命名仍 TT-bound。 |
| SRC-028 | Package C / D / E WI source docs | NORMATIVE DETAIL | T2 | MISSING | §5, §11, §16 | 被上層文件引用但未於本回合單獨掛載；不得腦補 HOW 細節。 |
| SRC-029 | Live target repository tree / current rulesets export | LIVE CONFIG | T0 | MISSING | §11, §12, §16 | 本回合無 live config export；新 multi-zone preflight 必須補抓。 |

### 4.2 本回合 fail-closed 缺口摘要

| gap_type | status | why_not_pass |
| --- | --- | --- |
| CMP-09 細粒度原始 split-source | PARTIAL | 合冊可讀，但部分細粒度 display_name / macro_module / repo pointers 未逐一獨立 mounted。 |
| Package C / D / E WI split-source | MISSING | 上位文件有引用，但 HOW 原文未單獨掛載；不得腦補。 |
| Live repository tree / rulesets export / plugin manifest / session store map | MISSING | 未取得 live config；不能聲稱 required checks canonicalization / merge_group readiness / plugin quarantine 已 PASS。 |

<a id="authority-stack"></a>
## 5. Authority Stack

| tier | authority | weight | application_rule |
| --- | --- | --- | --- |
| T0 | 本回合任務要求 | 最高 | 本檔內必須一口氣交付；來源缺失一律 fail-closed，不得腦補。 |
| T1 | 入口導航與工程指南 | 高 | 先入口後正文；正式主結構固定為 Lane-F → Lane-P → 4區 → 15子系統。 |
| T2 | SubP1 藍圖 / 控制平面 / WSP / MVP Spine / Dev RBWI / Ops RBWI / Packages B–E | 高 | 規範裁決、交付契約、TT 與 evidence 介面。 |
| T3 | 15CA 實作前準備方案與筆記 / 交接報告 / sealed baselines | 中 | 現況、缺口、可沿用基線與保守開工條件。 |
| T4 | 外部網站 / 官方文件 / 社群資料 | 低（SUPPORT-only） | 只可補證與測試追蹤，不得覆蓋本地 NORMATIVE。 |

### 5.1 衝突裁決

1. 本回合任務要求 > 入口導航與工程指南 > SubP1 藍圖 / 控制平面 / WSP / MVP Spine / Dev/Ops RBWI / Packages B–E > 任務方案與交接報告 > 外部 SUPPORT-only。
2. 若同層衝突，優先採納 **較明確 gate / 較機械可驗 / 較新版本且未違反上位法** 的條文。
3. 若仍無法裁決，必須標為 `TEMP_CLOSED → TEST_TRACK`，不得由模型補腦。

<a id="scope-lock-route-out"></a>
## 6. Scope Lock / Route-Out

| type | content |
| --- | --- |
| In-Scope | 以 Lane-F → Lane-P → 4區 → 15子系統 為正式拓樸，建立施工前準備 RUNBOOK + WI 合冊、worktree / zone / subsystem roster、TT register。 |
| In-Scope | 定義 Factory baseline、Product consumption、single adjudicator、evidence lineage、runpack / handoff / upload naming / minset / checkpoint / dossier 規則。 |
| In-Scope | 將 20260304 dual-lane preflight、SPINE sealed baseline、FULL sealed baseline 納入現況基線總覽。 |
| Out-of-Scope | 未掛載或未可定位之 live repo tree、現行 rulesets export、現行 plugin manifest、現行 session store；本檔只可設規則與 TT，不得宣告 PASS。 |
| Out-of-Scope | Package C / D / E WI 的未掛載 split-source HOW 細節；一律 Route-Out。 |
| Out-of-Scope | 把 FULL / SPINE 改寫成未來 canonical lane 名稱；它們只作 sealed baseline / governance asset / re-entry baseline。 |

### 6.1 Route-Out 清單

| topic | route_out_to | reason |
| --- | --- | --- |
| Package A 之外的 HOW / 命令 / SOP / click path | Dev RBWI / Ops RBWI / Package C WI | 本冊只保留施工前規則、邊界、runpack shape、驗收契約。 |
| Package B / D / E split-source WI 細節 | 對應 WI 原文 | 本回合未單獨掛載；不可升格。 |
| Live repo settings / current rulesets / workflow YAML drift | 新 multi-zone preflight export | 必須以 live export 證明。 |
| 外部 Web 的最佳實務 | SUPPORT-only Appendix + TT | 只可補證，不可當本地上位法。 |

<a id="sealed-baselines"></a>
## 7. 現況封存基線總覽（FULL / SPINE / dual-lane preflight）

| baseline | current_state | what_can_be_reused | what_cannot_be_claimed |
| --- | --- | --- | --- |
| FULL OMOC sealed baseline | PASS within scoped acceptance | 可作 Lane-F factory baseline 候選；minset 已在 origin/main；raw evidence 未進版控。 | 不得直接等同 Lane-F requalification PASS；仍需新批次 preflight。 |
| SPINE sealed baseline | PASS within scoped acceptance | 可作 shared baseline / control-plane / WSP re-entry baseline；checkpoint pack 已推送。 | 不得直接等同 Lane-P 開工綠燈；仍需 multi-zone preflight。 |
| 20260304 dual-lane preflight | PASS but incomplete audit closure | 可作歷史證據與缺口索引。 | lint detail pending、artifact scope 不全；不得當新階段最終綠燈。 |

### 7.1 結論

- **FULL**：可作 `Lane-F` 工廠基線候選；但還不是本回合已證的 `Lane-F requalification PASS`。
- **SPINE**：可作 shared baseline / checkpoint / re-entry baseline；但不能替代 `Lane-P` 新階段的 multi-zone preflight。
- **20260304 dual-lane preflight**：只能作歷史證據與缺口索引；不能作新階段綠燈。

<a id="canonical-topology"></a>
## 8. Lane-F → Lane-P → 4區 → 15子系統 正式拓樸

### 8.1 正式拓樸

```text
Lane-F (Factory)
  ├─ Factory-Governance
  └─ Shared-Core / Spine re-entry baseline
       ↓
Lane-P (Product)
  ├─ Zone-A  Pipeline-A
  ├─ Zone-B  Pipeline-B
  ├─ Zone-C  Pipeline-C
  └─ Zone-5  五子系統整合區 (integration-readonly)
       ↓
15 子系統（CA-WRC ... CA-GOVERN）
       ↓
single global adjudicator / one acceptance harness
```

### 8.2 正式命名與非正式資產

- **正式 canonical lane**：只有 `Lane-F` 與 `Lane-P`。
- **FULL / SPINE 的合法定位**：sealed baseline、governance asset、shared baseline、re-entry baseline。
- **禁止事項**：把 FULL / SPINE 直接寫成未來正式 lane；把 4區升格成與 Lane-F / Lane-P 同層。

### 8.3 4區 × 15子系統矩陣

| zone_id | zone_name | responsibility | 15CA_binding | artifact_family | parallel_rule |
| --- | --- | --- | --- | --- | --- |
| Zone-A | Pipeline-A | 教材 / 原語 / 蒸餾 / DSL | CA-WRC、CA-CORPUS、CA-DISTILL、CA-DSL | WRC / Corpus / SpecPack / Evidence Triplet | 可與 Zone-B / Zone-C 平行；不得修改 owner-class 與 shared-core。 |
| Zone-B | Pipeline-B | 方法 / 回測 / 績效 + 回饋 | CA-METHOD、CA-BACKTEST、CA-PERFORM | StrategyPack / FeedbackPack / Top-3 validation | 可與 Zone-A / Zone-C 平行；依賴 shared contracts。 |
| Zone-C | Pipeline-C | TA / 選股 / XS 轉譯 | CA-TA、CA-SELECT、CA-TRANSLATE | SignalCard / SelectResult / Translate outputs / TVE report | 可與 Zone-A / Zone-B 平行；交付前需與 Zone-5 對接。 |
| Zone-5 | 五子系統整合區 | 控制面 / 執行隔離 / HITL / 唯一執行端隔離 | CA-WATCH、CA-EXECUTE、CA-COLLAB、CA-UI、CA-GOVERN | Flag / Degrade / Snapshot / HITL / integration-readonly controls | 整合期只讀消費他區 handoff；不得直接回寫他區 root。 |

<a id="zone-governance"></a>
## 9. 4區治理與責任切分

### 9.1 區域治理原則

1. Zone-A / B / C 可平行，但只能在各自 root 內作業。
2. Zone-5 為 **integration-readonly**；只讀消費他區 handoff pointer，不得直接回寫他區 root。
3. Lane-F 僅提供 factory contracts、validators、checks、evidence interfaces；不得在 Lane-P 施工中被混改。
4. Single adjudicator rule：所有區域結果最後都要回到同一 global acceptance harness。

### 9.2 zone / owner / handoff 規格

| zone_id | owner_role | handoff_in | handoff_out | forbidden_cross_write |
| --- | --- | --- | --- | --- |
| Zone-A | Zone-A-owner | Factory validator + shared contracts | zone-a/handoff/<CA>/HANDOFF_PTR.json | 不得寫 Zone-B / Zone-C / Zone-5 / Lane-F |
| Zone-B | Zone-B-owner | Factory validator + shared contracts | zone-b/handoff/<CA>/HANDOFF_PTR.json | 不得寫 Zone-A / Zone-C / Zone-5 / Lane-F |
| Zone-C | Zone-C-owner | Factory validator + shared contracts | zone-c/handoff/<CA>/HANDOFF_PTR.json | 不得寫 Zone-A / Zone-B / Zone-5 / Lane-F |
| Zone-5 | Zone-5-owner | 各區 handoff pointers（只讀） | zone-5/handoff/<CA>/HANDOFF_PTR.json | 不得直接回寫 Zone-A / B / C roots |

<a id="subsystem-contracts"></a>
## 10. 15子系統區隔與交付契約

### 10.1 子系統原則

- 子系統主鍵固定為 `CA-*`；此 whitelist 已存在。
- 每個子系統都必須有 `MC4 + WP.Master + traceability + evidence batch`。
- `display_name` / `macro_module` / repo pointer 在未補 live mapping 前一律標 `TEMP_CLOSED → TEST_TRACK`。

### 10.2 roster

| idx | stable_id | zone_id | zone_name | display_name | macro_module | delivery_contract | status |
| --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | CA-WRC | Zone-A | Pipeline-A | TEMP_CLOSED → TEST_TRACK | TEMP_CLOSED → TEST_TRACK | MC4 + WP.Master + traceability + evidence batch | READY_AS_STRUCTURE / NOT_READY_AS_RELEASE |
| 2 | CA-CORPUS | Zone-A | Pipeline-A | TEMP_CLOSED → TEST_TRACK | TEMP_CLOSED → TEST_TRACK | MC4 + WP.Master + traceability + evidence batch | READY_AS_STRUCTURE / NOT_READY_AS_RELEASE |
| 3 | CA-DISTILL | Zone-A | Pipeline-A | TEMP_CLOSED → TEST_TRACK | TEMP_CLOSED → TEST_TRACK | MC4 + WP.Master + traceability + evidence batch | READY_AS_STRUCTURE / NOT_READY_AS_RELEASE |
| 4 | CA-DSL | Zone-A | Pipeline-A | TEMP_CLOSED → TEST_TRACK | TEMP_CLOSED → TEST_TRACK | MC4 + WP.Master + traceability + evidence batch | READY_AS_STRUCTURE / NOT_READY_AS_RELEASE |
| 5 | CA-METHOD | Zone-B | Pipeline-B | TEMP_CLOSED → TEST_TRACK | TEMP_CLOSED → TEST_TRACK | MC4 + WP.Master + traceability + evidence batch | READY_AS_STRUCTURE / NOT_READY_AS_RELEASE |
| 6 | CA-BACKTEST | Zone-B | Pipeline-B | TEMP_CLOSED → TEST_TRACK | TEMP_CLOSED → TEST_TRACK | MC4 + WP.Master + traceability + evidence batch | READY_AS_STRUCTURE / NOT_READY_AS_RELEASE |
| 7 | CA-TA | Zone-C | Pipeline-C | TEMP_CLOSED → TEST_TRACK | TEMP_CLOSED → TEST_TRACK | MC4 + WP.Master + traceability + evidence batch | READY_AS_STRUCTURE / NOT_READY_AS_RELEASE |
| 8 | CA-SELECT | Zone-C | Pipeline-C | TEMP_CLOSED → TEST_TRACK | TEMP_CLOSED → TEST_TRACK | MC4 + WP.Master + traceability + evidence batch | READY_AS_STRUCTURE / NOT_READY_AS_RELEASE |
| 9 | CA-TRANSLATE | Zone-C | Pipeline-C | TEMP_CLOSED → TEST_TRACK | TEMP_CLOSED → TEST_TRACK | MC4 + WP.Master + traceability + evidence batch | READY_AS_STRUCTURE / NOT_READY_AS_RELEASE |
| 10 | CA-WATCH | Zone-5 | 五子系統整合區 | TEMP_CLOSED → TEST_TRACK | TEMP_CLOSED → TEST_TRACK | MC4 + WP.Master + traceability + evidence batch | READY_AS_STRUCTURE / NOT_READY_AS_RELEASE |
| 11 | CA-EXECUTE | Zone-5 | 五子系統整合區 | TEMP_CLOSED → TEST_TRACK | TEMP_CLOSED → TEST_TRACK | MC4 + WP.Master + traceability + evidence batch | READY_AS_STRUCTURE / NOT_READY_AS_RELEASE |
| 12 | CA-PERFORM | Zone-B | Pipeline-B | TEMP_CLOSED → TEST_TRACK | TEMP_CLOSED → TEST_TRACK | MC4 + WP.Master + traceability + evidence batch | READY_AS_STRUCTURE / NOT_READY_AS_RELEASE |
| 13 | CA-COLLAB | Zone-5 | 五子系統整合區 | TEMP_CLOSED → TEST_TRACK | TEMP_CLOSED → TEST_TRACK | MC4 + WP.Master + traceability + evidence batch | READY_AS_STRUCTURE / NOT_READY_AS_RELEASE |
| 14 | CA-UI | Zone-5 | 五子系統整合區 | TEMP_CLOSED → TEST_TRACK | TEMP_CLOSED → TEST_TRACK | MC4 + WP.Master + traceability + evidence batch | READY_AS_STRUCTURE / NOT_READY_AS_RELEASE |
| 15 | CA-GOVERN | Zone-5 | 五子系統整合區 | TEMP_CLOSED → TEST_TRACK | TEMP_CLOSED → TEST_TRACK | MC4 + WP.Master + traceability + evidence batch | READY_AS_STRUCTURE / NOT_READY_AS_RELEASE |

<a id="runtime-isolation"></a>
## 11. opencode / Oh My OpenCode runtime isolation / window rules / worktree rules

### 11.1 核心隔離面

| surface | required_rule | why |
| --- | --- | --- |
| worktree root | 一窗一 root；不得共享寫入 root。 | 防止跨區 / 跨子系統誤寫。 |
| branch prefix | Lane-F、Zone、Subsystem 前綴分離。 | 避免 ownership 與 merge 審計混亂。 |
| allowed paths | 每 root 僅允許 own paths；integration-readonly 僅讀。 | 防止 SPINE 被 WP009 汙染、FULL 與產品修改踩踏。 |
| runpack.yaml | 一區一份；一子系統一份。 | 確保執行上下文單一。 |
| acceptance_report.json | 每區 / 每子系統隔離；全域另有 single adjudicator。 | 避免裁決混線。 |
| handoff pointer | 只傳 pointer，不搬 raw evidence。 | 維持 evidence lineage。 |
| plugin scope | project-level / global plugin 分離；禁止共享 global plugin。 | 防止自動載入污染。 |
| hook blast radius | hook 明確列出；HTTP hooks 僅白名單協定；未知 hook fail-closed。 | 防止 side effect 擴散。 |
| session store / history / cache | 每窗獨立路徑；不得續寫他窗 session。 | 防止跨窗 continuation 汙染。 |
| compaction / continuation | 續寫前要清空非本窗上下文；保留 provenance。 | 防止 old prompt 漂移。 |
| runtime fallback | OpenCode 為主；Oh-My 僅 slotting / support；unknown keys quarantine。 | 防止 fallback 偷渡成上位法。 |

### 11.2 worktree allocation

| worktree_id | lane | zone_or_role | root | branch_prefix | allowed_paths | blocked_paths | runpack | note |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| wt-lane-f-gov | Lane-F | Factory-Governance | lf/ | main-factory 或 feat/factory-* | .github/**;.devcontainer/**;scripts/verify/**;docs/packages/A-D/** | subsystems/**;lane-p/** | lane-f.runpack.yaml | Factory required checks / rulesets / evidencer only |
| wt-lane-f-spine | Lane-F | Shared-Core | spine/ | main-spine 或 feat/spine-* | spine/**;docs/spine/**;shared schemas/adapters/** | .github/**;subsystems/** | spine-core.runpack.yaml | Shared core / WSP / control-plane adapters |
| wt-zone-a | Lane-P | Zone-A | zone-a/ | lp/zone-a/* | zone-a/**;docs/zone-a/**;evidence/zone-a/** | .github/**;spine/**;zone-b/**;zone-c/**;zone-5/** | zone-a.runpack.yaml | Pipeline-A only |
| wt-zone-b | Lane-P | Zone-B | zone-b/ | lp/zone-b/* | zone-b/**;docs/zone-b/**;evidence/zone-b/** | .github/**;spine/**;zone-a/**;zone-c/**;zone-5/** | zone-b.runpack.yaml | Pipeline-B only |
| wt-zone-c | Lane-P | Zone-C | zone-c/ | lp/zone-c/* | zone-c/**;docs/zone-c/**;evidence/zone-c/** | .github/**;spine/**;zone-a/**;zone-b/**;zone-5/** | zone-c.runpack.yaml | Pipeline-C only |
| wt-zone-5 | Lane-P | Zone-5 | zone-5/ | lp/zone-5/* | zone-5/**;docs/zone-5/**;evidence/zone-5/**;integration-readonly/** | .github/**;spine/**;zone-a/**;zone-b/**;zone-c/** | zone-5.runpack.yaml | 五子系統整合與 integration-readonly |
| wt-ss-wrc | Lane-P | Zone-A | subsystems/ca-wrc/ | lp/ca-wrc/* | subsystems/ca-wrc/**;docs/subsystems/ca-wrc/**;evidence/ca-wrc/** | .github/**;spine/**;subsystems/other/** | ca-wrc.runpack.yaml | CA-WRC 專屬子系統 root；單窗單任務；acceptance_report 隔離 |
| wt-ss-corpus | Lane-P | Zone-A | subsystems/ca-corpus/ | lp/ca-corpus/* | subsystems/ca-corpus/**;docs/subsystems/ca-corpus/**;evidence/ca-corpus/** | .github/**;spine/**;subsystems/other/** | ca-corpus.runpack.yaml | CA-CORPUS 專屬子系統 root；單窗單任務；acceptance_report 隔離 |
| wt-ss-distill | Lane-P | Zone-A | subsystems/ca-distill/ | lp/ca-distill/* | subsystems/ca-distill/**;docs/subsystems/ca-distill/**;evidence/ca-distill/** | .github/**;spine/**;subsystems/other/** | ca-distill.runpack.yaml | CA-DISTILL 專屬子系統 root；單窗單任務；acceptance_report 隔離 |
| wt-ss-dsl | Lane-P | Zone-A | subsystems/ca-dsl/ | lp/ca-dsl/* | subsystems/ca-dsl/**;docs/subsystems/ca-dsl/**;evidence/ca-dsl/** | .github/**;spine/**;subsystems/other/** | ca-dsl.runpack.yaml | CA-DSL 專屬子系統 root；單窗單任務；acceptance_report 隔離 |
| wt-ss-method | Lane-P | Zone-B | subsystems/ca-method/ | lp/ca-method/* | subsystems/ca-method/**;docs/subsystems/ca-method/**;evidence/ca-method/** | .github/**;spine/**;subsystems/other/** | ca-method.runpack.yaml | CA-METHOD 專屬子系統 root；單窗單任務；acceptance_report 隔離 |
| wt-ss-backtest | Lane-P | Zone-B | subsystems/ca-backtest/ | lp/ca-backtest/* | subsystems/ca-backtest/**;docs/subsystems/ca-backtest/**;evidence/ca-backtest/** | .github/**;spine/**;subsystems/other/** | ca-backtest.runpack.yaml | CA-BACKTEST 專屬子系統 root；單窗單任務；acceptance_report 隔離 |
| wt-ss-ta | Lane-P | Zone-C | subsystems/ca-ta/ | lp/ca-ta/* | subsystems/ca-ta/**;docs/subsystems/ca-ta/**;evidence/ca-ta/** | .github/**;spine/**;subsystems/other/** | ca-ta.runpack.yaml | CA-TA 專屬子系統 root；單窗單任務；acceptance_report 隔離 |
| wt-ss-select | Lane-P | Zone-C | subsystems/ca-select/ | lp/ca-select/* | subsystems/ca-select/**;docs/subsystems/ca-select/**;evidence/ca-select/** | .github/**;spine/**;subsystems/other/** | ca-select.runpack.yaml | CA-SELECT 專屬子系統 root；單窗單任務；acceptance_report 隔離 |
| wt-ss-translate | Lane-P | Zone-C | subsystems/ca-translate/ | lp/ca-translate/* | subsystems/ca-translate/**;docs/subsystems/ca-translate/**;evidence/ca-translate/** | .github/**;spine/**;subsystems/other/** | ca-translate.runpack.yaml | CA-TRANSLATE 專屬子系統 root；單窗單任務；acceptance_report 隔離 |
| wt-ss-watch | Lane-P | Zone-5 | subsystems/ca-watch/ | lp/ca-watch/* | subsystems/ca-watch/**;docs/subsystems/ca-watch/**;evidence/ca-watch/** | .github/**;spine/**;subsystems/other/** | ca-watch.runpack.yaml | CA-WATCH 專屬子系統 root；單窗單任務；acceptance_report 隔離 |
| wt-ss-execute | Lane-P | Zone-5 | subsystems/ca-execute/ | lp/ca-execute/* | subsystems/ca-execute/**;docs/subsystems/ca-execute/**;evidence/ca-execute/** | .github/**;spine/**;subsystems/other/** | ca-execute.runpack.yaml | CA-EXECUTE 專屬子系統 root；單窗單任務；acceptance_report 隔離 |
| wt-ss-perform | Lane-P | Zone-B | subsystems/ca-perform/ | lp/ca-perform/* | subsystems/ca-perform/**;docs/subsystems/ca-perform/**;evidence/ca-perform/** | .github/**;spine/**;subsystems/other/** | ca-perform.runpack.yaml | CA-PERFORM 專屬子系統 root；單窗單任務；acceptance_report 隔離 |
| wt-ss-collab | Lane-P | Zone-5 | subsystems/ca-collab/ | lp/ca-collab/* | subsystems/ca-collab/**;docs/subsystems/ca-collab/**;evidence/ca-collab/** | .github/**;spine/**;subsystems/other/** | ca-collab.runpack.yaml | CA-COLLAB 專屬子系統 root；單窗單任務；acceptance_report 隔離 |
| wt-ss-ui | Lane-P | Zone-5 | subsystems/ca-ui/ | lp/ca-ui/* | subsystems/ca-ui/**;docs/subsystems/ca-ui/**;evidence/ca-ui/** | .github/**;spine/**;subsystems/other/** | ca-ui.runpack.yaml | CA-UI 專屬子系統 root；單窗單任務；acceptance_report 隔離 |
| wt-ss-govern | Lane-P | Zone-5 | subsystems/ca-govern/ | lp/ca-govern/* | subsystems/ca-govern/**;docs/subsystems/ca-govern/**;evidence/ca-govern/** | .github/**;spine/**;subsystems/other/** | ca-govern.runpack.yaml | CA-GOVERN 專屬子系統 root；單窗單任務；acceptance_report 隔離 |

### 11.3 硬規則

1. **一個 opencode 視窗只能做一件事**。
2. **一個 acceptance_report.json 只服務一個 zone 或一個 subsystem 或一個 global adjudicator**。
3. **FULL / SPINE 只可 read-only 消費或作 baseline 對照；不得在 Lane-P 視窗中順手熱修。**
4. **Zone-5 integration-readonly**：只讀手冊不是浪漫，是保命繩。

<a id="preflight-defenses"></a>
## 12. Preflight Defenses / 全域風險防線

| defense_id | defense | required_output | fail_condition |
| --- | --- | --- | --- |
| PD-01 | Inputs Manifest & Authority Lock | inputs_manifest.lock.json / authority_stack.lock.json | 來源未齊或 authority 未鎖定。 |
| PD-02 | Scope Lock & Route-Out | scope_lock.md / route_out_register.tsv | HOW 混入本冊或外部資料升格。 |
| PD-03 | Baseline Freeze | baseline_snapshot.json / rollback_pointer.json | sealed baseline 被改寫。 |
| PD-04 | Required Checks Canonicalization | checks_observed_pr.json / checks_observed_merge_group.json / checks_diff.json | PR 與 merge_group 名稱不一致。 |
| PD-05 | Always-Report / Skip Hazard Scan | preflight_workflows_scan.json | required checks 因 skip 留在 pending。 |
| PD-06 | Tooling Isolation Audit | plugin_scope_manifest.json / session_store_map.tsv | project/global plugin、session、cache 混線。 |
| PD-07 | Worktree / Path Whitelist Audit | worktree_registry.tsv / anti_scope_scan.json | 任一視窗可寫他區 root。 |
| PD-08 | Backup / Rollback / Recovery | snapshot_pack / rollback_pack / recovery_note | 無回退點。 |
| PD-09 | Single Adjudicator & Evidence Lineage | acceptance_slot_map.tsv / evidence_lineage.tsv | 多裁決器互相覆蓋或 batch lineage 斷裂。 |
| PD-10 | Zone / Subsystem Roster Lock | ZONE_SUBSYSTEM_ROSTER.tsv / owner_map.tsv | 15CA roster 與 zone mapping 未鎖定。 |

### 12.1 required checks / merge queue / supply-chain hygiene

- required checks 必須以 **exact-name** canonicalization 管理。
- merge queue 若啟用，workflow 必須能處理 `merge_group`。
- always-report 必須避免 path / branch / commit-message skip 造成 pending。
- third-party actions 與 plugin 版本必須 pin；token 權限採 least privilege。
- 任何 driftable fact 若沒有 live export，一律保留 TT。

<a id="runbook"></a>
## 13. 施工 RUNBOOK（完整）

### Stage-RB-00｜入口檢索與 authority lock

**核心動作**：由入口合冊開始，先確認 FQ_DOC_ID、Authority Stack、Package 角色、Scope Lock。禁止直接從參考方案或單篇交接報告跳進結論。

**必備輸出**：輸出 inputs_manifest.lock.json；authority_stack.lock.json；route_out_register.seed.tsv。

**Fail-Closed 條件**：缺 FQ_DOC_ID、缺 locator、Package A 被誤升格為規範。

### Stage-RB-01｜現況基線凍結

**核心動作**：凍結 FULL / SPINE sealed baseline 指標，只允許 read-only consumption；建立 baseline freeze 記錄與 rollback pointer。

**必備輸出**：baseline_freeze.md；baseline_snapshot.json；rollback_pointer.json。

**Fail-Closed 條件**：任何人改寫 sealed batch；把 evidence 直接推進 git。

### Stage-RB-02｜Lane-F requalification

**核心動作**：重新驗證 ENV-READY、REQCHECK-CANONICAL、EVIDENCE-MINSET、required checks canonicalization、merge_group readiness、always-report。

**必備輸出**：lane-f acceptance_report.json；checks_manifest.json；triplet；bundle；checks_diff.json。

**Fail-Closed 條件**：任一 required check 漂移；merge_group 不觸發；lint pending。

### Stage-RB-03｜工具鏈隔離 preflight

**核心動作**：對 OpenCode / Oh My OpenCode 進行 project/global plugin、session store、history/cache、compaction、hook、fallback、unknown keys 檢查。

**必備輸出**：tooling_quarantine_report.json；plugin_scope_manifest.json；session_store_map.tsv。

**Fail-Closed 條件**：共用 global plugin；未知鍵被默默忽略；跨窗 continuation 汙染。

### Stage-RB-04｜4區啟動前準備

**核心動作**：建立 Zone-A/B/C/5 owner allocation、worktree roots、allowed paths、runpack.yaml、handoff 命名與 upload 命名。

**必備輸出**：zone_bootstrap_manifest.json；worktree_registry.tsv；handoff_naming_policy.md。

**Fail-Closed 條件**：zone root 不唯一；allowed paths 未上鎖；一窗多任務。

### Stage-RB-05｜15子系統 roster 鎖定

**核心動作**：依 15CA whitelist 建立 subsystem roster；每個子系統都要有 MC4 + WP.Master contract 與 evidence 批次命名。

**必備輸出**：ZONE_SUBSYSTEM_ROSTER.tsv；subsystem_contracts/index.md；wpmaster_route_contract.tsv。

**Fail-Closed 條件**：display_name/macro_module 缺回指仍被當成 PASS。

### Stage-RB-06｜multi-zone preflight

**核心動作**：對 4區 × 15子系統執行 preflight：path whitelist、branch prefix、acceptance_report 隔離、handoff pointers、upload naming、single adjudicator。

**必備輸出**：multi_zone_preflight_report.json；anti_scope_scan.json；acceptance_slot_map.tsv。

**Fail-Closed 條件**：任何區共用同一 acceptance_report；跨區 root 可寫。

### Stage-RB-07｜Lane-P 分區施工

**核心動作**：各區以 subsystem-local runpack 施工；整合區只讀消費各區 handoff；不得越權回寫。

**必備輸出**：per-zone execution logs；subsystem evidence batch；handoff_ptr.json。

**Fail-Closed 條件**：Zone-5 直接改寫 Zone-A/B/C；FULL / SPINE 與產品修改踩踏。

### Stage-RB-08｜全域收斂與裁決

**核心動作**：所有子系統先 subsystem-local adjudication，再 lane-level convergence，最後 single global adjudicator。

**必備輸出**：15× acceptance_report.json；lane-p convergence dossier；global acceptance_report.json。

**Fail-Closed 條件**：非單一裁決器；缺 minset / checkpoint / dossier；15/15 未全 PASS。

<a id="work-instructions"></a>
## 14. 施工 WI（完整）

| wi_id | topic | must_rule | required_artifact |
| --- | --- | --- | --- |
| WI-01 | 文件與檢索 | 先入口合冊，後 FQ_DOC_ID，最後正文；無 locator 不立規範。 | 檢索卡、引用卡、補 anchor TT。 |
| WI-02 | 命名與主鍵 | Lane-F / Lane-P / Zone-A/B/C/5 / CA-* 為固定名；PKG-E 以 doc_id 為主鍵，不用 stable_id。 | naming_registry.tsv。 |
| WI-03 | 視窗規則 | 一個 OpenCode 視窗只做一件事；每窗唯一 root、唯一 branch、唯一 runpack、唯一 acceptance_report。 | window_rule_card.md。 |
| WI-04 | worktree 規則 | 任何 root 只能寫入 own allowed paths；integration-readonly 僅讀。 | allowed_paths.json / blocked_paths.json。 |
| WI-05 | branch prefix / ownership | Lane-F 與 Lane-P 不共用 prefix；Zone / subsystem prefix 不可混用。 | branch_prefix_policy.md。 |
| WI-06 | plugin / hook / session 隔離 | 禁止共享 global plugin；所有 plugin / hook / session store / cache 顯式列出。 | plugin_scope_manifest.json / hook_quarantine.tsv。 |
| WI-07 | evidence / upload 規則 | 每區 / 每子系統一份 runpack、一份 acceptance_report、一份 handoff pointer；upload naming 唯一且可回放。 | upload_naming.tsv / handoff_ptr.json。 |
| WI-08 | docs-only 版控邊界 | raw evidence 不進 git；只有 minset / checkpoint / pointer docs 允許版控。 | versioning_boundary.md。 |
| WI-09 | fail-closed 處理 | 任何 MISSING / UNVERIFIED / conflict / unknown key / repo_existence 未證 → TEMP_CLOSED → TEST_TRACK。 | tt_register.tsv。 |
| WI-10 | 最終驗收 | 只有 global acceptance_report.json 可給 PASS/TEMP/FAIL；其他皆為前置或局部裁決。 | global_adjudication_rule.md。 |

<a id="acceptance-evidence-handoff"></a>
## 15. Acceptance / Adjudication / Evidence / Handoff / Upload / Minset / Checkpoint / Dossier 規則

| rule_area | rule |
| --- | --- |
| 單一裁決器 | 所有 PASS / TEMP / FAIL 只認 global acceptance_report.json；子系統與分區報告只作前置證據。 |
| evidence lineage | batch 命名遵循 TS；每個 batch 具 triplet / bundle / index / verdict / locator proof。 |
| handoff | 每區 / 每子系統交接必附 HANDOFF_PTR.json；只允許 pointer，不搬 raw evidence 進 git。 |
| upload | upload 檔名唯一、可追溯到 zone / subsystem / ts / batch；不得共用單一 upload 名稱覆蓋。 |
| minset | 允許版控的最小集合僅限 docs / pointers / manifest / checksum；raw evidence 本地 sealed 保存。 |
| checkpoint | checkpoint pack 只保存 pointer files、checksums、lineage；不搬運 raw evidence。 |
| dossier | 全域 dossier 必須列出 baseline、current batch、TT register、revoke conditions、owner map。 |

### 15.1 明確禁止

- 不得把 raw evidence 推進 git。
- 不得把 subsystem-local PASS 當成 global PASS。
- 不得把 pointer docs 當成 raw evidence 本體。
- 不得用未掛載 live repo tree / rulesets export 來宣稱 `repo_existence=PASS` 或 `merge_group=PASS`。

<a id="cr-open-tt"></a>
## 16. CR_OPEN closure / TT register / Test Tracking List

### 16.1 CR_OPEN 處理原則

- 本文不保留開放型 `CR_OPEN`。
- 所有缺口一律改寫為 `TEMP_CLOSED → TEST_TRACK`。
- 每一項 TT 都必須明示 verify_method、revoke_condition、owner_suggested、source_ptr。

### 16.2 TT Register

| tt_id | severity | title | why_open | verify_method | revoke_condition | owner_suggested | source_ptr |
| --- | --- | --- | --- | --- | --- | --- | --- |
| TT-LANEF-REQUAL-001 | BLOCKER | Lane-F requalification 未執行 | 未完成 Lane-F requalification / ENV-READY / REQCHECK-CANONICAL / EVIDENCE-MINSET 新批次證據。 | 重新執行 lane-f preflight，產出 acceptance_report.json、checks_manifest、triplet、bundle、checks_diff。 | 任一 required check exact-name 漂移；任一 Lane-F gate FAIL；新批次無 single adjudicator。 | Factory owner | SRC-002,SRC-006,SRC-015 |
| TT-DUAL-20260304-LINT-001 | HIGH | 20260304 dual-lane preflight 不得視為新綠燈 | 歷史 preflight 雖 PASS，但 lint detail pending，artifacts 未完整納入。 | 重新抓取 upload/evidence_upload、snapshots、lint outputs，並以新 TS 再裁決。 | UPLOAD_TXT_LINT 或 SHA_PINNING_LINT 再度 pending；artifact 清單仍缺 upload/snapshot。 | Governance + Factory owner | SRC-019 |
| TT-PKGE-REPO-EXIST-001 | BLOCKER | Package E repo_existence 未證明 | Package E release_guard 明示 repo_existence != PASS 時 overall_verdict = FAIL_CLOSED。 | 為 15× 子系統建立可驗證 manifest + validator receipt + repo existence export。 | 任一子系統 repo / manifest / validator 缺失。 | Lane-P owner | SRC-007 |
| TT-PKGE-ID-001 | MEDIUM | Package E stable_id 未定義 | PKG-E stable_id = UNVERIFIED；不得作 primary key。 | 維持 doc_id 作唯一主鍵，等待上位 SSOT 定義 stable_id。 | 任何流程仍以 PKG-E stable_id 當唯一主鍵。 | Governance owner | SRC-007 |
| TT-15CA-META-001 | HIGH | 15 子系統 display_name / macro_module 未實證 | 15CA whitelist 已有，但 display_name / macro_module / repo pointers 仍缺 live mapping。 | 建立 15CA canonical roster，逐列補 display_name、macro_module、repo pointer、owner。 | 任一名稱映射只來自猜測或未回指來源。 | Lane-P owner | SRC-007,SRC-027 |
| TT-CHECK-NAME-001 | BLOCKER | required checks exact-name table 未全證 | Factory Pack 需要 PR/merge_group 同名 required checks；本回合缺 live export。 | 導出 rulesets、required check names、checks_observed_pr.json、checks_observed_merge_group.json、checks_diff.json。 | PR 與 merge_group context name 不一致；ruleset 未納入 canonical 名稱。 | Factory owner | SRC-006,SRC-029 |
| TT-MQ-PROBE-001 | BLOCKER | merge_group readiness 未證 | merge queue/merge_group 只在 live repo / workflow 實測後可宣告 PASS。 | 跑 MQ probe；保留 merge_group payload、workflow receipt、status contexts。 | workflow 未監聽 merge_group；MQ 仍 pending。 | Factory owner | SRC-002,SRC-006,SRC-029 |
| TT-SKIP-HAZARD-001 | HIGH | always-report / skip hazard 未證 | 缺少 preflight_workflows_scan.json 與 skip hazard 掃描證據。 | 產出 always-report scan 與 skip hazard 掃描，核對 path/branch/message skip。 | required checks 受 skip 規則影響變成 pending。 | Factory owner | SRC-002,SRC-006 |
| TT-OPENCODE-PLUGIN-SCOPE-001 | BLOCKER | OpenCode project/global plugin 汙染面未封住 | project-level 與 global plugins 均可在啟動時載入；快取與版本漂移可交叉污染。 | 每個 worktree 使用獨立 plugin manifest；禁止共享 global plugin；快取清單與版本釘住。 | 檢測到 global plugin、共享 cache、版本不一致。 | Tooling owner | SRC-017 |
| TT-OPENCODE-SESSION-STORE-001 | BLOCKER | session/history/cache bleed 未封住 | 多視窗不同 worktree 仍可能因 session store / history / cache / compaction continuation 互相污染。 | 每窗單任務；獨立 session id、history path、cache path；續寫前清空 continuation context。 | 跨窗繼承 prompt、history、cache 或 compaction prompt。 | Tooling owner | SRC-017 |
| TT-OPENCODE-UNKNOWN-KEYS-001 | HIGH | config drift / unknown keys 未阻斷 | OpenCode/Oh-My config、plugin、hook 可能隨版本變動；未知鍵不得默默放行。 | 對 config 做 schema lint + quarantine；未知鍵直接 fail-closed。 | unknown keys 被忽略後仍進入 run。 | Tooling owner | SRC-002,SRC-017 |
| TT-WORKTREE-ROOT-001 | BLOCKER | 21-root worktree plan 尚未實例化 | 目前只有結構設計，沒有 live tree / path whitelist export。 | 建立 21 個 worktree 分配表與 allowed_paths / blocked_paths 實際配置。 | 任一視窗可寫入他人 root；owner-class 路徑未隔離。 | Dev owner | SRC-018,SRC-029 |
| TT-HANDOFF-PTR-001 | HIGH | handoff pointer / upload naming 未實例化 | 各區 / 子系統 handoff pointer、upload naming、單一 acceptance_report 隔離尚未落盤。 | 產出 HANDOFF_PTR.json、upload naming 規則、runpack.yaml、acceptance_report.json 實檔。 | handoff 指向不唯一；多區共用同一 acceptance_report。 | Execution owner | SRC-005 |
| TT-RUN-CHECK-URL-001 | MEDIUM | live run/check URLs 未導出 | 外部稽核需要 run/check URLs；本回合無 live export。 | 匯出 workflow run URLs、PR URLs、merge queue receipt。 | 後續審計要求 URL 時無法回放。 | Ops owner | SRC-019,SRC-029 |
| TT-BACKUP-RECOVERY-001 | HIGH | backup / rollback / recovery pack 缺失 | 尚未看到 multi-zone 前的 snapshot pack 與 rollback pack。 | 建立 baseline freeze、snapshot、rollback、recovery 演練包。 | 新施工污染 sealed baseline；無回退點。 | Ops owner | SRC-018 |
| TT-OWNER-ALLOC-001 | MEDIUM | 具名 owner allocation 缺失 | 可定義 owner_role，但未取得具名人員名單。 | 在不改本文拓樸前提下，另補人員 roster。 | owner 缺位導致 handoff / revoke 無責任人。 | Program owner | SRC-018 |
| TT-WI-SOURCE-001 | MEDIUM | Package C / D / E WI split-source 缺失 | 被上位文件引用，但本回合未單獨掛載；HOW 細節不可升格。 | 補掛載 WI 原文或保留 route-out。 | 後續有人用腦補 HOW 覆蓋 SSOT。 | Governance owner | SRC-028 |

<a id="external-support-only-evidence-appendix"></a>
## 17. External SUPPORT-only Evidence Appendix

### 17.1 使用規則

- 外部資料只可補強工程做法、風險辨識、工具漂移點。
- 外部資料不得覆蓋本地 NORMATIVE。
- 若外部資料牽動本地規則，必須以 TT 方式納入。

| ext_id | source_family | topic | accessed_at | status | use_boundary | applied_to |
| --- | --- | --- | --- | --- | --- | --- |
| EXT-001 | OpenAI | Structured Outputs announcement / docs | 2026-03-08 | SUPPORT-only | 用於補強 structured output / schema adherence / refusal channel；不得覆蓋本地 SSOT。 | 納入 §11 preflight、§15 evidence contract 的 SUPPORT-only 補證。 |
| EXT-002 | OpenAI | Prompt optimizer cookbook | 2026-03-08 | SUPPORT-only | 用於補強 eval-driven prompting：先定 baseline，再做最小改動優化。 | 納入 §12 anti-hallucination lint 與 §17 appendix。 |
| EXT-003 | OpenAI | Testing Agent Skills Systematically with Evals | 2026-03-08 | SUPPORT-only | 補強 must-pass categories、明確 success criteria、systematic eval。 | 納入 §12 preflight defenses。 |
| EXT-004 | OpenCode | plugins docs | 2026-03-08 | SUPPORT-only | project-level / global plugin 均可自動載入；存在 cache 與 scope 汙染面。 | 納入 TT-OPENCODE-PLUGIN-SCOPE-001。 |
| EXT-005 | OpenCode | config / permissions / compaction docs | 2026-03-08 | SUPPORT-only | permissions allow/ask/deny、compaction continuation、watcher ignore。 | 納入 TT-OPENCODE-SESSION-STORE-001 / UNKNOWN-KEYS。 |
| EXT-006 | Oh My OpenCode / OpenAgent | release notes / repo rename history | 2026-03-08 | SUPPORT-only | 品牌與版本快速變動；parallel sessions 與 hooks 汙染面需顯式隔離。 | 納入 §11 runtime isolation。 |
| EXT-007 | GitHub Docs | Managing a merge queue / merge_group | 2026-03-08 | SUPPORT-only | merge queue 需 merge_group 事件；否則 required checks 可能不會觸發。 | 納入 TT-MQ-PROBE-001。 |
| EXT-008 | GitHub Docs | Skipped workflows keep required checks Pending | 2026-03-08 | SUPPORT-only | path/branch/commit-message skip 會使 required checks pending。 | 納入 TT-SKIP-HAZARD-001。 |
| EXT-009 | GitHub Docs | Rulesets available rules | 2026-03-08 | SUPPORT-only | rulesets 可要求 status checks、deployments、path 限制等。 | 納入 §12 required checks canonicalization。 |
| EXT-010 | GitHub Docs | Secure use / pin third-party actions to full commit SHA | 2026-03-08 | SUPPORT-only | 供應鏈 hygiene、least privilege、action pinning。 | 納入 §12 version pinning / supply-chain hygiene。 |

<a id="final-self-audit-checklist"></a>
## 18. Final Self-Audit Checklist

- [x] 已採用正式 canonical 結構：Lane-F → Lane-P → 4區 → 15子系統。
- [x] 未把 FULL / SPINE 寫成未來 canonical lane，只保留 sealed baseline / governance asset / re-entry baseline 定位。
- [x] 已將 20260304 dual-lane preflight 定位為歷史基線，未誤寫成新綠燈。
- [x] 已保留 Package A 為 DERIVED INDEX，未越權升格。
- [x] 已保留 Package C / D / E 未掛載 WI split-source 為 Route-Out 或 TT，未腦補 HOW。
- [x] 已把 Package E repo_existence、PKG-E stable_id、15CA display_name / macro_module 缺口列為 TT。
- [x] 已將 OpenCode / Oh My OpenCode plugin / session / cache / compaction / hook / unknown keys 汙染面寫入正式隔離規則。
- [x] 已建立 4區 / 15子系統 / 21 worktree allocation 表。
- [x] 已定義 single adjudicator、evidence lineage、docs-only versioning 邊界。
- [x] 已將所有不確定事項轉入 TEMP_CLOSED → TEST_TRACK。

<a id="delivery-manifest-download-section"></a>
## 19. Delivery Manifest / Download Section

本次交付包含：

- 主檔：`Spartoi-OMOC_SubP1-LITE+MVP_15CA實作前準備_RBWI合冊.md`
- ZIP：`Spartoi-OMOC_SubP1-LITE+MVP_15CA實作前準備_RBWI合冊.zip`
- 附件：`MANIFEST.json`、`SOURCE_COVERAGE_MATRIX.tsv`、`ZONE_SUBSYSTEM_ROSTER.tsv`、`WORKTREE_ALLOCATION.tsv`、`TEST_TRACKING_LIST.tsv`、`EXTERNAL_SUPPORT_EVIDENCE.md`、`CHANGELOG_AND_DECISIONS.md`

### 19.1 交付結論

**本回合已完成文檔級交付與打包；未完成開工綠燈。**

### 19.2 使用方式

1. 先讀本檔 §4、§5、§7、§12、§16。
2. 依 `WORKTREE_ALLOCATION.tsv` 與 `ZONE_SUBSYSTEM_ROSTER.tsv` 建立實體 roots。
3. 補齊 TT-BLOCKER 類缺口後，重跑 Lane-F requalification 與 multi-zone preflight。
4. 僅當 global acceptance_report.json PASS，才可把 `TEMP_CLOSED → TEST_TRACK` 改寫為開工許可。
