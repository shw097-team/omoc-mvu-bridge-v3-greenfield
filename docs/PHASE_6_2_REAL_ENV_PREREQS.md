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

---

## APPENDIX A: GitHub Actions OIDC + GCP Workload Identity Federation (Production Patterns)

### Why OIDC + WIF?

**Best Practice**: GitHub Actions should authenticate to GCP using **OpenID Connect (OIDC) → Workload Identity Federation (WIF)** instead of long-lived service account keys.

**Benefits**:
- No secrets stored in GitHub repo
- Short-lived tokens (5-10 minutes)
- Attribute-based access control (restrict to specific GitHub org/repo/job)
- Credentials rotate automatically

**Official References**:
- GitHub OIDC Docs: https://docs.github.com/en/actions/concepts/security/openid-connect
- GCP Workload Identity Federation: https://cloud.google.com/iam/docs/workload-identity-federation
- Google GitHub Actions auth: https://github.com/google-github-actions/auth

---

### Architecture: GitHub OIDC → GCP WIF Flow

```
GitHub Actions Workflow
        |
        v
   (id-token: write permission)
        |
        v
   GitHub OIDC Token Endpoint
   (5-minute expiry, signed JWT with claims)
        |
        v
   google-github-actions/auth action
   (exchanges GitHub token for GCP credential)
        |
        v
   GCP Workload Identity Federation
   (validates GitHub token claim attributes)
        |
        v
   Service Account Token (short-lived)
   OR Direct Resource Access
```

---

### Step 1: GitHub Actions OIDC Token Claims

When `id-token: write` permission is granted, GitHub produces an OIDC token with these key claims:

```json
{
  "iss": "https://token.actions.githubusercontent.com",
  "sub": "repo:OWNER/REPO:ref:refs/heads/main",
  "actor": "github-username",
  "repository": "OWNER/REPO",
  "repository_owner": "OWNER",
  "job_workflow_label": "...",
  "run_id": "123456789",
  "run_number": "42"
}
```

**Key claims you can restrict on:**
- `repository_owner` — GitHub org/user
- `repository` — specific repo
- `ref` — branch (e.g., `refs/heads/main`)
- `actor` — GitHub username

**Official Reference**: https://docs.github.com/en/actions/concepts/security/openid-connect (see "Updating your GitHub Actions for OIDC" section)

---

### Step 2: GCP Workload Identity Pool & Provider (Attribute Mapping)

**Create a WIF Pool** (once per environment):

```bash
export GCP_PROJECT_ID="your-project-id"
export POOL_NAME="github-pool"           # arbitrary name
export PROVIDER_NAME="github-provider"   # arbitrary name
export GITHUB_ORG="your-github-org"
export GITHUB_REPO="omoc-mvu-bridge-v3-greenfield"

# Create Workload Identity Pool
gcloud iam workload-identity-pools create "$POOL_NAME" \
  --project="$GCP_PROJECT_ID" \
  --location=global \
  --display-name="GitHub Workload Identity Pool"

# Create OIDC Provider within the pool
gcloud iam workload-identity-pools providers create-oidc "$PROVIDER_NAME" \
  --project="$GCP_PROJECT_ID" \
  --location=global \
  --workload-identity-pool="$POOL_NAME" \
  --display-name="GitHub Provider" \
  --issuer-uri="https://token.actions.githubusercontent.com" \
  --attribute-mapping="google.subject=assertion.sub,attribute.actor=assertion.actor,attribute.repository=assertion.repository,attribute.repository_owner=assertion.repository_owner" \
  --attribute-condition="assertion.repository_owner == '${GITHUB_ORG}' && assertion.repository == '${GITHUB_ORG}/${GITHUB_REPO}'"
```

**Capture the Provider Resource Name**:

```bash
# List providers to get the full resource name
gcloud iam workload-identity-pools providers list \
  --project="$GCP_PROJECT_ID" \
  --workload-identity-pool="$POOL_NAME" \
  --location=global \
  --format='value(name)'

# Output looks like:
# projects/123456789/locations/global/workloadIdentityPools/github-pool/providers/github-provider
```

**Store this in GitHub**:

Create a GitHub repository variable:
```
GCP_WIF_PROVIDER = projects/123456789/locations/global/workloadIdentityPools/github-pool/providers/github-provider
```

**Official Reference**: https://cloud.google.com/iam/docs/workload-identity-federation (search for "Create a Workload Identity Pool and Provider")

---

### Step 3: GCP Service Account + Binding (Direct WIF or Impersonation)

**Option A: Direct WIF (Recommended for Resources)**

Grant `roles/iam.workloadIdentityUser` on a resource directly to the WIF pool principal:

```bash
# E.g., grant access to Cloud Run service
gcloud run services add-iam-policy-binding "my-service" \
  --region="us-central1" \
  --member="principalSet://iam.googleapis.com/projects/${GCP_PROJECT_NUMBER}/locations/global/workloadIdentityPools/github-pool/attribute.repository/${GITHUB_ORG}/${GITHUB_REPO}" \
  --role="roles/run.invoker"
```

**Option B: Impersonation (Use Service Account)**

If you need a service account token (e.g., to call GCP APIs on behalf of a service account):

```bash
# 1. Create a Service Account
export SA_NAME="omoc-phase6-2"
export SA_EMAIL="${SA_NAME}@${GCP_PROJECT_ID}.iam.gserviceaccount.com"

gcloud iam service-accounts create "$SA_NAME" \
  --project="$GCP_PROJECT_ID" \
  --display-name="OMOC Phase 6.2 Service Account"

# 2. Grant the WIF pool principal the ability to impersonate this SA
gcloud iam service-accounts add-iam-policy-binding "$SA_EMAIL" \
  --project="$GCP_PROJECT_ID" \
  --member="principalSet://iam.googleapis.com/projects/${GCP_PROJECT_NUMBER}/locations/global/workloadIdentityPools/github-pool/attribute.repository/${GITHUB_ORG}/${GITHUB_REPO}" \
  --role="roles/iam.workloadIdentityUser"

# 3. Store SA email in GitHub
# GitHub variable: GCP_SERVICE_ACCOUNT_EMAIL = omoc-phase6-2@your-project-id.iam.gserviceaccount.com
```

**Grant Necessary Permissions to the Service Account**:

```bash
# Example: allow the SA to read secrets from Secret Manager
gcloud projects add-iam-policy-binding "$GCP_PROJECT_ID" \
  --member="serviceAccount:${SA_EMAIL}" \
  --role="roles/secretmanager.secretAccessor"

# Example: allow the SA to write logs
gcloud projects add-iam-policy-binding "$GCP_PROJECT_ID" \
  --member="serviceAccount:${SA_EMAIL}" \
  --role="roles/logging.logWriter"
```

**Official Reference**: https://cloud.google.com/iam/docs/workload-identity-federation-with-other-clouds (search for "Configuring workload identity federation with service account impersonation")

---

### Step 4: GitHub Actions Workflow — Use google-github-actions/auth

In `.github/workflows/omoc-gate.yml`, add the auth step **before** any GCP API calls or OMOC API calls that need credentials:

```yaml
permissions:
  contents: read
  id-token: write          # REQUIRED: allows GitHub to mint OIDC token
  checks: write
  pull-requests: write

jobs:
  review:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4

      # Step 1: Exchange GitHub OIDC token for GCP credential
      - id: auth
        uses: google-github-actions/auth@v2
        with:
          project_id: ${{ env.GCP_PROJECT_ID }}
          workload_identity_provider: ${{ env.GCP_WIF_PROVIDER }}
          service_account: ${{ env.GCP_SERVICE_ACCOUNT_EMAIL }}
          token_format: 'access_token'    # or 'id_token' for Cloud Run
          access_token_lifetime: '900s'   # 15 minutes (adjust as needed)

      # Step 2: Call GCP APIs using the access token
      - name: Fetch secret from Secret Manager
        env:
          ACCESS_TOKEN: ${{ steps.auth.outputs.access_token }}
        run: |
          curl -fsS \
            -H "Authorization: Bearer ${ACCESS_TOKEN}" \
            'https://secretmanager.googleapis.com/v1/projects/${{ env.GCP_PROJECT_ID }}/secrets/omoc-runner-token/versions/latest:access' | jq '.payload.data' -r | base64 -d

      # Step 3: Or use google-cloud-sdk (if installed)
      - name: Call GCP service (using SDK)
        run: |
          gcloud auth application-default print-access-token > /tmp/token
          # Now all gcloud/gsutil commands use the WIF-minted token automatically
```

**Official Reference**: https://github.com/google-github-actions/auth (README + docs/EXAMPLES.md)

---

### Step 5: OMOC API Call in always-report (Non-Secret, Curl-Based)

In the always-report step, call the OMOC API using the runner token from a GitHub Secret:

```yaml
      # Always-report step (runs even if previous steps fail)
      - name: Report final status (always)
        if: ${{ always() }}
        env:
          RUNNER_TOKEN: ${{ secrets.OMOC_RUNNER_TOKEN }}
        run: |
          set +e  # Don't fail if curl fails; still try to report
          CONCLUSION="failure"
          [ "${{ job.status }}" = "cancelled" ] && CONCLUSION="cancelled"
          [ "${{ job.status }}" = "success" ] && CONCLUSION="success"

          curl -fsS -X POST "${OMOC_API_BASE}/runs/${{ github.run_id }}/conclusion" \
            -H "Authorization: Bearer ${RUNNER_TOKEN}" \
            -H "Content-Type: application/json" \
            -d "{" \
              \"conclusion\": \"${CONCLUSION}\"," \
              \"timestamp\": \"$(date -u +%Y-%m-%dT%H:%M:%SZ)\"," \
              \"logs_url\": \"${{ github.server_url }}/${{ github.repository }}/actions/runs/${{ github.run_id }}\"" \
            "}" || echo "[WARN] OMOC API call failed; continuing"
```

**Notes**:
- `OMOC_RUNNER_TOKEN` is a **GitHub Secret** (machine-to-machine credential from OMOC platform)
- Not an OIDC token; separate from GCP auth
- Token should be rotated regularly and never committed to repo

---

### Step 6: Timeout Wrapper (Ensure Acceptance Gate Concludes)

Wrap your acceptance gate script with a `timeout` command to ensure it never hangs:

```yaml
      - name: Run Acceptance Gate (with timeout)
        timeout-minutes: 6
        run: |
          timeout "${{ env.ACCEPTANCE_TIMEOUT }}" \
            bash scripts/omoc_acceptance_local.sh || {
              exit_code=$?
              if [ $exit_code -eq 124 ]; then
                echo "ERROR: Acceptance gate exceeded ACCEPTANCE_TIMEOUT (${{ env.ACCEPTANCE_TIMEOUT }}s)"
                exit 1
              else
                exit $exit_code
              fi
            }
```

**Key Points**:
- Exit code 124 = timeout exceeded
- Job-level `timeout-minutes` is a secondary guard (GitHub-level)
- Ensures the step **fails immediately** (not pending forever)

---

### Step 7: Terminator Job (Always-Report Guaranteed)

Ensure a terminator job runs **even if upstream jobs fail or are cancelled**:

```yaml
  omoc_gate_terminator:
    name: ci-gate                 # Canonical check name used by validators
    if: ${{ always() }}            # CRITICAL: always run
    needs: [review]                # Wait for review job
    runs-on: ubuntu-latest
    permissions:
      checks: write                # Permission to write check conclusion
    steps:
      - name: Terminator (final report)
        run: |
          echo "[OMOC Gate Terminator] Final check conclusion reported"
          echo "Upstream status: ${{ needs.review.result }}"
```

**Critical Points**:
- `if: ${{ always() }}` ensures this job **never skipped**
- `permissions: checks: write` allows reporting the final check result
- Job `name: ci-gate` is the **canonical check name** — don't change it
- Validators expect this exact name in `checks_manifest.json`

**Official Reference**: GitHub Actions workflow documentation — https://docs.github.com/en/actions/using-workflows/workflow-syntax-for-github-actions#jobsjob_idif

---

### Battle-Tested Patterns (OSS Examples)

**Reference Workflow (google-github-actions/auth EXAMPLES)**:

GitHub maintains detailed examples of using OIDC + WIF in production workflows:
- https://github.com/google-github-actions/auth/blob/main/docs/EXAMPLES.md

Key examples:
1. **Access Token to Call Secret Manager** (lines ~128-152)
2. **ID Token to Call Cloud Run** (lines ~154-182)
3. **Impersonate Service Account** (lines ~230-260)

---

## APPENDIX B: Troubleshooting OIDC + WIF Failures

### Problem: github-github-actions/auth step fails with 403 Forbidden

**Cause**: WIF provider not configured, or attribute-condition is too restrictive.

**Debug**:
```bash
# 1. Verify WIF provider exists
gcloud iam workload-identity-pools providers describe "github-provider" \
  --project="$GCP_PROJECT_ID" \
  --workload-identity-pool="github-pool" \
  --location=global

# 2. Check attribute-condition is correct (should not restrict branch)
gcloud iam workload-identity-pools providers describe "github-provider" \
  --project="$GCP_PROJECT_ID" \
  --workload-identity-pool="github-pool" \
  --location=global \
  --format='value(attributeCondition)'

# 3. Check service account binding
gcloud iam service-accounts get-iam-policy "$SA_EMAIL" \
  --project="$GCP_PROJECT_ID" | grep 'roles/iam.workloadIdentityUser'
```

### Problem: Token expires before step completes

**Cause**: `access_token_lifetime` too short, or step takes longer than token lifetime.

**Solution**:
```yaml
      - id: auth
        uses: google-github-actions/auth@v2
        with:
          access_token_lifetime: '3600s'  # 1 hour instead of default 900s
```

### Problem: always-report step runs but OMOC API call fails

**Cause**: OMOC_RUNNER_TOKEN missing, wrong API endpoint, or network error.

**Debug**:
```bash
# Check that secrets are set
gh secret list --repo owner/repo | grep OMOC_RUNNER_TOKEN

# Manually test OMOC API endpoint (from local terminal)
curl -v -X POST "${OMOC_API_BASE}/runs/test/conclusion" \
  -H "Authorization: Bearer ${OMOC_RUNNER_TOKEN}" \
  -H "Content-Type: application/json" \
  -d '{"conclusion": "success"}'
```

---

## APPENDIX C: Security Best Practices

### 1. **Attribute-Condition Strictness**

Always restrict the WIF provider to your specific GitHub org/repo:

```bash
# ✅ Good (restrictive)
--attribute-condition="assertion.repository_owner == 'your-org' && assertion.repository == 'your-org/your-repo'"

# ❌ Bad (allows any repo in your org)
--attribute-condition="assertion.repository_owner == 'your-org'"

# ❌ Very bad (allows any repo anywhere)
# (no attribute-condition)
```

### 2. **Service Account Least Privilege**

Only grant the service account the minimum roles it needs:

```bash
# ✅ Grant only what's needed for Phase 6.2
gcloud projects add-iam-policy-binding "$GCP_PROJECT_ID" \
  --member="serviceAccount:${SA_EMAIL}" \
  --role="roles/secretmanager.secretAccessor"

# ❌ Don't grant overly broad roles
# --role="roles/editor"  # Too broad!
```

### 3. **Token Lifetime**

Keep `access_token_lifetime` as short as possible (default 900s = 15 min is usually fine):

```yaml
      - id: auth
        uses: google-github-actions/auth@v2
        with:
          access_token_lifetime: '900s'  # 15 minutes, not 1 hour+
```

### 4. **No Secrets in Workflow Files**

- Use GitHub `${{ vars.* }}` for non-secret config (OMOC_API_BASE, GCP_PROJECT_ID, etc.)
- Use `${{ secrets.* }}` **only** for OMOC_RUNNER_TOKEN, GCP_SA_JSON_B64 (if needed)
- Never hardcode provider resource names or service account emails in workflow files

### 5. **Token Scoping**

GCP access tokens are **already scoped to the service account's permissions** — no additional scopes needed in this pattern.

