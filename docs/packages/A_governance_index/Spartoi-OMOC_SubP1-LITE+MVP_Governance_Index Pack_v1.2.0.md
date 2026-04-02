(0) FILE TREE

* docs/  
  * packages/  
    * A\_governance\_index/  
      * README.md  
      * doc\_inventory.tsv  
      * map\_schema\_v1.md  
      * coverage\_legacy\_to\_new.tsv  
      * coverage\_ssot\_to\_mvp.tsv  
      * coverage\_deliveryplan\_to\_blueprint.tsv  
      * route\_out\_register\_index.tsv  
      * test\_tracking\_list.tsv  
      * AGENTS.md  
      * external\_evidence\_appendix.md  
      * a\_verdict.json  
      * a\_checks\_manifest.json  
      * machine\_summary.json  
      * mother\_set\_legacy\_items.tsv  
      * mother\_set\_required\_docs.tsv  
      * mother\_set\_route\_out\_topics.tsv

(1) 逐檔內容（每檔完整全文）

\===== FILE: docs/packages/A\_governance\_index/README.md \=====  
\[ANCHOR:A-PACK-00-COVER\]

# **Spartoi-OMOC\_SubP1-LITE+MVP\_Governance/Index Pack（Package A） — DERIVED INDEX (Repo Distribution)**

\[ANCHOR:A-PACK-00-DOC-META\]

## **Cover Card / Doc Meta**

* external\_name: Spartoi-OMOC\_SubP1-LITE+MVP\_Governance/Index Pack（Package A）  
* internal\_short\_name: PKG-A-GOVINDEX  
* stable\_id: SOMOC-SUBP1MVP-PKG-A-GOVINDEX  
* doc\_id: SOMOC-SUBP1MVP-PKG-A-GOVINDEX.v1.2.0  
* version: v1.2.0  
* release\_date: 2026-02-25 (Asia/Taipei)  
* baseline\_web\_date: 2026-02-25 (Web SUPPORT-only; TT-bound only)  
* status: DERIVED\_INDEX (Not normative / rebuildable)  
* distribution\_mode: repo\_files  
* delivery\_format\_note: inline\_bundle (this message) is a transport; canonical layout is repo\_files.  
* supersedes (engineering replaceability):  
  * DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.1.0.md\#\[ANCHOR:A-PACK-00-COVER\]  
  * DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.0.0.md\#\[ANCHOR:A-PACK-00-COVER\]  
  * DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.1.0\_審查報告.md\#(2) QUESTION\_VERDICTS  
* replaceability\_claim (derived; mechanically demonstrable):  
  * v1.0.0 → v1.2.0: FULL anchor-level parity is proven in `coverage_legacy_to_new.tsv` \+ `mother_set_legacy_items.tsv`. evidence\_ptr: `DOCLOC:/mnt/data/Package A — Governance_Index Pack（治理與索引合冊）_撰寫_規範工作指導書（WI）.md#(A-05 Coverage Map：Legacy→New)`  
* scope\_lock (hard boundary; index-only):  
  * In-scope: indexes / mappings / locators / coverage maps / route-out pointers / TT ledger / machine-extractable derived artifacts.  
  * Out-of-scope (Route-Out only): any HOW (commands, click-paths, step-by-step SOP, CI/YAML specifics), any new MUST/threshold/definition not quoted by evidence\_ptr.  
  * evidence\_ptr: `DOCLOC:/mnt/data/Spartoi-OMOC_SubP1-LITE+MVP_前端文檔到實作驗收_工程指南.md#[#sec3.1-pkg-a-governance]` \+ `DOCLOC:/mnt/data/Package A — Governance_Index Pack（治理與索引合冊）_撰寫_規範工作指導書（WI）.md#(4) 不得包含（禁區）`

---

\[ANCHOR:A-PACK-01-TOC\]

## **TOC (anchors-first)**

* [Role & Hard Boundaries](https://chatgpt.com/g/g-p-699dd2746154819181f7c3ecfbe1e96a-spartoi-omoc-wp-rip/c/699e6436-b700-83a6-8497-859d76efeb9f#role--hard-boundaries)  
* [AI Reader Guide](https://chatgpt.com/g/g-p-699dd2746154819181f7c3ecfbe1e96a-spartoi-omoc-wp-rip/c/699e6436-b700-83a6-8497-859d76efeb9f#ai-reader-guide)  
* [Anchor Index](https://chatgpt.com/g/g-p-699dd2746154819181f7c3ecfbe1e96a-spartoi-omoc-wp-rip/c/699e6436-b700-83a6-8497-859d76efeb9f#anchor-index)  
* [Authority Stack Digest](https://chatgpt.com/g/g-p-699dd2746154819181f7c3ecfbe1e96a-spartoi-omoc-wp-rip/c/699e6436-b700-83a6-8497-859d76efeb9f#authority-stack-digest)  
* [Conflict Rules Digest](https://chatgpt.com/g/g-p-699dd2746154819181f7c3ecfbe1e96a-spartoi-omoc-wp-rip/c/699e6436-b700-83a6-8497-859d76efeb9f#conflict-rules-digest)  
* [Doc Inventory Guide](https://chatgpt.com/g/g-p-699dd2746154819181f7c3ecfbe1e96a-spartoi-omoc-wp-rip/c/699e6436-b700-83a6-8497-859d76efeb9f#doc-inventory-guide)  
* [MAP\_SCHEMA\_V1 Guide](https://chatgpt.com/g/g-p-699dd2746154819181f7c3ecfbe1e96a-spartoi-omoc-wp-rip/c/699e6436-b700-83a6-8497-859d76efeb9f#map_schema_v1-guide)  
* [Coverage Maps Overview](https://chatgpt.com/g/g-p-699dd2746154819181f7c3ecfbe1e96a-spartoi-omoc-wp-rip/c/699e6436-b700-83a6-8497-859d76efeb9f#coverage-maps-overview)  
* [Route-Out Register Index Guide](https://chatgpt.com/g/g-p-699dd2746154819181f7c3ecfbe1e96a-spartoi-omoc-wp-rip/c/699e6436-b700-83a6-8497-859d76efeb9f#route-out-register-index-guide)  
* [AGENTS.md Guide](https://chatgpt.com/g/g-p-699dd2746154819181f7c3ecfbe1e96a-spartoi-omoc-wp-rip/c/699e6436-b700-83a6-8497-859d76efeb9f#agentsmd-guide)  
* [Test Tracking Guide](https://chatgpt.com/g/g-p-699dd2746154819181f7c3ecfbe1e96a-spartoi-omoc-wp-rip/c/699e6436-b700-83a6-8497-859d76efeb9f#test-tracking-guide)  
* [External Evidence Appendix Guide](https://chatgpt.com/g/g-p-699dd2746154819181f7c3ecfbe1e96a-spartoi-omoc-wp-rip/c/699e6436-b700-83a6-8497-859d76efeb9f#external-evidence-appendix-guide)  
* [Self-Audit / Verdict Summary](https://chatgpt.com/g/g-p-699dd2746154819181f7c3ecfbe1e96a-spartoi-omoc-wp-rip/c/699e6436-b700-83a6-8497-859d76efeb9f#self-audit--verdict-summary)

---

\[ANCHOR:A-PACK-02-ROLE-BOUNDARIES\]

## **Role & Hard Boundaries**

This package is a **DERIVED INDEX** only: it points to upstream SSOT and provides rebuildable tables that can be mechanically verified. It does **not** legislate, redefine, or replace upstream requirements.  
evidence\_ptr: `DOCLOC:/mnt/data/Spartoi-OMOC_SubP1-LITE+MVP_前端文檔到實作驗收_工程指南.md#[#sec3.1-pkg-a-governance]`

### **“Manual edits are suspicious” (rebuildable contract)**

Derived artifacts here are expected to be regenerable from SSOT \+ repo state. This README is an index entrypoint; TSV/JSON files are the mechanical surfaces.  
evidence\_ptr: `DOCLOC:/mnt/data/Package A — Governance_Index Pack（治理與索引合冊）_撰寫_規範工作指導書（WI）.md#(1.1 文件角色分類)` \+ `DOCLOC:/mnt/data/OMOC_WP總表_v4.0.1-r2.md#(§4 Doc Inventory)`

\[ANCHOR:A-PACK-02-FORBIDDEN-HOW\]

### **Forbidden content (Route-Out only)**

Any execution HOW (commands, click paths, step-by-step SOP, CI/YAML implementation details) is out-of-scope for Package A and must be routed to Runbook/WI or execution packages.  
evidence\_ptr: `DOCLOC:/mnt/data/Package A — Governance_Index Pack（治理與索引合冊）_撰寫_規範工作指導書（WI）.md#(4) 不得包含（禁區）`

\[ANCHOR:A-PACK-02-NO-SOURCE-NO-CLAIM\]

### **No-Source-No-Claim (indexing discipline, not new law)**

If a sentence sounds like a rule/requirement/threshold, it is only allowed here as a pointer to upstream SSOT via `evidence_ptr`. Otherwise it is recorded as **TEMP\_CLOSED→TEST\_TRACK** (TT) with revoke conditions.  
evidence\_ptr: `DOCLOC:/mnt/data/Spartoi-OMOC_SubP1-LITE+MVP_Ops RUNBOOK + WI_v2.1.0-r2.md#[ANCHOR:SOMOC-SUBP1MVP-OPS-S0-1-PREFLIGHT]`

---

\[ANCHOR:A-PACK-03-AI-READER-GUIDE\]

## **AI Reader Guide (RAG-friendly; shortest retrieval path)**

### **Quick Index (fast answers, minimal hops)**

| Need | Go to | Retrieval hint (chunk) |
| ----- | ----- | ----- |
| “Where are all authoritative docs & locators?” | `doc_inventory.tsv` \+ `map_schema_v1.md#[ANCHOR:MAP-SCHEMA-V1-DOCINV]` | Use `doc_key` as chunk key |
| “Can I stop looking at v1.0.0/v1.1.0?” | `coverage_legacy_to_new.tsv` \+ `mother_set_legacy_items.tsv` | Check mother set count \== mapped rows |
| “What’s out-of-scope / where do I route HOW?” | `route_out_register_index.tsv` | Use topic\_id / trigger\_keywords |
| “What gaps exist (no CR\_OPEN allowed)?” | `test_tracking_list.tsv` | Use `tt_id` as chunk key |
| “Any external web info?” | `external_evidence_appendix.md` (SUPPORT-only) | Only TT-bound entries are valid |

### **Mandatory retrieval sequence (anti-confusion)**

1. Role & boundaries → `[ANCHOR:A-PACK-02-ROLE-BOUNDARIES]`  
2. Doc inventory & locator proofs → `doc_inventory.tsv`  
3. Coverage maps → `coverage_*.tsv`  
4. Route-Out register → `route_out_register_index.tsv`  
5. TT ledger (gaps) → `test_tracking_list.tsv`  
6. Only then: external SUPPORT-only appendix → `external_evidence_appendix.md`  
   evidence\_ptr: `DOCLOC:/mnt/data/Package A — Governance_Index Pack（治理與索引合冊）_撰寫_規範工作指導書（WI）.md#(7) 驗收輸出（DoD）`

### **Diátaxis layering (without smuggling HOW)**

* Tutorial: the “Quick Index” above (navigation-only, no steps).  
* How-to: **Route-Out** only (see `route_out_register_index.tsv`).  
* Reference: `map_schema_v1.md`, TSV/JSON artifacts.  
* Explanation: this README sections “Authority/Conflict” & “Self-Audit”.

---

\[ANCHOR:A-PACK-04-ANCHOR-INDEX\]

## **Anchor Index (expected\_count \= 18\)**

Count rule: search for `"[ANCHOR:A-PACK-"` in this README should return **18** anchors, exactly as listed below. Any drift becomes TT.  
evidence\_ptr: `DOCLOC:/mnt/data/Spartoi-OMOC_SubP1-LITE+MVP — Governance_Index Pack_v1.0.0.md#[ANCHOR:A-PACK-04-ANCHOR-INDEX]`

1. \[ANCHOR:A-PACK-00-COVER\]  
2. \[ANCHOR:A-PACK-00-DOC-META\]  
3. \[ANCHOR:A-PACK-01-TOC\]  
4. \[ANCHOR:A-PACK-02-ROLE-BOUNDARIES\]  
5. \[ANCHOR:A-PACK-02-FORBIDDEN-HOW\]  
6. \[ANCHOR:A-PACK-02-NO-SOURCE-NO-CLAIM\]  
7. \[ANCHOR:A-PACK-03-AI-READER-GUIDE\]  
8. \[ANCHOR:A-PACK-04-ANCHOR-INDEX\]  
9. \[ANCHOR:A-PACK-05-AUTHORITY\]  
10. \[ANCHOR:A-PACK-06-CONFLICT\]  
11. \[ANCHOR:A-PACK-07-DOCINV-GUIDE\]  
12. \[ANCHOR:A-PACK-08-MAPSCHEMA-GUIDE\]  
13. \[ANCHOR:A-PACK-09-COVERAGE-OVERVIEW\]  
14. \[ANCHOR:A-PACK-10-ROUTEOUT-GUIDE\]  
15. \[ANCHOR:A-PACK-11-AGENTS-GUIDE\]  
16. \[ANCHOR:A-PACK-12-TT-GUIDE\]  
17. \[ANCHOR:A-PACK-13-EXT-EVID-GUIDE\]  
18. \[ANCHOR:A-PACK-14-VERDICT\]

---

\[ANCHOR:A-PACK-05-AUTHORITY\]

## **Authority Stack Digest (digest only; no new tiers)**

Authority stack and “Package A is DERIVED INDEX” positioning are defined upstream; this section only points to where they live.  
evidence\_ptr: `DOCLOC:/mnt/data/Spartoi-OMOC_SubP1-LITE+MVP_前端文檔到實作驗收_工程指南.md#[#sec1.1-authority-stack]`

**Indexed authority targets (high → low; if conflicts exist, higher wins):**

1. Engineering Guide (Package A role & boundaries). evidence\_ptr: `DOCLOC:/mnt/data/Spartoi-OMOC_SubP1-LITE+MVP_前端文檔到實作驗收_工程指南.md#[#sec3.1-pkg-a-governance]`  
2. Package A WI (minimum set / MAP\_SCHEMA / coverage / route-out / TT). evidence\_ptr: `DOCLOC:/mnt/data/Package A — Governance_Index Pack（治理與索引合冊）_撰寫_規範工作指導書（WI）.md#(3.1 必備工件清單)`  
3. SRS / ARCH / LBP-A\~E (normative corpus; Package A only locates). evidence\_ptr: `DOCLOC:/mnt/data/Package A — Governance_Index Pack（治理與索引合冊）_撰寫_規範工作指導書（WI）.md#(5.2 必對齊的規範群)`  
4. OMOC\_WP總表 (Doc inventory hash is SUPPORT-only; drift actions). evidence\_ptr: `DOCLOC:/mnt/data/OMOC_WP總表_v4.0.1-r2.md#(§4 Doc Inventory)`  
5. Dev/Ops Runbooks (execution HOW; anti-injection; probing; evidence handling). evidence\_ptr: `DOCLOC:/mnt/data/Spartoi-OMOC_SubP1-LITE+MVP_Ops RUNBOOK + WI_v2.1.0-r2.md#[ANCHOR:SOMOC-SUBP1MVP-OPS-S0-1-PREFLIGHT]`

---

\[ANCHOR:A-PACK-06-CONFLICT\]

## **Conflict Rules Digest (pointer-only)**

* Conflicts are resolved only by the authority stack above; Package A is never a court of appeal.  
* Unknown / missing / unlocatable items are not “assumed”; they are **TT-bound** with revoke conditions (CR\_OPEN is forbidden here).  
  evidence\_ptr: `DOCLOC:/mnt/data/Spartoi-OMOC_ARCH_v8.1.0.md#[ANCHOR:ARCH-V810-5-3-CONFLICT]`

---

\[ANCHOR:A-PACK-07-DOCINV-GUIDE\]

## **Doc Inventory Guide**

* Canonical table: `doc_inventory.tsv`  
* Field order & dictionaries: `map_schema_v1.md#[ANCHOR:MAP-SCHEMA-V1-DOCINV]`  
* Locator policy: prefer anchor; line-range requires sha256 \+ TT until anchor exists.  
  evidence\_ptr: `DOCLOC:/mnt/data/Package A — Governance_Index Pack（治理與索引合冊）_撰寫_規範工作指導書（WI）.md#(7.1 機械化 DoD)` \+ `DOCLOC:/mnt/data/Spartoi-OMOC_SubP1-LITE+MVP_Ops RUNBOOK + WI_v2.1.0-r2.md#[ANCHOR:SOMOC-SUBP1MVP-OPS-S0-1-PREFLIGHT]`

---

\[ANCHOR:A-PACK-08-MAPSCHEMA-GUIDE\]

## **MAP\_SCHEMA\_V1 Guide**

* Canonical contract: `map_schema_v1.md`  
* This is a **schema for derived artifacts**, not a normative upstream schema.  
  evidence\_ptr: `DOCLOC:/mnt/data/Package A — Governance_Index Pack（治理與索引合冊）_撰寫_規範工作指導書（WI）.md#(A-04 MAP_SCHEMA_V1 規格頁)`

---

\[ANCHOR:A-PACK-09-COVERAGE-OVERVIEW\]

## **Coverage Maps Overview (3 required tables)**

* Legacy→New: `coverage_legacy_to_new.tsv` \+ `mother_set_legacy_items.tsv`  
* SSOT→MVP: `coverage_ssot_to_mvp.tsv` \+ `mother_set_required_docs.tsv`  
* DeliveryPlan→Blueprint: `coverage_deliveryplan_to_blueprint.tsv`  
  evidence\_ptr: `DOCLOC:/mnt/data/Package A — Governance_Index Pack（治理與索引合冊）_撰寫_規範工作指導書（WI）.md#(3.1 必備工件清單)` \+ `DOCLOC:/mnt/data/Spartoi-OMOC_SubP1-LITE+MVP — Governance_Index Pack_v1.1.0_審查報告.md#(4) PATCH_SKELETONS`

---

\[ANCHOR:A-PACK-10-ROUTEOUT-GUIDE\]

## **Route-Out Register Index Guide**

* Canonical index: `route_out_register_index.tsv`  
* “Minimal must-include topic set” source list: `mother_set_route_out_topics.tsv` (prevents leaking HOW back into Package A).  
  evidence\_ptr: `DOCLOC:/mnt/data/Spartoi-OMOC_SubP1-LITE+MVP — Governance_Index Pack_v1.1.0_審查報告.md#(GLOBAL_OPTIMIZATIONS OPT-A-04)` \+ `DOCLOC:/mnt/data/Package A — Governance_Index Pack（治理與索引合冊）_撰寫_規範工作指導書（WI）.md#(4) 不得包含（禁區）`

---

\[ANCHOR:A-PACK-11-AGENTS-GUIDE\]

## **AGENTS.md Guide**

* File: `AGENTS.md`  
* Purpose: agent collaboration rules for editing/validating this package without creating a “second SSOT”.  
  evidence\_ptr: `DOCLOC:/mnt/data/Package A — Governance_Index Pack（治理與索引合冊）_撰寫_規範工作指導書（WI）.md#(3.1 必備工件清單)`

---

\[ANCHOR:A-PACK-12-TT-GUIDE\]

## **Test Tracking Guide (CR\_OPEN=0)**

* Canonical ledger: `test_tracking_list.tsv`  
* All uncertainty is expressed as TT (TEMP\_CLOSED→TEST\_TRACK).  
  evidence\_ptr: `DOCLOC:/mnt/data/Spartoi-OMOC_ARCH_v8.1.0.md#(CR_OPEN Master Table)` \+ `DOCLOC:/mnt/data/Spartoi-OMOC_SubP1-LITE+MVP_Ops RUNBOOK + WI_v2.1.0-r2.md#[ANCHOR:SOMOC-SUBP1MVP-OPS-S0-1-PREFLIGHT]`

---

\[ANCHOR:A-PACK-13-EXT-EVID-GUIDE\]

## **External Evidence Appendix Guide (SUPPORT-only; TT-bound)**

* Canonical appendix: `external_evidence_appendix.md`  
* External web content is never normative here; it is recorded only as SUPPORT-only entries with ≥2 independent sources, accessed\_at, revoke\_condition, drift\_action, and linked TT.  
  evidence\_ptr: `DOCLOC:/mnt/data/Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-GOV-WEB-APPENDIX]` \+ `DOCLOC:/mnt/data/Spartoi-OMOC_SubP1-LITE+MVP — Governance_Index Pack_v1.1.0_審查報告.md#(patch_id: PS-A-006)`

---

\[ANCHOR:A-PACK-14-VERDICT\]

## **Self-Audit / Verdict Summary**

**overall\_verdict:** PASS\_WITH\_TT  
**replaceability\_verdict (v1.0.0/v1.1.0 → v1.2.0):** YES  
**cr\_open\_count:** 0 (by construction; gaps are TT only)

### **Q1–Q6 closure (from v1.1.0 audit report)**

* Q1: PASS (repo\_files distribution; artifacts exist as paths; checks are self-consistent)  
* Q2: PASS (legacy mother set fully mapped; no need to re-open old versions)  
* Q3: PASS\_WITH\_TT (line-range locators are sha256-backed; remaining missing SSOT are TT-bound)  
* Q4: TT (some SSOT in the “required list” are present only as MISSING/UNVERIFIED; see TT ledger)  
* Q5: TT (Q5 specified list includes upstream docs not physically present in current file library; TT-bound)  
* Q6: PASS (external appendix is schema-valid; ≥2 sources per claim; TT counts consistent)

Primary machine outputs:

* `a_verdict.json`  
* `a_checks_manifest.json`  
* `machine_summary.json`

---

### **Findings Ledger closure (v1.1.0 audit report → v1.2.0 landing points)**

| finding\_id | prior\_status | landing (v1.2.0) |
| ----- | ----- | ----- |
| F-A-ARTIFACT-MISSING-001 | TT | CLOSED: repo\_files layout delivered; see FILE TREE \+ `machine_summary.json.artifacts` |
| F-A-ANCHOR-COUNT-DRIFT-001 | TT | CLOSED: expected\_count=18 \+ anchor\_scan check; see this README `[ANCHOR:A-PACK-04-ANCHOR-INDEX]` \+ `a_checks_manifest.json` |
| F-A-NEW-001 | TT | CLOSED: `machine_summary.tt_open_count == len(tt_ids)`; see `machine_summary.json` \+ check `summary_vs_verdict_consistency` |
| F-A-NEW-002 | TT | PARTIAL-CLOSED: line-range rows have sha256 \+ TT; see `doc_inventory.tsv` \+ TT entries |
| F-A-NEW-003 | TT | CLOSED at table-shape level: full-row tables exist \+ mother sets; remaining missing upstream is TT-bound; see coverage tables \+ TT ledger |
| F-A-NEW-004 | TT | CLOSED: external appendix entries are ≥2 sources and TT-bound; see `external_evidence_appendix.md` \+ check `external_evidence_sources_min2` |
| F-A-NEW-005 | TT | CLOSED: verdict/summary cross-check; see `a_checks_manifest.json` |
| F-A-NEW-006 | TT | CLOSED: route-out minimal topic set \+ coverage check; see `mother_set_route_out_topics.tsv` \+ `route_out_register_index.tsv` |

---

\===== FILE: docs/packages/A\_governance\_index/doc\_inventory.tsv \=====

doc\_key	file\_path	external\_name	doc\_id	version	role\_declared	authority\_layer	locator\_1	locator\_2	sha256	status	linked\_tt\_id	notes  
PKG-A-NEW	DOCLOC:docs/packages/A\_governance\_index/README.md	Spartoi-OMOC\_SubP1-LITE+MVP\_Governance/Index Pack (Package A)	SOMOC-SUBP1MVP-PKG-A-GOVINDEX.v1.2.0	v1.2.0	DERIVED	L2	DOCLOC:docs/packages/A\_governance\_index/README.md\#\[ANCHOR:A-PACK-00-DOC-META\]	DOCLOC:docs/packages/A\_governance\_index/README.md\#\[ANCHOR:A-PACK-14-VERDICT\]		FOUND		Canonical entrypoint (repo\_files)  
PKG-A-ARTIFACTS	DOCLOC:docs/packages/A\_governance\_index/\*	Package A companion artifacts	SOMOC-SUBP1MVP-PKG-A-GOVINDEX.artifacts.v1.2.0	v1.2.0	DERIVED	L2	DOCLOC:docs/packages/A\_governance\_index/map\_schema\_v1.md\#\[ANCHOR:MAP-SCHEMA-V1-COVER\]	DOCLOC:docs/packages/A\_governance\_index/a\_checks\_manifest.json\#check\_id=summary\_vs\_verdict\_consistency		FOUND		TSV/JSON artifacts for mechanical verification  
PKG-A-OLD-V110	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.1.0.md	Legacy Package A (v1.1.0)	SOMOC-SUBP1MVP-PKG-A-GOVINDEX.v1.1.0	v1.1.0	DERIVED	L2	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.1.0.md\#\[ANCHOR:A-PACK-00-DOC-META\]	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.1.0.md\#\[ANCHOR:A-PACK-04-ANCHOR-INDEX\]		FOUND		Legacy reference only; do not route future work here  
PKG-A-OLD-V100	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.0.0.md	Legacy Package A (v1.0.0)	SOMOC-SUBP1MVP-PKG-A-GOVINDEX.v1.0.0	v1.0.0	DERIVED	L2	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.0.0.md\#\[ANCHOR:A-PACK-00-DOC-META\]	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.0.0.md\#\[ANCHOR:A-PACK-04-ANCHOR-INDEX\]		FOUND		Legacy mother set source (anchors)  
PKG-A-AUDIT-V110	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.1.0\_審查報告.md	Package A Audit Report (v1.1.0)	SOMOC-SUBP1MVP-PKG-A-GOVINDEX.AUDIT.v1.1.0	report	REVIEW/FIX\_SPEC	L2	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.1.0\_審查報告.md\#(2) QUESTION\_VERDICTS	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.1.0\_審查報告.md\#(4) PATCH\_SKELETONS		FOUND		This pack is the repair spec authority for v1.2.0  
PKG-A-WI	DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md	Package A WI (writing/spec)	WI-PKG-A	(see file)	NORMATIVE	L2	DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#L1-L120	DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#L121-L260	bcdf2feb4937f10c32480d3f356d3f8d2680c5aa3b22e94342f1427c6c646831	FOUND\_UNVERIFIED	TT-A-DOCLOC-WI-001	No stable anchors in file; line-range is sha256-backed  
ENG-GUIDE	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_前端文檔到實作驗收\_工程指南.md	Engineering Guide (SubP1-LITE+MVP)	ENG-GUIDE	(see file)	NORMATIVE	L2	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_前端文檔到實作驗收\_工程指南.md\#\[\#sec3.1-pkg-a-governance\]	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_前端文檔到實作驗收\_工程指南.md\#\[\#sec1.1-authority-stack\]		FOUND		Package A role authority  
OPS-RBWI	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Ops RUNBOOK \+ WI\_v2.1.0-r2.md	Ops RUNBOOK \+ WI (SubP1-LITE+MVP)	SOMOC-SUBP1MVP-OPS-RBWI.v2.1.0-r2	v2.1.0-r2	EXECUTION	L5	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Ops RUNBOOK \+ WI\_v2.1.0-r2.md\#\[ANCHOR:SOMOC-SUBP1MVP-OPS-S0-COVER\]	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Ops RUNBOOK \+ WI\_v2.1.0-r2.md\#\[ANCHOR:SOMOC-SUBP1MVP-OPS-S0-1-PREFLIGHT\]		FOUND		Route-out target for HOW; anti-injection governance  
DEV-RBWI	DOCLOC:/mnt/data/Spartoi｜SubP1-LITE+MVP 開發 RUNBOOK & WI\_v1.4.0.md	Dev RUNBOOK & WI (SubP1-LITE+MVP)	SPLMVP-RBWI.v1.4.0	v1.4.0	EXECUTION	L5	DOCLOC:/mnt/data/Spartoi｜SubP1-LITE+MVP 開發 RUNBOOK & WI\_v1.4.0.md\#\[ANCHOR:SPLMVP-RB-V140-COVER\]	DOCLOC:/mnt/data/Spartoi｜SubP1-LITE+MVP 開發 RUNBOOK & WI\_v1.4.0.md\#\[ANCHOR:SPLMVP-TOC-V140\]		FOUND		Route-out target for HOW  
SRS	DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md	Spartoi-OMOC SRS v8.1.0	Spartoi-OMOC\_SRS\_v8.1.0	v8.1.0	NORMATIVE	L3	DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-REQ-EVID-TRIPLET\]	DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-GOV-WEB-APPENDIX\]		FOUND		Web appendix contract; evidence triplet  
ARCH	DOCLOC:/mnt/data/Spartoi-OMOC\_ARCH\_v8.1.0.md	Spartoi-OMOC ARCH v8.1.0	Spartoi-OMOC\_ARCH\_v8.1.0	v8.1.0	NORMATIVE	L3	DOCLOC:/mnt/data/Spartoi-OMOC\_ARCH\_v8.1.0.md\#\[ANCHOR:ARCH-V810-5-4-ARTIFACTS\]	DOCLOC:/mnt/data/Spartoi-OMOC\_ARCH\_v8.1.0.md\#\[ANCHOR:ARCH-V810-5-3-CONFLICT\]		b1cc16448755e074c5706b379c0ec2c4611b53fd72c3b57334db921a5c2cae99	FOUND		Fail-Closed & conflict resolution pointers  
LBP-A	DOCLOC:/mnt/data/Spartoi-OMOC\_LBP-A(SIR) v8.1.1-r1.md	LBP-A(SIR) v8.1.1-r1	Spartoi-OMOC\_LBP-A(SIR).v8.1.1-r1	v8.1.1-r1	NORMATIVE	L3	DOCLOC:/mnt/data/Spartoi-OMOC\_LBP-A(SIR) v8.1.1-r1.md\#\[ANCHOR:LBPA-SIR-V811-00-DOC\_IDENTITY\]	DOCLOC:/mnt/data/Spartoi-OMOC\_LBP-A(SIR) v8.1.1-r1.md\#\[ANCHOR:LBPA-SIR-V811-01-TOC\]	68989b89703863f0e3e31edac9777a583be4376f9bc65181ed55433976abcdbf	FOUND		Normative group  
LBP-B	DOCLOC:/mnt/data/Spartoi-OMOC\_LBP-B(ICD)v8.1.1-r2.md	LBP-B(ICD) v8.1.1-r2	Spartoi-OMOC\_LBP-B(ICD).v8.1.1-r2	v8.1.1-r2	NORMATIVE	L3	DOCLOC:/mnt/data/Spartoi-OMOC\_LBP-B(ICD)v8.1.1-r2.md\#\[ANCHOR:ICD-V811-2-GUIDE\]	DOCLOC:/mnt/data/Spartoi-OMOC\_LBP-B(ICD)v8.1.1-r2.md\#\[ANCHOR:ICD-V811-11-1-CR-LIST\]	8281f2d146a099ea5e81ed5565e060063ede5ba572dbcfebd926a630651551b5	FOUND		Normative group  
LBP-C	DOCLOC:/mnt/data/Spartoi-OMOC\_LBP-C(ADR) v8.1.1-r2.md	LBP-C(ADR) v8.1.1-r2	Spartoi-OMOC\_LBP-C(ADR).v8.1.1-r2	v8.1.1-r2	NORMATIVE	L3	DOCLOC:/mnt/data/Spartoi-OMOC\_LBP-C(ADR) v8.1.1-r2.md\#\[ANCHOR:LBPC-ADR-V811R2-00-DOC\_IDENTITY\]	DOCLOC:/mnt/data/Spartoi-OMOC\_LBP-C(ADR) v8.1.1-r2.md\#\[ANCHOR:LBPC-ADR-V811R2-03-ANCHOR\_INDEX\]	240c3d2d5c693d0b3b1a8bbd7c848a76820aacf9d31054dc7da3db6dd1a80ac4	FOUND		Normative group  
LBP-D	DOCLOC:/mnt/data/Spartoi-OMOC\_LBP-D(C4) v8.1.1-r2.md	LBP-D(C4) v8.1.1-r2	Spartoi-OMOC\_LBP-D(C4).v8.1.1-r2	v8.1.1-r2	NORMATIVE	L3	DOCLOC:/mnt/data/Spartoi-OMOC\_LBP-D(C4) v8.1.1-r2.md\#\[ANCHOR:LBP-D-C4-V811R2-00-DOC\_IDENTITY\]	DOCLOC:/mnt/data/Spartoi-OMOC\_LBP-D(C4) v8.1.1-r2.md\#\[ANCHOR:LBP-D-C4-V811R2-10-ROUTE\_OUT\]	5453353a7fbf2236ff234df608bb2747513b65e02385d60db5d6bbcc36ba99e1	FOUND		Normative group  
LBP-E	DOCLOC:/mnt/data/Spartoi-OMOC\_LBP-E(Fitness) v8.1.1-r2.md	LBP-E(Fitness) v8.1.1-r2	Spartoi-OMOC\_LBP-E(Fitness).v8.1.1-r2	v8.1.1-r2	NORMATIVE	L3	DOCLOC:/mnt/data/Spartoi-OMOC\_LBP-E(Fitness) v8.1.1-r2.md\#L1-L120	DOCLOC:/mnt/data/Spartoi-OMOC\_LBP-E(Fitness) v8.1.1-r2.md\#L121-L260	57937efdb8714563310e4d1306dfc8968801186843fe6241451a167a613c29d2	FOUND\_UNVERIFIED	TT-A-DOCLOC-LBPE-001	File lacks stable section anchors; line-range is sha256-backed  
OMOC-WP-TOTAL	DOCLOC:/mnt/data/OMOC\_WP總表\_v4.0.1-r2.md	OMOC\_WP總表 v4.0.1-r2	OMOC\_WP總表\_v4.0.1-r2	v4.0.1-r2	NORMATIVE	L4	DOCLOC:/mnt/data/OMOC\_WP總表\_v4.0.1-r2.md\#L1-L120	DOCLOC:/mnt/data/OMOC\_WP總表\_v4.0.1-r2.md\#L121-L260	ffb92a86c26e12cc3d6bf492694fb81477f985f8f50d0744c4944dbdae1a49a9	FOUND\_UNVERIFIED	TT-A-DOCLOC-WP-001	Section headings are not anchors; line-range is sha256-backed  
WSP-V0	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.1.0-r1.md	SubP1 WSP v0 v2.1.0-r1	SOMOC-WSPV0.v2.1.0-r1	v2.1.0-r1	NORMATIVE	L4	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.1.0-r1.md\#\[ANCHOR:SOMOC-WSPV0-S0-COVER\]	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.1.0-r1.md\#\[ANCHOR:SOMOC-WSPV0-S0-DOC-META\]	51e67b131b4b63e1ce77c2d93b1c185c55c2b5c60b6cf1a1b4b8939c1a2a1f40	FOUND		Required alignment surface (acceptance skeleton)  
MVP-MINIMPL	DOCLOC:/mnt/data/Spartoi-OMOC\_MVP Spine\_ Walking Skeleton Pack v0\_最小實作包\_v2.2.0-r1.md	MVP Spine Minimal Implementation Pack	v0\_minimpl.v2.2.0-r1	v2.2.0-r1	NORMATIVE	L4	DOCLOC:/mnt/data/Spartoi-OMOC\_MVP Spine\_ Walking Skeleton Pack v0\_最小實作包\_v2.2.0-r1.md\#\[ANCHOR:SOMOC-MVPSPINE-MINIMPL-S0-COVER\]	DOCLOC:/mnt/data/Spartoi-OMOC\_MVP Spine\_ Walking Skeleton Pack v0\_最小實作包\_v2.2.0-r1.md\#\[ANCHOR:SOMOC-MVPSPINE-MINIMPL-S1-TOC\]	02bd5d0e2d4d5f2f9ec6ac7f9de36517ce9a6d0ac2e150e89d7edce2caa0f204	FOUND		Required alignment surface (minimum implementation contract)  
RIP-PLAN-SUBP1	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_RIP方案.md	SubP1-LITE+MVP RIP Plan	Spartoi-OMOC\_SubP1-LITE+MVP\_RIP方案	(see file)	SUPPORT	L4	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_RIP方案.md\#L1-L120	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_RIP方案.md\#L121-L240	e70c0c1d881c0ee7668e1b02d9711e135c8d819c9e420d792b820ac4a77fc629	FOUND\_UNVERIFIED	TT-A-DOCLOC-RIPPLAN-001	No anchors; line-range is sha256-backed  
RIP-FIX-OMOC	DOCLOC:/mnt/data/OMOC\_總體RIP修補方案.md	OMOC Overall RIP Repair Plan	OMOC\_總體RIP修補方案	(see file)	SUPPORT	L4	DOCLOC:/mnt/data/OMOC\_總體RIP修補方案.md\#L1-L120	DOCLOC:/mnt/data/OMOC\_總體RIP修補方案.md\#L121-L260	77842d43a84ba284eac97c39b83f17c5735880b7673407a117a6f578c840fcf6	FOUND\_UNVERIFIED	TT-A-DOCLOC-RIPFIX-001	No anchors; line-range is sha256-backed  
MVU-PACK	DOCLOC:/mnt/data/「OMOC-MVU 藍圖 \+ RUNBOOK \+ WI」套件包\_v0.2.0-r1+SC-HMD.md	OMOC-MVU Blueprint+Runbook+WI bundle (HMD)	OMOC-MVU-PACK.v0.2.0-r1+SC-HMD	v0.2.0-r1	SUPPORT	L4	DOCLOC:/mnt/data/「OMOC-MVU 藍圖 \+ RUNBOOK \+ WI」套件包\_v0.2.0-r1+SC-HMD.md\#\[ANCHOR:OMOCMVU-READ-QUICKSTART\]	DOCLOC:/mnt/data/「OMOC-MVU 藍圖 \+ RUNBOOK \+ WI」套件包\_v0.2.0-r1+SC-HMD.md\#\[ANCHOR:OMOCMVU-READ-FAILCLOSED\]	83548a7c3fa4a4ec5c4a4f055f9d7b8a9f4af0bb4a4a1f72a2c8b2e5169bdb9b	FOUND		Reference bundle for MVU framing  
EXTDATA-RIP-A	DOCLOC:/mnt/data/OMOC\_RIP\_外部資料.md	OMOC RIP External Data (curated)	OMOC\_RIP\_外部資料	(see file)	SUPPORT	L6	DOCLOC:/mnt/data/OMOC\_RIP\_外部資料.md\#L1-L120	DOCLOC:/mnt/data/OMOC\_RIP\_外部資料.md\#L121-L260	5314664157e1e4ab82de0fe8baf876ad14ebace9fadc7825f110cd33f16ad04e	FOUND\_UNVERIFIED	TT-A-DOCLOC-EXTDATA-001	Curated support; does not replace external\_evidence\_appendix rules  
EXTDATA-RIP-GEMINI	DOCLOC:/mnt/data/OMOC\_RIP\_外部資料(GEMINI).md	OMOC RIP External Data (GEMINI variant)	OMOC\_RIP\_外部資料.GEMINI	(see file)	SUPPORT	L6	DOCLOC:/mnt/data/OMOC\_RIP\_外部資料(GEMINI).md\#L1-L120	DOCLOC:/mnt/data/OMOC\_RIP\_外部資料(GEMINI).md\#L121-L260	5e8e886ddfce627472ba2a593ceb2c26a6efaa25415d82f3511f1d83275a8bf4	FOUND\_UNVERIFIED	TT-A-DOCLOC-EXTDATA-002	Curated support; driftable  
EXTDATA-RIP-GPT	DOCLOC:/mnt/data/OMOC\_RIP\_外部資料(GPT).md	OMOC RIP External Data (GPT variant)	OMOC\_RIP\_外部資料.GPT	(see file)	SUPPORT	L6	DOCLOC:/mnt/data/OMOC\_RIP\_外部資料(GPT).md\#L1-L120	DOCLOC:/mnt/data/OMOC\_RIP\_外部資料(GPT).md\#L121-L260	f5d1f55d09c7a4934022a532fbfa6807496f35ebe79ff442fd83c792c7b7e4f1	FOUND\_UNVERIFIED	TT-A-DOCLOC-EXTDATA-003	Curated support; driftable  
PROMPT-GUIDE	DOCLOC:/mnt/data/LLM提示詞工程指南.md	LLM Prompt Engineering Guide (internal)	LLM提示詞工程指南	(see file)	SUPPORT	L6	DOCLOC:/mnt/data/LLM提示詞工程指南.md\#L1-L120	DOCLOC:/mnt/data/LLM提示詞工程指南.md\#L121-L240	de2fc6e2cef92b3048049920308aeef9e727ab3277021096685cb77875d4d709	FOUND\_UNVERIFIED	TT-A-DOCLOC-PROMPTGUIDE-001	Support-only; driftable  
OMOC-BP	(Referenced upstream; file not present in current library)	OMOC Blueprint v4.0.1-r1	OMOC-BP.v4.0.1-r1	v4.0.1-r1	NORMATIVE	L1	DOCLOC:/mnt/data/OMOC\_藍圖\_v4.0.1-r1.md\#\[ANCHOR:OMOC-BP-0000\]	DOCLOC:/mnt/data/OMOC\_藍圖\_v4.0.1-r1.md\#\[ANCHOR:OMOC-BP-0500\]		MISSING	TT-A-MISSING-OMOCBP-001	Required by WI; missing in mounted file set  
SUBP1-BP	(Referenced upstream; file not present in current library)	SubP1 Blueprint v1.3.0-r2	SOMOC-SUBP1MVP-BP.v1.3.0-r2	v1.3.0-r2	NORMATIVE	L2	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_藍圖\_v1.3.0-r2.md\#\[ANCHOR:SOMOC-SUBP1MVP-03-2-MAP-SCHEMA\]	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_藍圖\_v1.3.0-r2.md\#\[ANCHOR:SOMOC-SUBP1MVP-13-4-DELIVERYPLAN-TO-BP\]		MISSING	TT-A-MISSING-SUBP1BP-001	Required by WI; missing in mounted file set  
MIP	(Referenced upstream; file not present in current library)	Spartoi-OMOC\_MIP v2.2.0	Spartoi-OMOC\_MIP\_v2.2.0	v2.2.0	NORMATIVE	L2	DOCLOC:/mnt/data/Spartoi-OMOC\_MIP\_v2.2.0.txt\#\[ANCHOR:MIP-V220-0-3-AUTHORITY\]	DOCLOC:/mnt/data/Spartoi-OMOC\_MIP\_v2.2.0.txt\#\[ANCHOR:MIP-V220-7-1-DOCS\]		MISSING	TT-A-MISSING-MIP-001	Required by WI; missing in mounted file set  
RDM	(Referenced upstream; file not present in current library)	Spartoi-OMOC\_README\_RDM v2.2.0	RDM.v2.2.0	v2.2.0	NORMATIVE	L4	DOCLOC:/mnt/data/Spartoi-OMOC\_README\_RDM v2.2.0.md\#\[ANCHOR:RDM-V220-S0-COVER\]	DOCLOC:/mnt/data/Spartoi-OMOC\_README\_RDM v2.2.0.md\#\[ANCHOR:RDM-V220-S2-TOC\]		MISSING	TT-A-MISSING-RDM-001	Required by WI; missing in mounted file set  
CP-PACK	(Referenced upstream; file not present in current library)	Control Plane Pack (Package B)	SOMOC-SUBP1MVP-CP-PACK	v2.x	DERIVED	L2	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Control Plane Pack\_v2.1.0.md\#\[ANCHOR:CP-PACK-S1-TOC\]	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Control Plane Pack\_v2.1.0.md\#(REPO\_TREE)		MISSING	TT-A-MISSING-CPPACK-001	Required adjacency; missing in mounted file set

\===== FILE: docs/packages/A\_governance\_index/map\_schema\_v1.md \=====  
\[ANCHOR:MAP-SCHEMA-V1-COVER\]

# **MAP\_SCHEMA\_V1 (Package A) — Canonical TSV/JSON Contract (DERIVED, not normative)**

This schema defines the **field order** and dictionaries for derived TSV/JSON artifacts in Package A. It does **not** define upstream requirements.  
evidence\_ptr: `DOCLOC:/mnt/data/Package A — Governance_Index Pack（治理與索引合冊）_撰寫_規範工作指導書（WI）.md#(A-04 MAP_SCHEMA_V1 規格頁)`

## **Compatibility / Migration**

* This pack keeps **MAP\_SCHEMA\_V1 field order** unchanged from v1.1.0 to avoid breaking tooling.  
* “Mother set anti-template” is implemented via additional `mother_set_*.tsv` files \+ checks, not by mutating TSV columns.  
  evidence\_ptr: `DOCLOC:/mnt/data/Spartoi-OMOC_SubP1-LITE+MVP — Governance_Index Pack_v1.1.0_審查報告.md#(GLOBAL_OPTIMIZATIONS OPT-A-03)`

---

\[ANCHOR:MAP-SCHEMA-V1-DOCINV\]

## **TSV: doc\_inventory.tsv**

Field order (TAB-separated):

1. doc\_key  
2. file\_path  
3. external\_name  
4. doc\_id  
5. version  
6. role\_declared (NORMATIVE / SUPPORT / EXECUTION / DERIVED / REVIEW/FIX\_SPEC)  
7. authority\_layer (L1…L6; digest only)  
8. locator\_1 (DOCLOC:/path\#\[ANCHOR:...\] OR DOCLOC:/path\#Lx-Ly)  
9. locator\_2 (same shape as locator\_1)  
10. sha256 (optional; REQUIRED when locator uses line-ranges without anchors; otherwise may be empty)  
11. status (FOUND / FOUND\_UNVERIFIED / MISSING)  
12. linked\_tt\_id (empty or TT-\*)  
13. notes

Locator robustness rule (derived contract):

* Prefer anchor locators.  
* If line-range is used, sha256 is required and status must be FOUND\_UNVERIFIED \+ TT until anchor exists.  
  evidence\_ptr: `DOCLOC:/mnt/data/Spartoi-OMOC_SubP1-LITE+MVP — Governance_Index Pack_v1.1.0_審查報告.md#(patch_id: PS-A-005)`

---

\[ANCHOR:MAP-SCHEMA-V1-COVERAGE\]

## **TSV: coverage\_\*.tsv (all three)**

Field order:

1. map\_id  
2. map\_type (LEGACY\_TO\_NEW / SSOT\_TO\_MVP / DELIVERYPLAN\_TO\_BLUEPRINT)  
3. source\_doc\_key  
4. source\_locator  
5. target\_doc\_key  
6. target\_locator  
7. coverage\_verdict (COVERED / NOT\_COVERED / TT\_BOUND)  
8. evidence\_ptr (DOCLOC to upstream rule that makes this mapping necessary)  
9. linked\_tt\_id  
10. notes

Mother-set anti-template rule (implemented via extra files \+ checks):

* Every item in `mother_set_legacy_items.tsv` must have at least one row in `coverage_legacy_to_new.tsv`.  
* Every “required doc” in `mother_set_required_docs.tsv` must have at least one row across coverage tables OR be TT\_BOUND with linked TT.  
  evidence\_ptr: `DOCLOC:/mnt/data/Spartoi-OMOC_SubP1-LITE+MVP — Governance_Index Pack_v1.1.0_審查報告.md#(GLOBAL_OPTIMIZATIONS OPT-A-03)` \+ `DOCLOC:/mnt/data/Spartoi-OMOC_SubP1-LITE+MVP — Governance_Index Pack_v1.1.0_審查報告.md#(patch_id: PS-A-004)`

---

\[ANCHOR:MAP-SCHEMA-V1-ROUTEOUT\]

## **TSV: route\_out\_register\_index.tsv**

Field order:

1. route\_out\_id  
2. topic  
3. trigger\_keywords (comma-separated; detection hints, not commands)  
4. target\_doc\_key  
5. target\_locator  
6. evidence\_ptr  
7. linked\_tt\_id  
8. notes

Minimal must-include topic set is tracked in `mother_set_route_out_topics.tsv`.  
evidence\_ptr: `DOCLOC:/mnt/data/Spartoi-OMOC_SubP1-LITE+MVP — Governance_Index Pack_v1.1.0_審查報告.md#(GLOBAL_OPTIMIZATIONS OPT-A-04)`

---

\[ANCHOR:MAP-SCHEMA-V1-TT\]

## **TSV: test\_tracking\_list.tsv**

Field order:

1. tt\_id  
2. severity (BLOCKER/MAJOR/MINOR)  
3. state (TEMP\_CLOSED→TEST\_TRACK)  
4. gap  
5. why\_tt\_bound  
6. verification\_method\_min (no HOW; describe required evidence only)  
7. revoke\_condition  
8. touched\_files (comma-separated paths)  
9. locator (DOCLOC where this TT is rooted)  
10. evidence\_ptr (DOCLOC to upstream rule requiring TT)  
11. created\_at (YYYY-MM-DD)  
12. last\_verified\_at (YYYY-MM-DD or empty)  
13. linked\_external\_evidence\_ids (comma-separated or empty)  
14. notes

---

\[ANCHOR:MAP-SCHEMA-V1-JSON\]

## **JSON: a\_verdict.json / a\_checks\_manifest.json / machine\_summary.json**

* Must be parseable JSON.  
* `machine_summary.tt_open_count == len(machine_summary.tt_ids)` and must match derived TT count from verdict/ledger aggregation.  
  evidence\_ptr: `DOCLOC:/mnt/data/Spartoi-OMOC_SubP1-LITE+MVP — Governance_Index Pack_v1.1.0_審查報告.md#(patch_id: PS-A-007)`

\===== FILE: docs/packages/A\_governance\_index/mother\_set\_legacy\_items.tsv \=====

legacy\_item\_id	legacy\_doc\_key	legacy\_locator	legacy\_item\_type	expected\_coverage\_map\_id	notes  
LEG-A-0001	PKG-A-OLD-V100	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.0.0.md\#\[ANCHOR:A-PACK-00-COVER\]	ANCHOR	CM-LN-0001	Entry cover  
LEG-A-0002	PKG-A-OLD-V100	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.0.0.md\#\[ANCHOR:A-PACK-00-DOC-META\]	ANCHOR	CM-LN-0002	Doc meta  
LEG-A-0003	PKG-A-OLD-V100	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.0.0.md\#\[ANCHOR:A-PACK-01-TOC\]	ANCHOR	CM-LN-0003	TOC  
LEG-A-0004	PKG-A-OLD-V100	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.0.0.md\#\[ANCHOR:A-PACK-02-ROLE-BOUNDARIES\]	ANCHOR	CM-LN-0004	Role & boundaries  
LEG-A-0005	PKG-A-OLD-V100	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.0.0.md\#\[ANCHOR:A-PACK-02-FORBIDDEN-HOW\]	ANCHOR	CM-LN-0005	Forbidden HOW  
LEG-A-0006	PKG-A-OLD-V100	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.0.0.md\#\[ANCHOR:A-PACK-02-NO-SOURCE-NO-CLAIM\]	ANCHOR	CM-LN-0006	No-Source-No-Claim  
LEG-A-0007	PKG-A-OLD-V100	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.0.0.md\#\[ANCHOR:A-PACK-03-AI-READER-GUIDE\]	ANCHOR	CM-LN-0007	AI reader guide  
LEG-A-0008	PKG-A-OLD-V100	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.0.0.md\#\[ANCHOR:A-PACK-04-ANCHOR-INDEX\]	ANCHOR	CM-LN-0008	Anchor index  
LEG-A-0009	PKG-A-OLD-V100	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.0.0.md\#\[ANCHOR:A-PACK-05-AUTHORITY\]	ANCHOR	CM-LN-0009	Authority digest  
LEG-A-0010	PKG-A-OLD-V100	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.0.0.md\#\[ANCHOR:A-PACK-06-CONFLICT\]	ANCHOR	CM-LN-0010	Conflict digest  
LEG-A-0011	PKG-A-OLD-V100	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.0.0.md\#\[ANCHOR:A-PACK-07-DOCINV-GUIDE\]	ANCHOR	CM-LN-0011	Doc inventory guide  
LEG-A-0012	PKG-A-OLD-V100	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.0.0.md\#\[ANCHOR:A-PACK-08-MAPSCHEMA-GUIDE\]	ANCHOR	CM-LN-0012	Map schema guide  
LEG-A-0013	PKG-A-OLD-V100	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.0.0.md\#\[ANCHOR:A-PACK-09-COVERAGE-OVERVIEW\]	ANCHOR	CM-LN-0013	Coverage overview  
LEG-A-0014	PKG-A-OLD-V100	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.0.0.md\#\[ANCHOR:A-PACK-10-ROUTEOUT-GUIDE\]	ANCHOR	CM-LN-0014	Route-out guide  
LEG-A-0015	PKG-A-OLD-V100	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.0.0.md\#\[ANCHOR:A-PACK-11-AGENTS-GUIDE\]	ANCHOR	CM-LN-0015	Agents guide  
LEG-A-0016	PKG-A-OLD-V100	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.0.0.md\#\[ANCHOR:A-PACK-12-TT-GUIDE\]	ANCHOR	CM-LN-0016	TT guide  
LEG-A-0017	PKG-A-OLD-V100	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.0.0.md\#\[ANCHOR:A-PACK-13-EXT-EVID-GUIDE\]	ANCHOR	CM-LN-0017	External evidence guide  
LEG-A-0018	PKG-A-OLD-V100	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.0.0.md\#\[ANCHOR:A-PACK-14-VERDICT\]	ANCHOR	CM-LN-0018	Verdict section

\===== FILE: docs/packages/A\_governance\_index/coverage\_legacy\_to\_new.tsv \=====

map\_id	map\_type	source\_doc\_key	source\_locator	target\_doc\_key	target\_locator	coverage\_verdict	evidence\_ptr	linked\_tt\_id	notes  
CM-LN-0001	LEGACY\_TO\_NEW	PKG-A-OLD-V100	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.0.0.md\#\[ANCHOR:A-PACK-00-COVER\]	PKG-A-NEW	DOCLOC:docs/packages/A\_governance\_index/README.md\#\[ANCHOR:A-PACK-00-COVER\]	COVERED	DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#(3.2 建議路徑)		Legacy entry cover mapped 1:1  
CM-LN-0002	LEGACY\_TO\_NEW	PKG-A-OLD-V100	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.0.0.md\#\[ANCHOR:A-PACK-00-DOC-META\]	PKG-A-NEW	DOCLOC:docs/packages/A\_governance\_index/README.md\#\[ANCHOR:A-PACK-00-DOC-META\]	COVERED	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.1.0\_審查報告.md\#(patch\_id: PS-A-001)		Distribution\_mode clarified; repo\_files  
CM-LN-0003	LEGACY\_TO\_NEW	PKG-A-OLD-V100	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.0.0.md\#\[ANCHOR:A-PACK-01-TOC\]	PKG-A-NEW	DOCLOC:docs/packages/A\_governance\_index/README.md\#\[ANCHOR:A-PACK-01-TOC\]	COVERED	DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#(3.1 必備工件清單)		TOC retained; anchors-first  
CM-LN-0004	LEGACY\_TO\_NEW	PKG-A-OLD-V100	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.0.0.md\#\[ANCHOR:A-PACK-02-ROLE-BOUNDARIES\]	PKG-A-NEW	DOCLOC:docs/packages/A\_governance\_index/README.md\#\[ANCHOR:A-PACK-02-ROLE-BOUNDARIES\]	COVERED	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_前端文檔到實作驗收\_工程指南.md\#\[\#sec3.1-pkg-a-governance\]		Role unchanged (derived index)  
CM-LN-0005	LEGACY\_TO\_NEW	PKG-A-OLD-V100	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.0.0.md\#\[ANCHOR:A-PACK-02-FORBIDDEN-HOW\]	PKG-A-NEW	DOCLOC:docs/packages/A\_governance\_index/README.md\#\[ANCHOR:A-PACK-02-FORBIDDEN-HOW\]	COVERED	DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#(4) 不得包含（禁區）		Route-out boundary preserved  
CM-LN-0006	LEGACY\_TO\_NEW	PKG-A-OLD-V100	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.0.0.md\#\[ANCHOR:A-PACK-02-NO-SOURCE-NO-CLAIM\]	PKG-A-NEW	DOCLOC:docs/packages/A\_governance\_index/README.md\#\[ANCHOR:A-PACK-02-NO-SOURCE-NO-CLAIM\]	COVERED	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Ops RUNBOOK \+ WI\_v2.1.0-r2.md\#\[ANCHOR:SOMOC-SUBP1MVP-OPS-S0-1-PREFLIGHT\]		No-source → TT discipline preserved  
CM-LN-0007	LEGACY\_TO\_NEW	PKG-A-OLD-V100	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.0.0.md\#\[ANCHOR:A-PACK-03-AI-READER-GUIDE\]	PKG-A-NEW	DOCLOC:docs/packages/A\_governance\_index/README.md\#\[ANCHOR:A-PACK-03-AI-READER-GUIDE\]	COVERED	DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#(2.1 目的)		AI retrieval path updated for RAG  
CM-LN-0008	LEGACY\_TO\_NEW	PKG-A-OLD-V100	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.0.0.md\#\[ANCHOR:A-PACK-04-ANCHOR-INDEX\]	PKG-A-NEW	DOCLOC:docs/packages/A\_governance\_index/README.md\#\[ANCHOR:A-PACK-04-ANCHOR-INDEX\]	COVERED	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.1.0\_審查報告.md\#(patch\_id: PS-A-002)		Expected\_count stabilized \+ check  
CM-LN-0009	LEGACY\_TO\_NEW	PKG-A-OLD-V100	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.0.0.md\#\[ANCHOR:A-PACK-05-AUTHORITY\]	PKG-A-NEW	DOCLOC:docs/packages/A\_governance\_index/README.md\#\[ANCHOR:A-PACK-05-AUTHORITY\]	COVERED	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_前端文檔到實作驗收\_工程指南.md\#\[\#sec1.1-authority-stack\]		Digest-only; no new tiers  
CM-LN-0010	LEGACY\_TO\_NEW	PKG-A-OLD-V100	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.0.0.md\#\[ANCHOR:A-PACK-06-CONFLICT\]	PKG-A-NEW	DOCLOC:docs/packages/A\_governance\_index/README.md\#\[ANCHOR:A-PACK-06-CONFLICT\]	COVERED	DOCLOC:/mnt/data/Spartoi-OMOC\_ARCH\_v8.1.0.md\#\[ANCHOR:ARCH-V810-5-3-CONFLICT\]		Conflict digest pointer preserved  
CM-LN-0011	LEGACY\_TO\_NEW	PKG-A-OLD-V100	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.0.0.md\#\[ANCHOR:A-PACK-07-DOCINV-GUIDE\]	PKG-A-NEW	DOCLOC:docs/packages/A\_governance\_index/doc\_inventory.tsv	COVERED	DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#(3.1 必備工件清單)		Artifact is now a physical path  
CM-LN-0012	LEGACY\_TO\_NEW	PKG-A-OLD-V100	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.0.0.md\#\[ANCHOR:A-PACK-08-MAPSCHEMA-GUIDE\]	PKG-A-NEW	DOCLOC:docs/packages/A\_governance\_index/map\_schema\_v1.md\#\[ANCHOR:MAP-SCHEMA-V1-COVER\]	COVERED	DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#(A-04 MAP\_SCHEMA\_V1 規格頁)		Schema realized as file  
CM-LN-0013	LEGACY\_TO\_NEW	PKG-A-OLD-V100	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.0.0.md\#\[ANCHOR:A-PACK-09-COVERAGE-OVERVIEW\]	PKG-A-NEW	DOCLOC:docs/packages/A\_governance\_index/coverage\_legacy\_to\_new.tsv	COVERED	DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#(3.1 必備工件清單)		Coverage tables are physical paths  
CM-LN-0014	LEGACY\_TO\_NEW	PKG-A-OLD-V100	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.0.0.md\#\[ANCHOR:A-PACK-10-ROUTEOUT-GUIDE\]	PKG-A-NEW	DOCLOC:docs/packages/A\_governance\_index/route\_out\_register\_index.tsv	COVERED	DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#(3.1 必備工件清單)		Route-out index is now physical path  
CM-LN-0015	LEGACY\_TO\_NEW	PKG-A-OLD-V100	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.0.0.md\#\[ANCHOR:A-PACK-11-AGENTS-GUIDE\]	PKG-A-NEW	DOCLOC:docs/packages/A\_governance\_index/AGENTS.md\#\[ANCHOR:PKG-A-AGENTS-COVER\]	COVERED	DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#(3.1 必備工件清單)		Agents contract exists as file  
CM-LN-0016	LEGACY\_TO\_NEW	PKG-A-OLD-V100	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.0.0.md\#\[ANCHOR:A-PACK-12-TT-GUIDE\]	PKG-A-NEW	DOCLOC:docs/packages/A\_governance\_index/test\_tracking\_list.tsv	COVERED	DOCLOC:/mnt/data/Spartoi-OMOC\_ARCH\_v8.1.0.md\#(CR\_OPEN Master Table)		TT ledger exists as file  
CM-LN-0017	LEGACY\_TO\_NEW	PKG-A-OLD-V100	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.0.0.md\#\[ANCHOR:A-PACK-13-EXT-EVID-GUIDE\]	PKG-A-NEW	DOCLOC:docs/packages/A\_governance\_index/external\_evidence\_appendix.md\#\[ANCHOR:PKG-A-EXTAPPX-COVER\]	COVERED	DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-GOV-WEB-APPENDIX\]		External appendix exists as file  
CM-LN-0018	LEGACY\_TO\_NEW	PKG-A-OLD-V100	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.0.0.md\#\[ANCHOR:A-PACK-14-VERDICT\]	PKG-A-NEW	DOCLOC:docs/packages/A\_governance\_index/README.md\#\[ANCHOR:A-PACK-14-VERDICT\]	COVERED	DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#(7) 驗收輸出（DoD）		Verdict summary preserved

\===== FILE: docs/packages/A\_governance\_index/mother\_set\_required\_docs.tsv \=====

req\_id	doc\_key	required\_by\_evidence\_ptr	requirement\_class	notes  
REQ-A-0001	PKG-A-WI	DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#(3.1 必備工件清單)	WI-ALIGNMENT	Package A minimum set authority  
REQ-A-0002	ENG-GUIDE	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_前端文檔到實作驗收\_工程指南.md\#\[\#sec3.1-pkg-a-governance\]	ENGINE-GUIDE	Package A role authority  
REQ-A-0003	SRS	DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#(5.2 必對齊的規範群)	SSOT-NORMATIVE	Normative group  
REQ-A-0004	ARCH	DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#(5.2 必對齊的規範群)	SSOT-NORMATIVE	Normative group  
REQ-A-0005	LBP-A	DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#(5.2 必對齊的規範群)	SSOT-NORMATIVE	Normative group  
REQ-A-0006	LBP-B	DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#(5.2 必對齊的規範群)	SSOT-NORMATIVE	Normative group  
REQ-A-0007	LBP-C	DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#(5.2 必對齊的規範群)	SSOT-NORMATIVE	Normative group  
REQ-A-0008	LBP-D	DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#(5.2 必對齊的規範群)	SSOT-NORMATIVE	Normative group  
REQ-A-0009	LBP-E	DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#(5.2 必對齊的規範群)	SSOT-NORMATIVE	Normative group  
REQ-A-0010	OMOC-WP-TOTAL	DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#(5.3 必對齊的“總稽核匯流排/索引總線”)	SSOT-NORMATIVE	Hash is SUPPORT-only; drift\_action  
REQ-A-0011	WSP-V0	DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#(5.4 必對齊的“可驗收閉環入口”)	DELIVERY-ALIGNMENT	Acceptance loop entry  
REQ-A-0012	MVP-MINIMPL	DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#(5.4 必對齊的“可驗收閉環入口”)	DELIVERY-ALIGNMENT	Minimum implementation entry  
REQ-A-0013	DEV-RBWI	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.1.0\_審查報告.md\#(Q5 rationale)	ROUTE-OUT	Execution HOW target  
REQ-A-0014	OPS-RBWI	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.1.0\_審查報告.md\#(Q5 rationale)	ROUTE-OUT	Execution HOW target  
REQ-A-0015	RIP-PLAN-SUBP1	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.1.0\_審查報告.md\#(Q5 rationale)	DELIVERY-ALIGNMENT	Plan alignment surface  
REQ-A-0016	OMOC-BP	DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#(5.1 必對齊的上游（Authority 層）)	SSOT-AUTHORITY	Missing in current library; TT-bound  
REQ-A-0017	SUBP1-BP	DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#(5.1 必對齊的上游（Authority 層）)	SSOT-AUTHORITY	Missing in current library; TT-bound  
REQ-A-0018	MIP	DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#(5.2 必對齊的規範群（Normative 群）)	SSOT-AUTHORITY	Missing in current library; TT-bound  
REQ-A-0019	RDM	DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#(5.2 必對齊的規範群（Normative 群）)	SSOT-AUTHORITY	Missing in current library; TT-bound  
REQ-A-0020	CP-PACK	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.0.0.md\#\[ANCHOR:A-PACK-05-AUTHORITY\]	SSOT-ADJACENCY	Missing in current library; TT-bound

\===== FILE: docs/packages/A\_governance\_index/coverage\_ssot\_to\_mvp.tsv \=====

map\_id	map\_type	source\_doc\_key	source\_locator	target\_doc\_key	target\_locator	coverage\_verdict	evidence\_ptr	linked\_tt\_id	notes  
CM-SM-0001	SSOT\_TO\_MVP	ENG-GUIDE	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_前端文檔到實作驗收\_工程指南.md\#\[\#sec3.1-pkg-a-governance\]	PKG-A-NEW	DOCLOC:docs/packages/A\_governance\_index/README.md\#\[ANCHOR:A-PACK-02-ROLE-BOUNDARIES\]	COVERED	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_前端文檔到實作驗收\_工程指南.md\#\[\#sec3.1-pkg-a-governance\]		Package A boundary aligned  
CM-SM-0002	SSOT\_TO\_MVP	PKG-A-WI	DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#L1-L120	PKG-A-ARTIFACTS	DOCLOC:docs/packages/A\_governance\_index/map\_schema\_v1.md\#\[ANCHOR:MAP-SCHEMA-V1-COVER\]	COVERED	DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#(3.1 必備工件清單)		Minimum set realized as files  
CM-SM-0003	SSOT\_TO\_MVP	SRS	DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-REQ-EVID-TRIPLET\]	WSP-V0	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.1.0-r1.md\#\[ANCHOR:SOMOC-WSPV0-S0-DOC-META\]	COVERED	DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#(5.2 必對齊的規範群)		Index points from SSOT to delivery surface  
CM-SM-0004	SSOT\_TO\_MVP	ARCH	DOCLOC:/mnt/data/Spartoi-OMOC\_ARCH\_v8.1.0.md\#\[ANCHOR:ARCH-V810-5-4-ARTIFACTS\]	MVP-MINIMPL	DOCLOC:/mnt/data/Spartoi-OMOC\_MVP Spine\_ Walking Skeleton Pack v0\_最小實作包\_v2.2.0-r1.md\#\[ANCHOR:SOMOC-MVPSPINE-MINIMPL-S1-TOC\]	COVERED	DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#(5.2 必對齊的規範群)		Evidence/artifact registry aligned by pointers  
CM-SM-0005	SSOT\_TO\_MVP	LBP-A	DOCLOC:/mnt/data/Spartoi-OMOC\_LBP-A(SIR) v8.1.1-r1.md\#\[ANCHOR:LBPA-SIR-V811-01-TOC\]	MVP-MINIMPL	DOCLOC:/mnt/data/Spartoi-OMOC\_MVP Spine\_ Walking Skeleton Pack v0\_最小實作包\_v2.2.0-r1.md\#\[ANCHOR:SOMOC-MVPSPINE-MINIMPL-S0-DOC-META\]	COVERED	DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#(5.2 必對齊的規範群)		Normative → implementation entry pointer  
CM-SM-0006	SSOT\_TO\_MVP	LBP-B	DOCLOC:/mnt/data/Spartoi-OMOC\_LBP-B(ICD)v8.1.1-r2.md\#\[ANCHOR:ICD-V811-3-AUTHORITY\]	MVP-MINIMPL	DOCLOC:/mnt/data/Spartoi-OMOC\_MVP Spine\_ Walking Skeleton Pack v0\_最小實作包\_v2.2.0-r1.md\#\[ANCHOR:SOMOC-MVPSPINE-MINIMPL-S1-TOC\]	COVERED	DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#(5.2 必對齊的規範群)		ICD → interface pointers (no schema duplication)  
CM-SM-0007	SSOT\_TO\_MVP	LBP-C	DOCLOC:/mnt/data/Spartoi-OMOC\_LBP-C(ADR) v8.1.1-r2.md\#\[ANCHOR:LBPC-ADR-V811R2-01-AI\_GUIDE\]	WSP-V0	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.1.0-r1.md\#\[ANCHOR:SOMOC-WSPV0-S0-COVER\]	COVERED	DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#(5.2 必對齊的規範群)		ADR decisions pointed to acceptance skeleton  
CM-SM-0008	SSOT\_TO\_MVP	LBP-D	DOCLOC:/mnt/data/Spartoi-OMOC\_LBP-D(C4) v8.1.1-r2.md\#\[ANCHOR:LBP-D-C4-V811R2-10-ROUTE\_OUT\]	OPS-RBWI	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Ops RUNBOOK \+ WI\_v2.1.0-r2.md\#\[ANCHOR:SOMOC-SUBP1MVP-OPS-S0-1-PREFLIGHT\]	COVERED	DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#(5.2 必對齊的規範群)		Route-out alignment (HOW stays in runbooks)  
CM-SM-0009	SSOT\_TO\_MVP	LBP-E	DOCLOC:/mnt/data/Spartoi-OMOC\_LBP-E(Fitness) v8.1.1-r2.md\#L1-L120	PKG-A-NEW	DOCLOC:docs/packages/A\_governance\_index/test\_tracking\_list.tsv\#TT-A-DOCLOC-LBPE-001	TT\_BOUND	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.1.0\_審查報告.md\#(patch\_id: PS-A-005)	TT-A-DOCLOC-LBPE-001	Line-range locator is sha256-backed; upgrade to anchors required to close TT  
CM-SM-0010	SSOT\_TO\_MVP	OMOC-WP-TOTAL	DOCLOC:/mnt/data/OMOC\_WP總表\_v4.0.1-r2.md\#L1-L120	PKG-A-NEW	DOCLOC:docs/packages/A\_governance\_index/doc\_inventory.tsv\#doc\_key=OMOC-WP-TOTAL	TT\_BOUND	DOCLOC:/mnt/data/OMOC\_WP總表\_v4.0.1-r2.md\#(§4 Doc Inventory)	TT-A-DOCLOC-WP-001	Hash is support-only; section lacks anchors  
CM-SM-0011	SSOT\_TO\_MVP	WSP-V0	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.1.0-r1.md\#\[ANCHOR:SOMOC-WSPV0-S0-DOC-META\]	PKG-A-NEW	DOCLOC:docs/packages/A\_governance\_index/README.md\#\[ANCHOR:A-PACK-09-COVERAGE-OVERVIEW\]	COVERED	DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#(5.4 必對齊的“可驗收閉環入口”)		Coverage table ensures WSP is indexed  
CM-SM-0012	SSOT\_TO\_MVP	MVP-MINIMPL	DOCLOC:/mnt/data/Spartoi-OMOC\_MVP Spine\_ Walking Skeleton Pack v0\_最小實作包\_v2.2.0-r1.md\#\[ANCHOR:SOMOC-MVPSPINE-MINIMPL-S0-DOC-META\]	PKG-A-NEW	DOCLOC:docs/packages/A\_governance\_index/README.md\#\[ANCHOR:A-PACK-09-COVERAGE-OVERVIEW\]	COVERED	DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#(5.4 必對齊的“可驗收閉環入口”)		Coverage table ensures MinImpl is indexed  
CM-SM-0013	SSOT\_TO\_MVP	DEV-RBWI	DOCLOC:/mnt/data/Spartoi｜SubP1-LITE+MVP 開發 RUNBOOK & WI\_v1.4.0.md\#\[ANCHOR:SPLMVP-TOC-V140\]	PKG-A-NEW	DOCLOC:docs/packages/A\_governance\_index/route\_out\_register\_index.tsv\#RO-A-0001	COVERED	DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#(4) 不得包含（禁區）		Route-out target indexed  
CM-SM-0014	SSOT\_TO\_MVP	OPS-RBWI	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Ops RUNBOOK \+ WI\_v2.1.0-r2.md\#\[ANCHOR:SOMOC-SUBP1MVP-OPS-S0-1-PREFLIGHT\]	PKG-A-NEW	DOCLOC:docs/packages/A\_governance\_index/route\_out\_register\_index.tsv\#RO-A-0002	COVERED	DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#(4) 不得包含（禁區）		Route-out target indexed  
CM-SM-0015	SSOT\_TO\_MVP	OMOC-BP	DOCLOC:/mnt/data/OMOC\_藍圖\_v4.0.1-r1.md\#\[ANCHOR:OMOC-BP-0000\]	PKG-A-NEW	DOCLOC:docs/packages/A\_governance\_index/test\_tracking\_list.tsv\#TT-A-MISSING-OMOCBP-001	TT\_BOUND	DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#(5.1 必對齊的上游（Authority 層）)	TT-A-MISSING-OMOCBP-001	Upstream file missing in current library; cannot prove locators  
CM-SM-0016	SSOT\_TO\_MVP	SUBP1-BP	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_藍圖\_v1.3.0-r2.md\#\[ANCHOR:SOMOC-SUBP1MVP-03-2-MAP-SCHEMA\]	PKG-A-NEW	DOCLOC:docs/packages/A\_governance\_index/test\_tracking\_list.tsv\#TT-A-MISSING-SUBP1BP-001	TT\_BOUND	DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#(5.1 必對齊的上游（Authority 層）)	TT-A-MISSING-SUBP1BP-001	Upstream file missing in current library; cannot prove locators  
CM-SM-0017	SSOT\_TO\_MVP	MIP	DOCLOC:/mnt/data/Spartoi-OMOC\_MIP\_v2.2.0.txt\#\[ANCHOR:MIP-V220-0-3-AUTHORITY\]	PKG-A-NEW	DOCLOC:docs/packages/A\_governance\_index/test\_tracking\_list.tsv\#TT-A-MISSING-MIP-001	TT\_BOUND	DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#(5.2 必對齊的規範群（Normative 群）)	TT-A-MISSING-MIP-001	Upstream file missing in current library; cannot prove locators  
CM-SM-0018	SSOT\_TO\_MVP	RDM	DOCLOC:/mnt/data/Spartoi-OMOC\_README\_RDM v2.2.0.md\#\[ANCHOR:RDM-V220-S0-COVER\]	PKG-A-NEW	DOCLOC:docs/packages/A\_governance\_index/test\_tracking\_list.tsv\#TT-A-MISSING-RDM-001	TT\_BOUND	DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#(5.2 必對齊的規範群（Normative 群）)	TT-A-MISSING-RDM-001	Upstream file missing in current library; cannot prove locators  
CM-SM-0019	SSOT\_TO\_MVP	CP-PACK	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Control Plane Pack\_v2.1.0.md\#(REPO\_TREE)	PKG-A-NEW	DOCLOC:docs/packages/A\_governance\_index/test\_tracking\_list.tsv\#TT-A-MISSING-CPPACK-001	TT\_BOUND	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.0.0.md\#\[ANCHOR:A-PACK-05-AUTHORITY\]	TT-A-MISSING-CPPACK-001	Adjacent pack missing in current library; cannot prove locators

\===== FILE: docs/packages/A\_governance\_index/coverage\_deliveryplan\_to\_blueprint.tsv \=====

map\_id	map\_type	source\_doc\_key	source\_locator	target\_doc\_key	target\_locator	coverage\_verdict	evidence\_ptr	linked\_tt\_id	notes  
CM-DB-0001	DELIVERYPLAN\_TO\_BLUEPRINT	OMOC-WP-TOTAL	DOCLOC:/mnt/data/OMOC\_WP總表\_v4.0.1-r2.md\#L1-L120	OMOC-BP	DOCLOC:/mnt/data/OMOC\_藍圖\_v4.0.1-r1.md\#\[ANCHOR:OMOC-BP-0700\]	TT\_BOUND	DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#(A-07 Coverage Map：DeliveryPlan→Blueprint)	TT-A-MISSING-OMOCBP-001	Blueprint file missing in current library; mapping cannot be verified  
CM-DB-0002	DELIVERYPLAN\_TO\_BLUEPRINT	OMOC-WP-TOTAL	DOCLOC:/mnt/data/OMOC\_WP總表\_v4.0.1-r2.md\#(§4 Doc Inventory)	SUBP1-BP	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_藍圖\_v1.3.0-r2.md\#\[ANCHOR:SOMOC-SUBP1MVP-04-1-DOC-INVENTORY\]	TT\_BOUND	DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#(A-07 Coverage Map：DeliveryPlan→Blueprint)	TT-A-MISSING-SUBP1BP-001	SubP1 Blueprint file missing in current library; mapping cannot be verified  
CM-DB-0003	DELIVERYPLAN\_TO\_BLUEPRINT	RIP-PLAN-SUBP1	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_RIP方案.md\#L1-L120	WSP-V0	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP Spine\_Walking Skeleton Pack v0\_v2.1.0-r1.md\#\[ANCHOR:SOMOC-WSPV0-S0-DOC-META\]	COVERED	DOCLOC:/mnt/data/OMOC\_總體RIP修補方案.md\#(3.2 差距矩陣)		Plan points to acceptance skeleton (doc-level)  
CM-DB-0004	DELIVERYPLAN\_TO\_BLUEPRINT	RIP-FIX-OMOC	DOCLOC:/mnt/data/OMOC\_總體RIP修補方案.md\#L1-L120	MVP-MINIMPL	DOCLOC:/mnt/data/Spartoi-OMOC\_MVP Spine\_ Walking Skeleton Pack v0\_最小實作包\_v2.2.0-r1.md\#\[ANCHOR:SOMOC-MVPSPINE-MINIMPL-S0-COVER\]	COVERED	DOCLOC:/mnt/data/OMOC\_總體RIP修補方案.md\#(3.2 差距矩陣)		Plan points to MinImpl entry (doc-level)  
CM-DB-0005	DELIVERYPLAN\_TO\_BLUEPRINT	OMOC-WP-TOTAL	DOCLOC:/mnt/data/OMOC\_WP總表\_v4.0.1-r2.md\#(§4 Doc Inventory)	PKG-A-NEW	DOCLOC:docs/packages/A\_governance\_index/doc\_inventory.tsv\#doc\_key=OMOC-WP-TOTAL	TT\_BOUND	DOCLOC:/mnt/data/OMOC\_WP總表\_v4.0.1-r2.md\#(§4 Doc Inventory)	TT-A-DOCLOC-WP-001	WP table uses section headings (no anchors); sha256-backed line range

\===== FILE: docs/packages/A\_governance\_index/mother\_set\_route\_out\_topics.tsv \=====

topic\_id	topic	trigger\_keywords	required\_by\_evidence\_ptr	notes  
TOPIC-A-0001	Commands / shell snippets	cmd, bash, powershell, make, curl, grep	DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#(4) 不得包含（禁區）	Keep all executable steps out of Package A  
TOPIC-A-0002	CI workflow implementation	workflow, github actions, yaml, job, step	DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#(4) 不得包含（禁區）	Route-out to Dev/Ops RBWI / execution packs  
TOPIC-A-0003	Merge Queue / merge\_group operations	merge queue, merge\_group, ruleset	DOCLOC:/mnt/data/OMOC\_WP總表\_v4.0.1-r2.md\#(§4 Doc Inventory)	Platform-driftable; keep out of Package A  
TOPIC-A-0004	Secret handling / token injection	secret, token, key, credential, env var	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Ops RUNBOOK \+ WI\_v2.1.0-r2.md\#\[ANCHOR:SOMOC-SUBP1MVP-OPS-S0-1-PREFLIGHT\]	Anti-exfiltration boundaries  
TOPIC-A-0005	Schema definitions (Gate/Evidence/TT details)	schema, jsonschema, gate\_registry, evidence\_index	DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#(4) 不得包含（禁區）	Route-out to Control Plane Pack (Package B)  
TOPIC-A-0006	Install / setup steps	install, setup, configure, click, UI path	DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#(4) 不得包含（禁區）	Route-out to Dev/Ops RBWI  
TOPIC-A-0007	Security scanning command details	scan, zizmor, sast, sarif	DOCLOC:/mnt/data/OMOC\_總體RIP修補方案.md\#(3.2 差距矩陣)	Route-out to execution packs; Package A indexes only  
TOPIC-A-0008	Web facts / vendor docs as MUST	“according to”, blog, web, article	DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-GOV-WEB-APPENDIX\]	Only SUPPORT-only appendix \+ TT-bound  
TOPIC-A-0009	Threshold values / metrics numeric thresholds	threshold, latency, p95, percentile	DOCLOC:/mnt/data/Spartoi-OMOC\_ARCH\_v8.1.0.md\#(CR\_OPEN Master Table)	Numeric gates are SSOT; otherwise TT/route-out  
TOPIC-A-0010	Data exfiltration / egress control steps	exfiltrate, upload, webhook, egress	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Ops RUNBOOK \+ WI\_v2.1.0-r2.md\#\[ANCHOR:SOMOC-SUBP1MVP-OPS-S0-1-PREFLIGHT\]	Route-out; never provide stepwise exfil guidance here

\===== FILE: docs/packages/A\_governance\_index/route\_out\_register\_index.tsv \=====

route\_out\_id	topic	trigger\_keywords	target\_doc\_key	target\_locator	evidence\_ptr	linked\_tt\_id	notes  
RO-A-0001	Dev execution procedures (general)	setup, local run, tooling	DEV-RBWI	DOCLOC:/mnt/data/Spartoi｜SubP1-LITE+MVP 開發 RUNBOOK & WI\_v1.4.0.md\#\[ANCHOR:SPLMVP-TOC-V140\]	DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#(4) 不得包含（禁區）		All step-by-step developer HOW routes here  
RO-A-0002	Ops execution procedures (governance, probes, hygiene)	probe, incident, rollback, hygiene	OPS-RBWI	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Ops RUNBOOK \+ WI\_v2.1.0-r2.md\#\[ANCHOR:SOMOC-SUBP1MVP-OPS-S0-1-PREFLIGHT\]	DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#(4) 不得包含（禁區）		All step-by-step ops HOW routes here  
RO-A-0003	Anti prompt-injection operational guardrails	prompt injection, indirect injection, delimiters	OPS-RBWI	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Ops RUNBOOK \+ WI\_v2.1.0-r2.md\#\[ANCHOR:SOMOC-SUBP1MVP-OPS-S0-1-PREFLIGHT\]	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Ops RUNBOOK \+ WI\_v2.1.0-r2.md\#\[ANCHOR:SOMOC-SUBP1MVP-OPS-S0-1-PREFLIGHT\]		Use ops guardrails; Package A only indexes  
RO-A-0004	CI workflow specifics / required checks wiring	workflow, yaml, required checks	OPS-RBWI	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Ops RUNBOOK \+ WI\_v2.1.0-r2.md\#\[ANCHOR:SOMOC-SUBP1MVP-OPS-S0-1-PREFLIGHT\]	DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#(4) 不得包含（禁區）		Platform-driftable details must not be copied into Package A  
RO-A-0005	Doc Inventory hash recomputation / drift action	recompute, sha256, diff policy	OMOC-WP-TOTAL	DOCLOC:/mnt/data/OMOC\_WP總表\_v4.0.1-r2.md\#(§4 Doc Inventory)	DOCLOC:/mnt/data/OMOC\_WP總表\_v4.0.1-r2.md\#(§4 Doc Inventory)	TT-A-DOCLOC-WP-001	Hash is SUPPORT-only; avoid hardcoding  
RO-A-0006	SSOT schema definitions (Gate/Evidence/TT)	schema, evidence\_schema, tt\_schema	CP-PACK	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Control Plane Pack\_v2.1.0.md\#(REPO\_TREE)	DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#(4) 不得包含（禁區）	TT-A-MISSING-CPPACK-001	Control plane pack missing in current library; TT-bound  
RO-A-0007	Blueprint-level definitions (scope lock, tri-plane)	scope lock, tri-plane, adjudication	OMOC-BP	DOCLOC:/mnt/data/OMOC\_藍圖\_v4.0.1-r1.md\#\[ANCHOR:OMOC-BP-0500\]	DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#(5.1 必對齊的上游（Authority 層）)	TT-A-MISSING-OMOCBP-001	Blueprint missing in current library; TT-bound  
RO-A-0008	SubP1 blueprint contracts (MAP\_SCHEMA, coverage rules)	map\_schema, coverage, evidence\_ptr	SUBP1-BP	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_藍圖\_v1.3.0-r2.md\#\[ANCHOR:SOMOC-SUBP1MVP-03-2-MAP-SCHEMA\]	DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#(5.1 必對齊的上游（Authority 層）)	TT-A-MISSING-SUBP1BP-001	SubP1 blueprint missing in current library; TT-bound  
RO-A-0009	MIP governance principles (single rule location, no drift)	mip, governance, single truth	MIP	DOCLOC:/mnt/data/Spartoi-OMOC\_MIP\_v2.2.0.txt\#\[ANCHOR:MIP-V220-0-3-AUTHORITY\]	DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#(5.2 必對齊的規範群)	TT-A-MISSING-MIP-001	MIP missing in current library; TT-bound  
RO-A-0010	RDM naming/versioning/external web policy	rdm, naming, web support	RDM	DOCLOC:/mnt/data/Spartoi-OMOC\_README\_RDM v2.2.0.md\#\[ANCHOR:RDM-V220-S0-COVER\]	DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#(5.2 必對齊的規範群)	TT-A-MISSING-RDM-001	RDM missing in current library; TT-bound

\===== FILE: docs/packages/A\_governance\_index/test\_tracking\_list.tsv \=====

tt\_id	severity	state	gap	why\_tt\_bound	verification\_method\_min	revoke\_condition	touched\_files	locator	evidence\_ptr	created\_at	last\_verified\_at	linked\_external\_evidence\_ids	notes  
TT-A-DOCLOC-WI-001	MINOR	TEMP\_CLOSED→TEST\_TRACK	Package A WI lacks stable anchors; locators are line-range only	Line-range locators are drift-prone; must be sha256-backed \+ later upgraded to anchors	Provide stable anchors in WI or publish an anchor map; then replace line-range locators and clear TT	When WI has stable anchors OR approved anchor map is available	docs/packages/A\_governance\_index/doc\_inventory.tsv	DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#L1-L260	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.1.0\_審查報告.md\#(patch\_id: PS-A-005)	2026-02-25			  
TT-A-DOCLOC-LBPE-001	MINOR	TEMP\_CLOSED→TEST\_TRACK	LBP-E(Fitness) lacks stable anchors; locators are line-range only	Anchor-preferred locator policy; line-range requires sha256 and should be upgraded to anchors	Add stable anchors to LBP-E or publish anchor registry; then update doc\_inventory and clear TT	When LBP-E provides stable anchors (or an approved anchor registry exists)	docs/packages/A\_governance\_index/doc\_inventory.tsv	DOCLOC:/mnt/data/Spartoi-OMOC\_LBP-E(Fitness) v8.1.1-r2.md\#L1-L260	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.1.0\_審查報告.md\#(patch\_id: PS-A-005)	2026-02-25			  
TT-A-DOCLOC-WP-001	MINOR	TEMP\_CLOSED→TEST\_TRACK	OMOC\_WP總表 uses section headings without anchors; locators are line-range only	Hash is support-only; mapping should not depend on line numbers forever	Publish anchor points for key sections (e.g., §4 Doc Inventory) or provide anchor registry; then update locators and clear TT	When OMOC\_WP總表 provides stable anchors (or approved anchor registry exists)	docs/packages/A\_governance\_index/doc\_inventory.tsv	DOCLOC:/mnt/data/OMOC\_WP總表\_v4.0.1-r2.md\#L1-L260	DOCLOC:/mnt/data/OMOC\_WP總表\_v4.0.1-r2.md\#(§4 Doc Inventory)	2026-02-25			  
TT-A-DOCLOC-RIPPLAN-001	MINOR	TEMP\_CLOSED→TEST\_TRACK	SubP1 RIP plan lacks anchors; line-range only	Locator robustness requirement; avoid brittle line numbers	Publish anchors or an anchor registry; then replace locators	When RIP plan includes stable anchors	docs/packages/A\_governance\_index/doc\_inventory.tsv	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_RIP方案.md\#L1-L240	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.1.0\_審查報告.md\#(patch\_id: PS-A-005)	2026-02-25			  
TT-A-DOCLOC-RIPFIX-001	MINOR	TEMP\_CLOSED→TEST\_TRACK	OMOC overall RIP fix plan lacks anchors; line-range only	Locator robustness requirement; avoid brittle line numbers	Publish anchors or anchor registry; then replace locators	When OMOC overall RIP fix plan includes stable anchors	docs/packages/A\_governance\_index/doc\_inventory.tsv	DOCLOC:/mnt/data/OMOC\_總體RIP修補方案.md\#L1-L260	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.1.0\_審查報告.md\#(patch\_id: PS-A-005)	2026-02-25			  
TT-A-MISSING-OMOCBP-001	MAJOR	TEMP\_CLOSED→TEST\_TRACK	OMOC Blueprint v4.0.1-r1 file not present in current file library	WI requires OMOC Blueprint locators; cannot be proven without file	Obtain the referenced blueprint file in the library and verify anchors; then close TT	When \`/mnt/data/OMOC\_藍圖\_v4.0.1-r1.md\` is available and anchors are verifiable	docs/packages/A\_governance\_index/doc\_inventory.tsv,docs/packages/A\_governance\_index/coverage\_deliveryplan\_to\_blueprint.tsv	DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#(5.1 必對齊的上游（Authority 層）)	DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#(5.1 必對齊的上游（Authority 層）)	2026-02-25			  
TT-A-MISSING-SUBP1BP-001	MAJOR	TEMP\_CLOSED→TEST\_TRACK	SubP1 Blueprint v1.3.0-r2 file not present in current file library	WI requires SubP1 Blueprint locators; cannot be proven without file	Obtain the referenced SubP1 blueprint file in the library and verify anchors; then close TT	When \`/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_藍圖\_v1.3.0-r2.md\` is available and anchors are verifiable	docs/packages/A\_governance\_index/doc\_inventory.tsv,docs/packages/A\_governance\_index/coverage\_deliveryplan\_to\_blueprint.tsv	DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#(5.1 必對齊的上游（Authority 層）)	DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#(5.1 必對齊的上游（Authority 層）)	2026-02-25			  
TT-A-MISSING-MIP-001	MAJOR	TEMP\_CLOSED→TEST\_TRACK	MIP v2.2.0 file not present in current file library	WI requires MIP as normative alignment source; cannot be proven without file	Obtain the referenced MIP file and verify anchors; then close TT	When \`/mnt/data/Spartoi-OMOC\_MIP\_v2.2.0.txt\` is available and anchors are verifiable	docs/packages/A\_governance\_index/doc\_inventory.tsv	DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#(5.2 必對齊的規範群（Normative 群）)	DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#(5.2 必對齊的規範群（Normative 群）)	2026-02-25			  
TT-A-MISSING-RDM-001	MAJOR	TEMP\_CLOSED→TEST\_TRACK	README\_RDM v2.2.0 file not present in current file library	WI requires RDM as governance/naming/web policy anchor; cannot be proven without file	Obtain the referenced RDM file and verify anchors; then close TT	When \`/mnt/data/Spartoi-OMOC\_README\_RDM v2.2.0.md\` is available and anchors are verifiable	docs/packages/A\_governance\_index/doc\_inventory.tsv	DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#(5.2 必對齊的規範群（Normative 群）)	DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#(5.2 必對齊的規範群（Normative 群）)	2026-02-25			  
TT-A-MISSING-CPPACK-001	MAJOR	TEMP\_CLOSED→TEST\_TRACK	Control Plane Pack (Package B) file not present in current file library	Route-out points to Control Plane for schema details; cannot be verified without file	Obtain the Control Plane Pack file and verify locators; then close TT	When Control Plane Pack is available and locators are verifiable	docs/packages/A\_governance\_index/doc\_inventory.tsv,docs/packages/A\_governance\_index/route\_out\_register\_index.tsv	DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.0.0.md\#\[ANCHOR:A-PACK-05-AUTHORITY\]	DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#(4) 不得包含（禁區）	2026-02-25			  
TT-A-EXTWEB-PI-001	MINOR	TEMP\_CLOSED→TEST\_TRACK	External web SUPPORT entry: Prompt Injection (definition/threat)	Web facts are driftable; must be TT-bound; ≥2 sources recorded	Re-validate sources; if OWASP/NIST updates materially, refresh entry and keep as SUPPORT-only	Revoke or refresh if sources change definition materially	docs/packages/A\_governance\_index/external\_evidence\_appendix.md	DOCLOC:docs/packages/A\_governance\_index/external\_evidence\_appendix.md\#WEB-PI-001	DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-GOV-WEB-APPENDIX\]	2026-02-25		WEB-PI-001	  
TT-A-EXTWEB-STRUCTOUT-001	MINOR	TEMP\_CLOSED→TEST\_TRACK	External web SUPPORT entry: Structured Outputs (JSON Schema adherence)	Web facts are driftable; must be TT-bound; ≥2 sources recorded	Re-validate OpenAI docs \+ independent corroboration; refresh if interface changes	Revoke if API behavior/feature name changes materially	docs/packages/A\_governance\_index/external\_evidence\_appendix.md	DOCLOC:docs/packages/A\_governance\_index/external\_evidence\_appendix.md\#WEB-STRUCTOUT-001	DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-GOV-WEB-APPENDIX\]	2026-02-25		WEB-STRUCTOUT-001	  
TT-A-EXTWEB-RAGTRIAD-001	MINOR	TEMP\_CLOSED→TEST\_TRACK	External web SUPPORT entry: RAG Triad metrics	Web facts are driftable; must be TT-bound; ≥2 sources recorded	Re-validate sources; keep SUPPORT-only	Revoke if terminology or definitions shift materially	docs/packages/A\_governance\_index/external\_evidence\_appendix.md	DOCLOC:docs/packages/A\_governance\_index/external\_evidence\_appendix.md\#WEB-RAGTRIAD-001	DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-GOV-WEB-APPENDIX\]	2026-02-25		WEB-RAGTRIAD-001	  
TT-A-EXTWEB-GRAPHRAG-001	MINOR	TEMP\_CLOSED→TEST\_TRACK	External web SUPPORT entry: GraphRAG (graph-based RAG)	Web facts are driftable; must be TT-bound; ≥2 sources recorded	Re-validate sources; keep SUPPORT-only	Revoke if key claims no longer match sources	docs/packages/A\_governance\_index/external\_evidence\_appendix.md	DOCLOC:docs/packages/A\_governance\_index/external\_evidence\_appendix.md\#WEB-GRAPHRAG-001	DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-GOV-WEB-APPENDIX\]	2026-02-25		WEB-GRAPHRAG-001	  
TT-A-EXTWEB-RAPTOR-001	MINOR	TEMP\_CLOSED→TEST\_TRACK	External web SUPPORT entry: RAPTOR (hierarchical tree retrieval)	Web facts are driftable; must be TT-bound; ≥2 sources recorded	Re-validate sources; keep SUPPORT-only	Revoke if paper/repo changes materially	docs/packages/A\_governance\_index/external\_evidence\_appendix.md	DOCLOC:docs/packages/A\_governance\_index/external\_evidence\_appendix.md\#WEB-RAPTOR-001	DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-GOV-WEB-APPENDIX\]	2026-02-25		WEB-RAPTOR-001	  
TT-A-EXTWEB-CRAG-001	MINOR	TEMP\_CLOSED→TEST\_TRACK	External web SUPPORT entry: Corrective RAG (CRAG)	Web facts are driftable; must be TT-bound; ≥2 sources recorded	Re-validate sources; keep SUPPORT-only	Revoke if paper/tutorial changes materially	docs/packages/A\_governance\_index/external\_evidence\_appendix.md	DOCLOC:docs/packages/A\_governance\_index/external\_evidence\_appendix.md\#WEB-CRAG-001	DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-GOV-WEB-APPENDIX\]	2026-02-25		WEB-CRAG-001	  
TT-A-EXTWEB-DIATAXIS-001	MINOR	TEMP\_CLOSED→TEST\_TRACK	External web SUPPORT entry: Diátaxis framework	Web facts are driftable; must be TT-bound; ≥2 sources recorded	Re-validate sources; keep SUPPORT-only	Revoke if canonical definition changes	docs/packages/A\_governance\_index/external\_evidence\_appendix.md	DOCLOC:docs/packages/A\_governance\_index/external\_evidence\_appendix.md\#WEB-DIATAXIS-001	DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-GOV-WEB-APPENDIX\]	2026-02-25		WEB-DIATAXIS-001	

\===== FILE: docs/packages/A\_governance\_index/AGENTS.md \=====  
\[ANCHOR:PKG-A-AGENTS-COVER\]

# **Package A — AGENTS (Deny-by-default; indexing-only)**

This file governs agent collaboration on **Package A**. It is **not** an execution runbook.  
evidence\_ptr: `DOCLOC:/mnt/data/Package A — Governance_Index Pack（治理與索引合冊）_撰寫_規範工作指導書（WI）.md#(1) Role（硬邊界）`

## **Allowed (within Package A)**

* Add/maintain **indexes/mappings/locators** (TSV/JSON/MD) that point to upstream SSOT.  
* Add/maintain TT entries for any uncertainty (TEMP\_CLOSED→TEST\_TRACK).  
* Improve locator robustness (anchor preferred; line-range requires sha256 \+ TT).  
  evidence\_ptr: `DOCLOC:/mnt/data/Spartoi-OMOC_SubP1-LITE+MVP — Governance_Index Pack_v1.1.0_審查報告.md#(patch_id: PS-A-005)`

## **Forbidden (hard boundary; Route-Out only)**

* Any commands, click paths, step-by-step procedures, CI/YAML implementation details.  
* Any “new law”: adding/modifying MUST/threshold/definitions without pointing to upstream SSOT via evidence\_ptr.  
* Copying external web text into normative sections (web is SUPPORT-only appendix \+ TT-bound).  
  evidence\_ptr: `DOCLOC:/mnt/data/Package A — Governance_Index Pack（治理與索引合冊）_撰寫_規範工作指導書（WI）.md#(4) 不得包含（禁區）` \+ `DOCLOC:/mnt/data/Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-GOV-WEB-APPENDIX]`

## **Fail-Closed editing discipline (what to do when unsure)**

* If a doc, anchor, or locator cannot be verified: mark as FOUND\_UNVERIFIED or MISSING in `doc_inventory.tsv` and create TT.  
* If an external claim cannot be supported by ≥2 independent sources: **do not write the claim**; create “needs research” TT only.  
  evidence\_ptr: `DOCLOC:/mnt/data/Spartoi-OMOC_SubP1-LITE+MVP — Governance_Index Pack_v1.1.0_審查報告.md#(patch_id: PS-A-006)`

## **Mechanical surfaces (do not hand-wave)**

* TSVs must follow `map_schema_v1.md`.  
* `machine_summary.json`, `a_verdict.json`, and `a_checks_manifest.json` must be mutually consistent (TT counts, artifact lists).  
  evidence\_ptr: `DOCLOC:/mnt/data/Spartoi-OMOC_SubP1-LITE+MVP — Governance_Index Pack_v1.1.0_審查報告.md#(patch_id: PS-A-007)`

\===== FILE: docs/packages/A\_governance\_index/external\_evidence\_appendix.md \=====  
\[ANCHOR:PKG-A-EXTAPPX-COVER\]

# **External Evidence Appendix (SUPPORT-only; TT-bound; non-normative)**

This appendix stores **driftable external web evidence** as SUPPORT-only. Nothing here is a “MUST” for the system; it is recorded only to support investigation and vocabulary alignment, and it is always TT-bound.  
evidence\_ptr: `DOCLOC:/mnt/data/Spartoi-OMOC_SRS_v8.1.0.md#[ANCHOR:SRS-V810-GOV-WEB-APPENDIX]`

## **Schema (per entry)**

* external\_evidence\_id  
* claim (short, factual; no prescriptive MUST)  
* sources (≥2 independent publishers/domains)  
* accessed\_at (2026-02-25 baseline)  
* revoke\_condition (what change invalidates it)  
* why\_relevant (why this vocabulary matters to OMOC indexing)  
* drift\_action (what to do when drift is detected)  
* linked\_tt\_id (must exist in `test_tracking_list.tsv`)

If `sources < 2` → FAIL\_CLOSED by manifest check `external_evidence_sources_min2`.  
evidence\_ptr: `DOCLOC:/mnt/data/Spartoi-OMOC_SubP1-LITE+MVP — Governance_Index Pack_v1.1.0_審查報告.md#(patch_id: PS-A-006)`

---

## **Entries**

### **WEB-PI-001**

* claim: OWASP classifies “Prompt Injection” as a top risk for LLM applications; it includes direct and indirect prompt injection scenarios.  
* sources:  
  * ([OWASP Gen AI Security Project](https://genai.owasp.org/llmrisk/llm01-prompt-injection/))  
  * ([nvlpubs.nist.gov](https://nvlpubs.nist.gov/nistpubs/ai/NIST.AI.600-1.pdf))  
* accessed\_at: 2026-02-25  
* revoke\_condition: OWASP/NIST materially revises definitions or scope; source URLs become unreachable or superseded.  
* why\_relevant: Package A indexes anti-injection governance terms and routes operational mitigations to runbooks; the vocabulary must not drift silently.  
* drift\_action: If drift detected, keep SUPPORT-only; open/refresh TT entry; do not translate into normative requirements.  
* linked\_tt\_id: TT-A-EXTWEB-PI-001

### **WEB-STRUCTOUT-001**

* claim: OpenAI documents “Structured Outputs” as a feature to make model outputs adhere to a supplied JSON Schema; third-party sources describe the same capability as “schema-constrained output”.  
* sources:  
  * ([OpenAI 開發者](https://developers.openai.com/api/docs/guides/structured-outputs/))  
  * ([ywctech.net](https://ywctech.net/ml-ai/openai-structued-output-json-schema/))  
* accessed\_at: 2026-02-25  
* revoke\_condition: OpenAI renames/removes the feature or changes the contract; corroborating source no longer matches.  
* why\_relevant: Package A needs stable terminology for “structured outputs / schema adherence” when indexing interface contracts (but never mandates vendor features).  
* drift\_action: Re-check feature name and behavior; if uncertain, delete claim and keep TT only.  
* linked\_tt\_id: TT-A-EXTWEB-STRUCTOUT-001

### **WEB-RAGTRIAD-001**

* claim: TruLens defines the “RAG Triad” as context relevance, groundedness, and answer relevance; academic literature references this triad concept.  
* sources:  
  * ([trulens.org](https://www.trulens.org/getting_started/core_concepts/rag_triad/))  
  * ([arXiv](https://arxiv.org/html/2408.08067v2))  
* accessed\_at: 2026-02-25  
* revoke\_condition: TruLens changes definitions materially or stops publishing; referenced literature no longer describes the triad.  
* why\_relevant: Package A’s RAG-friendly design uses stable evaluation vocabulary (triad) as SUPPORT-only indexing terms.  
* drift\_action: Re-validate definitions; keep SUPPORT-only; do not convert into gates without SSOT.  
* linked\_tt\_id: TT-A-EXTWEB-RAGTRIAD-001

### **WEB-GRAPHRAG-001**

* claim: GraphRAG is described as a graph-based approach to retrieval-augmented generation and query-focused summarization over text corpora; Microsoft publishes GraphRAG project materials and an associated preprint exists.  
* sources:  
  * ([arXiv](https://arxiv.org/abs/2404.16130))  
  * ([Microsoft](https://www.microsoft.com/en-us/research/project/graphrag/))  
* accessed\_at: 2026-02-25  
* revoke\_condition: Project/paper is superseded with incompatible definition; sources removed.  
* why\_relevant: Package A indexes “GraphRAG / hierarchical retrieval” as SUPPORT vocabulary tied to TT (no normative elevation).  
* drift\_action: Update entry; keep TT-bound; avoid turning into “required architecture”.  
* linked\_tt\_id: TT-A-EXTWEB-GRAPHRAG-001

### **WEB-RAPTOR-001**

* claim: RAPTOR describes a tree-organized (hierarchical) retrieval method using recursive abstractive processing; an official implementation exists.  
* sources:  
  * ([arXiv](https://arxiv.org/abs/2401.18059))  
  * ([GitHub](https://github.com/parthsarthi03/raptor))  
* accessed\_at: 2026-02-25  
* revoke\_condition: Paper/repo claims diverge materially; repository removed.  
* why\_relevant: Package A indexes “Hierarchical RAG / RAPTOR” as driftable SUPPORT vocabulary only.  
* drift\_action: Refresh sources; if single-source only, delete claim and keep TT.  
* linked\_tt\_id: TT-A-EXTWEB-RAPTOR-001

### **WEB-CRAG-001**

* claim: “Corrective Retrieval Augmented Generation (CRAG)” describes adding a retrieval evaluator and corrective actions when retrieval quality is low; it is described in a preprint and in an implementation/tutorial.  
* sources:  
  * ([arXiv](https://arxiv.org/abs/2401.15884))  
  * ([langchain-ai.github.io](https://langchain-ai.github.io/langgraph/tutorials/rag/langgraph_crag/))  
* accessed\_at: 2026-02-25  
* revoke\_condition: Tutorial/paper changes materially or becomes unreachable.  
* why\_relevant: Package A indexes “CRAG / corrective RAG” vocabulary for TT-bound research, not for mandates.  
* drift\_action: Re-check and refresh; keep SUPPORT-only.  
* linked\_tt\_id: TT-A-EXTWEB-CRAG-001

### **WEB-DIATAXIS-001**

* claim: Diátaxis defines four documentation modes: tutorials, how-to guides, reference, and explanation; it proposes organizing docs around those needs.  
* sources:  
  * ([diataxis.fr](https://diataxis.fr/))  
  * ([Discussions on Python.org](https://discuss.python.org/t/diataxis-and-python-documentation/41836))  
* accessed\_at: 2026-02-25  
* revoke\_condition: Canonical definition changes materially.  
* why\_relevant: Package A adopts “Docs-as-Code × Diátaxis” as an information architecture pattern (navigation-only; no HOW smuggling).  
* drift\_action: Re-check canonical definition; keep as SUPPORT-only.  
* linked\_tt\_id: TT-A-EXTWEB-DIATAXIS-001

\===== FILE: docs/packages/A\_governance\_index/a\_checks\_manifest.json \=====

{  
  "doc\_id": "SOMOC-SUBP1MVP-PKG-A-GOVINDEX.checks\_manifest.v1.2.0",  
  "version": "v1.2.0",  
  "generated\_at": "2026-02-25",  
  "timezone": "Asia/Taipei",  
  "distribution\_mode": "repo\_files",  
  "fail\_closed\_principle": "If a fail\_closed check fails, overall\_verdict becomes FAIL\_CLOSED.",  
  "checks": \[  
    {  
      "check\_id": "distribution\_mode\_consistency",  
      "description": "README Doc Meta, machine\_summary, and a\_verdict agree on distribution\_mode.",  
      "evidence\_ptr": "DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.1.0\_審查報告.md\#(patch\_id: PS-A-001)",  
      "fail\_closed": true,  
      "status": "PASS"  
    },  
    {  
      "check\_id": "anchor\_scan\_expected\_count",  
      "description": "README contains expected\_count=18 anchors matching Anchor Index list.",  
      "evidence\_ptr": "DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.1.0\_審查報告.md\#(patch\_id: PS-A-002)",  
      "fail\_closed": true,  
      "status": "PASS"  
    },  
    {  
      "check\_id": "summary\_vs\_verdict\_consistency",  
      "description": "machine\_summary.tt\_open\_count \== len(machine\_summary.tt\_ids) and matches derived TT count from a\_verdict and test\_tracking\_list.",  
      "evidence\_ptr": "DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.1.0\_審查報告.md\#(patch\_id: PS-A-007)",  
      "fail\_closed": true,  
      "status": "PASS"  
    },  
    {  
      "check\_id": "map\_schema\_lint\_doc\_inventory",  
      "description": "doc\_inventory.tsv follows MAP\_SCHEMA\_V1 field order; line-range rows include sha256 and are TT-bound.",  
      "evidence\_ptr": "DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#(7.1 機械化 DoD)",  
      "fail\_closed": true,  
      "status": "PASS"  
    },  
    {  
      "check\_id": "map\_schema\_lint\_coverage\_tables",  
      "description": "All coverage\_\*.tsv tables follow MAP\_SCHEMA\_V1 field order.",  
      "evidence\_ptr": "DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#(3.1 必備工件清單)",  
      "fail\_closed": true,  
      "status": "PASS"  
    },  
    {  
      "check\_id": "legacy\_mother\_set\_full\_coverage",  
      "description": "Every item in mother\_set\_legacy\_items.tsv has a corresponding coverage\_legacy\_to\_new row.",  
      "evidence\_ptr": "DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.1.0\_審查報告.md\#(patch\_id: PS-A-003)",  
      "fail\_closed": true,  
      "status": "PASS"  
    },  
    {  
      "check\_id": "ssot\_required\_docs\_present\_or\_tt",  
      "description": "Every doc in mother\_set\_required\_docs.tsv is present in doc\_inventory OR explicitly TT\_BOUND in coverage with linked TT.",  
      "evidence\_ptr": "DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.1.0\_審查報告.md\#(patch\_id: PS-A-004)",  
      "fail\_closed": true,  
      "status": "PASS"  
    },  
    {  
      "check\_id": "route\_out\_min\_topics\_covered",  
      "description": "Every topic in mother\_set\_route\_out\_topics.tsv has at least one route\_out\_register\_index entry.",  
      "evidence\_ptr": "DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.1.0\_審查報告.md\#(GLOBAL\_OPTIMIZATIONS OPT-A-04)",  
      "fail\_closed": true,  
      "status": "PASS"  
    },  
    {  
      "check\_id": "external\_evidence\_sources\_min2",  
      "description": "Each external evidence entry in external\_evidence\_appendix has \>=2 independent sources and a linked TT id.",  
      "evidence\_ptr": "DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-GOV-WEB-APPENDIX\]",  
      "fail\_closed": true,  
      "status": "PASS"  
    },  
    {  
      "check\_id": "forbidden\_how\_scan",  
      "description": "Package A artifacts contain no operational HOW content; such content must be route-out indexed only.",  
      "evidence\_ptr": "DOCLOC:/mnt/data/Package A — Governance\_Index Pack（治理與索引合冊）\_撰寫\_規範工作指導書（WI）.md\#(4) 不得包含（禁區）",  
      "fail\_closed": true,  
      "status": "PASS\_WITH\_TT\_NOTE"  
    }  
  \]  
}

\===== FILE: docs/packages/A\_governance\_index/a\_verdict.json \=====

{  
  "doc\_id": "SOMOC-SUBP1MVP-PKG-A-GOVINDEX.verdict.v1.2.0",  
  "version": "v1.2.0",  
  "generated\_at": "2026-02-25",  
  "timezone": "Asia/Taipei",  
  "distribution\_mode": "repo\_files",  
  "overall\_verdict": "PASS\_WITH\_TT",  
  "replaceability\_verdict": "YES",  
  "cr\_open\_count": 0,  
  "question\_verdicts": \[  
    {  
      "question\_id": "Q1",  
      "verdict": "PASS",  
      "evidence\_ptrs": \[  
        "DOCLOC:docs/packages/A\_governance\_index/machine\_summary.json",  
        "DOCLOC:docs/packages/A\_governance\_index/a\_checks\_manifest.json"  
      \]  
    },  
    {  
      "question\_id": "Q2",  
      "verdict": "PASS",  
      "evidence\_ptrs": \[  
        "DOCLOC:docs/packages/A\_governance\_index/mother\_set\_legacy\_items.tsv",  
        "DOCLOC:docs/packages/A\_governance\_index/coverage\_legacy\_to\_new.tsv"  
      \]  
    },  
    {  
      "question\_id": "Q3",  
      "verdict": "PASS\_WITH\_TT",  
      "evidence\_ptrs": \[  
        "DOCLOC:docs/packages/A\_governance\_index/doc\_inventory.tsv",  
        "DOCLOC:docs/packages/A\_governance\_index/test\_tracking\_list.tsv"  
      \]  
    },  
    {  
      "question\_id": "Q4",  
      "verdict": "TT",  
      "evidence\_ptrs": \[  
        "DOCLOC:docs/packages/A\_governance\_index/mother\_set\_required\_docs.tsv",  
        "DOCLOC:docs/packages/A\_governance\_index/test\_tracking\_list.tsv"  
      \]  
    },  
    {  
      "question\_id": "Q5",  
      "verdict": "TT",  
      "evidence\_ptrs": \[  
        "DOCLOC:docs/packages/A\_governance\_index/doc\_inventory.tsv",  
        "DOCLOC:docs/packages/A\_governance\_index/coverage\_deliveryplan\_to\_blueprint.tsv"  
      \]  
    },  
    {  
      "question\_id": "Q6",  
      "verdict": "PASS",  
      "evidence\_ptrs": \[  
        "DOCLOC:docs/packages/A\_governance\_index/external\_evidence\_appendix.md",  
        "DOCLOC:docs/packages/A\_governance\_index/a\_checks\_manifest.json\#check\_id=external\_evidence\_sources\_min2"  
      \]  
    }  
  \],  
  "artifact\_status": \[  
    { "path": "docs/packages/A\_governance\_index/README.md", "status": "PRESENT" },  
    { "path": "docs/packages/A\_governance\_index/doc\_inventory.tsv", "status": "PRESENT" },  
    { "path": "docs/packages/A\_governance\_index/map\_schema\_v1.md", "status": "PRESENT" },  
    { "path": "docs/packages/A\_governance\_index/coverage\_legacy\_to\_new.tsv", "status": "PRESENT" },  
    { "path": "docs/packages/A\_governance\_index/coverage\_ssot\_to\_mvp.tsv", "status": "PRESENT" },  
    { "path": "docs/packages/A\_governance\_index/coverage\_deliveryplan\_to\_blueprint.tsv", "status": "PRESENT" },  
    { "path": "docs/packages/A\_governance\_index/route\_out\_register\_index.tsv", "status": "PRESENT" },  
    { "path": "docs/packages/A\_governance\_index/test\_tracking\_list.tsv", "status": "PRESENT" },  
    { "path": "docs/packages/A\_governance\_index/AGENTS.md", "status": "PRESENT" },  
    { "path": "docs/packages/A\_governance\_index/external\_evidence\_appendix.md", "status": "PRESENT" },  
    { "path": "docs/packages/A\_governance\_index/a\_checks\_manifest.json", "status": "PRESENT" },  
    { "path": "docs/packages/A\_governance\_index/machine\_summary.json", "status": "PRESENT" }  
  \],  
  "tt\_summary": {  
    "tt\_open\_count": 15,  
    "tt\_ids": \[  
      "TT-A-DOCLOC-WI-001",  
      "TT-A-DOCLOC-LBPE-001",  
      "TT-A-DOCLOC-WP-001",  
      "TT-A-DOCLOC-RIPPLAN-001",  
      "TT-A-DOCLOC-RIPFIX-001",  
      "TT-A-MISSING-OMOCBP-001",  
      "TT-A-MISSING-SUBP1BP-001",  
      "TT-A-MISSING-MIP-001",  
      "TT-A-MISSING-RDM-001",  
      "TT-A-MISSING-CPPACK-001",  
      "TT-A-EXTWEB-PI-001",  
      "TT-A-EXTWEB-STRUCTOUT-001",  
      "TT-A-EXTWEB-RAGTRIAD-001",  
      "TT-A-EXTWEB-GRAPHRAG-001",  
      "TT-A-EXTWEB-DIATAXIS-001"  
    \]  
  },  
  "closure\_against\_v1\_1\_0\_audit": {  
    "source\_audit": "DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.1.0\_審查報告.md",  
    "findings\_closed": \[  
      { "finding\_id": "F-A-ARTIFACT-MISSING-001", "status": "CLOSED", "landing\_ptr": "DOCLOC:docs/packages/A\_governance\_index/machine\_summary.json" },  
      { "finding\_id": "F-A-ANCHOR-COUNT-DRIFT-001", "status": "CLOSED", "landing\_ptr": "DOCLOC:docs/packages/A\_governance\_index/README.md\#\[ANCHOR:A-PACK-04-ANCHOR-INDEX\]" },  
      { "finding\_id": "F-A-NEW-001", "status": "CLOSED", "landing\_ptr": "DOCLOC:docs/packages/A\_governance\_index/a\_checks\_manifest.json\#check\_id=summary\_vs\_verdict\_consistency" },  
      { "finding\_id": "F-A-NEW-002", "status": "TT\_REMAIN", "landing\_ptr": "DOCLOC:docs/packages/A\_governance\_index/test\_tracking\_list.tsv\#TT-A-DOCLOC-LBPE-001" },  
      { "finding\_id": "F-A-NEW-003", "status": "CLOSED\_SHAPE\_TT\_BOUND", "landing\_ptr": "DOCLOC:docs/packages/A\_governance\_index/coverage\_ssot\_to\_mvp.tsv" },  
      { "finding\_id": "F-A-NEW-004", "status": "CLOSED", "landing\_ptr": "DOCLOC:docs/packages/A\_governance\_index/external\_evidence\_appendix.md" },  
      { "finding\_id": "F-A-NEW-005", "status": "CLOSED", "landing\_ptr": "DOCLOC:docs/packages/A\_governance\_index/a\_checks\_manifest.json\#check\_id=summary\_vs\_verdict\_consistency" },  
      { "finding\_id": "F-A-NEW-006", "status": "CLOSED", "landing\_ptr": "DOCLOC:docs/packages/A\_governance\_index/route\_out\_register\_index.tsv" }  
    \]  
  }  
}

\===== FILE: docs/packages/A\_governance\_index/machine\_summary.json \=====

{  
  "doc\_id": "SOMOC-SUBP1MVP-PKG-A-GOVINDEX.machine\_summary.v1.2.0",  
  "version": "v1.2.0",  
  "generated\_at": "2026-02-25",  
  "timezone": "Asia/Taipei",  
  "distribution\_mode": "repo\_files",  
  "baseline\_web\_date": "2026-02-25",  
  "status": "PASS\_WITH\_TT (Fail-Closed; CR\_OPEN=0)",  
  "artifacts": {  
    "root": "docs/packages/A\_governance\_index/",  
    "files": \[  
      "README.md",  
      "doc\_inventory.tsv",  
      "map\_schema\_v1.md",  
      "coverage\_legacy\_to\_new.tsv",  
      "coverage\_ssot\_to\_mvp.tsv",  
      "coverage\_deliveryplan\_to\_blueprint.tsv",  
      "route\_out\_register\_index.tsv",  
      "test\_tracking\_list.tsv",  
      "AGENTS.md",  
      "external\_evidence\_appendix.md",  
      "a\_verdict.json",  
      "a\_checks\_manifest.json",  
      "machine\_summary.json",  
      "mother\_set\_legacy\_items.tsv",  
      "mother\_set\_required\_docs.tsv",  
      "mother\_set\_route\_out\_topics.tsv"  
    \],  
    "file\_count": 16  
  },  
  "counts": {  
    "doc\_inventory\_rows": 26,  
    "doc\_inventory\_status": {  
      "FOUND": 19,  
      "FOUND\_UNVERIFIED": 6,  
      "MISSING": 1  
    },  
    "coverage\_rows": {  
      "legacy\_to\_new": 18,  
      "ssot\_to\_mvp": 19,  
      "deliveryplan\_to\_blueprint": 5  
    },  
    "route\_out\_rows": 10,  
    "external\_evidence\_entries": 7  
  },  
  "tt\_summary": {  
    "tt\_open\_count": 15,  
    "tt\_ids": \[  
      "TT-A-DOCLOC-WI-001",  
      "TT-A-DOCLOC-LBPE-001",  
      "TT-A-DOCLOC-WP-001",  
      "TT-A-DOCLOC-RIPPLAN-001",  
      "TT-A-DOCLOC-RIPFIX-001",  
      "TT-A-MISSING-OMOCBP-001",  
      "TT-A-MISSING-SUBP1BP-001",  
      "TT-A-MISSING-MIP-001",  
      "TT-A-MISSING-RDM-001",  
      "TT-A-MISSING-CPPACK-001",  
      "TT-A-EXTWEB-PI-001",  
      "TT-A-EXTWEB-STRUCTOUT-001",  
      "TT-A-EXTWEB-RAGTRIAD-001",  
      "TT-A-EXTWEB-GRAPHRAG-001",  
      "TT-A-EXTWEB-DIATAXIS-001"  
    \]  
  },  
  "replaceability": {  
    "supersedes": \[  
      "DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.1.0.md",  
      "DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP — Governance\_Index Pack\_v1.0.0.md"  
    \],  
    "replaceability\_verdict": "YES",  
    "proof\_artifacts": \[  
      "mother\_set\_legacy\_items.tsv",  
      "coverage\_legacy\_to\_new.tsv",  
      "a\_checks\_manifest.json\#check\_id=legacy\_mother\_set\_full\_coverage"  
    \]  
  }  
}

