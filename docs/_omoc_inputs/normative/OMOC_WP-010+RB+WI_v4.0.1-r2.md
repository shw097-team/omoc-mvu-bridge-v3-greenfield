# **《OMOC\_WP-010+RB+WI》v4.0.1-r2（Phase-G/G1）Required Checks Contract Lock / checks\_manifest**

\[ANCHOR:OMOC-WP010-00-TITLE\]

---

## **1\) Document Control**

\[ANCHOR:OMOC-WP010-01-DOC-CONTROL\]

| field | value |
| ----- | ----- |
| doc\_id | OMOC\_WP-010+RB+WI |
| external\_name | WP-010（Phase-G/G1）Required Checks Contract Lock / checks\_manifest |
| internal\_short\_name | WP010-ERCC-Lock |
| phase | Phase-G / G1 |
| version | v4.0.1-r2 |
| generated\_at | 2026-02-19T01:18:18+08:00 |
| timezone | Asia/Taipei (UTC+08:00) |
| baseline\_web\_date | 2026-02-14 |
| mode | Files-first（附件/專案檔案庫為主）＋WTNA（Web SUPPORT-only） |
| supersedes | /mnt/data/OMOC\_WP-010+RB+WI.md |
| review\_fix\_spec | /mnt/data/OMOC\_WP-010+RB+WI\_審查報告.md（全量納入，BLOCKER/MAJOR/MINOR/TT/PATCH 全量修補） |
| authority\_ssot | NORMATIVE：藍圖 v4.0.1-r1／施工RB+WI v4.0.1-r1／施工skills v4.0.1-r2／實作+WP總表 v4.0.1-r2 |
| peer\_alignment | WP-001\~WP-009（版型/欄位/可驗收樣式對齊；不得凌駕 SSOT） |
| adjacent\_interfaces | WP-011/012/013/014（接口/路由；不得越界替代落地） |
| overall\_doc\_verdict | TEMP\_CLOSED（文件層已補齊可回放閉環；施工層需依 §16 Quickpath 實跑產生證據後轉 PASS） |

---

## **2\) TOC（本檔內部錨點）**

\[ANCHOR:OMOC-WP010-02-TOC\]

* [3\) Diátaxis 導讀](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995f1db-1e70-83a9-b99d-64319acc9f9c#omoc-wp010-03-diatx)  
* [4\) Anchor Registry](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995f1db-1e70-83a9-b99d-64319acc9f9c#omoc-wp010-04-anchor-registry)  
* [5\) Authority Stack & SSOT Resolution](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995f1db-1e70-83a9-b99d-64319acc9f9c#omoc-wp010-05-authority)  
* [6\) Doc Inventory](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995f1db-1e70-83a9-b99d-64319acc9f9c#omoc-wp010-06-doc-inventory)  
* [7\) Version Lock Table](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995f1db-1e70-83a9-b99d-64319acc9f9c#omoc-wp010-07-version-lock)  
* [8\) Scope & Route-out](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995f1db-1e70-83a9-b99d-64319acc9f9c#omoc-wp010-08-scope-routeout)  
* [9\) Tool Decision Matrix](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995f1db-1e70-83a9-b99d-64319acc9f9c#omoc-wp010-09-tool-matrix)  
* [10\) Requirements（WP010-REQ-\*）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995f1db-1e70-83a9-b99d-64319acc9f9c#omoc-wp010-10-requirements)  
* [11\) Coverage/Trace/Closure Matrix](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995f1db-1e70-83a9-b99d-64319acc9f9c#omoc-wp010-11-matrix)  
* [12\) Required Checks Contract Spec（checks\_manifest 合約）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995f1db-1e70-83a9-b99d-64319acc9f9c#omoc-wp010-12-contract-spec)  
* [13\) Runbook（可重跑）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995f1db-1e70-83a9-b99d-64319acc9f9c#omoc-wp010-13-runbook)  
* [14\) Work Instructions（WI 任務卡）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995f1db-1e70-83a9-b99d-64319acc9f9c#omoc-wp010-14-wi)  
* [15\) Gates & DoD（Fail-Closed）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995f1db-1e70-83a9-b99d-64319acc9f9c#omoc-wp010-15-gates-dod)  
* [16\) Acceptance Quickpath（最小可回放閉環）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995f1db-1e70-83a9-b99d-64319acc9f9c#omoc-wp010-16-acceptance-quickpath)  
* [17\) Counterexamples（破壞性反例測試）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995f1db-1e70-83a9-b99d-64319acc9f9c#omoc-wp010-17-counterexamples)  
* [18\) SECURITY（Secrets/Forbidden Fail-Closed）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995f1db-1e70-83a9-b99d-64319acc9f9c#omoc-wp010-18-security)  
* [19\) Traceability（Locator Proof / SSOT Coverage / Legacy Coverage）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995f1db-1e70-83a9-b99d-64319acc9f9c#omoc-wp010-19-traceability)  
* [20\) TT Register（含 WEB-DRIFT / 單源風險 / 版本漂移）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995f1db-1e70-83a9-b99d-64319acc9f9c#omoc-wp010-20-tt-register)  
* [21\) Web Evidence Appendix（SUPPORT-only）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995f1db-1e70-83a9-b99d-64319acc9f9c#omoc-wp010-21-web-evidence)  
* [22\) Glossary & Normalization](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995f1db-1e70-83a9-b99d-64319acc9f9c#omoc-wp010-22-glossary)  
* [23\) Change Log（舊版→新版）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995f1db-1e70-83a9-b99d-64319acc9f9c#omoc-wp010-23-change-log)  
* [24\) machine\_summary.json（純 JSON）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6995f1db-1e70-83a9-b99d-64319acc9f9c#omoc-wp010-24-machine-summary)

---

## **3\) Diátaxis 導讀（Tutorial / How-to / Reference / Explanation）**

\[ANCHOR:OMOC-WP010-03-DIATX\]

* **Tutorial（帶你走一次）**：直接跑 §16 Route A（無 MQ）→ 產出 `evidence/_acceptance/` → 生成 `checks_manifest.json + diff + verdict + tt_register`。  
* **How-to（照表施工）**：按 §13 Runbook \+ §14 WI 逐步跑；遇到 waiting/merge\_group 不回報看 §16.4 路由表。  
* **Reference（規格對照）**：合約欄位/枚舉/判定規則看 §12；Gate/Closure 看 §15。  
* **Explanation（為什麼要這樣做）**：Required Checks 是治理「合約鎖芯」：名字不精確、觸發不覆蓋、觀測不完整，GitHub 會很淡定地回你一句 *Expected — Waiting for status to be reported*，然後把鍋遞回來。要接住鍋，你得先把「鍋的形狀」用可驗收證據畫出來（本 WP 即為此目的）。

---

## **4\) Anchor Registry（req\_id → anchor → section\_title → primary\_evidence）**

\[ANCHOR:OMOC-WP010-04-ANCHOR-REGISTRY\]

| req\_id / key | anchor | section\_title | primary\_evidence（NORMATIVE 定位） |
| ----- | ----- | ----- | ----- |
| WP010-REQ-001a | \#wp010-req-001a | checks\_manifest 生成/更新且 schema 合法 | skills：`checks_manifest.json schema`（見 §12.2）＋ WP總表：CR-GATE-REQCHECK-001（見 §15.2） |
| WP010-REQ-001b | \#wp010-req-001b | checks\_manifest 必含 expected/observed/diff/verdict/tt | skills：bootstrap schema（§12.2）＋ skills：diff/verdict（§12.4） |
| WP010-REQ-002 | \#wp010-req-002 | canonical 必含 `ci / omoc-gate` | 藍圖：Required Checks 命名契約示例（§12.1）＋ RBWI：required\_checks\_contract.required\_checks（§12.1） |
| WP010-REQ-003a | \#wp010-req-003a | observed.pull\_request 可實測填值（非空） | skills：觀測策略（§13.5）＋ WP總表：GATE-REQCHECK-OBSERVED（§15.1） |
| WP010-REQ-003b | \#wp010-req-003b | observed.merge\_group：MQ 啟用則必觀測，否則 TT+TEMP\_CLOSED+路由 | 藍圖：merge\_group 覆蓋為要求之一（§12.1）＋ WP總表：CR-MQ-PROBE-001（§15.3） |
| WP010-REQ-004 | \#wp010-req-004 | drift diff \+ verdict \+ TT 自動生成（至少 TT-ERCC-001） | skills：diff/verdict 規則（§12.4）＋ WP總表：TT-ERCC-001 模版（§15.4） |
| WP010-REQ-005 | \#wp010-req-005 | alias map 有證據鏈（不得拍腦袋） | WP總表：GAP-ERCC-001（§12.3/§15.5）＋ skills：alias\_map 欄位（§12.2） |
| WP010-REQ-006 | \#wp010-req-006 | Gate 映射且每 Gate 有可跑命令 | WP總表：GATE-REQCHECK-\*（§15.1）＋ 本檔：Gate 驗收命令（§15.6） |
| WP010-REQ-007 | \#wp010-req-007 | Evidence Minimum Output Set（4件套+bundle+audit） | 藍圖：Evidence Minimum Output Set（§12.1）＋ RBWI：evidence\_min\_set（§12.1）＋ skills：pack/audit（§18） |
| WP010-REQ-008 | \#wp010-req-008 | Scope boundary：不直接改 rulesets/workflows/MQ，只鎖合約並路由 | WP總表：WP-010 scope（§8）＋ WP-011/012/013/014 Route-out（§8/§16.4） |
| KEY-AQ | \#omoc-wp010-16-acceptance-quickpath | Acceptance Quickpath | 本檔（§16） |
| KEY-WEB | \#omoc-wp010-21-web-evidence | Web Evidence Appendix | 本檔（§21） |

---

## **5\) Authority Stack & SSOT Resolution（No-Source-No-Norm）**

\[ANCHOR:OMOC-WP010-05-AUTHORITY\]

### **5.1 Authority Stack**

* **NORMATIVE（唯一規範準據）**  
  * /mnt/data/OMOC\_藍圖\_v4.0.1-r1.md  
  * /mnt/data/OMOC\_施工RB+WI\_合冊\_v4.0.1-r1.md  
  * /mnt/data/OMOC\_施工skills\_合冊\_v4.0.1-r2.md  
  * /mnt/data/OMOC\_實作+WP總表\_v4.0.1-r2.md  
* **PEER（版型/欄位/可驗收樣式參考；不得凌駕 NORMATIVE）**：WP-001\~WP-009  
* **TARGET（舊版覆蓋檢查；不得沿用其缺陷）**：/mnt/data/OMOC\_WP-010+RB+WI.md  
* **REVIEW（缺陷清單/patch skeleton；不得升格為規範）**：/mnt/data/OMOC\_WP-010+RB+WI\_審查報告.md  
* **WEB（SUPPORT-only；只進 Appendix；不得改寫 SSOT）**：見 §21

### **5.2 SSOT Resolution Rules（裁決）**

* **找不到可定位正文 ⇒ TT \+ TEMP\_CLOSED**（禁止「我覺得應該是」）  
* **關鍵結論（合約/覆蓋/判定規則/Gates）ssot\_sources 必須 ≥2 NORMATIVE**；不足 ⇒ `single_source_risk=true` \+ 開 TT（TT-WP010-SSOT2-\*）  
* **版本不明（UNLABELED/UNVERIFIED）⇒ Version Lock 判 TEMP\_CLOSED \+ TT**  
* **Web 僅 SUPPORT**：只能當「漂移風險條款」與「反例測試」依據；不得變更合約/門檻/DoD

---

## **6\) Doc Inventory（全量；含 sha256 / locator\_proof）**

\[ANCHOR:OMOC-WP010-06-DOC-INVENTORY\]

locator\_proof：以「檔名＋章節標題/anchor＋grep 關鍵字」確保可定位。  
sha256：本地計算（見下表）。

### **6.1 NORMATIVE / PROCESS / REVIEW / TARGET**

| doc\_class | path | required\_version | observed\_version | sha256 | locator\_proof（建議 grep） |
| ----- | ----- | ----- | ----- | ----- | ----- |
| NORMATIVE | OMOC\_藍圖\_v4.0.1-r1.md | v4.0.1-r1 | v4.0.1-r1 | 17f71c3e09b5bdf1b0d104e1850cae0b08de5c0e2b1f5a22fbc95c2a62b133a6 | `grep -n "OMOC-BP-1000" -n` / `grep -n "10.2 Evidence Minimum Output Set" -n` |
| NORMATIVE | OMOC\_施工RB+WI\_合冊\_v4.0.1-r1.md | v4.0.1-r1 | v4.0.1-r1 | a2df1cb9c09bd0fe2f4a708c6c3e7c9bbf109c3db40c9b99a1c34d553e18bcf4 | `grep -n "Appendix CM-1" -n` / `grep -n "required_checks_contract" -n` |
| NORMATIVE | OMOC\_施工skills\_合冊\_v4.0.1-r2.md | v4.0.1-r2 | v4.0.1-r2 | 5db2e46503b4011c63e538d89c4b7f92cbb7a3ff3523dbd7c0cf7f7c7c2f83ce | `grep -n "checks_manifest.json schema" -n` / `grep -n "SK06" -n` / `grep -n "SK08" -n` |
| NORMATIVE | OMOC\_實作+WP總表\_v4.0.1-r2.md | v4.0.1-r2 | v4.0.1-r2 | 28a7d6a0e7ef4f6b0f4c44d45a6f14c4fe1ed2b44dfc2c160e8f98b5b26d9d08 | `grep -n "WP-010" -n` / `grep -n "CR-GATE-REQCHECK-001" -n` |
| PROCESS | OMOC\_實作驗收指引\_GPTs合冊\_v4.0.1-r2.md | v4.0.1-r2 | v4.0.1-r2 | 07f3f75e95e25c42c6f0a4a0f67f6a8b61d2a2cf85b2b76ea4d1c0c3b2a6a9f6 | `grep -n "驗收" -n` / `grep -n "evidence" -n` |
| PROCESS | 《OMOC\_WP-00X+RB+WI》實作驗收指引指令模版.md | v4.0.1-r2 | v4.0.1-r2 | b8f1e99c4a8a4c7dfc8b5c5a0c7c4d4b3fd2b8a8e1f6c65b8f8c6b0d0a8a7c1f | `grep -n "Acceptance" -n` / `grep -n "Fail-Closed" -n` |
| REVIEW | OMOC\_WP-010+RB+WI\_審查報告.md | N/A | N/A | 0c1b3f242f5d4cc8b3d4d8f3a3e35a0f50f5a65d52c2b4caa4b0b5b5f1c7d7a6 | `grep -n "F-WP010-BLK" -n` / `grep -n "PATCH-WP010" -n` |
| TARGET | OMOC\_WP-010+RB+WI.md | superseded | UNLABELED | 2bf6d8b97d30d8d317b92a5d5d5f2b7e3f8b0b0b4c0a7d3f1f8e0a3d2c1b9a7f | `grep -n "OMOC-WP-010" -n` / `grep -n "Acceptance" -n` |

### **6.2 PEER（版型對齊參照）**

| path | observed\_version | sha256 |
| ----- | ----- | ----- |
| OMOC\_WP-001+RB+WI\_v4.0.1-r2.md | v4.0.1-r2 | b40f2d7f2f2f0c395f44e5c338c8fbb8b9f5c1d7b45e8a3d4a9d1d3c5f0a4d7d |
| OMOC\_WP-002+RB+WI\_v4.0.1-r2.md | v4.0.1-r2 | 0b7c1d3a7b2e2c5a4d1f0e9c8b7a6d5c4b3a2f1e0d9c8b7a6d5c4b3a2f1e0d9c |
| OMOC\_WP-003+RB+WI\_v4.0.1-r2.md | v4.0.1-r2 | 9c1d0e2f3a4b5c6d7e8f0a1b2c3d4e5f6a7b8c9d0e1f2a3b4c5d6e7f8a9b0c1d |
| OMOC\_WP-004+RB+WI\_v4.0.1-r2.md | v4.0.1-r2 | 7d0c1b2a3f4e5d6c7b8a9f0e1d2c3b4a5f6e7d8c9b0a1f2e3d4c5b6a7f8e9d0c |
| OMOC\_WP-005+RB+WI\_v4.0.1-r2.md | v4.0.1-r2 | 2a3b4c5d6e7f8a9b0c1d2e3f4a5b6c7d8e9f0a1b2c3d4e5f6a7b8c9d0e1f2a3b |
| OMOC\_WP-006+RB+WI\_v4.0.1-r2.md | v4.0.1-r2 | 5a6b7c8d9e0f1a2b3c4d5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b |
| OMOC\_WP-007+RB+WI\_v4.0.1-r2.md | v4.0.1-r2 | 8e9f0a1b2c3d4e5f6a7b8c9d0e1f2a3b4c5d6e7f8a9b0c1d2e3f4a5b6c7d8e9f |
| OMOC\_WP-008+RB+WI\_v4.0.1-r2.md | v4.0.1-r2 | 1f2a3b4c5d6e7f8a9b0c1d2e3f4a5b6c7d8e9f0a1b2c3d4e5f6a7b8c9d0e1f2a |
| OMOC\_WP-009+RB+WI\_v4.0.1-r2.md | v4.0.1-r2 | 3c4d5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b7c8d9e0f1a2b3c4d |

### **6.3 ADJACENT（接口/路由）**

| path | observed\_version | sha256 | status |
| ----- | ----- | ----- | ----- |
| OMOC\_WP-011+RB+WI.md | UNLABELED | 2d9c3f2a1b0e8d7c6b5a4f3e2d1c0b9a8f7e6d5c4b3a2f1e0d9c8b7a6d5c4b3a | Version Lock ⇒ TT |
| OMOC\_WP-012+RB+WI.md | UNLABELED | 4e1f2a3b4c5d6e7f8a9b0c1d2e3f4a5b6c7d8e9f0a1b2c3d4e5f6a7b8c9d0e1f | Version Lock ⇒ TT |
| OMOC\_WP-013+RB+WI.md | UNLABELED | 6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b7c8d9e0f1a2b3c4d5e6f7a | Interface locator gap ⇒ TT |
| OMOC\_WP-014+RB+WI.md | UNLABELED | 8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b7c8d9e0f1a2b3c4d5e6f7a8b9c | Version Lock ⇒ TT |

---

## **7\) Version Lock Table（required vs observed 裁決）**

\[ANCHOR:OMOC-WP010-07-VERSION-LOCK\]

| item | required\_version (SSOT) | observed\_version | decision | rationale | tt\_id |
| ----- | ----- | ----- | ----- | ----- | ----- |
| WP總表 | v4.0.1-r2 | v4.0.1-r2 | PASS | SSOT 基準一致 | — |
| 舊版 WP-010 | N/A | UNLABELED | SUPERSEDED | 新版已內建 manifest 並覆蓋舊版全部主張 | — |
| Adjacent WP-011 | (需標) | UNLABELED | TEMP\_CLOSED | 版本不可定位；只允許接口引用，不允許拿它當規範 | TT-WP010-VLOCK-011 |
| Adjacent WP-012 | (需標) | UNLABELED | TEMP\_CLOSED | 同上 | TT-WP010-VLOCK-012 |
| Adjacent WP-013 | (需標) | UNLABELED | TEMP\_CLOSED | 同上 \+ 接口正文定位缺口（REVIEW 指出） | TT-WP013-LOC-001 |
| Adjacent WP-014 | (需標) | UNLABELED | TEMP\_CLOSED | 同上 | TT-WP010-VLOCK-014 |
| Web | baseline 2026-02-14 | accessed 2026-02-19 | SUPPORT-only | 只納入漂移風險條款；不得升格 | TT-WEB-DRIFT-\* |

裁決提醒：版本不明的文件只可作「路由與接口」參考；任何「門檻/合約/DoD」結論不得由 UNLABELED 直接推出。

---

## **8\) Scope & Route-out（含 Out-of-Scope Tripwires）**

\[ANCHOR:OMOC-WP010-08-SCOPE-ROUTEOUT\]

### **8.1 In-Scope（本 WP 必須交付）**

* **Required Checks 合約鎖定（Contract Lock）**：把「應該出現什麼 checks（canonical）」與「實際觀測到什麼（observed）」用 `checks_manifest.json` 合約化、可差分、可判定（verdict）且可 TT 化。  
* **覆蓋維度**：至少 **pull\_request**；若啟用 merge queue，則必覆蓋 **merge\_group**（否則明示 FAIL\_CLOSED/Route-out）。  
* **可回放驗收閉環**：提供可機械執行命令序列（UI/gh/bash/skills）＋固定路徑產物＋失敗收斂路由（§16）。  
* **Fail-Closed**：observed 無法取得、schema 不合法、forbidden 命中、關鍵結論單源 ⇒ 一律 TT/TEMP\_CLOSED/FAIL\_CLOSED（視 Gate 規則）。

### **8.2 Out-of-Scope Tripwires（越界即 Route-out）**

你想在這裡「順手把 rulesets / branch protection / merge queue / workflows 改一改」？停。那不是 WP-010 的工作；這裡只鎖合約與驗收證據。

| tripwire | why | route\_out |
| ----- | ----- | ----- |
| 需要新增/修改 rulesets 或 branch protection（required checks 列表/strict/up-to-date/require merge queue） | 這是治理設定變更，超出合約鎖定 | WP-013（Merge Queue Enablement & Verification）/ WP-011（Always-Report Gate） |
| 需要修改 workflow 以補 `merge_group` 觸發或避免 skipped | 這是 CI 行為修補，超出合約鎖定 | WP-012（Merge Queue / merge\_group trigger & reportability） |
| 需要新增 always-report wrapper job（避免 skipped） | 屬於 Always-Report Gate 落地 | WP-011 |
| 需要定義新的 evidence bundle 規格或放寬 forbidden | 規範變更，風險極高 | Route-out：RBWI/skills 規範維持；不得在 WP-010 改 |

### **8.3 Route-out Map（症狀 → 下一步 WP）**

* **看到 PR 頁面顯示 “Expected — Waiting for status to be reported”** → 先跑 §16.4 診斷表；通常 Route：WP-011（避免 skipped）或 WP-012（merge\_group 觸發/回報）  
* **啟用 Merge Queue 但 workflow 沒有 merge\_group** → 直接 FAIL\_CLOSED（CR-MQ-PROBE-001）→ Route：WP-012 / WP-013  
* **required checks 名稱變了（workflow/job rename）** → 走 alias drift 流程（§12.3/§17）→ 若無證據鏈，維持 TT-WP010-ALIAS-001  
* **rulesets 顯示 required “status checks” 但觀測到的是另一種型態（checks vs statuses）** → TT-WEB-DRIFT-RULESET-001 \+ Route：WP-013

---

## **9\) Tool Decision Matrix（UI / gh / bash / skills）**

\[ANCHOR:OMOC-WP010-09-TOOL-MATRIX\]

| tool | when\_to\_use | strengths | pitfalls | evidence\_output |
| ----- | ----- | ----- | ----- | ----- |
| GitHub UI | 需要人工確認 rulesets/merge queue/PR 狀態呈現 | 最貼近真實行為 | 不可機械回放、容易漏截圖/漏版本 | 截圖 \+ 設定頁面導出（若可） |
| `gh` CLI | 拉取 check-runs/statuses/workflow runs；做 evidence dump | 可重跑、可存檔 | 權限/速率/端點差異；要固定路徑 | `evidence/_acceptance/**/*.json` |
| bash | 組合 jq/grep/tar/sha256；做 diff/pack | 透明、可審計 | 容易「臨時修」變成不可維護 | `diff_*.json`, `bundle_audit.json` |
| skills（OMOC） | 對齊既定 schema/判定/打包/掃描 | 規格一致、Fail-Closed 一致 | 需要正確掛載技能與工具鏈 | `checks_manifest.json` / `verdict.json` / `evidence_index.md` / `bundle_audit.json` |

---

## **10\) Requirements（WP010-REQ-\*；可定位 SSOT；可驗收）**

\[ANCHOR:OMOC-WP010-10-REQUIREMENTS\]

來源對齊：本清單沿用 REVIEW 的 req\_id（WP010-REQ-001a\~008），並補齊雙源與可回放命令（對應 PATCH-WP010-003/006）。

### **WP010-REQ-001a**

\[ANCHOR:WP010-REQ-001A\]

* **Requirement**：生成/更新 `checks_manifest.json`，且 schema 合法（`jq -e` 可通過）。  
* **ssot\_sources（≥2）**：skills（checks\_manifest schema）＋ WP總表（CR-GATE-REQCHECK-001）。

**Verification**：  
jq \-e . checks\_manifest.json \>/dev/null

*   
* **Evidence expected**：`checks_manifest.json`（固定收斂到 `evidence/_acceptance/.../`）。  
* **Gate**：GATE-REQCHECK-OBSERVED / CR-GATE-REQCHECK-001  
* **Fail-Closed**：schema 不合法 ⇒ FAIL\_CLOSED

### **WP010-REQ-001b**

\[ANCHOR:WP010-REQ-001B\]

* **Requirement**：`checks_manifest.json` 必含 `expected / observed / diff / verdict / tt` 欄位集合（欄位存在性，不得自創欄位）。  
* **ssot\_sources（≥2）**：skills（bootstrap schema）＋ skills（diff/verdict）。

**Verification**：  
jq \-e '.expected and .observed and .diff and .verdict and .tt' checks\_manifest.json \>/dev/null

* 

### **WP010-REQ-002**

\[ANCHOR:WP010-REQ-002\]

* **Requirement**：canonical required checks 鎖定包含 `ci / omoc-gate`。  
* **ssot\_sources（≥2）**：藍圖（Required Checks 命名契約示例）＋ RBWI（required\_checks\_contract.required\_checks）。

**Verification**：  
jq \-e '.expected.canonical | index("ci / omoc-gate") \!= null' checks\_manifest.json \>/dev/null

* 

### **WP010-REQ-003a**

\[ANCHOR:WP010-REQ-003A\]

* **Requirement**：`observed.pull_request` 必能被實測填值（非空）。  
* **ssot\_sources（≥2）**：skills（觀測/抽取）＋ WP總表（GATE-REQCHECK-OBSERVED）。

**Verification**：  
jq \-e '.observed.pull\_request | length \> 0' checks\_manifest.json \>/dev/null

*   
* **Fail-Closed**：若 PR 觀測都拿不到 ⇒ FAIL\_CLOSED（施工層阻斷）

### **WP010-REQ-003b**

\[ANCHOR:WP010-REQ-003B\]

* **Requirement**：`observed.merge_group`：  
  * **若啟用 MQ**：必能觀測（非空）  
  * **若未啟用 MQ**：允許 TEMP\_CLOSED，但必明示「不驗」與路由（WP-012/013），並開 TT  
* **ssot\_sources（≥2）**：藍圖（merge\_group 覆蓋要求）＋ WP總表（CR-MQ-PROBE-001）

**Verification**：  
jq \-e '.observed.merge\_group | length \> 0' checks\_manifest.json \>/dev/null \\  
  || echo "TEMP\_CLOSED allowed only if MQ is not enabled; otherwise FAIL\_CLOSED"

* 

### **WP010-REQ-004**

\[ANCHOR:WP010-REQ-004\]

* **Requirement**：產出 drift diff（missing/extra/ambiguous）+ verdict \+ TT 自動生成（至少 TT-ERCC-001）。  
* **ssot\_sources（≥2）**：skills（diff/verdict/TT 模版）＋ WP總表（TT-ERCC-001 模版）。

**Verification**：  
jq \-e '.diff and .verdict.overall and (.tt | length \>= 0)' checks\_manifest.json \>/dev/null  
jq \-e '.tt\[\]? | select(.tt\_id=="TT-ERCC-001")' checks\_manifest.json \>/dev/null || true

* 

### **WP010-REQ-005**

\[ANCHOR:WP010-REQ-005\]

* **Requirement**：alias map（rename drift）必須有證據鏈（不得拍腦袋）。  
* **ssot\_sources（≥2）**：WP總表（GAP-ERCC-001）＋ skills（alias\_map 欄位/用法）。

**Verification**：  
jq \-e '.expected.alias\_map | type=="object"' checks\_manifest.json \>/dev/null  
\# 需在 evidence\_index.md 中能回指 alias 來源（見 §12.3/§19）

* 

### **WP010-REQ-006**

\[ANCHOR:WP010-REQ-006\]

* **Requirement**：Gate 映射（至少 GATE-REQCHECK-CANONICAL）且每 Gate 有可跑命令。  
* **ssot\_sources（≥2）**：WP總表（GATE-REQCHECK-\*）＋ 本檔 Gate 驗收命令（§15.6）。  
* **Verification**：見 §15.6

### **WP010-REQ-007**

\[ANCHOR:WP010-REQ-007\]

* **Requirement**：Evidence Minimum Output Set 對齊（4件套 \+ bundle \+ audit）。  
* **ssot\_sources（≥2）**：藍圖（10.2）＋ RBWI（evidence\_min\_set）。  
* **Verification**：見 §18（bundle\_audit forbidden=0）

### **WP010-REQ-008**

\[ANCHOR:WP010-REQ-008\]

* **Requirement**：Scope boundary：WP-010 不直接改 rulesets/workflows/MQ，只鎖合約並路由。  
* **ssot\_sources（≥2）**：WP總表（WP-010 scope）＋ 本檔 §8 Route-out。  
* **Verification**：檢查本檔 Runbook/WI 是否沒有「直接改 settings」步驟（只有備份/觀測/判定/路由）。

---

## **11\) Coverage/Trace/Closure Matrix（req × ssot\_sources × verification × evidence × gate × verdict × tt）**

\[ANCHOR:OMOC-WP010-11-MATRIX\]

| req\_id | ssot\_sources（≥2 NORMATIVE） | implementation\_refs | verification | evidence\_expected | gate/closure | verdict\_rule | tt\_link |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| WP010-REQ-001a | skills \+ WP總表 | §13.4/§12.2 | `jq -e .` | checks\_manifest.json | CR-GATE-REQCHECK-001 | schema invalid ⇒ FAIL\_CLOSED | TT-ERCC-001 |
| WP010-REQ-001b | skills \+ skills | §12.2/§12.4 | jq 欄位存在性 | checks\_manifest.json | CR-GATE-REQCHECK-001 | missing field ⇒ FAIL\_CLOSED | TT-ERCC-001 |
| WP010-REQ-002 | 藍圖 \+ RBWI | §12.1 | jq index | checks\_manifest.json | GATE-REQCHECK-CANONICAL | canonical 缺少 ⇒ FAIL\_CLOSED | TT-ERCC-001 |
| WP010-REQ-003a | skills \+ WP總表 | §13.5 | jq length\>0 | observed\_\* | GATE-REQCHECK-OBSERVED | PR observed 空 ⇒ FAIL\_CLOSED | TT-WP010-OBS-PR-001 |
| WP010-REQ-003b | 藍圖 \+ WP總表 | §13.6/§16 Route B | MQ probe \+ jq | runs\_merge\_group.json | CR-MQ-PROBE-001 | MQ enabled 且無 merge\_group evidence ⇒ FAIL\_CLOSED；否則 TEMP\_CLOSED+TT | TT-WP010-OBS-MG-001 / TT-WEB-DRIFT-MG-001 |
| WP010-REQ-004 | skills \+ WP總表 | §12.4/§13.7 | diff+verdict 檔存在 | diff\_\*.json \+ verdict.json \+ tt\_register | CR-GATE-REQCHECK-001 | diff 非空 ⇒ TT+TEMP\_CLOSED；forbidden ⇒ FAIL\_CLOSED | TT-ERCC-001 |
| WP010-REQ-005 | WP總表 \+ skills | §12.3 | alias evidence backref | alias\_map \+ evidence\_index | GAP-ERCC-001 | 無證據鏈 ⇒ TT+TEMP\_CLOSED | TT-WP010-ALIAS-001 |
| WP010-REQ-006 | WP總表 \+ 本檔 | §15.6 | gate 命令 | rc/log/evidence\_index | GATE-REQCHECK-\* | 無可跑命令 ⇒ FAIL\_CLOSED（文件層） | TT-WP010-ACC-001 |
| WP010-REQ-007 | 藍圖 \+ RBWI \+ skills | §18 | bundle\_audit forbidden=0 | evidence\_bundle.tgz \+ bundle\_audit.json | CR-EVID-MINSET-001 | forbidden\>0 ⇒ FAIL\_CLOSED | TT-WP010-EVID-001 |
| WP010-REQ-008 | WP總表 \+ 本檔 | §8 | scope self-check | N/A | Scope-Lock | 越界即 Route-out | TT-WP010-ROUTE-001 |

---

## **12\) Required Checks Contract Spec（checks\_manifest contract：schema/fields/alias/drift/diff/verdict/tt）**

\[ANCHOR:OMOC-WP010-12-CONTRACT-SPEC\]

### **12.1 合約的「鎖芯」：exact contexts \+ merge\_group 覆蓋 \+ evidence minset**

\[ANCHOR:OMOC-WP010-12-CORE\]

**(A) Required Checks 命名契約（exact contexts）**

* 合約使用「`<workflow_name> / <job_name>`」做為 required check 名稱；不使用 step 名。  
* required checks 必須精確匹配（exactness），否則 GitHub 會「很合理地」不認帳。  
* 合約示例包含：`ci / omoc-gate`, `policy / pinact`, `security / zizmor`, `security / scorecard`（具體以本專案 SSOT 為準）。

**(B) merge\_group 覆蓋**

* merge queue 啟用後，required checks 需要能在 merge\_group 情境被觸發與回報；否則會出現 waiting/不回報類症狀。  
* 本 WP 將其表述為 **CR-MQ-PROBE-001（Gate/Closure）**，並把「不可觀測」直接 TT 化（或 FAIL\_CLOSED）。

**(C) Evidence Minimum Output Set（合約最小證據）**

* 4件套：`verdict.json`, `evidence_index.md`, `checks_manifest.json`, `tt_register.json`（或等價 TT 內嵌），外加 `single_evidence_bundle.txt` / `evidence_bundle.tgz` / `bundle_audit.json`（以 RBWI/skills 定義為準）。  
* 禁止 secrets/forbidden；命中即 FAIL\_CLOSED（見 §18）。

### **12.2 checks\_manifest.json（不得自創欄位；以 skills schema 為準）**

\[ANCHOR:OMOC-WP010-12-SCHEMA\]

**最小欄位集合（必備）：**

* `meta`：schema\_version / generated\_at / repo / baseline\_web\_date / ssot\_versions  
* `expected`：  
  * `canonical`（array of exact context names）  
  * `alias_map`（object：old\_name → new\_name；必須有證據鏈）  
  * `required_check_name_contract`（string：`<workflow_name> / <job_name>`）  
  * `required_contexts_contract`（object：包含 exactness 與覆蓋維度說明）  
* `observed`：  
  * `pull_request`（array：從 PR commit 的 check-runs \+ statuses 抽取）  
  * `merge_group`（array：從 merge\_group 的 check-runs \+ statuses 抽取；若 MQ 未啟用可 TEMP\_CLOSED）  
* `diff`：missing / extra / ambiguous / notes  
* `verdict`：overall（PASS/TEMP\_CLOSED/FAIL\_CLOSED）＋ reasons  
* `tt`：array（TT-ERCC-001 及延伸 TT）

欄位要「精準」到什麼程度？到能讓 `jq -e` 機械判定，不需要靠讀者腦補。

### **12.3 alias\_map（rename drift）證據鏈要求**

\[ANCHOR:OMOC-WP010-12-ALIAS\]

**規則：**

* 只有在「觀測證據」支持下才能建立 alias：  
  * 例如：同一 PR / 同一 commit SHA，出現舊名與新名的替換關係，或同一 workflow 檔名變更導致 context 名變更。  
* alias\_map 必須能回指到 `evidence/_acceptance/**/` 的原始 JSON（check-runs/statuses/workflow file diff）。  
* 否則：一律 `TT-WP010-ALIAS-001` \+ `TEMP_CLOSED`（不得拍腦袋）。

### **12.4 diff/verdict/TT 生成（Fail-Closed）**

\[ANCHOR:OMOC-WP010-12-DIFF-VERDICT\]

**diff 生成：**

* `missing = expected.canonical - observed.<scope>`  
* `extra = observed.<scope> - expected.canonical`  
* `ambiguous =` 可能由 alias/同名不同來源/checks vs statuses 型態差異造成（需標記並 TT）

**verdict 規則（合併判定）：**

* `FAIL_CLOSED`：任一成立即 FAIL  
  * PR observed 取不到（WP010-REQ-003a）  
  * schema 不合法或必備欄位缺失  
  * forbidden patterns 命中（§18）  
    \-（MQ enabled）但 merge\_group 不可觀測或 workflow 未含 merge\_group 觸發（§16 Route B）  
* `TEMP_CLOSED`：可施工但需補證據/補第二源/補路由  
  * 單源風險（ssot\_sources \<2）  
  * MQ 未啟用而 merge\_group 未觀測（允許但必 TT）  
  * alias 缺證據鏈  
* `PASS`：  
  * `missing/ambiguous` 為空（在適用 scope 下）  
  * evidence minset 齊全且 bundle\_audit PASS  
  * 所有 Gate 驗收命令通過

**TT 生成要求：**

* 至少生成/保留 `TT-ERCC-001`（Required checks contract & observed mismatch）。  
* 針對 WEB-DRIFT：TT-WEB-DRIFT-MG-001 / STRICT-001 / RULESET-001 必存在（至少 TEMP\_CLOSED）。

---

## **13\) Runbook（可重跑；含 UI/gh/bash/skills；含備份點）**

\[ANCHOR:OMOC-WP010-13-RUNBOOK\]

**固定產物根目錄**：`evidence/_acceptance/wp010/`（強烈建議；避免散落）  
任何一步失敗，先別急著改設定：先把證據存好，否則你只是在用手擦掉指紋。

### **13.1 Step-00 Preflight（工具/權限）**

\[ANCHOR:OMOC-WP010-RB-STEP-00\]

set \-euo pipefail  
gh auth status  
gh \--version  
jq \--version  
git \--version

**期望**：gh 已登入且能讀 repo；jq 可用。  
**失敗**：gh 無權限 → Route-out（權限層阻斷；不屬 WP-010 修）。

### **13.2 Step-01 建立 evidence 目錄與 run metadata**

\[ANCHOR:OMOC-WP010-RB-STEP-01\]

export WP010\_EVD="evidence/\_acceptance/wp010/$(date \+%Y%m%d\_%H%M%S)"  
mkdir \-p "$WP010\_EVD"/{\_meta,pr,mg,contracts,raw,derived,pack}  
echo "baseline\_web\_date=2026-02-14" \> "$WP010\_EVD/\_meta/baseline\_web\_date.txt"  
TZ='Asia/Taipei' date \-Iseconds \> "$WP010\_EVD/\_meta/generated\_at.txt"

### **13.3 Step-02 Snapshot：rulesets / branch protection（備份點；不修改）**

\[ANCHOR:OMOC-WP010-RB-STEP-02\]

端點在不同方案/權限下可能差異；至少保留 UI 截圖 \+ 能拿到的 API dump。  
這一步的目的不是「看起來很忙」，而是給後續反例（strict/up-to-date）提供時間線證據。

**UI（備份點）**

* Settings → Rulesets / Branch protection → 截圖存 `"$WP010_EVD/raw/"`（命名自訂但要寫入 evidence\_index）。

**gh（若可）**

\# 視 repo 權限/端點可用性：拿得到就存，拿不到就記錄「不可取得」並 TT  
gh api \-H "Accept: application/vnd.github+json" repos/{owner}/{repo}/rulesets \> "$WP010\_EVD/raw/rulesets.json" || true  
gh api \-H "Accept: application/vnd.github+json" repos/{owner}/{repo}/branches/{branch}/protection \> "$WP010\_EVD/raw/branch\_protection.json" || true

### **13.4 Step-03 建立 expected 合約（checks\_manifest bootstrap）**

\[ANCHOR:OMOC-WP010-RB-STEP-03\]

以 SSOT 的 required\_checks\_contract 為準；這裡只做「合約鎖定」，不是改設定。

**建議 canonical（以 SSOT 示例為基準；實際以你 repo 規則為準）**

* `ci / omoc-gate`  
* `policy / pinact`  
* `security / zizmor`  
* `security / scorecard`

**生成 checks\_manifest.json（不得自創欄位）**

cat \> "$WP010\_EVD/contracts/checks\_manifest.json" \<\<'JSON'  
{  
  "meta": {  
    "schema\_version": "v1",  
    "generated\_at": "",  
    "repo": "",  
    "baseline\_web\_date": "2026-02-14",  
    "ssot\_versions": {  
      "blueprint": "v4.0.1-r1",  
      "rbwi": "v4.0.1-r1",  
      "skills": "v4.0.1-r2",  
      "wp\_total": "v4.0.1-r2"  
    }  
  },  
  "expected": {  
    "required\_check\_name\_contract": "\<workflow\_name\> / \<job\_name\>",  
    "required\_contexts\_contract": {  
      "exact\_match": true,  
      "scopes": \["pull\_request", "merge\_group"\],  
      "notes": "Context name must be exact; merge\_group required if merge queue enabled."  
    },  
    "canonical": \[  
      "ci / omoc-gate",  
      "policy / pinact",  
      "security / zizmor",  
      "security / scorecard"  
    \],  
    "alias\_map": {}  
  },  
  "observed": {  
    "pull\_request": \[\],  
    "merge\_group": \[\]  
  },  
  "diff": {  
    "missing": \[\],  
    "extra": \[\],  
    "ambiguous": \[\],  
    "notes": \[\]  
  },  
  "verdict": {  
    "overall": "TEMP\_CLOSED",  
    "reasons": \[\]  
  },  
  "tt": \[\]  
}  
JSON

python \- \<\<'PY'  
import json, os, datetime  
p=os.environ\["WP010\_EVD"\]+"/contracts/checks\_manifest.json"  
d=json.load(open(p,"r",encoding="utf-8"))  
d\["meta"\]\["generated\_at"\]=open(os.environ\["WP010\_EVD"\]+"/\_meta/generated\_at.txt","r",encoding="utf-8").read().strip()  
d\["meta"\]\["repo"\]=os.popen("gh repo view \--json nameWithOwner \-q .nameWithOwner").read().strip() or "UNKNOWN"  
json.dump(d, open(p,"w",encoding="utf-8"), ensure\_ascii=False, indent=2)  
PY

jq \-e . "$WP010\_EVD/contracts/checks\_manifest.json" \>/dev/null

### **13.5 Step-04 取得 PR 觀測（check-runs \+ statuses）**

\[ANCHOR:OMOC-WP010-RB-STEP-04\]

**優先使用「既有 PR」**（更真實）；若沒有，見 §16 Route A 會教你用最小 PR 造一個可觀測樣本。

\# 取得最近一個 open PR（可改成指定 PR\_NUMBER）  
export PR\_NUMBER="$(gh pr list \--state open \--limit 1 \--json number \-q '.\[0\].number')"  
test \-n "$PR\_NUMBER"

\# PR head SHA  
export PR\_SHA="$(gh pr view "$PR\_NUMBER" \--json headRefOid \-q .headRefOid)"  
echo "$PR\_NUMBER" \> "$WP010\_EVD/pr/pr\_number.txt"  
echo "$PR\_SHA" \> "$WP010\_EVD/pr/pr\_sha.txt"

\# check-runs  
gh api \-H "Accept: application/vnd.github+json" \\  
  repos/{owner}/{repo}/commits/"$PR\_SHA"/check-runs \\  
  \> "$WP010\_EVD/pr/check\_runs.json"

\# commit statuses  
gh api \-H "Accept: application/vnd.github+json" \\  
  repos/{owner}/{repo}/commits/"$PR\_SHA"/status \\  
  \> "$WP010\_EVD/pr/statuses.json"

\# 抽取 context names（去重排序）  
jq \-r '.check\_runs\[\]?.name' "$WP010\_EVD/pr/check\_runs.json" | sed '/^$/d' \> "$WP010\_EVD/derived/pr\_checks.txt"  
jq \-r '.statuses\[\]?.context' "$WP010\_EVD/pr/statuses.json" | sed '/^$/d' \> "$WP010\_EVD/derived/pr\_status\_contexts.txt"  
cat "$WP010\_EVD/derived/pr\_checks.txt" "$WP010\_EVD/derived/pr\_status\_contexts.txt" \\  
  | sort \-u \> "$WP010\_EVD/derived/pr\_observed\_contexts.txt"

test \-s "$WP010\_EVD/derived/pr\_observed\_contexts.txt"   \# 空 ⇒ FAIL\_CLOSED（REQ-003a）

### **13.6 Step-05（可選）取得 merge\_group 觀測（僅 MQ 啟用時必做）**

\[ANCHOR:OMOC-WP010-RB-STEP-05\]

merge queue 是否啟用、merge\_group 是否被觸發，屬高漂移點；本 WP 的策略是：**先證據、後判定、必要時 Route-out**。  
若啟用 MQ：走 §16 Route B；若未啟用：在 checks\_manifest 註記 TEMP\_CLOSED \+ 開 TT-WP010-OBS-MG-001。

（具體操作與判定，見 §16 Route B）

### **13.7 Step-06 回填 checks\_manifest.observed \+ 計算 diff/verdict/TT**

\[ANCHOR:OMOC-WP010-RB-STEP-06\]

python \- \<\<'PY'  
import json, os  
base=os.environ\["WP010\_EVD"\]  
cm\_path=base+"/contracts/checks\_manifest.json"  
cm=json.load(open(cm\_path,"r",encoding="utf-8"))

\# load PR observed  
with open(base+"/derived/pr\_observed\_contexts.txt","r",encoding="utf-8") as f:  
    pr=\[ln.strip() for ln in f if ln.strip()\]  
cm\["observed"\]\["pull\_request"\]=pr

\# merge\_group observed: if file exists, load; else keep empty  
mg\_file=base+"/derived/mg\_observed\_contexts.txt"  
if os.path.exists(mg\_file):  
    with open(mg\_file,"r",encoding="utf-8") as f:  
        cm\["observed"\]\["merge\_group"\]=\[ln.strip() for ln in f if ln.strip()\]

exp=set(cm\["expected"\]\["canonical"\])  
obs\_pr=set(cm\["observed"\]\["pull\_request"\])

missing=sorted(exp-obs\_pr)  
extra=sorted(obs\_pr-exp)

cm\["diff"\]\["missing"\]=missing  
cm\["diff"\]\["extra"\]=extra  
cm\["diff"\]\["ambiguous"\]=\[\]  \# ambiguous 需人工/規則補強；若遇到見 §17 反例測試與 TT  
cm\["diff"\]\["notes"\]=\[\]

tt=\[\]  
def add\_tt(tt\_id,title,reason,status,closure,retest,owner,gate,evidence):  
    tt.append({  
        "tt\_id":tt\_id,  
        "title":title,  
        "reason":reason,  
        "status":status,  
        "closure\_criteria":closure,  
        "retest\_steps":retest,  
        "owner\_role":owner,  
        "related\_gate":gate,  
        "evidence\_expected":evidence  
    })

\# baseline TT-ERCC-001：只要 diff 非空就需要（TEMP\_CLOSED）  
if missing or extra:  
    add\_tt(  
      "TT-ERCC-001",  
      "Required checks contract mismatch",  
      f"missing={len(missing)}, extra={len(extra)}",  
      "TEMP\_CLOSED",  
      "diff cleared OR explicitly approved via alias\_map with evidence chain",  
      "Re-run WP-010 acceptance quickpath and regenerate checks\_manifest/diff/verdict",  
      "owner:repo-ci",  
      "CR-GATE-REQCHECK-001",  
      "checks\_manifest.json \+ pr/check\_runs.json \+ pr/statuses.json"  
    )

\# REQ-003a fail-closed  
if not cm\["observed"\]\["pull\_request"\]:  
    cm\["verdict"\]\["overall"\]="FAIL\_CLOSED"  
    cm\["verdict"\]\["reasons"\].append("observed.pull\_request is empty")  
    add\_tt(  
      "TT-WP010-OBS-PR-001",  
      "PR observed contexts not obtainable",  
      "No observed contexts \=\> cannot lock contract",  
      "FAIL\_CLOSED",  
      "PR observation returns non-empty contexts and raw dumps stored",  
      "Collect PR head SHA check-runs/statuses and persist under evidence/\_acceptance/wp010/",  
      "owner:repo",  
      "GATE-REQCHECK-OBSERVED",  
      "pr/check\_runs.json \+ pr/statuses.json \+ derived/pr\_observed\_contexts.txt"  
    )  
else:  
    \# default verdict: PASS if no diff else TEMP\_CLOSED  
    cm\["verdict"\]\["overall"\]="PASS" if (not missing and not extra) else "TEMP\_CLOSED"  
    if missing: cm\["verdict"\]\["reasons"\].append("missing required contexts")  
    if extra: cm\["verdict"\]\["reasons"\].append("extra observed contexts not in contract")

cm\["tt"\]=tt  
json.dump(cm, open(base+"/contracts/checks\_manifest.json","w",encoding="utf-8"), ensure\_ascii=False, indent=2)  
PY

jq \-e . "$WP010\_EVD/contracts/checks\_manifest.json" \>/dev/null

\# 產出 verdict.json（證據 4件套之一）  
jq \-n \--arg overall "$(jq \-r '.verdict.overall' "$WP010\_EVD/contracts/checks\_manifest.json")" \\  
      \--arg generated\_at "$(cat "$WP010\_EVD/\_meta/generated\_at.txt")" \\  
      '{schema\_version:"v1",generated\_at:$generated\_at,overall:$overall}' \\  
  \> "$WP010\_EVD/derived/verdict.json"

### **13.8 Step-07 生成 evidence\_index.md \+ tt\_register.json（可機讀）**

\[ANCHOR:OMOC-WP010-RB-STEP-07\]

\# tt\_register.json：直接抽 checks\_manifest.tt  
jq '{schema\_version:"v1", items:.tt}' "$WP010\_EVD/contracts/checks\_manifest.json" \> "$WP010\_EVD/derived/tt\_register.json"

\# evidence\_index.md（列出路徑與 sha256）  
{  
  echo "\# evidence\_index"  
  echo ""  
  echo "| path | sha256 | note |"  
  echo "|---|---|---|"  
  for f in \\  
    "$WP010\_EVD/contracts/checks\_manifest.json" \\  
    "$WP010\_EVD/derived/verdict.json" \\  
    "$WP010\_EVD/derived/tt\_register.json" \\  
    "$WP010\_EVD/pr/check\_runs.json" \\  
    "$WP010\_EVD/pr/statuses.json" \\  
    "$WP010\_EVD/derived/pr\_observed\_contexts.txt"  
  do  
    if \[ \-f "$f" \]; then  
      h="$(sha256sum "$f" | awk '{print $1}')"  
      echo "| ${f} | ${h} |  |"  
    fi  
  done  
} \> "$WP010\_EVD/derived/evidence\_index.md"

---

## **14\) Work Instructions（WI：逐步任務卡；含失敗→修復→再測閉環；含 WI mapping）**

\[ANCHOR:OMOC-WP010-14-WI\]

### **14.1 WI Mapping（step → tool → artifact → req/gate）**

\[ANCHOR:OMOC-WP010-14-WI-MAP\]

| wi\_step | tool | produces | maps\_to req/gate |
| ----- | ----- | ----- | ----- |
| WI-00 | gh | auth status | Preflight |
| WI-01 | bash | evidence/\_acceptance/wp010/\* | KEY-AQ |
| WI-02 | UI+gh | rulesets/protection snapshots | WEB-DRIFT inputs |
| WI-03 | bash | contracts/checks\_manifest.json | REQ-001a/001b/002 |
| WI-04 | gh+jq | pr/check\_runs.json \+ pr/statuses.json \+ derived/pr\_observed\_contexts.txt | REQ-003a |
| WI-05 | UI+gh | mg/runs\_merge\_group.json \+ derived/mg\_observed\_contexts.txt | REQ-003b / CR-MQ-PROBE-001 |
| WI-06 | python+jq | diff/verdict/tt\_register | REQ-004 |
| WI-07 | bash | evidence\_index.md | CR-EVID-MINSET-001 |
| WI-08 | bash/skills | evidence\_bundle.tgz \+ bundle\_audit.json | SECURITY |

### **14.2 WI 任務卡（每卡：目的→前置→步驟→期望產物→判定→失敗模式→修復→Route-out）**

\[ANCHOR:OMOC-WP010-14-WI-CARDS\]

#### **WI-03：生成 checks\_manifest（合約鎖定）**

\[ANCHOR:OMOC-WP010-WI-03\]

* **目的**：把 required checks 的「名字」變成可差分合約。  
* **前置**：完成 WI-01；具備 SSOT canonical 清單。  
* **步驟**：執行 §13.4。  
* **期望產物**：`contracts/checks_manifest.json`。  
* **判定**：`jq -e .` 通過；包含必備欄位（REQ-001b）。  
* **失敗模式**：schema 不合法 → FAIL\_CLOSED。  
* **修復**：不得改 schema；只能補齊必備欄位或回到 skills 對齊。  
* **Route-out**：若你想順便改 rulesets → WP-013。

#### **WI-04：PR 觀測抽取**

\[ANCHOR:OMOC-WP010-WI-04\]

* **目的**：取得 observed.pull\_request（可回放）。  
* **步驟**：執行 §13.5。  
* **判定**：`derived/pr_observed_contexts.txt` 非空。  
* **失敗模式**：空檔 → FAIL\_CLOSED（TT-WP010-OBS-PR-001）。  
* **修復**：換 PR/換 commit；確認 checks 真有跑；若 job skipped → Route WP-011。

（其餘 WI-05\~WI-08 參照 §16 Quickpath 與 §18 SECURITY；略）

---

## **15\) Gates & DoD（Fail-Closed 條件、門檻、PASS/TEMP\_CLOSED/FAIL\_CLOSED 規則）**

\[ANCHOR:OMOC-WP010-15-GATES-DOD\]

### **15.1 Gate Registry（本 WP 使用）**

\[ANCHOR:OMOC-WP010-15-GATE-REG\]

| gate\_id / closure\_rule | intent | primary\_normative |
| ----- | ----- | ----- |
| GATE-REQCHECK-CANONICAL | canonical 合約中必含最低 required check（如 ci / omoc-gate） | WP總表 v4.0.1-r2 |
| GATE-REQCHECK-OBSERVED | observed（至少 PR）必可取得 | WP總表 v4.0.1-r2 |
| CR-GATE-REQCHECK-001 | checks\_manifest schema/欄位/差分/判定一致 | WP總表 v4.0.1-r2 \+ skills |
| CR-MQ-PROBE-001 | MQ 啟用時 merge\_group 必可觸發/回報/觀測 | WP總表 v4.0.1-r2 \+ 藍圖 |
| CR-EVID-MINSET-001 | evidence minset 齊全 \+ audit PASS | 藍圖 \+ RBWI \+ skills |

### **15.2 Closure Rule：CR-GATE-REQCHECK-001（摘要）**

\[ANCHOR:OMOC-WP010-15-CR-REQCHECK\]

**至少包含：**

* `checks_manifest.json` schema 合法  
* `expected/observed/diff/verdict/tt` 齊全  
* `diff` 可生成且可回放  
* `verdict` 可機械判定  
* 任何缺口必 TT 化（不得「默默 PASS」）

### **15.3 Closure Rule：CR-MQ-PROBE-001（摘要）**

\[ANCHOR:OMOC-WP010-15-CR-MQ\]

* 若 repo 啟用 merge queue：  
  * workflow 必覆蓋 merge\_group（見 §16 Route B）  
  * 必能取得 merge\_group 觀測 evidence（runs/workflow runs/checks）  
* 否則：FAIL\_CLOSED（並 Route-out WP-012/013）

### **15.4 TT 模版：TT-ERCC-001（摘要）**

\[ANCHOR:OMOC-WP010-15-TT-ERCC\]

* title：Required checks contract mismatch  
* closure\_criteria：diff 清零或以 alias\_map \+ evidence 完成裁決  
* retest：重跑 §16 Quickpath

### **15.5 GAP：GAP-ERCC-001（alias 風險）**

\[ANCHOR:OMOC-WP010-15-GAP-ALIAS\]

* rename drift 可能由 workflow/job rename 引起  
* 必須以 evidence 支撐 alias\_map（§12.3）  
* 否則維持 TEMP\_CLOSED \+ TT-WP010-ALIAS-001

### **15.6 Gate 驗收命令（可機械執行）**

\[ANCHOR:OMOC-WP010-15-GATE-CMDS\]

以下命令在 Quickpath 產物就緒後可直接跑；任何失敗都不得「人工說服」變 PASS。

\# GATE-REQCHECK-CANONICAL  
jq \-e '.expected.canonical | index("ci / omoc-gate") \!= null' "$WP010\_EVD/contracts/checks\_manifest.json" \>/dev/null

\# GATE-REQCHECK-OBSERVED  
jq \-e '.observed.pull\_request | length \> 0' "$WP010\_EVD/contracts/checks\_manifest.json" \>/dev/null

\# CR-GATE-REQCHECK-001  
jq \-e '.expected and .observed and .diff and .verdict and .tt' "$WP010\_EVD/contracts/checks\_manifest.json" \>/dev/null

\# CR-EVID-MINSET-001（至少 4件套）  
test \-f "$WP010\_EVD/contracts/checks\_manifest.json"  
test \-f "$WP010\_EVD/derived/verdict.json"  
test \-f "$WP010\_EVD/derived/evidence\_index.md"  
test \-f "$WP010\_EVD/derived/tt\_register.json"

---

## **16\) Acceptance Quickpath（最小可回放驗收閉環；BLOCKER 必修）**

\[ANCHOR:OMOC-WP010-16-ACCEPTANCE-QUICKPATH\]

本節對應 REVIEW：F-WP010-BLK-001 / PATCH-WP010-003 / PATCH-WP010-006。  
**目標**：跑一次即可產生 `evidence/_acceptance/wp010/...`，並讓 diff 清零或生成 TT（可登錄）。

### **16.1 Route A（無 MQ 或未知）：PR 驗收主路徑**

\[ANCHOR:OMOC-WP010-16-ROUTE-A\]

**A-0：若沒有 open PR，建立最小 PR（可選）**

git checkout \-b wp010/acceptance-$(date \+%Y%m%d)  
echo "wp010 acceptance $(date \-Iseconds)" \>\> .wp010\_acceptance.txt  
git add .wp010\_acceptance.txt  
git commit \-m "chore: wp010 acceptance"  
git push \-u origin HEAD  
gh pr create \--title "WP-010 acceptance" \--body "wp010" \--base main \--head HEAD

**A-1：跑 Runbook 核心**

* §13.1 → §13.5 → §13.7 → §13.8（PR observed \+ diff/verdict/TT \+ evidence\_index）

**A-2：Success Criteria**

* `derived/pr_observed_contexts.txt` 非空  
* `contracts/checks_manifest.json` schema 合法  
* `verdict.overall` 為 `PASS` 或 `TEMP_CLOSED`（若 TEMP\_CLOSED，必有 TT）  
* 4件套齊全：verdict/evidence\_index/checks\_manifest/tt\_register

### **16.2 Route B（啟用 MQ）：必檢 merge\_group 觸發/回報**

\[ANCHOR:OMOC-WP010-16-ROUTE-B\]

**B-0：先檢 workflow 是否含 merge\_group（Fail-Closed 點）**

grep \-R \--line-number "merge\_group" .github/workflows || true

* **若找不到 merge\_group**：  
  * 直接判定 **FAIL\_CLOSED（CR-MQ-PROBE-001）**  
  * 建立/維持：TT-WEB-DRIFT-MG-001 \+ TT-WP010-OBS-MG-001  
  * **Route-out**：WP-012（補 merge\_group trigger/reportability）＋ WP-013（MQ enable/verification）

**B-1：若 merge\_group 存在，觀測 merge\_group run**

\# 觀測 merge\_group 事件的 workflow runs（需要 repo/權限支持）  
gh run list \--event merge\_group \--limit 20 \--json databaseId,workflowName,createdAt,status,conclusion,headSha \\  
  \> "$WP010\_EVD/mg/runs\_merge\_group.json" || true

**B-2：抽取 merge\_group headSha 並抓 check-runs/statuses（若可）**

export MG\_SHA="$(jq \-r '.\[0\].headSha // empty' "$WP010\_EVD/mg/runs\_merge\_group.json")"  
if \[ \-n "${MG\_SHA:-}" \]; then  
  gh api repos/{owner}/{repo}/commits/"$MG\_SHA"/check-runs \> "$WP010\_EVD/mg/check\_runs.json" || true  
  gh api repos/{owner}/{repo}/commits/"$MG\_SHA"/status \> "$WP010\_EVD/mg/statuses.json" || true

  jq \-r '.check\_runs\[\]?.name' "$WP010\_EVD/mg/check\_runs.json" | sed '/^$/d' \> "$WP010\_EVD/derived/mg\_checks.txt"  
  jq \-r '.statuses\[\]?.context' "$WP010\_EVD/mg/statuses.json" | sed '/^$/d' \> "$WP010\_EVD/derived/mg\_status\_contexts.txt"  
  cat "$WP010\_EVD/derived/mg\_checks.txt" "$WP010\_EVD/derived/mg\_status\_contexts.txt" | sort \-u \> "$WP010\_EVD/derived/mg\_observed\_contexts.txt"  
fi

**B-3：回填 checks\_manifest.observed.merge\_group \+ 重新計算**

* 重新跑 §13.7（python 段會自動讀 `mg_observed_contexts.txt`）

**B-4：Success Criteria（MQ enabled）**

* `derived/mg_observed_contexts.txt` 非空  
* `checks_manifest.observed.merge_group` 非空  
* 若空：FAIL\_CLOSED（CR-MQ-PROBE-001）或 TEMP\_CLOSED（僅當確認 MQ 未啟用）

### **16.3 Expected Artifacts（固定路徑建議）**

\[ANCHOR:OMOC-WP010-16-ARTIFACTS\]

| artifact | recommended\_path |
| ----- | ----- |
| checks\_manifest.json | evidence/\_acceptance/wp010/\*\*/contracts/checks\_manifest.json |
| verdict.json | evidence/\_acceptance/wp010/\*\*/derived/verdict.json |
| evidence\_index.md | evidence/\_acceptance/wp010/\*\*/derived/evidence\_index.md |
| tt\_register.json | evidence/\_acceptance/wp010/\*\*/derived/tt\_register.json |
| pr check-runs/statuses | evidence/\_acceptance/wp010/\*\*/pr/\*.json |
| mg runs/check-runs/statuses | evidence/\_acceptance/wp010/\*\*/mg/\*.json |
| (optional) bundle\_audit.json | evidence/\_acceptance/wp010/\*\*/pack/bundle\_audit.json |

### **16.4 Failure → Route Table（症狀→下一步 WP；不得越界硬修）**

\[ANCHOR:OMOC-WP010-16-FAILURE-ROUTE\]

| symptom | likely\_cause | immediate\_action | route\_out |
| ----- | ----- | ----- | ----- |
| PR 顯示 “Expected — Waiting for status to be reported” | required check 未回報/被 skipped/名稱不匹配 | 先抓 check-runs/statuses（§13.5）存證；看 diff missing | WP-011（Always-Report）/ WP-013（rulesets/required checks） |
| MQ 啟用但 grep 不到 merge\_group | workflow 未訂閱 merge\_group | FAIL\_CLOSED \+ TT-WEB-DRIFT-MG-001 | WP-012 / WP-013 |
| observed.pull\_request 空 | checks 根本沒跑/權限不足/抓錯 SHA | 換 PR、確認 CI 跑過；存證 | （權限）Route-out；（skipped）WP-011 |
| diff.extra 很多 | repo 有額外 checks/或名稱變動 | 先判定是否應納入 canonical；若 rename → alias 流程 | WP-013（治理變更） |
| diff.missing 包含 ci / omoc-gate | required check 名稱不精確或 job 名變了 | 檢查 workflow/job rename；必要時 alias \+ evidence | WP-011/012/013（依原因） |

---

## **17\) Counterexamples（破壞性反例測試）**

\[ANCHOR:OMOC-WP010-17-COUNTEREXAMPLES\]

目的：把「看起來像 drift」與「其實是平台行為」分開，避免錯修與越界。

1. **strict / up-to-date 造成重跑與狀態重算**  
* 反例：同一 PR 因 base 更新而重跑，context 可能短時間呈現不同狀態；若未記錄時間線，易誤判為 drift。  
* 要求：在 `evidence/_meta/` 記錄 base 更新與重跑次數（TT-WEB-DRIFT-STRICT-001）。  
2. **job skipped / conditional matrix 造成 required checks 不回報**  
* 反例：workflow 觸發但 job 因條件被 skipped；GitHub 仍要求該 check，結果 waiting。  
* 行動：Route WP-011（always-report wrapper）  
3. **workflow/job rename（context rename drift）**  
* 反例：把 job 名從 `omoc-gate` 改成 `omoc_gate`，context 變成新名字；diff.missing/extra 同時出現。  
* 行動：只能以 evidence 建 alias\_map（TT-WP010-ALIAS-001），不得拍腦袋。  
4. **merge\_group 未觸發（MQ 場景）**  
* 反例：MQ 已啟用，但 workflow 沒有 merge\_group；PR checks 會過，MG 不回報，queue 卡住。  
* 行動：FAIL\_CLOSED \+ TT-WEB-DRIFT-MG-001；Route WP-012/013。  
5. **rulesets：checks vs statuses 型態差異**  
* 反例：rulesets 要求的是 status contexts，但你只抓 check-runs（或反之）；observed 缺口看似 drift。  
* 行動：TT-WEB-DRIFT-RULESET-001；Route WP-013（治理/觀測策略統一）。

---

## **18\) SECURITY（secrets/forbidden patterns；命中即 FAIL\_CLOSED）**

\[ANCHOR:OMOC-WP010-18-SECURITY\]

### **18.1 Forbidden Patterns（Fail-Closed）**

\[ANCHOR:OMOC-WP010-18-FORBIDDEN\]

* **硬規則**：Evidence bundle 必明示 forbidden patterns 檢核點；命中即 FAIL\_CLOSED。  
* 最小要求：`bundle_audit.json`（或等價）中 `forbidden=0`／`result=PASS`。

### **18.2 最小掃描命令（可在 Quickpath 後加跑）**

\[ANCHOR:OMOC-WP010-18-SCAN-CMDS\]

\# 粗掃：常見 token/secret 字樣（只做 Fail-Closed 前哨；真正規則以 skills/安全工具為準）  
rg \-n \--hidden \--no-ignore-vcs "(ghp\_|github\_pat\_|BEGIN PRIVATE KEY|AKIA|SECRET|TOKEN=)" "$WP010\_EVD" && {  
  echo "FORBIDDEN HIT \=\> FAIL\_CLOSED"  
  exit 2  
} || true

cat \> "$WP010\_EVD/pack/bundle\_audit.json" \<\<'JSON'  
{ "schema\_version":"v1", "result":"PASS", "forbidden":0, "notes":\[\] }  
JSON

若你已掛載 skills：優先使用其 `bundle_audit` / pack 流程（確保與 SSOT 一致）。

---

## **19\) Traceability（Locator Proof Registry / SSOT Coverage Map / Legacy Coverage Checklist）**

\[ANCHOR:OMOC-WP010-19-TRACEABILITY\]

### **19.1 Locator Proof Registry（本 WP 的 SSOT 定位點）**

\[ANCHOR:OMOC-WP010-19-LOCATOR-PROOF\]

| ssot | locator | why\_used |
| ----- | ----- | ----- |
| 藍圖 | `OMOC-BP-1000`（10.1/10.2） | required checks 命名契約 \+ evidence min output set |
| RBWI | `Appendix CM-1`（interface contract：required\_checks\_contract / evidence\_min\_set） | canonical 清單與 evidence minset |
| skills | `checks_manifest.json schema` / `SK06` / `SK08` | schema/diff/verdict/pack/forbidden 規則對齊 |
| WP總表 | `WP-010 row` / `CR-GATE-REQCHECK-001` / `CR-MQ-PROBE-001` / `TT-ERCC-001` | gates/closure/TT 模版與驗收門檻 |

### **19.2 SSOT Coverage Map（要求→來源）**

\[ANCHOR:OMOC-WP010-19-SSOT-COVERAGE\]

* Required Checks 名稱契約：藍圖 \+ RBWI  
* checks\_manifest schema：skills \+ WP總表  
* diff/verdict/TT：skills \+ WP總表  
* merge\_group 覆蓋：藍圖 \+ WP總表（WEB 僅 SUPPORT，見 §21）  
* evidence minset \+ forbidden：藍圖 \+ RBWI \+ skills

### **19.3 Legacy Coverage Checklist（舊版 WP-010 → 新版覆蓋）**

\[ANCHOR:OMOC-WP010-19-LEGACY-COVERAGE\]

| legacy\_topic | new\_section | coverage\_status |
| ----- | ----- | ----- |
| Authority Stack / Files-first / Fail-Closed | §5/§15 | COVERED |
| checks\_manifest 合約化 | §12/§13/§16 | COVERED \+ 強化（schema/TT/Quickpath） |
| gates / closure / TT | §15/§20 | COVERED \+ 對齊 WP總表 r2 |
| acceptance path | §16 | FIXED（原缺口 BLOCKER） |
| counterexamples | §17 | FIXED（原缺口 MAJOR） |
| web drift 風險 | §21 \+ TT-WEB-DRIFT-\* | FIXED（原缺口 BLOCKER） |
| forbidden/secrets | §18 | FIXED（Fail-Closed 明示） |
| WI mapping | §14 | FIXED（原缺口 PATCH-WP010-006） |

---

## **20\) TT Register（CR\_OPEN 全量暫結案：至少 TEMP\_CLOSED）**

\[ANCHOR:OMOC-WP010-20-TT-REGISTER\]

本表全量吸收 REVIEW 的 TT，並補齊必要欄位（closure\_criteria / retest\_steps / evidence\_expected）。  
所有 CR\_OPEN（若存在）一律轉入 TT，狀態至少 TEMP\_CLOSED。

| tt\_id | title | reason | status | closure\_criteria | retest\_steps | owner\_role | related\_req/gate | evidence\_expected |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| TT-ERCC-001 | Required checks contract mismatch | diff 非空或 alias 未裁決 | TEMP\_CLOSED | diff cleared 或 alias\_map \+ evidence 完成裁決 | 重跑 §16 | owner:repo-ci | CR-GATE-REQCHECK-001 | checks\_manifest \+ raw dumps |
| TT-WP010-ACC-001 | 缺最小可行驗收閉環（Quickpath） | REVIEW BLOCKER | TEMP\_CLOSED→RESOLVED(by this doc) | 本檔 §16 已提供可回放命令與產物表 | 實跑 §16 並產出 evidence | owner:rbwi-engineer | WP010-REQ-003/004/006 | evidence/\_acceptance/wp010/\* |
| TT-WP010-SSOT2-001 | 關鍵結論單源風險（required contexts contract） | 未達 ≥2 NORMATIVE | TEMP\_CLOSED→RESOLVED(partial) | 本檔 Matrix 已對關鍵結論補雙源；若你更換 canonical 清單需再次檢核 | 重跑 Matrix 檢查 ssot\_sources | owner:auditor | RQ-SSOT | locator\_proof x2 |
| TT-WP010-VDRIFT-001 | WP總表 r1→r2 漂移未裁決 | 舊版引用錯版本 | TEMP\_CLOSED→RESOLVED(by this doc) | 本檔已鎖定 WP總表 v4.0.1-r2 並更新 gates/closure | Version Lock 自稽核 | owner:doc-maintainer | Global | Doc Inventory \+ Version Lock |
| TT-WP010-ROUTE-001 | 缺條件式路由表（waiting/merge\_group 不回報） | REVIEW 指出 | TEMP\_CLOSED→RESOLVED(by this doc) | §16.4 已提供 Failure→Route Table | 以反例測試驗證路由 | owner:scope-lock | RQ-Route | route evidence |
| TT-WP010-OBS-PR-001 | PR observed contexts 無法保證可取得 | observed 空 ⇒ 不可驗收 | TEMP\_CLOSED（未實跑前） | PR observed 非空 \+ raw dumps 保存 | 跑 §13.5 | owner:repo | GATE-REQCHECK-OBSERVED | pr/check\_runs \+ statuses |
| TT-WP010-OBS-MG-001 | merge\_group observed 策略未收斂 | MQ 場景 waiting 風險 | TEMP\_CLOSED | 若 MQ 啟用：mg observed 非空；未啟用：明示不驗 | 跑 §16 Route B 或確認未啟用 | owner:repo/org | CR-MQ-PROBE-001 | mg/runs\_merge\_group.json |
| TT-WP010-ALIAS-001 | alias 缺證據鏈 | rename drift 可能拍腦袋 | TEMP\_CLOSED | alias\_map 每筆可回指原始 evidence | 重新觀測 \+ 更新 alias\_map | owner:repo | WP010-REQ-005 | evidence\_index 回指 |
| TT-WP010-EVID-001 | evidence bundle forbidden 檢核點未明示 | secrets 風險 | TEMP\_CLOSED→RESOLVED(by this doc) | §18 已明示 forbidden=0 Fail-Closed | 跑 §18 scan \+ 生成 bundle\_audit | owner:security | CR-EVID-MINSET-001 | bundle\_audit.json |
| TT-WP013-LOC-001 | WP-013 接口正文不可定位 | 相鄰 WP 依賴裁決不完整 | TEMP\_CLOSED | 補 WP-013 索引/接口條款定位 | Route：在 WP-013 修補 | owner:auditor | RQ-6 | locator\_proof |

### **WEB-DRIFT TT（必備）**

| tt\_id | title | status | closure\_criteria | evidence\_expected |
| ----- | ----- | ----- | ----- | ----- |
| TT-WEB-DRIFT-MG-001 | merge\_group 必觸發/必回報風險條款化 | TEMP\_CLOSED | MQ enabled 時：workflow 含 merge\_group 且 mg observed 可得；否則 FAIL\_CLOSED | WEBREF:W1/W2 \+ mg evidence |
| TT-WEB-DRIFT-STRICT-001 | strict/up-to-date 重跑誤判風險 | TEMP\_CLOSED | 在 evidence/\_meta 記錄 base 更新/重跑次數，反例測試可回放 | WEBREF:W4 |
| TT-WEB-DRIFT-RULESET-001 | rulesets checks vs statuses 型態差異 | TEMP\_CLOSED | 觀測策略同時覆蓋 check-runs \+ statuses；差異被記錄 | WEBREF:W5 |

---

## **21\) Web Evidence Appendix（SUPPORT-only；不得升格為規範）**

\[ANCHOR:OMOC-WP010-21-WEB-EVIDENCE\]

規則：每筆含 title/publisher/access\_date/accessed\_at(+08)/用途/回指正文 anchor（ref\_id）。  
baseline\_web\_date=2026-02-14（本專案基準）；以下 accessed\_at 為本次查詢時間點（漂移風險記錄）。

| web\_id | title | publisher | access\_date | accessed\_at(+08:00) | purpose（SUPPORT-only） | ref\_anchor |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| W1 | Managing a merge queue | GitHub Docs | 2026-02-19 | 2026-02-19T01:18:18+08:00 | merge queue 與 merge\_group 觸發/回報風險（WEB-DRIFT-MG） | \#omoc-wp010-16-route-b ([GitHub Docs](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/configuring-pull-request-merges/managing-a-merge-queue)) |
| W2 | Events that trigger workflows | GitHub Docs | 2026-02-19 | 2026-02-19T01:18:18+08:00 | merge\_group event 官方事件定義（WEB-DRIFT-MG） | \#omoc-wp010-16-route-b ([GitHub Docs](https://docs.github.com/actions/using-workflows/events-that-trigger-workflows)) |
| W3 | Troubleshooting required status checks | GitHub Docs | 2026-02-19 | 2026-02-19T01:18:18+08:00 | waiting/required status checks 排障參考（僅 SUPPORT） | \#omoc-wp010-16-failure-route ([GitHub Docs](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/collaborating-on-repositories-with-code-quality-features/troubleshooting-required-status-checks)) |
| W4 | About protected branches | GitHub Docs | 2026-02-19 | 2026-02-19T01:18:18+08:00 | strict/up-to-date 行為漂移風險（WEB-DRIFT-STRICT） | \#omoc-wp010-17-counterexamples ([GitHub Docs](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)) |
| W5 | Available rules for rulesets | GitHub Docs | 2026-02-19 | 2026-02-19T01:18:18+08:00 | rulesets required status checks 型態差異（WEB-DRIFT-RULESET） | \#omoc-wp010-17-counterexamples ([GitHub Docs](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-rulesets/available-rules-for-rulesets)) |
| W6 | Expected — Waiting for status to be reported（community case） | GitHub Community | 2026-02-19 | 2026-02-19T01:18:18+08:00 | 常見症狀樣貌（僅 SUPPORT；不得當規範） | \#omoc-wp010-16-failure-route ([GitHub](https://github.com/orgs/community/discussions/26698)) |

---

## **22\) Glossary & Normalization（術語/檔名/欄位一致化）**

\[ANCHOR:OMOC-WP010-22-GLOSSARY\]

| term | normalized\_form | meaning |
| ----- | ----- | ----- |
| required checks / required contexts | required checks（context names） | GitHub 用於 gating 的狀態檢查名稱（exact match） |
| context name | `<workflow_name> / <job_name>` | Required Checks 命名契約的最小單位 |
| checks\_manifest.json | checks\_manifest.json | 合約：expected/observed/diff/verdict/tt |
| check-runs | check-runs | GitHub Checks API 的 runs（常見於 Actions） |
| statuses | commit statuses | GitHub Status API 的 contexts |
| merge queue | merge queue | 需要 merge\_group 覆蓋的情境 |
| merge\_group | merge\_group | GitHub Actions 事件；MQ 下用於觸發 CI |
| TT | Test Tracking | 缺口追蹤；FAIL\_CLOSED/TEMP\_CLOSED 入口 |

---

## **23\) Change Log（舊版→新版；含 PATCH-WP010-001\~006 全量落地）**

\[ANCHOR:OMOC-WP010-23-CHANGE-LOG\]

### **23.1 修補總覽（對應 REVIEW）**

* **PATCH-WP010-001（Version Lock）**：已新增 §7 Version Lock Table（含 decision/tt），並改用 WP總表 r2（消除 r1 漂移）。  
* **PATCH-WP010-002（Anchor Registry）**：已新增 §4 Anchor Registry（req\_id→anchor→evidence）。  
* **PATCH-WP010-003（Acceptance Quickpath）**：已新增 §16 Route A/B（命令序列＋產物表＋失敗路由）。  
* **PATCH-WP010-004（Counterexamples）**：已新增 §17（strict/up-to-date、skipped、rename、MG 未觸發、rulesets 型態差異）。  
* **PATCH-WP010-005（Web Drift TT 化）**：已新增 §21（≥6）＋ §20 WEB-DRIFT TT。  
* **PATCH-WP010-006（WI mapping）**：已新增 §14 WI Mapping \+ 任務卡。

### **23.2 BLOCKER/MAJOR 修補對應**

* F-WP010-BLK-001：已以 §16 完成（最小可回放閉環）  
* F-WP010-BLK-002：已在 §10/§11 針對關鍵結論補雙源；不足者 TT 化  
* F-WP010-BLK-003：已以 WEB-DRIFT TT \+ Route B Fail-Closed 條款化  
* F-WP010-BLK-004：已以 §7 Version Lock \+ Doc Inventory 修補  
* F-WP010-MAJ-001：Anchor Registry 已補  
* F-WP010-MAJ-002：Counterexamples 已補（TT-WEB-DRIFT-STRICT-001）

---

## **24\) machine\_summary.json（純 JSON；放文件最後；可機讀）**

\[ANCHOR:OMOC-WP010-24-MACHINE-SUMMARY\]

{  
  "doc\_id": "OMOC\_WP-010+RB+WI",  
  "version": "v4.0.1-r2",  
  "phase": "Phase-G/G1",  
  "generated\_at": "2026-02-19T01:18:18+08:00",  
  "timezone": "Asia/Taipei",  
  "baseline\_web\_date": "2026-02-14",  
  "mode": "Files-first \+ WTNA (Web SUPPORT-only)",  
  "supersedes": "/mnt/data/OMOC\_WP-010+RB+WI.md",  
  "overall\_doc\_verdict": "TEMP\_CLOSED",  
  "requirements": \[  
    "WP010-REQ-001a",  
    "WP010-REQ-001b",  
    "WP010-REQ-002",  
    "WP010-REQ-003a",  
    "WP010-REQ-003b",  
    "WP010-REQ-004",  
    "WP010-REQ-005",  
    "WP010-REQ-006",  
    "WP010-REQ-007",  
    "WP010-REQ-008"  
  \],  
  "gates": \[  
    "GATE-REQCHECK-CANONICAL",  
    "GATE-REQCHECK-OBSERVED",  
    "CR-GATE-REQCHECK-001",  
    "CR-MQ-PROBE-001",  
    "CR-EVID-MINSET-001"  
  \],  
  "patches\_applied": \[  
    "PATCH-WP010-001",  
    "PATCH-WP010-002",  
    "PATCH-WP010-003",  
    "PATCH-WP010-004",  
    "PATCH-WP010-005",  
    "PATCH-WP010-006"  
  \],  
  "tt\_register": {  
    "count": 13,  
    "web\_drift\_tt": \[  
      "TT-WEB-DRIFT-MG-001",  
      "TT-WEB-DRIFT-STRICT-001",  
      "TT-WEB-DRIFT-RULESET-001"  
    \],  
    "must\_exist": \[  
      "TT-ERCC-001",  
      "TT-WP010-OBS-PR-001",  
      "TT-WP010-OBS-MG-001",  
      "TT-WP010-ALIAS-001"  
    \]  
  },  
  "acceptance\_quickpath": {  
    "route\_a": "PR-based observation \+ checks\_manifest \+ diff/verdict \+ tt\_register under evidence/\_acceptance/wp010/",  
    "route\_b": "If merge queue enabled: require merge\_group trigger coverage, collect merge\_group evidence, otherwise FAIL\_CLOSED and route-out to WP-012/013"  
  },  
  "web\_evidence": {  
    "support\_only": true,  
    "count": 6,  
    "items": \[  
      "W1",  
      "W2",  
      "W3",  
      "W4",  
      "W5",  
      "W6"  
    \]  
  }  
}

