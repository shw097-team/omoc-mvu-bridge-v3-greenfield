#!/bin/bash
# Compat shim: omoc_collect_checks_manifest.sh
# Collects CI check manifest for governance validation

set -euo pipefail

echo "Collecting checks manifest..."
cat > checks_manifest.json <<'MANIFEST'
{
  "schema": "omoc.checks_manifest.v1",
  "timestamp": "'$(date -u +%Y%m%dT%H%M%SZ)'",
  "expected": [],
  "observed": [],
  "diff": [],
  "verdict": "PENDING",
  "note": "Manifest collector compat shim - details populated by CI gateway"
}
MANIFEST
cat > evidence_index.md <<'INDEX'
# Evidence Index

- checks_manifest.json: CI check status
- verdict.json: Adjudication verdict (if available)

INDEX

echo "✓ Checks manifest created"
