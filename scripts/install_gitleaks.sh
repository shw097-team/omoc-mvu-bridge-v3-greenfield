#!/usr/bin/env bash
# scripts/install_gitleaks.sh
# Install gitleaks from pinned version in config/gitleaks.lock
# Exit codes: 0=OK, 97=LOCK_INCOMPLETE, 98=UNSUPPORTED_PLATFORM, 99=OTHER_ERROR

set -eu

readonly SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
readonly REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
readonly LOCK_FILE="$REPO_ROOT/config/gitleaks.lock"
readonly INSTALL_DIR="$REPO_ROOT/.tools/gitleaks"
readonly BIN_DIR="$INSTALL_DIR/bin"
readonly GITLEAKS_BIN="$BIN_DIR/gitleaks"

# === Helpers ===
log_info() {
  echo "[gitleaks-install] $*" >&2
}

log_error() {
  echo "[gitleaks-install] ERROR: $*" >&2
}

# === Check lock file ===
if [[ ! -f "$LOCK_FILE" ]]; then
  log_error "Lock file not found: $LOCK_FILE"
  exit 97
fi

source "$LOCK_FILE"

if [[ -z "${GITLEAKS_VERSION:-}" || -z "${GITLEAKS_SHA256_linux_x64:-}" || -z "${ASSET_linux_x64:-}" ]]; then
  log_error "Lock file incomplete. Required: GITLEAKS_VERSION, GITLEAKS_SHA256_linux_x64, ASSET_linux_x64"
  exit 97
fi

# Check for placeholder values
if [[ "$GITLEAKS_SHA256_linux_x64" == "__FILL_ME__" || "$GITLEAKS_VERSION" == "__FILL_ME__" ]]; then
  log_error "Lock file contains placeholder values (__FILL_ME__). Cannot proceed."
  exit 97
fi

log_info "Lock file read: VERSION=$GITLEAKS_VERSION, SHA256=${GITLEAKS_SHA256_linux_x64:0:16}..."

# === Idempotent check: already installed? ===
if [[ -x "$GITLEAKS_BIN" ]]; then
  INSTALLED_VERSION=$("$GITLEAKS_BIN" --version 2>/dev/null || echo "unknown")
  log_info "gitleaks already installed at $GITLEAKS_BIN: $INSTALLED_VERSION"
  exit 0
fi

# === Platform check ===
PLATFORM="$(uname -s)"
ARCH="$(uname -m)"

if [[ "$PLATFORM" != "Linux" || "$ARCH" != "x86_64" ]]; then
  log_error "Unsupported platform: $PLATFORM/$ARCH (only Linux/x86_64 supported)"
  exit 98
fi

log_info "Platform: $PLATFORM/$ARCH (supported)"

# === Create directories ===
mkdir -p "$BIN_DIR" || {
  log_error "Failed to create directory: $BIN_DIR"
  exit 99
}

# === Download ===
readonly ASSET_URL="https://github.com/gitleaks/gitleaks/releases/download/${GITLEAKS_VERSION}/${ASSET_linux_x64}"
readonly TEMP_DIR=$(mktemp -d)
trap "rm -rf '$TEMP_DIR'" EXIT

log_info "Downloading from $ASSET_URL"
if ! curl -fL "$ASSET_URL" -o "$TEMP_DIR/gitleaks.tgz"; then
  log_error "Failed to download asset"
  exit 99
fi

log_info "Download complete. Verifying sha256..."

# === Verify sha256 ===
COMPUTED_SHA=$(sha256sum "$TEMP_DIR/gitleaks.tgz" | cut -d' ' -f1)
if [[ "$COMPUTED_SHA" != "$GITLEAKS_SHA256_linux_x64" ]]; then
  log_error "SHA256 mismatch!"
  log_error "  Expected: $GITLEAKS_SHA256_linux_x64"
  log_error "  Got:      $COMPUTED_SHA"
  exit 99
fi

log_info "SHA256 verified: $COMPUTED_SHA"

# === Extract ===
log_info "Extracting tarball..."
if ! tar -xzf "$TEMP_DIR/gitleaks.tgz" -C "$TEMP_DIR"; then
  log_error "Failed to extract tarball"
  exit 99
fi

# === Find and install binary ===
# gitleaks tarball typically contains: gitleaks (binary) directly
if [[ ! -f "$TEMP_DIR/gitleaks" ]]; then
  log_error "gitleaks binary not found in tarball"
  exit 99
fi

if ! cp "$TEMP_DIR/gitleaks" "$GITLEAKS_BIN"; then
  log_error "Failed to copy gitleaks binary to $GITLEAKS_BIN"
  exit 99
fi

if ! chmod +x "$GITLEAKS_BIN"; then
  log_error "Failed to make gitleaks executable"
  exit 99
fi

log_info "gitleaks installed successfully: $GITLEAKS_BIN"

# === Verify installation ===
if ! "$GITLEAKS_BIN" --version; then
  log_error "Failed to run gitleaks --version"
  exit 99
fi

log_info "Installation verified. Version: $("$GITLEAKS_BIN" --version)"
log_info "Install directory: $INSTALL_DIR"
log_info "To use: export PATH=\"$BIN_DIR:\$PATH\" && gitleaks detect ..."

exit 0
