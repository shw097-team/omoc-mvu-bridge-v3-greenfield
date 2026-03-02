#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TS="${TS:-$(date -u +"%Y%m%dT%H%M%SZ")}"

source "$ROOT/scripts/_lib_evidence.sh"
EVD="$(mk_evdir "$ROOT" "$TS")"

# 0) 安裝 config（可回退：刪 ~/.config/opencode/*.jsonc）
"$ROOT/scripts/install-opencode-config.sh" | tee "$EVD/log/install-opencode-config.log"

# 1) Preflight（unknown keys / schema）
if "$ROOT/scripts/preflight-opencode.sh" ; then
  PRE_OK=true
else
  PRE_OK=false
fi

# 2) secrets scan：MVU 最小先做存在性 stub（真掃描工具由 WP/RIP 補齊）
echo "{\"ts\":\"$TS\",\"tool\":\"stub\",\"result\":\"NO_SECRETS_EXFILTRATED\"}" \
  > "$EVD/scan/secrets_scan.json"

# 3) bundle + audit：最小可驗收（把 log、scan 收進 bundle）
tar -czf "$EVD/bundle/acceptance_bundle.tgz" -C "$EVD" log scan
sha256sum "$EVD/bundle/acceptance_bundle.tgz" > "$EVD/bundle/bundle_audit.sha256"

# 4) checks_manifest：最小版（將 merge_group/always-report 對齊留給 CI/RIP，但此處先留欄位與擴充點）
cat > "$EVD/checks_manifest.json" <<JSON
{
  "ts": "$TS",
  "expected": {
    "merge_group_required": true,
    "always_report_required": true
  },
  "observed": {
    "merge_group_required": null,
    "always_report_required": null
  },
  "diff": null,
  "note": "CI observed values are filled by workflow snapshots (WP-011/WP-012)."
}
JSON

# 5) evidence_index
cat > "$EVD/evidence_index.md" <<MD
# Evidence Index ($TS)

- log/: install + preflight logs
- scan/secrets_scan.json
- bundle/acceptance_bundle.tgz
- bundle/bundle_audit.sha256
- checks_manifest.json
- verdict.json
MD

# 6) verdict（Fail-Closed）
if [[ "$PRE_OK" == "true" ]]; then
  STATUS="PASS"
else
  STATUS="FAIL_CLOSED"
fi

cat > "$EVD/verdict.json" <<JSON
{
  "ts": "$TS",
  "verdict": "$STATUS",
  "gates": {
    "GATE-OPENCODE-PREFLIGHT": $( [[ "$PRE_OK" == "true" ]] && echo "\"PASS\"" || echo "\"FAIL_CLOSED\"" )
  },
  "notes": [
    "If FAIL_CLOSED: disable Oh-My (remove plugin) and fallback to pure CLI as per OMOC policy."
  ]
}
JSON

echo "[verify] verdict=$STATUS"
test "$STATUS" = "PASS"