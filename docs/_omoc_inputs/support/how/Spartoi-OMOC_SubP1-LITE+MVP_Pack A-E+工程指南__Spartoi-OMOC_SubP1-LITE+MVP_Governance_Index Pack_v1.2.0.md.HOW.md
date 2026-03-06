# HOW (extracted)


| Need | Go to | Retrieval hint (chunk) |
| ----- | ----- | ----- |
| “Where are all authoritative docs & locators?” | `doc_inventory.tsv` \+ `map_schema_v1.md#[ANCHOR:MAP-SCHEMA-V1-DOCINV]` | Use `doc_key` as chunk key |
| “Can I stop looking at v1.0.0/v1.1.0?” | `coverage_legacy_to_new.tsv` \+ `mother_set_legacy_items.tsv` | Check mother set count \== mapped rows |
| “What’s out-of-scope / where do I route HOW?” | `route_out_register_index.tsv` | Use topic\_id / trigger\_keywords |
| “What gaps exist (no CR\_OPEN allowed)?” | `test_tracking_list.tsv` | Use `tt_id` as chunk key |
| “Any external web info?” | `external_evidence_appendix.md` (SUPPORT-only) | Only TT-bound entries are valid |


---


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

