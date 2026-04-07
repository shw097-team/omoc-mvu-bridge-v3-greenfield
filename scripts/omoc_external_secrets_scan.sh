#!/bin/bash
# Compat shim: omoc_external_secrets_scan.sh
# Performs secrets scan using gitleaks (must be installed in $PATH)

set -euo pipefail

echo "Running secrets scan..."
if ! command -v gitleaks &> /dev/null; then
  echo "ERROR: gitleaks not found. Must be installed before calling this script."
  exit 1
fi

# Run gitleaks scan
if gitleaks detect --no-color --report-format sarif -o /dev/null 2>/dev/null; then
  echo "✓ Secrets scan PASSED (0 findings)"
  exit 0
else
  # gitleaks returns non-zero if findings detected
  echo "✗ Secrets scan FAILED (findings detected)"
  exit 1
fi
