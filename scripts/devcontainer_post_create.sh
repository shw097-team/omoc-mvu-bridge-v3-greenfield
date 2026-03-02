#!/usr/bin/env bash
set -euo pipefail
TS="$(date -u +%Y%m%dT%H%M%SZ)"
here="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo "devcontainer postCreate starting: $TS"

# Prevent interactive corepack prompts during automated setup
export COREPACK_ENABLE_DOWNLOAD_PROMPT=0

# Chosen pinned opencode version for this repo (prefer repo-documented pin if present)
# Determined during Phase0 snapshot: local opencode --version == 1.2.10
PIN="1.2.10"

echo "Post-create: PIN=${PIN}"

# Non-destructive runtime hygiene: record opencode-like processes
echo "Recording runtime processes"
pgrep -fa opencode || true
ps -eo pid,ppid,etime,cmd | grep -E "opencode|bun|node" | grep -v grep || true

# Automated audited bootstrap: only run if OPENCODE_DOWNLOAD_URL and OPENCODE_DOWNLOAD_SHA
# are provided in the environment. This avoids inlining curl|bash in devcontainer.json.
if [[ -n "${OPENCODE_DOWNLOAD_URL:-}" && -n "${OPENCODE_DOWNLOAD_SHA:-}" ]]; then
  echo "Auto-bootstrap enabled; running audited installer (time-bounded)"
  # Bound total time to 5 minutes to prevent stuck postCreate
  if command -v timeout >/dev/null 2>&1; then
    timeout 300 bash -c "OPENCODE_DOWNLOAD_URL=\"${OPENCODE_DOWNLOAD_URL}\" OPENCODE_DOWNLOAD_SHA=\"${OPENCODE_DOWNLOAD_SHA}\" ./scripts/install-opencode-config.sh --pin ${PIN} --sha256 ${OPENCODE_DOWNLOAD_SHA}"
  else
    # Fallback without timeout
    OPENCODE_DOWNLOAD_URL="${OPENCODE_DOWNLOAD_URL}" OPENCODE_DOWNLOAD_SHA="${OPENCODE_DOWNLOAD_SHA}" ./scripts/install-opencode-config.sh --pin ${PIN} --sha256 ${OPENCODE_DOWNLOAD_SHA}
  fi
  rc=$?
  if [[ $rc -ne 0 ]]; then
    echo "[ERROR] audited installer failed with rc=$rc" >&2
    exit $rc
  fi
else
  echo "OPENCODE_DOWNLOAD_URL/OPENCODE_DOWNLOAD_SHA not present; recording TT for manual intervention"
  mkdir -p "$here/evidence/_acceptance/${TS}"
  cat > "$here/evidence/_acceptance/${TS}/TT-DEVCONTAINER-OPENCODE-MANUAL.txt" <<EOF
Manual intervention required to bootstrap opencode in devcontainer.

Pinned version: ${PIN}
Provide OPENCODE_DOWNLOAD_URL and OPENCODE_DOWNLOAD_SHA environment variables to enable
automated audited bootstrap via scripts/install-opencode-config.sh.

Example:
  OPENCODE_DOWNLOAD_URL=<url> OPENCODE_DOWNLOAD_SHA=<sha256> ./scripts/install-opencode-config.sh --pin ${PIN} --sha256 <sha256>

EOF
  echo "Wrote TT -> $here/evidence/_acceptance/${TS}/TT-DEVCONTAINER-OPENCODE-MANUAL.txt"
fi

echo "devcontainer postCreate complete"
exit 0
