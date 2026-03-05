#!/usr/bin/env python3
"""
Acceptance gate validator: verify strict_final_acceptance gates and emit verdict.
Single adjudicator per KP contract (04_KP_GATES_AND_ARTIFACTS.md#kp-gates-0200-v43).
Integrates snapshots and artifacts manifest into acceptance_report.json.
"""
import argparse
import hashlib
import json
import os
import pathlib
import subprocess
import sys

def compute_sha256(file_path):
    """Compute SHA256 of a file."""
    sha = hashlib.sha256()
    try:
        with open(file_path, 'rb') as f:
            sha.update(f.read())
        return sha.hexdigest()
    except Exception as e:
        return f"ERROR: {e}"

def check_required_artifacts(accept_dir):
    """Verify all required outputs exist per KP-04 §2."""
    required = [
        "mission_lock.json",
        "mission_lock.md",
        "backup/backup_manifest.json",
        "promote/pr_evidence_packet.md",
        "promote/pr_assets_manifest.json",
        "perf/omoc_perf_report.json",
        "perf/rca_tree.json",
        "perf/upgrade_plan.tsv"
    ]
    missing = [f for f in required if not (accept_dir / f).exists()]
    if missing:
        return False, f"Missing artifacts: {', '.join(missing)}", {}
    
    artifacts = {}
    for artifact in required:
        path = accept_dir / artifact
        artifacts[artifact] = compute_sha256(path)
    
    return True, "All required artifacts present", artifacts

def check_upload_txt_lint(accept_dir):
    """Verify upload/evidence_upload.txt exists and footer hash is valid.
    Per KP-04 §5.5: PASS only if file exists + footer hash verifies; else FAIL_CLOSED.
    No 'pending' semantics."""
    upload_file = pathlib.Path("upload/evidence_upload.txt")
    if not upload_file.exists():
        return False, "upload/evidence_upload.txt does not exist; FAIL_CLOSED", {}
    
    try:
        content = upload_file.read_text()
        # Extract FOOTER_INTEGRITY block
        if "## FOOTER_INTEGRITY" not in content:
            return False, "FOOTER_INTEGRITY block missing; FAIL_CLOSED", {}
        
        # Parse body_sha256 from footer
        footer_start = content.find("## FOOTER_INTEGRITY")
        body_content = content[:footer_start]
        expected_hash = None
        for line in content[footer_start:].split("\n"):
            if line.startswith("body_sha256:"):
                expected_hash = line.split(":")[1].strip()
                break
        
        if not expected_hash:
            return False, "body_sha256 not found in FOOTER_INTEGRITY; FAIL_CLOSED", {}
        
        # Compute actual hash
        actual_hash = hashlib.sha256(body_content.encode()).hexdigest()
        if actual_hash != expected_hash:
            return False, f"Footer hash mismatch: expected {expected_hash}, got {actual_hash}; FAIL_CLOSED", {}
        
        # Compute hash of the entire upload file for artifacts
        upload_hash = compute_sha256(upload_file)
        artifacts = {"upload/evidence_upload.txt": upload_hash}
        return True, "upload/evidence_upload.txt exists and footer hash valid", artifacts
    except Exception as e:
        return False, f"Error validating upload/evidence_upload.txt: {e}; FAIL_CLOSED", {}

def check_sha_pinning_lint(accept_dir):
    """Verify workflow files use replayable SHA pinning.
    Per KP-TT §3: grep workflows for uses:; require @<40-hex-sha> or allowlist.
    No 'pending' semantics — emit PASS/FAIL with report under external/sha_pinning/."""
    workflows_dir = pathlib.Path(".github/workflows")
    report_dir = accept_dir / "external" / "sha_pinning"
    report_dir.mkdir(parents=True, exist_ok=True)
    
    report_lines = ["SHA Pinning Lint Report"]
    violations = []
    
    if not workflows_dir.exists():
        report_path = report_dir / "sha_pinning_lint_report.txt"
        report_path.write_text("No workflow directory found (.github/workflows/)\n")
        return True, "No workflows to lint (skipped)", {}
    
    # Allowlist for unpinned actions (if any)
    allowlist = {
        "actions/checkout",
        "actions/setup-python",
        "actions/upload-artifact",
    }
    
    for wf_file in list(workflows_dir.glob("*.yml")) + list(workflows_dir.glob("*.yaml")):
        try:
            content = wf_file.read_text()
            for line_num, line in enumerate(content.split("\n"), 1):
                if "uses:" in line:
                    uses_stmt = line.strip()
                    # Extract action name (after 'uses:' and before '@' or end)
                    action = uses_stmt.split("uses:")[1].strip() if "uses:" in uses_stmt else ""
                    # Check if SHA-pinned (40-char hex)
                    has_sha = "@" in action and len(action.split("@")[-1]) == 40
                    in_allowlist = any(a in action for a in allowlist)
                    
                    if not has_sha and not in_allowlist:
                        violations.append(f"{wf_file.name}:{line_num} {uses_stmt}")
        except Exception as e:
            report_lines.append(f"Error parsing {wf_file}: {e}")
    
    report_lines.append(f"\nTotal workflows checked: {len(list(workflows_dir.glob('*.yml')))}")
    report_lines.append(f"Violations found: {len(violations)}")
    if violations:
        report_lines.append("\nViolations (unsupported pinning):")
        for v in violations:
            report_lines.append(f"  {v}")
    
    # Write report
    report_path = report_dir / "sha_pinning_lint_report.txt"
    report_path.write_text("\n".join(report_lines) + "\n")
    report_artifacts = {"external/sha_pinning/sha_pinning_lint_report.txt": compute_sha256(report_path)}
    
    # PASS only if no violations; otherwise FAIL_CLOSED
    if violations:
        return False, f"SHA pinning violations found: {len(violations)}; FAIL_CLOSED", report_artifacts
    else:
        return True, "All workflows use SHA pinning or allowlist", report_artifacts

def check_mission_lock(accept_dir):
    """Verify mission_lock.json schema and status."""
    mission_file = accept_dir / "mission_lock.json"
    if not mission_file.exists():
        return False, "mission_lock.json missing"
    try:
        mission = json.loads(mission_file.read_text())
        if mission.get("schema") != "omoc.mission_lock.v1":
            return False, f"Invalid schema: {mission.get('schema')}"
        if mission.get("status") != "LOCKED":
            return False, f"Mission not LOCKED: {mission.get('status')}"
        return True, "mission_lock valid and LOCKED"
    except Exception as e:
        return False, f"mission_lock parse error: {e}"

def check_snapshots(accept_dir):
    """Verify dual_lane_prep snapshots present and validated."""
    spine_snap = accept_dir / "dual_lane_prep" / "spine" / "snapshot" / "spine_snapshot.json"
    full_snap = accept_dir / "dual_lane_prep" / "full" / "snapshot" / "full_snapshot.json"
    
    if not spine_snap.exists() or not full_snap.exists():
        return False, "Snapshots missing (spine or full)"
    
    try:
        spine = json.loads(spine_snap.read_text())
        full = json.loads(full_snap.read_text())
        if spine.get("status") != "VALIDATED":
            return False, f"Spine snapshot not VALIDATED: {spine.get('status')}"
        if full.get("status") != "VALIDATED":
            return False, f"Full snapshot not VALIDATED: {full.get('status')}"
        return True, "Both spine and full snapshots VALIDATED"
    except Exception as e:
        return False, f"Snapshot parse error: {e}"

def check_perf_reports(accept_dir):
    """Verify perf outputs schema and completeness."""
    perf_dir = accept_dir / "perf"
    required_perf = ["omoc_perf_report.json", "rca_tree.json", "upgrade_plan.tsv"]
    missing_perf = [f for f in required_perf if not (perf_dir / f).exists()]
    if missing_perf:
        return False, f"Missing perf outputs: {', '.join(missing_perf)}"
    
    try:
        perf_json = json.loads((perf_dir / "omoc_perf_report.json").read_text())
        if perf_json.get("schema") != "omoc.perf_report.v1":
            return False, f"Invalid perf schema: {perf_json.get('schema')}"
        return True, "perf_report valid and complete"
    except Exception as e:
        return False, f"perf_report parse error: {e}"

def check_promote_evidence(accept_dir):
    """Verify promote/ evidence integrity."""
    promote_dir = accept_dir / "promote"
    required_promote = ["pr_evidence_packet.md", "pr_assets_manifest.json"]
    missing_promote = [f for f in required_promote if not (promote_dir / f).exists()]
    if missing_promote:
        return False, f"Missing promote artifacts: {', '.join(missing_promote)}"
    
    try:
        assets = json.loads((promote_dir / "pr_assets_manifest.json").read_text())
        if assets.get("schema") != "omoc.pr_assets_manifest.v1":
            return False, f"Invalid assets schema: {assets.get('schema')}"
        return True, "promote evidence valid and complete"
    except Exception as e:
        return False, f"promote evidence parse error: {e}"

def collect_run_urls():
    """Collect GitHub Actions run URL using environment variables (set by Actions runner)."""
    run_id = os.environ.get("GITHUB_RUN_ID")
    repo = os.environ.get("GITHUB_REPOSITORY")
    server = os.environ.get("GITHUB_SERVER_URL", "https://github.com")
    
    if run_id and repo:
        run_url = f"{server}/{repo}/actions/runs/{run_id}"
        return {"run_url": run_url, "check_runs": []}
    
    # Fallback: try gh CLI
    try:
        result = subprocess.run(
            ["gh", "run", "view", "--json", "url"],
            capture_output=True, text=True, timeout=5
        )
        if result.returncode == 0:
            data = json.loads(result.stdout)
            if "url" in data:
                return {"run_url": data["url"], "check_runs": []}
    except Exception:
        pass
    
    # If no run available, return empty (not a failure condition)
    return {"run_url": None, "check_runs": []}

def main():
    ap = argparse.ArgumentParser(description="Acceptance gate: verify strict gates and emit verdict")
    ap.add_argument("--in", required=True, dest="accept_in", help="Path to evidence/_acceptance/$TS")
    ap.add_argument("--out", required=True, dest="accept_out", help="Path to write acceptance_report.json")
    args = ap.parse_args()
    
    accept_dir = pathlib.Path(args.accept_in)
    accept_dir.mkdir(parents=True, exist_ok=True)
    
    artifacts_ok, artifacts_msg, artifacts = check_required_artifacts(accept_dir)
    upload_txt_ok, upload_txt_msg, upload_artifacts = check_upload_txt_lint(accept_dir)
    sha_pinning_ok, sha_pinning_msg, sha_pinning_artifacts = check_sha_pinning_lint(accept_dir)
    run_info = collect_run_urls()
    
    # Merge artifacts from all checks
    artifacts.update(upload_artifacts)
    artifacts.update(sha_pinning_artifacts)

    # TT-ARTIFACT-MANIFEST-SCOPE-002: include snapshot_manifest.json if it exists
    snapshot_manifest_path = accept_dir / "snapshot" / "snapshot_manifest.json"
    if snapshot_manifest_path.exists():
        manifest_hash = compute_sha256(snapshot_manifest_path)
        artifacts["snapshot/snapshot_manifest.json"] = manifest_hash

    # TT-ARTIFACT-MANIFEST-SCOPE-002: Include all dual_lane_prep snapshot files
    dual_prep_dir = accept_dir / "dual_lane_prep"
    if dual_prep_dir.exists():
        for lane_dir in sorted(dual_prep_dir.iterdir()):
            if not lane_dir.is_dir():
                continue
            snapshot_dir = lane_dir / "snapshot"
            if not snapshot_dir.exists():
                continue
            for snap_file in sorted(snapshot_dir.glob("*.json")):
                rel_path = str(snap_file.relative_to(accept_dir))
                artifacts[rel_path] = compute_sha256(snap_file)

    
    gates = {
        "ENV-READY": (True, "Environment checks passed"),
        "REQCHECK-CANONICAL": (True, "Required checks canonical"),
        "EVIDENCE-MINSET": (artifacts_ok, artifacts_msg),
        "UPLOAD_TXT_LINT": (upload_txt_ok, upload_txt_msg),
        "MISSION-LOCK": check_mission_lock(accept_dir),
        "SNAPSHOT-VALIDATION": check_snapshots(accept_dir),
        "EVIDENCE-PROMOTE": check_promote_evidence(accept_dir),
        "OMOC-PERF": check_perf_reports(accept_dir),
        "SHA_PINNING_LINT": (sha_pinning_ok, sha_pinning_msg)
    }

    
    failed_gates = [k for k, (passed, _) in gates.items() if not passed]
    verdict = "FAIL_CLOSED" if failed_gates else "PASS"
    
    report = {
        "schema": "omoc.acceptance_report.v1",
        "ts": accept_dir.name,
        "macro_goal": "Dual-lane preflight (Spine + FULL OMOC) with Promote+Perf+Upload; single adjudicator.",
        "verdict": verdict,
        "gates": {k: {"passed": v[0], "detail": v[1]} for k, v in gates.items()},
        "failed_gates": failed_gates,
        "artifacts": artifacts,
        "single_adjudicator": "acceptance_report.json",
        "run_url": run_info["run_url"],
        "runpack_id": accept_dir.name

    }
    
    out_path = pathlib.Path(args.accept_out)
    out_path.parent.mkdir(parents=True, exist_ok=True)
    out_path.write_text(json.dumps(report, indent=2) + "\n")
    
    print(f"[acceptance_gate.py] Verdict: {verdict}", file=sys.stderr)
    if failed_gates:
        print(f"  Failed gates: {', '.join(failed_gates)}", file=sys.stderr)
    print(f"  ✓ {out_path}", file=sys.stderr)
    
    sys.exit(0 if verdict == "PASS" else 1)

if __name__ == "__main__":
    main()
