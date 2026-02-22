# **OMOC｜WP-005 Phase-L/L3 Local Acceptance Runbook+WI（升級修補版）**

𝐴𝑁𝐶𝐻𝑂𝑅:𝑂𝑀𝑂𝐶−𝑊𝑃005−0000ANCHOR:OMOC−WP005−0000

**doc\_date（Asia/Taipei）**：2026-02-18  
**generated\_at（ISO8601+08:00）**：2026-02-18T13:56:47+08:00  
**External Name**：OMOC WP-005 Phase-L/L3 Local Acceptance  
**Internal Short Name**：OMOC-WP005  
**Canonical Version**：v4.0.1-r2+wp005.2.0  
**Status（Fail-Closed）**：TEMP\_CLOSED（理由：L3 是否可 PASS 取決於 repo 是否具備 `scripts/acceptance_local.sh` 與實測 rc；文件層修補已落地；執行層缺口以 TT 收斂；CR\_OPEN=0）  
**Scope**：Phase-L / L3 本地驗收（local acceptance）之**可重跑命令模板、輸出命名契約、證據收斂與裁決規則**  
**Supersedes**：`/mnt/data/OMOC_WP-005+RB+WI.md`（v4.0.1-r1 舊版；本文件可工程性取代）

---

## **Change Summary（r1 → r2 必修落地）**

* **B1（BLOCKER）**：Authority Stack **N4 改指 WPMap r2**；r1 降級為 supported-superseded（且不在 INPUTS，禁止升格）。  
* **B2（BLOCKER）**：Gates 語義修正：**Entry Gates 僅保留 `GATE-ENV-READY`**；`GATE-EVIDENCE-MINSET` 改列 Downstream/ROUTE\_OUT（不得當 L3 入口）。  
* **B3（BLOCKER）**：Runbook Path B 改為**顯式 missing vs fail 分支**；缺檔 rc=42 且 **exit 非 0**；保留真實 rc；`tee`/pipeline rc 規則寫死且可測。  
* **M1（MAJOR）**：Conflict Log 修正 SK07 輸出路徑（以 skills SSOT 為準），新增 **WP-005 / RBWI / SK07 三方 canonical mapping 表**（含相容策略）。  
* **M2（MAJOR）**：Appendix A / Locator Proof：移除所有 WPMap r1 定位；改為 \*\*WPMap r2（WP Summary Table \+ gate\_registry.json）\*\*可定位段落。  
* **M3（MAJOR）**：Evidence Contract 區新增**集中式 Exit Gate Checklist 表**（Artifact × Check × Command × Pass Criteria × Fail Action）。  
* **M4（MAJOR）**：文件版本齊平到 **v4.0.1-r2**；Cross-WP 漂移風險下降。  
* **m2（MINOR）**：`GitHub_UI_Setup` 轉義命中補 alias 行，避免機器檢索 NO\_HIT。  
* **m3（MINOR）**：重跑策略補強：**每次必用新 ts；禁止覆寫既有 `evidence/_acceptance/<ts>`**。  
* **m1（MINOR）**：denylist 擴充以 SUPPORT 方式納入（若未被 INPUTS 明確規範則 TT 化）。

---

## **TOC**

𝐴𝑁𝐶𝐻𝑂𝑅:𝑂𝑀𝑂𝐶−𝑊𝑃005−𝑇𝑂𝐶ANCHOR:OMOC−WP005−TOC

* [1 導讀](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/69954beb-e080-83a9-8ef9-0530041ea800#omoc-wp005-0100)  
* [2 Authority Stack 與裁決規則](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/69954beb-e080-83a9-8ef9-0530041ea800#omoc-wp005-0200)  
* [3 Scope / Route-Out（嚴格越界阻擋）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/69954beb-e080-83a9-8ef9-0530041ea800#omoc-wp005-0300)  
* [4 Interface Contract（Inputs/Outputs/Exit States）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/69954beb-e080-83a9-8ef9-0530041ea800#omoc-wp005-0400)  
* [5 Runbook（Path A / Path B）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/69954beb-e080-83a9-8ef9-0530041ea800#omoc-wp005-0500)  
* [6 WI（Work Instructions：輸出、淨化、重跑策略）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/69954beb-e080-83a9-8ef9-0530041ea800#omoc-wp005-0600)  
* [7 Evidence Contract / Acceptance Criteria（含 Exit Gate Checklist 表）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/69954beb-e080-83a9-8ef9-0530041ea800#omoc-wp005-0700)  
* [8 Gates（Entry / Downstream / Route-Out；對齊 gate\_registry.json）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/69954beb-e080-83a9-8ef9-0530041ea800#omoc-wp005-0800)  
* [9 Traceability（Coverage Map / Locator Proof / Closure Matrix）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/69954beb-e080-83a9-8ef9-0530041ea800#omoc-wp005-0900)  
* [10 TT Register（含 closure criteria 與 TT-007 對照）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/69954beb-e080-83a9-8ef9-0530041ea800#omoc-wp005-1000)  
* [11 Appendices（Locator Proof / Mapping / Web SUPPORT）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/69954beb-e080-83a9-8ef9-0530041ea800#omoc-wp005-1100)

---

## **1 導讀**

𝐴𝑁𝐶𝐻𝑂𝑅:𝑂𝑀𝑂𝐶−𝑊𝑃005−0100ANCHOR:OMOC−WP005−0100

\[TAGS: phase-l, l3, local-acceptance, runbook, evidence, fail-closed, route-out\]

### **1.1 這份文件解決什麼**

* 把「L3 本地驗收」從“我有跑過”提升到：**可重跑、可取證、可裁決**。  
* 把最常見的兩種災難先拆掉：  
  1. **缺檔與失敗混淆**（導致“永遠 0 分也能畢業”）；  
  2. **把不可能先天滿足的 Gate 當入口**（逼人造假證據，或永遠卡死）。  
* 任何 **MISSING/UNVERIFIED** 一律收斂成：**TT → TEMP\_CLOSED**；任何「證據寫不出來/rc 失真/安全命中」則 **FAIL\_CLOSED**。

### **1.2 最短路徑（Human-First）**

1. 先確認 Entry Gate：`GATE-ENV-READY`（環境就緒；見 §8）。  
2. 跑 §5 Runbook：  
   * **Path A**（腳本存在）→ 產出 `acceptance_local.log + rc`。  
   * **Path B**（腳本缺席）→ 仍產出 log/rc（rc=42），**exit 非 0**，並建立 TT（TEMP\_CLOSED）。  
3. 用 §7 Exit Gate Checklist 表做機械化判定（PASS / TEMP\_CLOSED / FAIL\_CLOSED）。

---

## **2 Authority Stack 與裁決規則**

𝐴𝑁𝐶𝐻𝑂𝑅:𝑂𝑀𝑂𝐶−𝑊𝑃005−0200ANCHOR:OMOC−WP005−0200

\[TAGS: authority-stack, normative, support, no-source-no-norm, fail-closed, security\]

### **2.1 Authority Stack**

**NORMATIVE（不得被 SUPPORT 覆寫）**

* **N1** `/mnt/data/OMOC_藍圖_v4.0.1-r1.md`（Blueprint；Fail-Closed / Route-Out / Evidence 原則）  
* **N2** `/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md`（Runbook+WI 命令模板與 L3 命名慣例之一）  
* **N3** `/mnt/data/OMOC_施工skills_合冊_v4.0.1-r2.md`（Skills SSOT；特別是 SK07）  
* **N4** `/mnt/data/OMOC_實作+WP總表_v4.0.1-r2.md`（WPMap r2；WP-MASTER；**PRIMARY**）

**SUPPORTED-SUPERSEDED（僅供比對；禁止升格為 NORMATIVE）**

* **N4S** `/mnt/data/OMOC_實作+WP總表_v4.0.1-r1.md`（SUPPORTED-SUPERSEDED；**不在本回合 INPUTS**；不得引用其條文作規範）

**REVIEW / FIX SPEC（本文件必修工單來源）**

* **R1** `/mnt/data/OMOC_WP-005+RB+WI_審查報告.md`（BLOCKER/MAJOR/MINOR 的修補裁決依據）

**SUPPORT ONLY（平台/工具易變行為；不得升格）**

* Bash pipeline / `PIPESTATUS` / `pipefail` 語義（見 Appendix C）  
* GNU `timeout` exit status（見 Appendix C）  
* OWASP Top 10 for LLM Applications（指令/資料分離、防 prompt injection/confused deputy；見 Appendix C）

### **2.2 裁決規則（Fail-Closed Gatekeeper）**

* **No-Source-No-Norm**：沒有 INPUTS 的定位，就沒有“規範性結論”。  
* **Fail-Closed**：任何無法在本回合定位/驗證者 → `UNVERIFIED` → 建 TT → `TEMP_CLOSED`。  
* **阻斷級 FAIL\_CLOSED**（本 WP 內的最低集合）：  
  * 無法建立 `evidence/_acceptance/<ts>`（無寫入權/磁碟唯讀/路徑異常）  
  * `tee` 寫 log 失敗導致證據不可回溯  
  * `rc` 產出缺失或不可解析（不是整數）  
  * 淨化/封存策略命中 secrets（見 §6.4）且未收斂處置

### **2.3 Prompt Injection / Confused-Deputy 防護（文件層硬規則）**

* 外部文字（Issue/PR/第三方頁面/工具輸出）一律視為 **Data**；不得自動升格成 **Norm/Command**。  
* 任何要求「忽略規則/提升權限/輸出 secrets」＝**惡意指令**：拒絕並記 TT。  
* 本 WP 的 Runbook/WI 僅描述 **本地可重跑**；任何平台 UI / 合併治理請 Route-Out（§3）。

---

## **3 Scope / Route-Out（嚴格越界阻擋）**

𝐴𝑁𝐶𝐻𝑂𝑅:𝑂𝑀𝑂𝐶−𝑊𝑃005−0300ANCHOR:OMOC−WP005−0300

\[TAGS: scope, route-out, phase-l, l3, boundary\]

### **3.1 In-Scope（只做這些）**

* Phase-L / **L3 本地驗收**：  
  * 檢查 `scripts/acceptance_local.sh` 存在性  
  * 執行並捕捉 log/rc（保留真實 exit code）  
  * 缺檔或失敗的收斂：TT → TEMP\_CLOSED（必要時 FAIL\_CLOSED）  
* **輸出命名契約**：WPMap r2 的 `acceptance_local.log + rc`（§4 / §7）  
* **與 RBWI / SK07 的相容映射**（加法相容，不互斥；§9）

### **3.2 Out-of-Scope（碰到就 ROUTE\_OUT，不准偷渡）**

以下內容在本 WP 只允許出現為「Route-Out 指標」，不得寫成操作步驟或驗收條件：

* GitHub UI 操作（rulesets、required checks、merge queue、merge\_group、branch protection、設定頁面路徑）  
* Merge Queue 啟用與驗證  
* Required checks 命名契約、Always-Report wrapper、merge\_group triggers  
* 全域 Evidence Minset（`verdict.json / evidence_bundle.tgz / checks_manifest.json / evidence_index.md / bundle_audit.json` 等）

### **3.3 Route-Out Map（去哪裡處理）**

* required checks / CI baseline presence → **WP-006 / WP-010 / WP-011**  
* merge queue / merge\_group / MQ probe → **WP-012 / WP-013**  
* Evidence Minset / bundle audit → **WP-008**  
* Drift guard / closure matrix 管理 → **WP-014**  
* 本 WP 只保留指標：**“不在這裡做”**。

---

## **4 Interface Contract（Inputs/Outputs/Exit States）**

𝐴𝑁𝐶𝐻𝑂𝑅:𝑂𝑀𝑂𝐶−𝑊𝑃005−0400ANCHOR:OMOC−WP005−0400

\[TAGS: interface-contract, outputs, rollback, status\]

### **4.1 Inputs（執行前置）**

* Repo 內（預期路徑）：`scripts/acceptance_local.sh`  
* 工具鏈：`bash`（必須）、`tee`（必須）、`timeout`（建議；若缺席仍可跑但需明示）  
* 環境契約（Entry Gate）：`GATE-ENV-READY`（見 §8）

### **4.2 Outputs（WPMap r2：最低集合；不得少於）**

\*\*WPMap r2（WP-005 row）要求：\*\*輸出 `acceptance_local.log + rc`（且 Status=TEMP\_CLOSED；TT-007）。  
定位見 Appendix A。

**WP-005 canonical outputs（本文件定義；加法相容 RBWI/Skills，不互斥）**

* `evidence/_acceptance/<ts>/WP-005/acceptance_local.log`  
* `evidence/_acceptance/<ts>/WP-005/rc.txt`

**相容輸出（不得取代 canonical；只作同步/對照）**

* RBWI L3 相容：  
  * `evidence/_acceptance/<ts>/log/L3-acceptance-local.log`  
  * `evidence/_acceptance/<ts>/log/L3-acceptance-local.rc`  
* SK07 相容（skills SSOT）：  
  * `evidence/_acceptance/<ts>/log/SK07-acceptance.log`  
  * `evidence/_acceptance/<ts>/log/SK07-acceptance.rc`

### **4.3 Rollback（WPMap r2 指標）**

* WPMap r2 對 WP-005 的 rollback 指標：**WP-003 / WP-007**（定位見 Appendix A）。  
* 本 WP 內的最小回滾策略：  
  * **不刪除既有 evidence**；只新增新 ts 目錄（§6.2）。  
  * 若修改 `scripts/acceptance_local.sh`（僅在缺檔或最小修補時）：使用最小 commit；必要時 `git restore scripts/acceptance_local.sh`。

### **4.4 Exit States（裁決）**

* **PASS**：`rc.txt == 0` 且 `acceptance_local.log` 非空，且無 FAIL\_CLOSED 觸發。  
* **TEMP\_CLOSED**：  
  * 缺 `scripts/acceptance_local.sh`（rc=42）  
  * 或腳本執行非 0（保留真實 rc）  
  * 或任何 UNVERIFIED 需 TT 才能關閉  
* **FAIL\_CLOSED**：證據不可回查（log/rc 無法寫入或失真）、淨化/安全命中未處置、或「把失敗變成成功」的任何跡象（例如 rc 被吞掉）。

### **4.5 Doc Inventory（S1；含檢索 alias）**

| item | value |
| ----- | ----- |
| GitHub\_UI\_Setup | N/A（本 WP 禁止 UI 操作；見 §3 Route-Out） |
| GitHub\_UI\_Setup (alias) | N/A |
| Baseline SSOT | `/mnt/data/OMOC_實作+WP總表_v4.0.1-r2.md`（N4 PRIMARY） |
| Review Spec | `/mnt/data/OMOC_WP-005+RB+WI_審查報告.md` |

---

## **5 Runbook（Path A / Path B）**

𝐴𝑁𝐶𝐻𝑂𝑅:𝑂𝑀𝑂𝐶−𝑊𝑃005−0500ANCHOR:OMOC−WP005−0500

\[TAGS: runbook, path-a, path-b, rc, pipestatus, tee, timeout, fail-closed\]

### **5.1 全域硬化規則（先讀再跑）**

1. **每次執行必用新 ts**：禁止覆寫既有 `evidence/_acceptance/<ts>`（見 §6.2）。  
2. **missing 與 fail 必須可區分**：缺檔 rc=42；腳本失敗保留真實 rc；兩者都必 exit 非 0。  
3. **tee/pipeline rc 不得失真**：必同時記錄 `cmd_rc` 與 `tee_rc`，並寫死 adjudication 規則（§5.3）。  
4. **證據先行**：先確保 evidence 目錄可寫；不然你只是在“跑”，不是在“驗收”。

### **5.2 目錄與 ts（共用）**

set \-euo pipefail

\# 1\) 每次新 ts（UTC；與 RBWI/Skills 對齊）  
ts="${OMOC\_TS:-$(date \-u \+%Y%m%dT%H%M%SZ)}"

\# 2\) 路徑（WP-005 canonical \+ RBWI/Skills logdir）  
wpdir="evidence/\_acceptance/$ts/WP-005"  
logdir="evidence/\_acceptance/$ts/log"  
mkdir \-p "$wpdir" "$logdir"

\# 3\) 防覆寫（Fail-Closed）  
\#    若你硬要重用同一 ts，請先自覺：這等同把證據鏈的時間戳拿去回鍋。

### **5.3 pipeline rc 規則（tee / PIPESTATUS；可測且不可誤解）**

**核心問題**：`cmd | tee file` 預設 `$?` 只看最後一段（tee），容易把上游失敗變成成功。  
**本 WP 寫死規則**：

* `cmd_rc := PIPESTATUS[0]`（上游命令：含 timeout 的 rc）  
* `tee_rc := PIPESTATUS[1]`（tee 的 rc）  
* `adjudicated_rc := (tee_rc != 0) ? tee_rc : cmd_rc`  
  * 原因：**證據寫不出來**比“腳本失敗”更致命——你連失敗長什麼樣都留不住。

並且落地為三份 rc 檔（避免事後吵成宗教戰爭）：

* `.../WP-005/acceptance_local.cmd.rc`  
* `.../WP-005/acceptance_local.tee.rc`  
* `.../WP-005/rc.txt`（裁決用 rc；等於 adjudicated\_rc）

### **5.4 Path A（腳本存在：執行並裁決）**

set \-euo pipefail  
ts="${OMOC\_TS:-$(date \-u \+%Y%m%dT%H%M%SZ)}"  
wpdir="evidence/\_acceptance/$ts/WP-005"  
logdir="evidence/\_acceptance/$ts/log"  
mkdir \-p "$wpdir" "$logdir"

\# A0) 快照（可選但強烈建議）  
{  
  echo "==\> \[WP-005\] ts=$ts"  
  echo "==\> \[WP-005\] git\_head=$(git rev-parse HEAD 2\>/dev/null || echo UNVERIFIED)"  
  echo "==\> \[WP-005\] git\_status:"  
  git status \--porcelain=v1 2\>/dev/null || true  
} | tee "$wpdir/snapshot.log" \>/dev/null || true

\# A1) 必須顯式判斷存在性（不得用 && || 混在一起）  
if \[ \! \-f "scripts/acceptance\_local.sh" \]; then  
  echo "scripts/acceptance\_local.sh missing \=\> switch to Path B" | tee "$wpdir/acceptance\_local.log"  
  echo "42" \> "$wpdir/rc.txt"  
  echo "42" \> "$logdir/L3-acceptance-local.rc"  
  echo "scripts/acceptance\_local.sh missing (rc=42) \=\> TEMP\_CLOSED" | tee "$logdir/L3-acceptance-local.log" \>/dev/null  
  exit 42  
fi

\# A2) 執行（保留真實 rc；tee 失敗優先）  
set \+e  
if command \-v timeout \>/dev/null 2\>&1; then  
  timeout \--preserve-status 30m bash \-lc 'bash scripts/acceptance\_local.sh' 2\>&1 | tee "$wpdir/acceptance\_local.log"  
else  
  echo "WARN: timeout missing; running without timeout (UNVERIFIED) \=\> TT required" | tee \-a "$wpdir/acceptance\_local.log" \>/dev/null  
  bash \-lc 'bash scripts/acceptance\_local.sh' 2\>&1 | tee \-a "$wpdir/acceptance\_local.log"  
fi

cmd\_rc="${PIPESTATUS\[0\]}"  
tee\_rc="${PIPESTATUS\[1\]:-0}"  
printf "%s" "$cmd\_rc" \> "$wpdir/acceptance\_local.cmd.rc"  
printf "%s" "$tee\_rc" \> "$wpdir/acceptance\_local.tee.rc"

if \[ "$tee\_rc" \-ne 0 \]; then  
  adjudicated\_rc="$tee\_rc"  
else  
  adjudicated\_rc="$cmd\_rc"  
fi

printf "%s" "$adjudicated\_rc" \> "$wpdir/rc.txt"  
set \-e

\# A3) RBWI 相容輸出（加法相容；不得取代 canonical）  
cp \-f "$wpdir/acceptance\_local.log" "$logdir/L3-acceptance-local.log" 2\>/dev/null || true  
printf "%s" "$adjudicated\_rc" \> "$logdir/L3-acceptance-local.rc"

\# A4) 最終 exit（FAIL 不能被吞）  
exit "$adjudicated\_rc"

**裁決解讀（Path A）**

* `rc=0`：可以進入 **PASS** 候選（仍需過 §7 Checklist）。  
* `rc!=0`：**TEMP\_CLOSED**（保留真實 rc 以便修補）；若 `tee_rc!=0` 則偏向 **FAIL\_CLOSED**（證據不可回查）。

### **5.5 Path B（腳本缺席：缺檔必 FAIL；rc=42；建 TT；TEMP\_CLOSED）**

**硬要求**：缺檔不是成功；缺檔也要有 log/rc；並且必須 exit 非 0。  
本 WP 採 `RC_MISSING=42`（本地約定；未見 INPUTS 明文標準 → 以 TT 固化）。

set \-euo pipefail  
ts="${OMOC\_TS:-$(date \-u \+%Y%m%dT%H%M%SZ)}"  
wpdir="evidence/\_acceptance/$ts/WP-005"  
logdir="evidence/\_acceptance/$ts/log"  
mkdir \-p "$wpdir" "$logdir"

RC\_MISSING="42"

if \[ \! \-f "scripts/acceptance\_local.sh" \]; then  
  {  
    echo "scripts/acceptance\_local.sh missing"  
    echo "verdict=TEMP\_CLOSED"  
    echo "rc=$RC\_MISSING"  
    echo "action=Create TT (see §10 TT Register) and implement minimal acceptance\_local.sh per WI"  
  } | tee "$wpdir/acceptance\_local.log" \>/dev/null

  printf "%s" "$RC\_MISSING" \> "$wpdir/rc.txt"

  \# RBWI 相容輸出（仍需落地）  
  cp \-f "$wpdir/acceptance\_local.log" "$logdir/L3-acceptance-local.log" 2\>/dev/null || true  
  printf "%s" "$RC\_MISSING" \> "$logdir/L3-acceptance-local.rc"

  \# 本 WP TT stub（可被工具抓取）  
  cat \> "$wpdir/tt\_stub.md" \<\<'EOF'  
TT-WP005-EXEC-001 | type=EXEC | priority=P0 | source=WP-005(Path B missing script) | fix\_target=scripts/acceptance\_local.sh  
acceptance(≤3): (1) script exists (2) run rc=0 (3) outputs produced without overwrite  
closure\_owner: owner:repo  
close\_conditions: evidence shows rc=0 and log non-empty; checklist PASS  
retest\_steps: rerun WP-005 Path A with new ts; verify §7 checklist  
EOF

  exit "$RC\_MISSING"  
fi

\# 若真的走到這裡，代表腳本存在；請改用 Path A（不在 Path B 繼續跑）  
echo "UNEXPECTED: script exists; use Path A" | tee "$wpdir/acceptance\_local.log"  
echo "1" \> "$wpdir/rc.txt"  
exit 1

---

## **6 WI（Work Instructions：輸出、淨化、重跑策略）**

𝐴𝑁𝐶𝐻𝑂𝑅:𝑂𝑀𝑂𝐶−𝑊𝑃005−0600ANCHOR:OMOC−WP005−0600

\[TAGS: wi, rerun, evidence, sanitize, packaging, denylist, fail-closed\]

### **6.1 最小實作指引（僅在缺檔時）**

若 `scripts/acceptance_local.sh` 缺席（Path B），允許建立一個**極小且可擴充**的骨架，但不得偷渡 Phase-G/CI/MQ 操作。示例（僅作起手式；實際檢查內容以 repo 技術棧為準）：

\#\!/usr/bin/env bash  
set \-euo pipefail

echo "\[acceptance\_local\] START"  
\# TODO: replace with repo-specific checks; keep deterministic, offline-first.  
\# Example placeholders:  
command \-v git \>/dev/null  
echo "\[acceptance\_local\] OK"

**收斂規則**：只要是“我猜應該要檢查 X”，就不是規範；請先建 TT，再在後續 WP/技能包固化。

### **6.2 重跑策略（禁止覆寫；必新 ts）**

* 每次執行 **必須**使用新 `ts`（UTC `YYYYMMDDTHHMMSSZ`）。  
* 禁止覆寫：`evidence/_acceptance/<ts>` 既有內容。  
* 若你真的需要重跑：請用新 ts；舊 ts 保留作對照（差異就是你修補的證據）。

### **6.3 輸出整理與打包（本 WP 範圍內：只處理 L3 證據）**

**允許的最小打包（僅 L3；不等於 Evidence Minset；不得冒充 WP-008）**

set \-euo pipefail  
ts="\<ts\>"  
tar \-czf "evidence/\_acceptance/$ts/wp005\_local\_acceptance.tgz" \\  
  \-C "evidence/\_acceptance/$ts" "WP-005" "log/L3-acceptance-local.log" "log/L3-acceptance-local.rc"

注意：`verdict.json / checks_manifest.json / evidence_bundle.tgz / bundle_audit.json` 屬 Evidence Minset，請 Route-Out → WP-008（§3）。

### **6.4 輸出淨化（denylist：NORMATIVE 只以 INPUTS 明示者為底；其餘 SUPPORT+TT）**

**NORMATIVE（RBWI 已明示的最小排除）**：`.env`、`*token*`、`*secret*`（見 Appendix A 的 RBWI Locator）。  
**SUPPORT（常見高風險檔型；未見 INPUTS 明示 → TT 固化後才可升格）**：

* 私鑰/憑證：`*.pem`, `*.key`, `*.p12`, `*.pfx`, `id_rsa`, `id_ed25519`  
* kube：`.kube/config`（或整個 `.kube/`）  
* 雲端憑證：`credentials`, `application_default_credentials.json`（視 repo 而定）

**TT（本文件收斂）**：見 §10 `TT-WP005-SEC-001`（denylist/allowlist 策略固化）。

機智但嚴肅的提醒：洩密事故最常見的根因不是“沒做”，而是“只漏了一個副檔名”。

---

## **7 Evidence Contract / Acceptance Criteria（含 Exit Gate Checklist 表）**

𝐴𝑁𝐶𝐻𝑂𝑅:𝑂𝑀𝑂𝐶−𝑊𝑃005−0700ANCHOR:OMOC−WP005−0700

\[TAGS: evidence-contract, acceptance-criteria, exit-gate, checklist, machine-verifiable\]

### **7.1 最低證據集合（WPMap r2：不得少於）**

* `acceptance_local.log`（非空；可回查）  
* `rc`（可解析整數；PASS 必須為 0）

本文件的 canonical 路徑固定為：

* `evidence/_acceptance/<ts>/WP-005/acceptance_local.log`  
* `evidence/_acceptance/<ts>/WP-005/rc.txt`

### **7.2 Exit Gate Checklist（集中式；可機器化驗收）**

| Artifact（canonical） | Check | Command（示例） | Pass Criteria | Fail Action（Fail-Closed 收斂） |
| ----- | ----- | ----- | ----- | ----- |
| `.../WP-005/acceptance_local.log` | 存在且非空 | `test -s "evidence/_acceptance/$ts/WP-005/acceptance_local.log"` | exit 0 | 若不存在/空檔 → **FAIL\_CLOSED**（證據不可回查）→ 建 TT → 重跑（新 ts） |
| `.../WP-005/rc.txt` | 存在且為整數 | `test -s ".../rc.txt" && grep -Eq '^[0-9]+$' ".../rc.txt"` | exit 0 | 若缺失/非整數 → **FAIL\_CLOSED**（rc 失真）→ TT → 重跑 |
| `.../WP-005/rc.txt` | rc=0 才能 PASS | `grep -qx '0' ".../rc.txt"` | rc==0 | rc\!=0 → **TEMP\_CLOSED**（保留 rc 修補）；缺檔 rc=42 → TEMP\_CLOSED（Path B） |
| `.../WP-005/acceptance_local.cmd.rc` | 保留真實命令 rc | `test -s ".../acceptance_local.cmd.rc"` | 存在即可 | 缺失 → TT（pipeline rc 追溯不足） |
| `.../WP-005/acceptance_local.tee.rc` | tee rc 可追溯 | `test -s ".../acceptance_local.tee.rc"` | 存在即可 | 若 tee\_rc\!=0 → **FAIL\_CLOSED**（證據寫入失敗） |
| `.../log/L3-acceptance-local.log`（相容） | RBWI 對照 | `test -s ".../log/L3-acceptance-local.log"` | 建議存在 | 缺失 → TT（相容輸出缺口；不取代 canonical） |
| `.../log/L3-acceptance-local.rc`（相容） | RBWI 對照 rc | `test -s ".../log/L3-acceptance-local.rc"` | 建議存在 | 缺失 → TT（相容輸出缺口） |

### **7.3 裁決輸出（本 WP 範圍內）**

* **不輸出** `verdict.json`（Evidence Minset 屬 WP-008）。  
* 本 WP 的裁決以：`rc.txt` \+ Checklist 結果表達：  
  * rc=0 且 Checklist 無 FAIL\_CLOSED → PASS  
  * rc=42（缺檔）→ TEMP\_CLOSED（必 TT）  
  * rc\!=0（執行失敗）→ TEMP\_CLOSED（保留 rc 修補）  
  * log/rc 不可回查 → FAIL\_CLOSED

---

## **8 Gates（Entry / Downstream / Route-Out；對齊 gate\_registry.json）**

𝐴𝑁𝐶𝐻𝑂𝑅:𝑂𝑀𝑂𝐶−𝑊𝑃005−0800ANCHOR:OMOC−WP005−0800

\[TAGS: gates, entry-gate, downstream, route-out, gate-registry\]

### **8.1 Entry Gates（L3 允許作為“入口”的 Gate）**

**Entry Gates：`GATE-ENV-READY`（ONLY）**

* 定義與 required artifacts 以 `gate_registry.json` 為準（定位見 Appendix A）。  
* 本 Gate 的實作驗收主要在 WP-002（環境就緒）；WP-005 只做**依賴宣告**：  
  * 若環境不就緒（無法寫 evidence、無 bash/tee）：直接 FAIL\_CLOSED（§2.2）。

### **8.2 Downstream Gates（不可當 L3 入口；只能下游達成）**

**Downstream Gates（ROUTE\_OUT）：`GATE-EVIDENCE-MINSET`**

* `GATE-EVIDENCE-MINSET` 的 required artifacts 包含 `verdict.json / evidence_bundle.tgz / bundle_audit.json` 等全域集合。  
* L3 Local Acceptance **不可能先天滿足**；因此：  
  * 在本 WP **不得**列為 Entry；  
  * 只能列為 Downstream/Route-Out → **WP-008**（Evidence Minset）。

### **8.3 Gate 與本 WP 的對齊結論（可檢索斷言）**

* **Entry 只含 `GATE-ENV-READY`**（本節已落地）。  
* **`GATE-EVIDENCE-MINSET` 出現在 Downstream/Route-Out**（本節已落地）。  
* 若有人要求“在 WP-005 產出 verdict/bundle”：請直接指向 §3 Route-Out（不討價還價）。

---

## **9 Traceability（Coverage Map / Locator Proof / Closure Matrix）**

𝐴𝑁𝐶𝐻𝑂𝑅:𝑂𝑀𝑂𝐶−𝑊𝑃005−0900ANCHOR:OMOC−WP005−0900

\[TAGS: traceability, coverage-map, locator-proof, closure-matrix, conflict-log\]

### **9.1 Coverage Map（子需求 → 落點 → 證據）**

| subreq\_id | normative\_source\_locator | wp\_locator | evidence\_locator | status |
| ----- | ----- | ----- | ----- | ----- |
| WP005-RQ-01 Authority Stack（N4=r2） | WP-001 r2 Authority 寫法（Cross-WP） \+ R1 Findings | §2.1 | 本文件可檢索斷言（見 §11 Quick Index） | CLOSED（doc-level） |
| WP005-RQ-02 L3 outputs（acceptance\_local.log \+ rc） | WPMap r2 WP-005 row | §4.2 / §7.1 | `.../WP-005/acceptance_local.log` \+ `.../WP-005/rc.txt` | EXEC-DEPENDENT |
| WP005-RQ-03 missing vs fail RC 語義 | R1 F-WP005-003 \+ RBWI CMD template（對照） | §5.4 / §5.5 | `rc.txt=42`（missing）或 `rc.txt!=0`（fail） | CLOSED（doc-level） |
| WP005-RQ-04 Gate 語義（Entry 只留 ENV-READY） | WPMap r2 gate\_registry（GATE-ENV-READY / EVIDENCE-MINSET） | §8 | gate 宣告可檢索 | CLOSED（doc-level） |
| WP005-RQ-05 三方輸出映射（WP-005/RBWI/SK07） | RBWI L3 \+ Skills SK07 | §9.3 | mapping 表（本節） | CLOSED（doc-level） |
| WP005-RQ-06 denylist 擴充 | RBWI evidence contract（最小排除） | §6.4 | TT-WP005-SEC-001 | OPEN（TT） |

### **9.2 Conflict & Decision Log（含三方 canonical mapping 表）**

#### **9.2.1 主要衝突（已裁決）**

* **SK07 輸出路徑**：以 Skills SSOT 為準（`log/SK07-acceptance.{log,rc}`）；不得捏造成 `L3/acceptance_local.*`。  
* **missing script 的 exit 語義**：  
  * SK07（skills）在缺檔時 rc=2 但 **exit 0**（one-shot 最小示例）；  
  * WP-005（本文件）採 **Fail-Closed**：缺檔 rc=42 且 **exit 非 0**（避免“0 分畢業”）。  
  * 裁決：SK07 可作“技能輸出”，但不得作 WP-005 Gate 的 PASS 判定依據（除非後續 TT 固化一致語義）。

#### **9.2.2 WP-005 / RBWI / SK07 三方 canonical mapping（含相容策略）**

| Plane | Source（SSOT） | Canonical outputs（SSOT claimed） | WP-005 對應路徑 | 相容策略（加法相容） |
| ----- | ----- | ----- | ----- | ----- |
| WP-005（本文件） | WPMap r2：`acceptance_local.log + rc` | `acceptance_local.log` \+ `rc` | `.../WP-005/acceptance_local.log` \+ `.../WP-005/rc.txt` | **主契約**；RBWI/SK07 只作對照，不得取代 |
| RBWI L3 | RBWI 合冊 L3 | `log/L3-acceptance-local.log` \+ `.rc` | `.../log/L3-acceptance-local.log` \+ `.../log/L3-acceptance-local.rc` | 由 WP-005 在執行後 **同步複製**（§5.4/§5.5） |
| SK07 | skills 合冊 SK07 | `log/SK07-acceptance.log` \+ `.rc` | `.../log/SK07-acceptance.log` \+ `.../log/SK07-acceptance.rc` | 允許並存；但缺檔 exit 語義與 WP-005 不同 → 視為 SUPPORT/診斷輸出 |

### **9.3 Closure Matrix（R1 Findings 對應關閉證據）**

| finding\_id | severity | fix\_target | disposition | proof（本文件 locator） |
| ----- | ----- | ----- | ----- | ----- |
| F-WP005-001 | BLOCKER | N4 指向 r2；r1 降級 | FIXED | §2.1（N4 PRIMARY \+ N4S supported-superseded） |
| F-WP005-002 | BLOCKER | Gates：Entry 只留 ENV-READY | FIXED | §8.1/§8.2（Entry/Downstream 明確分離） |
| F-WP005-003 | BLOCKER | Path B missing vs fail；rc 不得失真 | FIXED | §5.5（顯式 if/else；rc=42；exit 非 0）＋ §5.3（tee/pipeline rc 規則） |
| F-WP005-004 | MAJOR | SK07 路徑修正 \+ mapping 表 | FIXED | §9.2（SK07 outputs \+ 三方 mapping） |
| F-WP005-005 | MAJOR | Appendix A locator 改 r2 | FIXED | §11 Appendix A（只引用 r2 可定位段） |
| F-WP005-006 | MAJOR | Exit Gate Checklist 集中表 | FIXED | §7.2 |
| F-WP005-007 | MAJOR | 版本齊平 r2 | FIXED | Header（Canonical Version）＋ Change Summary |
| F-WP005-008 | MINOR | denylist 擴充 | TT | §6.4 \+ §10 TT-WP005-SEC-001 |
| F-WP005-009 | MINOR | GitHub\_UI\_Setup alias | FIXED | §4.5 |
| PATCH-WP005-009 | MINOR | 重跑策略（新 ts） | FIXED | §6.2 |

---

## **10 TT Register（含 closure criteria 與 TT-007 對照）**

𝐴𝑁𝐶𝐻𝑂𝑅:𝑂𝑀𝑂𝐶−𝑊𝑃005−1000ANCHOR:OMOC−WP005−1000

\[TAGS: tt, temp-closed, closure-criteria, tt-007\]

### **10.1 TT List（本文件維護；無 CR\_OPEN）**

**TT Template（固定）**：  
`TT-ID | type | priority | source_locator | fix_target | acceptance(≤3) | closure_owner | close_conditions | retest_steps`

| TT-ID | type | priority | source\_locator | fix\_target | acceptance(≤3) | closure\_owner | close\_conditions | retest\_steps |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| TT-WP005-EXEC-001 | EXEC | P0 | §5.5(Path B missing) | `scripts/acceptance_local.sh` | (1) 檔案存在 (2) Path A rc=0 (3) Checklist PASS | owner:repo | 新 ts 證據顯示 rc=0 且 log 非空 | 依 §5.4 重跑；依 §7.2 驗證 |
| TT-WP005-SEC-001 | SECURITY | P1 | §6.4 denylist(SUPPORT) | denylist/allowlist 固化（上游或本 repo） | (1) 排除規則可定位 (2) bundle/pack 不含 secrets (3) 命中即 FAIL\_CLOSED | owner:security | denylist/allowlist 在 INPUTS 或 repo contract 固化且可驗證 | 建立測試樣本；打包驗證命中 |
| TT-WP005-RBWI-SYNC-001 | PROCESS | P1 | §5.5（RC\_MISSING=42） | RBWI L3 模板同步（若要） | (1) missing/fail 可區分 (2) 不吞 rc (3) 不破壞既有工具 | owner:auditor | RBWI 若更新則與本 WP 一致；若不更新則明示差異仍可稽核 | 比對 RBWI 最新版；必要時 Route-Out → WP-014 |

### **10.2 WPMap TT-007 ↔ 本文件 TT 對照（必要時可抓取）**

* **WPMap r2 對 WP-005 row 標示 TT-007**：屬全域 PROCESS（矩陣/定位/欄位模板）類型 TT。  
* 本文件已在文件層補齊：Coverage Map / Closure Matrix / TT Register / Locator Proof（對應 TT-007 的精神）。  
* 但 **TT-007 的工具化 schema 檢查**屬 WP-014/全域治理範圍：因此本文件不宣稱關閉 TT-007，只提供可落地的對齊產物與 locators。

---

## **11 Appendices（Locator Proof / Mapping / Web SUPPORT）**

𝐴𝑁𝐶𝐻𝑂𝑅:𝑂𝑀𝑂𝐶−𝑊𝑃005−1100ANCHOR:OMOC−WP005−1100

\[TAGS: appendix, locator-proof, mapping-index, quick-index, web-evidence\]

### **Appendix A — Locator Proof（r2 對齊；可逐行定位）**

規則：本節僅列 INPUTS 可定位段落；**不引用 WPMap r1**（已 superseded 且不在 INPUTS）。

| id | source | locator（file \+ line range） | excerpt（≤25 words） | used\_by |
| ----- | ----- | ----- | ----- | ----- |
| A1 | Blueprint Fail-Closed / No-Source-No-Norm | `OMOC_藍圖_v4.0.1-r1.md` L59–L77（\[ANCHOR:OMOC-BP-0300\]） | 缺來源/缺定位→TT→TEMP\_CLOSED | §2.2 / §9 |
| A2 | Blueprint Evidence Min Output Set（加法相容） | `OMOC_藍圖_v4.0.1-r1.md` L179–L192（\[ANCHOR:OMOC-BP-1000\]） | 採加法相容；允許額外輸出 | §4.2 / §9.2 |
| A3 | RBWI cmd template（timeout/tee/PIPESTATUS） | `OMOC_施工RB+WI_合冊_v4.0.1-r1.md` L188–L207（\[ANCHOR:OMOC-RBWI-CMD-TEMPLATE\]） | \`timeout \--preserve-status ... | tee ... ; rc=${PIPESTATUS\[0\]}\` |
| A4 | RBWI L3（缺檔→TT-013；輸出命名） | `OMOC_施工RB+WI_合冊_v4.0.1-r1.md` L270–L307（\[ANCHOR:OMOC-RBWI-L3\]） | L3-acceptance-local.log \+ .rc；缺檔→TT | §4.2 / §9.2 |
| A5 | Skills SK07 outputs（SSOT） | `OMOC_施工skills_合冊_v4.0.1-r2.md` L1059–L1062 | `log/SK07-acceptance.log` \+ `.rc` | §4.2 / §9.2 |
| A6 | WPMap r2：WP-005 row | `OMOC_實作+WP總表_v4.0.1-r2.md` L339 | WP-005：Phase-L/L3；輸出 `acceptance_local.log + rc`；TT-007 | §4 / §7 |
| A7 | WPMap r2：gate\_registry（ENV-READY / EVIDENCE-MINSET） | `OMOC_實作+WP總表_v4.0.1-r2.md` L531–L556 | Gate definitions \+ required\_artifacts | §8 |

### **Appendix B — Mapping Index（防漏檢索）**

* WP-005 canonical outputs：`acceptance_local.log`、`rc.txt`  
* RBWI L3 outputs：`L3-acceptance-local.log`、`L3-acceptance-local.rc`  
* SK07 outputs：`SK07-acceptance.log`、`SK07-acceptance.rc`  
* 關鍵裁決字串（建議用全文搜尋）：  
  * `Entry Gates：GATE-ENV-READY (ONLY)`  
  * `Downstream Gates (ROUTE_OUT)：GATE-EVIDENCE-MINSET`  
  * `RC_MISSING=42`  
  * `adjudicated_rc := (tee_rc != 0) ? tee_rc : cmd_rc`

### **Appendix C — Web SUPPORT Evidence（不得升格；access\_date=2026-02-18 Asia/Taipei）**

| web\_id | support\_fact（SUPPORT ONLY） | web\_refs（\>=2） | access\_date | note |
| ----- | ----- | ----- | ----- | ----- |
| W-TO-01 | `timeout` exit status：124/125/126/127/137 與 preserve-status 行為 | GNU coreutils timeout doc ([gnu.org](https://www.gnu.org/s/coreutils/timeout?utm_source=chatgpt.com))；Debian manpage ([manpages.debian.org](https://manpages.debian.org/testing/coreutils/timeout.1.en.html?utm_source=chatgpt.com)) | 2026-02-18 | 用於 §5.4 的 timeout 行為解釋（不覆寫 SSOT） |
| W-SH-01 | pipeline `$?` 與 `pipefail`/`PIPESTATUS` 的關係；tee 會吞 rc 的典型陷阱 | StackOverflow 範例 ([Stack Overflow](https://stackoverflow.com/questions/6871859/piping-command-output-to-tee-but-also-save-exit-code-of-command?utm_source=chatgpt.com))；SuperUser 說明 ([Super User](https://superuser.com/questions/425774/how-to-get-both-pipestatus-and-output-in-bash-script?utm_source=chatgpt.com)) | 2026-02-18 | 用於 §5.3 rc 規則（證據可測） |
| W-LLM-01 | Prompt Injection / Excessive Agency 風險與指令/資料分離必要性 | OWASP Top 10 for LLMs PDF ([owasp.org](https://owasp.org/www-project-top-10-for-large-language-model-applications/assets/PDF/OWASP-Top-10-for-LLMs-v2025.pdf?utm_source=chatgpt.com))；OWASP project page ([owasp.org](https://owasp.org/www-project-top-10-for-large-language-model-applications/?utm_source=chatgpt.com)) | 2026-02-18 | 用於 §2.3（SUPPORT；不覆寫 INPUTS） |

### **Appendix D — Quick Index（Anti-miss）**

* Authority Stack → §2.1（`N4 ... r2 (PRIMARY)`；`N4S ... supported-superseded`）  
* Scope / Route-Out → §3（GitHub UI/MQ/required checks 一律 Route-Out）  
* Runbook Path A → §5.4（script exists）  
* Runbook Path B → §5.5（missing rc=42；exit 非 0；建 TT）  
* Evidence Contract / Exit Gate Checklist → §7.2  
* Gates → §8（Entry=ENV-READY only；EVIDENCE-MINSET downstream/route-out）  
* Conflict Log / 三方 mapping 表 → §9.2  
* TT Register → §10（含 TT-007 對照）

