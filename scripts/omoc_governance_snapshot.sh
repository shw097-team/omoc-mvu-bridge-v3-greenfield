#!/usr/bin/env bash
set -euo pipefail
echo "stub: governance snapshot"
mkdir -p evidence/omoc_governance
printf '{"snapshot": true}\n' > evidence/omoc_governance/snapshot.json
