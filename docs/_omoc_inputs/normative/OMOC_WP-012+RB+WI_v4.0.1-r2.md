# **《OMOC\_WP-012+RB+WI》— WP-012（Phase-G/G3）merge\_group Trigger Alignment \+ MQ Probe（v4.0.1-r2 對齊版）**

* doc\_id: `OMOC_WP-012+RB+WI`  
* doc\_date: `2026-02-19`  
* generated\_at: `2026-02-19T10:22:55+08:00`  
* blueprint\_version: `v4.0.1-r1`  
* wp\_table\_version (N4): `v4.0.1-r2`  
* stance: **Fail-Closed / No-Source-No-Norm / Web SUPPORT-only**

---

## **A) Header：對齊聲明與 Authority Stack**

### **A.1 對齊聲明（Alignment）**

本文件工程性展開 WP-012（Phase-G/G3）：**merge\_group 觸發對齊**與**MQ Probe**（Mode A / Mode B）。  
任何「規範性」敘述（MUST/SHALL/不得/FAIL\_CLOSED/TEMP\_CLOSED 的裁決）僅以 **NORMATIVE Authority Stack** 可定位正文為準；外部網路資訊一律 **SUPPORT-only**（只能放在 Web Evidence Appendix）。

冷幽默一句（不影響規範）：如果 “Waiting for status …” 看起來像量子態，那不是 GitHub 在搞玄學，是 gate 還不夠硬。

### **A.2 Authority Stack（由高到低；No-Source-No-Norm）**

1. `N1` `/mnt/data/OMOC_藍圖_v4.0.1-r1.md`  
2. `N2` `/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md`  
3. `N3` `/mnt/data/OMOC_施工skills_合冊_v4.0.1-r2.md`  
4. `N4` `/mnt/data/OMOC_實作+WP總表_v4.0.1-r2.md` ✅（本版已完成 r2 對齊；嚴禁再出現 r1）  
5. `N5` 本文件《OMOC\_WP-012+RB+WI》（WP-012 的 Runbook \+ WI；本版輸出）

### **A.3 Scope Boundary（嚴格不越界）**

WP-012 **只**負責：

* 對齊 `merge_group` 觸發與 required checks 回報的「可驗收治理」  
* 進行 **MQ Probe**：  
  * **Mode A（runtime）**：在 *MQ 已啟用* 的前提下，取得 merge\_group run 的可觀測證據  
  * **Mode B（static）**：在 *MQ 未啟用* 或無法進場 runtime 的前提下，做靜態檢查（**只能 TEMP\_CLOSED**）

WP-012 **不**做（越界即 FAIL\_CLOSED）：

* 不啟用 Merge Queue（那是 WP-013）  
* 不用「改 rulesets required contexts」或改 UI contexts 來繞過回報問題（偵測到即 FAIL\_CLOSED）

---

## **B) TOC（含錨點）＋導讀（Anti-miss）**

### **B.1 Anchor Naming Convention**

* 本文件 anchor 格式：`[ANCHOR:OMOC-WP-012-xxxx]`  
* 任何 gate / TT / req\_id 均需可在本文件內被 `rg`/搜尋定位

### **B.2 目錄**

* \[ANCHOR:OMOC-WP-012-0000\] [導讀（Reader Guide / Anti-miss）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6996721b-50c8-83a4-b21e-3c0b38ea3d42#anchor-omoc-wp-012-0000)  
* \[ANCHOR:OMOC-WP-012-0100\] [名詞與契約（WP / Runbook / WI / Evidence / TT）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6996721b-50c8-83a4-b21e-3c0b38ea3d42#anchor-omoc-wp-012-0100)  
* \[ANCHOR:OMOC-WP-012-0200\] [Doc Inventory（掃描清單）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6996721b-50c8-83a4-b21e-3c0b38ea3d42#anchor-omoc-wp-012-0200)  
* \[ANCHOR:OMOC-WP-012-0300\] [Locator Proof Registry（LP）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6996721b-50c8-83a4-b21e-3c0b38ea3d42#anchor-omoc-wp-012-0300)  
* \[ANCHOR:OMOC-WP-012-0400\] [Coverage Map（子要求分解 \+ ≥2 NORMATIVE 交叉驗證）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6996721b-50c8-83a4-b21e-3c0b38ea3d42#anchor-omoc-wp-012-0400)  
* \[ANCHOR:OMOC-WP-012-0500\] [Gates（Entry/Exit/DoD）+ Evidence Minset（含 bundle）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6996721b-50c8-83a4-b21e-3c0b38ea3d42#anchor-omoc-wp-012-0500)  
* \[ANCHOR:OMOC-WP-012-0600\] [Runbook（可重跑）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6996721b-50c8-83a4-b21e-3c0b38ea3d42#anchor-omoc-wp-012-0600)  
* \[ANCHOR:OMOC-WP-012-0700\] [WI（UI/CLI 工作指導書）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6996721b-50c8-83a4-b21e-3c0b38ea3d42#anchor-omoc-wp-012-0700)  
* \[ANCHOR:OMOC-WP-012-0800\] [Traceability（對齊 WP-010/011/013 與 Skills）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6996721b-50c8-83a4-b21e-3c0b38ea3d42#anchor-omoc-wp-012-0800)  
* \[ANCHOR:OMOC-WP-012-0900\] [TT Register（CR\_OPEN=0）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6996721b-50c8-83a4-b21e-3c0b38ea3d42#anchor-omoc-wp-012-0900)  
* \[ANCHOR:OMOC-WP-012-1000\] [Patch Log / Change Log（PATCH-WP012-001..006）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6996721b-50c8-83a4-b21e-3c0b38ea3d42#anchor-omoc-wp-012-1000)  
* \[ANCHOR:OMOC-WP-012-1100\] [Web Evidence Appendix（SUPPORT-only）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6996721b-50c8-83a4-b21e-3c0b38ea3d42#anchor-omoc-wp-012-1100)  
* \[ANCHOR:OMOC-WP-012-1200\] [Self-Audit（必填）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6996721b-50c8-83a4-b21e-3c0b38ea3d42#anchor-omoc-wp-012-1200)  
* \[ANCHOR:OMOC-WP-012-1300\] [machine\_summary（JSON；不可缺）](https://chatgpt.com/g/g-p-6994674c9ad48191b9fb64cd6d1ebed7-spartoi-skills/c/6996721b-50c8-83a4-b21e-3c0b38ea3d42#anchor-omoc-wp-012-1300)

---

## **\[ANCHOR:OMOC-WP-012-0000\] 導讀（Reader Guide / Anti-miss）**

### **你要先看哪裡（防漏章）**

1. **Gates**：`§E`（Entry/Exit/DoD）— 本文件所有 PASS/TEMP\_CLOSED/FAIL\_CLOSED 的裁決都在這裡「落地」  
2. **Coverage Map**：`§D` — 每個子要求都有 req\_id、成功定義、證據、≥2 NORMATIVE locator  
3. **Runbook/WI**：`§F/§G` — 直接可重跑（含反例驗收）  
4. **TT Register**：`§I` — 任何不確定/缺口全部落到 TT（**不得留下 CR\_OPEN**）

### **快速檢索指令（操作者用）**

\# 1\) 找 gate / TT / req\_id  
rg \-n "GATE-|TT-WP012-|TT-WP012|REQ-WP012-" \-S OMOC\_WP-012+RB+WI.md

\# 2\) 確認本文件絕無 N4=r1 殘留（阻斷級）  
rg \-n "實作\\+WP總表\_v4\\.0\\.1-r1|WP總表\_v4\\.0\\.1-r1" \-S OMOC\_WP-012+RB+WI.md && exit 1 || true

---

## **\[ANCHOR:OMOC-WP-012-0100\] 名詞與契約（WP / Runbook / WI / Evidence / TT）**

### **關鍵名詞**

* **merge\_group**：GitHub Actions 工作流觸發事件之一；用於 Merge Queue 產生的 merge group 檢查情境  
* **required checks**：分支規則/規則集要求必須回報的檢查（check run / status context）  
* **Waiting for status …**：常見症狀：required check 期待某個 context，但該 context 在 merge\_group 情境未被回報（或被 skip / cancelled）  
* **Mode A（runtime）**：實際抓到 merge\_group runs/結論的證據（可驗收閉環）  
* **Mode B（static）**：只做設定/工作流檢查；**不得當作 PASS**（當作 PASS \= FAIL\_CLOSED）

### **Evidence Contract（本 WP 的最小輸出）**

遵循藍圖的 Evidence Minimum Output Set（至少包含 `verdict.json / evidence_index.md / checks_manifest.json / evidence_bundle.tgz`），並在本 WP 追加 WP-012 的必需 evidence（見 §E.3）。

### **Fail-Closed 裁決語義**

* **FAIL\_CLOSED**：阻斷級；不得進入 WP-013（或不得宣告 G3 已完成）  
* **TEMP\_CLOSED**：暫時關閉；必須有 TT 與 closure criteria；不得宣告 PASS

---

## **\[ANCHOR:OMOC-WP-012-0200\] Doc Inventory（掃描清單）**

本表為「實際掃描到」之檔案清單；sha256 為可重現定位用。

| path | observed\_version | sha256 | key\_anchors / key\_sections | scan\_notes |
| ----- | ----- | ----- | ----- | ----- |
| `/mnt/data/OMOC_藍圖_v4.0.1-r1.md` | v4.0.1-r1 | `ccd7c311b11420652ac325b49ee6c317449d867b75b5c676ba641c0da17c6a33` | `[ANCHOR:OMOC-BP-1000]`（DoD/Required Checks/MQ 覆蓋要求） | N1（規範） |
| `/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md` | v4.0.1-r1 | `3fb8ea01b069a8f64f0183d8fc7678acf99b49adb4ef6a80a761997e1a2b44ca` | `[ANCHOR:OMOC-RBWI-G3]`（G3 merge\_group 觸發對齊）、`[ANCHOR:OMOC-RBWI-G2]`（G2 wrapper/回報衛生） | N2（規範） |
| `/mnt/data/OMOC_施工skills_合冊_v4.0.1-r2.md` | v4.0.1-r2 | `f3f4c5cae4b6ca928eee241dbb9854da9ef07eb0e211e513a01997ecd840ecab` | `<a id="omoc-skill-omoc-router">`、`<a id="omoc-skill-omoc-mq-merge-group-probe">` | N3（規範） |
| `/mnt/data/OMOC_實作+WP總表_v4.0.1-r2.md` | v4.0.1-r2 | `ffb92a86c26e12cc3d6bf492694fb81477f985f8f50d0744c4944dbdae1a49a9` | `§4 BK-004/BK-005`、`§5 Gate Registry`、`§8 WP Summary Table（WP-012 row）` | N4（規範；本版已對齊 r2） |
| `/mnt/data/OMOC_WP-012+RB+WI.md` | v4.0.1-r1 | `6c556747763d8020ae0c2a81baf6d1c0a9379d1301e5a6f804f32b62a258a35d` | 舊版（本次 superseded） | 僅作參考；不可再當目標版本 |
| `/mnt/data/OMOC_WP-012+RB+WI_審查報告.md` | 2026-02-17 | `6ba8b4e75d4cc160c529f4802270b06e25a4ce1f3f08d82dd3d1c00a963ceef9` | PATCH-WP012-001..006、TT Register | 本版已全量吸收並落地 |
| `/mnt/data/OMOC_WP-010+RB+WI_v4.0.1-r2.md` | v4.0.1-r2 | `f806dbb985fa9f8dc20c98dcba426ad5d9ba1dbbf1b45bcaa18baea3fc9dc5f3` | `[ANCHOR:WP010-REQ-003B]`（observed.merge\_group） | 依賴（checks\_manifest contract） |
| `/mnt/data/OMOC_WP-011+RB+WI_v4.0.1-r2.md` | v4.0.1-r2 | `e3efbb94e4b5c40f1fdceddce774e4b5d9659e2fa8d7d4566a7aefb429f0d621` | `12.3 Skip Hazard 規格`（paths/if/needs/concurrency） | 依賴（always-report / status hygiene） |
| `/mnt/data/OMOC_WP-013+RB+WI.md` | v4.0.1-r1（文件自述） | `33c4d2f5e1e76c33f099b032bf1c379f3b8a4c9cf0d7d66d3d06d826e9aeab32` | Scope / Non-goals | 僅作邊界參考；其 N4 仍需後續對齊（見 TT） |
| 其餘 WP-001..WP-009（r2） | v4.0.1-r2 | （略） | （略） | 本 WP 主要接口在 WP-010/011/013；其餘僅作全域一致性對照 |

---

## **\[ANCHOR:OMOC-WP-012-0300\] Locator Proof Registry（LP）**

定位策略：`doc_path + line_range + anchor_or_heading`。  
若你要用本文件做稽核，請直接跳到 LP 對照 N1\~N4 的「可定位正文」。

| lp\_id | source | doc\_path | locator (line\_range \+ anchor/heading) | why\_it\_matters |
| ----- | ----- | ----- | ----- | ----- |
| LP-012-001 | N1 藍圖 | `/mnt/data/OMOC_藍圖_v4.0.1-r1.md` | L169-L177 `§10 DoD` \+ `[ANCHOR:OMOC-BP-1000]` | 定義：merge\_group 情境 required checks 必須可回報（Fail-Closed 根據） |
| LP-012-002 | N2 RBWI | `/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md` | L392-L409 `[ANCHOR:OMOC-RBWI-G3]`（G3：補 on: \[pull\_request, merge\_group\]） | G3 施工骨架（本 WP 的施工依據） |
| LP-012-003 | N3 skills | `/mnt/data/OMOC_施工skills_合冊_v4.0.1-r2.md` | L190-L214 `<a id="omoc-skill-omoc-router">`（router、OMOC\_MQ gating） | SK09/Router 的入口條件（缺失即 FAIL\_CLOSED 的一部分） |
| LP-012-004 | N3 skills | `/mnt/data/OMOC_施工skills_合冊_v4.0.1-r2.md` | L1276-L1315 `<a id="omoc-skill-omoc-mq-merge-group-probe">`（SK09） | MQ Probe 技能規格（Mode A 的工具依據） |
| LP-012-005 | N4 WP總表(r2) | `/mnt/data/OMOC_實作+WP總表_v4.0.1-r2.md` | L285-L290 `§4 Backup/Restore`（BK-004/BK-005） | 必備備份點與回滾證據命名 |
| LP-012-006 | N4 WP總表(r2) | `/mnt/data/OMOC_實作+WP總表_v4.0.1-r2.md` | L297-L305 `§5 Gate Registry`（GATE-MERGE\_GROUP-TRIGGER / MQ-PROBE） | gate\_id 與 gate\_contract\_hash（不得漂移） |
| LP-012-007 | N4 WP總表(r2) | `/mnt/data/OMOC_實作+WP總表_v4.0.1-r2.md` | L334-L349 `§8 WP Summary Table`（WP-012 row） | WP-012 定義、依賴、SK09 交叉描述（雙源定位） |
| LP-012-008 | WP-010 | `/mnt/data/OMOC_WP-010+RB+WI_v4.0.1-r2.md` | L282-L289 `[ANCHOR:WP010-REQ-003B]` | observed.merge\_group：MQ 未啟用時允許 TEMP\_CLOSED，但必路由 |
| LP-012-009 | WP-011 | `/mnt/data/OMOC_WP-011+RB+WI_v4.0.1-r2.md` | L322-L334 `12.3 Skip Hazard 規格` | required checks 不得被 paths/if/needs/concurrency 跳過（治理依據） |
| LP-012-010 | WP-013（邊界參考） | `/mnt/data/OMOC_WP-013+RB+WI.md` | L19-L25 `Scope/Goal`（merge queue/merge\_group） | 僅用於「不越界」與交接描述（非本 WP 的 N4） |

---

## **\[ANCHOR:OMOC-WP-012-0400\] Coverage Map（子要求分解 \+ ≥2 NORMATIVE 交叉驗證）**

規則：每個子要求至少提供 **2 個 NORMATIVE locator（LP）**；不足則必須 TT（TEMP\_CLOSED/FAIL\_CLOSED），不得硬宣告已確定。

| req\_id | requirement（本次必達） | success\_definition（可驗收） | required\_evidence | normative\_locators (≥2) | failure\_counterexample（反例） \+ gate |
| ----- | ----- | ----- | ----- | ----- | ----- |
| REQ-WP012-001 | N4 必須 r2；全文不得再引用 N4=r1 | `rg` 搜不到 `WP總表_v4.0.1-r1`；Authority Stack / Doc Inventory / machine\_summary 的 N4 全為 r2 | `scan_authority.log`（rg 結果） | LP-012-007 \+ LP-012-006 | 反例：文件內仍殘留 r1 路徑或 locator → **GATE-WP012-ENTRY-N4R2 FAIL\_CLOSED** |
| REQ-WP012-010 | 必須存在 merge\_group 觸發的 workflow（至少涵蓋 required checks） | `.github/workflows` 中 required checks workflow 對 `on: merge_group` 有明確觸發；且不會因 filters 導致整體 skip | `workflows_merge_group_scan.log` \+ `workflows_required_checks_map.json` | LP-012-001 \+ LP-012-002 \+ LP-012-006 | 反例：只有 `pull_request` 沒有 `merge_group` → MQ 進場後 expected 卻等不到 → **GATE-MERGE\_GROUP-TRIGGER FAIL\_CLOSED** |
| REQ-WP012-020 | merge\_group `types: [checks_requested]` 的採用治理（不得腦補） | 若 workflow 使用 `types`：必有驗收方法與 route-out；若未使用：必證明仍能被 merge\_group 觸發 | `merge_group_types_scan.log` \+（Mode A 時）`runs_merge_group.json` | LP-012-001 \+ LP-012-002 | 反例：設了 types 但實際 event 未觸發（或 drift） → **GATE-MERGE\_GROUP-TYPES TEMP\_CLOSED \+ TT-WP012-TRIGGER-TYPES-001** |
| REQ-WP012-030 | required checks 不得因 paths/paths-ignore/if/needs 造成「不回報」 | 任意變更（含 docs-only）仍可觀測 required checks 的回報狀態（成功/失敗/中止均有可見結論或 wrapper 結論） | `pathfilter_scan.log` \+ `wrapper_presence.log` \+ 1 次反例驗收記錄 | LP-012-001 \+ LP-012-009 | 反例：paths-ignore 導致整個 workflow skipped → GitHub 仍等待 → **GATE-NO-SKIP-REQUIRED-CHECKS FAIL\_CLOSED** |
| REQ-WP012-040 | concurrency / cancel-in-progress 不得取消掉應回報的 merge\_group run | 若存在 concurrency：需證據顯示 merge\_group runs 不被互相取消；若取消發生：必可稽核並有裁決/route-out | `concurrency_scan.log` \+ `runs_merge_group.json`（Mode A） | LP-012-001 \+ LP-012-009 | 反例：push 與 merge\_group 共用同一 concurrency group，cancel-in-progress 取消其中之一 → **GATE-CONCURRENCY-NO-CANCEL FAIL\_CLOSED / TEMP\_CLOSED（依裁決規則）** |
| REQ-WP012-050 | Mode B 永遠不得當 PASS；僅 TEMP\_CLOSED | 任意輸出若只有 Mode B 證據：verdict 必為 TEMP\_CLOSED，且 TT 清楚寫明 closure | `verdict.json`（ModeB\_only=true） | LP-012-008 \+ LP-012-006 | 反例：用 Mode B 宣告 PASS → **GATE-MODEB-NO-PASS FAIL\_CLOSED** |
| REQ-WP012-060 | Mode A（runtime）取得 merge\_group runs 證據（MQ 已啟用時） | `runs_merge_group.json` 非空，且 `checks_manifest.json.observed.merge_group` 非空；能對應到 required checks 回報 | `runs_merge_group.json` \+ `checks_manifest.json` | LP-012-008 \+ LP-012-004 \+ LP-012-006 | 反例：MQ 已啟用但 observed.merge\_group 仍空 → **GATE-MQ-PROBE-RUNTIME FAIL\_CLOSED** |
| REQ-WP012-070 | 禁止靠改 rulesets required contexts 繞過（要可驗收） | 任何宣告「修好了」必附 rulesets snapshot/diff，且能判定是否屬繞過 | `BK-004_rulesets_before.json` \+ `rulesets_after.json` \+ diff | LP-012-005 \+ LP-012-001 | 反例：只改 UI contexts，workflow 仍不觸發 merge\_group → **GATE-ANTI-BYPASS-RULESETS FAIL\_CLOSED** |
| REQ-WP012-080 | SK09/Router 交叉支撐補強（缺失即 FAIL\_CLOSED 的入口條件） | WP-012 內可定位 SK09 locator；且 N4（WP-012 row）亦可定位到 SK09 依賴敘述 | `skill_presence.log` \+ locator 對照 | LP-012-003 \+ LP-012-004 \+ LP-012-007 | 反例：工具不存在或 OMOC\_MQ gating 未滿足卻硬跑 Mode A → **GATE-SK09-ENTRY FAIL\_CLOSED** |

---

## **\[ANCHOR:OMOC-WP-012-0500\] Gates（Entry/Exit/DoD）+ Evidence Minset（含 bundle）**

### **E.1 Gate Registry（本 WP 使用的 gate\_id）**

規則：凡 N4 Gate Registry 已定義者，**gate\_id 與 gate\_contract\_hash 不得漂移**（LP-012-006）。

**N4 Canonical（不得漂移）**

* `GATE-MERGE_GROUP-TRIGGER` `gate_contract_hash=sha256:7f4d...`（見 LP-012-006）  
* `GATE-MQ-PROBE-RUNTIME` `gate_contract_hash=sha256:1aa9...`（見 LP-012-006）  
* `GATE-MQ-PROBE-STATIC` `gate_contract_hash=sha256:74bc...`（見 LP-012-006）

**WP-012 Local Gates（本文件新增；不冒充 N4）**

* `GATE-WP012-ENTRY-N4R2`（阻斷級）  
* `GATE-MERGE_GROUP-TYPES`（採用 types 治理；SUPPORT-only 風險 → TT）  
* `GATE-NO-SKIP-REQUIRED-CHECKS`（paths/if/needs 治理；對齊 WP-011）  
* `GATE-CONCURRENCY-NO-CANCEL`（concurrency/cancel 治理；對齊 WP-011）  
* `GATE-MODEB-NO-PASS`（Mode B 防誤判；阻斷級）  
* `GATE-ANTI-BYPASS-RULESETS`（反繞過；阻斷級）  
* `GATE-SK09-ENTRY`（SK09/Router 入口條件；阻斷級）

若未來要把 Local Gates 提升進 N4：另開 TT（type=ALIGN）由 SSOT Curator 處理；本 WP 不越界代替 N4。

---

### **E.2 Entry Criteria（進場門檻）**

| gate\_id | rule | verdict | counterexample（反例） | evidence |
| ----- | ----- | ----- | ----- | ----- |
| GATE-WP012-ENTRY-N4R2 | 本文件不得再引用 `OMOC_實作+WP總表_v4.0.1-r1`（全文） | FAIL\_CLOSED | 仍殘留 r1 路徑或 locator | `scan_authority.log`（rg 結果） |
| GATE-SK09-ENTRY | 若要跑 Mode A：必須滿足 Router 的 OMOC\_MQ gating（或等效），且 skills 中 SK09 可定位存在 | FAIL\_CLOSED | OMOC\_MQ=0 卻硬跑 Mode A；或 SK09 不存在 | `skill_presence.log` \+ Router/Skill locator |
| GATE-NO-SKIP-REQUIRED-CHECKS（Entry 部分） | required checks 的 workflow/job 不得被 paths/if/needs 直接整體 skip；若需條件化，必有 WP-011 always-report wrapper 保底 | FAIL\_CLOSED | docs-only 變更導致 required workflow skipped，GitHub 等不到回報 | `wrapper_presence.log` \+ 反例驗收證據 |

---

### **E.3 Exit Criteria（出場門檻）與 DoD**

**WP-012 的最終裁決（verdict）僅允許下列兩種：**

* **PASS（允許交接到 WP-013）**：必須同時滿足  
  * `GATE-MERGE_GROUP-TRIGGER = PASS`  
  * `GATE-NO-SKIP-REQUIRED-CHECKS = PASS`  
  * `GATE-CONCURRENCY-NO-CANCEL = PASS`（或依裁決規則允許但必有證據與不影響 required checks 回報）  
  * `GATE-MQ-PROBE-RUNTIME = PASS`（Mode A）  
  * `GATE-ANTI-BYPASS-RULESETS = PASS`  
* **TEMP\_CLOSED（不得交接；不得宣告完成）**：只要發生任一情形  
  * 只有 Mode B（靜態）而無 Mode A runtime evidence  
  * merge\_group.types 的行為仍屬 SUPPORT-only 且未完成本 WP 的驗收/route-out  
  * 任一 required evidence 無法取得，但已建立 TT 與 closure criteria

**硬性 DoD（缺一即 FAIL\_CLOSED）**：

* 必產出：`verdict.json / evidence_index.md / checks_manifest.json / evidence_bundle.tgz`（藍圖要求，見 LP-012-001）  
* 必產出：本 WP 的 Evidence Minset（下節）

---

### **E.4 Evidence Minimum Output Set（WP-012 Minset \+ bundle）**

目標：讓稽核者不用猜，也不用「相信你說的」，而是直接看證據。

#### **E.4.1 目錄結構（建議；可重跑）**

以 repo 根目錄為例：

evidence/  
  \_bk/  
    BK-004\_rulesets\_before.json  
    BK-005\_branch\_protection\_before.json  
    rulesets\_after.json  
    branch\_protection\_after.json  
  \_acceptance/  
    \<ts\>/  
      log/  
      json/  
      diff/  
      ui/  
      bundle/

#### **E.4.2 WP-012 必需輸出（最少）**

| artifact | must\_exist | purpose |
| ----- | ----- | ----- |
| `evidence/_acceptance/<ts>/log/scan_authority.log` | YES | 證明 N4=r2 且 r1=0（本文件自身稽核） |
| `evidence/_acceptance/<ts>/log/workflows_merge_group_scan.log` | YES | 列出所有 workflows 是否具 `on: merge_group`、是否含 `types` |
| `evidence/_acceptance/<ts>/log/pathfilter_scan.log` | YES | 列出 paths/paths-ignore/if/needs 等 skip 風險點 |
| `evidence/_acceptance/<ts>/log/concurrency_scan.log` | YES | 列出 concurrency/cancel-in-progress 風險點 |
| `evidence/_acceptance/<ts>/log/wrapper_presence.log` | YES | 證明 required checks 有 always-report/回報保底（WP-011 對齊） |
| `evidence/_bk/BK-004_rulesets_before.json` | YES | 反繞過基準（BK-004） |
| `evidence/_bk/rulesets_after.json` | CONDITIONAL | 若本次有改動任何 rulesets/分支規則（否則可不產出，但必寫明“未改”） |
| `evidence/_acceptance/<ts>/diff/rulesets_diff.txt` | CONDITIONAL | 若有 rulesets 變更，必提供 diff \+ 判定是否屬繞過 |
| `evidence/_acceptance/<ts>/json/runs_merge_group.json` | CONDITIONAL（Mode A） | Mode A runtime：列出 merge\_group runs（可稽核） |
| `checks_manifest.json`（repo 根） | YES | WP-010 合約；observed.merge\_group 用於閉環 |
| `evidence/_acceptance/<ts>/bundle/single_evidence_bundle.txt` | YES | 單檔 bundle 清單（利於上傳/驗收） |

---

## **\[ANCHOR:OMOC-WP-012-0600\] Runbook（可重跑）**

本 Runbook 以「不假設工具能力」為原則：任何未在 NORMATIVE 證實之操作（例如用 gh CLI 把 PR 加入 merge queue）一律 **TEMP\_CLOSED \+ TT**，並提供 UI route。

### **F.0 前置條件（Pre-flight）**

* 你已完成（或至少可證明存在）WP-010 的 `checks_manifest.json` 合約輸出（LP-012-008）  
* 你已完成 WP-011 的 always-report / status hygiene（LP-012-009）  
* 你在 repo root（含 `.github/workflows/`）

---

### **F.1 建立證據工作區（一次一個 timestamp）**

set \-euo pipefail

TS="$(date \-u \+%Y%m%dT%H%M%SZ)"  
mkdir \-p "evidence/\_acceptance/${TS}/"{log,json,diff,ui,bundle}  
mkdir \-p "evidence/\_bk"

echo "TS=${TS}" | tee "evidence/\_acceptance/${TS}/log/\_ts.txt"

---

### **F.2 阻斷級：確認本文件 N4=r2 且無 r1 殘留（GATE-WP012-ENTRY-N4R2）**

\# 這是對「本文件」做自檢（避免你把錯版規範拿去跑）  
rg \-n "OMOC\_實作\\+WP總表\_v4\\.0\\.1-r1|WP總表\_v4\\.0\\.1-r1" \-S OMOC\_WP-012+RB+WI.md \\  
  | tee "evidence/\_acceptance/${TS}/log/scan\_authority.log" && exit 1

echo "PASS: N4 r1 reference \= 0" | tee \-a "evidence/\_acceptance/${TS}/log/scan\_authority.log"

**裁決**：若掃到任何 r1 → **FAIL\_CLOSED**（不准往下跑）。  
**反例**：你覺得 “只是一行路徑沒差” → 這就是 drift 的起點；在稽核面前它差很多。

---

### **F.3 靜態掃描：merge\_group 觸發、types、paths/if/needs、concurrency**

\# 1\) merge\_group presence  
rg \-n "^\\s\*merge\_group\\s\*:" .github/workflows \-S \\  
  | tee "evidence/\_acceptance/${TS}/log/workflows\_merge\_group\_scan.log"

\# 2\) merge\_group types (checks\_requested) 掃描  
rg \-n "merge\_group\\s\*:\\s\*$|types\\s\*:\\s\*\\\[checks\_requested\\\]" .github/workflows \-S \\  
  | tee "evidence/\_acceptance/${TS}/log/merge\_group\_types\_scan.log"

\# 3\) paths / paths-ignore / if / needs 掃描  
rg \-n "^\\s\*(paths|paths-ignore|if|needs)\\s\*:" .github/workflows \-S \\  
  | tee "evidence/\_acceptance/${TS}/log/pathfilter\_scan.log"

\# 4\) concurrency / cancel-in-progress 掃描  
rg \-n "^\\s\*concurrency\\s\*:|cancel-in-progress" .github/workflows \-S \\  
  | tee "evidence/\_acceptance/${TS}/log/concurrency\_scan.log"

**裁決規則（Fail-Closed 優先）**：

* 找不到任何 `merge_group:` → `GATE-MERGE_GROUP-TRIGGER = FAIL_CLOSED`  
  * 反例：只有 PR checks，MQ 進場後 required checks context 會等不到（LP-012-001）  
* 看到 `paths-ignore`/全 workflow `if:`/`needs` 會導致回報 job 不執行 → `GATE-NO-SKIP-REQUIRED-CHECKS = FAIL_CLOSED`  
  * 反例：docs-only 變更被 ignore → workflow skipped → required check 不回報（LP-012-009）  
* 看到 `concurrency` 且 `cancel-in-progress: true`，且 concurrency group 可能在 `push` 與 `merge_group` 共用 → `GATE-CONCURRENCY-NO-CANCEL = FAIL_CLOSED` 或 **TEMP\_CLOSED（若你能提供 Mode A 證據證明不影響回報）**  
  * 反例：merge\_group 與 push 同時觸發，互相取消，GitHub UI 仍等待（必須有可稽核 run 證據）

---

### **F.4 required checks 必回報：對齊 WP-011 always-report（wrapper\_presence）**

本段只做「可觀測存在性」驗收；實作細節在 WP-011。你若找不到 wrapper，就別幻想 “應該會回報”。

\# 以你 repo 內的約定為準：搜尋 always-report / report / conclusion job  
rg \-n "always-report|always\\(\\)|report|status hygiene|conclusion" .github/workflows \-S \\  
  | tee "evidence/\_acceptance/${TS}/log/wrapper\_presence.log"

**裁決**：

* 若 required checks 對應 workflow/job 沒有任何 “回報保底” 機制（WP-011 的概念或等效機制） → `GATE-NO-SKIP-REQUIRED-CHECKS = FAIL_CLOSED`  
* 反例：你覺得 “我們 workflow 不會 skip” → 下一次加了 paths-ignore 就會；所以 gate 不接受賭徒心態。

---

### **F.5 反繞過：BK-004 / rulesets snapshot \+ diff（GATE-ANTI-BYPASS-RULESETS）**

規則：**任何“修好了”宣告**若牽涉 required checks，必能排除「只改 UI contexts」的繞過。

#### **F.5.1 BK-004：抓 rulesets before（建議用 gh api；若權限不足 → TT）**

\# 需要 gh auth 已登入，且具 repo 權限  
\# repo slug 例：OWNER/REPO  
REPO="${REPO:-$(gh repo view \--json nameWithOwner \-q .nameWithOwner)}"

\# rulesets snapshot (repo rulesets)  
gh api \-H "Accept: application/vnd.github+json" "/repos/${REPO}/rulesets" \\  
  | tee "evidence/\_bk/BK-004\_rulesets\_before.json" \> /dev/null

\# （可選）branch protection snapshot（命名對齊 BK-005；端點可能因 repo 設定而異）  
\# 取 default branch  
DEFAULT\_BRANCH="$(gh repo view \--json defaultBranchRef \-q .defaultBranchRef.name)"  
gh api \-H "Accept: application/vnd.github+json" "/repos/${REPO}/branches/${DEFAULT\_BRANCH}/protection" \\  
  | tee "evidence/\_bk/BK-005\_branch\_protection\_before.json" \> /dev/null

**裁決**：

* 若無法取得 snapshot（權限/端點差異）→ 開 TT（type=WEB/MISSING），本 WP 仍可做 trigger/skip/concurrency 治理，但 **不得宣告 anti-bypass PASS**。  
* 反例：你跳過 snapshot，後面又說 “沒有繞過” → 這種說法不可稽核，直接不採信。

#### **F.5.2 若有變更 rulesets：產出 after \+ diff**

\# after snapshot  
gh api \-H "Accept: application/vnd.github+json" "/repos/${REPO}/rulesets" \\  
  | tee "evidence/\_bk/rulesets\_after.json" \> /dev/null

\# diff（純文字即可；工具以可用者為準）  
diff \-u "evidence/\_bk/BK-004\_rulesets\_before.json" "evidence/\_bk/rulesets\_after.json" \\  
  | tee "evidence/\_acceptance/${TS}/diff/rulesets\_diff.txt" || true

**繞過判定（本 WP 的硬規則）**：

* 若 `rulesets_diff.txt` 只有 “required contexts / UI contexts” 類改動，但 `.github/workflows` 沒有補上 `merge_group` 觸發與回報治理 → **判定為繞過** → `GATE-ANTI-BYPASS-RULESETS = FAIL_CLOSED`  
* 合法修補必須同時看到：  
  * 工作流 trigger 對齊（`merge_group`）  
  * skip/concurrency 治理（不會讓 required checks 不回報）  
  * 若調整 rulesets，必有 snapshot/diff 可回放

---

### **F.6 Mode A（runtime）：MQ Probe（僅 MQ 已啟用時）**

重要：WP-012 **不啟用** MQ；你只能在「已啟用」環境做 runtime probe。否則一律走 Mode B（TEMP\_CLOSED）。

#### **F.6.1 取得 merge\_group runs（最小證據）**

\# 取得近期 merge\_group runs（若 repo 目前無 MQ，通常會是空）  
gh run list \--event merge\_group \--limit 50 \\  
  \--json databaseId,workflowName,displayTitle,headSha,status,conclusion,createdAt,updatedAt,url \\  
  | tee "evidence/\_acceptance/${TS}/json/runs\_merge\_group.json" \> /dev/null

**裁決（對齊 WP-010）**：

* 若 MQ 已啟用且 merge\_group runs 仍為空 → **FAIL\_CLOSED**（至少是 required workflows 未觸發/未回報）  
* 若 MQ 未啟用 → 本段可空，但必在 verdict 宣告 **Mode B only** 並維持 **TEMP\_CLOSED**（見 `GATE-MODEB-NO-PASS`）

#### **F.6.2 把 runtime 觀測寫回 checks\_manifest.json（對齊 WP-010）**

若你的 repo 有依 skills SK09 實作的探針，它應能填 `observed.merge_group`（LP-012-004 \+ LP-012-008）。  
若沒有，請勿假裝存在：開 TT，交給 WP-013（端到端）或 SSOT Curator。

（此段不強制指定實作腳本；因 repo 可能以 skills/工具鏈形式存在。若你已依 skills 實作，請在 evidence\_index.md 記錄其 invocation 與輸出。）

---

### **F.7 產出 single\_evidence\_bundle.txt（便於上傳/驗收）**

cat \> "evidence/\_acceptance/${TS}/bundle/single\_evidence\_bundle.txt" \<\<'EOF'  
\# OMOC single evidence bundle (WP-012)  
\# Generated at: ${TS}

evidence/\_acceptance/${TS}/log/scan\_authority.log  
evidence/\_acceptance/${TS}/log/workflows\_merge\_group\_scan.log  
evidence/\_acceptance/${TS}/log/merge\_group\_types\_scan.log  
evidence/\_acceptance/${TS}/log/pathfilter\_scan.log  
evidence/\_acceptance/${TS}/log/concurrency\_scan.log  
evidence/\_acceptance/${TS}/log/wrapper\_presence.log  
evidence/\_bk/BK-004\_rulesets\_before.json  
evidence/\_bk/BK-005\_branch\_protection\_before.json  
evidence/\_bk/rulesets\_after.json  
evidence/\_acceptance/${TS}/diff/rulesets\_diff.txt  
evidence/\_acceptance/${TS}/json/runs\_merge\_group.json  
checks\_manifest.json  
EOF

---

## **\[ANCHOR:OMOC-WP-012-0700\] WI（UI/CLI 工作指導書：逐步 \+ 不一致處置）**

UI 可能因 GitHub 版本/權限而異：若 UI 路徑與本節描述不一致，**不得腦補**，請開 TT（type=WEB）並把實際畫面/路徑放入 `evidence/_acceptance/<ts>/ui/`。  
本節的 UI 描述屬「施工指引」，不凌駕 NORMATIVE（No-Source-No-Norm）。

### **G.1 UI：確認 Merge Queue 是否已啟用（只讀；不越界）**

1. 進入 repo → **Settings**  
2. 找到 **Branches / Rulesets**（或相近命名）  
3. 尋找 **Merge queue**（或 “Require merge queue”）狀態  
4. **不得**在 WP-012 內切換開關；若需要啟用，轉交 WP-013

**若不一致怎麼辦**

* 看不到 Merge queue 設定：  
  * 可能權限不足或 repo 計劃限制 → 開 `TT-WP012-WEB-MQ-UI-001`（TEMP\_CLOSED）  
  * 仍可做 Mode B 靜態治理（但不得 PASS）

### **G.2 UI：檢視 required checks 是否對 merge queue 生效（只讀）**

1. Settings → Branches / Rulesets → 找到目標規則集或分支保護  
2. 找到 required checks 清單（UI context list）  
3. 對照你的 `checks_manifest.json.expected.canonical`（WP-010）

**判定**

* 若 UI contexts 與 `checks_manifest.json` 名稱漂移：先去 WP-010/WP-011 修正命名衛生（不要在這裡硬改 UI 來湊）  
* 反例：你只改 UI contexts 讓它“不再等待”但 workflow 仍沒 merge\_group → **GATE-ANTI-BYPASS-RULESETS FAIL\_CLOSED**

### **G.3 CLI：一鍵列出 merge\_group 相關 workflow 設定點**

\# 列出有 merge\_group 的 workflow 檔名與行號（快速導航）  
rg \-n "^\\s\*merge\_group\\s\*:" .github/workflows \-S

\# 直接把檔案內容輸出到 evidence（供稽核；注意不要包含 secrets）  
for f in $(rg \-l "^\\s\*merge\_group\\s\*:" .github/workflows \-S); do  
  echo "==== ${f} \====" \>\> "evidence/\_acceptance/${TS}/log/workflows\_merge\_group\_scan.log"  
  sed \-n '1,200p' "${f}" \>\> "evidence/\_acceptance/${TS}/log/workflows\_merge\_group\_scan.log"  
done

**不一致處置**

* 若 workflow 以 paths/if/needs 導致整體不觸發：依 WP-011 做 always-report wrapper（回報 job 必須無條件執行或 `always()`）  
* 若 concurrency 取消了 merge\_group run：調整 concurrency group，使 merge\_group 與 push/其他事件不互相取消；並保留取消證據（runs\_merge\_group.json）

### **G.4 反例驗收（必做至少 1 次）**

目的：證明你真的解決了 “變更不在 paths 範圍 → required check 仍回報” 的卡住風險。

**反例驗收案例 A（docs-only 變更）**

1. 建一個只改 `docs/` 或 `README.md` 的 PR  
2. 觀察：required checks 是否仍出現回報（成功/失敗/中止均可接受，但不能 “Expected / waiting”）  
3. 把 UI 截圖或 `gh run list` 的輸出存到：  
   * `evidence/_acceptance/<ts>/ui/docs_only_pr_checks.png`（或等效）  
   * `evidence/_acceptance/<ts>/log/docs_only_pr_observation.log`

**裁決**

* 若 docs-only 變更導致 required checks 不出現回報 → **GATE-NO-SKIP-REQUIRED-CHECKS FAIL\_CLOSED**

---

## **\[ANCHOR:OMOC-WP-012-0800\] Traceability（對齊 WP-010/011/013 與 Skills）**

### **H.1 依賴與接口**

* **WP-010**：`checks_manifest.json`（canonical/observed/diff/verdict/tt）  
  * WP-012 的 Mode A 成功條件需讓 `observed.merge_group` 可被填值（LP-012-008）  
* **WP-011**：always-report wrapper / status hygiene  
  * WP-012 的 paths/if/needs/concurrency 治理以 WP-011 的 Skip Hazard 規格為依據（LP-012-009）  
* **Skills（SK09/Router）**：  
  * Router 的 OMOC\_MQ gating 為 Mode A 的入口條件（LP-012-003）  
  * SK09（MQ merge\_group probe）為 runtime probe 的工具規格（LP-012-004）  
* **WP-013（邊界交接）**：  
  * WP-012 PASS 後才允許交接 WP-013 做 MQ enablement \+ end-to-end closure  
  * WP-012 不越界啟用 MQ；也不替 WP-013 宣告端到端完成（LP-012-010）

### **H.2 “不得靠改 rulesets 繞過” 的可驗收落地（對齊 PATCH-WP012-005）**

* 必須同時提供：  
  * workflow triggers/回報治理的證據（§F.3/§F.4）  
  * rulesets snapshot/diff（§F.5）  
* 判定繞過的條件：  
  * rulesets 只改 UI contexts，而 `.github/workflows` 沒有補 `merge_group` 或仍存在 skip/cancel 風險 → FAIL\_CLOSED

### **H.3 Mode B → WP-013 交接條件（不得誤判）**

* 若 MQ 未啟用或無 merge\_group runtime runs：  
  * WP-012 必須輸出 **TEMP\_CLOSED**  
  * TT 必須清楚寫：需要 WP-013 啟用 MQ 後，重跑 Mode A 取得 `runs_merge_group.json` \+ 填 `observed.merge_group`  
* 若任何人試圖用 Mode B 當 PASS：  
  * 直接判定 `GATE-MODEB-NO-PASS = FAIL_CLOSED`

---

## **\[ANCHOR:OMOC-WP-012-0900\] TT Register（不得留 CR\_OPEN）**

欄位：tt\_id / type（MISSING|DRIFT|SCOPE|RISK|WEB|ALIGN）/ description / source\_locator / status（TEMP\_CLOSED|FAIL\_CLOSED）/ closure\_criteria / owner(route) / next\_actions

| tt\_id | type | description | source\_locator | status | closure\_criteria（可驗收） | owner(route) | next\_actions |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| TT-WP012-001 | DRIFT | 舊版 WP-012 仍以 N4=r1；本版已修補為 r2（防回歸） | `A.2 Authority Stack` | TEMP\_CLOSED | `rg` 證明本文件 N4=r2 且 r1=0（見 `scan_authority.log`） | SSOT Curator / WP-012 Maintainer | 每次改版必重跑 F.2 |
| TT-WP012-002 | ALIGN | 版本宣告需與 r2 Authority 一致（本版已改為 r2 對齊） | `標題 + machine_summary.normative_sources` | TEMP\_CLOSED | 文件標題、Authority Stack、machine\_summary 的 N4 一致為 r2 | WP-012 Maintainer | 每次 release 前跑 Self-Audit |
| TT-WP012-TRIGGER-TYPES-001 | WEB | merge\_group.types（checks\_requested）行為屬 driftable；NORMATIVE 未固化細節 | `Coverage Map REQ-WP012-020` | TEMP\_CLOSED | 文件內已提供「採用/不採用裁決規則 \+ 驗收 \+ route-out」，且 Mode A 可驗收時以 evidence 收斂 | WP-012 Maintainer | 若要採用 types：必完成 Mode A 驗收並記錄 Web Evidence |
| TT-WP012-PATHFILTER-001 | RISK | paths/paths-ignore/條件式 skip 造成 required checks 不回報風險 | `WP-011 12.3` \+ `§F.3/§G.4` | TEMP\_CLOSED | 至少 1 次反例驗收（docs-only）仍可觀測 required check 回報；wrapper\_presence 可定位 | WP-011 \+ WP-012 | 執行 G.4；必要時修 WP-011 wrapper |
| TT-WP012-CONCURRENCY-001 | RISK | concurrency/cancel 造成 merge\_group run 被取消，回報不一致 | `WP-011 12.3` \+ `§F.3/§F.6` | TEMP\_CLOSED | Mode A：runs\_merge\_group.json 可見無互相取消或取消不影響 required checks 回報；否則保留取消證據 \+ 改善方案 | WP-012 \+ WP-013 | 先做靜態掃描，再在 WP-013 端到端驗收 |
| TT-WP012-MQ-PROBE-001 | ALIGN | Mode B 缺 runtime merge\_group runs；需 WP-013 啟用 MQ 後閉環 | `WP-010 [ANCHOR:WP010-REQ-003B]` | TEMP\_CLOSED | 取得 `runs_merge_group.json` 非空，且 `checks_manifest.json.observed.merge_group` 非空 | WP-013 | WP-013 啟用 MQ 後重跑 §F.6 |
| TT-WP012-GH-CLI-QUEUE-001 | WEB | “用 gh CLI 把 PR 加入 merge queue” 行為未被 NORMATIVE 證實 | `§F.6 前言` | TEMP\_CLOSED | 本文件不把 gh 加入隊列當必做；一律以 UI 路徑為準，或補 SUPPORT-only 官方證據 | WP-012 Maintainer | 保留 UI 指引；若要補證據放 Web Evidence Appendix |
| TT-WP012-SK09-XREF-001 | ALIGN | SK09 僅 skills 定義；需形成 ≥2 NORMATIVE 交叉可定位（本版已補：WP總表 r2 \+ skills） | `LP-012-004 + LP-012-007` | TEMP\_CLOSED | WP-012 內可定位 SK09，且 N4（WP-012 row）亦可定位到 SK09 依賴敘述 | skills/SSOT | 後續若 N4 要更強 cross-ref：由 SSOT Curator 處理 |
| TT-WP012-WEB-MQ-UI-001 | WEB | GitHub UI 路徑可能因版本/權限差異而不同 | `WI §G.1` | TEMP\_CLOSED | 提供實際 UI 截圖 \+ 路徑記錄於 evidence/ui；不把 UI 差異當成 PASS | Operator | 將差異放入 evidence 並更新內部手冊（不改 NORMATIVE） |

---

## **\[ANCHOR:OMOC-WP-012-1000\] Patch Log / Change Log（PATCH-WP012-001..006）**

規則：每個 PATCH 必須能在本文件中找到「可定位段落」承接（本節提供 mapping）。

| patch\_id | intent | implemented\_in（本文件段落） | acceptance（可驗收） |
| ----- | ----- | ----- | ----- |
| PATCH-WP012-001 | 修正 N4=r1 → r2（阻斷級） | `A.2`、`Doc Inventory`、`LP-012-005/006/007`、`Self-Audit`、`machine_summary` | `scan_authority.log` 證明 r1=0；N4=r2 一致 |
| PATCH-WP012-002 | 標題/版本宣告對齊 r2 \+ machine\_summary 對齊 | `標題`、`A.2`、`machine_summary.normative_sources` | 版本宣告與 N4=r2 一致 |
| PATCH-WP012-003 | paths/skip 治理硬化 \+ 反例驗收 \+ 依賴 WP-011 | `Coverage Map REQ-WP012-030`、`§F.3/§F.4/§G.4`、`TT-WP012-PATHFILTER-001` | docs-only 反例驗收仍可觀測 required checks 回報 |
| PATCH-WP012-004 | concurrency/cancel 偵測與裁決 \+ evidence | `Coverage Map REQ-WP012-040`、`§F.3/§F.6`、`TT-WP012-CONCURRENCY-001` | runs\_merge\_group.json \+ 裁決規則可定位 |
| PATCH-WP012-005 | “不得靠改 rulesets 繞過” 變成可驗收 gate | `§F.5`、`Coverage Map REQ-WP012-070`、`Traceability H.2` | rulesets snapshot/diff 存在，且可判定是否繞過 |
| PATCH-WP012-006 | SK09/Router 交叉支撐補強（入口硬規則） | `LP-012-003/004/007`、`Coverage Map REQ-WP012-080`、`GATE-SK09-ENTRY` | 缺 SK09/入口不滿足即 FAIL\_CLOSED；雙源可定位成立 |

---

## **\[ANCHOR:OMOC-WP-012-1100\] Web Evidence Appendix（SUPPORT-only）**

規則：Web 僅 SUPPORT-only；不得升格為 NORMATIVE。若 Web 用於補缺，必須對應 TT（type=WEB）且 TEMP\_CLOSED。

| wid | topic | title | source | accessed\_at | why\_relevant | how\_used (SUPPORT-only) | drift\_note |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| WEB-012-001 | merge queue 行為 | Managing a merge queue | GitHub Docs | `2026-02-19T10:22:55+08:00` | 說明 merge queue 會 dispatch `merge_group`（checks\_requested）並等待 CI 回報 | 支援理解 `merge_group` 與 checks\_requested 的關聯，用於 TT-WP012-TRIGGER-TYPES-001 的風險說明 | 可能因產品更新而變動 ([GitHub Docs](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/configuring-pull-request-merges/managing-a-merge-queue)) |
| WEB-012-002 | Actions 事件 | Events that trigger workflows | GitHub Docs | `2026-02-19T10:22:55+08:00` | 提供 `on: merge_group: types: [checks_requested]` 範例 | 用於補充 types 用法（仍不得當 NORMATIVE），並要求以 Mode A 驗收收斂 | driftable；需保留 accessed\_at ([GitHub Docs](https://docs.github.com/actions/using-workflows/events-that-trigger-workflows)) |
| WEB-012-003 | Rulesets API | REST API endpoints for rules | GitHub Docs | `2026-02-19T10:22:55+08:00` | 支援 rulesets snapshot（BK-004）可用 API 取得 | 用於 Runbook §F.5 的 SUPPORT-only 端點佐證；若端點/權限不符 → TT-WEB | 端點可能依版本調整 ([GitHub Docs](https://docs.github.com/en/rest/repos/rules)) |
| WEB-012-004 | merge\_group 事件背景 | Merge group webhook event and GitHub Actions workflow trigger | GitHub Blog Changelog | `2026-02-19T10:22:55+08:00` | 說明 merge\_group 支援 action=checks\_requested（歷史） | 只用於背景理解；不作規範依據 | 舊資料，僅供佐證 ([The GitHub Blog](https://github.blog/changelog/2022-08-18-merge-group-webhook-event-and-github-actions-workflow-trigger/)) |
| WEB-012-005 | concurrency/cancel 風險案例 | PR repeatedly removed from merge queue due to failed ... | GitHub Community Discussion | `2026-02-19T10:22:55+08:00` | 描述 merge\_group 與 push 可能共用 concurrency group 導致取消 | 用於強化 TT-WP012-CONCURRENCY-001 的風險合理性（仍需以本 WP gate \+ evidence 驗收） | 討論串非官方規範 ([GitHub](https://github.com/orgs/community/discussions/168145)) |
| WEB-012-006 | merge queue 設定項 | 规则集的可用规则 \- GitHub Enterprise Cloud Docs | GitHub Docs | `2026-02-19T10:22:55+08:00` | 提到 build concurrency 與 merge\_group.checks\_requested dispatch 的關聯 | 僅作 UI/設定理解補充；仍以 NORMATIVE gate 驗收為準 | 產品/版本差異可能很大 ([GitHub Docs](https://docs.github.com/zh/enterprise-cloud%40latest/repositories/configuring-branches-and-merges-in-your-repository/managing-rulesets/available-rules-for-rulesets)) |

---

## **\[ANCHOR:OMOC-WP-012-1200\] Self-Audit（輸出前自檢清單；必填）**

| check\_item | pass\_fail | evidence\_pointer |
| ----- | ----- | ----- |
| N4 \= r2（Authority Stack / Doc Inventory / machine\_summary） | PASS | `A.2`、`Doc Inventory`、`machine_summary.normative_sources` |
| 文件內 N4=r1 引用為 0 | PASS | `§F.2 scan_authority.log` |
| CR\_OPEN \= 0（不得出現 CR\_OPEN 字樣/狀態） | PASS | `TT Register`（僅 TEMP\_CLOSED/FAIL\_CLOSED） |
| 已吸收 PATCH-WP012-001..006 並可定位 | PASS | `Patch Log` mapping |
| 三大風險（types / pathfilter / concurrency）已升級為可驗收 gate | PASS | `§E Gate Registry` \+ `Coverage Map` \+ `Runbook` |
| Mode B 不得當 PASS（違反即 FAIL\_CLOSED） | PASS | `REQ-WP012-050` \+ `GATE-MODEB-NO-PASS` |
| 不越界：不啟用 MQ；不靠 rulesets contexts 繞過 | PASS | `A.3` \+ `REQ-WP012-070` |
| 每個 “PASS/可行” 判定均附反例與 gate | PASS | `Coverage Map` 的 failure\_counterexample 欄位 |

---

## **\[ANCHOR:OMOC-WP-012-1300\] machine\_summary（JSON；不可缺）**

{  
  "wp\_id": "WP-012",  
  "phase": "Phase-G/G3",  
  "title": "merge\_group Trigger Alignment \+ MQ Probe",  
  "version": "v4.0.1-r2-aligned",  
  "baseline\_web\_date": "2026-02-14",  
  "normative\_sources": \[  
    "/mnt/data/OMOC\_藍圖\_v4.0.1-r1.md",  
    "/mnt/data/OMOC\_施工RB+WI\_合冊\_v4.0.1-r1.md",  
    "/mnt/data/OMOC\_施工skills\_合冊\_v4.0.1-r2.md",  
    "/mnt/data/OMOC\_實作+WP總表\_v4.0.1-r2.md"  
  \],  
  "key\_dependencies": \[  
    "WP-010 checks\_manifest canonical/observed",  
    "WP-011 always-report wrappers / status hygiene",  
    "Skills Router (OMOC\_MQ gating) \+ SK09 MQ merge\_group probe",  
    "WP-013 (handoff only; WP-012 does not enable MQ)"  
  \],  
  "gates": \[  
    "GATE-WP012-ENTRY-N4R2",  
    "GATE-MERGE\_GROUP-TRIGGER",  
    "GATE-MERGE\_GROUP-TYPES",  
    "GATE-NO-SKIP-REQUIRED-CHECKS",  
    "GATE-CONCURRENCY-NO-CANCEL",  
    "GATE-MODEB-NO-PASS",  
    "GATE-MQ-PROBE-RUNTIME",  
    "GATE-MQ-PROBE-STATIC",  
    "GATE-ANTI-BYPASS-RULESETS",  
    "GATE-SK09-ENTRY"  
  \],  
  "evidence\_minset": \[  
    "evidence/\_acceptance/\<ts\>/log/scan\_authority.log",  
    "evidence/\_acceptance/\<ts\>/log/workflows\_merge\_group\_scan.log",  
    "evidence/\_acceptance/\<ts\>/log/merge\_group\_types\_scan.log",  
    "evidence/\_acceptance/\<ts\>/log/pathfilter\_scan.log",  
    "evidence/\_acceptance/\<ts\>/log/concurrency\_scan.log",  
    "evidence/\_acceptance/\<ts\>/log/wrapper\_presence.log",  
    "evidence/\_bk/BK-004\_rulesets\_before.json",  
    "evidence/\_acceptance/\<ts\>/diff/rulesets\_diff.txt",  
    "evidence/\_acceptance/\<ts\>/json/runs\_merge\_group.json",  
    "evidence/\_acceptance/\<ts\>/bundle/single\_evidence\_bundle.txt",  
    "checks\_manifest.json",  
    "verdict.json",  
    "evidence\_index.md",  
    "evidence\_bundle.tgz"  
  \],  
  "tt\_ids": \[  
    "TT-WP012-001",  
    "TT-WP012-002",  
    "TT-WP012-TRIGGER-TYPES-001",  
    "TT-WP012-PATHFILTER-001",  
    "TT-WP012-CONCURRENCY-001",  
    "TT-WP012-MQ-PROBE-001",  
    "TT-WP012-GH-CLI-QUEUE-001",  
    "TT-WP012-SK09-XREF-001",  
    "TT-WP012-WEB-MQ-UI-001"  
  \],  
  "patch\_ids": \[  
    "PATCH-WP012-001",  
    "PATCH-WP012-002",  
    "PATCH-WP012-003",  
    "PATCH-WP012-004",  
    "PATCH-WP012-005",  
    "PATCH-WP012-006"  
  \],  
  "web\_evidence\_count": 6,  
  "notes": \[  
    "Mode B is TEMP\_CLOSED only; treating Mode B as PASS is FAIL\_CLOSED.",  
    "WP-012 does not enable Merge Queue; runtime probe requires MQ already enabled and is handed off to WP-013 for end-to-end closure.",  
    "Any attempt to 'fix' waiting contexts by only editing rulesets/UI contexts without workflow trigger/reportability fixes is classified as bypass and FAIL\_CLOSED."  
  \]  
}

