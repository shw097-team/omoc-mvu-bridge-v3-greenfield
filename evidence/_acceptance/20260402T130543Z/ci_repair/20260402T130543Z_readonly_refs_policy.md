# .readonly_refs Local-Only Policy

**Effective Date**: 2026-04-02T13:05:43Z

## Policy Statement

The `.readonly_refs/` directory is designated as **LOCAL-ONLY** and must NEVER be tracked in Git or promoted to GitHub.

## Rationale

- `.readonly_refs/` contains sealed local snapshots of evidence branches
- These are read-only reference copies for local CI/CD pipeline support
- They are NOT canonical artifacts and should not enter Git history
- Including them as gitlinks/submodules blocks GitHub Actions checkout

## Implementation

### Gitignore Rule
```
/.readonly_refs/
```

This rule is now enforced in `.gitignore` to prevent accidental tracking.

### Existing Tracked Residue (REMOVED)
- **Path**: `.readonly_refs/20260331T180308Z/spine_prev`
- **Issue**: Orphan gitlink (mode 160000) without .gitmodules entry
- **Status**: REMOVED from index via `git rm --cached`
- **Local Data**: PRESERVED (not deleted, only un-tracked)

### Future Protection
- All future `.readonly_refs/` additions will be automatically ignored
- CI pipelines can safely create/modify `.readonly_refs/` without risk of accidental tracking
- Local snapshots remain available for pipeline use without polluting Git history

## Canonical vs Local-Only Distinction

| Category | Location | Tracked? | Promoted? | Use |
|----------|----------|----------|-----------|-----|
| **Canonical** | `evidence/_acceptance/<TS>/` | YES | YES | Release evidence, approval records |
| **Readonly refs** | `.readonly_refs/<TS>/` | NO | NO | Local pipeline snapshots only |

---

**Policy enforced by**: sisyphus-ci-repair-gate  
**Last updated**: 2026-04-02T13:05:43Z
