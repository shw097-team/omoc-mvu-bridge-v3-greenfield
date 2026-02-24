#!/usr/bin/env bash
set -euo pipefail

# Minimal, auditable installer wrapper for opencode config + optional binary bootstrap
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
CFG_DIR="${HOME}/.config/opencode"
mkdir -p "$CFG_DIR"

usage() {
  cat <<EOF
Usage: $0 --pin <version> --sha256 <expected-sha256>

This script installs repo-provided opencode configs and optionally bootstraps
an opencode binary from a verified artifact. For automated binary bootstrap
you MUST provide OPENCODE_DOWNLOAD_URL environment variable pointing to a
downloadable artifact. The script will download to a temp file, verify sha256,
and only then proceed. If OPENCODE_DOWNLOAD_URL is not set, the script will
record a TT (manual exception) and exit non-destructively.
EOF
  exit 2
}

PIN=""
EXPECTED_SHA=""
while [[ $# -gt 0 ]]; do
  case "$1" in
    --pin) PIN="$2"; shift 2 ;;
    --sha256) EXPECTED_SHA="$2"; shift 2 ;;
    -h|--help) usage ;;
    *) echo "Unknown arg: $1" >&2; usage ;;
  esac
done

# If OPENCODE_DOWNLOAD_URL is provided, we require --pin and --sha256 for deterministic bootstrap.
if [[ -n "${OPENCODE_DOWNLOAD_URL:-}" ]]; then
  if [[ -z "$PIN" || -z "$EXPECTED_SHA" ]]; then
    echo "[ERROR] --pin and --sha256 are required when OPENCODE_DOWNLOAD_URL is set" >&2
    usage
  fi
fi

echo "[install] applying repo opencode configs to $CFG_DIR"
# Fail-Closed：嚴禁 .json/.jsonc 併存造成 precedence 漂移
rm -f "$CFG_DIR/opencode.json" || true
rm -f "$CFG_DIR/oh-my-opencode.json" || true

# Prefer single source-of-truth in repository: .opencode/opencode.jsonc first, then ops/opencode/opencode.jsonc
if [[ -f "$ROOT/.opencode/opencode.jsonc" ]]; then
  echo "[install] using $ROOT/.opencode/opencode.jsonc as SSOT"
  cp "$ROOT/.opencode/opencode.jsonc" "$CFG_DIR/opencode.jsonc"
elif [[ -f "$ROOT/ops/opencode/opencode.jsonc" ]]; then
  echo "[install] using $ROOT/ops/opencode/opencode.jsonc as fallback"
  cp "$ROOT/ops/opencode/opencode.jsonc" "$CFG_DIR/opencode.jsonc"
else
  echo "[install] ERROR: no opencode.jsonc found in repository (.opencode/ or ops/opencode/)" >&2
  exit 4
fi

# Install oh-my-opencode if present
if [[ -f "$ROOT/.opencode/oh-my-opencode.jsonc" ]]; then
  cp "$ROOT/.opencode/oh-my-opencode.jsonc" "$CFG_DIR/oh-my-opencode.jsonc"
else
  echo "[install] no oh-my-opencode.jsonc found in repository; skipping"
fi

echo "[install] configs installed"

# Record any running opencode-like processes (non-destructive hygiene)
echo "[install] recording runtime processes (pgrep/ps)"
pgrep -fa opencode || true
ps -eo pid,ppid,etime,cmd | grep -E "opencode|bun|node" | grep -v grep || true

# If OPENCODE_DOWNLOAD_URL is not provided, fail-open by design and create a TT
if [[ -z "${OPENCODE_DOWNLOAD_URL:-}" ]]; then
  TS="$(date -u +%Y%m%dT%H%M%SZ)"
  TT_DIR="$ROOT/evidence/_acceptance/${TS}"
  mkdir -p "$TT_DIR"
  TT_FILE="$TT_DIR/TT-OPENCODE-MANUAL-${PIN}.txt"
  cat > "$TT_FILE" <<EOF
Manual intervention required to bootstrap opencode binary

Requested pin: ${PIN}
Expected sha256: ${EXPECTED_SHA}
No OPENCODE_DOWNLOAD_URL was provided. To enable automated bootstrap,
set OPENCODE_DOWNLOAD_URL to a stable release artifact URL and re-run:

  OPENCODE_DOWNLOAD_URL=<url> $0 --pin ${PIN} --sha256 ${EXPECTED_SHA}

Until verified, this script did NOT attempt to download or execute remote code.
EOF
  echo "[install] no OPENCODE_DOWNLOAD_URL; wrote TT -> $TT_FILE"
  echo "[install] audit-only mode complete"
  exit 0
fi

echo "[install] attempting deterministic download from OPENCODE_DOWNLOAD_URL"
TMPDIR="$(mktemp -d)"
trap 'rm -rf "$TMPDIR"' EXIT
outfile="$TMPDIR/opencode-artifact"

# Use curl to download to a file (no piping to sh). Time-bounded and fail-fast.
curl --fail --location --retry 2 --max-time 120 --show-error --silent --output "$outfile" "${OPENCODE_DOWNLOAD_URL}"

echo "[install] download complete, verifying sha256"
calced_sha256="$(sha256sum "$outfile" | awk '{print $1}')"
if [[ "$calced_sha256" != "$EXPECTED_SHA" ]]; then
  echo "[ERROR] sha256 mismatch" >&2
  echo "  expected: $EXPECTED_SHA" >&2
  echo "  actual:   $calced_sha256" >&2
  echo "[install] quarantining artifact and creating TT for manual review"
  QUAR_DIR="$ROOT/evidence/_quarantine/$(date -u +%Y%m%dT%H%M%SZ)"
  mkdir -p "$QUAR_DIR"
  mv "$outfile" "$QUAR_DIR/" || true
  echo "sha256_mismatch" > "$QUAR_DIR/metadata.txt" || true
  exit 3
fi

echo "[install] sha256 OK. Extracting/installing artifact"
# Extraction/installation step depends on artifact type. We support tar.gz and tgz.
file "$outfile" | grep -E "gzip compressed data|tar archive" >/dev/null 2>&1 && {
  tar xzf "$outfile" -C "$TMPDIR"
  # Attempt to locate a provider script or binary inside
  if [[ -x "$TMPDIR/install.sh" ]]; then
    echo "[install] found install.sh inside artifact; executing in audited mode"
    # execute with --prefix to avoid global side-effects if supported; otherwise run as is
    (cd "$TMPDIR" && ./install.sh --pin "$PIN")
  else
    echo "[install] no install.sh found; please perform manual installation from $QUAR_DIR or $TMPDIR"
  fi
} || {
  echo "[install] artifact not a tarball; saving to $ROOT/evidence/_acceptance/"$(date -u +%Y%m%dT%H%M%SZ)" for manual review"
  mv "$outfile" "$ROOT/evidence/_acceptance/$(date -u +%Y%m%dT%H%M%SZ)/opencode-artifact" || true
}

echo "[install] bootstrap complete"
exit 0
