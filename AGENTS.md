# Project Rules (Hard)

- Default language: 繁體中文（zh-TW）。
- Prefer multi-agent parallel execution when using oh-my-opencode / agents.
- Output must be evidence-first: always write logs/artifacts to evidence/_acceptance/<UTC>/...
- If the selected model/provider is unavailable, STOP and report it explicitly (do not silently fallback).
