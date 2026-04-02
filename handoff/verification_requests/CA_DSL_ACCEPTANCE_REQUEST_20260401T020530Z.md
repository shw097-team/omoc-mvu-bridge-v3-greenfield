# CA-DSL CONSUMER ACCEPTANCE REQUEST
**ROUND 3 PHASE 5 Receipt Cycle**

**Timestamp**: 20260401T020530Z  
**Deadline**: 2026-04-07T23:59:59Z (~7 days)  
**Status**: ARTIFACT_NOT_FOUND

---

## CONTEXT

The CA-DISTILL release gate requires **consumer acceptance** from the CA-DSL team. No acceptance artifact currently exists on any of the surveyed refs.

**Current State**:
- Search Path: `docs/subsystems/CA-DISTILL/evidence/external_proofs/ca_dsl_acceptance/` ❌ EMPTY
- Refs Searched (Phase 4): origin/main, origin/feat/spine-prep, origin/lp/ca-wrc/bootstrap

**Current Status**: `SEARCHED_NOT_FOUND_CONFIRMED`  
**Gate Decision**: BLOCKED (awaiting consumer acceptance)

---

## WHAT WE NEED

We need **consumer acceptance** from the CA-DSL team (NOT self-signed by CA-DISTILL) confirming that CA-DISTILL meets their interface requirements.

### Required Acceptance Fields

Submit a JSON file with the following fields:

```json
{
  "name": "ca_dsl_acceptance.json or similar identifier",
  "accepted_by": "CA-DSL consumer team or representative name",
  "owner_contact": "CA-DSL team owner contact info (email or name)",
  "ts": "20260401T020530Z or later timestamp",
  "scope": "What CA-DISTILL interface/capability was accepted",
  "notes": "Optional: acceptance conditions or caveats"
}
```

### Field Descriptions

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `name` | string | ✅ Yes | Artifact identifier (e.g., "ca_dsl_acceptance.json", "dsl_consumer_approval_20260401.json") |
| `accepted_by` | string | ✅ Yes | CA-DSL consumer team or representative name (⚠️ MUST be CA-DSL consumer, not CA-DISTILL self-sign) |
| `owner_contact` | string | ✅ Yes | CA-DSL team owner contact (name, email, or team identifier) |
| `ts` | ISO8601 | ✅ Yes | Timestamp of acceptance (>= `20260401T020530Z` preferred) |
| `scope` | string | ✅ Yes | What was accepted: e.g., "CA-DISTILL v1.0 interface", "Data contract compatibility", etc. |
| `notes` | string | ⭕ No | Optional acceptance conditions, caveats, or findings (max 500 chars) |

### Validation Criteria

Acceptance will be considered **VALID** if:
- ✅ All 5 required fields present
- ✅ `name` is non-empty string
- ✅ `accepted_by` is non-empty string AND indicates CA-DSL consumer (NOT "CA-DISTILL" or self-sign)
- ✅ `owner_contact` is non-empty string
- ✅ `ts` is valid ISO8601 format
- ✅ `scope` is non-empty string and describes actual acceptance scope

### What Does NOT Qualify

❌ Self-signed by CA-DISTILL team  
❌ Generic "placeholder" acceptance without concrete scope  
❌ Conditional acceptance (e.g., "pending further review")  
❌ Acceptance from non-DSL teams or self-appointed reviewers

---

## HOW TO SUBMIT

1. **Create JSON file** using template: `handoff/verification_requests/CA_DSL_ACCEPTANCE_TEMPLATE_20260401T020530Z.json`

2. **Populate all required fields** with CA-DSL consumer acceptance decision

3. **Submit to**: `docs/subsystems/CA-DISTILL/evidence/external_proofs/ca_dsl_acceptance/`  
   Filename format: `ca_dsl_acceptance_${YOUR_TEAM}_${TIMESTAMP}.json`  
   Example: `ca_dsl_acceptance_dsl_consumer_20260401T123456Z.json`

4. **Deadline**: 2026-04-07T23:59:59Z UTC

---

## CONSEQUENCE OF SUBMISSION

| If acceptance is VALID (CA-DSL consumer confirms all fields) | CA-DSL proof upgraded to **FOUND_VALID** → contributes to gate open condition |
|---|---|
| If acceptance is invalid (self-signed, missing fields, or placeholder) | CA-DSL proof remains **SEARCHED_NOT_FOUND_CONFIRMED** → gate remains blocked |
| If no acceptance by deadline | CA-DSL proof remains **SEARCHED_NOT_FOUND_CONFIRMED** → gate escalation (FLOW-3) |

---

## QUESTIONS?

Refer to:
- Full blocker matrix: `handoff/PHASE5_BLOCKER_MATRIX_20260401T020530Z.md` (CA-DSL section)
- Contract details: `contracts/release_blocker_contract.json`
- Gate logic: `release/ROUND3_GATE_BLOCKED_20260401T020530Z.json`

---

**Gate Status**: ⛔ BLOCKED (0/5 proofs FOUND_VALID)  
**Your Action**: Submit consumer acceptance to open CA-DSL path to FOUND_VALID

