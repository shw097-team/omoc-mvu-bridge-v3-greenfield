# HOW (extracted)


* RUNBOOK/WI 承載：**How（命令/步驟/腳本/畫面操作）**  


---


| 主錨點 | 章節 |
| ----- | ----- |
| OMOC-BP-0000 | 封面 |
| OMOC-BP-0100 | Cover Card |
| OMOC-BP-0200 | TOC |
| OMOC-BP-0300 | Reader Guide |
| OMOC-BP-0400 | Authority Stack |
| OMOC-BP-0500 | Scope-Lock |
| OMOC-BP-0600 | Glossary |
| OMOC-BP-0700 | Core Concepts |
| OMOC-BP-0800 | Tri-Plane Governance |
| OMOC-BP-0900 | Profiles & Phases |
| OMOC-BP-1000 | DoD |
| OMOC-BP-1100 | Route-Out Rules |
| OMOC-BP-1200 | Interfaces |
| OMOC-BP-1300 | Anchor Registry |
| OMOC-BP-1400 | Trace Map |
| OMOC-BP-1500 | Closure Matrix |
| OMOC-BP-1600 | TEST\_TRACK |
| OMOC-BP-1700 | Web Evidence |
| OMOC-BP-1800 | blueprint\_manifest.json |
| OMOC-BP-1900 | Coverage Checklist |
| OMOC-BP-2000 | FINAL VERDICT |


---


| TT-ID | 標題 | 觸發/風險 | 狀態 | 驗證條件（Pass 判準） | 最小跡證集（Evidence Minimum Set） | 關聯 Issue | Web Evidence |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| TT-VERSION-GAP-01 | v8.1.1-r1 命名落差補救 | Baseline 缺失導致治理失真 | TEMP\_CLOSED | Repo/檔案庫確認不存在或補齊；映射更新 | Doc Inventory \+ manifest 更新 | ISS-META-V8-01 | — |
| TT-VERSION-NORM-01 | 版本治理一致性 | 檔名/封面/manifest 不一致會致回歸 | TEMP\_CLOSED | 三者一致；manifest 記錄 supersedes | `blueprint_manifest.json` | ISS-B-F-001 | — |
| TT-TRACE-COMPLETE-01 | Trace Map 完整性 | 空白落點/毀損錨點會導致不可稽核 | TEMP\_CLOSED | Trace Map 無空白；所有新錨點存在 | Trace Map \+ Anchor Registry | ISS-B-F-003/004 | — |
| TT-TT-STRUCT-01 | TT 結構完整性 | 空白 TT-ID/欄位缺漏 | TEMP\_CLOSED | TT 表無空白必要欄 | 本 TT 表 \+ manifest `tt_count` | ISS-B-F-006 | — |
| TT-TRIPLET-COMPAT-01 | Evidence Triplet 互斥解除（加法相容） | 上游定義不一 → 工程互斥 | TEMP\_CLOSED | 產物至少 4 件套；bundle 內含 3+1 | `verdict.json`/`evidence_index.md`/`checks_manifest.json`/`evidence_bundle.tgz` | ISS-B-F-008 | — |
| TT-IO-CONTRACT-01 | RUNBOOK/WI 接口契約落地 | 施工文件若越權改規範 | TEMP\_CLOSED | RUNBOOK/WI 有 interface fields 且引用本版 | RUNBOOK/WI header（字段） | ISS-B-F-005 | — |
| TT-WEB-CANON-01 | Web URL 正規化與引用衛生 | utm/冒名站/內容農場污染 | TEMP\_CLOSED | Web Evidence 全為 canonical URL；白/黑名單生效 | Web Evidence 表 \+ 白名單策略 | ISS-B-F-007/010 | W00–W11 |
| TT-GH-MQ-01 | GitHub Merge Queue / merge\_group 漂移 | merge\_group 觸發/回報規則易變 | TEMP\_CLOSED | merge\_group 事件下 required checks 仍可回報 | checks\_manifest \+ CI run 證據 | ISS-A-DELTA-01/ISS-B-F-011 | W00/W01 |
| TT-GH-RULESETS-01 | GitHub Rulesets/Required Checks 漂移 | 規則集/Required checks 行為調整 | TEMP\_CLOSED | rulesets 對應 required checks 命名契約一致 | checks\_manifest \+ 規則快照 | ISS-A-DELTA-02 | W02 |
| TT-OPENCODE-VERSION-01 | OpenCode 版本對齊 | 版本變動造成行為差 | TEMP\_CLOSED | RUNBOOK/WI 指定版本；升級有 TT | 版本宣告 \+ 變更紀錄 | ISS-A-DELTA-03 | W06 |
| TT-OPENCODE-PERM-01 | OpenCode 權限/能力宣告 | 權限漂移/越權風險 | TEMP\_CLOSED | 權限模型在 RUNBOOK/WI 明示 | 權限宣告 \+ evidence | ISS-A-DELTA-04 | W07 |
| TT-OPENCODE-WEBSEARCH-01 | Websearch Tool 可用性漂移 | tool availability 受控 | TEMP\_CLOSED | 工具可用性被宣告並可驗證 | 工具清單 \+ evidence | ISS-B-F-011 | W08 |
| TT-SUPPLYCHAIN-01 | 供應鏈/冒名站防護 | 冒名站/惡意 Action 風險 | TEMP\_CLOSED | 白名單策略 \+ 掃描工具納入 | 策略文件 \+ 掃描報告 | ISS-B-F-010/ISS-A-DELTA-05 | W09/W03/W11 |
| TT-SEC-PI-01 | Prompt Injection 防線落地 | 注入導致規範污染 | TEMP\_CLOSED | 信任邊界/拒絕策略在流程中被引用 | 指南引用 \+ evidence | ISS-A-DELTA-06 | W10/W11 |
| TT-CR-019-01 | 轉換 CR\_OPEN-019 | 禁留 CR\_OPEN | TEMP\_CLOSED | CR\_OPEN → TT 且無懸空 | 本 TT 表 \+ 變更記錄 | ISS-UP-CR-019 | — |
| TT-CR-021-01 | 轉換 CR\_OPEN-021 | 禁留 CR\_OPEN | TEMP\_CLOSED | CR\_OPEN → TT 且無懸空 | 本 TT 表 \+ 變更記錄 | ISS-UP-CR-021 | — |
| TT-UPSTREAM-ENUM-01 | 上游藍圖層抽取規則維護 | 上游混排可能復發 | TEMP\_CLOSED | 抽取規則固定；若上游更新必更新 Trace | Trace Map \+ Doc Inventory | ISS-B-F-003 | — |


---


| W-ID | 主題 | Canonical URL | 存取日 | 5行內摘要 | 綁定 TT |
| ----- | ----- | ----- | ----- | ----- | ----- |
| W00 | Merge Queue 概念/行為 | `https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/configuring-pull-request-merges/managing-a-merge-queue` ([GitHub Docs](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/configuring-pull-request-merges/managing-a-merge-queue)) | 2026-02-15 | Merge Queue 的流程/要求會影響 required checks 與回報路徑；屬易變行為需 TT | TT-GH-MQ-01 |
| W01 | Actions `merge_group` 事件 | `https://docs.github.com/en/actions/using-workflows/events-that-trigger-workflows#merge_group` ([GitHub Docs](https://docs.github.com/actions/using-workflows/events-that-trigger-workflows)) | 2026-02-15 | `merge_group` 是 Merge Queue 相關觸發事件；workflow 需覆蓋以避免狀態不回報 | TT-GH-MQ-01 |
| W02 | Rulesets（Required checks 等） | `https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-rulesets/available-rules-for-rulesets` ([GitHub Docs](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-rulesets/available-rules-for-rulesets)) | 2026-02-15 | Rulesets 可定義 required checks 等規則；行為調整需以 TT 追蹤 | TT-GH-RULESETS-01 |
| W03 | 安全使用 GitHub Actions | `https://docs.github.com/en/actions/security-guides/security-hardening-for-github-actions` ([GitHub Docs](https://docs.github.com/en/enterprise-cloud%40latest/actions/reference/security/secure-use)) | 2026-02-15 | 提供 workflow 安全加固要點；屬供應鏈/越權風險基礎參照 | TT-SUPPLYCHAIN-01 |
| W04 | Dev Containers 規格 | `https://containers.dev/implementors/spec/` ([開發容器](https://devcontainers.github.io/implementors/spec/)) | 2026-02-15 | devcontainer 規格屬外部標準；版本/欄位變動需被治理 | TT-WEB-CANON-01 |
| W05 | VS Code Dev Containers 文件 | `https://code.visualstudio.com/docs/devcontainers/containers` ([code.visualstudio.com](https://code.visualstudio.com/docs/devcontainers/containers)) | 2026-02-15 | VS Code 端行為/相容性屬易變；僅作外部行為參照 | TT-WEB-CANON-01 |
| W06 | OpenCode Changelog（v1.2.x） | `https://opencode.ai/changelog` ([opencode.ai](https://opencode.ai/changelog)) | 2026-02-15 | v1.2.x 近日期變動頻繁；版本鎖定/升級需 TT 控制 | TT-OPENCODE-VERSION-01 |
| W07 | OpenCode Permissions | `https://opencode.ai/docs/permissions` ([opencode.ai](https://opencode.ai/docs/permissions/)) | 2026-02-15 | 權限模型影響可用工具與風險面；需明示與審計 | TT-OPENCODE-PERM-01 |
| W08 | OpenCode Tools（websearch 等） | `https://opencode.ai/docs/tools` ([opencode.ai](https://opencode.ai/docs/tools/)) | 2026-02-15 | tool 清單與行為易變；需在 RUNBOOK/WI 宣告與驗證 | TT-OPENCODE-WEBSEARCH-01 |
| W09 | Oh-My-OpenCode 官方 repo 警示 | `https://github.com/code-yeongyu/oh-my-opencode` ([GitHub](https://github.com/code-yeongyu/oh-my-opencode)) | 2026-02-15 | repo 明示與某網域不相干 → 冒名站風險；納入黑名單策略 | TT-SUPPLYCHAIN-01 |
| W10 | OWASP AI Agent Security Cheat Sheet | `https://cheatsheetseries.owasp.org/cheatsheets/AI_Agent_Security_Cheat_Sheet.html` ([cheatsheetseries.owasp.org](https://cheatsheetseries.owasp.org/cheatsheets/AI_Agent_Security_Cheat_Sheet.html)) | 2026-02-15 | 提供 agent 安全要點（信任邊界/工具濫用等）；用於注入防線最低要求 | TT-SEC-PI-01 |
| W11 | OWASP Prompt Injection Prevention | `https://cheatsheetseries.owasp.org/cheatsheets/LLM_Prompt_Injection_Prevention_Cheat_Sheet.html` ([cheatsheetseries.owasp.org](https://cheatsheetseries.owasp.org/cheatsheets/LLM_Prompt_Injection_Prevention_Cheat_Sheet.html)) | 2026-02-15 | 提供 prompt injection 具體防護策略；本藍圖採其最低防線語義 | TT-SEC-PI-01 |


---


| TT-ID | 標題 | 觸發/風險 | 狀態 | 驗證條件（Pass 判準） | 最小跡證集（Evidence Minimum Set） | 關聯 Issue | Web Evidence |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| TT-VERSION-GAP-01 | v8.1.1-r1 命名落差補救 | Baseline 缺失導致治理失真 | TEMP\_CLOSED | Repo/檔案庫確認不存在或補齊；映射更新 | Doc Inventory \+ manifest 更新 | ISS-META-V8-01 | — |
| TT-VERSION-NORM-01 | 版本治理一致性 | 檔名/封面/manifest 不一致會致回歸 | TEMP\_CLOSED | 三者一致；manifest 記錄 supersedes | `blueprint_manifest.json` | ISS-B-F-001 | — |
| TT-TRACE-COMPLETE-01 | Trace Map 完整性 | 空白落點/毀損錨點會導致不可稽核 | TEMP\_CLOSED | Trace Map 無空白；所有新錨點存在 | Trace Map \+ Anchor Registry | ISS-B-F-003/004 | — |
| TT-TT-STRUCT-01 | TT 結構完整性 | 空白 TT-ID/欄位缺漏 | TEMP\_CLOSED | TT 表無空白必要欄 | 本 TT 表 \+ manifest `tt_count` | ISS-B-F-006 | — |
| TT-TRIPLET-COMPAT-01 | Evidence Triplet 互斥解除（加法相容） | 上游定義不一 → 工程互斥 | TEMP\_CLOSED | 產物至少 4 件套；bundle 內含 3+1 | `verdict.json`/`evidence_index.md`/`checks_manifest.json`/`evidence_bundle.tgz` | ISS-B-F-008 | — |
| TT-IO-CONTRACT-01 | RUNBOOK/WI 接口契約落地 | 施工文件若越權改規範 | TEMP\_CLOSED | RUNBOOK/WI 有 interface fields 且引用本版 | RUNBOOK/WI header（字段） | ISS-B-F-005 | — |
| TT-WEB-CANON-01 | Web URL 正規化與引用衛生 | utm/冒名站/內容農場污染 | TEMP\_CLOSED | Web Evidence 全為 canonical URL；白/黑名單生效 | Web Evidence 表 \+ 白名單策略 | ISS-B-F-007/010 | W00–W11 |
| TT-GH-MQ-01 | GitHub Merge Queue / merge\_group 漂移 | merge\_group 觸發/回報規則易變 | TEMP\_CLOSED | merge\_group 事件下 required checks 仍可回報 | checks\_manifest \+ CI run 證據 | ISS-A-DELTA-01/ISS-B-F-011 | W00/W01 |
| TT-GH-RULESETS-01 | GitHub Rulesets/Required Checks 漂移 | 規則集/Required checks 行為調整 | TEMP\_CLOSED | rulesets 對應 required checks 命名契約一致 | checks\_manifest \+ 規則快照 | ISS-A-DELTA-02 | W02 |
| TT-OPENCODE-VERSION-01 | OpenCode 版本對齊 | 版本變動造成行為差 | TEMP\_CLOSED | RUNBOOK/WI 指定版本；升級有 TT | 版本宣告 \+ 變更紀錄 | ISS-A-DELTA-03 | W06 |
| TT-OPENCODE-PERM-01 | OpenCode 權限/能力宣告 | 權限漂移/越權風險 | TEMP\_CLOSED | 權限模型在 RUNBOOK/WI 明示 | 權限宣告 \+ evidence | ISS-A-DELTA-04 | W07 |
| TT-OPENCODE-WEBSEARCH-01 | Websearch Tool 可用性漂移 | tool availability 受控 | TEMP\_CLOSED | 工具可用性被宣告並可驗證 | 工具清單 \+ evidence | ISS-B-F-011 | W08 |
| TT-SUPPLYCHAIN-01 | 供應鏈/冒名站防護 | 冒名站/惡意 Action 風險 | TEMP\_CLOSED | 白名單策略 \+ 掃描工具納入 | 策略文件 \+ 掃描報告 | ISS-B-F-010/ISS-A-DELTA-05 | W09/W03/W11 |
| TT-SEC-PI-01 | Prompt Injection 防線落地 | 注入導致規範污染 | TEMP\_CLOSED | 信任邊界/拒絕策略在流程中被引用 | 指南引用 \+ evidence | ISS-A-DELTA-06 | W10/W11 |
| TT-CR-019-01 | 轉換 CR\_OPEN-019 | 禁留 CR\_OPEN | TEMP\_CLOSED | CR\_OPEN → TT 且無懸空 | 本 TT 表 \+ 變更記錄 | ISS-UP-CR-019 | — |
| TT-CR-021-01 | 轉換 CR\_OPEN-021 | 禁留 CR\_OPEN | TEMP\_CLOSED | CR\_OPEN → TT 且無懸空 | 本 TT 表 \+ 變更記錄 | ISS-UP-CR-021 | — |
| TT-UPSTREAM-ENUM-01 | 上游藍圖層抽取規則維護 | 上游混排可能復發 | TEMP\_CLOSED | 抽取規則固定；若上游更新必更新 Trace | Trace Map \+ Doc Inventory | ISS-B-F-003 | — |


---


| W-ID | 主題 | Canonical URL | 存取日 | 5行內摘要 | 綁定 TT |
| ----- | ----- | ----- | ----- | ----- | ----- |
| W00 | Merge Queue 概念/行為 | `https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/configuring-pull-request-merges/managing-a-merge-queue` ([GitHub Docs](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/configuring-pull-request-merges/managing-a-merge-queue)) | 2026-02-15 | Merge Queue 的流程/要求會影響 required checks 與回報路徑；屬易變行為需 TT | TT-GH-MQ-01 |
| W01 | Actions `merge_group` 事件 | `https://docs.github.com/en/actions/using-workflows/events-that-trigger-workflows#merge_group` ([GitHub Docs](https://docs.github.com/actions/using-workflows/events-that-trigger-workflows)) | 2026-02-15 | `merge_group` 是 Merge Queue 相關觸發事件；workflow 需覆蓋以避免狀態不回報 | TT-GH-MQ-01 |
| W02 | Rulesets（Required checks 等） | `https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-rulesets/available-rules-for-rulesets` ([GitHub Docs](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-rulesets/available-rules-for-rulesets)) | 2026-02-15 | Rulesets 可定義 required checks 等規則；行為調整需以 TT 追蹤 | TT-GH-RULESETS-01 |
| W03 | 安全使用 GitHub Actions | `https://docs.github.com/en/actions/security-guides/security-hardening-for-github-actions` ([GitHub Docs](https://docs.github.com/en/enterprise-cloud%40latest/actions/reference/security/secure-use)) | 2026-02-15 | 提供 workflow 安全加固要點；屬供應鏈/越權風險基礎參照 | TT-SUPPLYCHAIN-01 |
| W04 | Dev Containers 規格 | `https://containers.dev/implementors/spec/` ([開發容器](https://devcontainers.github.io/implementors/spec/)) | 2026-02-15 | devcontainer 規格屬外部標準；版本/欄位變動需被治理 | TT-WEB-CANON-01 |
| W05 | VS Code Dev Containers 文件 | `https://code.visualstudio.com/docs/devcontainers/containers` ([code.visualstudio.com](https://code.visualstudio.com/docs/devcontainers/containers)) | 2026-02-15 | VS Code 端行為/相容性屬易變；僅作外部行為參照 | TT-WEB-CANON-01 |
| W06 | OpenCode Changelog（v1.2.x） | `https://opencode.ai/changelog` ([opencode.ai](https://opencode.ai/changelog)) | 2026-02-15 | v1.2.x 近日期變動頻繁；版本鎖定/升級需 TT 控制 | TT-OPENCODE-VERSION-01 |
| W07 | OpenCode Permissions | `https://opencode.ai/docs/permissions` ([opencode.ai](https://opencode.ai/docs/permissions/)) | 2026-02-15 | 權限模型影響可用工具與風險面；需明示與審計 | TT-OPENCODE-PERM-01 |
| W08 | OpenCode Tools（websearch 等） | `https://opencode.ai/docs/tools` ([opencode.ai](https://opencode.ai/docs/tools/)) | 2026-02-15 | tool 清單與行為易變；需在 RUNBOOK/WI 宣告與驗證 | TT-OPENCODE-WEBSEARCH-01 |
| W09 | Oh-My-OpenCode 官方 repo 警示 | `https://github.com/code-yeongyu/oh-my-opencode` ([GitHub](https://github.com/code-yeongyu/oh-my-opencode)) | 2026-02-15 | repo 明示與某網域不相干 → 冒名站風險；納入黑名單策略 | TT-SUPPLYCHAIN-01 |
| W10 | OWASP AI Agent Security Cheat Sheet | `https://cheatsheetseries.owasp.org/cheatsheets/AI_Agent_Security_Cheat_Sheet.html` ([cheatsheetseries.owasp.org](https://cheatsheetseries.owasp.org/cheatsheets/AI_Agent_Security_Cheat_Sheet.html)) | 2026-02-15 | 提供 agent 安全要點（信任邊界/工具濫用等）；用於注入防線最低要求 | TT-SEC-PI-01 |
| W11 | OWASP Prompt Injection Prevention | `https://cheatsheetseries.owasp.org/cheatsheets/LLM_Prompt_Injection_Prevention_Cheat_Sheet.html` ([cheatsheetseries.owasp.org](https://cheatsheetseries.owasp.org/cheatsheets/LLM_Prompt_Injection_Prevention_Cheat_Sheet.html)) | 2026-02-15 | 提供 prompt injection 具體防護策略；本藍圖採其最低防線語義 | TT-SEC-PI-01 |

