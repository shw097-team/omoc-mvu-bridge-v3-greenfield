#!/usr/bin/env bash
set -euo pipefail

ROOT="$(git rev-parse --show-toplevel 2>/dev/null || pwd)"
cd "$ROOT"

TS="$(date -u +%Y%m%dT%H%M%SZ)"
OUT="evidence/_acceptance/${TS}"
mkdir -p "${OUT}/baseline" "${OUT}/snapshots" "${OUT}/log" "${OUT}/reports"

echo "[INFO] ts=$TS"
echo "[INFO] out=$OUT"

# BK-006-001 baseline snapshot (best-effort)
{
  echo "=== BK-006-001 baseline snapshot ==="
  echo "utc=$(date -u +%Y-%m-%dT%H:%M:%SZ)"
  echo
  echo "[GIT]"
  git rev-parse HEAD || true
  git status --porcelain || true
  echo
  echo "[GH repo view]"
  gh repo view --json nameWithOwner,defaultBranchRef -q '{repo:.nameWithOwner, default_branch:.defaultBranchRef.name}' || true
  echo
  echo "[GH rulesets] (best-effort)"
  gh api -H "Accept: application/vnd.github+json" repos/{owner}/{repo}/rulesets 2>/dev/null || true
} > "${OUT}/baseline/BK-006-001.baseline.txt" 2>&1

# BK-006-002 workflows snapshot
tar -czf "${OUT}/snapshots/BK-006-002.workflows.tgz" .github/workflows 2>/dev/null || true
( cd .github/workflows 2>/dev/null && sha256sum * 2>/dev/null | sort ) > "${OUT}/snapshots/BK-006-002.workflows.sha256" 2>/dev/null || true

# report
{
  echo "ts=$TS"
  echo "baseline_txt=${OUT}/baseline/BK-006-001.baseline.txt"
  echo "workflows_tgz=${OUT}/snapshots/BK-006-002.workflows.tgz"
  echo "workflows_sha256=${OUT}/snapshots/BK-006-002.workflows.sha256"
} > "${OUT}/reports/BK-006.report.txt"

echo "[OK] wrote: ${OUT}/reports/BK-006.report.txt"
