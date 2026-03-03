# R7 Card LP-01: Manual Phase 6.2 Real Environment Test Execution

**Status**: R7 scaffolding and prerequisites complete. Operator must now execute tests manually on real platform.

## Prerequisites (from Cards LF-01 & LF-02)

- ✅ Gap set frozen: REQ-008, REQ-009, REQ-010, REQ-012
- ✅ config/omoc_real_env_contract.env.example created (names only)
- ✅ docs/PHASE_6_2_REAL_ENV_PREREQS.md created (setup guide)
- ✅ .github/workflows/omoc-gate.yml patched with OIDC + env contract

## What Needs Manual Execution

### 1. GCP Workload Identity Federation Setup
**Prerequisite for REQ-010**

Run in GCP console:
```bash
# Set variables (replace with your values)
export GCP_PROJECT_ID="your-project-id"
export GITHUB_ORG="your-github-org"
export GITHUB_REPO="omoc-mvu-bridge-v3-greenfield"

# Follow steps in docs/PHASE_6_2_REAL_ENV_PREREQS.md
# - Enable WIF in GCP
# - Create OIDC provider
# - Create service account
# - Bind GitHub to service account
# - Capture provider resource name
```

**Evidence Required**:
- GCP WIF provider resource name
- Service account email
- Project ID

### 2. GitHub Configuration
**Prerequisite for REQ-012**

1. Go to Settings > Secrets and variables > Actions
2. Create repository variables (non-secret, visible in logs):
   - `OMOC_ENV`: staging
   - `OMOC_API_BASE`: https://api.staging.omoc.example.com (or actual URL)
   - `OMOC_PROJECT`: your-project-id
   - `OMOC_TENANT`: your-tenant-id
   - `GCP_PROJECT_ID`: your-project-id
   - `GCP_WIF_PROVIDER`: projects/PROJECT_NUM/locations/global/workloadIdentityPools/github-pool/providers/github-provider
   - `GCP_SERVICE_ACCOUNT_EMAIL`: omoc-phase6-2@your-project-id.iam.gserviceaccount.com
   - `ACCEPTANCE_TIMEOUT`: 300

3. Create secrets (encrypted, not visible in logs):
   - `OMOC_RUNNER_TOKEN`: token-from-omoc-platform

**Evidence Required**:
- Screenshot or export of GitHub variables (names only, no values)

### 3. Test A: Timeout (REQ-008)

**Objective**: Prove timeout produces concluded check (not pending)

Steps:
1. Create test branch: `git checkout -b r7-phase6-2-test-timeout`
2. Modify .github/workflows/omoc-gate.yml temporarily (or create test workflow):
   - Set `ACCEPTANCE_TIMEOUT` to 10 seconds
   - Add a gate step that intentionally runs >10s:
     ```yaml
     - name: Simulate long-running check
       timeout-minutes: 1
       run: sleep 100  # Will timeout after ACCEPTANCE_TIMEOUT
     ```
3. Commit and push to create PR
4. Watch workflow run in GitHub Actions
5. After ~10s, check should FAIL (not hang forever)
6. Collect evidence:
   ```bash
   SHA="<commit-sha>"
   gh api repos/:owner/:repo/commits/$SHA/check-runs | jq '.check_runs[] | {name, conclusion, status}'
   # Expected conclusion: "timed_out" or "failure"
   ```

**Evidence Artifacts**:
- evidence/_acceptance/$TS/r7_phase6_2/test_a_timeout/commit_status.json
- evidence/_acceptance/$TS/r7_phase6_2/test_a_timeout/check_runs.json (must have conclusion, not pending)
- evidence/_acceptance/$TS/r7_phase6_2/test_a_timeout/PR_URL.txt

### 4. Test B: Cancel / ^C (REQ-009)

**Objective**: Prove cancellation produces concluded check (not pending)

Steps:
1. Create test branch: `git checkout -b r7-phase6-2-test-cancel`
2. Commit and push to create PR
3. Trigger workflow and let it run for a few seconds
4. In GitHub Actions UI, click "Cancel all jobs" button (or use `gh run cancel <run_id>`)
5. After cancellation, check should CONCLUDE as "cancelled" (not stay pending)
6. Collect evidence:
   ```bash
   SHA="<commit-sha>"
   RUN_ID="<run_id>"
   gh api repos/:owner/:repo/commits/$SHA/check-runs | jq '.check_runs[] | {name, conclusion, status}'
   gh api repos/:owner/:repo/actions/runs/$RUN_ID | jq '{status, conclusion}'
   # Expected: conclusion: "cancelled"
   ```

**Evidence Artifacts**:
- evidence/_acceptance/$TS/r7_phase6_2/test_b_cancel/commit_status.json
- evidence/_acceptance/$TS/r7_phase6_2/test_b_cancel/check_runs.json (must have conclusion: cancelled)
- evidence/_acceptance/$TS/r7_phase6_2/test_b_cancel/workflow_run.json

### 5. Test C: Bypass Attempt (REQ-010/012 reference)

**Objective**: Prove merge is blocked by ruleset even if operator tries to force merge

Steps:
1. Create test branch: `git checkout -b r7-phase6-2-test-bypass`
2. Intentionally fail a required check (safe: e.g., `exit 1` in a step)
3. Commit and push to create PR
4. Try to merge via `gh pr merge --auto` or UI
5. Expect merge to FAIL: "Some checks were not successful"
6. Collect evidence:
   ```bash
   PR_NUM="<pr-number>"
   gh api repos/:owner/:repo/pulls/$PR_NUM | jq '{mergeable, mergeable_state, title}'
   # Expected: mergeable: false or mergeable_state: "blocked"
   ```

**Evidence Artifacts**:
- evidence/_acceptance/$TS/r7_phase6_2/test_c_bypass/pr_status.json
- evidence/_acceptance/$TS/r7_phase6_2/test_c_bypass/merge_attempt.log (showing rejection)

## Data Collection Template

For each test, use this script:

```bash
TS="<YOUR_TS_VALUE>"
TEST_NAME="<a_timeout | b_cancel | c_bypass>"
SHA="<commit-sha>"
OUT_DIR="evidence/_acceptance/$TS/r7_phase6_2/test_${TEST_NAME}"
mkdir -p "$OUT_DIR"

# Commit status
gh api repos/:owner/:repo/commits/$SHA/status > "$OUT_DIR/commit_status.json" 2>&1

# Check runs (includes conclusion)
gh api repos/:owner/:repo/commits/$SHA/check-runs > "$OUT_DIR/check_runs.json" 2>&1

# PR status (if applicable)
PR_NUM=$(gh pr list --search "is:open head:$SHA" --json number --jq ".[0].number" 2>/dev/null || echo "")
if [ -n "$PR_NUM" ]; then
  gh api repos/:owner/:repo/pulls/$PR_NUM > "$OUT_DIR/pr_status.json" 2>&1
fi

# Workflow run (if applicable)
RUN_ID=$(gh api repos/:owner/:repo/actions/runs --jq ".[0].id" 2>/dev/null || echo "")
if [ -n "$RUN_ID" ]; then
  gh api repos/:owner/:repo/actions/runs/$RUN_ID > "$OUT_DIR/workflow_run.json" 2>&1
fi

# Summary
python3 <<EOF
import json
from pathlib import Path
out = Path('$OUT_DIR')
print(f"\n=== Test {TEST_NAME} Evidence ===")
if (out/'check_runs.json').exists():
    data = json.load(open(out/'check_runs.json'))
    for run in data.get('check_runs', []):
        print(f"  Check: {run.get('name')} | Conclusion: {run.get('conclusion')} | Status: {run.get('status')}")
if (out/'pr_status.json').exists():
    data = json.load(open(out/'pr_status.json'))
    print(f"  PR Mergeable: {data.get('mergeable')} | State: {data.get('mergeable_state')}")
EOF
```

## Update Acceptance Matrix (After All Tests Pass)

Only after collecting evidence for all 3 tests:

```bash
# Edit FINAL_ACCEPTANCE_REPORT.md and change:
# REQ-008: UNVERIFIED → PASS
# REQ-009: UNVERIFIED → PASS
# REQ-010: OUT_OF_SCOPE → PASS
# REQ-012: OUT_OF_SCOPE → PASS

# Add evidence references:
# REQ-008: timeout test, SHA=abc123, check_runs.json conclusive
# etc.
```

## Rollback / Troubleshooting

- **Timeout test hangs forever**: ACCEPTANCE_TIMEOUT not enforced, or `timeout` command missing
- **Cancel doesn't report**: always-report job may not have `if: always()`; check omoc-gate.yml
- **Merge not blocked**: branch protection rules may not be enforcing required checks; check Settings > Branches
- **GCP auth fails**: WIF provider not configured correctly; verify steps in docs/PHASE_6_2_REAL_ENV_PREREQS.md

## Timeline

Estimated execution time:
- GCP WIF setup: 15-20 minutes
- GitHub config: 5 minutes
- Test A (timeout): 5 minutes
- Test B (cancel): 5 minutes
- Test C (bypass): 5 minutes
- Evidence collection & matrix update: 10 minutes
- **Total: ~45-60 minutes**

---

**Next Step**: Once all 3 tests pass with evidence collected, proceed to **Card LP-02** (rebundle + final upload).

