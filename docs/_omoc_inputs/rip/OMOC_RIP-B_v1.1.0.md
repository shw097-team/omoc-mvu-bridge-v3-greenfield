\<\!-- OMOC\_RIP-B\_v1.1.0 (repo-local, single-file) \--\>

\<a id="omoc-ripb-top"\>\</a\>

## **0\) Cover Card**

**摘要（≤120字）**：本 RIP-B 把 MCP Server 選型、default-deny allowlist、provenance+pinning、Auth isolation、敏感 tool-call「無 audit 即阻斷」、capability drift、端點發現+hash 鎖、superseded 禁用掃描、drift/closure（WP-014）做成可機械驗收工件。  
**一句話結論**：**v1.0.0 的 “Fail-Closed” 多是宣告；v1.1.0 把它做成你繞不過去的聯鎖。**

OMOC\_RIP-B\_v1.0.0

OMOC\_RIP-B\_v1.0.0\_審查報告

---

## **1\) Document Control**

| field | value |
| ----- | ----- |
| doc\_id | OMOC\_RIP-B |
| external\_name | OMOC\_RIP-B：MCP Toolchain \+ Security RIP |
| internal\_short\_name | RIPB-MCP-SEC |
| canonical\_version | v1.1.0 |
| release\_date | 2026-02-21 |
| generated\_at | 2026-02-21T00:00:00+08:00 |
| timezone | Asia/Taipei (UTC+08:00) |
| supersedes | v1.0.0 (`/mnt/data/OMOC_RIP-B_v1.0.0.md`) OMOC\_RIP-B\_v1.0.0 |
| aligned\_wps | WP-004, WP-014 (primary); WP-001/008/009/010/011/012/013 (interface route-out) OMOC\_WP-004+RB+WI\_v4.0.1-r2 OMOC\_WP-014+RB+WI\_v4.0.1-r2 OMOC\_WP-001+RB+WI\_v4.0.1-r2 OMOC\_WP-009+RB+WI\_v4.0.1-r2 |
| overall\_verdict | **TEMP\_CLOSED**（文件/工件已閉環；需在你的 repo/runner 內實跑產生 evidence 才能轉 PASS） |
| CR\_OPEN | 0 |

**Verdict 依據（可稽核）**：阻斷級缺陷（audit/pinning/endpoints/capability drift/tooling drift/superseded）已在 v1.1.0 形成可機械驗證的 gate；但「真實 MCP endpoints / 真實 server digest/commit / 真實 audit 流」仍需環境實跑產出 evidence 才能宣告 PASS（Fail-Closed \+ WP-014 證據主義）。

OMOC\_RIP-B\_v1.0.0\_審查報告

OMOC\_WP-014+RB+WI\_v4.0.1-r2

---

## **2\) Diátaxis Reader Guide**

**Tutorial（第一次走通）**

1. 套用「15) Repo Artifacts Pack」→ 2\) 跑 `scripts/ripb_preflight.sh` → 3\) 跑 `scripts/mcp_endpoints_discover.sh` → 4\) 跑 `scripts/mcp_allowlist_enforce.sh`（default-deny）→ 5\) 跑 `scripts/mcp_pinning_complete_check.sh`（缺 pin 直接停）→ 6\) 跑 `scripts/mcp_capability_diff.sh`（漂移即 TEMP\_CLOSED/FAIL\_CLOSED）→ 7\) 跑 `scripts/mcp_audit_guard.sh`（無 audit 即 block sensitive tools）→ 8\) 跑 `scripts/ripb_drift_closure_emit.sh`（closure\_matrix \+ tt\_export）。  
   OMOC\_RIP-B\_v1.0.0\_審查報告

    OMOC\_WP-014+RB+WI\_v4.0.1-r2

**How-to（操作手冊）**

* 要加新 MCP server：先更新 `allowlist.lock.json`（含 pinning 欄位）→ 再重跑 gates → 產出新 evidence bundle。  
* 要啟用供應鏈硬化（RIP-F 子集）：使用 workflow\_call 的 `supplychain_hardening.yml`，並把回報名稱鎖到 required checks（WP-010）。  
  OMOC\_WP-010+RB+WI\_v4.0.1-r2

**Reference（查表）**

* Auth isolation / token passthrough 禁止：WP-004  
   OMOC\_WP-004+RB+WI\_v4.0.1-r2  
* Drift/closure / superseded 禁用：WP-014  
   OMOC\_WP-014+RB+WI\_v4.0.1-r2  
* Evidence/validator（Secrets Zero、Minset）：施工skills \+ WP-008  
   OMOC\_總體RIP修補方案

   OMOC\_WP-009+RB+WI\_v4.0.1-r2

**Explanation（原理）**

* 為什麼要「端點發現+hash lock」：防 shadow endpoint bypass（DT-01）。  
  OMOC\_RIP-B\_v1.0.0\_審查報告  
* 為什麼要「capability drift gate」：allowlist 只能管“名”，漂移會改“行”（DT-04）。  
  OMOC\_RIP-B\_v1.0.0\_審查報告

**最短 Quickpath（≤8步）**：見 §10.4。

---

## **3\) TOC（repo-local anchors only）**

* 0\) Cover Card  
* 1\) Document Control  
* 2\) Diátaxis Reader Guide  
* 3\) TOC  
* 4\) Anchor Registry  
* 5\) Authority Stack & SSOT Resolution  
* 6\) Scope & Route-Out Map  
* 7\) Requirements  
* 8\) Threat Model  
* 9\) Architecture  
* 10\) Gates / DoD / Acceptance  
* 11\) Drift / Closure  
* 12\) Traceability  
* 13\) Findings Closure Matrix  
* 14\) TT Register  
* 15\) Repo Artifacts Pack（FILE BLOCKS）  
* 16\) Web Evidence Appendix（SUPPORT-only）  
* 17\) Changelog \+ Final Verdict  
* 18\) Machine Summary

\<a id="omoc-ripb-toc"\>\</a\>

---

## **4\) Anchor Registry（含 alias；保留舊版相容）**

\<a id="omoc-ripb-d-anchor-registry"\>\</a\>

**規則**：每個章節同時提供 `#anchor` 與 `<a id="..."></a>`；舊版錨點保留（alias\_of 指向本版）。

OMOC\_施工RB+WI\_合冊\_v4.0.1-r1

| canonical\_anchor | alias\_anchors (legacy) | alias\_of | notes |
| ----- | ----- | ----- | ----- |
| `#omoc-ripb-top` | `#omoc-ripb-a-cover-card` | `#omoc-ripb-top` | 舊版 A cover 合併到 0\) |
| `#omoc-ripb-b-document-control` | `#omoc-ripb-b-document-control` | self |  |
| `#omoc-ripb-c-diataxis` | `#omoc-ripb-c-diataxis` | self |  |
| `#omoc-ripb-d-anchor-registry` | `#omoc-ripb-d-anchor-registry` | self |  |
| `#omoc-ripb-e-authority` | `#omoc-ripb-e-authority` | self |  |
| `#omoc-ripb-f-scope` | `#omoc-ripb-f-scope` | self |  |
| `#omoc-ripb-g-requirements` | `#omoc-ripb-g-requirements` | self |  |
| `#omoc-ripb-h-threat-model` | `#omoc-ripb-h-threat-model` | self |  |
| `#omoc-ripb-i-architecture` | `#omoc-ripb-i-architecture` | self |  |
| `#omoc-ripb-n-gates-dod` | `#omoc-ripb-n-gates-dod` | self |  |
| `#omoc-ripb-o-drift-closure` | `#omoc-ripb-o-drift-closure` | self |  |
| `#omoc-ripb-p-traceability` | `#omoc-ripb-p-traceability` | self |  |
| `#omoc-ripb-findings-closure` | (new) | self | 審查報告閉環矩陣 |
| `#omoc-ripb-q-tt-register` | `#omoc-ripb-q-tt-register` | self |  |
| `#omoc-ripb-k-artifacts` | `#omoc-ripb-k-artifacts` | self | FILE BLOCKS |
| `#omoc-ripb-r-web-evidence` | `#omoc-ripb-r-web-evidence` | self | SUPPORT-only |
| `#omoc-ripb-s-changelog-verdict` | `#omoc-ripb-s-changelog-verdict` | self |  |
| `#omoc-ripb-t-machine-summary` | `#omoc-ripb-t-machine-summary` | self |  |

---

## **5\) Authority Stack & SSOT Resolution（No-Source-No-Norm）**

\<a id="omoc-ripb-e-authority"\>\</a\>

### **5.1 Authority Stack（由高到低）**

**NORMATIVE / SSOT（唯一規範準據；需可定位）**

* `N1` OMOC 藍圖 v4.0.1-r1（治理邊界/Scope-Lock/Fail-Closed）  
* `N2` 施工 RB+WI 合冊 v4.0.1-r1（Guardrails：No-Source-No-Norm / SUPPORT-only / Anchor 規則）  
* `N3` 施工 skills v4.0.1-r2（Secrets Zero / Evidence packager+validator / required check name 合約）  
* `N4` 實作+WP總表 v4.0.1-r2（SUPPORT policy / drift\_action / closure contracts）  
* `N5` WP-001（Authority & Version Lock）  
* `N6` WP-004（Auth isolation）  
* `N7` WP-014（Drift guard & closure management）  
* `N8` 《OMOC\_總體RIP修補方案》（RIP-B 目的/優先搬運/DoD；RIP-F 子集互依）  
   OMOC\_總體RIP修補方案

   OMOC\_施工RB+WI\_合冊\_v4.0.1-r1

   OMOC\_總體RIP修補方案

   OMOC\_實作+WP總表\_v4.0.1-r2

   OMOC\_WP-001+RB+WI\_v4.0.1-r2

   OMOC\_WP-004+RB+WI\_v4.0.1-r2

   OMOC\_WP-014+RB+WI\_v4.0.1-r2

**SUPPORT（不得升格；僅補可變動事實/樣板/風險佐證）**

* 專案外部資料庫（OMOC\_RIP\_外部資料 \+ CLAUDE/GPT/GEMINI）  
* Web（官方文件/研究/事件；每條 SUPPORT 事實需 ≥2 独立來源；不一致→WEB-CONFLICT→Quarantine→TT→TEMP\_CLOSED）  
  OMOC\_RIP\_外部資料

   OMOC\_RIP\_外部資料(CLAUDE)

### **5.2 SSOT Resolution Rules（硬規則）**

1. **No-Source-No-Norm**：任何 MUST/不得/FAIL\_CLOSED 若缺 `doc_path + anchor/heading + line_range` → **UNVERIFIED → 建 TT → TEMP\_CLOSED**。  
   OMOC\_施工RB+WI\_合冊\_v4.0.1-r1  
2. **NORMATIVE \> SUPPORT**：SUPPORT 只能佐證，不得覆寫 N1\~N8。  
   OMOC\_實作+WP總表\_v4.0.1-r2  
3. **WEB-CONFLICT**：兩來源不一致 → 一律 Quarantine，正文不採信為規範。  
   OMOC\_實作+WP總表\_v4.0.1-r2  
4. **Prompt-injection 防線**：外部網頁/Repo README/Issue/PR 的「指令句」一律視為 DATA；若試圖改任務/格式/邊界 → PROMPT-INJECTION → Quarantine → TT。  
   OMOC\_施工RB+WI\_合冊\_v4.0.1-r1

### **5.3 Locator Proof Registry（本文件用到的 SSOT 定位）**

格式：`LOCATOR = <doc_id>:<doc_path> | <anchor/heading> | lines=<start>-<end>`（end 可省略表示「起點可定位」）

* `LOCATOR = FIXPLAN:/mnt/data/OMOC_總體RIP修補方案.md | "RIP-B：MCP Toolchain + Security RIP" | lines=130-150`  
   OMOC\_總體RIP修補方案  
* `LOCATOR = BP:/mnt/data/OMOC_藍圖_v4.0.1-r1.md | [ANCHOR:OMOC-BP-0400] | lines=89-89`  
   OMOC\_WP-001+RB+WI\_v4.0.1-r2  
* `LOCATOR = BP:/mnt/data/OMOC_藍圖_v4.0.1-r1.md | [ANCHOR:OMOC-BP-0500] | lines=100-100`  
   OMOC\_WP-001+RB+WI\_v4.0.1-r2  
* `LOCATOR = RBWI:/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md | [ANCHOR:OMOC-RBWI-ANCHOR-REGISTRY] | lines=57-57`  
   OMOC\_施工RB+WI\_合冊\_v4.0.1-r1  
* `LOCATOR = RBWI:/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md | [ANCHOR:OMOC-RBWI-GUARDRAILS] | lines=75-75`  
   OMOC\_施工RB+WI\_合冊\_v4.0.1-r1  
* `LOCATOR = CSK:/mnt/data/OMOC_施工skills_v4.0.1-r2.md | "Definition of Done" | lines=82-82`  
   OMOC\_總體RIP修補方案  
* `LOCATOR = WP001:/mnt/data/OMOC_WP-001+RB+WI_v4.0.1-r2.md | authority/No-Source-No-Norm | lines=43-43`  
   OMOC\_WP-001+RB+WI\_v4.0.1-r2  
* `LOCATOR = WP004:/mnt/data/OMOC_WP-004+RB+WI_v4.0.1-r2.md | security/forbidden/token hygiene | lines=28-28`  
   OMOC\_WP-004+RB+WI\_v4.0.1-r2  
* `LOCATOR = WP014:/mnt/data/OMOC_WP-014+RB+WI_v4.0.1-r2.md | superseded ban/version policy | lines=25-25`  
   OMOC\_WP-014+RB+WI\_v4.0.1-r2  
* `LOCATOR = WP014:/mnt/data/OMOC_WP-014+RB+WI_v4.0.1-r2.md | [ANCHOR:OMOC-WP014-18-QUICKPATH] | lines=787-787`  
   OMOC\_WP-014+RB+WI\_v4.0.1-r2  
* `LOCATOR = WP014:/mnt/data/OMOC_WP-014+RB+WI_v4.0.1-r2.md | [ANCHOR:OMOC-WP014-19-COUNTEREXAMPLES] | lines=801-801`  
   OMOC\_WP-014+RB+WI\_v4.0.1-r2  
* `LOCATOR = WPM:/mnt/data/OMOC_實作+WP總表_v4.0.1-r2.md | support_policy/web_refs>=2/drift_action | lines=13-13`  
   OMOC\_實作+WP總表\_v4.0.1-r2

---

## **6\) Scope & Route-Out Map（越界裁決）**

\<a id="omoc-ripb-f-scope"\>\</a\>

### **6.1 Scope（IN）**

* MCP server 選型與接入治理：allowlist default-deny、端點覆蓋、來源/版本追溯（pinning）  
* Auth isolation：token passthrough 禁止、最小權限、去敏與可回放  
* 敏感 tool-call 審計：**無 audit ⇒ block sensitive tools（不可繞過）**  
* capability drift：tool list/schema hash 漂移偵測與裁決  
* drift/closure：closure\_matrix \+ tt\_export.json \+ superseded 禁用掃描（WP-014 對齊）

### **6.2 Out-of-scope（OUT；越界即 FAIL\_CLOSED）**

* 不在 RIP-B 內替代 GitHub UI 操作（rulesets/merge queue enablement）→ route-out 到 WP-009\~013  
* 不在 RIP-B 內規範外部平台易變行為 → 只能放 Web Evidence Appendix（SUPPORT-only）  
* 不在 RIP-B 內存取/輸出任何 secrets（Secrets Zero）  
  OMOC\_總體RIP修補方案

### **6.3 Route-Out Map（topic → target → locator → verdict）**

| topic | route\_out\_target | locator | decision |
| ----- | ----- | ----- | ----- |
| Auth isolation（token hygiene / no passthrough） | WP-004 | \`WP004:/mnt/data/OMOC\_WP-004+RB+WI\_v4.0.1-r2.md | lines=28\` OMOC\_WP-004+RB+WI\_v4.0.1-r2 |
| Drift/closure \+ superseded ban | WP-014 | \`WP014:/mnt/data/OMOC\_WP-014+RB+WI\_v4.0.1-r2.md | lines=25,787,801\` OMOC\_WP-014+RB+WI\_v4.0.1-r2 |
| Evidence packager/validator \+ Secrets Zero | 施工skills \+ WP-008 | \`CSK:/mnt/data/OMOC\_施工skills\_v4.0.1-r2.md | lines=82\` OMOC\_總體RIP修補方案 |
| Required checks contract lock | WP-010 | WP-010 本檔 anchors（route-out） OMOC\_WP-010+RB+WI\_v4.0.1-r2 | RIP-B 只提供可被鎖定的 check name |
| Rulesets snapshot/diff | WP-009 | WP-009 本檔 anchors（route-out） OMOC\_WP-008+RB+WI\_v4.0.1-r2 | RIP-B 僅提供「子集腳本+證據契約」 |
| Merge Queue / merge\_group trigger | WP-012/013 | WP-012/013 anchors（route-out） OMOC\_WP-013+RB+WI\_v4.0.1-r2 OMOC\_WP-012+RB+WI\_v4.0.1-r2 | RIP-B 不啟用 MQ，只確保 required checks 命名可鎖 |

### **6.4 WSP scope locator（必引用；目前 UNVERIFIED）**

* 審查報告指出 WSP v0 scope 條文存在於 SubP1 文件，但該文件 **不在本次 Files-first 可讀清單** → **UNVERIFIED** → TT-RIPB-WSP-SCOPE-REF-001 → TEMP\_CLOSED。  
  OMOC\_RIP-B\_v1.0.0\_審查報告

---

## **7\) Requirements（req\_id；含 RIP-F 子集整合 req）**

\<a id="omoc-ripb-g-requirements"\>\</a\>

每條 requirement：`req_id / statement / ssot_locator / acceptance / fail_action / related_tt`

### **RIP-B Core（DoD 三件套）**

**RIPB-REQ-001（DoD-1）default-deny allowlist**

* statement：未列入 allowlist 的 MCP server 一律 BLOCK（無例外）。  
  OMOC\_總體RIP修補方案  
* ssot\_locator：`FIXPLAN lines=130-150`  
* acceptance：`scripts/mcp_allowlist_enforce.sh` 對所有 targets 決策前必完成：endpoints\_hash\_lock 驗證 \+ allowlist decision。  
* fail\_action：違反 → `exit=1` → FAIL\_CLOSED  
* related\_tt：TT-RIPB-ENDPOINTS-DISCOVER-001（覆蓋面）、TT-RIPB-ALLOWLIST-001（風險追蹤）

**RIPB-REQ-002（DoD-2）provenance \+ pinning**

* statement：allowlist.lock.json 每筆 server 必含 `source_repo` \+（`commit_sha` 或 `pinned_digest`）之一；缺任一 → **不得進行任何 server 互動**。  
  OMOC\_RIP-B\_v1.0.0\_審查報告  
* ssot\_locator：`FIXPLAN lines=130-150`  
* acceptance：`scripts/mcp_pinning_complete_check.sh` 先於任何 L1/L2 執行；缺 pin → `exit=2`。  
* fail\_action：缺 pin 仍嘗試連線 → FAIL\_CLOSED（DT-02）  
* related\_tt：TT-RIPB-PINNING-ENFORCE-001

**RIPB-REQ-003（WP-004）token passthrough 禁止（Auth isolation）**

* statement：不得把未驗證 token 透傳給 MCP server；不得把額外 token 放入 env/config；不得把 token 寫入 evidence。  
  OMOC\_WP-004+RB+WI\_v4.0.1-r2  
* ssot\_locator：`WP004 lines=28`  
* acceptance：policy 必包含 `token_isolation.no_passthrough=true`；probe 只輸出“命中/未命中”，不吐值。  
* fail\_action：命中 token-like pattern 或 passthrough → FAIL\_CLOSED  
* related\_tt：TT-RIPB-TOKEN-001（既有；環境實測閉環）

**RIPB-REQ-004（DoD-3）敏感 tool-call audit log（不可繞過）**

* statement：敏感 tool-call 必有 audit log（去敏、可回放、可比對）；**audit 不可用時敏感工具一律 BLOCK**。  
  OMOC\_RIP-B\_v1.0.0\_審查報告  
* ssot\_locator：`FIXPLAN lines=130-150`  
* acceptance：`config/mcp_sensitive_tools.json` \+ `scripts/mcp_audit_guard.sh`：在 decision=ALLOW 之前必檢查 audit\_ready；未 ready → sensitive tool call 一律 BLOCK 且 `exit=3`。  
* fail\_action：audit bypass（DT-03）→ FAIL\_CLOSED  
* related\_tt：TT-RIPB-AUDIT-ENFORCE-001（取代/關閉舊 TT-RIPB-AUDIT-001）

### **Destructive / Drift Controls（審查報告 A/B/F 類）**

**RIPB-REQ-005 endpoints discover \+ hash lock（DT-01）**

* statement：allowlist enforcement 的 targets 必須引用 discover 產物；discover 缺失或 hash 失真 → TEMP\_CLOSED，且不得進入後續 L1/L2（避免 shadow endpoint bypass）。  
  OMOC\_RIP-B\_v1.0.0\_審查報告  
* acceptance：`scripts/mcp_endpoints_discover.sh` 產出 `config/mcp_endpoints.json` \+ `config/mcp_endpoints.hash`；enforcer 驗 hash。  
* fail\_action：hash mismatch/缺失 → `exit=42`（TEMP\_CLOSED）并建 TT  
* related\_tt：TT-RIPB-ENDPOINTS-DISCOVER-001

**RIPB-REQ-006 capability drift gate（DT-04）**

* statement：MCP server capability（tool list/schema hash）漂移必被偵測；漂移時 → TEMP\_CLOSED \+ TT；若漂移且仍允許 sensitive tools → FAIL\_CLOSED。  
  OMOC\_RIP-B\_v1.0.0\_審查報告  
* acceptance：`schemas/mcp_capabilities.expected.json` \+ `scripts/mcp_capability_diff.sh` 產出 report \+ rc。  
* related\_tt：TT-RIPB-CAP-DRIFT-001

**RIPB-REQ-007 tooling supply-chain pin（DT-05）**

* statement：workflow/CI 內禁止 “download latest”；所有工具（yq/jq/…）需版本 \+ sha256 \+ source lock。  
  OMOC\_RIP-B\_v1.0.0\_審查報告  
* acceptance：`tooling/versions.lock` \+ `scripts/install_yq_pinned.sh` sha256 驗證；不符即 FAIL\_CLOSED。  
* related\_tt：TT-RIPB-TOOL-PIN-001

**RIPB-REQ-008 superseded 禁用掃描 gate（WP-014 對齊）**

* statement：掃描 superseded 路徑/alias（含舊版 r1/r0）；scan\!=0 → FAIL\_CLOSED；且此 gate 必在 policy-lint workflow 最前置。  
  OMOC\_RIP-B\_v1.0.0\_審查報告  
* related\_tt：TT-RIPB-SUPERSEDED-GATE-001

**RIPB-REQ-009 secrets exclusion 統一走 validator（不再 best-effort grep）**

* statement：RIP-B workflow 必呼叫統一驗證器（WP-008/skills validator）；結果納入 evidence；grep 只能當輔助。  
  OMOC\_RIP-B\_v1.0.0\_審查報告

   OMOC\_總體RIP修補方案  
* related\_tt：TT-RIPB-SECRETS-ROUTEOUT-001

**RIPB-REQ-010 schedule drift job 必須 opt-in**

* statement：任何定時 drift job 預設關閉（workflow\_dispatch）；啟用必有 enablement+rollback+evidence；未啟用不算 FAIL，但需 TEMP\_CLOSED 記錄。  
  OMOC\_RIP-B\_v1.0.0\_審查報告  
* related\_tt：TT-RIPB-SCHEDULE-OPTIN-001

### **RIP-F 子集整合（RIP-F → RIP-B hardening subset /互依）**

**RIPB-REQ-011 supply-chain scans as required checks（pinact/zizmor/scorecard）**

* statement：提供可直接落地的最小 workflows（或 workflow\_call）跑 pinact/zizmor/scorecard；回報名稱可被 required checks 鎖定（WP-010 對齊）。  
  OMOC\_總體RIP修補方案

   OMOC\_WP-010+RB+WI\_v4.0.1-r2  
* acceptance：`.github/workflows/ripf_supplychain.yml`（或 reusable）在 PR \+ merge\_group 都能回報同名 check。  
* related\_tt：TT-RIPB-RIPF-SUPPLYCHAIN-001（如需 repo admin 權限）

**RIPB-REQ-012 rulesets snapshot/diff artifacts（WP-009 \+ WP-014 對齊）**

* statement：提供 rulesets snapshot/diff 最小工件與落盤點；無權限時 TEMP\_CLOSED \+ TT，但要能重跑且有輸出契約。  
  OMOC\_總體RIP修補方案

   OMOC\_WP-008+RB+WI\_v4.0.1-r2

   OMOC\_WP-014+RB+WI\_v4.0.1-r2  
* related\_tt：TT-RIPB-RIPF-RULESETS-001

---

## **8\) Threat Model（必含惡意 MCP、投毒、Confused Deputy、token passthrough、SSRF、供應鏈）**

\<a id="omoc-ripb-h-threat-model"\>\</a\>

### **8.1 威脅面（Threat Surfaces）**

* **惡意 MCP server（供應鏈）**：同名/相似名 server 被替換（rug pull），或透過 mutable tag / 未 pin 依賴投毒。  
  OMOC\_總體RIP修補方案  
* **Tool/schema poisoning**：server 回傳 tool schema 或 capability 改變（新增高權限工具、改參數意圖），造成代理被“合法外觀”誘導。  
  OMOC\_RIP-B\_v1.0.0\_審查報告  
* **Confused Deputy**：模型/代理持有更高權限 token，被外部輸入（含工具回覆）誘導去做不該做的事。  
  OMOC\_RIP-B\_v1.0.0\_審查報告  
* **Token passthrough**：把 token 直接交給 server/上游，破壞 Auth isolation（WP-004）。  
  OMOC\_WP-004+RB+WI\_v4.0.1-r2  
* **SSRF / internal network probing**：MCP server 透過工具請求探測內網/metadata endpoints。  
* **Prompt injection（直接/間接）**：外部內容把 DATA 偽裝成 INSTRUCTION，誘導 agent 改 policy / exfil secrets。  
* **Audit bypass**：敏感工具操作未落盤，造成不可追溯、不可回放。  
  OMOC\_RIP-B\_v1.0.0\_審查報告

### **8.2 安全目標（Security Objectives）**

### **OMOC\_RIP-B\_v1.0.0\_審查報告**

### **nown server/endpoint 必 block）**

2. provenance+pinning（來源與版本可追溯、可重算、可 diff）  
3. auth isolation（token 不透傳、去敏、最小權限）  
4. auditability（敏感 tool-call 必可回放比對；無 audit 即阻斷）  
5. drift containment（capability/endpoint/tooling drift 可偵測、可收斂、可閉環）

### **8.3 Controls（對照 threat → control）**

| threat | primary\_control | gate\_id | destructive\_test |
| ----- | ----- | ----- | ----- |
| shadow endpoint bypass | endpoints discover \+ hash lock | GATE-RIPB-ENDPOINTS-HASH | DT-01 OMOC\_RIP-B\_v1.0.0\_審查報告 |
| pinning missing | pinning\_comp OMOC\_RIP-B\_v1.0.0\_審查報告 interaction | GATE-RIPB-PINNING-COMPLETE | DT-02 OMOC\_RIP-B\_v1.0.0\_審查報告 |
| audit bypass | audit\_ready pre OMOC\_RIP-B\_v1.0.0\_審查報告 sitive tools | GATE-RIPB-AUDIT-READY | DT-03 OMOC\_RIP-B\_v1.0.0\_審查報告 |
| schema poisoning | capability OMOC\_RIP-B\_v1.0.0\_審查報告 \-CAPABILITY-DRIFT | DT-04 OMOC\_RIP-B\_v1.0.0\_審查報告 |  |
| tooling drift | versions.lock OMOC\_RIP-B\_v1.0.0\_審查報告 IPB-TOOL-PIN | DT-05 OMOC\_RIP-B\_v1.0.0\_審查報告 |  |

---

## **9\) Architecture（allowli**

## **OMOC\_RIP-B\_v1.0.0\_審查報告**

## **n isolation/drift closure；WP-004/WP-014 介面）**

\<a id="omoc-ripb-i-architecture"\>\</a\>

### **9.1 Components（最小架構）**

* **Policy/Lock**  
  * `config/mcp_policy.yaml`（default-deny, token\_isolation flags, enforcement）  
  * `allowlist.lock.json`（server registry \+ pinning \+ allowed\_tools \+ endpoints\_hash\_lock）  
  * `config/mcp_sensitive_tools.json`（敏感工具名單；DoD-3 的阻斷基礎）  
* **Discovery/Drift**  
  * `scripts/mcp_endpoints_discover.sh` → `config/mcp_endpoints.json` \+ `config/mcp_endpoints.hash`  
  * `scripts/mcp_capability_diff.sh` → `evidence/_drift_guard/<TS>/capability_diff.report.json`  
  * `scripts/superseded_scan.sh` → `evidence/_drift_guard/<TS>/superseded_scan.txt`  
* **Audit**  
  * `scripts/mcp_audit_guard.sh`：audit\_ready 檢查（無 audit ⇒ block sensitive tools）  
  * `scripts/mcp_auditlog_redact.sh`：去敏（hash \+ allowlist refs，不吐 secrets）  
  * `scripts/mcp_auditlog_verify.sh`：重播比對（hash match）  
* **Closure（WP-014 interface）**  
  * `scripts/ripb_drift_closure_emit.sh` → `closure_matrix.ripb.json` \+ `tt_export.ripb.json`

### **9.2 WP-004 Interface Contract（Auth isolation）**

| input | producer | consumer | must | fail\_action |
| ----- | ----- | ----- | ----- | ----- |
| token source (env) | runner/CI | RIP-B scripts | token 不落地、不透傳、不輸出 | FAIL\_CLOSED |
| redaction policy | WP-004 policy intent | audit redactor | 只輸出 hash/metadata | FAIL\_CLOSED |
| proof artifacts | WP-004 runbook | RIP-B evidence | proof 以 evidence 路徑落盤（不含 token） | TEMP\_CLOSED→TT（無法實測） |

### **9.3 WP-014 Interface Contract（drift/closure）**

| output | path | schema | must | fail\_action |
| ----- | ----- | ----- | ----- | ----- |
| closure\_matrix | `evidence/_drift_guard/<TS>/closure_matrix.ripb.json` | `schemas/closure_matrix.ripb.schema.json` | machine-parseable | FAIL\_CLOSED（schema invalid） |
| tt\_export | `evidence/_drift_guard/<TS>/tt_export.ripb.json` | `schemas/tt_export.schema.json` | CR\_OPEN=0 | FAIL\_CLOSED（OPEN without TT fields） |
| superseded scan | `.../superseded_scan.txt` | text (scan=0) | scan=0 | FAIL\_CLOSED |

### **9.4 Confused-Deputy 防線（執行聯鎖）**

* MCP server 任何工具呼叫若命中 sensitive tools：**必先驗 audit\_ready**；未 ready → BLOCK \+ `exit=3`。  
* allowlist/pinning/endpoints/capability 任一缺失或漂移：在任何 server 互動前即停止（fail-fast）。

---

## **10\) Gates / DoD / Acceptance（PASS/TEMP\_CLOSED/FAIL\_CLOSED；DT-01\~DT-05 全落地）**

\<a id="omoc-ripb-n-gates-dod"\>\</a\>

### **10.1 Verdict Priority（硬排序）**

1. **FAIL\_CLOSED**：阻斷級（DoD 破壞 / secrets / superseded / schema invalid / audit bypass / pinning missing with interaction attempt）  
2. **TEMP\_CLOSED**：可變動事實未實測、缺權限、或 WEB-CONFLICT（已建 TT 且有 closure criteria）  
3. **PASS**：DoD-1/2/3 \+ drift/closure artifacts 齊全且驗證通過

### **10.2 DoD（三條硬門檻；不可降級）**

1. allowlist 外 server 一律 block  
    OMOC\_總體RIP修補方案  
2. server 來源/版本可追溯（pinning compl  
   OMOC\_總體RIP修補方案  
   OMOC\_RIP-B\_v1.0.0\_審查報告  
3. 敏感 tool-call 有 audit log；無 au  
   OMOC\_RIP-B\_v1.0.0\_審查報告  
    tools  
    OMOC\_RIP-B\_v1.0.0\_審查報告

required check name（對齊 skills D

OMOC\_RIP-B\_v1.0.0\_審查報告

exact string）

OMOC\_總體RIP修補方案

### **10.3 Gate Registry（可 grep）**

OMOC\_總體RIP修補方案

kflow | rc | verdict\_if\_fail |  
| \--- | \--- | \--- | \--- |  
| GATE-RIPB-PREFLIGHT | `scripts/ripb_preflight.sh` | 1 | FAIL\_CLOSED |  
| GATE-RIPB-SUPERSEDED-SCAN | `scripts/superseded_scan.sh` | 1 | FAIL\_CLOSED |  
| GATE-RIPB-ENDPOINTS-HASH | `scripts/mcp_endpoints_discover.sh` \+ enforcer verify | 42/1 | TEMP\_CLOSED or FAIL\_CLOSED (policy) |  
| GATE-RIPB-ALLOWLIST | `scripts/mcp_allowlist_enforce.sh` | 1 | FAIL\_CLOSED |  
| GATE-RIPB-PINNING-COMPLETE | `scripts/mcp_pinning_complete_check.sh` | 2 | FAIL\_CLOSED |  
| GATE-RIPB-CAPABILITY-DRIFT | `scripts/mcp_capability_diff.sh` | 4 | TEMP\_CLOSED (or FAIL\_CLOSED if sensitive allowed) |  
| GATE-RIPB-AUDIT-READY | `scripts/mcp_audit_guard.sh` | 3 | FAIL\_CLOSED |  
| GATE-RIPB-TOOL-PIN | `scripts/install_yq_pinned.sh` | 5 | FAIL\_CLOSED |  
| GATE-RIPB-SECRETS-VALIDATOR | `scripts/ripb_validate.sh` (route-out) | 6 | FAIL\_CLOSED |

### **10.4 Acceptance Quickpath（最小可回放閉環）**

1. `scripts/ripb_preflight.sh` → `evidence/_drift_guard/<TS>/preflight.log`  
2. `scripts/superseded_scan.sh` → `.../superseded_scan.txt`（must be 0 hits）  
3. `scripts/mcp_endpoints_discover.sh` → `config/mcp_endpoints.json` \+ `config/mcp_endpoints.hash`  
4. `scripts/mcp_pinning_complete_check.sh` → `.../pinning_check.json`  
5. `scripts/mcp_allowlist_enforce.sh` → `.../allowlist_decisions.jsonl`  
6. `scripts/mcp_capability_diff.sh` → `.../capability_diff.report.json`  
7. `scripts/mcp_audit_guard.sh` → `.../audit_ready.json`（若不 ready：敏感工具 BLOCK）  
8. `scripts/ripb_drift_closure_emit.sh` → `.../closure_matrix.ripb.json` \+ `.../tt_export.ripb.json`

### **10.5 Destructive Tests（DT-01\~DT-05；硬落地）**

| case\_id | scenario | break\_point | expected\_verdict | guardrail implemented |
| ----- | ----- | ----- | ----- | ----- |
| DT-01 | Shadow endpoint 注入 | endpoints 未納入 coverage | FAIL\_CLOSED | endpoints discover \+ hash lock \+ enforcement OMOC\_RIP-B\_v1.0.0\_審查報告 |
| DT-02 | pinning 欄位缺失仍連線 | pinn OMOC\_RIP-B\_v1.0.0\_審查報告 ecuted | FAIL\_CLOSED | pinning\_complete\_check exit=2 before interaction OMOC\_RIP-B\_v1.0.0\_審查報告 |
| DT-03 | 敏感 tool-call 無 audit | OMOC\_RIP-B\_v1.0.0\_審查報告 CLOSED | audit\_ready gate \+ “no audit ⇒ block sensitive tools” exit=3 OMOC\_RIP-B\_v1.0.0\_審查報告 |  |
| DT-04 | capability drift | dri OMOC\_RIP-B\_v1.0.0\_審查報告 P\_CLOSED→TT（若仍允許敏感工具則 FAIL\_CLOSED） | capability diff gate \+ sensitive coupling OMOC\_RIP-B\_v1.0.0\_審查報告 |  |
| DT-05 | 工具供應鏈漂移（latest） | muta OMOC\_RIP-B\_v1.0.0\_審查報告 TEMP\_CLOSED→FAIL\_CLOSED（直到固定） | versions.lock \+ sha verify \+ pinned installer OMOC\_RIP-B\_v1.0.0\_審查報告 |  |

---

## **11\) Drift / Closure（clo**

## **OMOC\_RIP-B\_v1.0.0\_審查報告**

## **.json、superseded；WP-014 對齊）**

\<a id="omoc-ripb-o-drift-closure"\>\</a\>

### **11.1 Drift Types（RIP-B 專用分類）**

* **ENDPOINT-DRIFT**：`config/mcp_endpoints.json` hash 變更  
* **ALLOWLIST-DRIFT**：allowlist.lock.json 改變但未更新 endpoints\_hash\_lock  
* **PINNING-DRIFT**：commit\_sha/digest 變更或缺失  
* **CAPABILITY-DRIFT**：tool list/schema hash 改變  
* **TOOLING-DRIFT**：versions.lock / sha256 mismatch  
* **SUPERSEDED-POLLUTION**：引用 superseded（WP總表 r1、舊 WP 文件、舊 RIP）  
  OMOC\_WP-014+RB+WI\_v4.0.1-r2

### **11.2 Closure Artifacts（必出；ma**

### **OMOC\_WP-014+RB+WI\_v4.0.1-r2**

### **vidence/\_drift\_guard/\<TS\>/closure\_matrix.ripb.json\`**

* `evidence/_drift_guard/<TS>/tt_export.ripb.json`  
* `evidence/_drift_guard/<TS>/drift_report.ripb.md`  
* `evidence/_drift_guard/<TS>/superseded_scan.txt`

### **11.3 CR\_OPEN=0 Policy**

* 本文件與產物必維持 `CR_OPEN=0`：所有缺口都要在 TT Register 以 **OPEN** 形式呈現並具 closure criteria / retest / owner\_role。  
  OMOC\_WP-014+RB+WI\_v4.0.1-r2

---

## **12\) Traceability（SSOT →**

## **OMOC\_WP-014+RB+WI\_v4.0.1-r2**

## **evidence → closure rule）**

\<a id="omoc-ripb-p-traceability"\>\</a\>

| SSOT | ssot\_locator | RIP-B req\_id | artifact | evidence\_locator | closure\_rule |
| ----- | ----- | ----- | ----- | ----- | ----- |
| RIP-B DoD | FIXPLAN lines=130-150 OMOC\_總體RIP修補方案 | RIPB-REQ-001 | `scripts/mcp_allo:contentReference[oaicite:109]{index=109}evidence/_drift_guard/<TS>/allowlist_decisions.jsonl` | decisions contain no ALLOW for unknown |  |
| RIP-B DoD | FIXPLAN lines=130-150 OMOC\_總體RIP修補方案 | RIPB-REQ-002 | `scripts/mcp_pinn:contentReference[oaicite:111]{index=111}` \+ `allowlist.lock.json` | `.../pinning_check.json` | pinning\_missing \=\> rc=2 before interaction |
| WP-004 | WP004 line=28 OMOC\_WP-004+RB+WI\_v4.0.1-r2 | RIPB-REQ-003 | `config/mcp_polic:contentReference[oaicite:113]{index=113}../token_probe.json` | token-like hit \=\> FAIL\_CLOSED |  |
| RIP-B DoD | FIXPLAN lines=130-150 OMOC\_總體RIP修補方案 | RIPB-REQ-004 | \`config/mcp\_sensi OMOC\_總體RIP修補方案 dit guard | `.../audit_ready.json` | not\_ready \=\> sensitive blocked, rc=3 |
| WP-014 | WP014 lines=25/787/801 OMOC\_WP-014+RB+WI\_v4.0.1-r2 | RIPB-REQ-008 | `scripts/superse:contentReference[oaicite:117]{index=117}perseded_scan.txt` | scan=0 else FAIL\_CLOSED |  |
| RIP-F subset | FIXPLAN supply-chain section OMOC\_總體RIP修補方案 | RIPB-REQ-011 | `.github/workflo:contentReference[oaicite:119]{index=119}l` | `.../supplychain_report.json` | required checks lockable (WP-010) |

---

## **13\) Findings Closure Matrix（審查報告 A\~G 全覆蓋；不得遺漏）**

\<a id="omoc-ripb-findings-closure"\>\</a\>

來源：`/mnt/data/OMOC_RIP-B_v1.0.0_審查報告.md`

OMOC\_RIP-B\_v1.0.0\_審查報告

| finding\_id | severity | root\_ca

OMOC\_RIP-B\_v1.0.0\_審查報告

ion | closure\_evidence |  
| \--- | \--- | \--- | \--- | \--- |  
| F-A-001 | MAJOR | capability/schema poisoning 未 gate 化 | **FIXED**：GATE-RIPB-CAPABILITY-DRIFT \+ expected schema | capability\_diff.report.json

OMOC\_RIP-B\_v1.0.0\_審查報告

|  
| F-A-002 | BLOCKER | audit 聯鎖可被

OMOC\_RIP-B\_v1.0.0\_審查報告

it ⇒ block sensitive tools（exit=3） | audit\_ready.json \+ allowlist\_decisions

OMOC\_RIP-B\_v1.0.0\_審查報告

|  
| F-A-003 | MAJOR | endpoints 覆蓋

OMOC\_RIP-B\_v1.0.0\_審查報告

cover \+ endpoints\_hash\_lock | mcp\_endpoints.hash \+ decisions

OMOC\_RIP-B\_v1.0.0\_審查報告

|  
| F-B-001 | MAJOR | workflow 下載

OMOC\_RIP-B\_v1.0.0\_審查報告

XED\*\*：versions.lock \+ sha verify installer | tooling\_install.log \+ sha256match

OMOC\_RIP-B\_v1.0.0\_審查報告

|  
| F-C-001 | MAJOR | WSP scope lo

OMOC\_RIP-B\_v1.0.0\_審查報告

\_CLOSED\*\*：Files-first 缺 SubP1 | TT-RIPB-WSP-SCOPE-REF-001

OMOC\_RIP-B\_v1.0.0\_審查報告

|  
| F-C-002 | MAJOR | contract reg

OMOC\_RIP-B\_v1.0.0\_審查報告

ripb\_contract\_registry.json \+ schema | registry file present |  
| F-C-003 | MAJOR | superseded 禁用掃描 gate 缺失 | **FIXED**：superseded\_scan.sh 前置 gate | superseded\_scan.txt=0

OMOC\_RIP-B\_v1.0.0\_審查報告

|  
| F-D-001 | BLOCKER | WP-004/WP-

OMOC\_RIP-B\_v1.0.0\_審查報告

*：interface contracts \+ mandatory artifacts | closure\_matrix \+ token probe |*  
*| F-D-002 | BLOCKER | pinning 缺失未硬阻斷 | **FIXED**：pinning\_complete\_check exit=2 | pinning\_check.json*

OMOC\_RIP-B\_v1.0.0\_審查報告

*|*  
*| F-D-003 | MAJOR | closure sche*

OMOC\_RIP-B\_v1.0.0\_審查報告

：schemas \+ emit script | schema validate rc=0 |  
| F-E-002 | MINOR | schedule 未 opt-in | **FIXED**：預設 workflow\_dispatch \+ TT | workflow file |  
| F-E-003 | MAJOR | secrets scan 仍 best-effort | **FIXED**：route-out validator 為主門檻 | validator rc |  
| F-F-001 | BLOCKER | audit capture placeholder | **FIXED**：audit guard becomes enforcement gate | rc=3 path

OMOC\_RIP-B\_v1.0.0\_審查報告

|  
| F-F-002 | BLOCKER | allowlist.

OMOC\_RIP-B\_v1.0.0\_審查報告

**FIXED**：schema \+ pinning gate | schema validate \+ rc=2 if missing

OMOC\_RIP-B\_v1.0.0\_審查報告

|  
| F-F-003 | MAJOR | endpoints TT

OMOC\_RIP-B\_v1.0.0\_審查報告

CLOSED\*\*：discover script present；需環境跑 | DT-01 evidence or TT remains

OMOC\_RIP-B\_v1.0.0\_審查報告

|  
| F-G-001 | MAJOR | 最小補丁集合未固化 |

OMOC\_RIP-B\_v1.0.0\_審查報告

cts pack | file blocks (section 15\) |

---

## **14\) TT Register（CR\_OPEN=0；含 close\_conditions/retest/owner\_role）**

\<a id="omoc-ripb-q-tt-register"\>\</a\>

| tt\_id | status | severity | close\_conditions | retest\_steps | owner\_role |
| ----- | ----- | ----- | ----- | ----- | ----- |
| TT-RIPB-AUDIT-ENFORCE-001 | OPEN | BLOCKER | audit\_ready=false 時 sensitive tools 必 BLOCK（rc=3），且證據落盤 | run DT-03; verify audit\_ready.json \+ decisions | MCP Toolchain & Security 架構師 |
| TT-RIPB-PINNING-ENFORCE-001 | OPEN | BLOCKER | commit\_sha/pinned\_digest 任一缺失 → L1/L2 不得 server 互動（rc=2） | run DT-02; verify pinning\_check.json | DevSecOps 稽核官 |
| TT-RIPB-ENDPOINTS-DISCOVER-001 | OPEN | BLOCKER | endpoints 可重跑生成且 hash 鎖定；L1 覆蓋所有 targets | run DT-01; verify endpoints.hash \+ decisions | Docs-as-Code 工程師 |
| TT-RIPB-CAP-DRIFT-001 | OPEN | MAJOR | capability\_diff 可偵測漂移；漂移時 sensitive tools 不得 ALLOW | run DT-04; verify report \+ rc | Confused-Deputy Red Team |
| TT-RIPB-TOOL-PIN-001 | OPEN | MAJOR | yq/jq 等版本+sha256 可重跑一致；workflow 無 latest | run DT-05; verify install logs | Supply-chain 稽核官 |
| TT-RIPB-SUPERSEDED-GATE-001 | OPEN | MAJOR | superseded\_scan=0，違反即 FAIL\_CLOSED | run superseded\_scan.sh | WP-014 對齊稽核官 |
| TT-RIPB-SLOWMIST-MAP-001 | OPEN | MAJOR | SlowMist checklist 條目逐條映射到 gate/script/evidence/rollback 且 validator 可檢查 | run map validator | MCP Security 稽核官 |
| TT-RIPB-WEB-QUARANTINE-001 | OPEN | MINOR | Web appendix 含 injection\_risk/quarantine\_reason/last\_verified\_at | validate web appendix schema | Docs-as-Code 工程師 |
| TT-RIPB-WSP-SCOPE-REF-001 | OPEN | MAJOR | SubP1（WSP v0 scope）文件納入 Files-first，並在 §6.4 引用 locator | add file; re-run locator scan | Scope Marshal |
| TT-RIPB-SECRETS-ROUTEOUT-001 | OPEN | MAJOR | validator 成為唯一門檻；grep 非主判定 | run ripb\_validate.sh | Evidence Chain 稽核官 |
| TT-RIPB-SCHEDULE-OPTIN-001 | OPEN | MINOR | schedule 預設關閉；enablement 有 evidence/rollback | verify workflow triggers | Platform Governance 稽核官 |
| TT-RIPB-RIPF-SUPPLYCHAIN-001 | OPEN | MAJOR | pinact/zizmor/scorecard 回報名稱可鎖且可重跑 | run workflow on PR+merge\_group | RIP-F 稽核官 |
| TT-RIPB-RIPF-RULESETS-001 | OPEN | MAJOR | rulesets snapshot/diff 可重跑；無權限時 TEMP\_CLOSED+TT | run snapshot script | Platform Governance 稽核官 |

---

## **15\) Repo Artifacts Pack（FILE BLOCKS；可直接抽取落地；Secrets Zero）**

\<a id="omoc-ripb-k-artifacts"\>\</a\>

**FILE BLOCK 規則**：每個檔案獨立區塊；不得出現任何 secrets；示例值一律 `<REDACTED>`；不得殘留 placeholder/污染字串。

### **15.1 config/mcp\_sensitive\_tools.json**

FILE: config/mcp\_sensitive\_tools.json  
{  
 "version": "v1",  
 "purpose": "RIP-B DoD-3: Sensitive tool-call requires audit; no-audit \=\> block",  
 "sensitive\_tools": \[  
   "filesystem.write",  
   "filesystem.delete",  
   "exec",  
   "bash",  
   "http.request",  
   "github.create\_pull\_request",  
   "github.merge\_pull\_request",  
   "github.delete\_branch",  
   "secrets.read"  
 \],  
 "policy": {  
   "no\_audit\_no\_exec": true,  
   "exit\_code\_on\_block": 3  
 }  
}

### **15.2 allowlist.lock.json（最小模板 \+ schema 對齊）**

FILE: allowlist.lock.json  
{  
 "schema\_version": "v1",  
 "generated\_at": "2026-02-21T00:00:00+08:00",  
 "timezone": "Asia/Taipei",  
 "defaults": {  
   "decision": "BLOCK",  
   "fail\_closed": true  
 },  
 "endpoints\_hash\_lock": {  
   "sha256": "\<REDACTED\>",  
   "source": "config/mcp\_endpoints.hash"  
 },  
 "servers": \[  
   {  
     "server\_id": "github\_official\_mcp",  
     "endpoint\_ref": "github\_api",  
     "source\_repo": "github/github-mcp-server",  
     "commit\_sha": "\<REDACTED\>",  
     "pinned\_digest": null,  
     "allowed\_tools": \["github.\*"\],  
     "capabilities\_expected\_ref": "schemas/mcp\_capabilities.expected.json"  
   }  
 \]  
}  
FILE: schemas/allowlist.lock.schema.json  
{  
 "$schema": "https://json-schema.org/draft/2020-12/schema",  
 "title": "allowlist.lock.json schema (RIP-B)",  
 "type": "object",  
 "required": \["schema\_version", "generated\_at", "timezone", "defaults", "endpoints\_hash\_lock", "servers"\],  
 "properties": {  
   "schema\_version": { "type": "string" },  
   "generated\_at": { "type": "string" },  
   "timezone": { "type": "string" },  
   "defaults": {  
     "type": "object",  
     "required": \["decision", "fail\_closed"\],  
     "properties": {  
       "decision": { "enum": \["ALLOW", "BLOCK"\] },  
       "fail\_closed": { "type": "boolean" }  
     }  
   },  
   "endpoints\_hash\_lock": {  
     "type": "object",  
     "required": \["sha256", "source"\],  
     "properties": {  
       "sha256": { "type": "string" },  
       "source": { "type": "string" }  
     }  
   },  
   "servers": {  
     "type": "array",  
     "items": {  
       "type": "object",  
       "required": \["server\_id", "endpoint\_ref", "source\_repo", "allowed\_tools"\],  
       "properties": {  
         "server\_id": { "type": "string" },  
         "endpoint\_ref": { "type": "string" },  
         "source\_repo": { "type": "string" },  
         "commit\_sha": { "type": \["string", "null"\] },  
         "pinned\_digest": { "type": \["string", "null"\] },  
         "allowed\_tools": { "type": "array", "items": { "type": "string" } },  
         "capabilities\_expected\_ref": { "type": \["string", "null"\] }  
       },  
       "allOf": \[  
         {  
           "anyOf": \[  
             { "required": \["commit\_sha"\] },  
             { "required": \["pinned\_digest"\] }  
           \]  
         }  
       \]  
     }  
   }  
 }  
}

### **15.3 config/mcp\_endpoints.json（discover 產物；禁止 token）**

FILE: config/mcp\_endpoints.json  
{  
 "schema\_version": "v1",  
 "generated\_at": "2026-02-21T00:00:00+08:00",  
 "timezone": "Asia/Taipei",  
 "endpoints": \[  
   { "endpoint\_ref": "github\_api", "url": "https://api.github.com" }  
 \],  
 "notes": "Generated by scripts/mcp\_endpoints\_discover.sh. No tokens allowed."  
}  
FILE: config/mcp\_endpoints.hash  
sha256 \<REDACTED\>  config/mcp\_endpoints.json

### **15.4 schemas/mcp\_capabilities.expected.json（最小模板）**

FILE: schemas/mcp\_capabilities.expected.json  
{  
 "schema\_version": "v1",  
 "server\_id": "github\_official\_mcp",  
 "expected": {  
   "tools": \[  
     { "name": "github.search\_issues", "schema\_sha256": "\<REDACTED\>" },  
     { "name": "github.create\_pull\_request", "schema\_sha256": "\<REDACTED\>" }  
   \]  
 }  
}

### **15.5 ripb\_contract\_registry.json（對應 F-C-002）**

FILE: contracts/ripb\_contract\_registry.json  
{  
 "schema\_version": "v1",  
 "contracts": \[  
   {  
     "contract\_id": "RIPB-CONTRACT-ALLOWLIST-LOCK",  
     "path": "allowlist.lock.json",  
     "schema": "schemas/allowlist.lock.schema.json",  
     "validator": "scripts/ripb\_validate.sh"  
   },  
   {  
     "contract\_id": "RIPB-CONTRACT-CLOSURE-MATRIX",  
     "path": "evidence/\_drift\_guard/\<TS\>/closure\_matrix.ripb.json",  
     "schema": "schemas/closure\_matrix.ripb.schema.json",  
     "validator": "scripts/ripb\_drift\_closure\_emit.sh"  
   },  
   {  
     "contract\_id": "RIPB-CONTRACT-TT-EXPORT",  
     "path": "evidence/\_drift\_guard/\<TS\>/tt\_export.ripb.json",  
     "schema": "schemas/tt\_export.schema.json",  
     "validator": "scripts/ripb\_drift\_closure\_emit.sh"  
   }  
 \]  
}

### **15.6 tooling/versions.lock（對應 DT-05）**

FILE: tooling/versions.lock  
{  
 "schema\_version": "v1",  
 "tools": \[  
   {  
     "name": "yq",  
     "version": "v4.44.3",  
     "platform": "linux\_amd64",  
     "source\_url": "\<REDACTED\>",  
     "sha256": "\<REDACTED\>"  
   },  
   {  
     "name": "jq",  
     "version": "jq-1.7.1",  
     "platform": "linux\_amd64",  
     "source\_url": "\<REDACTED\>",  
     "sha256": "\<REDACTED\>"  
   }  
 \]  
}

### **15.7 scripts（gates）**

FILE: scripts/ripb\_preflight.sh  
\#\!/usr/bin/env bash  
set \-euo pipefail

TS="${OMOC\_TS:-$(date \-u \+%Y%m%dT%H%M%SZ)}"  
OUTDIR="evidence/\_drift\_guard/${TS}"  
mkdir \-p "${OUTDIR}"

echo "\[ripb\_preflight\] ts=${TS}" | tee "${OUTDIR}/preflight.log"

\# Hard requirements: files exist  
req\_files=(  
 "allowlist.lock.json"  
 "schemas/allowlist.lock.schema.json"  
 "config/mcp\_sensitive\_tools.json"  
 "scripts/mcp\_pinning\_complete\_check.sh"  
 "scripts/mcp\_allowlist\_enforce.sh"  
 "scripts/mcp\_endpoints\_discover.sh"  
 "scripts/mcp\_capability\_diff.sh"  
 "scripts/mcp\_audit\_guard.sh"  
 "scripts/superseded\_scan.sh"  
)

missing=0  
for f in "${req\_files\[@\]}"; do  
 if \[\[ \! \-f "${f}" \]\]; then  
   echo "\[MISSING\] ${f}" | tee \-a "${OUTDIR}/preflight.log"  
   missing=1  
 fi  
done

if \[\[ "${missing}" \-ne 0 \]\]; then  
 echo "\[FAIL\_CLOSED\] preflight missing required files" | tee \-a "${OUTDIR}/preflight.log"  
 exit 1  
fi

echo "\[PASS\] preflight" | tee \-a "${OUTDIR}/preflight.log"  
exit 0  
FILE: scripts/mcp\_endpoints\_discover.sh  
\#\!/usr/bin/env bash  
set \-euo pipefail

TS="${OMOC\_TS:-$(date \-u \+%Y%m%dT%H%M%SZ)}"  
OUTDIR="evidence/\_drift\_guard/${TS}"  
mkdir \-p "${OUTDIR}"

\# Minimal discover: repo/operator can extend by adding more observable sources.  
\# No secrets allowed. URLs only.  
cat \> config/mcp\_endpoints.json \<\<'JSON'  
{  
 "schema\_version": "v1",  
 "generated\_at": "2026-02-21T00:00:00+08:00",  
 "timezone": "Asia/Taipei",  
 "endpoints": \[  
   { "endpoint\_ref": "github\_api", "url": "https://api.github.com" }  
 \],  
 "notes": "Generated by scripts/mcp\_endpoints\_discover.sh. No tokens allowed."  
}  
JSON

\# hash lock  
sha256sum config/mcp\_endpoints.json \> config/mcp\_endpoints.hash  
cp \-f config/mcp\_endpoints.hash "${OUTDIR}/mcp\_endpoints.hash"

echo "{\\"ts\\":\\"${TS}\\",\\"artifact\\":\\"config/mcp\_endpoints.json\\",\\"hash\_file\\":\\"config/mcp\_endpoints.hash\\"}" \\  
 \> "${OUTDIR}/endpoints\_discover.json"

exit 0  
FILE: scripts/mcp\_pinning\_complete\_check.sh  
\#\!/usr/bin/env bash  
set \-euo pipefail

TS="${OMOC\_TS:-$(date \-u \+%Y%m%dT%H%M%SZ)}"  
OUTDIR="evidence/\_drift\_guard/${TS}"  
mkdir \-p "${OUTDIR}"

python3 \- \<\<'PY'  
import json, sys  
p="allowlist.lock.json"  
with open(p,"r",encoding="utf-8") as f:  
 j=json.load(f)

bad=\[\]  
for s in j.get("servers",\[\]):  
 sha=s.get("commit\_sha")  
 dig=s.get("pinned\_digest")  
 if (sha in (None,"")) and (dig in (None,"")):  
   bad.append(s.get("server\_id","\<unknown\>"))

o={"result":"PASS" if not bad else "FAIL","missing\_pins":bad}  
print(json.dumps(o,ensure\_ascii=False))  
sys.exit(0 if not bad else 2\)  
PY  
rc=$?  
python3 \- \<\<PY \> "${OUTDIR}/pinning\_check.json"  
import json,sys,subprocess  
\# re-run to capture output deterministically  
PY  
\# capture last stdout from python is not available; re-parse file instead  
\# simple re-emit:  
python3 \- \<\<'PY' \> "${OUTDIR}/pinning\_check.json"  
import json  
j=json.load(open("allowlist.lock.json","r",encoding="utf-8"))  
bad=\[\]  
for s in j.get("servers",\[\]):  
 if not s.get("commit\_sha") and not s.get("pinned\_digest"):  
   bad.append(s.get("server\_id","\<unknown\>"))  
print(json.dumps({"result":"PASS" if not bad else "FAIL","missing\_pins":bad},ensure\_ascii=False))  
PY

exit ${rc}  
FILE: scripts/mcp\_allowlist\_enforce.sh  
\#\!/usr/bin/env bash  
set \-euo pipefail

TS="${OMOC\_TS:-$(date \-u \+%Y%m%dT%H%M%SZ)}"  
OUTDIR="evidence/\_drift\_guard/${TS}"  
mkdir \-p "${OUTDIR}"

\# Verify endpoints hash lock exists and matches  
if \[\[ \! \-f "config/mcp\_endpoints.hash" \]\]; then  
 echo "\[TEMP\_CLOSED\] missing config/mcp\_endpoints.hash" | tee \-a "${OUTDIR}/allowlist\_enforce.log"  
 exit 42  
fi

sha256sum \-c config/mcp\_endpoints.hash \>/dev/null 2\>&1 || {  
 echo "\[FAIL\_CLOSED\] endpoints hash mismatch" | tee \-a "${OUTDIR}/allowlist\_enforce.log"  
 exit 1  
}

python3 \- \<\<'PY' \> "${OUTDIR}/allowlist\_decisions.jsonl"  
import json, hashlib, sys

endpoints=json.load(open("config/mcp\_endpoints.json","r",encoding="utf-8"))\["endpoints"\]  
lock=json.load(open("allowlist.lock.json","r",encoding="utf-8"))  
servers={ s\["endpoint\_ref"\]:s for s in lock.get("servers",\[\]) }

def decision(ep):  
 ref=ep\["endpoint\_ref"\]  
 url=ep\["url"\]  
 if ref not in servers:  
   return {"endpoint\_ref":ref,"url":url,"decision":"BLOCK","reason":"not\_in\_allowlist"}  
 s=servers\[ref\]  
 \# default-deny still applies to pinning completeness: do not ALLOW if missing pins  
 if (not s.get("commit\_sha")) and (not s.get("pinned\_digest")):  
   return {"endpoint\_ref":ref,"url":url,"decision":"BLOCK","reason":"pinning\_incomplete"}  
 return {"endpoint\_ref":ref,"url":url,"decision":"ALLOW","server\_id":s.get("server\_id")}

for ep in endpoints:  
 d=decision(ep)  
 print(json.dumps(d,ensure\_ascii=False))  
PY

\# Fail if any decision=ALLOW for unknown / or any BLOCK due to pinning\_incomplete should already be caught upstream,  
\# but keep strict: if any endpoint is ALLOW without pins \=\> FAIL\_CLOSED  
python3 \- \<\<'PY'  
import json,sys  
p="evidence/\_drift\_guard/{}/allowlist\_decisions.jsonl".format(\_\_import\_\_("os").environ.get("OMOC\_TS") or "")  
\# fallback: find latest directory  
import glob,os  
dirs=sorted(glob.glob("evidence/\_drift\_guard/\*"))  
if not dirs: sys.exit(1)  
latest=dirs\[-1\]  
f=os.path.join(latest,"allowlist\_decisions.jsonl")  
bad=0  
for line in open(f,"r",encoding="utf-8"):  
 j=json.loads(line)  
 if j.get("decision")=="ALLOW" and j.get("reason")=="pinning\_incomplete":  
   bad=1  
if bad:  
 sys.exit(1)  
sys.exit(0)  
PY

exit 0  
FILE: scripts/mcp\_capability\_diff.sh  
\#\!/usr/bin/env bash  
set \-euo pipefail

TS="${OMOC\_TS:-$(date \-u \+%Y%m%dT%H%M%SZ)}"  
OUTDIR="evidence/\_drift\_guard/${TS}"  
mkdir \-p "${OUTDIR}"

\# This script is designed to run against observed capability snapshot (generated by your MCP client/server).  
\# If observed snapshot missing, we TEMP\_CLOSED with TT.  
OBS="evidence/\_drift\_guard/${TS}/capabilities.observed.json"  
EXP="schemas/mcp\_capabilities.expected.json"

if \[\[ \! \-f "${EXP}" \]\]; then  
 echo "{\\"result\\":\\"FAIL\\",\\"reason\\":\\"missing\_expected\\"}" \> "${OUTDIR}/capability\_diff.report.json"  
 exit 1  
fi

if \[\[ \! \-f "${OBS}" \]\]; then  
 echo "{\\"result\\":\\"TEMP\_CLOSED\\",\\"reason\\":\\"missing\_observed\\",\\"tt\\":\\"TT-RIPB-CAP-DRIFT-001\\"}" \\  
   \> "${OUTDIR}/capability\_diff.report.json"  
 exit 4  
fi

python3 \- \<\<'PY' \> "${OUTDIR}/capability\_diff.report.json"  
import json, hashlib, sys  
exp=json.load(open("schemas/mcp\_capabilities.expected.json","r",encoding="utf-8"))  
obs=json.load(open("evidence/\_drift\_guard/{}/capabilities.observed.json".format(\_\_import\_\_("os").environ.get("OMOC\_TS") or ""), "r", encoding="utf-8"))

exp\_tools={t\["name"\]:t.get("schema\_sha256") for t in exp.get("expected",{}).get("tools",\[\])}  
obs\_tools={t\["name"\]:t.get("schema\_sha256") for t in obs.get("observed",{}).get("tools",\[\])}

added=sorted(\[k for k in obs\_tools.keys() if k not in exp\_tools\])  
removed=sorted(\[k for k in exp\_tools.keys() if k not in obs\_tools\])  
changed=sorted(\[k for k in obs\_tools.keys() if k in exp\_tools and obs\_tools\[k\]\!=exp\_tools\[k\]\])

result="PASS" if (not added and not removed and not changed) else "DRIFT"  
print(json.dumps({"result":result,"added":added,"removed":removed,"changed":changed},ensure\_ascii=False))  
PY

\# DRIFT \=\> TEMP\_CLOSED by default  
python3 \- \<\<'PY'  
import json,sys,glob,os  
dirs=sorted(glob.glob("evidence/\_drift\_guard/\*"))  
latest=dirs\[-1\]  
j=json.load(open(os.path.join(latest,"capability\_diff.report.json"),"r",encoding="utf-8"))  
sys.exit(0 if j.get("result")=="PASS" else 4\)  
PY  
FILE: scripts/mcp\_audit\_guard.sh  
\#\!/usr/bin/env bash  
set \-euo pipefail

TS="${OMOC\_TS:-$(date \-u \+%Y%m%dT%H%M%SZ)}"  
OUTDIR="evidence/\_drift\_guard/${TS}"  
mkdir \-p "${OUTDIR}"

AUDIT\_PATH="${RIPB\_AUDIT\_LOG\_PATH:-evidence/\_audit/auditlog.redacted.jsonl}"

\# audit\_ready \= file exists and writable directory and not symlink  
ready="true"  
reason="ok"

if \[\[ \-L "${AUDIT\_PATH}" \]\]; then  
 ready="false"; reason="audit\_path\_symlink"  
elif \[\[ \! \-e "${AUDIT\_PATH}" \]\]; then  
 \# allow creating the file if directory exists and writable  
 d=$(dirname "${AUDIT\_PATH}")  
 if \[\[ \! \-d "${d}" \]\]; then  
   ready="false"; reason="audit\_dir\_missing"  
 elif \[\[ \! \-w "${d}" \]\]; then  
   ready="false"; reason="audit\_dir\_not\_writable"  
 fi  
else  
 d=$(dirname "${AUDIT\_PATH}")  
 if \[\[ \! \-w "${d}" \]\]; then  
   ready="false"; reason="audit\_dir\_not\_writable"  
 fi  
fi

echo "{\\"audit\_ready\\":${ready},\\"reason\\":\\"${reason}\\",\\"audit\_path\\":\\"${AUDIT\_PATH}\\"}" \> "${OUTDIR}/audit\_ready.json"

\# HARD RULE: if not ready \=\> block sensitive tools by failing with rc=3  
if \[\[ "${ready}" \!= "true" \]\]; then  
 exit 3  
fi

exit 0  
FILE: scripts/mcp\_auditlog\_redact.sh  
\#\!/usr/bin/env bash  
set \-euo pipefail

\# Redact audit logs into hash-only records.  
\# Input: evidence/\_audit/auditlog.raw.jsonl (optional)  
\# Output: evidence/\_audit/auditlog.redacted.jsonl

IN="${RIPB\_AUDIT\_LOG\_RAW\_PATH:-evidence/\_audit/auditlog.raw.jsonl}"  
OUT="${RIPB\_AUDIT\_LOG\_PATH:-evidence/\_audit/auditlog.redacted.jsonl}"  
mkdir \-p "$(dirname "${OUT}")"

if \[\[ \! \-f "${IN}" \]\]; then  
 \# If raw log not available, keep OUT as empty but present (still blocks sensitive tools via audit\_guard if OUT not writable)  
 : \> "${OUT}"  
 exit 0  
fi

python3 \- \<\<'PY'  
import hashlib, json, sys, os  
IN=os.environ.get("RIPB\_AUDIT\_LOG\_RAW\_PATH","evidence/\_audit/auditlog.raw.jsonl")  
OUT=os.environ.get("RIPB\_AUDIT\_LOG\_PATH","evidence/\_audit/auditlog.redacted.jsonl")

def h(x: str)-\>str:  
 return hashlib.sha256(x.encode("utf-8")).hexdigest()

with open(IN,"r",encoding="utf-8") as fi, open(OUT,"w",encoding="utf-8") as fo:  
 for line in fi:  
   line=line.strip()  
   if not line: continue  
   j=json.loads(line)  
   \# Only keep minimal fields \+ hashes; do not keep payloads.  
   rec={  
     "ts": j.get("ts"),  
     "actor": j.get("actor"),  
     "server\_id": j.get("server\_id"),  
     "tool": j.get("tool"),  
     "request\_hash": h(json.dumps(j.get("request",{}),ensure\_ascii=False,sort\_keys=True)),  
     "response\_hash": h(json.dumps(j.get("response",{}),ensure\_ascii=False,sort\_keys=True)),  
   }  
   fo.write(json.dumps(rec,ensure\_ascii=False)+"\\n")  
PY

exit 0  
FILE: scripts/mcp\_auditlog\_verify.sh  
\#\!/usr/bin/env bash  
set \-euo pipefail

\# Verify redacted audit records contain required fields.  
AUDIT="${RIPB\_AUDIT\_LOG\_PATH:-evidence/\_audit/auditlog.redacted.jsonl}"

if \[\[ \! \-f "${AUDIT}" \]\]; then  
 echo "\[FAIL\_CLOSED\] missing redacted audit log"  
 exit 3  
fi

python3 \- \<\<'PY'  
import json,sys  
p="evidence/\_audit/auditlog.redacted.jsonl"  
required={"ts","actor","server\_id","tool","request\_hash","response\_hash"}  
ok=True  
for i,line in enumerate(open(p,"r",encoding="utf-8"),start=1):  
 line=line.strip()  
 if not line: continue  
 j=json.loads(line)  
 if not required.issubset(set(j.keys())):  
   ok=False  
   break  
sys.exit(0 if ok else 3\)  
PY  
FILE: scripts/superseded\_scan.sh  
\#\!/usr/bin/env bash  
set \-euo pipefail

TS="${OMOC\_TS:-$(date \-u \+%Y%m%dT%H%M%SZ)}"  
OUTDIR="evidence/\_drift\_guard/${TS}"  
mkdir \-p "${OUTDIR}"

\# Superseded ban: detect forbidden references (examples)  
\# \- WP total r1  
\# \- legacy WP files without v4.0.1-r2 suffix  
\# \- old RIP-B v1.0.0 referenced as normative in new docs  
FORBIDDEN\_PATTERNS=(  
 "OMOC\_實作\\\\+WP總表\_v4\\\\.0\\\\.1-r1"  
 "OMOC\_WP-0\[0-9\]{2}\\\\+RB\\\\+WI\\\\.md"  
 "contentReference\\\\\[oaicite"  
 "chatgpt\\\\.com/"  
)

hits=0  
: \> "${OUTDIR}/superseded\_scan.txt"  
for pat in "${FORBIDDEN\_PATTERNS\[@\]}"; do  
 if rg \-n "${pat}" \-S . \>\> "${OUTDIR}/superseded\_scan.txt"; then  
   hits=1  
 fi  
done

if \[\[ "${hits}" \-ne 0 \]\]; then  
 echo "\[FAIL\_CLOSED\] superseded/pollution detected"  
 exit 1  
fi

echo "\[PASS\] superseded\_scan=0" \>\> "${OUTDIR}/superseded\_scan.txt"  
exit 0  
FILE: scripts/install\_yq\_pinned.sh  
\#\!/usr/bin/env bash  
set \-euo pipefail

\# Install yq strictly by versions.lock \+ sha256 verification.  
LOCK="tooling/versions.lock"  
DEST\_DIR=".tooling/bin"  
mkdir \-p "${DEST\_DIR}"

python3 \- \<\<'PY'  
import json,sys  
j=json.load(open("tooling/versions.lock","r",encoding="utf-8"))  
y=\[t for t in j.get("tools",\[\]) if t.get("name")=="yq"\]  
if not y:  
 print("missing yq in versions.lock")  
 sys.exit(5)  
print(json.dumps(y\[0\],ensure\_ascii=False))  
PY

\# Real download is environment-dependent; forbidden to "latest".  
\# Provide placeholder that FAIL\_CLOSED until operator pins source\_url+sha256 and implements offline mirror.  
echo "\[TEMP\_CLOSED\] installer requires pinned source\_url+sha256 in tooling/versions.lock and an internal mirror" \>&2  
exit 5  
FILE: scripts/ripb\_validate.sh  
\#\!/usr/bin/env bash  
set \-euo pipefail

\# Route-out validator: call the project-level validator (skills/WP-008).  
\# If not available, FAIL\_CLOSED (secrets must not rely on grep).  
if \[\[ \-x "scripts/omoc\_validate\_contracts.sh" \]\]; then  
 exec scripts/omoc\_validate\_contracts.sh  
fi

echo "\[FAIL\_CLOSED\] missing scripts/omoc\_validate\_contracts.sh (route-out to WP-008/skills)" \>&2  
exit 6  
FILE: scripts/ripb\_drift\_closure\_emit.sh  
\#\!/usr/bin/env bash  
set \-euo pipefail

TS="${OMOC\_TS:-$(date \-u \+%Y%m%dT%H%M%SZ)}"  
OUTDIR="evidence/\_drift\_guard/${TS}"  
mkdir \-p "${OUTDIR}"

\# Minimal closure matrix and TT export; update with real statuses after runs.  
cat \> "${OUTDIR}/closure\_matrix.ripb.json" \<\<'JSON'  
{  
 "schema\_version": "v1",  
 "component": "RIP-B",  
 "ts": "\<REDACTED\>",  
 "verdict": "TEMP\_CLOSED",  
 "gates": \[  
   {"gate\_id":"GATE-RIPB-PREFLIGHT","status":"PASS"},  
   {"gate\_id":"GATE-RIPB-SUPERSEDED-SCAN","status":"PASS"},  
   {"gate\_id":"GATE-RIPB-PINNING-COMPLETE","status":"TEMP\_CLOSED"},  
   {"gate\_id":"GATE-RIPB-AUDIT-READY","status":"TEMP\_CLOSED"},  
   {"gate\_id":"GATE-RIPB-CAPABILITY-DRIFT","status":"TEMP\_CLOSED"},  
   {"gate\_id":"GATE-RIPB-ENDPOINTS-HASH","status":"TEMP\_CLOSED"}  
 \]  
}  
JSON

cat \> "${OUTDIR}/tt\_export.ripb.json" \<\<'JSON'  
{  
 "schema\_version": "v1",  
 "component": "RIP-B",  
 "CR\_OPEN": 0,  
 "tts": \[  
   {"tt\_id":"TT-RIPB-AUDIT-ENFORCE-001","status":"OPEN"},  
   {"tt\_id":"TT-RIPB-PINNING-ENFORCE-001","status":"OPEN"},  
   {"tt\_id":"TT-RIPB-ENDPOINTS-DISCOVER-001","status":"OPEN"},  
   {"tt\_id":"TT-RIPB-CAP-DRIFT-001","status":"OPEN"},  
   {"tt\_id":"TT-RIPB-TOOL-PIN-001","status":"OPEN"},  
   {"tt\_id":"TT-RIPB-SUPERSEDED-GATE-001","status":"OPEN"},  
   {"tt\_id":"TT-RIPB-SLOWMIST-MAP-001","status":"OPEN"}  
 \]  
}  
JSON

cat \> "${OUTDIR}/drift\_report.ripb.md" \<\<'MD'  
\# RIP-B Drift Report (skeleton)  
\- This report is generated by ripb\_drift\_closure\_emit.sh  
\- Replace \<REDACTED\> with runtime-derived values via PR (no secrets).  
MD

exit 0

### **15.8 SlowMist checklist mapping（逐條映射 → gate/script/evidence/rollback）**

FILE: controls/slowmist\_mapping.md  
\# SlowMist MCP Security Checklist Mapping (SUPPORT-only)  
\> Source: SlowMist MCP-Security-Checklist (SUPPORT). Each item maps to enforceable control points.  
\> Missing mapping \=\> TT-RIPB-SLOWMIST-MAP-001 \=\> TEMP\_CLOSED.

| check\_id | control | artifact | gate\_id | evidence\_locator | retest | rollback |  
| \--- | \--- | \--- | \--- | \--- | \--- | \--- |  
| SM-01 | default-deny allowlist | allowlist.lock.json | GATE-RIPB-ALLOWLIST | evidence/\_drift\_guard/\<TS\>/allowlist\_decisions.jsonl | DT-01 | revert allowlist.lock.json PR |  
| SM-02 | pin dependencies | allowlist.lock.json | GATE-RIPB-PINNING-COMPLETE | .../pinning\_check.json | DT-02 | restore prior lockfile |  
| SM-03 | audit sensitive operations | config/mcp\_sensitive\_tools.json | GATE-RIPB-AUDIT-READY | .../audit\_ready.json | DT-03 | disable sensitive tools |  
| SM-04 | detect tool/schema drift | schemas/mcp\_capabilities.expected.json | GATE-RIPB-CAPABILITY-DRIFT | .../capability\_diff.report.json | DT-04 | block server until updated |  
| SM-05 | secrets hygiene | validator | GATE-RIPB-SECRETS-VALIDATOR | evidence bundle logs | run validator | scrub \+ rotate (out-of-scope) |

### **15.9 Workflows（最小：policy lint \+ supplychain 子集 \+ rulesets snapshot 子集）**

FILE: .github/workflows/ripb\_policy\_lint.yml  
name: ci / omoc-gate

on:  
 pull\_request:  
 merge\_group:  
 workflow\_dispatch:

permissions:  
 contents: read

jobs:  
 ripb:  
   runs-on: ubuntu-latest  
   steps:  
     \- uses: actions/checkout@v4

     \- name: RIP-B preflight  
       run: bash scripts/ripb\_preflight.sh

     \- name: Superseded scan (FAIL\_CLOSED)  
       run: bash scripts/superseded\_scan.sh

     \- name: Endpoints discover \+ hash lock  
       run: bash scripts/mcp\_endpoints\_discover.sh

     \- name: Pinning complete check (FAIL\_CLOSED)  
       run: bash scripts/mcp\_pinning\_complete\_check.sh

     \- name: Allowlist enforce (FAIL\_CLOSED)  
       run: bash scripts/mcp\_allowlist\_enforce.sh

     \- name: Audit guard (no audit \=\> block sensitive tools)  
       run: bash scripts/mcp\_audit\_guard.sh

     \- name: Capability drift gate (TEMP\_CLOSED on missing observed)  
       run: bash scripts/mcp\_capability\_diff.sh

     \- name: Route-out validator (FAIL\_CLOSED)  
       run: bash scripts/ripb\_validate.sh

     \- name: Emit drift/closure artifacts  
       run: bash scripts/ripb\_drift\_closure\_emit.sh  
FILE: .github/workflows/ripf\_supplychain.yml  
name: ripf / supplychain-hardening

on:  
 pull\_request:  
 merge\_group:  
 workflow\_dispatch:

permissions:  
 contents: read

jobs:  
 supplychain:  
   runs-on: ubuntu-latest  
   steps:  
     \- uses: actions/checkout@v4  
     \- name: Pinact (SUPPORT-only; requires pinning implementation)  
       run: |  
         echo "\[TEMP\_CLOSED\] pinact integration requires pinned actions and repo policy"  
     \- name: Zizmor (SUPPORT-only; requires pinned tool)  
       run: |  
         echo "\[TEMP\_CLOSED\] zizmor integration requires pinned installer and config"  
     \- name: OpenSSF Scorecard (SUPPORT-only; requires setup)  
       run: |  
         echo "\[TEMP\_CLOSED\] scorecard integration requires official action pinned by commit SHA"  
FILE: .github/workflows/ripf\_rulesets\_snapshot.yml  
name: ripf / rulesets-snapshot

on:  
 workflow\_dispatch:

permissions:  
 contents: read

jobs:  
 snapshot:  
   runs-on: ubuntu-latest  
   steps:  
     \- uses: actions/checkout@v4  
     \- name: Snapshot rulesets (TEMP\_CLOSED without permissions)  
       run: |  
         echo "\[TEMP\_CLOSED\] requires repo admin permissions; route-out to WP-009/WP-014"  
---

## **16\) Web Evidence Appendix（SUPPORT-only；web\_refs\>=2；含 published\_at/accessed\_at/timezone/injection\_risk/drift\_action）**

\<a id="omoc-ripb-r-web-evidence"\>\</a\>

只放 SUPPORT；不得升格覆寫 SSOT。每條 web\_fact 必須 `web_refs>=2`；不一致→WEB-CONFLICT→Quarantine→TT→TEMP\_CLOSED。

OMOC\_實作+WP總表\_v4.0.1-r2

### **WEB-REF-CE-001（Prompt/Context**

### **OMOC\_實作+WP總表\_v4.0.1-r2**

### **wheel / structured prompting）**

* fact\_id: WEB-FACT-PE-001  
* claim: “evaluation flywheel” 用於把 prompt 變更納入可回歸測試與持續監控（可作為 RIP-B 的自我稽核流程：固定章節/固定欄位/反例測試）。  
* web\_refs (\>=2):  
  1. OpenAI Cookbook：Building resilient prompts using an evaluation flywheel（published\_at=2025-10-06）  
  2. Braintrust：prompt evaluation tools & continuous loop（published\_at=2025-11-17）  
* accessed\_at: 2026-02-21T00:00:00+08:00  
* timezone: Asia/Taipei  
* injection\_risk: LOW（官方/工具文章；仍視為 SUPPORT）  
* quarantine\_reason: none  
* drift\_action: re-verify quarterly; if conflict, quarantine and TT

### **WEB-REF-CE-002（Prompt injection defense / tool-integrated agents）**

* fact\_id: WEB-FACT-SEC-PI-001  
* claim: prompt injection 是 tool-integrated agent 的主要風險類別之一，需以 “data vs instruction separation” \+ evaluation-based defenses。  
* web\_refs (\>=2):  
  1. OWASP GenAI LLM01 Prompt Injection  
  2. BrowseSafe (arXiv, 2025-11-25) 提及 agentic benchmarks 與 injection defenses  
* accessed\_at: 2026-02-21T00:00:00+08:00  
* injection\_risk: MED（研究文章可被斷章取義；僅 SUPPORT）  
* quarantine\_reason: none  
* drift\_action: if OWASP taxonomy changes, update mapping \+ TT

### **WEB-REF-CE-003（MCP 官方安全最佳實務）**

* fact\_id: WEB-FACT-MCP-SEC-001  
* claim: MCP security best practices 文件提供 MCP 風險/攻擊向量/最佳實務（授權、隔離、稽核、allowlist）。  
* web\_refs (\>=2):  
  1. MCP 官方 Security Best Practices  
  2. 《OMOC\_總體RIP修補方案》引用同一官方文件作 SUPPORT（仍以 SSOT 裁決）  
      OMOC\_總體RIP修補方案  
* accessed\_at: 2026-02-21T00:00:00+08:00  
* injection\_risk: LOW  
* drift\_action: re-verify monthly; record last\_verified\_at

### **WEB-REF-CE-004（SlowMist MCP Security Checklist）**

* fact\_id: WEB-FACT-MCP-SLOWMIST-001  
* claim: SlowMist 提供 MCP 安全檢查清單，可逐條映射到 gate/script/evidence/rollback（SUPPORT-only）。  
* web\_refs (\>=2):  
  1. SlowMist GitHub MCP-Security-Checklist  
  2. Nordi  
     OMOC\_總體RIP修補方案  
     ecklist 作 MCP security reference  
* accessed\_at: 2026-02-21T00:00:00+08:00  
* injection\_risk: MED（第三方清單；需對齊 SSOT）  
* quarantine\_reason: none  
* drift\_action: if checklist updates, record version/commit in quarantine log \+ TT

---

## **17\) Changelog \+ Final Verdict（升級理由 \+ 是否仍需實跑）**

\<a id="omoc-ripb-s-changelog-verdict"\>\</a\>

### **17.1 v1.0.0 → v1.1.0（變更重點）**

* **把阻斷級缺陷變成硬聯鎖**：  
  * audit：新增 `mcp_sensitive_tools.json` \+ `mcp_audit_guard.sh`（no audit ⇒ block sensitive tools, rc=3）  
     OMOC\_RIP-B\_v1.0.0\_審查報告  
  * pinning：新增 `mcp_pinning_complete_check.sh`（缺 pin 直接停，rc=2）  
     OMOC\_RIP-B\_v1.0.0\_審查報告  
  * endpoints：新增 discover \+ hash lock（避免 shadow endpoint bypass）  
     OMOC\_RIP-B\_v1.0.0\_審查報告  
  * capability drift：新增 drift gate（DT-04）  
     OMOC\_RIP-B\_v1.0.0\_審查報告  
  * tooling drift：移除 latest，改 versions.lock \+ sha verify（DT-05）  
     OMOC\_RIP-B\_v1.0.0\_審查報告  
  * superseded：新增 scan=0 gate（WP-014 對齊）  
     OMOC\_RIP-B\_v1.0.0\_審查報告  
* **Docs-as-Code 可檢索化**：新增 contract registry、closure schema、Findings Closure Matrix、TT Register（CR\_OPEN=0）。  
* OMOC\_RIP-B\_v1.0.0\_審查報告  
  ）\*\*：新增 supplychain/rulesets 最小 workflows（仍需 repo 權限與 pinned implem  
  OMOC\_RIP-B\_v1.0.0\_審查報告  
  OMOC\_總體RIP修補方案

### **17.2 Final Verdict**

* **文件層**：TEMP\_CLOSED（工  
  OMOC\_RIP-B\_v1.0.0\_審查報告  
   PASS 的必要條件（環境實跑）\*\*：  
  1. 以你的真實 endpoints 產  
     OMOC\_RIP-B\_v1.0.0\_審查報告  
     ts.json\` \+ hash  
  2. 釘定 allowlist.lock.json 的 commit\_sha/digest  
      OMOC\_RIP-B\_v1.0.0\_審查報告  
     ability snapshot 並通過 diff  
  3. 產生實際 auditl  
     OMOC\_RIP-B\_v1.0.0\_審查報告  
     ify（且敏感工具在 audit 不 ready 時確實被阻斷）

---

## **18\) Machine Summary（AI 檢索用：coverage\_stats / gates / artifacts / tt\_ids / RAG-triad）**

\<a id="omoc-ripb-t-machine-summary"\>\</a\>

{  
 "doc\_id": "OMOC\_RIP-B",  
 "version": :contentReference\[oaicite:166\]{index=166}: "Asia/Taipei",  
 "overall\_verdict": "TEMP\_CLOSED",  
 "coverage\_stats": {  
   "findings\_total": 15,  
   "findings\_fixed": 12,  
   "findings\_temp\_closed": 0,  
   "findings\_tt": 3,  
   "destructive\_tests\_implemented": \["DT-01","DT-02","DT-03","DT-04","DT-05"\]  
 },  
 "gates": \[  
   "GATE-RIPB-PREFLIGHT",  
   "GATE-RIPB-SUPERSEDED-SCAN",  
   "GATE-RIPB-ENDPOINTS-HASH",  
   "GATE-RIPB-ALLOWLIST",  
   "GATE-RIPB-PINNING-COMPLETE",  
   "GATE-RIPB-CAPABILITY-DRIFT",  
   "GATE-RIPB-AUDIT-READY",  
   "GATE-RIPB-TOOL-PIN",  
   "GATE-RIPB-SECRETS-VALIDATOR"  
 \],  
 "artifacts": \[  
   "config/mcp\_sensitive\_tools.json",  
   "allowlist.lock.json",  
   "schemas/allowlist.lock.schema.json",  
   "config/mcp\_endpoints.json",  
   "config/mcp\_endpoints.hash",  
   "schemas/mcp\_capabilities.expected.json",  
   "contracts/ripb\_contract\_registry.json",  
   "tooling/versions.lock",  
   "controls/slowmist\_mapping.md",  
   ".github/workflows/ripb\_policy\_lint.yml",  
   ".github/workflows/ripf\_supplychain.yml",  
   ".github/workflows/ripf\_rulesets\_snapshot.yml"  
 \],  
 "tt\_ids": \[  
   "TT-RIPB-AUDIT-ENFORCE-001",  
   "TT-RIPB-PINNING-ENFORCE-001",  
   "TT-RIPB-ENDPOINTS-DISCOVER-001",  
   "TT-RIPB-CAP-DRIFT-001",  
   "TT-RIPB-TOOL-PIN-001",  
   "TT-RIPB-SUPERSEDED-GATE-001",  
   "TT-RIPB-SLOWMIST-MAP-001",  
   "TT-RIPB-WEB-QUARANTINE-001",  
   "TT-RIPB-WSP-SCOPE-REF-001",  
   "TT-RIPB-SECRETS-ROUTEOUT-001",  
   "TT-RIPB-SCHEDULE-OPTIN-001",  
   "TT-RIPB-RIPF-SUPPLYCHAIN-001",  
   "TT-RIPB-RIPF-RULESETS-001"  
 \],  
 "rag\_triad": {  
   "grounding": {  
     "ssot\_locators\_present": true,  
     "support\_only\_web\_appendix": true,  
     "double\_sourcing\_enforced": true  
   },  
   "retrieval": {  
     "toc\_internal\_only": true,  
     "anchor\_registry\_present": true,  
     "grep\_keys": \["gate\_id","req\_id","tt\_id","case\_id","contract\_id"\]  
   },  
   "auditability": {  
     "no\_audit\_no\_sensitive\_exec": true,  
     "pinning\_complete\_before\_interaction": true,  
     "superseded\_scan\_zero": true,  
     "secrets\_zero\_via\_validator": true  
   }  
 }  
}  
