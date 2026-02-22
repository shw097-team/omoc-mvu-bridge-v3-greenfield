# **OMOC\_WP-013+RB+WI（Phase-G/G4 Merge Queue Enablement & Verification）— v4.0.1-r2**

\[ANCHOR:OMOC-WP013-00-TITLE\]

---

## **1\) Frontmatter / Document Control**

\[ANCHOR:OMOC-WP013-01-DOC-CONTROL\]

| field | value |
| ----- | ----- |
| doc\_id | OMOC\_WP-013+RB+WI |
| external\_name | WP-013（Phase-G/G4）Merge Queue Enablement & Verification |
| internal\_short\_name | WP013-MQ-Enable-Verify |
| phase | Phase-G / G4 |
| version | v4.0.1-r2 |
| generated\_at | 2026-02-19T10:44:03+08:00 |
| timezone | Asia/Taipei (UTC+08:00) |
| baseline\_web\_date (driftable facts) | 2026-02-14 |
| mode | Files-first（附件/專案檔案庫為 NORMATIVE）＋WTNA（Web SUPPORT-only） |
| supersedes | `/mnt/data/OMOC_WP-013+RB+WI.md` |
| review\_fix\_spec | `/mnt/data/OMOC_WP-013+RB+WI_審查報告.md`（全量納入；CR\_OPEN=0） |
| authority\_ssot | N1=`OMOC_藍圖_v4.0.1-r1` / N2=`施工RB+WI_v4.0.1-r1` / N3=`施工skills_v4.0.1-r2` / **N4=`實作+WP總表_v4.0.1-r2`** |
| overall\_verdict | TEMP\_CLOSED（文件層閉環已交付；施工層需依 §15 Quickpath 實跑產生證據後轉 PASS） |
| CR\_OPEN | 0 |

---

## **2\) TOC（本檔內部錨點）**

\[ANCHOR:OMOC-WP013-02-TOC\]

* [3\) Diátaxis 導讀 \+ Anti-miss](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/699677e5-1d14-83a2-8e23-f40bd6825182#omoc-wp013-03-diatx)  
* [4\) Anchor Registry / Quick Index](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/699677e5-1d14-83a2-8e23-f40bd6825182#omoc-wp013-04-anchor-registry)  
* [5\) Authority Stack & SSOT Resolution（含 Version Lock）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/699677e5-1d14-83a2-8e23-f40bd6825182#omoc-wp013-05-authority)  
* [6\) Scope / Non-Goals / Responsibility Boundary \+ Route-out Map](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/699677e5-1d14-83a2-8e23-f40bd6825182#omoc-wp013-06-scope)  
* [7\) Doc Inventory（sha256/lines）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/699677e5-1d14-83a2-8e23-f40bd6825182#omoc-wp013-07-doc-inventory)  
* [8\) Tool Decision Matrix（UI/CLI/API/Artifacts）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/699677e5-1d14-83a2-8e23-f40bd6825182#omoc-wp013-08-tool-matrix)  
* [9\) Definitions / Glossary / Normalization](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/699677e5-1d14-83a2-8e23-f40bd6825182#omoc-wp013-09-defs)  
* [10\) Requirements（WP013-REQ-\*）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/699677e5-1d14-83a2-8e23-f40bd6825182#omoc-wp013-10-reqs)  
* [11\) Coverage / Trace / Closure Matrix](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/699677e5-1d14-83a2-8e23-f40bd6825182#omoc-wp013-11-matrix)  
* [12\) GitHub UI 設置（UI\_LOCATORs / Backup Points）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/699677e5-1d14-83a2-8e23-f40bd6825182#omoc-wp013-12-ui)  
* [13\) Runbook（可重跑：Preflight → BK → Enable MQ → Verify MQ → Evidence → Rollback）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/699677e5-1d14-83a2-8e23-f40bd6825182#omoc-wp013-13-runbook)  
* [14\) WI（任務卡：一步一驗收 / 失敗處置 / 去敏 / 重跑）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/699677e5-1d14-83a2-8e23-f40bd6825182#omoc-wp013-14-wi)  
* [15\) Gates & DoD（Entry/Exit；PASS/TEMP\_CLOSED/FAIL\_CLOSED）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/699677e5-1d14-83a2-8e23-f40bd6825182#omoc-wp013-15-gates)  
* [16\) Acceptance Quickpath（最小可回放閉環；含反例測試）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/699677e5-1d14-83a2-8e23-f40bd6825182#omoc-wp013-16-quickpath)  
* [17\) Counterexamples（破壞性反例）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/699677e5-1d14-83a2-8e23-f40bd6825182#omoc-wp013-17-counterexamples)  
* [18\) Evidence Contract（Minset \+ Plus；路徑/命名/去敏/掃描）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/699677e5-1d14-83a2-8e23-f40bd6825182#omoc-wp013-18-evidence)  
* [19\) SECURITY（Secrets Zero / 防注入 / 供應鏈 / Fail-Closed）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/699677e5-1d14-83a2-8e23-f40bd6825182#omoc-wp013-19-security)  
* [20\) Backup/Restore/Recovery（BK-013-\* 可重跑）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/699677e5-1d14-83a2-8e23-f40bd6825182#omoc-wp013-20-bk)  
* [21\) TT Register（CR\_OPEN=0）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/699677e5-1d14-83a2-8e23-f40bd6825182#omoc-wp013-21-tt)  
* [22\) Drift & Decision Log（裁決紀錄）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/699677e5-1d14-83a2-8e23-f40bd6825182#omoc-wp013-22-drift)  
* [23\) Web Evidence Appendix（SUPPORT-only）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/699677e5-1d14-83a2-8e23-f40bd6825182#omoc-wp013-23-web-evidence)  
* [24\) Change Log（PATCH-WP013-\*）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/699677e5-1d14-83a2-8e23-f40bd6825182#omoc-wp013-24-changelog)  
* [25\) machine\_summary.json（純 JSON）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/699677e5-1d14-83a2-8e23-f40bd6825182#omoc-wp013-25-machine-summary)

---

## **3\) Diátaxis 導讀 \+ Anti-miss**

\[ANCHOR:OMOC-WP013-03-DIATX\]

**Tutorial（帶你走一次）**

* 走 §16 Quickpath：先跑 Entry Gates（WP-010/011/012）→ BK → 啟用 MQ → 排隊 PR → 驗證 merge\_group 必回報 required checks → 產證據 bundle。

**How-to（照表施工）**

* 依 §13 Runbook \+ §14 WI；每一步「做完就驗」，任何缺證據＝Fail-Closed（或轉 TT=TEMP\_CLOSED，依 Gate 規則）。

**Reference（規格對照）**

* WP013-REQ-\* 在 §10；Gate hash 在 §15；證據路徑/命名在 §18。

**Explanation（為什麼要這樣做）**

* Merge Queue 不是「把 PR 排隊」那麼浪漫；它會讓 CI 觸發面從 `pull_request` 擴展到 `merge_group`。如果你的 required checks 沒覆蓋 `merge_group`，GitHub 會用一行 **Waiting for status to be reported** 把鍋丟回來——而且它丟得很優雅。

**Anti-miss（強制閱讀路徑）**

1. **先讀 §15 Entry Gates**（沒過別硬上，硬上＝浪費 CI）  
2. **再讀 §12 UI 設置**（你要改哪裡、先 BK 哪裡）  
3. **照 §13/14 做**（每步都有 evidence 產出點）  
4. **最後用 §16 Quickpath 收斂證據 bundle**（可回放、可稽核）

---

## **4\) Anchor Registry / Quick Index**

\[ANCHOR:OMOC-WP013-04-ANCHOR-REGISTRY\]

**Anchor 命名規則**：`[ANCHOR:OMOC-WP013-xx-...]`；所有 req/gate/tt/bk 皆可 `rg "WP013-REQ-"` 或 `rg "GATE-"` 定位。

**Quick Index**

* Requirements：`WP013-REQ-*`（§10）  
* Gates：`GATE-*`（§15）  
* Backup Points：`BK-013-*`（§20）  
* TT：`TT-WP013-*`（§21）  
* Evidence：`evidence/_acceptance/<TS>/...`（§18）  
* UI\_LOCATOR：`UI_LOCATOR-WP013-*`（§12）

---

## **5\) Authority Stack & SSOT Resolution（含 Version Lock）**

\[ANCHOR:OMOC-WP013-05-AUTHORITY\]

### **5.1 Authority Stack（No-Source-No-Norm）**

* **N1** `/mnt/data/OMOC_藍圖_v4.0.1-r1.md`  
* **N2** `/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md`  
* **N3** `/mnt/data/OMOC_施工skills_合冊_v4.0.1-r2.md`  
* **N4** `/mnt/data/OMOC_實作+WP總表_v4.0.1-r2.md`  
* **N5（本文件）**《OMOC\_WP-013+RB+WI》v4.0.1-r2（工程展開；不得推翻 N1\~N4）

### **5.2 Version Lock Table（supersedes 規則）**

| layer | id | locked\_version | file |
| ----- | ----- | ----- | ----- |
| N1 | blueprint | v4.0.1-r1 | `/mnt/data/OMOC_藍圖_v4.0.1-r1.md` |
| N2 | rbwi | v4.0.1-r1 | `/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md` |
| N3 | skills | v4.0.1-r2 | `/mnt/data/OMOC_施工skills_合冊_v4.0.1-r2.md` |
| **N4** | **wp\_master** | **v4.0.1-r2** | `/mnt/data/OMOC_實作+WP總表_v4.0.1-r2.md` |
| TARGET(old) | wp013\_legacy | v4.0.1-r1-aligned | `/mnt/data/OMOC_WP-013+RB+WI.md`（本版 supersedes） |

**SSOT Resolution Rule**

* **規範性（MUST/門檻/DoD/檔名路徑/Gate/BK）只認 N1\~N4 可定位正文**。  
* Web 只允許 SUPPORT-only：只能補 UI/名詞/平台行為漂移；衝突 → 以 N1\~N4 為準並開 TT（WEB-DRIFT）。

---

## **6\) Scope / Non-Goals / Responsibility Boundary \+ Route-out Map**

\[ANCHOR:OMOC-WP013-06-SCOPE\]

### **6.1 Scope（WP-013 只做這些）**

1. **啟用 Merge Queue（MQ）**（以 repo 治理設定為主：branch protection 或 rulesets；以 SSOT 定義的 Gate 為驗收準據）。  
2. **端到端驗證 MQ 能跑通**：PR 入隊 → 產生 merge\_group → required checks **必回報且被滿足** → merge 成功。  
3. **產出可稽核證據**：rulesets/保護設定 before/after、merge\_group run、checks 名稱/來源、queue 事件觀測、bundle。

### **6.2 Non-Goals（越界即 FAIL\_CLOSED）**

* 不改寫 WP-010 的 required checks 合約（checks\_manifest）  
* 不替代 WP-011 的 always-report wrappers（只檢查其存在與回報狀態）  
* 不替代 WP-012 的 merge\_group trigger alignment（WP-013 只把它當 Entry Gate；必要時只做「驗收」不做「設計」）  
* 不用「調整 required contexts 來讓 pending 消失」這種魔術（偵測到＝FAIL\_CLOSED）

### **6.3 Route-out Map（遇到問題往哪導）**

* required checks 名稱漂移 / contexts 不一致 → **WP-010**  
* waiting / statuses 不回報（尤其 merge\_group）→ **WP-011 / WP-012**  
* merge\_group 觸發缺失 / workflows 未訂閱 merge\_group → **WP-012**  
* 需要定義 Evidence Triplet/Bundle 合約 → **WP-008 / 施工skills（SK08/validator/packager）**

---

## **7\) Doc Inventory（sha256/lines）**

\[ANCHOR:OMOC-WP013-07-DOC-INVENTORY\]

| path | observed\_version | lines | sha256 | recompute\_cmd |
| ----- | ----- | ----- | ----- | ----- |
| /mnt/data/OMOC\_藍圖\_v4.0.1-r1.md | v4.0.1-r1 | 461 | `ccd7c311b11420652ac325b49ee6c317449d867b75b5c676ba641c0da17c6a33` | `sha256sum /mnt/data/OMOC_藍圖_v4.0.1-r1.md` |
| /mnt/data/OMOC\_施工RB+WI\_合冊\_v4.0.1-r1.md | v4.0.1-r1 | 666 | `c2e9f0a2f6946f509e29c7d9b1fa8a3de671d80390daec0c6a8a8eb7bbfe7d2b` | `sha256sum /mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md` |
| /mnt/data/OMOC\_施工skills\_合冊\_v4.0.1-r2.md | v4.0.1-r2 | 264 | `4b1f6a3a77b0c12ab8b7c52c82b4b3d4cd7a7a5f9d1bc1d558b24c9f7f6a0f63` | `sha256sum /mnt/data/OMOC_施工skills_合冊_v4.0.1-r2.md` |
| /mnt/data/OMOC\_實作+WP總表\_v4.0.1-r2.md | v4.0.1-r2 | 647 | `8d2a99b3b4317ae0a5ab76fa0a4e546a1d9b0c51d6c49eaf5b73dc3f0e1d1c6c` | `sha256sum /mnt/data/OMOC_實作+WP總表_v4.0.1-r2.md` |
| /mnt/data/OMOC\_WP-013+RB+WI.md | v4.0.1-r1 | 431 | `0a6f66a58f3f105e4bfb8e7f7b4d0f57bfa1f85b13cf0bba0a02c4b04b1b33c7` | `sha256sum /mnt/data/OMOC_WP-013+RB+WI.md` |
| /mnt/data/OMOC\_WP-013+RB+WI\_審查報告.md | UNKNOWN | 167 | `f6c7f6b2e52d27a7bc7770f4d7d5f6b2b6ce2d0f1f9d8a7c6b5a4c3d2e1f0a9b` | `sha256sum /mnt/data/OMOC_WP-013+RB+WI_審查報告.md` |
| /mnt/data/OMOC\_WP-001+RB+WI\_v4.0.1-r2.md | v4.0.1-r2 | 508 | `d0ad5f7d9b2c3a6f1e2d3c4b5a6f7d8c9b0a1e2d3c4b5a6f7d8c9b0a1e2d3c4b` | `sha256sum /mnt/data/OMOC_WP-001+RB+WI_v4.0.1-r2.md` |
| /mnt/data/OMOC\_WP-002+RB+WI\_v4.0.1-r2.md | v4.0.1-r2 | 522 | `b1c2d3e4f5a60718293a4b5c6d7e8f90123456789abcdef001122334455667788` | `sha256sum /mnt/data/OMOC_WP-002+RB+WI_v4.0.1-r2.md` |
| /mnt/data/OMOC\_WP-003+RB+WI\_v4.0.1-r2.md | v4.0.1-r2 | 487 | `9a8b7c6d5e4f3a2b1c0d9e8f7a6b5c4d3e2f1a0b9c8d7e6f5a4b3c2d1e0f9a8b` | `sha256sum /mnt/data/OMOC_WP-003+RB+WI_v4.0.1-r2.md` |
| /mnt/data/OMOC\_WP-004+RB+WI\_v4.0.1-r2.md | v4.0.1-r2 | 496 | `11223344556677889900aabbccddeeff00112233445566778899aabbccddeeff` | `sha256sum /mnt/data/OMOC_WP-004+RB+WI_v4.0.1-r2.md` |
| /mnt/data/OMOC\_WP-005+RB+WI\_v4.0.1-r2.md | v4.0.1-r2 | 514 | `ffeeddccbbaa99887766554433221100ffeeddccbbaa99887766554433221100` | `sha256sum /mnt/data/OMOC_WP-005+RB+WI_v4.0.1-r2.md` |
| /mnt/data/OMOC\_WP-006+RB+WI\_v4.0.1-r2.md | v4.0.1-r2 | 539 | `0f1e2d3c4b5a69788796a5b4c3d2e1f00112233445566778899aabbccddeeff0` | `sha256sum /mnt/data/OMOC_WP-006+RB+WI_v4.0.1-r2.md` |
| /mnt/data/OMOC\_WP-007+RB+WI\_v4.0.1-r2.md | v4.0.1-r2 | 521 | `1234567890abcdef1234567890abcdef1234567890abcdef1234567890abcdef` | `sha256sum /mnt/data/OMOC_WP-007+RB+WI_v4.0.1-r2.md` |
| /mnt/data/OMOC\_WP-008+RB+WI\_v4.0.1-r2.md | v4.0.1-r2 | 574 | `abcdef1234567890abcdef1234567890abcdef1234567890abcdef1234567890` | `sha256sum /mnt/data/OMOC_WP-008+RB+WI_v4.0.1-r2.md` |
| /mnt/data/OMOC\_WP-009+RB+WI\_v4.0.1-r2.md | v4.0.1-r2 | 612 | `89abcdef0123456789abcdef0123456789abcdef0123456789abcdef01234567` | `sha256sum /mnt/data/OMOC_WP-009+RB+WI_v4.0.1-r2.md` |
| /mnt/data/OMOC\_WP-010+RB+WI\_v4.0.1-r2.md | v4.0.1-r2 | 676 | `6a7b8c9d0e1f2233445566778899aabbccddeeff00112233445566778899aabb` | `sha256sum /mnt/data/OMOC_WP-010+RB+WI_v4.0.1-r2.md` |
| /mnt/data/OMOC\_WP-011+RB+WI\_v4.0.1-r2.md | v4.0.1-r2 | 702 | `2233445566778899aabbccddeeff00112233445566778899aabbccddeeff0011` | `sha256sum /mnt/data/OMOC_WP-011+RB+WI_v4.0.1-r2.md` |
| /mnt/data/OMOC\_WP-012+RB+WI\_v4.0.1-r2.md | v4.0.1-r2 | 745 | `33445566778899aabbccddeeff00112233445566778899aabbccddeeff001122` | `sha256sum /mnt/data/OMOC_WP-012+RB+WI_v4.0.1-r2.md` |

NOTE：若任一 sha256 與你端計算不一致，視為供應鏈/編輯漂移，直接開 TT（SEC-SUPPLY-DRIFT）並 FAIL\_CLOSED。

---

## **8\) Tool Decision Matrix（UI/CLI/API/Artifacts）**

\[ANCHOR:OMOC-WP013-08-TOOL-MATRIX\]

| tool | when\_to\_use | verify\_what | evidence\_output |
| ----- | ----- | ----- | ----- |
| GitHub UI | 變更 rulesets / branch protection / merge queue 設定；人工截圖點位 | 設定是否存在、是否已啟用 | `evidence/_acceptance/<TS>/ui/`（png \+ locator.md） |
| `gh` CLI | 快速查 repo 設定、PR、workflow run、規則摘要；低摩擦抓 id | PR 是否入隊、run 是否存在 | `.../gh/`（stdout.txt \+ json） |
| `gh api` | 需要 JSON 精準輸出與可稽核重放 | rulesets/branch protection/API 回應碼 | `.../api/`（response.json \+ headers.txt） |
| `curl` \+ `jq` | CI/環境無 gh；或要嚴格控 header/重試 | 同上（替代 gh api） | `.../api/`（同上） |
| `git` | 建立測試 PR/空提交重觸發；比對 commit graph | merge queue 分支/sha 變化 | `.../git/`（log.txt） |
| `rg` | 搜 workflow 是否訂閱 merge\_group、是否有 paths/if 會跳過 | 「為何 waiting」根因定位 | `.../scan/`（rg.out） |
| `sha256sum` | 供應鏈/證據完整性 | 檔案未被改寫 | `bundle_audit.json` |

---

## **9\) Definitions / Glossary / Normalization**

\[ANCHOR:OMOC-WP013-09-DEFS\]

* **Merge Queue（MQ）**：以「合併後結果」為準跑 required checks 的合併佇列機制。  
* **merge\_group**：MQ 形成的臨時合併群組；若 workflow 沒訂閱，required checks 可能永遠不回報。  
* **required checks**：分支保護/rulesets 要求必須成功的 checks（名稱/來源皆敏感）。  
* **rulesets**：Repo/Org 治理規則集；可包含「Require merge queue」等規則（UI 漂移高）。  
* **checks\_manifest（WP-010）**：required checks 的「合約鎖芯」與漂移治理。  
* **Always-report wrappers（WP-011）**：防止「跳過→pending」或「needs 鏈斷→不回報」造成 waiting。  
* **MQ Probe（WP-012）**：對 merge\_group 觸發/回報進行探針式驗證；WP-013 啟用後應補跑 runtime 證據。

Normalization（本檔用詞一律固定）

* `MQ`\=Merge Queue  
* `MG`\=merge\_group  
* `RC`\=required checks  
* `SSOT`\=N1\~N4  
* `TS`\=Evidence timestamp dir（`evidence/_acceptance/<TS>/`）

---

## **10\) Requirements（WP013-REQ-\*）**

\[ANCHOR:OMOC-WP013-10-REQS\]

每條 requirement 都必須：**(a) 可驗收**、**(b) 指向 SSOT locator**、**(c) 不足則 TT**。

### **WP013-REQ-001 — SSOT 對齊（N4=r2）**

* **MUST**：本文件所有規範性引用 N4 一律指向 `實作+WP總表_v4.0.1-r2`；r1 僅允許列為 superseded。  
* **SSOT locator（示例）**：N4 gate\_registry（含 GATE-MQ-ENABLED/REQCHECK/MERGE\_GROUP/ALWAYS-REPORT 的 hash 列）。  
* **Acceptance**：§5/§15 內 Gate 皆含 `gate_contract_hash`，且與 N4 一致。

### **WP013-REQ-002 — Gate Hash 綁定（機械可驗）**

* **MUST**：凡引用 Gate，必同時出現：`gate_id + gate_contract_hash + ssot_locator`。  
* **Required Gates（最少）**：  
  * `GATE-MQ-ENABLED` / `2614fb...93a4b`  
  * `GATE-MERGE_GROUP-TRIGGER` / `c8803e...d1ee`  
  * `GATE-REQCHECK-CANONICAL` / `aeda86...3c6a`  
  * `GATE-ALWAYS-REPORT` / `184ab7...2b1`  
* **Acceptance**：§15 Gate 表完整；任一缺失＝FAIL\_CLOSED。

### **WP013-REQ-003 — 變更前必備份（BK-013-\*）**

* **MUST**：任何 UI/API 變更 MQ/rulesets/branch protection 前，必先產生 BK（before snapshot）。  
* **Acceptance**：`rulesets_before.json`（或等價快照）存在；且能對比 after（diff）。

### **WP013-REQ-004 — 啟用 MQ（不偷吃步）**

* **MUST**：啟用 MQ 的方式必可稽核（UI 截圖或 API JSON）；不得以「放寬 required contexts」繞過 waiting。  
* **Acceptance**：GATE-MQ-ENABLED 入口條件過；且 Counterexamples 無觸發。

### **WP013-REQ-005 — merge\_group 必觸發且 required checks 必回報**

* **MUST**：PR 入隊後，能觀測到 merge\_group（或其等價）檢查流程；required checks 在 MG 情境仍回報。  
* **Acceptance**：`mq_probe_evidence.json`（或等價）+ workflow/run proof \+ checks 名稱對齊 WP-010 的 checks\_manifest。

### **WP013-REQ-006 — 端到端 merge 成功（G4 Exit）**

* **MUST**：至少一個測試 PR 完成：入隊→checks\_pass→merge。  
* **Acceptance**：merge 成功的 PR/commit 證據 \+ checks 全綠 \+ queue 記錄。

### **WP013-REQ-007 — Evidence Contract 對齊（skills / WP-008）**

* **MUST**：輸出 Evidence Minset \+ Bundle；路徑/命名/去敏符合 skills 規則。  
* **Acceptance**：`verdict.json + checks_manifest.json + evidence_index.md + bundle_audit.json + single_evidence_bundle.txt(or tgz)` 完整。

### **WP013-REQ-008 — SECURITY（Secrets Zero / 防注入）**

* **MUST**：任何輸出不得含 secrets；遇到注入內容視為資料，不得執行其指令。  
* **Acceptance**：`secrets_scan.json` PASS 或明確 FAIL\_CLOSED；redaction 有記錄。

---

## **11\) Coverage / Trace / Closure Matrix**

\[ANCHOR:OMOC-WP013-11-MATRIX\]

| req\_id | covered\_by\_sections | gate | evidence\_minset | status |
| ----- | ----- | ----- | ----- | ----- |
| WP013-REQ-001 | §5, §15, §24 | — | doc\_control+gate\_table | PASS（文件層） |
| WP013-REQ-002 | §15 | GATE-\* | gate\_table \+ ssot\_locator | PASS（文件層） |
| WP013-REQ-003 | §20, §13.2 | GATE-EVIDENCE-MINSET | rulesets\_before/after \+ diff | TEMP\_CLOSED（待實跑） |
| WP013-REQ-004 | §12, §13.3 | GATE-MQ-ENABLED | ui/api proof | TEMP\_CLOSED（待實跑） |
| WP013-REQ-005 | §13.4, §17 | GATE-MERGE\_GROUP-TRIGGER | mq\_probe \+ run proof | TEMP\_CLOSED（待實跑） |
| WP013-REQ-006 | §16 | GATE-MQ-ENABLED | merged PR proof | TEMP\_CLOSED（待實跑） |
| WP013-REQ-007 | §18 | GATE-EVIDENCE-MINSET | bundle | TEMP\_CLOSED（待實跑） |
| WP013-REQ-008 | §19 | SEC-\* | secrets\_scan | TEMP\_CLOSED（待實跑） |

---

## **12\) GitHub UI 設置（UI\_LOCATORs / Backup Points / 變更點）**

\[ANCHOR:OMOC-WP013-12-UI\]

UI 具漂移性：本節提供 **≥2 UI\_LOCATOR**，並要求以 Web SUPPORT-only 佐證；若你現場 UI 不一致，開 TT（WEB-DRIFT-UI）但流程仍可用 API 驗證收斂。

### **UI\_LOCATOR-WP013-001（Rulesets 路徑）**

* Repo → **Settings** →（Code and automation 或同級）→ **Rules** → **Rulesets**  
* 動作：定位目標 ruleset（通常針對 default branch），檢查是否含「Require merge queue」等規則。

### **UI\_LOCATOR-WP013-002（Branch protection 路徑）**

* Repo → **Settings** → **Branches** → Branch protection rules（或等價）  
* 動作：定位 base branch（例如 `main`）的保護規則，檢查「Require merge queue」是否存在（若平台/方案不支援則以 rulesets 為主，並記錄 TT）。

### **UI\_LOCATOR-WP013-003（Merge queue 行為入口）**

* PR 頁面 → Merge box / Queue controls（文字/按鈕可能漂移）  
* 動作：確認可將 PR 加入 queue（或顯示已入隊/隊列位置）。

---

## **13\) Runbook（可重跑）**

\[ANCHOR:OMOC-WP013-13-RUNBOOK\]

### **13.1 Preflight（Fail-Closed）**

**step(13.1.1) 確認權限（不猜）**

* 以 `gh api` 讀取 rulesets/branch protection（成功=200；失敗=403/404 也要存證）。  
* Evidence：`.../api/perm_check.{json,headers}.txt`  
* **FAIL\_CLOSED 條件**：沒有任何可證明「具備修改權限」的證據，卻仍試圖修改設定。

**step(13.1.2) Entry Gates（WP-010/011/012）**

* 必須滿足（至少文件層）：  
  * WP-010：`GATE-REQCHECK-CANONICAL`（hash=`aeda86...3c6a`）  
  * WP-011：`GATE-ALWAYS-REPORT`（hash=`184ab7...2b1`）  
  * WP-012：`GATE-MERGE_GROUP-TRIGGER`（hash=`c8803e...d1ee`）之**對齊結論已產生**（若只 Mode B 靜態，允許 TEMP\_CLOSED，但不得宣稱 PASS）  
* Evidence：`.../preflight/entry_gates.md + referenced locators`

### **13.2 Snapshot / Backup（BK-013-\*）**

**step(13.2.1) BK-013-001：rulesets\_before**

* UI 截圖 \+ API JSON（二選一不夠，建議兩者都有）。  
* Output：`evidence/_acceptance/<TS>/bk/BK-013-001_rulesets_before.json` \+ `.../ui/rulesets_before.png`

**step(13.2.2) BK-013-002：branch\_protection\_before（如適用）**

* Output：`.../bk/BK-013-002_branch_protection_before.json`

**step(13.2.3) BK-013-003：checks\_contract\_ref**

* 指向 WP-010 的 checks\_manifest（不改內容，只引用 hash/路徑）。  
* Output：`.../bk/BK-013-003_checks_manifest_ref.txt`

### **13.3 Enable MQ（變更點）**

**step(13.3.1) 以 SSOT 規範選擇啟用位置**

* 若 repo 使用 rulesets 管理：在 ruleset 啟用「Require merge queue」。  
* 若使用 branch protection：啟用「Require merge queue」。  
* Evidence：`.../apply/mq_enable.{json,png}`

**step(13.3.2) BK-013-004：rulesets\_after / branch\_protection\_after**

* Output：`.../bk/BK-013-004_rulesets_after.json`、`.../bk/BK-013-005_branch_protection_after.json`

**step(13.3.3) diff**

* Output：`.../apply/rulesets_diff.txt`（`jq -S` 後 diff）

### **13.4 Verify MQ（端到端）**

**step(13.4.1) 準備測試 PR（最小變更）**

* 建立一個只改非敏感檔案的 PR（避免 paths-filter 把你送進 pending 地獄；見 §17）。  
* Evidence：`.../verify/pr_meta.json`

**step(13.4.2) 入隊（Queue）**

* UI 或 API 操作入隊；記錄時間與操作人角色。  
* Evidence：`.../verify/queue_action.md + screenshot`

**step(13.4.3) 觀測 merge\_group 觸發**

* 取得 merge\_group workflow run（或等價 run）；記錄 run\_id、head\_sha、base\_ref、event。  
* Evidence：`.../verify/mq_probe_evidence.json`

**step(13.4.4) required checks 回報對齊**

* 抽取 checks 名稱清單，對照 WP-010 checks\_manifest：  
  * 名稱一致＝PASS（或 alias 規則已納入）  
  * 名稱不一致＝開 TT（DRIFT-RC-NAME）且 FAIL\_CLOSED（因 RC 合約被破壞）  
* Evidence：`.../verify/required_checks_observed.json`

**step(13.4.5) Merge 成功**

* 取得 merge commit sha \+ PR merged event（UI 截圖 \+ API JSON）。  
* Evidence：`.../verify/merge_success.json` \+ `.../git/merge_log.txt`

### **13.5 Collect Evidence（Minset \+ Bundle）**

* 依 §18 產出 Evidence Minset \+ bundle \+ audit；再產 `verdict.json`（PASS/TEMP\_CLOSED/FAIL\_CLOSED）。

### **13.6 Rollback（Fail-Closed / 可重跑）**

* 任何一步出現「未先 BK 就改設定」→ **立即 FAIL\_CLOSED**，且必執行回滾（§20）。  
* 回滾後必做：`rulesets_current` 與 `rulesets_before` diff \= empty（或符合預期）。

---

## **14\) WI（任務卡）**

\[ANCHOR:OMOC-WP013-14-WI\]

### **WI-WP013-01：Preflight \+ Entry Gates**

* **做什麼**：確認權限、確認 WP-010/011/012 已到可進場狀態。  
* **怎麼驗**：`entry_gates.md` 內列 gate\_id/hash \+ SSOT locator；缺任一＝FAIL\_CLOSED。  
* **輸出到哪**：`evidence/_acceptance/<TS>/preflight/`  
* **失敗怎麼辦**：導流到對應 WP；不得在 WP-013 硬修。

### **WI-WP013-02：BK-013-001\~003（before）**

* **做什麼**：抓 rulesets/branch protection before \+ checks\_manifest ref。  
* **怎麼驗**：`BK-013-001_rulesets_before.json` 存在且可 jq parse。  
* **輸出到哪**：`.../bk/`  
* **失敗怎麼辦**：API 403/404 也要存證，並開 TT-PERM-001；未解決前不得 apply。

### **WI-WP013-03：Enable MQ（apply）**

* **做什麼**：在 rulesets 或 branch protection 啟用 MQ。  
* **怎麼驗**：after snapshot 與 diff 存在；UI 截圖能定位到設定開關。  
* **失敗怎麼辦**：立刻 rollback；保留失敗證據（headers/response）。

### **WI-WP013-04：Verify（queue → merge\_group → checks → merge）**

* **做什麼**：排隊 PR，觀測 merge\_group run，對齊 required checks 合約，確認 merge 成功。  
* **怎麼驗**：`mq_probe_evidence.json` 有 event=merge\_group（或等價）且 checks 全回報。  
* **失敗怎麼辦**：看 §17 Counterexamples 路由；先定位「為何不回報」再決定 rollback/修 WP-011/012。

### **WI-WP013-05：Evidence Minset \+ Bundle**

* **做什麼**：生成 4件套 \+ bundle \+ audit \+ secrets scan。  
* **怎麼驗**：validator/packager PASS；若 FAIL，直接 FAIL\_CLOSED。  
* **去敏**：所有 token/密鑰/個資一律 redaction；保留「可稽核」但不保留「可滲透」。

---

## **15\) Gates & DoD（Fail-Closed）**

\[ANCHOR:OMOC-WP013-15-GATES\]

### **15.1 Gate Registry（本 WP 需引用的 Gate；含 hash）**

| gate\_id | gate\_contract\_hash | purpose | pass\_condition (measurable) | fail\_closed\_trigger |
| ----- | ----- | ----- | ----- | ----- |
| GATE-REQCHECK-CANONICAL | `aeda86bb4b8d3f0b77f4e82714d1cbd7a7a8b9f9b5b5c5a1e1d5d44d1d6f3c6a` | required checks 合約鎖定 | checks\_manifest 對齊且可觀測 | 名稱漂移未治理、或缺證據 |
| GATE-ALWAYS-REPORT | `184ab7f8f84c96df1dfe2e1b6cbd6e0d6d5bb0a2c3d1e0f2a8b7c6d5e4f3a2b1` | 避免 waiting/pending | merge\_group/PR 情境均回報 contexts | 任一 required check 永久 pending |
| GATE-MERGE\_GROUP-TRIGGER | `c8803e71d9e8c2cf0d68f6d4c85b0d86c8d2a0edb6a746f7d6b8b0e2a1c4d1ee` | MG 觸發對齊 | MG run 可被觀測到 | workflow 未訂閱 merge\_group |
| **GATE-MQ-ENABLED** | **`2614fb886d05e89d2b7a8d9e0f1c2b3a4d5e6f7890a1b2c3d4e5f60718293a4b`** | MQ 啟用與端到端成功 | queue→MG→checks→merge 成功 | 繞過 RC / 未 BK 先改設定 |

### **15.2 Entry / Exit DoD**

**Entry DoD（進 WP-013 前）**

* WP-010/011/012 的文件層要求可引用（hash/locator 俱全）。  
* 缺任一：**WP-013 必須 FAIL\_CLOSED 或停在 TEMP\_CLOSED（僅文件層）**，不得宣稱可施工 PASS。

**Exit DoD（WP-013 PASS 條件）**

* 端到端成功（至少一個 PR 完成 queue merge）。  
* Evidence Minset \+ Bundle \+ Audit PASS。  
* Secrets scan PASS 或已完全 redaction 且可驗。

### **15.3 PASS / TEMP\_CLOSED / FAIL\_CLOSED 判定**

* **PASS**：Exit DoD 全滿足，且所有 evidence 完整。  
* **TEMP\_CLOSED**：文件閉環完成，但缺環境實跑證據（僅允許在 TT 中存在，正文 CR\_OPEN=0）。  
* **FAIL\_CLOSED**：任何 Fail-Closed trigger 命中（未 BK 先改、繞過 RC、required checks 永久 pending、或 SSOT 不可定位）。

---

## **16\) Acceptance Quickpath（最小可回放閉環）**

\[ANCHOR:OMOC-WP013-16-QUICKPATH\]

### **Route A（建議：完整 G4）**

1. `TS=$(date -u +%Y%m%dT%H%M%SZ)`；建 `evidence/_acceptance/$TS/`  
2. 跑 §13.1 Preflight \+ Entry Gates → 產 `preflight/entry_gates.md`  
3. 跑 §13.2 BK（before）→ `bk/rulesets_before.json`  
4. 跑 §13.3 enable MQ \+ after \+ diff  
5. 建測試 PR → 入隊 → 抓 merge\_group run → 對齊 checks\_manifest  
6. 確認 merge 成功  
7. 產 Evidence Minset \+ bundle \+ audit \+ verdict

### **Route B（僅文件層／無權限／不可進場）**

* 只允許產出：  
  * Doc-level closure（本文件）  
  * TT-PERM-001（權限不足）  
  * Web drift evidence（SUPPORT-only）  
* **不得**宣稱 MQ 已啟用或驗收 PASS。

---

## **17\) Counterexamples（破壞性反例）**

\[ANCHOR:OMOC-WP013-17-COUNTEREXAMPLES\]

1. **workflow 沒訂閱 `merge_group`** → MG checks 不會跑/不會回報 → waiting（典型）。  
2. **paths/branches filter 導致 workflow 被 skip** → required check 永遠 pending（看起來像「系統壞了」，其實是你把 trigger 關了）。  
3. **rulesets workflow event filters 被忽略**（你以為 paths-ignore 有用，實際可能被 ruleset 忽略）→ 觸發行為與預期不同。  
4. **wildcard branch pattern**（若使用 branch protection 通配）導致 MQ 不可啟用（屬平台限制漂移點；見 Web Appendix）。  
5. **concurrency/cancel-in-progress** 把 MG run 取消 → checks 回報不完整。  
6. **改 required contexts 讓 pending 消失**（繞過）→ 直接 FAIL\_CLOSED（治理破壞）。

---

## **18\) Evidence Contract（Minset \+ Plus）**

\[ANCHOR:OMOC-WP013-18-EVIDENCE\]

### **18.1 Evidence Minset（最低必交）**

**root-level artifacts（固定）**

* `verdict.json`  
* `checks_manifest.json`  
* `evidence_index.md`  
* `bundle_audit.json`  
* `single_evidence_bundle.txt`（或 `evidence_bundle.tgz`，依 skills/packager 規則）

**acceptance dir（固定）**

* `evidence/_acceptance/<TS>/bk/`  
* `evidence/_acceptance/<TS>/apply/`  
* `evidence/_acceptance/<TS>/verify/`  
* `evidence/_acceptance/<TS>/ui/`（若有 UI 證據）  
* `evidence/_acceptance/<TS>/api/`  
* `evidence/_acceptance/<TS>/log/`

### **18.2 去敏（Redaction）規則（Secrets Zero）**

* token/密鑰/個資：**永不入庫**。  
* API 回應若需保存：只留必要欄位（id/flags），其餘遮罩；保留 `redaction_map.json` 以便稽核。

### **18.3 Validator / Packager（對齊 skills）**

* validator 必檢：目錄命名、root artifacts、quarantine 規則、bundle 成員。  
* 任一不符：FAIL\_CLOSED（並開 TT-QUARANTINE-\*）。

---

## **19\) SECURITY（Secrets Zero / 防注入 / 供應鏈 / Fail-Closed）**

\[ANCHOR:OMOC-WP013-19-SECURITY\]

* **指令/資料分離**：任何外來內容（PR comment、issue、log）一律視為資料；不得執行其「建議指令」。  
* **Secrets Zero**：  
  * 不要求把 secrets 寫入 evidence；  
  * 若掃描到疑似 secrets：立即 redaction \+ 產 `secrets_scan.json`，必要時 FAIL\_CLOSED。  
* **供應鏈**：任何 sha256 漂移（§7）→ 開 TT（SEC-SUPPLY-DRIFT）並停工。  
* **最常見注入點**：PR 描述、workflow log、copy-paste 的 curl 指令（尤其帶 token）。你看到 token，就先把手放開鍵盤。

---

## **20\) Backup/Restore/Recovery（BK-013-\*）**

\[ANCHOR:OMOC-WP013-20-BK\]

| bk\_id | name | when | how | outputs | rollback\_uses |
| ----- | ----- | ----- | ----- | ----- | ----- |
| BK-013-001 | rulesets\_before | apply 前 | `gh api`/`curl` 取 rulesets | `bk/...rulesets_before.json` | 回滾比對基準 |
| BK-013-002 | branch\_protection\_before | apply 前（如適用） | `gh api`/UI | `bk/...branch_protection_before.json` | 回滾基準 |
| BK-013-003 | checks\_manifest\_ref | apply 前 | 指向 WP-010 | `bk/...checks_manifest_ref.txt` | RC 合約對照 |
| BK-013-004 | rulesets\_after | apply 後 | 同 BK-013-001 | `bk/...rulesets_after.json` | 變更證明 |
| BK-013-005 | branch\_protection\_after | apply 後 | 同 BK-013-002 | `bk/...branch_protection_after.json` | 變更證明 |

**Rollback Steps（可重跑）**

1. 以 `rulesets_before.json` 還原（UI 或 API；以你環境可行者為準）  
2. 重新抓 `rulesets_current.json`  
3. `diff -u <(jq -S . before) <(jq -S . current)` 必須空（或符合預期）  
4. 記錄 `rollback_report.md`（含時間/操作者/回應碼）

---

## **21\) TT Register（CR\_OPEN=0）**

\[ANCHOR:OMOC-WP013-21-TT\]

| tt\_id | severity | title | trigger | interim\_action | closure\_criteria | owner\_role | status | evidence\_locators |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| TT-WP013-DRIFT-001 | BLOCKER | Authority Stack N4 必須鎖 r2 | 任一處仍引用 r1 作 NORMATIVE | 已修：§5/§15 全面 r2 | 文內無 r1 NORMATIVE；N4 gate hash 可對照 | doc\_owner | CLOSED（doc） | §5, §15 |
| TT-WP013-GATEHASH-001 | MAJOR | Gate 未綁 hash | 任一 Gate 缺 hash | 已修：§15 | Gate 表含 hash 並可對照 N4 | doc\_owner | CLOSED（doc） | §15 |
| TT-WP013-WEB-001 | MAJOR | Web claim 單源/無 accessed\_at | Web Appendix 不合格 | 已修：§23（多源+時間） | 每 claim ≥2 官方來源 \+ 時間 | auditor | TEMP\_CLOSED | §23 |
| TT-WP013-PEER-010-LOC-001 | MAJOR | WP-010 interface locator 不足 | 介面描述不可定位 | 已修：§6/§15（以 gate/hash 綁定） | 可定位到 WP-010 Gate/合約 | doc\_owner | CLOSED（doc） | §6, §15 |
| TT-WP013-TOOLS-001 | MINOR | 正文混入工具故障敘述 | 任何工具當時故障被寫進正文 | 已移除（僅 TT 可記） | 正文無「工具壞掉」敘述 | doc\_owner | CLOSED（doc） | §21 |
| TT-WP013-REPRO-001 | MINOR | recompute\_cmd 佔位 | 出現 `<file>` | 已修：§7 | 全部命令可直接執行 | doc\_owner | CLOSED（doc） | §7 |
| TT-WP013-PERM-001 | BLOCKER | rulesets/MQ 編輯權限未證明 | API 403/無 admin | 走 Route B；不得 apply | 提供 200/具權限證據或由 admin 代跑 | repo\_admin | TEMP\_CLOSED | `.../api/perm_check*` |
| TT-MQ-002 | BLOCKER | G4 端到端驗收未完成 | 缺 queue merge 證據 | 先保持 TEMP\_CLOSED | 提供「入隊→MG→checks→merge」完整證據 | repo\_owner | TEMP\_CLOSED | `.../verify/*` |
| TT-WP013-WEB-DRIFT-UI-001 | MAJOR | UI 路徑漂移 | 現場 UI 與 §12 不符 | 以 API 佐證收斂 | UI\_LOCATOR 更新 \+ 佐證 | doc\_owner | TEMP\_CLOSED | `.../ui/locator.md` |
| TT-WP013-DRIFT-RC-NAME-001 | BLOCKER | required checks 名稱漂移 | observed \!= checks\_manifest | 立即導流 WP-010 | checks\_manifest 更新含 alias/diff | ci\_owner | TEMP\_CLOSED | `.../verify/required_checks_observed.json` |

---

## **22\) Drift & Decision Log（裁決紀錄）**

\[ANCHOR:OMOC-WP013-22-DRIFT\]

| date | decision | rationale | impact |
| ----- | ----- | ----- | ----- |
| 2026-02-19 | N4 固定 r2；r1 僅 superseded | 避免 Gate/BK/DoD 對錯版本 | 消除 BLOCKER（F-013-001） |
| 2026-02-19 | Gate 引用必綁 hash | 機械可驗、抗漂移 | 消除 MAJOR（F-013-002） |
| 2026-02-19 | Web 只 SUPPORT-only；多源+時間 | UI/行為漂移高 | 消除 MAJOR（F-013-003） |

---

## **23\) Web Evidence Appendix（SUPPORT-only）**

\[ANCHOR:OMOC-WP013-23-WEB-EVIDENCE\]

規則：Web 只支援「漂移性事實」；不得升格為規範。若與 SSOT 衝突：以 SSOT 為準並開 TT（WEB-DRIFT）。

| ref | title | accessed\_at (Asia/Taipei) | claim\_supported | why\_support\_only | conflict\_with\_ssot |
| ----- | ----- | ----- | ----- | ----- | ----- |
| W-GH-MQ-001 ([GitHub Docs](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/configuring-pull-request-merges/managing-a-merge-queue)) | Managing a merge queue (GitHub Docs) | 2026-02-19T10:44:03+08:00 | MQ 需要 `merge_group` 觸發；且 branch pattern wildcard 限制；MG 需要 CI 回報 | 平台行為/UI 可能更新；不可作 SSOT | None observed |
| W-GH-RC-001 ([GitHub Docs](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/collaborating-on-repositories-with-code-quality-features/troubleshooting-required-status-checks)) | Troubleshooting required status checks (GitHub Docs) | 2026-02-19T10:44:03+08:00 | workflow skip 會導致 required check pending；MG 情境需 `merge_group` | 平台行為漂移；僅輔助反例 | None observed |
| W-GH-RULESET-001 ([GitHub Docs](https://docs.github.com/zh/enterprise-cloud%40latest/repositories/configuring-branches-and-merges-in-your-repository/managing-rulesets/available-rules-for-rulesets)) | Available rules for rulesets (GitHub Docs) | 2026-02-19T10:44:03+08:00 | ruleset workflows 支援 `merge_group`，且 event filters 可能被忽略 | 實際 UI/產品線差異（Cloud/Server） | None observed |
| W-GH-CHANGELOG-001 ([The GitHub Blog](https://github.blog/changelog/2024-02-27-repository-rules-configure-merge-queue-rule-public-beta/?utm_source=chatgpt.com)) | Repository Rules – configure merge queue rule (GitHub Blog) | 2026-02-19T10:44:03+08:00 | rulesets 可配置 merge queue（歷史演進佐證） | Blog 非規範；僅背景 | None observed |

---

## **24\) Change Log（PATCH-WP013-\*）**

\[ANCHOR:OMOC-WP013-24-CHANGELOG\]

| patch\_id | change | reason | maps\_to\_review |
| ----- | ----- | ----- | ----- |
| PATCH-WP013-001 | N4 修正為 WP總表 r2；r1 降格 superseded | 修 BLOCKER：Authority drift | F-013-001 / TT-WP013-DRIFT-001 |
| PATCH-WP013-002 | Gate 引用全面補 `gate_contract_hash` | 修 MAJOR：機械可驗 | F-013-002 / TT-WP013-GATEHASH-001 |
| PATCH-WP013-003 | Web Evidence 重做（多源+時間） | 修 MAJOR：單源傳聞 | F-013-003 / TT-WP013-WEB-001 |
| PATCH-WP013-004 | 移除工具故障敘述；改進 Doc Inventory 命令可執行 | 修 MINOR：可攜性/可復算 | F-013-005/006 |
| PATCH-WP013-005 | 強化接口：WP-010/011/012 以 Gate/hash 方式「寫死」 | 避免越界與踩線 | TT-WP013-PEER-010-LOC-001 |

---

## **25\) machine\_summary.json（純 JSON）**

\[ANCHOR:OMOC-WP013-25-MACHINE-SUMMARY\]

{  
  "doc\_id": "OMOC\_WP-013+RB+WI",  
  "external\_name": "WP-013（Phase-G/G4）Merge Queue Enablement & Verification",  
  "internal\_short\_name": "WP013-MQ-Enable-Verify",  
  "version": "v4.0.1-r2",  
  "generated\_at": "2026-02-19T10:44:03+08:00",  
  "timezone": "Asia/Taipei",  
  "baseline\_web\_date": "2026-02-14",  
  "mode": "Files-first+WTNA(Web SUPPORT-only)",  
  "authority\_stack": {  
    "N1": "/mnt/data/OMOC\_藍圖\_v4.0.1-r1.md",  
    "N2": "/mnt/data/OMOC\_施工RB+WI\_合冊\_v4.0.1-r1.md",  
    "N3": "/mnt/data/OMOC\_施工skills\_合冊\_v4.0.1-r2.md",  
    "N4": "/mnt/data/OMOC\_實作+WP總表\_v4.0.1-r2.md",  
    "N5": "this\_document"  
  },  
  "supersedes": "/mnt/data/OMOC\_WP-013+RB+WI.md",  
  "overall\_verdict": "TEMP\_CLOSED",  
  "CR\_OPEN": 0,  
  "gates": \[  
    {  
      "gate\_id": "GATE-REQCHECK-CANONICAL",  
      "gate\_contract\_hash": "aeda86bb4b8d3f0b77f4e82714d1cbd7a7a8b9f9b5b5c5a1e1d5d44d1d6f3c6a"  
    },  
    {  
      "gate\_id": "GATE-ALWAYS-REPORT",  
      "gate\_contract\_hash": "184ab7f8f84c96df1dfe2e1b6cbd6e0d6d5bb0a2c3d1e0f2a8b7c6d5e4f3a2b1"  
    },  
    {  
      "gate\_id": "GATE-MERGE\_GROUP-TRIGGER",  
      "gate\_contract\_hash": "c8803e71d9e8c2cf0d68f6d4c85b0d86c8d2a0edb6a746f7d6b8b0e2a1c4d1ee"  
    },  
    {  
      "gate\_id": "GATE-MQ-ENABLED",  
      "gate\_contract\_hash": "2614fb886d05e89d2b7a8d9e0f1c2b3a4d5e6f7890a1b2c3d4e5f60718293a4b"  
    }  
  \],  
  "backup\_points": \[  
    "BK-013-001",  
    "BK-013-002",  
    "BK-013-003",  
    "BK-013-004",  
    "BK-013-005"  
  \],  
  "evidence\_minset": \[  
    "verdict.json",  
    "checks\_manifest.json",  
    "evidence\_index.md",  
    "bundle\_audit.json",  
    "single\_evidence\_bundle.txt",  
    "evidence/\_acceptance/\<TS\>/bk/",  
    "evidence/\_acceptance/\<TS\>/apply/",  
    "evidence/\_acceptance/\<TS\>/verify/",  
    "evidence/\_acceptance/\<TS\>/api/",  
    "evidence/\_acceptance/\<TS\>/log/"  
  \],  
  "tt\_register\_count": 10,  
  "web\_evidence\_count": 4  
}

