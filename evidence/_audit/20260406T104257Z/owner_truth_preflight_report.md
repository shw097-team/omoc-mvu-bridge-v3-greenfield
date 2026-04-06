# OTCM v2.2 Preflight & Freeze Decision Report
**Generated**: 2026-04-06T11:06:38Z  
**TS**: 20260406T104257Z  
**Authority**: Sisyphus RIP-C v3 (OTCM Architect)

---

## 🚨 VERDICT: FAIL_CLOSED

**Cannot proceed to WI-OTCM execution.** Multiple hard blockers prevent deployment.

---

## I. Input Bundle Status

### ✅ Available (In docs/_inputs/otcm/)
| Input | Role | Status |
|-------|------|--------|
| OTCM_v2_全線修補RBWI_PATCHED_v2_2.md | Main RBWI v2.2 | ✅ FOUND |
| governance/owner_truth/owner_truth_matrix.tsv | Owner truth registry | ✅ FOUND |
| governance/owner_truth/donor_admissibility.tsv | Donor truth seeds | ✅ FOUND |
| governance/owner_truth/package_b/c/d/e_export_contract.json | Schema contracts (4) | ✅ FOUND |
| release/_contracts/acceptance_matrix.tsv | Acceptance gates | ✅ FOUND |
| release/_contracts/file_tree_plan.tsv | Structure blueprint | ✅ FOUND |
| release/_contracts/wi_catalog.tsv | Work item catalog | ✅ FOUND |
| release/current/rc_pack/HANDOFF_MANIFEST.json | Stage-8 pointer | ✅ FOUND |

### ❌ MISSING Critical Inputs
| Input | Expected Location | Role | Blocker |
|-------|-------------------|------|---------|
| OTCM_v2_全線修補RBWI_AUDIT.md | docs/_inputs/otcm/ | RBWI audit closure | YES - needed for F001..F011 closure tracking |
| OTCM_v2_全線修補藍圖v2.1.md | docs/_inputs/otcm/ | Blueprint baseline | YES - needed for gate/contract definitions |
| OTCM_v2_全線修補藍圖_AUDIT.md | docs/_inputs/otcm/ | Blueprint audit | YES - needed for v2.1 gate closure |
| 全線修補藍圖筆記-1.md ~ 5.md | docs/_inputs/otcm/ | Design addenda (5) | NO - referenced but not blocking preflight |

---

## II. Repo Directory Preparation Status

### ✅ Directories Already Exist
- `.github/workflows/` (but missing OTCM v2.2 specific files)
- `scripts/` (but missing OTCM Python implementations)
- `evidence/_acceptance/` (legacy phase 5 structure)
- `evidence/_audit/` (legacy phase 5 structure)

### ❌ CRITICAL: Directories Not Yet Prepared
| Directory | Purpose | Status | Action |
|-----------|---------|--------|--------|
| `governance/owner_truth/` | Owner truth center | NOT EXISTS | Copy from docs/_inputs/otcm/governance/owner_truth/ |
| `governance/owner_truth/exports/` | Owner export bundles (TS-prefixed) | NOT EXISTS | Create during RB-05 |
| `templates/` | Stage-8 template set | NOT EXISTS | Copy RC_PACK.md.tpl, HANDOFF_MANIFEST.json.tpl, TT_EXPORT.json.tpl |
| `release/_contracts/` | Contract registry | NOT EXISTS | Copy full set from docs/_inputs/otcm/release/_contracts/ |
| `release/current/rc_pack/` | Stage-8 output location | NOT EXISTS | Create & populate during WI-OTCM-013 |

### ❌ MISSING Workflow Files
- `.github/workflows/omoc-ci-gate.yml` - Missing (canonical external check for PR/merge_group)
- `.github/workflows/omoc-release-gate.yml` - Missing (release gate validation)

**Note**: `.github/workflows/` has legacy files (ci-omoc-gate.yml, omoc-gate.yml) from Phase 5 but these are not OTCM v2.2 spec compliant.

---

## III. Missing Python Implementations

All OTCM v2.2 validator/generator scripts are absent from `/scripts/`. These are required for WI-OTCM-009 through WI-OTCM-014.

| Script | Purpose | WI | Status |
|--------|---------|----|----|
| `scripts/owner_truth_preflight.py` | Materialization gate validation | WI-OTCM-009 | ❌ MISSING |
| `scripts/authoritative_reconcile.py` | Stage-8 adjudication | WI-OTCM-012 | ❌ MISSING |
| `scripts/compat_probe.py` | Action version compatibility | WI-OTCM-003 | ❌ MISSING |
| `scripts/export_owner_truth_bundle.py` | Generate TS-prefixed proofs | WI-OTCM-010 | ❌ MISSING |
| `scripts/validate_owner_export_bundle.py` | Proof validity check (not existence) | WI-OTCM-011 | ❌ MISSING |
| `scripts/lint_runner.py` | 8-lint anti-hallucination gates | WI-OTCM-014 | ❌ MISSING |
| `scripts/assemble_stage8_rc_pack.py` | RC pack generator | WI-OTCM-013 | ❌ MISSING |

---

## IV. Owner Truth Matrix Status

**Matrix File**: docs/_inputs/otcm/governance/owner_truth/owner_truth_matrix.tsv

### Critical Row Analysis

| Subsystem | Truth ID | Status | Owner Package | Rule | Implication |
|-----------|----------|--------|---------------|------|------------|
| CA-METHOD | TT-PKG-D-001 | **MISSING** | Package-D | OWNER-TRUTH-PREFLIGHT | 🚨 BLOCKER: Cannot materialize without proof or scope adjudication |
| CA-BACKTEST | TT-CABT-001 | NOT_FOUND | Package-B | OWNER-TRUTH-PREFLIGHT | ⚠️ Missing; may fallback to scope-out |
| CA-BACKTEST | TT-CABT-002 | FOUND_VALID | Package-D | (valid) | ✅ Acceptable |
| CA-BACKTEST | TT-CABT-004 | NOT_FOUND | Package-E | OWNER-TRUTH-PREFLIGHT | ⚠️ Missing; may fallback to scope-out |
| CA-PERFORM | CR-001 through CR-006 | **UNVERIFIED** (6 rows) | Package C/E | OWNER-TRUTH-PREFLIGHT | 🚨 BLOCKER: All 6 CR-PERFORM rows unverified → degraded mode (READ_ONLY_UI / RADAR_ONLY / EXECUTE_DISABLED) |
| PIPELINE-C | THRESHOLD-GRANT, TRANSLATE-PARITY | **UNVERIFIED** (2 rows) | Package B/E | OWNER-TRUTH-PREFLIGHT | ⚠️ Missing threshold refs → CONFIGURE_REQUIRED degrade |
| Sys5 | WATCH/EXECUTE/UI/GOVERN/COLLAB | **UNVERIFIED** (5 rows) | Package C/E | OWNER-TRUTH-PREFLIGHT | ⚠️ Missing runtime truths → mode-specific degrade (RADAR_ONLY, EXECUTE_DISABLED, etc.) |

**Summary**: 
- **1 MISSING** (TT-PKG-D-001) = Hard blocker per acceptance matrix rule
- **14 UNVERIFIED** = Various fallback degradations but no PASS-level release available

---

## V. CR_OPEN Items (Unresolved Cases)

Per OTCM_v2_全線修補RBWI_PATCHED_v2_2.md §13.2:

### 🚫 Three Hard Blockers (CR-OTCM-001 ~ 003)

| CR ID | Description | Locator | Status | Until Mounted | Impact |
|-------|-------------|---------|--------|----------------|--------|
| **CR-OTCM-001** | single conversation export artifact | direct artifact not mounted | **NOT MOUNTED** | ⛔ Cannot verify 100% conversation coverage | Can only release as PASS_WITH_GUARDS (not release-ready) |
| **CR-OTCM-002** | live repo tree | direct worktree not mounted | **NOT MOUNTED** | ⛔ Cannot verify WORKTREE_ROOT_LOCATOR | Can only release as PASS_WITH_GUARDS (not release-ready) |
| **CR-OTCM-003** | actual owner-side production bundles | current workspace only has sample bundles | **NOT MOUNTED** | ⛔ Cannot verify Package B/C/D/E actual proofs | Can only release as PASS_WITH_GUARDS (not release-ready) |

**Rule** (WI-OTCM-000 §7): Do not proceed to WI-OTCM-001..015 until these three are mounted.

### Additional CR Items (Subsystem-specific)
- **CR-OTCM-004**: Attestation eligibility may vary (policy pending)
- **CR-OTCM-005**: Historical owner roots may still need external search

---

## VI. Freeze Decision Matrix

### What is FROZEN (no rerun/retry allowed)
1. **Previous Phase 5 WI executions** → Cannot be replaced by fresh bootstrap; only owner-root discovery/scope adjudication allowed
2. **CA-METHOD owner proof status** → Requires explicit owner export bundle or scope adjudication; cannot defer to preflight re-runs
3. **RBWI citation portability** → All locators must remain standalone-compatible; no dynamic path rewrites

### What is NOT YET ACTIVATED (awaiting input mount)
1. **WI-OTCM-000 Inventory** → Pending docs/_inputs/otcm/ complete setup
2. **WI-OTCM-001 through WI-OTCM-015** → All blocked until:
   - OTCM_v2_全線修補RBWI_AUDIT.md, v2.1.md, v2.1_AUDIT.md received
   - Repo directories prepared
   - Python scripts deployed
   - Workflows deployed

### Rerun Policy
- ✅ **Allowed**: Pre-input mounting validations (this preflight)
- ✅ **Allowed**: Input file format checks once mounted
- ❌ **NOT Allowed**: Skipping owner truth verification by re-running preflight
- ❌ **NOT Allowed**: Treating preflight pass as release-ready without full WI closure

---

## VII. Deployment Checklist (For Next Round)

### Phase 1: Input Mount
- [ ] Obtain OTCM_v2_全線修補RBWI_AUDIT.md
- [ ] Obtain OTCM_v2_全線修補藍圖v2.1.md
- [ ] Obtain OTCM_v2_全線修補藍圖_AUDIT.md
- [ ] Place all three in `docs/_inputs/otcm/`
- [ ] Verify integrity (checksum if available)

### Phase 2: Repo Directory Preparation
```bash
# Folder structure
mkdir -p governance/owner_truth/exports templates release/_contracts release/current/rc_pack

# Copy from input bundle
cp docs/_inputs/otcm/governance/owner_truth/*.json governance/owner_truth/
cp docs/_inputs/otcm/governance/owner_truth/*.tsv governance/owner_truth/
cp docs/_inputs/otcm/templates/* templates/
cp docs/_inputs/otcm/release/_contracts/* release/_contracts/
```

### Phase 3: Script Deployment
```bash
# Copy OTCM v2.2 implementations
cp docs/_inputs/otcm/scripts/owner_truth_preflight.py scripts/
cp docs/_inputs/otcm/scripts/authoritative_reconcile.py scripts/
cp docs/_inputs/otcm/scripts/compat_probe.py scripts/
cp docs/_inputs/otcm/scripts/export_owner_truth_bundle.py scripts/
cp docs/_inputs/otcm/scripts/validate_owner_export_bundle.py scripts/
cp docs/_inputs/otcm/scripts/lint_runner.py scripts/
cp docs/_inputs/otcm/scripts/assemble_stage8_rc_pack.py scripts/
```

### Phase 4: Workflow Deployment
```bash
# Install canonical checks
cp docs/_inputs/otcm/examples/omoc-ci-gate.yml .github/workflows/
cp docs/_inputs/otcm/examples/omoc-release-gate.yml .github/workflows/
```

### Phase 5: Owner Truth Export Bundle Generation
- [ ] Run WI-OTCM-010 command sequence to generate TS-prefixed bundles
- [ ] Run WI-OTCM-011 validators to verify bundle integrity
- [ ] Address any validation failures before proceeding

### Phase 6: Gate Execution
- [ ] Run WI-OTCM-009 preflight
- [ ] Run WI-OTCM-012 reconciliation
- [ ] Run WI-OTCM-014 lint suite
- [ ] Confirm all gates PASS

### Phase 7: Release Gate
- [ ] Run WI-OTCM-013 Stage-8 assembly
- [ ] Final adjudication via WI-OTCM-015
- [ ] Release decision based on full proof chain (not just existence)

---

## VIII. Acceptance Matrix Mapping

Per OTCM_v2_全線修補RBWI_PATCHED_v2_2.md §5:

| Domain | Current State | Gate Status | Implication |
|--------|---------------|-------------|------------|
| **Global / OTCM Control Plane** | Missing repo prep + scripts | ❌ GATE-OTCM-001..014 Cannot Run | 🚨 FAIL_CLOSED |
| **Pipeline-B / CA-METHOD** | TT-PKG-D-001 MISSING | ❌ OWNER-TRUTH-PREFLIGHT Cannot Pass | 🚨 TEMP_CLOSED / BLOCK_RELEASE |
| **Pipeline-B / CA-BACKTEST** | 2 of 3 truths not available | ⚠️ Conditional Pass | May degrade to TEMP_CLOSED |
| **Pipeline-B / CA-PERFORM** | 6 CR rows UNVERIFIED | ⚠️ Degraded Modes | READ_ONLY_UI / RADAR_ONLY / EXECUTE_DISABLED |
| **Pipeline-C / TA/SELECT/TRANSLATE** | Truths UNVERIFIED | ⚠️ Degraded Mode | CONFIGURE_REQUIRED |
| **Sys5 / WATCH/EXECUTE/etc** | All subsystem truths UNVERIFIED | ⚠️ Degraded Modes | Route-out / mode-specific degrade |

---

## IX. Next Steps

### Immediate (Before Any WI Execution)

1. **Mount Missing Inputs** (CRITICAL)
   - Locate and place OTCM_v2_全線修補RBWI_AUDIT.md, v2.1.md, v2.1_AUDIT.md

2. **Prepare Repo Directories**
   - Execute Phase 2 checklist items

3. **Deploy Scripts & Workflows**
   - Execute Phase 3 & 4 checklist items

4. **Re-run Preflight (WI-OTCM-000 revised)**
   - Should show reduced missing count
   - Owner truth matrix rows should move from UNVERIFIED toward MISSING/FOUND

### Conditional (After Inputs Mounted)

5. **Generate Owner Export Bundles** (WI-OTCM-010)
   - Only if owner-side proof material is available
   - Otherwise, require explicit scope adjudication per DUAL_LANE_CONTRACT

6. **Full WI Execution** (WI-OTCM-001..015)
   - Follow Runbook §8 sequence
   - Stop immediately if any gate fails; no degrade without explicit adjudication

### Release Decision (After All Gates)

7. **Final Adjudication** (WI-OTCM-015)
   - Single adjudicator only
   - Must verify: all CR_OPEN items mounted + all lint pass + all owner truths FOUND_VALID or SCOPED_OUT
   - No release-ready unless CR-OTCM-001/002/003 resolved

---

## X. Authority Chain & Escalation

Per OTCM_v2_全線修補RBWI_PATCHED_v2_2.md §4.1:

1. This preflight report
2. Current freeze_decision.json (generated 20260406T104257Z)
3. Freeze rules per HARD_RULE_1 (14_KP_DUAL_LANE_CONTRACT.md)
4. No degrade authority
5. Escalation to: OTCM Architect / Package E owner

**If CR-OTCM-001/002/003 cannot be mounted after reasonable search**: Declare formal scope boundary, lock to PASS_WITH_GUARDS tier, document in evidence tree.

---

## Conclusion

**Current Status**: Pre-deployment phase  
**Readiness for WI Execution**: 0% (hard blockers present)  
**Estimated Time to Readiness**: 2-4 hours (input mount + repo prep + script/workflow installation)  
**Risk Level**: MEDIUM (well-defined blockers; no architectural ambiguity)

**Recommendation**: Complete Phase 1-4 of deployment checklist, then re-run this preflight. Target: 100% green on repository structure, 80%+ on owner truth matrix, then proceed to full WI execution.

---

**Report Generated By**: Sisyphus RIP-C v3  
**TS**: 20260406T104257Z  
**Artifact Location**: `evidence/_audit/20260406T104257Z/owner_truth_preflight_report.md`
