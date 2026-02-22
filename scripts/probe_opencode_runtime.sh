#!/usr/bin/env bash
set -euo pipefail

ROOT="$(git rev-parse --show-toplevel 2>/dev/null || pwd)"
cd "$ROOT"

TS="${OMOC_TS:-$(date -u +%Y%m%dT%H%M%SZ)}"
OUTDIR="evidence/runtime_probe/${TS}"
mkdir -p "$OUTDIR"

python3 - <<'PY' >"${OUTDIR}/runtime_probe.json"
import json, os, datetime
paths = [
  ".opencode/skills",
  ".ohmy/skills",
  "docs/skills_pack_src",
]
payload = {
  "schema_version": "omoc.runtime_probe.v1",
  "generated_at": datetime.datetime.now(datetime.timezone(datetime.timedelta(hours=8))).isoformat(timespec="seconds"),
  "timezone": "Asia/Taipei",
  "paths_observed": [{"path": p, "exists": os.path.exists(p)} for p in paths],
  "precedence_note": "driftable: actual precedence must be verified in target runtime; treat as NEEDS-TEST if not executed in the real opencode runtime",
  "last_verified_at": None,
  "drift_action": "NEEDS-TEST"
}
print(json.dumps(payload, ensure_ascii=False, indent=2))
PY

echo "[OK] wrote ${OUTDIR}/runtime_probe.json"
