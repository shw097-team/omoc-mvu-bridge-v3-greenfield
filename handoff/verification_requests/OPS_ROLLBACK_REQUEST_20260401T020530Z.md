# OPS ROLLBACK DRILL REQUEST
**ROUND 3 PHASE 5 Receipt Cycle**

**Timestamp**: 20260401T020530Z  
**Deadline**: 2026-04-07T23:59:59Z (~7 days)  
**Status**: ARTIFACT_NOT_FOUND

---

## CONTEXT

The CA-DISTILL release gate requires **rollback drill evidence** from the Ops team. No drill results currently exist on any of the surveyed refs.

**Current State**:
- Search Path: `docs/subsystems/CA-DISTILL/evidence/external_proofs/ops_rollback/` ❌ EMPTY
- Refs Searched (Phase 4): origin/main, origin/feat/spine-prep, origin/lp/ca-wrc/bootstrap
- Precondition Checks Found: Yes (documentation of rollback capability)  
- **Actual Drill Result**: ❌ NOT FOUND

**Current Status**: `SEARCHED_NOT_FOUND_CONFIRMED`  
**Gate Decision**: BLOCKED (awaiting drill evidence)

---

## WHAT WE NEED

We need **actual drill results** from the Ops team demonstrating that CA-DISTILL can be rolled back successfully in production-like conditions. Precondition documentation alone is NOT sufficient.

### Required Drill Fields

Submit a JSON file with the following fields:

```json
{
  "name": "rollback_drill_XXXXXX.json or similar identifier",
  "owner": "Ops team owner or lead",
  "executor": "Ops team member who executed the drill",
  "ts": "20260401T020530Z or later timestamp",
  "result": "PASS or COMPLETE or SUCCESS",
  "scope": "What system/component was rolled back in the drill",
  "notes": "Optional: drill observations, findings, or recovery time"
}
```

### Field Descriptions

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `name` | string | ✅ Yes | Artifact identifier (e.g., "rollback_drill_ca_distill_20260401.json") |
| `owner` | string | ✅ Yes | Ops team owner responsible for rollback capability (name/team identifier) |
| `executor` | string | ✅ Yes | Name/identifier of Ops team member who executed the drill |
| `ts` | ISO8601 | ✅ Yes | Timestamp of drill execution (>= `20260401T020530Z` preferred) |
| `result` | enum | ✅ Yes | MUST be one of: `PASS`, `COMPLETE`, or `SUCCESS` (lowercase acceptable) |
| `scope` | string | ✅ Yes | What was rolled back: e.g., "CA-DISTILL v1.0 from prod", "Service revert from staging", etc. |
| `notes` | string | ⭕ No | Optional drill observations (recovery time, findings, issues encountered, etc.) |

### Validation Criteria

Drill result will be considered **VALID** if:
- ✅ All 6 required fields present
- ✅ `name` is non-empty string
- ✅ `owner` is non-empty string (Ops team identifier)
- ✅ `executor` is non-empty string
- ✅ `ts` is valid ISO8601 format
- ✅ `result` is one of: `PASS`, `COMPLETE`, `SUCCESS` (case-insensitive)
- ✅ `scope` is non-empty string and describes actual rollback target (not generic)

### What Does NOT Qualify

❌ Precondition checks only (e.g., `rollback_checks.json` with no drill result)  
❌ Rollback plan or runbook (without execution proof)  
❌ Status=`PENDING` or `IN_PROGRESS` (must be terminal: PASS/COMPLETE/SUCCESS)  
❌ Manual verification without timestamped execution record

---

## HOW TO SUBMIT

1. **Create JSON file** using template: `handoff/verification_requests/OPS_ROLLBACK_TEMPLATE_20260401T020530Z.json`

2. **Populate all required fields** with actual drill results  
   ⚠️ Note: `scope` should describe actual rollback target, not just capabilities

3. **Submit to**: `docs/subsystems/CA-DISTILL/evidence/external_proofs/ops_rollback/`  
   Filename format: `rollback_drill_${YOUR_TEAM}_${TIMESTAMP}.json`  
   Example: `rollback_drill_ops_team_20260401T123456Z.json`

4. **Deadline**: 2026-04-07T23:59:59Z UTC

---

## CONSEQUENCE OF SUBMISSION

| If drill result is VALID (all fields correct, result=PASS/COMPLETE/SUCCESS) | Ops proof upgraded to **FOUND_VALID** → contributes to gate open condition |
|---|---|
| If drill is incomplete or invalid (precondition-only, missing fields, wrong result) | Ops proof remains **SEARCHED_NOT_FOUND_CONFIRMED** → gate remains blocked |
| If no drill by deadline | Ops proof remains **SEARCHED_NOT_FOUND_CONFIRMED** → gate escalation (FLOW-3) |

---

## QUESTIONS?

Refer to:
- Full blocker matrix: `handoff/PHASE5_BLOCKER_MATRIX_20260401T020530Z.md` (OPS section)
- Contract details: `contracts/release_blocker_contract.json`
- Gate logic: `release/ROUND3_GATE_BLOCKED_20260401T020530Z.json`

---

**Gate Status**: ⛔ BLOCKED (0/5 proofs FOUND_VALID)  
**Your Action**: Submit rollback drill results (not preconditions) to open OPS path to FOUND_VALID

