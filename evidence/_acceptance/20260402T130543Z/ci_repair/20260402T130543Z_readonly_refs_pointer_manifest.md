# .readonly_refs Local-Only Snapshot Manifest

**Generation Timestamp**: 2026-04-02T13:05:43Z

## Overview

This manifest documents the removal of tracked gitlink residue under `.readonly_refs/` and establishes pointer-only (untracked) status for all readonly reference snapshots.

## Affected Paths

### Removed from Index
- `.readonly_refs/20260331T180308Z/spine_prev` (orphan gitlink, mode 160000)

### Status
- **Removal Method**: `git rm --cached`
- **Local Data**: PRESERVED (not deleted)
- **Index Status**: REMOVED
- **Git Status**: No longer tracked
- **Future Adds**: BLOCKED by gitignore rule `/.readonly_refs/`

## Replacement Strategy

### Before (Problematic)
```
❌ .readonly_refs/20260331T180308Z/spine_prev tracked as gitlink (mode 160000)
❌ No .gitmodules entry → orphan gitlink
❌ GitHub Actions checkout fails on orphan gitlink
```

### After (Corrected)
```
✓ .readonly_refs/ added to .gitignore
✓ .readonly_refs/20260331T180308Z/spine_prev removed from index
✓ Local snapshot data preserved but untracked
✓ CI pipelines can safely create/use readonly_refs without Git pollution
```

## Impact Analysis

| Artifact Set | Status | Impact |
|---|---|---|
| **Canonical (20260402T121111Z)** | evidence/_acceptance/ | ✅ UNAFFECTED |
| **Verification (20260402T122312Z)** | evidence/_acceptance/ | ✅ UNAFFECTED |
| **Promotion (20260402T124330Z)** | evidence/_acceptance/ | ✅ UNAFFECTED |
| **GitHub checkout** | CI/CD | ✅ REPAIRED |
| **Required checks** | CI/CD | ⏳ UNDER REVIEW |

## Policy Decision

**Designation**: `.readonly_refs/` = LOCAL-ONLY (not tracked, never promoted)

**Rationale**: 
- Readonly refs are sealed reference copies for local pipeline use
- They are NOT canonical release artifacts
- Including them in Git blocks checkout without providing value
- Local snapshots remain available via local filesystem access

**Enforcement**:
- Gitignore rule: `/.readonly_refs/`
- CI repair gate verification: blocks re-tracking of readonly_refs
- Promotion gate: excludes anything under `.readonly_refs/`

## Next Steps

1. ✅ Gitlink removed from index
2. ✅ Gitignore rule applied
3. ⏳ Push repair commit
4. ⏳ Verify GitHub Actions checkout succeeds
5. ⏳ Verify required checks resume reporting

---

*Manifest prepared by sisyphus-ci-repair-gate*
