# Request: Ops rollback drill results

required_proof:
- Results from an operations rollback drill demonstrating rollback capability and lessons learned.

required_locator:
- contracts/external/ops_rollback/

acceptable_evidence_shape:
- contracts/external/ops_rollback/rollback_results.pdf
- contracts/external/ops_rollback/rollback_artifacts.zip

stopline:
- Ops confirmation required to proceed with release; considered blocking.

close_criteria:
- Drill results uploaded and accessible under required_locator.

target_landing_path:
- contracts/external/ops_rollback/

revalidation_hook:
- python3 scripts/ca_distill_validate.py
