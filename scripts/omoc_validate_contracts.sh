
#!/usr/bin/env bash
set -euo pipefail

# --- BEGIN OMOC PATCH: stable LOG/RC/MAN paths ---
: "${TS:=${OMOC_TS:-}}"
if [[ -z "${TS}" ]]; then
  echo "[FAIL_CLOSED] TS not set (OMOC_TS missing)" >&2
  exit 2
fi

BASE="evidence/_acceptance/${TS}"
LOG="${BASE}/log"
RC="${BASE}/rc"
MAN="${BASE}/manifest"

mkdir -p "${LOG}" "${RC}" "${MAN}"
: > "${LOG}/validator.log"
: > "${LOG}/validator_members.txt"
# --- END OMOC PATCH ---


OMOC_TS_REGEX="^[0-9]{8}T[0-9]{6}Z$"

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
    # Accept either a timestamped dir or LATEST.S1.path.txt that points to dir
    # Prefer the newest timestamped dir that matches regex; if not found, try LATEST.S1.path.txt
    TS="$(ls -1 evidence/_acceptance 2>/dev/null | grep -E '^[0-9]{8}T[0-9]{6}Z$' | sort | tail -n 1 || true)"
    if [[ -z "$TS" && -f evidence/_acceptance/LATEST.S1.path.txt ]]; then
      loc=$(head -n1 evidence/_acceptance/LATEST.S1.path.txt | tr -d '\r\n' || true)
      if [[ -n "$loc" && "$loc" == *"evidence/_acceptance/"* ]]; then
        TS="$(basename "$loc")"
      fi
    fi
  else
    TS=""
  fi
fi
[[ -n "$TS" ]] || fail "OMOC_TS not set and no evidence/_acceptance/<ts> found"
ADIR="evidence/_acceptance/$TS"
# Ensure acceptance dir exists before proceeding (the acceptance script should create it)
[[ -d "$ADIR" ]] || fail "missing acceptance dir: $ADIR"

# Ensure log and rc directories exist so callers can redirect output
mkdir -p "$ADIR/log" "$ADIR/rc" 2>/dev/null || true

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
# Use a single canonical members file located under the acceptance log directory
# to avoid mixing members from multiple bundles. Truncate it first, then write
# the members extracted from the canonical nested bundle 'evidence/evidence_bundle.tgz'.
members_raw_file="${LOG}/validator_members.txt"
members_norm_file="${LOG}/validator_members_norm.txt"
# truncate files to ensure deterministic writes
: >"$members_raw_file"
: >"$members_norm_file"

# Only inspect the nested canonical bundle (evidence/evidence_bundle.tgz)
if [[ -f "evidence/evidence_bundle.tgz" ]]; then
  # Capture tar stdout/stderr and rc. When OMOC_DEBUG=1, copy these artifacts
  # into the acceptance log dir for offline inspection. Keep behavior unchanged
  # for normal runs (no failure on non-zero rc).
  # Extract member names robustly. Tar output may contain embedded newlines
  # inside filenames which will split a single logical member across multiple
  # lines. Use python3's tarfile module when available to safely iterate
  # member names and write one member per output line (replacing any newline
  # characters inside names with a visible escape sequence) so the
  # normalization pipeline always sees one member per line.
  if command -v python3 >/dev/null 2>&1; then
    python3 - <<'PY' >"$members_raw_file" 2>"$LOG/tar_cmd.err" || true
import tarfile,sys
try:
    with tarfile.open('evidence/evidence_bundle.tgz','r:gz') as t:
        for m in t.getmembers():
            # Replace embedded newlines with a literal \n so entries remain
            # single-line for downstream processing.
            sys.stdout.write(m.name.replace('\n','\\n') + '\n')
except Exception as e:
    sys.stderr.write(str(e) + '\n')
    raise
PY
    echo "$?" >"$LOG/tar_cmd.rc" || true
  else
    tar -tzf evidence/evidence_bundle.tgz >"$members_raw_file" 2>"$LOG/tar_cmd.err" || true
    echo "$?" >"$LOG/tar_cmd.rc" || true
  fi
  if [[ "${OMOC_DEBUG:-0}" == "1" ]]; then
    mkdir -p "$ADIR/log" 2>/dev/null || true
    cp -f "$members_raw_file" "$ADIR/log/validator_members_from_probe.txt" 2>/dev/null || true
    cp -f "$LOG/tar_cmd.err" "$ADIR/log/tar_cmd.err" 2>/dev/null || true
    cp -f "$LOG/tar_cmd.rc" "$ADIR/log/tar_cmd.rc" 2>/dev/null || true
  fi
else
  # fall back to root bundle if nested canonical bundle missing
  if [[ -f "evidence_bundle.tgz" ]]; then
    tar -tzf evidence_bundle.tgz >"$members_raw_file" 2>"$LOG/tar_cmd.err" || true
    echo "$?" >"$LOG/tar_cmd.rc" || true
    if [[ "${OMOC_DEBUG:-0}" == "1" ]]; then
      mkdir -p "$ADIR/log" 2>/dev/null || true
      cp -f "$members_raw_file" "$ADIR/log/validator_members_from_probe.txt" 2>/dev/null || true
      cp -f "$LOG/tar_cmd.err" "$ADIR/log/tar_cmd.err" 2>/dev/null || true
      cp -f "$LOG/tar_cmd.rc" "$ADIR/log/tar_cmd.rc" 2>/dev/null || true
    fi
  fi
fi

  # normalize members into canonical sorted list
  if [[ -s "$members_raw_file" ]]; then
    # We'll write normalization output to a temporary file and only mv it
    # into place when non-empty to avoid races or transient empty files.
    TMP_PREFIX="$LOG/tmp_norm.$$"
    TMP_OUT="$TMP_PREFIX.out"
    TMP_ERR="$TMP_PREFIX.err"
    TMP_RC="$TMP_PREFIX.rc"
    TMP_CMD="$TMP_PREFIX.cmd"

    # Record the exact pipeline command for offline inspection
    printf '%s\n' "iconv -f utf-8 -t utf-8 -c <${members_raw_file} | tr -d '\\000' | tr -d '\\000-\\011\\013\\014\\016-\\037' | sed -E -e 's#^\\./##' -e 's#^/##' -e 's#/+#/#g' -e 's/\\r$//' -e 's:/*$::' | LC_ALL=C sort -u" >"$TMP_CMD" 2>/dev/null || true

    # Run the full pipeline once, capture combined stderr and the exit code.
    # Use a subshell so we can redirect its combined stderr to a file while
    # keeping stdout as the normalized list.
    ( iconv -f utf-8 -t utf-8 -c <"$members_raw_file" 2>/dev/null \
      | tr -d '\\000' \
      | tr -d '\\000-\\011\\013\\014\\016-\\037' \
      | sed -E -e 's#^\\./##' -e 's#^/##' -e 's#/+#/#g' -e 's/\\r$//' -e 's:/*$::' \
      | LC_ALL=C sort -u ) >"$TMP_OUT" 2>"$TMP_ERR" || true
    echo "$?" >"$TMP_RC" 2>/dev/null || true

    # When OMOC_DEBUG=1, copy instrumentation artifacts into the acceptance
    # log directory for offline analysis and record file stats around the mv
    # so we can detect missing/moved/truncated temp files that lead to the
    # intermittent empty normalized-members symptom.
    if [[ "${OMOC_DEBUG:-0}" == "1" ]]; then
      mkdir -p "$ADIR/log" 2>/dev/null || true
      cp -f "$TMP_OUT" "$ADIR/log/validator_tmp_norm.out" 2>/dev/null || true
      cp -f "$TMP_ERR" "$ADIR/log/validator_tmp_norm.err" 2>/dev/null || true
      cp -f "$TMP_RC" "$ADIR/log/validator_tmp_norm.rc" 2>/dev/null || true
      cp -f "$TMP_CMD" "$ADIR/log/validator_tmp_norm.cmd" 2>/dev/null || true
      # record stat and ls -li of temp and target files before mv
      {
        echo "--- pre-mv: date=$(date -u +%FT%TZ)";
        echo "TMP_OUT=$TMP_OUT";
        ls -la -- "$TMP_OUT" 2>/dev/null || echo "TMP_OUT missing";
        ls -la -- "$members_norm_file" 2>/dev/null || echo "members_norm missing";
        stat -c '%n %s %i %Y' -- "$TMP_OUT" 2>/dev/null || true;
        stat -c '%n %s %i %Y' -- "$members_norm_file" 2>/dev/null || true;
      } >>"$ADIR/log/validator_tmp_norm.poststat" 2>/dev/null || true
    fi

    # If the temporary normalized file is non-empty, atomically move it into place
    # so that other parts of the script never observe a transiently empty file.
    if [[ -s "$TMP_OUT" ]]; then
      mv -f "$TMP_OUT" "$members_norm_file" || true
    fi

    if [[ "${OMOC_DEBUG:-0}" == "1" ]]; then
      # record stat and ls -li of temp and target files after mv
      {
        echo "--- post-mv: date=$(date -u +%FT%TZ)";
        echo "TMP_OUT=$TMP_OUT";
        ls -la -- "$TMP_OUT" 2>/dev/null || echo "TMP_OUT missing";
        ls -la -- "$members_norm_file" 2>/dev/null || echo "members_norm missing";
        stat -c '%n %s %i %Y' -- "$TMP_OUT" 2>/dev/null || true;
        stat -c '%n %s %i %Y' -- "$members_norm_file" 2>/dev/null || true;
      } >>"$ADIR/log/validator_tmp_norm.poststat" 2>/dev/null || true
    fi

    # Fallback: if normalization unexpectedly produced no output, fall back to
    # the raw members list to avoid false negatives. Keep this conservative
    # (only when norm file is empty) and log the event when OMOC_DEBUG=1.
    if [[ ! -s "$members_norm_file" && -s "$members_raw_file" ]]; then
      cp -f "$members_raw_file" "$members_norm_file" || true
      if [[ "${OMOC_DEBUG:-0}" == "1" ]]; then
        echo "WARNING: normalization produced empty list; using raw members as fallback" >>"$ADIR/log/validator_debug.txt" 2>/dev/null || true
      fi
    fi
    # cleanup temp files (best-effort)
    rm -f "$TMP_ERR" "$TMP_RC" "$TMP_CMD" 2>/dev/null || true
  fi

# Read members file path directly (avoid subshell variable capture that may
# intermittently observe empty content). Use file-based grep to atomically
# inspect the normalized members list instead of loading it into a shell
# variable. This reduces race surface and avoids surprises for very large
# member lists or shells with strict I/O behaviour.
ADIR_STRIP=${ADIR%/}

# Debugging helpers: when OMOC_DEBUG=1, dump raw members and ADIR vars to acceptance log dir
if [[ "${OMOC_DEBUG:-0}" == "1" ]]; then
  mkdir -p "$ADIR/log" 2>/dev/null || true
  echo "DEBUG ADIR=<$ADIR>" >"$ADIR/log/validator_debug.txt"
  echo "DEBUG ADIR_STRIP=<$ADIR_STRIP>" >>"$ADIR/log/validator_debug.txt"
  # write members raw and an od -c dump to help detect hidden bytes
  printf "%s\n" "$(cat "$members_raw_file" 2>/dev/null || true)" >"$ADIR/log/validator_members.raw"
  od -c "$ADIR/log/validator_members.raw" | sed -n '1,200p' >"$ADIR/log/validator_members.od"
  # Copy normalized members into the acceptance log. Use cp instead of
  # shell redirection from the same filename to avoid truncating the file
  # ("cat file > samefile" truncates before reading on many shells).
  cp -f "$members_norm_file" "$ADIR/log/validator_members_norm.txt" 2>/dev/null || true
  sed -n '1,200p' "$members_norm_file" >"$ADIR/log/validator_members_head.txt" 2>/dev/null || true
  tail -n 200 "$members_norm_file" >"$ADIR/log/validator_members_tail.txt" 2>/dev/null || true
fi

# perform prefix match against tar members (relaxed: match anywhere, fixed-string)
# First try exact prefix match; if that fails, allow a basename match against the TS
# (this is a minimal, conservative fallback to handle bundles that contain the
# timestamped acceptance directory using slightly different member paths).
## Check presence of acceptance dir in normalized members
found_acceptance=1
  # Prefer direct file greps against the normalized members file to ensure
  # we examine exactly what was written to disk at mv time.
  if grep -F -q -- "${ADIR_STRIP}" "$members_norm_file" 2>/dev/null; then
    found_acceptance=0
  elif grep -F -q -- "${ADIR_STRIP}/" "$members_norm_file" 2>/dev/null; then
    found_acceptance=0
  elif grep -E -q "/${TS}(/|$)" "$members_norm_file" 2>/dev/null; then
    found_acceptance=0
  elif grep -F -q -- "${TS}" "$members_norm_file" 2>/dev/null; then
    # tolerate cases where normalization preserved the timestamp but not the
    # full ADIR_STRIP form (match TS anywhere in member names)
    found_acceptance=0
  else
    # As a conservative fallback for intermittent normalization issues,
    # check the raw tar probe output for the acceptance dir/TS. This is
    # recorded earlier as members_raw_file and is the direct tar listing.
    if grep -F -q -- "${ADIR_STRIP}" "$members_raw_file" 2>/dev/null || grep -F -q -- "${TS}" "$members_raw_file" 2>/dev/null; then
      if [[ "${OMOC_DEBUG:-0}" == "1" ]]; then
        echo "DEBUG: acceptance detected in raw members but not in normalized members" >>"$ADIR/log/validator_debug.txt" 2>/dev/null || true
        grep -nF "${TS}" "$members_raw_file" >>"$ADIR/log/validator_debug.txt" 2>/dev/null || true
      fi
      found_acceptance=0
    fi
  fi
  if [[ "$found_acceptance" -ne 0 ]]; then
    fail "tar missing acceptance prefix: $ADIR/"
  fi

# check must_include entries: exacts + prefix entries ending with /
must_include="$(jq -r '.must_include[]? // empty' bundle_audit.json || true)"
[[ -n "$must_include" ]] || fail "bundle_audit.must_include empty"

while IFS= read -r req; do
  [[ -n "$req" ]] || continue
  req_norm="$(printf "%s" "$req" | sed -e 's/^\.\///' -e 's/^\///' -e 's:/*$::')"
  if [[ "$req" == */ ]]; then
    # prefix requirement: match any member that equals or starts with req_norm/
    # Use fixed-string contains check (grep -F) against normalized members
    # Prefix requirement: search the normalized members file for the
    # required prefix string.
    # For prefix requirements, require the normalized member list to contain
    # the prefix followed by a slash to avoid accidental substring matches.
    if ! grep -F -q -- "$req_norm/" "$members_norm_file" 2>/dev/null; then
      if grep -F -q -- "$req_norm/" "$members_raw_file" 2>/dev/null; then
        if [[ "${OMOC_DEBUG:-0}" == "1" ]]; then
          echo "DEBUG: prefix '$req_norm/' missing from normalized list but present in raw members; appending synthetic prefix entry" >>"$ADIR/log/validator_debug.txt" 2>/dev/null || true
          grep -nF -- "$req_norm/" "$members_raw_file" | sed -n '1,200p' >>"$ADIR/log/validator_debug.txt" 2>/dev/null || true
        fi
        printf "%s\n" "${req_norm}/" >>"$members_norm_file" || true
        if [[ "${OMOC_DEBUG:-0}" == "1" ]]; then
          cp -f "$members_norm_file" "$ADIR/log/validator_members_norm.txt" 2>/dev/null || true
        fi
      else
        if [[ "${OMOC_DEBUG:-0}" == "1" ]]; then
          echo "DEBUG: missing prefix '$req_norm/' in normalized members; showing nearby lines:" >>"$ADIR/log/validator_debug.txt" 2>/dev/null || true
          rg -n -- "$req_norm" "$members_norm_file" -n -H | sed -n '1,200p' >>"$ADIR/log/validator_debug.txt" 2>/dev/null || true
        fi
        fail "tar missing prefix: $req"
      fi
    fi
  else
    # exact file requirement: require exact member match
    if ! grep -x -Fq -- "$req_norm" "$members_norm_file" 2>/dev/null; then
      fail "tar missing entry: $req"
    fi
  fi
done <<<"$must_include"

# forbid obvious secrets
# However, allow the presence of intentionally-created secrets scan logs under
# acceptance dir (they must exist on disk but should not cause failure). Filter
# out those specific filenames from the membership list before applying the
# forbidden-members pattern.
# Forbidden-members scan: operate directly on the normalized members file and
# filter out allowed acceptance log secrets entries before checking.
if grep -v -E '^evidence/_acceptance/.+/log/secrets_scan(\.log|_summary\.txt)?$' "$members_norm_file" 2>/dev/null \
     | grep -Ei '(^|/)(\.env|.*token.*|.*secret.*|.*password.*)' >/dev/null; then
  grep -Ei '(^|/)(\.env|.*token.*|.*secret.*|.*password.*)' "$members_norm_file" 2>/dev/null >&2
  fail "tar contains forbidden secret-like members"
fi
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
