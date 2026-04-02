# CA-CORE (Materialized Bootstrap)

This CA-CORE.md is a bootstrap materialization derived from the CA-DISTILL MC4+ canonical document. Where source fragments were not directly available in the repository, fields are marked MISSING_EXACT_FILE or TBD.

Sections:

1. Introduction

The CA-DISTILL subsystem defines a canonical distillation process producing a public distill_bundle.json and an internal distill_pack.json companion. The sourcepack requires four files: meta.json, CA-CORE.md, CA-MC4.md, CA-WP.md.

2. Principles

- Source of truth: distill_bundle.json
- Companion: distill_pack.json
- Support frontstage material (Obsidian) is SUPPORT_FRONTSTAGE_ONLY and not canonical.

3. Responsibilities

- Artifact validation, schema enforcement, route-out handling for external proofs, release gating via release_blocker_contract.json.

4. Missing items

- External owner proofs (Package B/D/E, CA-DSL acceptance, Ops rollback) are not present in this repository and are recorded as MISSING in registries/route_out entries.
