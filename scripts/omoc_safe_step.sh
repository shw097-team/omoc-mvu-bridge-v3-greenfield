#!/usr/bin/env bash
set -euo pipefail
# Safe step runner for OMOC repair tasks. Avoids long single-quoted heredocs
# and prevents accidental interactive prompts. Logs exit codes and durations.
TS="$(date -u +%Y%m%dT%H%M%SZ)"
LOGDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/../evidence/_work/$TS"
mkdir -p "$LOGDIR"
echo "omoc_safe_step starting at $TS" > "$LOGDIR/omoc_safe_step.log"
start=$(date +%s)
timeout=${1:-300}
shift || true
if [ "$#" -eq 0 ]; then
  echo "Usage: $0 <timeout-secs> <cmd>..." >> "$LOGDIR/omoc_safe_step.log"
  exit 2
fi
cmd=("$@")
echo "Running with timeout=$timeout: ${cmd[*]}" >> "$LOGDIR/omoc_safe_step.log"
if command -v timeout >/dev/null 2>&1; then
  timeout "$timeout" "${cmd[@]}" >> "$LOGDIR/omoc_safe_step.log" 2>&1 || rc=$?
else
  "${cmd[@]}" >> "$LOGDIR/omoc_safe_step.log" 2>&1 || rc=$?
fi
rc=${rc:-0}
end=$(date +%s)
echo "Exit code: $rc, elapsed: $((end-start))s" >> "$LOGDIR/omoc_safe_step.log"
exit "$rc"
