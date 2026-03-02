#!/usr/bin/env bash
set -euo pipefail

TS="$(date -u +%Y%m%dT%H%M%SZ)"
EVD="evidence/_acceptance/${TS}"
LOG="${EVD}/log"
mkdir -p "${LOG}"

step () {
  local name="$1"; shift
  echo "==> ${name}" | tee "${LOG}/${name}.log"
  ( "$@" ) 2>&1 | tee -a "${LOG}/${name}.log"
}

# 0) schemas（若 repo 已落地就跳過；若缺失就抓）
if [[ ! -f tools/schemas/opencode.schema.json || ! -f tools/schemas/oh-my-opencode.schema.json ]]; then
  step "L0-fetch-schemas" bash -lc "scripts/opencode/fetch-schemas.sh"
else
  step "L0-fetch-schemas" bash -lc "echo schemas_present=PASS"
fi

# 1) OpenCode presence / version（L5 合約）
step "L5-opencode-version" bash -lc "opencode --version || echo opencode_absent=TRUE"

# 2) oh-my directory presence（L5 合約）
step "L5-ohmy-list" bash -lc "test -d .opencode && ls -la .opencode || true"

# 3) strict schema preflight：unknown keys 一律 FAIL_CLOSED
step "L5-config-validate" bash -lc "node scripts/opencode/validate-config.mjs"

echo "preflight=PASS" | tee "${EVD}/verdict.preflight.txt"
echo "${EVD}" > "${EVD}/evidence_ptr.txt"