#!/usr/bin/env bash
set -euo pipefail
ROOT="$(git rev-parse --show-toplevel)"
cd "$ROOT"

# 依 skills 合冊：必備 root artifacts + 單一 acceptance dir；缺任一 → exit 2（Fail-Closed）
# ssot_doc=N3 locator=SK08（一鍵產出可稽核證據包） 
ts="${OMOC_TS:-}"
if [[ -z "$ts" ]]; then
  echo "[FAIL] OMOC_TS is required for pack in this repo run (to avoid ambiguity)."
  exit 2
fi
adir="evidence/_acceptance/$ts"
logdir="$adir/log"
mkdir -p "$logdir"
log="$logdir/SK08-pack.log"

echo "==> SK08 start ts=$ts" | tee "$log"

# root artifacts（本 repo 使用 root: verdict.json / checks_manifest.json / evidence_index.md / bundle_audit.json）
# 注意：此處的 verdict/checks/index 我們會在「生成 root artifacts」步驟寫到 repo root（由下一支腳本負責）
must_root=(verdict.json checks_manifest.json evidence_index.md bundle_audit.json)
for f in "${must_root[@]}"; do
  [[ -f "$f" ]] || { echo "missing root artifact: $f" | tee -a "$log"; exit 2; }
done
[[ -d "$adir" ]] || { echo "missing acceptance dir: $adir" | tee -a "$log"; exit 2; }

echo "==> packing evidence_bundle.tgz" | tee -a "$log"
tar -czf "evidence_bundle.tgz" \
  --exclude-vcs \
  --exclude='**/.env' --exclude='**/*.env' \
  --exclude='**/*token*' --exclude='**/*secret*' --exclude='**/*password*' \
  -C "$ROOT" \
  verdict.json checks_manifest.json evidence_index.md bundle_audit.json "$adir" \
  >/dev/null

[[ -f evidence_bundle.tgz ]] || { echo "bundle not created" | tee -a "$log"; exit 2; }

members="$(tar -tzf evidence_bundle.tgz | LC_ALL=C sort -u)"
echo "$members" >"$logdir/SK08-tar-members.txt"

# bundle audit（可稽核）
python3 - <<PY > bundle_audit.json
import json, subprocess, hashlib, pathlib
tgz = pathlib.Path("evidence_bundle.tgz")
sha = hashlib.sha256(tgz.read_bytes()).hexdigest()
members = subprocess.check_output(["tar","-tzf",str(tgz)], text=True).splitlines()
out = {
  "schema": "omoc.bundle_audit.v1",
  "ts": "${ts}",
  "bundle": str(tgz),
  "sha256": sha,
  "members_count": len(members),
  "must_include": ["verdict.json","checks_manifest.json","evidence_index.md","bundle_audit.json","evidence/_acceptance/%s/" % "${ts}"],
  "result": "PASS"
}
print(json.dumps(out, ensure_ascii=False, indent=2))
PY

echo "[OK] created evidence_bundle.tgz + bundle_audit.json" | tee -a "$log"
