#!/usr/bin/env bash
set -euo pipefail

fail(){ echo "[FAIL_CLOSED] $*" >&2; exit 2; }

ROOT="$(git rev-parse --show-toplevel 2>/dev/null || pwd)"
cd "$ROOT"

need_cmd(){ command -v "$1" >/dev/null 2>&1 || fail "missing required tool: $1"; }

need_cmd jq
need_cmd tar

# ---- ts resolution ----
if [[ -n "${OMOC_TS:-}" ]]; then
  TS="$OMOC_TS"
else
  if [[ -d evidence/_acceptance ]]; then
    TS="$(ls -1 evidence/_acceptance 2>/dev/null | sort | tail -n 1 || true)"
  else
    TS=""
  fi
fi
[[ -n "$TS" ]] || fail "OMOC_TS not set and no evidence/_acceptance/<ts> found"
ADIR="evidence/_acceptance/$TS"
[[ -d "$ADIR" ]] || fail "missing acceptance dir: $ADIR"

# ---- root artifacts existence ----
req_root=(verdict.json checks_manifest.json evidence_index.md bundle_audit.json evidence_bundle.tgz)
for f in "${req_root[@]}"; do
  [[ -f "$f" ]] || fail "missing root artifact: $f"
done

# ---- JSON validity ----
jq -e . verdict.json >/dev/null || fail "invalid JSON: verdict.json"
jq -e . checks_manifest.json >/dev/null || fail "invalid JSON: checks_manifest.json"
jq -e . bundle_audit.json >/dev/null || fail "invalid JSON: bundle_audit.json"

# ---- required check name contract (exact required contexts) ----
canonical="$(jq -r '.required_check_name_contract.canonical // empty' checks_manifest.json)"
expected="$(jq -r '.required_check_name_contract.expected // empty' checks_manifest.json)"
[[ -n "$expected" ]] || fail "checks_manifest missing required_check_name_contract.expected"
[[ "$canonical" == "$expected" ]] || fail "required check canonical mismatch: canonical='$canonical' expected='$expected'"

# ---- bundle audit schema + result ----
schema="$(jq -r '.schema_version // empty' bundle_audit.json)"
[[ "$schema" == "1.0" ]] || fail "bundle_audit.schema_version must be 1.0 (got: $schema)"

result="$(jq -r '.result // empty' bundle_audit.json)"
[[ "$result" == "PASS" ]] || fail "bundle_audit.result must be PASS (got: $result)"

# ---- tar membership check (must_include) ----
members="$(tar -tzf evidence_bundle.tgz | LC_ALL=C sort -u)"
# ensure tar contains acceptance prefix
echo "$members" | grep -q "^$ADIR/" || fail "tar missing acceptance prefix: $ADIR/"

# check must_include entries: exacts + prefix entries ending with /
must_include="$(jq -r '.must_include[]? // empty' bundle_audit.json || true)"
[[ -n "$must_include" ]] || fail "bundle_audit.must_include empty"

while IFS= read -r req; do
  [[ -n "$req" ]] || continue
  if [[ "$req" == */ ]]; then
    echo "$members" | grep -q "^$req" || fail "tar missing prefix: $req"
  else
    echo "$members" | grep -qx "$req" || fail "tar missing entry: $req"
  fi
done <<<"$must_include"

# forbid obvious secrets
if echo "$members" | grep -Ei '(^|/)(\.env|.*token.*|.*secret.*|.*password.*)' >/dev/null; then
  echo "$members" | grep -Ei '(^|/)(\.env|.*token.*|.*secret.*|.*password.*)' >&2
  fail "tar contains forbidden secret-like members"
fi

# ---- extracted file presence ----
req_files=(
  ".opencode/policy/omoc_policy.json"
  ".opencode/opencode.jsonc"
  ".ohmy/opencode.profiles.json"
  "scripts/omoc_extract_skills.sh"
  "scripts/omoc_validate_contracts.sh"
)
for p in "${req_files[@]}"; do
  [[ -f "$p" ]] || fail "missing extracted file: $p"
done

# ---- skills frontmatter whitelist (反假控權) ----
skill_files=(.opencode/skills/*/SKILL.md)
[[ -e "${skill_files[0]}" ]] || fail "no extracted skills found under .opencode/skills/*/SKILL.md"

for f in "${skill_files[@]}"; do
  # must start with frontmatter
  head -n 1 "$f" | grep -qx -e '---' || fail "SKILL missing frontmatter open: $f"
  # extract keys between first two --- lines
  keys="$(awk 'BEGIN{fm=0}
    NR==1 && $0=="---"{fm=1; next}
    fm==1 && $0=="---"{exit}
    fm==1{
      if ($0 ~ /^[A-Za-z0-9_-]+:[[:space:]]*/){
        sub(/:.*/,"",$0); print $0
      }
    }' "$f" | sort -u)"
  # allow only name, description
  while IFS= read -r k; do
    [[ -z "$k" ]] && continue
    case "$k" in
      name|description) : ;;
      *) fail "frontmatter key not allowed ($k): $f" ;;
    esac
  done <<<"$keys"
done

echo "[PASS] omoc_validate_contracts OK (ts=$TS)"
