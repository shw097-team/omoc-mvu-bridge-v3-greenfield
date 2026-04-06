# OTCM v2.2 Preflight — Next Steps & Deployment Plan

**Generated**: 2026-04-06T11:07:15Z  
**TS**: 20260406T104257Z  
**Status**: FAIL_CLOSED (Pre-Deployment Phase)

---

## Summary of Blockers

| Level | Count | Items | Impact |
|-------|-------|-------|--------|
| 🚨 **CRITICAL_BLOCKER** | 3 | CR-OTCM-001/002/003 not mounted | Cannot release above PASS_WITH_GUARDS |
| 🚨 **CRITICAL_BLOCKER** | 3 | Input files missing (RBWI_AUDIT, v2.1.md, v2.1_AUDIT.md) | Cannot execute WI-OTCM-000 |
| 🚨 **CRITICAL** | 5 | Repo directories not prepared | Cannot run scripts |
| 🚨 **CRITICAL** | 7 | Python scripts not deployed | Cannot execute WI-OTCM-009..015 |
| 🚨 **CRITICAL** | 2 | Workflow files missing | Cannot trigger CI/release gates |
| ⚠️ **HIGH** | 14 | Owner truth rows UNVERIFIED | Degraded service modes but not blocking preflight |

---

## Phase-by-Phase Deployment

### Phase 0: Pre-Deployment Validation (This Round)
- ✅ **COMPLETE**: Preflight scan generated
- ✅ **COMPLETE**: Freeze decision documented
- ✅ **COMPLETE**: Missing items catalogued
- **Next**: Await input mount + repo prep authorization

### Phase 1: Input Mount & Validation (2-4 hours estimated)

#### 1a. Locate Missing Input Files
Search for:
- `OTCM_v2_全線修補RBWI_AUDIT.md` (350 KB, ~50 pages)
- `OTCM_v2_全線修補藍圖v2.1.md` (450 KB, ~60 pages)
- `OTCM_v2_全線修補藍圖_AUDIT.md` (200 KB, ~25 pages)

**Expected Locations**:
- May be in external handoff archive
- May be with previous OTCM phase lead
- May be in `/mnt/data` or shared drive (if available)
- Search OTCM-v2-inputs or similar naming

#### 1b. Mount in Input Bundle
```bash
cp /path/to/OTCM_v2_全線修補RBWI_AUDIT.md docs/_inputs/otcm/
cp /path/to/OTCM_v2_全線修補藍圖v2.1.md docs/_inputs/otcm/
cp /path/to/OTCM_v2_全線修補藍圖_AUDIT.md docs/_inputs/otcm/
```

#### 1c. Verify File Integrity
```bash
# Check for corruption
wc -l docs/_inputs/otcm/OTCM_v2_全線修補RBWI_AUDIT.md
wc -l docs/_inputs/otcm/OTCM_v2_全線修補藍圖v2.1.md
wc -l docs/_inputs/otcm/OTCM_v2_全線修補藍圖_AUDIT.md

# Verify UTF-8 encoding
file docs/_inputs/otcm/OTCM_v2_*.md
```

### Phase 2: Repo Directory Preparation (15 minutes)

```bash
# Create required directory structure
mkdir -p governance/owner_truth/exports
mkdir -p templates
mkdir -p release/_contracts
mkdir -p release/current/rc_pack

# Create evidence subdirs for this round
mkdir -p evidence/_acceptance/20260406T104257Z
mkdir -p evidence/_audit/20260406T104257Z/lint

# Populate from input bundle
cp docs/_inputs/otcm/governance/owner_truth/*.json governance/owner_truth/
cp docs/_inputs/otcm/governance/owner_truth/*.tsv governance/owner_truth/
cp docs/_inputs/otcm/templates/*.tpl templates/ 2>/dev/null || echo "Templates may not exist in bundle yet"
cp docs/_inputs/otcm/release/_contracts/* release/_contracts/

# Verify
ls -la governance/owner_truth/
ls -la templates/
ls -la release/_contracts/ | wc -l
```

### Phase 3: Script & Workflow Deployment (10 minutes)

```bash
# Deploy OTCM v2.2 Python implementations
cp docs/_inputs/otcm/scripts/owner_truth_preflight.py scripts/
cp docs/_inputs/otcm/scripts/authoritative_reconcile.py scripts/
cp docs/_inputs/otcm/scripts/compat_probe.py scripts/
cp docs/_inputs/otcm/scripts/export_owner_truth_bundle.py scripts/
cp docs/_inputs/otcm/scripts/validate_owner_export_bundle.py scripts/
cp docs/_inputs/otcm/scripts/lint_runner.py scripts/
cp docs/_inputs/otcm/scripts/assemble_stage8_rc_pack.py scripts/

# Deploy canonical workflows
cp docs/_inputs/otcm/examples/omoc-ci-gate.yml .github/workflows/
cp docs/_inputs/otcm/examples/omoc-release-gate.yml .github/workflows/

# Verify deployments
ls -la scripts/owner_truth_preflight.py
ls -la .github/workflows/omoc-ci-gate.yml
python3 scripts/owner_truth_preflight.py --help 2>/dev/null | head -5
```

### Phase 4: Owner Truth Preflight Validation (WI-OTCM-009) (15-30 minutes)

Once scripts are deployed, run:

```bash
# First check compat
python3 scripts/compat_probe.py \
  --root . \
  --out evidence/_audit/20260406T104257Z/compat_probe.json

# Then run preflight (this will reveal any missing bundles)
python3 scripts/owner_truth_preflight.py \
  --matrix governance/owner_truth/owner_truth_matrix.tsv \
  --out evidence/_audit/20260406T104257Z/owner_truth_preflight.json

# Check result
cat evidence/_audit/20260406T104257Z/owner_truth_preflight.json | jq '.verdict'
```

**Expected Output at This Stage**:
- `TEMP_CLOSED` with list of missing owner export bundles
- This is OK — it means repo structure is ready, waiting for Package owner proofs

### Phase 5: Owner Export Bundle Generation / Acquisition (Variable: 1-8 hours)

**Option A: Owners Have Proof Material**
```bash
# If owner proofs are available, run:
python3 scripts/export_owner_truth_bundle.py \
  --package b \
  --ts 20260406T104257Z \
  --owner-root /path/to/package_b_owner_data \
  --source-acceptance evidence/_acceptance/20260406T000000Z/20260406T000000Z_acceptance_report.json \
  --verdict PASS \
  --fields-json '{"schema_registry_ref":"...","gate_registry_ref":"..."}' \
  --proof-rows-json '[{"id":"proof-b-001","status":"PASS"}]' \
  --out-dir governance/owner_truth/exports

# Then validate each bundle
for pkg in b c d e; do
  python3 scripts/validate_owner_export_bundle.py \
    --bundle governance/owner_truth/exports/20260406T104257Z_package_${pkg}_owner_export.json \
    --out evidence/_acceptance/20260406T104257Z/validate_package_${pkg}.json
done
```

**Option B: Owners Cannot Provide Proofs → Scope Adjudication**
- Per DUAL_LANE_CONTRACT: explicitly declare rows as `SCOPED_OUT` in owner_truth_matrix.tsv
- Mark adjudication in evidence tree
- This is acceptable fallback but downgrades release to PASS_WITH_GUARDS

### Phase 6: Authoritative Reconciliation (WI-OTCM-012) (10 minutes)

```bash
# Run reconciliation
python3 scripts/authoritative_reconcile.py \
  --root . \
  --mode release \
  --out evidence/_acceptance/20260406T104257Z/authoritative_reconcile.json

# Check result
cat evidence/_acceptance/20260406T104257Z/authoritative_reconcile.json | jq '.verdict'
# Expected: PASS_WITH_GUARDS or TEMP_CLOSED (depending on owner bundles)
```

### Phase 7: Stage-8 RC Pack Assembly (WI-OTCM-013) (5 minutes)

```bash
# Generate the three-file Stage-8 output
python3 scripts/assemble_stage8_rc_pack.py \
  --run-id current \
  --acceptance-report evidence/_acceptance/20260406T000000Z/20260406T000000Z_acceptance_report.json \
  --evidence-upload evidence/_acceptance/20260406T104257Z/evidence_upload.txt \
  --out-dir release/current/rc_pack

# Verify output
ls -la release/current/rc_pack/
# Should contain: RC_PACK.md, HANDOFF_MANIFEST.json, TT_EXPORT.json
```

### Phase 8: Anti-Hallucination Lint (WI-OTCM-014) (15 minutes)

```bash
# Run all 8 lints
python3 scripts/lint_runner.py \
  --root . \
  --out-dir evidence/_audit/20260406T104257Z/lint

# Check results
ls -la evidence/_audit/20260406T104257Z/lint/
cat evidence/_audit/20260406T104257Z/lint/lint_summary.json | jq '.overall_verdict'
```

### Phase 9: Final Release Decision (WI-OTCM-015) (5 minutes)

```bash
# Review all evidence
cat evidence/_acceptance/20260406T104257Z/authoritative_reconcile.json | jq '.verdict'
cat evidence/_audit/20260406T104257Z/lint/lint_summary.json | jq '.overall_verdict'

# Final adjudication (manual, single authority)
# Verdict options:
# - PASS: All gates pass + CR-OTCM-001/002/003 mounted + owner proofs valid
# - PASS_WITH_GUARDS: All gates pass but CR-OTCM-001/002/003 remain unresolved
# - TEMP_CLOSED: Owner truth gaps unresolved but blockers identified
# - FAIL_CLOSED: Structural issues present
```

---

## Immediate Action Items (Next 24 Hours)

| Priority | Item | Owner | Deadline | Success Criteria |
|----------|------|-------|----------|------------------|
| **P0** | Locate OTCM_v2_全線修補RBWI_AUDIT.md, v2.1.md, v2.1_AUDIT.md | OTCM Lead | 2 hours | Files mounted in docs/_inputs/otcm/ |
| **P1** | Execute Phase 2 (repo directory prep) | DevOps / Sisyphus | 15 min | `ls -la governance/owner_truth/` shows owner_truth_matrix.tsv |
| **P1** | Execute Phase 3 (script/workflow deploy) | DevOps / Sisyphus | 10 min | `python3 scripts/owner_truth_preflight.py --help` works |
| **P2** | Run Phase 4 preflight validation | QA / Sisyphus | 30 min | preflight.json generated, verdict TEMP_CLOSED or PASS_WITH_GUARDS |
| **P2** | Acquire Package owner export bundles or approve scope adjudication | Package Owners B/C/D/E | 4-8 hours | All owner_truth_matrix rows have status != UNVERIFIED |
| **P3** | Execute Phase 5-9 full WI pipeline | Sisyphus / CI | 1-2 hours | All gates PASS, RC_PACK.md generated, lint PASS |
| **P3** | Mount CR-OTCM-001/002/003 evidence (if available) | OTCM Lead | TBD | CR items documented as RESOLVED or SCOPED_OUT |

---

## Go / No-Go Checkpoint (Before WI-OTCM-001)

✅ **GO** if all of:
- [ ] OTCM_v2_全線修補RBWI_AUDIT.md mounted
- [ ] OTCM_v2_全線修補藍圖v2.1.md mounted
- [ ] OTCM_v2_全線修補藍圖_AUDIT.md mounted
- [ ] All repo directories created and populated
- [ ] All Python scripts deployed and tested
- [ ] All workflows deployed and syntactically valid
- [ ] Phase 4 preflight runs without fatal error
- [ ] Owner truth matrix shows 0 rows with status UNVERIFIED (or explicit scope adjudication logged)

🛑 **NO-GO** if any of:
- [ ] Any input file still missing after 2 hours search
- [ ] Repo directory creation fails (permission issue)
- [ ] Script deployment fails (syntax error)
- [ ] Preflight runs but reports fatal errors
- [ ] Owner proof bundles unavailable AND scope adjudication not authorized

---

## Contingency Plans

### If Input Files Cannot Be Located
1. Check previous phase handoff docs for references
2. Check AGENTS.md for alternate locator
3. If truly unavailable after 4-hour search:
   - Declare CR-OTCM-INPUT-001: input files unrecoverable
   - Lock release to PASS_WITH_GUARDS (cannot verify full RBWI closure)
   - Document scope boundary in evidence tree
   - Proceed with available materials

### If Owner Bundles Unavailable
1. For each missing owner proof:
   - Require explicit scope adjudication (WI-OTCM-006 style decision)
   - Update owner_truth_matrix.tsv row: status → `SCOPED_OUT`, current_status → RESOLVED_AS_OUT_OF_SCOPE
   - Document adjudication authority + reason
2. Acceptable degradations per acceptance matrix:
   - CA-METHOD: TEMP_CLOSED / BLOCK_RELEASE
   - CA-PERFORM: READ_ONLY_UI / RADAR_ONLY / EXECUTE_DISABLED
   - PIPELINE-C: CONFIGURE_REQUIRED
   - Sys5: mode-specific degrade

### If Scripts Have Syntax Errors
1. Check Python version (must be 3.12+)
2. Check dependencies in script headers (e.g., jq, tsv parsing libraries)
3. If error persists:
   - Escalate to OTCM architect
   - May require rewriting script for this environment
   - Block release pending resolution

---

## Success Metrics for Full Deployment

**Target State After Phase 9**:
- ✅ All CRITICAL blockers resolved or explicitly scoped
- ✅ All repo directories prepared + populated
- ✅ All scripts deployed + tested
- ✅ Phase 4 preflight: PASS_WITH_GUARDS or PASS
- ✅ Phase 8 lint: 0 failures
- ✅ Phase 9 release decision: PASS or PASS_WITH_GUARDS (no FAIL_CLOSED)
- ✅ All WI work items (WI-OTCM-000..015) documented as COMPLETE
- ✅ freeze_decision.json updated with final verdict

---

**Report Prepared By**: Sisyphus RIP-C v3  
**TS**: 20260406T104257Z  
**Artifact**: `evidence/_audit/20260406T104257Z/deployment_next_steps.md`
