\<REPO\_TREE\>  
Spartoi-OMOC\_SubP1-LITE+MVP\_ControlPlanePack/  
├── control\_plane\_pack.md  
├── registries/  
│ ├── gate\_registry.json  
│ └── machine\_summary.json  
├── schemas/  
│ ├── tt\_schema.json  
│ └── evidence\_schema/  
│ ├── interop\_min\_layer.schema.json  
│ ├── triplet.schema.json  
│ ├── evidence\_index.schema.json  
│ ├── checks\_manifest.schema.json  
│ ├── verdict.schema.json  
│ ├── bundle.schema.json  
│ ├── bundle\_audit.schema.json  
│ └── locator\_proof.schema.json  
├── governance/  
│ └── drift\_ruleset.yml  
├── maps/  
│ ├── doc\_inventory.tsv  
│ ├── route\_out\_register.tsv  
│ ├── ssot\_alignment\_map.tsv  
│ ├── legacy\_parity.tsv  
│ ├── backlog\_closure.tsv  
│ ├── tt\_register.tsv  
│ ├── web\_evidence.tsv  
│ └── anti\_scope\_scan.tsv  
└── self\_audit\_checklist.md  
\</REPO\_TREE\>

\-----BEGIN FILE: Spartoi-OMOC\_SubP1-LITE+MVP\_ControlPlanePack/control\_plane\_pack.md-----  
{  
"external\_name": "Spartoi-OMOC\_SubP1-LITE+MVP\_Control Plane Pack",  
"internal\_short\_name": "SOMOC-CP-PACK",  
"stable\_id": "SOMOC-SUBP1MVP-CP-PACK",  
"doc\_id": "SOMOC-CP-PACK-v2.2.0-r1",  
"version": "v2.2.0-r1",  
"status": "DEFINITIVE\_WITH\_TT",  
"release\_date": "2026-02-25",  
"timezone": "Asia/Taipei",  
"baseline\_web\_date": "2026-02-25",  
"supersedes": \[  
"Spartoi-OMOC\_SubP1-LITE+MVP\_Control Plane Pack\_v2.1.0.md",  
"Spartoi-OMOC\_SubP1-LITE+MVP\_Control Plane Pack\_v1.0.0.md"  
\],  
"replaces": \[  
"Spartoi-OMOC\_SubP1-LITE+MVP\_Control Plane Pack\_v2.1.0.md",  
"Spartoi-OMOC\_SubP1-LITE+MVP\_Control Plane Pack\_v1.0.0.md"  
\],  
"compatibility": {  
"legacy\_parity\_map": "maps/legacy\_parity.tsv",  
"non\_regression\_claim": "This pack is a drop-in replacement for v2.1.0 and v1.0.0 at the level of control-plane contracts, registries, maps, and machine-readable schemas. Legacy content is not needed for future work if this pack is present.",  
"anti\_regression\_evidence": "maps/legacy\_parity.tsv \+ maps/backlog\_closure.tsv \+ self\_audit\_checklist.md"  
},  
"scope\_lock": {  
"in\_scope": \[  
"裁決語言與機械接口：Authority/Conflict、Scope/Route-Out、Execution Routing（僅介面）、Gate Registry（最小）、Evidence Contract（schema）、TT State Machine、Drift Governance、Web SUPPORT-only Appendix Contract",  
"可機械解析之 registries/schemas/maps 與 Fail-Closed 自檢（CR\_OPEN=0）",  
"對齊與引用：工程指南、Package B WI、上位 SSOT（SRS/ARCH/總控控制平面/Dev\&Ops RBWI）與指定 RIP/套件（僅對齊/收斂/引用；不重寫 SSOT）"  
\],  
"out\_of\_scope": \[  
"HOW：命令清單、點擊路徑、逐步操作、workflow 逐行教學（全部 Route-Out 到 Dev/Ops/施工 RBWI）",  
"重寫 SRS/ARCH/總控控制平面/Runbook（僅引用與映射）",  
"把任何外部網頁升格為規範（Web 永遠 SUPPORT-only，且只進 Web Evidence Appendix）"  
\],  
"route\_out\_register": "maps/route\_out\_register.tsv"  
},  
"authority\_stack": \[  
"DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-FAIL-CLOSED-RULES\]",  
"DOCLOC:/mnt/data/Spartoi-OMOC\_ARCH\_v8.1.0.md\#\[ANCHOR:ARCH-V810-6-4-FAILCLOSED\]",  
"DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_總控控制平面\_v2.1.0-r2.md\#\[ANCHOR:SOMOC-CTRL-S4-AUTHORITY-CONFLICT\]",  
"DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_前端文檔到實作驗收\_工程指南.md\[\#sec3.2-pkg-b-controlplane\]",  
"DOCLOC:/mnt/data/Package B — Control Plane Pack（總控控制平面合冊）*撰寫\_規範工作指導書（WI）.md\#WI-B-00",*  
*"DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Dev RUNBOOK \+ WI* v2.1.0-r2.md\#\[ANCHOR:SOMOC-DEV-RBWI-V210R2-7-0-GLOBAL\_CONV\]",  
"DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Ops RUNBOOK \+ WI\_v2.1.0-r2.md\#\[ANCHOR:SOMOC-SUBP1MVP-OPS-S7-AUTHORITY\]",  
"DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-GOV-WEB-APPENDIX\] (SUPPORT-only gateway)"  
\]  
}

# **Spartoi-OMOC｜Package B — Control Plane Pack（v2.2.0-r1）**

\[ANCHOR:CP-PACK-S0-COVER\]

**Supersedes / Replaces**: v2.1.0 & v1.0.0 (工程性可取代證據：`maps/legacy_parity.tsv`).  
**CR\_OPEN=0**: 本包不得留下 CR\_OPEN；缺口一律 TT（狀態只允許 `TEMP_CLOSED→TEST_TRACK`）。  
evidence\_ptr: `DOCLOC:/mnt/data/Package B — Control Plane Pack（總控控制平面合冊）_撰寫_規範工作指導書（WI）.md#WI-B-06` \+ `DOCLOC:/mnt/data/Spartoi-OMOC_SubP1-LITE+MVP_前端文檔到實作驗收_工程指南.md[#sec9.1-tt-schema-lock]`

---

## **TOC**

\[ANCHOR:CP-PACK-S1-TOC\]

* [S2 AI Reader Guide](https://chatgpt.com/g/g-p-699dd2746154819181f7c3ecfbe1e96a-spartoi-omoc-wp-rip/c/699e73af-984c-83a7-bb87-0e17aba0b16c#cp-pack-s2-ai-reader-guide)  
* [S3 Quick Index](https://chatgpt.com/g/g-p-699dd2746154819181f7c3ecfbe1e96a-spartoi-omoc-wp-rip/c/699e73af-984c-83a7-bb87-0e17aba0b16c#cp-pack-s3-quick-index)  
* [S4 Authority and Conflict Rules](https://chatgpt.com/g/g-p-699dd2746154819181f7c3ecfbe1e96a-spartoi-omoc-wp-rip/c/699e73af-984c-83a7-bb87-0e17aba0b16c#cp-pack-s4-authority-and-conflict-rules)  
* [S5 Scope-Lock and Route-Out](https://chatgpt.com/g/g-p-699dd2746154819181f7c3ecfbe1e96a-spartoi-omoc-wp-rip/c/699e73af-984c-83a7-bb87-0e17aba0b16c#cp-pack-s5-scope-lock-and-route-out)  
* [S6 Execution Routing Contract](https://chatgpt.com/g/g-p-699dd2746154819181f7c3ecfbe1e96a-spartoi-omoc-wp-rip/c/699e73af-984c-83a7-bb87-0e17aba0b16c#cp-pack-s6-execution-routing-contract)  
* [S7 Gate and Evidence Contract](https://chatgpt.com/g/g-p-699dd2746154819181f7c3ecfbe1e96a-spartoi-omoc-wp-rip/c/699e73af-984c-83a7-bb87-0e17aba0b16c#cp-pack-s7-gate-and-evidence-contract)  
* [S8 TT State Machine](https://chatgpt.com/g/g-p-699dd2746154819181f7c3ecfbe1e96a-spartoi-omoc-wp-rip/c/699e73af-984c-83a7-bb87-0e17aba0b16c#cp-pack-s8-tt-state-machine)  
* [S9 Drift Governance](https://chatgpt.com/g/g-p-699dd2746154819181f7c3ecfbe1e96a-spartoi-omoc-wp-rip/c/699e73af-984c-83a7-bb87-0e17aba0b16c#cp-pack-s9-drift-governance)  
* [APPX-A Doc Inventory](https://chatgpt.com/g/g-p-699dd2746154819181f7c3ecfbe1e96a-spartoi-omoc-wp-rip/c/699e73af-984c-83a7-bb87-0e17aba0b16c#cp-pack-appx-a-doc-inventory)  
* [APPX-B Backlog Closure](https://chatgpt.com/g/g-p-699dd2746154819181f7c3ecfbe1e96a-spartoi-omoc-wp-rip/c/699e73af-984c-83a7-bb87-0e17aba0b16c#cp-pack-appx-b-backlog-closure)  
* [APPX-C Legacy Parity Map](https://chatgpt.com/g/g-p-699dd2746154819181f7c3ecfbe1e96a-spartoi-omoc-wp-rip/c/699e73af-984c-83a7-bb87-0e17aba0b16c#cp-pack-appx-c-legacy-parity-map)  
* [APPX-D SSOT Alignment Map](https://chatgpt.com/g/g-p-699dd2746154819181f7c3ecfbe1e96a-spartoi-omoc-wp-rip/c/699e73af-984c-83a7-bb87-0e17aba0b16c#cp-pack-appx-d-ssot-alignment-map)  
* [APPX-E Route-Out Register](https://chatgpt.com/g/g-p-699dd2746154819181f7c3ecfbe1e96a-spartoi-omoc-wp-rip/c/699e73af-984c-83a7-bb87-0e17aba0b16c#cp-pack-appx-e-route-out-register)  
* [APPX-F Test Tracking List](https://chatgpt.com/g/g-p-699dd2746154819181f7c3ecfbe1e96a-spartoi-omoc-wp-rip/c/699e73af-984c-83a7-bb87-0e17aba0b16c#cp-pack-appx-f-test-tracking-list)  
* [APPX-G Web Evidence Appendix](https://chatgpt.com/g/g-p-699dd2746154819181f7c3ecfbe1e96a-spartoi-omoc-wp-rip/c/699e73af-984c-83a7-bb87-0e17aba0b16c#cp-pack-appx-g-web-evidence-appendix)  
* [APPX-H Anti-Scope Scan](https://chatgpt.com/g/g-p-699dd2746154819181f7c3ecfbe1e96a-spartoi-omoc-wp-rip/c/699e73af-984c-83a7-bb87-0e17aba0b16c#cp-pack-appx-h-anti-scope-scan)

---

## **S2 AI Reader Guide**

\[ANCHOR:CP-PACK-S2-AI-READER-GUIDE\]

### **強制檢索路徑（anti-omission）**

1. **先查 maps/doc\_inventory.tsv**：確認 FOUND/MISSING 與 locator proofs。  
2. **再查 maps/ssot\_alignment\_map.tsv**：用 topic→上位 SSOT→本包落點（避免「看似合理」的私設規範）。  
3. **再查 registries/gate\_registry.json** 與 `schemas/evidence_schema/*`：只看「合約形狀」，不要把 HOW 帶進來。  
4. **最後查 maps/route\_out\_register.tsv**：凡出現 HOW 或平台 UI/API 細節，一律 Route-Out。

MUST 遵守上述順序（Fail-Closed；未遵守視為不可稽核）。  
evidence\_ptr: `DOCLOC:/mnt/data/Package B — Control Plane Pack（總控控制平面合冊）_撰寫_規範工作指導書（WI）.md#WI-B-01` \+ `DOCLOC:/mnt/data/Spartoi-OMOC_SubP1-LITE+MVP_總控控制平面_v2.1.0-r2.md#[ANCHOR:SOMOC-CTRL-S2-AI-GUIDE]`

### **Anti-injection / Anti-hallucination（只談裁決與接口）**

* **No-Source-No-Norm**：任何 MUST/規範句，若無可定位 evidence\_ptr（DOCLOC+\[ANCHOR\] 或 Lx-Ly）→ **不得成立**，必轉 TT。  
* **One-rule-one-place**：規則只定義在「唯一段落」；其他地方只能引用（以 evidence\_ptr 連回）。  
* **Web SUPPORT-only**：外部網頁永遠不得升格規範，只能放入 `maps/web_evidence.tsv`，且每列≥2 sources、綁 TT、含撤銷條件。  
  evidence\_ptr: `DOCLOC:/mnt/data/Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-WEB-POLICY]` \+ `DOCLOC:/mnt/data/Spartoi-OMOC_SubP1-LITE+MVP_前端文檔到實作驗收_工程指南.md[#sec9.1-tt-schema-lock]`

---

## **S3 Quick Index**

\[ANCHOR:CP-PACK-S3-QUICK-INDEX\]

* **Machine Summary**: `registries/machine_summary.json`  
* **Gate Registry**: `registries/gate_registry.json`  
* **TT Register**: `maps/tt_register.tsv`  
* **Doc Inventory**: `maps/doc_inventory.tsv`  
* **Route-Out Register**: `maps/route_out_register.tsv`  
* **SSOT Alignment Map**: `maps/ssot_alignment_map.tsv`  
* **Legacy Parity**: `maps/legacy_parity.tsv`  
* **Backlog Closure**: `maps/backlog_closure.tsv`  
* **Web Evidence (SUPPORT-only)**: `maps/web_evidence.tsv`  
* **Anti-Scope Scan**: `maps/anti_scope_scan.tsv`

---

## **S4 Authority and Conflict Rules**

\[ANCHOR:CP-PACK-S4-AUTHORITY-AND-CONFLICT-RULES\]

**Authority Stack**（只引用；不重寫）：見本檔 JSON header `authority_stack[]`。  
**Conflict Rule（Fail-Closed）**：當上位 SSOT 與本包內容衝突，本包內容 MUST 失效，並以 TT 記錄衝突與撤銷條件。  
evidence\_ptr: `DOCLOC:/mnt/data/Spartoi-OMOC_SubP1-LITE+MVP_總控控制平面_v2.1.0-r2.md#[ANCHOR:SOMOC-CTRL-REG-CONFLICT-RULES]` \+ `DOCLOC:/mnt/data/Package B — Control Plane Pack（總控控制平面合冊）_撰寫_規範工作指導書（WI）.md#WI-B-02`

---

## **S5 Scope-Lock and Route-Out**

\[ANCHOR:CP-PACK-S5-SCOPE-LOCK-AND-ROUTE-OUT\]

本包禁止承載 HOW；凡涉及：

* 命令/腳本/點擊路徑/逐步操作  
* GitHub UI 欄位逐項設定  
* workflow 逐行教學 / pipeline runbook

MUST Route-Out 至 `maps/route_out_register.tsv` 所指之 Dev/Ops/施工 RBWI（需可定位 anchor 或 Lx-Ly）。  
evidence\_ptr: `DOCLOC:/mnt/data/Package B — Control Plane Pack（總控控制平面合冊）_撰寫_規範工作指導書（WI）.md#WI-B-03` \+ `DOCLOC:/mnt/data/Spartoi-OMOC_SubP1-LITE+MVP_總控控制平面_v2.1.0-r2.md#[ANCHOR:SOMOC-CTRL-S5-SCOPE-ROUTEOUT]`

---

## **S6 Execution Routing Contract**

\[ANCHOR:CP-PACK-S6-EXECUTION-ROUTING-CONTRACT\]

本節只提供「裁決入口 → 期望證據形狀 → Route-Out 執行層」三段式路由；不提供操作步驟。  
evidence\_ptr: `DOCLOC:/mnt/data/Spartoi-OMOC_SubP1-LITE+MVP_總控控制平面_v2.1.0-r2.md#[ANCHOR:SOMOC-CTRL-S6-EXECUTION-ROUTING]` \+ `DOCLOC:/mnt/data/Package B — Control Plane Pack（總控控制平面合冊）_撰寫_規範工作指導書（WI）.md#WI-B-00`

**Routing 表**：見 `maps/ssot_alignment_map.tsv`（topic→上位 SSOT→本包 anchor→最小證據）。

---

## **S7 Gate and Evidence Contract**

\[ANCHOR:CP-PACK-S7-GATE-AND-EVIDENCE-CONTRACT\]

### **S7.1 Evidence Triplet（最小）**

Triplet 的「最小三件套」為本系統裁決入口之基本形狀；本包只承諾 schema 與索引存在。  
evidence\_ptr: `DOCLOC:/mnt/data/Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-REQ-EVID-TRIPLET]` \+ `DOCLOC:/mnt/data/Package B — Control Plane Pack（總控控制平面合冊）_撰寫_規範工作指導書（WI）.md#WI-B-05`

* `schemas/evidence_schema/triplet.schema.json`  
* `schemas/evidence_schema/evidence_index.schema.json`  
* `schemas/evidence_schema/verdict.schema.json`  
* `schemas/evidence_schema/bundle.schema.json`  
* `schemas/evidence_schema/bundle_audit.schema.json`  
* `schemas/evidence_schema/locator_proof.schema.json`  
* `schemas/evidence_schema/interop_min_layer.schema.json`

### **S7.2 Evidence MinSet（五件套）**

Evidence MinSet（五件套）屬「可回放最小集合」；本包只要求其可被索引與稽核，不描述生成步驟。  
evidence\_ptr: `DOCLOC:/mnt/data/Spartoi-OMOC_SubP1-LITE+MVP_前端文檔到實作驗收_工程指南.md[#sec7.2-evidence-minset]` \+ `DOCLOC:/mnt/data/Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-REQ-EVID-TRIPLET]`

### **S7.3 Gate Registry（最小裁決入口）**

`registries/gate_registry.json` 為本包唯一的 gate registry；若需「上位 Gate Dictionary 全量」→ Route-Out 至 SRS gate dictionary。  
evidence\_ptr: `DOCLOC:/mnt/data/Package B — Control Plane Pack（總控控制平面合冊）_撰寫_規範工作指導書（WI）.md#WI-B-04` \+ `DOCLOC:/mnt/data/Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-GATE-DICTIONARY]`

---

## **S8 TT State Machine**

\[ANCHOR:CP-PACK-S8-TT-STATE-MACHINE\]

### **S8.1 狀態鎖定**

TT 的狀態 enum MUST 只允許 `TEMP_CLOSED→TEST_TRACK`；不得出現 `CR_OPEN`。  
evidence\_ptr: `DOCLOC:/mnt/data/Spartoi-OMOC_SubP1-LITE+MVP_前端文檔到實作驗收_工程指南.md[#sec9.1-tt-schema-lock]` \+ `DOCLOC:/mnt/data/Package B — Control Plane Pack（總控控制平面合冊）_撰寫_規範工作指導書（WI）.md#WI-B-06`

* schema：`schemas/tt_schema.json`  
* register：`maps/tt_register.tsv`

### **S8.2 撤銷條件（revoke\_triggers）**

每個 TT MUST 含撤銷條件與驗證方法（verify\_method\_route\_out）；無法立即驗證者亦不得空白。  
evidence\_ptr: `DOCLOC:/mnt/data/Spartoi-OMOC_SubP1-LITE+MVP_總控控制平面_v2.1.0-r2.md#[ANCHOR:SOMOC-CTRL-S8-REVOKE-TRIGGERS-TEMPLATE]` \+ `DOCLOC:/mnt/data/Package B — Control Plane Pack（總控控制平面合冊）_撰寫_規範工作指導書（WI）.md#WI-B-06`

---

## **S9 Drift Governance**

\[ANCHOR:CP-PACK-S9-DRIFT-GOVERNANCE\]

GitHub control plane（required checks / merge queue / rulesets）屬 driftable；本包只提供 drift ruleset 與必備 evidence pointers。  
evidence\_ptr: `DOCLOC:/mnt/data/Package B — Control Plane Pack（總控控制平面合冊）_撰寫_規範工作指導書（WI）.md#WI-B-07` \+ `DOCLOC:/mnt/data/Spartoi-OMOC_SubP1-LITE+MVP_前端文檔到實作驗收_工程指南.md[#sec4.2-merge-queue]`

* drift ruleset: `governance/drift_ruleset.yml`  
* web support-only evidence: `maps/web_evidence.tsv` (policy: SRS web policy)

---

## **APPX-A Doc Inventory**

\[ANCHOR:CP-PACK-APPX-A-DOC-INVENTORY\]

見 `maps/doc_inventory.tsv`

---

## **APPX-B Backlog Closure**

\[ANCHOR:CP-PACK-APPX-B-BACKLOG-CLOSURE\]

見 `maps/backlog_closure.tsv`

---

## **APPX-C Legacy Parity Map**

\[ANCHOR:CP-PACK-APPX-C-LEGACY-PARITY-MAP\]

見 `maps/legacy_parity.tsv`

---

## **APPX-D SSOT Alignment Map**

\[ANCHOR:CP-PACK-APPX-D-SSOT-ALIGNMENT-MAP\]

見 `maps/ssot_alignment_map.tsv`

---

## **APPX-E Route-Out Register**

\[ANCHOR:CP-PACK-APPX-E-ROUTE-OUT-REGISTER\]

見 `maps/route_out_register.tsv`

---

## **APPX-F Test Tracking List**

\[ANCHOR:CP-PACK-APPX-F-TEST-TRACKING-LIST\]

見 `maps/tt_register.tsv`（本包所有 TT 均為 `TEMP_CLOSED→TEST_TRACK`；其中標記 `needs_env_probe=true` 者需平台/環境實測。）

---

## **APPX-G Web Evidence Appendix**

\[ANCHOR:CP-PACK-APPX-G-WEB-EVIDENCE-APPENDIX\]

Web 永遠 SUPPORT-only；不得升格規範；不得在本包主文內直接嵌外部 URL 作驗收標準。  
evidence\_ptr: `DOCLOC:/mnt/data/Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-WEB-POLICY]`

見 `maps/web_evidence.tsv`

---

## **APPX-H Anti-Scope Scan**

\[ANCHOR:CP-PACK-APPX-H-ANTI-SCOPE-SCAN\]

見 `maps/anti_scope_scan.tsv`（若 hit\_count\>0：每一 hit MUST 對應 route-out 或 TT；違反→FAIL\_CLOSED）。  
evidence\_ptr: `DOCLOC:/mnt/data/Package B — Control Plane Pack（總控控制平面合冊）_撰寫_規範工作指導書（WI）.md#WI-B-03`  
\-----END FILE: Spartoi-OMOC\_SubP1-LITE+MVP\_ControlPlanePack/control\_plane\_pack.md-----

\-----BEGIN FILE: Spartoi-OMOC\_SubP1-LITE+MVP\_ControlPlanePack/registries/gate\_registry.json-----  
{  
"schema\_version": "1.0",  
"generated\_at": "2026-02-25T00:00:00+08:00",  
"timezone": "Asia/Taipei",  
"source\_locators": \[  
"DOCLOC:/mnt/data/Package B — Control Plane Pack（總控控制平面合冊）\_撰寫\_規範工作指導書（WI）.md\#WI-B-04",  
"DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_前端文檔到實作驗收\_工程指南.md\[\#sec4.2-merge-queue\]",  
"DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-GATE-DICTIONARY\]"  
\],  
"gates": \[  
{  
"gate\_id": "G0-DOC-INVENTORY-LOCATABLE",  
"required\_check\_name": "cp.g0.doc\_inventory\_locatable",  
"evidence\_min\_ref": "schemas/evidence\_schema/locator\_proof.schema.json",  
"owner\_role": "CP Steward",  
"gate\_policy": "BLOCK\_RELEASE",  
"status": "TEMP\_CLOSED→TEST\_TRACK",  
"evidence\_ptr": "DOCLOC:/mnt/data/Package B — Control Plane Pack（總控控制平面合冊）\_撰寫\_規範工作指導書（WI）.md\#WI-B-01 \+ DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_總控控制平面\_v2.1.0-r2.md\#\[ANCHOR:SOMOC-CTRL-APPX-A-DOC-INVENTORY\]",  
"tt\_ref": "-"  
},  
{  
"gate\_id": "G1-EVIDENCE-SCHEMA-PIN-2020-12",  
"required\_check\_name": "cp.g1.schema\_pin\_2020\_12",  
"evidence\_min\_ref": "schemas/evidence\_schema/interop\_min\_layer.schema.json",  
"owner\_role": "Schema Owner",  
"gate\_policy": "BLOCK\_RELEASE",  
"status": "TEMP\_CLOSED→TEST\_TRACK",  
"evidence\_ptr": "DOCLOC:/mnt/data/Package B — Control Plane Pack（總控控制平面合冊）\_撰寫\_規範工作指導書（WI）.md\#WI-B-05 \+ DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_前端文檔到實作驗收\_工程指南.md\[\#sec9.1-tt-schema-lock\]",  
"tt\_ref": "TT-CP-0001"  
},  
{  
"gate\_id": "G2-ALWAYS-REPORT",  
"required\_check\_name": "cp.g2.always\_report",  
"evidence\_min\_ref": "schemas/evidence\_schema/checks\_manifest.schema.json",  
"owner\_role": "Drift Steward",  
"gate\_policy": "BLOCK\_RELEASE",  
"status": "TEMP\_CLOSED→TEST\_TRACK",  
"evidence\_ptr": "DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_前端文檔到實作驗收\_工程指南.md\[\#sec4.3-always-report\] \+ DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-FAIL-CLOSED-RULES\]",  
"tt\_ref": "TT-CP-0002"  
},  
{  
"gate\_id": "G3-MERGE-QUEUE-DRIFT-GUARD",  
"required\_check\_name": "cp.g3.merge\_queue\_guard",  
"evidence\_min\_ref": "schemas/evidence\_schema/checks\_manifest.schema.json",  
"owner\_role": "Drift Steward",  
"gate\_policy": "BLOCK\_RELEASE",  
"status": "TEMP\_CLOSED→TEST\_TRACK",  
"evidence\_ptr": "DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_前端文檔到實作驗收\_工程指南.md\[\#sec4.2-merge-queue\] \+ DOCLOC:/mnt/data/Spartoi-OMOC\_ARCH\_v8.1.0.md\#\[ANCHOR:ARCH-V810-6-3-GITHUB\]",  
"tt\_ref": "TT-CP-0002"  
}  
\],  
"unverified\_note": {  
"reason": "上位 SRS Gate Dictionary 為 SSOT；本 registry 僅提供 Package B 最小裁決入口。若需 SRS gate\_id 全量列舉與 per-gate locator proof，轉 TT-CP-0004。",  
"evidence\_ptr": "DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-GATE-DICTIONARY\]",  
"tt\_ref": "TT-CP-0004"  
}  
}  
\-----END FILE: Spartoi-OMOC\_SubP1-LITE+MVP\_ControlPlanePack/registries/gate\_registry.json-----

\-----BEGIN FILE: Spartoi-OMOC\_SubP1-LITE+MVP\_ControlPlanePack/registries/machine\_summary.json-----  
{  
"schema\_version": "1.0",  
"pack": {  
"doc\_id": "SOMOC-CP-PACK-v2.2.0-r1",  
"version": "v2.2.0-r1",  
"release\_date": "2026-02-25",  
"timezone": "Asia/Taipei",  
"cr\_open": 0,  
"final\_verdict": "PASS\_WITH\_TT"  
},  
"counts": {  
"tt\_total": 5,  
"tt\_by\_severity": {  
"HIGH": 3,  
"MED": 2,  
"LOW": 0  
},  
"web\_evidence\_rows": 8  
},  
"top\_risks": \[  
{  
"risk\_id": "R-DRIFT-GITHUB",  
"severity": "HIGH",  
"bound\_tt": "TT-CP-0002",  
"summary": "GitHub required checks / merge\_queue / rulesets 行為漂移，需以 probes \+ snapshots 驗證。"  
},  
{  
"risk\_id": "R-SCHEMA-VALIDATION",  
"severity": "HIGH",  
"bound\_tt": "TT-CP-0001",  
"summary": "Schema 存在≠已接 validator；需執行層驗證日誌作證。"  
},  
{  
"risk\_id": "R-GATE-DICT-COVERAGE",  
"severity": "HIGH",  
"bound\_tt": "TT-CP-0004",  
"summary": "SRS Gate Dictionary 全量映射未在本包展開；需以 locator proof 完成列舉。"  
}  
\],  
"outputs": {  
"files": \[  
"control\_plane\_pack.md",  
"registries/gate\_registry.json",  
"registries/machine\_summary.json",  
"schemas/tt\_schema.json",  
"schemas/evidence\_schema/interop\_min\_layer.schema.json",  
"schemas/evidence\_schema/triplet.schema.json",  
"schemas/evidence\_schema/evidence\_index.schema.json",  
"schemas/evidence\_schema/checks\_manifest.schema.json",  
"schemas/evidence\_schema/verdict.schema.json",  
"schemas/evidence\_schema/bundle.schema.json",  
"schemas/evidence\_schema/bundle\_audit.schema.json",  
"schemas/evidence\_schema/locator\_proof.schema.json",  
"governance/drift\_ruleset.yml",  
"maps/doc\_inventory.tsv",  
"maps/route\_out\_register.tsv",  
"maps/ssot\_alignment\_map.tsv",  
"maps/legacy\_parity.tsv",  
"maps/backlog\_closure.tsv",  
"maps/tt\_register.tsv",  
"maps/web\_evidence.tsv",  
"maps/anti\_scope\_scan.tsv",  
"self\_audit\_checklist.md"  
\]  
}  
}  
\-----END FILE: Spartoi-OMOC\_SubP1-LITE+MVP\_ControlPlanePack/registries/machine\_summary.json-----

\-----BEGIN FILE: Spartoi-OMOC\_SubP1-LITE+MVP\_ControlPlanePack/schemas/tt\_schema.json-----  
{  
"$schema": "[https://json-schema.org/draft/2020-12/schema](https://json-schema.org/draft/2020-12/schema)",  
"$id": "[https://spartoi.omoc/schemas/tt\_schema.json](https://spartoi.omoc/schemas/tt_schema.json)",  
"title": "TT Schema (TEMP\_CLOSED→TEST\_TRACK only; CR\_OPEN forbidden)",  
"type": "object",  
"additionalProperties": false,  
"required": \[  
"tt\_id",  
"title",  
"severity",  
"status",  
"source\_gap",  
"evidence\_needed",  
"verify\_method\_route\_out",  
"expected\_outputs",  
"revoke\_triggers",  
"owner\_role",  
"evidence\_ptr"  
\],  
"properties": {  
"tt\_id": { "type": "string", "pattern": "^TT-\[A-Z0-9-\]+$" },  
"title": { "type": "string", "minLength": 1 },  
"severity": { "type": "string", "enum": \["HIGH", "MED", "LOW"\] },  
"status": { "type": "string", "enum": \["TEMP\_CLOSED→TEST\_TRACK"\] },  
"needs\_env\_probe": { "type": "boolean", "default": false },  
"source\_gap": { "type": "string", "minLength": 1 },  
"evidence\_needed": { "type": "string", "minLength": 1 },  
"verify\_method\_route\_out": {  
"type": "object",  
"additionalProperties": false,  
"required": \["route\_to\_doc", "route\_to\_locator"\],  
"properties": {  
"route\_to\_doc": { "type": "string", "minLength": 1 },  
"route\_to\_locator": { "type": "string", "minLength": 1 }  
}  
},  
"expected\_outputs": { "type": "string", "minLength": 1 },  
"revoke\_triggers": {  
"type": "array",  
"minItems": 1,  
"items": { "type": "string", "minLength": 1 }  
},  
"owner\_role": { "type": "string", "minLength": 1 },  
"evidence\_ptr": { "type": "string", "minLength": 1 }  
}  
}  
\-----END FILE: Spartoi-OMOC\_SubP1-LITE+MVP\_ControlPlanePack/schemas/tt\_schema.json-----

\-----BEGIN FILE: Spartoi-OMOC\_SubP1-LITE+MVP\_ControlPlanePack/schemas/evidence\_schema/interop\_min\_layer.schema.json-----  
{  
"$schema": "[https://json-schema.org/draft/2020-12/schema](https://json-schema.org/draft/2020-12/schema)",  
"$id": "[https://spartoi.omoc/schemas/evidence\_schema/interop\_min\_layer.schema.json](https://spartoi.omoc/schemas/evidence_schema/interop_min_layer.schema.json)",  
"title": "Interop Minimal Layer (Evidence pointers & identity keys)",  
"type": "object",  
"additionalProperties": false,  
"required": \[  
"schema\_version",  
"generated\_at",  
"timezone",  
"gate\_id",  
"run\_id",  
"artifact\_id",  
"triplet"  
\],  
"properties": {  
"schema\_version": { "type": "string" },  
"generated\_at": { "type": "string" },  
"timezone": { "type": "string" },  
"gate\_id": { "type": "string", "minLength": 1 },  
"run\_id": { "type": "string", "minLength": 1 },  
"artifact\_id": { "type": "string", "minLength": 1 },  
"source\_locators": {  
"type": "array",  
"items": { "type": "string" }  
},  
"triplet": {  
"type": "object",  
"additionalProperties": false,  
"required": \["verdict\_path", "evidence\_index\_path", "evidence\_bundle\_path"\],  
"properties": {  
"verdict\_path": { "type": "string", "minLength": 1 },  
"evidence\_index\_path": { "type": "string", "minLength": 1 },  
"evidence\_bundle\_path": { "type": "string", "minLength": 1 },  
"checks\_manifest\_path": { "type": "string" }  
}  
}  
}  
}  
\-----END FILE: Spartoi-OMOC\_SubP1-LITE+MVP\_ControlPlanePack/schemas/evidence\_schema/interop\_min\_layer.schema.json-----

\-----BEGIN FILE: Spartoi-OMOC\_SubP1-LITE+MVP\_ControlPlanePack/schemas/evidence\_schema/triplet.schema.json-----  
{  
"$schema": "[https://json-schema.org/draft/2020-12/schema](https://json-schema.org/draft/2020-12/schema)",  
"$id": "[https://spartoi.omoc/schemas/evidence\_schema/triplet.schema.json](https://spartoi.omoc/schemas/evidence_schema/triplet.schema.json)",  
"title": "Evidence Triplet (verdict \+ evidence\_index \+ evidence\_bundle)",  
"type": "object",  
"additionalProperties": false,  
"required": \[  
"gate\_id",  
"run\_id",  
"artifact\_id",  
"verdict",  
"evidence\_index",  
"evidence\_bundle"  
\],  
"properties": {  
"gate\_id": { "type": "string", "minLength": 1 },  
"run\_id": { "type": "string", "minLength": 1 },  
"artifact\_id": { "type": "string", "minLength": 1 },  
"verdict": {  
"type": "object",  
"additionalProperties": true,  
"required": \["verdict"\],  
"properties": {  
"verdict": { "type": "string" },  
"cr\_open": { "type": "integer" },  
"tt\_ids": { "type": "array", "items": { "type": "string" } }  
}  
},  
"evidence\_index": {  
"type": "object",  
"additionalProperties": false,  
"required": \["items"\],  
"properties": {  
"items": {  
"type": "array",  
"minItems": 1,  
"items": {  
"type": "object",  
"additionalProperties": false,  
"required": \["path", "sha256"\],  
"properties": {  
"path": { "type": "string" },  
"sha256": { "type": "string", "pattern": "^\[a-f0-9\]{64}$" },  
"kind": { "type": "string" }  
}  
}  
}  
}  
},  
"evidence\_bundle": {  
"type": "object",  
"additionalProperties": false,  
"required": \["bundle\_format", "sha256"\],  
"properties": {  
"bundle\_format": { "type": "string", "enum": \["zip", "tar", "tgz", "txt", "other"\] },  
"sha256": { "type": "string", "pattern": "^\[a-f0-9\]{64}$" }  
}  
},  
"checks\_manifest": {  
"type": "object",  
"additionalProperties": true  
}  
}  
}  
\-----END FILE: Spartoi-OMOC\_SubP1-LITE+MVP\_ControlPlanePack/schemas/evidence\_schema/triplet.schema.json-----

\-----BEGIN FILE: Spartoi-OMOC\_SubP1-LITE+MVP\_ControlPlanePack/schemas/evidence\_schema/evidence\_index.schema.json-----  
{  
"$schema": "[https://json-schema.org/draft/2020-12/schema](https://json-schema.org/draft/2020-12/schema)",  
"$id": "[https://spartoi.omoc/schemas/evidence\_schema/evidence\_index.schema.json](https://spartoi.omoc/schemas/evidence_schema/evidence_index.schema.json)",  
"title": "Evidence Index (bundle index for replay/audit)",  
"type": "object",  
"additionalProperties": false,  
"required": \["run\_id", "gate\_id", "artifact\_id", "items"\],  
"properties": {  
"run\_id": { "type": "string" },  
"gate\_id": { "type": "string" },  
"artifact\_id": { "type": "string" },  
"items": {  
"type": "array",  
"minItems": 1,  
"items": {  
"type": "object",  
"additionalProperties": false,  
"required": \["path", "sha256"\],  
"properties": {  
"path": { "type": "string" },  
"sha256": { "type": "string", "pattern": "^\[a-f0-9\]{64}$" },  
"kind": { "type": "string" }  
}  
}  
}  
}  
}  
\-----END FILE: Spartoi-OMOC\_SubP1-LITE+MVP\_ControlPlanePack/schemas/evidence\_schema/evidence\_index.schema.json-----

\-----BEGIN FILE: Spartoi-OMOC\_SubP1-LITE+MVP\_ControlPlanePack/schemas/evidence\_schema/checks\_manifest.schema.json-----  
{  
"$schema": "[https://json-schema.org/draft/2020-12/schema](https://json-schema.org/draft/2020-12/schema)",  
"$id": "[https://spartoi.omoc/schemas/evidence\_schema/checks\_manifest.schema.json](https://spartoi.omoc/schemas/evidence_schema/checks_manifest.schema.json)",  
"title": "Checks Manifest (required checks canonical report)",  
"type": "object",  
"additionalProperties": false,  
"required": \["generated\_at", "checks"\],  
"properties": {  
"generated\_at": { "type": "string" },  
"source\_locators": {  
"type": "array",  
"items": { "type": "string" }  
},  
"checks": {  
"type": "array",  
"items": {  
"type": "object",  
"additionalProperties": false,  
"required": \["name", "status"\],  
"properties": {  
"name": { "type": "string", "minLength": 1 },  
"status": { "type": "string", "enum": \["PASS", "FAIL", "PENDING", "SKIPPED", "UNKNOWN"\] },  
"context": { "type": "string" },  
"details\_url": { "type": "string" }  
}  
}  
}  
}  
}  
\-----END FILE: Spartoi-OMOC\_SubP1-LITE+MVP\_ControlPlanePack/schemas/evidence\_schema/checks\_manifest.schema.json-----

\-----BEGIN FILE: Spartoi-OMOC\_SubP1-LITE+MVP\_ControlPlanePack/schemas/evidence\_schema/verdict.schema.json-----  
{  
"$schema": "[https://json-schema.org/draft/2020-12/schema](https://json-schema.org/draft/2020-12/schema)",  
"$id": "[https://spartoi.omoc/schemas/evidence\_schema/verdict.schema.json](https://spartoi.omoc/schemas/evidence_schema/verdict.schema.json)",  
"title": "Verdict (Fail-Closed)",  
"type": "object",  
"additionalProperties": false,  
"required": \["verdict", "cr\_open"\],  
"properties": {  
"verdict": { "type": "string", "enum": \["PASS", "PASS\_WITH\_TT", "FAIL\_CLOSED", "FAIL"\] },  
"cr\_open": { "type": "integer", "minimum": 0, "maximum": 0 },  
"tt\_ids": { "type": "array", "items": { "type": "string" } },  
"notes": { "type": "string" }  
}  
}  
\-----END FILE: Spartoi-OMOC\_SubP1-LITE+MVP\_ControlPlanePack/schemas/evidence\_schema/verdict.schema.json-----

\-----BEGIN FILE: Spartoi-OMOC\_SubP1-LITE+MVP\_ControlPlanePack/schemas/evidence\_schema/bundle.schema.json-----  
{  
"$schema": "[https://json-schema.org/draft/2020-12/schema](https://json-schema.org/draft/2020-12/schema)",  
"$id": "[https://spartoi.omoc/schemas/evidence\_schema/bundle.schema.json](https://spartoi.omoc/schemas/evidence_schema/bundle.schema.json)",  
"title": "Evidence Bundle Descriptor",  
"type": "object",  
"additionalProperties": false,  
"required": \["bundle\_format", "sha256"\],  
"properties": {  
"bundle\_format": { "type": "string", "enum": \["zip", "tar", "tgz", "txt", "other"\] },  
"sha256": { "type": "string", "pattern": "^\[a-f0-9\]{64}$" },  
"bytes": { "type": "integer", "minimum": 0 }  
}  
}  
\-----END FILE: Spartoi-OMOC\_SubP1-LITE+MVP\_ControlPlanePack/schemas/evidence\_schema/bundle.schema.json-----

\-----BEGIN FILE: Spartoi-OMOC\_SubP1-LITE+MVP\_ControlPlanePack/schemas/evidence\_schema/bundle\_audit.schema.json-----  
{  
"$schema": "[https://json-schema.org/draft/2020-12/schema](https://json-schema.org/draft/2020-12/schema)",  
"$id": "[https://spartoi.omoc/schemas/evidence\_schema/bundle\_audit.schema.json](https://spartoi.omoc/schemas/evidence_schema/bundle_audit.schema.json)",  
"title": "Bundle Audit (hash audit list)",  
"type": "object",  
"additionalProperties": false,  
"required": \["run\_id", "gate\_id", "artifact\_id", "items"\],  
"properties": {  
"run\_id": { "type": "string" },  
"gate\_id": { "type": "string" },  
"artifact\_id": { "type": "string" },  
"items": {  
"type": "array",  
"items": {  
"type": "object",  
"additionalProperties": false,  
"required": \["path", "sha256"\],  
"properties": {  
"path": { "type": "string" },  
"sha256": { "type": "string", "pattern": "^\[a-f0-9\]{64}$" }  
}  
}  
}  
}  
}  
\-----END FILE: Spartoi-OMOC\_SubP1-LITE+MVP\_ControlPlanePack/schemas/evidence\_schema/bundle\_audit.schema.json-----

\-----BEGIN FILE: Spartoi-OMOC\_SubP1-LITE+MVP\_ControlPlanePack/schemas/evidence\_schema/locator\_proof.schema.json-----  
{  
"$schema": "[https://json-schema.org/draft/2020-12/schema](https://json-schema.org/draft/2020-12/schema)",  
"$id": "[https://spartoi.omoc/schemas/evidence\_schema/locator\_proof.schema.json](https://spartoi.omoc/schemas/evidence_schema/locator_proof.schema.json)",  
"title": "Locator Proof (DOCLOC anchor or line range proof)",  
"type": "object",  
"additionalProperties": false,  
"required": \["docloc", "locator\_kind", "locator\_value"\],  
"properties": {  
"docloc": { "type": "string", "minLength": 1 },  
"locator\_kind": { "type": "string", "enum": \["ANCHOR", "LINE\_RANGE"\] },  
"locator\_value": { "type": "string", "minLength": 1 },  
"notes": { "type": "string" }  
}  
}  
\-----END FILE: Spartoi-OMOC\_SubP1-LITE+MVP\_ControlPlanePack/schemas/evidence\_schema/locator\_proof.schema.json-----

\-----BEGIN FILE: Spartoi-OMOC\_SubP1-LITE+MVP\_ControlPlanePack/governance/drift\_ruleset.yml-----  
schema\_version: "1.0"  
generated\_at: "2026-02-25T00:00:00+08:00"  
timezone: "Asia/Taipei"

policy:  
web\_support\_only:  
statement: "Web evidence is SUPPORT-only; never normative; conflicts \=\> WEB-CONFLICT \=\> TT (Fail-Closed)."  
evidence\_ptr: "DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-WEB-POLICY\]"  
scope\_lock:  
statement: "No HOW in Control Plane; execution steps must route-out."  
evidence\_ptr: "DOCLOC:/mnt/data/Package B — Control Plane Pack（總控控制平面合冊）\_撰寫\_規範工作指導書（WI）.md\#WI-B-03"

drift\_items:

* drift\_id: "DRIFT-GH-MERGE-QUEUE"  
  topic: "GitHub Merge Queue / merge\_group trigger contract"  
  required\_evidence:  
  * "checks\_manifest.json (shape only; see schemas/evidence\_schema/checks\_manifest.schema.json)"  
  * "rulesets\_snapshot.json (execution-layer artifact; route-out)"  
  * "merge\_group payload sample (execution-layer artifact; route-out)"  
  * "web evidence rows: WEB-0001, WEB-0002"  
    bound\_tt: "TT-CP-0002"  
    revoke\_triggers:  
  * "GitHub Docs/Changelog updates affecting merge\_group / merge\_queue semantics"  
  * "Observed mismatch between expected checks and reported checks in merge queue context"  
    verify\_method\_route\_out:  
    route\_to\_doc: "DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Ops RUNBOOK \+ WI\_v2.1.0-r2.md"  
    route\_to\_locator: "\[ANCHOR:SOMOC-SUBP1MVP-OPS-S11-WI-OPS-MQ-PROBE\]"  
    evidence\_ptr:  
  * "DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_前端文檔到實作驗收\_工程指南.md\[\#sec4.2-merge-queue\]"  
  * "DOCLOC:/mnt/data/Package B — Control Plane Pack（總控控制平面合冊）\_撰寫\_規範工作指導書（WI）.md\#WI-B-07"  
* drift\_id: "DRIFT-GH-RULESETS"  
  topic: "GitHub Rulesets required status checks enforcement"  
  required\_evidence:  
  * "rulesets\_snapshot.json (execution-layer artifact; route-out)"  
  * "checks\_manifest.json (shape only)"  
  * "web evidence row: WEB-0002"  
    bound\_tt: "TT-CP-0002"  
    revoke\_triggers:  
  * "Rulesets UI/API schema changes"  
  * "Org plan/permissions changes affecting rulesets enforcement"  
    verify\_method\_route\_out:  
    route\_to\_doc: "DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Dev RUNBOOK \+ WI\_ v2.1.0-r2.md"  
    route\_to\_locator: "\[ANCHOR:SOMOC-DEV-RBWI-V210R2-12-0-GH\_CONTROL\]"  
    evidence\_ptr:  
  * "DOCLOC:/mnt/data/Package B — Control Plane Pack（總控控制平面合冊）\_撰寫\_規範工作指導書（WI）.md\#WI-B-07"  
* drift\_id: "DRIFT-SCHEMA-VALIDATOR"  
  topic: "JSON Schema dialect pinning \+ validator default drift"  
  required\_evidence:  
  * "validator run log (execution-layer artifact; route-out)"  
  * "schema parse report (execution-layer artifact; route-out)"  
  * "web evidence row: WEB-0004"  
    bound\_tt: "TT-CP-0001"  
    revoke\_triggers:  
  * "Validator major version change"  
  * "Dialect default change or schema draft update"  
    verify\_method\_route\_out:  
    route\_to\_doc: "DOCLOC:/mnt/data/Spartoi-OMOC\_dev RB \+ WI\_v8.1.1-dev-r2.md"  
    route\_to\_locator: "\[ANCHOR:DEV-RBWI-APPX-L-LINT-AND-SELF-AUDIT\]"  
    evidence\_ptr:  
  * "DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_前端文檔到實作驗收\_工程指南.md\[\#sec9.1-tt-schema-lock\]"  
* drift\_id: "DRIFT-WEB-EVIDENCE-FRESHNESS"  
  topic: "Web Evidence staleness / conflict monitoring"  
  required\_evidence:  
  * "maps/web\_evidence.tsv is non-empty and each row has \>=2 sources"  
  * "stale review record (execution-layer or doc process; route-out)"  
    bound\_tt: "TT-CP-0008"  
    revoke\_triggers:  
  * "Any web evidence row becomes stale (policy-defined) or is removed"  
  * "Detected conflict between sources \=\> WEB-CONFLICT"  
    verify\_method\_route\_out:  
    route\_to\_doc: "DOCLOC:/mnt/data/OMOC\_WP總表\_v4.0.1-r2.md"  
    route\_to\_locator: "L428-L440 (§11.2 Web Evidence Table)"  
    evidence\_ptr:  
  * "DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-WEB-ACCESS\]"  
    \-----END FILE: Spartoi-OMOC\_SubP1-LITE+MVP\_ControlPlanePack/governance/drift\_ruleset.yml-----

\-----BEGIN FILE: Spartoi-OMOC\_SubP1-LITE+MVP\_ControlPlanePack/maps/doc\_inventory.tsv-----  
doc\_id role status docloc locator\_proof\_1 locator\_proof\_2 issues tt\_ref  
CP-PACK-SRC-210 NORMATIVE FOUND DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Control Plane Pack\_v2.1.0.md DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Control Plane Pack\_v2.1.0.md\#\[ANCHOR:CP-PACK-S1-TOC\] DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Control Plane Pack\_v2.1.0.md\#\[ANCHOR:CP-PACK-S8-TT\] Legacy baseline (superseded). \-  
CP-PACK-REV-210 AUDIT FOUND DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Control Plane Pack\_v2.1.0\_審查報告.md DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Control Plane Pack\_v2.1.0\_審查報告.md@L24-L27 DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Control Plane Pack\_v2.1.0\_審查報告.md@L80-L82 Findings must be closed via maps/backlog\_closure.tsv. \-  
CP-PACK-SRC-100 LEGACY FOUND DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Control Plane Pack\_v1.0.0.md DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Control Plane Pack\_v1.0.0.md\#\[ANCHOR:CP-PACK-S2-AI-READER-GUIDE\] DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Control Plane Pack\_v1.0.0.md\#\[ANCHOR:CP-PACK-S7-GATE-EVID\] Legacy baseline (superseded). \-  
CP-PACK-REV-100 AUDIT FOUND DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Control Plane Pack\_v1.0.0\_審查報告.md DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Control Plane Pack\_v1.0.0\_審查報告.md@L42-L46 DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Control Plane Pack\_v1.0.0\_審查報告.md@L87-L87 Legacy audit trace (closure recorded). \-  
ENG-GUIDE NORMATIVE FOUND DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_前端文檔到實作驗收\_工程指南.md DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_前端文檔到實作驗收\_工程指南.md\[\#sec3.2-pkg-b-controlplane\] DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_前端文檔到實作驗收\_工程指南.md\[\#sec9.1-tt-schema-lock\] Package B implementation guide. \-  
PKG-B-WI NORMATIVE FOUND DOCLOC:/mnt/data/Package B — Control Plane Pack（總控控制平面合冊）*撰寫\_規範工作指導書（WI）.md DOCLOC:/mnt/data/Package B — Control Plane Pack（總控控制平面合冊）撰寫\_規範工作指導書（WI）.md\#WI-B-00 DOCLOC:/mnt/data/Package B — Control Plane Pack（總控控制平面合冊）撰寫\_規範工作指導書（WI）.md\#WI-B-07 Package B spec WI. \-*  
*SUBP1-CTRL SSOT FOUND DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_總控控制平面\_v2.1.0-r2.md DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_總控控制平面\_v2.1.0-r2.md\#\[ANCHOR:SOMOC-CTRL-S0-COVER\] DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_總控控制平面\_v2.1.0-r2.md\#\[ANCHOR:SOMOC-CTRL-S9-DRIFT-GOVERNANCE\] Upstream control plane SSOT. \-*  
*SRS SSOT FOUND DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-GATE-DICTIONARY\] DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-GOV-WEB-APPENDIX\] Gate dictionary \+ Web policy SSOT. TT-CP-0004*  
*ARCH SSOT FOUND DOCLOC:/mnt/data/Spartoi-OMOC\_ARCH\_v8.1.0.md DOCLOC:/mnt/data/Spartoi-OMOC\_ARCH\_v8.1.0.md\#\[ANCHOR:ARCH-V810-6-4-FAILCLOSED\] DOCLOC:/mnt/data/Spartoi-OMOC\_ARCH\_v8.1.0.md\#\[ANCHOR:ARCH-V810-4-11-6-ROUTEOUT\] Fail-Closed \+ route-out patterns. \-*  
*DEV-RBWI ROUTEOUT FOUND DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Dev RUNBOOK \+ WI v2.1.0-r2.md DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Dev RUNBOOK \+ WI v2.1.0-r2.md\#\[ANCHOR:SOMOC-DEV-RBWI-V210R2-0-0-COVER\] DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Dev RUNBOOK \+ WI* v2.1.0-r2.md\#\[ANCHOR:SOMOC-DEV-RBWI-V210R2-12-0-GH\_CONTROL\] HOW is routed here (dev). \-  
OPS-RBWI ROUTEOUT FOUND DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Ops RUNBOOK \+ WI\_v2.1.0-r2.md DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Ops RUNBOOK \+ WI\_v2.1.0-r2.md\#\[ANCHOR:SOMOC-SUBP1MVP-OPS-S0-COVER\] DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Ops RUNBOOK \+ WI\_v2.1.0-r2.md\#\[ANCHOR:SOMOC-SUBP1MVP-OPS-S11-WI-OPS-MQ-PROBE\] HOW is routed here (ops). \-  
OMOC-WP ROUTEOUT FOUND DOCLOC:/mnt/data/OMOC\_WP總表\_v4.0.1-r2.md DOCLOC:/mnt/data/OMOC\_WP總表\_v4.0.1-r2.md@L428-L437 DOCLOC:/mnt/data/OMOC\_WP總表\_v4.0.1-r2.md@L442-L460 Web evidence \+ machine appendix shapes. \-  
OMOC-MVU ROUTEOUT FOUND DOCLOC:/mnt/data/「OMOC-MVU 藍圖 \+ RUNBOOK \+ WI」套件包\_v0.2.0-r1+SC-HMD.md DOCLOC:/mnt/data/「OMOC-MVU 藍圖 \+ RUNBOOK \+ WI」套件包\_v0.2.0-r1+SC-HMD.md\#\[ANCHOR:OMOCMVU-READ-QUICKSTART\] DOCLOC:/mnt/data/「OMOC-MVU 藍圖 \+ RUNBOOK \+ WI」套件包\_v0.2.0-r1+SC-HMD.md\#\[ANCHOR:OMOCMVU-RB-MERGEQUEUE\] MVU package alignment (route-out). \-  
DEV-RBWI-LEGACY LEGACY FOUND DOCLOC:/mnt/data/Spartoi｜SubP1-LITE+MVP 開發 RUNBOOK & WI\_v1.4.0.md DOCLOC:/mnt/data/Spartoi｜SubP1-LITE+MVP 開發 RUNBOOK & WI\_v1.4.0.md\#\[ANCHOR:SPLMVP-RB-V140-COVER\] DOCLOC:/mnt/data/Spartoi｜SubP1-LITE+MVP 開發 RUNBOOK & WI\_v1.4.0.md\#\[ANCHOR:SPLMVP-SCOPE-LOCK\] Legacy route-out context. \-  
OMOC-RBWI ROUTEOUT FOUND DOCLOC:/mnt/data/OMOC\_施工RBWI\_v4.0.1-r1.md DOCLOC:/mnt/data/OMOC\_施工RBWI\_v4.0.1-r1.md\#\[ANCHOR:OMOC-RBWI-COVER\] DOCLOC:/mnt/data/OMOC\_施工RBWI\_v4.0.1-r1.md\#\[ANCHOR:OMOC-RBWI-EVIDENCE-CONTRACT\] 施工 HOW 外導。 \-  
RIP-PLAN PLAN FOUND DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_RIP方案.md DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_RIP方案.md@L1-L6 DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_RIP方案.md@L58-L64 RIP plan referenced (support/route-out). \-  
RIP-FIX PLAN FOUND DOCLOC:/mnt/data/OMOC\_總體RIP修補方案.md DOCLOC:/mnt/data/OMOC\_總體RIP修補方案.md@L1-L4 DOCLOC:/mnt/data/OMOC\_總體RIP修補方案.md@L52-L57 RIP fix plan referenced (support/route-out). \-  
RIP-EXT SUPPORT FOUND DOCLOC:/mnt/data/OMOC\_RIP\_外部資料.md DOCLOC:/mnt/data/OMOC\_RIP\_外部資料.md@L1662-L1665 DOCLOC:/mnt/data/OMOC\_RIP\_外部資料.md@L3219-L3225 Support-only external sources staging. TT-CP-0008  
RIP-EXT-GEMINI SUPPORT FOUND DOCLOC:/mnt/data/OMOC\_RIP\_外部資料(GEMINI).md DOCLOC:/mnt/data/OMOC\_RIP\_外部資料(GEMINI).md@L13-L13 DOCLOC:/mnt/data/OMOC\_RIP\_外部資料(GEMINI).md@L513-L517 Web-conflict examples (support-only). TT-CP-0008  
RIP-EXT-GPT SUPPORT FOUND DOCLOC:/mnt/data/OMOC\_RIP\_外部資料(GPT).md DOCLOC:/mnt/data/OMOC\_RIP\_外部資料(GPT).md@L17-L17 DOCLOC:/mnt/data/OMOC\_RIP\_外部資料(GPT).md@L401-L412 Web evidence catalog with URLs (support-only). TT-CP-0008  
\-----END FILE: Spartoi-OMOC\_SubP1-LITE+MVP\_ControlPlanePack/maps/doc\_inventory.tsv-----

\-----BEGIN FILE: Spartoi-OMOC\_SubP1-LITE+MVP\_ControlPlanePack/maps/route\_out\_register.tsv-----  
topic why\_route\_out route\_to\_doc route\_to\_locator status tt\_ref  
Dev execution steps / CI construction Control Plane is not a Runbook DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Dev RUNBOOK \+ WI\_ v2.1.0-r2.md \[ANCHOR:SOMOC-DEV-RBWI-V210R2-9-0-STAGE\_RB\] ROUTED \-  
Ops operational steps / incident / rollback Control Plane is not Ops playbook DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Ops RUNBOOK \+ WI\_v2.1.0-r2.md \[ANCHOR:SOMOC-SUBP1MVP-OPS-S14-OBSERVABILITY-INCIDENT\] ROUTED \-  
GitHub rulesets exact UI/API shape Platform driftable; needs probes DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Ops RUNBOOK \+ WI\_v2.1.0-r2.md \[ANCHOR:SOMOC-SUBP1MVP-OPS-S13-GH-CONTROL-PLANE\] ROUTED TT-CP-0002  
Merge queue live behavior & payload nuances Platform driftable; needs probes DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Ops RUNBOOK \+ WI\_v2.1.0-r2.md \[ANCHOR:SOMOC-SUBP1MVP-OPS-S11-WI-OPS-MQ-PROBE\] ROUTED TT-CP-0002  
Validator wiring / schema validation run logs Execution-layer evidence required DOCLOC:/mnt/data/Spartoi-OMOC\_dev RB \+ WI\_v8.1.1-dev-r2.md \[ANCHOR:DEV-RBWI-APPX-L-LINT-AND-SELF-AUDIT\] ROUTED TT-CP-0001  
施工命令與逐步操作（OMOC 工地） Control Plane 禁止 HOW DOCLOC:/mnt/data/OMOC\_施工RBWI\_v4.0.1-r1.md \[ANCHOR:OMOC-RBWI-RUNBOOK\] ROUTED \-  
OMOC-MVU 套件內之逐步工作流 Control Plane 禁止 HOW DOCLOC:/mnt/data/「OMOC-MVU 藍圖 \+ RUNBOOK \+ WI」套件包\_v0.2.0-r1+SC-HMD.md \[ANCHOR:OMOCMVU-RB-BOOT\] ROUTED \-  
外部網頁內容之快照/Hash/重驗 必須由執行層完成（Web SUPPORT-only） DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md \[ANCHOR:SRS-V810-WEB-ACCESS\] ROUTED TT-CP-0008  
\-----END FILE: Spartoi-OMOC\_SubP1-LITE+MVP\_ControlPlanePack/maps/route\_out\_register.tsv-----

\-----BEGIN FILE: Spartoi-OMOC\_SubP1-LITE+MVP\_ControlPlanePack/maps/ssot\_alignment\_map.tsv-----  
topic upstream\_doc upstream\_locator cp\_anchor min\_artifact status tt\_ref  
Package B required skeleton & anchors Package B WI DOCLOC:/mnt/data/Package B — Control Plane Pack（總控控制平面合冊）\_撰寫\_規範工作指導書（WI）.md\#WI-B-01 \[ANCHOR:CP-PACK-S1-TOC\] control\_plane\_pack.md ALIGNED \-  
Authority Stack & conflict rule form Package B WI DOCLOC:/mnt/data/Package B — Control Plane Pack（總控控制平面合冊）\_撰寫\_規範工作指導書（WI）.md\#WI-B-02 \[ANCHOR:CP-PACK-S4-AUTHORITY-AND-CONFLICT-RULES\] control\_plane\_pack.md ALIGNED \-  
Scope-Lock & route-out enforcement Package B WI DOCLOC:/mnt/data/Package B — Control Plane Pack（總控控制平面合冊）\_撰寫\_規範工作指導書（WI）.md\#WI-B-03 \[ANCHOR:CP-PACK-S5-SCOPE-LOCK-AND-ROUTE-OUT\] maps/route\_out\_register.tsv ALIGNED \-  
Gate registry minimal requirement Package B WI DOCLOC:/mnt/data/Package B — Control Plane Pack（總控控制平面合冊）\_撰寫\_規範工作指導書（WI）.md\#WI-B-04 \[ANCHOR:CP-PACK-S7-GATE-AND-EVIDENCE-CONTRACT\] registries/gate\_registry.json ALIGNED \-  
Evidence Triplet contract SRS v8.1.0 DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-REQ-EVID-TRIPLET\] \[ANCHOR:CP-PACK-S7-GATE-AND-EVIDENCE-CONTRACT\] schemas/evidence\_schema/triplet.schema.json ALIGNED \-  
Merge queue trigger contract 工程指南 DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_前端文檔到實作驗收\_工程指南.md\[\#sec4.2-merge-queue\] \[ANCHOR:CP-PACK-S9-DRIFT-GOVERNANCE\] governance/drift\_ruleset.yml ALIGNED TT-CP-0002  
Always-Report contract 工程指南 DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_前端文檔到實作驗收\_工程指南.md\[\#sec4.3-always-report\] \[ANCHOR:CP-PACK-S7-GATE-AND-EVIDENCE-CONTRACT\] registries/gate\_registry.json ALIGNED TT-CP-0002  
TT schema lock 工程指南 DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_前端文檔到實作驗收\_工程指南.md\[\#sec9.1-tt-schema-lock\] \[ANCHOR:CP-PACK-S8-TT-STATE-MACHINE\] schemas/tt\_schema.json ALIGNED \-  
Web SUPPORT-only gateway SRS v8.1.0 DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-WEB-POLICY\] \[ANCHOR:CP-PACK-APPX-G-WEB-EVIDENCE-APPENDIX\] maps/web\_evidence.tsv ALIGNED TT-CP-0008  
RIP 套件/方案：僅對齊與引用（不重寫） RIP 方案 DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_RIP方案.md@L15-L20 \[ANCHOR:CP-PACK-S5-SCOPE-LOCK-AND-ROUTE-OUT\] maps/route\_out\_register.tsv REFERENCED \-  
施工 RBWI：證據合約落點 OMOC 施工RBWI DOCLOC:/mnt/data/OMOC\_施工RBWI\_v4.0.1-r1.md\#\[ANCHOR:OMOC-RBWI-EVIDENCE-CONTRACT\] \[ANCHOR:CP-PACK-S7-GATE-AND-EVIDENCE-CONTRACT\] schemas/evidence\_schema/\* REFERENCED TT-CP-0006  
\-----END FILE: Spartoi-OMOC\_SubP1-LITE+MVP\_ControlPlanePack/maps/ssot\_alignment\_map.tsv-----

\-----BEGIN FILE: Spartoi-OMOC\_SubP1-LITE+MVP\_ControlPlanePack/maps/legacy\_parity.tsv-----  
legacy\_artifact legacy\_locator new\_artifact new\_locator parity\_claim supersedes\_ref  
CP-PACK-v2.1.0 cover Spartoi-OMOC\_SubP1-LITE+MVP\_Control Plane Pack\_v2.1.0.md\#\[ANCHOR:CP-PACK-S0-COVER\] control\_plane\_pack.md \[ANCHOR:CP-PACK-S0-COVER\] cover+doc\_meta replaced; version drift removed SOMOC-CP-PACK-v2.2.0-r1  
CP-PACK-v2.1.0 TT section Spartoi-OMOC\_SubP1-LITE+MVP\_Control Plane Pack\_v2.1.0.md\#\[ANCHOR:CP-PACK-S8-TT\] control\_plane\_pack.md \[ANCHOR:CP-PACK-S8-TT-STATE-MACHINE\] TT state machine retained; schema locked SOMOC-CP-PACK-v2.2.0-r1  
CP-PACK-v2.1.0 registries/schemas Spartoi-OMOC\_SubP1-LITE+MVP\_Control Plane Pack\_v2.1.0.md (file blocks) registries/\* \+ schemas/\* (n/a) All required registries/schemas present; $schema pin corrected SOMOC-CP-PACK-v2.2.0-r1  
CP-PACK-v1.0.0 scope lock Spartoi-OMOC\_SubP1-LITE+MVP\_Control Plane Pack\_v1.0.0.md\#\[ANCHOR:CP-PACK-S5-SCOPE-LOCK\] control\_plane\_pack.md \[ANCHOR:CP-PACK-S5-SCOPE-LOCK-AND-ROUTE-OUT\] scope lock preserved; route-out map expanded SOMOC-CP-PACK-v2.2.0-r1  
CP-PACK-v1.0.0 web evidence placeholder Spartoi-OMOC\_SubP1-LITE+MVP\_Control Plane Pack\_v1.0.0.md (web\_evidence empty finding) maps/web\_evidence.tsv (n/a) web evidence now non-empty; support-only policy pinned SOMOC-CP-PACK-v2.2.0-r1  
\-----END FILE: Spartoi-OMOC\_SubP1-LITE+MVP\_ControlPlanePack/maps/legacy\_parity.tsv-----

\-----BEGIN FILE: Spartoi-OMOC\_SubP1-LITE+MVP\_ControlPlanePack/maps/backlog\_closure.tsv-----  
finding\_id type severity status closure\_evidence\_ptr tt\_ref patch\_ref  
F-CP-VER-001 Drift P0 CLOSED control\_plane\_pack.md JSON header (doc\_id/version=v2.2.0-r1) \+ registries/machine\_summary.json.pack.version consistent \- P-CP-2201  
F-CP-WEB-001 Logic P1 CLOSED maps/web\_evidence.tsv populated (\>=2 sources/row) \+ support-only policy pinned \+ TT-bound rows TT-CP-0008 P-CP-2202  
F-CP-SCOPE-001 Destructive P2 CLOSED maps/anti\_scope\_scan.tsv exists (parsable) \+ self\_audit\_checklist enforces handling hit\_count=0 P-CP-2203  
F-CP-GATE-001 Structure P2 TEMP\_CLOSED→TEST\_TRACK registries/gate\_registry.json present (Package B minimal); SRS gate full enumeration remains TT TT-CP-0004 P-CP-2204  
F-CP-VALID-001 Feasibility P2 TEMP\_CLOSED→TEST\_TRACK schemas exist and $schema pinned; validator wiring is execution-layer evidence TT-CP-0001 P-CP-2205  
F-CP-DRIFT-001 Risk P1 TEMP\_CLOSED→TEST\_TRACK governance/drift\_ruleset.yml \+ maps/web\_evidence.tsv \+ route-out probes for GitHub drift TT-CP-0002 P-CP-2206  
\-----END FILE: Spartoi-OMOC\_SubP1-LITE+MVP\_ControlPlanePack/maps/backlog\_closure.tsv-----

\-----BEGIN FILE: Spartoi-OMOC\_SubP1-LITE+MVP\_ControlPlanePack/maps/tt\_register.tsv-----  
tt\_id title severity status needs\_env\_probe source\_gap evidence\_needed verify\_method\_route\_out expected\_outputs revoke\_triggers owner\_role evidence\_ptr  
TT-CP-0001 Confirm validator wiring for evidence\_schema/\*.schema.json HIGH TEMP\_CLOSED→TEST\_TRACK false Schema exists but validator toolchain integration is execution-layer validator run log \+ schema parse report {"route\_to\_doc":"DOCLOC:/mnt/data/Spartoi-OMOC\_dev RB \+ WI\_v8.1.1-dev-r2.md","route\_to\_locator":"\[ANCHOR:DEV-RBWI-APPX-L-LINT-AND-SELF-AUDIT\]"} validation\_report.json \+ checks\_manifest.json refs \["validator major version change","schema draft update"\] Schema Owner DOCLOC:/mnt/data/Package B — Control Plane Pack（總控控制平面合冊）\_撰寫\_規範工作指導書（WI）.md\#WI-B-06  
TT-CP-0002 Confirm merge\_group payload shape and rulesets snapshot fields (platform drift) HIGH TEMP\_CLOSED→TEST\_TRACK true GitHub behavior driftable; CP only requires presence+parseability merge\_group\_payload.json \+ rulesets\_snapshot.json \+ probe log {"route\_to\_doc":"DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Ops RUNBOOK \+ WI\_v2.1.0-r2.md","route\_to\_locator":"\[ANCHOR:SOMOC-SUBP1MVP-OPS-S11-WI-OPS-MQ-PROBE\]"} payload json \+ snapshot json \+ checks\_manifest referencing them \["GitHub rulesets/merge queue UI/API change","org policy/plan changes"\] Drift Steward DOCLOC:/mnt/data/Package B — Control Plane Pack（總控控制平面合冊）\_撰寫\_規範工作指導書（WI）.md\#WI-B-07  
TT-CP-0004 Enumerate SRS Gate Dictionary into gate\_registry rows (full coverage) HIGH TEMP\_CLOSED→TEST\_TRACK false SRS Gate Dictionary item-level extraction not completed in this pack per-gate rows with locator proofs {"route\_to\_doc":"DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md","route\_to\_locator":"\[ANCHOR:SRS-V810-GATE-DICTIONARY\]"} gate\_registry.json extended \+ ssot\_alignment\_map gate row becomes ALIGNED \["SRS gate dictionary updates","anchor changes"\] Gate Owner DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-GATE-DICTIONARY\]  
TT-CP-0006 Confirm evidence path enforcement constraints are satisfied by execution layer MED TEMP\_CLOSED→TEST\_TRACK true ARCH pathing rules exist but enforcement not evidenced evidence store audit sample \+ path policy scan {"route\_to\_doc":"DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Ops RUNBOOK \+ WI\_v2.1.0-r2.md","route\_to\_locator":"\[ANCHOR:SOMOC-SUBP1MVP-OPS-S12-GATE-EVIDENCE\]"} evidence\_store\_audit.txt \+ sample triplet paths Path policy change Evidence Owner DOCLOC:/mnt/data/Spartoi-OMOC\_ARCH\_v8.1.0.md\#\[ANCHOR:ARCH-V810-4-11-6-ROUTEOUT\]  
TT-CP-0008 Web evidence freshness watchdog (\>=2 sources/row; SUPPORT-only; conflict=\>TT) MED TEMP\_CLOSED→TEST\_TRACK false Need ongoing guard against stale/removed/changed web sources stale review record \+ conflict triage entries {"route\_to\_doc":"DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md","route\_to\_locator":"\[ANCHOR:SRS-V810-WEB-ACCESS\]"} web\_evidence.tsv remains non-empty; stale/conflict handled \["web sources removed/moved","content drift detected"\] Drift Steward DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-WEB-POLICY\]  
\-----END FILE: Spartoi-OMOC\_SubP1-LITE+MVP\_ControlPlanePack/maps/tt\_register.tsv-----

\-----BEGIN FILE: Spartoi-OMOC\_SubP1-LITE+MVP\_ControlPlanePack/maps/web\_evidence.tsv-----  
web\_item\_id claim\_supported accessed\_at source\_tier source\_1 source\_2 summary tt\_ref revoke\_triggers injection\_risk  
WEB-0001 Merge queue requires workflows to handle merge\_group context; otherwise required checks may stay pending / not reported. 2026-02-25 Asia/Taipei official [https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/configuring-pull-request-merges/managing-a-merge-queue](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/configuring-pull-request-merges/managing-a-merge-queue) [https://github.blog/changelog/2022-08-18-merge-group-webhook-event-and-github-actions-workflow-trigger/](https://github.blog/changelog/2022-08-18-merge-group-webhook-event-and-github-actions-workflow-trigger/) SUPPORT-only: MQ \+ merge\_group linkage for required checks reporting. TT-CP-0002 GitHub Docs/Changelog update; observed behavior change true  
WEB-0002 Rulesets can enforce required status checks; misconfig/drift can lead to “waiting for status to be reported”. 2026-02-25 Asia/Taipei official [https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-rulesets/available-rules-for-rulesets](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-rulesets/available-rules-for-rulesets) [https://github.com/orgs/community/discussions/26698](https://github.com/orgs/community/discussions/26698) SUPPORT-only: rulesets enforcement \+ common pending symptom reference. TT-CP-0002 UI/API changes; org policy changes true  
WEB-0003 Dev Containers are a spec; devcontainer.json enables consistent dev env across local and Codespaces (driftable). 2026-02-25 Asia/Taipei official [https://devcontainers.github.io/implementors/spec/](https://devcontainers.github.io/implementors/spec/) [https://docs.github.com/codespaces/setting-up-your-project-for-codespaces/introduction-to-dev-containers](https://docs.github.com/codespaces/setting-up-your-project-for-codespaces/introduction-to-dev-containers) SUPPORT-only: environment spec baseline used by RIP/Runbooks. TT-CP-0002 spec/docs update true  
WEB-0004 JSON Schema dialect pinning requires explicit $schema; 2020-12 is a known dialect; validator defaults may drift. 2026-02-25 Asia/Taipei official [https://json-schema.org/draft/2020-12/schema](https://json-schema.org/draft/2020-12/schema) [https://ajv.js.org/guide/getting-started.html](https://ajv.js.org/guide/getting-started.html) SUPPORT-only: $schema pin rationale; validator drift hotspot. TT-CP-0001 spec/validator update true  
WEB-0005 MCP security guidance emphasizes authorization, allowlists, and avoiding token passthrough; treat as driftable guidance. 2026-02-25 Asia/Taipei official [https://modelcontextprotocol.io/docs/tutorials/security/security\_best\_practices](https://modelcontextprotocol.io/docs/tutorials/security/security_best_practices) [https://workos.com/blog/mcp-security-risks-best-practices](https://workos.com/blog/mcp-security-risks-best-practices) SUPPORT-only: MCP security best practices for RIP-B alignment. TT-CP-0008 guidance update true  
WEB-0006 GitHub MCP server exists as official reference; registry/management workflows exist (driftable). 2026-02-25 Asia/Taipei official [https://github.com/github/github-mcp-server](https://github.com/github/github-mcp-server) [https://github.blog/ai-and-ml/generative-ai/how-to-find-install-and-manage-mcp-servers-with-the-github-mcp-registry/](https://github.blog/ai-and-ml/generative-ai/how-to-find-install-and-manage-mcp-servers-with-the-github-mcp-registry/) SUPPORT-only: official MCP ecosystem reference for governance. TT-CP-0008 repo release or registry policy change true  
WEB-0007 Agent/Skill packaging concepts have multiple specifications; conflicts must be handled as WEB-CONFLICT when sources diverge. 2026-02-25 Asia/Taipei official [https://agentskills.io/specification](https://agentskills.io/specification) [https://platform.claude.com/docs/en/agents-and-tools/agent-skills/overview](https://platform.claude.com/docs/en/agents-and-tools/agent-skills/overview) SUPPORT-only: cross-spec drift/conflict reminder for Skills runtime. TT-CP-0008 spec divergence true  
WEB-0008 Required status checks troubleshooting indicates pending states can be caused by skipped workflows / missing triggers; treat as driftable. 2026-02-25 Asia/Taipei official [https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/troubleshooting-required-status-checks](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/troubleshooting-required-status-checks) [https://github.com/orgs/community/discussions/54877](https://github.com/orgs/community/discussions/54877) SUPPORT-only: pending checks causes; enforce always-report/skip-hazard at execution layer. TT-CP-0002 GitHub docs/community drift true  
\-----END FILE: Spartoi-OMOC\_SubP1-LITE+MVP\_ControlPlanePack/maps/web\_evidence.tsv-----

\-----BEGIN FILE: Spartoi-OMOC\_SubP1-LITE+MVP\_ControlPlanePack/maps/anti\_scope\_scan.tsv-----  
pattern hit\_count sample\_locator disposition tt\_ref  
kubectl 0 \- PASS \-  
helm 0 \- PASS \-  
docker compose 0 \- PASS \-  
click 0 \- PASS \-  
Settings → 0 \- PASS \-  
gh api 0 \- PASS \-  
workflow.yml 0 \- PASS \-  
run the following command 0 \- PASS \-  
step-by-step 0 \- PASS \-  
procedure: 0 \- PASS \-  
\-----END FILE: Spartoi-OMOC\_SubP1-LITE+MVP\_ControlPlanePack/maps/anti\_scope\_scan.tsv-----

\-----BEGIN FILE: Spartoi-OMOC\_SubP1-LITE+MVP\_ControlPlanePack/self\_audit\_checklist.md-----

# **Self-Audit Checklist (Fail-Closed)**

\[ANCHOR:CP-PACK-SELF-AUDIT\]

任何一條 FAIL \=\> 本包 verdict MUST 是 FAIL\_CLOSED，且 machine\_summary.json 必須一致。  
evidence\_ptr: `DOCLOC:/mnt/data/Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-FAIL-CLOSED-RULES]`

---

## **SA-CP-001 Version consistency — PASS**

* 檢查：control\_plane\_pack.md JSON header.version \== machine\_summary.pack.version  
* 證據：`control_plane_pack.md` \+ `registries/machine_summary.json`

## **SA-CP-002 Findings closure completeness — PASS\_WITH\_TT**

* 檢查：maps/backlog\_closure.tsv 含全部 finding\_id 且無 CR\_OPEN  
* 證據：`maps/backlog_closure.tsv`（允許 TEMP\_CLOSED→TEST\_TRACK）

## **SA-CP-003 CR\_OPEN=0 — PASS**

* 檢查：machine\_summary.pack.cr\_open \== 0；tt\_schema 禁止 CR\_OPEN  
* 證據：`registries/machine_summary.json` \+ `schemas/tt_schema.json`

## **SA-CP-004 Scope-Lock (Not a Runbook) — PASS**

* 檢查：本包未承載 HOW；route\_out\_register 覆蓋  
* 證據：`control_plane_pack.md#[ANCHOR:CP-PACK-S5-SCOPE-LOCK-AND-ROUTE-OUT]` \+ `maps/route_out_register.tsv`

## **SA-CP-005 Gate registry present — PASS**

* 檢查：registries/gate\_registry.json 存在且可解析  
* 證據：`registries/gate_registry.json`

## **SA-CP-006 Evidence schemas present & $schema pinned — PASS\_WITH\_TT**

* 檢查：schemas/evidence\_schema/\*.schema.json 全存在且 $schema=2020-12  
* 限制：validator wiring 需 TT-CP-0001（execution layer）  
* 證據：`schemas/evidence_schema/*` \+ `maps/tt_register.tsv(TT-CP-0001)`

## **SA-CP-007 Drift governance present — PASS\_WITH\_TT**

* 檢查：governance/drift\_ruleset.yml 存在且含 GitHub drift items  
* 限制：live probe 需 TT-CP-0002  
* 證據：`governance/drift_ruleset.yml` \+ `maps/tt_register.tsv(TT-CP-0002)`

## **SA-CP-008 Web SUPPORT-only compliance — PASS\_WITH\_TT**

* 檢查：web\_evidence.tsv 非空；每列\>=2 sources；綁 TT；衝突=\>WEB-CONFLICT=\>TT  
* 限制：freshness watchdog 需 TT-CP-0008  
* 證據：`maps/web_evidence.tsv` \+ `maps/tt_register.tsv(TT-CP-0008)`  
  evidence\_ptr: `DOCLOC:/mnt/data/Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-WEB-POLICY]`

## **SA-CP-009 Route-out completeness — PASS**

* 檢查：route\_out\_register 覆蓋 Dev/Ops/施工/MVU 等 HOW 目的地  
* 證據：`maps/route_out_register.tsv`

## **SA-CP-010 Anti-scope scan enforceability — PASS**

* 檢查：anti\_scope\_scan.tsv 存在且 hit\_count=0；若\>0 必逐列處置（route-out 或 TT）  
* 證據：`maps/anti_scope_scan.tsv`  
  evidence\_ptr: `DOCLOC:/mnt/data/Package B — Control Plane Pack（總控控制平面合冊）_撰寫_規範工作指導書（WI）.md#WI-B-03`  
  \-----END FILE: Spartoi-OMOC\_SubP1-LITE+MVP\_ControlPlanePack/self\_audit\_checklist.md-----

---

Final Verdict: **PASS\_WITH\_TT**

TT 統計（high/med/low）: **3 / 2 / 0**

你新增的外部 SUPPORT-only 條目數（web\_evidence rows）: **8**

最關鍵 10 條 self-audit checklist 結果（PASS/FAIL）:

1. SA-CP-001 Version consistency: PASS  
2. SA-CP-002 Findings closure completeness: PASS\_WITH\_TT  
3. SA-CP-003 CR\_OPEN=0: PASS  
4. SA-CP-004 Scope-Lock (Not a Runbook): PASS  
5. SA-CP-005 Gate registry present: PASS  
6. SA-CP-006 Evidence schemas present & $schema pinned: PASS\_WITH\_TT  
7. SA-CP-007 Drift governance present: PASS\_WITH\_TT  
8. SA-CP-008 Web SUPPORT-only compliance: PASS\_WITH\_TT  
9. SA-CP-009 Route-out completeness: PASS  
10. SA-CP-010 Anti-scope scan enforceability: PASS

Sources used for this response (files-first):

