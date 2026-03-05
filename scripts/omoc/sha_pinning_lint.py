#!/usr/bin/env python3
import argparse, re, json, glob, pathlib, sys
def main():
  ap=argparse.ArgumentParser()
  ap.add_argument("--root", default=".")
  ap.add_argument("--allowlist", required=True)
  ap.add_argument("--out", required=True)
  args=ap.parse_args()
  allow_path=pathlib.Path(args.allowlist)
  allow=set([l.strip() for l in allow_path.read_text(encoding="utf-8").splitlines()
             if l.strip() and not l.strip().startswith("#")]) if allow_path.exists() else set()
  uses_re=re.compile(r'^\s*-?\s*uses:\s*([^\s#]+)', re.IGNORECASE)
  files=[]
  for pat in [".github/workflows/*.yml",".github/workflows/*.yaml",".github/actions/**/action.yml",".github/actions/**/action.yaml"]:
    files += glob.glob(pat, recursive=True)
  bad=[]; checked=[]
  for fp in sorted(set(files)):
    p=pathlib.Path(fp)
    lines=p.read_text(encoding="utf-8", errors="replace").splitlines()
    for i,l in enumerate(lines, start=1):
      m=uses_re.match(l)
      if not m: continue
      ref=m.group(1).strip()
      if ref.startswith("./") or ref.startswith("docker://"): 
        continue
      if "@" not in ref: 
        continue
      action, ver = ref.rsplit("@",1)
      if re.fullmatch(r"[0-9a-fA-F]{40}", ver):
        checked.append({"file":fp,"line":i,"uses":ref,"status":"PINNED_SHA"}); continue
      if ref in allow:
        checked.append({"file":fp,"line":i,"uses":ref,"status":"ALLOWLISTED"}); continue
      bad.append({"file":fp,"line":i,"uses":ref,"status":"UNPINNED"})
  outp=pathlib.Path(args.out)
  outp.parent.mkdir(parents=True, exist_ok=True)
  report={"summary":{"checked":len(checked)+len(bad),"bad":len(bad)},
          "allowlist_path":str(allow_path),"bad":bad,"checked":checked}
  outp.write_text(json.dumps(report, indent=2, ensure_ascii=False)+"\n", encoding="utf-8")
  return 0 if not bad else 8
if __name__=="__main__":
  sys.exit(main())
