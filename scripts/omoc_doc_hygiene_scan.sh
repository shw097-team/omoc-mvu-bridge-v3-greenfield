#!/bin/bash
# Compat shim: omoc_doc_hygiene_scan.sh
# Checks documentation for common hygiene issues

set -euo pipefail

echo "Running doc hygiene scan..."
# Scan for common issues (e.g., OpenAI cite, broken refs)
violations=0
if grep -r "oaicite\|OpenAI\[" docs/ 2>/dev/null | grep -v "\.bak\|\.tmp" >/dev/null 2>&1; then
  violations=$((violations + 1))
  echo "⚠ Found potential citation issues"
fi

if [ $violations -eq 0 ]; then
  echo "✓ Doc hygiene scan PASSED"
  exit 0
else
  echo "✗ Doc hygiene scan FAILED ($violations issues)"
  exit 1
fi
