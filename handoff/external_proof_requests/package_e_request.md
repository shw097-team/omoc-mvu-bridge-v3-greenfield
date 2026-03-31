# Request: Package E proof

required_proof:
- Proof of compliance or contract for Package E from owning team.

required_locator:
- contracts/external/package_e/

acceptable_evidence_shape:
- contracts/external/package_e/package_e_contract.pdf
- contracts/external/package_e/package_e_manifest.json

stopline:
- Required prior to release decision; considered a hard stopper.

close_criteria:
- Presence of signed document or verifiable metadata in manifest.

target_landing_path:
- contracts/external/package_e/

revalidation_hook:
- python3 scripts/ca_distill_validate.py
