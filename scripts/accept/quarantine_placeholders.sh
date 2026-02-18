#!/usr/bin/env bash
set -euo pipefail

# Move non-TS acceptance dirs (placeholders like UTC_* or STEP*) into evidence/_quarantine
# Usage: ./scripts/accept/quarantine_placeholders.sh

ROOT="$(git rev-parse --show-toplevel 2>/dev/null || pwd)"
cd "$ROOT"

TS_RE='^[0-9]{8}T[0-9]{6}Z$'
SRC_DIR="evidence/_acceptance"
DEST_DIR="evidence/_quarantine"

mkdir -p "$DEST_DIR"

shopt -s nullglob
for d in "$SRC_DIR"/*; do
  [ -d "$d" ] || continue
  name="$(basename "$d")"
  if [[ ! "$name" =~ $TS_RE ]]; then
    ts_suffix="$(date -u +%Y%m%dT%H%M%SZ)"
    target="$DEST_DIR/${name}_$ts_suffix"
    echo "Quarantining placeholder acceptance dir: $d -> $target"
    mv "$d" "$target"
  fi
done

echo "Quarantine complete."
