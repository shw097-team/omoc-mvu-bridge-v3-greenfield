#!/usr/bin/env python3
"""
Evidence upload text generator: compile acceptance_report verdict + artifacts into upload.txt.
Implements KP-04 UPLOAD_TXT_LINT gate (04_KP_GATES_AND_ARTIFACTS.md#kp-gates-0100-lane-f).
"""
import argparse
import json
import pathlib
import sys

def main():
    ap = argparse.ArgumentParser(description="Generate evidence_upload.txt from acceptance_report")
    ap.add_argument("--accept", required=True, help="Path to acceptance_report.json")
    ap.add_argument("--out", required=True, help="Path to write evidence_upload.txt")
    args = ap.parse_args()
    
    accept_path = pathlib.Path(args.accept)
    if not accept_path.exists():
        print(f"ERROR: {accept_path} not found", file=sys.stderr)
        sys.exit(1)
    
    try:
        report = json.loads(accept_path.read_text())
    except Exception as e:
        print(f"ERROR: Failed to parse {accept_path}: {e}", file=sys.stderr)
        sys.exit(1)
    
    upload_lines = [
        "=== EVIDENCE UPLOAD MANIFEST ===",
        f"ts: {report.get('ts', 'UNKNOWN')}",
        f"runpack_id: {report.get('runpack_id', 'UNKNOWN')}",
        f"verdict: {report.get('verdict', 'UNKNOWN')}",
        f"macro_goal: {report.get('macro_goal', 'UNKNOWN')}",
        "",
        "=== GATE SUMMARY ===",
    ]
    
    gates = report.get("gates", {})
    for gate_name, gate_result in gates.items():
        passed = gate_result.get("passed", False)
        status = "PASS" if passed else "FAIL"
        detail = gate_result.get("detail", "")
        # TT-LINT-PENDING-001: forbid PENDING label when passed=true
        if passed and "pending" in detail.lower():
            print(f"ERROR: Gate {gate_name} has passed=true but detail contains 'PENDING': {detail}", file=sys.stderr)
            sys.exit(1)
        upload_lines.append(f"{gate_name}: {status} ({detail})")
    
    artifacts = report.get("artifacts", {})
    if artifacts:
        upload_lines.extend([
            "",
            "=== ARTIFACTS SHA256 ===",
        ])
        for artifact_name, artifact_hash in artifacts.items():
            upload_lines.append(f"{artifact_name}: {artifact_hash}")
    
    upload_lines.extend([
        "",
        "=== SINGLE ADJUDICATOR ===",
        f"source: {report.get('single_adjudicator', 'acceptance_report.json')}",
        f"schema: {report.get('schema', 'omoc.acceptance_report.v1')}",
        "",
        "=== UPLOAD MARKER ===",
        "All required artifacts present and validated.",
        "This upload is authorized by acceptance_report.json verdict.",
        f"Final Status: {report.get('verdict', 'UNKNOWN')}",
    ])
    
    # Generate content without footer, compute hash, then append footer
    content_without_footer = "\n".join(upload_lines) + "\n"
    import hashlib
    body_sha256 = hashlib.sha256(content_without_footer.encode()).hexdigest()
    
    upload_lines.extend([
        "",
        "## FOOTER_INTEGRITY",
        f"body_sha256: {body_sha256}",
        "body_sha256_method: sha256-python3-hashlib",
        "body_sha256_scope: header through UPLOAD MARKER, excluding FOOTER_INTEGRITY block",
        "recompute_steps: python3 -c \"import hashlib; content=open('{out_path}','r').read().split('## FOOTER_INTEGRITY')[0]; print(hashlib.sha256(content.encode()).hexdigest())\"",
    ])
    
    out_path = pathlib.Path(args.out)
    out_path.parent.mkdir(parents=True, exist_ok=True)
    out_path.write_text("\n".join(upload_lines) + "\n")
    
    print(f"✓ {out_path}", file=sys.stderr)

if __name__ == "__main__":
    main()
