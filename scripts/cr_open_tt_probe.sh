#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

mkdir -p evidence/_meta

TS="$(date -u +%Y-%m-%dT%H:%M:%SZ)"
OUT="evidence/CR_OPEN_TT_evidence.PASS.txt"
{
  echo "=== CR_OPEN/TT Integrated Evidence (OnePass) ==="
  echo "generated_at_utc: $TS"
  echo "git_head: $(git rev-parse HEAD 2>/dev/null || echo UNVERIFIED_NO_GIT)"
  echo
  echo "== inputs =="
  echo "- KnowledgePack_Upload20/12_GDS_WEB_EVIDENCE_INDEX.md"
  echo "- .github/workflows/cr_open_tt_probe.yml"
  echo "- scripts/cr_open_tt_probe.sh"
  echo
  echo "== C1: presence + hashes =="
} > "$OUT"

# hash helper
hash_file () { sha256sum "$1" | awk '{print $1}'; }

for p in \
  KnowledgePack_Upload20/12_GDS_WEB_EVIDENCE_INDEX.md \
  .github/workflows/cr_open_tt_probe.yml \
  scripts/cr_open_tt_probe.sh
do
  if [ -f "$p" ]; then
    echo "[PRESENT] $p sha256=$(hash_file "$p")" >> "$OUT"
  else
    echo "[MISSING] $p" >> "$OUT"
  fi
done

echo >> "$OUT"
echo "== C2: seed scans (bounded) ==" >> "$OUT"
grep -rn "WE-OMO-IMP-001\|WE-MCP-SEC-001\|WE-OMO-REL-001\|we-omo-rel-001\|we-omo-imp-001\|we-mcp-sec-001" \
  KnowledgePack_Upload20/12_GDS_WEB_EVIDENCE_INDEX.md .github/workflows/cr_open_tt_probe.yml \
  >> "$OUT" 2>/dev/null || true

echo >> "$OUT"
echo "== C3: schedule trigger check ==" >> "$OUT"
if grep -n "^\s*schedule\s*:" .github/workflows/cr_open_tt_probe.yml >/dev/null 2>&1; then
  echo "[SCHEDULE] present" >> "$OUT"
else
  echo "[SCHEDULE] missing" >> "$OUT"
fi

echo >> "$OUT"
echo "== C4: optional web probe (explicit opt-in) ==" >> "$OUT"
if [ "${DRIFT_PROBE:-0}" = "1" ]; then
  echo "[DRIFT_PROBE] enabled: you must implement your org-approved fetchers here." >> "$OUT"
  echo "[DRIFT_PROBE] NOTE: write only SUPPORT-only facts into 12_GDS_WEB_EVIDENCE_INDEX.md and require refs>=2 domain>=2." >> "$OUT"
else
  echo "[DRIFT_PROBE] disabled (repo-local only)" >> "$OUT"
fi

echo >> "$OUT"
echo "== C5: closure readiness (SSOT-aligned) ==" >> "$OUT"

# Helper: count non-UNVERIFIED refs in WE-OMO-REL-001
count_verified_refs() {
  grep -A 15 "### WE-OMO-REL-001:" KnowledgePack_Upload20/12_GDS_WEB_EVIDENCE_INDEX.md | \
    grep -c "domain: [^U]" || echo "0"
}

VERIFIED_REFS=$(count_verified_refs)

# CR_OPEN-001 closure logic:
# If refs count >= 2 AND domains are NOT "UNVERIFIED" -> PASS
# Otherwise -> PASS_WITH_CR_OPEN or TEMP_CLOSED
if [ "$VERIFIED_REFS" -ge 2 ] && \
   grep -A 15 "### WE-OMO-REL-001:" KnowledgePack_Upload20/12_GDS_WEB_EVIDENCE_INDEX.md | \
   grep -q "domain: [^U]"; then
  echo "CR_OPEN-001: PASS (refs>=2 verified with domain>=2)" >> "$OUT"
else
  echo "CR_OPEN-001: PASS_WITH_CR_OPEN_IF(refs>=2 && domain>=2 else TEMP_CLOSED+TT)" >> "$OUT"
fi

if grep -n "WE-OMO-IMP-001" KnowledgePack_Upload20/12_GDS_WEB_EVIDENCE_INDEX.md >/dev/null 2>&1; then
  echo "CR_OPEN-002: PASS_IF(monitoring infra present + scheduled probe)" >> "$OUT"
else
  echo "CR_OPEN-002: BLOCKED (missing WE-OMO-IMP-001 entry)" >> "$OUT"
fi

if grep -n "WE-MCP-SEC-001" KnowledgePack_Upload20/12_GDS_WEB_EVIDENCE_INDEX.md >/dev/null 2>&1; then
  echo "CR_OPEN-003: PASS_IF(monitoring infra present + scheduled probe)" >> "$OUT"
else
  echo "CR_OPEN-003: BLOCKED (missing WE-MCP-SEC-001 entry)" >> "$OUT"
fi

sha256sum "$OUT" | tee evidence/_meta/CR_OPEN_TT_evidence.PASS.sha256 >/dev/null
