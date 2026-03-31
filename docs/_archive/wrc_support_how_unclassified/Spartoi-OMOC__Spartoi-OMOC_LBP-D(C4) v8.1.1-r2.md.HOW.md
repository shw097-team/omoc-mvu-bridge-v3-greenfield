# HOW (extracted)


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


---


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

