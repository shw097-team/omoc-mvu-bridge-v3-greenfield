## **0\) 封面卡（2026-02-21｜Asia/Taipei）**

**任務摘要（≤120字）**：以「RIP 缺口」視角，對 OMOC 藍圖/RBWI/skills/WP001\~014 交叉比對，產出 Gap Matrix、RIP-A\~F 落地規劃與可執行的大數據搜索方案。  
**主要結論一句話**：只補「Agent RIP」不夠——若缺「證據鏈/CI 關門/平台治理/供應鏈硬化/MCP 安全」，最後必然變成「能改但不能驗、能驗但不安全、或安全但不自動」。

---

## **1\) 需求對齊（目標 / 約束 / 指定資料）**

### **你的最終目標（我用可驗證語句重述）**

1. **在 repo 內**用 OpenCode \+ Oh-My-OpenCode \+ Agent/MCP/Skills，建立「驗收官 \+ 施工者」的**全自動**閉環：自動驗收 → 產證據 → 失敗可回路 → 自動修復/建造 → 最終以 PR/CI 呈現。  
2. 必須盡可能「**不造輪子**、低磨合、低門檻、少試錯」，大量搬運 GitHub 上成熟方案。  
3. 仍需服從 OMOC 的**Fail-Closed、TT/Closure、Evidence 合約、SSOT/版本鎖**等治理規範。

### **硬性約束（來自你本回合指令）**

* **一次回合內**完成研究→整合→成案輸出；不給長篇推理，只給可驗證證據+結論。  
* **強制 Web Search**（外部資料僅 SUPPORT，用來選型與佐證；不能凌駕 NORMATIVE/SSOT）。  
* 指定 NORMATIVE/SSOT 文件範圍：藍圖、RBWI、skills、WP總表、WP001\~014。

---

## **2\) 研究摘要（子題洞見 \+ 引文）**

### **子題A：OMOC 現況不是「空殼」，但「即插即用」仍有斷點**

* 藍圖明確自我定位為「立法文本」，不負責操作步驟；所以你期待的「可直接搬運、可直接跑」**必然**應該落在 RB/WI、skills、以及（你要補的）RIP。  
* skills 合冊其實已內建「從 Markdown 抽取檔案」的 bootstrap（會落地 `.opencode/*` 與 `scripts/*`），因此並非空殼；但它仍需要一個**被 repo 可靠引用/安裝/驗證**的 RIP 包裝層，否則會卡在「文件有、repo 沒有」。  
* RBWI 也直接承認：`.github/workflows/*` 在套件包覆蓋層面屬 **WEAK**，意即「規範/模板有，但你 repo 未必已落地」，這正是典型 RIP 斷點。

### **子題B：CI / Merge Queue 的「回報性」是自動化驗收的生死線**

* GitHub 官方文件明講：啟用 merge queue 後，**merge\_group 事件必須被 CI 觸發並回報 required checks**，否則 queue 會等到天荒地老。([GitHub Docs](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/configuring-pull-request-merges/managing-a-merge-queue?utm_source=chatgpt.com))  
* OMOC WP-012 把這件事做成 Fail-Closed 的 gate：掃描 `merge_group`、paths-ignore、concurrency 等，缺任何關鍵條件就直接判定 FAIL\_CLOSED，避免「用嘴說會回報」。  
* OMOC WP-011 將「Always-Report wrapper 必存在且必回報」寫成硬規格（PR \+ merge\_group 兩情境都要同名回報）。

### **子題C：成熟「施工/驗收」代理方案可直接penHands Software Agent SDK：提供構建多代理軟體工程工作流的 SDK/範例（含 GitHub workflows 範例）。([GitHub](https://github.com/OpenHands/software-agent-sdk?utm_source=chatgpt.com))turn0search8**

* SWE-agent：可針對 GitHub issue 自動修復，且支援 `--actions.open_pr` 自動開 PR（非常貼近「施工者」）。([GitHub](https://github.com/SWE-agent/SWE-agent?utm_source=chatgpt.com))  
* PR-Agent：成熟的 PR review agent（偏「驗收官/審查官」方向），能直接併入 GitHub Action/App。([GitHub](https://github.com/qodo-ai/pr-agent?utm_source=chatgpt.com))

關鍵：這些工具能做事，但 **OMOC 要的是「做事 \+ 出證據 \+ 關門」**，所以仍需要 RIP 把它們約束到 checks\_manifest / evidence\_bundle / TT/closure。

### **子題D：供應鏈與 Actions 安全——不是加分題，是「別被自己炸掉」的基本題**

* OpenSSF Scorecard action 與本體專案是最常被用來做 repo 安全健康度掃描的成熟方案。([GitHub](https://github.com/ossf/scorecard-action?utm_source=chatgpt.com))  
* zizmor 是專注 GitHub Actions 的靜態分析工具，也有官方 action；業界案例直接把它拿來做 Actions 權限過大風險檢測。([GitHub](https://github.com/zizmorcore/zizmor?utm_source=chatgpt.com))  
* pinact 可把 workflows/可重用 workflows 的 action 版本「釘到 commit SHA」並提供 pinning 自動化。([GitHub](https://github.com/suzuki-shunsuke/pinact?utm_source=chatgpt.com))  
* GitHub 官方也有 Actions secure use reference 與最小權限建議；你若不把它關進 RIP 的 Fail-Closed gate，你等於把「施工者」變成「自走式事故」。([GitHub Docs](https://docs.github.com/en/actions/reference/security/secure-use?utm_source=chatgpt.com))

### **子題E：MCP 生態近期的安全事件，直接否定「隨便裝就好」**

* MCP 官方安全最佳實務文件與第三方 checklist 已明確聚焦：授權、隔離、稽核、允許清單。([Model Context Protocol](https://modelcontextprotocol.io/docs/tutorials/security/security_best_practices?utm_source=chatgpt.com))  
* 已出現「惡意 MCP server」供應鏈事件（npm package 偷抄並外送 email），這不是理論風險。([The Hacker News](https://thehackernews.com/2025/09/first-malicious-mcp-server-found.html?utm_source=chatgpt.com))  
* 2026-01 的新聞也指出 MCP server 可能出現可被鏈結成 RCE 的漏洞情境；這類風險若不被你做成「Fail-Closed \+ allowlist \+ pinning」，就等著被 prompt injection 牽著走。([TechRadar](https://www.techradar.com/pro/security/anthropics-official-git-mcp-server-had-some-worrying-security-flaws-this-is-what-happened-next?utm_source=chatgpt.com))  
* GitHub 官方 MCP Server 與官方教學已存在，可作為「優先採用」的基底（比路邊野生 server 可靠）。([GitHub](https://github.com/github/github-mcp-server?utm_source=chatgpt.com))

---

## **3\) 完整方案（可執行）：OMOC\_總體RIP修補方案**

### **3.1 架構與流程（ASCII）**

DevContainer/Codespaces  
   |  
   |  (RIP-Installer)  \-\> 落地 .opencode/skills \+ scripts \+ workflows \+ policy  
   v  
\[Router Skill\] \-\> 決定 MQ=0/1、要跑哪些 gates/skills（Fail-Closed）  
   |  
   \+--\> Evidence Chain: verdict.json \+ checks\_manifest.json \+ evidence\_index.md \+ evidence\_bundle.tgz \+ bundle\_audit.json  
   |  
   \+--\> CI Gate: required checks 永遠回報（PR \+ merge\_group）  
   |  
   \+--\> Supply-chain: pinact \+ zizmor \+ scorecard（required checks 對齊）  
   |  
   \+--\> Platform Governance(可選): rulesets-as-code / Terraform / gh ruleset（先快照、再套用、可回滾）  
   |  
   \+--\> MCP Security: allowlist \+ token隔離 \+ audit log \+ server pinning

（Router/skills/evidence/validator 已在 skills 合冊提供可抽取落地與驗證骨架；RIP 的工作是把它變成 repo 內「可一鍵安裝、可一鍵驗收、可一鍵回滾」。）

---

### **3.2 差距矩陣（Gap Matrix：12條可驗收條件）**

評級：**PASS**（已具備規範+可重跑骨架） / **PARTIAL**（規範在，但缺「可搬運落地包」或缺關鍵自動化） / **MISSING**（缺 RIP 或缺關鍵安全/治理落地）

| \# | 可驗收條件（10–15項） | OMOC 現況 | 主要證據 | 補洞落點（WP / 新增 WP-RIP） | DoD（完成定義） |
| ----- | ----- | ----- | ----- | ----- | ----- |
| 1 | **一鍵環境就緒**：DevContainer 工具鏈 preflight \+ Gate-ENV-READY | PASS(規範) / PARTIAL(落地) | WP-002 RB scaffold \+ Gate-ENV-READY 定義。 | RIP-C（安裝器把 devcontainer/預檢做成 repo 內腳本） | `GATE-ENV-READY=PASS`，產物含 run.log/rc.txt/baseline。 |
| 2 | **技能包可落地**：`.opencode/skills/*` \+ scripts 抽取落地 | PASS(規範) / PARTIAL(需要包裝) | WP-007 定義 skills pack 抽取落地。 | RIP-C（skills runtime） | repo 內實際存在 `.opencode/skills/...` 與 scripts，且 validator PASS。 |
| 3 | **技能抽取器不可造假**：缺抽取器必 TT | PASS | TT-WP007-DEP-BOOTSTRAP-001 明示不得假造。 | RIP-C | 安裝器自帶抽取器；若缺，Fail-Closed \+ TT 生成。 |
| 4 | **Evidence Minset 硬交付**：Triplet+Bundle+Audit+SecretsScan | PASS(規範) / PARTIAL(需要 repo 落地) | WP-008 Gate/DoD 與 acceptance\_local.sh 全文。 | RIP-D（Evidence Chain） | `GATE-EVIDENCE-MINSET=PASS`；bundle\_audit.result=PASS；secrets\_scan=0。 |
| 5 | **required checks 合約鎖定**：checks\_manifest expected/observed/diff | PASS(規範) | WP-010 checks\_manifest.json 生成規格，含 canonical checks。 | RIP-E（CI Gate） | checks\_manifest 生成 \+ diff=0，否則自動 TT/TEMP\_CLOSED。file8 |
| 6 | **Always-Report 必回報**（PR \+ merge\_group） | PASS(規範) / PARTIAL(模板需落地) | WP- | RIP-E（CI Gate） | 同名 check 在 PR 與 merge\_group 都回報完成（run\_proof |
| 7 | **merge\_group 觸發與 Skip Hazard 阻斷** | PASS(規範) | WP-012 靜態掃描與 Fail-Closed 規則。 | RIP-E（CI Gate） | workflow 同時訂閱 pull\_request \+ merge\_group；paths-ignore/if/needs/concurrency 不致 skipped。 |
| 8 | **供應鏈掃描對齊 required checks**（pinact/zizmor/scorecard） | PASS(規範) / PARTIAL(工作流落地) | WP-010 canonical 列表 \+ RBWI TT-009。 | RIP-F（平台治理+供應鏈） | 三個 checks 皆出現在 required checks 且 CI 產證據（lo |
| 9 | **平台治理可稽核**：rulesets/branch protection 快照+diff（anti-bypass） | PASS(規範) / PARTIAL(自動化落地) | WP-009 規範快照；WP-012 BK-004/005 反繞過。 | RIP-F（平台治理+供應鏈） | \+ diff；缺權限→TT/TEMP\_CLOSED。 |
| 10 | **漂移守門**：UI\_LOCATOR \+ closure\_matrix \+ tt\_export | PASS(規範) | WP-014 UI\_LOCATOR/closure。 | drift scan 產出 required\_contexts\_expected/observed/diff；tt\_export.json 可用。 |  |
| 11 | **OpenCode 權限收斂**：permission=ask/block \+ stop rules | PARTIAL（需補 RIP） | RBWI L5 只做版本/缺席處理，未形成完整「施工者/驗收官」persona。 | RIP-A（Agent Engine） | opencode config 固化 permission \+ 角色規則；每次 tool-call 可稽核（log）。([opencode.ai](https://opencode.ai/docs/permissions/?utm_source=chatgpt.com)) |
| wlist、pinning、audit、token隔離 | MISSING → 必補 | MCP 官方安全最佳實務 \+ 既有惡意 MCP 事件。([Model Context Protocol](https://modelcontextprotocol.io/docs/tutorials/security/security_best_practices?utm_source=chatgpt.com)) | RIP-B（MCP Toolchain+Security） | 僅允許白名單 servers；server 版本/來源可驗證；敏感操作有 audit log；違規 Fail-Closed。([Model Context Protocol](https://modelcontextprotocol.io/docs/tutorials/security/security_best_practices?utm_source=chatgpt.com)) |  |

**結論（可驗證）**：你現在的 OMOC 文檔層面多數是 **PASS(規範)**，但要達到你要的「即插即用體驗」，主要落在 **PARTIAL→需要 RIP 包裝成 repo 可落地**，以及 MCP 安全屬 **MISSING→必補**。

---

### **3.3 RIP 必須滿足的 8 個硬條件（不滿足＝不算 RIP）**

1. **Fail-Closed 優先**：任何「不可定位/不可重跑/不可稽核」→ TT \+ TEMP\_CLOSED 或 FAIL\_CLOSED。  
2. **Evidence 合約硬交付**：Minset \+ bundle\_audit \+ secrets\_scan（命中=0）。/一鍵回滾\*\*：安裝器只做最小變更；回滾能恢復到最後一次 PASS（至少 workflows）。  
3. **required checks 永遠回報**（PR \+ merge\_group）：沒有 Always-Report 就不准宣稱 MQ-ready。  
4. **供應鏈硬化內建**：Scorecard \+ zizmor \+ pinact（或等價）必能跑、必能產證據。([GitHub](https://github.com/ossf/scorecard-action?utm_source=chatgpt.com))  
5. **最小權限**：Actions / tokens / MCP scopes 都必須預設最小，且可稽核。([GitHub Docs](https://docs.github.com/en/actions/reference/security/secure-use?utm_source=chatgpt.com))  
6. **平台治理可驗證**：rulesets/branch protection 以快照+diff 形成可回放證據（不接受「我按過了」）。  
7. **外部方案可被隔離與封存**：外部 repo/套件先進 quarantine（記錄 accessed\_at、版本、hash/commit），再允許進主線。

---

### **3.4 需要補幾份 RIP？補哪幾份才夠？**

**建議最小集：6 份（RIP-A\~F）**；少於 6 份時，「即插即用」會留下結構性巨洞。

#### **RIP-A：Agent Engine RIP（施工者/驗收官引擎）**

* **目的**：把「角色/停機規則/輸出格式/回路」固化成 repo 內可執行的 agent 準據（等價於你在 GPTs 做的主指令+Knowledge）。  
* **優先搬運**：SWE-agent（issue→修復→開PR）([GitHub](https://github.com/SWE-agent/SWE-agent?utm_source=chatgpt.com))、PR-Agent（PR 審查）([GitHub](https://github.com/qodo-ai/pr-agent?utm_source=chatgpt.com))、OpenHands SDK（多代理工作流/Workspaces）([GitHub](https://github.com/OpenHands/software-agent-sdk?utm_source=chatgpt.com))  
* **落點**：WP-007（導入點）+ WP-010/011（驗收回報對齊）。*DoD*\*：自動化變更永遠以 PR 方式呈現；每次執行必產 Evidence Minset \+ checks\_manifest。

#### **RIP-B：MCP Toolchain \+ Security RIP**

* **目的**：MCP server 的選型、允許清單、token 隔離、稽核、pinning，一次補齊。  
* **優先搬運**：GitHub 官方 MCP Server/官方用法([GitHub](https://github.com/github/github-mcp-server?utm_source=chatgpt.com))；MCP 官方安全最佳實務([Model Context Protocol](https://modelcontextprotocol.io/docs/tutorials/security/security_best_practices?utm_source=chatgpt.com))；SlowMist checklist([GitHub](https://github.com/slowmist/MCP-Security-Checklist?utm_source=chatgpt.com))；並以「惡意 MCP」事件作威脅模型。([The Hacker News](https://thehackernews.com/2025/09/first-malicious-mcp-server-found.html?utm_source=chatgpt.com))  
* **落點**：WP-004（Auth isolation） \+ WP-014（drift/closure）  
* **DoD**：未在 allowlist 的 MCP server 一律 block；server 來源/版本可追溯；敏感 tool-call 有 audit log。([Model Context Protocol](https://modelcontextprotocol.io/docs/tutorials/security/security_best_practices?utm_source=chatgpt.com))

#### **RIP-C：Skills Runtime RIP（.opencode/skills 可執行內容）**

* **目的**：把 skills 合冊已具備的抽取/驗證，包裝成「repo 一鍵安裝」。  
* **落點**：WP-007（skills pack 抽取落地）  
* **DoD**：`scripts/omoc_validate_contracts.sh` PASS，且 required files 全存在（含 `.opencode/policy/...`、`.ohmy/...`）。

#### **RIP-D：Evidence Chain RIP（Triplet+Bundle 全落地）**

* **目的**：把 WP-008 的 acceptance\_local 與 Gate/DoD，做成「一鍵產證據」與「一鍵驗證」。  
* **落點**：WP-008。  
* **DoD**：Minset 五件套（含 bundle\_audit、secrets\_scan）齊全，缺任何一件→FAIL\_CLOSED。

#### **RIP-E：CI Gate & Always-Report RIP（CI 關門與永遠回報）**

* **目的**：把 WP-010/011/012 的 required checks contract \+ always-report \+ merge\_group 回報性，落成 repo workflows。  
* **落點**：WP-010\~WP-012（以及 RBWI Phase-G）。  
* **DoD**：PR 與 merge\_group 兩路徑皆可回報 required checks；否則不准啟用 MQ（這不是建議，是保命）。([GitHub Docs](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/configuring-pull-request-merges/managing-a-merge-queue?utm_source=chatgpt.com))

#### **RIP-F：Platform Governance \+ Supply-chain Hardening RIP（平台治理 \+ 供應鏈硬化）**

* **目的**：把「規則/設定漂移」變成可回放證據（快照+diff），並把供應鏈掃描固定成 required checks。  
* **優先搬運（平台治理）**：  
  * GitHub rulesets REST API 文件（用於快照/稽核/必要時自動化）。([GitHub Docs](https://docs.github.com/en/rest/repos/rules?utm_source=chatgpt.com))  
  * `gh ruleset`（目前偏 view/check/list；適合做「稽核證據」）。([GitHub CLI](https://cli.github.com/manual/gh_ruleset?utm_source=chatgpt.com))  
  * Terraform \`github\_ritOps，但要認真面對 provider bu([registry.terraform.io](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_ruleset?utm_source=chatgpt.com))  
  * rulesets-as-code action（以 JSON 管理規則、經 CODEOWNERS 才 deploy）。([GitHub](https://github.com/theztefan/rulesets-as-code-action?utm_source=chatgpt.com))  
* **優先搬運（供應鏈硬化）**：Scorecard action([GitHub](https://github.com/ossf/scorecard-action?utm_source=chatgpt.com))、zizmor-action([GitHub](https://github.com/zizmorcore/zizmor-action?utm_source=chatgpt.com))、pinact-action([GitHub](https://github.com/suzuki-shunsuke/pinact-action?utm_source=chatgpt.com))  
* **落點**：WP-009（快照+政策草案） \+ WP-014（drift/closure） \+ WP-010（required checks canonical）\*：rulesets 快照+diff 可重跑；scorecard/zizmor/pinact 三個 checks 全都能回報，且被 required checks 合約鎖定。 具體「從哪個 WP 之後可開始做？」（不繞圈子）  
* **最早可啟動自動化施工/驗收雛形**：**WP-002 PASS 之後**（環境/工具鏈可重跑），立刻接 **WP-007（skills pack）**。  
* \*\*要接近你要的「全自動閉環」\*e）+ WP-010\~012（CI/MQ 回報性）\*\*一起跑通，否則你只是在「自動改」而不是「自動驗」。

---

## **4\) AI/LLM 大數據搜索 RIP 任務\_方案（可直接交給 LLM 執行）**

原則：外部資料**只做選型與佐證**，先 quarantine 再引用；任何漂移性資訊要記錄 accessed\_at（含時區）。

### **4.1 搜索範圍（sources）**

* 官方/權威：GitHub Docs、OpenSSF、MCP 官方站、OpenCode 官方 docs。([GitHub Docs](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/configuring-pull-request-merges/managing-a-merge-queue?utm_source=chatgpt.com))  
* 一手資料：GitHub repo（stars、release、commit、security policy、issues）。([GitHub](https://github.com/SWE-agent/SWE-agent?utm_source=chatgpt.com))  
* 安全事件/研究：Semgrep、The Hacker News 等（只做風險佐證，不當規範）。([The Hacker News](https://thehackernews.com/2025/09/first-malicious-mcp-server-found.html?utm_source=chatgpt.com))

### **4.2 硬性淘汰規則（Hard filters）**

1. **\>12 個月無 release 且近 90 天無有效提交**（除非是穩定成熟且被大廠背書）。  
2. 無明確 license / 模糊授權。  
3. 無最小可跑範例（docs 或 sample workflow）。  
4. 無安全機制說明（尤其 MCP server）。([Model Context Protocol](https://modelcontextprotocol.io/docs/tutorials/security/security_best_practices?utm_source=chatgpt.com))

### **4.3 評分矩陣（0–5；總分 30）**

* Fit（貼合 OMOC：證據/Fail-Closed/可稽核）  
* Maturity（使用者/維護/版本節奏）  
* Security posture（最小權限、pinning、掃描/政策）  
* Integration cost（落地成本/依賴/環境要求）  
* Operability（CI/觀測/回滾）  
* License/Compliance

### **4.4 交付物（必交）**

* 每個 RIP 類別：**Top 3 候選** \+ 1 個推薦方案 \+ 取捨理由  
* 每個候選：repo、最後更新、release、stars、license、最小範例、風險點、與 OMOC gate 對齊映射（對應到 WP-010/011/008 等）。  
* Quarantine 紀錄表（accessed\_at、URL、commit/tag、摘要、風險標記）。

### **4.5 檢索 queries（每類至少 10 條；可直接用）**

**(A) Agent Engine（施工/修復/開PR）**

1. `SWE-agent open_pr GitHub Action`  
2. `SWE-agent autonomous issue to PR workflow`  
3. `OpenHands agent SDK GitHub workflow PR review`  
4. `OpenHands agent server ephemeral workspace docker`  
5. `AI coding agent opens PR automatically`  
6. `code repair agent benchmark SWE-bench open source`  
7. `github issue auto fix agent self-hosted`  
8. `aider auto commit PR workflow`  
9. `Open-SWE agent GitHub`  
10. `software agent SDK multi agent orchestration GitHub`

**(B) PR Review / 驗收官**

1. `qodo pr-agent GitHub Action config:contentReference[oaicite:115]{index=115}b App installation`  
   3\. agent open source\`  
2. \`pull reque  
3. `PR review bot required checks`  
4. `AI reviewer status check GitHub Actions`  
5. `PR-Agent open source alternatives`  
6. `reviewdog AI review integration`  
7. `code scanning bot comment PR`  
8. `LLM code review governance policy`

**(C) MCP servers \+ Security**

1. `modelcontextprotocol servers reference implementations`  
2. `github github-mcp-server official`  
3. `MCP security best practices authorization allowlist`  
4. `MCP server pentesting checklist`  
5. `malicious MCP server npm postmark-mcp`  
6. `MCP confused deputy attack:contentReference[oaicite:118]{index=118}ing mitigation`  
7. `MCP audit logging best practices`  
8. `awesome mcp servers production ready`  
9. `MCP server supply chain security`

**(D) CI Gate / Always-Report / merge\_group**

1. `GitHub merge queue merge_group required checks`  
2. `always-report required status checks workflow pattern`  
3. `merge_group event workflow example`  
4. `Expected waiting for status to be reported merge queue`  
5. `paths-ignore required checks skipped fix`  
6. `concurrency cancel-in-progress merge_group issue`  
7. `status check name contract workflow job name`  
8. `rulesets required status checks contexts merge_group`  
9. `GitHub Actions report status even on failure`  
10. `merge queue troubleshooting required status checks`

**(E) Supply-chain hardening（Actions pinning / 扫描）**

1. `OpenSSF scorecard-action GitHub Action publish_results`  
2. `zizmor-action GitHub Actions security analysis`  
3. `pinact-action pin GitHub actions to commit sha`  
4. `actionlint zizmor compare`  
5. `GitHub Actions least privilege permissions {}`  
6. `untrusted actions supply chain attack mitigation`  
7. `dependabot security updates workflows`  
8. `cosign verify GitHub Action artifacts`  
9. `SLSA provenance GitHub Actions`  
10. \`workflow pinning b(F) Platform governance（rulesets as code / IaC）\*\*  
11. `gi:contentReference[oaicite:120]{index=120} Terraform provider`  
12. `rulesets-as-code GitHub Action`  
13. `GitHub rulesets REST API get all repository rulesets`  
14. `gh ruleset check list view`  
15. `export import rulesets GitHub`  
16. `GitOps rulesets drift detection`  
17. `branch protection vs rulesets merge queue`  
18. `ruleset bypass_actors Terraform bug`  
19. `organization rulesets API limitations`  
20. `rulesets policy as code compliance`

### **4.6 風險控制（Fail-Closed）**

* 任何外部 MCP server：先做 allowlist \+ pinning；出現供應鏈疑點（仿冒/冒名）就直接封鎖。([The Hacker News](https://thehackernews.com/2025/09/first-malicious-mcp-server-found.html?utm_source=chatgpt.com))  
* 任何自動改動：一律走 PR；main 分支禁止直推；合併必須 required checks 全綠。([GitHub Docs](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/configuring-pull-request-merges/managing-a-merge-queue?utm_source=chatgpt.com))

---

## **5\) 風險與對策（偵測→緩解→備援）**

### **技術風險**

* **MQ 卡死（Expected waiting）**：偵測＝WP-012 掃描 \+ WP-011 always-report；緩解＝補 merge\_group triggers \+ wrapper；備援＝MQ 關閉（OMOC\_MQ=0）走 Phase-L。  
* **工具漂移（OpenCode permissions 行為變動）**：偵測＝版本快照；緩解＝以 `permission` config 固化 ask/block；備援＝工具缺席走 fallback。([opencode.ai](https://opencode.ai/docs/permissions/?utm_source=chatgpt.com))

### **資料/安全風險**

* **惡意 MCP server / 供應鏈投毒**：偵測＝allowlist \+ pinning \+ 掃描；緩解＝只用官方/高可信 server；備援＝MCP 全關閉、改用最小本地工具。([The Hacker News](https://thehackernews.com/2025/09/first-malicious-mcp-server-found.html?utm_source=chatgpt.com))  
* **Secrets 外洩（logs/bundle）**：偵測＝secrets scan；緩解＝嚴禁落盤 token；備援＝FAIL\_CLOSED 並保留但不得外傳。

### **法規/合規風險**

* **第三方服務條款/資料外送**：偵測＝quarantine 記錄；緩解＝只採用 OSI license 與可自架；備援＝替代方案（自架 runner / 本地模式）。

### **營運風險**

* **過度自動化造成誤修**：偵測＝PR review gate \+ evidence；緩解＝施工者必附證據與回滾點；備援＝自動化只提案（不自動合併）。

---

## **6\) 來源索引（≥8；去重；含支撐章節）**

1. OpenHands Software Agent SDK（GitHub / Docs）。([GitHub](https://github.com/OpenHands/software-agent-sdk?utm_source=chatgpt.com))（§2C, §3.4 RIP-A）  
2. SWE-agent（GitHub / 官方用法）。([GitHub](https://github.com/SWE-agent/SWE-agent?utm_source=chatgpt.com))（§2C, §3.4 RIP-A）  
3. PR-Agent（qodo-ai/pr-agent \+ 安裝文件）。([GitHub](https://github.com/qodo-ai/pr-agent?utm_source=chatgpt.com))（§2C, §3.4 RIP-A）  
4. GitHub Docs：Managing a merge queue / Troubleshooting required status checks。([GitHub Docs](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/configuring-pull-request-merges/managing-a-merge-queue?utm_source=chatgpt.com))（§2B, §3.2 \#7, §3.4 RIP-E）  
5. OpenSSF Scorecard & scorecard-action。([undefined](https://scorecard.dev/?utm_source=chatgpt.com))（§2D, §3.4 RIP-F）  
6. zizmor / zizmor-action。([GitHub](https://github.com/zizmorcore/zizmor?utm_source=chatgpt.com))（§2D, §3.4 RIP-F）  
7. pinact / pinact-action（Action pinning）。([GitHub](https://github.com/suzuki-shunsuke/pinact?utm_source=chatgpt.com))（§2D, §3.4 RIP-F）  
8. MCP 官方：Security Best Practices。([Model Context Protocol](https://modelcontextprotocol.io/docs/tutorials/security/security_best_practices?utm_source=chatgpt.com))（§2E, §3.2 \#12, §3.4 RIP-B）  
9. 惡意 MCP 事件（The Hacker News / Semgrep）。([The Hacker News](https://thehackernews.com/2025/09/first-malicious-mcp-server-found.html?utm_source=chatgpt.com))（§2E, §5 安全風險）  
10. GitHub 官方 MCP Server / 官方使用指南。([GitHub](https://github.com/github/github-mcp-server?utm_source=chatgpt.com))（§2E, §3.4 RIP-B）  
11. Terraform GitHub provider：repository\_ruleset resource（平台治理選項）。([registry.terraform.io](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_ruleset?utm_source=chatgpt.com))（§3.4 RIP-F）  
12. gh ruleset manual（平台稽核工具）。([GitHub CLI](https://cli.github.com/manual/gh_ruleset?utm_source=chatgpt.com))（§3.4 RIP-F）

---

## **7\) 附錄（術語表｜最小驗收清單）**

### **術語（最小）**

* **RIP**：Reference Implementation Pack，把「規範」變成 repo 內「可安裝/可跑/可驗收/可回滾」。  
* **Minset**：Evidence 最小輸出集（含 bundle\_audit、secrets\_scan）。  
* **Always-Report**：required checks 永遠要有最終狀態回報（避免 MQ 卡死）。  
* **TT/Closure**：缺口必落 TT，文件層 CR\_OPEN=0。

### **最小驗收清單（你可以用來驗收「RIP 是否真的補洞」）**

1. `GATE-ENV-READY=PASS`（WP-002）。  
2. skills 抽取落地 \+ `omoc_validate_contracts.sh` PASS。  
3. `GATE-EVIDENCE-MINSET=PASS`（WP-008）。  
4. PR \+ merge\_group 皆回報同名 required checks（WP-011/012）。  
5. required checks canonical 內含 `pinact/zizmor/scorecard` 且能跑出證據（WP-010）。  
6. rulesets 快照+diff 可重跑；缺權限→TT/TEMP\_CLOSED（WP-009/014）。  
7. MCP server 僅 allowlist \+ pinning，否則 block。([Model Context Protocol](https://modelcontextprotocol.io/docs/tutorials/security/security_best_practices?utm_source=chatgpt.com))

---

* [TechRadar](https://www.techradar.com/pro/security/anthropics-official-git-mcp-server-had-some-worrying-security-flaws-this-is-what-happened-next?utm_source=chatgpt.com)  
* [itpro.com](https://www.itpro.com/software/open-source/anthropic-says-mcp-will-stay-open-neutral-and-community-driven-after-donating-project-to-linux-foundation?utm_source=chatgpt.com)

