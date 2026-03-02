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

# Config validation (offline-safe)
CONF="opencode.jsonc"

step "opencode-config-validate" bash -lc "node scripts/opencode_config_validate.mjs /dev/null '${CONF}'"


log "OK: preflight passed"
