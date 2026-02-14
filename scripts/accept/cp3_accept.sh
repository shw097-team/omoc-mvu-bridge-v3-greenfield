#!/usr/bin/env bash
set -u

echo "UTC_NOW=$(date -u +%Y-%m-%dT%H:%M:%SZ)"
echo "PWD=$(pwd)"

# A) opencode version (must contain 1.2.1)
ver="$(opencode --version 2>/dev/null || true)"
echo "OPENCODE_VERSION=${ver}"
echo "${ver}" | grep -q "^1.2.1" && echo "OPENCODE_VERDICT=PASS" || echo "OPENCODE_VERDICT=FAIL"

# B) oh-my-opencode cache presence (official plugin cache pattern used in prior steps)
PLUG_DIR="${HOME}/.cache/opencode/node_modules/oh-my-opencode"
echo "OHMY_CACHE_DIR=${PLUG_DIR}"
test -d "${PLUG_DIR}" && echo "OHMY_CACHE_VERDICT=PASS" || echo "OHMY_CACHE_VERDICT=FAIL"

# C) docker smoke

echo "DOCKER=$(command -v docker >/dev/null 2>&1 && echo PRESENT || echo MISSING)"
if command -v docker >/dev/null 2>&1; then
  docker ps >/dev/null 2>&1 && echo "DOCKER_PS=PASS" || echo "DOCKER_PS=FAIL"
else
  echo "DOCKER_PS=FAIL"
fi

# D) workflows presence

echo "WF_DOC_VALIDATE=$(test -f .github/workflows/doc-validate.yml && echo PRESENT || echo MISSING)"
echo "WF_OMOC_GATE=$(test -f .github/workflows/omoc-gate.yml && echo PRESENT || echo MISSING)"

# Fail-Closed verdict

ok="PASS"
echo "${ver}" | grep -q "^1.2.1" || ok="FAIL"
test -d "${PLUG_DIR}" || ok="FAIL"
command -v docker >/dev/null 2>&1 || ok="FAIL"
docker ps >/dev/null 2>&1 || ok="FAIL"
test -f .github/workflows/doc-validate.yml || ok="FAIL"
test -f .github/workflows/omoc-gate.yml || ok="FAIL"

echo "CP3_ACCEPT_VERDICT=${ok}"
