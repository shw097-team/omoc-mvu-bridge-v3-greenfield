# CA-DISTILL Owner Escalation Checklist
## ROUND 2 Revalidation Completion → ROUND 3 External Proof Provision

**Generated**: 2026-03-31T15:31:35Z (TS: 20260331T153135Z)  
**Subsystem**: CA-DISTILL (specialized branch: `ca-distill/20260331T141005Z-full-impl`)  
**Mandate**: CA-DISTILL bootstrap, materialization, validation, and acquisition of 5 external owner proofs  
**Status**: **BLOCKED_AT_EXTERNAL_PROOF_PROVISION** (correct state; awaiting owner action)

---

## Executive Summary

The CA-DISTILL subsystem has successfully completed **ROUND 1 (Bootstrap)** and **ROUND 2 (Revalidation)** with:
- ✅ Complete subsystem materialization (sourcepack + runtime + infrastructure)
- ✅ Naming drift corrected (sample files canonicalized)
- ✅ Exhaustive proof search executed (all 5 categories searched; none found in repo)
- ✅ Validator re-run executed (schema PASS ✓; route-out FAIL ❌ due to missing proofs)
- ✅ Split verdict truthfully applied (document=PASS, execution=FAIL, release=BLOCK, delivery=PASS)

**Next Action Required**: External owner teams must submit 5 required proofs to unblock release and enable ROUND 3+ execution.

---

## Context: Why Proofs Are Required

The CA-DISTILL subsystem is designed with **fail-closed policy**: release is BLOCKED until all external dependencies provide direct evidence of compliance. This prevents:
- Fabrication of approval (no fake proofs)
- Proceeding with incomplete dependencies
- Release without full stakeholder sign-off

**Current State**:
- Route-out registry documents all 5 missing proofs: `contracts/route_out_registry.json`
- Release blocker active: `contracts/release_blocker_contract.json` (`release_allowed: false`)
- Execution verdict: FAIL (until proofs arrive)
- Delivery: awaiting unblock

---

## 5 Required Proofs (Categorized)

| ID | Category | Owner | Status | Landing Path | Request Pack |
|---|---|---|---|---|---|
| REQ-PKG-B | Package B | Package_B_Owner | OPEN | `contracts/external/package_b/` | `package_b_request.md` |
| REQ-PKG-D | Package D | Package_D_Owner | OPEN | `contracts/external/package_d/` | `package_d_request.md` |
| REQ-PKG-E | Package E | Package_E_Owner | OPEN | `contracts/external/package_e/` | `package_e_request.md` |
| REQ-CA-DSL | CA-DSL acceptance | CA_DSL_Team | OPEN | `contracts/external/ca_dsl/` | `ca_dsl_acceptance_request.md` |
| REQ-OPS-RB | Ops rollback drill | OPS_Team | OPEN | `contracts/external/ops_rollback/` | `ops_rollback_request.md` |

**All proofs are RELEASE-BLOCKING**: Each proof is required before release can proceed.

---

## How to Submit Proofs (Owner Instructions)

### Step 1: Locate Your Request Pack

Each owner should receive:
- **Index**: `handoff/external_proof_requests/request_index.tsv`
- **Your specific request pack**: One of the 5 markdown files listed above

**Example**: Package B owner receives `handoff/external_proof_requests/package_b_request.md`

### Step 2: Read Your Request Pack

Each request pack includes:
- **required_proof**: What kind of evidence is needed
- **acceptable_evidence_shape**: File format/structure expected
- **target_landing_path**: Where to upload your proof
- **close_criteria**: What makes the proof "done" (validation criteria)
- **revalidation_hook**: How proof will be validated

### Step 3: Prepare Your Proof

**Requirements** (from your request pack):
- Proof MUST match the `acceptable_evidence_shape`
- Proof MUST be uploadable to `target_landing_path`
- Proof SHOULD include metadata (signer, version, date, signature if applicable)
- Proof MUST be valid before submission (no "draft" proofs)

### Step 4: Upload to Repository

**Landing paths** (create directory if not exists):
```
docs/subsystems/CA-DISTILL/evidence/
├── package_b_proof.json          (or .pdf if specified)
├── package_d_proof.json
├── package_e_proof.json
├── ca_dsl_acceptance.json
└── ops_rollback_drill.json
```

**Upload method**:
1. Clone/pull the CA-DISTILL branch: `ca-distill/20260331T141005Z-full-impl`
2. Create `docs/subsystems/CA-DISTILL/evidence/` directory (if not present)
3. Add your proof file
4. Commit: `git add docs/subsystems/CA-DISTILL/evidence/<your-proof-file>`
5. Commit message: `[CA-DISTILL ROUND3] Add <your-proof> proof submission (REQ-<ID>)`
6. Push to origin (DO NOT merge to main; stay on CA-DISTILL branch)

### Step 5: Notify Re-validation Team

Once all 5 proofs are uploaded, notify the validation team to:
1. Run validator: `python3 scripts/ca_distill_validate.py`
2. Confirm all proofs are valid
3. Generate new acceptance report (ROUND 3)
4. Transition execution_verdict to PASS
5. Unblock release

---

## Request Pack Details

### REQ-PKG-B: Package B proof

**Owner**: Package_B_Owner  
**File**: `handoff/external_proof_requests/package_b_request.md`

**What's Needed**:
- Signed contract or official evidence demonstrating Package B compliance (PDF or JSON manifest)

**Upload To**:
- `contracts/external/package_b/package_b_contract.pdf` (or `.json`)

**Validation Criteria**:
- File exists at required_locator
- Contains signer metadata or verifiable signature

---

### REQ-PKG-D: Package D proof

**Owner**: Package_D_Owner  
**File**: `handoff/external_proof_requests/package_d_request.md`

**What's Needed**:
- Official Package D compliance evidence (contract, manifest, or signed approval)

**Upload To**:
- `contracts/external/package_d/package_d_contract.pdf` (or `.json`)

**Validation Criteria**:
- File exists at required_locator
- Contains signer metadata or verifiable signature

---

### REQ-PKG-E: Package E proof

**Owner**: Package_E_Owner  
**File**: `handoff/external_proof_requests/package_e_request.md`

**What's Needed**:
- Official Package E compliance evidence (contract, manifest, or signed approval)

**Upload To**:
- `contracts/external/package_e/package_e_contract.pdf` (or `.json`)

**Validation Criteria**:
- File exists at required_locator
- Contains signer metadata or verifiable signature

---

### REQ-CA-DSL: CA-DSL Consumer Acceptance

**Owner**: CA_DSL_Team  
**File**: `handoff/external_proof_requests/ca_dsl_acceptance_request.md`

**What's Needed**:
- CA-DSL consumer acceptance certification
- Proof that DSL is acceptable for downstream consumption

**Upload To**:
- `contracts/external/ca_dsl/ca_dsl_acceptance.json`

**Expected Shape**:
```json
{
  "acceptance_date": "2026-03-31",
  "signed_by": "CA_DSL_Team",
  "status": "ACCEPTED",
  "notes": "DSL meets consumer requirements"
}
```

**Validation Criteria**:
- File exists and contains valid JSON
- `status` field is "ACCEPTED"
- `signed_by` field is populated

---

### REQ-OPS-RB: Ops Rollback Drill Evidence

**Owner**: OPS_Team  
**File**: `handoff/external_proof_requests/ops_rollback_request.md`

**What's Needed**:
- Proof that ops rollback drill was executed successfully
- Evidence of rollback readiness and safety

**Upload To**:
- `contracts/external/ops_rollback/ops_rollback_drill.json`

**Expected Shape**:
```json
{
  "drill_date": "2026-03-31",
  "drill_status": "PASSED",
  "signed_by": "OPS_Team",
  "notes": "Rollback procedures validated and tested"
}
```

**Validation Criteria**:
- File exists and contains valid JSON
- `drill_status` field is "PASSED"
- `signed_by` field is populated

---

## Timeline & Deadlines

| Milestone | Date | Owner | Status |
|---|---|---|---|
| ROUND 2 Completion | 2026-03-31 | CA-DISTILL Team | ✅ COMPLETE |
| Request packs sent to owners | 2026-03-31 | CA-DISTILL Team | ⏳ PENDING (this document) |
| **Owner proof submissions due** | **2026-04-07** | **All 5 owners** | **AWAITING** |
| ROUND 3 revalidation begins | 2026-04-07 (if proofs complete) | CA-DISTILL Team | ⏳ PENDING |
| Release unblock decision | 2026-04-08 | CA-DISTILL Team | ⏳ PENDING |
| ROUND 4+ execution (distill_engine) | 2026-04-09+ | CA-DISTILL Team | ⏳ PENDING |

**Suggested Deadline for Proof Submission**: **2026-04-07T23:59:59Z** (7 days from ROUND 2 completion)

---

## Verification & Validation (ROUND 3 Process)

Once all 5 proofs are uploaded to the CA-DISTILL branch, the validation team will:

### Step 1: Verify File Presence
```bash
ls -la docs/subsystems/CA-DISTILL/evidence/
# Expected: 5 files present
```

### Step 2: Run Validator
```bash
python3 scripts/ca_distill_validate.py
# Expected: route-out completeness PASS (if all proofs valid)
```

### Step 3: Generate ROUND 3 Acceptance Report
- New TS: `20260331T160000Z` (or next UTC time when validation occurs)
- New split verdict:
  - `execution_verdict: PASS` (if all proofs valid)
  - `release_verdict: PASS` (if all proofs valid + route-out complete)
  - `document_verdict: PASS` (unchanged)
  - `delivery_verdict: PASS` (unchanged)

### Step 4: Unblock Release
- Update `contracts/release_blocker_contract.json`: set `release_allowed: true`
- Proceed to ROUND 4+ (distill_engine execution)

### Step 5: Proceed to Distill Engine
- **blind_abstract** phase: Anonymize and abstract CA-DISTILL artifacts
- **cross_review** phase: Multi-reviewer cross-validation
- **targeted_integrate** phase: Integration with downstream systems (CA-DSL handoff)

---

## Escalation Contacts

| Role | Contact | Responsibility |
|---|---|---|
| CA-DISTILL Lead | (TBD) | Coordinate proof collection, validate submissions |
| Package B Owner | (TBD) | Submit Package B proof by 2026-04-07 |
| Package D Owner | (TBD) | Submit Package D proof by 2026-04-07 |
| Package E Owner | (TBD) | Submit Package E proof by 2026-04-07 |
| CA-DSL Team | (TBD) | Submit CA-DSL acceptance by 2026-04-07 |
| OPS Team | (TBD) | Submit ops rollback drill evidence by 2026-04-07 |

**Escalation Path** (if proof submission stalls):
1. CA-DISTILL Lead sends reminder 3 days before deadline
2. If no response: escalate to subsystem owners
3. If still no response: document as "deadline missed"; block ROUND 3 entry

---

## Artifacts Available for Reference

**Request Packs** (send to owners):
- `handoff/external_proof_requests/request_index.tsv` (routing table)
- `handoff/external_proof_requests/package_b_request.md`
- `handoff/external_proof_requests/package_d_request.md`
- `handoff/external_proof_requests/package_e_request.md`
- `handoff/external_proof_requests/ca_dsl_acceptance_request.md`
- `handoff/external_proof_requests/ops_rollback_request.md`

**Supporting Documentation**:
- `ROUND1_BOOTSTRAP_COMPLETION.md` (ROUND 1 summary)
- `ROUND2_COMPLETION_SUMMARY.md` (ROUND 2 summary)
- `evidence/_acceptance/20260331T153135Z/20260331T153135Z_acceptance_report.json` (ROUND 2 verdict)
- `evidence/PROOF_SEARCH_LOG_20260331T153135Z.json` (proof search results)
- `contracts/route_out_registry.json` (missing proof registry)
- `contracts/release_blocker_contract.json` (release gate status)

---

## Validation Commands (for Reference)

**Owners can self-validate** their proofs before submission:

```bash
# Check if your proof file will be found
ls -la docs/subsystems/CA-DISTILL/evidence/package_b_proof.json

# Run validator (requires Python 3)
python3 scripts/ca_distill_validate.py

# Expected output (if all 5 proofs valid):
# "route-out completeness: PASS"
# "execution_verdict: PASS"
# "release_verdict: PASS"
```

---

## FAQ for Owners

**Q: What if my proof format differs from the request pack?**  
A: Contact the CA-DISTILL Lead with your proposed format. The validator may need adjustment, but only if the format contains equivalent information.

**Q: What if I can't meet the 2026-04-07 deadline?**  
A: Notify CA-DISTILL Lead ASAP. Deadlines may be extended with explicit approval.

**Q: Can I submit a draft or partial proof?**  
A: No. Only final, validated proofs will be accepted. Drafts will not pass validator.

**Q: What happens if not all 5 proofs arrive by deadline?**  
A: ROUND 3 will not proceed. Release remains BLOCKED. Subsystem enters "proof stall" state pending owner remediation.

**Q: Can I update my proof after submission?**  
A: Yes. Push an updated version to the same file path on the CA-DISTILL branch. ROUND 3 revalidation will re-test.

**Q: Who do I contact if I have questions about my request pack?**  
A: Contact CA-DISTILL Lead with your proof ID (e.g., REQ-PKG-B) and specific question.

---

## Checklist for CA-DISTILL Lead (Proof Reception)

Use this checklist once owners begin submitting proofs:

- [ ] **2026-04-01**: Send escalation document + 5 request packs to all owners
- [ ] **2026-04-05**: Follow-up reminder (2 days before deadline)
- [ ] **2026-04-07 23:59:59Z**: Proof submission deadline closes
- [ ] **2026-04-08 00:00:00Z**: Check `docs/subsystems/CA-DISTILL/evidence/` for all 5 files
  - [ ] package_b_proof.json/pdf present?
  - [ ] package_d_proof.json/pdf present?
  - [ ] package_e_proof.json/pdf present?
  - [ ] ca_dsl_acceptance.json present?
  - [ ] ops_rollback_drill.json present?
- [ ] **2026-04-08**: If all 5 files present, run: `python3 scripts/ca_distill_validate.py`
- [ ] **2026-04-08**: If validator PASS, generate ROUND 3 acceptance report (TS: 20260331T160000Z+)
- [ ] **2026-04-08**: Update `contracts/release_blocker_contract.json`: set `release_allowed: true`
- [ ] **2026-04-08**: Create ROUND 3 completion summary
- [ ] **2026-04-09**: Proceed to distill_engine execution (ROUND 4+)

**If proofs incomplete or invalid**:
- [ ] Document which proofs are missing/invalid in new acceptance report
- [ ] Keep `release_allowed: false` until all proofs are valid
- [ ] Generate proof remediation request pack (list what's missing/wrong)
- [ ] Send remediation pack back to failing owners
- [ ] Set new deadline for re-submission

---

## Sign-Off

**Prepared by**: CA-DISTILL Validation Team  
**Date**: 2026-03-31T15:31:35Z  
**Status**: **READY FOR OWNER ESCALATION**

**Next Action**: Send this document + all 5 request packs to external owners (Package B/D/E teams, CA-DSL team, OPS team).

---

**NO FURTHER AUTOMATED WORK PERMITTED UNTIL PROOFS ARRIVE.**  
Subsystem is now in **"awaiting external proof provision"** state.  
Fail-closed policy in effect: Release remains BLOCKED. ⛔

