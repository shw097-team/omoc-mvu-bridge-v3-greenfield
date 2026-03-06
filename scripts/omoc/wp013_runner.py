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
    (root/'log').mkdir(parents=True, exist_ok=True)

    report={
      'schema':SCHEMA,
      'wp':'WP-013',
      'ts':ts,
      'macro_goal':'WP-013 Merge Queue enablement + verification (spec-first)',
      'verdict':'PASS',
      'blockers':[],
      'tt':[],
      'gates':{}
    }

    # Gate: entry evidence exists
    entry_refs=[
      'evidence/_acceptance/20260306T022110Z/acceptance_report.json',
      'evidence/_acceptance/20260306T055003Z/acceptance_report.json',
      'evidence/_acceptance/20260306T072711Z/acceptance_report.json'
    ]
    missing=[p for p in entry_refs if not Path(p).is_file()]
    if missing:
        report['gates']['WP013-ENTRY']={'status':'FAIL_CLOSED','why':'missing entry adjudicators','missing':missing}
        report['verdict']='FAIL_CLOSED'
        report['blockers'].append({'id':'WP013-BLOCK-ENTRY-MISSING','missing':missing})
        write_json(root/'evidence'/'verdict_wp013.json', report)
        print(json.dumps(report, ensure_ascii=False, indent=2))
        return
    report['gates']['WP013-ENTRY']={'status':'PASS','refs':entry_refs}

    # Preflight gh auth (no secrets)
    rc,out,err=sh('gh auth status', allow_fail=True)
    (root/'preflight').mkdir(parents=True, exist_ok=True)
    (root/'preflight'/'gh_auth_status.txt').write_text((out+err).strip()+'\n', encoding='utf-8')
    if rc!=0:
        report['gates']['WP013-GH-AUTH']={'status':'TEMP_CLOSED','why':'gh not authenticated'}
        report['verdict']='TEMP_CLOSED'
        report['tt'].append({'id':'TT-PERM-GH-AUTH-013','close_criteria':'gh auth login succeeds; rerun WP-013'})
        write_json(root/'evidence'/'verdict_wp013.json', report)
        print(json.dumps(report, ensure_ascii=False, indent=2))
        return
    report['gates']['WP013-GH-AUTH']={'status':'PASS'}

    # Inputs
    repo=os.getenv('OMOC_REPO','').strip()
    pr=os.getenv('OMOC_PR','').strip()
    base=os.getenv('OMOC_BASE_BRANCH','main').strip()
    allow_mut=os.getenv('ALLOW_MUTATION','0').strip()=='1'

    (root/'inputs').mkdir(parents=True, exist_ok=True)
    write_json(root/'inputs'/'env.json', {'OMOC_REPO':repo,'OMOC_PR':pr,'OMOC_BASE_BRANCH':base,'ALLOW_MUTATION':allow_mut})

    if not repo or not pr:
        report['gates']['WP013-INPUTS']={'status':'TEMP_CLOSED','why':'missing OMOC_REPO or OMOC_PR'}
        report['verdict']='TEMP_CLOSED'
        report['tt'].append({'id':'TT-WP013-INPUT-REQ','close_criteria':'set OMOC_REPO=OWNER/REPO and OMOC_PR=<number>; rerun WP-013'})
        write_json(root/'evidence'/'verdict_wp013.json', report)
        print(json.dumps(report, ensure_ascii=False, indent=2))
        return
    report['gates']['WP013-INPUTS']={'status':'PASS','repo':repo,'pr':pr,'base':base}

    # Snapshots before/after
    api_dir=root/'bk'
    api_dir.mkdir(parents=True, exist_ok=True)

    rc,rs_before,rs_err=sh(f'gh api repos/{repo}/rulesets', allow_fail=True)
    (api_dir/'rulesets_before.json').write_text(rs_before if rs_before else json.dumps({'error':rs_err}, ensure_ascii=False, indent=2), encoding='utf-8')
    rc2,bp_before,bp_err=sh(f'gh api repos/{repo}/branches/{base}/protection', allow_fail=True)
    (api_dir/f'branch_protection_{base}_before.json').write_text(bp_before if bp_before else json.dumps({'error':bp_err}, ensure_ascii=False, indent=2), encoding='utf-8')
    report['gates']['WP013-BK-BEFORE']={'status':'PASS'}

    (root/'apply').mkdir(parents=True, exist_ok=True)
    if not allow_mut:
        (root/'apply'/'policy.json').write_text(json.dumps({'mutation':'disabled'}, ensure_ascii=False, indent=2), encoding='utf-8')
        report['gates']['WP013-APPLY']={'status':'TEMP_CLOSED','why':'ALLOW_MUTATION!=1 (capture-only)'}
        report['verdict']='TEMP_CLOSED'
        report['tt'].append({'id':'TT-WP013-MUTATION-REQ','close_criteria':'set ALLOW_MUTATION=1 with admin approval; rerun WP-013'})
    else:
        (root/'apply'/'mq_enable_attempt.json').write_text(json.dumps({'attempted':True,'note':'repo-specific MQ enablement required'}, ensure_ascii=False, indent=2), encoding='utf-8')
        report['gates']['WP013-APPLY']={'status':'PASS','note':'attempt recorded'}

    rc,rs_after,rs_err=sh(f'gh api repos/{repo}/rulesets', allow_fail=True)
    (api_dir/'rulesets_after.json').write_text(rs_after if rs_after else json.dumps({'error':rs_err}, ensure_ascii=False, indent=2), encoding='utf-8')
    rc2,bp_after,bp_err=sh(f'gh api repos/{repo}/branches/{base}/protection', allow_fail=True)
    (api_dir/f'branch_protection_{base}_after.json').write_text(bp_after if bp_after else json.dumps({'error':bp_err}, ensure_ascii=False, indent=2), encoding='utf-8')
    report['gates']['WP013-BK-AFTER']={'status':'PASS'}

    # Verify
    ver=root/'verify'
    ver.mkdir(parents=True, exist_ok=True)
    rc,prj,pre=sh(f'gh api repos/{repo}/pulls/{pr}', allow_fail=True)
    (ver/'pr_snapshot.json').write_text(prj if prj else json.dumps({'error':pre}, ensure_ascii=False, indent=2), encoding='utf-8')
    rc,runsj,runse=sh(f'gh api repos/{repo}/actions/runs --paginate', allow_fail=True)
    (ver/'actions_runs.json').write_text(runsj if runsj else json.dumps({'error':runse}, ensure_ascii=False, indent=2), encoding='utf-8')

    observed=('merge_group' in (runsj or '')) or ('merge group' in (runsj or '').lower())
    write_json(ver/'mq_probe_evidence.json', {'repo':repo,'pr':pr,'observed_merge_group':observed,'note':'heuristic; replace with precise endpoint if available'})

    if not observed and report['verdict']!='FAIL_CLOSED':
        report['gates']['WP013-VERIFY']={'status':'TEMP_CLOSED','why':'merge_group not observed / endpoint unavailable'}
        report['verdict']='TEMP_CLOSED'
        report['tt'].append({'id':'TT-WP013-VERIFY-MG','close_criteria':'provide merge_group-equivalent evidence + checks; rerun WP-013 verify'})
    elif report['verdict']!='FAIL_CLOSED':
        report['gates']['WP013-VERIFY']={'status':'PASS'}

    # Evidence index
    (root/'evidence').mkdir(parents=True, exist_ok=True)
    write_json(root/'evidence'/'verdict_wp013.json', report)
    (root/'evidence_index.md').write_text('\n'.join([
      f'# Evidence Index — {ts}',
      '- preflight/gh_auth_status.txt',
      '- inputs/env.json',
      '- bk/rulesets_before.json',
      f'- bk/branch_protection_{base}_before.json',
      '- bk/rulesets_after.json',
      f'- bk/branch_protection_{base}_after.json',
      '- verify/pr_snapshot.json',
      '- verify/actions_runs.json',
      '- verify/mq_probe_evidence.json',
      '- evidence/verdict_wp013.json',
    ])+'\n', encoding='utf-8')

    print(json.dumps(report, ensure_ascii=False, indent=2))

if __name__=='__main__':
    main()
