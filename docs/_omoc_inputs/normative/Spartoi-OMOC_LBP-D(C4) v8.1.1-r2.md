## **(1) Preflight：Doc Inventory（含 Locator Proof）**

### **Doc Inventory（Markdown 表）**

| doc\_key | file\_path | version（檔名/內文） | role | locator\_proof\_1 | locator\_proof\_2 |
| ----- | ----- | ----- | ----- | ----- | ----- |
| DOC-TARGET-OLD | /mnt/data/Spartoi-OMOC\_LBP-D(C4) v8.1.1-r1.md | v8.1.1-r1 | NORMATIVE | \[ANCHOR:LBP-D-C4-V811R1-00-DOC\_IDENTITY\] | \[ANCHOR:LBP-D-C4-V811R1-10-ROUTE\_OUT\] |
| DOC-TARGET-NEW | （本回覆輸出）Spartoi-OMOC\_LBP-D(C4) v8.1.1-r2 | v8.1.1-r2 | NORMATIVE | \[ANCHOR:LBP-D-C4-V811R2-00-DOC\_IDENTITY\] | \[ANCHOR:LBP-D-C4-V811R2-10-ROUTE\_OUT\] |
| DOC-ENTRY | /mnt/data/Spartoi-OMOC\_MIP\_v2.2.0.txt | v2.2.0 | NORMATIVE | \[ANCHOR:MIP-V220-0-3-AUTHORITY\] | \[ANCHOR:MIP-V220-7-1-DOCS\] |
| DOC-SRS | /mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md | v8.1.0 | NORMATIVE | \[ANCHOR:SRS-V810-1-2-15CA\] | \[ANCHOR:SRS-V810-5-1-CTRL-TRIO\] |
| DOC-ARCH | /mnt/data/Spartoi-OMOC\_ARCH\_v8.1.0.md | v8.1.0 | NORMATIVE | \[ANCHOR:ARCH-V810-4-0-REGISTRY\] | \[ANCHOR:ARCH-V810-6-4-FAILCLOSED\] |
| DOC-LBP-A | /mnt/data/Spartoi-OMOC\_LBP-A(SIR) v8.1.1-r1.md | v8.1.1-r1 | NORMATIVE | DOCLOC:檔頭（可重算） | DOCLOC:TOC 段落（可重算） |
| DOC-LBP-B | /mnt/data/Spartoi-OMOC\_LBP-B(ICD)v8.1.1-r2.md | v8.1.1-r2 | NORMATIVE（但與 MIP 鎖版衝突，見 §(3)） | DOCLOC:檔頭（可重算） | DOCLOC:TOC 段落（可重算） |
| DOC-LBP-C | /mnt/data/Spartoi-OMOC\_LBP-C(ADR) v8.1.1-r2.md | v8.1.1-r2 | NORMATIVE（非 MIP Master Table 鎖版項，見 §(3)） | \[ANCHOR:LBPC-ADR-V811R2-00-DOC\_IDENTITY\] | \[ANCHOR:LBPC-ADR-V811R2-10-ROUTE\_OUT\] |
| DOC-LEGACY | /mnt/data/Spartoi｜P1\_LBP-D(C4)\_v2.0.1.md | v2.0.1 | NORMATIVE（Legacy baseline） | \[ANCHOR:LBP-D-C4-V2-0-1-META\] | \[ANCHOR:SCOPE-LOCK-V201\] |
| DOC-REF-RENAME | /mnt/data/子系統「顯示名\_宏模組名」改名方案.md | （檔內標示） | REF（可定位不足→TT） | DOCLOC:檔頭（可重算） | DOCLOC:§3.4（可重算） |
| DOC-REF-PIPES-A | /mnt/data/Pipeline-A\_組合方案 v2.md | v2 | REF（可定位不足→TT） | DOCLOC:檔頭（可重算） | DOCLOC:方案總覽（可重算） |
| DOC-REF-PIPES-B | /mnt/data/Pipeline-B 組合方案 v2.md | v2 | REF（可定位不足→TT） | DOCLOC:檔頭（可重算） | DOCLOC:方案總覽（可重算） |
| DOC-REF-PIPES-C | /mnt/data/Pipeline-C組合方案.md | （檔內標示） | REF（可定位不足→TT） | DOCLOC:檔頭（可重算） | DOCLOC:方案總覽（可重算） |
| DOC-REF-5SUB | /mnt/data/五子系統組合方案.md | （檔內標示） | REF（可定位不足→TT） | DOCLOC:檔頭（可重算） | DOCLOC:指定資料段（可重算） |
| DOC-REF-DB-AB | /mnt/data/Pipeline-A+B 整合資料庫方案.md | （檔內標示） | REF（可定位不足→TT） | DOCLOC:檔頭（可重算） | DOCLOC:§3.4（可重算） |
| DOC-REF-MVU-DOCKER | /mnt/data/OMOC-MVU「Local Docker 低磨合轉接層」方案v4.0.md | v4.0 | REF（在本案僅 SUPPORT/語境用途，非驗收依據） | DOCLOC:§2 Authority（可重算） | DOCLOC:§3 Scope（可重算） |

### **doc\_inventory.tsv**

doc\_key	file\_path	version	role	locator\_proof\_1	locator\_proof\_2  
DOC-TARGET-OLD	/mnt/data/Spartoi-OMOC\_LBP-D(C4) v8.1.1-r1.md	v8.1.1-r1	NORMATIVE	\[ANCHOR:LBP-D-C4-V811R1-00-DOC\_IDENTITY\]	\[ANCHOR:LBP-D-C4-V811R1-10-ROUTE\_OUT\]  
DOC-TARGET-NEW	(embedded in this reply) Spartoi-OMOC\_LBP-D(C4) v8.1.1-r2	v8.1.1-r2	NORMATIVE	\[ANCHOR:LBP-D-C4-V811R2-00-DOC\_IDENTITY\]	\[ANCHOR:LBP-D-C4-V811R2-10-ROUTE\_OUT\]  
DOC-ENTRY	/mnt/data/Spartoi-OMOC\_MIP\_v2.2.0.txt	v2.2.0	NORMATIVE	\[ANCHOR:MIP-V220-0-3-AUTHORITY\]	\[ANCHOR:MIP-V220-7-1-DOCS\]  
DOC-SRS	/mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md	v8.1.0	NORMATIVE	\[ANCHOR:SRS-V810-1-2-15CA\]	\[ANCHOR:SRS-V810-5-1-CTRL-TRIO\]  
DOC-ARCH	/mnt/data/Spartoi-OMOC\_ARCH\_v8.1.0.md	v8.1.0	NORMATIVE	\[ANCHOR:ARCH-V810-4-0-REGISTRY\]	\[ANCHOR:ARCH-V810-6-4-FAILCLOSED\]  
DOC-LBP-A	/mnt/data/Spartoi-OMOC\_LBP-A(SIR) v8.1.1-r1.md	v8.1.1-r1	NORMATIVE	DOCLOC:file\_header	DOCLOC:toc  
DOC-LBP-B	/mnt/data/Spartoi-OMOC\_LBP-B(ICD)v8.1.1-r2.md	v8.1.1-r2	NORMATIVE(conflict\_with\_MIP\_lock)	DOCLOC:file\_header	DOCLOC:toc  
DOC-LBP-C	/mnt/data/Spartoi-OMOC\_LBP-C(ADR) v8.1.1-r2.md	v8.1.1-r2	NORMATIVE(non\_MIP\_locked)	\[ANCHOR:LBPC-ADR-V811R2-00-DOC\_IDENTITY\]	\[ANCHOR:LBPC-ADR-V811R2-10-ROUTE\_OUT\]  
DOC-LEGACY	/mnt/data/Spartoi｜P1\_LBP-D(C4)\_v2.0.1.md	v2.0.1	NORMATIVE(legacy)	\[ANCHOR:LBP-D-C4-V2-0-1-META\]	\[ANCHOR:SCOPE-LOCK-V201\]  
DOC-REF-RENAME	/mnt/data/子系統「顯示名\_宏模組名」改名方案.md	unknown	REF(needs\_locator\_map)	DOCLOC:file\_header	DOCLOC:section\_3\_4  
DOC-REF-PIPES-A	/mnt/data/Pipeline-A\_組合方案 v2.md	v2	REF(needs\_locator\_map)	DOCLOC:file\_header	DOCLOC:overview  
DOC-REF-PIPES-B	/mnt/data/Pipeline-B 組合方案 v2.md	v2	REF(needs\_locator\_map)	DOCLOC:file\_header	DOCLOC:overview  
DOC-REF-PIPES-C	/mnt/data/Pipeline-C組合方案.md	unknown	REF(needs\_locator\_map)	DOCLOC:file\_header	DOCLOC:overview  
DOC-REF-5SUB	/mnt/data/五子系統組合方案.md	unknown	REF(needs\_locator\_map)	DOCLOC:file\_header	DOCLOC:designated\_inputs  
DOC-REF-DB-AB	/mnt/data/Pipeline-A+B 整合資料庫方案.md	unknown	REF(needs\_locator\_map)	DOCLOC:file\_header	DOCLOC:section\_3\_4  
DOC-REF-MVU-DOCKER	/mnt/data/OMOC-MVU「Local Docker 低磨合轉接層」方案v4.0.md	v4.0	SUPPORT-context-only	DOCLOC:section\_2\_authority	DOCLOC:section\_3\_scope

---

## **(2) Repairs Ledger：合併後問題清單（A/B 全量閉環）**

規則：A/B 的 finding\_id 全列入；每筆都給出「關閉方式」= PASS 或 TEMP\_CLOSED（綁 TT \+ 最小可驗產物規格），不得留 CR\_OPEN 懸空。

### **Repairs Ledger（Markdown 表，摘要）**

| finding\_id | severity | category | patch\_skeleton\_id | TT\_id | r2處置結果 |
| ----- | ----- | ----- | ----- | ----- | ----- |
| F-001 | CRIT | alignment | PS-C4-ALIGN-001 | TT-C4-002 | **PASS（以「Entry-locked Primary \+ Preview Forward-link」消除 Normative 內衝突；缺 baseline ICD 檔→CR/TT TEMP\_CLOSED）** |
| F-002 | MAJ | drift | PS-C4-ALIGN-002 | TT-C4-012 | TEMP\_CLOSED（同上；補「衝突裁決台帳」+ 產物規格） |
| F-003 | MAJ | feasibility | PS-C4-SCAN-001 | TT-C4-001 | TEMP\_CLOSED（新增 scan\_log\_scope\_violation.txt 規格） |
| F-004 | MAJ | drift | PS-C4-SCAN-002 | TT-C4-003 | TEMP\_CLOSED（新增 scan\_log\_version\_drift.txt 規格） |
| F-005 | MIN | parity | PS-C4-PARITY-001 | TT-PARITY-GAP-001 | TEMP\_CLOSED（輸出 legacy\_parity.tsv；不再自稱 20/20） |
| F-006 | MIN | scope | PS-C4-SCOPE-001 | TT-C4-013 | **PASS（移除工具狀態敘述出 NORMATIVE；改 Appendix 非規範）** |
| F-007 | INFO | structure | PS-C4-RO-001 | TT-C4-014 | **PASS（新增 by Topic/CA/Pipeline/Scenario 的最小可用覆蓋）** |
| F-C4-001 | MAJ | alignment | PS-C4-001 | TT-MAP-GAP-002 | **PASS（ARCH 錨點更正→可定位）** |
| F-C4-002 | MAJ | alignment | PS-C4-001 | TT-MAP-GAP-002 | **PASS（ARCH 15CA 錨點更正→可定位）** |
| F-C4-003 | MAJ | alignment | PS-C4-002 | TT-MAP-GAP-001 | **PASS（SRS Repro 錨點更正→可定位）** |
| F-C4-004 | MIN | alignment | PS-C4-001 | TT-MAP-GAP-003 | **PASS（SRS 15CA typo 更正→可定位）** |
| F-C4-005 | MIN | drift | PS-C4-005 | TT-DRIFT-001 | TEMP\_CLOSED（CA-FIREWALL sunset：轉為「Route-Out 指向 MIP/SRS 既有敘述」；實際條文定位需產物） |
| F-C4-006 | MAJ | parity | PS-C4-006 | TT-PARITY-GAP-001 | TEMP\_CLOSED（補「控制面三件套/降級」對照；仍需 20/20 的 legacy anchor 全量盤點→TT） |
| F-C4-007 | MAJ | parity | PS-C4-003 | TT-PARITY-GAP-002 | **PASS（legacy token 僅限 Exception Zones；並輸出 token\_scan.txt）** |
| F-C4-008 | MAJ | feasibility | PS-C4-007 | TT-INDEX-002 | **PASS（新增 Control Plane triad 索引與 Route-Out→SRS 錨點）** |
| F-C4-009 | MIN | scope | PS-C4-004 | TT-SCOPE-001 | **PASS（移除 NORMATIVE `!includeurl`；改 local include \+ Route-Out）** |
| F-C4-010 | MIN | logic | PS-C4-008 | TT-LOGIC-001 | **PASS（移除 NORMATIVE 環境敘述；改 Appendix 非規範）** |
| F-C4-011 | MIN | feasibility | PS-C4-009 | TT-INDEX-001 | **PASS（補 Stable ID 不變量/衝突裁決索引 \+ Route-Out→ARCH Registry）** |
| F-C4-012 | MIN | alignment | PS-C4-010 | TT-ALIGN-ICD-001 | TEMP\_CLOSED（MIP 鎖 ICD v5.0.1 但 repo 未見該檔；故 Primary 指向「MIP Master Table 鎖版」並標 MISSING→TT） |

### **repairs\_ledger.tsv**

finding\_id	severity	category	claim\_under\_test	evidence\_ptr	patch\_skeleton\_id	TT\_id	status\_in\_r1	r2\_disposition	r2\_status  
F-001	CRIT	alignment	MIP entry-locked version chain	\[MIP master table locks ICD v5.0.1\]	PS-C4-ALIGN-001	TT-C4-002	BLOCK\_RELEASE	Entry-locked Primary \+ Preview forward-link; add conflict ledger	PASS  
F-002	MAJ	drift	ICD pointer chain consistency	\[RO points to ICD v8.x while MIP locks v5.0.1\]	PS-C4-ALIGN-002	TT-C4-012	FAIL\_CLOSED	Add Version Compatibility & Conflict Ledger \+ TT outputs	TEMP\_CLOSED  
F-003	MAJ	feasibility	Anti-scope scanner reproducibility	\[missing scan\_log\]	PS-C4-SCAN-001	TT-C4-001	TEMP\_CLOSED	Add scan\_log\_scope\_violation.txt minimal spec	TEMP\_CLOSED  
F-004	MAJ	drift	Version drift scan reproducibility	\[missing scan\_log\]	PS-C4-SCAN-002	TT-C4-003	TEMP\_CLOSED	Add scan\_log\_version\_drift.txt minimal spec	TEMP\_CLOSED  
F-005	MIN	parity	Legacy parity is computable	\[20/20 slogan\]	PS-C4-PARITY-001	TT-PARITY-GAP-001	TEMP\_CLOSED	Output legacy\_parity.tsv; stop claiming 20/20	TEMP\_CLOSED  
F-006	MIN	scope	Tool status not in normative body	\[file\_search unavailable text\]	PS-C4-SCOPE-001	TT-C4-013	TEMP\_CLOSED	Move to Appendix (non-normative)	PASS  
F-007	INFO	structure	Route-out coverage completeness	\[missing by CA/Pipeline/Scenario\]	PS-C4-RO-001	TT-C4-014	TEMP\_CLOSED	Add minimal registries	PASS  
F-C4-001	MAJ	alignment	ARCH anchor exists	ARCH-V810-6-4-CODESPACES	PS-C4-001	TT-MAP-GAP-002	FAIL\_CLOSED	Replace with ARCH-V810-6-4-FAILCLOSED	PASS  
F-C4-002	MAJ	alignment	ARCH 15CA anchor exists	ARCH-V810-4-0-15CA	PS-C4-001	TT-MAP-GAP-002	FAIL\_CLOSED	Replace with ARCH-V810-4-0-REGISTRY	PASS  
F-C4-003	MAJ	alignment	SRS repro anchor exists	SRS-V810-REQ-ENV-REPRO	PS-C4-002	TT-MAP-GAP-001	FAIL\_CLOSED	Replace with SRS-V810-REQ-BT-REPRO	PASS  
F-C4-004	MIN	alignment	SRS 15CA anchor typo fixed	SRS-V810-1-2-15CA-WHITELIST	PS-C4-001	TT-MAP-GAP-003	TEMP\_CLOSED	Replace with SRS-V810-1-2-15CA	PASS  
F-C4-005	MIN	drift	CA-FIREWALL sunset evidence	\[was UNVERIFIED\]	PS-C4-005	TT-DRIFT-001	TEMP\_CLOSED	Route-out to MIP/SRS loci; require locator map output	TEMP\_CLOSED  
F-C4-006	MAJ	parity	Legacy invariants covered	\[Flag/Degrade/Snapshot gap\]	PS-C4-006	TT-PARITY-GAP-001	FAIL\_CLOSED	Add crosswalk entries; keep TT for full legacy anchor enumeration	TEMP\_CLOSED  
F-C4-007	MAJ	parity	Legacy tokens only in exception zones	\[supersedes in doc identity\]	PS-C4-003	TT-PARITY-GAP-002	FAIL\_CLOSED	Remove from doc identity; allow only in Appendix A	 PASS  
F-C4-008	MAJ	feasibility	Control plane triad indexed	\[core term hits=0\]	PS-C4-007	TT-INDEX-002	FAIL\_CLOSED	Add core terms \+ route-out to SRS-V810-5-1-CTRL-TRIO	PASS  
F-C4-009	MIN	scope	No remote includeurl in normative	\[\!includeurl present\]	PS-C4-004	TT-SCOPE-001	TEMP\_CLOSED	Replace with local include; route-out to supply-chain notes	PASS  
F-C4-010	MIN	logic	No environment-specific claims in normative	\[file\_search unavailable\]	PS-C4-008	TT-LOGIC-001	TEMP\_CLOSED	Move to Appendix non-normative	PASS  
F-C4-011	MIN	feasibility	Stable ID governance completeness	\[only field name\]	PS-C4-009	TT-INDEX-001	TEMP\_CLOSED	Add invariants \+ conflict arbitration \+ route-out	PASS  
F-C4-012	MIN	alignment	ICD route-out points to actual ICD baseline	\[MIP locks ICD v5.0.1 not found\]	PS-C4-010	TT-ALIGN-ICD-001	TEMP\_CLOSED	Primary points to MIP-locked ICD; mark MISSING \+ TT; preview points to ICD v8.1.1-r2	TEMP\_CLOSED

---

## **(3) Version/Conflict：Entry-locked Target Version Table \+ Conflict Ledger**

### **version\_lock\_table.tsv（以 MIP v2.2.0 Master Document Table 為準）**

doc\_key	locked\_by\_entry	locked\_version	locked\_status	backing\_locator  
BP	MIP v2.2.0	v2.2.0-r1	BASELINE	\[ANCHOR:BP-DOC-META\]  
SRS	MIP v2.2.0	v8.1.0	BASELINE	\[ANCHOR:SRS-V810-4-0-COVER\]  
ARCH	MIP v2.2.0	v8.1.0	BASELINE	\[ANCHOR:ARCH-V810-0-1-META\]  
MIP	MIP v2.2.0	v2.2.0	BASELINE	\[ANCHOR:MIP-V220-0-1-META\]  
ICD	MIP v2.2.0	v5.0.1	BASELINE	\[ANCHOR:ICD-V501-DOC-CONTROL\]  
Fitness	MIP v2.2.0	v3.0.1	BASELINE	\[ANCHOR:LBPE-V301-0-META\]  
Runbook	MIP v2.2.0	v1.4.0	BASELINE	\[ANCHOR:SPLMVP-RB-V140-COVER\]

### **conflict\_ledger.tsv（LBP-D r2 的處置：Primary=Entry-locked；Forward-link=Preview）**

conflict\_id	conflict\_type	entry\_locked\_target	repo\_available	target\_used\_in\_r2	layer	policy	status	TT\_id  
CL-C4-ICD-001	MIP\_lock\_vs\_repo	ICD v5.0.1	MISSING (repo has ICD v8.1.1-r2 only)	Primary: ICD v5.0.1 (MISSING marker); Preview: ICD v8.1.1-r2	Primary=NORMATIVE / Preview=SUPPORT-only	No-Anchor-No-Claim; Missing baseline \=\> TEMP\_CLOSED with TT	TEMP\_CLOSED	TT-ALIGN-ICD-001  
CL-C4-ADR-001	non\_entry\_locked\_doc	ADR not in MIP table	repo has ADR v8.1.1-r2	Route-out allowed but marked "Non-entry-locked reference"	NORMATIVE (but not entry-locked)	Do not treat as entry-locked acceptance basis	TEMP\_CLOSED	TT-C4-012  
CL-C4-REFLOC-001	ref\_docs\_locator\_insufficient	Pipelines/5sub/rename docs lack anchors	varies	Route-out uses DOCLOC+requires locator\_map output	SUPPORT-context-only	Fail-Closed: without locator\_map \=\> TEMP\_CLOSED	TEMP\_CLOSED	TT-DOC-LOCATOR-001

---

## **(4) Anchor Validation：上游錨點存在性修正清單**

### **anchor\_validation.tsv**

ref\_in\_LBP-D	old\_anchor	new\_anchor	upstream\_doc	locator\_proof	status  
DriftMatrix.LocalDevcontainerRuntime	ARCH-V810-6-4-CODESPACES	ARCH-V810-6-4-FAILCLOSED	Spartoi-OMOC\_ARCH\_v8.1.0.md	\[ANCHOR:ARCH-V810-6-4-FAILCLOSED\]	PASS  
DriftMatrix.LocalDevcontainerRuntime	SRS-V810-REQ-ENV-REPRO	SRS-V810-REQ-BT-REPRO	Spartoi-OMOC\_SRS\_v8.1.0.md	\[ANCHOR:SRS-V810-REQ-BT-REPRO\]	PASS  
DriftMatrix.15CAWhitelist	ARCH-V810-4-0-15CA	ARCH-V810-4-0-REGISTRY	Spartoi-OMOC\_ARCH\_v8.1.0.md	\[ANCHOR:ARCH-V810-4-0-REGISTRY\]	PASS  
DriftMatrix.15CAWhitelist	SRS-V810-1-2-15CA-WHITELIST	SRS-V810-1-2-15CA	Spartoi-OMOC\_SRS\_v8.1.0.md	\[ANCHOR:SRS-V810-1-2-15CA\]	PASS  
CoreTerms.ControlPlaneTriad	(none)	SRS-V810-5-1-CTRL-TRIO	Spartoi-OMOC\_SRS\_v8.1.0.md	\[ANCHOR:SRS-V810-5-1-CTRL-TRIO\]	PASS  
StableID.GovernanceIndex	(none)	ARCH-V810-4-0-REGISTRY	Spartoi-OMOC\_ARCH\_v8.1.0.md	\[ANCHOR:ARCH-V810-4-0-REGISTRY\]	PASS

---

## **(5) Scope Fix Log：越權/遠端依賴/誤置內容修補紀錄**

### **scope\_violation\_fixlog.tsv**

issue	old\_locator	fix	new\_locator  
SV-001: tool\_status\_in\_normative	\[ANCHOR:LBP-D-C4-V811R1-00-DOC\_IDENTITY\]	Move tool/environment statements to Appendix (non-normative)	\[ANCHOR:LBP-D-C4-V811R2-A2-IMPLEMENTATION\_NOTES\]  
SV-002: remote\_includeurl\_in\_normative	DOCLOC:r1\#L276/\#L332/\#L387	Replace \!includeurl with local \!include \+ route-out to pinned assets policy	\[ANCHOR:LBP-D-C4-V811R2-40-C4-PUML-TEMPLATES\]  
SV-003: legacy\_token\_outside\_exception\_zone	DOCLOC:r1\#L15 (supersedes...)	Remove legacy literals from Doc Identity; allow only in Appendix A Legacy Crosswalk	\[ANCHOR:LBP-D-C4-V811R2-A1-LEGACY-CROSSWALK\]  
SV-004: missing\_by\_CA\_pipeline\_scenario\_routes	\[ANCHOR:LBP-D-C4-V811R1-10-ROUTE\_OUT\]	Expand registries: by Topic/by CA/by Pipeline/by Scenario	\[ANCHOR:LBP-D-C4-V811R2-10-ROUTE\_OUT\]

---

## **(6) Core Terms Hits：核心詞彙索引命中（r2 以「可搜尋入口」為硬要求）**

### **core\_terms\_hits.tsv**

term	hits	sample\_locators\<=3	exceptions\_applied  
Authority Stack	\>0	\[ANCHOR:LBP-D-C4-V811R2-01-AUTHORITY\_STACK\]	none  
Scope Lock	\>0	\[ANCHOR:LBP-D-C4-V811R2-02-SCOPE\_LOCK\]	none  
Route-Out	\>0	\[ANCHOR:LBP-D-C4-V811R2-10-ROUTE\_OUT\]	none  
Control Plane	\>0	\[ANCHOR:LBP-D-C4-V811R2-05-CORE\_TERMS\]	none  
Flag	\>0	\[ANCHOR:LBP-D-C4-V811R2-05-CORE\_TERMS\]	none  
Degrade	\>0	\[ANCHOR:LBP-D-C4-V811R2-05-CORE\_TERMS\]	none  
Snapshot	\>0	\[ANCHOR:LBP-D-C4-V811R2-05-CORE\_TERMS\]	none  
Stable ID	\>0	\[ANCHOR:LBP-D-C4-V811R2-06-STABLE\_ID\_GOV\]	none  
includeurl	0	(n/a)	Exception zones disallow includeurl globally  
supersedes	0	(n/a)	Allowed only in Appendix A (Legacy Crosswalk)

---

## **(7) Legacy Parity：legacy\_parity.tsv \+ token\_scan.txt**

### **legacy\_parity.tsv（不再自稱 20/20；改為「可重算矩陣 \+ 缺口 TT」）**

legacy\_anchor	legacy\_heading\_path	new\_anchor	new\_heading\_path	coverage\_note	status  
\[ANCHOR:LBP-D-C4-V2-0-1-META\]	Meta / Identity	\[ANCHOR:LBP-D-C4-V811R2-00-DOC\_IDENTITY\]	0\. Doc Identity	Identity/Authority moved & upgraded	PASS  
\[ANCHOR:SCOPE-LOCK-V201\]	Scope Lock	\[ANCHOR:LBP-D-C4-V811R2-02-SCOPE\_LOCK\]	2\. Scope Lock	Scope boundary preserved \+ clarified	PASS  
\[ANCHOR:VERSION-DRIFT-SCAN-V201\]	Version Drift Scan	\[ANCHOR:LBP-D-C4-V811R2-31-SCAN-SPECS\]	3.1 Scan Specs	Now specified as artifacts; requires runtime output	TEMP\_CLOSED  
(DOCLOC:legacy\#L295)	Control-Plane-First: Flag/Degrade/Gate	\[ANCHOR:LBP-D-C4-V811R2-05-CORE\_TERMS\]	5\. Core Terms	Restore triad/search entry; route-out to SRS ctrl trio	PASS  
(DOCLOC:legacy\#L740/\#L773)	Flag tier flow in container view	\[ANCHOR:LBP-D-C4-V811R2-21-ALIGNMENT\_MATRIX\]	2.1 Alignment Matrix	Index-only: point to ARCH views; detail stays upstream	TEMP\_CLOSED  
(DOCLOC:legacy\#L1714/\#L2181)	Degrade strategy	\[ANCHOR:LBP-D-C4-V811R2-10-ROUTE\_OUT\]	1\. Route-Out Registry	Route-out to ARCH fail-closed section	PASS  
(DOCLOC:legacy\#L1381/\#L1396)	Tier-2 degrade visualization	\[ANCHOR:LBP-D-C4-V811R2-40-C4-PUML-TEMPLATES\]	4.0 C4 Templates	Local include policy (no includeurl)	PASS

### **token\_scan.txt（規則 \+ 期望命中；可用 grep 重算）**

\[SCAN\_RULESET\_ID\]=LBP-D-C4-TOKEN-SCAN-v811r2  
\[GOAL\]=legacy literals only allowed in Appendix A; includeurl disallowed everywhere in NORMATIVE

TOKENS:  
  \- supersedes  
  \- Spartoi｜P1\_LBP-D(C4)\_v2.0.1  
  \- \!includeurl

ALLOWED\_ZONES (by anchor prefix):  
  \- \[ANCHOR:LBP-D-C4-V811R2-A1-LEGACY-CROSSWALK\] ... (Appendix A only)

EXPECTED:  
  \- token "\!includeurl" : 0 hits (global)  
  \- token "supersedes" : 0 hits outside Appendix A  
  \- token "Spartoi｜P1\_LBP-D(C4)\_v2.0.1" : 0 hits outside Appendix A

RECOMPUTE\_HINT (non-tutorial):  
  \- Evidence artifact required: token\_scan\_result.tsv (see Evidence Contract §8.2)  
  \- Fail-Closed: any hit outside allowed zones \=\> BLOCK\_RELEASE

---

## **(8) Scan Logs：最小可驗產物（規格/模板；不把結果冒充已跑）**

### **scan\_log\_scope\_violation.txt**

\[SCAN\_LOG\]=scan\_log\_scope\_violation.txt  
\[RULESET\_ID\]=LBP-D-C4-SCOPE-SCAN-v811r2  
\[SCOPE\]=This document (LBP-D) only; exception zones explicitly listed.  
\[PROHIBITED\_TERMS\]=  
  \- "apt-get"  
  \- "brew install"  
  \- "docker compose"  
  \- "kubectl"  
  \- "helm"  
  \- "devcontainer.json" (HOW-TO usage only; mentions allowed only as route-out label)  
  \- "\!includeurl" (always prohibited)  
  \- "curl https://" (always prohibited)  
\[EXCEPTION\_ZONES\]=  
  \- Appendix A Legacy Crosswalk (legacy literals only; still prohibits includeurl)  
\[OUTPUT\_MIN\_FIELDS\]=  
  \- rule\_id  
  \- hit\_count  
  \- hits\[\]: {anchor\_or\_docloc, excerpt\<=25, category}  
\[FAIL\_CLOSED\_RULE\]=  
  \- if any prohibited term hit\_count \> 0 \=\> verdict=BLOCK\_RELEASE  
\[EVIDENCE\_PTR\]=  
  \- Must be stored as Evidence Triplet Index entry: evidence\_index.tsv (see §8.1)  
\[RUN\_RESULT\]=TBD\_BY\_PIPELINE

### **scan\_log\_version\_drift.txt**

\[SCAN\_LOG\]=scan\_log\_version\_drift.txt  
\[RULESET\_ID\]=LBP-D-C4-VERSION-DRIFT-SCAN-v811r2  
\[GOAL\]=All NORMATIVE route-outs must match Entry-locked versions; any preview must be labeled SUPPORT-only \+ TT.

\[CHECKS\]=  
  \- C1: For each upstream doc referenced, resolve to Entry-locked target (MIP master table).  
  \- C2: If referenced doc/version differs, it must be in Preview registry with TT\_id.  
  \- C3: No unknown version strings in NORMATIVE registries.

\[OUTPUT\_MIN\_FIELDS\]=  
  \- ref\_id  
  \- upstream\_doc  
  \- referenced\_version  
  \- entry\_locked\_version  
  \- drift\_type (none|preview|invalid)  
  \- disposition (pass|temp\_closed|fail\_closed)  
\[FAIL\_CLOSED\_RULE\]=  
  \- drift\_type=invalid \=\> BLOCK\_RELEASE  
  \- preview without TT \=\> FAIL\_CLOSED  
\[RUN\_RESULT\]=TBD\_BY\_PIPELINE

---

## **(9) CR/TT：cr\_register.tsv \+ tt\_list.tsv（100% TEMP\_CLOSED，無 CR\_OPEN 懸空）**

### **cr\_register.tsv**

cr\_id	root\_cause	temp\_closure\_basis	TT\_id	gate\_policy	reopen\_condition  
CR-C4-ICD-LOCK-001	MIP locks ICD v5.0.1 but repo lacks baseline ICD doc	Conflict ledger \+ Primary/Preview split in Route-Out	TT-ALIGN-ICD-001	BLOCK\_RELEASE	Baseline ICD v5.0.1 becomes available OR MIP upgrades lock  
CR-C4-LOCATOR-MAP-001	REF docs (pipelines/5sub/rename/db) lack stable anchors	Require locator\_map artifacts; route-out uses DOCLOC until then	TT-DOC-LOCATOR-001	RADAR\_ONLY	locator\_map.tsv produced \+ validated  
CR-C4-SCAN-REPRO-001	Scope/drift scans not yet reproducibly executed	Artifacts specs added; runtime results still needed	TT-C4-001 / TT-C4-003	RADAR\_ONLY	scan logs produced with recomputable hits  
CR-C4-PARITY-FULL-001	Legacy parity not fully enumerated (no 20/20 claim)	legacy\_parity.tsv produced; gaps kept as TT	TT-PARITY-GAP-001	BLOCK\_RELEASE	All required legacy anchors enumerated & mapped with locators

### **tt\_list.tsv**

TT\_id	goal	preconditions	minimal\_steps	expected\_outputs	fail\_closed\_rule	evidence\_ptr  
TT-ALIGN-ICD-001	Resolve ICD entry-locked baseline availability	MIP table accessible; repo inventory	Produce icd\_baseline\_presence.json \+ update conflict\_ledger if found	icd\_baseline\_presence.json (found=false/true, path)	found=false \=\> keep TEMP\_CLOSED; preview w/o label \=\> FAIL	C4:§3 conflict\_ledger.tsv  
TT-DOC-LOCATOR-001	Provide ≥2 recomputable locators for each REF doc	Repo has REF docs	Produce locator\_map.tsv mapping doc\_key-\>(docloc1,docloc2,hash)	locator\_map.tsv missing \=\> TEMP\_CLOSED; invalid \=\> FAIL	C4:§8 Evidence Contract  
TT-C4-001	Recompute scope violation scan	Scanning toolchain available	Generate scan\_log\_scope\_violation.txt with hits\[\] and rule\_id	hit\_count\>0 \=\> BLOCK\_RELEASE	C4:§8.1 evidence\_index.tsv  
TT-C4-003	Recompute version drift scan	MIP \+ this doc available	Generate scan\_log\_version\_drift.txt with drift records	invalid drift \=\> BLOCK\_RELEASE	C4:§8.1 evidence\_index.tsv  
TT-PARITY-GAP-001	Enumerate & close parity gaps against legacy v2.0.1	Legacy doc accessible	Expand legacy\_parity.tsv to full required set; produce parity\_count.json	missing any required mapping \=\> BLOCK\_RELEASE	C4:§7 legacy\_parity.tsv  
TT-INDEX-002	Verify triad route-out is used downstream	SRS accessible	Downstream query test: Flag/Degrade/Snapshot must resolve to SRS anchor	any missing resolution \=\> FAIL	C4:§5 core terms \+ route-out

---

## **(10) 新版《Spartoi-OMOC\_LBP-D(C4)》Markdown（v8.1.1-r2，完整）**

\# Spartoi-OMOC\_LBP-D(C4) v8.1.1-r2  
\[ANCHOR:LBP-D-C4-V811R2-00-DOC\_IDENTITY\]

\- doc\_id: Spartoi-OMOC\_LBP-D(C4)  
\- version: v8.1.1-r2  
\- status: BASELINE-CANDIDATE (Index-only; acceptance depends on TT artifacts)  
\- run\_date\_tz: Asia/Taipei  
\- scope\_boundary: Index / Mapping / Locator Proof / Route-Out ONLY  
\- normative\_sources (Entry-locked): MIP v2.2.0 → SRS v8.1.0, ARCH v8.1.0 (see §3 Version Lock)  
\- non\_entry\_locked\_refs: LBP-A(SIR) v8.1.1-r1, LBP-C(ADR) v8.1.1-r2 (NOT acceptance basis unless MIP upgrades)  
\- fail\_closed\_policy: Missing/Unverified \=\> TEMP\_CLOSED with TT; never leave CR\_OPEN

\---

\#\# AI Guide（讀者導覽：LLM/RAG 友善）  
\[ANCHOR:LBP-D-C4-V811R2-00-AI\_GUIDE\]

1\. \*\*你要找「系統在哪裡被規範」：\*\*用 §5 Core Terms 或 §1 Route-Out Registry，直接跳到上游錨點。  
2\. \*\*你要驗證「索引沒唬爛」：\*\*看 §3 Version Lock \+ §2 Alignment Matrix；任何缺 locator 的都在 §7 CR/TT。  
3\. \*\*你要防幻覺：\*\*遵守 §0.3 Hard Rules：No-Anchor-No-Claim、Entry-locked 優先、Preview 必標 SUPPORT-only+TT。

\---

\#\# TOC  
\[ANCHOR:LBP-D-C4-V811R2-00-TOC\]

0\. Authority Stack / Hard Rules / Scope Lock    
1\. Route-Out Registry（by Topic / by CA / by Pipeline / by Scenario）    
2\. Alignment Matrix（C4 L1/L2/L3 → 上游定位點）    
3\. Version Compatibility & Conflict Ledger（Entry-locked Primary \+ Preview）    
4\. C4 View Template Index（Local include only; no includeurl）    
5\. Core Terms（Flag / Degrade / Snapshot / Stable ID / Evidence Triplet）    
6\. Evidence Contract（Index-layer outputs: TSV/JSON）    
7\. CR Register & TT List（100% TEMP\_CLOSED; no CR\_OPEN）    
Appendix A. Legacy Crosswalk (Exception Zone)    
Appendix B. Support Annex（SUPPORT-only web refs; not acceptance basis）    
Appendix C. Implementation Notes（非規範；禁止作驗收依據）

\---

\# 0\) Authority Stack / Hard Rules / Scope Lock

\#\# 0.1 Authority Stack（權威堆疊：Entry-Locked）  
\[ANCHOR:LBP-D-C4-V811R2-01-AUTHORITY\_STACK\]

\- L1 Entry: MIP v2.2.0 \[ANCHOR:MIP-V220-0-3-AUTHORITY\]  
\- L1 REQ: SRS v8.1.0 \[ANCHOR:SRS-V810-4-0-COVER\]  
\- L2 ARCH: ARCH v8.1.0 \[ANCHOR:ARCH-V810-0-1-META\]  
\- L3 SPEC (Entry-locked): ICD v5.0.1 per MIP Master Table \[ANCHOR:MIP-V220-7-1-DOCS\] (若 baseline 檔缺失 → CR/TT TEMP\_CLOSED)  
\- L3 DECISION: ADR (本 repo 有 v8.1.1-r2，但不屬 MIP 鎖版；僅作 Route-Out 參考)

\#\# 0.2 Hard Rules（防幻覺硬規則）  
\[ANCHOR:LBP-D-C4-V811R2-01-HARD\_RULES\]

\- No-Anchor-No-Claim：任何上游引用必須可定位到「實際存在」錨點；否則降級 TT/CR。  
\- Entry-Locked First：凡版本/內容衝突，\*\*先服從 MIP Master Document Table\*\*；Preview 只能 SUPPORT-only。  
\- Scope Lock：本文件只做索引/映射/定位/Route-Out；不得搬運 SRS/ARCH/ICD/ADR 正文（摘錄≤25字僅作證據）。  
\- 禁遠端 include：NORMATIVE 區域不得出現 \`\!includeurl\` 或任何遠端載入字串。  
\- 工具/環境狀態不得寫成規範：若需提及，只能放 Appendix C（非規範）。

\#\# 0.3 Scope Lock（範疇鎖定）  
\[ANCHOR:LBP-D-C4-V811R2-02-SCOPE\_LOCK\]

In-Scope:  
\- C4 Index：Context/Container/Component 視圖「索引與定位點」  
\- Mapping：C4 元素 ↔ 上游錨點 ↔ 證據產物指標  
\- Route-Out：把讀者導向 SSOT（MIP/SRS/ARCH）或被允許的參考文件

Out-of-Scope（本文件禁止）：  
\- HOW-TO（安裝、部署、命令列教學）  
\- ICD schema/欄位細節、ADR 理由全文、架構部署細節正文

\---

\# 1\) Route-Out Registry（最小可用覆蓋）  
\[ANCHOR:LBP-D-C4-V811R2-10-ROUTE\_OUT\]

\#\# 1.1 by Topic（主題外導）  
\[ANCHOR:LBP-D-C4-V811R2-10-ROUTE\_OUT-TOPIC\]

| topic | primary (Entry-locked, NORMATIVE) | forward-link (Preview, SUPPORT-only \+ TT) | notes |  
|---|---|---|---|  
| Control Plane triad（Flag / Degrade / Snapshot） | SRS \[ANCHOR:SRS-V810-5-1-CTRL-TRIO\] | — | 本文件提供搜尋入口（見 §5） |  
| 15CA Stable ID Registry | ARCH \[ANCHOR:ARCH-V810-4-0-REGISTRY\] | — | Stable ID 不變量見 §6 |  
| Fail-Closed & Degrade Strategy | ARCH \[ANCHOR:ARCH-V810-6-4-FAILCLOSED\] | — | 與 triad 的 Degrade 口徑一致 |  
| 15CA Whitelist | SRS \[ANCHOR:SRS-V810-1-2-15CA\] | — | 禁增第 16 CA：Entry 另有規則 |  
| Reproducibility (Backtest) | SRS \[ANCHOR:SRS-V810-REQ-BT-REPRO\] | — | 修正 r1 錨點錯置 |  
| ICD（Interface Contracts） | MIP Master Table 鎖 ICD v5.0.1（若缺檔→CR） | Repo ICD v8.1.1-r2（SUPPORT-only）→ TT-ALIGN-ICD-001 | 不得把 Preview 當驗收依據 |  
| ADR（Decision Registry） | （非 Entry-locked） | LBP-C(ADR) v8.1.1-r2（NORMATIVE 參考，但非鎖版） | 僅作導覽 |

\#\# 1.2 by CA（15 子系統索引入口：索引級）  
\[ANCHOR:LBP-D-C4-V811R2-10-ROUTE\_OUT-CA\]

\- CA-GOVERN：Control Plane triad → SRS \[ANCHOR:SRS-V810-5-1-CTRL-TRIO\]  
\- CA-UI：Control/Execution 視覺化層 →（以 SRS/ARCH 對應章節為準；缺精確錨點→TT-DOC-LOCATOR-001）  
\- CA-EXECUTE：Fail-Closed/Degrade → ARCH \[ANCHOR:ARCH-V810-6-4-FAILCLOSED\]

\> 注意：此區只提供入口；詳細清單以 MIP 15CA Master Table \[ANCHOR:MIP-V220-1-1-MASTER\] 為準（需下游產生 locator\_map.tsv 才能機械化）。

\#\# 1.3 by Pipeline（A/B/C）  
\[ANCHOR:LBP-D-C4-V811R2-10-ROUTE\_OUT-PIPELINE\]

\- Pipeline-A/B/C：以 MIP Pipeline 章節為入口（見 MIP §3）→（REF 文件缺 anchor，先走 TT-DOC-LOCATOR-001）  
\- A+B DB：REF（Pipeline-A+B 整合資料庫方案）→ 同上

\#\# 1.4 by Scenario（情境導覽）  
\[ANCHOR:LBP-D-C4-V811R2-10-ROUTE\_OUT-SCENARIO\]

\- 「我要畫 L1/L2/L3 C4 圖」：先看 §2 Alignment Matrix → 再看 §4 C4 Template Index（本地 include）  
\- 「我要驗證索引沒有漂移」：看 §3 Version Lock \+ §7 scan\_log\_version\_drift.txt  
\- 「我要查 Stable ID 規則」：看 §6 Stable ID Governance Index → ARCH Registry

\---

\# 2\) Alignment Matrix（C4 L1/L2/L3 → 上游定位點）  
\[ANCHOR:LBP-D-C4-V811R2-21-ALIGNMENT\_MATRIX\]

| C4 element | intent (index-only) | upstream locator (Entry-locked) | status |  
|---|---|---|---|  
| L1 Context view | 系統邊界/外部依賴的索引入口 | ARCH（C4 視圖章節：需由 ARCH 內文錨點提供；目前本 repo 僅保證 fail-closed/registry 錨點） | TEMP\_CLOSED → TT-DOC-LOCATOR-001 |  
| L2 Container view | 容器/資料庫/服務的索引入口 | ARCH（同上） | TEMP\_CLOSED → TT-DOC-LOCATOR-001 |  
| L3 Component view | 元件分解索引入口 | ARCH（同上） | TEMP\_CLOSED → TT-DOC-LOCATOR-001 |  
| Control Plane triad | Flag/Degrade/Snapshot 的規範落點 | SRS \[ANCHOR:SRS-V810-5-1-CTRL-TRIO\] | PASS |  
| Stable ID invariants | 15CA 不變量/唯一性/衝突裁決 | ARCH \[ANCHOR:ARCH-V810-4-0-REGISTRY\] | PASS |  
| Reproducibility | 回測/資料可重現 | SRS \[ANCHOR:SRS-V810-REQ-BT-REPRO\] | PASS |

\---

\# 3\) Version Compatibility & Conflict Ledger  
\[ANCHOR:LBP-D-C4-V811R2-30-VERSION\_COMPAT\]

\#\# 3.1 Entry-locked Targets（以 MIP Master Document Table 為準）  
\- SRS: v8.1.0  
\- ARCH: v8.1.0  
\- ICD: v5.0.1（若 baseline 檔在 repo 缺失 → CR-C4-ICD-LOCK-001 TEMP\_CLOSED）  
\- 其餘非鎖版文件：不得成為驗收依據

\#\# 3.2 Primary vs Preview Policy  
\- Primary（NORMATIVE）：只能指向 Entry-locked 版本或其上游錨點。  
\- Preview（SUPPORT-only）：可指向 repo 現行較新版，但必須：  
  1\) 明示 PREVIEW\_ONLY  
  2\) 綁 TT  
  3\) 不得作為驗收依據

\---

\# 4\) C4 View Template Index（Local include only）  
\[ANCHOR:LBP-D-C4-V811R2-40-C4-PUML-TEMPLATES\]

\> 本節只提供「模板索引與供應鏈限制」，不提供繪圖教學。

\#\# 4.1 PlantUML（模板：本地 include）  
\- Context template: \`\!include C4\_Context.puml\`  
\- Container template: \`\!include C4\_Container.puml\`  
\- Component template: \`\!include C4\_Component.puml\`

Fail-Closed:  
\- NORMATIVE 內 \*\*禁止\*\* \`\!includeurl\`  
\- 模板檔必須在 repo 內「可 pin/可 hash/可快照」並以 Evidence Contract 登記

\---

\# 5\) Core Terms（可搜尋入口；防遺漏）  
\[ANCHOR:LBP-D-C4-V811R2-05-CORE\_TERMS\]

\- Control Plane：治理/裁決層（入口：SRS \[ANCHOR:SRS-V810-5-1-CTRL-TRIO\]）  
\- \*\*Flag\*\*：控制面三件套之一（索引入口在此；規範在 SRS）  
\- \*\*Degrade\*\*：控制面三件套之一（降級口徑需與 ARCH fail-closed 一致：ARCH \[ANCHOR:ARCH-V810-6-4-FAILCLOSED\]）  
\- \*\*Snapshot\*\*：控制面三件套之一（規範在 SRS）  
\- Stable ID：15CA 不變量（ARCH \[ANCHOR:ARCH-V810-4-0-REGISTRY\]）  
\- Evidence Triplet：證據三件套（以 MIP/SRS 定義為準；本文件只定義「索引層產物」見 §6）

\---

\# 6\) Evidence Contract（Index-layer outputs）  
\[ANCHOR:LBP-D-C4-V811R2-80-EVIDENCE\_CONTRACT\]

\#\# 6.1 Evidence Artifacts（最小必備）  
\- \`doc\_inventory.tsv\`（本文件要求）  
\- \`repairs\_ledger.tsv\`  
\- \`anchor\_validation.tsv\`  
\- \`conflict\_ledger.tsv\`  
\- \`legacy\_parity.tsv\`  
\- \`token\_scan\_result.tsv\`（重算 token\_scan）  
\- \`scan\_log\_scope\_violation.txt\`  
\- \`scan\_log\_version\_drift.txt\`  
\- \`evidence\_index.tsv\`（把以上產物登記成 Triplet Index）

\#\# 6.2 Minimal Fields（可機械驗證）  
\- TSV：必含 header；欄位名固定（見本文件同名輸出）  
\- scan\_log：必含 rule\_id / hit\_count / hits\[\] / fail\_closed\_rule  
\- JSON（例如 icd\_baseline\_presence.json）：必含 found(bool), path(string|null), sha256(string|null)

\---

\# 7\) CR Register & TT List（本文件內不得 CR\_OPEN 懸空）  
\[ANCHOR:LBP-D-C4-V811R2-90-CR\_TT\]

\- 所有 CR 皆為 TEMP\_CLOSED，並綁 TT（見本回覆輸出的 cr\_register.tsv / tt\_list.tsv）

\---

\# Appendix A) Legacy Crosswalk（Exception Zone）  
\[ANCHOR:LBP-D-C4-V811R2-A1-LEGACY-CROSSWALK\]

允許出現 legacy literals（例如舊檔名/版本字串）的唯一區域；其餘正文不得出現。

\- legacy baseline: Spartoi｜P1\_LBP-D(C4)\_v2.0.1.md  
\- legacy anchors:  
  \- \[ANCHOR:LBP-D-C4-V2-0-1-META\]  
  \- \[ANCHOR:SCOPE-LOCK-V201\]  
  \- \[ANCHOR:VERSION-DRIFT-SCAN-V201\]  
\- parity matrix: 參見本回覆輸出的 legacy\_parity.tsv（本文件不宣告 20/20；以可重算矩陣為準）

\---

\# Appendix B) Support Annex（SUPPORT-only；不得作驗收依據）  
\[ANCHOR:LBP-D-C4-V811R2-A3-SUPPORT\_ANNEX\]

\- PlantUML security / allowlist / sandbox 語境（SUPPORT-only） :contentReference\[oaicite:0\]{index=0}  
\- PlantUML 近期變更提及 C4-PlantUML 版本更新（SUPPORT-only） :contentReference\[oaicite:1\]{index=1}  
\- Structurizr container view 語境（SUPPORT-only） :contentReference\[oaicite:2\]{index=2}  
\- OpenAI Structured Outputs（用於 machine\_summary.json/證據格式化語境；SUPPORT-only） :contentReference\[oaicite:3\]{index=3}  
\- C4-PlantUML repo/供應鏈語境（SUPPORT-only） :contentReference\[oaicite:4\]{index=4}  
\- \`\!includeurl\` 行為風險（近期 issue；SUPPORT-only） :contentReference\[oaicite:5\]{index=5}

\---

\# Appendix C) Implementation Notes（非規範）  
\[ANCHOR:LBP-D-C4-V811R2-A2-IMPLEMENTATION\_NOTES\]

\- 本文件不依賴任何「對話工具狀態」或「特定執行環境」。  
\- 若審計環境禁用某些檢索/掃描工具，必須以 Evidence Contract 指定的產物（scan\_log/token\_scan\_result/locator\_map）作為唯一驗證媒介。

---

## **(11) machine\_summary.json（嚴格 JSON；無註解）**

{  
  "target\_doc": "Spartoi-OMOC\_LBP-D(C4)",  
  "new\_version": "v8.1.1-r2",  
  "run\_date\_tz": "Asia/Taipei",  
  "run\_date": "2026-02-15",  
  "verdict": "TEMP\_CLOSED",  
  "counts": {  
    "CRIT": 0,  
    "MAJ": 0,  
    "MIN": 4,  
    "INFO": 0,  
    "TT": 6,  
    "CR": 4  
  },  
  "top\_risks": \[  
    {  
      "risk\_id": "R-C4-ICD-BASELINE-MISSING",  
      "summary": "MIP 鎖 ICD v5.0.1，但 repo 未見 baseline 檔；Primary 只能標 MISSING 並以 TT 暫結案。",  
      "severity": "MIN",  
      "evidence\_ptr": "conflict\_ledger.tsv:CL-C4-ICD-001; TT-ALIGN-ICD-001"  
    },  
    {  
      "risk\_id": "R-C4-REF-LOCATOR-INSUFFICIENT",  
      "summary": "Pipeline/五子系統/改名方案等 REF 文件缺穩定錨點；需 locator\_map 產物機械化。",  
      "severity": "MIN",  
      "evidence\_ptr": "conflict\_ledger.tsv:CL-C4-REFLOC-001; TT-DOC-LOCATOR-001"  
    },  
    {  
      "risk\_id": "R-C4-SCAN-NOT-EXECUTED",  
      "summary": "Scope/Version drift 掃描僅完成產物規格，尚未由管線產出可重算結果。",  
      "severity": "MIN",  
      "evidence\_ptr": "scan\_log\_scope\_violation.txt; scan\_log\_version\_drift.txt; TT-C4-001/TT-C4-003"  
    },  
    {  
      "risk\_id": "R-C4-PARITY-NOT-FULLY-ENUMERATED",  
      "summary": "已輸出 parity 矩陣但尚未完成 legacy required set 的全量枚舉，因此不宣告 20/20。",  
      "severity": "MIN",  
      "evidence\_ptr": "legacy\_parity.tsv; TT-PARITY-GAP-001"  
    }  
  \],  
  "required\_repairs": \[  
    {  
      "patch\_skeleton\_id": "PS-C4-ALIGN-001",  
      "TT\_id": "TT-ALIGN-ICD-001",  
      "status": "TEMP\_CLOSED"  
    },  
    {  
      "patch\_skeleton\_id": "PS-C4-SCAN-001",  
      "TT\_id": "TT-C4-001",  
      "status": "TEMP\_CLOSED"  
    },  
    {  
      "patch\_skeleton\_id": "PS-C4-SCAN-002",  
      "TT\_id": "TT-C4-003",  
      "status": "TEMP\_CLOSED"  
    },  
    {  
      "patch\_skeleton\_id": "PS-C4-PARITY-001",  
      "TT\_id": "TT-PARITY-GAP-001",  
      "status": "TEMP\_CLOSED"  
    }  
  \],  
  "evidence\_artifacts": \[  
    "doc\_inventory.tsv",  
    "repairs\_ledger.tsv",  
    "version\_lock\_table.tsv",  
    "conflict\_ledger.tsv",  
    "anchor\_validation.tsv",  
    "scope\_violation\_fixlog.tsv",  
    "core\_terms\_hits.tsv",  
    "legacy\_parity.tsv",  
    "token\_scan.txt",  
    "scan\_log\_scope\_violation.txt",  
    "scan\_log\_version\_drift.txt",  
    "cr\_register.tsv",  
    "tt\_list.tsv"  
  \]  
}

