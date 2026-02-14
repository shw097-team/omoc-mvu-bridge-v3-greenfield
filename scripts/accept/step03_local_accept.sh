#!/usr/bin/env bash
set -u
ACC_DIR="${ACC_DIR:?ACC_DIR is required}"
LOG_DIR="${ACC_DIR}/logs"
ART_DIR="${ACC_DIR}/artifacts"
mkdir -p "$LOG_DIR" "$ART_DIR"

have(){ command -v "$1" >/dev/null 2>&1; }
tmo(){ local s="$1"; shift; timeout --preserve-status "${s}s" "$@"; }

# Probe
{
  echo "UTC_NOW=$(date -u +%Y-%m-%dT%H:%M:%SZ)"
  echo "PWD=$(pwd)"
  (have git && git status -sb) || echo "git=MISSING"
  (have docker && docker --version) || echo "docker=MISSING"
  (have opencode && opencode --version) || echo "opencode=MISSING"
  echo "WORKFLOWS=$(ls -1 .github/workflows 2>/dev/null | wc -l || true)"
} > "${ART_DIR}/accept_probe.txt" 2> "${LOG_DIR}/accept_probe.stderr.log"

# Minimal checks
json_ok="PASS"
if [ -f .devcontainer/devcontainer.json ] && have perl; then
  perl -MJSON::PP -e 'local $/; open my $fh,"<",".devcontainer/devcontainer.json" or die; JSON::PP->new->decode(<$fh>); print "JSON_OK\n";' \
    > "${ART_DIR}/devcontainer_json_validate.txt" 2> "${LOG_DIR}/devcontainer_json_validate.stderr.log" || json_ok="FAIL"
else
  echo "SKIP_JSON_VALIDATE" > "${ART_DIR}/devcontainer_json_validate.txt"
fi

docker_ok="FAIL"
if have docker; then
  if tmo 8 docker ps >/dev/null 2>&1; then docker_ok="PASS"; fi
fi

opencode_ok="FAIL"
if have opencode; then
  if tmo 8 opencode --version >/dev/null 2>&1; then opencode_ok="PASS"; fi
fi

cat > "${ACC_DIR}/checks_manifest.json" <<JSON
{
  "step_id":"step-03",
  "acc_dir":"${ACC_DIR}",
  "checks":[
    {"id":"devcontainer.json_valid","result":"${json_ok}","evidence":"artifacts/devcontainer_json_validate.txt"},
    {"id":"docker.ps_works","result":"${docker_ok}","evidence":"artifacts/accept_probe.txt"},
    {"id":"opencode.present","result":"${opencode_ok}","evidence":"artifacts/opencode_version.txt"}
  ]
}
JSON

verdict="FAIL_CLOSED"
if [ "${json_ok}" = "PASS" ] && [ "${docker_ok}" = "PASS" ] && [ "${opencode_ok}" = "PASS" ]; then verdict="PASS"; fi

cat > "${ACC_DIR}/verdict.json" <<JSON
{"step_id":"step-03","verdict":"${verdict}","rule":"Missing/Unverified evidence => FAIL_CLOSED"}
JSON
echo "${verdict}"
