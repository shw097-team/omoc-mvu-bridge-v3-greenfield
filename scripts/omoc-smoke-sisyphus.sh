#!/usr/bin/env bash
set -euo pipefail
opencode run --agent sisyphus --model siliconflow/Pro/moonshotai/Kimi-K2.5 --format default "只回覆 OK（不要解釋）。"
