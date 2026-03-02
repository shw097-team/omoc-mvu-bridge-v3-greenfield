# OMOC實作驗收_升級方案（v2026.02.28-r1）

<a id="OMOC-ACCUP-V20260228R1-SEC0-COVER"></a>
[ANCHOR:OMOC-ACCUP-V20260228R1-SEC0-COVER]

**外部名稱（External Name）**：OMOC實作驗收_升級方案  
**內部簡稱（Internal Shortname）**：OMOC-ACCUP  
**doc_id**：OMOC-ACCUP  
**version**：v2026.02.28-r1  
**generated_at (UTC)**：2026-02-28T06:04:11Z  
**status**：DRAFT-REPLACEABLE（Fail-Closed；待實測證據才能宣告 Release PASS）

**Supersedes（本文件工程性取代）**：
- `OMOC+指揮官_升級方案.md`
- `OMOC+指揮官_升級方案筆記-1.md`
- `OMOC+指揮官_升級方案筆記-2.md`
- `OMOC+指揮官_升級方案筆記-3.md`
- `OMOC+指揮官_升級方案筆記-4.md`
- `OMOC+指揮官_升級方案筆記-5.md`

**一句話目的**：把「驗收」從敘述/主觀判斷，升級成可重跑、可機械裁決、Fail-Closed 的工廠線；並把外部指揮官與 OpenCode/OMO 的互動鎖進雙向強制鏈。

---

<a id="OMOC-ACCUP-V20260228R1-SEC1-TOC"></a>
[ANCHOR:OMOC-ACCUP-V20260228R1-SEC1-TOC]

## TOC（本文件內可點擊）

- [封面卡](#OMOC-ACCUP-V20260228R1-SEC0-COVER)
- [TOC](#OMOC-ACCUP-V20260228R1-SEC1-TOC)
- [導讀與強制檢索指引](#OMOC-ACCUP-V20260228R1-SEC2-READER-GUIDE)
- [Quick Index（關鍵字→錨點）](#OMOC-ACCUP-V20260228R1-SEC2-QUICK-INDEX)
- [Authority Stack](#OMOC-ACCUP-V20260228R1-SEC3-AUTHORITY)
- [Scope Lock & Route-Out](#OMOC-ACCUP-V20260228R1-SEC3-SCOPELOCK)
- [Tutorial：2 分鐘快速上手](#OMOC-ACCUP-V20260228R1-TUT-QUICKSTART)
- [How-To：寫 Run Card（指揮官指令模板）](#OMOC-ACCUP-V20260228R1-HT-RUNCARD)
- [How-To：落地強制鏈（Router/Skills/Validator）](#OMOC-ACCUP-V20260228R1-HT-ENFORCE-CHAIN)
- [How-To：Local Acceptance（可重跑＋防卡住）](#OMOC-ACCUP-V20260228R1-HT-LOCAL-ACCEPTANCE)
- [How-To：CI Required Checks（PR + merge_group）](#OMOC-ACCUP-V20260228R1-HT-CI-REQUIRED-CHECKS)
- [Reference：Requirement Registry（可機械抽取）](#OMOC-ACCUP-V20260228R1-REF-REQ-REGISTRY)
- [Reference：Verdict & Status（Fail-Closed 語義）](#OMOC-ACCUP-V20260228R1-REF-VERDICT-STATUS)
- [Reference：Evidence Artifacts（Root Artifacts / Minset）](#OMOC-ACCUP-V20260228R1-REF-EVIDENCE-ARTIFACTS)
- [Reference：Repo Skeleton & Scripts（最小集合）](#OMOC-ACCUP-V20260228R1-REF-REPO-SKELETON)
- [Reference：Degrade Matrix（降級矩陣）](#OMOC-ACCUP-V20260228R1-REF-DEGRADE-MATRIX)
- [Reference：TT Schema（Test Track / TEMP_CLOSED）](#OMOC-ACCUP-V20260228R1-REF-TT-SCHEMA)
- [Reference：Templates（可複用片段）](#OMOC-ACCUP-V20260228R1-REF-TEMPLATES)
- [Explanation：RCA（為什麼一直飄）](#OMOC-ACCUP-V20260228R1-EXPL-RCA)
- [Explanation：Docs-as-Code & RAG 設計](#OMOC-ACCUP-V20260228R1-EXPL-DOCENG-RAG)
- [APPX-A Coverage Map（Source → Anchor/REQ）](#OMOC-ACCUP-V20260228R1-APPX-A-COVERAGE)
- [APPX-B SUPPORT-only References（外部）](#OMOC-ACCUP-V20260228R1-APPX-B-SUPPORT-REFS)
- [APPX-C Glossary（術語一致性）](#OMOC-ACCUP-V20260228R1-APPX-C-GLOSSARY)
- [APPX-D Changelog（本文件變更記錄）](#OMOC-ACCUP-V20260228R1-APPX-D-CHANGELOG)

---

<a id="OMOC-ACCUP-V20260228R1-SEC2-READER-GUIDE"></a>
[ANCHOR:OMOC-ACCUP-V20260228R1-SEC2-READER-GUIDE]

## 導讀與強制檢索指引

### 強制讀序（anti-miss）

1. 先讀 **Authority Stack** → 確認哪些段落是硬規範、哪些只能 SUPPORT。
2. 再讀 **Reference：Requirement Registry** → 這份文件真正的「硬需求清單」。
3. 任何“要執行/要驗收/要放行” → 只看 **Verdict & Status** + **Evidence Artifacts** + **Degrade Matrix**。
4. 看到 `UNVERIFIED / MISSING / PLATFORM DRIFT` → 立刻去 **TT / CR_OPEN Ledger**，不要補腦。

### Anti-hallucination 協議（本文件內強制）

- **No-Source-No-Norm**：本文件宣告為硬規範的條款，必須能回指到本文件的 `REQ-*` 或 `REF-*` 段落；若只存在於外部網路或缺檔 SSOT → 一律 `UNVERIFIED`。
- **Authority Stack**：衝突以「較高權威／較可驗收／較新版本」優先；仍不可裁決 → 進 CR_OPEN。
- **Route-Out**：本文件不替缺失 SSOT 補規格；只能定義「需要哪份證據、如何 Fail-Closed」。
- **關鍵名詞一致性**：同一概念只用一個名詞（見 Glossary），避免“換詞逃避驗收”。

<a id="OMOC-ACCUP-V20260228R1-SEC2-QUICK-INDEX"></a>
[ANCHOR:OMOC-ACCUP-V20260228R1-SEC2-QUICK-INDEX]

## Quick Index（關鍵字 → 內部錨點）

| keyword | jump |
| --- | --- |
| Run Card / 指揮官指令模板 | [HT-RUNCARD](#OMOC-ACCUP-V20260228R1-HT-RUNCARD) |
| Router→Skills→Validator | [HT-ENFORCE-CHAIN](#OMOC-ACCUP-V20260228R1-HT-ENFORCE-CHAIN) |
| Root Artifacts / Evidence Minset | [REF-EVIDENCE-ARTIFACTS](#OMOC-ACCUP-V20260228R1-REF-EVIDENCE-ARTIFACTS) |
| PASS / TEMP_CLOSED / FAIL_CLOSED | [REF-VERDICT-STATUS](#OMOC-ACCUP-V20260228R1-REF-VERDICT-STATUS) |
| merge_group / required checks | [HT-CI-REQUIRED-CHECKS](#OMOC-ACCUP-V20260228R1-HT-CI-REQUIRED-CHECKS) |
| acceptance_local hang / timeout | [HT-LOCAL-ACCEPTANCE](#OMOC-ACCUP-V20260228R1-HT-LOCAL-ACCEPTANCE) |
| TT / CR_OPEN | [REF-TT-SCHEMA](#OMOC-ACCUP-V20260228R1-REF-TT-SCHEMA) |
| 降級矩陣 / Degrade Matrix | [REF-DEGRADE-MATRIX](#OMOC-ACCUP-V20260228R1-REF-DEGRADE-MATRIX) |

---

<a id="OMOC-ACCUP-V20260228R1-SEC3-AUTHORITY"></a>
[ANCHOR:OMOC-ACCUP-V20260228R1-SEC3-AUTHORITY]

## Authority Stack

### 本文件的權威堆疊（Fail-Closed）

L0（本文件）> L1（本回合 NORMATIVE inputs：6 份來源文件）> L2（來源文件提到但本回合缺檔的 SSOT/Repo 實況）> SUPPORT-only（外部網路/平台文件/猜測）。

### 衝突裁決規則（本文件內適用）

1. **本文件優先**：本文件是升級後 SSOT；與舊文件衝突時，以本文件為準。
2. **來源內衝突**：優先採用（a）較具體可驗收、（b）較新或含版本/日期宣告、（c）能提供 locator proof 的敘述。
3. **仍不可裁決**：列入 `CR_OPEN`，不得寫成 MUST。

### 本回合 NORMATIVE Inputs Manifest（可稽核）

| file | sha256 | note |
| --- | --- | --- |
| `OMOC+指揮官_升級方案.md` | `sha256:b40641693bf3a650fc97ab57234da86d8b1e2fe7805ae19cf76783f8b0dc5951` | 本回合可讀取；作為升級輸入 |
| `OMOC+指揮官_升級方案筆記-1.md` | `sha256:b42ccc99789c9326b565a143f082f84b9aa52ea8205e81136949339e75af67e8` | 本回合可讀取；作為升級輸入 |
| `OMOC+指揮官_升級方案筆記-2.md` | `sha256:dfa70123c1f1aa96e6f3c4cf54e2f95b7684f1d5ef3fd0a2cd9eb959c2b720be` | 本回合可讀取；作為升級輸入 |
| `OMOC+指揮官_升級方案筆記-3.md` | `sha256:6b9fb2ff6a4f8848233474b964c38a7bd91d838c7847c00daad11032e6e1c30a` | 本回合可讀取；作為升級輸入 |
| `OMOC+指揮官_升級方案筆記-4.md` | `sha256:fcba50750c6c4c43cab02074d1c4a27443db05fce79e4379901eaf0217b83a47` | 本回合可讀取；作為升級輸入 |
| `OMOC+指揮官_升級方案筆記-5.md` | `sha256:81a9eb486434ed751a116870406349f0a2c20a3498f608db3c1afed592c06bb8` | 本回合可讀取；作為升級輸入 |

<a id="OMOC-ACCUP-V20260228R1-SEC3-SCOPELOCK"></a>
[ANCHOR:OMOC-ACCUP-V20260228R1-SEC3-SCOPELOCK]

## Scope Lock & Route-Out

### In-Scope（本文件必須承載）

- 雙向強制架構：上游 Run Card／下游強制鏈／validator hard gate。
- 以 **機械裁決** 為中心的驗收契約：Verdict 語義、Root Artifacts、Evidence Minset、single bundle。
- 失效關閉與降級：TEMP_CLOSED / FAIL_CLOSED / TT / CR_OPEN。
- 與落地相關的最小指引：Run Card 模板、local acceptance 反卡住策略、required checks 事件矩陣（僅到“應該怎麼驗證”，不寫平台細節設定）。

### Out-of-Scope（本文件禁止承載；必須 Route-Out）

- 任何缺檔 SSOT 的正文規格（例如 Evidence Upload TXT 的完整 EBNF/10-block grammar 來源文件）。
- 平台（GitHub / OpenCode / OMO）的具體設定步驟與最新規則：只能 SUPPORT-only；需實測證據才能升格。
- repo 實際 patch：本文件只定義「應該產出什麼證據」與「缺證據如何 Fail-Closed」。

### Route-Out Register（本回合多次被引用但缺檔 → UNVERIFIED）

| topic | required artifact / evidence | status |
| --- | --- | --- |
| Evidence Upload TXT 完整規格（10-block / EBNF / required keys） | `03_Evidence_Upload_TXT_Spec.md` | **MISSING → CR_OPEN-001** |
| Lane-F 三門檻、G0–G3、WP-001→WP-008 的正文定義 | Lane-F RB+WI / Runbook（來源聲稱存在但本回合未提供） | **UNVERIFIED → CR_OPEN-005** |

---

<a id="OMOC-ACCUP-V20260228R1-TUT-QUICKSTART"></a>
[ANCHOR:OMOC-ACCUP-V20260228R1-TUT-QUICKSTART]

## Tutorial：2 分鐘快速上手（只給最短路）

> 目標：用最少步驟驗證你是否已經在跑「工廠線」，而不是在聽故事。

1. **先看 Evidence Tree 是否存在**：Root Artifacts / single bundle 有沒有？（沒有＝不用討論，直接 TEMP_CLOSED + TT）
2. **再看 validator 是否跑過且可重跑**：同 SHA 重跑，摘要/雜湊是否一致？（不一致＝TT）
3. **最後再看 required checks 是否真的回報（PR + merge_group）**：若你想啟用 merge queue，先證明 merge_group 事件也能回報同名 required check。

本文件提供的命令原則：**短、可斷點、無 heredoc、可落 log/rc**（見 REQ-018）。

---

<a id="OMOC-ACCUP-V20260228R1-HT-RUNCARD"></a>
[ANCHOR:OMOC-ACCUP-V20260228R1-HT-RUNCARD]

## How-To：寫 Run Card（指揮官指令模板）

### 你要鎖死的不是“任務”，而是“裁決輸出”

Run Card 必須明確點名：

- 要跑的強制鏈：Router → Skills → Evidence Pack → Validator → Verdict（REQ-001/009）。
- 固定輸出清單：Root Artifacts + single_evidence_bundle.txt（REQ-003/016）。
- Fail-Closed：缺任一 → TEMP_CLOSED + TT（REQ-002/011）。

### Minimal Run Card（可直接複用；不含平台細節）

```text
MODE: LANE-F-ACCEPTANCE (FAIL-CLOSED)
SCOPE: repo-local only; allowed_write_paths limited to evidence/ + scripts/ + .opencode/ + .github/workflows/
MUST:
  - Enforce chain: Router -> Skills -> EvidencePack -> Validator -> Verdict
  - Produce Root Artifacts: verdict.json, checks_manifest.json, evidence_index.md, bundle_audit.json, evidence_bundle.tgz, single_evidence_bundle.txt
  - Forbidden/Secrets exclusion scan and report (no secret values echoed)
  - Rerunnable: capture logs+rc per step; same SHA rerun must be comparable
FAIL-CLOSED RULES:
  - Missing any Root Artifact => status=TEMP_CLOSED; open TT with probe/expected_signal/retest_steps
  - Evidence Upload TXT lint failure => status=TEMP_CLOSED (or FAIL_CLOSED if upstream SSOT mandates); open TT
OUTPUT ROOT:
  - evidence/
  - evidence/_acceptance/<TS>/single_evidence_bundle.txt
```

> 注意：上游指令再完整也不等於落地；**必須**由下游強制鏈與 validator 把結果收斂成可機械裁決（REQ-001）。

---

<a id="OMOC-ACCUP-V20260228R1-HT-ENFORCE-CHAIN"></a>
[ANCHOR:OMOC-ACCUP-V20260228R1-HT-ENFORCE-CHAIN]

## How-To：落地強制鏈（Router / Skills / Validator）

### 目標架構（文字版）

1. **Router（正規化）**：把任何任務轉成可執行的 Run Card 參數（scope、skills_to_run、outputs、stop_rules）。
2. **Skills（工件化）**：把“應該做的事”變成 repo 內可重跑的腳本/技能輸出。
3. **Evidence Pack（證據封裝）**：把 outputs 收斂成 Root Artifacts + bundle + single bundle。
4. **Validator（硬閘）**：validator 沒 PASS，就不准宣稱 PASS（REQ-002/003/008）。

### 最常見錯覺：policy/skills 會自動生效

- **錯**：來源已明示「不要假設 agent 會自動 enforce policy/skills」（REQ-009）。
- **修**：在 Run Card 明確點名 skills_root、必跑技能與輸出對齊；並把 validator 放成硬閘。

---

<a id="OMOC-ACCUP-V20260228R1-HT-LOCAL-ACCEPTANCE"></a>
[ANCHOR:OMOC-ACCUP-V20260228R1-HT-LOCAL-ACCEPTANCE]

## How-To：Local Acceptance（可重跑 + 防卡住）

### 反卡住策略（本文件只定義“可驗收行為”，不替你寫平台腳本）

- **non-interactive**：禁止等待輸入；任何需要互動的步驟都必須提前 fail 或預設值。
- **timeout**：每步驟必有超時；卡住或需 ^C → 直接 TEMP_CLOSED + TT（REQ-008）。
- **OMOC_TS 一致性**：同一回合所有輸出必綁定同一 TS；不得產生“有 log 但沒有 acceptance dir”的殘缺狀態（REQ-008）。
- **落盤 log + rc**：每一步驟都必須輸出 log 與 rc（REQ-005）。

### 最小 probe 命令（只檢查存在性；短命令）

```bash
set -euo pipefail
ls -la evidence 2>/dev/null || true
ls -la evidence/verdict.json evidence/checks_manifest.json evidence/evidence_index.md evidence/bundle_audit.json evidence/evidence_bundle.tgz 2>/dev/null || true
ls -la evidence/_acceptance 2>/dev/null || true
```

---

<a id="OMOC-ACCUP-V20260228R1-HT-CI-REQUIRED-CHECKS"></a>
[ANCHOR:OMOC-ACCUP-V20260228R1-HT-CI-REQUIRED-CHECKS]

## How-To：CI Required Checks（PR + merge_group）

來源指出：required checks 若只在 PR 回報，merge queue/merge_group 情境可能等不到或出現假綠風險（REQ-007；外部平台細節僅 SUPPORT-only）。

本文件的硬要求是“可驗收結果”而不是“平台設定步驟”：

- 必須能提供證據證明：同一個 required check 在 PR 與 merge_group 事件下都能回報（或明確降級：禁用 MQ）。
- 任何平台行為若未被 repo 實測證據鎖定 → 一律 TT（Platform Drift）。

最小靜態掃描 probe（避免 `rg` 依賴）：

```bash
set -euo pipefail
grep -R -n -E '^\s*merge_group\s*:' .github/workflows 2>/dev/null || true
grep -R -n -E '^\s*pull_request\s*:' .github/workflows 2>/dev/null || true
```

---

<a id="OMOC-ACCUP-V20260228R1-REF-REQ-REGISTRY"></a>
[ANCHOR:OMOC-ACCUP-V20260228R1-REF-REQ-REGISTRY]

## Reference：Requirement Registry（可機械抽取）

> 這張表是本文件的“唯一硬需求真相”。任何驗收/實作都必須能對應到 REQ_ID。

| REQ_ID | Priority | Target Anchor | Requirement | Source Locator Proof |
| --- | --- | --- | --- | --- |
| REQ-001 | P0 | [Dual Enforcement Chain](#OMOC-ACCUP-V20260228R1-HT-ENFORCE-CHAIN) | 必須落地「上游 Run Card（路由/配置）」與「下游強制鏈（Router→Skills→Evidence Chain→Validator→CI Gate）」；不得只靠上游 prompt 完整度。 | OMOC+指揮官_升級方案.md:L71; OMOC+指揮官_升級方案筆記-1.md:L57; OMOC+指揮官_升級方案筆記-1.md:L53 |
| REQ-002 | P0 | [Fail-Closed & No Mouth PASS](#OMOC-ACCUP-V20260228R1-REF-VERDICT-STATUS) | 必須採 Fail-Closed：缺證據/缺檔/不可解析→只能 TEMP_CLOSED 並開 TT；嚴禁口頭 PASS；PASS 只能由（Root Artifacts + Forbidden/Secrets Exclusion + Rerunnable）同時滿足推出。 | OMOC+指揮官_升級方案筆記-3.md:L51; OMOC+指揮官_升級方案筆記-3.md:L52; OMOC+指揮官_升級方案筆記-3.md:L31 |
| REQ-003 | P0 | [Root Artifacts / Evidence Minset](#OMOC-ACCUP-V20260228R1-REF-EVIDENCE-ARTIFACTS) | 必須在固定路徑產出 Root Artifacts / Evidence Minset（至少含 verdict.json、checks_manifest.json、evidence_index.md、bundle_audit.json、evidence_bundle.tgz、single_evidence_bundle.txt）；缺任一→TEMP_CLOSED+TT。 | OMOC+指揮官_升級方案筆記-3.md:L66; OMOC+指揮官_升級方案筆記-4.md:L22 |
| REQ-004 | P0 | [Forbidden / Secrets Exclusion](#OMOC-ACCUP-V20260228R1-REF-EVIDENCE-ARTIFACTS) | 必須輸出禁項/機密排除掃描結果（掃描範圍、命中清單、0 命中判定）；命中→Fail-Closed+TT。 | OMOC+指揮官_升級方案筆記-3.md:L75; OMOC+指揮官_升級方案筆記-3.md:L77 |
| REQ-005 | P0 | [Rerunnable & Replayable Evidence](#OMOC-ACCUP-V20260228R1-REF-EVIDENCE-ARTIFACTS) | 必須保證可重跑（同 SHA 同流程可重放、可對比）；關鍵步驟必落 log+rc，並把可重跑資訊寫入 verdict 或 bundle_audit。 | OMOC+指揮官_升級方案筆記-3.md:L81; OMOC+指揮官_升級方案筆記-4.md:L33 |
| REQ-006 | P0 | [Evidence Upload TXT Machine Rules](#OMOC-ACCUP-V20260228R1-REF-TEMPLATES) | Evidence Upload TXT 必須通過 machine rules（verdict enum、required keys、TT/SCREENSHOTS/FOOTER 結構、EBNF、footer_kv、完整性）；否則阻斷 Gate（例：WP-006）。 | OMOC+指揮官_升級方案.md:L11; OMOC+指揮官_升級方案筆記-5.md:L21; OMOC+指揮官_升級方案筆記-4.md:L52 |
| REQ-007 | P0 | [Required Checks Canonical (PR + merge_group)](#OMOC-ACCUP-V20260228R1-HT-CI-REQUIRED-CHECKS) | required checks 必須在 PR 與 merge_group 情境回報一致（同名/可回放）；否則 merge queue 可能等待或假綠；未證實前不得啟用 MQ。 | OMOC+指揮官_升級方案.md:L13; OMOC+指揮官_升級方案.md:L167 |
| REQ-008 | P0 | [acceptance_local 防卡住與一致性](#OMOC-ACCUP-V20260228R1-HT-LOCAL-ACCEPTANCE) | acceptance_local 必須 non-interactive + timeout；必須一致設定 OMOC_TS 與 acceptance dir；卡住或需 ^C→TEMP_CLOSED + TT，且 xtrace/最後命令必可定位。 | OMOC+指揮官_升級方案.md:L10; OMOC+指揮官_升級方案.md:L25; OMOC+指揮官_升級方案筆記-4.md:L44 |
| REQ-009 | P0 | [Skills/Policy 不會自動生效](#OMOC-ACCUP-V20260228R1-HT-ENFORCE-CHAIN) | 不得假設 agent 會自動 enforce policy/skills；必須在 Run Card 點名要求使用 router+skills_root+必跑技能，並要求輸出對齊 Root Artifacts。 | OMOC+指揮官_升級方案筆記-4.md:L6; OMOC+指揮官_升級方案筆記-4.md:L69; OMOC+指揮官_升級方案筆記-3.md:L99 |
| REQ-010 | P1 | [Repo Skeleton Minimum Set](#OMOC-ACCUP-V20260228R1-REF-REPO-SKELETON) | 必須檢查 repo 最小骨架與腳本：.devcontainer、opencode.jsonc、.opencode/policy、.ohmy/opencode.profiles.jsonc、AGENTS.md、scripts/diag/*（含 90_bundle.sh）、.github/workflows/omoc_gates.yml；缺失→Fail-Closed+TT。 | OMOC+指揮官_升級方案筆記-3.md:L88; OMOC+指揮官_升級方案筆記-3.md:L90; OMOC+指揮官_升級方案筆記-3.md:L92 |
| REQ-011 | P0 | [TT（Test Track）必開規則與欄位](#OMOC-ACCUP-V20260228R1-REF-TT-SCHEMA) | 缺證據/不可裁決/解析失敗時必開 TT；TT 至少含 probe、expected_signal、retest_steps、minimal_evidence_required，並與 TEMP_CLOSED 綁定。 | OMOC+指揮官_升級方案筆記-3.md:L51; OMOC+指揮官_升級方案筆記-4.md:L109; OMOC+指揮官_升級方案.md:L16 |
| REQ-012 | P1 | [RCA：飄移是多因子](#OMOC-ACCUP-V20260228R1-EXPL-RCA) | 必須將問題分成：指令缺口（未鎖機械裁決）vs 工具/環境/供應商設定故障（例如 model not found、依賴缺失、輸入通道污染），並分層處置。 | OMOC+指揮官_升級方案筆記-2.md:L20; OMOC+指揮官_升級方案筆記-2.md:L24; OMOC+指揮官_升級方案筆記-2.md:L62 |
| REQ-013 | P1 | [External Web = SUPPORT-only](#OMOC-ACCUP-V20260228R1-APPX-B-SUPPORT-REFS) | 外部網路資料只能 SUPPORT-only；不得升格為硬規範；若牽涉平台易變行為，必轉 TT 並要求快照/實測證據。 | OMOC+指揮官_升級方案.md:L149 |
| REQ-014 | P0 | [Degrade Matrix（降級矩陣）](#OMOC-ACCUP-V20260228R1-REF-DEGRADE-MATRIX) | 必須有降級矩陣：missing root artifacts→FAIL_CLOSED；acceptance_local hang→TEMP_CLOSED+TT；merge_group 未回報→TEMP/FAIL 且禁用 MQ；@latest gate 基礎不明→UNVERIFIED→TT。 | OMOC+指揮官_升級方案.md:L193; OMOC+指揮官_升級方案.md:L376 |
| REQ-015 | P1 | [執行順序（先穩定再優化）](#OMOC-ACCUP-V20260228R1-TUT-QUICKSTART) | 實作收斂順序：先固化 Run Card（固定輸出+Fail-Closed+logs+rc），再做配置/環境 sanity checks，最後才做性能最佳化。 | OMOC+指揮官_升級方案筆記-2.md:L66; OMOC+指揮官_升級方案筆記-2.md:L67; OMOC+指揮官_升級方案筆記-2.md:L68 |
| REQ-016 | P1 | [single_evidence_bundle.txt 單檔證據包](#OMOC-ACCUP-V20260228R1-REF-EVIDENCE-ARTIFACTS) | 必須產出單檔證據包（evidence/_acceptance/<TS>/single_evidence_bundle.txt 或 SSOT 指定名），且內容需包含：A Snapshot、B Config 摘要、C logs 摘要、D 結果、E TT 列表。 | OMOC+指揮官_升級方案筆記-3.md:L108; OMOC+指揮官_升級方案筆記-3.md:L109 |
| REQ-017 | P1 | [完整性鏈（SHA/size/footer 回填順序）](#OMOC-ACCUP-V20260228R1-REF-TEMPLATES) | 證據檔不得在 footer 回填後再改寫；必須先定稿→計算 sha/size→回填 footer→之後不再改檔，避免 TXT SHA MISMATCH。 | OMOC+指揮官_升級方案筆記-5.md:L40; OMOC+指揮官_升級方案筆記-5.md:L84 |
| REQ-018 | P2 | [命令輸出衛生：短命令、無 heredoc](#OMOC-ACCUP-V20260228R1-TUT-QUICKSTART) | 命令集必須短、可斷點、避免 heredoc/長貼，以降低 UI 汙染與不可回放風險。 | OMOC+指揮官_升級方案.md:L41; OMOC+指揮官_升級方案筆記-4.md:L42 |

---

<a id="OMOC-ACCUP-V20260228R1-REF-VERDICT-STATUS"></a>
[ANCHOR:OMOC-ACCUP-V20260228R1-REF-VERDICT-STATUS]

## Reference：Verdict & Status（Fail-Closed 語義）

本文件承認三態裁決（來源多次使用）：

- **PASS**：僅當 Root Artifacts 齊全且可解析、Forbidden/Secrets 0 命中、且同 SHA 可重跑對比（REQ-002/003/004/005）。
- **TEMP_CLOSED**：缺證據／缺檔／不可解析／平台行為未鎖定時的唯一安全狀態；必須同時開 TT（REQ-011）。
- **FAIL_CLOSED**：明確阻斷（例如缺 Root Artifacts、命中禁項/機密、證據完整性鏈破壞等）；是否為 FAIL 或 TEMP，若上位 SSOT 缺檔則先 TEMP+TT（Fail-Closed）。

嚴禁：以“我覺得跑過了”替代以上裁決條件（REQ-002）。

---

<a id="OMOC-ACCUP-V20260228R1-REF-EVIDENCE-ARTIFACTS"></a>
[ANCHOR:OMOC-ACCUP-V20260228R1-REF-EVIDENCE-ARTIFACTS]

## Reference：Evidence Artifacts（Root Artifacts / Evidence Minset）

### Root Artifacts（最小集合）

至少必須包含（來源列舉）：

- `verdict.json`（status ∈ {PASS, TEMP_CLOSED, FAIL_CLOSED}）
- `checks_manifest.json`
- `evidence_index.md`
- `bundle_audit.json`
- `evidence_bundle.tgz`
- `single_evidence_bundle.txt`（或 `evidence/_acceptance/<TS>/single_evidence_bundle.txt`，以你的 SSOT 指定為準；本文件只要求“固定命名與路徑可驗收”）

缺任一：至少 TEMP_CLOSED + TT（REQ-003/011）。

### single_evidence_bundle.txt 內容骨架（A–E）

來源要求內容至少包含：

A. Snapshot  
B. Config 摘要  
C. logs 摘要  
D. 結果  
E. TT 列表  
（REQ-016）

### Forbidden / Secrets Exclusion（必出報告）

- 必須回報：掃描範圍、命中清單、是否 0 命中。
- 禁止：把疑似機密值直接回顯到證據包。

---

<a id="OMOC-ACCUP-V20260228R1-REF-REPO-SKELETON"></a>
[ANCHOR:OMOC-ACCUP-V20260228R1-REF-REPO-SKELETON]

## Reference：Repo Skeleton & Scripts（最小集合）

來源要求至少檢查以下落地點（缺失 → Fail-Closed + TT）：

- `.devcontainer/`
- `opencode.jsonc`
- `.opencode/policy/…`
- `.ohmy/opencode.profiles.jsonc`
- `AGENTS.md`
- `scripts/diag/*`（含 `90_bundle.sh`：bundle + single txt）
- `.github/workflows/omoc_gates.yml`（required checks / merge_group / always-report）

---

<a id="OMOC-ACCUP-V20260228R1-REF-DEGRADE-MATRIX"></a>
[ANCHOR:OMOC-ACCUP-V20260228R1-REF-DEGRADE-MATRIX]

## Reference：Degrade Matrix（降級矩陣；Fail-Closed）

| condition | verdict | allow_release | must_open_TT | minimal evidence |
| --- | --- | --- | --- | --- |
| 缺任一 Root Artifact | FAIL_CLOSED（或 TEMP_CLOSED 若上位 SSOT 未定義） | ✗ | ✓ | evidence tree listing + validator output |
| acceptance_local 卡住 / 需 ^C | TEMP_CLOSED | ✗ | ✓ | xtrace/最後命令 log + rc |
| merge_group 未回報 required checks | TEMP_CLOSED / FAIL（依 policy） | ✗（不得啟 MQ） | ✓ | PR+merge_group checkrun 證據 |
| `@latest` 命中被當成 FAIL 基礎 | UNVERIFIED | ✗ | ✓ | 上位 SSOT 明文 + 實測快照 |
| 證據完整性鏈破壞（SHA mismatch） | FAIL_CLOSED | ✗ | ✓ | sha/size/footer 一致性證據 |

---

<a id="OMOC-ACCUP-V20260228R1-REF-TT-SCHEMA"></a>
[ANCHOR:OMOC-ACCUP-V20260228R1-REF-TT-SCHEMA]

## Reference：TT Schema（Test Track / TEMP_CLOSED）

### 何時必開 TT（Fail-Closed）

- 缺 Root Artifacts 或不可解析。
- platform behavior 未鎖定（merge_group / merge queue 等）。
- Evidence Upload TXT lint 失敗或完整性鏈不可信。
- 外部依賴/供應商設定故障（模型不存在、依賴缺失、輸入通道污染）。

### TT 最小欄位（來源點名）

- `tt_id` / `title` / `reason` / `priority`
- `probe`（最便宜驗證）
- `expected_signal`（成功訊號）
- `retest_steps`（可重跑）
- `minimal_evidence_required`（最低證據）
- `status`（TEMP_CLOSED / CLOSED 等）

### TT 清單（本文件內建，作為起跑模板）

| tt_id | title | priority | reopen_criteria | minimal_evidence_required |
| --- | --- | --- | --- | --- |
| TT-ACCEPT-HANG-001 | acceptance_local 卡住/需 ^C | P0 | Reopen when: non-interactive + timeout 生效且 log 可定位最後命令 | evidence/_acceptance/<TS>/log + rc |
| TT-REQCHECK-MQ-001 | PR+merge_group required check 同名回報 | P0 | Reopen when: 兩事件皆有 checkrun 證據 | workflow logs + checkrun screenshot/JSON |
| TT-EVID-TREE-001 | evidence tree / Root Artifacts 合規 | P0 | Reopen when: validator PASS 且 Root Artifacts 齊全 | validator output + artifact list |
| TT-ENV-SANITY-001 | 供應商/模型/registry sanity | P1 | Reopen when: model registry/pinning 校驗通過且可重跑 | opencode models 输出 + snapshot |
| TT-TOOLING-RG-001 | rg 缺席導致 probe 失真 | P2 | Reopen when: probe 具 grep fallback 或依賴被宣告 | scripts diff + rerun proof |

---

<a id="OMOC-ACCUP-V20260228R1-REF-TEMPLATES"></a>
[ANCHOR:OMOC-ACCUP-V20260228R1-REF-TEMPLATES]

## Reference：Templates（可複用片段；本文件內部定義）

### Evidence Upload TXT 的最小 lint checklist（在缺 Spec 時的降級）

> 注意：完整 grammar 文件缺檔（CR_OPEN-001）。以下只作“最低限度自保”，不能宣告完全合規。

- DECISION.verdict ∈ {PASS, TEMP_CLOSED, FAIL_CLOSED}
- HEADER required keys 存在（至少要能識別：repo/sha/ts/tool_versions/inputs）
- TT 區塊存在時：必含 probe/expected_signal/retest_steps/minimal_evidence_required
- FOOTER：在內容定稿後才回填 sha/size；回填後不得再改檔（REQ-017）

### 防 UI 汙染的輸出策略（概念）

- 任何要被 copy/paste 的內容：優先落盤檔案，再以 `cat`/artifact 上傳；不要在 UI 內手動拼接長腳本。
- 命令保持短、分段、可斷點（REQ-018）。

---

<a id="OMOC-ACCUP-V20260228R1-EXPL-RCA"></a>
[ANCHOR:OMOC-ACCUP-V20260228R1-EXPL-RCA]

## Explanation：RCA（為什麼一直飄）

來源明確裁決：飄移是**多因子**，不是單純“指令寫不好”。至少分三層：

1. **指令層缺口**：沒有強制要求機械裁決輸出（Root Artifacts / Minset / Fail-Closed），導致主觀 PASS。
2. **落地/工廠線缺口**：skills/policy 沒被鎖進流程；validator 沒當硬閘；acceptance_local 卡住且無可回放證據。
3. **環境/供應商/工具層故障**：模型/registry 錯配（ProviderModelNotFoundError 類）、依賴缺失（rg）、輸入通道污染（copy/paste 破壞腳本）。

因此正確策略是：先把“工廠線裁決輸出”鎖死，再做環境 sanity，最後才談性能（REQ-015）。

---

<a id="OMOC-ACCUP-V20260228R1-EXPL-DOCENG-RAG"></a>
[ANCHOR:OMOC-ACCUP-V20260228R1-EXPL-DOCENG-RAG]

## Explanation：Docs-as-Code & RAG 設計（SUPPORT-only）

> 這一節是文件工程建議，不升格為驗收硬規範；目標是讓 AI/人類都不漏讀、不亂讀。

### Docs-as-Code

- 每個 REQ 都有 ID、優先級、定位錨點，便於 lint/CI 做機械抽取。
- 變更必寫 Changelog；任何 UNVERIFIED 必進 CR_OPEN/TT。

### Diátaxis（本文件章節對應）

- Tutorial：快速上手，最短路徑。
- How-To：任務型操作（Run Card、落地強制鏈、local acceptance、CI）。
- Reference：契約/字典/表格（REQ registry、artifacts、degrade、TT schema）。
- Explanation：原理與取捨（RCA、文件可檢索性設計）。

### RAG 可檢索性設計（GraphRAG / RAPTOR / CRAG / RAG-Triad）

- **Chunking**：以 `REQ-*` 為最小 chunk；每個 chunk 應包含（需求→驗證→證據指針）。
- **Graph index**：建立節點（REQ / Artifact / Verdict / TT / CR_OPEN）與邊（requires / produced_by / verified_by）。
- **RAG Triad 自檢**：
  - Context Relevance：檢索是否命中正確 REQ/REF 段？
  - Groundedness：回答是否引用本文件內 anchor/REQ？
  - Answer Relevance：回答是否直接回到“可機械驗收”的輸出？

---

<a id="OMOC-ACCUP-V20260228R1-APPX-A-COVERAGE"></a>
[ANCHOR:OMOC-ACCUP-V20260228R1-APPX-A-COVERAGE]

## APPX-A Coverage Map（Source → NewDoc Anchor/REQ）

> 本表用來證明：六份來源文件的主旨要點都已在本文件落點。

| source_file | key_section (heading-based) | mapped_to |
| --- | --- | --- |
| `OMOC+指揮官_升級方案.md` | 1) Problem Fingerprint / 痛點清單 | REQ-001/006/007/008/012/014 |
| `OMOC+指揮官_升級方案.md` | 2) Hypothesis Graph / probes | HT-LOCAL-ACCEPTANCE; HT-CI-REQUIRED-CHECKS; REF-TT-SCHEMA |
| `OMOC+指揮官_升級方案.md` | 5) Integrated Solution / 雙向工廠線 | REQ-001; HT-ENFORCE-CHAIN |
| `OMOC+指揮官_升級方案.md` | Degrade Matrix / CR_OPEN | REF-DEGRADE-MATRIX; CR_OPEN ledger |
| `OMOC+指揮官_升級方案筆記-1.md` | 雙向機制拆層（上游配置/下游強制） | REQ-001; HT-RUNCARD; HT-ENFORCE-CHAIN |
| `OMOC+指揮官_升級方案筆記-2.md` | 多因子 RCA + 施作順序 | REQ-012; REQ-015 |
| `OMOC+指揮官_升級方案筆記-3.md` | 指令必達項目（Root artifacts/Repo skeleton/Single bundle） | REQ-002~005; REQ-010; REQ-016 |
| `OMOC+指揮官_升級方案筆記-4.md` | Probes + skills 不自動生效 + 驗收方式 | REQ-009; HT-LOCAL-ACCEPTANCE; REF-REQ-REGISTRY |
| `OMOC+指揮官_升級方案筆記-5.md` | Evidence contract 失敗型 + 完整性鏈 | REQ-006; REQ-017 |

<a id="OMOC-ACCUP-V20260228R1-APPX-B-SUPPORT-REFS"></a>
[ANCHOR:OMOC-ACCUP-V20260228R1-APPX-B-SUPPORT-REFS]

## APPX-B SUPPORT-only References（外部網路/平台文件）

來源文件含外部平台連結（例如 GitHub Docs）。依本文件 Scope Lock：它們只能 SUPPORT-only；若要依其裁決，必須做快照或實測並寫入 TT（REQ-013）。

- GitHub Docs：Merge Queue / merge_group（僅作風險語境；不升格）
- GitHub Docs：Actions security / pinning / attestations（僅作硬化建議；不升格）
- oh-my-opencode docs / npm 描述（僅作 loader 行為交叉驗證；仍需本地自證 → CR_OPEN-003）

<a id="OMOC-ACCUP-V20260228R1-APPX-C-GLOSSARY"></a>
[ANCHOR:OMOC-ACCUP-V20260228R1-APPX-C-GLOSSARY]

## APPX-C Glossary（術語一致性）

| term | definition |
| --- | --- |
| Run Card | 上游指揮官/編排器輸出的“配置型任務卡”，重點是鎖死輸出與 Fail-Closed，而非描述性敘述。 |
| Fail-Closed | 缺證據就不通過；只能 TEMP_CLOSED 或 FAIL_CLOSED，並要求 TT。 |
| Root Artifacts | 機械裁決所需的最小證據集合（見 REF-EVIDENCE-ARTIFACTS）。 |
| Evidence Minset | Root Artifacts + 其最小封裝（bundle + single bundle）的合稱（來源用語）。 |
| Validator | 在 repo 內執行的硬閘；validator 未 PASS 就不得宣告 PASS。 |
| TT (Test Track) | 對 UNVERIFIED / PLATFORM DRIFT / 缺證據 的可驗證計畫；必含 probe/expected_signal/retest_steps。 |
| CR_OPEN | 缺檔或不可裁決的阻斷項；未關閉前不得宣告 Release PASS。 |
| merge_group | 來源提到的 CI 事件情境；屬平台行為，需實測鎖定。 |

<a id="OMOC-ACCUP-V20260228R1-APPX-D-CHANGELOG"></a>
[ANCHOR:OMOC-ACCUP-V20260228R1-APPX-D-CHANGELOG]

## APPX-D Changelog（本文件變更記錄）

| date | version | change |
| --- | --- | --- |
| 2026-02-28 | v2026.02.28-r1 | 新增：以 REQ registry 取代散落筆記；補 TOC/anchors/Quick Index；整合 CR_OPEN/TT；清理舊文件中 UI 汙染片段並改為可驗收模板。 |

---

### CR_OPEN Ledger（阻斷/缺檔；Fail-Closed）

| id | title | reason | impact | source_locator | reopen_criteria | minimal_evidence_required |
| --- | --- | --- | --- | --- | --- | --- |
| CR_OPEN-001 | Evidence Upload TXT Spec 缺檔 | MISSING: `03_Evidence_Upload_TXT_Spec.md` 被多處引用但本回合不可讀 | 無法把 machine rules 升格為完全 NORMATIVE；只能降級 lint | OMOC+指揮官_升級方案.md:L415 | Reopen when: 文件可讀且含可定位節點（anchor/heading） | 檔案 + 10-block/EBNF/required keys 定義 + locator proof |
| CR_OPEN-002 | `@latest` 作為 FAIL gate 基礎不明 | UNVERIFIED: 未見上位 SSOT 明文 | 不可作 FAIL_CLOSED 依據；需降級 | OMOC+指揮官_升級方案.md:L416 | Reopen when: 上位 SSOT 明文 + 實測快照 | SSOT 條文截圖/快照 + 實測 evidence |
| CR_OPEN-003 | OMO loader 行為未自證 | UNVERIFIED: repo-level config 是否生效不確定 | 可能造成行為漂移；需自證 | OMOC+指揮官_升級方案.md:L417 | Reopen when: 以 `--help/config` 或等價輸出自證並 evidence 化 | 命令輸出 + evidence bundle |
| CR_OPEN-004 | 平台漂移：merge queue / concurrency | PLATFORM DRIFT | required checks 行為可能隨平台更新改變 | OMOC+指揮官_升級方案.md:L418 | Reopen when: 以固定版本快照或實測鎖定行為 | 平台快照/實測 + TT closure evidence |
| CR_OPEN-005 | Lane-F 三門檻 / G0–G3 / WP-001→WP-008 正文缺失或缺固定錨點 | UNVERIFIED: 來源聲稱存在，但本回合未提供正文；且提到缺固定錨點 | 無法把門檻/流程做成可機械引用；只能保留名稱與占位 | OMOC+指揮官_升級方案筆記-3.md:L10,L17 | Reopen when: 正文文件上傳且 anchors 穩定可引用 | 文件 + anchors + 節點索引 |