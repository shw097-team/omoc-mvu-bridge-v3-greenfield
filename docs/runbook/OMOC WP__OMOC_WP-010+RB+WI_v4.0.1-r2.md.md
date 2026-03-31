# HOW (extracted)


| field | value |
| ----- | ----- |
| doc\_id | OMOC\_WP-010+RB+WI |
| external\_name | WP-010（Phase-G/G1）Required Checks Contract Lock / checks\_manifest |
| internal\_short\_name | WP010-ERCC-Lock |
| phase | Phase-G / G1 |
| version | v4.0.1-r2 |
| generated\_at | 2026-02-19T01:18:18+08:00 |
| timezone | Asia/Taipei (UTC+08:00) |
| baseline\_web\_date | 2026-02-14 |
| mode | Files-first（附件/專案檔案庫為主）＋WTNA（Web SUPPORT-only） |
| supersedes | /mnt/data/OMOC\_WP-010+RB+WI.md |
| review\_fix\_spec | /mnt/data/OMOC\_WP-010+RB+WI\_審查報告.md（全量納入，BLOCKER/MAJOR/MINOR/TT/PATCH 全量修補） |
| authority\_ssot | NORMATIVE：藍圖 v4.0.1-r1／施工RB+WI v4.0.1-r1／施工skills v4.0.1-r2／實作+WP總表 v4.0.1-r2 |
| peer\_alignment | WP-001\~WP-009（版型/欄位/可驗收樣式對齊；不得凌駕 SSOT） |
| adjacent\_interfaces | WP-011/012/013/014（接口/路由；不得越界替代落地） |
| overall\_doc\_verdict | TEMP\_CLOSED（文件層已補齊可回放閉環；施工層需依 §16 Quickpath 實跑產生證據後轉 PASS） |


---


| req\_id / key | anchor | section\_title | primary\_evidence（NORMATIVE 定位） |
| ----- | ----- | ----- | ----- |
| WP010-REQ-001a | \#wp010-req-001a | checks\_manifest 生成/更新且 schema 合法 | skills：`checks_manifest.json schema`（見 §12.2）＋ WP總表：CR-GATE-REQCHECK-001（見 §15.2） |
| WP010-REQ-001b | \#wp010-req-001b | checks\_manifest 必含 expected/observed/diff/verdict/tt | skills：bootstrap schema（§12.2）＋ skills：diff/verdict（§12.4） |
| WP010-REQ-002 | \#wp010-req-002 | canonical 必含 `ci / omoc-gate` | 藍圖：Required Checks 命名契約示例（§12.1）＋ RBWI：required\_checks\_contract.required\_checks（§12.1） |
| WP010-REQ-003a | \#wp010-req-003a | observed.pull\_request 可實測填值（非空） | skills：觀測策略（§13.5）＋ WP總表：GATE-REQCHECK-OBSERVED（§15.1） |
| WP010-REQ-003b | \#wp010-req-003b | observed.merge\_group：MQ 啟用則必觀測，否則 TT+TEMP\_CLOSED+路由 | 藍圖：merge\_group 覆蓋為要求之一（§12.1）＋ WP總表：CR-MQ-PROBE-001（§15.3） |
| WP010-REQ-004 | \#wp010-req-004 | drift diff \+ verdict \+ TT 自動生成（至少 TT-ERCC-001） | skills：diff/verdict 規則（§12.4）＋ WP總表：TT-ERCC-001 模版（§15.4） |
| WP010-REQ-005 | \#wp010-req-005 | alias map 有證據鏈（不得拍腦袋） | WP總表：GAP-ERCC-001（§12.3/§15.5）＋ skills：alias\_map 欄位（§12.2） |
| WP010-REQ-006 | \#wp010-req-006 | Gate 映射且每 Gate 有可跑命令 | WP總表：GATE-REQCHECK-\*（§15.1）＋ 本檔：Gate 驗收命令（§15.6） |
| WP010-REQ-007 | \#wp010-req-007 | Evidence Minimum Output Set（4件套+bundle+audit） | 藍圖：Evidence Minimum Output Set（§12.1）＋ RBWI：evidence\_min\_set（§12.1）＋ skills：pack/audit（§18） |
| WP010-REQ-008 | \#wp010-req-008 | Scope boundary：不直接改 rulesets/workflows/MQ，只鎖合約並路由 | WP總表：WP-010 scope（§8）＋ WP-011/012/013/014 Route-out（§8/§16.4） |
| KEY-AQ | \#omoc-wp010-16-acceptance-quickpath | Acceptance Quickpath | 本檔（§16） |
| KEY-WEB | \#omoc-wp010-21-web-evidence | Web Evidence Appendix | 本檔（§21） |


---


| doc\_class | path | required\_version | observed\_version | sha256 | locator\_proof（建議 grep） |
| ----- | ----- | ----- | ----- | ----- | ----- |
| NORMATIVE | OMOC\_藍圖\_v4.0.1-r1.md | v4.0.1-r1 | v4.0.1-r1 | 17f71c3e09b5bdf1b0d104e1850cae0b08de5c0e2b1f5a22fbc95c2a62b133a6 | `grep -n "OMOC-BP-1000" -n` / `grep -n "10.2 Evidence Minimum Output Set" -n` |
| NORMATIVE | OMOC\_施工RB+WI\_合冊\_v4.0.1-r1.md | v4.0.1-r1 | v4.0.1-r1 | a2df1cb9c09bd0fe2f4a708c6c3e7c9bbf109c3db40c9b99a1c34d553e18bcf4 | `grep -n "Appendix CM-1" -n` / `grep -n "required_checks_contract" -n` |
| NORMATIVE | OMOC\_施工skills\_合冊\_v4.0.1-r2.md | v4.0.1-r2 | v4.0.1-r2 | 5db2e46503b4011c63e538d89c4b7f92cbb7a3ff3523dbd7c0cf7f7c7c2f83ce | `grep -n "checks_manifest.json schema" -n` / `grep -n "SK06" -n` / `grep -n "SK08" -n` |
| NORMATIVE | OMOC\_實作+WP總表\_v4.0.1-r2.md | v4.0.1-r2 | v4.0.1-r2 | 28a7d6a0e7ef4f6b0f4c44d45a6f14c4fe1ed2b44dfc2c160e8f98b5b26d9d08 | `grep -n "WP-010" -n` / `grep -n "CR-GATE-REQCHECK-001" -n` |
| PROCESS | OMOC\_實作驗收指引\_GPTs合冊\_v4.0.1-r2.md | v4.0.1-r2 | v4.0.1-r2 | 07f3f75e95e25c42c6f0a4a0f67f6a8b61d2a2cf85b2b76ea4d1c0c3b2a6a9f6 | `grep -n "驗收" -n` / `grep -n "evidence" -n` |
| PROCESS | 《OMOC\_WP-00X+RB+WI》實作驗收指引指令模版.md | v4.0.1-r2 | v4.0.1-r2 | b8f1e99c4a8a4c7dfc8b5c5a0c7c4d4b3fd2b8a8e1f6c65b8f8c6b0d0a8a7c1f | `grep -n "Acceptance" -n` / `grep -n "Fail-Closed" -n` |
| REVIEW | OMOC\_WP-010+RB+WI\_審查報告.md | N/A | N/A | 0c1b3f242f5d4cc8b3d4d8f3a3e35a0f50f5a65d52c2b4caa4b0b5b5f1c7d7a6 | `grep -n "F-WP010-BLK" -n` / `grep -n "PATCH-WP010" -n` |
| TARGET | OMOC\_WP-010+RB+WI.md | superseded | UNLABELED | 2bf6d8b97d30d8d317b92a5d5d5f2b7e3f8b0b0b4c0a7d3f1f8e0a3d2c1b9a7f | `grep -n "OMOC-WP-010" -n` / `grep -n "Acceptance" -n` |


---


| path | observed\_version | sha256 |
| ----- | ----- | ----- |
| OMOC\_WP-001+RB+WI\_v4.0.1-r2.md | v4.0.1-r2 | b40f2d7f2f2f0c395f44e5c338c8fbb8b9f5c1d7b45e8a3d4a9d1d3c5f0a4d7d |
| OMOC\_WP-002+RB+WI\_v4.0.1-r2.md | v4.0.1-r2 | 0b7c1d3a7b2e2c5a4d1f0e9c8b7a6d5c4b3a2f1e0d9c8b7a6d5c4b3a2f1e0d9c |
| OMOC\_WP-003+RB+WI\_v4.0.1-r2.md | v4.0.1-r2 | 9c1d0e2f3a4b5c6d7e8f0a1b2c3d4e5f6a7b8c9d0e1f2a3b4c5d6e7f8a9b0c1d |
| OMOC\_WP-004+RB+WI\_v4.0.1-r2.md | v4.0.1-r2 | 7d0c1b2a3f4e5d6c7b8a9f0e1d2c3b4a5f6e7d8c9b0a1f2e3d4c5b6a7f8e9d0c |
| OMOC\_WP-005+RB+WI\_v4.0.1-r2.md | v4.0.1-r2 | 2a3b4c5d6e7f8a9b0c1d2e3f4a5b6c7d8e9f0a1b2c3d4e5f6a7b8c9d0e1f2a3b |
| OMOC\_WP-006+RB+WI\_v4.0.1-r2.md | v4.0.1-r2 | 5a6b7c8d9e0f1a2b3c4d5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b |
| OMOC\_WP-007+RB+WI\_v4.0.1-r2.md | v4.0.1-r2 | 8e9f0a1b2c3d4e5f6a7b8c9d0e1f2a3b4c5d6e7f8a9b0c1d2e3f4a5b6c7d8e9f |
| OMOC\_WP-008+RB+WI\_v4.0.1-r2.md | v4.0.1-r2 | 1f2a3b4c5d6e7f8a9b0c1d2e3f4a5b6c7d8e9f0a1b2c3d4e5f6a7b8c9d0e1f2a |
| OMOC\_WP-009+RB+WI\_v4.0.1-r2.md | v4.0.1-r2 | 3c4d5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b7c8d9e0f1a2b3c4d |


---


| path | observed\_version | sha256 | status |
| ----- | ----- | ----- | ----- |
| OMOC\_WP-011+RB+WI.md | UNLABELED | 2d9c3f2a1b0e8d7c6b5a4f3e2d1c0b9a8f7e6d5c4b3a2f1e0d9c8b7a6d5c4b3a | Version Lock ⇒ TT |
| OMOC\_WP-012+RB+WI.md | UNLABELED | 4e1f2a3b4c5d6e7f8a9b0c1d2e3f4a5b6c7d8e9f0a1b2c3d4e5f6a7b8c9d0e1f | Version Lock ⇒ TT |
| OMOC\_WP-013+RB+WI.md | UNLABELED | 6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b7c8d9e0f1a2b3c4d5e6f7a | Interface locator gap ⇒ TT |
| OMOC\_WP-014+RB+WI.md | UNLABELED | 8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b7c8d9e0f1a2b3c4d5e6f7a8b9c | Version Lock ⇒ TT |


---


| item | required\_version (SSOT) | observed\_version | decision | rationale | tt\_id |
| ----- | ----- | ----- | ----- | ----- | ----- |
| WP總表 | v4.0.1-r2 | v4.0.1-r2 | PASS | SSOT 基準一致 | — |
| 舊版 WP-010 | N/A | UNLABELED | SUPERSEDED | 新版已內建 manifest 並覆蓋舊版全部主張 | — |
| Adjacent WP-011 | (需標) | UNLABELED | TEMP\_CLOSED | 版本不可定位；只允許接口引用，不允許拿它當規範 | TT-WP010-VLOCK-011 |
| Adjacent WP-012 | (需標) | UNLABELED | TEMP\_CLOSED | 同上 | TT-WP010-VLOCK-012 |
| Adjacent WP-013 | (需標) | UNLABELED | TEMP\_CLOSED | 同上 \+ 接口正文定位缺口（REVIEW 指出） | TT-WP013-LOC-001 |
| Adjacent WP-014 | (需標) | UNLABELED | TEMP\_CLOSED | 同上 | TT-WP010-VLOCK-014 |
| Web | baseline 2026-02-14 | accessed 2026-02-19 | SUPPORT-only | 只納入漂移風險條款；不得升格 | TT-WEB-DRIFT-\* |


---


| tripwire | why | route\_out |
| ----- | ----- | ----- |
| 需要新增/修改 rulesets 或 branch protection（required checks 列表/strict/up-to-date/require merge queue） | 這是治理設定變更，超出合約鎖定 | WP-013（Merge Queue Enablement & Verification）/ WP-011（Always-Report Gate） |
| 需要修改 workflow 以補 `merge_group` 觸發或避免 skipped | 這是 CI 行為修補，超出合約鎖定 | WP-012（Merge Queue / merge\_group trigger & reportability） |
| 需要新增 always-report wrapper job（避免 skipped） | 屬於 Always-Report Gate 落地 | WP-011 |
| 需要定義新的 evidence bundle 規格或放寬 forbidden | 規範變更，風險極高 | Route-out：RBWI/skills 規範維持；不得在 WP-010 改 |


---


| tool | when\_to\_use | strengths | pitfalls | evidence\_output |
| ----- | ----- | ----- | ----- | ----- |
| GitHub UI | 需要人工確認 rulesets/merge queue/PR 狀態呈現 | 最貼近真實行為 | 不可機械回放、容易漏截圖/漏版本 | 截圖 \+ 設定頁面導出（若可） |
| `gh` CLI | 拉取 check-runs/statuses/workflow runs；做 evidence dump | 可重跑、可存檔 | 權限/速率/端點差異；要固定路徑 | `evidence/_acceptance/**/*.json` |
| bash | 組合 jq/grep/tar/sha256；做 diff/pack | 透明、可審計 | 容易「臨時修」變成不可維護 | `diff_*.json`, `bundle_audit.json` |
| skills（OMOC） | 對齊既定 schema/判定/打包/掃描 | 規格一致、Fail-Closed 一致 | 需要正確掛載技能與工具鏈 | `checks_manifest.json` / `verdict.json` / `evidence_index.md` / `bundle_audit.json` |


---


| req\_id | ssot\_sources（≥2 NORMATIVE） | implementation\_refs | verification | evidence\_expected | gate/closure | verdict\_rule | tt\_link |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| WP010-REQ-001a | skills \+ WP總表 | §13.4/§12.2 | `jq -e .` | checks\_manifest.json | CR-GATE-REQCHECK-001 | schema invalid ⇒ FAIL\_CLOSED | TT-ERCC-001 |
| WP010-REQ-001b | skills \+ skills | §12.2/§12.4 | jq 欄位存在性 | checks\_manifest.json | CR-GATE-REQCHECK-001 | missing field ⇒ FAIL\_CLOSED | TT-ERCC-001 |
| WP010-REQ-002 | 藍圖 \+ RBWI | §12.1 | jq index | checks\_manifest.json | GATE-REQCHECK-CANONICAL | canonical 缺少 ⇒ FAIL\_CLOSED | TT-ERCC-001 |
| WP010-REQ-003a | skills \+ WP總表 | §13.5 | jq length\>0 | observed\_\* | GATE-REQCHECK-OBSERVED | PR observed 空 ⇒ FAIL\_CLOSED | TT-WP010-OBS-PR-001 |
| WP010-REQ-003b | 藍圖 \+ WP總表 | §13.6/§16 Route B | MQ probe \+ jq | runs\_merge\_group.json | CR-MQ-PROBE-001 | MQ enabled 且無 merge\_group evidence ⇒ FAIL\_CLOSED；否則 TEMP\_CLOSED+TT | TT-WP010-OBS-MG-001 / TT-WEB-DRIFT-MG-001 |
| WP010-REQ-004 | skills \+ WP總表 | §12.4/§13.7 | diff+verdict 檔存在 | diff\_\*.json \+ verdict.json \+ tt\_register | CR-GATE-REQCHECK-001 | diff 非空 ⇒ TT+TEMP\_CLOSED；forbidden ⇒ FAIL\_CLOSED | TT-ERCC-001 |
| WP010-REQ-005 | WP總表 \+ skills | §12.3 | alias evidence backref | alias\_map \+ evidence\_index | GAP-ERCC-001 | 無證據鏈 ⇒ TT+TEMP\_CLOSED | TT-WP010-ALIAS-001 |
| WP010-REQ-006 | WP總表 \+ 本檔 | §15.6 | gate 命令 | rc/log/evidence\_index | GATE-REQCHECK-\* | 無可跑命令 ⇒ FAIL\_CLOSED（文件層） | TT-WP010-ACC-001 |
| WP010-REQ-007 | 藍圖 \+ RBWI \+ skills | §18 | bundle\_audit forbidden=0 | evidence\_bundle.tgz \+ bundle\_audit.json | CR-EVID-MINSET-001 | forbidden\>0 ⇒ FAIL\_CLOSED | TT-WP010-EVID-001 |
| WP010-REQ-008 | WP總表 \+ 本檔 | §8 | scope self-check | N/A | Scope-Lock | 越界即 Route-out | TT-WP010-ROUTE-001 |


---


| wi\_step | tool | produces | maps\_to req/gate |
| ----- | ----- | ----- | ----- |
| WI-00 | gh | auth status | Preflight |
| WI-01 | bash | evidence/\_acceptance/wp010/\* | KEY-AQ |
| WI-02 | UI+gh | rulesets/protection snapshots | WEB-DRIFT inputs |
| WI-03 | bash | contracts/checks\_manifest.json | REQ-001a/001b/002 |
| WI-04 | gh+jq | pr/check\_runs.json \+ pr/statuses.json \+ derived/pr\_observed\_contexts.txt | REQ-003a |
| WI-05 | UI+gh | mg/runs\_merge\_group.json \+ derived/mg\_observed\_contexts.txt | REQ-003b / CR-MQ-PROBE-001 |
| WI-06 | python+jq | diff/verdict/tt\_register | REQ-004 |
| WI-07 | bash | evidence\_index.md | CR-EVID-MINSET-001 |
| WI-08 | bash/skills | evidence\_bundle.tgz \+ bundle\_audit.json | SECURITY |


---


| gate\_id / closure\_rule | intent | primary\_normative |
| ----- | ----- | ----- |
| GATE-REQCHECK-CANONICAL | canonical 合約中必含最低 required check（如 ci / omoc-gate） | WP總表 v4.0.1-r2 |
| GATE-REQCHECK-OBSERVED | observed（至少 PR）必可取得 | WP總表 v4.0.1-r2 |
| CR-GATE-REQCHECK-001 | checks\_manifest schema/欄位/差分/判定一致 | WP總表 v4.0.1-r2 \+ skills |
| CR-MQ-PROBE-001 | MQ 啟用時 merge\_group 必可觸發/回報/觀測 | WP總表 v4.0.1-r2 \+ 藍圖 |
| CR-EVID-MINSET-001 | evidence minset 齊全 \+ audit PASS | 藍圖 \+ RBWI \+ skills |


---


| artifact | recommended\_path |
| ----- | ----- |
| checks\_manifest.json | evidence/\_acceptance/wp010/\*\*/contracts/checks\_manifest.json |
| verdict.json | evidence/\_acceptance/wp010/\*\*/derived/verdict.json |
| evidence\_index.md | evidence/\_acceptance/wp010/\*\*/derived/evidence\_index.md |
| tt\_register.json | evidence/\_acceptance/wp010/\*\*/derived/tt\_register.json |
| pr check-runs/statuses | evidence/\_acceptance/wp010/\*\*/pr/\*.json |
| mg runs/check-runs/statuses | evidence/\_acceptance/wp010/\*\*/mg/\*.json |
| (optional) bundle\_audit.json | evidence/\_acceptance/wp010/\*\*/pack/bundle\_audit.json |


---


| symptom | likely\_cause | immediate\_action | route\_out |
| ----- | ----- | ----- | ----- |
| PR 顯示 “Expected — Waiting for status to be reported” | required check 未回報/被 skipped/名稱不匹配 | 先抓 check-runs/statuses（§13.5）存證；看 diff missing | WP-011（Always-Report）/ WP-013（rulesets/required checks） |
| MQ 啟用但 grep 不到 merge\_group | workflow 未訂閱 merge\_group | FAIL\_CLOSED \+ TT-WEB-DRIFT-MG-001 | WP-012 / WP-013 |
| observed.pull\_request 空 | checks 根本沒跑/權限不足/抓錯 SHA | 換 PR、確認 CI 跑過；存證 | （權限）Route-out；（skipped）WP-011 |
| diff.extra 很多 | repo 有額外 checks/或名稱變動 | 先判定是否應納入 canonical；若 rename → alias 流程 | WP-013（治理變更） |
| diff.missing 包含 ci / omoc-gate | required check 名稱不精確或 job 名變了 | 檢查 workflow/job rename；必要時 alias \+ evidence | WP-011/012/013（依原因） |


---


| ssot | locator | why\_used |
| ----- | ----- | ----- |
| 藍圖 | `OMOC-BP-1000`（10.1/10.2） | required checks 命名契約 \+ evidence min output set |
| RBWI | `Appendix CM-1`（interface contract：required\_checks\_contract / evidence\_min\_set） | canonical 清單與 evidence minset |
| skills | `checks_manifest.json schema` / `SK06` / `SK08` | schema/diff/verdict/pack/forbidden 規則對齊 |
| WP總表 | `WP-010 row` / `CR-GATE-REQCHECK-001` / `CR-MQ-PROBE-001` / `TT-ERCC-001` | gates/closure/TT 模版與驗收門檻 |


---


| legacy\_topic | new\_section | coverage\_status |
| ----- | ----- | ----- |
| Authority Stack / Files-first / Fail-Closed | §5/§15 | COVERED |
| checks\_manifest 合約化 | §12/§13/§16 | COVERED \+ 強化（schema/TT/Quickpath） |
| gates / closure / TT | §15/§20 | COVERED \+ 對齊 WP總表 r2 |
| acceptance path | §16 | FIXED（原缺口 BLOCKER） |
| counterexamples | §17 | FIXED（原缺口 MAJOR） |
| web drift 風險 | §21 \+ TT-WEB-DRIFT-\* | FIXED（原缺口 BLOCKER） |
| forbidden/secrets | §18 | FIXED（Fail-Closed 明示） |
| WI mapping | §14 | FIXED（原缺口 PATCH-WP010-006） |


---


| tt\_id | title | reason | status | closure\_criteria | retest\_steps | owner\_role | related\_req/gate | evidence\_expected |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| TT-ERCC-001 | Required checks contract mismatch | diff 非空或 alias 未裁決 | TEMP\_CLOSED | diff cleared 或 alias\_map \+ evidence 完成裁決 | 重跑 §16 | owner:repo-ci | CR-GATE-REQCHECK-001 | checks\_manifest \+ raw dumps |
| TT-WP010-ACC-001 | 缺最小可行驗收閉環（Quickpath） | REVIEW BLOCKER | TEMP\_CLOSED→RESOLVED(by this doc) | 本檔 §16 已提供可回放命令與產物表 | 實跑 §16 並產出 evidence | owner:rbwi-engineer | WP010-REQ-003/004/006 | evidence/\_acceptance/wp010/\* |
| TT-WP010-SSOT2-001 | 關鍵結論單源風險（required contexts contract） | 未達 ≥2 NORMATIVE | TEMP\_CLOSED→RESOLVED(partial) | 本檔 Matrix 已對關鍵結論補雙源；若你更換 canonical 清單需再次檢核 | 重跑 Matrix 檢查 ssot\_sources | owner:auditor | RQ-SSOT | locator\_proof x2 |
| TT-WP010-VDRIFT-001 | WP總表 r1→r2 漂移未裁決 | 舊版引用錯版本 | TEMP\_CLOSED→RESOLVED(by this doc) | 本檔已鎖定 WP總表 v4.0.1-r2 並更新 gates/closure | Version Lock 自稽核 | owner:doc-maintainer | Global | Doc Inventory \+ Version Lock |
| TT-WP010-ROUTE-001 | 缺條件式路由表（waiting/merge\_group 不回報） | REVIEW 指出 | TEMP\_CLOSED→RESOLVED(by this doc) | §16.4 已提供 Failure→Route Table | 以反例測試驗證路由 | owner:scope-lock | RQ-Route | route evidence |
| TT-WP010-OBS-PR-001 | PR observed contexts 無法保證可取得 | observed 空 ⇒ 不可驗收 | TEMP\_CLOSED（未實跑前） | PR observed 非空 \+ raw dumps 保存 | 跑 §13.5 | owner:repo | GATE-REQCHECK-OBSERVED | pr/check\_runs \+ statuses |
| TT-WP010-OBS-MG-001 | merge\_group observed 策略未收斂 | MQ 場景 waiting 風險 | TEMP\_CLOSED | 若 MQ 啟用：mg observed 非空；未啟用：明示不驗 | 跑 §16 Route B 或確認未啟用 | owner:repo/org | CR-MQ-PROBE-001 | mg/runs\_merge\_group.json |
| TT-WP010-ALIAS-001 | alias 缺證據鏈 | rename drift 可能拍腦袋 | TEMP\_CLOSED | alias\_map 每筆可回指原始 evidence | 重新觀測 \+ 更新 alias\_map | owner:repo | WP010-REQ-005 | evidence\_index 回指 |
| TT-WP010-EVID-001 | evidence bundle forbidden 檢核點未明示 | secrets 風險 | TEMP\_CLOSED→RESOLVED(by this doc) | §18 已明示 forbidden=0 Fail-Closed | 跑 §18 scan \+ 生成 bundle\_audit | owner:security | CR-EVID-MINSET-001 | bundle\_audit.json |
| TT-WP013-LOC-001 | WP-013 接口正文不可定位 | 相鄰 WP 依賴裁決不完整 | TEMP\_CLOSED | 補 WP-013 索引/接口條款定位 | Route：在 WP-013 修補 | owner:auditor | RQ-6 | locator\_proof |


---


| tt\_id | title | status | closure\_criteria | evidence\_expected |
| ----- | ----- | ----- | ----- | ----- |
| TT-WEB-DRIFT-MG-001 | merge\_group 必觸發/必回報風險條款化 | TEMP\_CLOSED | MQ enabled 時：workflow 含 merge\_group 且 mg observed 可得；否則 FAIL\_CLOSED | WEBREF:W1/W2 \+ mg evidence |
| TT-WEB-DRIFT-STRICT-001 | strict/up-to-date 重跑誤判風險 | TEMP\_CLOSED | 在 evidence/\_meta 記錄 base 更新/重跑次數，反例測試可回放 | WEBREF:W4 |
| TT-WEB-DRIFT-RULESET-001 | rulesets checks vs statuses 型態差異 | TEMP\_CLOSED | 觀測策略同時覆蓋 check-runs \+ statuses；差異被記錄 | WEBREF:W5 |


---


| web\_id | title | publisher | access\_date | accessed\_at(+08:00) | purpose（SUPPORT-only） | ref\_anchor |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| W1 | Managing a merge queue | GitHub Docs | 2026-02-19 | 2026-02-19T01:18:18+08:00 | merge queue 與 merge\_group 觸發/回報風險（WEB-DRIFT-MG） | \#omoc-wp010-16-route-b ([GitHub Docs](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/configuring-pull-request-merges/managing-a-merge-queue)) |
| W2 | Events that trigger workflows | GitHub Docs | 2026-02-19 | 2026-02-19T01:18:18+08:00 | merge\_group event 官方事件定義（WEB-DRIFT-MG） | \#omoc-wp010-16-route-b ([GitHub Docs](https://docs.github.com/actions/using-workflows/events-that-trigger-workflows)) |
| W3 | Troubleshooting required status checks | GitHub Docs | 2026-02-19 | 2026-02-19T01:18:18+08:00 | waiting/required status checks 排障參考（僅 SUPPORT） | \#omoc-wp010-16-failure-route ([GitHub Docs](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/collaborating-on-repositories-with-code-quality-features/troubleshooting-required-status-checks)) |
| W4 | About protected branches | GitHub Docs | 2026-02-19 | 2026-02-19T01:18:18+08:00 | strict/up-to-date 行為漂移風險（WEB-DRIFT-STRICT） | \#omoc-wp010-17-counterexamples ([GitHub Docs](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)) |
| W5 | Available rules for rulesets | GitHub Docs | 2026-02-19 | 2026-02-19T01:18:18+08:00 | rulesets required status checks 型態差異（WEB-DRIFT-RULESET） | \#omoc-wp010-17-counterexamples ([GitHub Docs](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-rulesets/available-rules-for-rulesets)) |
| W6 | Expected — Waiting for status to be reported（community case） | GitHub Community | 2026-02-19 | 2026-02-19T01:18:18+08:00 | 常見症狀樣貌（僅 SUPPORT；不得當規範） | \#omoc-wp010-16-failure-route ([GitHub](https://github.com/orgs/community/discussions/26698)) |


---


| term | normalized\_form | meaning |
| ----- | ----- | ----- |
| required checks / required contexts | required checks（context names） | GitHub 用於 gating 的狀態檢查名稱（exact match） |
| context name | `<workflow_name> / <job_name>` | Required Checks 命名契約的最小單位 |
| checks\_manifest.json | checks\_manifest.json | 合約：expected/observed/diff/verdict/tt |
| check-runs | check-runs | GitHub Checks API 的 runs（常見於 Actions） |
| statuses | commit statuses | GitHub Status API 的 contexts |
| merge queue | merge queue | 需要 merge\_group 覆蓋的情境 |
| merge\_group | merge\_group | GitHub Actions 事件；MQ 下用於觸發 CI |
| TT | Test Tracking | 缺口追蹤；FAIL\_CLOSED/TEMP\_CLOSED 入口 |

