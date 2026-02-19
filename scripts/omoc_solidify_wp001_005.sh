#!/usr/bin/env bash
set -euo pipefail
ROOT="$(git rev-parse --show-toplevel)"
cd "$ROOT"

TS="${OMOC_TS:-$(date -u +%Y%m%dT%H%M%SZ)}"
OUT="evidence/_acceptance/${TS}"
mkdir -p "${OUT}/baseline" "${OUT}/snapshots" "${OUT}/reports" "${OUT}/log" "${OUT}/upload"

SRC_BUNDLE="evidence/_acceptance/FINAL/single_evidence_bundle_MASTER_WP001_005.txt"
SRC_MD="evidence/_acceptance/FINAL/FINAL_VERDICT_WP001_005.md"
SRC_JS="evidence/_acceptance/FINAL/FINAL_VERDICT_WP001_005.json"

# preflight（Fail-Closed）
for f in "$SRC_BUNDLE" "$SRC_MD" "$SRC_JS"; do
  [[ -f "$f" ]] || { echo "[FAIL] missing: $f"; exit 2; }
done

# baseline（保留 git 狀態，避免事後無法回放）
{
  echo "=== BK-WP001_005 baseline ==="
  echo "utc=$(date -u +%Y-%m-%dT%H:%M:%SZ)"
  echo "[GIT_HEAD]"; git rev-parse HEAD || true
  echo "[STATUS_PORCELAIN]"; git status --porcelain || true
} > "${OUT}/baseline/BK-WP001_005.baseline.txt" 2>&1

# (A) checks_manifest.json（封存用，從 FINAL json 摘要出固定結構）
python3 - <<PY > "${OUT}/reports/checks_manifest.json"
import json, pathlib
p = pathlib.Path("${SRC_JS}")
j = json.loads(p.read_text(encoding="utf-8"))
out = {
  "schema": "omoc.checks_manifest.wp001_005.v1",
  "generated_utc": j.get("generated_utc"),
  "decision": j.get("decision"),
  "sha256": j.get("sha256", {}),
  "refs": j.get("refs", {}),
  "notes": "derived from FINAL_VERDICT_WP001_005.json (detached hash; do not trust md self-hash)"
}
print(json.dumps(out, ensure_ascii=False, indent=2))
PY

# (B) verdict.json（封存用，最小機讀裁決）
python3 - <<PY > "${OUT}/reports/verdict.json"
import json, pathlib
j = json.loads(pathlib.Path("${SRC_JS}").read_text(encoding="utf-8"))
out = {
  "schema": "omoc.verdict.wp001_005.v1",
  "generated_utc": j.get("generated_utc"),
  "decision": j.get("decision"),
  "notes": "PASS is based on FINAL json decision; md self-hash mismatch is known risk"
}
print(json.dumps(out, ensure_ascii=False, indent=2))
PY

# (C) evidence_index.md（封存索引：列出關鍵來源與產出）
cat > "${OUT}/reports/evidence_index.md" <<'MD'
# WP-001~WP-005 Solidify Evidence Index (local)

## Inputs (from FINAL)
- evidence/_acceptance/FINAL/single_evidence_bundle_MASTER_WP001_005.txt
- evidence/_acceptance/FINAL/FINAL_VERDICT_WP001_005.md
- evidence/_acceptance/FINAL/FINAL_VERDICT_WP001_005.json

## Outputs (Evidence Contract minset)
- evidence/_acceptance/<ts>/reports/verdict.json
- evidence/_acceptance/<ts>/reports/checks_manifest.json
- evidence/_acceptance/<ts>/reports/evidence_index.md
- evidence_bundle.tgz (produced by SK08 packager; repo root)

## Notes
- md self-hash mismatch is a known issue; detached hash in FINAL json is the trust anchor.
MD

echo "[OK] wrote solidify artifacts under: ${OUT}/reports"
echo "${TS}" > "${OUT}/reports/omoc_ts.txt"
