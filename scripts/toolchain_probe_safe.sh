#!/usr/bin/env bash
set -euo pipefail

# Safe probe for toolchain binaries to avoid corepack download prompts
# Exports COREPACK_ENABLE_DOWNLOAD_PROMPT=0 for any child processes and
# runs commands with short timeout to avoid hangs.

COREPACK_ENABLE_DOWNLOAD_PROMPT=${COREPACK_ENABLE_DOWNLOAD_PROMPT:-0}
export COREPACK_ENABLE_DOWNLOAD_PROMPT

TS=${TS:-$(date -u +%Y%m%dT%H%M%SZ)}
OUT_DIR="evidence/_acceptance/${TS}/log"
mkdir -p "$OUT_DIR"

run_probe() {
  name="$1"
  shift
  cmd=("$@")
  out="$OUT_DIR/${name}.out"
  rcfile="$OUT_DIR/${name}.rc"
  echo "== probe ${name} ==" >"$out"
  # Use timeout 5s to avoid long hangs
  if timeout 5s "${cmd[@]}" >"$out" 2>&1; then
    echo 0 >"$rcfile"
  else
    echo $? >"$rcfile" || true
  fi
}

# Probes
run_probe node node --version || true
run_probe npm npm --version || true
run_probe corepack corepack --version || true
run_probe yarn env yarn --version || true
run_probe bun bun --version || true

echo "Probe outputs written to $OUT_DIR"

exit 0
