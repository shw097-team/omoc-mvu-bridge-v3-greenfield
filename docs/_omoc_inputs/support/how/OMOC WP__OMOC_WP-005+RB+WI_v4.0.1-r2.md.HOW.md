# HOW (extracted)


* Bash pipeline / `PIPESTATUS` / `pipefail` 語義（見 Appendix C）  


---


| item | value |
| ----- | ----- |
| GitHub\_UI\_Setup | N/A（本 WP 禁止 UI 操作；見 §3 Route-Out） |
| GitHub\_UI\_Setup (alias) | N/A |
| Baseline SSOT | `/mnt/data/OMOC_實作+WP總表_v4.0.1-r2.md`（N4 PRIMARY） |
| Review Spec | `/mnt/data/OMOC_WP-005+RB+WI_審查報告.md` |


---


| Artifact（canonical） | Check | Command（示例） | Pass Criteria | Fail Action（Fail-Closed 收斂） |
| ----- | ----- | ----- | ----- | ----- |
| `.../WP-005/acceptance_local.log` | 存在且非空 | `test -s "evidence/_acceptance/$ts/WP-005/acceptance_local.log"` | exit 0 | 若不存在/空檔 → **FAIL\_CLOSED**（證據不可回查）→ 建 TT → 重跑（新 ts） |
| `.../WP-005/rc.txt` | 存在且為整數 | `test -s ".../rc.txt" && grep -Eq '^[0-9]+$' ".../rc.txt"` | exit 0 | 若缺失/非整數 → **FAIL\_CLOSED**（rc 失真）→ TT → 重跑 |
| `.../WP-005/rc.txt` | rc=0 才能 PASS | `grep -qx '0' ".../rc.txt"` | rc==0 | rc\!=0 → **TEMP\_CLOSED**（保留 rc 修補）；缺檔 rc=42 → TEMP\_CLOSED（Path B） |
| `.../WP-005/acceptance_local.cmd.rc` | 保留真實命令 rc | `test -s ".../acceptance_local.cmd.rc"` | 存在即可 | 缺失 → TT（pipeline rc 追溯不足） |
| `.../WP-005/acceptance_local.tee.rc` | tee rc 可追溯 | `test -s ".../acceptance_local.tee.rc"` | 存在即可 | 若 tee\_rc\!=0 → **FAIL\_CLOSED**（證據寫入失敗） |
| `.../log/L3-acceptance-local.log`（相容） | RBWI 對照 | `test -s ".../log/L3-acceptance-local.log"` | 建議存在 | 缺失 → TT（相容輸出缺口；不取代 canonical） |
| `.../log/L3-acceptance-local.rc`（相容） | RBWI 對照 rc | `test -s ".../log/L3-acceptance-local.rc"` | 建議存在 | 缺失 → TT（相容輸出缺口） |


---


| subreq\_id | normative\_source\_locator | wp\_locator | evidence\_locator | status |
| ----- | ----- | ----- | ----- | ----- |
| WP005-RQ-01 Authority Stack（N4=r2） | WP-001 r2 Authority 寫法（Cross-WP） \+ R1 Findings | §2.1 | 本文件可檢索斷言（見 §11 Quick Index） | CLOSED（doc-level） |
| WP005-RQ-02 L3 outputs（acceptance\_local.log \+ rc） | WPMap r2 WP-005 row | §4.2 / §7.1 | `.../WP-005/acceptance_local.log` \+ `.../WP-005/rc.txt` | EXEC-DEPENDENT |
| WP005-RQ-03 missing vs fail RC 語義 | R1 F-WP005-003 \+ RBWI CMD template（對照） | §5.4 / §5.5 | `rc.txt=42`（missing）或 `rc.txt!=0`（fail） | CLOSED（doc-level） |
| WP005-RQ-04 Gate 語義（Entry 只留 ENV-READY） | WPMap r2 gate\_registry（GATE-ENV-READY / EVIDENCE-MINSET） | §8 | gate 宣告可檢索 | CLOSED（doc-level） |
| WP005-RQ-05 三方輸出映射（WP-005/RBWI/SK07） | RBWI L3 \+ Skills SK07 | §9.3 | mapping 表（本節） | CLOSED（doc-level） |
| WP005-RQ-06 denylist 擴充 | RBWI evidence contract（最小排除） | §6.4 | TT-WP005-SEC-001 | OPEN（TT） |


---


| Plane | Source（SSOT） | Canonical outputs（SSOT claimed） | WP-005 對應路徑 | 相容策略（加法相容） |
| ----- | ----- | ----- | ----- | ----- |
| WP-005（本文件） | WPMap r2：`acceptance_local.log + rc` | `acceptance_local.log` \+ `rc` | `.../WP-005/acceptance_local.log` \+ `.../WP-005/rc.txt` | **主契約**；RBWI/SK07 只作對照，不得取代 |
| RBWI L3 | RBWI 合冊 L3 | `log/L3-acceptance-local.log` \+ `.rc` | `.../log/L3-acceptance-local.log` \+ `.../log/L3-acceptance-local.rc` | 由 WP-005 在執行後 **同步複製**（§5.4/§5.5） |
| SK07 | skills 合冊 SK07 | `log/SK07-acceptance.log` \+ `.rc` | `.../log/SK07-acceptance.log` \+ `.../log/SK07-acceptance.rc` | 允許並存；但缺檔 exit 語義與 WP-005 不同 → 視為 SUPPORT/診斷輸出 |


---


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


| TT-ID | type | priority | source\_locator | fix\_target | acceptance(≤3) | closure\_owner | close\_conditions | retest\_steps |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| TT-WP005-EXEC-001 | EXEC | P0 | §5.5(Path B missing) | `scripts/acceptance_local.sh` | (1) 檔案存在 (2) Path A rc=0 (3) Checklist PASS | owner:repo | 新 ts 證據顯示 rc=0 且 log 非空 | 依 §5.4 重跑；依 §7.2 驗證 |
| TT-WP005-SEC-001 | SECURITY | P1 | §6.4 denylist(SUPPORT) | denylist/allowlist 固化（上游或本 repo） | (1) 排除規則可定位 (2) bundle/pack 不含 secrets (3) 命中即 FAIL\_CLOSED | owner:security | denylist/allowlist 在 INPUTS 或 repo contract 固化且可驗證 | 建立測試樣本；打包驗證命中 |
| TT-WP005-RBWI-SYNC-001 | PROCESS | P1 | §5.5（RC\_MISSING=42） | RBWI L3 模板同步（若要） | (1) missing/fail 可區分 (2) 不吞 rc (3) 不破壞既有工具 | owner:auditor | RBWI 若更新則與本 WP 一致；若不更新則明示差異仍可稽核 | 比對 RBWI 最新版；必要時 Route-Out → WP-014 |


---


| id | source | locator（file \+ line range） | excerpt（≤25 words） | used\_by |
| ----- | ----- | ----- | ----- | ----- |
| A1 | Blueprint Fail-Closed / No-Source-No-Norm | `OMOC_藍圖_v4.0.1-r1.md` L59–L77（\[ANCHOR:OMOC-BP-0300\]） | 缺來源/缺定位→TT→TEMP\_CLOSED | §2.2 / §9 |
| A2 | Blueprint Evidence Min Output Set（加法相容） | `OMOC_藍圖_v4.0.1-r1.md` L179–L192（\[ANCHOR:OMOC-BP-1000\]） | 採加法相容；允許額外輸出 | §4.2 / §9.2 |
| A3 | RBWI cmd template（timeout/tee/PIPESTATUS） | `OMOC_施工RB+WI_合冊_v4.0.1-r1.md` L188–L207（\[ANCHOR:OMOC-RBWI-CMD-TEMPLATE\]） | \`timeout \--preserve-status ... | tee ... ; rc=${PIPESTATUS\[0\]}\` |
| A4 | RBWI L3（缺檔→TT-013；輸出命名） | `OMOC_施工RB+WI_合冊_v4.0.1-r1.md` L270–L307（\[ANCHOR:OMOC-RBWI-L3\]） | L3-acceptance-local.log \+ .rc；缺檔→TT | §4.2 / §9.2 |
| A5 | Skills SK07 outputs（SSOT） | `OMOC_施工skills_合冊_v4.0.1-r2.md` L1059–L1062 | `log/SK07-acceptance.log` \+ `.rc` | §4.2 / §9.2 |
| A6 | WPMap r2：WP-005 row | `OMOC_實作+WP總表_v4.0.1-r2.md` L339 | WP-005：Phase-L/L3；輸出 `acceptance_local.log + rc`；TT-007 | §4 / §7 |
| A7 | WPMap r2：gate\_registry（ENV-READY / EVIDENCE-MINSET） | `OMOC_實作+WP總表_v4.0.1-r2.md` L531–L556 | Gate definitions \+ required\_artifacts | §8 |


---


| web\_id | support\_fact（SUPPORT ONLY） | web\_refs（\>=2） | access\_date | note |
| ----- | ----- | ----- | ----- | ----- |
| W-TO-01 | `timeout` exit status：124/125/126/127/137 與 preserve-status 行為 | GNU coreutils timeout doc ([gnu.org](https://www.gnu.org/s/coreutils/timeout?utm_source=chatgpt.com))；Debian manpage ([manpages.debian.org](https://manpages.debian.org/testing/coreutils/timeout.1.en.html?utm_source=chatgpt.com)) | 2026-02-18 | 用於 §5.4 的 timeout 行為解釋（不覆寫 SSOT） |
| W-SH-01 | pipeline `$?` 與 `pipefail`/`PIPESTATUS` 的關係；tee 會吞 rc 的典型陷阱 | StackOverflow 範例 ([Stack Overflow](https://stackoverflow.com/questions/6871859/piping-command-output-to-tee-but-also-save-exit-code-of-command?utm_source=chatgpt.com))；SuperUser 說明 ([Super User](https://superuser.com/questions/425774/how-to-get-both-pipestatus-and-output-in-bash-script?utm_source=chatgpt.com)) | 2026-02-18 | 用於 §5.3 rc 規則（證據可測） |
| W-LLM-01 | Prompt Injection / Excessive Agency 風險與指令/資料分離必要性 | OWASP Top 10 for LLMs PDF ([owasp.org](https://owasp.org/www-project-top-10-for-large-language-model-applications/assets/PDF/OWASP-Top-10-for-LLMs-v2025.pdf?utm_source=chatgpt.com))；OWASP project page ([owasp.org](https://owasp.org/www-project-top-10-for-large-language-model-applications/?utm_source=chatgpt.com)) | 2026-02-18 | 用於 §2.3（SUPPORT；不覆寫 INPUTS） |


---


* Runbook Path A → §5.4（script exists）  


---

* Runbook Path B → §5.5（missing rc=42；exit 非 0；建 TT）  

