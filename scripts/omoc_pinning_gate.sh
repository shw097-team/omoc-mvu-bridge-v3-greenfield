#!/usr/bin/env bash
set -euo pipefail

# Pinning gate: forbid uses: <owner>/<repo>@v<digit> (mutable tags).
# Detect both list form and mapping form while ignoring local paths (./, ../)
# and pinned 40-char SHAs.

fail=0
hits=0
while IFS= read -r l; do
  hits=$((hits+1))
  echo "HIT: $l" >&2
  fail=1
done < <(rg -n --pcre2 "(^\s*-\s*uses:|^\s*uses:)\s*(?!\./)(?!\.\./)(?![0-9a-f]{40}).*@v[0-9]+" .github/workflows -S || true)

if [ "$hits" -gt 0 ]; then
  echo "FAIL_CLOSED: pinning gate detected mutable tag uses ($hits hits)" >&2
  exit 2
fi

echo "PASS: pinning gate (no mutable tags found)"
exit 0
