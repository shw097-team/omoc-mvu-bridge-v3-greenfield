#!/usr/bin/env bash
set -euo pipefail

ROLE="${1:-sisyphus}"
shift || true

PROMPT="${*:-"Smoke: print config and exit."}"

# Quarantine toggle: disable plugins if needed
if [[ "${OMOC_OHMY:-1:contentReference[oaicite:26]{index=26}xport OPENCODE_NO_PLUGINS=1
fi

MODEL="github-copilot/gpt-5-mini"
AGENT="${ROLE}"

if [[ "${ROLE}" = "sisyphus" ]]; then
  MODEL="openai/Pro/moonshotai/Kimi-K2.5"
fi

opencode run --agent "${AGENT}" --model "${MODEL}" --format default "${PROMPT}"