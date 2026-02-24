#!/usr/bin/env bash
set -euo pipefail

ROLE="${1:-sisyphus}"; shift || true
PROMPT="${*:-"Smoke: summarize config and exit."}"

MODEL="github-copilot/gpt-5-mini"
if [[ "${ROLE}" == "sisyphus" ]]; then
  MODEL="openai/Pro/moonshotai/Kimi-K2.5"
fi

# Strategy:
# - If we see TPM rate-limit (429), stop hammering. Sleep to the next minute window.
# SiliconFlow recommends exponential backoff for rate limits and TPM is minute-scoped.
max_attempts="${OMOC_MAX_ATTEMPTS:-5}"
attempt=1

while true; do
  set +e
  out="$(opencode run --agent "${ROLE}" --model "${MODEL}" --format default "${PROMPT}" 2>&1)"
  code=$?
  set -e

  if [[ $code -eq 0 ]]; then
    printf "%s\n" "$out"
    exit 0
  fi

  printf "%s\n" "$out" >&2

  # Detect common TPM wording
  if echo "$out" | grep -Eqi 'Too Many Requests|rate limit|TPM limit'; then
    if [[ $attempt -ge $max_attempts ]]; then
      echo "FAIL: hit rate limit too many times (attempts=${max_attempts})." >&2
      exit 429
    fi

    # Sleep to next minute window + jitter (60-75s)
    jitter=$(( (RANDOM % 16) + 60 ))
    echo "Rate-limited (attempt #${attempt}). Sleeping ${jitter}s to clear TPM window..." >&2
    sleep "$jitter"
    attempt=$((attempt + 1))
    continue
  fi

  # Non-rate-limit errors: fail fast (Fail-Closed)
  echo "FAIL: non-rate-limit error (exit=${code})." >&2
  exit "$code"
done
