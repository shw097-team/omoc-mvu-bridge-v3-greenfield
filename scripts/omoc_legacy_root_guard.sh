#/usr/bin/env bash
set -euo pipefail

# OMOC legacy root guard
# Moves legacy root files (agent.md, opencode.json, opencode.jsonc) into
# evidence/_quarantine/${OMOC_TS}/ to avoid accidental inclusion in repo root.

OMOC_TS="${OMOC_TS:-}"
if [[ -z "$OMOC_TS" ]]; then
  OMOC_TS=$(date -u +%Y%m%dT%H%M%SZ)
fi

ROOT_DIR="$(git rev-parse --show-toplevel 2>/dev/null || pwd)"
cd "$ROOT_DIR" || exit 0

QUI_DIR="evidence/_quarantine/${OMOC_TS}"
mkdir -p "$QUI_DIR" 2>/dev/null || true

LEGACY_FILES=("agent.md" "opencode.json" "opencode.jsonc")

for f in "${LEGACY_FILES[@]}"; do
  if [ -f "$f" ]; then
    dest="$QUI_DIR/$f"
    # Move file into quarantine; overwrite if present
    mv -f "$f" "$dest" 2>/dev/null || true
    echo "QUARANTINED $f -> $dest"
  fi
done

# Always exit 0 so this guard cannot fail runs
exit 0
# edited-for-evidence
