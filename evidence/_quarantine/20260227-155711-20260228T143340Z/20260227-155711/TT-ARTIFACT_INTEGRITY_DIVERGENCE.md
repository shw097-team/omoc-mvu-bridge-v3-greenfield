# Test Track: Artifact Integrity Divergence

**Type**: FAIL_CLOSED  
**Checkpoint**: LF-CKPT-20260227-04  
**Severity**: CRITICAL  
**Created**: 2026-02-27T16:15:00Z  

## Issue

The evidence artifacts referenced in `evidence/WP-008_evidence_upload.txt` have **diverged from the checkpoint 03 rebaseline upload**:

### Observed Discrepancies

#### 1. bundle_audit.json SHA256 Mismatch
- **Rebaseline (CP-03)**: `00ea715fb9fa31352bbdb5db0b8ff7eb804b2b4e7b2d38c8e48da9f2e175ca6c`
- **Current (CP-04)**: `533981708506a6f1bc0820413ce0e794390bc3fb22c53eefaac8b1d1eaf20974`
- **Status**: CANNOT VERIFY — artifact modified after rebaseline

#### 2. evidence_bundle.tgz SHA256 Consistent
- **Rebaseline (CP-03)**: `8cbea36f4db125506ee90abbc2b87bc9c94e0aebdbaab82801326a0c9f1670f7`
- **Current (CP-04)**: `c82e33b63e9e571882f6f940768cc38d632c66e10d947502aa51d6c396d85c63`
- **Status**: CANNOT VERIFY — artifact modified after rebaseline

#### 3. Acceptance Directory Divergence
- **Rebaseline (CP-03)**: `evidence/_acceptance/20260227-154124/`
- **Current (CP-04)**: `evidence/_acceptance/20260227-155711/`
- **Status**: Different checkpoint timestamps; data not rooted to CP-03

## Root Cause Analysis

**Hypothesis 1 (Most Likely)**: The root artifacts in `evidence/` were modified or regenerated between checkpoint 03 and checkpoint 04, invalidating the rebaseline's SHA256 claims.

**Hypothesis 2**: The WP-008_evidence_upload.txt file was **NOT** correctly regenerated from the rebaseline input; instead, it references newer artifact hashes that contradict the CP-03 baseline.

**Hypothesis 3**: The bounded repair process in checkpoint 04 inadvertently modified artifact files (e.g., running `tgz` recreation, JSON reformatting).

## Constraint Violation

Per AGENTS.md § 4.1, Constraint 6:
> "若發現矛盾（例如缺必要檔/sha256 不可驗）→ TT + FAIL_CLOSED"

**Verdict**: Evidence integrity **cannot be verified**. Artifact hashes contradict rebaseline upload.

## Resolution Path

1. **Option A (Revert & Rebuild)**:
   - Revert `evidence/` artifacts to CP-03 state (if git history available)
   - Regenerate WP-008_evidence_upload.txt from rebaseline input with verified hashes
   - Run bounded repair iteration 2 with locked artifact hashes

2. **Option B (Accept CP-04 as New Baseline)**:
   - Treat CP-04 artifacts as the new source of truth
   - Regenerate WP-008_evidence_upload.txt with **current** SHA256 values
   - Discard CP-03 rebaseline (not canonical)
   - Mark as TEMP_CLOSED (requires manual approval)

3. **Option C (Investigation + Fix)**:
   - Determine what modified the artifacts between CP-03 and CP-04
   - If modification is benign (e.g., tgz format change), re-sign the upload
   - If modification is unauthorized, raise security incident

## Recommended Next Step

**Await human decision** on which resolution path to pursue. Cannot auto-repair without explicit authorization due to evidence integrity implications.

---

**Sign-off**: Sisyphus (Evidence Coordinator)  
**Timestamp**: 2026-02-27T16:15:00Z
