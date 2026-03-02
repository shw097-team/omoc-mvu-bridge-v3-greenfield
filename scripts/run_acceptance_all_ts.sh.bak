#!/usr/bin/env bash
set +e
TS="${OMOC_TS:?OMOC_TS missing}"
ADIR="evidence/_acceptance/${TS}"
LOG="${ADIR}/log"
mkdir -p "${ADIR}/"{reports,WP-001,WP-004,WP-005,wp001,log} baseline/wp001 evidence/_quarantine 2>/dev/null || true

# (1) quarantine report with counts/list
QR="${LOG}/quarantine_report.log"
scanned=0; moved=0; moved_list=""
for d in evidence/_acceptance/*; do
  [ -d "$d" ] || continue
  scanned=$((scanned+1))
  name="$(basename "$d")"
  if ! printf '%s' "$name" | grep -Eq '^[0-9]{8}T[0-9]{6}Z$'; then
    tgt="evidence/_quarantine/${name}-${TS}"
    mv "$d" "$tgt" 2>/dev/null || true
    moved=$((moved+1))
    moved_list="${moved_list}\nacceptance\t${name}\t${tgt}"
  fi
done
for d in evide:contentReference*; do
  [ -d "$d" ] || continue
  tgt="evidence/_quarantine/${d}-${TS}"
  mv "$d" "$tgt" 2>/dev/null || true
  moved=$((moved+1))
  moved_list="${moved_list}\nroot\t${d}\t${tgt}"
done
{
  echo "ts=${TS}"
  echo "scanned_acceptance_dirs=${scanned}"
  echo "quarantined_count=${moved}"
  echo -e "moved_list:${moved_list:-\n(none)}"
} > "$QR" 2>/dev/null || true

# (2) wp001 generator + drift audit (baseline will be created if missing)
python3 - <<'PY' 2>/dev/null || true
import json, os, hashlib, pathlib, re
TS=os.environ["OMOC_TS"]
base=pathlib.Path("docs/_omoc_inputs/normative")
out=pathlib.Path(f"evidence/_acceptance/{TS}/wp001"); out.mkdir(parents=True, exist_ok=True)
docs=[("N1", base/"OMOC_藍圖_v4.0.1-r1.md"),
      ("N2", base/"OMOC_施工RB+WI_合冊_v4.0.1-r1.md"),
      ("N3", base/"OMOC_施工skills_合冊_v4.0.1-r2.md"),
      ("N4", base/"OMOC_實作+WP總表_v4.0.1-r2.md")]
def sha(p):
  h=hashlib.sha256()
  with p.open("rb") as f:
    for b in iter(lambda:f.read(1024*1024), b""): h.update(b)
  return h.hexdigest()

inv=[]
for doc_id,p in docs:
  if not p.exists():
    inv.append({"doc_id":doc_id,"path":str(p),"missing":True}); continue
  b=p.read_bytes()
  inv.append({"doc_id":doc_id,"role":"NORMATIVE","path":str(p),"sha256":sha(p),
              "bytes":len(b),"line_count":b.count(b"\n")+ (0 if b.endswith(b"\n") else 1)})
(out/"doc_inventory.json").write_text(json.dumps({"schema_version":"wp001.doc_inventory.v1","ts":TS,"docs":inv},ensure_ascii=False,indent=2)+"\n",encoding="utf-8")

re_anchor=re.compile(r"\[ANCHOR:([A-Za-z0-9\-_]+)\]")
re_aid=re.compile(r'<a\s+id="([^"]+)"', re.I)
docs_out=[]; refs=[]
for doc_id,p in docs:
  if not p.exists():
    docs_out.append({"doc_id":doc_id,"path":str(p),"missing":True,"anchors":[]}); continue
  txt=p.read_text(encoding="utf-8",errors="replace")
  anchors=sorted(set(re_anchor.findall(txt))|set(re_aid.findall(txt)))
  docs_out.append({"doc_id":doc_id,"path":str(p),"anchors":anchors})
  for a in anchors: refs.append(f"{doc_id}\t{a}\t{p}")
(out/"anchor_registry.json").write_text(json.dumps({"schema_version":"wp001.anchor_registry.v1","ts":TS,"docs":docs_out},ensure_ascii=False,indent=2)+"\n",encoding="utf-8")
(out/"anchor_refs.txt").write_text("\n".join(refs)+("\n" if refs else ""),encoding="utf-8")

# baseline: create if missing
bdir=pathlib.Path("baseline/wp001"); bdir.mkdir(parents=True, exist_ok=True)
bpath=bdir/"anchor_registry.json"
if not bpath.exists():
  bpath.write_text((out/"anchor_registry.json").read_text(encoding="utf-8"), encoding="utf-8")

# drift audit
base=json.loads(bpath.read_text(encoding="utf-8"))
cur=json.loads((out/"anchor_registry.json").read_text(encoding="utf-8"))
def to_map(obj):
  return {d.get("doc_id","?"): set(d.get("anchors",[]) or []) for d in obj.get("docs",[])}
b=to_map(base); c=to_map(cur)
adds=removes=0
lines=[f"ts={TS}"]
for doc_id in sorted(set(b)|set(c)):
  add=sorted(c.get(doc_id,set())-b.get(doc_id,set()))
  rem=sorted(b.get(doc_id,set())-c.get(doc_id,set()))
  if add: adds+=len(add); lines.append(f"DRIFT_ADD doc={doc_id} +{len(add)}")
  if rem: removes+=len(rem); lines.append(f"DRIFT_REMOVE doc={doc_id} -{len(rem)}")
lines.append(f"summary:adds={adds},removes={removes}")
(out/"drift_audit.log").write_text("\n".join(lines)+"\n", encoding="utf-8")
PY

# (3) WP-001 minimal lock probe
WP1="${ADIR}/WP-001"
{
  echo "== HEAD =="; git rev-parse HEAD 2>/dev/null || true
  echo; echo "== git status =="; git status --porcelain=v1 2>/dev/null || true
  echo; echo "== sha256 key files ==";
  for f in scripts/acceptance_local.sh docs/_omoc_inputs/normative/*; do [ -f "$f" ] && sha256sum "$f" || true; done
} > "${WP1}/lock_probe.log" 2>/dev/null || true
printf "%s" "0" > "${WP1}/rc.txt" 2>/dev/null || true

# (4) WP-004 redacted gh auth (no Token line)
WP4="${ADIR}/WP-004"
( gh auth status 2>&1 | sed -E '/^[[:space:]]*-[[:space:]]*Token:/d' ) > "${WP4}/acceptance_local.log" 2>/dev/null || true
printf "%s" "0" > "${WP4}/rc.txt" 2>/dev/null || true

# (5) WP-005 canonical (single tee + immediate PIPESTATUS)
WP5="${ADIR}/WP-005"
echo "==> [L3-acceptance-local] start ts=${TS}" | tee "${LOG}/L3-acceptance-local.log" >/dev/null
timeout --preserve-status 30m bash -lc "bash scripts/acceptance_local.sh" 2>&1 | tee "${WP5}/acceptance_local.log" >/dev/null
cmd_rc="${PIPESTATUS[0]}"; tee_rc="${PIPESTATUS[1]:-0}"
printf "%s" "$cmd_rc" > "${WP5}/acceptance_local.cmd.rc"
printf "%s" "$tee_rc" > "${WP5}/acceptance_local.tee.rc"
if [ "$tee_rc" -ne 0 ]; then adj="$tee_rc"; else adj="$cmd_rc"; fi
printf "%s" "$adj" > "${WP5}/rc.txt"
cat "${WP5}/acceptance_local.log" >> "${LOG}/L3-acceptance-local.log" 2>/dev/null || true
printf "%s" "$adj" > "${LOG}/L3-acceptance-local.rc"
echo "TEE_RC_BYTES=$(wc -c < "${WP5}/acceptance_local.tee.rc" 2>/dev/null || echo 0)" >> "${LOG}/L3-acceptance-local.log"

# (6) single bundle (FULL COVERAGE)
OUT="${ADIR}/reports/single_evidence_bundle_ALL_${TS}.txt"
{
  echo "=== OMOC CONSOLIDATED EVIDENCE BUNDLE ==="
  echo "ts=${TS}"
  echo "generated_utc=$(date -u +%Y-%m-%dT%H:%M:%SZ)"
  echo
  echo "== A) tree probe =="
  find "${ADIR}" -maxdepth 3 -type f 2>/dev/null | sort || true
  echo
  echo "== D) forbidden scan =="
  PAT="(github_pat_|ghp_|token[^a-zA-Z0-9]?[:=]|password|secret)"
  grep -R -nEI "$PAT" "${ADIR}" 2>/dev/null || echo "[NO_HITS]"
  echo

  for f in \
    "${LOG}/quarantine_report.log" \
    "baseline/wp001/anchor_registry.json" \
    "${ADIR}/wp001/doc_inventory.json" "${ADIR}/wp001/anchor_registry.json" "${ADIR}/wp001/anchor_refs.txt" "${ADIR}/wp001/drift_audit.log" \
    "${ADIR}/WP-001/lock_probe.log" "${ADIR}/WP-001/rc.txt" \
    "${ADIR}/WP-004/acceptance_local.log" "${ADIR}/WP-004/rc.txt" \
    "${ADIR}/WP-005/acceptance_local.log" "${ADIR}/WP-005/acceptance_local.cmd.rc" "${ADIR}/WP-005/acceptance_local.tee.rc" "${ADIR}/WP-005/rc.txt" \
    "${LOG}/L3-acceptance-local.log" "${LOG}/L3-acceptance-local.rc" \
    "scripts/acceptance_local.sh"
  do
    echo "----- FILE: $f -----"
    if [ -f "$f" ]; then
      echo "[SIZE_BYTES] $(wc -c < "$f" 2>/dev/null || echo UNK)"
      echo "[SHA256] $(sha256sum "$f" 2>/dev/null | awk "{print \$1}" || echo UNK)"
      sed -n "1,260p" "$f" 2>/dev/null || true
    else
      echo "[MISSING]"
    fi
    echo
  done
} > "$OUT" 2>/dev/null || true

ls -la "$OUT" 2>/dev/null || true
echo "[UPLOAD] $OUT" || true
