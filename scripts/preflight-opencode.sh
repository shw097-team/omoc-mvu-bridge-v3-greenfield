#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TS="${TS:-$(date -u +"%Y%m%dT%H%M%SZ")}"
EVD="$ROOT/evidence/_acceptance/${TS}"
mkdir -p "$EVD/log"

LOG="$EVD/log/preflight-opencode.log"
exec > >(tee -a "$LOG") 2>&1

echo "[preflight] ts=$TS"
echo "[preflight] root=$ROOT"

echo "[preflight] opencode version:"
opencode --version || echo "[preflight] WARN: opencode missing (will fallback)"

CFG_USER_DIR="${HOME}/.config/opencode"
CFG_USER_OC_JSON="$CFG_USER_DIR/opencode.json"
CFG_USER_OC_JSONC="$CFG_USER_DIR/opencode.jsonc"
CFG_PROJ_OC_JSON="$ROOT/.opencode/opencode.json"
CFG_PROJ_OC_JSONC="$ROOT/.opencode/opencode.jsonc"
CFG_PROJ_OMO_JSON="$ROOT/.opencode/oh-my-opencode.json"
CFG_PROJ_OMO_JSONC="$ROOT/.opencode/oh-my-opencode.jsonc"
CFG_OPS_OC_JSONC="$ROOT/ops/opencode/opencode.jsonc"

# 1) 漂移阻斷：同名雙檔併存直接 FAIL_CLOSED
if [[ -f "$CFG_USER_OC_JSON" && -f "$CFG_USER_OC_JSONC" ]]; then
  echo "[preflight] FAIL: both opencode.json and opencode.jsonc exist in user config"
  exit 20
fi
if [[ -f "$CFG_PROJ_OC_JSON" && -f "$CFG_PROJ_OC_JSONC" ]]; then
  echo "[preflight] FAIL: both .opencode/opencode.json and .opencode/opencode.jsonc exist"
  exit 21
fi
if [[ -f "$CFG_PROJ_OMO_JSON" && -f "$CFG_PROJ_OMO_JSONC" ]]; then
  echo "[preflight] FAIL: both oh-my-opencode.json and oh-my-opencode.jsonc exist"
  exit 22
fi

# GATE-PATH-SSOT: if both project SSOT (.opencode/opencode.jsonc) and ops/opencode/opencode.jsonc exist
# and their contents differ, fail closed to prevent ambiguity in source-of-truth selection.
if [[ -f "$CFG_PROJ_OC_JSONC" && -f "$CFG_OPS_OC_JSONC" ]]; then
  if ! cmp -s "$CFG_PROJ_OC_JSONC" "$CFG_OPS_OC_JSONC" ; then
    echo "[preflight] FAIL: SSOT conflict - .opencode/opencode.jsonc and ops/opencode/opencode.jsonc both exist and differ"
    echo "[preflight] file1=$CFG_PROJ_OC_JSONC"
    echo "[preflight] file2=$CFG_OPS_OC_JSONC"
    exit 22
  else
    echo "[preflight] note: .opencode/opencode.jsonc and ops/opencode/opencode.jsonc are identical"
  fi
fi

# 2) Schema validate：OpenCode + Oh-My
node "$ROOT/scripts/validate-config.mjs" \
  "$ROOT/.opencode/opencode.jsonc" "https://opencode.ai/config.json" "opencode"

node "$ROOT/scripts/validate-config.mjs" \
  "$ROOT/.opencode/oh-my-opencode.jsonc" \
  "https://raw.githubusercontent.com/code-yeongyu/oh-my-opencode/master/assets/oh-my-opencode.schema.json" "ohmy"

echo "[preflight] OK"
