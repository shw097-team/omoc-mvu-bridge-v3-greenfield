#!/usr/bin/env bash
set -euo pipefail

mkdir -p .opencode scripts

cat > opencode.jsonc <<'JSONC'
{
  "$schema": "https://opencode.ai/config.json",
  "autoupdate": false,

  "model": "github-copilot/gpt-5-mini",
  "small_model": "github-copilot/gpt-5-mini",

  "provider": {
    "openai": {
      "options": {
        "baseURL": "https://api.siliconflow.cn/v1",
        "timeout": 600000,
        "setCacheKey": true
      },
      "models": {
        "Pro/moonshotai/Kimi-K2.5": { "name": "SiliconFlow: Kimi K2.5" }
      }
    },
    "github-copilot": {
      "options": { "timeout": 600000 },
      "models": {
        "gpt-5-mini": { "name": "Copilot: GPT-5 mini" }
      }
    }
  },

  "compaction": {
    "auto": true,
    "prune": true,
    "reserved": 20000
  },

  "permission": {
    "edit": "ask",
    "bash": "ask",
    "webfetch": "deny",
    "websearch": "deny",
    "read": "allow",
    "grep": "allow",
    "glob": "allow",
    "list": "allow",
    "todowrite": "ask",
    "todoread": "allow",
    "question": "allow"
  },

  "agent": {
    "sisyphus": {
      "description": "OMOC Orchestrator (Sisyphus) — MUST use SiliconFlow Kimi K2.5",
      "model": "openai/Pro/moonshotai/Kimi-K2.5",
      "steps": 3,
      "temperature": 0.1,
      "prompt": "You are Sisyphus. Output <=12 bullets. Never paste long logs. If you need evidence, ask for specific snippets only."
    },
    "hephaestus": { "model": "github-copilot/gpt-5-mini", "steps": 6, "temperature": 0.2 },
    "oracle":     { "model": "github-copilot/gpt-5-mini", "steps": 6, "temperature": 0.2 },
    "librarian":  { "model": "github-copilot/gpt-5-mini", "steps": 6, "temperature": 0.2 },
    "explore":    { "model": "github-copilot/gpt-5-mini", "steps": 5, "temperature": 0.3 }
  },

  "default_agent": "sisyphus",
  "plugin": ["oh-my-opencode@3.8.4"]
}
JSONC

cat > .opencode/oh-my-opencode.jsonc <<'JSONC'
{
  "agents": {
    "sisyphus": { "model": "openai/Pro/moonshotai/Kimi-K2.5" },

    "sisyphus-junior": { "model": "github-copilot/gpt-5-mini" },
    "prometheus": { "model": "github-copilot/gpt-5-mini" },
    "atlas": { "model": "github-copilot/gpt-5-mini" },
    "hephaestus": { "model": "github-copilot/gpt-5-mini" },
    "oracle": { "model": "github-copilot/gpt-5-mini" },
    "momus": { "model": "github-copilot/gpt-5-mini" },
    "metis": { "model": "github-copilot/gpt-5-mini" },
    "librarian": { "model": "github-copilot/gpt-5-mini" },
    "explore": { "model": "github-copilot/gpt-5-mini" },
    "multimodal-looker": { "model": "github-copilot/gpt-5-mini" },
    "todo-enforcer": { "model": "github-copilot/gpt-5-mini" }
  },

  "background_task": {
    "defaultConcurrency": 1,
    "providerConcurrency": { "openai": 1 },
    "modelConcurrency": { "openai/Pro/moonshotai/Kimi-K2.5": 1 }
  },

  "disabled_hooks": [
    "ralph-loop",
    "preemptive-compaction",
    "compaction-context-injector"
  ]
}
JSONC

# Keep your existing rate-safe runner if present; otherwise create it.
if [[ ! -f scripts/omoc-opencode-run-rate-safe.sh ]]; then
cat > scripts/omoc-opencode-run-rate-safe.sh <<'BASH'
#!/usr/bin/env bash
set -euo pipefail

ROLE="${1:-sisyphus}"; shift || true
PROMPT="${*:-"Smoke: summarize and exit."}"

MODEL="github-copilot/gpt-5-mini"
if [[ "${ROLE}" == "sisyphus" ]]; then
  MODEL="openai/Pro/moonshotai/Kimi-K2.5"
fi

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

  if echo "$out" | grep -Eqi 'Too Many Requests|rate limit|TPM limit'; then
    if [[ $attempt -ge $max_attempts ]]; then
      echo "FAIL: hit rate limit too many times (attempts=${max_attempts})." >&2
      exit 429
    fi
    jitter=$(( (RANDOM % 16) + 60 ))
    echo "Rate-limited (attempt #${attempt}). Sleeping ${jitter}s to clear TPM window..." >&2
    sleep "$jitter"
    attempt=$((attempt + 1))
    continue
  fi

  echo "FAIL: non-rate-limit error (exit=${code})." >&2
  exit "$code"
done
BASH
chmod +x scripts/omoc-opencode-run-rate-safe.sh
fi

echo "OK: schema-safe config applied (removed maxTokens; added compaction + steps)."