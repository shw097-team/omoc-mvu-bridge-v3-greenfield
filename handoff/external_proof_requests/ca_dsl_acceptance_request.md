# Request: CA-DSL consumer acceptance

required_proof:
- Consumer acceptance document for CA-DSL (signed acceptance or test report)

required_locator:
- contracts/external/ca_dsl/

acceptable_evidence_shape:
- contracts/external/ca_dsl/ca_dsl_acceptance.pdf
- contracts/external/ca_dsl/ca_dsl_acceptance.json {"accepted_by":"team","ts":"...","notes":"..."}

stopline:
- Consumer acceptance required to unblock DSL-related changes.

close_criteria:
- Acceptance file present and signer/owner indicated.

target_landing_path:
- contracts/external/ca_dsl/

revalidation_hook:
- python3 scripts/ca_distill_validate.py
