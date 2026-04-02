# Expected vs Observed: Pre-Push CI/CD Alignment

**Assessment Timestamp**: 2026-04-02T13:05:43Z

## Current Status: CHECKOUT BLOCKER REPAIR

### Issue Fixed
✅ **Orphan gitlink removed**
- **Path**: `.readonly_refs/20260331T180308Z/spine_prev`
- **Problem**: GitHub Actions checkout fails on gitlink without .gitmodules entry
- **Solution**: `git rm --cached` + gitignore rule
- **Status**: RESOLVED

### Expected Outcome After Push
1. ✅ GitHub Actions checkout should succeed
2. ⏳ All required checks should begin reporting
3. ⏳ No "checkout" or "submodule" errors in logs

### Known Workflows
- `doc-validate.yml`: Documentation validation
- `cr_open_tt_probe.yml`: Custom report probe
- `dispatch_shim.yml`: Dispatch shim
- `ci-omoc-gate.yml`: OMOC gate
- `omoc-gate.yml`: Secondary gate
- `ci.yml`: Main CI pipeline

### Pre-Push Checklist

| Item | Status | Notes |
|------|--------|-------|
| Orphan gitlink removed | ✅ DONE | `.readonly_refs` gitlink gone from index |
| .gitignore updated | ✅ DONE | Added `/.readonly_refs/` rule |
| Local readonly snapshot preserved | ✅ DONE | Only removed from Git tracking |
| Canonical artifacts unaffected | ✅ DONE | evidence/_acceptance/ untouched |
| Verification artifacts unaffected | ✅ DONE | evidence/_acceptance/ untouched |
| Promotion artifacts unaffected | ✅ DONE | evidence/_acceptance/ untouched |

### Post-Push Expected Behavior

**Immediate** (within seconds):
- GitHub Actions re-runs checkout
- Should succeed without gitlink errors

**Short-term** (within minutes):
- All registered required checks should report status
- No "pending" context timeouts

**Long-term**:
- Branch can be merged once all required checks pass
- No further checkout blockers

### Risk Assessment

| Risk | Likelihood | Mitigation |
|------|------------|-----------|
| Checkout still fails | LOW | All gitlinks removed, gitignore applied |
| Required checks don't report | MEDIUM | Depends on workflow configuration (under review) |
| Readonly refs re-tracked | LOW | gitignore rule prevents future tracking |

---

**Next Phase**: Push repair commit and monitor GitHub Actions workflow runs.
