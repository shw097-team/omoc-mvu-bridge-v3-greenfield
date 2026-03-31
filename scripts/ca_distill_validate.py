#!/usr/bin/env python3
"""
Bootstrap validator script for CA-DISTILL.

This module contains concise comments to explain key validation steps
because the validator's behavior must be explicit for maintainers
who will review bootstrap acceptance artifacts. Comments are minimal
and focused on purpose, not prose.
"""

import json, sys, os
from jsonschema import validate, ValidationError

TS = "20260331T153135Z"

def load_json(p):
    with open(p) as f:
        return json.load(f)

def main():
    base = os.path.abspath(os.path.dirname(__file__) + '/../')
    schema_dir = os.path.join(base, 'schemas')
    runtime_dir = os.path.join(base, 'docs/subsystems/CA-DISTILL/runtime')
    out = {"ts": TS, "checks": []}

    # Check files exist in expected runtime location
    bundle_path = os.path.join(runtime_dir, 'distill_bundle.json')
    pack_path = os.path.join(runtime_dir, 'distill_pack.json')

    out['checks'].append({'file_exists': {'path': bundle_path, 'exists': os.path.exists(bundle_path)}})
    out['checks'].append({'file_exists': {'path': pack_path, 'exists': os.path.exists(pack_path)}})

    # Load JSON schemas used to validate bundle and pack
    try:
        bundle_schema = load_json(os.path.join(schema_dir, 'distill_bundle.schema.json'))
        pack_schema = load_json(os.path.join(schema_dir, 'distill_pack.schema.json'))
    except Exception as e:
        out['schema_load_error'] = str(e)
        print(json.dumps(out, indent=2))
        sys.exit(2)

    # Validate bundle against schema if present
    if os.path.exists(bundle_path):
        try:
            b = load_json(bundle_path)
            validate(instance=b, schema=bundle_schema)
            out['checks'].append({'schema_validation': 'bundle: PASS'})
        except ValidationError as e:
            out['checks'].append({'schema_validation': f'bundle: FAIL {str(e.message)}'})
        except Exception as e:
            out['checks'].append({'schema_validation': f'bundle: ERROR {str(e)}'})
    else:
        out['checks'].append({'schema_validation': 'bundle: MISSING'})

    # Validate pack against schema if present
    if os.path.exists(pack_path):
        try:
            p = load_json(pack_path)
            validate(instance=p, schema=pack_schema)
            out['checks'].append({'schema_validation': 'pack: PASS'})
        except ValidationError as e:
            out['checks'].append({'schema_validation': f'pack: FAIL {str(e.message)}'})
        except Exception as e:
            out['checks'].append({'schema_validation': f'pack: ERROR {str(e)}'})
    else:
        out['checks'].append({'schema_validation': 'pack: MISSING'})

    # Check that exact_locator_registry entries point to existing files
    elr = os.path.join(base, 'registries/exact_locator_registry.tsv')
    if os.path.exists(elr):
        with open(elr) as f:
            lines = [l.strip().split('\t') for l in f.readlines() if l.strip()]
        missing = []
        for row in lines[1:]:
            path = row[1]
            if not os.path.exists(os.path.join(base, path)):
                missing.append(path)
        out['checks'].append({'exact_locator_missing': missing})
    else:
        out['checks'].append({'exact_locator_registry': 'MISSING'})

    # Check route-out registry for missing external proofs
    route = os.path.join(base, 'contracts/route_out_registry.json')
    ro_missing = []
    if os.path.exists(route):
        rr = load_json(route)
        for k,v in rr.get('entries', {}).items():
            if v.get('status') in ('MISSING','UNVERIFIED'):
                ro_missing.append({k:v.get('status')})
    else:
        out['checks'].append({'route_out_registry': 'MISSING'})

    out['checks'].append({'route_out_missing': ro_missing})

    # Final execution verdict: PASS only if no schema FAIL/ERROR and no route-outs missing
    exec_pass = all('FAIL' not in str(c) and 'ERROR' not in str(c) for c in out['checks']) and len(ro_missing)==0
    out['execution_pass'] = exec_pass

    print(json.dumps(out, indent=2))
    # write package_validation.json next to runtime
    pv = os.path.join(runtime_dir, 'package_validation.json')
    with open(pv,'w') as f:
        json.dump(out, f, indent=2)

    return 0

if __name__ == '__main__':
    sys.exit(main())
