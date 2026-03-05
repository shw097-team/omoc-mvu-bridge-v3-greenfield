# HOW (extracted)


| doc\_id | role | path | exists | bytes | lines | sha256 |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| D-TARGET-OLD | 舊版（被取代） | `/mnt/data/OMOC_WP-003+RB+WI.md` | ✅ | 39364 | 654 | `dc1c597379f4eee81d3764154db7e16bee64352911f55a285f63f1147b0c359d` |
| D-REVIEW | 修補依據 | `/mnt/data/OMOC_WP-003+RB+WI_審查報告.md` | ✅ | 22548 | 204 | `7c05ef04e858d88218afae955b9b2c96d31aafce7b929842f2587cc5278dd86c` |
| A0 | 藍圖（SSOT） | `/mnt/data/OMOC_藍圖_v4.0.1-r1.md` | ✅ | 36139 | 461 | `ccd7c311b11420652ac325b49ee6c317449d867b75b5c676ba641c0da17c6a33` |
| A1 | 施工 RB+WI（SSOT） | `/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md` | ✅ | 45818 | 750 | `3fb8ea01b069a8f64f0183d8fc7678acf99b49adb4ef6a80a761997e1a2b44ca` |
| A2 | 施工 skills（SSOT） | `/mnt/data/OMOC_施工skills_合冊_v4.0.1-r2.md` | ✅ | 84815 | 2199 | `f3f4c5cae4b6ca928eee241dbb9854da9ef07eb0e211e513a01997ecd840ecab` |
| A3 | WP Master（SSOT） | `/mnt/data/OMOC_實作+WP總表_v4.0.1-r2.md` | ✅ | 54886 | 756 | `ffb92a86c26e12cc3d6bf492694fb81477f985f8f50d0744c4944dbdae1a49a9` |
| WP001 | Cross-WP | `/mnt/data/OMOC_WP-001+RB+WI_v4.0.1-r2.md` | ✅ | 41578 | 958 | `9d379a473ca2af7f3202982775815e8cf80c283cba3f1239e8381c89e0d0f1f9` |
| WP002 | Cross-WP | `/mnt/data/OMOC_WP-002+RB+WI_v4.0.1-r2.md` | ✅ | 39664 | 730 | `5e38e2137cf0230400ab32261544c0df4a641bafbf92b5d8f575a7751e20ed5c` |
| S-TEMPLATE | SUPPORT | `/mnt/data/《OMOC_WP-00X+RB+WI》實作驗收指引指令模版.md` | ✅ | 13106 | 184 | `918efe0a41f59ed739e25a47146c8360e02ac2fec5a7ef9346800b3d6372e6d4` |
| S-GPTS | SUPPORT | `/mnt/data/OMOC_實作驗收指引_GPTs合冊_v4.0.1-r2.md` | ✅ | 36379 | 486 | `e90952bfaa8eed93fcabb2846a96d8f4c78bf04fec8c23a4e9112613538e5ef7` |
| D-TARGET-NEW | 新版（本文件） | `OMOC_WP-003+RB+WI_v4.0.1-r2` | ⚠️ | UNVERIFIED | UNVERIFIED | UNVERIFIED → TT-WP003-INV-SELF-001 |


---


| doc\_id | proof\_locator（primary） | excerpt（fallback） |
| ----- | ----- | ----- |
| A0 | `/mnt/data/OMOC_藍圖_v4.0.1-r1.md :: FIND="ANCHOR:OMOC-BP-0400" :: L89-L96` | `A0（本文件）：藍圖層最高裁決` |
| A0 | `/mnt/data/OMOC_藍圖_v4.0.1-r1.md :: FIND="ANCHOR:OMOC-BP-1200" :: L213-L222` | `RUNBOOK / WI / Interface Contract 必備欄位` |
| A1 | `/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md :: FIND="OMOC-RBWI-EVIDENCE-CONTRACT" :: L147-L156` | `evidence_minset（必備）：verdict/checks_manifest/evidence_index/evidence_bundle` |
| A2 | `/mnt/data/OMOC_施工skills_合冊_v4.0.1-r2.md :: FIND="Placeholder quarantine 規則" :: ~L30+` | `不符 TS 命名的 acceptance 目錄 → evidence/_quarantine/` |
| A2 | `/mnt/data/OMOC_施工skills_合冊_v4.0.1-r2.md :: FIND="name: omoc-evidence-packager" :: L1121+` | `SK08：缺 root artifacts 或 forbidden members → FAIL_CLOSED` |
| A3 | \`/mnt/data/OMOC\_實作+WP總表\_v4.0.1-r2.md :: FIND=" | WP-003 |
| WP002 | `/mnt/data/OMOC_WP-002+RB+WI_v4.0.1-r2.md#gate-env-ready :: L490+` | `Gate: GATE-ENV-READY（Gate Contract Lock + 判定規範）` |


---


| requirement\_id | source (SRC) | requirement 摘要 | wp003\_locator | 驗收點（可判 PASS/FAIL） | status |
| ----- | ----- | ----- | ----- | ----- | ----- |
| WP003-REQ-AUTH-001 | SRC-A0-BP-0400 | Authority Stack \+ conflict rules 必須明示 | §2 | 高階覆蓋低階；No-Source-No-Norm 宣告可稽核 | PASS |
| WP003-REQ-IFACE-001 | SRC-A0-BP-1200 | RUNBOOK/WI 分工接口：本 WP 必含可執行步驟+驗收+最小跡證 | §12/§13 | WI 清單含驗收點與最小跡證；不只是口號 | PASS |
| WP003-REQ-EVIDMIN-001 | SRC-RBWI-EVIDENCE-CONTRACT | evidence\_minset 四件套 \+ 不得含 secrets | §1/§10/§13 | 4件套存在；bundle 禁敏掃描 PASS | PASS |
| WP003-REQ-L1-INIT-001 | SRC-RBWI-L1 | L1 建立 evidence 四根目錄 \+ 驗收 | §8/§12 | evidence/\_templates/\_acceptance/\_audit/\_backup 存在可寫 | PASS |
| WP003-REQ-BOOTSTRAP-001 | SRC-CSK-SK02 | SK02 生成 root artifacts（JSON 可解析） | §12.3 | `jq -e` 全部 PASS；缺任一 FAIL\_CLOSED | PASS |
| WP003-REQ-PACK-001 | SRC-CSK-SK08 | SK08 打包 \+ bundle\_audit（Fail-Closed） | §12.4/§13.5 | `bundle_audit.result == PASS`；tar must\_include 完整 | PASS |
| WP003-REQ-QUAR-001 | SRC-CSK-QUAR | quarantine：不符 TS 的 acceptance dir 必須隔離 | §8.3 | 發現違規 dir → move to evidence/\_quarantine；記 TT | PASS |
| WP003-REQ-FORBID-001 | SRC-CSK-FORBIDDEN | forbidden\_patterns 命中即 FAIL\_CLOSED | §13.4 | 成員/檔名命中 → FAIL\_CLOSED；不得先放行 | PASS |
| WP003-REQ-BK002-001 | SRC-WPM-BK002 | BK-002：最小驗收點 \+ 回滾/回復 | §11 | BK-002 snapshot 可還原；驗收 PASS/FAIL 可判 | PASS |
| WP003-REQ-GATE-ENTRY-001 | SRC-WP002-GATE-ENV-READY | Entry Gate 必引用 WP-002（可跳轉定位） | §14.1 | 未通過 GATE-ENV-READY → WP-003 禁止啟動 | PASS |
| WP003-REQ-GATE-EXIT-001 | SRC-WPM-GATE-EVID-MINSET | Exit Gate：GATE-EVIDENCE-MINSET（含 hash） | §14.2 | Gate hash 對齊；evidence\_minset \+ audit PASS | PASS |
| WP003-REQ-TT-001 | SRC-A0-BP-1600 | TT 全 TEMP\_CLOSED \+ 驗證條件/最小跡證 | §16 | TT 列表完整；每條含 closure\_rule/驗收步驟/跡證 | PASS |


---


| tool | 用途 | 何時用 | Fail-Closed 風險 |
| ----- | ----- | ----- | ----- |
| bash | 建樹/打包/掃描 | 全程 | 命令未記 log → 視為跡證不足 |
| jq | JSON 驗證 | 生成/更新 JSON 後 | `jq -e` 失敗 → FAIL\_CLOSED（來源：SRC-WPM-COV-N2-EVID） |
| tar | 打包/列成員 | 生成 evidence\_bundle | tar members 含禁敏 → FAIL\_CLOSED（來源：SRC-CSK-SK08） |
| git | BK-002 版本控制（可選） | snapshot/回滾 | 未能回復 → FAIL\_CLOSED |
| GitHub UI（觀察） | 只核對 check 名稱是否回報 | 需要確認時 | **禁止** UI 配置（Phase-G OUT-OF-SCOPE） |


---


| finding\_id / patch\_id | review 摘要 | 修補落點（本文件） | 驗收點（可判） | status |
| ----- | ----- | ----- | ----- | ----- |
| P-WP003-001 | A3 必須改指 WP Master r2；禁止引用 A3 舊版 | §2.1 / §6.3（A3） | Doc Inventory 顯示 A3=WP總表 r2；Self-audit 不命中舊 A3 路徑 | PASS |
| P-WP003-002 | 每個 SRC-\* 增加 fallback locator（anchor+excerpt） | §6.3 | Sources Registry 每列有 primary+fallback | PASS |
| P-WP003-003 | BK-002 補最小驗收點 \+ 回滾條件 \+ 回復步驟 | §11 | 11.2/11.3/11.4 具備可判定條件與 restore 指令 | PASS |
| P-WP003-004 | WI：forbidden\_patterns/禁入清單落地；命中即 FAIL\_CLOSED | §13.4 | 掃描命中即退出（exit 2）；不得 TEMP 放行 | PASS |
| P-WP003-005 | quarantine 收斂為 1 條硬規則 \+ 1 TT 範例 | §8.3 | 非 TS 目錄 → quarantine；附 TT-QUARANTINE-001 | PASS |
| P-WP003-006 | Scope Guardrail：不得包含 rulesets/MQ 等 Phase-G UI 配置 | §3.2 | 明確禁止配置步驟；只允許觀察核對 | PASS |
| P-WP003-007 | Entry/Exit Gate：引用式 locator 指向 WP-002 Gate | §14.1 | SRC-WP002-GATE-ENV-READY 可跳轉/可定位 | PASS |
| R-FIND-INV-001 | 舊版缺 Doc Inventory / locator\_proof | §5 | Inventory \+ proof 完整（自檔 sha 待補 TT） | PASS（含 TT） |
| R-FIND-GATE-001 | 舊版 Gates 缺 WP-002 引用式跳轉 | §14 | Entry Gate 直接引用 WP-002 locator | PASS |


---


| TT-ID | 標題 | 觸發/風險 | 狀態 | closure\_rule（怎樣算關） | 驗收步驟（最小） | 最小跡證 |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| TT-002 | WP-003 Master 狀態追蹤 | A3 指定 WP-003=TEMP\_CLOSED | TEMP\_CLOSED | WP-003 Exit Gate PASS 並回填 A3 狀態 | 通過 §14.2；更新 WP Master（若流程要求） | `bundle_audit.json` \+ `evidence_bundle.tgz` \+ logs |
| TT-WP003-INV-SELF-001 | 新版文件自檔 sha/lines/bytes 未固化 | 文件在聊天輸出不可直接計算 | TEMP\_CLOSED | 保存成檔後補上 sha/lines/bytes 並更新 Doc Inventory | `wc -l` / `stat` / `sha256sum` | 更新後的 Doc Inventory 截圖或 log |
| TT-WP003-TPL-SSOT-001 | step\_template 欄位未升格上游契約 | 欄位集合目前為 WP-003 規格 | TEMP\_CLOSED | 若要升格：在 A2/A3 定義欄位契約並引用 | 開 PR 更新 A2/A3；本 WP 更新 SRC | 更新後的上游段落 locator |
| TT-QUARANTINE-001 | 非 TS acceptance dir 隔離 | placeholder dir 破壞 pack/validator | TEMP\_CLOSED | move to quarantine \+ SK08 PASS | 跑 §8.3 \+ §12.4 | quarantine dir 列表 \+ SK08 logs |
| TT-BUNDLE-AUDIT-001 | bundle\_audit FAIL\_CLOSED 追蹤 | forbidden members / must\_include 缺失 | TEMP\_CLOSED | 移除違規後重跑 SK08 PASS | §13.4 → §12.4 | SK08-pack.log \+ SK08-tar-members.txt |

