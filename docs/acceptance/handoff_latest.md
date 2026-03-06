# Acceptance Handoff Pointer — Latest

**Latest Acceptance Timestamp**: `20260305T071233Z`

## Acceptance Report Location

```
evidence/_acceptance/20260305T071233Z/acceptance_report.json
```

## Acceptance Verdict

- **Status**: PASS
- **Failed Gates**: 0
- **Test Tracking (TT)**: CR_OPEN count = 0 (all closed)
- **Upload Packet**: evidence/_acceptance/20260305T071233Z/upload/evidence_upload.txt

## VS Code Git Warning Fix

- **File**: `.vscode/settings.json`
- **Change**: Added git safety configurations to prevent false "nested repository" warnings
- **Configuration**:
  - `git.ignoreLimitWarning: true`
  - `git.ignoreSubmodules: false`
  - `git.repositoryScanMaxDepth: 0`
  - `git.ignoreRepositories: ["_tmp_github_docs"]`
- **Impact**: Suppresses spurious Git warnings when multiple `.git` directories exist in workspace (OpenCode swarm mode)

## Evidence Tree Status

**IMPORTANT**: The entire `evidence/` directory tree is **NOT versioned** and remains **local only**.

- **Excluded from Git**: All `evidence/` paths are in `.gitignore`
- **Not included in PR**: Evidence artifacts are never committed to version control
- **Evidence Location**: Generated locally in `evidence/_acceptance/<timestamp>/`
- **Upload Method**: Evidence is uploaded separately via external evidence system, NOT via GitHub PR

## Integration Points

### For Continuity
If resuming work:
1. Latest acceptance artifacts are in `evidence/_acceptance/20260305T071233Z/`
2. Latest acceptance report: `acceptance_report.json` in above directory
3. Handoff documentation: This file (`docs/acceptance/handoff_latest.md`)

### For External Submission
1. User submits: `evidence/_acceptance/20260305T071233Z/upload/evidence_upload.txt`
2. Supporting: `external_evidence_appendix.md` and `test_tracking_list.tsv` (maintained locally)
3. Git PR: Contains only code/config changes (VS Code fix, handoff doc), NOT evidence

## Compliance Notes

- **PR Merge**: This change (VS Code fix + handoff pointer) is code/config only
- **Evidence Integrity**: Separate from code commits; audit trail maintained locally
- **No Evidence Push**: GitHub PR does NOT include any acceptance artifacts
- **Timestamped**: Latest acceptance timestamp is authoritative reference

---

**Generated**: 2026-03-05T07:25:00Z
**Repository**: omoc-mvu-bridge-v3-greenfield  
**Branch**: Main (after PR merge)
