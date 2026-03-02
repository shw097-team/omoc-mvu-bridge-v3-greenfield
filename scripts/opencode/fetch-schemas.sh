#!/usr/bin/env bash
set -euo pipefail

mkdir -p tools/schemas

# OpenCode schema（官方 $schema URL）
curl -fsSL "https://opencode.ai/config.json" -o tools/schemas/opencode.schema.json

# Oh-My schema（官方 repo ra:contentReference[oaicite:20]{index=20}//raw.githubusercontent.com/code-yeongyu/oh-my-opencode/master/assets/oh-my-opencode.schema.json" \
  -o tools/schemas/oh-my-opencode.schema.json

echo "schemas_fetched=PASS"