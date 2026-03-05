# HOW (extracted)


| doc\_id | filename | version（可定位） | normative\_role | key\_anchors\_or\_sections（將用於本 WP） | locator\_proof\_sample（≤25字 \+ 定位） |
| ----- | ----- | ----- | ----- | ----- | ----- |
| N1 | `/mnt/data/OMOC_藍圖_v4.0.1-r1.md` | v4.0.1-r1 | NORMATIVE | Reader Guide（No-Source-No-Norm）、工具能力宣告、TT 結構 | 「缺來源/缺定位：UNVERIFIED…」`[ANCHOR:OMOC-BP-0300]` |
| N2 | `/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md` | v4.0.1-r1 | NORMATIVE | `step()` 命令模板、Phase-L/L5 原則 | `ANCHOR:OMOC-RBWI-CMD-TEMPLATE` 含 `tee`/`PIPESTATUS`/`.rc` |
| N3 | `/mnt/data/OMOC_施工skills_合冊_v4.0.1-r2.md` | v4.0.1-r2 | NORMATIVE | D2（FILE BEGIN/END 契約）、D5（extractor/validator）、D6（acceptance） | `#OMOC-CSK-0400`「FILE BEGIN/END…FAIL\_CLOSED」 |
| N4 | `/mnt/data/OMOC_實作+WP總表_v4.0.1-r2.md` | v4.0.1-r2 | NORMATIVE | Doc Inventory（superseded 判定）、WP Summary（WP-007 列）、route-out 依據 | WP-007 列：`Phase-L/L5…N3…extractor/validator logs` |
| S1 | `/mnt/data/OMOC_實作+WP總表_v4.0.1-r1.md` | v4.0.1-r1 | SUPPORT-only（SUPPORTED-SUPERSEDED） | 僅作 legacy 參考，不得作規範與命令輸入 | r2 Doc Inventory：`SUPPORTED-SUPERSEDED`、`do not reference after r2` |
| D-WP007-OLD | `/mnt/data/OMOC_WP-007+RB+WI.md` | legacy | 被取代對象 | 舊版 Runbook/WI/Gates/BK/Risks/TT 宣告 | 舊版 L5-1 寫死 r1（屬 DRIFT） |
| R7 | `/mnt/data/OMOC_WP-007+RB+WI_審查報告.md` | 2026-02-18 | REVIEW/FIX SPEC | F-007-001\~006 closure | F-007-001/002：r1 污染 SSOT（BLOCKER） |
| NX-008 | `/mnt/data/OMOC_WP-008+RB+WI.md` | as-is | NORMATIVE（route-out） | Evidence Triplet+Bundle 實作本體 | 用於依賴與重跑條件（validator 前置） |
| NX-009\~014 | `/mnt/data/OMOC_WP-009+RB+WI.md`…`WP-014` | as-is | NORMATIVE（route-out） | Phase-G rulesets/required checks/MQ/drift guard | Out-of-scope 精準導流 |


---


| topic | target\_doc | locator（本 repo 文件內定位） | why |
| ----- | ----- | ----- | ----- |
| Evidence Triplet+Bundle 實作/產物（verdict/index/checks\_manifest/bundle/audit） | `OMOC_WP-008+RB+WI.md` | WP-008 對應「Triplet+Bundle」章節（以該檔 TOC/anchors 為準） | WP-007 僅能做銜接與前置一致性檢查，不能替代實作 |
| Required checks 命名契約（checks\_manifest） | `OMOC_WP-010+RB+WI.md` | WP-010 對應「Required Checks Contract Lock」章節 | Phase-G/G1 事項，不得塞回 L5 |
| merge\_group 觸發對齊、MQ probe | `OMOC_WP-012+RB+WI.md` | WP-012 對應「merge\_group Trigger Alignment \+ MQ Probe」章節 | GitHub 易變行為，需在 Phase-G 受控驗證 |
| Merge Queue 啟用與驗證 | `OMOC_WP-013+RB+WI.md` | WP-013 對應「Merge Queue Enablement & Verification」章節 | WP-007 預設 Phase-L 不啟用 MQ（RB+WI 原則） |
| Rulesets 快照/政策草案 | `OMOC_WP-009+RB+WI.md` | WP-009 對應「Rulesets Snapshot」章節 | 先快照後變更，非 WP-007 職責 |
| Always-Report wrappers / Status hygiene | `OMOC_WP-011+RB+WI.md` | WP-011 對應章節 | 防止「Waiting for status」類卡死，屬 Phase-G/G2 |
| Drift Guard / Closure Management | `OMOC_WP-014+RB+WI.md` | WP-014 對應章節 | TT/closure/drift 的集中治理 |


---


| req\_id | requirement\_statement | normative\_source\_locators | acceptance\_method（客觀） |
| ----- | ----- | ----- | ----- |
| R7-001 | Authority Stack 不得引用 superseded（r1 只能 SUPPORT-only） | WP 總表 r2：Doc Inventory `SUPPORTED-SUPERSEDED … do not reference after r2` | 本文件不得把 r1 列為 NORMATIVE；Runbook 命令不得以 r1 作檢索輸入 |
| R7-002 | 全文檢索/互證步驟不得寫死 r1；必參數化 SSOT（如 WP\_MAP=r2） | 審查報告 F-007-002 closure；Fail-Closed 原則 | L5-1 以變數 `WP_MAP` 指向 r2；log/rc 可回放 |
| R7-003 | Runbook 命令模板需與 RB+WI `step()` 一致（tee/PIPESTATUS/rc） | RB+WI `ANCHOR:OMOC-RBWI-CMD-TEMPLATE` | 使用 step() 產出 `evidence/_acceptance/<ts>/log/*.log` \+ `.rc` |
| R7-004 | Skills 抽取契約必對齊 D2（FILE BEGIN/END \+ code fence） | Skills `#OMOC-CSK-0400` | 抽取工具僅認契約；抽不到 ⇒ FAIL\_CLOSED（有 log/rc） |
| R7-005 | 必落地 `.opencode/skills/*` 與 `scripts/*`（extractor/validator） | WP 總表 r2：WP-007 evidence\_locator=extractor/validator logs；Skills D5 | `test -f .opencode/skills/omoc-router/SKILL.md` 等；產出 tree\_after |
| R7-006 | 必提供 BK-007-01/02/03（變更前/生成後/驗證後） | 舊版 BK-007；本文件強化 | 具體 snapshot 檔 \+ git diff/HEAD 記錄 |
| R7-007 | 若 validator 因前置不足不可 PASS：必 TT+TEMP\_CLOSED，不得口頭宣告 | Blueprint Fail-Closed；WP-008 依賴 route-out | TT-WP007-DEP-001（或等價）具 closure/retest；保存 L5-4B log/rc |
| R7-008 | 必提供 TT Register，涵蓋 TT-OPENCODE-001/TT-SKILLS-001/TT-WP007-DEP-001 與新增 TT | 審查報告 F-007-005 closure | TT 表每列具 close\_conditions/retest/evidence\_locator |
| R7-009 | 必提供 route\_out\_map（topic → target\_doc → locator） | 審查報告 F-007-006 closure | Out-of-scope 皆可導航到具名 WP 文件 |


---


| tool | when\_to\_use | forbidden / why |
| ----- | ----- | ----- |
| `step()` | 所有可重跑命令 | 禁止用「裸跑 \+ set \-e」取代：會讓終端提前終止且缺 `.rc` |
| `grep -n` | SSOT 檢索（替代 rg） | 禁止用 superseded r1 當規範檢索輸入 |
| `git diff / status / rev-parse` | BK 快照與回滾點固定 | 禁止在未做 BK 前做 destructive reset |
| `scripts/omoc_extract_skills.sh` | 依 D2 契約抽取落地 | 缺腳本不得假裝完成；應走 TT |
| `scripts/omoc_validate_contracts.sh` | 契約驗證 | rc≠0 不得口頭改判 PASS；必 TT |


---


| risk\_id | failure\_mode | detection（客觀） | mitigation | linked\_TT |
| ----- | ----- | ----- | ----- | ----- |
| R-007-01 | SSOT 漂移：把 r1 當規範 | L5-1-ssot-echo.log 出現 r1 / 或 doc inventory role=SUPPORTED-SUPERSEDED | 強制改用 r2；r1 只可 SUPPORT-only | TT-WP007-SSOT-001 |
| R-007-02 | SOP 檢索寫死檔名 | L5-1 log 未使用 `$WP_MAP` | 參數化（WP\_MAP=…r2…） | TT-WP007-SOP-001 |
| R-007-03 | step() 語義漂移（無 rc/無 tee） | evidence 目錄缺 `.rc` 或 log 不完整 | 必須對齊 RB+WI 模板 | TT-WP007-RBWI-LOC-001 |
| R-007-04 | D2 契約違約（抽取不到檔） | extractor log 提示找不到 FILE BEGIN/END | 修正文檔契約或抽取器；Fail-Closed | TT-SKILLS-001 |
| R-007-05 | validator 因前置不足 FAIL | L5-4B rc≠0 且 log 指向缺 triplet/bundle/evidence | route-out 到 WP-008；不得硬宣告 PASS | TT-WP007-DEP-001 |
| R-007-06 | 越界改動 workflows | L5-6 掃描到 `.github/workflows` 變更 | route-out 到 WP-011/12/13；建 TT | TT-WP007-SCOPE-001 |


---


| symptom | diagnosis | fix | evidence\_to\_collect | rollback |
| ----- | ----- | ----- | ----- | ----- |
| 抽取後沒有 `.opencode/skills/*` | D2 契約不符或 extractor 缺失 | 確認 skills D2 的 FILE BEGIN/END；確認 `scripts/omoc_extract_skills.sh` 存在 | L5-3-extract.log/.rc、skills D2 locator、tree\_after | `git restore -SW .` 或 reset 到 BK-007-01 head |
| `scripts/omoc_extract_skills.sh` 不存在 | 你尚未落地 D5 scripts（或抽取流程未先建立） | 走 TT：不得假裝完成；在上游 WP/或手動先落地 scripts 再重跑 L5-3 | L5-3-extract.log/.rc、bootstrap\_gap.txt | N/A |
| `scripts/omoc_validate_contracts.sh` rc≠0 | 前置依賴缺失（可能需要 WP-008 產物）或契約違約 | 依 log 判定：若缺 Triplet/Bundle ⇒ route-out WP-008；否則修契約 | L5-4B log/rc、L5-5 evidence-path log | N/A（驗證不改 repo） |
| SSOT 被誤用 r1 | 你把 superseded 當規範 | 修正變數：WP\_MAP=r2；移除任何 r1 作檢索輸入 | L5-1-ssot-echo.log | N/A |


---


| req\_id | requirement\_statement | normative\_sources | wp007\_locator | status(PASS/FAIL/UNVERIFIED) | gap\_type | severity | linked\_TT |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| R7-001 | Authority Stack 不得引用 superseded | WP 總表 r2 Doc Inventory（r1=SUPPORTED-SUPERSEDED） | [C1](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995cff4-c910-83a8-90e3-f04e408be9b0#omoc-wp-007-c-authority), [D](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995cff4-c910-83a8-90e3-f04e408be9b0#omoc-wp-007-d-doc-inventory) | PASS | — | — | TT-WP007-SSOT-001（CLOSED 條件已定） |
| R7-002 | SOP 檢索不得寫死 r1；必參數化 | 審查報告 F-007-002 | [L5-1](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995cff4-c910-83a8-90e3-f04e408be9b0#omoc-wp-007-runbook-l5-1) | PASS | — | — | TT-WP007-SOP-001 |
| R7-003 | step() 對齊 RB+WI | RB+WI CMD TEMPLATE | [G1](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995cff4-c910-83a8-90e3-f04e408be9b0#omoc-wp-007-g-runbook), [J2](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995cff4-c910-83a8-90e3-f04e408be9b0#omoc-wp-007-j-locator-proof) | PASS | — | — | TT-WP007-RBWI-LOC-001 |
| R7-004 | D2 契約對齊 | Skills D2 `#OMOC-CSK-0400` | [L5-3](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995cff4-c910-83a8-90e3-f04e408be9b0#omoc-wp-007-runbook-l5-3), [J3](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995cff4-c910-83a8-90e3-f04e408be9b0#omoc-wp-007-j-locator-proof) | PASS | — | — | TT-WP007-SKILLS-LOC-001 |
| R7-005 | 落地 .opencode \+ scripts | WP 總表 r2（WP-007 evidence\_locator）+ Skills D5 | [L5-3](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995cff4-c910-83a8-90e3-f04e408be9b0#omoc-wp-007-runbook-l5-3) | PASS | — | — | — |
| R7-006 | BK-007 三段快照 | 本文件 BK 強化 | [L5-3](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995cff4-c910-83a8-90e3-f04e408be9b0#omoc-wp-007-runbook-l5-3), [L5-7](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995cff4-c910-83a8-90e3-f04e408be9b0#omoc-wp-007-runbook-l5-7) | PASS | — | — | — |
| R7-007 | validator 不可硬宣告 PASS；FAIL 必 TT | Blueprint Fail-Closed \+ WP-008 route-out | [L5-4](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995cff4-c910-83a8-90e3-f04e408be9b0#omoc-wp-007-runbook-l5-4), [L5-5](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995cff4-c910-83a8-90e3-f04e408be9b0#omoc-wp-007-runbook-l5-5) | PASS | — | — | TT-WP007-DEP-001 |
| R7-008 | TT Register 完整 | 審查報告 F-007-005 | [M](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995cff4-c910-83a8-90e3-f04e408be9b0#omoc-wp-007-m-tt-register) | PASS | — | — | TT-WP007-TTREG-001 |
| R7-009 | route\_out\_map 可導航 | 審查報告 F-007-006 | [E3](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995cff4-c910-83a8-90e3-f04e408be9b0#omoc-wp-007-e-scope) | PASS | — | — | TT-WP007-ROUTE-001 |


---


| tt\_id | source (finding\_id/CR) | problem\_statement | fix\_target | acceptance(\<=3) | owner\_role | close\_conditions | retest | status | evidence\_locator |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| TT-WP007-SSOT-001 | F-007-001 | r1 被誤當 NORMATIVE 污染 SSOT | authority\_stack/DocInventory/命令輸入全面改 r2；r1 降 SUPPORT-only | (1) doc 無 r1=NORMATIVE (2) L5-1 用 r2 (3) SSOT 漂移檢核存在 | SSOT custodian | 內文與命令皆無 r1 作規範；L5-1 log 印出 r2 | 重跑 L5-1 | OPEN→可關閉（待你實跑產證據） | `log/L5-1-ssot-echo.*` \+ `snapshots/wp007_ssot_paths.txt` |
| TT-WP007-SOP-001 | F-007-002 | SOP 檢索命令寫死版本 | 引入 `WP_MAP` 變數，禁寫死 r1 | (1) grep 使用 `$WP_MAP` (2) log 可回放 (3) 不引用 r1 | runbook maintainer | L5-1-grep log 顯示 r2；無 r1 檢索 | 重跑 L5-1 | OPEN→可關閉（待你實跑） | `log/L5-1-grep-wp007.*` |
| TT-WP007-RBWI-LOC-001 | F-007-003 | RB+WI step() 對齊主張缺原文定位 | 補 RB+WI anchor+excerpt（≤25字） | (1) 有 anchor (2) 有 excerpt (3) 映射到 step() 使用 | auditor | \[J2\] 可定位並核對 tee/PIPESTATUS/.rc | 抽樣比對 RB+WI 原文 | CLOSED（本文已補） | 本文件 \[J2\] |
| TT-WP007-SKILLS-LOC-001 | F-007-004 | skills D2/D5/D6 缺原文定位 | 補 D2/D5/D6 anchor+excerpt \+ step 映射 | (1) D2/D5/D6 各≥1 locator (2) 對應 runbook (3) coverage PASS | skills custodian | \[J3\~J5\] 可定位；coverage R7-004 PASS | 抽樣比對 skills 原文 | CLOSED（本文已補） | 本文件 \[J3\~J5\] |
| TT-WP007-TTREG-001 | F-007-005 | 宣告 TT 但缺 TT Register 斷鏈 | 建立 TT Register 並覆蓋既有 TT | (1) 每列含 close\_conditions (2) 既有 TT 全在表 (3) evidence\_locator 可追 | doc owner | \[M\] 表可定位；既有 TT 被納入 | 抽樣檢查 3 列 | CLOSED（本文已補） | 本文件 \[M\] |
| TT-WP007-ROUTE-001 | F-007-006 | route-out 不可導航 | 建立 route\_out\_map（具名 WP \+ locator） | (1) topic 皆可跳 (2) 不泛稱 Phase-G (3) 無越界內容 | doc owner | \[E3\] 表可定位且具名 | 抽樣點 3 topic | CLOSED（本文已補） | 本文件 \[E3\] |
| TT-OPENCODE-001 | legacy（舊版宣告） | OpenCode 導入：版本/權限/工具漂移未被本地證據鎖定 | 在 evidence 中記錄 `opencode --version`、權限模型宣告（若可） | (1) 有版本證據 (2) 有權限/工具宣告 (3) 變更有記錄 | ops/doc owner | 具體命令與輸出落地到 evidence | 重跑（在可用環境） | OPEN（需實機/平台可用） | `snapshots/opencode_version.txt`（待補） |
| TT-SKILLS-001 | legacy（舊版宣告） | extractor/validator 檔名或契約漂移導致抽取失敗 | 鎖定 skills 合冊版本 r2；必要時更新 scripts | (1) 抽取可重跑 (2) 目標檔落地 (3) log/rc 完整 | skills custodian | L5-3 rc=0 且 verify-files PASS | 重跑 L5-3/L5-4A | OPEN（依你 repo 狀態） | `log/L5-3-*.rc` \+ `snapshots/wp007_tree_after.txt` |
| TT-WP007-DEP-001 | legacy（舊版宣告） | validator 可能依賴 WP-008 產物（Triplet/Bundle/evidence 結構） | route-out 到 WP-008；定義 retest 條件 | (1) 依賴被明示 (2) FAIL 不硬判 PASS (3) retest 清楚 | integrator | WP-008 落地後 L5-4B rc=0 或明確改寫 validator 依賴 | 重跑 L5-5→L5-4B | OPEN（依下游） | `log/L5-4B-*.log/.rc` |


---


* Runbook 低終端終止風險：未全域 set \-e；step() 後以 `|| true` 避免 rc 非 0 直接終止；以 `.rc` 承接 Fail-Closed

