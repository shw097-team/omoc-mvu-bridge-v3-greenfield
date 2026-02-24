#!/usr/bin/env bash
set -euo pipefail

# 1) Require SiliconFlow key (do NOT use OPENAI_API_KEY)
if [[ -z "${SILICONFLOW_API_KEY:-}" ]]; then
  echo "ERROR: SILICONFLOW_API_KEY is not set."
  echo "Set it like: export SILICONFLOW_API_KEY='your_key_here'"
  exit 2
fi

mkdir -p .opencode/agents .opencode scripts

# 2) opencode.jsonc: define a real 'siliconflow' provider using openai-compatible SDK
#    This avoids OPENAI_API_KEY entirely.
cat > opencode.jsonc <<'JSONC'
{
  "$schema": "https://opencode.ai/config.json",
  "autoupdate": false,

  // Default model for non-sisyphus agents
  "model": "github-copilot/gpt-5-mini",
  "small_model": "github-copilot/gpt-5-mini",

  "provider": {
    "siliconflow": {
      "npm": "@ai-sdk/openai-compatible",
      "name": "SiliconFlow (OpenAI-compatible)",
      "options": {
        "baseURL": "https://api.siliconflow.cn/v1",
        "apiKey": "{env:SILICONFLOW_API_KEY}"
      },
      "models": {
        "Pro/moonshotai/Kimi-K2.5": {
          "name": "Kimi K2.5 (SiliconFlow)"
        }
      }
    },

    "github-copilot": {
      "options": { "timeout": 600000 },
      "models": {
        "gpt-5-mini": { "name": "Copilot: GPT-5 mini" }
      }
    }
  },

  // Reduce token pressure via official compaction knobs (TPM mitigation)
  "compaction": {
    "auto": true,
    "prune": true,
    "reserved": 20000
  },

  // Deny-by-default for risky tools (OMOC)
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

  // Use sisyphus as default primary agent (will be defined via .opencode/agents/sisyphus.md)
  "default_agent": "sisyphus",

  // Keep Oh-My pinned if you want it, but it can be disabled via OPENCODE_NO_PLUGINS=1
  "plugin": ["oh-my-opencode@3.8.4"]
}
JSONC

# 3) Define primary agent "sisyphus" as a markdown agent (most reliable; avoids CLI fallback)
#    NOTE: model id becomes "siliconflow/<model>" because provider id is siliconflow.
cat > .opencode/agents/sisyphus.md <<'MD'
---
description: "OMOC Orchestrator (Sisyphus) — primary agent bound to SiliconFlow Kimi K2.5"
mode: primary
model: siliconflow/Pro/moonshotai/Kimi-K2.5
temperature: 0.1
steps: 3
tools:
  write: false
  edit: false
  bash: false
---
You are Sisyphus.

Hard constraints:
- Output <= 12 bullets.
- Never paste long logs or whole files.
- If you need evidence, request only exact file paths + line ranges.
MD

# 4) Quick smoke command script
cat > scripts/omoc-smoke-sisyphus.sh <<'BASH'
#!/usr/bin/env bash
set -euo pipefail
opencode run --agent sisyphus --model siliconflow/Pro/moonshotai/Kimi-K2.5 --format default "只回覆 OK（不要解釋）。"
BASH
chmod +x scripts/omoc-smoke-sisyphus.sh

echo "OK: Applied SiliconFlow provider + sisyphus agent."
echo "Next:"
echo "  export SILICONFLOW_API_KEY='...'"
echo "  scripts/omoc-smoke-sisyphus.sh"