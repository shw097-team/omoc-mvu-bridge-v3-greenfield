#!/usr/bin/env python3
"""WSP to OMOC evidence directory adapter"""
import argparse, sys

def wsp_to_omoc(path, ts):
    """Convert WSP path format to OMOC format"""
    path = str(path)
    if not path.startswith('acceptance_bundle/'):
        return path
    
    parts = path.split('/')
    rest = '/'.join(parts[2:]) if len(parts) >= 3 else ''
    return f"evidence/_acceptance/{ts}/{rest}"

def main():
    ap = argparse.ArgumentParser(description='WSP to OMOC path adapter')
    ap.add_argument('--ts', required=True, help='Timestamp')
    ap.add_argument('--wsp', help='WSP path to convert')
    ap.add_argument('--selftest', action='store_true', help='Run self-test')
    
    args = ap.parse_args()
    
    if args.selftest:
        test_path = 'acceptance_bundle/TESTRUN/gates/G1/verdict.json'
        result = wsp_to_omoc(test_path, args.ts)
        expected_prefix = f"evidence/_acceptance/{args.ts}/gates/G1"
        passed = result.startswith(expected_prefix)
        sys.exit(0 if passed else 2)
    
    if not args.wsp:
        sys.exit(2)
    
    print(wsp_to_omoc(args.wsp, args.ts))

if __name__ == '__main__':
    main()
