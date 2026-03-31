# Request: Package B proof

required_proof:
- Signed contract or official evidence demonstrating Package B compliance (PDF or JSON manifest)

required_locator:
- Place proof under: contracts/external/package_b/

acceptable_evidence_shape:
- Preferred: contracts/external/package_b/package_b_contract.pdf
- Alternate: contracts/external/package_b/package_b_manifest.json {"name":"Package B","version":"...","signed_by":"..."}

stopline:
- Proof must be provided before release can proceed. This is a release-blocking item.

close_criteria:
- File exists at required_locator and contains signer metadata or verifiable signature.

target_landing_path:
- contracts/external/package_b/

revalidation_hook:
- python3 scripts/ca_distill_validate.py
