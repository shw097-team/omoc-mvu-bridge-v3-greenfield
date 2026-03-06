#!/usr/bin/env python3
import argparse, json, sys
from pathlib import Path

SCHEMA='omoc.acceptance_report.v1'

def write_json(path: Path, obj):
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(obj, ensure_ascii=False, indent=2), encoding='utf-8')

def main():
    ap=argparse.ArgumentParser()
    ap.add_argument('--ts', required=True)
    args=ap.parse_args()

    ts=args.ts
    root=Path(f'evidence/_acceptance/{ts}')
    evidence_dir=root/'evidence'

    verdict_wp013_path=evidence_dir/'verdict_wp013.json'
    verdict_wp014_path=evidence_dir/'verdict_wp014.json'

    if not verdict_wp013_path.is_file():
        print(f'ERROR: {verdict_wp013_path} not found', file=sys.stderr)
        sys.exit(1)
    if not verdict_wp014_path.is_file():
        print(f'ERROR: {verdict_wp014_path} not found', file=sys.stderr)
        sys.exit(1)

    wp013_verdict=json.loads(verdict_wp013_path.read_text(encoding='utf-8'))
    wp014_verdict=json.loads(verdict_wp014_path.read_text(encoding='utf-8'))

    both_pass=(
        wp013_verdict.get('verdict')=='PASS' and 
        wp014_verdict.get('verdict')=='PASS'
    )
    combined_verdict='PASS' if both_pass else 'FAIL_CLOSED'

    combined_blockers=wp013_verdict.get('blockers', [])+wp014_verdict.get('blockers', [])
    combined_tt=wp013_verdict.get('tt', [])+wp014_verdict.get('tt', [])

    unified_report={
        'schema':SCHEMA,
        'ts':ts,
        'verdict':combined_verdict,
        'macro_goal':'WP-013 + WP-014 integration (double-pass)',
        'wp013':wp013_verdict,
        'wp014':wp014_verdict,
        'blockers':combined_blockers,
        'tt':combined_tt,
    }

    adjudicator={
        'schema':SCHEMA,
        'ts':ts,
        'verdict':combined_verdict,
        'raw':unified_report
    }

    write_json(root/'acceptance_report.json', unified_report)
    ts_prefixed_path=root.parent/(f'{ts}_acceptance_report.json')
    write_json(ts_prefixed_path, adjudicator)

    print(json.dumps(adjudicator, ensure_ascii=False, indent=2))

if __name__=='__main__':
    main()
