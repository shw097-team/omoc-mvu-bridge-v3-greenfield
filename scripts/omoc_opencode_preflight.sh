#!/usr/bin/env bash
# Redirect stderr to stdout so errors show in workflow logs
exec 2>&1

set -euo pipefail

TS="${TS:-$(date -u +%Y%m%dT%H%M%SZ)}"
EV_DIR="evidence/_acceptance/${TS}"
LOG_DIR="${EV_DIR}/log"
mkdir -p "$LOG_DIR"

log() {
  printf '%s\n' "$*" | tee -a "${LOG_DIR}/preflight.log"
}

fail() {
  local msg="$1"
  log "[FAIL_CLOSED] ${msg}"
  exit 2
}

step() {
  local name="$1"; shift
  log "==> ${name}"
  if ( "$@" ) >"${LOG_DIR}/${name}.log" 2>&1; then
    log "OK: ${name}"
  else
    local rc=$?
    log "FAIL: ${name} (exit code: ${rc})"
    # Show last few lines of step log for diagnostics
    tail -n 10 "${LOG_DIR}/${name}.log" | sed 's/^/  /' | tee -a "${LOG_DIR}/preflight.log"
    return $rc
  fi
}

# Pre-flight dependency checks (node is required, opencode is optional for CI)
if ! command -v node >/dev/null 2>&1; then
  fail "Missing 'node' binary. Ensure Node.js is installed and in PATH."
fi

if [ ! -f "scripts/opencode_config_validate.mjs" ]; then
  fail "Missing scripts/opencode_config_validate.mjs"
fi

# Check if opencode is available (graceful degradation for CI/offline environments)
HAVE_OPENCODE=0
if command -v opencode >/dev/null 2>&1; then
  HAVE_OPENCODE=1
  log "Dependencies: opencode=$(opencode --version 2>&1 | head -1 || echo 'unknown'), node=$(node --version)"
else
  log "WARNING: 'opencode' CLI not found; running in offline mode (skipping opencode CLI checks)"
  log "Dependencies: opencode=NOT_AVAILABLE, node=$(node --version)"
fi

# L5-check (RBWI) - only if opencode available
if [ "$HAVE_OPENCODE" -eq 1 ]; then
  step "L5-opencode-version" opencode --version

  # Auth/provider visibility
  step "opencode-auth-list" bash -lc 'opencode auth list || opencode auth ls || true'
  step "opencode-models-refresh" bash -lc 'opencode models --refresh || true'
else
  log "SKIP: opencode version/auth checks (opencode CLI not available)"
fi

# Config validation (offline-safe) - this step does NOT require opencode CLI
CONF="opencode.jsonc"
if [ ! -f "$CONF" ]; then
  log "WARNING: ${CONF} not found; creating placeholder for validation"
  mkdir -p "$(dirname "$CONF")"
  if ! echo '{}' > "$CONF"; then
    log "ERROR: Cannot create $CONF"
    exit 2
  fi
fi

# Debug checks before validation
log "INFO: Config file exists: $([ -f "$CONF" ] && echo 'yes' || echo 'no')"
log "INFO: Config file readable: $([ -r "$CONF" ] && echo 'yes' || echo 'no')"
log "INFO: Config file size: $(stat -f%z "$CONF" 2>/dev/null || stat -c%s "$CONF" 2>/dev/null || echo 'unknown')"

step "opencode-config-validate" node scripts/opencode_config_validate.mjs /dev/null "${CONF}"

log "OK: preflight passed"
