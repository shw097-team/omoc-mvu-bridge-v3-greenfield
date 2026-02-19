#!/usr/bin/env bash
set -euo pipefail
ROOT="$(git rev-parse --show-toplevel 2>/dev/null || pwd)"
cd "$ROOT"

latest="$(ls -1 evidence/_acceptance/*/reports/BK-006.report.txt 2>/dev/null | tail -n 1)"
[ -n "$latest" ] || { echo "[FAIL] BK-006.report.txt not found"; exit 2; }

TS_DIR="$(dirname "$(dirname "$latest")")"
OUT="${TS_DIR}/single_evidence_bundle.txt"

{
  echo "=== OMOC SINGLE EVIDENCE BUNDLE (WP-006 PREP) ==="
  echo "ts=$(basename "$TS_DIR")"
  echo "generated_utc=$(date -u +%Y-%m-%dT%H:%M:%SZ)"
  echo

  echo "== 1) BK-006 REPORT =="
  cat "$latest" 2>/dev/null || true
  echo

  echo "== 2) BK-006-001 baseline excerpt =="
  b="$(sed -n 's/^baseline_txt=//p' "$latest" | tail -n 1)"
  [ -f "$b" ] && sed -n '1,220p' "$b" || echo "MISSING baseline_txt"
  echo

  echo "== 3) BK-006-002 workflows sha256 =="
  w="$(sed -n 's/^workflows_sha256=//p' "$latest" | tail -n 1)"
  [ -f "$w" ] && cat "$w" || echo "MISSING workflows_sha256"
  echo

  echo "== 4) Inventory (ls) =="
  ls -la "$TS_DIR"/baseline "$TS_DIR"/snapshots "$TS_DIR"/reports 2>/dev/null || true
} > "$OUT"

echo "0" > "${TS_DIR}/reports/single_evidence_bundle.rc"
echo "[OK] wrote: $OUT"
echo "[UPLOAD_THIS] $OUT"
