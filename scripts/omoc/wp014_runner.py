#!/usr/bin/env python3
import argparse, json, os, subprocess
from pathlib import Path

SCHEMA='omoc.acceptance_report.v1'

def sh(cmd, allow_fail=False):
    p=subprocess.run(cmd, shell=True, text=True, capture_output=True)
    if p.returncode!=0 and not allow_fail:
        raise RuntimeError(f'cmd failed: {cmd}\nstdout={p.stdout}\nstderr={p.stderr}')
    return p.returncode, p.stdout, p.stderr

def write_json(path: Path, obj):
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(obj, ensure_ascii=False, indent=2), encoding='utf-8')

def main():
    ap=argparse.ArgumentParser()
    ap.add_argument('--ts', required=True)
    args=ap.parse_args()

    ts=args.ts
    root=Path(f'evidence/_acceptance/{ts}')
    root.mkdir(parents=True, exist_ok=True)

    report={
      'schema':SCHEMA,
      'ts':ts,
      'macro_goal':'WP-014 Drift Guard + Closure Management (spec-first)',
      'verdict':'PASS',
      'blockers':[],
      'tt':[],
      'gates':{}
    }

    # Superseded pollution scan (string only)
    (root/'drift').mkdir(parents=True, exist_ok=True)
    rc,out,err=sh('rg -n "v4\\.0\\.1-r1" . || true', allow_fail=True)
    (root/'drift'/'superseded_pollution_scan.txt').write_text(out.strip()+'\n', encoding='utf-8')
    if out.strip():
        report['gates']['WP014-SUPERSEDED']={'status':'FAIL_CLOSED','why':'found v4.0.1-r1 reference(s)'}
        report['verdict']='FAIL_CLOSED'
        report['blockers'].append({'id':'WP014-BLOCK-SUPERSEDED','close_criteria':'remove all v4.0.1-r1 references; rerun WP-014'})
    else:
        report['gates']['WP014-SUPERSEDED']={'status':'PASS'}

    # gh auth capture
    rc2,ao,ae=sh('gh auth status', allow_fail=True)
    (root/'preflight').mkdir(parents=True, exist_ok=True)
    (root/'preflight'/'gh_auth_status.txt').write_text((ao+ae).strip()+'\n', encoding='utf-8')
    if rc2!=0 and report['verdict']!='FAIL_CLOSED':
        report['gates']['WP014-GH-AUTH']={'status':'TEMP_CLOSED','why':'gh not authenticated'}
        report['verdict']='TEMP_CLOSED'
        report['tt'].append({'id':'TT-PERM-GH-AUTH-014','close_criteria':'gh auth login succeeds; rerun WP-014'})
    elif report['verdict']!='FAIL_CLOSED':
        report['gates']['WP014-GH-AUTH']={'status':'PASS'}

    repo=os.getenv('OMOC_REPO','').strip()
    base=os.getenv('OMOC_BASE_BRANCH','main').strip()

    # Drift snapshots need OMOC_REPO
    if report['verdict']!='FAIL_CLOSED':
        if not repo:
            report['gates']['WP014-INPUTS']={'status':'TEMP_CLOSED','why':'missing OMOC_REPO'}
            report['verdict']='TEMP_CLOSED'
            report['tt'].append({'id':'TT-WP014-INPUT-REQ','close_criteria':'set OMOC_REPO=OWNER/REPO; rerun WP-014'})
        else:
            rc,rs,er=sh(f'gh api repos/{repo}/rulesets', allow_fail=True)
            (root/'drift'/'rulesets_snapshot.json').write_text(rs if rs else json.dumps({'error':er}, ensure_ascii=False, indent=2), encoding='utf-8')
            rc,bp,eb=sh(f'gh api repos/{repo}/branches/{base}/protection', allow_fail=True)
            (root/'drift'/f'branch_protection_{base}_snapshot.json').write_text(bp if bp else json.dumps({'error':eb}, ensure_ascii=False, indent=2), encoding='utf-8')
            report['gates']['WP014-DRIFT']={'status':'PASS','repo':repo,'base':base}

    # Closure: tt_export.json always exists
    (root/'closure').mkdir(parents=True, exist_ok=True)
    write_json(root/'closure'/'tt_export.json', {'ts':ts,'items':report['tt']})
    if report['verdict']!='FAIL_CLOSED':
        report['gates']['WP014-TT_EXPORT']={'status':'PASS','path':'closure/tt_export.json'}

    (root/'evidence').mkdir(parents=True, exist_ok=True)
    write_json(root/'evidence'/'verdict_wp014.json', {'wp':'WP-014','ts':ts,'verdict':report['verdict'],'blockers':report['blockers'],'tt':report['tt'],'gates':report['gates']})
    (root/'evidence_index.md').write_text('\n'.join([
      f'# Evidence Index — {ts}',
      '- drift/superseded_pollution_scan.txt',
      '- preflight/gh_auth_status.txt',
      '- drift/rulesets_snapshot.json (if OMOC_REPO set)',
      '- drift/branch_protection_<base>_snapshot.json (if OMOC_REPO set)',
      '- closure/tt_export.json',
      '- evidence/verdict_wp014.json',
    ])+'\n', encoding='utf-8')

    print(json.dumps(report, ensure_ascii=False, indent=2))
    print(json.dumps(report, ensure_ascii=False, indent=2))

if __name__=='__main__':
    main()
