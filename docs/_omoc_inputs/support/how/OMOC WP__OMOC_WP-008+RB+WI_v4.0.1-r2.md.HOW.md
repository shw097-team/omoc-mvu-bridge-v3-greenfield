# HOW (extracted)


| anchor\_id | section\_title | purpose |
| ----- | ----- | ----- |
| OMOC-WP008-0000 | Front-matter | 文件識別/基線 |
| OMOC-WP008-0100 | TOC | 站內導航 |
| OMOC-WP008-0200 | 導讀 | Diátaxis 導航 |
| OMOC-WP008-0300 | Anchor Registry | 錨點總表 |
| OMOC-WP008-0400 | Scope & Route-out | WP-008 邊界與對齊點 |
| OMOC-WP008-0500 | Authority & SSOT | 規範來源裁決（含 superseded） |
| OMOC-WP008-0600 | Doc Inventory | 盤點與可重現定位 |
| OMOC-WP008-0700 | Requirements | REQ 列表（皆需 SOURCE locator） |
| OMOC-WP008-0800 | Evidence Contract Spec | Triplet+Bundle+Minset/Plus+Secrets/Whitelist |
| OMOC-WP008-0900 | Repo Layout & Naming | 路徑/命名/版本策略 |
| OMOC-WP008-1000 | Runbook | 可重跑流程（local/CI 介面） |
| OMOC-WP008-1100 | Work Instructions | WI tasks（固定欄位） |
| OMOC-WP008-1200 | Gates & DoD | Gate 層級、Fail-Closed 條件 |
| OMOC-WP008-1300 | Acceptance | 單一入口腳本（全文） |
| OMOC-WP008-1400 | Doc Hygiene Gate | 文件污染掃描與阻斷 |
| OMOC-WP008-1500 | SECURITY | 注入/越權/秘密防線 |
| OMOC-WP008-1600 | Traceability | Coverage/Locator proof/Registry |
| OMOC-WP008-1700 | TT REGISTER | TEMP\_CLOSED 管理（CR\_OPEN=0） |
| OMOC-WP008-1800 | Web Evidence Appendix | SUPPORT-only（≥6；正文回指） |
| OMOC-WP008-1900 | Glossary | 術語/檔名/拼字規範 |
| OMOC-WP008-2000 | Change Log | r1→r2 差異摘要與驗收點 |


---


| doc\_id | filename | full\_path | claimed\_version | role | used\_for | bytes | lines | sha256 | recompute\_cmd |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| N1 | OMOC\_藍圖\_v4.0.1-r1.md | /mnt/data/OMOC\_藍圖\_v4.0.1-r1.md | v4.0.1-r1 | NORMATIVE | DoD / Evidence Min Output Set / TT 原則 | 36139 | 462 | ccd7c311b11420652ac325b49ee6c317449d867b75b5c676ba641c0da17c6a33 | `sha256sum /mnt/data/OMOC_藍圖_v4.0.1-r1.md` |
| N2 | OMOC\_施工RB+WI\_合冊\_v4.0.1-r1.md | /mnt/data/OMOC\_施工RB+WI\_合冊\_v4.0.1-r1.md | v4.0.1-r1 | NORMATIVE | Guardrails / Evidence Contract（高層） | 45818 | 751 | 3fb8ea01b069a8f64f0183d8fc7678acf99b49adb4ef6a80a761997e1a2b44ca | `sha256sum /mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md` |
| N3 | OMOC\_施工skills\_合冊\_v4.0.1-r2.md | /mnt/data/OMOC\_施工skills\_合冊\_v4.0.1-r2.md | v4.0.1-r2 | NORMATIVE | Packager/Validator 介面：bundle 成員/forbidden | 54765 | 689 | f3f4c5cae4b6ca928eee241dbb9854da9ef07eb0e211e513a01997ecd840ecab | `sha256sum /mnt/data/OMOC_施工skills_合冊_v4.0.1-r2.md` |
| N4 | OMOC\_實作+WP總表\_v4.0.1-r2.md | /mnt/data/OMOC\_實作+WP總表\_v4.0.1-r2.md | v4.0.1-r2 | NORMATIVE | WP-008 Gate/Minset/Plus 裁決、superseded | 62625 | 916 | fdb8d2f3f0c0c231e73c5f1be3b6fbb2a69fb2e5078f9c0d8f5f3e6738af0af0 | `sha256sum /mnt/data/OMOC_實作+WP總表_v4.0.1-r2.md` |
| T0 | OMOC\_WP-008+RB+WI.md | /mnt/data/OMOC\_WP-008+RB+WI.md | v4.0.1-r1 | TARGET-LEGACY (superseded) | 舊版章節覆蓋清單、Legacy→New mapping | 53663 | 905 | 7f4c10b5e4a2fa6f5b6aeb9aa59a1cd9f9302a2f1a79dd8a0de0c7e58f5b1a5c | `sha256sum /mnt/data/OMOC_WP-008+RB+WI.md` |
| R8 | OMOC\_WP-008+RB+WI\_審查報告.md | /mnt/data/OMOC\_WP-008+RB+WI\_審查報告.md | report | REVIEW/FIX\_SPEC | 修補規格（必修缺陷＋驗收標準） | 36096 | 588 | 6d8c8a3a8f0c4a6a7f0c5c0b8b1e6f3c1b0ef9fd0efc6c8ad0f6b6dbbcb2c3c1 | `sha256sum /mnt/data/OMOC_WP-008+RB+WI_審查報告.md` |
| X1 | OMOC\_WP-001+RB+WI\_v4.0.1-r2.md | /mnt/data/OMOC\_WP-001+RB+WI\_v4.0.1-r2.md | v4.0.1-r2 | Cross-WP | Doc Inventory/Locator/TT 慣例對齊 | 41578 | 958 | 9d379a473ca2af7f3202982775815e8cf80c283cba3f1239e8381c89e0d0f1f9 | `sha256sum /mnt/data/OMOC_WP-001+RB+WI_v4.0.1-r2.md` |
| X2 | OMOC\_WP-002+RB+WI\_v4.0.1-r2.md | /mnt/data/OMOC\_WP-002+RB+WI\_v4.0.1-r2.md | v4.0.1-r2 | Cross-WP | 同上 | 39664 | 730 | 5e38e2137cf0230400ab32261544c0df4a641bafbf92b5d8f575a7751e20ed5c | `sha256sum /mnt/data/OMOC_WP-002+RB+WI_v4.0.1-r2.md` |
| X3 | OMOC\_WP-003+RB+WI\_v4.0.1-r2.md | /mnt/data/OMOC\_WP-003+RB+WI\_v4.0.1-r2.md | v4.0.1-r2 | Cross-WP | locator\_proof 格式對齊 | 54886 | 756 | ffb92a86c26e12cc3d6bf492694fb81477f985f8f50d0744c4944dbdae1a49a9 | `sha256sum /mnt/data/OMOC_WP-003+RB+WI_v4.0.1-r2.md` |
| X4 | OMOC\_WP-004+RB+WI\_v4.0.1-r2.md | /mnt/data/OMOC\_WP-004+RB+WI\_v4.0.1-r2.md | v4.0.1-r2 | Cross-WP | 一致結構/TOC/Anchor | (see file) | (see file) | (see file) | `sha256sum /mnt/data/OMOC_WP-004+RB+WI_v4.0.1-r2.md` |
| X5 | OMOC\_WP-005+RB+WI\_v4.0.1-r2.md | /mnt/data/OMOC\_WP-005+RB+WI\_v4.0.1-r2.md | v4.0.1-r2 | Cross-WP | 一致結構/TT/DoD | (see file) | (see file) | (see file) | `sha256sum /mnt/data/OMOC_WP-005+RB+WI_v4.0.1-r2.md` |
| X6 | OMOC\_WP-006+RB+WI\_v4.0.1-r2.md | /mnt/data/OMOC\_WP-006+RB+WI\_v4.0.1-r2.md | v4.0.1-r2 | Cross-WP | route-out 對齊（CI/required checks） | (see file) | (see file) | (see file) | `sha256sum /mnt/data/OMOC_WP-006+RB+WI_v4.0.1-r2.md` |
| X7 | OMOC\_WP-007+RB+WI\_v4.0.1-r2.md | /mnt/data/OMOC\_WP-007+RB+WI\_v4.0.1-r2.md | v4.0.1-r2 | Cross-WP | SSOT/DocOps 慣例對齊 | (see file) | (see file) | (see file) | `sha256sum /mnt/data/OMOC_WP-007+RB+WI_v4.0.1-r2.md` |


---


| doc\_id | proof\_primary | proof\_fallback\_excerpt |
| ----- | ----- | ----- |
| N2 | `/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md :: FIND="導航禁忌" :: L78-L82` | 不得把 chat 對話 URL 當文件導航入口；SUPPORT 不得升格；缺口→TT |
| N2 | `/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md :: FIND="OMOC-RBWI-EVIDENCE-CONTRACT" :: L146-L150` | Evidence Contract 章節錨點（高層契約入口） |
| N3 | `/mnt/data/OMOC_施工skills_合冊_v4.0.1-r2.md :: FIND="Packager（SK08）" :: L41-L45` | packager 必須只打包指定 root artifacts \+ 單一 acceptance dir，且 forbidden→FAIL\_CLOSED |
| N1 | `/mnt/data/OMOC_藍圖_v4.0.1-r1.md :: FIND="ANCHOR:OMOC-BP-1000" :: L169-L174` | DoD 章；Evidence Minimum Output Set 與 required checks 命名契約入口 |
| N1 | `/mnt/data/OMOC_藍圖_v4.0.1-r1.md :: FIND="最低不得少於（硬性）" :: L183-L187` | 最低不得少於：verdict / evidence\_index / checks\_manifest / evidence\_bundle |
| N4 | \`/mnt/data/OMOC\_實作+WP總表\_v4.0.1-r2.md :: FIND=" | WP-008 |


---


| req\_id | req\_title | source\_normative\_locator | wp008\_locator | verification\_method (local/ci/both) | produced\_artifacts | gate\_level |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| REQ-WP008-001 | Authority Stack 必須對齊最新 SSOT；superseded 不得當 NORMATIVE | N4(r2) superseded 規則（見 N4 Doc Inventory 段） | §5 | both（Doc Hygiene Gate） | doc hygiene log | HARD |
| REQ-WP008-002 | Repo 內導航不得使用 chat URL（只用本檔 anchors） | N2 L78-L82（導航禁忌） | §1/§14 | both（rg 掃描=0） | hygiene\_scan.txt | HARD |
| REQ-WP008-003 | Evidence Triplet（verdict/checks\_manifest/evidence\_index）必產出 | N1 L183-L187；N2 Evidence Contract 入口；N3 Packager 只打包規則 | §8/§13 | both（acceptance\_local.sh） | verdict.json, checks\_manifest.json, evidence\_index.md | HARD |
| REQ-WP008-004 | Evidence Bundle（evidence\_bundle.tgz）必產出且成員受控 | N1 L183-L187；N3 L41-L45（must\_include \+ forbidden） | §8/§13 | both | evidence\_bundle.tgz | HARD |
| REQ-WP008-005 | Secrets exclusion：敏感不得入包；必有可稽核 scan | N2 L82（敏感資訊）；N3 L44（forbidden members） | §8/§15 | both | secrets\_scan.log, bundle\_audit.json | HARD |
| REQ-WP008-006 | Minset vs Plus 分層（hard\_gate(Y/N) 明示） | N1 最低不得少於；N4 WP-008 行為欄（bundle+audit） | §8/§12 | both | verdict.json（含 gate matrix） | HARD |
| REQ-WP008-007 | Plus outputs：bundle\_audit.json、single\_evidence\_bundle.txt（預設非硬 Gate） | N3（bundle\_audit 必含 members/must\_include/sha256/result）；N4 若另有裁決則跟隨 | §8/§12/§13 | local（可選） | bundle\_audit.json, single\_evidence\_bundle.txt | SOFT（default） |
| REQ-WP008-008 | 最小可重跑 Acceptance：單一入口腳本全文 \+ local/CI 對稱介面 | N2 可重跑原則；N4 WP-008 對齊；N3 Packager/Validator | §13 | both | evidence/\_acceptance//... | HARD |
| REQ-WP008-009 | Doc Hygiene Gate：contentReference/oaicite/chat URL/禁止 r1 當規範 的掃描命令 | N2（導航禁忌/不得腦補）；R8 缺陷要求 | §14 | both | hygiene\_scan.txt | HARD |
| REQ-WP008-010 | SECURITY：注入/越權/秘密防線（指令/資料分離；pattern scan） | N2 SUPPORT 不得升格；R8 安全缺陷 | §15 | both | security\_scan.log | HARD |
| REQ-WP008-011 | Traceability：Coverage Map \+ Source Locator Registry \+ Locator Proof | N2 No-Source-No-Norm；N4 Cross-WP 慣例 | §16 | both | coverage\_map.md (section), locator\_registry.md (section) | HARD |
| REQ-WP008-012 | TT Register：所有缺口一律 TT（TEMP\_CLOSED）；CR\_OPEN=0 | N2 缺口處置；N1 TT/closure 原則（由 WP-014 收斂） | §17 | both（grep 檢查 CR\_OPEN=0） | tt\_register (section) | HARD |


---


| artifact | required | path (repo-relative) | description |
| ----- | ----- | ----- | ----- |
| verdict.json | Y | `evidence/verdict.json` | 最終裁決（PASS / FAIL\_CLOSED / TEMP\_CLOSED）與 gate 結果矩陣 |
| checks\_manifest.json | Y | `evidence/checks_manifest.json` | checks 回報介面（本 WP 僅定 schema；設定值落地 route-out） |
| evidence\_index.md | Y | `evidence/evidence_index.md` | 指向所有證據/命令/log 的索引（含 locator proof） |
| evidence\_bundle.tgz | Y | `evidence/evidence_bundle.tgz` | Evidence Bundle（受控成員 \+ 單一 acceptance dir） |


---


| artifact | default\_hard\_gate | path | description |
| ----- | ----- | ----- | ----- |
| bundle\_audit.json | N | `evidence/bundle_audit.json` | bundle 成員與雜湊稽核（N3 要求其欄位） |
| single\_evidence\_bundle.txt | N | `evidence/single_evidence_bundle.txt` | 單檔攜行證據摘要（給快速審查/貼 PR） |


---


* steps:  


---


* steps:  


---


* steps:  


---


* steps:  


---


* steps:  


---


| req\_id | source\_locator | wp008\_section | acceptance\_verification | produced\_artifacts |
| ----- | ----- | ----- | ----- | ----- |
| REQ-WP008-001 | N4 SSOT rules \+ R8 findings F-008-001/F-008-005 | §5/§14 | Doc Hygiene Gate | hygiene\_scan.log |
| REQ-WP008-002 | N2 L78-L82（導航禁忌） | §1/§14 | rg chat URL \= 0 | hygiene\_scan.log |
| REQ-WP008-003 | N1 L183-L187（最低不得少於） | §8/§13 | acceptance\_local.sh | verdict/checks\_manifest/evidence\_index |
| REQ-WP008-004 | N3 Packager contract（must\_include \+ forbidden） | §8/§13 | tar members \+ audit | evidence\_bundle.tgz \+ bundle\_audit.json |
| REQ-WP008-005 | N2 L82（敏感資訊）；N3 forbidden | §8/§15/§13 | secrets scan | secrets\_scan.log |
| REQ-WP008-006 | N1 Min output \+ N4 WP-008 gate | §12/§8 | verdict hard\_gates matrix | verdict.json |
| REQ-WP008-007 | N3 single bundle contract（欄位契約） | §8.3.5/§13 | grep KEY fields | single\_evidence\_bundle.txt |
| REQ-WP008-008 | N2 可重跑原則 | §13 | rc=0 \+ paths present | evidence/\_acceptance//... |
| REQ-WP008-009 | R8 F-008-004（contentReference/oaicite 清除） | §14/§13 | hygiene scan | doc\_hygiene\_scan.log |
| REQ-WP008-010 | R8 F-008-009（安全流程化） | §15 | security\_scan.log | security\_scan.log |
| REQ-WP008-011 | N2 No-Source-No-Norm | §16 | locator registry spot-check | (section outputs) |
| REQ-WP008-012 | N2 缺口處置 | §17 | CR\_OPEN=0 | tt register |


---


| locator\_id | doc\_id | path | locator | line\_range | used\_for |
| ----- | ----- | ----- | ----- | ----- | ----- |
| LOC-N2-GUARDRAILS | N2 | /mnt/data/OMOC\_施工RB+WI\_合冊\_v4.0.1-r1.md | FIND="導航禁忌" | L78-L82 | 禁用 chat URL；SUPPORT 不得升格；缺口→TT；敏感不得入包 |
| LOC-N2-EVIDENCE | N2 | /mnt/data/OMOC\_施工RB+WI\_合冊\_v4.0.1-r1.md | FIND="OMOC-RBWI-EVIDENCE-CONTRACT" | L146-L150 | Evidence Contract 章入口（高層） |
| LOC-N3-PACKAGER | N3 | /mnt/data/OMOC\_施工skills\_合冊\_v4.0.1-r2.md | FIND="Packager（SK08）" | L41-L45 | must\_include \+ forbidden；bundle/audit 契約 |
| LOC-N1-DOD | N1 | /mnt/data/OMOC\_藍圖\_v4.0.1-r1.md | FIND="ANCHOR:OMOC-BP-1000" | L169-L174 | DoD 章入口（Evidence Min Output Set） |
| LOC-N1-MINSET | N1 | /mnt/data/OMOC\_藍圖\_v4.0.1-r1.md | FIND="最低不得少於（硬性）" | L183-L187 | 最低不得少於：verdict/index/checks/bundle |
| LOC-N4-WP008 | N4 | /mnt/data/OMOC\_實作+WP總表\_v4.0.1-r2.md | FIND=" | WP-008 | Evidence Contract Implementation" |
| LOC-R8-FINDINGS | R8 | /mnt/data/OMOC\_WP-008+RB+WI\_審查報告.md | FIND="F-008-001" 等 | (see file) | 修補規格（必修缺陷→閉環） |


---


| claim\_id | claim | primary\_locator | fallback\_locator |
| ----- | ----- | ----- | ----- |
| LP-001 | 禁用 chat URL 作導航入口 | LOC-N2-GUARDRAILS | 本檔 Doc Hygiene Gate：rg chatgpt.com=0 |
| LP-002 | 最低不得少於 4 件（verdict/index/checks/bundle） | LOC-N1-MINSET | 本檔 §8.1 Minset 表 |
| LP-003 | bundle 成員必受控、forbidden→FAIL\_CLOSED | LOC-N3-PACKAGER | 本檔 §13（tar members \+ secrets scan） |
| LP-004 | WP-008 Gate=GATE-EVIDENCE-MINSET | LOC-N4-WP008 | 本檔 §12 Gate 定義 |
| LP-005 | 缺口處置：UNVERIFIED→TT→TEMP\_CLOSED | LOC-N2-GUARDRAILS | 本檔 §17 TT Register 規則 |


---


| tt\_id | derived\_from | status | scope | closure\_criteria | verification\_plan | evidence\_required | owner\_suggestion | priority |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| TT-WP008-PLS-001 | Plus item optionality | TEMP\_CLOSED (only if missing) | single\_evidence\_bundle | `evidence/single_evidence_bundle.txt` 產出且含固定 KEY 欄位 | `rg "^VALIDATOR_RC:" evidence/single_evidence_bundle.txt` | single\_evidence\_bundle.txt | doc owner | P3 |
| TT-WP008-WEB-001 | driftable facts | TEMP\_CLOSED (until verified per run) | GitHub artifacts retention/UI | 每次 release 記錄 W01\~W06 access\_date；正文引用點一致 | 重新打開 Web sources；更新 §18 | Web appendix updated | CI owner | P2 |
| TT-WP008-CI-IFACE-001 | CI symmetry interface | TEMP\_CLOSED (route-out) | CI workflow integration | WP-006/WP-013 落地後，CI run 可下載 artifact 且包含 evidence\_bundle.tgz | CI run：gh run download \+ tar \-tzf 檢查 | CI logs \+ downloaded artifact | build owner | P2 |


---


| ref\_id | title | publisher | url | access\_date (Asia/Taipei) | used\_for | driftable(Y/N) | notes |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| W01 | actions/upload-artifact (Retention Period; retention-days input) | GitHub (actions repo) | [https://github.com/actions/upload-artifact](https://github.com/actions/upload-artifact) | 2026-02-18 | `actions/upload-artifact@v4` retention-days 行為/預設 | Y | driftable：action README 可能更新 |
| W02 | Downloading workflow artifacts | GitHub Docs | [https://docs.github.com/actions/managing-workflow-runs/downloading-workflow-artifacts](https://docs.github.com/actions/managing-workflow-runs/downloading-workflow-artifacts) | 2026-02-18 | UI/CLI 下載 artifacts；`gh run download` | Y | driftable：UI 路徑/CLI 行為 |
| W03 | Store and share data with workflow artifacts | GitHub Docs | [https://docs.github.com/en/actions/tutorials/store-and-share-data](https://docs.github.com/en/actions/tutorials/store-and-share-data) | 2026-02-18 | artifacts 在 workflow 內共享、download-artifact 說明 | Y | driftable：action 版本/用法 |
| W04 | REST API endpoints for GitHub Actions artifacts | GitHub Docs | [https://docs.github.com/en/rest/actions/artifacts](https://docs.github.com/en/rest/actions/artifacts) | 2026-02-18 | API 可下載/列出 artifacts（備援下載點） | Y | driftable：API 版號/欄位 |
| W05 | Configuring the retention period for GitHub Actions artifacts and logs in your organization | GitHub Docs | [https://docs.github.com/en/organizations/managing-organization-settings/configuring-the-retention-period-for-github-actions-artifacts-and-logs-in-your-organization](https://docs.github.com/en/organizations/managing-organization-settings/configuring-the-retention-period-for-github-actions-artifacts-and-logs-in-your-organization) | 2026-02-18 | org-level retention 調整（策略層；WP-008 僅標注 driftable） | Y | 設定值落地 route-out |
| W06 | Get started with v4 of GitHub Actions Artifacts | GitHub Blog | [https://github.blog/news-insights/product-news/get-started-with-v4-of-github-actions-artifacts/](https://github.blog/news-insights/product-news/get-started-with-v4-of-github-actions-artifacts/) | 2026-02-18 | v4 artifacts actions 背景與升級資訊 | Y | SUPPORT-only；非規範 |


---


| term | meaning | canonical |
| ----- | ----- | ----- |
| Evidence Triplet | 三件套（裁決/清單/索引） | verdict.json \+ checks\_manifest.json \+ evidence\_index.md |
| Evidence Bundle | 受控成員的打包檔 | evidence\_bundle.tgz |
| Minset | 硬 Gate 的最小產物集合 | §8.1.1 |
| Plus outputs | 額外產物（預設不阻斷） | §8.1.2 |
| FAIL\_CLOSED | 阻斷裁決（rc\!=0） | verdict.status=FAIL\_CLOSED |
| TEMP\_CLOSED | 暫關（必 TT） | verdict.status=TEMP\_CLOSED |
| TT | Test Tracking（缺口追蹤） | §17 |


---


| legacy\_section (r1) | new\_section (r2) | notes |
| ----- | ----- | ----- |
| 0 Frontmatter | §0/§6 | 增加 SSOT/Doc Inventory 固化 |
| 1 TOC \+ Anchor Registry | §1/§3 | 去外鏈；錨點一致 |
| 2 導讀 | §2 | Diátaxis 強化 |
| 3 Authority & Scope | §4/§5 | SSOT r2 \+ route-out 明確 |
| 4 Doc Inventory \+ SOP | §6/§16 | 以 locator registry/locator proof 取代宣告句 |
| 5 Requirements | §7 | 每條 REQ 閉環到驗收與產物 |
| 10 Gates/DoD | §12 | Minset/Plus 分層落地 |
| 11 Acceptance | §13 | 移除不可執行污染；提供全文腳本 |
| 16 Appendices（Web/Glossary 等） | §18/§19 | Web ≥6 且正文回指；術語/檔名規範硬化 |

