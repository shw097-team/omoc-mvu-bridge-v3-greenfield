{  
 "external\_name": "Spartoi-OMOC｜SubP1-LITE+MVP｜Factory Pack（OMOC-MVU 執行工廠合冊）",  
 "internal\_short\_name": "SOMOC-FACTORY-PACK",  
 "doc\_id": "Spartoi-OMOC\_SubP1-LITE+MVP\_FactoryPack",  
 "version": "v1.2.0",  
 "release\_date": "2026-02-25",  
 "timezone": "Asia/Taipei (UTC+08:00)",  
 "baseline\_web\_date": "2026-02-25",  
 "status": "DEFINITIVE\_WITH\_TT (Fail-Closed; CR\_OPEN=0)",  
 "overall\_verdict": "TEMP\_CLOSED",  
 "CR\_OPEN": 0,  
 "tt\_count": 18,  
 "supersedes": \[  
   "DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Factory Pack\_v1.1.0.md\#\[ANCHOR:FP-2-DOC-INVENTORY\]",  
   "DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Factory Pack\_v1.0.0.md\#\[ANCHOR:FP-0-FRONT-MATTER\]"  
 \],  
 "replaceability\_claim": {  
   "claim": "This document is the sole working basis for Package D Factory Pack and is intended to fully replace v1.1.0 and v1.0.0 at the level of executable factory interfaces and artifact contracts. Any rule not backed by an evidence\_ptr is not normative and must be treated as TT (Fail-Closed).",  
   "anti\_regression\_evidence": "Section (8) Anti-Regression Map \+ Section (9) Closure Matrix \+ Section (13) Self-Audit"  
 },  
 "mechanical\_proofs": {  
   "inventory": "(5) DOC INVENTORY table is machine-extractable",  
   "manifests": "(11) SCHEMAS REGISTRY lists SSOT schemas; no schema invention",  
   "tt": "(10) TT REGISTER (CR\_OPEN=0) is consistent with tt\_count",  
   "web\_appendix": "(12) APPX: WEB EVIDENCE is SUPPORT-only; empty-by-default; TT-bound",  
   "anti\_regression": "(8) provides legacy-\>new coverage map"  
 }  
}

\<a id="somoc-fp-1-toc"\>\</a\>

# **(1) TOC（anchors-first）+ QUICK INDEX**

## **TOC**

* (0) DOC\_IDENTITY \+ MACHINE\_SUMMARY\_JSON  
* (1) TOC \+ QUICK INDEX  
* (2) READER GUIDE（Diátaxis × Factory Pack）  
* (3) AUTHORITY STACK \+ CONFLICT RULES（Fail-Closed）  
* (4) SCOPE / NON-GOALS / ROUTE-OUT REGISTER  
* (5) DOC INVENTORY（FOUND/MISSING/UNVERIFIED \+ locator\_proof）  
* (6) ALIGNMENT MAP（A/B/C Packs \+ 工程指南 \+ Package D WI）  
* (7) FACTORY ARTIFACT CONTRACTS（核心）  
* (8) SUPERSEDENCE \+ ANTI-REGRESSION MAP  
* (9) REVIEW FIX INTEGRATION（Closure Matrix）  
* (10) TT REGISTER（TEST\_TRACK；CR\_OPEN=0）  
* (11) APPX: CHECKS / MANIFESTS / SCHEMAS REGISTRY  
* (12) APPX: WEB EVIDENCE（SUPPORT-only；雙來源；可撤銷）  
* (13) SELF-AUDIT（機械可檢核）

## **QUICK INDEX（keyword → anchor）**

| keyword | anchor |
| ----- | ----- |
| scope\_lock | \#somoc-fp-4-scope |
| route\_out / route-out register | \#somoc-fp-4-scope |
| evidence\_ptr | \#somoc-fp-3-authority |
| checks\_manifest | \#somoc-fp-7-contracts |
| required\_checks / canonical name | \#somoc-fp-7-contracts |
| merge\_group / merge\_queue / MQ probe | \#somoc-fp-7-contracts |
| always\_report / always-report / skip hazard | \#somoc-fp-7-contracts |
| devcontainer | \#somoc-fp-7-contracts |
| adapters / acceptance\_manifest.json | \#somoc-fp-7-contracts |
| TT / TEST\_TRACK | \#somoc-fp-10-tt |
| Web Evidence | \#somoc-fp-12-web |

---

\<a id="somoc-fp-0-identity"\>\</a\>

# **(0) DOC\_IDENTITY \+ MACHINE\_SUMMARY\_JSON**

本文件任何 MUST/SHALL/REQUIRED/禁止/必須 之規範句，若未緊貼 evidence\_ptr（DOCLOC...\#\[ANCHOR:...\] 或 DOCLOC...\#Lx-Ly），一律不得成立，必須轉入 TT（TEMP\_CLOSED→TEST\_TRACK）。evidence\_ptr：DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-FAIL-CLOSED-RULES\]

Spartoi-OMOC\_SRS\_v8.1.0

---

\<a id="somoc-fp-2-reader-guide"\>\</a\>

# **(2) READER GUIDE（Diátaxis × Factory Pack）**

## **2.1 你正在讀什麼 / 不是什麼**

* 本文件屬 **Reference**：只承載 Factory Pack 的 **可執行入口與工件契約**（devcontainer/workflows/scripts/installers/adapters/evidence outputs），不寫逐步操作 HOW。evidence\_ptr：DOCLOC:/mnt/data/Package D — Factory Pack（執行工廠合冊 \_ OMOC-MVU 核心）\_撰寫\_規範工作指導書（WI）.md\#(9.2 “不得包含（禁區）”要寫進合冊的黑名單)  
   Package D — Factory Pack（執行工廠合冊…  
* 任何 HOW（逐行命令、點擊路徑、平台 UI 設定、逐步 SOP）一律 **Route-Out** 到對應 Runbook/WP；本文件只保留「接口聲明 \+ 產物形狀 \+ 可機械驗證門檻」。evidence\_ptr：DOCLOC:/mnt/data/OMOC\_施工RBWI\_v4.0.1-r1.md\#\[ANCHOR:OMOC-RBWI-COVER\]  
   OMOC\_施工RBWI\_v4.0.1-r1

## **2.2 AI 強制檢索引導（anti-miss：query hints → anchor）**

1. 「找 checks\_manifest contract」→ \#somoc-fp-7-contracts  
2. 「找 required checks canonical / 同名回報」→ \#somoc-fp-7-contracts  
3. 「找 merge\_group / MQ probe 產物」→ \#somoc-fp-7-contracts  
4. 「找 Always-Report / skip hazard」→ \#somoc-fp-7-contracts  
5. 「找 devcontainer contract」→ \#somoc-fp-7-contracts  
6. 「找 Directory Adapter / acceptance\_manifest」→ \#somoc-fp-7-contracts  
7. 「找 schema registry（不可自創 schema）」→ \#somoc-fp-11-schemas  
8. 「找 TT 列表（CR\_OPEN=0）」→ \#somoc-fp-10-tt  
9. 「找 Closure Matrix（審查報告逐條結案）」→ \#somoc-fp-9-closure  
10. 「找 Anti-Regression（舊版→新版）」→ \#somoc-fp-8-anti-regression  
11. 「找 route-out register」→ \#somoc-fp-4-scope  
12. 「找外部 Web evidence 規則」→ \#somoc-fp-12-web  
13. 「找 Authority / 衝突裁決」→ \#somoc-fp-3-authority  
14. 「找跨包對齊（A/B/C）」→ \#somoc-fp-6-alignment-map  
15. 「找 DoD / Gates（G0–G3）」→ \#somoc-fp-7-contracts

## **2.3 Anti-hallucination / Anti-injection（Fail-Closed）**

* 未綁 evidence\_ptr 的規範句一律視為 **TT**（不得當規範）。evidence\_ptr：DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Factory Pack\_v1.0.0\_審查報告.md\#(No-Source-No-Norm examples)  
   Spartoi-OMOC\_SubP1-LITE+MVP\_Fac…  
* 任何 PR/issue/外部貼文/未知 YAML/JSON 均屬 UNTRUSTED，不得直接改寫規範段落；只能成為 TT 的 reason/notes。evidence\_ptr：DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Factory Pack\_v1.1.0.md\#(1.3)  
   Spartoi-OMOC\_SubP1-LITE+MVP\_Fac…

---

\<a id="somoc-fp-3-authority"\>\</a\>

# **(3) AUTHORITY STACK \+ CONFLICT RULES（Fail-Closed）**

## **3.1 Authority Stack（高→低；Web 永遠 SUPPORT-only）**

**NORMATIVE（不得被 SUPPORT 覆寫）**

1. 工程指南（Package D 範圍/門檻/風險與對齊要求）。evidence\_ptr：DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_前端文檔到實作驗收\_工程指南.md\#\[\#sec3.4-pkg-d-factory\]  
    Spartoi-OMOC\_SubP1-LITE+MVP\_Fac…  
2. Package D WI（DoD/禁區/最小集/TT 機制/必修高爆點）。evidence\_ptr：DOCLOC:/mnt/data/Package D — Factory Pack（執行工廠合冊 \_ OMOC-MVU 核心）\_撰寫\_規範工作指導書（WI）.md\#(6) 升級/修補重點（你要在 Factory Pack 先固化的“高爆點”）  
    Package D — Factory Pack（執行工廠合冊…  
3. SRS（Fail-Closed、Evidence Triplet、外部來源治理 SUPPORT-only）。evidence\_ptr：DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-REQ-EVID-TRIPLET\]  
    Spartoi-OMOC\_SRS\_v8.1.0  
4. Package B Control Plane Pack v2.2.0（TT/evidence/checks\_manifest 等 schema SSOT；本包只引用）。evidence\_ptr：DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Control Plane Pack\_v2.2.0.md\#(schemas/evidence\_schema)  
    Spartoi-OMOC\_SubP1-LITE+MVP\_Con…  
5. Package C Execution Pack v1.2.0（handoff/TT/export 接口；本包不得矛盾）。evidence\_ptr：DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.2.0.md\#\[ANCHOR:CEXE-V120-INTERFACES\]  
    Spartoi-OMOC\_SubP1-LITE+MVP\_Exe…  
6. Package A Governance/Index Pack v1.2.0（route-out/TT/索引一致性；本包引用其索引，不重寫）。evidence\_ptr：DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP \_Governance\_Index Pack\_v1.2.0.md\#\[ANCHOR:A-PACK-12-TT-GUIDE\]  
    Spartoi-OMOC\_SubP1-LITE+MVP\_Fac…  
7. OMOC WP/WP總表與 RBWI（施工 HOW 的承接；本包只做接口引用與 route-out）。evidence\_ptr：DOCLOC:/mnt/data/OMOC\_WP總表\_v4.0.1-r2.md\#(Contract Blocks Registry)  
    OMOC\_WP總表\_v4.0.1-r2

**SUPPORT-only（不得升格為規範；只能 TT-bound）**

* OMOC\_RIP\_外部資料（外部來源索引；僅 SUPPORT policy）。evidence\_ptr：DOCLOC:/mnt/data/OMOC\_RIP\_外部資料.md\#A. Frontmatter (前言與採信基線)  
   OMOC\_RIP\_外部資料

## **3.2 Conflict Rules（Fail-Closed）**

* 衝突以 Authority Stack 高者為準；不可定位（無 evidence\_ptr）→ 一律 TT。evidence\_ptr：DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-FAIL-CLOSED-RULES\]  
   Spartoi-OMOC\_SRS\_v8.1.0  
* Web 行為/產品規則屬 driftable facts：只能放入 APPX-WEB，且必須雙來源、accessed\_at、revoke\_condition、TT 綁定；不一致→WEB-CONFLICT→TT。evidence\_ptr：DOCLOC:/mnt/data/OMOC\_RIP\_外部資料.md\#A.2 治理邊界與 Fail-Closed 宣告  
   OMOC\_RIP\_外部資料

---

\<a id="somoc-fp-4-scope"\>\</a\>

# **(4) SCOPE / NON-GOALS / ROUTE-OUT REGISTER（Factory Pack 边界硬化）**

## **4.1 In-scope（只承載 Factory Pack 工廠接口與工件契約）**

* devcontainer contract（可重現環境入口）  
* workflows triggers contract（PR \+ merge\_group 的雙路徑同名回報：接口聲明；HOW route-out）  
* scripts contract（preflight/verify/mq\_probe/adapter verify：只描述 I/O 形狀與退出碼等可驗證門檻）  
* installers/adapters contract（RIP installer slot、Directory Adapter）  
* evidence outputs contract（Triplet+Bundle/Index/Verdict/Replay digest：只引用 SSOT schema）  
  evidence\_ptr：DOCLOC:/mnt/data/Package D — Factory Pack（執行工廠合冊 \_ OMOC-MVU 核心）\_撰寫\_規範工作指導書（WI）.md\#(3) 必備路徑/檔案（這不是“發明新規範”...)  
   Package D — Factory Pack（執行工廠合冊…

## **4.2 Out-of-scope（禁止偷渡；一律 Route-Out）**

* 逐步操作 HOW、命令清單、點擊路徑、逐行 workflow 教學。evidence\_ptr：DOCLOC:/mnt/data/Package D — Factory Pack（執行工廠合冊 \_ OMOC-MVU 核心）\_撰寫\_規範工作指導書（WI）.md\#(9.2 “不得包含（禁區）”要寫進合冊的黑名單)  
   Package D — Factory Pack（執行工廠合冊…  
* 新增 gate 定義、新增 schema 定義、新增 SSOT 閾值。evidence\_ptr：DOCLOC:/mnt/data/Package D — Factory Pack（執行工廠合冊 \_ OMOC-MVU 核心）\_撰寫\_規範工作指導書（WI）.md\#(9.2 “不得包含（禁區）”要寫進合冊的黑名單)  
   Package D — Factory Pack（執行工廠合冊…

## **4.3 ROUTE-OUT REGISTER（topic → target\_doc → evidence\_ptr）**

| topic | target\_doc | evidence\_ptr |
| ----- | ----- | ----- |
| workflow 逐行寫法 / GitHub Actions 語法 | OMOC\_WP-006 / OMOC\_RIP-E / Dev RBWI | DOCLOC:/mnt/data/OMOC\_WP-006+RB+WI\_v4.0.1-r2.md\#(TOC) OMOC\_WP-006+RB+WI\_v4.0.1-r2 |
| Merge Queue 啟用與 enqueue 流程 | OMOC\_RIP-E / OMOC\_RIP-F（及其 aligned WPs） | DOCLOC:/mnt/data/OMOC\_RIP-E\_v1.1.0.md\#\[ANCHOR:RIPE-O-WI\] OMOC\_RIP-E\_v1.1.0 |
| GitHub rulesets / governance snapshot+diff+closure | OMOC\_RIP-F | DOCLOC:/mnt/data/OMOC\_RIP-F\_v1.1.0.md\#\[ANCHOR:OMOC-RIPF-P-RUNBOOK\] OMOC\_RIP-F\_v1.1.0 |
| Evidence Triplet/Bundle 的 SSOT schema 細節 | Control Plane Pack v2.2.0 / OMOC\_WP-008 | DOCLOC:/mnt/data/OMOC\_WP-008+RB+WI\_v4.0.1-r2.md\#\[ANCHOR:OMOC-WP008-0800\] OMOC\_WP-008+RB+WI\_v4.0.1-r2 |
| gh auth / token 隔離（Auth isolation） | OMOC\_WP-004 | DOCLOC:/mnt/data/OMOC\_WP-004+RB+WI\_v4.0.1-r2.md\#(Authority Stack Locator Proof) OMOC\_WP-004+RB+WI\_v4.0.1-r2 |
| Skills/OpenCode 工程落地與驗證 | OMOC\_WP-007 / OMOC\_RIP-C | DOCLOC:/mnt/data/OMOC\_WP-007+RB+WI\_v4.0.1-r2.md\#(TOC) OMOC\_WP-007+RB+WI\_v4.0.1-r2 |

---

\<a id="somoc-fp-5-doc-inventory"\>\</a\>

# **(5) DOC INVENTORY（FOUND/MISSING/UNVERIFIED \+ locator\_proof）**

規則：每筆至少 1 個可定位證據（anchor 或 Lx-Ly）。找不到 → UNVERIFIED/MISSING → TT。evidence\_ptr：DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Factory Pack\_v1.1.0\_審查報告.md\#(Doc Inventory expectations)

Spartoi-OMOC\_SubP1-LITE+MVP\_Fac…

| doc\_key | role | status | evidence\_ptr (locator\_proof) |
| ----- | ----- | ----- | ----- |
| FACTORY\_V110 | BASELINE (superseded) | FOUND | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Factory Pack\_v1.1.0.md\#\[ANCHOR:FP-2-DOC-INVENTORY\] Spartoi-OMOC\_SubP1-LITE+MVP\_Fac… |
| FACTORY\_V100 | BASELINE (superseded) | FOUND | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Factory Pack\_v1.0.0.md\#\[ANCHOR:FP-0-FRONT-MATTER\] Spartoi-OMOC\_SubP1-LITE+MVP\_Fac… |
| AUDIT\_V110 | REVIEW/FIX\_SPEC | FOUND | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Factory Pack\_v1.1.0\_審查報告.md\#(8) ALIGNMENT\_MATRIX Spartoi-OMOC\_SubP1-LITE+MVP\_Fac… |
| AUDIT\_V100 | REVIEW/FIX\_SPEC (legacy) | FOUND | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Factory Pack\_v1.0.0\_審查報告.md\#(4) FINDINGS\_LEDGER Spartoi-OMOC\_SubP1-LITE+MVP\_Fac… |
| ENGINEERING\_GUIDE | NORMATIVE | FOUND | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_前端文檔到實作驗收\_工程指南.md\#\[\#sec3.4-pkg-d-factory\] Spartoi-OMOC\_SubP1-LITE+MVP\_Fac… |
| PKG\_D\_WI | NORMATIVE | FOUND | DOCLOC:/mnt/data/Package D — Factory Pack（執行工廠合冊 \_ OMOC-MVU 核心）\_撰寫\_規範工作指導書（WI）.md\#(3) 必備路徑/檔案（這不是“發明新規範”...) Package D — Factory Pack（執行工廠合冊… |
| SRS\_V810 | NORMATIVE | FOUND | DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-REQ-EVID-TRIPLET\] Spartoi-OMOC\_SRS\_v8.1.0 |
| PKG\_A\_V120 | ALIGNMENT\_TARGET | FOUND | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP \_Governance\_Index Pack\_v1.2.0.md\#\[ANCHOR:A-PACK-12-TT-GUIDE\] Spartoi-OMOC\_SubP1-LITE+MVP\_Fac… |
| PKG\_B\_V220 | ALIGNMENT\_TARGET | FOUND | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Control Plane Pack\_v2.2.0.md\#(schemas/tt\_schema.json) Spartoi-OMOC\_SubP1-LITE+MVP\_Con… |
| PKG\_C\_V120 | ALIGNMENT\_TARGET | FOUND | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.2.0.md\#\[ANCHOR:CEXE-V120-INTERFACES\] Spartoi-OMOC\_SubP1-LITE+MVP\_Exe… |
| OMOC\_WP\_MASTER | NORMATIVE\_REGISTRY | FOUND | DOCLOC:/mnt/data/OMOC\_WP總表\_v4.0.1-r2.md\#(Contract Blocks Registry) OMOC\_WP總表\_v4.0.1-r2 |
| OMOC\_RBWI | ROUTE\_OUT (HOW) | FOUND | DOCLOC:/mnt/data/OMOC\_施工RBWI\_v4.0.1-r1.md\#\[ANCHOR:OMOC-RBWI-TOC\] OMOC\_施工RBWI\_v4.0.1-r1 |
| DEV\_RBWI | ROUTE\_OUT (HOW) | FOUND | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Dev RUNBOOK \+ WI\_ v2.1.0-r2.md\#\[ANCHOR:SOMOC-DEV-RBWI-V210R2-0-1-DOC\_META\] Spartoi-OMOC\_SubP1-LITE+MVP\_Dev… |
| OPS\_RBWI | ROUTE\_OUT (HOW) | FOUND | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Ops RUNBOOK \+ WI\_v2.1.0-r2.md\#\[ANCHOR:SOMOC-SUBP1MVP-OPS-S0-1-PREFLIGHT\] Spartoi-OMOC\_SubP1-LITE+MVP\_Ops… |
| OMOC\_RIP\_EXT | SUPPORT\_INDEX | FOUND | DOCLOC:/mnt/data/OMOC\_RIP\_外部資料.md\#A.2 治理邊界與 Fail-Closed 宣告 OMOC\_RIP\_外部資料 |
| OMOC\_RIP\_D/E/F | SUPPORT/ALIGNMENT (interfaces) | FOUND | DOCLOC:/mnt/data/OMOC\_RIP-E\_v1.1.0.md\#\[ANCHOR:RIPE-K-CLOSURE-MATRIX\] OMOC\_RIP-E\_v1.1.0 |
| MIP\_V220 | NORMATIVE\_ENTRY | MISSING | TT-MIP-MISSING-001 (see §10) |
| ARCH\_V810 | NORMATIVE (replay/failclosed details) | MISSING | TT-ARCH-MISSING-001 (see §10) |
| SUBP1\_BLUEPRINT | NORMATIVE (legacy refs) | MISSING | TT-SUBP1BP-MISSING-001 (see §10) |

---

\<a id="somoc-fp-6-alignment-map"\>\</a\>

# **(6) ALIGNMENT MAP（A/B/C Packs \+ 工程指南 \+ Package D WI）**

原則：只做「對齊/引用/映射」，不改寫對方 SSOT。evidence\_ptr：DOCLOC:/mnt/data/Package D — Factory Pack（執行工廠合冊 \_ OMOC-MVU 核心）\_撰寫\_規範工作指導書（WI）.md\#(9.2 “不得包含（禁區）”要寫進合冊的黑名單)

Package D — Factory Pack（執行工廠合冊…

| alignment\_target | interface\_point | factory\_pack\_statement | evidence\_ptr |
| ----- | ----- | ----- | ----- |
| 工程指南（Pkg D） | Package D 定義與邊界 | Factory Pack 只承載接口/產物形狀，不含 HOW | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_前端文檔到實作驗收\_工程指南.md\#\[\#sec3.4-pkg-d-factory\] Spartoi-OMOC\_SubP1-LITE+MVP\_Fac… |
| Package D WI | 必備路徑/檔案 | `.devcontainer/`, `.github/workflows/`, `scripts/`, `evidence/`, adapters/installer slots | DOCLOC:/mnt/data/Package D — Factory Pack（執行工廠合冊 \_ OMOC-MVU 核心）\_撰寫\_規範工作指導書（WI）.md\#(3) 必備路徑/檔案（這不是“發明新規範”...) Package D — Factory Pack（執行工廠合冊… |
| Package B (Control Plane) | schemas: tt / triplet / bundle / checks\_manifest / locator\_proof | 本包不得自創 schema；只引用其 schema registry | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Control Plane Pack\_v2.2.0.md\#(schemas/evidence\_schema) Spartoi-OMOC\_SubP1-LITE+MVP\_Con… |
| Package C (Execution) | handoff interfaces / TT export expectations | 工廠輸出不得與 Execution Pack handoff/TT/export 矛盾 | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.2.0.md\#\[ANCHOR:CEXE-V120-INTERFACES\] Spartoi-OMOC\_SubP1-LITE+MVP\_Exe… |
| Package A (Governance/Index) | TT / route-out / index discipline | 本包 TT 與 route-out 必可抽取；不可把 HOW 拉回正文 | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP \_Governance\_Index Pack\_v1.2.0.md\#\[ANCHOR:A-PACK-10-ROUTEOUT-GUIDE\] Spartoi-OMOC\_SubP1-LITE+MVP \_Go… |
| OMOC WP Master | required artifacts / gate registry | required\_artifacts\_minset 需與 WP Master 的 contract block 可對照 | DOCLOC:/mnt/data/OMOC\_WP總表\_v4.0.1-r2.md\#(Contract Blocks Registry) OMOC\_WP總表\_v4.0.1-r2 |

---

\<a id="somoc-fp-7-contracts"\>\</a\>

# **(7) FACTORY ARTIFACT CONTRACTS（核心：工廠輸出物的形狀契約）**

本章只描述「契約/形狀/欄位/位置/最小集合」。HOW 一律 route-out。evidence\_ptr：DOCLOC:/mnt/data/Package D — Factory Pack（執行工廠合冊 \_ OMOC-MVU 核心）\_撰寫\_規範工作指導書（WI）.md\#(9.2 “不得包含（禁區）”要寫進合冊的黑名單)

Package D — Factory Pack（執行工廠合冊…

## **7.1 devcontainer contract（環境固定化）**

**要求（僅在可定位時成立；否則 TT）**

* Repo **必須**存在 `.devcontainer/devcontainer.json`（及其必要的 Dockerfile/compose）。evidence\_ptr：DOCLOC:/mnt/data/Package D — Factory Pack（執行工廠合冊 \_ OMOC-MVU 核心）\_撰寫\_規範工作指導書（WI）.md\#(3) 必備路徑/檔案（這不是“發明新規範”...)  
   Package D — Factory Pack（執行工廠合冊…  
* devcontainer 細節規格屬 driftable facts，不可用 web 文字升格為 MUST；若需引用外部規格 → APPX-WEB 並 TT 綁定。evidence\_ptr：DOCLOC:/mnt/data/OMOC\_RIP\_外部資料.md\#A.2 治理邊界與 Fail-Closed 宣告  
   OMOC\_RIP\_外部資料

**最小可驗證輸出（工件）**

* `preflight_json_parse.log`（證明本包宣告之 JSON 可解析）  
* `preflight_locator_map.json`（本包引用 SSOT 的 locator map）  
  evidence\_ptr：DOCLOC:/mnt/data/Package D — Factory Pack（執行工廠合冊 \_ OMOC-MVU 核心）\_撰寫\_規範工作指導書（WI）.md\#(4.1) G0 — Preflight PASS（必過）  
   Package D — Factory Pack（執行工廠合冊…

## **7.2 workflow triggers contract（PR \+ merge\_group；同名回報）**

**接口聲明（不含 HOW）**

* 若 repo 啟用 merge queue，workflow trigger 需要覆蓋 `merge_group`；否則行為不確定且不得宣告 MQ-ready（SUPPORT-only → TT）。evidence\_ptr：DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_前端文檔到實作驗收\_工程指南.md\#\[\#sec4.2-merge-queue\]  
   Spartoi-OMOC\_SubP1-LITE+MVP\_Fac…  
* required checks 名稱在 PR 與 merge\_group 必須同名回報；canonical 名稱若無上游可定位表 → 只能以 TT 管理，不得硬寫 MUST。evidence\_ptr：DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Factory Pack\_v1.0.0\_審查報告.md\#F-FP-002  
   Spartoi-OMOC\_SubP1-LITE+MVP\_Fac…

**必備觀測產物（G1）**

* `checks_observed_pr.json`  
* `checks_observed_merge_group.json`（不可得 → TT）  
* `checks_diff.json`（空差異才可宣告 PASS）  
  evidence\_ptr：DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Factory Pack\_v1.1.0.md\#(5.2)  
   Spartoi-OMOC\_SubP1-LITE+MVP\_Fac…

## **7.3 Always-Report / Skip Hazard contract（避免 pending 卡死）**

**接口聲明（不含 HOW）**

* 工廠端 **必須**提供「workflow 靜態掃描」產物 `preflight_workflows_scan.json`，且 evidence\_index 必須引用它；缺任一 → FAIL\_CLOSED。evidence\_ptr：DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Factory Pack\_v1.1.0.md\#(6.3)  
   Spartoi-OMOC\_SubP1-LITE+MVP\_Fac…  
* Skip hazard（paths-ignore / filters）屬平台 driftable 行為：僅 SUPPORT-only → TT。evidence\_ptr：DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_前端文檔到實作驗收\_工程指南.md\#\[\#sec4.3-always-report\]  
   Spartoi-OMOC\_SubP1-LITE+MVP\_Fac…

## **7.4 verify harness contract（單一入口；Fail-Closed）**

工廠需提供一鍵入口（例如 `make verify` 或 `scripts/verify.sh`），其職責是：

1. 跑 gates（G0–G3）  
2. 產 Evidence Minset  
3. 生成 digest/index  
4. 給出 verdict  
   evidence\_ptr：DOCLOC:/mnt/data/Package D — Factory Pack（執行工廠合冊 \_ OMOC-MVU 核心）\_撰寫\_規範工作指導書（WI）.md\#(6.3 必修 3：Evidence Minset（五件套）落地到 repo（Fail-Closed）)  
    Package D — Factory Pack（執行工廠合冊…

## **7.5 Evidence outputs contract（Triplet+Bundle+Index+Verdict+Replay）**

**最小集合（本包不發明第二套命名；只要求存在與可驗證）**

* `evidence_triplet.json`（或等價）  
* `evidence_bundle.(zip|tar|txt)`（或等價）  
* `evidence_index.json`  
* `verdict.json`  
* `replay_digest.json`  
  缺任一 → FAIL\_CLOSED。evidence\_ptr：DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-REQ-EVID-TRIPLET\]  
   Spartoi-OMOC\_SubP1-LITE+MVP\_Fac…

**Replay 依據**

* Replay 的上游定位點依賴 ARCH（本庫缺件 → TT-REPLAY-LOC-001）。evidence\_ptr：DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Factory Pack\_v1.1.0.md\#(5.4)  
   Spartoi-OMOC\_SubP1-LITE+MVP\_Fac…

## **7.6 Directory Adapter contract（WSP ↔ OMOC；禁止人腦搬運）**

* 必須提供 `acceptance_manifest.json`（最小欄位表）或等價 adapter，供 verify harness 做 `path+sha256` 等價比對；diff 非空 → FAIL\_CLOSED。evidence\_ptr：DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Factory Pack\_v1.1.0.md\#\[ANCHOR:FP-7-DIR-ADAPTER\]  
   Spartoi-OMOC\_SubP1-LITE+MVP\_Fac…  
* 若上游未提供 schema：不得自創 normative schema；以 TT-ADAPTER-SCHEMA-001 綁定。evidence\_ptr：DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Factory Pack\_v1.1.0.md\#(7.2)  
   Spartoi-OMOC\_SubP1-LITE+MVP\_Fac…

## **7.7 Checks manifest contract（expected/observed/diff；可機械解析）**

* `checks_manifest.json`（或等價）必須是有效 JSON；否則屬假綠風險 → TT-FP-P0-001。evidence\_ptr：DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Factory Pack\_v1.0.0\_審查報告.md\#F-FP-001  
   Spartoi-OMOC\_SubP1-LITE+MVP\_Fac…  
* checks\_manifest 之 expected 不得憑空發明；若上游 canonical 表不可定位 → 維持 TT-FP-P0-002。evidence\_ptr：DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Factory Pack\_v1.0.0\_審查報告.md\#F-FP-002  
   Spartoi-OMOC\_SubP1-LITE+MVP\_Fac…

---

\<a id="somoc-fp-8-anti-regression"\>\</a\>

# **(8) SUPERSEDENCE \+ ANTI-REGRESSION MAP（舊版→新版可替代性證明）**

## **8.1 Supersedence scope（取代範圍）**

* 本版取代 v1.1.0 / v1.0.0 的 **工廠接口與工件契約**：以本文件 (7) 合約章節 \+ (11) schema registry \+ (10) TT/撤銷條件 作為唯一工作依據。evidence\_ptr：DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Factory Pack\_v1.1.0\_審查報告.md\#(3.5 實質內容判定示例)  
   Spartoi-OMOC\_SubP1-LITE+MVP\_Fac…

## **8.2 Anti-Regression Map（legacy\_anchor/topic → new\_anchor/topic → coverage\_status → evidence\_ptr）**

| legacy\_anchor\_or\_topic | new\_anchor\_or\_topic | coverage\_status | evidence\_ptr |
| ----- | ----- | ----- | ----- |
| FP-6-CI-CONTRACT（v1.0/1.1） | (7.2)(7.3) workflow triggers \+ always-report contracts | FULL | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Factory Pack\_v1.1.0.md\#\[ANCHOR:FP-6-CI-CONTRACT\] Spartoi-OMOC\_SubP1-LITE+MVP\_Fac… |
| APPX-C TT（v1.1） | (10) TT REGISTER（CR\_OPEN=0） | FULL | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Factory Pack\_v1.0.0\_審查報告.md\#R-03 Spartoi-OMOC\_SubP1-LITE+MVP\_Fac… |
| checks\_manifest 污染修補（v1.0 audit） | (7.7) checks\_manifest contract \+ TT-FP-P0-001 | FULL | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Factory Pack\_v1.0.0\_審查報告.md\#F-FP-001 Spartoi-OMOC\_SubP1-LITE+MVP\_Fac… |
| Directory Adapter（v1.0/1.1） | (7.6) Directory Adapter contract | FULL | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Factory Pack\_v1.1.0.md\#\[ANCHOR:FP-7-DIR-ADAPTER\] Spartoi-OMOC\_SubP1-LITE+MVP\_Fac… |
| WPMaster 路徑漂移（v1.1 audit） | (5) inventory uses OMOC\_WP總表\_v4.0.1-r2 | CLOSED\_BY\_REPOINT | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Factory Pack\_v1.1.0\_審查報告.md\#F-FP110-003 Spartoi-OMOC\_SubP1-LITE+MVP\_Fac… |

---

\<a id="somoc-fp-9-closure"\>\</a\>

# **(9) REVIEW FIX INTEGRATION（Closure Matrix：審查報告逐條結案）**

規則：不得遺漏任何 finding / TT / risk / missing doc / revoke condition / test track。evidence\_ptr：DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Factory Pack\_v1.1.0\_審查報告.md\#(4) AUDIT\_CHECKLIST

Spartoi-OMOC\_SubP1-LITE+MVP\_Fac…

## **9.1 v1.1.0 審查報告（Findings）逐條結案（最小閉環）**

| item\_id | issue | fix\_action | fix\_type | landing\_anchor | evidence\_ptr | status |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| F-FP110-001 | Governance\_Index v1.2.0 缺指定路徑輸入 | 本版 Doc Inventory 已 FOUND 並給 locator | ALIGNMENT\_FIX | (5) | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP \_Governance\_Index Pack\_v1.2.0.md\#\[ANCHOR:A-PACK-12-TT-GUIDE\] Spartoi-OMOC\_SubP1-LITE+MVP\_Fac… | CLOSED |
| F-FP110-002 | Control Plane Pack v2.2.0 缺指定路徑輸入 | 本版 Doc Inventory 已 FOUND 並給 locator | ALIGNMENT\_FIX | (5) | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Control Plane Pack\_v2.2.0.md\#(schemas/evidence\_schema) Spartoi-OMOC\_SubP1-LITE+MVP\_Con… | CLOSED |
| F-FP110-003 | WP 總表路徑漂移 | 以實際存在檔名重指（OMOC\_WP總表\_v4.0.1-r2） | DOCLOC\_REPOINT | (5) | DOCLOC:/mnt/data/OMOC\_WP總表\_v4.0.1-r2.md\#(TOC) OMOC\_WP總表\_v4.0.1-r2 | CLOSED |
| F-FP110-004 | required checks canonical 上游可定位表仍缺 | 維持 TT；本包只提供 expected/observed/diff 機制 | TT\_CARRY | (10) | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Factory Pack\_v1.0.0\_審查報告.md\#F-FP-002 Spartoi-OMOC\_SubP1-LITE+MVP\_Fac… | TT |
| F-FP110-005 | merge\_group 行為 SUPPORT-only；需 MQ probe 才能撤銷 | 維持 TT-WEB-MQ-001；APPX-WEB 由後續填入 | TT\_CARRY | (10)(12) | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Factory Pack\_v1.1.0.md\#(6.2) Spartoi-OMOC\_SubP1-LITE+MVP\_Fac… | TT |
| F-FP110-006 | skip hazard 需 workflows\_scan 產物閉環 | 維持 TT-FP-P1-005；本包只規定產物形狀與 FAIL\_CLOSED 門檻 | TT\_CARRY | (7)(10) | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Factory Pack\_v1.1.0.md\#(6.3) Spartoi-OMOC\_SubP1-LITE+MVP\_Fac… | TT |

## **9.2 v1.0.0 審查報告（核心 Findings）逐條結案（不遺漏）**

| item\_id | issue | fix\_action | fix\_type | landing\_anchor | evidence\_ptr | status |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| F-FP-001 | checks\_manifest 範例污染導致不可解析 | 維持 TT-FP-P0-001（需 repo/文件層示例與 parser gate 驗證） | TT\_CARRY | (10) | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Factory Pack\_v1.0.0\_審查報告.md\#F-FP-001 Spartoi-OMOC\_SubP1-LITE+MVP\_Fac… | TT |
| F-FP-002 | canonical check name 上游依據不可定位 | 維持 TT-FP-P0-002 | TT\_CARRY | (10) | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Factory Pack\_v1.0.0\_審查報告.md\#F-FP-002 Spartoi-OMOC\_SubP1-LITE+MVP\_Fac… | TT |
| F-FP-003 | TT register JSON 不可解析 | 本版 TT Register 為可抽取表格；但“repo 產物 JSON”仍需實跑驗證 | PARTIAL\_CLOSE | (10)(13) | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Factory Pack\_v1.0.0\_審查報告.md\#F-FP-003 Spartoi-OMOC\_SubP1-LITE+MVP\_Fac… | TEMP\_CLOSED |
| F-FP-011 | adapter schema 未上游定義 | 維持 TT-ADAPTER-SCHEMA-001 | TT\_CARRY | (10) | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Factory Pack\_v1.0.0\_審查報告.md\#F-FP-011 Spartoi-OMOC\_SubP1-LITE+MVP\_Fac… | TT |

---

\<a id="somoc-fp-10-tt"\>\</a\>

# **(10) TT REGISTER（TEST\_TRACK 清單；CR\_OPEN=0）**

本表為本文件唯一 TT 來源；CR\_OPEN 必須為 0。evidence\_ptr：DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Factory Pack\_v1.0.0\_審查報告.md\#(5) TT\_REGISTER

Spartoi-OMOC\_SubP1-LITE+MVP\_Fac…

| tt\_id | title | status | owner\_role | reason | retest\_method | close\_conditions | revoke\_condition | evidence\_locator |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| TT-FP-P0-001 | checks\_manifest schema 非有效 JSON（假綠風險） | TEMP\_CLOSED→TEST\_TRACK | Dev | v1.0 audit 指出 APPX-B 污染字串破壞機械比對 | parser/jq 驗證樣例 \+ repo 實跑產物 | checks\_manifest.json 可解析且欄位完整 | 任一 parser/jq 失敗即撤銷 | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Factory Pack\_v1.0.0\_審查報告.md\#F-FP-001 Spartoi-OMOC\_SubP1-LITE+MVP\_Fac… |
| TT-FP-P0-002 | required checks canonical 上游依據不可定位 | TEMP\_CLOSED→TEST\_TRACK | Control-Plane Owner | No-Source-No-Norm；名稱漂移會卡 MQ | 產 expected/observed/diff（PR+merge\_group） | 上游提供可定位 canonical 表；diff empty | canonical 表缺失或 diff 非空即撤銷 | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Factory Pack\_v1.0.0\_審查報告.md\#F-FP-002 Spartoi-OMOC\_SubP1-LITE+MVP\_Fac… |
| TT-FP-P0-003 | TT register（機械可讀）需 repo 產物驗證 | TEMP\_CLOSED→TEST\_TRACK | Auditor | “CR\_OPEN=0”需可機械證明 | 產出可解析 TT export /一致性檢 | tt\_count 與輸出一致且可解析 | 任一不一致即撤銷 | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Factory Pack\_v1.0.0\_審查報告.md\#R-03 Spartoi-OMOC\_SubP1-LITE+MVP\_Fac… |
| TT-FP-P0-004 | 最小集表格可抽取性（structure hygiene） | TEMP\_CLOSED→TEST\_TRACK | Dev | 表格污染會讓工具抽取失敗 | markdown table extractor / lint | 表格可抽取且覆蓋率=100% | extractor 失敗即撤銷 | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Factory Pack\_v1.0.0\_審查報告.md\#F-FP-004 Spartoi-OMOC\_SubP1-LITE+MVP\_Fac… |
| TT-FP-P1-005 | Always-Report 需 workflows\_scan 產物閉環 | TEMP\_CLOSED→TEST\_TRACK | Dev | 無掃描證據就無法防 skip hazard | 產 preflight\_workflows\_scan.json \+ index 引用 | scan 產物存在且 index 引用；缺→FAIL\_CLOSED | 任一缺失即撤銷 | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Factory Pack\_v1.1.0.md\#(6.3) Spartoi-OMOC\_SubP1-LITE+MVP\_Fac… |
| TT-FP-P1-006 | Directory Adapter 等價比對需上游 schema 或穩定欄位表 | TEMP\_CLOSED→TEST\_TRACK | Control-Plane Owner | adapter schema 未由上游明確定義 | verify harness 做 path+sha256 diff | schema 或欄位表由上游固化可定位 | schema 變更或不可定位即撤銷 | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Factory Pack\_v1.0.0\_審查報告.md\#TT-FP-P1-006 Spartoi-OMOC\_SubP1-LITE+MVP\_Fac… |
| TT-WEB-MQ-001 | merge queue / merge\_group 行為（漂移性）需雙來源 SUPPORT-only 固化 | TEMP\_CLOSED→TEST\_TRACK | Ops | Web 行為會變；必須由 MQ probe 本地證據撤銷 | 產 checks\_observed\_merge\_group.json \+ checks\_diff.json | merge\_group 可觀測且 diff empty | 觀測不可得/不一致即撤銷 | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Factory Pack\_v1.1.0.md\#(6.2) Spartoi-OMOC\_SubP1-LITE+MVP\_Fac… |
| TT-WEB-SKIP-HAZARD-001 | skip hazard（filters/paths-ignore）漂移性 | TEMP\_CLOSED→TEST\_TRACK | Dev | required workflow pending 風險 | workflows\_scan.json 靜態掃描 | scan 命中=0 或有補救策略證據 | 命中且無補救即撤銷 | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Factory Pack\_v1.1.0.md\#(6.3) Spartoi-OMOC\_SubP1-LITE+MVP\_Fac… |
| TT-WEB-DEVCONTAINERS-001 | Dev Containers 規格漂移（SUPPORT-only） | TEMP\_CLOSED→TEST\_TRACK | Dev | spec 會演進；不可寫死 | preflight 解析報告 \+ 工具鏈一致性 | 解析成功且無 unknown keys | 解析失敗即撤銷 | DOCLOC:/mnt/data/OMOC\_RIP\_外部資料.md\#E.1 Skills 實體目錄與檔案規範 (AgentSkills Standard) OMOC\_RIP\_外部資料 |
| TT-ADAPTER-SCHEMA-001 | acceptance\_manifest.json schema 未上游定義 | TEMP\_CLOSED→TEST\_TRACK | Control-Plane Owner | 禁止自創 schema | 上游 schema registry 出現後對齊 | schema 可定位且可驗證 | schema 不可定位即撤銷 | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Factory Pack\_v1.0.0\_審查報告.md\#F-FP-011 Spartoi-OMOC\_SubP1-LITE+MVP\_Fac… |
| TT-MQ-PROBE-UNAVAIL-001 | MQ probe 權限/方案不支援導致 UNAVAILABLE | TEMP\_CLOSED→TEST\_TRACK | Ops | 平台/權限可變 | 取得必要 payload/check\_runs/rulesets\_ref | 能產出三件並入 evidence | 任一缺失即撤銷 | DOCLOC:/mnt/data/Package D — Factory Pack（執行工廠合冊 \_ OMOC-MVU 核心）\_撰寫\_規範工作指導書（WI）.md\#(6.1 必修 1：Merge Queue / merge\_group 的“假綠”防線) Package D — Factory Pack（執行工廠合冊… |
| TT-DEV-GH-LOC-001 | Dev “GitHub Control Plane” 上游定位缺件 | TEMP\_CLOSED→TEST\_TRACK | Doc Maintainer | v1.1 引用 dev RB v8.1.1 檔案庫缺 | 改以 Dev RBWI v2.1.0-r2 route-out | route-out 可定位且一致 | 無法定位即撤銷 | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Dev RUNBOOK \+ WI\_ v2.1.0-r2.md\#\[ANCHOR:SOMOC-DEV-RBWI-V210R2-0-1-DOC\_META\] Spartoi-OMOC\_SubP1-LITE+MVP\_Dev… |
| TT-REPLAY-LOC-001 | Replay SSOT（ARCH）缺件 | TEMP\_CLOSED→TEST\_TRACK | SSOT Librarian | ARCH 未在檔案庫 | 補齊 ARCH 或提供可定位 replay 條文 | ARCH 可定位後更新引用 | 未補齊即維持 TT | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Factory Pack\_v1.1.0.md\#(5.4) Spartoi-OMOC\_SubP1-LITE+MVP\_Fac… |
| TT-DOCLOC-EG-001 | 工程指南部分 locator 需二次定位校驗 | TEMP\_CLOSED→TEST\_TRACK | Auditor | 需確保 anchor/定位穩定 | 以 anchor 直指 \+ 內容驗證 | 兩處定位一致且可引用 | 任一失敗即撤銷 | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_前端文檔到實作驗收\_工程指南.md\#\[\#sec3.4-pkg-d-factory\] Spartoi-OMOC\_SubP1-LITE+MVP\_Fac… |
| TT-DOCLOC-WI-001 | Package D WI locator 稳定性校验 | TEMP\_CLOSED→TEST\_TRACK | Auditor | WI 為硬依據 | 以段落標題定位 \+ 內容驗證 | 定位穩定且可引用 | 任一失敗即撤銷 | DOCLOC:/mnt/data/Package D — Factory Pack（執行工廠合冊 \_ OMOC-MVU 核心）\_撰寫\_規範工作指導書（WI）.md\#(3) 必備路徑/檔案（這不是“發明新規範”...) Package D — Factory Pack（執行工廠合冊… |
| TT-DOCLOC-WPM-002 | WP Master 檔名別名漂移（WP總表 vs 實作+WP總表） | CLOSED | Docs-as-Code Engineer | v1.1 audit 指出漂移；本版已重指 | n/a | n/a | n/a | DOCLOC:/mnt/data/OMOC\_WP總表\_v4.0.1-r2.md\#(TOC) OMOC\_WP總表\_v4.0.1-r2 |
| TT-ALIGN-A-001 | 與 Package A route-out/TT 對齊可機證 | CLOSED | Cross-Pack Maintainer | v1.1 時缺單檔；本版已 FOUND | n/a | n/a | n/a | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP \_Governance\_Index Pack\_v1.2.0.md\#\[ANCHOR:A-PACK-10-ROUTEOUT-GUIDE\] Spartoi-OMOC\_SubP1-LITE+MVP \_Go… |
| TT-ALIGN-B-001 | 與 Package B schema 對齊可機證 | CLOSED | Cross-Pack Maintainer | v1.1 時缺單檔；本版已 FOUND | n/a | n/a | n/a | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Control Plane Pack\_v2.2.0.md\#(schemas/evidence\_schema) Spartoi-OMOC\_SubP1-LITE+MVP\_Con… |

---

\<a id="somoc-fp-11-schemas"\>\</a\>

# **(11) APPX: CHECKS / MANIFESTS / SCHEMAS REGISTRY（只做引用/形狀校验）**

本包不得自創 schema；僅列出上游 schema 與其定位。evidence\_ptr：DOCLOC:/mnt/data/Package D — Factory Pack（執行工廠合冊 \_ OMOC-MVU 核心）\_撰寫\_規範工作指導書（WI）.md\#(9.2 “不得包含（禁區）”要寫進合冊的黑名單)

Package D — Factory Pack（執行工廠合冊…

| schema\_name | ssot\_owner | locator | usage\_in\_factory\_pack |
| ----- | ----- | ----- | ----- |
| tt\_schema.json | Package B (Control Plane) | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Control Plane Pack\_v2.2.0.md\#(schemas/tt\_schema.json) Spartoi-OMOC\_SubP1-LITE+MVP\_Con… | TT export / TT register shape alignment (no invention) |
| checks\_manifest.schema.json | Package B (Control Plane) | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Control Plane Pack\_v2.2.0.md\#(schemas/evidence\_schema/checks\_manifest.schema.json) Spartoi-OMOC\_SubP1-LITE+MVP\_Con… | checks\_manifest validation target (TT-FP-P0-001 until verified) |
| triplet.schema.json | Package B (Control Plane) | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Control Plane Pack\_v2.2.0.md\#(schemas/evidence\_schema/triplet.schema.json) Spartoi-OMOC\_SubP1-LITE+MVP\_Con… | evidence\_triplet shape (SRS requires triplet) |
| bundle.schema.json | Package B (Control Plane) | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Control Plane Pack\_v2.2.0.md\#(schemas/evidence\_schema/bundle.schema.json) Spartoi-OMOC\_SubP1-LITE+MVP\_Con… | evidence\_bundle shape |
| verdict.schema.json | Package B (Control Plane) | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Control Plane Pack\_v2.2.0.md\#(schemas/evidence\_schema/verdict.schema.json) Spartoi-OMOC\_SubP1-LITE+MVP\_Con… | verdict output shape |

---

\<a id="somoc-fp-12-web"\>\</a\>

# **(12) APPX: WEB EVIDENCE（SUPPORT-only；雙來源；可撤銷）**

本附錄預設為空：未達「雙來源 \+ accessed\_at \+ revoke\_condition \+ TT 綁定」者，不得列入。evidence\_ptr：DOCLOC:/mnt/data/OMOC\_RIP\_外部資料.md\#A.1.2 雙重來源驗證 (Double Sourcing) 實施準則

OMOC\_RIP\_外部資料

\[\]  
---

\<a id="somoc-fp-13-self-audit"\>\</a\>

# **(13) SELF-AUDIT（機械可檢核的自我稽核表）**

| check\_id | check\_desc | pass\_criteria | observed | evidence\_ptr | verdict |
| ----- | ----- | ----- | ----- | ----- | ----- |
| SA-001 | 必含全部章節 (0)-(13) | TOC 可導航 | 本文件具 TOC | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Factory Pack\_v1.1.0\_審查報告.md\#(3.1 TOC/ANCHOR 掃描) Spartoi-OMOC\_SubP1-LITE+MVP\_Fac… | PASS |
| SA-002 | Scope-Lock：不含 HOW | route-out register 存在且禁區明示 | 本文件 §4.2/§4.3 | DOCLOC:/mnt/data/Package D — Factory Pack（執行工廠合冊 \_ OMOC-MVU 核心）\_撰寫\_規範工作指導書（WI）.md\#(9.2 “不得包含（禁區）”要寫進合冊的黑名單) Package D — Factory Pack（執行工廠合冊… | PASS |
| SA-003 | No-Source-No-Norm | 無 evidence\_ptr 的 MUST 皆 TT 化 | 以 §10 TT 收斂 | DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-FAIL-CLOSED-RULES\] Spartoi-OMOC\_SRS\_v8.1.0 | PASS |
| SA-004 | Cross-pack interface 不矛盾（A/B/C） | Alignment map 可定位 | §6 對齊表 | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Factory Pack\_v1.1.0\_審查報告.md\#(8) ALIGNMENT\_MATRIX Spartoi-OMOC\_SubP1-LITE+MVP\_Fac… | PASS |
| SA-005 | CR\_OPEN=0 | TT Register 中無 CR\_OPEN 欄位殘留且 TT 可抽取 | §10 | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Factory Pack\_v1.0.0\_審查報告.md\#(5) TT\_REGISTER Spartoi-OMOC\_SubP1-LITE+MVP\_Fac… | PASS |
| SA-006 | Web evidence policy 正確（SUPPORT-only） | APPX-WEB 為空且以 TT 承接 | §12 空陣列 | DOCLOC:/mnt/data/OMOC\_RIP\_外部資料.md\#A.2 治理邊界與 Fail-Closed 宣告 OMOC\_RIP\_外部資料 | PASS |
| SA-007 | Schema 不自創 | schema registry 只引用上游 | §11 | DOCLOC:/mnt/data/Package D — Factory Pack（執行工廠合冊 \_ OMOC-MVU 核心）\_撰寫\_規範工作指導書（WI）.md\#(9.2 “不得包含（禁區）”要寫進合冊的黑名單) Package D — Factory Pack（執行工廠合冊… | PASS |
| SA-008 | Closure Matrix 不遺漏（至少覆蓋 v1.1.0 / v1.0.0 核心項） | §9 有逐條結案 | §9.1/§9.2 | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Factory Pack\_v1.0.0\_審查報告.md\#(4) FINDINGS\_LEDGER Spartoi-OMOC\_SubP1-LITE+MVP\_Fac… | TEMP\_CLOSED (需以審查報告全量 finding\_id 逐條核對；不足者不得宣告 PASS) |

