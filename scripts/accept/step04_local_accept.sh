#!/usr/bin/env bash
set -u
echo "UTC_NOW=$(date -u +%Y-%m-%dT%H:%M:%SZ)"
echo "PWD=$(pwd)"
echo "DOCKER=$(command -v docker >/dev/null 2>&1 && echo PRESENT || echo MISSING)"
if command -v docker >/dev/null 2>&1; then
  docker ps >/dev/null 2>&1 && echo "DOCKER_PS=PASS" || echo "DOCKER_PS=FAIL"
else
  echo "DOCKER_PS=FAIL"
fi
echo "WF_DOC_VALIDATE=$(test -f .github/workflows/doc-validate.yml && echo PRESENT || echo MISSING)"
echo "WF_OMOC_GATE=$(test -f .github/workflows/omoc-gate.yml && echo PRESENT || echo MISSING)"

# Fail-Closed criteria
ok="PASS"
command -v docker >/dev/null 2>&1 || ok="FAIL"
docker ps >/dev/null 2>&1 || ok="FAIL"
test -f .github/workflows/doc-validate.yml || ok="FAIL"
test -f .github/workflows/omoc-gate.yml || ok="FAIL"
echo "ACCEPT_VERDICT=${ok}"
