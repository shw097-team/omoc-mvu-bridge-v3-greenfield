#!/usr/bin/env bash
set -euo pipefail

fail(){ echo "[FAIL_CLOSED] $*" >&2; exit 2; }

ROOT="$(git rev-parse --show-toplevel 2>/dev/null || pwd)"
cd "$ROOT"

TS="${OMOC_TS:-$(date -u +%Y%m%dT%H%M%SZ)}"
OUTDIR="evidence/preflight/${TS}"
mkdir -p "$OUTDIR"

need_cmd(){ local c="$1"; command -v "$c" >/dev/null 2>&1 || fail "missing required tool: $c"; }

need_cmd bash
need_cmd python3
need_cmd sha256sum
need_cmd jq

python3 - <<'PY' > "${OUTDIR}/preflight.json"
import json, os, subprocess, datetime
def v(cmd):
  try:
    out = subprocess.check_output(cmd, stderr=subprocess.STDOUT, text=True).strip()
    return {"ok": True, "out": out[:200]}
  except Exception as e:
    return {"ok": False, "out": str(e)[:200]}

payload = {
  "schema_version": "omoc.preflight.v1",
  "generated_at": datetime.datetime.now(datetime.timezone.utc).isoformat(timespec="seconds"),
  "timezone": "UTC",
  "tools": {
    "bash": v(["bash","--version"]),
    "python3": v(["python3","--version"]),
    "sha256sum": v(["sha256sum","--version"]),
    "jq": v(["jq","--version"]),
    "git": v(["git","--version"]),
  }
}
print(json.dumps(payload, ensure_ascii=False, indent=2))
PY

echo "[OK] wrote ${OUTDIR}/preflight.json"
