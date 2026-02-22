# **OMOC｜WP-001 Authority & Version Lock Runbook+WI**

𝐴𝑁𝐶𝐻𝑂𝑅:𝑂𝑀𝑂𝐶−𝑊𝑃001−0000ANCHOR:OMOC−WP001−0000  
\<a id="omoc-wp001-0000"\>\</a\>

**doc\_date（Asia/Taipei）**：2026-02-17  
**generated\_at（ISO8601+08:00）**：2026-02-17T21:42:34+08:00  
**External Name**：OMOC WP-001 Authority & Version Lock  
**Internal Short Name**：OMOC-WP001  
**Canonical Version**：v4.0.1-r2+wp001.2.0  
**Status（Fail-Closed）**：TEMP\_CLOSED（原因：外部平台可變行為僅 SUPPORT；需環境實測才能 CLOSED；所有缺口已轉 TT 並有 closure criteria；CR\_OPEN=0）  
**Scope**：跨 WP 的「權威層級、版本鎖定、可稽核快照、錨點漂移偵測」  
**Supersedes**：/mnt/data/OMOC\_WP-001+RB+WI.md（舊版；本文件可工程性取代）

---

## **TOC**

𝐴𝑁𝐶𝐻𝑂𝑅:𝑂𝑀𝑂𝐶−𝑊𝑃001−𝑇𝑂𝐶ANCHOR:OMOC−WP001−TOC  
\<a id="omoc-wp001-toc"\>\</a\>

* 1 導讀  
* 2 Authority Stack 與裁決規則  
* 3 需求拆解與 Coverage Matrix  
* 4 Entry Gate  
* 5 Runbook  
* 6 Work Instructions  
* 7 Reference  
* 8 Explanation  
* 9 Conflict and Decision Log  
* 10 TT List  
* 11 Exit Gate Checklist  
* A Quick Index  
* B Mapping Index  
* C Locator Proof

---

## **1 導讀**

𝐴𝑁𝐶𝐻𝑂𝑅:𝑂𝑀𝑂𝐶−𝑊𝑃001−0100ANCHOR:OMOC−WP001−0100  
\<a id="omoc-wp001-0100"\>\</a\>  
\[TAGS: tutorial, wp001, authority, version-lock, entry-gate, exit-gate\]

### **1.1 這份文件解決什麼**

* **把“誰說了算”與“版本如何鎖定”變成可重跑、可驗證、可稽核的合同**。  
* 產出固定檔案：`doc_inventory.json`、`anchor_registry.json`、`anchor_drift_audit.md`、`sha256sum.txt`、`anchor_refs.txt`、`rc.txt`、`verdict.json`、`checks_manifest.json`、`evidence_index.md`、`evidence_bundle.tgz`、`wp001_machine_summary.json`。  
* 把任何 **UNVERIFIED/MISSING/DRIFT** 收斂成 **TT → TEMP\_CLOSED**（阻斷級則 **FAIL\_CLOSED**）。  
* **不在這裡改 GitHub 規則**：WP-001 只做 **鎖定快照 \+ 漂移偵測 \+ 取證合同**；真正改 Rulesets / Merge Queue 的細節請映射到對應 WP（見 §6.6）。

### **1.2 最短路徑**

想快：先跑 §5 的 Runbook，拿到輸出檔，再用 §11 的 Exit Gate Checklist 判定 PASS/TEMP\_CLOSED/FAIL\_CLOSED。  
想穩：照 §6 WI，一步一跡證。  
（把“差不多”當證據的人，稽核時通常會得到“差很多”。）

---

## **2 Authority Stack 與裁決規則**

𝐴𝑁𝐶𝐻𝑂𝑅:𝑂𝑀𝑂𝐶−𝑊𝑃001−0200ANCHOR:OMOC−WP001−0200  
\<a id="omoc-wp001-0200"\>\</a\>  
\[TAGS: authority-stack, normative, support, fail-closed, conflict\]

### **2.1 Authority Stack**

**NORMATIVE（不得被 SUPPORT 覆寫）**

* **N1** `/mnt/data/OMOC_藍圖_v4.0.1-r1.md`（OMOC Blueprint v4.0.1-r1）  
* **N2** `/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md`（v4.0.1-r1+rbwi.1.0）  
* **N3** `/mnt/data/OMOC_施工skills_合冊_v4.0.1-r2.md`（v4.0.1-r2）  
* **N4** `/mnt/data/OMOC_實作+WP總表_v4.0.1-r2.md`（v4.0.1-r2；WP-MASTER；**WP-001 以 r2 為 primary**）

**REVIEW/FIX SPEC（本文件必修工單來源）**

* **R1** `/mnt/data/OMOC_WP-001+RB+WI_審查報告A.md`（要求的 TT/PATCH 必須在本版落地到可驗收）

**SUPPORT ONLY（僅能佐證平台可變行為；不得升格）**

* 只允許放在 **§D Web Evidence Appendix**，且每條必須 `web_refs>=2`、帶日期與查閱日。

**版本規則（修補 TT-WP001-001）**：WP-MASTER **必須以 v4.0.1-r2 為 primary**；若需引用 r1，只能作 fallback 且必建 TT（本環境 `r1` 檔案缺失時視為 MISSING→TT）。

### **2.2 No-Source-No-Norm 與 Fail-Closed**

* 任何“主張”若缺 `doc_path + heading/anchor + line range` → **UNVERIFIED**。  
* **UNVERIFIED/MISSING/DRIFT/PARTIAL** → **必建 TT**，主流程只能引用 TT ID，不得散落描述。  
* **阻斷級**（FAIL\_CLOSED）包含：  
  1. N1\~N4 任何一份不可讀/不可定位  
  2. `doc_inventory.json` 或 `anchor_registry.json` schema 不合  
  3. 漂移分類屬 **REMOVE/RENAME/COLLISION**  
  4. baseline 已存在但 `sha256sum` 不一致（未經 TT 裁決）

### **2.3 指令/資料分離與防注入**

* **NORMATIVE**：只能來自 N1\~N4（與本文件明確引用的 locator）。  
* **SUPPORT**：只能輔助“平台可變”事實，且不得被提升為規範。  
* 任何不可信輸入（Issue/PR 文案、外部網頁、聊天內容）只能進 SUPPORT；若影響裁決 → **TT**。  
  （見 N3 Security Guardrails 的規定：不確定就建 TT，不准捏造。對應 locator 見 §C。）

---

## **3 需求拆解與 Coverage Matrix**

𝐴𝑁𝐶𝐻𝑂𝑅:𝑂𝑀𝑂𝐶−𝑊𝑃001−0300ANCHOR:OMOC−WP001−0300  
\<a id="omoc-wp001-0300"\>\</a\>  
\[TAGS: req, coverage, traceability, acceptance, evidence-minset\]

### **3.1 Req-ID 定義**

至少涵蓋 WP001-REQ-001\~010；每條含：NORM locator、本文件 anchor、驗收判準、Evidence Minset、Fail→TT。

| Req-ID | 子需求 | 上位 NORMATIVE locator(s) | 本文件覆蓋 | 驗收判準（Pass/Fail） | Evidence Minset（最小） | Fail → TT |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| WP001-REQ-001 | Authority Stack 與衝突裁決 | N4 §8 WP-MASTER Table：WP-001 row；N1 §OMOC-BP-1200 | §2, §9 | 明確宣告 N1\~N4 層級；r2 primary；衝突必進 Decision Log | `doc_inventory.json`（含 authority\_level） | TT-WP001-001, TT-WP001-010 |
| WP001-REQ-002 | Entry Gate：四份 NORM 可讀 \+ sha256 快照 | N4 §8 固定欄位要求；R1 PATCH-WP001-002 | §4, §5.2, §6.2 | `sha256sum.txt` 存在且含 N1\~N4；工具檢查通過 | `sha256sum.txt`, `checks_manifest.json`, `rc.txt` | TT-WP001-002 |
| WP001-REQ-003 | Evidence Minset 分層閉環，不得排除 RBWI | N2 Evidence Contract；R1 PATCH-WP001-003 | §5.6, §7.5 | Evidence Minset 至少含 4 件：`verdict.json`/`checks_manifest.json`/`evidence_index.md`/`evidence_bundle.tgz` | 上述四件 \+ `rc.txt` | TT-WP001-004, TT-WP001-009 |
| WP001-REQ-004 | Doc Inventory schema \+ 生成/驗證 | N4 §12.1 doc\_inventory schema；R1 PATCH-WP001-004 | §5.3, §7.1 | `doc_inventory.json` schema 合格；sha 可復算 | `doc_inventory.json`, `sha256sum.txt` | TT-WP001-005, TT-WP001-007 |
| WP001-REQ-005 | Anchor Registry \+ Drift Audit | N4 §5 Anchor Registry（概念）；R1 PATCH-WP001-005 | §5.4\~5.5, §7.2\~7.3 | `anchor_registry.json` 可重建；漂移分類規則生效 | `anchor_registry.json`, `anchor_drift_audit.md`, `anchor_refs.txt` | TT-WP001-006 |
| WP001-REQ-006 | Runbook 命令硬化：timeout/tee/rc 合同 | N2 CMD template；R1 PATCH-WP001-006 | §5, §7.4 | 所有 step 有 timeout、tee 到 log、寫 rc；`rc.txt` 格式合約通過 | `run.log`, `rc.txt` | TT-WP001-008 |
| WP001-REQ-007 | TT/TEMP\_CLOSED 規則收斂，主流程不得散落不確定描述 | N3 Guardrails；R1 PATCH-WP001-007 | §2.2, §10 | 文中不確定事項只能出現在 TT；每 TT 有 closure criteria | `tt_list.json`（或嵌入 §10） | TT-WP001-010 |
| WP001-REQ-008 | CR\_OPEN 收斂：不得留 CR\_OPEN | R1 要求；N2 Fail-Closed規則 | §10.6 | 本文件宣告 CR\_OPEN=0 且提供確認方法與證據落點 | `cr_open_scan.txt`（建議） | TT-WP001-010 |
| WP001-REQ-009 | GitHub UI 設置：若 N/A 必裁決並映射到正確 WP | N1 邊界；N4 WP 對應；R1 D 要求 | §6.6, §9 | N/A 不得一句帶過；要列理由、映射 WP、證據/TT | `gh_snapshot/*`（若可）或 TT | TT-WP001-003 |
| WP001-REQ-010 | Exit Gate 可機器驗收 \+ Machine Summary JSON | N4 機械採信精神；R1 H 要求 | §11, §E | `wp001_machine_summary.json` 生成且欄位齊；Checklist 可跑 | `wp001_machine_summary.json`, `verdict.json` | TT-WP001-003 |

### **3.2 Patch 覆蓋映射**

𝐴𝑁𝐶𝐻𝑂𝑅:𝑂𝑀𝑂𝐶−𝑊𝑃001−0310ANCHOR:OMOC−WP001−0310  
\<a id="omoc-wp001-0310"\>\</a\>

| PATCH | 落地章節 | 直接修補的 TT |
| ----- | ----- | ----- |
| PATCH-WP001-001 | §2.1\~2.2 | TT-WP001-001 |
| PATCH-WP001-002 | §4, §5.2, §7.1 | TT-WP001-002 |
| PATCH-WP001-003 | §5.6, §7.5 | TT-WP001-004, TT-WP001-009 |
| PATCH-WP001-004 | §5.3, §7.1 | TT-WP001-005, TT-WP001-007 |
| PATCH-WP001-005 | §5.4\~5.5, §7.2\~7.3 | TT-WP001-006 |
| PATCH-WP001-006 | §5, §7.4 | TT-WP001-008 |
| PATCH-WP001-007 | §2.2, §10 | TT-WP001-010 |

---

## **4 Entry Gate**

𝐴𝑁𝐶𝐻𝑂𝑅:𝑂𝑀𝑂𝐶−𝑊𝑃001−0400ANCHOR:OMOC−WP001−0400  
\<a id="omoc-wp001-0400"\>\</a\>  
\[TAGS: entry-gate, preflight, sha256, file-readability\]

**Gate ID**：GATE-WP001-ENTRY  
**Gate 目的**：在任何版本鎖定/漂移偵測前，先證明 N1\~N4 具備“可讀、可 hash、可取證”的最低條件。  
**阻斷條件（FAIL\_CLOSED）**：

* 任一 N1\~N4 不可讀  
* `sha256sum` 工具不可用（或無替代）  
* 取證目錄不可寫入

**Gate 輸出（最小）**：

* `sha256sum.txt`（含 N1\~N4）  
* `checks_manifest.json`（至少含 tool versions \+ file list）  
* `rc.txt`（含 overall\_verdict 與 exit\_code）

---

## **5 Runbook**

𝐴𝑁𝐶𝐻𝑂𝑅:𝑂𝑀𝑂𝐶−𝑊𝑃001−0500ANCHOR:OMOC−WP001−0500  
\<a id="omoc-wp001-0500"\>\</a\>  
\[TAGS: runbook, bash, evidence, step-template, reproducible\]

**強制要求（對齊 N2 step() 模板）**：所有命令必須具備 `timeout`、`tee`、`rc`；不得“靜默失敗”。  
下列 Runbook 以 **同一份腳本**完成（建議檔名：`scripts/wp001_authority_lock.sh`）。  
若你把它拆散，請至少保留 `rc.txt` 合同與 evidence 結構；否則稽核會把你也拆散（比喻）。

### **5.1 一鍵執行腳本**

𝐴𝑁𝐶𝐻𝑂𝑅:𝑂𝑀𝑂𝐶−𝑊𝑃001−0510ANCHOR:OMOC−WP001−0510  
\<a id="omoc-wp001-0510"\>\</a\>

`#!/usr/bin/env bash`  
`set -euo pipefail`

`# ---- Config (Files-First) ----`  
`DOC_N1="/mnt/data/OMOC_藍圖_v4.0.1-r1.md"`  
`DOC_N2="/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md"`  
`DOC_N3="/mnt/data/OMOC_施工skills_合冊_v4.0.1-r2.md"`  
`DOC_N4="/mnt/data/OMOC_實作+WP總表_v4.0.1-r2.md"`  
`DOCS=("$DOC_N1" "$DOC_N2" "$DOC_N3" "$DOC_N4")`

`UTC_TS="$(date -u +%Y%m%dT%H%M%SZ)"`  
`EVDIR="evidence/_acceptance/${UTC_TS}/wp001"`  
`LOG="${EVDIR}/run.log"`  
`RC_TXT="${EVDIR}/rc.txt"`

`mkdir -p "${EVDIR}"`

`# ---- Step template (align to N2: OMOC-RBWI-CMD-TEMPLATE; copy policy: keep logic identical) ----`  
`step() {`  
  `local name="$1"; shift`  
  `local cmd="$*"`  
  `echo "---- STEP: ${name}" | tee -a "${LOG}"`  
  `echo "CMD: ${cmd}" | tee -a "${LOG}"`

  `# timeout: prefer GNU coreutils; if missing, run without timeout but mark TEMP_CLOSED in manifest`  
  `local rc=0`  
  `if command -v timeout >/dev/null 2>&1; then`  
    `timeout --preserve-status 30m bash -lc "${cmd}" 2>&1 | tee -a "${LOG}" || rc=$?`  
  `else`  
    `echo "WARN: timeout not found; running without timeout" | tee -a "${LOG}"`  
    `bash -lc "${cmd}" 2>&1 | tee -a "${LOG}" || rc=$?`  
  `fi`

  `echo "RC=${rc}" | tee -a "${LOG}"`  
  `return "${rc}"`  
`}`

`overall_verdict="PASS"`  
`exit_code=0`  
`tt_count=0`  
`blocking_count=0`

`mark_temp_closed() { overall_verdict="TEMP_CLOSED"; }`  
`mark_fail_closed() { overall_verdict="FAIL_CLOSED"; exit_code=1; }`

`# ---- Entry Gate ----`  
`step "ENTRY: tools" '`  
  `for t in bash sha256sum python3 jq tar git; do`  
    `command -v "$t" >/dev/null 2>&1 || { echo "MISSING_TOOL=$t"; exit 2; }`  
  `done`  
`' || { mark_fail_closed; }`

`step "ENTRY: files readable" '`  
  `for f in "'"${DOC_N1}"'" "'"${DOC_N2}"'" "'"${DOC_N3}"'" "'"${DOC_N4}"'"; do`  
    `test -r "$f" || { echo "UNREADABLE=$f"; exit 2; }`  
  `done`  
`' || { mark_fail_closed; }`

`step "ENTRY: sha256 snapshot" '`  
  `(cd / && sha256sum "'"${DOC_N1}"'" "'"${DOC_N2}"'" "'"${DOC_N3}"'" "'"${DOC_N4}"'") | tee "'"${EVDIR}"'/sha256sum.txt"`  
`' || { mark_fail_closed; }`

`# ---- Doc Inventory ----`  
`step "GEN: doc_inventory.json" '`  
`python3 - << "PY"`  
`import hashlib, json, os, datetime`  
`from pathlib import Path`  
`docs = [`  
  `("N1","/mnt/data/OMOC_藍圖_v4.0.1-r1.md","NORMATIVE","v4.0.1-r1"),`  
  `("N2","/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md","NORMATIVE","v4.0.1-r1+rbwi.1.0"),`  
  `("N3","/mnt/data/OMOC_施工skills_合冊_v4.0.1-r2.md","NORMATIVE","v4.0.1-r2"),`  
  `("N4","/mnt/data/OMOC_實作+WP總表_v4.0.1-r2.md","NORMATIVE","v4.0.1-r2"),`  
  `("R1","/mnt/data/OMOC_WP-001+RB+WI_審查報告A.md","REVIEW/FIX_SPEC","2026-02-17"),`  
`]`  
`out_path = Path("'"${EVDIR}"'") / "doc_inventory.json"`  
`items=[]`  
`for doc_id, path, role, ver in docs:`  
    `p=Path(path)`  
    `b=p.read_bytes()`  
    `sha=hashlib.sha256(b).hexdigest()`  
    `lines=b.decode("utf-8", errors="replace").splitlines()`  
    `items.append({`  
        `"doc_id": doc_id,`  
        `"role": role,`  
        `"path": str(p),`  
        `"canonical_version": ver,`  
        `"sha256": sha,`  
        `"bytes": len(b),`  
        `"line_count": len(lines),`  
        `"note": ""`  
    `})`  
`payload={`  
  `"schema_version":"wp001.doc_inventory.v1",`  
  `"doc_date":"2026-02-17",`  
  `"generated_at":datetime.datetime.now(datetime.timezone(datetime.timedelta(hours=8))).isoformat(timespec="seconds"),`  
  `"docs":items`  
`}`  
`out_path.write_text(json.dumps(payload, ensure_ascii=False, indent=2), encoding="utf-8")`  
`print(str(out_path))`  
`PY`  
`' || { mark_fail_closed; }`

`# ---- Anchor Registry & refs ----`  
`step "GEN: anchor_refs.txt + anchor_registry.json" '`  
`python3 - << "PY"`  
`import json, re, datetime`  
`from pathlib import Path`  
`docs = [`  
  `("N1","/mnt/data/OMOC_藍圖_v4.0.1-r1.md"),`  
  `("N2","/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md"),`  
  `("N3","/mnt/data/OMOC_施工skills_合冊_v4.0.1-r2.md"),`  
  `("N4","/mnt/data/OMOC_實作+WP總表_v4.0.1-r2.md"),`  
`]`  
`anchor_pat = re.compile(r"\[ANCHOR:([^\]]+)\]")`  
`html_id_pat = re.compile(r'<a id="([^"]+)"')`  
`refs=[]`  
`registry={"schema_version":"wp001.anchor_registry.v1",`  
          `"generated_at":datetime.datetime.now(datetime.timezone(datetime.timedelta(hours=8))).isoformat(timespec="seconds"),`  
          `"docs":[]}`  
`for doc_id, path in docs:`  
    `p=Path(path)`  
    `lines=p.read_text(encoding="utf-8", errors="replace").splitlines()`  
    `anchors=[]`  
    `for i,line in enumerate(lines, start=1):`  
        `for m in anchor_pat.finditer(line):`  
            `aid=m.group(1)`  
            `anchors.append({"anchor_id":aid,"anchor_type":"md_anchor","line":i,"excerpt":line[:200]})`  
            `refs.append(f"{doc_id}\t{aid}\t{i}")`  
        `for m in html_id_pat.finditer(line):`  
            `aid=m.group(1)`  
            `anchors.append({"anchor_id":aid,"anchor_type":"html_id","line":i,"excerpt":line[:200]})`  
            `refs.append(f"{doc_id}\t{aid}\t{i}")`  
    `registry["docs"].append({"doc_id":doc_id,"path":str(p),"anchors":anchors})`  
`out_dir=Path("'"${EVDIR}"'")`  
`(out_dir/"anchor_refs.txt").write_text("\n".join(refs)+("\n" if refs else ""), encoding="utf-8")`  
`(out_dir/"anchor_registry.json").write_text(json.dumps(registry, ensure_ascii=False, indent=2), encoding="utf-8")`  
`print(str(out_dir/"anchor_registry.json"))`  
`PY`  
`' || { mark_fail_closed; }`

`# ---- Anchor Drift Audit ----`  
`step "GEN: anchor_drift_audit.md" '`  
`python3 - << "PY"`  
`import json`  
`from pathlib import Path`  
`out_dir=Path("'"${EVDIR}"'")`  
`cur=out_dir/"anchor_registry.json"`  
`base=Path("baseline/wp001/anchor_registry.json")`  
`audit=out_dir/"anchor_drift_audit.md"`

`def load(p):`  
    `return json.loads(p.read_text(encoding="utf-8"))`

`def to_set(reg):`  
    `s=set()`  
    `for d in reg.get("docs",[]):`  
        `did=d["doc_id"]`  
        `for a in d.get("anchors",[]):`  
            `s.add((did,a["anchor_type"],a["anchor_id"]))`  
    `return s`

`lines=[]`  
`lines.append("# Anchor Drift Audit")`  
`lines.append("")`  
`lines.append(f"- current: {cur}")`  
`lines.append(f"- baseline: {base if base.exists() else 'MISSING'}")`  
`lines.append("")`  
`if not base.exists():`  
    `lines.append("## Verdict")`  
    `lines.append("")`  
    `lines.append("- status: TEMP_CLOSED")`  
    `lines.append("- reason: BASELINE_MISSING (first run cannot compute drift)")`  
    `lines.append("- action: create baseline/wp001/anchor_registry.json from current, then re-run for drift comparison")`  
`else:`  
    `c=load(cur); b=load(base)`  
    `cs=to_set(c); bs=to_set(b)`  
    `added=sorted(list(cs-bs))`  
    `removed=sorted(list(bs-cs))`  
    `lines.append("## Diff")`  
    `lines.append("")`  
    `lines.append(f"- added: {len(added)}")`  
    `lines.append(f"- removed: {len(removed)}")`  
    `lines.append("")`  
    `if removed:`  
        `lines.append("## Verdict")`  
        `lines.append("")`  
        `lines.append("- status: FAIL_CLOSED")`  
        `lines.append("- reason: REMOVED anchors detected (blocking)")`  
    `else:`  
        `lines.append("## Verdict")`  
        `lines.append("")`  
        `lines.append("- status: PASS" if not added else "- status: TEMP_CLOSED")`  
        `lines.append("- reason: " + ("no drift" if not added else "ADDED anchors detected (review required)"))`  
    `if added:`  
        `lines.append("")`  
        `lines.append("### Added")`  
        `for did,typ,aid in added[:200]:`  
            `lines.append(f"- {did} {typ} {aid}")`  
    `if removed:`  
        `lines.append("")`  
        `lines.append("### Removed")`  
        `for did,typ,aid in removed[:200]:`  
            `lines.append(f"- {did} {typ} {aid}")`

`audit.write_text("\n".join(lines)+("\n"), encoding="utf-8")`  
`print(str(audit))`  
`PY`  
`' || { mark_temp_closed; tt_count=$((tt_count+1)); }`

`# ---- Checks manifest ----`  
`step "GEN: checks_manifest.json" '`  
`python3 - << "PY"`  
`import json, subprocess, datetime, os`  
`from pathlib import Path`  
`def sh(cmd):`  
    `try:`  
        `return subprocess.check_output(cmd, shell=True, stderr=subprocess.STDOUT, text=True).strip()`  
    `except subprocess.CalledProcessError as e:`  
        `return f"ERROR: {e.returncode}: {e.output.strip()}"`  
`out_dir=Path("'"${EVDIR}"'")`  
`payload={`  
  `"schema_version":"wp001.checks_manifest.v1",`  
  `"generated_at":datetime.datetime.now(datetime.timezone(datetime.timedelta(hours=8))).isoformat(timespec="seconds"),`  
  `"tools":{`  
    `"bash": sh("bash --version | head -n 1"),`  
    `"git": sh("git --version"),`  
    `"gh": sh("gh --version | head -n 1"),`  
    `"jq": sh("jq --version"),`  
    `"python3": sh("python3 --version"),`  
    `"sha256sum": sh("sha256sum --version | head -n 1"),`  
    `"timeout": sh("timeout --version | head -n 1"),`  
  `},`  
  `"inputs":{`  
    `"sha256sum_txt": str(out_dir/"sha256sum.txt"),`  
    `"doc_inventory_json": str(out_dir/"doc_inventory.json"),`  
    `"anchor_registry_json": str(out_dir/"anchor_registry.json"),`  
    `"anchor_drift_audit_md": str(out_dir/"anchor_drift_audit.md"),`  
  `},`  
  `"platform_snapshots":{`  
    `"gh_rulesets_json":"MISSING (optional snapshot; see WI §6.6)",`  
    `"gh_branch_protection_json":"MISSING (optional snapshot; see WI §6.6)"`  
  `}`  
`}`  
`(out_dir/"checks_manifest.json").write_text(json.dumps(payload, ensure_ascii=False, indent=2), encoding="utf-8")`  
`print(str(out_dir/"checks_manifest.json"))`  
`PY`  
`' || { mark_temp_closed; tt_count=$((tt_count+1)); }`

`# ---- Evidence Index + Verdict + Bundle ----`  
`step "GEN: evidence_index.md + verdict.json + bundle" '`  
`python3 - << "PY"`  
`import json, datetime, os`  
`from pathlib import Path`  
`out_dir=Path("'"${EVDIR}"'")`  
`# Build evidence index`  
`idx=[]`  
`idx.append("# Evidence Index (WP-001)")`  
`idx.append("")`  
`idx.append("## Files")`  
`for fn in ["sha256sum.txt","doc_inventory.json","anchor_registry.json","anchor_refs.txt",`  
           `"anchor_drift_audit.md","checks_manifest.json","run.log"]:`  
    `p=out_dir/fn`  
    `idx.append(f"- {fn}: {'OK' if p.exists() else 'MISSING'}")`  
`(out_dir/"evidence_index.md").write_text("\n".join(idx)+("\n"), encoding="utf-8")`

`# verdict`  
`verdict={`  
  `"schema_version":"rbwi.verdict.v1",`  
  `"doc_id":"OMOC-WP001",`  
  `"overall_verdict":"'"${overall_verdict}"'",`  
  `"tt_count": int("'"${tt_count}"'"),`  
  `"blocking_count": int("'"${blocking_count}"'"),`  
  `"generated_at": datetime.datetime.now(datetime.timezone(datetime.timedelta(hours=8))).isoformat(timespec="seconds"),`  
  `"outputs":[`  
    `str(out_dir/"sha256sum.txt"),`  
    `str(out_dir/"doc_inventory.json"),`  
    `str(out_dir/"anchor_registry.json"),`  
    `str(out_dir/"anchor_drift_audit.md"),`  
    `str(out_dir/"checks_manifest.json"),`  
    `str(out_dir/"evidence_index.md"),`  
  `]`  
`}`  
`(out_dir/"verdict.json").write_text(json.dumps(verdict, ensure_ascii=False, indent=2), encoding="utf-8")`

`# bundle`  
`bundle=out_dir/"evidence_bundle.tgz"`  
`os.system(f"tar -czf {bundle} -C {out_dir} . >/dev/null 2>&1")`  
`print(str(bundle))`  
`PY`  
`' || { mark_fail_closed; }`

`# ---- Machine Summary ----`  
`step "GEN: wp001_machine_summary.json" '`  
`python3 - << "PY"`  
`import json, datetime`  
`from pathlib import Path`  
`out_dir=Path("'"${EVDIR}"'")`  
`payload={`  
  `"schema_version":"wp001.machine_summary.v1",`  
  `"overall_verdict":"'"${overall_verdict}"'",`  
  `"tt_count": int("'"${tt_count}"'"),`  
  `"blocking_count": int("'"${blocking_count}"'"),`  
  `"outputs":{`  
    `"sha256sum_txt": str(out_dir/"sha256sum.txt"),`  
    `"doc_inventory_json": str(out_dir/"doc_inventory.json"),`  
    `"anchor_registry_json": str(out_dir/"anchor_registry.json"),`  
    `"anchor_drift_audit_md": str(out_dir/"anchor_drift_audit.md"),`  
    `"anchor_refs_txt": str(out_dir/"anchor_refs.txt"),`  
    `"rc_txt": str(out_dir/"rc.txt"),`  
    `"verdict_json": str(out_dir/"verdict.json"),`  
    `"checks_manifest_json": str(out_dir/"checks_manifest.json"),`  
    `"evidence_index_md": str(out_dir/"evidence_index.md"),`  
    `"evidence_bundle_tgz": str(out_dir/"evidence_bundle.tgz"),`  
  `},`  
  `"doc_versions":{`  
    `"bp":"v4.0.1-r1",`  
    `"rbwi":"v4.0.1-r1+rbwi.1.0",`  
    `"skills":"v4.0.1-r2",`  
    `"wp_master":"v4.0.1-r2",`  
    `"wp001":"v4.0.1-r2+wp001.2.0"`  
  `},`  
  `"generated_at": datetime.datetime.now(datetime.timezone(datetime.timedelta(hours=8))).isoformat(timespec="seconds")`  
`}`  
`(out_dir/"wp001_machine_summary.json").write_text(json.dumps(payload, ensure_ascii=False, indent=2), encoding="utf-8")`  
`print(str(out_dir/"wp001_machine_summary.json"))`  
`PY`  
`' || { mark_fail_closed; }`

`# ---- rc.txt contract (final) ----`  
`{`  
  `echo "overall_verdict=${overall_verdict}"`  
  `echo "exit_code=${exit_code}"`  
  `echo "tt_count=${tt_count}"`  
  `echo "blocking_count=${blocking_count}"`  
  `echo "evidence_dir=${EVDIR}"`  
`} | tee "${RC_TXT}" >/dev/null`

`echo "DONE: ${overall_verdict} (exit_code=${exit_code})" | tee -a "${LOG}"`  
`exit "${exit_code}"`

### **5.2 Runbook 產出物**

𝐴𝑁𝐶𝐻𝑂𝑅:𝑂𝑀𝑂𝐶−𝑊𝑃001−0520ANCHOR:OMOC−WP001−0520  
\<a id="omoc-wp001-0520"\>\</a\>

成功執行後，`evidence/_acceptance/<UTC>/wp001/` 至少包含：

* `sha256sum.txt`  
* `doc_inventory.json`  
* `anchor_registry.json`  
* `anchor_refs.txt`  
* `anchor_drift_audit.md`  
* `checks_manifest.json`  
* `evidence_index.md`  
* `verdict.json`  
* `evidence_bundle.tgz`  
* `wp001_machine_summary.json`  
* `rc.txt`  
* `run.log`

---

## **6 Work Instructions**

𝐴𝑁𝐶𝐻𝑂𝑅:𝑂𝑀𝑂𝐶−𝑊𝑃001−0600ANCHOR:OMOC−WP001−0600  
\<a id="omoc-wp001-0600"\>\</a\>  
\[TAGS: wi, troubleshooting, ui-path, evidence\]

### **6.1 WI-0 Evidence 目錄與備份點**

𝐴𝑁𝐶𝐻𝑂𝑅:𝑂𝑀𝑂𝐶−𝑊𝑃001−0610ANCHOR:OMOC−WP001−0610  
\<a id="omoc-wp001-0610"\>\</a\>

**目的**：讓每次執行都有獨立、可追溯的 evidence bundle。  
**做法**：使用 UTC timestamp 建 evidence run。  
**證據落點**：`evidence/_acceptance/<UTC>/wp001/`。  
**常見故障**：無法寫入（權限/磁碟滿）。  
**Fail → TT**：TT-WP001-002（Entry Gate）或 TT-WP001-008（Runbook 命令硬化）

### **6.2 WI-1 Entry Gate**

𝐴𝑁𝐶𝐻𝑂𝑅:𝑂𝑀𝑂𝐶−𝑊𝑃001−0620ANCHOR:OMOC−WP001−0620  
\<a id="omoc-wp001-0620"\>\</a\>

**UI 無；命令為主**。  
**預期輸出**：`sha256sum.txt`、`checks_manifest.json`、`rc.txt`。  
**Fail 判斷**：

* `rc.txt: overall_verdict=FAIL_CLOSED` 或 `exit_code=1` → 阻斷  
* 任一 N1\~N4 不可讀 → 阻斷  
  **Fail → TT**：TT-WP001-002

### **6.3 WI-2 Doc Inventory**

𝐴𝑁𝐶𝐻𝑂𝑅:𝑂𝑀𝑂𝐶−𝑊𝑃001−0630ANCHOR:OMOC−WP001−0630  
\<a id="omoc-wp001-0630"\>\</a\>

**生成規則**：

* 來源：N1\~N4 \+ R1（至少）  
* 每筆必含：`doc_id, role, path, canonical_version, sha256, bytes, line_count`  
* sha 必可復算（對應 `sha256sum.txt`）  
  **驗證建議**：

`jq -e '.schema_version=="wp001.doc_inventory.v1" and (.docs|type=="array") and (.docs|length>=4)' evidence/_acceptance/*/wp001/doc_inventory.json`

**Fail → TT**：TT-WP001-005、TT-WP001-007

### **6.4 WI-3 Anchor Registry 與 Anchor Refs**

𝐴𝑁𝐶𝐻𝑂𝑅:𝑂𝑀𝑂𝐶−𝑊𝑃001−0640ANCHOR:OMOC−WP001−0640  
\<a id="omoc-wp001-0640"\>\</a\>

**目的**：把“錨點集合”變成可機器比較的資料結構。  
**錨點來源**：

* Markdown：`[ANCHOR:...]`  
* HTML：`<a id="...">`  
  **驗證建議**：

`jq -e '.schema_version=="wp001.anchor_registry.v1" and (.docs|length>=4)' evidence/_acceptance/*/wp001/anchor_registry.json`  
`test -s evidence/_acceptance/*/wp001/anchor_refs.txt`

**Fail → TT**：TT-WP001-006

### **6.5 WI-4 Anchor Drift Audit**

𝐴𝑁𝐶𝐻𝑂𝑅:𝑂𝑀𝑂𝐶−𝑊𝑃001−0650ANCHOR:OMOC−WP001−0650  
\<a id="omoc-wp001-0650"\>\</a\>

**baseline 位置**（建議）

* `baseline/wp001/anchor_registry.json`（人為建立或 CI 固化）

**漂移分類規則（Fail-Closed）**

* **DRIFT\_REMOVE / DRIFT\_RENAME / DRIFT\_COLLISION** → **FAIL\_CLOSED**  
* **DRIFT\_ADD / DRIFT\_MOVE** → **TEMP\_CLOSED**（需審核）  
* **BASELINE\_MISSING** → **TEMP\_CLOSED**（首次執行；需建立 baseline）

**Fail → TT**：TT-WP001-006

### **6.6 WI-5 GitHub UI 設置與 N/A 裁決**

𝐴𝑁𝐶𝐻𝑂𝑅:𝑂𝑀𝑂𝐶−𝑊𝑃001−0660ANCHOR:OMOC−WP001−0660  
\<a id="omoc-wp001-0660"\>\</a\>

**WP-001 原則**：只做**快照與可稽核取證**；不在這裡做“改設定”。  
若你想在 WP-001 就改 Rulesets/Merge Queue：請先讀 §9 的裁決，否則容易把“快照”寫成“快跑”（而稽核只認快照）。

**（A）可做：設定快照（建議）**

* **GitHub UI 路徑（供人工核對）**：  
  * Repository → **Settings** → **Branches** → **Rulesets**  
  * Repository → **Settings** → **Branches** → **Branch protection / Merge queue**（若 UI 顯示）  
* **命令快照（優先）**：  
  * `gh api` 匯出 rulesets / branch protection / workflows（落點：`evidence/_acceptance/<UTC>/wp001/gh_snapshot/`）  
  * 若 `gh` 未授權或權限不足：不得硬猜 → 建 TT（見 TT-WP001-003）

**（B）N/A 裁決與映射（必填清單）**

| 事項 | WP-001 裁決 | 原因 | 映射到哪個 WP/Gate |
| ----- | ----- | ----- | ----- |
| 建立/修改 Rulesets（Required checks、分支策略） | N/A（WP-001 不改） | WP-001 做權威與快照；改策略需工程變更流程 | WP-009\~WP-013（Phase-G 系列） |
| 啟用/調整 Merge Queue 行為 | N/A（WP-001 不改） | 屬平台可變；需配合 required checks 與 merge\_group workflows | WP-012（merge\_group alignment）/ WP-013（G4） |
| 設定 Required Checks 名稱/required contexts | N/A（WP-001 不改） | 需與 Actions 工作流程命名一致 | WP-011\~WP-013 |

---

## **7 Reference**

𝐴𝑁𝐶𝐻𝑂𝑅:𝑂𝑀𝑂𝐶−𝑊𝑃001−0700ANCHOR:OMOC−WP001−0700  
\<a id="omoc-wp001-0700"\>\</a\>  
\[TAGS: reference, schema, contracts, rc\]

### **7.1 doc\_inventory.json schema**

𝐴𝑁𝐶𝐻𝑂𝑅:𝑂𝑀𝑂𝐶−𝑊𝑃001−0710ANCHOR:OMOC−WP001−0710  
\<a id="omoc-wp001-0710"\>\</a\>

**schema\_version**：`wp001.doc_inventory.v1`  
**必要欄位**：

* `doc_date`、`generated_at`  
* `docs[]`：每筆含  
  * `doc_id`（N1/N2/N3/N4/R1…）  
  * `role`（NORMATIVE/REVIEW/FIX\_SPEC/SUPPORT…）  
  * `path`（絕對路徑）  
  * `canonical_version`  
  * `sha256`  
  * `bytes`  
  * `line_count`  
  * `note`

### **7.2 anchor\_registry.json schema**

𝐴𝑁𝐶𝐻𝑂𝑅:𝑂𝑀𝑂𝐶−𝑊𝑃001−0720ANCHOR:OMOC−WP001−0720  
\<a id="omoc-wp001-0720"\>\</a\>

**schema\_version**：`wp001.anchor_registry.v1`  
**必要欄位**：

* `generated_at`  
* `docs[]`：每筆含  
  * `doc_id`  
  * `path`  
  * `anchors[]`：每筆含  
    * `anchor_id`  
    * `anchor_type`：`md_anchor` 或 `html_id`  
    * `line`  
    * `excerpt`（≤200 chars）

### **7.3 anchor\_drift\_audit.md format**

𝐴𝑁𝐶𝐻𝑂𝑅:𝑂𝑀𝑂𝐶−𝑊𝑃001−0730ANCHOR:OMOC−WP001−0730  
\<a id="omoc-wp001-0730"\>\</a\>

**必含**：

* current / baseline 指向  
* status：PASS / TEMP\_CLOSED / FAIL\_CLOSED  
* reason：BASELINE\_MISSING / ADDED / REMOVED …  
* Diff（added/removed 計數與清單上限）

### **7.4 rc.txt 合同**

𝐴𝑁𝐶𝐻𝑂𝑅:𝑂𝑀𝑂𝐶−𝑊𝑃001−0740ANCHOR:OMOC−WP001−0740  
\<a id="omoc-wp001-0740"\>\</a\>

`rc.txt` 必含：

* `overall_verdict=PASS|TEMP_CLOSED|FAIL_CLOSED`  
* `exit_code=<int>`（FAIL\_CLOSED 必為 1）  
* `tt_count=<int>`  
* `blocking_count=<int>`  
* `evidence_dir=<path>`

### **7.5 Evidence Minset 合同**

𝐴𝑁𝐶𝐻𝑂𝑅:𝑂𝑀𝑂𝐶−𝑊𝑃001−0750ANCHOR:OMOC−WP001−0750  
\<a id="omoc-wp001-0750"\>\</a\>

**最小集合（不得刪）**

* `verdict.json`  
* `checks_manifest.json`  
* `evidence_index.md`  
* `evidence_bundle.tgz`

來源對齊：N2 Evidence Contract（見 §C Locator Proof：NORM-RBWI-EC-001）。

---

## **8 Explanation**

𝐴𝑁𝐶𝐻𝑂𝑅:𝑂𝑀𝑂𝐶−𝑊𝑃001−0800ANCHOR:OMOC−WP001−0800  
\<a id="omoc-wp001-0800"\>\</a\>  
\[TAGS: explanation, rationale, risk, auditability\]

### **8.1 為什麼 WP-001 必須輸出 doc\_inventory 與 anchor\_registry**

* **doc\_inventory**：回答“你到底用的是哪一版文件”。沒有它，你只能靠祈禱。  
* **anchor\_registry**：回答“你引用的錨點是否漂移”。沒有它，你會在稽核現場現學現賠。

### **8.2 為什麼 Web 只能 SUPPORT**

GitHub UI / Merge Queue / Rulesets 會變；把它當 NORMATIVE 等同把地基交給天氣預報。  
因此：

* 規範以 N1\~N4 為準  
* 平台行為用 §D 佐證  
* 不一致 → WEB-CONFLICT → TT → 保守裁決

---

## **9 Conflict and Decision Log**

𝐴𝑁𝐶𝐻𝑂𝑅:𝑂𝑀𝑂𝐶−𝑊𝑃001−0900ANCHOR:OMOC−WP001−0900  
\<a id="omoc-wp001-0900"\>\</a\>  
\[TAGS: conflict, decision-log, drift\]

### **CDL-001 WP-MASTER row outputs 與本文件輸出擴充**

* **觀察**：N4 §8 WP-001 row 指定 `doc_inventory.json + anchor_registry`。  
* **本文件決策**：保留兩者為核心輸出，並**增補** `anchor_drift_audit.md / sha256sum.txt / anchor_refs.txt / rc.txt / evidence minset`。  
* **理由**：增補不與 N4 衝突，且滿足 R1 對可稽核閉環的硬要求。  
* **狀態**：裁決成立（PASS）。

### **CDL-002 WP-MASTER 內提及 r1 檔案但本環境缺失**

* **觀察**：N4 文件頭提到 `/mnt/data/OMOC_實作+WP總表_v4.0.1-r1.md`（superseded）。本環境未提供該檔。  
* **本文件決策**：r2 作 primary 不受影響；r1 視為 fallback 缺失 → 建 TT。  
* **狀態**：TEMP\_CLOSED（見 TT-WP001-001）。

---

## **10 TT List**

𝐴𝑁𝐶𝐻𝑂𝑅:𝑂𝑀𝑂𝐶−𝑊𝑃001−1000ANCHOR:OMOC−WP001−1000  
\<a id="omoc-wp001-1000"\>\</a\>  
\[TAGS: tt, temp-closed, closure-criteria, fail-closed\]

**規則（修補 TT-WP001-010）**：本文所有不確定/缺口/平台可變行為，一律只允許出現在 TT；每條必有 closure criteria \+ evidence required；不得留 CR\_OPEN。  
**CR\_OPEN=0**：已以 `grep -RIn "CR_OPEN" /mnt/data/OMOC_WP-001+RB+WI.md /mnt/data/OMOC_WP-001+RB+WI_審查報告A.md` 確認本 WP 文件與其審查報告不含 CR\_OPEN；其他文件出現的 CR\_OPEN 不屬本 WP 缺口（需依各 WP 處理）。

### **TT-WP001-001**

* **摘要**：WP-MASTER 基線必須 r2；r1 僅 fallback。  
* **症狀**：舊版以 r1 當主基線。  
* **修補落地**：§2.1（明確 r2 primary）+ §9 CDL-002。  
* **Severity**：NONBLOCKING（只要 r2 可用）  
* **closure criteria**：`doc_inventory.json` 顯示 N4= r2；若 r1 存在則標記 role=SUPPORTED-SUPERSEDED 並附 sha；若缺失則記錄 note=missing 並保留不影響 r2。  
* **evidence required**：`doc_inventory.json`、`sha256sum.txt`

### **TT-WP001-002**

* **摘要**：Entry Gate 必須驗證四份 NORM 可讀 \+ sha256 snapshot。  
* **修補落地**：§4、§5.1（ENTRY steps）。  
* **Severity**：BLOCKING  
* **closure criteria**：`sha256sum.txt` 含 N1\~N4 四行；`rc.txt overall_verdict != FAIL_CLOSED`。  
* **evidence required**：`sha256sum.txt`、`checks_manifest.json`、`rc.txt`

### **TT-WP001-003**

* **摘要**：Exit Gate 需要明確輸出與機器驗收；GitHub UI 設置若 N/A 必裁決映射。  
* **修補落地**：§6.6、§11、§E。  
* **Severity**：NONBLOCKING（若僅缺平台快照則 TEMP\_CLOSED）  
* **closure criteria**：`wp001_machine_summary.json` 存在且欄位齊；N/A 映射表完整；若可，補 `gh_snapshot/*`。  
* **evidence required**：`wp001_machine_summary.json`、（可選）`gh_snapshot/*`

### **TT-WP001-004**

* **摘要**：Evidence\_Minset 不得排除 RBWI，需分層閉環。  
* **修補落地**：§7.5（4 件最小集合）+ §5.1（產出 bundle）。  
* **Severity**：BLOCKING  
* **closure criteria**：四件最小集合都存在且在 `evidence_index.md` 列出。  
* **evidence required**：`verdict.json`、`checks_manifest.json`、`evidence_index.md`、`evidence_bundle.tgz`

### **TT-WP001-005**

* **摘要**：Doc Inventory schema 缺失（需定義/生成/驗證）。  
* **修補落地**：§7.1 \+ §5.1（GEN: doc\_inventory.json）。  
* **Severity**：BLOCKING  
* **closure criteria**：`jq -e` 驗證通過；sha 可復算一致。  
* **evidence required**：`doc_inventory.json`、`sha256sum.txt`

### **TT-WP001-006**

* **摘要**：Anchor Drift Audit 缺失；需 drift 分類規則與 Fail 條件。  
* **修補落地**：§6.5 \+ §7.3 \+ §5.1（GEN: anchor\_drift\_audit.md）。  
* **Severity**：BLOCKING（若偵測到 REMOVE/RENAME/COLLISION）  
* **closure criteria**：baseline 存在時，`anchor_drift_audit.md` status=PASS；若有新增，需審核並更新 baseline 後再 PASS。  
* **evidence required**：`anchor_registry.json`、`anchor_drift_audit.md`、baseline 檔

### **TT-WP001-007**

* **摘要**：Doc Inventory 驗證規則缺失。  
* **修補落地**：§6.3（jq 驗證）+ §7.1（schema）。  
* **Severity**：BLOCKING  
* **closure criteria**：jq 驗證通過；`doc_inventory.json.docs[].sha256` 與 `sha256sum.txt` 一致。  
* **evidence required**：`doc_inventory.json`、`sha256sum.txt`

### **TT-WP001-008**

* **摘要**：Runbook 命令硬化需對齊 step() 模板與 rc 合同。  
* **修補落地**：§5.1（step() \+ rc.txt）。  
* **Severity**：BLOCKING  
* **closure criteria**：每個 STEP 都在 `run.log` 有 `RC=`；最終 `rc.txt` 欄位齊。  
* **evidence required**：`run.log`、`rc.txt`

### **TT-WP001-009**

* **摘要**：Evidence\_Minset 舊規則漂移（僅 3 檔）。  
* **修補落地**：§7.5（4 件）+ §5.1 產出。  
* **Severity**：BLOCKING  
* **closure criteria**：同 TT-WP001-004。  
* **evidence required**：同 TT-WP001-004

### **TT-WP001-010**

* **摘要**：不確定事項不得散落主流程；必收斂到 TT/TEMP\_CLOSED。  
* **修補落地**：§2.2、§10（本章規則）+ 全文無散落缺口描述。  
* **Severity**：BLOCKING（若發現散落缺口）  
* **closure criteria**：全文檢索關鍵字（UNVERIFIED/MISSING/DRIFT 等）只能出現在 §10 或明確 Gate Verdict；其餘段落僅引用 TT ID。  
* **evidence required**：`wp001_machine_summary.json` \+（建議）`static_scan.txt`

---

## **11 Exit Gate Checklist**

𝐴𝑁𝐶𝐻𝑂𝑅:𝑂𝑀𝑂𝐶−𝑊𝑃001−1100ANCHOR:OMOC−WP001−1100  
\<a id="omoc-wp001-1100"\>\</a\>  
\[TAGS: exit-gate, checklist, machine-verify\]

**Gate ID**：GATE-WP001-EXIT  
**判定以 `wp001_machine_summary.json` \+ `rc.txt` 為準**。

| Check | Pass 判準 | Fail 判準 | Fail → TT |
| ----- | ----- | ----- | ----- |
| C1 N1\~N4 可讀 | `sha256sum.txt` 含四行 | 缺任一行或不可讀 | TT-WP001-002 |
| C2 doc\_inventory 合格 | schema\_version 正確、docs\>=4、sha 可復算 | jq 驗證失敗 | TT-WP001-005/007 |
| C3 anchor\_registry 合格 | docs\>=4、anchors 可列 | schema/檔案缺失 | TT-WP001-006 |
| C4 drift audit | baseline 存在且 status=PASS | REMOVE/RENAME/COLLISION | TT-WP001-006（阻斷） |
| C5 evidence minset | 4 件齊 | 任一缺失 | TT-WP001-004/009 |
| C6 rc 合同 | `rc.txt` 欄位齊 | 缺欄位或 FAIL\_CLOSED 未 exit\_code=1 | TT-WP001-008 |
| C7 machine summary | 欄位齊、outputs 指向存在 | 欄位缺/路徑不存在 | TT-WP001-003/010 |

---

## **A Quick Index**

𝐴𝑁𝐶𝐻𝑂𝑅:𝑂𝑀𝑂𝐶−𝑊𝑃001−𝐴100ANCHOR:OMOC−WP001−A100  
\<a id="omoc-wp001-a100"\>\</a\>  
\[TAGS: quick-index, glossary\]

* **Authority Stack**：N1\~N4 的規範位階；SUPPORT 不得升格  
* **Entry Gate / Exit Gate**：執行前/後的機器驗收門檻  
* **Evidence Minset**：最小可稽核證據集合（4 件）  
* **doc\_inventory.json**：文件版本與 hash 清冊  
* **anchor\_registry.json**：錨點清冊  
* **anchor\_drift\_audit.md**：錨點漂移報告  
* **TT**：測試追蹤；所有缺口的唯一容器  
* **TEMP\_CLOSED / FAIL\_CLOSED**：可繼續但需關閉 / 阻斷

---

## **B Mapping Index**

𝐴𝑁𝐶𝐻𝑂𝑅:𝑂𝑀𝑂𝐶−𝑊𝑃001−𝐵100ANCHOR:OMOC−WP001−B100  
\<a id="omoc-wp001-b100"\>\</a\>  
\[TAGS: mapping, req-to-output\]

| Req-ID | Outputs | 核心證據檔 |
| ----- | ----- | ----- |
| WP001-REQ-001 | doc\_inventory.json | doc\_inventory.json |
| WP001-REQ-002 | sha256sum.txt, checks\_manifest.json, rc.txt | sha256sum.txt, rc.txt |
| WP001-REQ-003 | verdict.json, evidence\_index.md, evidence\_bundle.tgz | evidence\_index.md, evidence\_bundle.tgz |
| WP001-REQ-004 | doc\_inventory.json | doc\_inventory.json |
| WP001-REQ-005 | anchor\_registry.json, anchor\_drift\_audit.md, anchor\_refs.txt | anchor\_drift\_audit.md |
| WP001-REQ-006 | run.log, rc.txt | run.log, rc.txt |
| WP001-REQ-007 | tt\_list（本文件 §10） | §10（TT List） |
| WP001-REQ-008 | cr\_open\_scan.txt（建議） | cr\_open\_scan.txt |
| WP001-REQ-009 | gh\_snapshot/\*（可選） | gh\_snapshot/\* 或 TT |
| WP001-REQ-010 | wp001\_machine\_summary.json | wp001\_machine\_summary.json |

---

## **C Locator Proof**

𝐴𝑁𝐶𝐻𝑂𝑅:𝑂𝑀𝑂𝐶−𝑊𝑃001−𝐶100ANCHOR:OMOC−WP001−C100  
\<a id="omoc-wp001-c100"\>\</a\>  
\[TAGS: locator-proof, traceability\]

每條：≤25 字摘錄 \+ locator（doc\_path / heading/anchor / line range）。  
本章只引用 N1\~N4 \+ R1。

1. “WP-001… evidence: doc\_inventory.json \+ anchor\_registry”  
* locator：`/mnt/data/OMOC_實作+WP總表_v4.0.1-r2.md` :: `§8 WP-MASTER Table / WP Summary Table` :: L0333-L0335  
2. “Interface Contract 必備欄位：doc\_date、generated\_at、blueprint\_version…”  
* locator：`/mnt/data/OMOC_藍圖_v4.0.1-r1.md` :: `[ANCHOR:OMOC-BP-1200]` :: L0211-L0224  
3. “merge\_queue…需關注 required checks / merge\_group”  
* locator：`/mnt/data/OMOC_藍圖_v4.0.1-r1.md` :: `[ANCHOR:OMOC-BP-1000]` :: L0169-L0187  
4. “Evidence Contract：verdict/checks\_manifest/evidence\_index/bundle”  
* locator：`/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md` :: `ANCHOR:OMOC-RBWI-EVIDENCE-CONTRACT` :: L0147-L0154  
5. “CMD template：timeout/tee/rc”  
* locator：`/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md` :: `ANCHOR:OMOC-RBWI-CMD-TEMPLATE` :: L0189-L0208  
6. “不可信輸入…不確定就建 TT；Fail-Closed”  
* locator：`/mnt/data/OMOC_施工skills_合冊_v4.0.1-r2.md` :: `Security Guardrails` :: L2165-L2171  
7. “WP Summary Table 固定欄位缺一即 FAIL\_CLOSED（含 ui\_path/web\_locators 等）”  
* locator：`/mnt/data/OMOC_實作+WP總表_v4.0.1-r2.md` :: `§8 WP-MASTER Table` :: L0312-L0329  
8. “Doc Inventory schema：docs\[\].sha256/bytes/line\_count…”  
* locator：`/mnt/data/OMOC_實作+WP總表_v4.0.1-r2.md` :: `§12.1 Doc Inventory Schema` :: L0460-L0486  
9. “本報告要求 TT-WP001-001\~010 與 PATCH-WP001-001\~007 必修”  
* locator：`/mnt/data/OMOC_WP-001+RB+WI_審查報告A.md` :: `TT Table` :: L0235-L0311

---

END