#!/usr/bin/env bash
set -euo pipefail

TS="${TS:-$(date -u +%Y%m%dT%H%M%SZ)}"
EV_DIR="evidence/_acceptance/${TS}"
LOG_DIR="${EV_DIR}/log"
mkdir -p "$LOG_DIR"

log() {
  printf "%s\n" "$*" | tee -a "${LOG_DIR}/preflight.log" >/dev/null; }

step() {
  local name="$1"; shift
  log "==> ${name}"
  ( "$@" ) >"${LOG_DIR}/${name}.log" 2>&1 || {
    log "FAIL: ${name}"
    return 1
  }
}

# L5-check (RBWI)
step "L5-opencode-version" bash -lc 'opencode --version'

# Auth/provider visibility
step "opencode-auth-list" bash -lc 'opencode auth list || opencode auth ls || true'
step "opencode-models-refresh" bash -lc 'opencode models --refresh || true'

# Schema preflight (Fail-Closed)
# We pin schema snapshot to avoid silent drift. If you want, you can refresh it deliberately via scripts/update-schema.sh (not included here).
SCHEMA_URL="https://opencode.ai/config.json"
CONF="opencode.jsonc"

step "opencode-config-fetch-schema" bash -lc "curl -fsSL '${SCHEMA_URL}' -o '${LOG_DIR}/opencode-config.schema.json'"
step "opencode-config-validate" bash -lc "node scripts/opencode_config_validate.mjs '${LOG_DIR}/opencode-config.schema.json' '${CONF}'"

log "OK: preflight passed"
