#!/usr/bin/env bash
set -euo pipefail

mk_evdir () {
  local root="$1"
  local ts="$2"
  local ev="$root/evidence/_acceptance/${ts}"
  mkdir -p "$ev"/{log,bundle,scan}
  echo "$ev"
}