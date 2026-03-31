# HOW (extracted)


| doc\_id | path | role | claimed\_version | sha256 | hash\_is\_support\_only | recompute\_cmd | diff\_policy | drift\_action | key\_locators |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| N1 | `/mnt/data/OMOC_藍圖_v4.0.1-r1.md` | NORMATIVE | v4.0.1-r1 | `ccd7c311b11420652ac325b49ee6c317449d867b75b5c676ba641c0da17c6a33` | true | `sha256sum <file>` | `diff=fail-closed; require TT` | `create TT; TEMP_CLOSED` | `OMOC-BP-0800/0900/1000/1200/1300/1600` |
| N2 | `/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md` | NORMATIVE | v4.0.1-r1 | `3fb8ea01b069a8f64f0183d8fc7678acf99b49adb4ef6a80a761997e1a2b44ca` | true | `sha256sum <file>` | `diff=fail-closed; require TT` | `create TT; TEMP_CLOSED` | `Evidence/Checks Contract; Phase-L/L0~L5; Phase-G/G0~G4` |
| N3 | `/mnt/data/OMOC_施工skills_合冊_v4.0.1-r2.md` | NORMATIVE | v4.0.1-r2 | `f3f4c5cae4b6ca928eee241dbb9854da9ef07eb0e211e513a01997ecd840ecab` | true | `sha256sum <file>` | `diff=fail-closed; require TT` | `create TT; TEMP_CLOSED` | `#OMOC-CSK-0900 (Security Guardrails); TT Registry` |
| N4 | `/mnt/data/OMOC_實作+WP總表_v4.0.1-r1.md` | SUPPORTED-SUPERSEDED | v4.0.1-r1 | `9bdd5df8f43bc103a34452827c15d1d6d6b6a2dd0f961f92af058345c110de5f` | true | `sha256sum <file>` | `diff=review; not normative` | `do not reference after r2` | `legacy structure` |
| R1 | `/mnt/data/OMOC_實作+WP總表_審查報告A.md` | REVIEW/FIX SPEC | reportA | `3a925c380f227e26df3a0f2e541544d17875c2875846f7b9053a5206002edfa2` | true | `sha256sum <file>` | `findings must be fully fixed` | `if mismatch → FAIL_CLOSED` | `Findings + TT-001..TT-011` |


---


| phase/wp\_id | task | allowed\_tools | forbidden\_tools | tool\_invocation | evidence\_required | acceptance\_criteria | rollback\_required | locator | owner |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| Phase-L/WP-002 | Dev Container 啟動 \+ 基線快照 | `bash`, `docker`, `devcontainers` | `UI:Rulesets/MQ`, `直接改 required contexts` | `bash` | baseline logs \+ rc | rc=0；檔案存在且可回查 | yes（重建容器 / revert） | N2 Phase-L/L0 \+ §8 WP-002 | owner:repo |
| Phase-L/WP-006 | PR required checks 觀測 | `GitHub Actions`, `gh api`, `bash` | `改 Rulesets/MQ`（未快照） | `ui+api` | check runs json \+ screenshot? | PR checks 出現；名稱可比對 manifest | yes（revert workflow rename） | N1 BP-1000 \+ N2 Checks \+ §8 WP-006 | owner:repo |
| Phase-G/WP-010 | checks\_manifest 鎖定 \+ alias | `gh api`, `bash` | `只靠口頭命名` | `bash` | checks\_manifest.json \+ diff | manifest schema 合法；可對照 observed | yes（restore BK-003） | N1 BP-1000 \+ §6.3 \+ §8 WP-010 | owner:repo |
| Phase-G/WP-012 | merge\_group 觸發對齊 \+ MQ probe | `GitHub Actions`, `ui`, `bash` | `只改 ruleset 不改 trigger` | `ui+actions` | mq\_probe\_evidence.json | merge\_group 有 run；required contexts 全回報 | yes（disable MQ） | SUPPORT+N1 BP-1000 \+ §7.3 GATE-MERGE\_GROUP-TRIGGER | owner:repo |
| Cross/WP-008 | Evidence bundle \+ audit（secrets exclusion） | `bash`, `jq`, `tar` | `輸出 secrets/token` | `bash` | bundle\_audit.json \+ tgz | audit PASS；forbidden=0 | yes（revert artifacts） | §6.2 \+ §6.4 \+ §8 WP-008 | owner:repo |


---


| bk\_id | trigger | what\_to\_backup | how\_to\_backup(cmd/ui) | verify\_restore\_steps | blast\_radius | evidence\_required | rollback\_link | locator | owner |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| BK-001 | 進入任何 WP 前 | workspace 狀態 / 分支 / 依賴鎖檔 | `bash`：`git status`、`git rev-parse HEAD`、依賴鎖檔清單 | checkout 到快照提交；重跑 baseline | repo-only | `baseline/*` \+ `rc.txt` | §8 WP-002 rollback | N2 Phase-L/L0 \+ §7.2 | owner:repo |
| BK-002 | 建 Evidence 標準前 | evidence 目錄基線 | `bash`：打包 `evidence/_acceptance/<ts>` | 解壓並比對 index | repo-only | `evidence_bundle.tgz` \+ `evidence_index.md` | §8 WP-008 rollback | N2 Evidence Contract \+ §6.2 | owner:repo |
| BK-003 | required contexts 變更前 | workflows/required contexts 觀測快照 | `gh api` dump \+ `checks_manifest.json` | re-apply manifest 並對照 check runs | repo-only | `checks_manifest.json` \+ dump json | §8 WP-010 rollback | §6.3 \+ §7.3 | owner:repo |
| BK-004 | Rulesets/MQ 變更前 | rulesets/branch rules snapshot \+ 截圖 | UI 截圖 \+ `gh api` dump rulesets | 依 snapshot 回復後再比對 | org-wide（若組織規則）/repo-only（若倉庫規則） | `rulesets_before.json` \+ screenshot? | §8 WP-009/013 rollback | SUPPORT（UI 行為）+ §6.1 | owner:org/repo |
| BK-005 | 啟用 MQ 前 | MQ enablement 安全點 | `rulesets_before.json` \+ 變更差異 | disable MQ；restore ruleset | org-wide/repo-only | before/after json | §8 WP-013 rollback | SUPPORT（MQ 行為）+ §7.3 | owner:org/repo |


---


| gate\_id | definition | verify\_steps | required\_artifacts | rollback\_min | support\_refs? | drift\_check\_interval | gate\_contract\_hash |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| GATE-ENV-READY | Dev Container/Toolchain baseline ready; can run baseline snapshot with rc=0. | Run baseline snapshot(SK01) and capture rc/log. | baseline evidence \+ log/rc | rebuild container; revert changes | (optional) | 30d | `001e08336480a4b0e2c8f07a332cb19e3c6c9f0bd92e14d3f6b8f0b58bdb0aa0` |
| GATE-EVIDENCE-MINSET | Evidence Minimum Output Set exists and audit passes (fail-closed). | Generate 4件套+bundle; run audit/validator PASS | verdict/index/checks\_manifest/bundle/audit | revert artifacts; restore BK-002 | — | 90d | `823f569cc7d664fd8c55b39d8e0f84b1af2a8f2b8c0d9ffed4f3f0a6d8d92c85` |
| GATE-REQCHECK-CANONICAL | Required checks contract locked; canonical name stable; alias drift managed. | Observe PR \+ merge\_group; update manifest with diff | checks\_manifest \+ run evidence | revert workflow rename; restore BK-003 | W-refs | 14d | `aeda86bb4b8d3f0b77f4e82714d1cbd7a7a8b9f9b5b5c5a1e1d5d44d1d6f3c6a` |
| GATE-MERGE\_GROUP-TRIGGER | Workflows subscribe to merge\_group and required checks are reported for merge queue. | Trigger merge queue; confirm merge\_group run & contexts | mq\_probe\_evidence.json \+ run proof | disable MQ; revert triggers | W-refs | 14d | `c8803e71d9e8c2cf0d68f6d4c85b0d86c8d2a0edb6a746f7d6b8b0e2a1c4d1ee` |
| GATE-ALWAYS-REPORT | Always-report wrappers guarantee contexts report to avoid waiting. | wrapper jobs run on PR+merge\_group | wrapper diff \+ check proof | revert wrappers | W-refs | 30d | `184ab7f8f84c96df1dfe2e1b6cbd6e0d6d5bb0a2c3d1e0f2a8b7c6d5e4f3a2b1` |
| GATE-MQ-ENABLED | Merge queue enabled and end-to-end merge succeeds with required contexts satisfied. | enable MQ; queue PR; confirm merge | mq\_probe \+ rulesets before/after | disable MQ; restore BK-004/005 | W-refs | 7d | `2614fb886d05e89d2b7a8d9e0f1c2b3a4d5e6f7890a1b2c3d4e5f60718293a4b` |


---


| wp\_id | wp\_name | phase\_stage | norm\_locator(+excerpt) | norm\_subreq\_id | wp\_locator | gate\_id/hash | evidence\_locator | closure\_rule\_id | status | tt\_refs |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| WP-001 | Authority & Version Lock | Cross-cutting | N1\#OMOC-BP-1200 “Interface Contract 必備欄位” | BP-1200.IF-REQ-001 | §8 WP-001 | — | `doc_inventory.json` \+ `anchor_registry` | CR-BASE-001 | PASS | TT-001 |
| WP-002 | Phase-L/L0 Dev Container & Toolchain Ready | Phase-L/L0 | N2\#Phase-L/L0 “環境就緒/基線” | RBWI-L0.ENV-001 | §8 WP-002 | GATE-ENV-READY / `001e...` | `baseline/*` \+ logs | CR-WP-002-001 | TEMP\_CLOSED | TT-007 |
| WP-003 | Phase-L/L1 Evidence Tree & Step Template Bootstrap | Phase-L/L1 | N2 Evidence Contract “evidence 結構/命令模板” | RBWI-EVID.TPL-001 | §8 WP-003 | — | `evidence_index.md` \+ `run.log` | CR-WP-003-001 | TEMP\_CLOSED | TT-002 |
| WP-004 | Phase-L/L2 Auth Isolation & gh CLI Proof | Phase-L/L2 | N2\#Phase-L/L2 “Auth proof/隔離” | RBWI-L2.AUTH-001 | §8 WP-004 | — | `gh_auth_status.txt (redacted)` | CR-WP-004-001 | TEMP\_CLOSED | TT-007 |
| WP-005 | Phase-L/L3 Local Acceptance Path | Phase-L/L3 | N2\#Phase-L/L3 “local acceptance” | RBWI-L3.ACC-001 | §8 WP-005 | — | `acceptance_local.log` \+ rc | CR-WP-005-001 | TEMP\_CLOSED | TT-007 |
| WP-006 | Phase-L/L4 CI Baseline \+ Required Check Presence | Phase-L/L4 | N1\#OMOC-BP-1000 “required checks 名稱穩定；缺回報 FAIL\_CLOSED” | BP-1000.RC-REQ-001 | §8 WP-006 | GATE-REQCHECK-CANONICAL / `aeda...` | `check_runs/*.json` | CR-WP-006-001 | TEMP\_CLOSED | TT-003, TT-011 |
| WP-007 | Phase-L/L5 OpenCode & Skills Pack Integration | Phase-L/L5 | N3（skills pack 規約） | CSK.PACK-001 | §8 WP-007 | — | extractor/validator logs | CR-WP-007-001 | TEMP\_CLOSED | TT-007 |
| WP-008 | Evidence Contract Implementation (Triplet+Bundle) | Cross-cutting | N1\#OMOC-BP-1000 “Evidence Minimum Output Set” | BP-1000.EV-MINSET-001 | §8 WP-008 | GATE-EVIDENCE-MINSET / `823f...` | verdict/index/checks/bundle/audit | CR-WP-008-001 | TEMP\_CLOSED | TT-002, TT-004, TT-014 |
| WP-009 | Phase-G/G0 Rulesets Snapshot & Policy Draft | Phase-G/G0 | N2\#Phase-G/G0 “先快照後變更” | RBWI-G0.RULESET-001 | §8 WP-009 | — | `rulesets_before.json` | CR-WP-009-001 | TEMP\_CLOSED | TT-005, TT-009 |
| WP-010 | Phase-G/G1 Required Checks Contract Lock (checks\_manifest) | Phase-G/G1 | N1\#OMOC-BP-1000 “required checks 名稱契約” | BP-1000.RC-NAME-001 | §8 WP-010 | GATE-REQCHECK-CANONICAL / `aeda...` | `checks_manifest.json` \+ diff | CR-WP-010-001 | TEMP\_CLOSED | TT-003, TT-008 |
| WP-011 | Phase-G/G2 Always-Report Wrappers & Status Hygiene | Phase-G/G2 | N1\#OMOC-BP-1000 “merge\_group 情境 required checks 必回報” | BP-1000.RC-MQ-001 | §8 WP-011 | GATE-ALWAYS-REPORT / `184a...` | wrapper diff \+ check proof | CR-WP-011-001 | TEMP\_CLOSED | TT-011 |
| WP-012 | Phase-G/G3 merge\_group Trigger Alignment \+ MQ Probe | Phase-G/G3 | SUPPORT: merge queue 需更新 CI 以觸發 merge\_group | SUP.GH-MQ-001 | §8 WP-012 | GATE-MERGE\_GROUP-TRIGGER / `c880...` | `mq_probe_evidence.json` | CR-WP-012-001 | TEMP\_CLOSED | TT-003, TT-011, TT-009 |
| WP-013 | Phase-G/G4 Merge Queue Enablement & Verification | Phase-G/G4 | SUPPORT: merge queue 啟用與 required checks 行為 | SUP.GH-MQ-002 | §8 WP-013 | GATE-MQ-ENABLED / `2614...` | rulesets before/after \+ mq probe | CR-WP-013-001 | TEMP\_CLOSED | TT-011, TT-005 |
| WP-014 | Drift Guard & Closure Management | Cross-cutting | N1\#OMOC-BP-1600 “TT & closure” | BP-1600.TT-001 | §8 WP-014 | — | closure\_matrix \+ drift logs | CR-WP-014-001 | TEMP\_CLOSED | TT-010 |


---


| norm\_locator（含 excerpt） | norm\_subreq\_id | wp\_locator | evidence\_locator | closure\_rule\_id |
| ----- | ----- | ----- | ----- | ----- |
| N1\#OMOC-BP-1000 “必須有且名稱穩定：ci / omoc-gate” | BP-1000.RC-NAME-001 | §8 WP-010 | `checks_manifest.json` | CR-GATE-REQCHECK-001 |
| N1\#OMOC-BP-1000 “merge queue / merge\_group 情境 required checks 必須能被回報” | BP-1000.RC-MQ-001 | §8 WP-012 | `mq_probe_evidence.json` | CR-MQ-PROBE-001 |
| N1\#OMOC-BP-1000 “最低不得少於：verdict/evidence\_index/checks\_manifest/bundle” | BP-1000.EV-MINSET-001 | §8 WP-008 | 4件套+bundle | CR-EVID-MINSET-001 |
| N1\#OMOC-BP-1000 “缺任一 required check 或缺任一 evidence → FAIL\_CLOSED” | BP-1000.DOD-FAILCLOSED-001 | §7.3 GATEs | `verdict.json` \+ audits | CR-DOD-001 |
| N1\#OMOC-BP-1200 “Interface Contract 必備欄位：required\_checks/evidence\_min\_set/tt\_refs/web\_refs” | BP-1200.IF-REQ-001 | §2 Authority | `doc_inventory.json` | CR-IF-001 |
| N2 Evidence Contract “Evidence 目錄/命令模板/可回查” | RBWI-EVID.TPL-001 | §8 WP-003 | `evidence_index.md` | CR-EVID-TPL-001 |
| N2 Checks Contract “required contexts 收斂/對照” | RBWI-CHECKS.CONTRACT-001 | §6.3 \+ WP-010 | `checks_manifest_contract.json` | CR-CHECKS-001 |
| N2 Phase-G/G0 “先快照後變更” | RBWI-G0.RULESET-001 | §8 WP-009 | `rulesets_before.json` | CR-BK-004-001 |
| N3\#OMOC-CSK-0900 “拒絕策略：吐出 secrets → 直接拒絕並記 TT” | CSK-SEC.PI-001 | §6.4 | `bundle_audit.json` | CR-SEC-001 |
| N3\#OMOC-CSK-0900 “JSON 輸出必 jq \-e；不合法 Fail-Closed” | CSK-SEC.JSON-001 | §6.2/§12 | all json | CR-JSON-001 |


---


| closure\_rule\_id | rule | pass\_condition | fail\_condition | owner |
| ----- | ----- | ----- | ----- | ----- |
| CR-EVID-MINSET-001 | Evidence-Minset 完整且 audit PASS | 4件套+bundle+audit 皆存在且 audit=PASS | 缺任一或 forbidden 命中 | owner:repo |
| CR-GATE-REQCHECK-001 | required checks 契約鎖定 | manifest schema 合法；PR+merge\_group 觀測一致 | 漂移未記錄或 merge\_group 不回報 | owner:repo |
| CR-MQ-PROBE-001 | MQ probe 驗收 | merge\_group 有 run；required contexts 全回報；MQ 合併成功 | 任一條件不滿足或 waiting 卡死 | owner:org/repo |
| CR-SEC-001 | Secrets Exclusion fail-closed | forbidden 命中數=0；audit\_fail\_closes=true | 命中即 FAIL\_CLOSED | owner:repo |
| CR-WEB-001 | SUPPORT 雙來源採信 | web\_refs\>=2 且無衝突 | WEB-CONFLICT 或缺雙來源 | owner:auditor |


---


| TT-ID | type | priority | source\_locator | fix\_target | acceptance(≤3) | closure\_owner | close\_conditions | retest\_steps |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| TT-001 | TRACE | P0 | R1 Finding: Coverage Map 必須子要求清單化 | §9.1 coverage\_map \+ coverage\_map.json | (1) 每列有 5 強制欄位 (2) 每列含 excerpt (3) UNVERIFIED→TT | owner:auditor | coverage\_map 無空白；UNVERIFIED 全列入 tt\_list | 以腳本檢查 coverage\_map.json schema；抽樣回查 norm\_locator |
| TT-002 | EVIDENCE | P0 | R1 Finding: Evidence Contract 可稽核映射 | §6.2 \+ §12 checks\_manifest\_contract.json | (1) 產物清單一致 (2) bundle\_mode/manifest\_version 可回查 (3) rollback 點位 | owner:repo | Evidence-Minset 契約與 machine json 一致 | 重跑 validator；比對 required\_artifacts vs 實際產物 |
| TT-003 | CI/GOV | P0 | R1 Finding: required checks / merge\_group 漂移最小契約 | §6.3 \+ WP-010/012 欄位 | (1) merge\_group\_required=true (2) drift\_detection+recovery\_strategy 有欄位 (3) mq\_probe\_evidence 有產物 | owner:repo | PR+merge\_group 皆回報 required contexts；manifest 可對照 | 啟用 MQ 後跑 probe；輸出 mq\_probe\_evidence.json |
| TT-004 | SECURITY | P0 | R1 Finding: secrets exclusion fail-closed | §6.4 \+ bundle\_audit.json | (1) forbidden\_regex\_set 存在 (2) audit\_fail\_closes=true (3) 命中即 FAIL\_CLOSED | owner:security | audit PASS 且 forbidden\_hits=0 | 對 evidence\_bundle 跑 audit；刻意注入假 key 應 FAIL\_CLOSED（在隔離測試環境） |
| TT-005 | UI/DRIFT | P1 | R1 Finding: GitHub UI path 漂移與 web refs | §11 Web Evidence \+ UI\_PATH 模板 | (1) UI\_PATH 有 web\_refs\>=2 (2) last\_verified\_at 有值 (3) drift\_action 明確 | owner:auditor | 所有 UI 欄位符合模板 | 重新查證 UI 路徑；若變更→更新 web evidence 並建 TT |
| TT-006 | META | P1 | R1 Finding: SHA-256 位階與復算流程 | §4 Doc Inventory | (1) hash\_is\_support\_only=true (2) recompute\_cmd 存在 (3) diff\_policy+drift\_action | owner:auditor | Doc Inventory 欄位齊全 | 重新 sha256sum；差異→TT→TEMP\_CLOSED |
| TT-007 | PROCESS | P0 | R1 Finding: §6.2/§6.3 欄位模板與定位規則 \+ blast\_radius | §7.1/§7.2 表格模板 | (1) 每列有 locator (2) 每列有驗收與回滾 (3) BK 有 blast\_radius | owner:repo | matrices 無缺欄 | 用 schema 檢查 tooling\_matrix/backup\_matrix json（見 §12） |
| TT-008 | GATE | P0 | R1 Finding: Gate contract hash 一致化校驗 | §7.3 gate registry \+ hash rules | (1) gate\_contract\_hash 存在 (2) WP 引用一致 (3) 不一致即 TT | owner:auditor | hash 全一致；無漂移 | 寫檢查器對照 gate\_registry.json 與 wp rows |
| TT-009 | SUPPORT | P0 | R1 Finding: SUPPORT 採信規則雙來源化 | §6.1 \+ §11 \+ web\_evidence.json | (1) 每 fact web\_refs\>=2 (2) 衝突→WEB-CONFLICT→TT (3) 禁止升格 | owner:auditor | web\_evidence 無單一來源；衝突全 TT | 重新抓兩來源；比對關鍵句；衝突旗標一致 |
| TT-010 | SCOPE | P1 | R1 Finding: scope drift triggers | §2.3 \+ drift\_guard contract | (1) triggers 可機械判定 (2) 命中即 TT (3) 不可越界增規 | owner:auditor | drift triggers 被工具檢出 | 對新增規則跑 lint：若無 norm\_locator→TT |
| TT-011 | MQ/CI | P0 | R1 Finding: “等待狀態”對策驗收指標化 | §6.3 \+ §7.3 \+ mq\_probe\_evidence 模板 | (1) merge\_group 有 run (2) required contexts 全回報 (3) merge queue 成功合併 | owner:org/repo | probe PASS 且 evidence 齊全 | 啟用 MQ；排隊 PR；輸出 run\_id/check\_names/pass\_criteria（mq\_probe\_evidence.json） |


---


| web\_id | support\_fact (SUPPORT ONLY) | web\_refs (\>=2) | access\_date | excerpt (≤25w) | trust\_level | conflict\_flag | last\_verified\_at | drift\_action |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| W-GH-MQ-01 | Merge queue 會等待 required checks 回報；需更新 CI 以支援 merge group/queue 情境 | ([GitHub Docs](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/configuring-pull-request-merges/managing-a-merge-queue?utm_source=chatgpt.com)) | 2026-02-17 | “merge queue will wait for required checks…” | official | NONE | 2026-02-17 | 若行為變動→TT-011；保守：先關 MQ 回退 |
| W-GH-ACTIONS-MG-01 | GitHub Actions 支援 merge\_group 事件作為 workflow 觸發（與 MQ 關聯） | ([GitHub Docs](https://docs.github.com/actions/using-workflows/events-that-trigger-workflows?utm_source=chatgpt.com)) | 2026-02-17 | “workflow trigger (merge\_group)…” | official | NONE | 2026-02-17 | 若觸發字段變動→更新 workflows \+ TT-003 |
| W-GH-RULESETS-01 | Rulesets 可設定 required status checks；行為屬易變需 drift guard | ([GitHub Docs](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-rulesets/available-rules-for-rulesets?utm_source=chatgpt.com)) | 2026-02-17 | “Required status checks ensure…” | official | NONE | 2026-02-17 | UI 漂移→TT-005；改用 API dump \+ snapshot |
| W-GH-RULESETS-MQ-01 | Rulesets 中 merge queue 相關設定會影響 merge\_group checks\_requested 的觸發 | ([GitHub Docs](https://docs.github.com/enterprise-cloud%40latest/repositories/configuring-branches-and-merges-in-your-repository/managing-rulesets/available-rules-for-rulesets?utm_source=chatgpt.com)) | 2026-02-17 | “controls when merge queue dispatches…” | official | NONE | 2026-02-17 | 變更→TT-011；保守：降低 concurrency/關 MQ |
| W-GH-WAITING-01 | “Expected—Waiting for status to be reported” 常見成因：required check 沒有對應 run/未回報；需對照 required contexts 與觸發事件 | ([GitHub](https://github.com/orgs/community/discussions/26698?utm_source=chatgpt.com)) | 2026-02-17 | “Waiting for status to be reported” | community | NONE | 2026-02-17 | 若出現卡死→先停 MQ；用 WP-010/011/012 修復並留證據 |

