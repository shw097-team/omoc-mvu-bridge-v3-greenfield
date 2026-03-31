# HOW (extracted)


| keyword | anchor |
| ----- | ----- |
| authority stack / conflict rules | \[ANCHOR:PKGE-V120R1-04-AUTHORITY-CONFLICT\] |
| scope lock / route-out / forbidden HOW | \[ANCHOR:PKGE-V120R1-05-SCOPE-ROUTEOUT\] |
| doc inventory / locator proof | \[ANCHOR:PKGE-V120R1-06-DOC-INVENTORY\] |
| deliverable contract / MC4 / WP.Master / SS-Lite | \[ANCHOR:PKGE-V120R1-07-DELIVERABLE-CONTRACT\] |
| alignment matrix (A/B/C/D \+ plans) | \[ANCHOR:PKGE-V120R1-08-ALIGNMENT-MATRIX\] |
| manifest / validator / release\_guard | \[ANCHOR:PKGE-V120R1-09-MANIFEST-VALIDATOR\] |
| 15× subsystem deliveries | \[ANCHOR:PKGE-V120R1-10-15X-DELIVERIES\] |
| traceability matrix / MAP\_SCHEMA\_V1 | \[ANCHOR:PKGE-V120R1-11-TRACEABILITY\] |
| findings closure (v1.1.0 audit) | \[ANCHOR:PKGE-V120R1-12-FINDINGS-CLOSURE\] |
| legacy closure (v1.0.0 audit) | \[ANCHOR:PKGE-V120R1-13-LEGACY-CLOSURE\] |
| TT register / CR\_OPEN=0 | \[ANCHOR:PKGE-V120R1-14-TT-REGISTER\] |
| test tracking list | \[ANCHOR:PKGE-V120R1-15-TEST-TRACKING\] |
| web evidence appendix | \[ANCHOR:PKGE-V120R1-16-APPX-WEB\] |
| machine summary (counts / scans) | \[ANCHOR:PKGE-V120R1-17-APPX-MACHINE\] |
| self-audit checklist | \[ANCHOR:PKGE-V120R1-18-SELF-AUDIT\] |


---


| rule\_id | rule\_text | enforcement | evidence\_ptr |
| ----- | ----- | ----- | ----- |
| PKGE-R-NSNN-01 | Any MUST/forbidden/required/threshold statement is valid only if it includes evidence\_ptr immediately; otherwise it becomes TT. | Fail-Closed | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_藍圖\_v1.3.0-r2.md\#\[ANCHOR:SOMOC-SUBP1MVP-02-2-NO-ANCHOR-NO-CLAIM\] |
| PKGE-R-SCOPE-01 | Package E delivers 15×(MC4+WP.Master)+SS-Lite+traceability+gate/evidence hooks; MUST NOT rewrite Control Plane or Factory rules. | Fail-Closed | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_前端文檔到實作驗收\_工程指南.md\#\[\#sec3.5-pkg-e-delivery\] \+ DOCLOC:/mnt/data/Package E — Subsystem Delivery Pack（15 子系統交付合冊）\_撰寫\_規範工作指導書（WI）.md\#WI-E-1 |
| PKGE-R-ONEPAGE-01 | One-page card cannot replace MC4 or WP.Master; doing so blocks acceptance. | Fail-Closed | DOCLOC:/mnt/data/Package E — Subsystem Delivery Pack（15 子系統交付合冊）\_撰寫\_規範工作指導書（WI）.md\#WI-E-4 |
| PKGE-R-SSLITE-01 | SS\_SRS/SS\_ARCH must use SS-Lite minimal template and be machine-verifiable (validator contract). | Fail-Closed | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_前端文檔到實作驗收\_工程指南.md\#\[\#sec5.2-sslite-generation\] \+ DOCLOC:/mnt/data/Package E — Subsystem Delivery Pack（15 子系統交付合冊）\_撰寫\_規範工作指導書（WI）.md\#WI-E-5 |
| PKGE-R-RELEASE-01 | If repo\_existence \!= PASS then release verdict MUST be FAIL\_CLOSED (not TEMP). | Fail-Closed | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Subsystem Delivery Pack\_v1.1.0\_審查報告.md\#FIND-PKGE-BC-002 |
| PKGE-R-CRZERO-01 | CR\_OPEN must be 0; all gaps must be TT with revoke\_condition \+ how\_to\_verify \+ exit\_criteria. | Fail-Closed | DOCLOC:/mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Subsystem Delivery Pack\_v1.1.0\_審查報告.md\#(9) TT REGISTER |


---


| route\_out\_id | out\_of\_scope\_topic | correct\_home | action |
| ----- | ----- | ----- | ----- |
| RO-PKGE-001 | Any command/click-path/CI details | WP.Master / RUNBOOK & WI | Do not include; only point to correct home. |
| RO-PKGE-002 | Control plane schema definitions (TT/evidence/gates) | Package B (Control Plane Pack) | Reference via evidence\_ptr; do not redefine. |
| RO-PKGE-003 | Factory validators / GateRunner implementation | Package D (Factory Pack) | Consume via manifest+validator interface; do not implement here. |


---


| doc\_key | path | role | status | locator\_proof\_1 | locator\_proof\_2 | disposition |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| PKGE\_v1.2.0\_r1 | (this document) | TARGET | FOUND | \[ANCHOR:PKGE-V120R1-00-COVER\] | \[ANCHOR:PKGE-V120R1-14-TT-REGISTER\] | OK |
| PKGE\_v1.1.0 | /mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Subsystem Delivery Pack\_v1.1.0.md | LEGACY | FOUND | \[ANCHOR:PKGE-V110R1-00-COVER\] | \[ANCHOR:PKGE-V110R1-09-MANIFEST\] | OK |
| PKGE\_v1.0.0 | /mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Subsystem Delivery Pack\_v1.0.0.md | LEGACY | FOUND | \[ANCHOR:PKGE-04-DOC-INVENTORY\] | \[ANCHOR:PKGE-10-TRACEABILITY-MATRIX\] | OK |
| PKGE\_v1.1.0\_AUDIT | /mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Subsystem Delivery Pack\_v1.1.0\_審查報告.md | AUDIT | FOUND | (0) OVERALL\_VERDICT | (9) TT REGISTER | OK |
| PKGE\_v1.0.0\_AUDIT | /mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Subsystem Delivery Pack\_v1.0.0\_審查報告.md | AUDIT | FOUND | \[2\] PREFLIGHT — DOC INVENTORY | \[5\] 15× SUBSYSTEM COVERAGE TABLE | OK |
| WI-E | /mnt/data/Package E — Subsystem Delivery Pack（15 子系統交付合冊）\_撰寫\_規範工作指導書（WI）.md | NORMATIVE | FOUND | WI-E-1 | WI-E-8.1 | OK |
| ENG-GUIDE | /mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_前端文檔到實作驗收\_工程指南.md | NORMATIVE | FOUND | \[\#sec3.5-pkg-e-delivery\] | \[\#sec5.3-wpmaster-routing\] | OK |
| OMOC-BP | /mnt/data/OMOC\_藍圖\_v4.0.1-r1.md | SSOT | FOUND | \[ANCHOR:OMOC-BP-0500\] | \[ANCHOR:OMOC-BP-0400\] | OK |
| SUBP1-BP | /mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_藍圖\_v1.3.0-r2.md | SSOT | FOUND | \[ANCHOR:SOMOC-SUBP1MVP-03-2-MAP-SCHEMA\] | \[ANCHOR:SOMOC-SUBP1MVP-02-2-NO-ANCHOR-NO-CLAIM\] | OK |
| SRS | /mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md | SSOT | FOUND | \[ANCHOR:SRS-V810-1-2-15CA\] | \[ANCHOR:SRS-V810-REQ-EVID-TRIPLET\] | OK |
| ARCH | /mnt/data/Spartoi-OMOC\_ARCH\_v8.1.0.md | SSOT | FOUND | \[ANCHOR:ARCH-V810-SEC4\] | \[ANCHOR:ARCH-V810-4-0-REGISTRY\] | OK |
| MIP | /mnt/data/Spartoi-OMOC\_MIP\_v2.2.0.txt | SSOT | FOUND | \[ANCHOR:MIP-V220-SEC1\] | \[ANCHOR:MIP-V220-1-3-ANTIDRIFT\] | OK |
| PKG-A | /mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP \_Governance\_Index Pack\_v1.2.0.md | CROSS-PACK | FOUND | \[ANCHOR:A-PACK-00-COVER\] | \[ANCHOR:A-PACK-02-NO-SOURCE-NO-CLAIM\] | OK |
| PKG-B | /mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Control Plane Pack\_v2.2.0.md | CROSS-PACK | FOUND | \[ANCHOR:CP-PACK-S0-COVER\] | (schema registry / maps) | OK |
| PKG-C | /mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Execution Pack\_v1.2.0.md | CROSS-PACK | FOUND | \[ANCHOR:CEXE-V120-ROOT\] | \[ANCHOR:CXE-V120-INTERFACES\] | OK |
| PKG-D | /mnt/data/Spartoi-OMOC\_SubP1-LITE+MVP\_Factory Pack\_v1.2.0.md | CROSS-PACK | FOUND | (0) DOC\_IDENTITY \+ MACHINE\_SUMMARY\_JSON | (10) TT REGISTER | OK |
| PLAN-PIPE-A | /mnt/data/Pipeline-A\_組合方案 v2.md | PLAN | FOUND | 0\) 封面卡 | 1\) 需求對齊 | OK |
| PLAN-PIPE-B | /mnt/data/Pipeline-B 組合方案 v2.md | PLAN | FOUND | 0\) 封面卡 | 1\) 需求對齊 | OK |
| PLAN-PIPE-C | /mnt/data/Pipeline-C組合方案.md | PLAN | FOUND | 0\) 封面卡 | 1\) 需求對齊 | OK |
| PLAN-5CA | /mnt/data/五子系統組合方案.md | PLAN | FOUND | 0\) 封面卡 | 1\) 需求對齊 | OK |
| PLAN-AB-DB | /mnt/data/Pipeline-A+B 整合資料庫方案.md | PLAN | FOUND | 0\) 封面卡 | 1\) 需求對齊 | OK |
| RBWI | /mnt/data/Spartoi｜SubP1-LITE+MVP 開發 RUNBOOK & WI\_v1.4.0.md | IMPLEMENTATION SSOT (Route-Out) | FOUND | \[ANCHOR:SPLMVP-RB-V140-COVER\] | \[ANCHOR:SPLMVP-AI-READER-GUIDE\] | OK |
| REFACTOR-BP | /mnt/data/Spartoi-OMOC\_子系統重構藍圖.md | PLAN/REF | FOUND | 0\) 封面卡 | 1\) 需求對齊 | OK |
| RENAMING | /mnt/data/子系統「顯示名\_宏模組名」改名方案.md | PLAN/REF | FOUND | 3.1 原則 | 3.2 分類 | OK |
| RIP-EXT | /mnt/data/OMOC\_RIP\_外部資料.md | SUPPORT-ONLY (preferred external source) | FOUND | (Doc inventory section) | (security/injection section) | OK |


---


| field | meaning | allowed\_values / rule | evidence\_ptr |
| ----- | ----- | ----- | ----- |
| gate\_id | gate dictionary key | Must exist in SRS gate dictionary; otherwise TT | DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-GATE-DICTIONARY\] |
| evidence\_ptr | pointer to evidence store artifacts | Must point to Evidence Triplet / Bundle / Index; otherwise TT | DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-REQ-EVID-TRIPLET\] |
| coverage\_verdict | per subsystem acceptance | Fail-Closed: without proof cannot be PASS | DOCLOC:/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#\[ANCHOR:SRS-V810-FAIL-CLOSED-RULES\] |


---


| target | required\_alignment\_point | pkge\_evidence\_ptr | status | linked\_tt\_id |
| ----- | ----- | ----- | ----- | ----- |
| ENG-GUIDE | Package E role defined | \[ANCHOR:PKGE-V120R1-07-DELIVERABLE-CONTRACT\] | PASS (document) | (none) |
| ENG-GUIDE | MC4 ruling over one-page card | \[ANCHOR:PKGE-V120R1-07-2-FORBIDDEN-SUBSTITUTIONS\] | PASS (document) | TT-PKGE-REPO-EXIST-001 (release dependency) |
| ENG-GUIDE | SS-Lite generation constraint | \[ANCHOR:PKGE-V120R1-07-1-MIN-DELIVERABLES\] | PASS (schema) | TT-PKGE-REPO-EXIST-001 |
| ENG-GUIDE | WP.Master routing contract exists | \[ANCHOR:PKGE-V120R1-07-1-MIN-DELIVERABLES\] | PASS (document) | TT-PKGE-ROUTE-001.015 |
| ENG-GUIDE | Acceptance metrics require mechanical proof | \[ANCHOR:PKGE-V120R1-09-MANIFEST-VALIDATOR\] | TEMP\_CLOSED→TT | TT-PKGE-REPO-EXIST-001 |


---


| target | required\_alignment\_point | pkge\_evidence\_ptr | status | linked\_tt\_id |
| ----- | ----- | ----- | ----- | ----- |
| WI-E | Role boundary (Lane-P final output) | \[ANCHOR:PKGE-V120R1-07-DELIVERABLE-CONTRACT\] | PASS | (none) |
| WI-E | Minimal deliverables: MC4 \+ WP.Master | \[ANCHOR:PKGE-V120R1-07-1-MIN-DELIVERABLES\] | PASS (document) | TT-PKGE-REPO-EXIST-001 |
| WI-E | One-page card forbidden as replacement | \[ANCHOR:PKGE-V120R1-07-2-FORBIDDEN-SUBSTITUTIONS\] | PASS | TT-PKGE-REPO-EXIST-001 |
| WI-E | SS-Lite template requirement | \[ANCHOR:PKGE-V120R1-07-1-MIN-DELIVERABLES\] | PASS (schema) | TT-PKGE-REPO-EXIST-001 |
| WI-E | DoD: 15/15 coverage\_verdict PASS or TT | \[ANCHOR:PKGE-V120R1-10-15X-DELIVERIES\] | FAIL\_CLOSED (proof) | TT-PKGE-REPO-EXIST-001 |


---


| target | required\_alignment\_point | pkge\_evidence\_ptr | status | linked\_tt\_id |
| ----- | ----- | ----- | ----- | ----- |
| SUBP1-BP | MAP\_SCHEMA\_V1 fixed columns | \[ANCHOR:PKGE-V120R1-11-TRACEABILITY\] | PASS (schema) | TT-PKGE-AUD-002 (legacy) |
| SUBP1-BP | No-Anchor-No-Claim enforced | \[ANCHOR:PKGE-V120R1-02-3-ANTI-HALLUCINATION\] | PASS | (none) |
| SUBP1-BP | TT as closure mechanism (CR\_OPEN=0) | \[ANCHOR:PKGE-V120R1-14-TT-REGISTER\] | PASS | (none) |
| SUBP1-BP | Derived tables must be machine extractable | \[ANCHOR:PKGE-V120R1-17-APPX-MACHINE\] | TEMP\_CLOSED→TT | TT-PKGE-MACH-COUNT-001 |
| SUBP1-BP | Route-Out discipline | \[ANCHOR:PKGE-V120R1-05-3-ROUTEOUT-REGISTER\] | PASS | TT-PKGE-SCOPE-SCAN-001 |


---


| target | required\_alignment\_point | pkge\_evidence\_ptr | status | linked\_tt\_id |
| ----- | ----- | ----- | ----- | ----- |
| PKG-A | TT interoperability expectation | \[ANCHOR:PKGE-V120R1-14-TT-REGISTER\] | UNAVAILABLE→TT | TT-PKGE-ALIGN-ABCD-001 |
| PKG-A | External evidence appendix contract compatibility | \[ANCHOR:PKGE-V120R1-16-APPX-WEB\] | UNAVAILABLE→TT | TT-PKGE-ALIGN-ABCD-001 |
| PKG-A | Doc inventory as machine-extractable table | \[ANCHOR:PKGE-V120R1-06-DOC-INVENTORY\] | PASS | (none) |
| PKG-A | Stable key policy consistency (avoid stable\_id if unverified) | \[ANCHOR:PKGE-V120R1-00-DOC-META\] | PASS | TT-PKGE-ID-001 |
| PKG-A | Coverage mapping discipline (legacy→new) | \[ANCHOR:PKGE-V120R1-13-LEGACY-CLOSURE\] | PASS (document) | TT-PKGE-REPO-EXIST-001 |


---


| target | required\_alignment\_point | pkge\_evidence\_ptr | status | linked\_tt\_id |
| ----- | ----- | ----- | ----- | ----- |
| PKG-B | TT schema lock (no invention) | \[ANCHOR:PKGE-V120R1-14-TT-REGISTER\] | UNAVAILABLE→TT | TT-PKGE-ALIGN-ABCD-001 |
| PKG-B | Evidence schema compatibility (triplet/bundle/index) | \[ANCHOR:PKGE-V120R1-07-3-GATE-EVID-HOOK\] | UNAVAILABLE→TT | TT-PKGE-ALIGN-ABCD-001 |
| PKG-B | Gate registry alignment source | \[ANCHOR:PKGE-V120R1-07-3-GATE-EVID-HOOK\] | TEMP\_CLOSED→TT | TT-PKGE-GATE-001.015 |
| PKG-B | Fail-Closed state machine semantics | \[ANCHOR:PKGE-V120R1-09-MANIFEST-VALIDATOR\] | PASS (document) | (none) |
| PKG-B | Route-out register consistency | \[ANCHOR:PKGE-V120R1-05-3-ROUTEOUT-REGISTER\] | UNAVAILABLE→TT | TT-PKGE-ALIGN-ABCD-001 |


---


| target | required\_alignment\_point | pkge\_evidence\_ptr | status | linked\_tt\_id |
| ----- | ----- | ----- | ----- | ----- |
| PKG-C | Handoff/manifest interface compatibility | \[ANCHOR:PKGE-V120R1-09-MANIFEST-VALIDATOR\] | UNAVAILABLE→TT | TT-PKGE-ALIGN-ABCD-001 |
| PKG-C | Run logs \+ evidence pointers as acceptance outputs | \[ANCHOR:PKGE-V120R1-07-3-GATE-EVID-HOOK\] | TEMP\_CLOSED→TT | TT-PKGE-ROUTE-001.015 |
| PKG-C | TT export contract (if applicable) | \[ANCHOR:PKGE-V120R1-14-TT-REGISTER\] | UNAVAILABLE→TT | TT-PKGE-ALIGN-ABCD-001 |
| PKG-C | No-HOW boundary maintained | \[ANCHOR:PKGE-V120R1-05-SCOPE-ROUTEOUT\] | PASS | TT-PKGE-SCOPE-SCAN-001 |
| PKG-C | Replayability posture preserved | \[ANCHOR:PKGE-V120R1-07-3-GATE-EVID-HOOK\] | TEMP\_CLOSED→TT | TT-PKGE-ROUTE-001.015 |


---


| target | required\_alignment\_point | pkge\_evidence\_ptr | status | linked\_tt\_id |
| ----- | ----- | ----- | ----- | ----- |
| PKG-D | Validator production role (E consumes D) | \[ANCHOR:PKGE-V120R1-09-MANIFEST-VALIDATOR\] | TEMP\_CLOSED→TT | TT-PKGE-REPO-EXIST-001 |
| PKG-D | Checks/manifest schema governance | \[ANCHOR:PKGE-V120R1-09-MANIFEST-VALIDATOR\] | UNAVAILABLE→TT | TT-PKGE-ALIGN-ABCD-001 |
| PKG-D | Evidence outputs produced by factory lane | \[ANCHOR:PKGE-V120R1-07-3-GATE-EVID-HOOK\] | TEMP\_CLOSED→TT | TT-PKGE-EVID-001.015 |
| PKG-D | CR\_OPEN=0 discipline mirrored | \[ANCHOR:PKGE-V120R1-14-TT-REGISTER\] | PASS | (none) |
| PKG-D | Anti-regression proof via parity maps | \[ANCHOR:PKGE-V120R1-13-LEGACY-CLOSURE\] | TEMP\_CLOSED→TT | TT-PKGE-REPO-EXIST-001 |


---


| target | required\_alignment\_point | pkge\_evidence\_ptr | status | linked\_tt\_id |
| ----- | ----- | ----- | ----- | ----- |
| Pipeline-A/B/C | Package E references plans as alignment only (no HOW) | \[ANCHOR:PKGE-V120R1-05-SCOPE-ROUTEOUT\] | PASS | TT-PKGE-PLAN-REF-001 |
| Pipeline-A+B DB | Single data backbone assumption not contradicted | \[ANCHOR:PKGE-V120R1-07-DELIVERABLE-CONTRACT\] | PASS (non-contradiction) | TT-PKGE-PLAN-REF-001 |
| 五子系統方案 | Cross-cutting subsystems remain thin wrappers; no new engine claims | \[ANCHOR:PKGE-V120R1-10-15X-DELIVERIES\] | PASS (document stance) | TT-PKGE-PLAN-REF-001 |
| RUNBOOK & WI | HOW is routed out to RBWI/WP.Master | \[ANCHOR:PKGE-V120R1-05-3-ROUTEOUT-REGISTER\] | PASS | TT-PKGE-ROUTE-001.015 |
| 改名方案 | stable\_id ≠ display\_name separation used | \[ANCHOR:PKGE-V120R1-10-15X-DELIVERIES\] | TEMP\_CLOSED→TT (values) | TT-PKGE-15CA-META-001 |


---


| field | type | description |
| ----- | ----- | ----- |
| manifest\_version | string | e.g., "pkge\_manifest\_v1" |
| package\_doc\_id | string | must equal this doc\_id |
| repo\_existence | string | PASS / FAIL / UNAVAILABLE |
| generated\_at | string | timestamp (timezone aware) |
| subsystems\_expected | integer | must be 15 |
| subsystems | array | 15 items keyed by stable\_id |
| validator\_result | string | PASS / FAIL |
| validator\_artifacts\_ptr | string | evidence\_ptr to validator log \+ sha256 |
| sha256\_ptr | string | evidence\_ptr to sha256 list |


---


| proof\_item | required | evidence\_ptr (must be filled by Factory Lane) | status |
| ----- | ----- | ----- | ----- |
| pkge\_manifest.json | YES | UNAVAILABLE→TT | TT-PKGE-REPO-EXIST-001 |
| validator\_log.json | YES | UNAVAILABLE→TT | TT-PKGE-REPO-EXIST-001 |
| sha256sum.txt (15× paths \+ hashes) | YES | UNAVAILABLE→TT | TT-PKGE-REPO-EXIST-001 |
| per-subsystem present+sha256 for MC4/WP.Master/SS\_SRS/SS\_ARCH | YES | UNAVAILABLE→TT | TT-PKGE-REPO-EXIST-001 |


---


| idx | stable\_id (15CA) | display\_name | macro\_module | MC4\_ptr | WP\_Master\_ptr | SS\_SRS\_ptr | SS\_ARCH\_ptr | gate\_id | evidence\_ptr | coverage\_verdict | route\_out\_ptr | linked\_tt |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| 1 | CA-WRC | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | RO-PKGE-001 | TT-PKGE-REPO-EXIST-001; TT-PKGE-15CA-META-001 |
| 2 | CA-CORPUS | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | RO-PKGE-001 | TT-PKGE-REPO-EXIST-001; TT-PKGE-15CA-META-001 |
| 3 | CA-DISTILL | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | RO-PKGE-001 | TT-PKGE-REPO-EXIST-001; TT-PKGE-15CA-META-001 |
| 4 | CA-DSL | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | RO-PKGE-001 | TT-PKGE-REPO-EXIST-001; TT-PKGE-15CA-META-001 |
| 5 | CA-METHOD | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | RO-PKGE-001 | TT-PKGE-REPO-EXIST-001; TT-PKGE-15CA-META-001 |
| 6 | CA-BACKTEST | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | RO-PKGE-001 | TT-PKGE-REPO-EXIST-001; TT-PKGE-15CA-META-001 |
| 7 | CA-TA | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | RO-PKGE-001 | TT-PKGE-REPO-EXIST-001; TT-PKGE-15CA-META-001 |
| 8 | CA-SELECT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | RO-PKGE-001 | TT-PKGE-REPO-EXIST-001; TT-PKGE-15CA-META-001 |
| 9 | CA-TRANSLATE | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | RO-PKGE-001 | TT-PKGE-REPO-EXIST-001; TT-PKGE-15CA-META-001 |
| 10 | CA-WATCH | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | RO-PKGE-001 | TT-PKGE-REPO-EXIST-001; TT-PKGE-15CA-META-001 |
| 11 | CA-EXECUTE | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | RO-PKGE-001 | TT-PKGE-REPO-EXIST-001; TT-PKGE-15CA-META-001 |
| 12 | CA-PERFORM | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | RO-PKGE-001 | TT-PKGE-REPO-EXIST-001; TT-PKGE-15CA-META-001 |
| 13 | CA-COLLAB | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | RO-PKGE-001 | TT-PKGE-REPO-EXIST-001; TT-PKGE-15CA-META-001 |
| 14 | CA-UI | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | RO-PKGE-001 | TT-PKGE-REPO-EXIST-001; TT-PKGE-15CA-META-001 |
| 15 | CA-GOVERN | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | RO-PKGE-001 | TT-PKGE-REPO-EXIST-001; TT-PKGE-15CA-META-001 |


---


| stable\_id | subsystem\_display\_name | macro\_module\_name | mc4\_ptr | wp\_master\_ptr | ss\_srs\_ptr | ss\_arch\_ptr | gate\_id | evidence\_ptr | coverage\_verdict | route\_out\_ptr | locator\_proof\_1 | locator\_proof\_2 | linked\_tt\_id |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| CA-WRC | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | RO-PKGE-001 | UNAVAILABLE→TT | UNAVAILABLE→TT | TT-PKGE-REPO-EXIST-001 |
| CA-CORPUS | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | RO-PKGE-001 | UNAVAILABLE→TT | UNAVAILABLE→TT | TT-PKGE-REPO-EXIST-001 |
| CA-DISTILL | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | RO-PKGE-001 | UNAVAILABLE→TT | UNAVAILABLE→TT | TT-PKGE-REPO-EXIST-001 |
| CA-DSL | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | RO-PKGE-001 | UNAVAILABLE→TT | UNAVAILABLE→TT | TT-PKGE-REPO-EXIST-001 |
| CA-METHOD | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | RO-PKGE-001 | UNAVAILABLE→TT | UNAVAILABLE→TT | TT-PKGE-REPO-EXIST-001 |
| CA-BACKTEST | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | RO-PKGE-001 | UNAVAILABLE→TT | UNAVAILABLE→TT | TT-PKGE-REPO-EXIST-001 |
| CA-TA | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | RO-PKGE-001 | UNAVAILABLE→TT | UNAVAILABLE→TT | TT-PKGE-REPO-EXIST-001 |
| CA-SELECT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | RO-PKGE-001 | UNAVAILABLE→TT | UNAVAILABLE→TT | TT-PKGE-REPO-EXIST-001 |
| CA-TRANSLATE | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | RO-PKGE-001 | UNAVAILABLE→TT | UNAVAILABLE→TT | TT-PKGE-REPO-EXIST-001 |
| CA-WATCH | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | RO-PKGE-001 | UNAVAILABLE→TT | UNAVAILABLE→TT | TT-PKGE-REPO-EXIST-001 |
| CA-EXECUTE | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | RO-PKGE-001 | UNAVAILABLE→TT | UNAVAILABLE→TT | TT-PKGE-REPO-EXIST-001 |
| CA-PERFORM | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | RO-PKGE-001 | UNAVAILABLE→TT | UNAVAILABLE→TT | TT-PKGE-REPO-EXIST-001 |
| CA-COLLAB | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | RO-PKGE-001 | UNAVAILABLE→TT | UNAVAILABLE→TT | TT-PKGE-REPO-EXIST-001 |
| CA-UI | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | RO-PKGE-001 | UNAVAILABLE→TT | UNAVAILABLE→TT | TT-PKGE-REPO-EXIST-001 |
| CA-GOVERN | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | UNAVAILABLE→TT | RO-PKGE-001 | UNAVAILABLE→TT | UNAVAILABLE→TT | TT-PKGE-REPO-EXIST-001 |


---


| finding\_id | severity | closure\_anchor\_in\_v1.2.0-r1 | closure\_status | linked\_tt\_id |
| ----- | ----- | ----- | ----- | ----- |
| FIND-PKGE-BC-001 | BLOCKER | \[ANCHOR:PKGE-V120R1-09-MANIFEST-VALIDATOR\] | TEMP\_CLOSED→TT (proof missing) | TT-PKGE-REPO-EXIST-001 |
| FIND-PKGE-BC-002 | BLOCKER | \[ANCHOR:PKGE-V120R1-09-3-RELEASE-GUARD\] | CLOSED (document rule enforced) | TT-PKGE-REPO-EXIST-001 |
| FIND-PKGE-BC-003 | BLOCKER | \[ANCHOR:PKGE-V120R1-00-DOC-META\] | CLOSED (policy enforced) | TT-PKGE-ID-001 |
| FIND-PKGE-MAJ-001 | MAJOR | \[ANCHOR:PKGE-V120R1-12-FINDINGS-CLOSURE\] | CLOSED (wording/closure controlled) | TT-PKGE-MAJ-002 (legacy reference) |
| FIND-PKGE-MAJ-002 | MAJOR | \[ANCHOR:PKGE-V120R1-08-ALIGNMENT-MATRIX\] | TEMP\_CLOSED→TT (needs cross-pack proof) | TT-PKGE-ALIGN-ABCD-001 |
| FIND-PKGE-MAJ-003 | MAJOR | \[ANCHOR:PKGE-V120R1-07-3-GATE-EVID-HOOK\] | TEMP\_CLOSED→TT (values unverified) | TT-PKGE-GATE-001.015; TT-PKGE-EVID-001.015 |
| FIND-PKGE-MIN-001 | MINOR | \[ANCHOR:PKGE-V120R1-17-APPX-MACHINE\] | TEMP\_CLOSED→TT (counts not proven here) | TT-PKGE-MACH-COUNT-001 |
| FIND-PKGE-MIN-002 | MINOR | \[ANCHOR:PKGE-V120R1-16-APPX-WEB\] | CLOSED (web policy tightened: stale→TT) | TT-PKGE-WEB-PI-001 |
| FIND-PKGE-MIN-003 | MINOR | \[ANCHOR:PKGE-V120R1-17-APPX-MACHINE\] | TEMP\_CLOSED→TT (how-leak scan output missing) | TT-PKGE-SCOPE-SCAN-001 |


---


| legacy\_finding\_id | legacy\_claim | v1.2.0-r1 evidence anchor | closure\_status | linked\_tt\_id |
| ----- | ----- | ----- | ----- | ----- |
| F-PKGE-BLK-001 | Self-Audit PASS without evidence | \[ANCHOR:PKGE-V120R1-18-SELF-AUDIT\] | TEMP\_CLOSED→TT | TT-PKGE-REPO-EXIST-001 |
| F-PKGE-BLK-002 | 15× missing manifest | \[ANCHOR:PKGE-V120R1-09-MANIFEST-VALIDATOR\] | TEMP\_CLOSED→TT | TT-PKGE-REPO-EXIST-001 |
| F-PKGE-BLK-003 | Traceability row count/locator gaps | \[ANCHOR:PKGE-V120R1-11-TRACEABILITY\] | TEMP\_CLOSED→TT | TT-PKGE-AUD-002 (legacy) |
| F-PKGE-BLK-004 | Web support black hole | \[ANCHOR:PKGE-V120R1-16-APPX-WEB\] | CLOSED (policy & TT) | TT-PKGE-WEB-PI-001 |
| F-PKGE-MAJ-002 | Template complete but values unverified | \[ANCHOR:PKGE-V120R1-10-15X-DELIVERIES\] | TEMP\_CLOSED→TT | TT-PKGE-ROUTE-001.015; TT-PKGE-GATE-001.015; TT-PKGE-EVID-001.015 |


---


| tt\_id | title | scope | status | trigger | revoke\_condition | how\_to\_verify | exit\_criteria | owner\_hint | linked\_evidence\_ptr | linked\_external\_evidence\_ids |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| TT-PKGE-REPO-EXIST-001 | Repo 15× deliverable existence proof | K1/K5 | TEST\_TRACK | This environment cannot prove repo deliverables exist | When repo provides pkge\_manifest.json and validator\_result=PASS | Compare actual manifest vs expected \+ validator log \+ sha256 list | repo\_existence=PASS and subsystems\_expected=15 and each required file present=true | Factory Owner | \[ANCHOR:PKGE-V120R1-09-4-PROOF-POINTERS\] | (none) |
| TT-PKGE-ROUTE-001.015 | WP.Master routing \+ binding filled with real values | Per-subsystem routing | TEST\_TRACK | Routing fields are placeholders until validated | When RBWI/WP.Master outputs evidence triplet for each subsystem | Run minimal closed-loop once per subsystem (result only) | Each subsystem has at least one replayable evidence triplet | Dev/Ops | \[ANCHOR:PKGE-V120R1-07-1-MIN-DELIVERABLES\] | (none) |
| TT-PKGE-GATE-001.015 | gate\_id alignment to SRS gate dictionary | Gate tracing | TEST\_TRACK | gate\_id values are UNAVAILABLE here | When gate\_id list is extracted from repo deliverables and matches SRS dictionary | Verify gate\_id ∈ SRS gate dictionary (result only) | 15× gate\_id all valid; no placeholders | Auditor | \[ANCHOR:PKGE-V120R1-07-3-GATE-EVID-HOOK\] | (none) |
| TT-PKGE-EVID-001.015 | evidence\_ptr alignment to evidence store | Evidence chain | TEST\_TRACK | evidence\_ptr not locatable to actual store here | When evidence triplets are produced and pointers resolve | Validate triplet schema \+ resolve pointers (result only) | triplet schema-valid and pointers resolvable | Factory Owner | \[ANCHOR:PKGE-V120R1-07-3-GATE-EVID-HOOK\] | (none) |
| TT-PKGE-ID-001 | PKG-E stable\_id primary key risk control | Cross-pack | TEST\_TRACK | stable\_id UNVERIFIED upstream | When SSOT defines PKG-E stable\_id OR explicitly forbids it permanently | Check upstream SSOT for PKG-E stable\_id definition | stable\_id becomes VERIFIED OR policy forbids usage permanently | Governance | \[ANCHOR:PKGE-V120R1-00-DOC-META\] | (none) |
| TT-PKGE-ALIGN-ABCD-001 | Cross-pack alignment proof is line-level and verifiable | Interop | TEST\_TRACK | alignment currently lacks line-level proofs for A/B/C/D schemas | When alignment points have pkge\_evidence\_ptr \+ verified schema/version presence | Validate referenced anchors/schemas exist and match versions | All required\_alignment\_points become PASS or TT with clear revoke | Auditor | \[ANCHOR:PKGE-V120R1-08-ALIGNMENT-MATRIX\] | (none) |
| TT-PKGE-PLAN-REF-001 | Plan/reference point index to prevent drift | Plans | TEST\_TRACK | References exist but index not enumerated | When plan references are listed as pointer-only index | Validate list exists and points to plan anchors | Plan reference index complete; no hidden dependencies | Governance | \[ANCHOR:PKGE-V120R1-06-DOC-INVENTORY\] | (none) |
| TT-PKGE-RIP-PRIO-001 | RIP priority proof for external sourcing | Web/RIP | TEST\_TRACK | Need proof that web entries prefer RIP curated sources | When each web entry includes a RIP linkage or justification | Compare web entries vs RIP curated entries | Every web entry has RIP linkage OR is removed | Security/Auditor | \[ANCHOR:PKGE-V120R1-16-APPX-WEB\] | (none) |
| TT-PKGE-MACH-COUNT-001 | Anchor/subsystem counts machine output missing in this transport | Machine | TEST\_TRACK | No machine output artifacts included here | When machine\_summary.json is generated and referenced | Validate counts (result only) | anchor\_count present; subsystem\_count=15 | Auditor | \[ANCHOR:PKGE-V120R1-17-APPX-MACHINE\] | (none) |
| TT-PKGE-SCOPE-SCAN-001 | HOW-leak scan output missing | Scope | TEST\_TRACK | No mechanical scan output included | When scan output is produced and referenced | Validate scan PASS/FAIL \+ hits list exists | scan PASS with 0 hits OR route-out enforced | Auditor | \[ANCHOR:PKGE-V120R1-17-APPX-MACHINE\] | (none) |
| TT-PKGE-WEB-PI-001 | Prompt-injection safety background drift | Web | TEST\_TRACK | External sources drift; stale risk | When SSOT absorbs as normative or updated sources are aligned | Update sources and check consistency | No stale entries; contradictions become TT | Security/Auditor | \[ANCHOR:PKGE-V120R1-16-APPX-WEB\] | WEB-PI-001 |
| TT-PKGE-15CA-META-001 | 15CA display\_name/macro\_module values unproven in this pack | Naming | TEST\_TRACK | Upstream table not located here; cannot invent | When upstream provides locatable table values | Verify via upstream locator proof | Each subsystem row has display\_name/macro\_module with locator proofs | Governance | \[ANCHOR:PKGE-V120R1-10-2-DELIVERY-TABLE\] | (none) |
| TT-PKGE-AUD-002 | Traceability row-level locator validity audit | Traceability | TEST\_TRACK | Row-level locators cannot be proven here | When row audit report exists | Validate row\_count=15 and each locator valid | All 15 rows have 2 locator proofs resolving | Auditor | \[ANCHOR:PKGE-V120R1-11-TRACEABILITY\] | (none) |


---


| tt\_id | priority | verification\_owner | verification\_deadline | verify\_method | exit\_criteria |
| ----- | ----- | ----- | ----- | ----- | ----- |
| TT-PKGE-REPO-EXIST-001 | P0 | Factory Owner | (unset) | manifest+validator+sha256 comparison | repo\_existence=PASS and 15 subsystems present=true |
| TT-PKGE-GATE-001.015 | P0 | Auditor | (unset) | gate\_id ∈ SRS dictionary check | 15× gate\_id valid; no placeholders |
| TT-PKGE-EVID-001.015 | P0 | Factory Owner | (unset) | triplet schema validation \+ pointer resolution | triplet valid and resolvable pointers |
| TT-PKGE-ROUTE-001.015 | P1 | Dev/Ops | (unset) | minimal closed-loop runs produce evidence | each subsystem has replayable evidence |
| TT-PKGE-ALIGN-ABCD-001 | P1 | Auditor | (unset) | anchor/schema presence and version checks | all required\_alignment\_points PASS/TT with revoke |
| TT-PKGE-AUD-002 | P1 | Auditor | (unset) | traceability locator audit | 15 rows; each has 2 resolving locators |
| TT-PKGE-15CA-META-001 | P2 | Governance | (unset) | upstream naming table locator proof | display\_name/macro\_module filled with proofs |
| TT-PKGE-ID-001 | P2 | Governance | (unset) | upstream PKG-E id policy check | stable\_id verified or permanently forbidden |
| TT-PKGE-MACH-COUNT-001 | P2 | Auditor | (unset) | machine summary count report | anchor\_count present; subsystem\_count=15 |
| TT-PKGE-SCOPE-SCAN-001 | P2 | Auditor | (unset) | how-leak scan report | scan PASS with 0 hits or route-out enforced |
| TT-PKGE-PLAN-REF-001 | P2 | Governance | (unset) | plan reference index presence | complete pointer list |
| TT-PKGE-RIP-PRIO-001 | P2 | Security/Auditor | (unset) | web vs RIP linkage check | every web entry linked or removed |
| TT-PKGE-WEB-PI-001 | P2 | Security/Auditor | (unset) | update sources consistency check | no stale entries; contradictions TT |


---


| ext\_id | claim\_supported (SUPPORT-only) | source\_1 | source\_2 | accessed\_at | revoke\_condition | linked\_tt\_id |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| WEB-PI-001 | prompt-injection background | STALE (not refreshed) | STALE (not refreshed) | 2026-02-24 (stale) | Refresh with accessed\_at=2026-02-25 OR SSOT absorbs as normative | TT-PKGE-WEB-PI-001 |


---


| field | expected\_value | status | linked\_tt |
| ----- | ----- | ----- | ----- |
| anchor\_count | integer | UNAVAILABLE→TT | TT-PKGE-MACH-COUNT-001 |
| subsystem\_count | 15 | UNAVAILABLE→TT | TT-PKGE-MACH-COUNT-001 |
| how\_leak\_scan\_status | PASS/FAIL | UNAVAILABLE→TT | TT-PKGE-SCOPE-SCAN-001 |
| how\_leak\_scan\_hits | integer | UNAVAILABLE→TT | TT-PKGE-SCOPE-SCAN-001 |
| repo\_existence | PASS/FAIL/UNAVAILABLE | UNAVAILABLE→TT | TT-PKGE-REPO-EXIST-001 |
| traceability\_rows | 15 | UNAVAILABLE→TT | TT-PKGE-AUD-002 |
| web\_refs\_count | 0 (in this version) | PASS | (none) |


---


| check\_id | check | status | evidence\_ptr\_or\_tt |
| ----- | ----- | ----- | ----- |
| SA-01 | 15× repo deliverables exist (present+sha256) | UNAVAILABLE→TT | TT-PKGE-REPO-EXIST-001 |
| SA-02 | Each subsystem has MC4 \+ WP.Master \+ SS\_SRS \+ SS\_ARCH | UNAVAILABLE→TT | TT-PKGE-REPO-EXIST-001 |
| SA-03 | Traceability matrix uses MAP\_SCHEMA\_V1 fixed columns | PASS (schema) | \[ANCHOR:PKGE-V120R1-11-1-MAP-SCHEMA-V1\] |
| SA-04 | coverage\_verdict follows Fail-Closed (no proof → not PASS) | PASS (rule) | \[ANCHOR:PKGE-V120R1-02-3-ANTI-HALLUCINATION\] |
| SA-05 | CR\_OPEN=0 and all gaps are TT with revoke/verify/owner | PASS (document) | \[ANCHOR:PKGE-V120R1-14-TT-REGISTER\] |
| SA-06 | Release guard enforces FAIL\_CLOSED when repo\_existence \!= PASS | PASS (document) | \[ANCHOR:PKGE-V120R1-09-3-RELEASE-GUARD\] |
| SA-07 | No HOW leaked into this pack | UNAVAILABLE→TT | TT-PKGE-SCOPE-SCAN-001 |
| SA-08 | Cross-pack alignment is line-level proven | UNAVAILABLE→TT | TT-PKGE-ALIGN-ABCD-001 |
| SA-09 | Replaceability: future work need not read legacy documents | FAIL\_CLOSED (release-level) | TT-PKGE-REPO-EXIST-001 |
| SA-10 | PKG-E stable\_id not used as primary key | PASS (policy) | TT-PKGE-ID-001 \+ \[ANCHOR:PKGE-V120R1-00-DOC-META\] |

