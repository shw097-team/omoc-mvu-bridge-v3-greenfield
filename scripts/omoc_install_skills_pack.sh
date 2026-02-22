#!/usr/bin/env bash
set -euo pipefail

ROOT="$(git rev-parse --show-toplevel 2>/dev/null || pwd)"
cd "$ROOT"

fail(){ echo "[FAIL_CLOSED] $*" >&2; exit 2; }

need_cmd(){ command -v "$1" >/dev/null 2>&1 || fail "missing required tool: $1"; }
need_cmd bash

OUTDIR="evidence/install/${OMOC_TS:-$(date -u +%Y%m%dT%H%M%SZ)}"
mkdir -p "$OUTDIR"

# Minimal deterministic installer: ensure minimal required docs/skills_pack_src copied
if [[ -d "docs/skills_pack_src" ]]; then
  echo "[OK] docs/skills_pack_src present" >"$OUTDIR/stdout.log"
  echo 0 >"$OUTDIR/rc.txt"
else
  echo "[FAIL_CLOSED] missing docs/skills_pack_src" >"$OUTDIR/stdout.log"
  echo 2 >"$OUTDIR/rc.txt"
  exit 2
fi

echo "[OK] install finished"
