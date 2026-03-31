# HOW (extracted)


| field | value |
| ----- | ----- |
| external\_name | Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack（Package C — 執行落地合冊） |
| internal\_short\_name | C-EXECUTION |
| stable\_id | SOMOC-SUBP1MVP-PKG-C-EXECUTION |
| doc\_id | Spartoi\_SubP1-LITE+MVP\_Execution\_Pack |
| version | v1.2.0 |
| status | DEFINITIVE\_WITH\_TT (Fail-Closed / CR\_OPEN=0 / TEST\_TRACK Present) |
| release\_date | 2026-02-25 |
| timezone | Asia/Taipei (UTC+08:00) |
| baseline\_web\_date | 2026-02-25 (Web SUPPORT-only; TT-bound only) |
| supersedes | v1.1.0, v1.0.0 (engineering replaceability is TT\_BOUND until matrices are row-complete) |
| replaces | v1.1.0, v1.0.0 (same condition as above) |
| scope\_lock | LOCKED：Package C 僅承載「入口路由 / 交接介面最小欄位 / 可回放索引 / 覆蓋矩陣 / TT 與外部證據附錄」；不得重寫上位 SSOT；不得內嵌 Dev/Ops HOW |
| replaceability\_verdict | **TT\_BOUND**（本版新增三大矩陣骨架 \+ 行級證據位；但部分上游/legacy 文件仍缺 ≥2 locator proofs 或逐條 finding 內容未可定位抽取 → 依法 Fail-Closed） |
| versioning\_adjudication | v1.1.0 審查報告明示 replaceability=TT\_BOUND、角色衝突、三矩陣不足等 blocker/TT；本版屬「規範性修補 \+ 機械矩陣落地」→ MINOR \+1 合理升版（v1.2.0）。evidence\_ptr: DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.1.0\_審查報告.md\#\[0\] |
|  |  |
| hard\_invariants | No-Source-No-Norm；No-Anchor-No-Claim；CR\_OPEN=0；任何不確定/不可定位 → TT（TEMP\_CLOSED→TEST\_TRACK） |


---


| doc\_key | path | expected\_role | status(FOUND/FOUND\_UNVERIFIED/MISSING) | locator\_proof\_1 | locator\_proof\_2 | notes | linked\_tt\_id |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| C\_AUDIT\_V110 | /mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.1.0\_審查報告.md | Review basis (all findings/PS must land) | FOUND | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.1.0\_審查報告.md\#\[0\] | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.1.0\_審查報告.md\#\[5\] | 結案矩陣以本報告為準；PS-CEXE-\* 必落地 |  |
| C\_TARGET\_V110 | /mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.1.0.md | Legacy baseline (anti-regression) | FOUND\_UNVERIFIED | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.1.0.md\#\[ANCHOR:CEXE-V110-DOC-META\] | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.1.0.md\#\[ANCHOR:CEXE-V110-TOC\] | 需用本版 parity map 證明取代性 | TT-CEXE-402 |
| C\_LEGACY\_V100 | /mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.0.0.md | Legacy parity source | FOUND\_UNVERIFIED | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.0.0.md\#\[ANCHOR:CXE-IF-HANDOFF-DOCMETA\] | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.0.0.md\#\[ANCHOR:CXE-IF-HANDOFF-MIN-CONTRACT\] | 目前僅能證明 min\_contract；canonical schema 仍不可定位 | TT-CEXE-003 |
| C\_AUDIT\_V100 | /mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.0.0\_審查報告.md | Legacy findings baseline | FOUND\_UNVERIFIED | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.0.0\_審查報告.md\#(0) | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.0.0\_審查報告.md\#(6) | 未完成逐條抽取→本版以 TT 方式暫結案並要求補抽取 | TT-CEXE-401 |
| C\_AUDIT\_V100\_R0 | /mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.0.0\_審查報告.md | Legacy review evidence | FOUND\_UNVERIFIED | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.0.0\_審查報告.md\#(0) | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.0.0\_審查報告.md\#(6) | 重列（對應 closure map） | TT-CEXE-401 |
| ENG\_GUIDE | /mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_前端文檔到實作驗收\_工程指南.md | Higher authority for Package C | FOUND | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_前端文檔到實作驗收\_工程指南.md\#\[\#sec3.3-pkg-c-execution\] | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_前端文檔到實作驗收\_工程指南.md\#\[\#ch6-execution-phases\] | §3.3 正文逐條引用未完成→TT | TT-CEXE-202 |
| WI\_C | /mnt/data/Package C — Execution Pack（執行落地合冊）\_撰寫\_規範工作指導書（WI）.md | Role/禁區/DoD/Handoff spec | FOUND | DOCLOC:/mnt/data/Package C — Execution Pack（執行落地合冊）\_撰寫\_規範工作指導書（WI）.md\#\[WI-C-0\] | DOCLOC:/mnt/data/Package C — Execution Pack（執行落地合冊）\_撰寫\_規範工作指導書（WI）.md\#\[WI-C-9\] | WI-C vs v1.1.0 role 衝突已 TT 化 | TT-CEXE-301 |
| PKG\_A\_V120 | /mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP \_Governance\_Index Pack\_v1.2.0.md | Upstream alignment | FOUND\_UNVERIFIED | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP \_Governance\_Index Pack\_v1.2.0.md (locator pending) | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP \_Governance\_Index Pack\_v1.2.0.md (locator pending) | 未能建立 ≥2 locator proofs → TT | TT-CEXE-501 |
| PKG\_B\_V220 | /mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Control Plane Pack\_v2.2.0.md | Upstream alignment (schemas/registries) | FOUND\_UNVERIFIED | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Control Plane Pack\_v2.2.0.md (locator pending) | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Control Plane Pack\_v2.2.0.md (locator pending) | 未能建立 ≥2 locator proofs → TT | TT-CEXE-502 |
| SRS\_V810 | /mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md | Global normative (evidence/web policy) | FOUND | DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-REQ-EVID-TRIPLET\] | DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-GOV-WEB-APPENDIX\] |  |  |
| ARCH\_V810 | /mnt/data/Spartoi-OMOC\_ARCH\_v8.1.0.md | Global normative (replayability) | FOUND | DOCLOC:/mnt/data/Spartoi-OMOC\_ARCH\_v8.1.0.md\#\[ANCHOR:ARCH-V810-8-2-REPLAY\] | DOCLOC:/mnt/data/Spartoi-OMOC\_ARCH\_v8.1.0.md\#\[ANCHOR:ARCH-V810-0-3-AUTHORITY\] |  |  |
| ICD\_V811R2 | /mnt/data/Spartoi-OMOC\_LBP-B(ICD)v8.1.1-r2.md | Interface definitions (route-out) | FOUND\_UNVERIFIED | DOCLOC:/mnt/data/Spartoi-OMOC\_LBP-B(ICD)v8.1.1-r2.md (locator pending) | DOCLOC:/mnt/data/Spartoi-OMOC\_LBP-B(ICD)v8.1.1-r2.md (locator pending) | locator proofs 不足→TT | TT-CEXE-DOCMISS-03 |
| DEV\_RBWI\_SUBP1 | /mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Dev RUNBOOK \+ WI\_ v2.1.0-r2.md | Dev implementation SSOT | FOUND | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Dev RUNBOOK \+ WI\_ v2.1.0-r2.md\#\[ANCHOR:SOMOC-DEV-RBWI-V210R2-0-1-DOC\_META\] | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Dev RUNBOOK \+ WI\_ v2.1.0-r2.md\#\[ANCHOR:SOMOC-DEV-RBWI-V210R2-0-2-PREFLIGHT\_INPUTS\] |  |  |
| OPS\_RBWI\_SUBP1 | /mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Ops RUNBOOK \+ WI\_v2.1.0-r2.md | Ops implementation SSOT | FOUND | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Ops RUNBOOK \+ WI\_v2.1.0-r2.md\#\[ANCHOR:SOMOC-SUBP1MVP-OPS-S0-COVER\] | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Ops RUNBOOK \+ WI\_v2.1.0-r2.md\#\[ANCHOR:SOMOC-SUBP1MVP-OPS-S0-1-PREFLIGHT\] |  |  |
| OMOC\_WP\_MASTER | /mnt/data/OMOC\_WP總表\_v4.0.1-r2.md | WP audit bus mapping | FOUND\_UNVERIFIED | DOCLOC:/mnt/data/OMOC\_WP總表\_v4.0.1-r2.md\#(TOC) | DOCLOC:/mnt/data/OMOC\_WP總表\_v4.0.1-r2.md\#(Contract Blocks Registry) | locator 用段落名占位；後續需補 anchor/行號 | TT-CEXE-004 |
| OMOC\_RIP\_EXTERNAL | /mnt/data/OMOC\_RIP\_外部資料.md | Web/support pool (support-only) | FOUND\_UNVERIFIED | DOCLOC:/mnt/data/OMOC\_RIP\_外部資料.md\#(TOC) | DOCLOC:/mnt/data/OMOC\_RIP\_外部資料.md\#(H. RIP-F) | 尚未導入為逐條 web\_evidence 行級→TT | TT-CEXE-701 |


---


| artifact | field | type | required(Y/N) | source\_ssot\_ptr | missing\_disposition(TT/FAIL\_CLOSED) | notes |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| RC\_PACK | rc\_pack\_id | string | Y | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Control Plane Pack\_v2.2.0.md (route-out; locator pending) | TT | CP v2.2.0 定義待定位；本包僅要求存在且可追溯 |
| RC\_PACK | run\_id | string | Y | DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-REQ-EVID-TRACE\] | TT | 若 SRS 追溯欄位要求與 CP 不一致 → 以 SRS 高位裁決 |
| RC\_PACK | gate\_id | string | Y | DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-GATE-DICTIONARY\] | TT | gate 字典以 SRS/CP 為準；本包不自立 gate |
| RC\_PACK | verdict\_ptr | string | Y | DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-REQ-EVID-TRIPLET\] | TT | 需能定位到 verdict（路徑/URI 皆可） |
| RC\_PACK | evidence\_index\_ptr | string | Y | DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-REQ-EVID-TRIPLET\] | TT | 需能定位到 evidence index |
| RC\_PACK | bundle\_ptr | string | Y | DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-REQ-EVID-TRIPLET\] | TT | 需能定位到 bundle |
| RC\_PACK | handoff\_manifest\_ptr | string | Y | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.0.0.md\#\[ANCHOR:CXE-IF-HANDOFF-MIN-CONTRACT\] | TT | canonical schema 未定位；本包只要求最小互通 |
| RC\_PACK | generated\_at | string(datetime) | Y | DOCLOC:/mnt/data/Spartoi-OMOC\_ARCH\_v8.1.0.md\#\[ANCHOR:ARCH-V810-8-2-REPLAY\] | TT | 回放必需時間戳（格式以 CP/SRS 為準） |


---


| artifact | field | type | required(Y/N) | source\_ssot\_ptr | missing\_disposition(TT/FAIL\_CLOSED) | notes |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| HANDOFF\_MANIFEST | handoff\_id | string | Y | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Control Plane Pack\_v2.2.0.md (route-out; locator pending) | TT | 需可追溯；schema 待上游定位 |
| HANDOFF\_MANIFEST | producer | string | Y | DOCLOC:/mnt/data/Package C — Execution Pack（執行落地合冊）\_撰寫\_規範工作指導書（WI）.md\#\[WI-C-6\] | TT | WI-C-6 handoff 規範需逐條抽取→TT |
| HANDOFF\_MANIFEST | consumer | string | Y | DOCLOC:/mnt/data/Package C — Execution Pack（執行落地合冊）\_撰寫\_規範工作指導書（WI）.md\#\[WI-C-6\] | TT | 同上 |
| HANDOFF\_MANIFEST | rc\_pack\_ptr | string | Y | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.0.0.md\#\[ANCHOR:CXE-IF-HANDOFF-MIN-CONTRACT\] | TT | rc\_pack 的具體路徑形狀以 RBWI/CP 為準 |
| HANDOFF\_MANIFEST | scope\_lock\_ref | string | Y | DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-SCOPE-LOCK\] | TT | 需能指出此次交接的 scope\_lock 版本/指針 |
| HANDOFF\_MANIFEST | tt\_export\_ptr | string | Y | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.0.0.md\#\[ANCHOR:CXE-IF-HANDOFF-MIN-CONTRACT\] | TT | TT\_EXPORT canonical schema 未定位 → 仍可指針但 TT |
| HANDOFF\_MANIFEST | evidence\_minset\_ptr | string | Y | DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-REQ-EVID-TRIPLET\] | TT | Evidence Minset 五件套具體清單需對齊工程指南→TT |


---


| artifact | field | type | required(Y/N) | source\_ssot\_ptr | missing\_disposition(TT/FAIL\_CLOSED) | notes |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| TT\_EXPORT | export\_id | string | Y | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Control Plane Pack\_v2.2.0.md (route-out; locator pending) | TT | TT schema lock 以 CP 為準；本包不自立 schema |
| TT\_EXPORT | tt\_items\_count | integer | Y | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Control Plane Pack\_v2.2.0.md (route-out; locator pending) | TT | 需能統計 |
| TT\_EXPORT | tt\_items\_ptr | string | Y | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Control Plane Pack\_v2.2.0.md (route-out; locator pending) | TT | 指向可機械解析之清單 |
| TT\_EXPORT | generated\_at | string(datetime) | Y | DOCLOC:/mnt/data/Spartoi-OMOC\_ARCH\_v8.1.0.md\#\[ANCHOR:ARCH-V810-8-2-REPLAY\] | TT |  |
| TT\_EXPORT | revoke\_policy\_ref | string | Y | DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-FAIL-CLOSED-RULES\] | TT | TT 的 revoke\_condition 規則以 SRS/CP 為準 |
| TT\_EXPORT | signature\_or\_hash | string | N | DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-REQ-EVID-TRACE\] | TT | 若上游要求完整性簽章，需對齊；否則 TT |


---


| finding\_id | severity | status\_before(PASS/FAIL/TT) | required\_fix | fixed\_in\_v1.2.0\_loc | disposition\_after(PASS/TT) | linked\_tt\_id | verification\_note |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| F-CEXE-0001 | BLOCKER | FAIL | 消除 Package C 角色矛盾（以工程指南§3.3裁決；衝突入 TEST\_TRACK） | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.2.0.md\#\[ANCHOR:CXE-V120-ROLE-ADJUDICATION\] \+ \#\[ANCHOR:CXE-V120-TERM-DISAMBIG\] | TT | TT-CEXE-301 | §3.3 正文逐條抽取未完成→依法仍 TT |
| F-CEXE-0002 | MAJOR | TT | HANDOFF\_MANIFEST：提供可抽取最小欄位表 \+ 來源指針 \+ 缺失處置（route-out canonical schema） | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.2.0.md\#\[ANCHOR:CXE-V120-HANDOFF-MIN-FIELD-HANDOFF-MANIFEST\] | TT | TT-CEXE-003 | canonical schema locator 未完成 |
| F-CEXE-0003 | MAJOR | TT | TT\_EXPORT：min\_field\_table \+ export\_rules \+ TEMP\_CLOSED→TEST\_TRACK \+ route-out state machine | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.2.0.md\#\[ANCHOR:CXE-V120-HANDOFF-MIN-FIELD-TT-EXPORT\] \+ \#\[ANCHOR:CXE-V120-TT-ROOT\] | TT | TT-CEXE-002 | CP v2.2.0 locator 未完成 |
| F-CEXE-0004 | MAJOR | TT | 工程指南§3.3/Phases/Gates/EvidenceMinset 逐條正文引用型對齊矩陣 | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.2.0.md\#\[ANCHOR:CXE-V120-C-ALIGNMENT-MATRIX\] | TT | TT-CEXE-202 | source\_quote\_ptr 多數仍 pending（需行級抽取） |
| F-CEXE-0005 | MAJOR | TT | v1.0.0 審查報告逐條 closure 行級證據化（legacy\_finding\_id→落點） | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.2.0.md\#\[ANCHOR:CXE-V120-LEGACY-FINDINGS-CLOSURE-MAP\] | TT | TT-CEXE-401 | legacy 報告 finding 清單未可定位抽取 |
| F-CEXE-0006 | MINOR | TT | Doc Inventory 多份 SSOT 缺 ≥2 locator proofs → 補齊/或 TT | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.2.0.md\#\[ANCHOR:CXE-V120-DOC-INVENTORY\] | TT | TT-CEXE-0201 | 仍有 PkgA/PkgB/ICD locator gaps |
| F-CEXE-0007 | MINOR | TT | 外部資料導入：SUPPORT-only \+ double-sourcing \+ TT 綁定流水 | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.2.0.md\#\[ANCHOR:CXE-V120-WEB-EVIDENCE-APPENDIX\] | TT | TT-CEXE-701 | entries=0；待雙來源導入 |
| F-CEXE-0008 | MINOR | TT | Dev/Ops route-out topic 覆蓋證明（避免偷塞 HOW） | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.2.0.md\#\[ANCHOR:CXE-V120-ENTRANCES\] | TT | TT-CEXE-602 | topic 覆蓋需補“route-out register 全量清單” |
| F-CEXE-0009 | MINOR | TT | replaceability\_verdict：三矩陣 row\_count \+ 抽樣行證據化 | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.2.0.md\#\[ANCHOR:CXE-V120-MAPS\] | TT | TT-CEXE-402 | 本版提供骨架；待補齊 |


---


| legacy\_finding\_id | legacy\_loc | v1.2.0\_loc | disposition(PASS/TT) | linked\_tt\_id | locator\_proof\_legacy | locator\_proof\_new |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| LEGACY-FINDING-LIST-NOT-EXTRACTED | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.0.0\_審查報告.md\#(0) | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.2.0.md\#\[ANCHOR:CXE-V120-LEGACY-FINDINGS-CLOSURE-MAP\] | TT | TT-CEXE-401 | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.0.0\_審查報告.md\#(0) | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.2.0.md\#\[ANCHOR:CXE-V120-LEGACY-FINDINGS-CLOSURE-MAP\] |


---


| legacy\_anchor | exists\_in\_v1.0.0 | exists\_in\_v1.1.0 | v1.2.0\_anchor | disposition(kept/aliased/deprecated) | notes |
| ----- | ----- | ----- | ----- | ----- | ----- |
| CEXE-V110-DOC-META | N/A | Y | CXE-V120-DOC-META | aliased | v1.1.0 doc meta 入口保留為 alias |
| CXE-README-AI-PATH | Y | Y | CXE-V120-AI-PATH | kept | 入口路徑延續 |
| CXE-IF-HANDOFF-MIN-CONTRACT | Y | Y | CXE-V120-INTERFACES | aliased | 由 “min\_contract 宣告”升級為“min\_field\_table \+ pointers” |
| CXE-WEB-APPX-ROOT | Y | Y | CXE-V120-WEB-EVIDENCE-APPENDIX | aliased | 改為固定表頭 schema |


---


| requirement\_id | requirement\_text | source\_doc | source\_quote\_ptr | pkg\_c\_action(embed/route-out/align) | v1.2.0\_loc | locator\_proof\_1 | locator\_proof\_2 | status(PASS/TT) | linked\_tt\_id |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| ENG-3.3-ROLE | Package C 角色裁決（以工程指南§3.3為準） | 工程指南 | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_前端文檔到實作驗收\_工程指南.md\#\[\#sec3.3-pkg-c-execution\] | align | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.2.0.md\#\[ANCHOR:CXE-V120-ROLE-ADJUDICATION\] | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_前端文檔到實作驗收\_工程指南.md\#\[\#sec3.3-pkg-c-execution\] | DOCLOC:/mnt/data/Package C — Execution Pack（執行落地合冊）\_撰寫\_規範工作指導書（WI）.md\#\[WI-C-0\] | TT | TT-CEXE-202 |
| WI-C-3-FORBIDDEN | 禁區：不得重寫 SSOT / 不得自立 schema / 不得抄對方 HOW | WI-C | DOCLOC:/mnt/data/Package C — Execution Pack（執行落地合冊）\_撰寫\_規範工作指導書（WI）.md\#\[WI-C-3\] | embed | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.2.0.md\#\[ANCHOR:CXE-V120-AI-PATH\] | DOCLOC:/mnt/data/Package C — Execution Pack（執行落地合冊）\_撰寫\_規範工作指導書（WI）.md\#\[WI-C-3\] | DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-GATE-ROUTEOUT\] | PASS |  |
| SRS-EVID-TRIPLET | Evidence Triplet（三件套）必備 | SRS | DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-REQ-EVID-TRIPLET\] | align | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.2.0.md\#\[ANCHOR:CXE-V120-RUNLOG-INDEX-TEMPLATE\] | DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-REQ-EVID-TRIPLET\] | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Ops RUNBOOK \+ WI\_v2.1.0-r2.md\#\[ANCHOR:SOMOC-SUBP1MVP-OPS-S0-1-PREFLIGHT\] | TT | TT-CEXE-506 |
| WI-C-6-HANDOFF | handoff 規範（最小交接集合） | WI-C | DOCLOC:/mnt/data/Package C — Execution Pack（執行落地合冊）\_撰寫\_規範工作指導書（WI）.md\#\[WI-C-6\] | align | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.2.0.md\#\[ANCHOR:CXE-V120-INTERFACES\] | DOCLOC:/mnt/data/Package C — Execution Pack（執行落地合冊）\_撰寫\_規範工作指導書（WI）.md\#\[WI-C-6\] | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Dev RUNBOOK \+ WI\_ v2.1.0-r2.md\#\[ANCHOR:SOMOC-DEV-RBWI-V210R2-0-1-DOC\_META\] | TT | TT-CEXE-602 |
| WP-AUDIT-BUS | WP Audit Bus Mapping 掛載點 | WP總表 | DOCLOC:/mnt/data/OMOC\_WP總表\_v4.0.1-r2.md\#(Contract Blocks Registry) | route-out | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.2.0.md\#\[ANCHOR:CXE-V120-MAPS\] | DOCLOC:/mnt/data/OMOC\_WP總表\_v4.0.1-r2.md\#(TOC) | DOCLOC:/mnt/data/OMOC\_WP總表\_v4.0.1-r2.md\#(Contract Blocks Registry) | TT | TT-CEXE-004 |
| PKG-A-ALIGN | 對齊 Package A（索引/路由/映射） | PkgA v1.2.0 | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP \_Governance\_Index Pack\_v1.2.0.md (locator pending) | route-out | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.2.0.md\#\[ANCHOR:CXE-V120-DOC-INVENTORY\] | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP \_Governance\_Index Pack\_v1.2.0.md (locator pending) | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP \_Governance\_Index Pack\_v1.2.0.md (locator pending) | TT | TT-CEXE-501 |
| PKG-B-ALIGN | 對齊 Package B（TT schema / evidence schema / registries） | PkgB v2.2.0 | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Control Plane Pack\_v2.2.0.md (locator pending) | route-out | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.2.0.md\#\[ANCHOR:CXE-V120-INTERFACES\] | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Control Plane Pack\_v2.2.0.md (locator pending) | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Control Plane Pack\_v2.2.0.md (locator pending) | TT | TT-CEXE-502 |


---


| tt\_id | summary | verify\_method | revoke\_condition | evidence\_ptr | owner\_suggested | status(TEMP\_CLOSED/TEST\_TRACK) |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| TT-CEXE-301 | Package C 角色定義衝突（WI-C vs v1.1.0 scope\_lock）需以工程指南§3.3正文裁決 | Extract §3.3 正文逐條，補 source\_quote\_ptr 並統一術語 | 若無法提供逐條正文引用，撤銷任何「C=HOW SSOT」或「可取代」宣告，維持 C 僅導覽層 | DOCLOC:/mnt/data/Package C — Execution Pack（執行落地合冊）\_撰寫\_規範工作指導書（WI）.md\#\[WI-C-0\] \+ DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.1.0.md\#\[ANCHOR:CEXE-V110-DOC-META\] | Governance | TEST\_TRACK |
| TT-CEXE-003 | HANDOFF\_MANIFEST canonical schema 未定位 | Locate CP/SRS/ICD schema；或提供可抽取字段表（≥2 locator proofs） | 若仍不可定位，handoff 驗收不得判 PASS（維持 TT\_BOUND），並要求 Ops 以人工檢核 \+ 佐證記錄 | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.0.0.md\#\[ANCHOR:CXE-IF-HANDOFF-MIN-CONTRACT\] | Dev+Ops | TEST\_TRACK |
| TT-CEXE-002 | TT\_EXPORT canonical schema 未定位 | Locate CP TT schema / export schema；補最小字段表來源指針 | 若無 schema，撤銷「TT 可機械導出回放」主張 | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.0.0.md\#\[ANCHOR:CXE-IF-HANDOFF-MIN-CONTRACT\] | Control | TEST\_TRACK |
| TT-CEXE-202 | 工程指南§3.3 正文逐條對齊不足（含 phases/gates/G0-G3/EvidenceMinset/WP bus） | 建立逐條對齊 C\_ALIGNMENT\_MATRIX（row\_count \+ 抽樣行） | 若 row\_count 或 source\_quote\_ptr 缺失，撤銷 alignment PASS，維持 TT | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_前端文檔到實作驗收\_工程指南.md\#\[\#sec3.3-pkg-c-execution\] | Spec | TEST\_TRACK |
| TT-CEXE-401 | v1.0.0 審查報告 finding\_id 未逐條抽取，closure\_map 無法行級結案 | Extract legacy findings list；補 LEGACY\_FINDINGS\_CLOSURE\_MAP 全量行 | 若無全量行，replaceability 不可 YES | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.0.0\_審查報告.md\#(0) | Spec | TEST\_TRACK |
| TT-CEXE-501 | PkgA v1.2.0 缺 ≥2 locator proofs（對齊不可宣告） | 補 PkgA v1.2.0 anchors/locators 並更新 alignment matrix | 若仍無定位，本包僅能 route-out，且不得宣告已對齊 | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP \_Governance\_Index Pack\_v1.2.0.md | Governance | TEST\_TRACK |
| TT-CEXE-502 | PkgB v2.2.0 缺 ≥2 locator proofs（TT schema/evidence schema 無法核對） | 補 PkgB v2.2.0 anchors/locators 並更新 interfaces pointers | 若仍無定位，本包不得聲稱採用 canonical schema，只能維持 min\_field\_table TT | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Control Plane Pack\_v2.2.0.md | Control | TEST\_TRACK |
| TT-CEXE-004 | WP Audit Bus Mapping 掛載點字段/命名不可定位 | 從 WP 總表提取 gate\_registry / mapping 欄位並給行級定位 | 若仍無定位，WP bus 相關主張不得 PASS | DOCLOC:/mnt/data/OMOC\_WP總表\_v4.0.1-r2.md\#(Contract Blocks Registry) | Control | TEST\_TRACK |
| TT-CEXE-701 | 外部資料導入未形成逐條 web\_evidence 行級（double-sourcing \+ revoke） | 從 OMOC\_RIP\_外部資料提取 claim，雙來源補齊後填入 WEB\_EVIDENCE\_APPENDIX | 若 consistency=NO → WEB-CONFLICT→TT（不得支撐 PASS） | DOCLOC:/mnt/data/OMOC\_RIP\_外部資料.md\#(TOC) | Security | TEST\_TRACK |


---


| claim | linked\_tt\_id | source\_a | source\_b | accessed\_at | consistency(YES/NO) | revoke\_condition | notes |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |


---


| check\_id | result(PASS/TT) | note | evidence\_ptr |
| ----- | ----- | ----- | ----- |
| SA-LOC-001 | TT | PkgA/PkgB/ICD 多處 locator proofs 不足 | `[ANCHOR:CXE-V120-DOC-INVENTORY]` |
| SA-GRD-001 | PASS | 本包未重寫 SSOT；HOW 全 route-out | `[ANCHOR:CXE-V120-ENTRANCES]` \+ WI-C-3 |
| SA-REL-001 | TT | 三大矩陣 row\_count/全量抽取仍不足，replaceability 維持 TT\_BOUND | `[ANCHOR:CXE-V120-MAPS]` |
| SA-WEB-001 | PASS | Web Appendix 仍空表頭，未引入不可驗證外部 claim | `[ANCHOR:CXE-V120-WEB-EVIDENCE-APPENDIX]` |

