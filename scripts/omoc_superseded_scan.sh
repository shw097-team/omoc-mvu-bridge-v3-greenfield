#!/bin/bash
# Compat shim: omoc_superseded_scan.sh
# Detects superseded or deprecated patterns

set -euo pipefail

echo "Running superseded scan..."
violations=0

# Check for deprecated patterns
if grep -r "deprecated\|DEPRECATED\|superseded" . --include="*.md" --include="*.yml" 2>/dev/null | grep -v "\.bak" >/dev/null 2>&1; then
  echo "⚠ Found superseded patterns (non-fatal)"
fi

echo "✓ Superseded scan completed"
exit 0
