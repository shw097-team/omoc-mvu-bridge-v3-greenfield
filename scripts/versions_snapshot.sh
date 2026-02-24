#!/usr/bin/env bash
set -euo pipefail

TS="${TS:-$(date -u +"%Y%m%dT%H%M%SZ")}"
OUT="evidence/_acceptance/${TS}/log/versions_snapshot.log"
mkdir -p "$(dirname "${OUT}")"

{
  echo "ts=${TS}"
  uname -a || true
  echo "---- git"; git --version || true
  echo "---- gh"; gh --version || true
  echo "---- node"; node --version || true
  echo "---- npm"; npm --version || true
  echo "---- opencode"; opencode --version || true
  echo "---- docker"; docker --version || true
  echo "---- devcontainer"; devcontainer --version || true
  echo "---- oh-my-opencode (pinned in .opencode/opencode.jsonc)"; rg -n "oh-my-opencode@" .opencode/opencode.jsonc || true
} | tee "${OUT}"