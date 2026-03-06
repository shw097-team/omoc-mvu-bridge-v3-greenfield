# HOW (extracted)


| Req-ID | 子需求 | 上位 NORMATIVE locator(s) | 本文件覆蓋 | 驗收判準（Pass/Fail） | Evidence Minset（最小） | Fail → TT |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| WP001-REQ-001 | Authority Stack 與衝突裁決 | N4 §8 WP-MASTER Table：WP-001 row；N1 §OMOC-BP-1200 | §2, §9 | 明確宣告 N1\~N4 層級；r2 primary；衝突必進 Decision Log | `doc_inventory.json`（含 authority\_level） | TT-WP001-001, TT-WP001-010 |
| WP001-REQ-002 | Entry Gate：四份 NORM 可讀 \+ sha256 快照 | N4 §8 固定欄位要求；R1 PATCH-WP001-002 | §4, §5.2, §6.2 | `sha256sum.txt` 存在且含 N1\~N4；工具檢查通過 | `sha256sum.txt`, `checks_manifest.json`, `rc.txt` | TT-WP001-002 |
| WP001-REQ-003 | Evidence Minset 分層閉環，不得排除 RBWI | N2 Evidence Contract；R1 PATCH-WP001-003 | §5.6, §7.5 | Evidence Minset 至少含 4 件：`verdict.json`/`checks_manifest.json`/`evidence_index.md`/`evidence_bundle.tgz` | 上述四件 \+ `rc.txt` | TT-WP001-004, TT-WP001-009 |
| WP001-REQ-004 | Doc Inventory schema \+ 生成/驗證 | N4 §12.1 doc\_inventory schema；R1 PATCH-WP001-004 | §5.3, §7.1 | `doc_inventory.json` schema 合格；sha 可復算 | `doc_inventory.json`, `sha256sum.txt` | TT-WP001-005, TT-WP001-007 |
| WP001-REQ-005 | Anchor Registry \+ Drift Audit | N4 §5 Anchor Registry（概念）；R1 PATCH-WP001-005 | §5.4\~5.5, §7.2\~7.3 | `anchor_registry.json` 可重建；漂移分類規則生效 | `anchor_registry.json`, `anchor_drift_audit.md`, `anchor_refs.txt` | TT-WP001-006 |
| WP001-REQ-006 | Runbook 命令硬化：timeout/tee/rc 合同 | N2 CMD template；R1 PATCH-WP001-006 | §5, §7.4 | 所有 step 有 timeout、tee 到 log、寫 rc；`rc.txt` 格式合約通過 | `run.log`, `rc.txt` | TT-WP001-008 |
| WP001-REQ-007 | TT/TEMP\_CLOSED 規則收斂，主流程不得散落不確定描述 | N3 Guardrails；R1 PATCH-WP001-007 | §2.2, §10 | 文中不確定事項只能出現在 TT；每 TT 有 closure criteria | `tt_list.json`（或嵌入 §10） | TT-WP001-010 |
| WP001-REQ-008 | CR\_OPEN 收斂：不得留 CR\_OPEN | R1 要求；N2 Fail-Closed規則 | §10.6 | 本文件宣告 CR\_OPEN=0 且提供確認方法與證據落點 | `cr_open_scan.txt`（建議） | TT-WP001-010 |
| WP001-REQ-009 | GitHub UI 設置：若 N/A 必裁決並映射到正確 WP | N1 邊界；N4 WP 對應；R1 D 要求 | §6.6, §9 | N/A 不得一句帶過；要列理由、映射 WP、證據/TT | `gh_snapshot/*`（若可）或 TT | TT-WP001-003 |
| WP001-REQ-010 | Exit Gate 可機器驗收 \+ Machine Summary JSON | N4 機械採信精神；R1 H 要求 | §11, §E | `wp001_machine_summary.json` 生成且欄位齊；Checklist 可跑 | `wp001_machine_summary.json`, `verdict.json` | TT-WP001-003 |


---


| PATCH | 落地章節 | 直接修補的 TT |
| ----- | ----- | ----- |
| PATCH-WP001-001 | §2.1\~2.2 | TT-WP001-001 |
| PATCH-WP001-002 | §4, §5.2, §7.1 | TT-WP001-002 |
| PATCH-WP001-003 | §5.6, §7.5 | TT-WP001-004, TT-WP001-009 |
| PATCH-WP001-004 | §5.3, §7.1 | TT-WP001-005, TT-WP001-007 |
| PATCH-WP001-005 | §5.4\~5.5, §7.2\~7.3 | TT-WP001-006 |
| PATCH-WP001-006 | §5, §7.4 | TT-WP001-008 |
| PATCH-WP001-007 | §2.2, §10 | TT-WP001-010 |


---


| 事項 | WP-001 裁決 | 原因 | 映射到哪個 WP/Gate |
| ----- | ----- | ----- | ----- |
| 建立/修改 Rulesets（Required checks、分支策略） | N/A（WP-001 不改） | WP-001 做權威與快照；改策略需工程變更流程 | WP-009\~WP-013（Phase-G 系列） |
| 啟用/調整 Merge Queue 行為 | N/A（WP-001 不改） | 屬平台可變；需配合 required checks 與 merge\_group workflows | WP-012（merge\_group alignment）/ WP-013（G4） |
| 設定 Required Checks 名稱/required contexts | N/A（WP-001 不改） | 需與 Actions 工作流程命名一致 | WP-011\~WP-013 |


---


| Check | Pass 判準 | Fail 判準 | Fail → TT |
| ----- | ----- | ----- | ----- |
| C1 N1\~N4 可讀 | `sha256sum.txt` 含四行 | 缺任一行或不可讀 | TT-WP001-002 |
| C2 doc\_inventory 合格 | schema\_version 正確、docs\>=4、sha 可復算 | jq 驗證失敗 | TT-WP001-005/007 |
| C3 anchor\_registry 合格 | docs\>=4、anchors 可列 | schema/檔案缺失 | TT-WP001-006 |
| C4 drift audit | baseline 存在且 status=PASS | REMOVE/RENAME/COLLISION | TT-WP001-006（阻斷） |
| C5 evidence minset | 4 件齊 | 任一缺失 | TT-WP001-004/009 |
| C6 rc 合同 | `rc.txt` 欄位齊 | 缺欄位或 FAIL\_CLOSED 未 exit\_code=1 | TT-WP001-008 |
| C7 machine summary | 欄位齊、outputs 指向存在 | 欄位缺/路徑不存在 | TT-WP001-003/010 |


---


| Req-ID | Outputs | 核心證據檔 |
| ----- | ----- | ----- |
| WP001-REQ-001 | doc\_inventory.json | doc\_inventory.json |
| WP001-REQ-002 | sha256sum.txt, checks\_manifest.json, rc.txt | sha256sum.txt, rc.txt |
| WP001-REQ-003 | verdict.json, evidence\_index.md, evidence\_bundle.tgz | evidence\_index.md, evidence\_bundle.tgz |
| WP001-REQ-004 | doc\_inventory.json | doc\_inventory.json |
| WP001-REQ-005 | anchor\_registry.json, anchor\_drift\_audit.md, anchor\_refs.txt | anchor\_drift\_audit.md |
| WP001-REQ-006 | run.log, rc.txt | run.log, rc.txt |
| WP001-REQ-007 | tt\_list（本文件 §10） | §10（TT List） |
| WP001-REQ-008 | cr\_open\_scan.txt（建議） | cr\_open\_scan.txt |
| WP001-REQ-009 | gh\_snapshot/\*（可選） | gh\_snapshot/\* 或 TT |
| WP001-REQ-010 | wp001\_machine\_summary.json | wp001\_machine\_summary.json |

