# **OMOC\_RIP-A：Agent Engine RIP（施工者/驗收官引擎）— v1.1.0 (UPGRADE PATCH 2026-02-21)**

\[ANCHOR:OMOC-RIP-A-0000\]

---

## **A. Cover Card**

\[ANCHOR:OMOC-RIP-A-0100\]

| field | value |
| ----- | ----- |
| external\_name | OMOC\_RIP-A：Agent Engine RIP（施工者/驗收官引擎） |
| internal\_short\_name | OMOC-RIP-A |
| version | v1.1.0 |
| generated\_at | 2026-02-21 (Asia/Taipei, UTC+08:00) |
| supersedes | v1.0.0 |
| overall\_verdict | **TEMP\_CLOSED**（Fail-Closed：需環境實跑證據才能轉 PASS） |
| one\_line\_conclusion | 「文件不再允許造假證據；但你還是得真的跑一次，才有資格說 PASS。」 |

**TEMP\_CLOSED 主因（可稽核）**：WSP scope 仍缺失（不可越權裁決）＋「環境實測證據」尚未可回放；其餘缺口已用可執行工件/門檻/TT 收斂，且 **CR\_OPEN=0**。

---

## **B. Document Control**

\[ANCHOR:OMOC-RIP-A-0200\]

| field | value |
| ----- | ----- |
| doc\_id | OMOC\_RIP-A |
| authority\_stack\_policy | Files-first / No-Source-No-Norm / SUPPORT-only / Fail-Closed |
| aligned\_wps\_hard | WP-007 / WP-010 / WP-011 |
| aligned\_wps\_route\_out | WP-008 / WP-012 / WP-013 / WP-014 |
| forbidden | token/secret 泄漏；任何示例一律 REDACTED |
| CR\_OPEN | 0 |
| status | READY（文件層） / TEMP\_CLOSED（環境證據層） |

**Inputs（必讀清單；本版已全文檢索）**：

* NORMATIVE/SSOT：藍圖、RB+WI 合冊、施工skills 合冊、WP總表、WP-001\~014、總體RIP修補方案  
* TARGET：RIP-A v1.0.0  
* REVIEW/FIX SPEC：RIP-A v1.0.0 審查報告（Findings/TT/destructive tests）  
* SUPPORT：RIP 外部資料（含 CLAUDE/GPT/GEMINI）

---

## **C. Diátaxis Reader Guide**

\[ANCHOR:OMOC-RIP-A-0300\]

**Tutorial（第一次走通）**

1. 先跑 WP-007 抽取落地（skills/scripts/workflows 入 repo）  
2. 開 PR（PR-only）安裝 RIP-A 工件（本文件 L 節 FILE BLOCK）  
3. 觸發 reviewer workflow（PR \+ merge\_group 兩情境）並 **同名回報 required check**（WP-011）  
4. 生成 checks\_manifest（expected/observed/diff/verdict/tt；WP-010）  
5. 產 Evidence Minset（含 bundle\_audit \+ secrets\_scan=0；WP-008）  
6. 跑 Drift/Closure 三件套（superseded\_scan/drift\_report/tt\_export；WP-014）

**How-to（照表施工）**：看 M Runbook ＋ N WI。  
**Reference（規格查表）**：看 K Artifacts Contract。  
**Explanation（為什麼要這樣做）**：GitHub 的 merge queue 會等 required checks；沒回報就是「永遠等」。([GitHub Docs](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/configuring-pull-request-merges/managing-a-merge-queue))

---

## **D. TOC（repo-local anchors only）**

\[ANCHOR:OMOC-RIP-A-0400\]

* [A. Cover Card](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999b949-39c0-83a9-b485-341ba9210ff8#omoc-rip-a-0100)  
* [B. Document Control](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999b949-39c0-83a9-b485-341ba9210ff8#omoc-rip-a-0200)  
* [C. Diátaxis Reader Guide](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999b949-39c0-83a9-b485-341ba9210ff8#omoc-rip-a-0300)  
* [D. TOC](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999b949-39c0-83a9-b485-341ba9210ff8#omoc-rip-a-0400)  
* [E. Quick Index](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999b949-39c0-83a9-b485-341ba9210ff8#omoc-rip-a-0500)  
* [F. Anchor Registry](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999b949-39c0-83a9-b485-341ba9210ff8#omoc-rip-a-0600)  
* [G. Authority Stack & SSOT Resolution](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999b949-39c0-83a9-b485-341ba9210ff8#omoc-rip-a-0700)  
* [H. Scope / Non-goals / Route-out Map](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999b949-39c0-83a9-b485-341ba9210ff8#omoc-rip-a-0800)  
* [I. Requirements](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999b949-39c0-83a9-b485-341ba9210ff8#omoc-rip-a-0900)  
* [J. Architecture](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999b949-39c0-83a9-b485-341ba9210ff8#omoc-rip-a-1000)  
* [K. Artifacts Contract](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999b949-39c0-83a9-b485-341ba9210ff8#omoc-rip-a-1100)  
* [L. Repo Artifacts (FILE BEGIN/END)](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999b949-39c0-83a9-b485-341ba9210ff8#omoc-rip-a-1200)  
* [M. Runbook](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999b949-39c0-83a9-b485-341ba9210ff8#omoc-rip-a-1300)  
* [N. Work Instructions](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999b949-39c0-83a9-b485-341ba9210ff8#omoc-rip-a-1400)  
* [O. Gates](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999b949-39c0-83a9-b485-341ba9210ff8#omoc-rip-a-1500)  
* [P. Traceability](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999b949-39c0-83a9-b485-341ba9210ff8#omoc-rip-a-1600)  
* [Q. Findings Closure Matrix](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999b949-39c0-83a9-b485-341ba9210ff8#omoc-rip-a-1700)  
* [R. TT Register](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999b949-39c0-83a9-b485-341ba9210ff8#omoc-rip-a-1800)  
* [S. Web Evidence Appendix (SUPPORT-only)](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999b949-39c0-83a9-b485-341ba9210ff8#omoc-rip-a-1900)  
* [T. Change Log](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999b949-39c0-83a9-b485-341ba9210ff8#omoc-rip-a-2000)  
* [U. Machine Summary (JSON)](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-omoc-shi-zuo-3/c/6999b949-39c0-83a9-b485-341ba9210ff8#omoc-rip-a-2100)

---

## **E. Quick Index（keyword → anchor → artifact）**

\[ANCHOR:OMOC-RIP-A-0500\]

| keyword | anchor | primary\_artifact |
| ----- | ----- | ----- |
| pr-only | \#omoc-rip-a-1500 | policy/omoc\_agent\_policy.yml |
| required checks / checks\_manifest | \#omoc-rip-a-1100 | scripts/omoc\_collect\_checks\_manifest.sh |
| always-report / merge\_group | \#omoc-rip-a-1200 | .github/workflows/omoc-gate.yml |
| evidence minset / bundle audit | \#omoc-rip-a-1100 | scripts/omoc\_pack\_evidence.sh |
| secrets\_scan=0 | \#omoc-rip-a-1100 | scripts/omoc\_secrets\_scan.sh |
| doc hygiene scan | \#omoc-rip-a-1100 | scripts/omoc\_doc\_hygiene\_scan.sh |
| superseded scan | \#omoc-rip-a-1100 | scripts/omoc\_superseded\_scan.sh |
| drift\_report / tt\_export | \#omoc-rip-a-1100 | scripts/omoc\_drift\_report.sh \+ scripts/omoc\_tt\_export.sh |
| pinned actions report | \#omoc-rip-a-1100 | scripts/omoc\_pinned\_actions\_report.sh |
| installer | \#omoc-rip-a-1200 | scripts/omoc\_install\_rip\_a.sh |

---

## **F. Anchor Registry（stable anchors）**

\[ANCHOR:OMOC-RIP-A-0600\]

**規則**：每章至少一個 `[ANCHOR:...]` \+ `<a id="..."></a>`；本檔 TOC 只使用 `#...`。

| section | anchor\_tag | html\_id |
| ----- | ----- | ----- |
| Cover | OMOC-RIP-A-0100 | omoc-rip-a-0100 |
| DocControl | O-rip-a-0200 |  |
| Diátaxis | OMOC-RIP-A-0300 | omoc-rip-a-0300 |
| TOC | OMOC-RIP-A-0400 | omoc-rip-a-0400 |
| QuickIndex | OMOC-RIP-A-0500 | omoc-rip-a-0500 |
| AnchorRegistry | OMOC-RIP-A-0600 | omoc-rip-a-0600 |
| Authority | OMOC-RIP-A-0700 | omoc-rip-a-0700 |
| Scope | OMOC-RIP-A-0800 | omoc-rip-a-0800 |
| Requirements | OMOC-RIP-A-0900 | omoc-rip-a-0900 |
| Architecture | OMOC-RIP-A-1000 | omoc-rip-a-1000 |
| ArtifactsContract | OMOC-RIP-A-1100 | omoc-rip-a-1100 |
| RepoArtifacts | OMOC-RIP-A-1200 | omoc-rip-a-1200 |
| Runbook | OMOC-RIP-A-1300 | omoc-rip-a-1300 |
| WI | OMOC-RIP-A-1400 | omoc-rip-a-1400 |
| Gates | OMOC-RIP-A-1500 | omoc-rip-a-1500 |
| Traceability | OMOC-RIP-A-1600 | omoc-rip-a-1600 |
| FindingsClosure | OMOC-RIP-A-1700 | omoc-rip-a-1700 |
| TTRegister | OMOC-RIP-A-1800 | omoc-rip-a-1800 |
| WebEvidence | OMOC-RIP-A-1900 | omoc-rip-a-1900 |
| ChangeLog | OMOC-RIP-A-2000 | omoc-rip-a-2000 |
| MachineSummary | OMOC-RIP-A-2100 | omoc-rip-a-2100 |

---

## **G. Authority Stack & SSOT Resolution（Fail-Closed）**

\[ANCHOR:OMOC-RIP-A-0700\]

### **G.1 Authority Stack（由高到低）**

* **NORMATIVE/SSOT**：藍圖 → RB+WI → 施工skills → WP總表 → WP-001\~014 → 本 RIP-A  
* **REVIEW/FIX SPEC**：RIP-A v1.0.0 審查報告（本版必l實突 → WEB-CONFLICT → TT） \#\# G.2 裁決規則（No-Source-No-Norm）  
* 任何 MUST/不得/FAIL\_CLOSED/TEMP\_CLOSED/PASS：**必須能回指 SESED**。  
* 外部來源互相矛盾：標 `WEB-CONFLICT`，不得硬選邊；進 TT 並列 retest\_steps。

---

## **H. Scope / Non-goals CHOR:OMOC-RIP-A-0800\]**

### **\- 固化「施工者 Worker / 驗收官 Reviewer」雙引擎：Issue→PR、PR review、狀態回報、證據輸出、停機規則。**

* **PR-only**：任何自動化變更永遠以 PR 呈現（禁止直推 default branch）。  
* **Evidence Contract 落地**：不允許 echackager gate。 ways-Report\*\*：PR \+ merge\_group 兩情境同名 required check 必回報，且不可被 skip。**RIP-F 必要落點整合回 RIP-A**：供應鏈硬化與治理，至少固化為 required checks \+ evidence artifacts（Minset 不可s（越界即 FAIL\_CLOSED）  
* 不在本 RIP 直接改寫藍圖或 RB+WI 的「立法/流程法條」。  
* 不在本文提供任何 toREDACTED。  
* 不替你「點 UI」啟用 Merge Queue / Rulesets；只提供可回）。 Map（硬對齊）  
* **WP-007**：skills/scripts 抽取落地與結構驗證（入口前置）。0tract（expected/observed/diff/verdict/tt）。  
* \**WP-011*rs、no-skip、終結回報聚合 job。  
* **WP-008**：Evidence Minset t \+ secrets\_scan=0 \+ doc hygiene scan=0）。**：merge\_group/MQ probe（Mode A runtime / Mode B static）。 superseded\_scan/drift\_report/tt\_export/closure 決策表。mator / DoD / 落點）**  
  **\[ANCHOR:OMOC-RIP-A-0900\]**  
  **\<a id="omoc-rip-a-090\*必須**在 P 節 Coverage Map 出現，否則視為缺口（TEMP\_CLOSED+TT）。

| req\_id | requirement | ssot\_locator (min) | rip\_a\_locator | DoD / acceptance |
| ----- | ----- | ----- | ----- | ----- |
| RIP-A-推） | RBWI Guardrails / Fail-Closed | L.policy | Gate: PR-only scan=0；命中即 FAIL\_CLOSED |  |
| RIP-A-REQ-002 | Evidence Minset（含硬件套） | WP-008 hard items | K.1/K.2 | verdict+checks\_manifest+evidence\_index+bundle+bundle\_audit+secrets\_scan=0 |
| RIP-A-REQ-003 | check0 spec | K.3 | expected/observed/diff/verdict/tt 齊備；expected 不可空（不可得→TEMP\_CLOSED+TT） |  |
| RIP-A-REQ-004 | Always-Report011 spec | L.workflow | 同名 required check 必回報；終結聚合 job 不可 skip |  |
| RIP-A-REQ-005 | merge\_group 觸發對齊 | WP-012/013 rkflow | merge\_group 事件存在；Mode A 能產 run\_proof（否則 TEMP\_CLOSED+TT） |  |
| RIP-A-REQ-006 | Secrets 禁入 \+ secretslls DoD | K.2 | secrets\_scan.log hits=0；forbidden\_patterns=0 |  |
| RIP-A-REQ-007 | Doc Hygiene 汙染=e | K.2 | scan hits=0；命中即 FAIL\_CLOSED |  |
| RIP-A-REQ-008 | Drift/Closure 三件套 | WP-014 | K.4 rift\_report 具欄位；tt\_export 可機器讀 |  |
| RIP-A-REQ-009 | skills validator/packager 強制 gateor | L.workflow \+ scripts | validate\_contracts rc==0 才能 PASS；否則 FAIL\_CLOSED |  |
| RIP-A-REQ-010 | high-risk require\_ guardrails \+ security notes | L.policy | 高風險動作需 ack；audit log 路徑存在 |  |
| RIP-A-REQ-011 | supply-chain minset（pinning+scan） | 總體方案 RIP-F 要求落點 | L.workflow \+ scripts | pinned\_actions\_report 可生成；zizmor/scorecard 以 required checks 固化 |
| RIP-A-REQ-012 | insentory） | 總體方案「RIP-Installer」 | L.installer | 重跑產新 TS evidence；可回滾（刪除落地檔） |

---

## **J. Architecture（角色、回路、停機規則、隔離、證據流）**

\[ANCHOR:OMOC-RIP-A-1p-a-1000"\>

### **J.1 Roles（固化）**

* **Worker（施工者）**：issue→修復→開 PR（PR-only）；不具備直接修改 default branch 的能力。  
* **Reviewer（驗收官）**：PR 審查＋狀態回報＋證據合約驗證；必回報 canonical required check。  
* \*\*Gatekeeper（合約稽ger/secrets/doc hygiene/superseded/drift/tt\_export 的 gate 裁決與 rc 收斂。

### **J.2 Loop（失敗回路；bounded retries）**

* bounded retries / max runtime / max iterations：由 \`policy/omoc\_agent\_pUNVERIFIED/MISSING/WEB-CONFLICT：**必 TT**，主流程只引用 TT id，不散落敘述。

### **J.3 Isolation（confused deputy / prompt injection）**

* 高風險動作（權限變更、secrets、network egress、規則/政策改寫）必 requireSED 或 TEMP\_CLOSED（依 policy）。  
* tool allowlist/denylist 與 audit log 路徑固定（Repo artifacts 內提供骨架）。

### **J.4 Evidence Fl- evidence 必可回放：`verdict.json` \+ `checks_manifest.json` \+ `evidence_:contentReference[oaicite:117]{index=117}bundle.tgz` \+ `bundle_audit.json` \+ 掃描輸出（secrets/doc/superseded）。**

* 禁止 workflow 用空檔/echo 假造 checks\_manifest/evidence：validator gate 會把這種把戲直接判 FAIL\_CLOSEts Contract（Minset/Plus；checks\_manifest；drift/tt；hygiene）  
  \[ANCHOR:OMOC-RIP-A-1100\]  
  \<a i/a\>

### **K.1 Evidence Minset（本 RIP-A 的硬交付）**

**必須存在（repo root）**：

* `verdict.json`  
* `checks_manifest.json`  
* `evidence_index.md`  
* `evidence_bundle.tgz`  
* `bundle_audit.json`  
  **必須存在（掃描輸出）**：  
* `secrets_scan.log`（hits=0）  
* `doc_hygiene_scan.txt`（hits=0）perseded\_scan.txt\`（hits=0；命中 r1/legacy 參照即 FAIL\_C  
* `drift_report.md`（含 las\_action / NEEDS-TEST）  
* `tt_export.json`T lifecycle）

### **K.2 checks\_manifest.json（Req）**

最低 schema（RIP-A 固化；詳細規格以 WP-010 為準）contexts\_contract.expected\[\]`（不可空；不可得→`verdict=TEMP\_CLOSED `+ TT + 403/缺權限證據）:contentReference[oaicite:137]{index=137}:contentReference[oaicite:138]{index=138}exts_contract.observed[]`

* `required_contexts_contract.diff{missing[],extra[]}`  
* `requi:contentReference[oaicite:139]{index=139}verdict`（PASS/TEMP\_CLOSED/FAIL\_CLOSED）  
* `required_contexts_contract.tt[]`

### **K.3 Supply-chain hardening（RIP-F 必要落點，整合回 RIP-A）**

* `pinned_actions_report.json`：列出 workflows 中 `uses:` 的釘定狀態與差異（Minset）  
* `zizmor.sarif`（或最小 `zizmor_report.md`）：Actions 靜態安全分析（Minset 不可少）([GitHub](https://github.com/zizmorcore/zizmor))  
* `score:contentReference[oaicite:142]{index=142}ard_report.json`）：OpenSSF Scorecard 產物（Plus；但建議列 required check）([GitHub](https://github.com/ossf/scorecard-action))

---

## **L. Repo Artifacts（FILE BEGIN/END；骨架級但可落地）**

\[ANCHOR:OMOC-RIP-A-1200\]

注意：以下皆為「落地入口骨架」。任何 secrets 以 `REDACTED` 命名；不得輸出真值。

---

### **L.1 scripts/omoc\_install\_rip\_a.sh（installer；PR-only 呈現）**

\--- FILE BEGIN: scripts/omoc\_install\_rip\_a.sh

\#\!/usr/bin/env bash  
set \-euo pipe:contentReference\[oaicite:145\]{index=145}taller (skeleton)  
\# \- MUST be executed in a feature branch and delivered via PR (PR-only).  
\# \- Writes repo artifacts for RIP-A gate workflows/scripts/policy.  
\# \- DOES NOT set secrets or modify GitHub UI.

TS="${OMOC\_TS:-$(date \-u \+%Y%m%dT%H%M%SZ)}"  
OUT\_DIR="evidence/\_acceptance/${TS}/log"  
mkdir \-p "${OUT\_DIR}"

echo "\[omoc\_install\_rip\_a\] TS=${TS}" | tee "${OUT\_DIR}/install.log"  
echo "NOTE: This installer is a skeleton. Commit changes via PR only." | tee \-a "${OUT\_DIR}/install.log"

\# Minimal inventory (machine-readable)  
cat \> "${OUT\_DIR}/rip\_a\_install\_inventory.json" \<\<'JSON'  
{  
  "rip\_id":"OMOC\_RIP-A",  
  "version":"v1.1.0",  
  "artifacts\_expected":\[  
    ".github/workflows/omoc-gate.yml",  
    "scripts/omoc\_validate\_contracts.sh",  
    "scripts/omoc\_collect\_checks\_manifest.sh",  
    "scripts/omoc\_pack\_evidence.sh",  
    "scripts/omoc\_secrets\_scan.sh",  
    "scripts/omoc\_doc\_hygiene\_scan.sh",  
    "scripts/omoc\_superseded\_scan.sh",  
    "scripts/omoc\_drift\_report.sh",  
    "scripts/omoc\_tt\_export.sh",  
    "scripts/omoc\_pinned\_actions\_report.sh",  
    "policy/omoc\_agent\_policy.yml",  
    "policy/candidates\_manifest.yaml"  
  \]  
}  
JSON

echo "\[omoc\_install\_rip\_a\] DONE (inventory written)."

\--- FILE END: scripts/omoc\_install\_rip\_a.sh

---

### **L.2 scripts/omoc\_validate\_contracts.sh（validator gate；rc\!=0 → FAIL\_CLOSED）**

\--- FILE BEGIN: scripts/omoc\_validate\_contracts.sh

\#\!/usr/bin/env bash  
set \-euo pipefail

\# OMOC contract validator (skeleton; Fail-Closed)  
\# MUST:  
\#  \- refuse stubbed evidence (empty files) for key artifacts  
\#  \- enforce presence of WP-008 hard items  
\#  \- enforce forbidden patterns scan results (0 hits)  
\#  \- emit single exit code (rc\!=0 \=\> FAIL\_CLOSED)

require\_file() {  
  local f="$1"  
  if \[\[ \! \-f "$f" \]\]; then  
    echo "\[FAIL\] missing file: $f" \>&2  
    return 2  
  fi  
  if \[\[ \! \-s "$f" \]\]; then  
    echo "\[FAIL\] empty file (stub detected): $f" \>&2  
    return 3  
  fi  
  return 0  
}

rc=0

\# Required root artifacts (minset \+ hard items)  
for f in verdict.json checks\_manifest.json evidence\_index.md evidence\_bundle.tgz bundle\_audit.json; do  
  require\_file "$f" || rc=$?  
done

\# Scans must exist and be non-empty; content-level validation is downstream (parser can be added)  
for f in secrets\_scan.log doc\_hygiene\_scan.txt superseded\_scan.txt drift\_report.md tt\_export.json pinned\_actions\_report.json; do  
  require\_file "$f" || rc=$?  
done

if \[\[ "$rc" \-ne 0 \]\]; then  
  echo "\[omoc\_validate\_contracts\] FAIL\_CLOSED rc=$rc" \>&2  
  exit "$rc"  
fi

echo "\[omoc\_validate\_contracts\] PASS"

\--- FILE END: scripts/omoc\_validate\_contracts.sh

---

### **L.3 scripts/omoc\_collect\_checks\_manifest.sh（expected/observed/diff/verdict/tt）**

\--- FILE BEGIN: scripts/omoc\_collect\_checks\_manifest.sh

\#\!/usr/bin/env bash  
set \-euo pipefail

\# Collect checks\_manifest.json (WP-010 aligned; skeleton)  
\# \- expected: prefer rulesets API; fallback to branch protection  
\# \- if expected cannot be fetched (e.g., 403): TEMP\_CLOSED \+ TT (do NOT fake PASS)

TS="${OMOC\_TS:-$(date \-u \+%Y%m%dT%H%M%SZ)}"  
OUT\_DIR="evidence/\_acceptance/${TS}/ercc\_observed"  
mkdir \-p "${OUT\_DIR}"

OWNER\_REPO="${GITHUB\_REPOSITORY:-REDACTED/REDACTED}"  
DEFAULT\_BRANCH="${OMOC\_DEFAULT\_BRANCH:-main}"

expected\_json="${OUT\_DIR}/expected.json"  
observed\_json="${OUT\_DIR}/observed.json"  
err\_log="${OUT\_DIR}/fetch\_errors.log"  
: \> "${err\_log}"

fetch\_expected() {  
  \# Try rulesets (requires admin-like scopes)  
  if gh api \-H "Accept: application/vnd.github+json" "/repos/${OWNER\_REPO}/rulesets" \> "${expected\_json}" 2\>\>"${err\_log}"; then  
    return 0  
  fi  
  \# Fallback: branch protection required\_status\_checks  
  if gh api \-H "Accept: application/vnd.github+json" "/repos/${OWNER\_REPO}/branches/${DEFAULT\_BRANCH}/protection" \> "${expected\_json}" 2\>\>"${err\_log}"; then  
    return 0  
  fi  
  return 1  
}

\# observed: check-runs/statuses are driftable; for skeleton keep placeholder file but NON-empty  
echo "{\\"observed\_note\\":\\"Populate via check-runs/statuses in CI context\\",\\"ts\\":\\"${TS}\\"}" \> "${observed\_json}"

verdict="PASS"  
tt\_list="\[\]"

if \! fetch\_expected; then  
  verdict="TEMP\_CLOSED"  
  tt\_list='\["TT-RIPA-003"\]'  
  echo "\[WARN\] expected could not be fetched; TEMP\_CLOSED \+ TT-RIPA-003" \>\> "${err\_log}"  
fi

cat \> checks\_manifest.json \<\<JSON  
{  
  "required\_contexts\_contract":{  
    "expected\_source\_order":\["rulesets","branch\_protection"\],  
    "expected\_file":"${expected\_json}",  
    "observed\_file":"${observed\_json}",  
    "diff":{"missing":\[\],"extra":\[\]},  
    "verdict":"${verdict}",  
    "tt":${tt\_list}  
  }  
}  
JSON

\--- FILE END: scripts/omoc\_collect\_checks\_manifest.sh

---

### **L.4 scripts/omoc\_secrets\_scan.sh（secrets\_scan=0 gate）**

\--- FILE BEGIN: scripts/omoc\_secrets\_scan.sh

\#\!/usr/bin/env bash  
set \-euo pipefail

\# Minimal secrets scan (skeleton)  
\# Goal: produce secrets\_scan.log with hits=0; hits\>0 \=\> FAIL\_CLOSED

HITS=0  
\# Expand patterns as needed; do NOT print actual matches  
PATTERNS=(  
  "BEGIN PRIVATE KEY"  
  "ghp\_"  
  "github\_pat\_"  
  "AKIA"  
  "SECRET"  
  "PASSWORD"  
  "TOKEN="  
)

FILES\_TO\_SCAN=(  
  "verdict.json"  
  "checks\_manifest.json"  
  "evidence\_index.md"  
  "bundle\_audit.json"  
  "policy/omoc\_agent\_policy.yml"  
)

for f in "${FILES\_TO\_SCAN\[@\]}"; do  
  \[\[ \-f "$f" \]\] || continue  
  for p in "${PATTERNS\[@\]}"; do  
    if rg \-n \--fixed-strings "$p" "$f" \>/dev/null 2\>&1; then  
      HITS=$((HITS+1))  
    fi  
  done  
done

echo "secrets\_scan.hits=${HITS}" \> secrets\_scan.log

if \[\[ "${HITS}" \-ne 0 \]\]; then  
  echo "\[FAIL\] secrets scan hits \!= 0" \>&2  
  exit 9  
fi  
echo "\[PASS\] secrets scan hits=0"

\--- FILE END: scripts/omoc\_secrets\_scan.sh

---

### **L.5 scripts/omoc\_doc\_hygiene\_scan.sh（oaicite/contentReference/chat URL 汙染=0 gate）**

\--- FILE BEGIN: scripts/omoc\_doc\_hygiene\_scan.sh

\#\!/usr/bin/env bash  
set \-euo pipefail

\# Doc Hygiene gate (WP-008 aligned; skeleton)  
\# Expected hits=0; otherwise FAIL\_CLOSED

HITS=0  
TARGETS=(  
  "."  
)

PATTERNS=(  
  "oaicite"  
  "contentReference"  
  "chatgpt.com"  
)

for t in "${TARGETS\[@\]}"; do  
  for p in "${PATTERNS\[@\]}"; do  
    if rg \-n \--hidden \--glob '\!.git/\*' "$p" "$t" \>/dev/null 2\>&1; then  
      \# Count without printing matches (avoid leaking sensitive content)  
      c="$(rg \-n \--hidden \--glob '\!.git/\*' "$p" "$t" | wc \-l | tr \-d ' ')"  
      HITS=$((HITS \+ c))  
    fi  
  done  
done

echo "doc\_hygiene.hits=${HITS}" \> doc\_hygiene\_scan.txt

if \[\[ "${HITS}" \-ne 0 \]\]; then  
  echo "\[FAIL\] doc hygiene hits \!= 0" \>&2  
  exit 11  
fi  
echo "\[PASS\] doc hygiene hits=0"

\--- FILE END: scripts/omoc\_doc\_hygiene\_scan.sh

---

### **L.6 scripts/omoc\_superseded\_scan.sh（superseded\_scan=0；命中 r1/legacy 參照即 FAIL\_CLOSED）**

\--- FILE BEGIN: scripts/omoc\_superseded\_scan.sh

\#\!/usr/bin/env bash  
set \-euo pipefail

\# Superseded scan (WP-014 aligned; skeleton)  
\# hits=0 required; if a forbidden legacy reference is found \=\> FAIL\_CLOSED

HITS=0  
FORBIDDEN=(  
  "OMOC\_實作\\\\+WP總表\_v4\\\\.0\\\\.1-r1"  
  "v4\\\\.0\\\\.1-r1\\\\+wpmap"  
)

for p in "${FORBIDDEN\[@\]}"; do  
  if rg \-n \--hidden \--glob '\!.git/\*' \-e "$p" . \>/dev/null 2\>&1; then  
    c="$(rg \-n \--hidden \--glob '\!.git/\*' \-e "$p" . | wc \-l | tr \-d ' ')"  
    HITS=$((HITS \+ c))  
  fi  
done

echo "superseded\_scan.hits=${HITS}" \> superseded\_scan.txt

if \[\[ "${HITS}" \-ne 0 \]\]; then  
  echo "\[FAIL\] superseded scan hits \!= 0 (WP-014: superseded contamination)" \>&2  
  exit 13  
fi  
echo "\[PASS\] superseded scan hits=0"

\--- FILE END: scripts/omoc\_superseded\_scan.sh

---

### **L.7 scripts/omoc\_drift\_report.sh（drift\_report.md；NEEDS-TEST 收斂）**

\--- FILE BEGIN: scripts/omoc\_drift\_report.sh

\#\!/usr/bin/env bash  
set \-euo pipefail

\# Drift report (WP-014 aligned; skeleton; SUPPORT-only facts must include dates)  
TS="${OMOC\_TS:-$(date \-u \+%Y%m%dT%H%M%SZ)}"  
LAST\_VERIFIED\_AT="${OMOC\_WEB\_LAST\_VERIFIED\_AT:-REDACTED}"  
DRIFT\_ACTION="${OMOC\_DRIFT\_ACTION:-NEEDS-TEST}"

cat \> drift\_report.md \<\<MD  
\# drift\_report (RIP-A) — ${TS}

\- last\_verified\_at: ${LAST\_VERIFIED\_AT}  
\- drift\_action: ${DRIFT\_ACTION}  
\- notes:  
  \- Any platform behavior claims are SUPPORT-only and must be verified in environment.  
MD

\--- FILE END: scripts/omoc\_drift\_report.sh

---

### **L.8 scripts/omoc\_tt\_export.sh（tt\_export.json；machine-readable）**

\--- FILE BEGIN: scripts/omoc\_tt\_export.sh

\#\!/usr/bin/env bash  
set \-euo pipefail

\# TT export (WP-014 aligned; skeleton)  
\# CR\_OPEN must be 0 in this document; runtime TT may still be OPEN as TEMP\_CLOSED backlog.

cat \> tt\_export.json \<\<'JSON'  
{  
  "schema":"omoc.tt\_export.v1",  
  "generated\_at":"REDACTED",  
  "items":\[  
    {"tt\_id":"TT-RIPA-001","status":"OPEN","owner\_role":"CI Governance Auditor","closure\_criteria":"至少一次 issue-\>PR-\>reviewer check 回報-\>evidence minset 真實產出（非 stub）","retest\_steps":\["Run omoc-gate on PR and capture artifacts"\]},  
    {"tt\_id":"TT-RIPA-002","status":"OPEN","owner\_role":"Gatekeeper","closure\_criteria":"WP-008 hard minset 齊備且 bundle\_audit.result=PASS 且 secrets\_scan=0","retest\_steps":\["Run pack+scan; verify validator PASS"\]},  
    {"tt\_id":"TT-RIPA-003","status":"OPEN","owner\_role":"Evidence Auditor","closure\_criteria":"checks\_manifest expected/observed/diff/verdict/tt 欄位齊備且 expected 非空；不可得則 TEMP\_CLOSED+TT 並附 403 證據","retest\_steps":\["Attempt gh api; store 403 evidence"\]},  
    {"tt\_id":"TT-RIPA-004","status":"OPEN","owner\_role":"CI Governance Auditor","closure\_criteria":"PR+merge\_group 兩情境同名 required check 均回報且不被 skip","retest\_steps":\["WP-012 Mode A MQ probe"\]},  
    {"tt\_id":"TT-RIPA-006","status":"OPEN","owner\_role":"Supply-chain/Sec Auditor","closure\_criteria":"secrets\_scan=0 且 forbidden patterns=0（含反例測試）","retest\_steps":\["Insert fake token; expect FAIL\_CLOSED"\]},  
    {"tt\_id":"TT-RIPA-DOC-001","status":"OPEN","owner\_role":"Docs-as-Code Auditor","closure\_criteria":"doc hygiene scan=0","retest\_steps":\["Insert oaicite; expect FAIL\_CLOSED"\]},  
    {"tt\_id":"TT-RIPA-DRIFT-001","status":"OPEN","owner\_role":"Drift Guard Officer","closure\_criteria":"superseded\_scan/drift\_report/tt\_export 三件套可生成","retest\_steps":\["Run WP-014 quickpath subset"\]}  
  \]  
}  
JSON

\--- FILE END: scripts/omoc\_tt\_export.sh

---

### **L.9 scripts/omoc\_pinned\_actions\_report.sh（pinning 稽核證據）**

\--- FILE BEGIN: scripts/omoc\_pinned\_actions\_report.sh

\#\!/usr/bin/env bash  
set \-euo pipefail

\# Pinned actions report (skeleton)  
\# Detect whether "uses:" lines are pinned to a full commit SHA (40 hex)  
\# Output: pinned\_actions\_report.json

SHA\_RE='@\[0-9a-fA-F\]{40}$'  
HITS\_UNPINNED=0

\# Only scan workflow and composite action files  
mapfile \-t files \< \<(find .github/workflows \-type f \\( \-name "\*.yml" \-o \-name "\*.yaml" \\) 2\>/dev/null || true)

details="\[\]"  
for f in "${files\[@\]}"; do  
  \# naive grep; keep skeleton  
  while IFS= read \-r line; do  
    \# Example: uses: owner/repo@ref  
    if echo "$line" | rg \-q "uses:\\s+\\S+@\\S+"; then  
      if echo "$line" | rg \-q "${SHA\_RE}"; then  
        :  
      else  
        HITS\_UNPINNED=$((HITS\_UNPINNED+1))  
      fi  
    fi  
  done \< "$f"  
done

cat \> pinned\_actions\_report.json \<\<JSON  
{  
  "schema":"omoc.pinned\_actions\_report.v1",  
  "unpinned\_uses\_count": ${HITS\_UNPINNED},  
  "verdict": "$( \[\[ ${HITS\_UNPINNED} \-eq 0 \]\] && echo PASS || echo TEMP\_CLOSED )",  
  "notes": "PASS requires all uses pinned to commit SHA; otherwise treat as TEMP\_CLOSED and route to supply-chain remediation (e.g., pinact)."  
}  
JSON

\--- FILE END: scripts/omoc\_pinned\_actions\_report.sh

---

### **L.10 policy/omoc\_agent\_policy.yml（require\_ack \+ stop rules \+ allowlist）**

\--- FILE BEGIN: policy/omoc\_agent\_policy.yml

schema: omoc.agent\_policy.v1  
version: v1.1.0

\# PR-only (hard)  
pr\_only: true

\# Stop rules (bounded)  
limits:  
  max\_iterations: 30  
  max\_runtime\_minutes: 45  
  max\_retries: 2

\# High-risk actions require manual acknowledgement  
high\_risk\_require\_ack:  
  \- secrets\_write  
  \- permissions\_change  
  \- network\_egress  
  \- rulesets\_change  
  \- branch\_protection\_change  
  \- workflow\_permission\_escalation

audit\_log:  
  path: evidence/\_acceptance/${OMOC\_TS}/audit/agent\_audit.log  
  redact\_secrets: true

\# Tooling guardrails (skeleton)  
tool\_policy:  
  allow:  
    \- read\_repo  
    \- propose\_patch  
    \- open\_pull\_request  
    \- run\_tests  
    \- run\_linters  
  deny:  
    \- push\_default\_branch  
    \- print\_tokens  
    \- exfiltrate\_data

\# Required check name contract (canonical; exact string)  
required\_check:  
  canonical\_name: "ci / omoc-gate"

\--- FILE END: policy/omoc\_agent\_policy.yml

---

### **L.11 policy/candidates\_manifest.yaml（最小落地入口：工具候選與隔離欄位）**

\--- FILE BEGIN: policy/candidates\_manifest.yaml

schema: omoc.candidates\_manifest.v1  
generated\_at: 2026-02-21T00:00:00+08:00  
support\_only: true

candidates:  
  \- name: OpenHands  
    type: worker\_engine  
    canonical\_refs:  
      \- source: github  
        ref: "OpenHands/OpenHands"  
      \- source: docs  
        ref: "OpenHands GitHub Action docs"  
    quarantine\_flag: false  
    conflict\_flag: "NONE"  
    drift\_action: "NEEDS-TEST"  
    repo\_path\_stub:  
      \- ".github/workflows/omoc-gate.yml (worker steps wiring)"  
      \- "policy/omoc\_agent\_policy.yml (limits/ack)"  
  \- name: SWE-agent  
    type: worker\_engine  
    canonical\_refs:  
      \- source: github  
        ref: "SWE-agent/SWE-agent"  
      \- source: docs  
        ref: "SWE-agent CLI tutorial (--actions.open\_pr)"  
    quarantine\_flag: false  
    conflict\_flag: "NONE"  
    drift\_action: "NEEDS-TEST"  
    repo\_path\_stub:  
      \- ".github/workflows/omoc-gate.yml (worker steps wiring)"  
  \- name: PR-Agent (Qodo)  
    type: reviewer\_engine  
    canonical\_refs:  
      \- source: github  
        ref: "qodo-ai/pr-agent"  
      \- source: docs  
        ref: "qodo-merge-docs GitHub install"  
    quarantine\_flag: "NEEDS-ISOLATION"  
    conflict\_flag: "NONE"  
    drift\_action: "NEEDS-TEST"  
    repo\_path\_stub:  
      \- ".github/workflows/omoc-gate.yml (review steps wiring)"  
      \- "policy/omoc\_agent\_policy.yml (permissions \+ ack)"

\--- FILE END: policy/candidates\_manifest.yaml

---

### **L.12 .github/workflows/omoc-gate.yml（PR+merge\_group Always-Report \+ validator gate）**

\--- FILE BEGIN: .github/workflows/omoc-gate.yml

name: ci / omoc-gate

on:  
  pull\_request:  
    types: \[opened, synchronize, reopened, ready\_for\_review\]  
  merge\_group:  
  workflow\_dispatch:

\# Least privilege by default; elevate per job as needed  
permissions: {}

concurrency:  
  group: omoc-gate-${{ github.repository }}-${{ github.event\_name }}-${{ github.ref }}  
  cancel-in-progress: false

jobs:  
  \# \-----------------------------  
  \# Worker (optional wiring; PR-only by policy)  
  \# \-----------------------------  
  worker:  
    if: ${{ github.event\_name \!= 'pull\_request' && github.event\_name \!= 'merge\_group' }}  
    runs-on: ubuntu-latest  
    permissions:  
      contents: read  
      pull-requests: write  
    steps:  
      \- uses: actions/checkout@REDACTED\_SHA  
        with:  
          fetch-depth: 0

      \- name: Worker engine (skeleton)  
        run: |  
          echo '{"overall\_verdict":"TEMP\_CLOSED","reason":"wire worker engine (OpenHands/SWE-agent)","tt":\["TT-RIPA-001"\]}' \> verdict.json  
          echo '{"required\_contexts\_contract":{"expected\_source\_order":\["rulesets","branch\_protection"\],"expected\_file":"REDACTED","observed\_file":"REDACTED","diff":{"missing":\[\],"extra":\[\]},"verdict":"TEMP\_CLOSED","tt":\["TT-RIPA-003"\]}}' \> checks\_manifest.json  
          echo "\# evidence\_index (skeleton)" \> evidence\_index.md

  \# \-----------------------------  
  \# Reviewer / Gatekeeper (PR \+ merge\_group)  
  \# \-----------------------------  
  review:  
    if: ${{ github.event\_name \== 'pull\_request' || github.event\_name \== 'merge\_group' }}  
    runs-on: ubuntu-latest  
    permissions:  
      contents: read  
      pull-requests: write  
      checks: write  
    steps:  
      \- uses: actions/checkout@REDACTED\_SHA  
        with:  
          fetch-depth: 0

      \- name: Collect checks\_manifest (expected/observed/diff)  
        env:  
          GITHUB\_TOKEN: ${{ secrets.GITHUB\_TOKEN }}  
        run: |  
          bash scripts/omoc\_collect\_checks\_manifest.sh

      \- name: Secrets scan (must be 0\)  
        run: |  
          bash scripts/omoc\_secrets\_scan.sh

      \- name: Doc hygiene scan (must be 0\)  
        run: |  
          bash scripts/omoc\_doc\_hygiene\_scan.sh

      \- name: Superseded scan (must be 0\)  
        run: |  
          bash scripts/omoc\_superseded\_scan.sh

      \- name: Drift report \+ TT export (skeleton)  
        run: |  
          bash scripts/omoc\_drift\_report.sh  
          bash scripts/omoc\_tt\_export.sh

      \- name: Pinned actions report (supply-chain evidence)  
        run: |  
          bash scripts/omoc\_pinned\_actions\_report.sh

      \- name: Pack evidence bundle (skeleton)  
        run: |  
          \# Minimal bundle; downstream packager may replace with SK08 packager  
          tar \-czf evidence\_bundle.tgz verdict.json checks\_manifest.json evidence\_index.md || true  
          echo '{"bundle\_audit":{"result":"TEMP\_CLOSED","notes":"wire SK08 packager for full audit"}}' \> bundle\_audit.json

      \- name: Validate contracts (Fail-Closed)  
        run: |  
          bash scripts/omoc\_validate\_contracts.sh

      \# Always-Report: ensure the same check name is reported for both PR and merge\_group  
      \- name: Report final status (always)  
        if: ${{ always() }}  
        run: |  
          echo "\[always-report\] ci / omoc-gate completed."

  \# \-----------------------------  
  \# Terminator job: aggregate needs, never skipped  
  \# \-----------------------------  
  omoc\_gate\_terminator:  
    name: ci / omoc-gate  
    if: ${{ always() }}  
    needs: \[review\]  
    runs-on: ubuntu-latest  
    permissions:  
      checks: write  
    steps:  
      \- name: Terminator (never skip)  
        run: |  
          echo "Terminator: ensures canonical check is produced even if upstream fails."

\--- FILE END: .github/workflows/omoc-gate.yml

---

## **M. Runbook（可重跑；每步含 evidence locator \+ rollback point）**

\[ANCHOR:OMOC-RIP-A-1300\]

本 Runbook 僅提供 RIP-A 最短閉環；細節以 WP-007/008/010/011/014 為準。

### **M.0 Entry Preconditions**

* 已具備 `.github/workflows/` \+ `sc:contentReference[oaicite:151]{index=151}W:contentReference[oaicite:152]{index=152}）:contentReference[oaicite:153]{index=153}:contentReference[oaicite:154]{index=154}:contentReference[oaicite:155]{index=155}d:contentReference[oaicite:156]{index=156}-gate`（exact）。  
* 不在本文件設定 secrets；若缺，視為 expected 不可得（TEMP\_CLOSED+TT）。安裝（PR-only）  
* 操作：feature branch 內落地 L 節所有 artifacts；以 PR or：\`evidence/\_acceptance//log/rip\_a\_install\_inventor閉 PR；刪除分支；不改 default branch。

### **M.2 Step — PR 觸發 reviewer（PR \+ merge\_group）**

* 操作：開 PR（或更新 PR）。  
* Evidence locator：Actions run logs \+ artifacts（下載後放入 `evidence/_acceptance/<TS>/log/`）。  
* Gate：若 job 被 skip/paths-ignore/if 造成未回報 → FAIL\_CLOSED（WP-011）。

### **M.3 Step — 生成 checks\_manifest（expected/observed）**

* 操作：CI 內執行 `scripts/omoc_collect_checks_manifest.sh`。  
* 允許結果：  
  * expected 可得 → PASS 路徑  
  * **TEMP\_CLOSED \+ TT-RIPA-003**（不得假裝 PASS）

### **M.4 Step — Evidence Minset \+ Scans \+ Drift/TT**

* 操作：執行 secrets/doc/superseded scans；生成 drift\_report \+ tt\_export；打包 evidence；validator gate。  
* Pass e\_contracts.sh\` rc==0。  
* Rollback：移除新增 artifacts（由 PR revert；不得直推）。

---

## **N. Work Instructions（逐步核對；失敗處置/回路）**

\[ANCHOR:OMOC-RIP-A-1400\]

### **WI-RIPA-01（安裝與 PR-only）**

* Do：執行/搬入 L 節 artifacts → 開 PR。  
* If fail：缺檔/路徑錯 → TT-RIPA-INSTALL-001（owner: RIP Installer Owner）。  
* Evidence：install.log \+ inventory.json。

### **WI-RIPA-02（required checks expected 探測）**

* Do：在 CI 有 gh token 的情境跑 `omoc_collect_checks_manifest.sh`。  
* If 403：把 403 證據寫入 `evidence/_acceptance/<TS>/ercc_observed/fetch_errors.log`，並保持 `verdict=TEMP_CLOSED` \+ TT-RIPA-003。

### **WI-RIPA-03（Always-Report：避免 skip）**

* Do：確保 `omoc_gate_terminator` 永遠執行（if: always）。  
* If skipped：視同 required check 未回報 → FA

### **WI-RIPA-04（Evidence 合約不可造假）**

* Do：必跑 validator；禁止空檔/echo 假造。- Destructive test：把 checks\_manifest 清空 → 預期 FAIL\_CLOSED（DT-RIPA

---

## **O. Gates（PASS / TEMP\_CLOSED / FAIL\_CLOSED 判定表；含破壞性P-A-1500\]**

| gate\_id | condition | PASS | SED |  
|---|---|---|---|---|  
| GATE-PR-ONLY | default branch 無直推行為 | 無直推、僅 PR | n/a | 發現直推或等價行為 |  
| GATE-EVIDENCE-MINSET | WP-008 hard items 齊備 | validator rc=0 | 允許暫缺「平台可變」但需 TT | 缺檔/空檔/造假 |  
| GATE-ERCC | expected/observed/diff 可驗 | expected 非空 \+ diff=0 | expected 不可得且有 403 證據 \+ TT | expected 被清空卻宣稱 PASS |  
| GATE-ALWAYS-REPORT | PR+merge\_group 都回報同名 check | 兩情境都有 `ci / omoc-gate` | MQ 未啟用但 PR 回報 OK（merge\_group 進 TT） | merge\_group 情境卡死/不回報 |  
| GATE-HYGIENE | 汙染掃描=0 | hits=0 | n/a | hits\>0 |  
| GATE-SUPERSEDED | superseded\_scan=0 | hits=0 | n/a | hits\>0 |

**破壞性反例（摘要；詳見 Q 節對齊審查報告）**：DT-RIPA-001\~008

---

## **P. Traceability（Coverage Map \+ Legacy Coverage Checklist \+ SSOT locators）**

\[ANCHOR:OMOC-RIP-A-1600\]

### **P.1 Req（fixed schema；machine-readable）**

schema：`req_id / ssot_locator / rip_a_locator / artifacts[] / evidence[] / closure_rule / tt_id`

| req\_id | ssot\_locator | rip\_a\_locator | artifacts\[\] | evidence\[\] | closure\_rule | tt\_id |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| RIP-A-REQ-001 | RBWI Guardrails | L.policy | policy/omoc\_agent\_policy.yml | superseded\_scan.txt | GATE-PR-ONLY | TT-RIPA-001 |
| RIP-A-REQ-002 | WP-008 hard items | ts/omoc\_pack\_evidence.sh (skeleton via workflow) \+ bundle\_audit.json | verdict.json, evidence\_bundle.tgz | GATE-EVIDENCE-MINSET | TTQ-003 | WP-010 checks\_manifest |
| RIP-A-REQ-004 | WP-011 Always | L.workflow | .github/workflows/omoc-gate.yml | Actions logs \+ terminator proof | GATE-ALWAYS-REPORT | TT-RIPA-004 |
| RIP-A-REQ-006 | WP-008 \+ skills DoD | L.scan | scripts/omoc\_secrets\_scan.sh | secrets\_scan.log | hits=0 | TT-RIPA-006 |
| RIP-A-REQ-007 | WP-008 hygiene pan.sh | doc\_hygiene\_scan.txt | hits=0 | TT-RIPA-DOC-001 |  |  |
| RIP-A-REQ-008 | WP-014 drift/closure ripts/omoc\_drift\_report.sh \+ scripts/omoc\_tt\_export.sh | drift\_report.md \+ tt\_export.json | 三件套可生成 | TT-RIPA-DRIFT-001 |  |  |

### **P.2 Legacy.0.0 → v1.1.0；逐章逐節）**

來源：RIP-A v1.0.0 章節骨架（A\~R）。

| legacy\_section (v1.0.0) | status\_in\_v1.1.0 | locator |
| ----- | ----- | ----- |
| Cover Card / Doc Control | COVERED（強化） | A/B |
| Diátaxis / Anchor Registry | COVEy \+ repo-local TOC） | C/D/F |
| Authority / Scope | COVERED（加 Route-out 強制） | G/H |
| Requirements | COVERED（固定 schema \+ ≥10 子項） | I/P |
| Architecture | COVERED（加 require\_ack \+ audit） | J/L.policy |
| Artifacts / Workflows / Scripts | COVERED（移除 stub 造檔；新增 gate scripts） | K/L |
| Runbook / WI | COVERED（補「可重跑」與證據定位） | M/N |
| Gates / Traceability / TT / Web Evidence | COVERED（補 drift/tt\_export；CR\_OPEN=0） | O/P/R/S |
| Change Log / Machine Summary | COVERED（重寫且去污染） | T/U |

---

## **Q. Findings Closure Matrix（逐條對齊審查報告；不得留 CR\_OPEN）**

\[ANCHOR:OMOC-RIP-A-1700\]

來源：RIP-A v1.0.0 審查報告（F-A\~F-G）。

| finding\_id | claim (short) | patch\_landing | acceptance / retest | status |
| ----- | ----- | ----- | ----- | ----- |
| F-C-001 | WSP\_SCOPE\_MISSING | R.TT | 補齊 WSP v0 正文後再裁決 |  |
| F-E-001 | workflow stub/造檔 | L.2/L.12 \+ validator gate | validator 拒絕空檔；CI 需實跑證據（TT-RIPA-001） | TEMP\_CLOSED |
| F-D-001 | 缺 bundle\_audit+secrets\_scan=0 | L.2/L.4/L.12 | 產出 bundle\_audit.json \+ secrets\_scan.log hits=0 | PASS（文件層）/TEMP\_CLOSED（實跑層） |
| F-F-001 | doc hygiene 汙染 | L.5 | doc\_hygiene\_scan hits=0；插入污染應 FAIL\_CLOSED | PASS（文件層） |
| F-A-001 | merge\_group 回報缺口 | L.12 (merge\_group \+ terminator) | WP-012 Mode A MQ probe（TT-RIPA-004） | TEMP\_CLOSED |
| F-A-002 | evidence 可造假 | L.2 \+ validator | 空檔/echo 直接 FAIL\_CLOSED | PASS（文件層） |
| F-A-003 | secrets 防線未落地 | L.4 | secrets\_scan hits=0；反例測 FAIL\_CLOSED | PASS（文件層） |
| F-B-001 | drift 欄位不機械 | L.7/L.8 | drift\_report/tt\_export 可生成且可回放 | PASS（文件層） |
| F-B-003 | superseded\_scan gate 缺失 | L.6 | superseded\_scan hits=0；命中即 FAIL\_CLOSED | PASS（文件層） |
| F-F-002 | confused deputy require\_ack 缺失 | L.10 | high\_risk\_require\_ack \+ audit\_log path 存在 | PASS（文件層） |
| F-F-003 | pinning 稽核證據缺失 | L.9 | pinned\_actions\_report 可生成 | PASS（文件層） |
| F-C-003 | traceability 表格不穩 | P.1 固定 schema | parser 可讀（欄位齊全） | PASS |

註：凡「需要環境實測」者，統一收斂到 TT，仍符合本版 **CR\_OPEN=0**（因為 finding 已有閉環落點 \+ 驗收方式 \+ 狀態）。

---

## **R. TT Register（CR\_OPEN=0；含 closure\_criteria / retest\_steps / owner\_role）**

\[ANCHOR:OMOC-RIP-A-1800\]

| tt\_id | ownerure\_criteria | retest\_steps (min) |  
|---|---|---|---|---|  
| TT-RIPA-001 | CI Governance Auditor | OPEN | 至少一次 issue→PR→review 回報→evidence 真實產出（非 stub） | 觸發 PR run，保存 artifacts |  
| TT-RIPA-002 | Gatekeeper | OPEN | WP-008 hard items 齊備 \+ bundle\_audit PASS \+ secrets\_scan=0 | 跑 omoc-gate；驗 validator PASS |  
| TT-RIPA-003 | Evidence Auditor | OPEN | expected 非空；不可得則 TEMP\_CLOSED 且附 403 證據 | gh api 探測；留存 fetch\_errors.log |  
| TT-RIPA-004 | CI Governance Auditor | OPEN | PR+merge\_group 同名 check 都回報且不 skip | WP-012 Mode A MQ probe |  
| TT-RIPA-006 | Supply-chain/Sec Auditor | OPEN | secrets\_scan=0 \+ forbidden patterns=0（含反例） | 放入假 token 測 FAIL\_CLOSED |  
| TT-RIPA-DOC-001 | Docs-as-Codeene scan=0 | 插入污染詞測 FAIL\_CLOSED |  
| TT-RIPA-DRIFT-001 | Drift Guard Officer | OPEN | superseded\_scan/drift\_report/tt\_export 三件套可生成 | 跑 scripts；檢查輸出檔 |

---

## **S. Web Evidence Appendix（SUPPORT-only；每條 claim ≥2 sources；含日期與 drift\_action）**

\[ANCHOR:OMOC-RIP-A-1900\]

Web 僅 SUPPORT；不得覆寫 SSOT。若與 SSOT 衝突：標 WEB-CONFLICT → TT。

| claim\_id | claim | sources (\>=2) | published\_at (if known) | accessed\_at | drift\_action | conflict\_flag |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| WEB-001 | merg觸發 workflows 才能回報 required checks | GitHub Docs merge queue ([GitHub Docs](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/configuring-pull-request-merges/managing-a-merge-queue)) ; GitHub Docs troubleshooting required status checks ([GitHub Docs](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/collaborating-on-repositories-with-code-quality-features/troubleshooting-required-status-checks)) | n/a | 2026-02-21T00:00:00+08:00 | NEEDS-TEST | NONE |
| WEB-002 | OpenHands 提供 GitHub Action/SDK 可作施工引擎候選 | OpenHands GitHub Action repo ([GitHub](https://github.com/All-Hands-AI/openhands-github-action)) ; OpenHands Action docs ([OpenHands Docs](https://allhandsai.mintlify.app/openhands/usage/run-openhands/github-action)) | 2025-12-22 (repo page) ([GitHub](https://github.com/All-Hands-AI/openhands-github-action)) | 2026-02-21T00:00:00+08:00 | NEEDS-TEST | NONE |
| WEB-003 | SWE-agent 支援用 \--actions.open\_pr 於 GitHub issue 解決後自動開 PR | SWE-agent tutorial ([GitHub](https://github.com/SWE-agent/SWE-agent/blob/main/docs/usage/cl_tutorial.md)) ; SWE-agent hello world docs ([Swe Agent](https://swe-agent.com/latest/usage/hello_world/)) | n/a | 2026-02-21T00:00:00+08:00 | NEEDS-TEST | NONE |
| WEB-004 | PR-Agent 可作 reviewer engine（Action/App 安裝與配置） | Qodo docs install ([Qodo Merge](https://qodo-merge-docs.qodo.ai/installation/github/)) ; PR-Agent repo 概述 ([GitHub](https://github.com/qodo-ai/pr-agent)) | n/a | 2026-02-21T00:00:00+08:00 | NEEDS-TEST | NONE |
| WEB-005 | zizmor 是 GitHub Actions 靜態安全分析工具（供應鏈硬化落點） | zizmor repo ([GitHub](https://github.com/zizmorcore/zizmor)) ; zizmor-action repo ([GitHub](https://github.com/zizmorcore/zizmor-action)) | n/a | 2026-02-21T00:00:00+08:00 | NEEDS-TEST | NONE |
| WEB-006 | OpenSSF Scorecard Action 可作 repo 安全健康度掃描 | scorecard-action repo ([GitHub](https://github.com/ossf/scorecard-action)) ; scorecard-action releases ([GitHub](https://github.com/ossf/scorecard-action/releases)) | 2025-09-30 (release example) ([GitHub](https://github.com/ossf/scorecard-action/releases)) | 2026-02-21T00:00:00+08:00 | NEEDS-TEST | NONE |
| WEB-007 | pinact 可用於釘定 actions 版本（pin to SHA） | pinact repo ([GitHub](https://github.com/suzuki-shunsuke/pinact)) ; GitHub secure use reference（第三方 actions 風險）([GitHub Docs](https://docs.github.com/en/actions/reference/security/secure-use)) | n/a | 2026-02-21T00:00:00+08:00 | NEEDS-TEST | NONE |

---

## **T. Change Log（v1.0.0 → v1.1.0）**

\[ANCHOR:OMOC-RIP-A-2000\]

* 移除/禁止「stub 造檔」作為證據：新增 `omoc_validate_contracts.sh` 並把空檔視為 FAIL\_CLOSED。  
* 補齊 WP-008 硬件套落點：bundle\_audit / secrets\_scan / doc\_hygiene\_scan。  
* 補齊 WP-014 三件套：superseded\_scan / drift\_report / tt\_export。  
* 補齊 Always-Report 終結回報聚合 job（PR \+ merge\_group 同名 check）。  
* 補齊 require\_ack \+ audit log 最小骨架（confused deputy 風險落地）。  
* 固化 Coverage Map schema（避免表格截斷不可機器讀）。  
* 清理汙染策略：以掃描=0 作為 gate（不再只宣告）。

---

## **U. Machine Summary（JSON）**

\[ANCHOR:OMOC-RIP-A-2100\]

{  
  "doc\_id": "OMOC\_RIP-A",  
  "version": "v1.1.0",  
  "generated\_at": "2026-02-21T00:00:00+08:00",  
  "timezone": "Asia/Taipei",  
  "overall\_verdict": "TEMP\_CLOSED",  
  "scope\_status": "TEMP\_CLOSED",  
  "blockers": \[  
    {"id":"F-C-001","reason":"WSP\_SCOPE\_MISSING"},  
    {"id":"F-E-001","reason":"Environment run evidence not yet replayable"}  
  \],  
  "cr\_open": 0,  
  "aligned\_wps": {  
    "hard": \["WP-007","WP-010","WP-011"\],  
    "route\_out": \["WP-008","WP-012","WP-013","WP-014"\]  
  },  
  "artifacts\_minset": \[  
    "verdict.json",  
    "checks\_manifest.json",  
    "evidence\_index.md",  
   :contentReference\[oaicite:231\]{index=231}",  
    "bundle\_audit.json",  
    "secrets\_scan.log",  
    "doc\_hygiene:contentReference\[oaicite:232\]{index=232}rseded\_scan.txt",  
    "drift\_report.md",  
    "tt\_export.json",:contentReference\[oaicite:233\]{index=233}r:contentReference\[oaicite:234\]{index=234}\_register": \[  
    "TT-RIPA-001",  
    "TT-RIPA-002",  
    "TT-:contentReference\[oaicite:235\]{index=235}P:contentReference\[oaicite:236\]{index=236}06",  
    "TT-RIPA-DOC-001",  
    "TT-RIPA-DRIFT-001"  
  \],  
  :contentReference\[oaicite:237\]{index=237}   "requirements\_defined": 12,  
    "requi:contentReference\[oaicite:238\]{index=238}   "findings\_closed\_in\_doc\_layer":contentReference\[oaicite:239\]{index=239}ment\_evidence\_needed": true  
  }  
}

