OMOC RIP-C Validation Report
TS: 20260222T161724Z
Overall verdict: PASS
Contract SHA256: 21e61c12d45311afa9a17eb64dab577b08bbd9e504cad63555c1e9db370989b0

Required files diff:
- scripts/omoc_preflight.sh: expected=file observed=file exists=true severity=MAJOR
- scripts/omoc_install_skills_pack.sh: expected=file observed=file exists=true severity=BLOCKER
- scripts/omoc_validate_contracts.sh: expected=file observed=file exists=true severity=BLOCKER
- scripts/probe_opencode_runtime.sh: expected=file observed=file exists=true severity=MAJOR
- config/skills_pack_manifest.json: expected=file observed=file exists=true severity=MAJOR
- config/skills_pack.lock.json: expected=file observed=file exists=true severity=MAJOR
- config/required_files.json: expected=file observed=file exists=true severity=BLOCKER
- docs/skills_pack_src: expected=dir observed=dir exists=true severity=BLOCKER
- docs/skills_pack_src/README.md: expected=file observed=file exists=true severity=BLOCKER
- .opencode/policy/skills_runtime_policy.yaml: expected=file observed=file exists=true severity=MAJOR
- .opencode/skills/omoc-skillpack-bootstrap/SKILL.md: expected=file observed=file exists=true severity=MAJOR
- .ohmy: expected=dir observed=dir exists=true severity=BLOCKER
- .ohmy/README.md: expected=file observed=file exists=true severity=BLOCKER

Secrets scan: contents of evidence/skills_pack_validation/20260222T161724Z/secrets_hits.txt
(no hits)
