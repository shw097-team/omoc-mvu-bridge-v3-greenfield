#!/usr/bin/env python3
"""
CA-DSL-local runtime validation suite.
Validates: source resolvability, owner-doc presence, artifact presence/parseability, scope cleanliness.
Exit 0 if all probes pass; exit 1 if any fails.
"""

import json
import sys
from pathlib import Path

class RuntimeValidator:
    def __init__(self, ts):
        self.ts = ts
        self.results = []
        self.failures = []
    
    def probe_sources(self):
        """Probe 1: Direct-source resolvability (21 sources)"""
        sources = [
            "docs/_omoc_inputs/normative/OMOC_WP-001+RB+WI_v4.0.1-r2.md",
            "docs/_omoc_inputs/normative/OMOC_WP-002+RB+WI_v4.0.1-r2.md",
            "docs/_omoc_inputs/normative/OMOC_WP-003+RB+WI_v4.0.1-r2.md",
            "docs/_omoc_inputs/normative/OMOC_WP-004+RB+WI_v4.0.1-r2.md",
            "docs/_omoc_inputs/normative/OMOC_WP-005+RB+WI_v4.0.1-r2.md",
            "docs/_omoc_inputs/normative/OMOC_WP-006+RB+WI_v4.0.1-r2.md",
            "docs/_omoc_inputs/normative/OMOC_WP-007+RB+WI_v4.0.1-r2.md",
            "docs/_omoc_inputs/normative/OMOC_WP-008+RB+WI_v4.0.1-r2.md",
            "docs/_omoc_inputs/normative/OMOC_WP-009+RB+WI_v4.0.1-r2.md",
            "docs/_omoc_inputs/normative/OMOC_WP-010+RB+WI_v4.0.1-r2.md",
            "docs/_omoc_inputs/normative/OMOC_WP-011+RB+WI_v4.0.1-r2.md",
            "docs/_omoc_inputs/normative/OMOC_WP-012+RB+WI_v4.0.1-r2.md",
            "docs/_omoc_inputs/normative/OMOC_WP-013+RB+WI_v4.0.1-r2.md",
            "docs/_omoc_inputs/normative/OMOC_WP-014+RB+WI_v4.0.1-r2.md",
            "docs/_omoc_inputs/normative/OMOC_施工RBWI_v4.0.1-r1.md",
            "docs/_omoc_inputs/normative/OMOC_藍圖_v4.0.1-r1.md",
            "docs/_omoc_inputs/normative/OMOC_施工skills_合冊_v4.0.1-r2.md",
            "docs/_omoc_inputs/normative/OMOC_實作+WP總表_v4.0.1-r2.md",
            "docs/_omoc_inputs/normative/Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文r1.md",
            "docs/_omoc_inputs/normative/Spartoi-OMOC_系統需求正文r3.md",
            "docs/_omoc_inputs/normative/Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_WP-RB-WI_合冊.md",
        ]
        missing = [s for s in sources if not Path(s).exists()]
        if missing:
            self.failures.append(f"PROBE_SOURCES: {len(missing)} sources missing")
            return False
        self.results.append({"probe": "SOURCES", "status": "PASS", "count": len(sources)})
        return True
    
    def probe_owner_docs(self):
        """Probe 2: Owner-doc resolvability (3 CA-DSL docs)"""
        owner_docs = [
            "docs/_omoc_inputs/normative/Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_WP-RB-WI_合冊.md",
            "docs/_omoc_inputs/normative/Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_WP-M_合冊.md",
            "docs/_omoc_inputs/normative/Spartoi-OMOC_SubP1-LITE+MVP_CA-DSL_MC4+_合冊.md",
        ]
        missing = [d for d in owner_docs if not Path(d).exists()]
        if missing:
            self.failures.append(f"PROBE_OWNER_DOCS: {len(missing)} owner docs missing: {missing}")
            return False
        self.results.append({"probe": "OWNER_DOCS", "status": "PASS", "count": len(owner_docs)})
        return True
    
    def probe_artifacts(self):
        """Probe 3: Generated artifact presence"""
        artifacts = [
            "package_validation.json",
            "source_binding_matrix.tsv",
            "route_out_registry.json",
            "delivery_manifest.json",
        ]
        missing = [a for a in artifacts if not Path(a).exists()]
        if missing:
            self.failures.append(f"PROBE_ARTIFACTS: {len(missing)} artifacts missing: {missing}")
            return False
        self.results.append({"probe": "ARTIFACTS", "status": "PASS", "count": len(artifacts)})
        return True
    
    def probe_parseability(self):
        """Probe 4: Parseability (JSON/TSV integrity)"""
        json_files = ["package_validation.json", "route_out_registry.json", "delivery_manifest.json"]
        tsv_files = ["source_binding_matrix.tsv"]
        
        for jf in json_files:
            if Path(jf).exists():
                try:
                    with open(jf) as f:
                        json.load(f)
                except Exception as e:
                    self.failures.append(f"PROBE_PARSEABILITY: {jf} JSON invalid: {e}")
                    return False
        
        for tf in tsv_files:
            if Path(tf).exists():
                try:
                    with open(tf) as f:
                        lines = f.readlines()
                        if not lines:
                            self.failures.append(f"PROBE_PARSEABILITY: {tf} TSV empty")
                            return False
                except Exception as e:
                    self.failures.append(f"PROBE_PARSEABILITY: {tf} TSV read failed: {e}")
                    return False
        
        self.results.append({"probe": "PARSEABILITY", "status": "PASS"})
        return True
    
    def probe_scope_clean(self):
        """Probe 5: Scope cleanliness (no .github/ or forbidden paths)"""
        forbidden_patterns = [".github/workflows", ".github/actions", ".github/ISSUE_TEMPLATE"]
        
        import subprocess
        try:
            output = subprocess.check_output(["git", "ls-files"], text=True)
            git_files = output.strip().split('\n')
            for pattern in forbidden_patterns:
                if any(pattern in f for f in git_files):
                    self.failures.append(f"PROBE_SCOPE: forbidden path found: {pattern}")
                    return False
        except Exception as e:
            self.failures.append(f"PROBE_SCOPE: git ls-files failed: {e}")
            return False
        
        self.results.append({"probe": "SCOPE_CLEAN", "status": "PASS"})
        return True
    
    def run(self):
        """Execute all probes"""
        print("CA-DSL Runtime Validator - Executing Probes")
        print("=" * 50)
        
        all_pass = True
        all_pass &= self.probe_sources()
        all_pass &= self.probe_owner_docs()
        all_pass &= self.probe_artifacts()
        all_pass &= self.probe_parseability()
        all_pass &= self.probe_scope_clean()
        
        print("\nResults:")
        for r in self.results:
            print(f"  {r['probe']}: {r['status']}")
        
        if self.failures:
            print("\nFailures:")
            for f in self.failures:
                print(f"  ✗ {f}")
            return 1
        
        print("\n✓ All probes passed")
        return 0

if __name__ == "__main__":
    validator = RuntimeValidator("20260331T162326Z")
    sys.exit(validator.run())
