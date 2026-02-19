#!/usr/bin/env bash
set -euo pipefail
ROOT="$(git rev-parse --show-toplevel)"
cd "$ROOT"

ts="${OMOC_TS:-}"
[[ -n "$ts" ]] || { echo "[FAIL] OMOC_TS required"; exit 2; }

adir="evidence/_acceptance/$ts"
updir="$adir/upload"
mkdir -p "$updir"

OUT="$updir/WP-001_005_evidence_upload.txt"

# 污染字串掃描（貼上污染已被觀測；需要把結果納入單檔證據包）
scan_keywords=('oaicite' 'contentReference' '<<<' '>>>' 'BEGIN' 'END')
{
  echo "=== OMOC WP-001~WP-005 Evidence Upload ==="
  echo "ts=$ts"
  echo "utc=$(date -u +%Y-%m-%dT%H:%M:%SZ)"
  echo

  echo "## 1) Presence check (Evidence Contract minset)"
  for p in \
    "$adir/reports/verdict.json" \
    "$adir/reports/checks_manifest.json" \
    "$adir/reports/evidence_index.md" \
    "evidence_bundle.tgz" \
    "bundle_audit.json"
  do
    if [[ -f "$p" ]]; then
      echo "[OK] $p"
      sha256sum "$p" 2>/dev/null || true
    else
      echo "[MISSING] $p"
    fi
    echo
  done

  echo "## 2) tar members (head)"
  if [[ -f evidence_bundle.tgz ]]; then
    tar -tzf evidence_bundle.tgz | head -n 120
  else
    echo "[MISSING] evidence_bundle.tgz"
  fi
  echo

  echo "## 3) baseline (git head/status snapshot)"
  if [[ -f "$adir/baseline/BK-WP001_005.baseline.txt" ]]; then
    sed -n '1,200p' "$adir/baseline/BK-WP001_005.baseline.txt"
  else
    echo "[MISSING] $adir/baseline/BK-WP001_005.baseline.txt"
  fi
  echo

  echo "## 4) bash -n (script syntax check)"
  for s in scripts/omoc_solidify_wp001_005.sh scripts/omoc_sk08_pack.sh scripts/omoc_build_wp001_005_upload_txt.sh; do
    echo "[CHECK] bash -n $s"
    bash -n "$s" && echo "RC=0" || echo "RC=$?"
  done
  echo

  echo "## 5) pollution scan (workspace)"
  echo "[TARGET] repo root + evidence/_acceptance/$ts + scripts/"
  for k in "${scan_keywords[@]}"; do
    echo "--- keyword: $k ---"
    (grep -RIn --exclude-dir=.git --exclude='*.tgz' --exclude='*.png' --exclude='*.jpg' --exclude='*.pdf' \
      "$k" scripts "$adir" 2>/dev/null || true) | head -n 200
    echo
  done

  echo "## 6) pointers"
  echo "FINAL artifacts locators are in bash反饋.txt (evidence/_acceptance/FINAL list, NO_HITS, STATUS: PASS)."
} > "$OUT"

echo "[OK] wrote: $OUT"
ls -l "$OUT"
