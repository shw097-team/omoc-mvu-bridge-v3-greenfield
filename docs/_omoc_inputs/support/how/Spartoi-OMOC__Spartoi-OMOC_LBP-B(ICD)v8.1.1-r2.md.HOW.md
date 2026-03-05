# HOW (extracted)


| doc\_name | version(可判) | layer | locator proof (例) | status |
| ----- | ----- | ----- | ----- | ----- |
| /mnt/data/Spartoi-OMOC\_LBP-B(ICD)v8.1.1-r1.md | v8.1.1-r1 | NORMATIVE | \[ANCHOR:ICD-V811-2-GUIDE\], \[ANCHOR:ICD-V811-11-1-CR-LIST\] | PRESENT |
| /mnt/data/Spartoi-OMOC\_LBP-B(ICD)v8.1.1-r1\_審查報告A.md | v8.1.1-r1 audit A | NORMATIVE | Patch skeleton：P-ICD-PARITY-001 / P-ICD-LOC-001 / P-ICD-WE-001 | PRESENT |
| /mnt/data/Spartoi-OMOC\_LBP-B(ICD)v8.1.1-r1\_審查報告B.md | v8.1.1-r1 audit B | NORMATIVE | Findings Ledger F-001\~；Patch PS-ICD-001\~010 | PRESENT |
| /mnt/data/Spartoi｜P1\_LBP-B(ICD)\_v5.0.1.md | v5.0.1 | NORMATIVE | \[ANCHOR:ICD-V501-REQ-MAPPING-MATRIX\], \[ANCHOR:ICD-V501-MULTIMODAL-CONTRACT-INDEX\] | PRESENT (grep) |
| /mnt/data/Spartoi｜P1\_LBP-B(ICD)v8.1.1-r1.md | v8.1.1-r1 | NORMATIVE | (檔案庫未發現同名) | **MISSING → TT-DOC-MISSING-001** |
| /mnt/data/Spartoi-OMOC\_MIP\_v2.2.0.txt | v2.2.0 | NORMATIVE | \[ANCHOR:MIP-V220-1-2-MAPPING\]；DOCLOC:/mnt/data/Spartoi-OMOC\_MIP\_v2.2.0.txt\#L658（仍指 v5.0.1） | PRESENT |
| /mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md | v8.1.0 | NORMATIVE | \[ANCHOR:SRS-V810-REQ-EVID-TRIPLET\]；DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#L3165（RO-ICD 指 v5.0.1） | PRESENT |
| /mnt/data/Spartoi-OMOC\_ARCH\_v8.1.0.md | v8.1.0 | NORMATIVE | DOCLOC:/mnt/data/Spartoi-OMOC\_ARCH\_v8.1.0.md\#L211（Interface 仍 v5.0.1）；DOCLOC:\#L3035（DB schema 指 v5.0.1） | PRESENT |
| /mnt/data/Spartoi-OMOC\_LBP-A(SIR) v8.1.1-r1.md | v8.1.1-r1 | NORMATIVE | (本回合僅作映射；不擴權寫 HOW) | PRESENT |
| /mnt/data/OMOC-MVU「Local Docker 低磨合轉接層」方案v4.0.md | v4.0 | NORMATIVE | (本回合僅 Route-Out/Mapping) | PRESENT |
| /mnt/data/「OMOC-MVU 藍圖 \+ RUNBOOK \+ WI」套件包\_v0.2.0-r1+SC-HMD.md | v0.2.0-r1 | NORMATIVE | (本回合僅 Route-Out/Mapping) | PRESENT |
| /mnt/data/Spartoi-OMOC(15 CA)重構升級藍圖v0.2.0-r1.md | v0.2.0-r1 | NORMATIVE | (本回合僅 Route-Out/Mapping) | PRESENT |
| /mnt/data/Spartoi-OMOC Blueprint v2.2.0-r1.md | v2.2.0-r1 | NORMATIVE | (本回合僅 Route-Out/Mapping) | PRESENT |
| /mnt/data/Pipeline-A\_組合方案 v2.md | v2 | NORMATIVE | (多數無 \[ANCHOR:\] → 以 DOCLOC) | PRESENT |
| /mnt/data/Pipeline-B 組合方案 v2.md | v2 | NORMATIVE | (同上) | PRESENT |
| /mnt/data/Pipeline-C組合方案.md | (未判) | NORMATIVE | (同上) | PRESENT |
| /mnt/data/五子系統組合方案.md | (未判) | NORMATIVE | (同上) | PRESENT |
| /mnt/data/Pipeline-A+B 整合資料庫方案.md | (未判) | NORMATIVE | MIP 已引用 §3.3 | PRESENT |
| /mnt/data/Spartoi-OMOC\_子系統重構藍圖.md | (未判) | NORMATIVE | (本回合僅映射) | PRESENT |
| /mnt/data/子系統「顯示名\_宏模組名」改名方案.md | (未判) | NORMATIVE | (本回合僅映射) | PRESENT |


---


| finding\_id | severity | statement | evidence\_locator | required\_fix\_strategy | patch\_id | tt\_id | status(before→after) |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| F-001 | BLOCKER | Route-Out 目標用 \#H:\# 佔位，無法定位 | B: ICD-V811-4-3-ROUTE-OUT | PATCH | PS-ICD-002 / P-ICD-LOC-001 | TT-AUD-002 | FAIL\_CLOSED → TEMP\_CLOSED |
| F-002 | BLOCKER | Web Evidence title/url 不一致 | B: ICD-V811-13-WEB | PATCH | PS-ICD-003 / P-ICD-WE-001 | TT-AUD-003 / TT-ICD-WE-001 | FAIL\_CLOSED → TEMP\_CLOSED |
| F-003 | BLOCKER | WE-006/007 指向鏡像域/錯誤來源 | B: ICD-V811-13-WEB | PATCH \+ CR\_TEMP\_CLOSED | PS-ICD-003 | TT-AUD-003 | FAIL\_CLOSED → TEMP\_CLOSED |
| F-004 | BLOCKER | MIP/SRS/ARCH 仍指向 ICD v5.0.1 | B: Cross-doc；MIP/SRS/ARCH grep 證據 | ROUTE-OUT（更新由對端文檔負責） | PS-ICD-007 | TT-AUD-004 | FAIL\_CLOSED → TEMP\_CLOSED |
| F-005 | BLOCKER | CR 清單宣稱 50，但 CR Mirror 表僅 23 | B: ICD-V811-11-1/11-3 | PATCH | PS-ICD-005 | TT-AUD-005/006 | FAIL\_CLOSED → TEMP\_CLOSED |
| F-006 | CRITICAL | TT 清單未覆蓋 CR Mirror 引用 TT-\* | B: ICD-V811-12-TT | PATCH | PS-ICD-006 | TT-AUD-006 | FAIL\_CLOSED → TEMP\_CLOSED |
| F-007 | CRITICAL | 缺 v5.0.1 等級破壞性變更矩陣 | B: 指向 ICD-V501-COMPATIBILITY-POLICY | PATCH | PS-ICD-001 | TT-AUD-001 | UNVERIFIED → TEMP\_CLOSED |
| F-008 | CRITICAL | 跨文件映射表缺 source anchors（僅 topic） | B: ICD-V811-9-CROSS-DOC | PATCH | PS-ICD-007 | TT-AUD-004 | FAIL\_CLOSED → TEMP\_CLOSED |
| F-009 | MAJOR | Schema Registry 未定義 schema 檔案路徑/匯出格式 | B: ICD-V811-8-1-REGISTRY-TABLE | PATCH | PS-ICD-008 / P-ICD-LOC-001 | TT-AUD-008 / TT-ICD-LOC-001 | UNVERIFIED → TEMP\_CLOSED |
| F-010 | MAJOR | Triplet schema required 標註易誤解（條件性） | B: ICD-V811-8-2-TRIPLET | PATCH | PS-ICD-008 | TT-AUD-008 | UNVERIFIED → TEMP\_CLOSED |
| F-011 | MAJOR | Contract Catalog 缺 version/error\_model/security\_assumption 等最小欄位集 | B: ICD-V811-7-2-CONTRACT-CATALOG | PATCH | PS-ICD-009 | TT-AUD-009 | UNVERIFIED → TEMP\_CLOSED |
| F-012 | MAJOR | Schema ID 僅 MAJOR，缺 MINOR/PATCH 策略 | B: ICD-V811-5-3-SCHEMA-ID | PATCH | PS-ICD-001 | TT-AUD-001 | UNVERIFIED → TEMP\_CLOSED |
| F-013 | MAJOR | Pipeline docs 多無 anchor → ICD 引用不可定位 | B: Pipeline anchor 缺失 | ROUTE-OUT \+ TT | PS-ICD-002 | TT-AUD-010 | FAIL\_CLOSED → TEMP\_CLOSED |
| F-014 | MINOR | 缺 Glossary/Term Registry | B: parity 表指出缺 Glossary | PATCH | PS-ICD-010 | TT-AUD-011 | UNVERIFIED → TEMP\_CLOSED |
| A-REQ-001 | CRITICAL | Parity Matrix 必覆蓋 v5.0.1 §0\~§11 \+ APPX-A\~H | A: P-ICD-PARITY-001 | PATCH | P-ICD-PARITY-001 | TT-ICD-PARITY-001 | UNVERIFIED → TEMP\_CLOSED |
| A-REQ-002 | CRITICAL | Schema Locator Plan 對齊 SRS Gate hook | A: P-ICD-LOC-001 | PATCH \+ CR\_TEMP\_CLOSED(若無法映射) | P-ICD-LOC-001 | TT-ICD-LOC-001 | UNVERIFIED → TEMP\_CLOSED |
| A-REQ-003 | BLOCKER | Web Evidence 欄位強制化、禁鏡像域 | A: P-ICD-WE-001 | PATCH | P-ICD-WE-001 | TT-ICD-WE-001 | FAIL\_CLOSED → TEMP\_CLOSED |


---


| Keyword | Anchor |
| ----- | ----- |
| Route-Out Register | \[ICD-V811-4-3-ROUTE-OUT\] |
| Breaking Change Matrix | \[ICD-V811-5-4-BREAKING-MATRIX\] |
| Schema Locator Plan | \[ICD-V811-8-5-LOCATOR-PLAN\] |
| Cross-Doc Mapping | \[ICD-V811-9-CROSS-DOC\] |
| Parity Matrix | \[ICD-V811-10-3-PARITY-MATRIX\] |
| CR Mirror Table | \[ICD-V811-11-3-CR-MIRROR-TABLE\] |
| TT List | \[ICD-V811-12-TT\] |
| Web Evidence | \[ICD-V811-13-WEBEVID\] |
| Machine Summary | \[ICD-V811-14-MACHINE\] |
| Drift Ledger | \[ICD-V811-15-DRIFT\] |


---


| out\_of\_scope\_item | route\_out\_target\_doc | route\_out\_target\_locator (ANCHOR/DOCLOC 真值) | ambiguity | linked\_cr | linked\_tt |
| ----- | ----- | ----- | ----- | ----- | ----- |
| Local Docker 低磨合轉接層 HOW | OMOC-MVU「Local Docker 低磨合轉接層」方案v4.0 | DOCLOC:/mnt/data/OMOC-MVU「Local Docker 低磨合轉接層」方案v4.0.md\#H:（以該檔案對應章節標題為準；本 ICD 不複寫） | AMBIGUOUS(需抽查該檔 headings) | CR-OPS-002 | TT-OPS-002 |
| Runbook/WI 的施工步驟 | 「OMOC-MVU 藍圖 \+ RUNBOOK \+ WI」套件包 | DOCLOC:/mnt/data/「OMOC-MVU 藍圖 \+ RUNBOOK \+ WI」套件包\_v0.2.0-r1+SC-HMD.md\#H:Runbook / WI（以原檔章節為準） | AMBIGUOUS | CR-OPS-003 | TT-OPS-003 |
| Pipeline DB 落點清單 | Pipeline-A+B 整合資料庫方案 | DOCLOC:/mnt/data/Pipeline-A+B 整合資料庫方案.md\#H:3.3（MIP 已引用） | LOW | CR-OPS-004 | TT-OPS-004 |
| 15CA 白名單與 stable\_id policy | SRS v8.1.0 | \[ANCHOR:SRS-V810-1-2-15CA\] | NONE | CR-LEG-010 | TT-LEG-010 |
| Evidence Triplet 規範（需求面） | SRS v8.1.0 | \[ANCHOR:SRS-V810-REQ-EVID-TRIPLET\] | NONE | CR-ICD-002 | TT-ICD-002 |
| 架構拓樸與 L3/介面層定位（架構面） | ARCH v8.1.0 | DOCLOC:/mnt/data/Spartoi-OMOC\_ARCH\_v8.1.0.md\#L211 | NONE | CR-ARCH-002 | TT-ARCH-002 |


---


| change | impact | SemVer bump | migration\_note | linked\_tt |
| ----- | ----- | ----- | ----- | ----- |
| remove required field | consumer 解析失敗 | MAJOR | 新增替代欄位→雙寫→再移除 | TT-AUD-001 |
| rename field | consumer 解析失敗 | MAJOR | alias/雙欄位窗口 | TT-AUD-001 |
| change type (string→object) | consumer 解析失敗 | MAJOR | 新 schema\_id；提供轉換器 | TT-AUD-001 |
| widen type (int→number) | 可能相容但需驗證 | MINOR | contract 測試覆蓋 | TT-AUD-001 |
| add optional field | 通常相容 | MINOR | additionalProperties 規則必聲明 | TT-AUD-001 |
| add required field | consumer 不提供→失敗 | MAJOR | 先 optional → 再 required（需窗口） | TT-AUD-001 |
| change enum (remove value) | 既資料不可解析 | MAJOR | deprecate→remove | TT-AUD-001 |
| change default semantics | 行為漂移 | MINOR/MAJOR(視影響) | 行為測試 \+ release note | TT-AUD-001 |
| tighten validation | 舊資料 fail | MAJOR | 資料遷移/放寬窗口 | TT-AUD-001 |
| additionalProperties from true→false | producer 擴欄被拒 | MAJOR | 明示 allowlist / extension bag | TT-AUD-001 |


---


| contract\_id | contract.version | schema\_ids\[\] | error\_model\_ref | security\_assumptions\_ref | expanded\_record?(Y/N) | linked\_tt |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| CONTRACT-EVIDENCE-TRIPLET-001 | 1.0.0 | \[SCHEMA-EVIDENCE-TRIPLET-V1.0.0\] | ERRMODEL-CORE-V1 | SECASSUMP-NLINPUT-UNTRUSTED-V1 | Y | TT-ICD-002 |
| CONTRACT-JOBCARD-001 | 1.0.0 | \[SCHEMA-JOBCARD-V1.0.0\] | ERRMODEL-CORE-V1 | SECASSUMP-NLINPUT-UNTRUSTED-V1 | Y | TT-ICD-003 |
| CONTRACT-FLAG-REGISTRY-001 | 1.0.0 | \[SCHEMA-FLAG-REGISTRY-V1.0.0\] | ERRMODEL-CORE-V1 | SECASSUMP-NLINPUT-UNTRUSTED-V1 | N | TT-ICD-004 |


---


| schema\_id | canonical\_path | export\_format | compat\_rule | linked\_contract | linked\_tt |
| ----- | ----- | ----- | ----- | ----- | ----- |
| SCHEMA-EVIDENCE-TRIPLET-V1.0.0 | schemas/icd/evidence\_triplet/v1.0.0.json | jsonschema | BACKWARD | CONTRACT-EVIDENCE-TRIPLET-001 | TT-ICD-002 |
| SCHEMA-JOBCARD-V1.0.0 | schemas/icd/jobcard/v1.0.0.json | jsonschema | BACKWARD | CONTRACT-JOBCARD-001 | TT-ICD-003 |
| SCHEMA-FLAG-REGISTRY-V1.0.0 | schemas/icd/flag\_registry/v1.0.0.json | jsonschema | FULL | CONTRACT-FLAG-REGISTRY-001 | TT-ICD-004 |


---


| source\_doc\_locator | rent | icd\_evidence(locator) | mapping\_status | gap | action |
| ----- | ----- | ----- | ----- | ----- | ----- |
| DOCLOC:/mnt/data/Spartoi-OMOC\_MIP\_v2.2.0.txt\#L658 | MIP Route-Out 不得指向 v5.0.1 | \[ICD-V811-8-5-LOCATOR-PLAN\] | TEMP\_CLOSED | 上游仍指 `LBP-B(ICD) v5.0.1` | TT-AUD-004 \+ CR-OPS-001 |
| DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#L3165 | SRS RO-ICD 必須更新到 v8.1.1-r2 對應 anchor | \[ICD-V811-4-3-ROUTE-OUT\] \+ \[ICD-V811-8-REGISTRY\] | TEMP\_CLOSED | SRS 仍指 v5.0.1 anchors | TT-AUD-004 \+ CR-ARCH-001 |
| DOCLOC:/mnt/data/Spartoi-OMOC\_ARCH\_v8.1.0.md\#L211 | ARCH L3 Interface 版本需更新 | [ICD-V811-0-IDENTITY](https://chatgpt.com/g/g-p-698ad8ba48408191a5d5ae6ab0fcde1a-spartoi-omoc/c/%E6%9C%AC%E7%89%88) | TEMP\_CLOSED | ARCH 仍 v5.0.1 | TT-AUD-004 \+ CR-ARCH-002 |
| \[ANCHOR:MIP-V220-1-2-MAPPING\] | 15CA mapping 必可追溯到契約/Schema | \[ICD-V811-6-BOUNDARY\] | TEMP\_CLOSED | Pipeline docs 多無 anchor | TT-AUD-010 \+ CR-ICD-PIPELINE-001 |


---


| cr\_id | source\_doc\_locator | source\_status | icd\_status | gap | evidence\_refs | linked\_tt\_id | reopen\_criteria |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| CR-LEG-001 | \[ANCHOR:ICD-V501-DOC-CONTROL\] | UNKNOWN | TEMP\_CLOSED | legacy 控制條款需比對 | internal:ICD-V501-DOC-CONTROL; web:WE-SUP-SEC-002 | TT-LEG-001 | 對齊 v5.0.1 條文與 r2 章節；TT PASS |
| CR-LEG-002 | \[ANCHOR:ICD-V501-AI-READER-GUIDE\] | UNKNOWN | TEMP\_CLOSED | reader guide 覆蓋性抽查 | internal:ICD-V811-2-GUIDE; web:WE-SUP-SEC-001 | TT-LEG-002 | 以抽查清單完成覆蓋；TT PASS |
| CR-LEG-003 | \[ANCHOR:ICD-V501-INDEX\] | UNKNOWN | TEMP\_CLOSED | 索引可檢索性 | internal:ICD-V811-1-KEYWORD-INDEX; web:WE-SUP-DOC-001 | TT-LEG-003 | 關鍵字索引命中率抽測 ≥95% |
| CR-LEG-004 | \[ANCHOR:ICD-V501-SCOPE-LOCK\] | UNKNOWN | TEMP\_CLOSED | scope / route-out 可定位 | internal:ICD-V811-4-3-ROUTE-OUT; web:WE-SUP-DOC-001 | TT-LEG-004 | Route-Out 抽查唯一命中 |
| CR-LEG-005 | \[ANCHOR:ICD-V501-BOUNDARY-INVENTORY\] | UNKNOWN | TEMP\_CLOSED | 15CA 邊界映射缺口 | internal:ICD-V811-6-BOUNDARY; internal:MIP-V220-1-2 | TT-LEG-005 | 完成 15CA→contract/schema 映射表 |
| CR-LEG-006 | \[ANCHOR:ICD-V501-15-SUBSYSTEM-MATRIX\] | UNKNOWN | TEMP\_CLOSED | matrix 需可定位/可驗收 | internal:ICD-V811-6; web:WE-SUP-CONTRACT-001 | TT-LEG-006 | 15CA I/O 至少覆蓋核心流水線 |
| CR-LEG-007 | \[ANCHOR:ICD-V501-ICD-ALIAS-REGISTRY\] | UNKNOWN | TEMP\_CLOSED | alias/rename 一致性 | internal:ICD-V811-5; internal:改名方案 DOCLOC | TT-LEG-007 | alias lint \+ diff 無漂移 |
| CR-LEG-008 | \[ANCHOR:ICD-V501-CONTRACT-RECORDS\] | UNKNOWN | TEMP\_CLOSED | 合約最小欄位集落地 | internal:ICD-V811-7-2; web:WE-SUP-CONTRACT-001 | TT-LEG-008 | catalog 欄位完整且可測 |
| CR-LEG-009 | \[ANCHOR:ICD-V501-CONTRACT-COMPAT-POLICY\] | UNKNOWN | TEMP\_CLOSED | breaking matrix 退步風險 | internal:ICD-V811-5-4; web:WE-SUP-API-001 | TT-LEG-009 | ≥10 判準 \+ 關鍵字可 grep |
| CR-LEG-010 | \[ANCHOR:SRS-V810-1-2-1-POLICY\] | NORMATIVE | TEMP\_CLOSED | stable\_id policy 對齊 | internal:SRS anchor; internal:ICD naming | TT-LEG-010 | SRS/ICD 名稱規則一致 |
| CR-LEG-011 | \[ANCHOR:ICD-V501-SCHEMA-LOCATOR\] | UNKNOWN | TEMP\_CLOSED | schema path 缺失 | internal:ICD-V811-8-1 | TT-LEG-011 | registry 含 canonical\_path/export\_format |
| CR-LEG-012 | \[ANCHOR:ICD-V501-TRACE-PLAN\] | UNKNOWN | TEMP\_CLOSED | cross-doc 缺 source locator | internal:ICD-V811-9 | TT-LEG-012 | mapping 每列可定位單一位置 |
| CR-LEG-013 | \[ANCHOR:ICD-V501-REQ-MAPPING-MATRIX\] | UNKNOWN | TEMP\_CLOSED | parity 覆蓋要求 | internal:ICD-V811-10-3 | TT-LEG-013 | parity 含指定 legacy anchors |
| CR-LEG-014 | \[ANCHOR:ICD-V501-RAG-CONTRACT-INDEX\] | UNKNOWN | TEMP\_CLOSED | RAG index 覆蓋 | internal:ICD-V811-10-3 | TT-LEG-014 | parity 行存在且可定位 |
| CR-LEG-015 | \[ANCHOR:ICD-V501-MULTIMODAL-CONTRACT-INDEX\] | UNKNOWN | TEMP\_CLOSED | multimodal index 覆蓋 | internal:ICD-V811-10-3 | TT-LEG-015 | parity 行存在且可定位 |
| CR-FIT-001 | \[ANCHOR:SRS-V810-REQ-EVID-TRIPLET\] | NORMATIVE | TEMP\_CLOSED | evidence triplet 驗收落盤 | internal:ICD-V811-8-2; internal:SRS | TT-FIT-001 | triplet 三件套缺一 FAIL |
| CR-FIT-002 | DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#(Gate 表) | NORMATIVE | TEMP\_CLOSED | MAI hook 映射不足 | internal:ICD-V811-8-5 | TT-FIT-002 | hook→schema 完整映射 |
| CR-FIT-003 | DOCLOC:/mnt/data/Spartoi-OMOC\_ARCH\_v8.1.0.md\#(provenance) | NORMATIVE | TEMP\_CLOSED | provenance/attestation 介面 | internal:ICD schema plan | TT-FIT-003 | schema \+ contract 可追溯 |
| CR-FIT-004 | (SRS) | NORMATIVE | TEMP\_CLOSED | degrade matrix 規格化 | internal:ICD schema registry | TT-FIT-004 | degrade schema lint |
| CR-FIT-005 | (SRS) | NORMATIVE | TEMP\_CLOSED | deterministic replay | internal:registry \+ TT | TT-FIT-005 | replay 一致性測試 |
| CR-FIT-006 | (SRS) | NORMATIVE | TEMP\_CLOSED | audit evidence index | internal:ICD triplet | TT-FIT-006 | index/hash 可驗 |
| CR-FIT-007 | (SRS) | NORMATIVE | TEMP\_CLOSED | gate verdict schema | internal:ICD triplet | TT-FIT-007 | verdict PASS/FAIL/RADAR\_ONLY 合法 |
| CR-FIT-008 | (SRS) | NORMATIVE | TEMP\_CLOSED | policy snapshot | internal:catalog/registry | TT-FIT-008 | snapshot 欄位齊全 |
| CR-FIT-009 | (SRS) | NORMATIVE | TEMP\_CLOSED | flag registry lint | internal:SCHEMA-FLAG-REGISTRY | TT-FIT-009 | 缺欄位即 fail |
| CR-FIT-010 | (SRS) | NORMATIVE | TEMP\_CLOSED | execution window timezone | internal:OPS schema | TT-FIT-010 | timezone 必填一致 |
| CR-ICD-001 | B:F-011 | FAIL\_CLOSED | TEMP\_CLOSED | catalog 欄位集不足 | internal:ICD-V811-7-2; web:WE-SUP-CONTRACT-001 | TT-ICD-001 | catalog 欄位驗收 PASS |
| CR-ICD-002 | B:F-004/F-020 | FAIL\_CLOSED | TEMP\_CLOSED | SRS/MIP 仍引用 v5.0.1 | internal:MIP\#L658; internal:SRS\#L3165 | TT-ICD-002 | 對端更新引用後重驗 |
| CR-ICD-003 | A:P-ICD-LOC-001 | UNVERIFIED | TEMP\_CLOSED | MAI hook 掃描不足 | internal:ICD-V811-8-5 | TT-ICD-003 | hook 掃描完成且可映射 |
| CR-ICD-004 | B:F-017 | UNVERIFIED | TEMP\_CLOSED | additionalProperties 規則缺失 | internal:ICD-V811-8-4 | TT-ICD-004 | schema lint 規則落地 |
| CR-ICD-005 | B:F-012 | UNVERIFIED | TEMP\_CLOSED | schema\_id 版本策略不足 | internal:ICD-V811-5-2 | TT-ICD-005 | MINOR/PATCH 正確使用 |
| CR-ICD-006 | B:F-010 | UNVERIFIED | TEMP\_CLOSED | required 條件性易誤解 | internal:ICD-V811-8-2 | TT-ICD-006 | required matrix 測試 |
| CR-ICD-007 | B:F-001 | FAIL\_CLOSED | TEMP\_CLOSED | Route-Out 佔位問題 | internal:ICD-V811-4-3 | TT-ICD-007 | locator 唯一命中 |
| CR-ICD-008 | B:F-002/003 | FAIL\_CLOSED | TEMP\_CLOSED | web evidence 失真/鏡像域 | internal:ICD-V811-13 | TT-ICD-008 | title/url/date 完整一致 |
| CR-OPS-001 | MIP\#L658 | FAIL\_CLOSED | TEMP\_CLOSED | MIP route-out 指舊版 | internal:MIP\#L658 | TT-OPS-001 | MIP 更新後重驗 |
| CR-OPS-002 | Docker v4.0 | UNVERIFIED | TEMP\_CLOSED | HOW 不在 ICD | route-out:Docker v4.0 | TT-OPS-002 | Runbook/WI 有可執行證據 |
| CR-OPS-003 | Runbook/WI | UNVERIFIED | TEMP\_CLOSED | 施工步驟外導 | route-out:套件包 | TT-OPS-003 | Runbook/WI 驗收證據齊 |
| CR-OPS-004 | Pipeline-A+B DB | UNVERIFIED | TEMP\_CLOSED | DB schema 落點外導 | route-out:DB 方案 | TT-OPS-004 | DB 清單可稽核 |
| CR-OPS-005 | Pipelines v2 | FAIL\_CLOSED | TEMP\_CLOSED | 多數缺 anchor | DOCLOC pipelines | TT-OPS-005 | 為 pipelines 補 anchors 或固定 DOCLOC |
| CR-OPS-006 | Supply chain | UNVERIFIED | TEMP\_CLOSED | Gate evidence schema | SRS/ARCH mapping | TT-OPS-006 | SARIF/attestation 對齊 |
| CR-OPS-007 | Logging | UNVERIFIED | TEMP\_CLOSED | log schema 未統一 | registry | TT-OPS-007 | log schema lint |
| CR-OPS-008 | Security | UNVERIFIED | TEMP\_CLOSED | agent/tool 權限縮權 | WE-SUP-SEC-\* | TT-OPS-008 | 安全假設測試 |
| CR-OPS-009 | Timezone | UNVERIFIED | TEMP\_CLOSED | tz 一致性 | OPS schema | TT-OPS-009 | tz 測試 PASS |
| CR-OPS-010 | Rollback | UNVERIFIED | TEMP\_CLOSED | rollback evidence | Runbook | TT-OPS-010 | rollback 演練證據 |
| CR-ARCH-001 | SRS\#L3165 | FAIL\_CLOSED | TEMP\_CLOSED | SRS RO-ICD 舊 anchor | internal:SRS\#L3165 | TT-ARCH-001 | SRS 更新後重驗 |
| CR-ARCH-002 | ARCH\#L211 | FAIL\_CLOSED | TEMP\_CLOSED | ARCH interface 版本舊 | internal:ARCH\#L211 | TT-ARCH-002 | ARCH 更新後重驗 |
| CR-ARCH-003 | B:F-008 | FAIL\_CLOSED | TEMP\_CLOSED | traceability 斷裂 | ICD-V811-9 | TT-ARCH-003 | trace matrix 可反查 |
| CR-ARCH-004 | ARCH DB\#L3035 | FAIL\_CLOSED | TEMP\_CLOSED | DB schema 指 v5.0.1 | internal:ARCH\#L3035 | TT-ARCH-004 | ARCH 更新後重驗 |
| CR-ARCH-005 | control-plane schemas | UNVERIFIED | TEMP\_CLOSED | control plane contract 缺映射 | registry plan | TT-ARCH-005 | 完成 control plane schemas |
| CR-ARCH-006 | pipeline IO | UNVERIFIED | TEMP\_CLOSED | pipeline IO contracts 缺 | boundary inventory | TT-ARCH-006 | pipeline IO 覆蓋 |
| CR-ARCH-007 | observability | UNVERIFIED | TEMP\_CLOSED | obs schema 缺 | registry | TT-ARCH-007 | obs schema lint |


---


| tt\_id | linked\_cr\_ids | method | expected | evidence\_artifacts | route\_out(locator) | status |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| TT-LEG-001 | CR-LEG-001 | checklist | legacy 對齊 | diff\_report.md | DOCLOC:/mnt/data/Spartoi｜P1\_LBP-B(ICD)\_v5.0.1.md\#L119 | TEMP\_CLOSED |
| TT-LEG-002 | CR-LEG-002 | checklist | 覆蓋 reader guide | grep\_hits.txt | ICD-V811-2-GUIDE | TEMP\_CLOSED |
| TT-LEG-003 | CR-LEG-003 | grep | 關鍵字索引命中 | grep\_hits.txt | ICD-V811-1-KEYWORD-INDEX | TEMP\_CLOSED |
| TT-LEG-004 | CR-LEG-004 | uniqueness check | locator 唯一命中 | locator\_audit.txt | ICD-V811-4-3-ROUTE-OUT | TEMP\_CLOSED |
| TT-LEG-005 | CR-LEG-005 | mapping audit | 15CA 映射表 | mapping.tsv | ICD-V811-6-BOUNDARY | TEMP\_CLOSED |
| TT-LEG-006 | CR-LEG-006 | coverage audit | matrix 覆蓋 | coverage.tsv | ICD-V811-6-BOUNDARY | TEMP\_CLOSED |
| TT-LEG-007 | CR-LEG-007 | lint | alias 無漂移 | lint.json | ICD-V811-5-NAMING | TEMP\_CLOSED |
| TT-LEG-008 | CR-LEG-008 | schema check | catalog 欄位齊 | catalog\_lint.json | ICD-V811-7-2 | TEMP\_CLOSED |
| TT-LEG-009 | CR-LEG-009 | grep | ≥10 breaking 判準 | grep\_hits.txt | ICD-V811-5-4 | TEMP\_CLOSED |
| TT-LEG-010 | CR-LEG-010 | trace check | stable\_id 對齊 | trace.md | SRS-V810-1-2-1-POLICY | TEMP\_CLOSED |
| TT-LEG-011 | CR-LEG-011 | registry audit | canonical\_path 存在 | registry.tsv | ICD-V811-8-1 | TEMP\_CLOSED |
| TT-LEG-012 | CR-LEG-012 | mapping audit | source\_loc 可定位 | mapping.tsv | ICD-V811-9 | TEMP\_CLOSED |
| TT-LEG-013 | CR-LEG-013 | presence | parity 行存在 | parity.tsv | ICD-V811-10-3 | TEMP\_CLOSED |
| TT-LEG-014 | CR-LEG-014 | presence | parity 行存在 | parity.tsv | ICD-V811-10-3 | TEMP\_CLOSED |
| TT-LEG-015 | CR-LEG-015 | presence | parity 行存在 | parity.tsv | ICD-V811-10-3 | TEMP\_CLOSED |
| TT-FIT-001 | CR-FIT-001 | contract test | 三件套齊全 | verdict.json,index.json,bundle.tgz | SRS-V810-REQ-EVID-TRIPLET | TEMP\_CLOSED |
| TT-FIT-002 | CR-FIT-002 | mapping audit | MAI hook→schema | mapping.tsv | ICD-V811-8-5 | TEMP\_CLOSED |
| TT-FIT-003 | CR-FIT-003 | replay test | 重放一致 | replay.log | Runbook route-out | TEMP\_CLOSED |
| TT-FIT-004 | CR-FIT-004 | lint | degrade schema lint | lint.json | ICD-V811-8-REGISTRY | TEMP\_CLOSED |
| TT-FIT-005 | CR-FIT-005 | deterministic | 同輸入同輸出 | report.json | Runbook route-out | TEMP\_CLOSED |
| TT-FIT-006 | CR-FIT-006 | hash verify | hash 可驗 | hash.txt | ICD-V811-8-2 | TEMP\_CLOSED |
| TT-FIT-007 | CR-FIT-007 | enum validate | verdict 合法 | verdict.json | ICD-V811-8-2 | TEMP\_CLOSED |
| TT-FIT-008 | CR-FIT-008 | snapshot check | 欄位齊 | snapshot.json | Runbook route-out | TEMP\_CLOSED |
| TT-FIT-009 | CR-FIT-009 | lint | flag registry lint | lint.json | ICD-V811-8-1 | TEMP\_CLOSED |
| TT-FIT-010 | CR-FIT-010 | timezone test | tz 一致 | tz.log | Runbook route-out | TEMP\_CLOSED |
| TT-ICD-001 | CR-ICD-001 | catalog lint | 最小欄位集 | catalog\_lint.json | ICD-V811-7-2 | TEMP\_CLOSED |
| TT-ICD-002 | CR-ICD-002 | grep | 對端不再指 v5.0.1 | grep\_hits.txt | DOCLOC:SRS/MIP | TEMP\_CLOSED |
| TT-ICD-003 | CR-ICD-003 | scan | MAI hooks 掃描 | scan.json | ICD-V811-8-5 | TEMP\_CLOSED |
| TT-ICD-004 | CR-ICD-004 | jsonschema lint | props 規則落地 | lint.json | ICD-V811-8-4 | TEMP\_CLOSED |
| TT-ICD-005 | CR-ICD-005 | versioning | MINOR/PATCH 使用 | changelog.md | ICD-V811-5-2 | TEMP\_CLOSED |
| TT-ICD-006 | CR-ICD-006 | required-matrix | required 條件測試 | matrix.tsv | ICD-V811-8-2 | TEMP\_CLOSED |
| TT-ICD-007 | CR-ICD-007 | locator check | 唯一命中 | locator\_audit.txt | ICD-V811-4-3 | TEMP\_CLOSED |
| TT-ICD-008 | CR-ICD-008 | web audit | title/url/date 齊 | web\_audit.tsv | ICD-V811-13 | TEMP\_CLOSED |
| TT-OPS-001 | CR-OPS-001 | grep | MIP 更新 | grep\_hits.txt | MIP\#L658 | TEMP\_CLOSED |
| TT-OPS-002 | CR-OPS-002 | runbook verify | Docker HOW 有證據 | logs | Docker v4.0 | TEMP\_CLOSED |
| TT-OPS-003 | CR-OPS-003 | runbook verify | WI 可執行 | logs | 套件包 | TEMP\_CLOSED |
| TT-OPS-004 | CR-OPS-004 | db verify | DB 清單可稽核 | schema.sql | DB 方案\#3.3 | TEMP\_CLOSED |
| TT-OPS-005 | CR-OPS-005 | doc audit | pipelines 可定位 | docloc\_audit.txt | pipelines docs | TEMP\_CLOSED |
| TT-OPS-006 | CR-OPS-006 | gate verify | SARIF/attestation | sarif.json | Runbook | TEMP\_CLOSED |
| TT-OPS-007 | CR-OPS-007 | log lint | log schema lint | lint.json | Runbook | TEMP\_CLOSED |
| TT-OPS-008 | CR-OPS-008 | security test | 縮權策略有效 | sec\_report.md | ICD-V811-2-2 | TEMP\_CLOSED |
| TT-OPS-009 | CR-OPS-009 | tz test | tz PASS | tz.log | Runbook | TEMP\_CLOSED |
| TT-OPS-010 | CR-OPS-010 | drill | rollback 有證據 | drill.md | Runbook | TEMP\_CLOSED |
| TT-ARCH-001 | CR-ARCH-001 | grep | SRS 更新 | grep\_hits.txt | SRS\#L3165 | TEMP\_CLOSED |
| TT-ARCH-002 | CR-ARCH-002 | grep | ARCH 更新 | grep\_hits.txt | ARCH\#L211 | TEMP\_CLOSED |
| TT-ARCH-003 | CR-ARCH-003 | trace matrix | 可反查 | trace.tsv | ICD-V811-9 | TEMP\_CLOSED |
| TT-ARCH-004 | CR-ARCH-004 | grep | ARCH DB 更新 | grep\_hits.txt | ARCH\#L3035 | TEMP\_CLOSED |
| TT-ARCH-005 | CR-ARCH-005 | schema audit | control plane schemas | registry.tsv | ICD-V811-8 | TEMP\_CLOSED |
| TT-ARCH-006 | CR-ARCH-006 | coverage audit | pipeline IO 覆蓋 | coverage.tsv | ICD-V811-6 | TEMP\_CLOSED |
| TT-ARCH-007 | CR-ARCH-007 | lint | obs schema lint | lint.json | ICD-V811-8 | TEMP\_CLOSED |


---


| web\_id | title | canonical\_url\_domain | publish/update\_date | query | why\_relevant | how\_used(SUPPORT-only) | linked\_cr/tt |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| WE-SUP-SEC-001 | OWASP Top 10 for LLM Applications | owasp.org | (頁面版本資訊以站點為準) ([owasp.org](https://owasp.org/www-project-top-10-for-large-language-model-applications/?utm_source=chatgpt.com)) | prompt injection OWASP | 風險分類（Prompt Injection / Insecure Output Handling） | 強化「輸入不可信」原則，不改內規 | CR-ICD-008 / TT-ICD-008 |
| WE-SUP-SEC-002 | Prompt injection is not SQL injection (it may be worse) | ncsc.gov.uk | 2025-12-08 ([ncsc.gov.uk](https://www.ncsc.gov.uk/blog-post/prompt-injection-is-not-sql-injection?utm_source=chatgpt.com)) | NCSC prompt injection confused deputy | confused deputy 視角（impact reduction） | 支撐縮權/隔離策略語境 | CR-OPS-008 / TT-OPS-008 |
| WE-SUP-API-001 | Versioning Best Practices in REST API Design (breaking changes examples) | speakeasy.com | 2026-01-22 ([Speakeasy](https://www.speakeasy.com/api-design/versioning?utm_source=chatgpt.com)) | OpenAPI breaking changes guidance semver | breaking change 類型（rename/remove/required） | 補「判準例子」語境，仍以 ICD 表為準 | CR-LEG-009 / TT-LEG-009 |
| WE-SUP-API-002 | OpenAPI specs and API versioning (breaking change major) | developer.fiserv.com | (頁面以站點為準) ([developer.fiserv.com](https://developer.fiserv.com/product/CommerceHub/docs/?path=docs%2FResources%2FAPI-Documents%2FOpenAPI-Specs.md&utm_source=chatgpt.com)) | OpenAPI breaking changes major version | breaking change→major 直覺 | 補語境 | CR-LEG-009 / TT-AUD-001 |
| WE-SUP-CONTRACT-001 | Consumer-driven contract testing with Pact (docs) | docs.pact.io | (doc 以站點為準) ([DEV Community](https://dev.to/paulsebastianmanole/consumer-driven-contract-testing-with-pact-the-basics-4fk9?utm_source=chatgpt.com)) | consumer-driven contract testing Pact best practices | CDC/T 契約測試方法 | 補 catalog/TT 的驗收方向 | CR-ICD-001 / TT-ICD-001 |


---


| drift\_id | expected | observed (檔案庫) | impact | action |
| ----- | ----- | ----- | ----- | ----- |
| DRIFT-SRS-001 | Spartoi-OMOC\_SRS\_v8.1.1-r1 | **Spartoi-OMOC\_SRS\_v8.1.0.md** | SRS Gate hooks 可能已變；ICD 僅能 TEMP\_CLOSED | TT-DRIFT-001（併入 TT-AUD-004） |
| DRIFT-ARCH-001 | Spartoi-OMOC\_ARCH\_v8.1.1-r1 | **Spartoi-OMOC\_ARCH\_v8.1.0.md** | ARCH 仍引用 v5.0.1；trace 斷裂風險 | TT-AUD-004 \+ CR-ARCH-002 |
| DRIFT-P1-ICD-001 | Spartoi｜P1\_LBP-B(ICD)v8.1.1-r1 | **MISSING** | Parity/取代性缺一環 | TT-DOC-MISSING-001 |

