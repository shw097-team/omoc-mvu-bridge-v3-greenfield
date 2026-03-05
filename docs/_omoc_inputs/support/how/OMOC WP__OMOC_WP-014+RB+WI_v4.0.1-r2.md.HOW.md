# HOW (extracted)


| field | value |
| ----- | ----- |
| doc\_id | OMOC\_WP-014+RB+WI |
| external\_name | WP-014（Phase-G/G5）Drift Guard & Closure Management |
| internal\_short\_name | WP014-Drift-Closure |
| phase | Phase-G / G5 |
| version | v4.0.1-r2 |
| generated\_at | 2026-02-19T12:32:18+08:00 |
| timezone | Asia/Taipei (UTC+08:00) |
| baseline\_web\_date | 2026-02-14 |
| mode | Files-first（附件/專案檔案庫為 NORMATIVE）＋WTNA（Web SUPPORT-only，Quarantine） |
| supersedes | /mnt/data/OMOC\_WP-014+RB+WI.md（legacy v4.0.1-r1） |
| review\_fix\_spec | /mnt/data/OMOC\_WP-014+RB+WI\_審查報告.md（F-014-001\~014 全量閉環） |
| ssot\_lock | { bp: v4.0.1-r1, rbwi: v4.0.1-r1, skills: v4.0.1-r2, wp\_total: v4.0.1-r2 } |
| compat\_note | 本文件採 **WP 總表 r2** 為唯一有效版本；任何引用 r1（尤其 WP總表 r1）屬 superseded 汙染 → 以掃描=0 為門檻；違反即 FAIL\_CLOSED。 |
| overall\_verdict | TEMP\_CLOSED（文件層：閉環規格/門檻已具；施工層：需依 §18 Quickpath 實跑出證據後方可轉 PASS） |
| CR\_OPEN | 0 |


---


| section | anchor |
| ----- | ----- |
| Document Control | \#omoc-wp014-01-doc-control |
| Authority Stack | \#omoc-wp014-05-authority |
| Doc Inventory | \#omoc-wp014-06-doc-inventory |
| Tool Decision Matrix | \#omoc-wp014-08-tool-matrix |
| Requirements | \#omoc-wp014-10-requirements |
| Coverage/Closure Matrix | \#omoc-wp014-11-matrix |
| Interface Contract | \#omoc-wp014-12-interface |
| Drift Guard Spec | \#omoc-wp014-13-drift-guard |
| Closure Management | \#omoc-wp014-14-closure-mgmt |
| Runbook | \#omoc-wp014-15-runbook |
| Work Instructions | \#omoc-wp014-16-wi |
| Gates & DoD | \#omoc-wp014-17-gates |
| Quickpath | \#omoc-wp014-18-quickpath |
| Counterexamples | \#omoc-wp014-19-counterexamples |
| Security | \#omoc-wp014-20-security |
| TT Register | \#omoc-wp014-22-tt-register |
| Web Evidence Appendix | \#omoc-wp014-23-web-evidence |
| Change Log | \#omoc-wp014-24-change-log |
| machine\_summary.json | \#omoc-wp014-25-machine-summary |


---


| item | locked\_version | status |
| ----- | ----- | ----- |
| Blueprint | v4.0.1-r1 | ACTIVE |
| 施工RB+WI | v4.0.1-r1 | ACTIVE |
| 施工skills | v4.0.1-r2 | ACTIVE |
| 實作+WP總表 | **v4.0.1-r2** | **ACTIVE（強制）** |
| 實作+WP總表 v4.0.1-r1 | n/a | **SUPERSEDED（禁用）** |


---


| role | path | sha256 | lines | bytes |
| ----- | ----- | ----- | ----- | ----- |
| TARGET (legacy) | /mnt/data/OMOC\_WP-014+RB+WI.md | 77df16c5e42eee352f890b3035d99daeb15af8add904970168406e7d0321b226 | 591 | 48521 |
| FIX\_SPEC (review) | /mnt/data/OMOC\_WP-014+RB+WI\_審查報告.md | db535423c3e3cbffe7e5533ce3d2754a8ea3a8a34411b35755895bc4c180b978 | 368 | 29442 |
| N1 (Blueprint) | /mnt/data/OMOC\_藍圖\_v4.0.1-r1.md | ccd7c311b11420652ac325b49ee6c317449d867b75b5c676ba641c0da17c6a33 | 462 | 36139 |
| N2 (RB+WI) | /mnt/data/OMOC\_施工RB+WI\_合冊\_v4.0.1-r1.md | 3fb8ea01b069a8f64f0183d8fc7678acf99b49adb4ef6a80a761997e1a2b44ca | 751 | 45818 |
| N3 (skills) | /mnt/data/OMOC\_施工skills\_合冊\_v4.0.1-r2.md | f3f4c5cae4b6ca928eee241dbb9854da9ef07eb0e211e513a01997ecd840ecab | 2200 | 84815 |
| N4 (WP total) | /mnt/data/OMOC\_實作+WP總表\_v4.0.1-r2.md | ffb92a86c26e12cc3d6bf492694fb81477f985f8f50d0744c4944dbdae1a49a9 | 757 | 54886 |
| PEER | /mnt/data/OMOC\_WP-001+RB+WI\_v4.0.1-r2.md | 9d379a473ca2af7f3202982775815e8cf80c283cba3f1239e8381c89e0d0f1f9 | 958 | 41578 |
| PEER | /mnt/data/OMOC\_WP-002+RB+WI\_v4.0.1-r2.md | 5e38e2137cf0230400ab32261544c0df4a641bafbf92b5d8f575a7751e20ed5c | 731 | 39664 |
| PEER | /mnt/data/OMOC\_WP-003+RB+WI\_v4.0.1-r2.md | e8fde679effe030dac1445dfbb27240b9e1ceb4caa56ef568a3c5504b941b29b | 788 | 44125 |
| PEER | /mnt/data/OMOC\_WP-004+RB+WI\_v4.0.1-r2.md | 225ee9ee790cd02539da843be3a43207b7ed699fbb99eaca94f42bfa21c9ebc2 | 657 | 42251 |
| PEER | /mnt/data/OMOC\_WP-005+RB+WI\_v4.0.1-r2.md | ba6788de477a15aa4c8a78eb32ba460eaf48ec0343bfffde4c74c8cd97bb0022 | 612 | 35194 |
| PEER | /mnt/data/OMOC\_WP-006+RB+WI\_v4.0.1-r2.md | 3a958ba100804e337d3307ce995664fb44ed13887dec85526039e69467cdf87b | 964 | 52339 |
| PEER | /mnt/data/OMOC\_WP-007+RB+WI\_v4.0.1-r2.md | cac1e5bee943887eef547f6b4ec7be060197b96b77cf044e6a7392be403d5f92 | 706 | 45400 |
| PEER | /mnt/data/OMOC\_WP-008+RB+WI\_v4.0.1-r2.md | fff6383689c338a1a1bb8bc27087767470d5dfb1ebd93a30de2f01add33f8a59 | 1202 | 60018 |
| PEER | /mnt/data/OMOC\_WP-009+RB+WI\_v4.0.1-r2.md | e3da8193d8f3a25fb3d437b1a75d32b9fd485e368a61f2ce518a492b70ca9e1d | 547 | 46986 |
| PEER (WP-010) | /mnt/data/OMOC\_WP-010+RB+WI\_v4.0.1-r2.md | 4a98647710a9d655c06e7c8a3843b789530a30cda910828fd8c9e7da019cdfca | 1225 | 65186 |
| PEER (WP-011) | /mnt/data/OMOC\_WP-011+RB+WI\_v4.0.1-r2.md | e3ef44749be9d1e39f5911ef9e5eb8bf6f3c5e17014ba0a130d7d93ceed6d27f | 689 | 42583 |
| PEER (WP-012) | /mnt/data/OMOC\_WP-012+RB+WI\_v4.0.1-r2.md | a537a9a6ce723e86604169973d193a2ecf7148616ff988ed876888b5618ccf1e | 673 | 46530 |
| PEER (WP-013) | /mnt/data/OMOC\_WP-013+RB+WI\_v4.0.1-r2.md | 866c0ef398123228680d93afecbad3b3df548ca3cb0891a8896442fbe82fe4c7 | 716 | 40539 |


---


| task | MUST use | MAY use | MUST NOT use | reason / replayability |
| ----- | ----- | ----- | ----- | ----- |
| 取得 Rulesets 現況（可稽核輸出） | `gh api`（或等效 API 輸出） | UI（僅作人工對照） | 只截圖當唯一證據 | JSON 可 diff / 可 hash / 可重放 |
| required checks expected（權威） | Rulesets API →（fallback）branch protection required\_status\_checks contexts | UI（輔助核對） | 只用 check-runs/commit status 當 expected | observed ≠ expected（避免錯把暫態觀測升格） |
| Merge Queue / merge\_group 觸發驗證 | GitHub Actions logs \+ merge\_group event 產生證據 | UI queue 畫面 | 只靠「看起來有」 | 需要可回放的 run logs |
| Evidence Bundle 產生 | bash \+ tar \+ sha256 | UI 下載 | 把敏感資料貼到聊天/附件 | 可攜、可驗證、Secrets Zero |
| Web 行為佐證 | Web Evidence Appendix（Quarantine） | \- | 把 web 當 NORMATIVE | UI/語義可變，只能 SUPPORT-only |


---


| requirement\_id | statement (MUST) | source\_locator (NORMATIVE) | target\_anchor | acceptance\_evidence | status | tt\_id |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| WP014-REQ-001 | 必須強制 N4=WP總表 r2；任何 r1 引用必須可被掃描=0 驗證。 | N4: /mnt/data/OMOC\_實作+WP總表\_v4.0.1-r2.md（Version lock by Doc Control） | §5.2/§5.3 | rg 掃描輸出=0；記錄於 evidence\_index | PASS | \- |
| WP014-REQ-002 | 必須提供 Doc Inventory（sha256/lines）＋ locator\_proof 可重跑。 | N2 Evidence Contract（可回放/可稽核精神） | §6 | inventory 表＋重跑命令輸出 | PASS | \- |
| WP014-REQ-003 | 必須定義 gate\_contract 指紋（hash/fingerprint）與驗證步驟；用於漂移判定。 | N4: machine-readable appendix（需可被自動稽核） | §11.3/§17 | gate\_contract.json \+ 指紋檔 \+ diff 報告 | TEMP\_CLOSED | TT-WP014-GATE-001 |
| WP014-REQ-004 | 必須把 PASS/TEMP\_CLOSED/FAIL\_CLOSED 判定優先序機械化（決策表）。 | N1 Fail-Closed 原則（本 WP 落地） | §17.3 | 決策表可套用案例 | PASS | \- |
| WP014-REQ-005 | 必須以 Preflight 強制檢核工具/權限/網路，不得 ASSUMED。 | N1 Fail-Closed；N3 工具/權限不可用時 TEMP\_CLOSED 策略 | §16 WI-014-00 | preflight.log \+ verdict | PASS | \- |
| WP014-REQ-006 | 必須提供 Tool Decision Matrix（必用/禁用）。 | 審查修補（F-014-010） | §8 | matrix 表 | PASS | \- |
| WP014-REQ-007 | 必須落地 Secrets Zero（掃描規則/遮罩策略/驗收=0）。 | N2 Evidence Contract「不得含 secrets」 | §20.2/§16 WI-014-50 | secrets\_scan.txt（命中=0） | PASS | \- |
| WP014-REQ-008 | 必須把「資料/指令分離」固化到 evidence 產物格式與白名單規則。 | N1 Anti-injection 精神；審查修補（F-014-012） | §20.3 | evidence\_index 分段＋禁止執行規則 | PASS | \- |
| WP014-REQ-009 | 必須提供對 WP-010 的硬路由接口（route-out anchor ≥1）。 | PEER WP-010（接口） | §12.2 | route-out locator 可定位 | PASS | \- |
| WP014-REQ-010 | 必須提供對 WP-011 的硬路由接口（route-out anchor ≥1）。 | PEER WP-011（接口） | §12.3 | route-out locator 可定位 | PASS | \- |
| WP014-REQ-011 | 必須提供對 WP-012 的硬路由接口（route-out anchor ≥1）；若 PEER 缺穩定 anchor，需 TT。 | PEER WP-012（接口） | §12.4 | route-out locator \+ TT | TEMP\_CLOSED | TT-WP014-IFACE-WP012-001 |
| WP014-REQ-012 | 必須提供對 WP-013 的硬路由接口（route-out anchor ≥1）。 | PEER WP-013（接口） | §12.5 | route-out locator 可定位 | PASS | \- |
| WP014-REQ-013 | UI 易變性必須成為 requirement 並硬接入 closure\_matrix：UI drift → TT/降級。 | GitHub UI/語義可變（SUPPORT-only） | §13.4/§11 | ui\_locator\_snapshot \+ drift rule 命中即 TT | PASS | \- |
| WP014-REQ-014 | 必須定義 drift 分類、假陽性處理、偵測方法（snapshot/diff/manifest）、處置（降級/TT）。 | N1 Fail-Closed；N4 machine-readable appendix | §13 | drift\_report.md \+ closure\_matrix 更新 | TEMP\_CLOSED | TT-WP014-DRIFT-001 |
| WP014-REQ-015 | 必須 pin closure\_matrix schema\_source \+ schema\_diff\_check；若上游未提供 schema，需 TT（不得臆測升格）。 | 審查修補（F-014-002） | §11.4/§22 | schema\_source 記錄 \+ diff 步驟 \+ TT | TEMP\_CLOSED | TT-WP014-SCHEMA-001 |
| WP014-REQ-016 | 必須定義 tt\_export.json schema 與 mapping（從 TT Register 匯出）。 | 審查修補（F-014-009） | §14.3/§22 | tt\_export.json \+ mapping 規則 | TEMP\_CLOSED | TT-WP014-TTEXPORT-001 |
| WP014-REQ-017 | 必須提供 Counterexamples（≥8）可驗收表，並可連到 TT。 | 審查修補（F-014-013） | §19 | ≥8 反例表＋預期 verdict | PASS | \- |
| WP014-REQ-018 | Web 只能 SUPPORT-only 且 Quarantine；每筆需 accessed\_at \+ drift\_action→TT。 | 本文件 WTNA 規則 | §23 | Web Evidence Appendix 完整欄位 | PASS | \- |
| WP014-REQ-019 | 必須符合 Evidence Contract：verdict.json / checks\_manifest.json / evidence\_index.md / bundle（不得含 secrets），並支持 single pack。 | N2 Evidence Contract（evidence\_minset / single pack） | §15/§16 WI-014-40 | evidence\_bundle.tgz \+ single\_evidence\_bundle.txt | PASS | \- |
| WP014-REQ-020 | 必須定義 BK（備份點）與 rollback/route-out。 | 審查修補（F-014-008） | §15/§16 WI-014-10/70 | bk\_manifest.json \+ rollback steps | PASS | \- |


---


| ssot\_item | claim | wp014\_locator |
| ----- | ----- | ----- |
| N2 Evidence Contract（evidence\_minset / single pack） | 本 WP 的證據產物命名/最小集遵循 Evidence Contract。 | §15.5 / §16 WI-014-40 |
| N3 skills（禁止 secrets、ERCC expected 權威來源優先序） | Secrets Zero 與 expected/observed 分離。 | §20 / §13.3 |
| N4 machine-readable appendix（至少輸出多個 JSON 且含 schema\_version/source\_locators） | 本 WP 定義 gate\_contract/closure\_matrix/tt\_export 之輸出規格與指紋。 | §11.3 / §11.4 / §14.3 |


---


| closure\_rule\_id | scope | trigger | decision | evidence\_refs | status | tt\_id |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| CM-WP014-001 | superseded contamination | 掃描命中 r1 引用 | FAIL\_CLOSED | superseded\_scan.txt | PASS | \- |
| CM-WP014-002 | tool availability | preflight 缺工具/權限 | FAIL\_CLOSED | preflight.log | PASS | \- |
| CM-WP014-003 | schema unknown | 上游未提供 schema（closure\_matrix/tt\_export） | TEMP\_CLOSED \+ TT | schema\_pin.md | TEMP\_CLOSED | TT-WP014-SCHEMA-001 |
| CM-WP014-004 | UI drift | UI\_LOCATOR 無法對應/路徑變更 | TEMP\_CLOSED \+ TT | ui\_locator\_snapshot.md | PASS | \- |
| CM-WP014-005 | secrets | secrets 掃描命中 \>0 | FAIL\_CLOSED | secrets\_scan.txt | PASS | \- |
| CM-WP014-006 | interface route-out | WP-010/011/013 anchor 缺失 | TEMP\_CLOSED \+ TT | iface\_locators.md | PASS | \- |
| CM-WP014-007 | WP-012 anchor 不穩 | WP-012 缺穩定 anchor | TEMP\_CLOSED \+ TT | iface\_locators.md | TEMP\_CLOSED | TT-WP014-IFACE-WP012-001 |


---


| drift\_type | examples | detection | default\_action |
| ----- | ----- | ----- | ----- |
| VERSION\_DRIFT | N4 不再是 r2、peer 版本變動 | version\_lock scan | FAIL\_CLOSED（若指向 r1）/ TEMP\_CLOSED（若未能驗證） |
| REFERENCE\_DRIFT | 引用來源不可定位、anchor 消失 | locator\_proof | TEMP\_CLOSED \+ TT |
| UI\_DRIFT | Settings 路徑、欄位名稱變了 | UI\_LOCATOR snapshot vs current | TEMP\_CLOSED \+ TT（不得以“我記得”通過） |
| ERCC\_DRIFT | required checks contexts 變了/跑不出來 | expected vs observed diff | TEMP\_CLOSED \+ TT（或 FAIL\_CLOSED 若缺 expected） |
| MQ\_EVENT\_DRIFT | merge\_group 行為/語義改變 | docs/web \+ logs | TEMP\_CLOSED \+ TT-WEB-DRIFT-\* |
| SUPPLYCHAIN\_DRIFT | third-party action 版本漂移 | lockfile / pin scan | TEMP\_CLOSED \+ TT（必要時 FAIL\_CLOSED） |


---


| state | meaning | allowed\_transitions | must\_have |
| ----- | ----- | ----- | ----- |
| OPEN | 新建缺口（本文件禁止殘留） | → TEMP\_CLOSED / FAIL\_CLOSED | closure criteria \+ owner |
| TEMP\_CLOSED | 暫時封存：有閉環路徑但未完成驗證 | → PASS / FAIL\_CLOSED | verification steps \+ evidence refs（待補） |
| FAIL\_CLOSED | 阻斷：不允許以臆測通過 | → TEMP\_CLOSED（僅在條件恢復/證據補齊後） | failure reason \+ unblock instructions |
| PASS | 已驗證閉環 | \- | evidence refs 完整 |


---


| gate\_id | condition | fail\_action |
| ----- | ----- | ----- |
| GATE-WP014-ENTRY-001 | SSOT 檔案可定位（N1\~N4） | FAIL\_CLOSED |
| GATE-WP014-ENTRY-002 | Preflight 工具/權限通過 | FAIL\_CLOSED |
| GATE-WP014-ENTRY-003 | superseded 掃描門檻=0 | FAIL\_CLOSED |


---


| gate\_id | condition | evidence |
| ----- | ----- | ----- |
| GATE-WP014-EXIT-001 | drift\_report \+ closure\_matrix 更新完成 | drift\_report.md / closure\_matrix.md |
| GATE-WP014-EXIT-002 | TT Register 無 OPEN；CR\_OPEN=0 | §22 |
| GATE-WP014-EXIT-003 | Evidence bundle 產出且 sha256 可驗證 | evidence\_bundle.tgz \+ sha256 |
| GATE-WP014-EXIT-004 | Secrets Zero 命中=0 | secrets\_scan.txt |


---


| condition (highest priority first) | verdict |
| ----- | ----- |
| superseded 汙染（WP總表 r1 引用命中） | **FAIL\_CLOSED** |
| 必備工具/權限缺失（Preflight FAIL） | **FAIL\_CLOSED** |
| Secrets 命中 \>0 | **FAIL\_CLOSED** |
| 上游 schema 無法定位且影響機器輸出 | TEMP\_CLOSED \+ TT |
| UI\_LOCATOR 漂移（可變項無法回放） | TEMP\_CLOSED \+ TT |
| interface route-out 無法定位（PEER 缺 anchor） | TEMP\_CLOSED \+ TT |
| 以上皆不命中且證據齊備 | PASS |


---


| case\_id | scenario | expected\_break | acceptance\_evidence | expected\_verdict | tt |
| ----- | ----- | ----- | ----- | ----- | ----- |
| CE-014-01 | 文件/腳本引用 WP總表 r1 | superseded 汙染 | superseded\_scan.txt 命中 | FAIL\_CLOSED | TT-WP014-DRIFT-SUPERSEDED-001 |
| CE-014-02 | merge queue 需要的 checks 未觸發（缺 merge\_group trigger） | required checks 不回報 | workflow run logs / checks 缺席 | TEMP\_CLOSED \+ TT | TT-WP014-MQ-TRIGGER-001 |
| CE-014-03 | required\_contexts expected 無法取得（403/無權限） | expected 空白被誤判 PASS | api\_error.log | FAIL\_CLOSED 或 TEMP\_CLOSED（依 §17） | TT-WP014-ERCC-EXPECTED-001 |
| CE-014-04 | UI 路徑變動（Rulesets 介面改名） | 無法回放設定 | ui\_locator\_snapshot.md 不匹配 | TEMP\_CLOSED \+ TT | TT-WP014-DRIFT-UI-001 |
| CE-014-05 | evidence bundle 內含 token | Secrets Zero 失敗 | secrets\_scan.txt 命中 | FAIL\_CLOSED | TT-WP014-SECRETS-001 |
| CE-014-06 | third-party action 版本漂移（未 pin） | supply chain 不可稽核 | action\_pin\_scan.txt 命中 | TEMP\_CLOSED \+ TT | TT-WP014-SUPPLYCHAIN-001 |
| CE-014-07 | 缺必備 evidence\_minset 檔案 | 不可驗收 | bundle\_audit.json 缺項 | FAIL\_CLOSED | TT-WP014-EVIDENCE-MINSET-001 |
| CE-014-08 | WP-012 route-out anchor 無法定位 | 接口不可追溯 | iface\_locators.md 失敗 | TEMP\_CLOSED \+ TT | TT-WP014-IFACE-WP012-001 |
| CE-014-09 | gate\_contract 指紋計算不可重現（非 canonical JSON） | diff 噪音過大 | gate\_contract.diff.md 無法解釋 | TEMP\_CLOSED \+ TT | TT-WP014-GATE-002 |
| CE-014-10 | Web 來源被誤升格為 MUST | SSOT 被覆寫 | 審計發現規範引用 web | FAIL\_CLOSED（流程違規） | TT-WP014-WEB-NORM-001 |


---


| item | locator | how\_to\_verify |
| ----- | ----- | ----- |
| Evidence Contract | N2:/mnt/data/OMOC\_施工RB+WI\_合冊\_v4.0.1-r1.md（ANCHOR:OMOC-RBWI-EVIDENCE-CONTRACT） | `rg -n "OMOC-RBWI-EVIDENCE-CONTRACT" …` |
| WP-010 contract spec | PEER:/mnt/data/OMOC\_WP-010+RB+WI\_v4.0.1-r2.md\#omoc-wp010-12-contract-spec | 以檔內 anchor 搜尋 |
| WP-011 status hygiene | PEER:/mnt/data/OMOC\_WP-011+RB+WI\_v4.0.1-r2.md\#omoc-wp011-spec-status-hygiene | 以檔內 anchor 搜尋 |
| WP-013 interface contract | PEER:/mnt/data/OMOC\_WP-013+RB+WI\_v4.0.1-r2.md\#omoc-wp013-13-interface-contract | 以檔內 anchor 搜尋 |


---


| TT-ID | severity | category | title/statement | closure\_criteria | verification | evidence\_refs | owner | status |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| TT-WP014-GATE-001 | MAJOR | GATE\_CONTRACT | 無法保證取得 rulesets/API 輸出時的 gate\_contract 指紋一致性 | 取得可稽核輸出（API/等效）並固定 canonical JSON | 產出 gate\_contract.json \+ sha256 \+ diff | gate\_contract.\* | TBD | TEMP\_CLOSED |
| TT-WP014-SCHEMA-001 | MAJOR | SCHEMA\_DRIFT | closure\_matrix schema\_source 在 SSOT 未明確提供定義；需補齊並做 schema\_diff\_check | 定位上游 schema 或裁決並更新本文件 local schema | schema\_pin \+ schema\_diff \+ 更新矩陣/匯出 | schema\_pin.md | TBD | TEMP\_CLOSED |
| TT-WP014-TTEXPORT-001 | MAJOR | EXPORT\_SCHEMA | tt\_export.json 上游 schema 未能定位；需與 SSOT/自動稽核契約對齊 | 確認 schema 並更新匯出 mapping | 產出 tt\_export.json \+ 對照 | tt\_export.json | TBD | TEMP\_CLOSED |
| TT-WP014-IFACE-WP012-001 | MAJOR | INTERFACE | WP-012 缺穩定可回放 anchor（route-out 可靠性不足） | 補齊 WP-012 穩定 anchor 或提供可定位替代定位規格 | 驗證 route-out 可定位 | iface\_locators.md | TBD | TEMP\_CLOSED |
| TT-WP014-DRIFT-001 | MAJOR | DRIFT\_SPEC | drift 分類/偵測需與實際 repo 設定輸出綁定（避免只寫概念） | 在一次實跑中生成 drift\_report.json 並可回放 | drift\_report.json \+ evidence\_index | drift\_report.\* | TBD | TEMP\_CLOSED |


---


| web\_id | accessed\_at | claim (support) | why\_support\_only | conflicts\_with\_ssot? | drift\_action (TT) |
| ----- | ----- | ----- | ----- | ----- | ----- |
| WEB-001 | 2026-02-19T12:32:18+08:00 | Merge queue 需要在 workflow 加上 `merge_group` 事件，否則 queue checks 不會被觸發、required checks 不回報。 ([GitHub Docs](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/configuring-pull-request-merges/managing-a-merge-queue)) | GitHub 行為/文件可變 | No | TT-WEB-DRIFT-MQ-001（如觀測不符） |
| WEB-002 | 2026-02-19T12:32:18+08:00 | Rulesets 用於控管分支/標籤互動規則；可作 required status checks 的載體。 ([GitHub Docs](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-rulesets/about-rulesets)) | UI/功能可能調整 | No | TT-WEB-DRIFT-RULESET-001 |
| WEB-003 | 2026-02-19T12:32:18+08:00 | required status checks 具「近 7 天需完成成功」等行為細節；可能導致誤判。 ([GitHub Docs](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/collaborating-on-repositories-with-code-quality-features/troubleshooting-required-status-checks)) | 行為細節可能變動 | No | TT-WEB-DRIFT-RSC-001 |
| WEB-004 | 2026-02-19T12:32:18+08:00 | `gh pr merge` 在目標分支需要 merge queue 時，會自動加入 queue 或啟用 auto-merge。 ([GitHub CLI](https://cli.github.com/manual/gh_pr_merge)) | CLI/語義可變 | No | TT-WEB-DRIFT-GH-001 |


---


| finding\_id | severity | fix\_summary | implemented\_at |
| ----- | ----- | ----- | ----- |
| F-014-001 | BLOCKER | 強制 N4=r2；加入 superseded 掃描=0 門檻與 FAIL\_CLOSED 規則 | §5.2/§5.3/§17 |
| F-014-002 | MAJOR | 加入 schema\_source pin \+ schema\_diff\_check；上游未提供 schema → TT-WP014-SCHEMA-001 | §11.4/§22 |
| F-014-003 | BLOCKER | Document Control 補 ssot\_lock \+ compat\_note；不再宣告 r1 aligned | §1 |
| F-014-004 | MAJOR | UI drift 成 requirement 並硬接 closure\_matrix（漂移即 TT/降級） | §13.4/§11.2 |
| F-014-005 | MINOR | Doc Inventory 補 sha256/lines \+ locator\_proof 可重跑 | §6 |
| F-014-006 | MAJOR | gate\_contract 指紋/哈希/驗證步驟 | §11.3/§17 |
| F-014-007 | MAJOR | PASS/TEMP\_CLOSED/FAIL\_CLOSED 判定優先序決策表 | §17.3 |
| F-014-008 | MAJOR | 移除 ASSUMED；Preflight 強制檢核與失敗處置 | §8.2/§16 WI-014-00 |
| F-014-009 | MAJOR | tt\_export.json schema \+ mapping；不足處 TT | §14.3/§22 |
| F-014-010 | MINOR | Tool Decision Matrix（必用/禁用） | §8 |
| F-014-011 | MAJOR | Secrets Zero 掃描規則/遮罩策略/門檻=0 | §20/§16 WI-014-50 |
| F-014-012 | MINOR | 資料/指令分離白名單與 evidence 結構規則 | §20.3 |
| F-014-013 | MAJOR | ≥8 反例測試表並可接 TT | §19 |
| F-014-014 | BLOCKER | Interface Contract（WP-010\~013 硬路由；WP-012 anchor 不穩 → TT） | §12/§22 |

