# Request: Package D proof

required_proof:
- Owner-supplied compliance evidence for Package D (PDF/JSON or zipped artifacts)

required_locator:
- contracts/external/package_d/

acceptable_evidence_shape:
- contracts/external/package_d/package_d_certificate.pdf
- contracts/external/package_d/package_d_manifest.json

stopline:
- Blocking until provided; needed for release decision.

close_criteria:
- Evidence file present and references verified owner/team contact.

target_landing_path:
- contracts/external/package_d/

revalidation_hook:
- python3 scripts/ca_distill_validate.py
