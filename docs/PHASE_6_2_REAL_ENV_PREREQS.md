# Phase 6.2 Real Environment Prerequisites (Staging/Production)

**Objective**: Convert remaining 4 gaps into PASS with runtime evidence by executing Phase 6.2 on the real OMOC platform.

**Status**: This document guides operators through prerequisite setup and real environment testing.

---

## Current Gap Set (Frozen)

| REQ ID | Status | Description | Phase 6.2 Test Plan |
|--------|--------|-------------|---------------------|
| REQ-008 | UNVERIFIED | Timeout: acceptance gate must conclude (success/failure) even if check hangs | **Test A**: Set short timeout (10s), trigger gate, prove check concludes (timeout/fail), not pending |
| REQ-009 | UNVERIFIED | Cancel/^C handling: platform must handle workflow cancellation gracefully and report conclusion | **Test B**: Start PR/workflow, cancel via Actions UI or `gh run cancel`, prove check reports (cancelled), not pending |
| REQ-010 | OUT_OF_SCOPE | GCP auth: real credentials + Workload Identity Federation must be available | **Setup**: Configure GCP WIF, GitHub OIDC provider, service account email |
| REQ-012 | OUT_OF_SCOPE | Runtime env vars: OMOC_ENV, OMOC_API_BASE, OMOC_PROJECT, OMOC_TENANT, OMOC_RUNNER_TOKEN must be provisioned | **Setup**: Create GitHub repo/org variables (non-secret) and secrets (OIDC/runner token) |

---

## Platform Capabilities Required

Before running Phase 6.2 tests, verify the target platform (GitHub + GCP + OMOC) supports:

### 1. **Required Checks Always Report Conclusion**
- ✓ Required checks must not be silently skipped by `paths-ignore`, `if:` conditions, or `needs`
- ✓ Example: if a check is required and branch protection enforces it, removing it via conditional **cancels the entire PR merge** (not allows it)
- **How to verify**: Check branch protection rules in Settings > Branches > [protected branch] > Require status checks to pass before merging

### 2. **Merge Queue / Merge Group Enabled**
- ✓ GitHub merge queue groups concurrent PRs and runs checks on merged state
- ✓ Cancellation of an in-flight merge_group run must still report its conclusion (cancelled/failure)
- ✓ Does NOT disappear silently even if a later commit arrives
- **How to verify**: Settings > Branches > [protected branch] > Merge queue enabled; Rulesets configured with merge_group check enforcement

### 3. **Timeout Detection in Checks**
- ✓ If a required check runs longer than `ACCEPTANCE_TIMEOUT`, the platform must conclude it (timeout failure) not wait forever
- ✓ This can be enforced by a wrapper timeout command in the workflow step
- **How to verify**: Run a test step with `timeout 5 sleep 100` inside a required check; expect it to fail after 5s, not hang forever

### 4. **Rulesets / Branch Protection Reject Bypass Attempts**
- ✓ If a required check fails, merge must be blocked (no force-push override possible without changing rules)
- ✓ Ruleset enforcement is immutable until changed via API and evidence captured
- **How to verify**: Create a PR with intentionally failing required check; attempt merge; expect "Some checks were not successful" error

---

## GCP + GitHub OIDC Setup (REQ-010)

### A. Configure GitHub OIDC Provider in GCP

1. **Enable Workload Identity Federation in GCP**:
   ```bash
   gcloud iam workload-identity-pools create "github-pool" \
     --project="${GCP_PROJECT_ID}" \
     --location="global" \
     --display-name="GitHub Actions"
   ```

2. **Create Workload Identity Provider**:
   ```bash
   gcloud iam workload-identity-pools providers create-oidc "github-provider" \
     --project="${GCP_PROJECT_ID}" \
     --location="global" \
     --workload-identity-pool="github-pool" \
     --display-name="GitHub" \
     --attribute-mapping="google.subject=assertion.sub,attribute.aud=assertion.aud,attribute.repository=assertion.repository" \
     --issuer-uri="https://token.actions.githubusercontent.com"
   ```

3. **Create Service Account (for OMOC platform operations)**:
   ```bash
   gcloud iam service-accounts create omoc-phase6-2 \
     --project="${GCP_PROJECT_ID}" \
     --display-name="OMOC Phase 6.2 Runner"
   ```

4. **Bind GitHub to Service Account**:
   ```bash
   gcloud iam service-accounts add-iam-policy-binding \
     "omoc-phase6-2@${GCP_PROJECT_ID}.iam.gserviceaccount.com" \
     --project="${GCP_PROJECT_ID}" \
     --role="roles/iam.workloadIdentityUser" \
     --principal="principalSet://iam.googleapis.com/projects/${GCP_PROJECT_NUMBER}/locations/global/workloadIdentityPools/github-pool/attribute.repository/${GITHUB_ORG}/${GITHUB_REPO}"
   ```

5. **Capture Provider Resource Name** (use in workflow `google-github-actions/auth` action):
   ```bash
   gcloud iam workload-identity-pools providers describe "github-provider" \
     --workload-identity-pool="github-pool" \
     --location="global" \
     --format="value(name)"
   # Output: projects/PROJECT_NUMBER/locations/global/workloadIdentityPools/github-pool/providers/github-provider
   ```

### B. Configure GitHub Secrets (Non-OIDC Values)

If not using OIDC, or need additional secrets (OMOC_RUNNER_TOKEN):

1. Go to Settings > Secrets and variables > Actions
2. Create secrets (not variables):
   - `GCP_SA_JSON_B64`: Base64-encoded service account JSON (if Pattern B)
   - `OMOC_RUNNER_TOKEN`: Runner token provided by OMOC platform

3. Create repo/org variables (visible in logs, not secrets):
   - `OMOC_ENV`: `staging` or `prod`
   - `OMOC_API_BASE`: e.g., `https://api.staging.omoc.example.com`
   - `OMOC_PROJECT`: your project ID
   - `OMOC_TENANT`: your tenant ID
   - `ACCEPTANCE_TIMEOUT`: `300` (seconds)

### C. Update Workflow (LF-02 Card) to Use OIDC

See **Card LF-02** section below for workflow patch details.

---

## GitHub Actions Workflow Updates (REQ-012 + Timeout/Cancel Handling)

### A. Permissions (OIDC + ID Token)

```yaml
permissions:
  contents: read
  id-token: write          # Required for GitHub OIDC
  checks: write            # Required to report check conclusions
  pull-requests: write     # Required to update PR status
```

### B. Environment Variables (Names Only)

```yaml
env:
  OMOC_ENV: ${{ vars.OMOC_ENV || 'staging' }}
  OMOC_API_BASE: ${{ vars.OMOC_API_BASE }}
  OMOC_PROJECT: ${{ vars.OMOC_PROJECT }}
  OMOC_TENANT: ${{ vars.OMOC_TENANT }}
  ACCEPTANCE_TIMEOUT: ${{ vars.ACCEPTANCE_TIMEOUT || '300' }}
  GCP_PROJECT_ID: ${{ vars.GCP_PROJECT_ID }}
  GCP_WIF_PROVIDER: ${{ vars.GCP_WIF_PROVIDER }}
  GCP_SERVICE_ACCOUNT_EMAIL: ${{ vars.GCP_SERVICE_ACCOUNT_EMAIL }}
```

### C. Auth Step (OIDC Pattern)

```yaml
- name: Authenticate to Google Cloud (OIDC)
  uses: google-github-actions/auth@v2
  with:
    workload_identity_provider: ${{ env.GCP_WIF_PROVIDER }}
    service_account_email: ${{ env.GCP_SERVICE_ACCOUNT_EMAIL }}
    token_format: 'access_token'
    access_token_lifetime: '1200s'   # 20 minutes
```

### D. Acceptance Gate (REQ-008 Timeout)

```yaml
- name: Run Acceptance Gate
  timeout-minutes: 6   # ACCEPTANCE_TIMEOUT + overhead
  run: |
    timeout "${{ env.ACCEPTANCE_TIMEOUT }}" \
      bash scripts/omoc_acceptance_local.sh || \
      ( [ $? -eq 124 ] && echo "ACCEPTANCE_TIMEOUT exceeded" && exit 1 || exit $? )
```

### E. Always-Report Terminator (REQ-009 Cancel Handling)

```yaml
- name: Report Check Status (Always)
  if: always()   # Run even if previous step cancelled or timed out
  run: |
    EXIT_CODE=${PIPESTATUS[0]:-${?}}
    CONCLUSION="failure"
    [ "${{ job.status }}" = "cancelled" ] && CONCLUSION="cancelled"
    [ "${{ job.status }}" = "success" ] && CONCLUSION="success"
    
    echo "Reporting conclusion: $CONCLUSION"
    # Call OMOC API to report check conclusion
    curl -X POST "${{ env.OMOC_API_BASE }}/checks/${{ github.run_id }}/conclude" \
      -H "Authorization: Bearer ${{ secrets.OMOC_RUNNER_TOKEN }}" \
      -H "Content-Type: application/json" \
      -d "{\"conclusion\": \"$CONCLUSION\", \"run_id\": \"${{ github.run_id }}\"}" || true
```

---

## Phase 6.2 Real Test Execution (LP-01 Card)

### Test A: Timeout (REQ-008)

**Objective**: Prove timeout produces concluded check (not pending)

1. Create PR on test branch with modified `ACCEPTANCE_TIMEOUT` set to 10s
2. Trigger workflow via commit/push
3. Gate step intentionally takes >10s (e.g., `timeout 8 sleep 100`)
4. Expect check to **fail** (timeout) after ~10s, not hang forever
5. Collect evidence:
   - `gh api repos/:owner/:repo/commits/<SHA>/check-runs` → JSON with conclusion: "timed_out" or "failure"
   - Workflow run logs showing timeout message
   - Timestamp of timeout vs ACCEPTANCE_TIMEOUT value

**Proof**: If check concludes (failure/timed_out), REQ-008 = **PASS**

### Test B: Cancel / ^C (REQ-009)

**Objective**: Prove cancellation produces concluded check (not pending)

1. Push PR to test branch
2. Trigger workflow and let it run for a few seconds
3. Cancel via GitHub Actions UI: "Cancel all jobs" button (or `gh run cancel <run_id>`)
4. Expect check to **conclude as "cancelled"** (not stay pending)
5. Collect evidence:
   - `gh api repos/:owner/:repo/commits/<SHA>/check-runs` → JSON with conclusion: "cancelled"
   - Workflow run metadata showing cancellation time and conclusion
   - No "pending" entries for this check after cancellation

**Proof**: If check concludes (cancelled), REQ-009 = **PASS**

### Test C: Bypass Attempt (REQ-010 / REQ-012 Reference)

**Objective**: Prove merge is blocked by ruleset even if operator tries to force merge

1. Create PR with intentionally failing required check (safe: e.g., `exit 1`)
2. Attempt merge via `gh pr merge --auto` or UI
3. Expect merge to be **blocked**: "Some checks were not successful" or "Required status checks are failing"
4. Collect evidence:
   - PR mergeState from `gh api repos/:owner/:repo/pulls/<PR_NUM>` → mergeState: "blocked" or "behind"
   - Branch protection rules snapshot (before/after, if changed)
   - Workflow run showing check failure

**Proof**: If merge is blocked and cannot be overridden, REQ-010/012 prerequisites are working = **PASS**

---

## Evidence Collection

After each test, collect:

```bash
# For test SHA (commit that triggered the check)
SHA="abc123def456"
OUT_DIR="evidence/_acceptance/<TS>/r7_phase6_2/platform/test_<NAME>"
mkdir -p "$OUT_DIR"

# Commit status + check runs
gh api repos/:owner/:repo/commits/$SHA/status > "$OUT_DIR/commit_status.json"
gh api repos/:owner/:repo/commits/$SHA/check-runs > "$OUT_DIR/check_runs.json"

# PR merge state (if applicable)
PR_NUM=$(gh pr list --search "is:open" --json number --jq ".[0].number")
gh api repos/:owner/:repo/pulls/$PR_NUM > "$OUT_DIR/pr_status.json"

# Workflow run metadata
RUN_ID=$(gh api repos/:owner/:repo/actions/runs --jq ".[0].id")
gh api repos/:owner/:repo/actions/runs/$RUN_ID > "$OUT_DIR/workflow_run.json"
```

---

## Update Acceptance Matrix

Only after collecting evidence for each test:

```bash
# Verify conclusions in JSON:
jq '.check_runs[] | {name, conclusion}' <OUT_DIR>/check_runs.json

# If REQ-008 check has conclusion (not pending) → REQ-008 = PASS
# If REQ-009 check has conclusion (cancelled) → REQ-009 = PASS
# If merge is blocked by ruleset → REQ-010/012 = PASS
```

**Update FINAL_ACCEPTANCE_REPORT.md**:
- REQ-008: UNVERIFIED → PASS (with evidence SHA + conclusion)
- REQ-009: UNVERIFIED → PASS (with evidence SHA + conclusion)
- REQ-010: OUT_OF_SCOPE → PASS (with GCP WIF proof + service account binding)
- REQ-012: OUT_OF_SCOPE → PASS (with env vars configured + GitHub variables snapshot)

---

## Rollback / If Tests Fail

If any test fails:

1. **Timeout test hangs** → Check ACCEPTANCE_TIMEOUT value in workflow/env vars; may need `timeout` command wrapper
2. **Cancel doesn't report** → Check always-report step; ensure `if: always()` is set correctly
3. **Merge not blocked** → Check branch protection rules; ensure required checks are enforced in Rulesets
4. **GCP auth fails** → Verify WIF provider, service account binding, GitHub Actions permissions in workflow

**Maintain TEMP_CLOSED + TT(EvidentceIncomplete)** until all 3 tests pass.

---

## Final Checklist

- [ ] GCP WIF configured + provider resource name captured
- [ ] GitHub OIDC permissions in workflow (`id-token: write`)
- [ ] All env vars (names) set in GitHub vars + secrets
- [ ] Workflow includes always-report terminator (`if: always()`)
- [ ] `ACCEPTANCE_TIMEOUT` enforced by `timeout` command wrapper
- [ ] Test A (timeout) executed and evidence collected
- [ ] Test B (cancel) executed and evidence collected
- [ ] Test C (bypass) executed and evidence collected
- [ ] All 4 checks now have PASS status with runtime evidence
- [ ] FINAL_ACCEPTANCE_REPORT.md updated to 18/18 PASS

---

**Ready**: Once all checks pass, proceed to **Card LP-01** to rebundle and create final `single_upload.txt`.

