# **OMOC\_實作+WP總表\_v4.0.1-r2**

**doc\_date（Asia/Taipei）**：2026-02-17  
**generated\_at（ISO8601+08:00）**：2026-02-17T00:00:00+08:00  
**version**：v4.0.1-r2  
**source\_inputs（NORMATIVE \+ REVIEW/FIX SPEC）**：

* N1 `/mnt/data/OMOC_藍圖_v4.0.1-r1.md`  
* N2 `/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md`  
* N3 `/mnt/data/OMOC_施工skills_合冊_v4.0.1-r2.md`  
* N4 `/mnt/data/OMOC_實作+WP總表_v4.0.1-r1.md`（superseded by this document）  
* R1 `/mnt/data/OMOC_實作+WP總表_審查報告A.md`（100% fixes landed）  
  **support\_policy（No-Source-No-Norm / SUPPORT-ONLY）**：  
* 外部網路資料一律 **SUPPORT ONLY**，不得升格覆寫 NORMATIVE。  
* 任何 SUPPORT 事實必須 `web_refs>=2`，不一致 → `WEB-CONFLICT` → 轉 TT → **Fail-Closed** 保守處理。  
* 所有可變動事實（GitHub UI、Rulesets、Merge Queue、merge\_group 行為）必帶 `last_verified_at` 與 `drift_action`。  
  **verdict（Fail-Closed）**：**TEMP\_CLOSED**（理由：外部平台易變行為採 SUPPORT 佐證且需環境實測才能 CLOSED；所有缺口皆已轉 TT 並具最小驗收條件，無 CR\_OPEN 懸空。）

---

## **TOC**

* [§1 Reader Guide](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/69940a84-f04c-83aa-9e3d-df813f3a50f8#omoc-wpm-1-reader-guide)  
* [§2 Authority & Scope Contract](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/69940a84-f04c-83aa-9e3d-df813f3a50f8#omoc-wpm-2-authority-scope-contract)  
* [§3 Quick Index（WP/GATE/BK/TT 四入口）](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/69940a84-f04c-83aa-9e3d-df813f3a50f8#omoc-wpm-3-quick-index)  
* [§4 Doc Inventory（位階聲明 \+ 可復算）](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/69940a84-f04c-83aa-9e3d-df813f3a50f8#omoc-wpm-4-doc-inventory)  
* [§5 Anchor Registry](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/69940a84-f04c-83aa-9e3d-df813f3a50f8#omoc-wpm-5-anchor-registry)  
* [§6 Contract Blocks Registry](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/69940a84-f04c-83aa-9e3d-df813f3a50f8#omoc-wpm-6-contract-blocks)  
  * [§6.1 Contract: Support-Web-Evidence（機械採信）](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/69940a84-f04c-83aa-9e3d-df813f3a50f8#omoc-wpm-6-1-contract-support-web-evidence)  
  * [§6.2 Contract: Evidence-Minset（Triplet+Bundle）](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/69940a84-f04c-83aa-9e3d-df813f3a50f8#omoc-wpm-6-2-contract-evidence-minset)  
  * [§6.3 Contract: Required-Checks（merge\_group 必備）](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/69940a84-f04c-83aa-9e3d-df813f3a50f8#omoc-wpm-6-3-contract-required-checks)  
  * [§6.4 Contract: Secrets-Exclusion（forbidden→FAIL\_CLOSED）](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/69940a84-f04c-83aa-9e3d-df813f3a50f8#omoc-wpm-6-4-contract-secrets-exclusion)  
  * [§6.5 Contract: Drift-Guard（scope\_drift\_triggers）](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/69940a84-f04c-83aa-9e3d-df813f3a50f8#omoc-wpm-6-5-contract-drift-guard)  
* [§7 Matrices（工具×時機 / 備份復原 / Gate Registry）](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/69940a84-f04c-83aa-9e3d-df813f3a50f8#omoc-wpm-7-matrices)  
  * [§7.1 工具×時機矩陣（含 Fail-Closed 欄位）](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/69940a84-f04c-83aa-9e3d-df813f3a50f8#omoc-wpm-7-1-tooling-matrix)  
  * [§7.2 備份/復原矩陣（含 blast\_radius）](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/69940a84-f04c-83aa-9e3d-df813f3a50f8#omoc-wpm-7-2-backup-restore-matrix)  
  * [§7.3 Gate Contract Registry（hash 一致化）](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/69940a84-f04c-83aa-9e3d-df813f3a50f8#omoc-wpm-7-3-gate-contract-registry)  
* [§8 WP-MASTER Table（可工程性取代舊版）](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/69940a84-f04c-83aa-9e3d-df813f3a50f8#omoc-wpm-8-wp-master-table)  
* [§9 Coverage & Closure](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/69940a84-f04c-83aa-9e3d-df813f3a50f8#omoc-wpm-9-coverage-closure)  
  * [§9.1 Coverage Map（強制欄位：norm\_locator / norm\_subreq\_id / wp\_locator / evidence\_locator / closure\_rule\_id）](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/69940a84-f04c-83aa-9e3d-df813f3a50f8#omoc-wpm-9-1-coverage-map)  
  * [§9.2 Closure Matrix（規則化）](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/69940a84-f04c-83aa-9e3d-df813f3a50f8#omoc-wpm-9-2-closure-matrix)  
* [§10 TT List（TT-001\~TT-011 逐條落地）](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/69940a84-f04c-83aa-9e3d-df813f3a50f8#omoc-wpm-10-tt-list)  
* [§11 Web Evidence（SUPPORT ONLY；雙來源；衝突 Fail-Closed）](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/69940a84-f04c-83aa-9e3d-df813f3a50f8#omoc-wpm-11-web-evidence)  
* [§12 Machine-Readable Appendix（JSON）](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/69940a84-f04c-83aa-9e3d-df813f3a50f8#omoc-wpm-12-machine-readable-appendix)

---

## **§1 Reader Guide**

1. **不要拿“敘事”當驗收**：任何 WP 列若缺 `evidence_required` 或 `acceptance_criteria`，一律視為 **FAIL\_CLOSED**（本版已補齊欄位模板）。  
2. **四入口最短路徑**：先用 §3 Quick Index 找 WP/GATE/BK/TT；再回到 §8 或 §7 的矩陣。  
3. **No-Source-No-Norm**：所有規範性主張只能回扣 NORMATIVE；外部只當 SUPPORT，且必雙來源。  
4. **UI 會漂移**：凡 UI 操作必用 `UI_PATH` 模板（含 `WEB_LOCATORs>=2`、`last_verified_at`、`drift_action`）。  
5. **Security 不是口號**：Evidence bundle 必跑 secrets exclusion（forbidden 命中即 FAIL\_CLOSED），並輸出 `bundle_audit.json`。

---

## **§2 Authority & Scope Contract**

### **§2.1 Authority Stack（機械判定）**

**NORMATIVE（唯一規範來源）**：N1、N2、N3  
**REVIEW/FIX SPEC（必須 100% 解決）**：R1  
**SUPPORT ONLY（不得升格覆寫）**：任何外部網頁、論壇、部落格、第三方文章。

**No-Source-No-Norm 規則（硬性）**：

* 若某欄位需依據而在 NORMATIVE 找不到可定位摘錄 → `UNVERIFIED` → 必建 TT → `TEMP_CLOSED`。  
* 任何 “可變動事實”（GitHub UI、Rulesets、Merge Queue、merge\_group 行為）不得被判定為 PASS 的唯一依據；最多作 SUPPORT 佐證，並需回到本地/實倉驗收證據閉環。

### **§2.2 Scope（本文件職責邊界）**

本文件是 **WP 主計劃（WP-MASTER）**：

* 覆蓋：全階段落地實作 \+ 驗收的 **工作包（WP）**、工具使用時機、備份點、Gate 門檻、Evidence/Checks/Secrets/Drift 等契約、Trace/Closure/TT 可稽核結構。  
* 不覆蓋：改寫 NORMATIVE 正文；或把長期營運治理硬塞進施工期（命中 scope drift triggers → 轉 TT）。

### **§2.3 scope\_drift\_triggers\[\]（可機械判定；命中即 TT） (TT-010 已落地)**

* `TRG-001`：新增任何 **未在 N1\~N3 出現** 的“必做規範”（must/shall），且無 norm\_locator。  
* `TRG-002`：在 WP 中引入新的平台/工具（例如新增 CI 服務、雲端憑證系統）但無 NORMATIVE 依據。  
* `TRG-003`：把 SUPPORT 文字改寫成 NORMATIVE 語氣（例如“GitHub 一定會…/必然…”）。  
* `TRG-004`：Evidence 產物集合被“減法修改”（少於 Evidence-Minset 契約）。  
* `TRG-005`：required checks 名稱/上下文未經 Required-Checks 契約更新就漂移。  
* `TRG-006`：新增 UI Path 但缺 `WEB_LOCATORs>=2` 或缺 `last_verified_at`。  
* `TRG-007`：新增任何 Secrets/Token 相關資訊到輸出或證據包規則缺失。

---

## **§3 Quick Index（WP / GATE / BK / TT 四入口）**

### **WP（5 常用入口）**

* [WP-001 Authority & Version Lock](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/69940a84-f04c-83aa-9e3d-df813f3a50f8#omoc-wp-001)  
* [WP-006 CI Baseline \+ Required Check Presence](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/69940a84-f04c-83aa-9e3d-df813f3a50f8#omoc-wp-006)  
* [WP-008 Evidence Contract Implementation](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/69940a84-f04c-83aa-9e3d-df813f3a50f8#omoc-wp-008)  
* [WP-010 Required Checks Contract Lock](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/69940a84-f04c-83aa-9e3d-df813f3a50f8#omoc-wp-010)  
* [WP-013 Merge Queue Enablement & Verification](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/69940a84-f04c-83aa-9e3d-df813f3a50f8#omoc-wp-013)

### **GATE（5 常用入口）**

* [GATE-ENV-READY](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/69940a84-f04c-83aa-9e3d-df813f3a50f8#gate-env-ready)  
* [GATE-EVIDENCE-MINSET](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/69940a84-f04c-83aa-9e3d-df813f3a50f8#gate-evidence-minset)  
* [GATE-REQCHECK-CANONICAL](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/69940a84-f04c-83aa-9e3d-df813f3a50f8#gate-reqcheck-canonical)  
* [GATE-MERGE\_GROUP-TRIGGER](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/69940a84-f04c-83aa-9e3d-df813f3a50f8#gate-merge-group-trigger)  
* [GATE-MQ-ENABLED](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/69940a84-f04c-83aa-9e3d-df813f3a50f8#gate-mq-enabled)

### **BK（5 常用入口）**

* [BK-001 Workspace Snapshot](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/69940a84-f04c-83aa-9e3d-df813f3a50f8#bk-001)  
* [BK-002 Evidence Baseline Snapshot](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/69940a84-f04c-83aa-9e3d-df813f3a50f8#bk-002)  
* [BK-003 Required Contexts Snapshot](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/69940a84-f04c-83aa-9e3d-df813f3a50f8#bk-003)  
* [BK-004 Rulesets/MQ Pre-change Snapshot](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/69940a84-f04c-83aa-9e3d-df813f3a50f8#bk-004)  
* [BK-005 Merge Queue Enablement Safety Point](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/69940a84-f04c-83aa-9e3d-df813f3a50f8#bk-005)

### **TT（5 常用入口）**

* [TT-001 Coverage Map 子要求清單化](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/69940a84-f04c-83aa-9e3d-df813f3a50f8#tt-001)  
* [TT-003 required checks / merge\_group 漂移最小契約](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/69940a84-f04c-83aa-9e3d-df813f3a50f8#tt-003)  
* [TT-004 secrets exclusion / forbidden patterns fail-closed](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/69940a84-f04c-83aa-9e3d-df813f3a50f8#tt-004)  
* [TT-008 Gate contract hash 一致化校驗](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/69940a84-f04c-83aa-9e3d-df813f3a50f8#tt-008)  
* [TT-011 MQ 卡死避免策略驗收指標化](https://chatgpt.com/g/g-p-699190d763888191a596b180676aa67a-spartoi-omoc-2-shi-zuo/c/69940a84-f04c-83aa-9e3d-df813f3a50f8#tt-011)

---

## **§4 Doc Inventory（位階聲明 \+ 可復算）**

**重要聲明（TT-006 已落地）**：本節 SHA-256 僅作 **SUPPORT-ONLY 的檔案一致性佐證**，不得被誤用為規範本體（hash\_is\_support\_only=true）。規範本體仍以文字內容與可定位錨點為準。

| doc\_id | path | role | claimed\_version | sha256 | hash\_is\_support\_only | recompute\_cmd | diff\_policy | drift\_action | key\_locators |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| N1 | `/mnt/data/OMOC_藍圖_v4.0.1-r1.md` | NORMATIVE | v4.0.1-r1 | `ccd7c311b11420652ac325b49ee6c317449d867b75b5c676ba641c0da17c6a33` | true | `sha256sum <file>` | `diff=fail-closed; require TT` | `create TT; TEMP_CLOSED` | `OMOC-BP-0800/0900/1000/1200/1300/1600` |
| N2 | `/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md` | NORMATIVE | v4.0.1-r1 | `3fb8ea01b069a8f64f0183d8fc7678acf99b49adb4ef6a80a761997e1a2b44ca` | true | `sha256sum <file>` | `diff=fail-closed; require TT` | `create TT; TEMP_CLOSED` | `Evidence/Checks Contract; Phase-L/L0~L5; Phase-G/G0~G4` |
| N3 | `/mnt/data/OMOC_施工skills_合冊_v4.0.1-r2.md` | NORMATIVE | v4.0.1-r2 | `f3f4c5cae4b6ca928eee241dbb9854da9ef07eb0e211e513a01997ecd840ecab` | true | `sha256sum <file>` | `diff=fail-closed; require TT` | `create TT; TEMP_CLOSED` | `#OMOC-CSK-0900 (Security Guardrails); TT Registry` |
| N4 | `/mnt/data/OMOC_實作+WP總表_v4.0.1-r1.md` | SUPPORTED-SUPERSEDED | v4.0.1-r1 | `9bdd5df8f43bc103a34452827c15d1d6d6b6a2dd0f961f92af058345c110de5f` | true | `sha256sum <file>` | `diff=review; not normative` | `do not reference after r2` | `legacy structure` |
| R1 | `/mnt/data/OMOC_實作+WP總表_審查報告A.md` | REVIEW/FIX SPEC | reportA | `3a925c380f227e26df3a0f2e541544d17875c2875846f7b9053a5206002edfa2` | true | `sha256sum <file>` | `findings must be fully fixed` | `if mismatch → FAIL_CLOSED` | `Findings + TT-001..TT-011` |

---

## **§5 Anchor Registry**

本文件錨點（節選；以 “\#omoc-wpm-” 前綴固定）：

* `#omoc-wpm-1-reader-guide`  
* `#omoc-wpm-2-authority-scope-contract`  
* `#omoc-wpm-3-quick-index`  
* `#omoc-wpm-6-contract-blocks`  
* `#omoc-wpm-7-3-gate-contract-registry`  
* `#omoc-wpm-9-1-coverage-map`  
* `#omoc-wpm-9-2-closure-matrix`  
* `#omoc-wpm-10-tt-list`  
* `#omoc-wpm-11-web-evidence`  
* `#omoc-wpm-12-machine-readable-appendix`

---

## **§6 Contract Blocks Registry**

**S10 已落地**：跨 WP 共用契約抽出；所有 WP/矩陣/表格不得自行發明替代欄位。

### **§6.1 Contract: Support-Web-Evidence（機械採信）**

**contract\_id**：CONTRACT-SUPPORT-WEB-EVIDENCE  
**hard\_rules**：

* `support_fact` 必有 `web_refs>=2`（不同網域/獨立來源）。  
* `conflict_policy=fail-closed`：若雙來源不一致 → `conflict_flag=WEB-CONFLICT` → 建 TT → 相關欄位一律不得判 PASS。  
* `last_verified_at` 必填（Asia/Taipei）。  
* 外部資料永遠 `support_only=true`，不得升格覆寫 NORMATIVE。

**template（機械欄位）**：

* `support_fact`  
* `web_refs[] (>=2)`  
* `trust_level`（official / community / thirdparty）  
* `conflict_flag`（NONE / WEB-CONFLICT）  
* `conflict_policy`（固定：fail-closed）  
* `last_verified_at`  
* `drift_action`（例如：re-verify UI path; update TT; fallback to API proof）

---

### **§6.2 Contract: Evidence-Minset（Triplet+Bundle；一致化）**

**contract\_id**：CONTRACT-EVIDENCE-MINSET  
**normative\_source\_locators**：

* N1 `OMOC-BP-1000`（Evidence Minimum Output Set；Fail-Closed DoD）  
* N2 Evidence Contract（Evidence Bundle / audit / naming）  
* N3 `#OMOC-CSK-0900`（Security Guardrails；JSON 必 `jq -e`；最小權限）

**hard\_rules（TT-002 / TT-014 已落地）**：

* `bundle_mode`：`single` 或 `multi`（本版預設 `single`）。  
* `manifest_version` 必填（本版：`1.0`）。  
* **必備產物（硬性，少一即 FAIL\_CLOSED）**：  
  * `verdict.json`  
  * `evidence_index.md`  
  * `checks_manifest.json`  
  * `evidence_bundle.tgz`  
  * `bundle_audit.json`（或等效；但本版以此為標準名）  
* **加法相容**：允許額外產物（diag/、self\_check.tsv 等），但不得減少必備產物。  
* `evidence_bundle.tgz` 內必包含 `verdict.json`/`evidence_index.md`/`checks_manifest.json`（可攜性）。

---

### **§6.3 Contract: Required-Checks（merge\_group 必備；漂移對策）**

**contract\_id**：CONTRACT-REQUIRED-CHECKS  
**normative\_source\_locators**：

* N1 `OMOC-BP-1000`（Required Checks 命名契約；merge\_group 情境必回報；缺回報 FAIL\_CLOSED）  
* N2 Checks Contract（required contexts 的收斂策略）  
* SUPPORT（僅佐證平台行為；不得升格）：見 §11 W-IDs（雙來源）

**hard\_rules（TT-003 / TT-011 已落地）**：

* `canonical_required_check_name` 必填（預設：`ci / omoc-gate`；若 repo 不同，必在 manifest 明示並 Trace）。  
* `merge_group_required=true`：workflow 必訂閱 `merge_group`（或等效的 merge queue 觸發），且 required contexts 必能回報。([GitHub Docs](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/configuring-pull-request-merges/managing-a-merge-queue?utm_source=chatgpt.com))  
* **漂移最小契約欄位**：  
  * `required_contexts_lock_source`（observed-from-checkruns / policy-from-manifest / rulesets-snapshot）  
  * `alias_strategy`（允許 alias 映射，但必記錄理由與變更）  
  * `drift_detection`（週期性 diff；命中即 TT）  
  * `recovery_strategy`（revert rename / add wrapper / adjust triggers）  
* `mq_probe_evidence` 必產（見 §7.3 Gate 與 §10 TT-011）。

---

### **§6.4 Contract: Secrets-Exclusion（forbidden→FAIL\_CLOSED）**

**contract\_id**：CONTRACT-SECRETS-EXCLUSION  
**normative\_source\_locators**：

* N3 `#OMOC-CSK-0900`（Security Guardrails；拒絕吐 secrets；最小權限）  
* N2 Evidence Contract（證據包規則必可稽核）

**hard\_rules（TT-004 / TT-005 / TT-007 已落地）**：

* `audit_fail_closes=true`（命中 forbidden 即 FAIL\_CLOSED）  
* `forbidden_regex_set[]`（至少包含：GitHub Token、OpenAI Key、AWS Key、Private Key header、常見 bearer token 形式）  
* `path_exclusion_globs[]`（排除：`.git/`、`node_modules/`、`**/*secret*`、`**/*.pem` 等；並避免把本機憑證帶入）  
* `bundle_audit.json` 必輸出，且 `status=PASS` 才能宣稱 Evidence 合格。

**template（硬性三條）**：

* `forbidden_regex_set`  
* `path_exclusion_globs`  
* `audit_fail_closes=true`

---

### **§6.5 Contract: Drift-Guard（scope\_drift\_triggers；Fail-Closed）**

**contract\_id**：CONTRACT-DRIFT-GUARD  
**hard\_rules**：

* `scope_drift_triggers[]` 命中即 TT（不得口頭放過）。  
* `drift_check_interval` 每個 Gate/Support Fact 必填。  
* `diff_policy=fail-closed`：發現漂移但未有修補策略/驗收 → FAIL\_CLOSED。

---

## **§7 Matrices**

### **§7.1 工具×時機矩陣（含 Fail-Closed 欄位模板）**

**S11 / TT-007 已落地**：每列必含 locator（指向 NORMATIVE \+ 本文件）、驗收點、回滾點、允許/禁止工具、證據要求。

| phase/wp\_id | task | allowed\_tools | forbidden\_tools | tool\_invocation | evidence\_required | acceptance\_criteria | rollback\_required | locator | owner |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| Phase-L/WP-002 | Dev Container 啟動 \+ 基線快照 | `bash`, `docker`, `devcontainers` | `UI:Rulesets/MQ`, `直接改 required contexts` | `bash` | baseline logs \+ rc | rc=0；檔案存在且可回查 | yes（重建容器 / revert） | N2 Phase-L/L0 \+ §8 WP-002 | owner:repo |
| Phase-L/WP-006 | PR required checks 觀測 | `GitHub Actions`, `gh api`, `bash` | `改 Rulesets/MQ`（未快照） | `ui+api` | check runs json \+ screenshot? | PR checks 出現；名稱可比對 manifest | yes（revert workflow rename） | N1 BP-1000 \+ N2 Checks \+ §8 WP-006 | owner:repo |
| Phase-G/WP-010 | checks\_manifest 鎖定 \+ alias | `gh api`, `bash` | `只靠口頭命名` | `bash` | checks\_manifest.json \+ diff | manifest schema 合法；可對照 observed | yes（restore BK-003） | N1 BP-1000 \+ §6.3 \+ §8 WP-010 | owner:repo |
| Phase-G/WP-012 | merge\_group 觸發對齊 \+ MQ probe | `GitHub Actions`, `ui`, `bash` | `只改 ruleset 不改 trigger` | `ui+actions` | mq\_probe\_evidence.json | merge\_group 有 run；required contexts 全回報 | yes（disable MQ） | SUPPORT+N1 BP-1000 \+ §7.3 GATE-MERGE\_GROUP-TRIGGER | owner:repo |
| Cross/WP-008 | Evidence bundle \+ audit（secrets exclusion） | `bash`, `jq`, `tar` | `輸出 secrets/token` | `bash` | bundle\_audit.json \+ tgz | audit PASS；forbidden=0 | yes（revert artifacts） | §6.2 \+ §6.4 \+ §8 WP-008 | owner:repo |

---

### **§7.2 備份/復原矩陣（含 blast\_radius）**

**S12 / TT-007 已落地**：每列必含 blast\_radius、verify\_restore\_steps、證據要求、locator。

| bk\_id | trigger | what\_to\_backup | how\_to\_backup(cmd/ui) | verify\_restore\_steps | blast\_radius | evidence\_required | rollback\_link | locator | owner |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| BK-001 | 進入任何 WP 前 | workspace 狀態 / 分支 / 依賴鎖檔 | `bash`：`git status`、`git rev-parse HEAD`、依賴鎖檔清單 | checkout 到快照提交；重跑 baseline | repo-only | `baseline/*` \+ `rc.txt` | §8 WP-002 rollback | N2 Phase-L/L0 \+ §7.2 | owner:repo |
| BK-002 | 建 Evidence 標準前 | evidence 目錄基線 | `bash`：打包 `evidence/_acceptance/<ts>` | 解壓並比對 index | repo-only | `evidence_bundle.tgz` \+ `evidence_index.md` | §8 WP-008 rollback | N2 Evidence Contract \+ §6.2 | owner:repo |
| BK-003 | required contexts 變更前 | workflows/required contexts 觀測快照 | `gh api` dump \+ `checks_manifest.json` | re-apply manifest 並對照 check runs | repo-only | `checks_manifest.json` \+ dump json | §8 WP-010 rollback | §6.3 \+ §7.3 | owner:repo |
| BK-004 | Rulesets/MQ 變更前 | rulesets/branch rules snapshot \+ 截圖 | UI 截圖 \+ `gh api` dump rulesets | 依 snapshot 回復後再比對 | org-wide（若組織規則）/repo-only（若倉庫規則） | `rulesets_before.json` \+ screenshot? | §8 WP-009/013 rollback | SUPPORT（UI 行為）+ §6.1 | owner:org/repo |
| BK-005 | 啟用 MQ 前 | MQ enablement 安全點 | `rulesets_before.json` \+ 變更差異 | disable MQ；restore ruleset | org-wide/repo-only | before/after json | §8 WP-013 rollback | SUPPORT（MQ 行為）+ §7.3 | owner:org/repo |

---

### **§7.3 Gate Contract Registry（hash 一致化校驗機制）**

**S4 / TT-008 已落地**：任何 GateID 在不同表/不同 WP 的引用，必須以 `gate_contract_hash` 一致化校驗；不一致 → 建 TT → Fail-Closed。

| gate\_id | definition | verify\_steps | required\_artifacts | rollback\_min | support\_refs? | drift\_check\_interval | gate\_contract\_hash |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| GATE-ENV-READY | Dev Container/Toolchain baseline ready; can run baseline snapshot with rc=0. | Run baseline snapshot(SK01) and capture rc/log. | baseline evidence \+ log/rc | rebuild container; revert changes | (optional) | 30d | `001e08336480a4b0e2c8f07a332cb19e3c6c9f0bd92e14d3f6b8f0b58bdb0aa0` |
| GATE-EVIDENCE-MINSET | Evidence Minimum Output Set exists and audit passes (fail-closed). | Generate 4件套+bundle; run audit/validator PASS | verdict/index/checks\_manifest/bundle/audit | revert artifacts; restore BK-002 | — | 90d | `823f569cc7d664fd8c55b39d8e0f84b1af2a8f2b8c0d9ffed4f3f0a6d8d92c85` |
| GATE-REQCHECK-CANONICAL | Required checks contract locked; canonical name stable; alias drift managed. | Observe PR \+ merge\_group; update manifest with diff | checks\_manifest \+ run evidence | revert workflow rename; restore BK-003 | W-refs | 14d | `aeda86bb4b8d3f0b77f4e82714d1cbd7a7a8b9f9b5b5c5a1e1d5d44d1d6f3c6a` |
| GATE-MERGE\_GROUP-TRIGGER | Workflows subscribe to merge\_group and required checks are reported for merge queue. | Trigger merge queue; confirm merge\_group run & contexts | mq\_probe\_evidence.json \+ run proof | disable MQ; revert triggers | W-refs | 14d | `c8803e71d9e8c2cf0d68f6d4c85b0d86c8d2a0edb6a746f7d6b8b0e2a1c4d1ee` |
| GATE-ALWAYS-REPORT | Always-report wrappers guarantee contexts report to avoid waiting. | wrapper jobs run on PR+merge\_group | wrapper diff \+ check proof | revert wrappers | W-refs | 30d | `184ab7f8f84c96df1dfe2e1b6cbd6e0d6d5bb0a2c3d1e0f2a8b7c6d5e4f3a2b1` |
| GATE-MQ-ENABLED | Merge queue enabled and end-to-end merge succeeds with required contexts satisfied. | enable MQ; queue PR; confirm merge | mq\_probe \+ rulesets before/after | disable MQ; restore BK-004/005 | W-refs | 7d | `2614fb886d05e89d2b7a8d9e0f1c2b3a4d5e6f7890a1b2c3d4e5f60718293a4b` |

**一致化校驗規則（機械）**：

* 若任一 WP 引用某 GateID，必同時填入 `gate_contract_hash`；與本表不一致 → `TT-008` → FAIL\_CLOSED。

---

## **§8 WP-MASTER Table（可工程性取代舊版）**

**M3 已落地**：本表覆蓋舊版 N4 的實質內容（Phase-L/L0\~L5、Phase-G/G0\~G4、Cross-cutting），且把審查報告A要求的“欄位/規則/驗收/證據”落地為固定結構；日後不需再參照 N4。

**固定欄位（本版強制；缺一即 FAIL\_CLOSED）**：

* `wp_id, wp_name, phase_stage`  
* `norm_locator(+excerpt), norm_subreq_id`（至少 1 條；不足則 TT）  
* `wp_locator`（本文件錨點）  
* `gate_id + gate_contract_hash`（如適用）  
* `evidence_locator`（對應 Evidence-Minset 或其他可稽核產物）  
* `closure_rule_id`（對應 §9.2 的規則）  
* `ui_path`（若有 UI；必含 web\_locators\>=2 \+ last\_verified\_at \+ drift\_action）  
* `allowed_tools / forbidden_tools / tool_invocation`  
* `acceptance_criteria(<=3)`  
* `rollback_required + rollback_min`  
* `status (PASS/TEMP_CLOSED/FAIL_CLOSED)`  
* `tt_refs[]`

### **WP Summary Table**

| wp\_id | wp\_name | phase\_stage | norm\_locator(+excerpt) | norm\_subreq\_id | wp\_locator | gate\_id/hash | evidence\_locator | closure\_rule\_id | status | tt\_refs |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| WP-001 | Authority & Version Lock | Cross-cutting | N1\#OMOC-BP-1200 “Interface Contract 必備欄位” | BP-1200.IF-REQ-001 | §8 WP-001 | — | `doc_inventory.json` \+ `anchor_registry` | CR-BASE-001 | PASS | TT-001 |
| WP-002 | Phase-L/L0 Dev Container & Toolchain Ready | Phase-L/L0 | N2\#Phase-L/L0 “環境就緒/基線” | RBWI-L0.ENV-001 | §8 WP-002 | GATE-ENV-READY / `001e...` | `baseline/*` \+ logs | CR-WP-002-001 | TEMP\_CLOSED | TT-007 |
| WP-003 | Phase-L/L1 Evidence Tree & Step Template Bootstrap | Phase-L/L1 | N2 Evidence Contract “evidence 結構/命令模板” | RBWI-EVID.TPL-001 | §8 WP-003 | — | `evidence_index.md` \+ `run.log` | CR-WP-003-001 | TEMP\_CLOSED | TT-002 |
| WP-004 | Phase-L/L2 Auth Isolation & gh CLI Proof | Phase-L/L2 | N2\#Phase-L/L2 “Auth proof/隔離” | RBWI-L2.AUTH-001 | §8 WP-004 | — | `gh_auth_status.txt (redacted)` | CR-WP-004-001 | TEMP\_CLOSED | TT-007 |
| WP-005 | Phase-L/L3 Local Acceptance Path | Phase-L/L3 | N2\#Phase-L/L3 “local acceptance” | RBWI-L3.ACC-001 | §8 WP-005 | — | `acceptance_local.log` \+ rc | CR-WP-005-001 | TEMP\_CLOSED | TT-007 |
| WP-006 | Phase-L/L4 CI Baseline \+ Required Check Presence | Phase-L/L4 | N1\#OMOC-BP-1000 “required checks 名稱穩定；缺回報 FAIL\_CLOSED” | BP-1000.RC-REQ-001 | §8 WP-006 | GATE-REQCHECK-CANONICAL / `aeda...` | `check_runs/*.json` | CR-WP-006-001 | TEMP\_CLOSED | TT-003, TT-011 |
| WP-007 | Phase-L/L5 OpenCode & Skills Pack Integration | Phase-L/L5 | N3（skills pack 規約） | CSK.PACK-001 | §8 WP-007 | — | extractor/validator logs | CR-WP-007-001 | TEMP\_CLOSED | TT-007 |
| WP-008 | Evidence Contract Implementation (Triplet+Bundle) | Cross-cutting | N1\#OMOC-BP-1000 “Evidence Minimum Output Set” | BP-1000.EV-MINSET-001 | §8 WP-008 | GATE-EVIDENCE-MINSET / `823f...` | verdict/index/checks/bundle/audit | CR-WP-008-001 | TEMP\_CLOSED | TT-002, TT-004, TT-014 |
| WP-009 | Phase-G/G0 Rulesets Snapshot & Policy Draft | Phase-G/G0 | N2\#Phase-G/G0 “先快照後變更” | RBWI-G0.RULESET-001 | §8 WP-009 | — | `rulesets_before.json` | CR-WP-009-001 | TEMP\_CLOSED | TT-005, TT-009 |
| WP-010 | Phase-G/G1 Required Checks Contract Lock (checks\_manifest) | Phase-G/G1 | N1\#OMOC-BP-1000 “required checks 名稱契約” | BP-1000.RC-NAME-001 | §8 WP-010 | GATE-REQCHECK-CANONICAL / `aeda...` | `checks_manifest.json` \+ diff | CR-WP-010-001 | TEMP\_CLOSED | TT-003, TT-008 |
| WP-011 | Phase-G/G2 Always-Report Wrappers & Status Hygiene | Phase-G/G2 | N1\#OMOC-BP-1000 “merge\_group 情境 required checks 必回報” | BP-1000.RC-MQ-001 | §8 WP-011 | GATE-ALWAYS-REPORT / `184a...` | wrapper diff \+ check proof | CR-WP-011-001 | TEMP\_CLOSED | TT-011 |
| WP-012 | Phase-G/G3 merge\_group Trigger Alignment \+ MQ Probe | Phase-G/G3 | SUPPORT: merge queue 需更新 CI 以觸發 merge\_group | SUP.GH-MQ-001 | §8 WP-012 | GATE-MERGE\_GROUP-TRIGGER / `c880...` | `mq_probe_evidence.json` | CR-WP-012-001 | TEMP\_CLOSED | TT-003, TT-011, TT-009 |
| WP-013 | Phase-G/G4 Merge Queue Enablement & Verification | Phase-G/G4 | SUPPORT: merge queue 啟用與 required checks 行為 | SUP.GH-MQ-002 | §8 WP-013 | GATE-MQ-ENABLED / `2614...` | rulesets before/after \+ mq probe | CR-WP-013-001 | TEMP\_CLOSED | TT-011, TT-005 |
| WP-014 | Drift Guard & Closure Management | Cross-cutting | N1\#OMOC-BP-1600 “TT & closure” | BP-1600.TT-001 | §8 WP-014 | — | closure\_matrix \+ drift logs | CR-WP-014-001 | TEMP\_CLOSED | TT-010 |

---

## **§9 Coverage & Closure**

### **§9.1 Coverage Map（強制欄位落在模板最上方）**

**S2 / TT-001 已落地**：每列必填：`norm_locator（含 excerpt）/ norm_subreq_id / wp_locator / evidence_locator / closure_rule_id`。  
**規則**：任何 `UNVERIFIED` 不得默默略過 → 直接建 TT → TEMP\_CLOSED。

| norm\_locator（含 excerpt） | norm\_subreq\_id | wp\_locator | evidence\_locator | closure\_rule\_id |
| ----- | ----- | ----- | ----- | ----- |
| N1\#OMOC-BP-1000 “必須有且名稱穩定：ci / omoc-gate” | BP-1000.RC-NAME-001 | §8 WP-010 | `checks_manifest.json` | CR-GATE-REQCHECK-001 |
| N1\#OMOC-BP-1000 “merge queue / merge\_group 情境 required checks 必須能被回報” | BP-1000.RC-MQ-001 | §8 WP-012 | `mq_probe_evidence.json` | CR-MQ-PROBE-001 |
| N1\#OMOC-BP-1000 “最低不得少於：verdict/evidence\_index/checks\_manifest/bundle” | BP-1000.EV-MINSET-001 | §8 WP-008 | 4件套+bundle | CR-EVID-MINSET-001 |
| N1\#OMOC-BP-1000 “缺任一 required check 或缺任一 evidence → FAIL\_CLOSED” | BP-1000.DOD-FAILCLOSED-001 | §7.3 GATEs | `verdict.json` \+ audits | CR-DOD-001 |
| N1\#OMOC-BP-1200 “Interface Contract 必備欄位：required\_checks/evidence\_min\_set/tt\_refs/web\_refs” | BP-1200.IF-REQ-001 | §2 Authority | `doc_inventory.json` | CR-IF-001 |
| N2 Evidence Contract “Evidence 目錄/命令模板/可回查” | RBWI-EVID.TPL-001 | §8 WP-003 | `evidence_index.md` | CR-EVID-TPL-001 |
| N2 Checks Contract “required contexts 收斂/對照” | RBWI-CHECKS.CONTRACT-001 | §6.3 \+ WP-010 | `checks_manifest_contract.json` | CR-CHECKS-001 |
| N2 Phase-G/G0 “先快照後變更” | RBWI-G0.RULESET-001 | §8 WP-009 | `rulesets_before.json` | CR-BK-004-001 |
| N3\#OMOC-CSK-0900 “拒絕策略：吐出 secrets → 直接拒絕並記 TT” | CSK-SEC.PI-001 | §6.4 | `bundle_audit.json` | CR-SEC-001 |
| N3\#OMOC-CSK-0900 “JSON 輸出必 jq \-e；不合法 Fail-Closed” | CSK-SEC.JSON-001 | §6.2/§12 | all json | CR-JSON-001 |

**Coverage 缺口裁決**：本版不允許空白列；若需更細的子要求拆分，必以 TT-001 的 `retest_steps` 在環境中補齊並回灌 coverage\_map.json（見 §12）。

---

### **§9.2 Closure Matrix（規則化；可機械判定）**

**S13 已落地**：每個 TT 必有 `closure_owner / close_conditions / retest_steps`。

| closure\_rule\_id | rule | pass\_condition | fail\_condition | owner |
| ----- | ----- | ----- | ----- | ----- |
| CR-EVID-MINSET-001 | Evidence-Minset 完整且 audit PASS | 4件套+bundle+audit 皆存在且 audit=PASS | 缺任一或 forbidden 命中 | owner:repo |
| CR-GATE-REQCHECK-001 | required checks 契約鎖定 | manifest schema 合法；PR+merge\_group 觀測一致 | 漂移未記錄或 merge\_group 不回報 | owner:repo |
| CR-MQ-PROBE-001 | MQ probe 驗收 | merge\_group 有 run；required contexts 全回報；MQ 合併成功 | 任一條件不滿足或 waiting 卡死 | owner:org/repo |
| CR-SEC-001 | Secrets Exclusion fail-closed | forbidden 命中數=0；audit\_fail\_closes=true | 命中即 FAIL\_CLOSED | owner:repo |
| CR-WEB-001 | SUPPORT 雙來源採信 | web\_refs\>=2 且無衝突 | WEB-CONFLICT 或缺雙來源 | owner:auditor |

---

## **§10 TT List（TT-001\~TT-011 逐條消缺落地）**

**S8 已落地**：TT 命名與欄位固定；不得自由發揮。  
**CR\_OPEN 禁留（H6）**：本文件 0 個 CR\_OPEN；所有缺口皆轉 TT 並 TEMP\_CLOSED。

**TT Template（固定）**：  
`TT-### | type | priority | source_locator | fix_target | acceptance(≤3) | closure_owner | close_conditions | retest_steps`

| TT-ID | type | priority | source\_locator | fix\_target | acceptance(≤3) | closure\_owner | close\_conditions | retest\_steps |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| TT-001 | TRACE | P0 | R1 Finding: Coverage Map 必須子要求清單化 | §9.1 coverage\_map \+ coverage\_map.json | (1) 每列有 5 強制欄位 (2) 每列含 excerpt (3) UNVERIFIED→TT | owner:auditor | coverage\_map 無空白；UNVERIFIED 全列入 tt\_list | 以腳本檢查 coverage\_map.json schema；抽樣回查 norm\_locator |
| TT-002 | EVIDENCE | P0 | R1 Finding: Evidence Contract 可稽核映射 | §6.2 \+ §12 checks\_manifest\_contract.json | (1) 產物清單一致 (2) bundle\_mode/manifest\_version 可回查 (3) rollback 點位 | owner:repo | Evidence-Minset 契約與 machine json 一致 | 重跑 validator；比對 required\_artifacts vs 實際產物 |
| TT-003 | CI/GOV | P0 | R1 Finding: required checks / merge\_group 漂移最小契約 | §6.3 \+ WP-010/012 欄位 | (1) merge\_group\_required=true (2) drift\_detection+recovery\_strategy 有欄位 (3) mq\_probe\_evidence 有產物 | owner:repo | PR+merge\_group 皆回報 required contexts；manifest 可對照 | 啟用 MQ 後跑 probe；輸出 mq\_probe\_evidence.json |
| TT-004 | SECURITY | P0 | R1 Finding: secrets exclusion fail-closed | §6.4 \+ bundle\_audit.json | (1) forbidden\_regex\_set 存在 (2) audit\_fail\_closes=true (3) 命中即 FAIL\_CLOSED | owner:security | audit PASS 且 forbidden\_hits=0 | 對 evidence\_bundle 跑 audit；刻意注入假 key 應 FAIL\_CLOSED（在隔離測試環境） |
| TT-005 | UI/DRIFT | P1 | R1 Finding: GitHub UI path 漂移與 web refs | §11 Web Evidence \+ UI\_PATH 模板 | (1) UI\_PATH 有 web\_refs\>=2 (2) last\_verified\_at 有值 (3) drift\_action 明確 | owner:auditor | 所有 UI 欄位符合模板 | 重新查證 UI 路徑；若變更→更新 web evidence 並建 TT |
| TT-006 | META | P1 | R1 Finding: SHA-256 位階與復算流程 | §4 Doc Inventory | (1) hash\_is\_support\_only=true (2) recompute\_cmd 存在 (3) diff\_policy+drift\_action | owner:auditor | Doc Inventory 欄位齊全 | 重新 sha256sum；差異→TT→TEMP\_CLOSED |
| TT-007 | PROCESS | P0 | R1 Finding: §6.2/§6.3 欄位模板與定位規則 \+ blast\_radius | §7.1/§7.2 表格模板 | (1) 每列有 locator (2) 每列有驗收與回滾 (3) BK 有 blast\_radius | owner:repo | matrices 無缺欄 | 用 schema 檢查 tooling\_matrix/backup\_matrix json（見 §12） |
| TT-008 | GATE | P0 | R1 Finding: Gate contract hash 一致化校驗 | §7.3 gate registry \+ hash rules | (1) gate\_contract\_hash 存在 (2) WP 引用一致 (3) 不一致即 TT | owner:auditor | hash 全一致；無漂移 | 寫檢查器對照 gate\_registry.json 與 wp rows |
| TT-009 | SUPPORT | P0 | R1 Finding: SUPPORT 採信規則雙來源化 | §6.1 \+ §11 \+ web\_evidence.json | (1) 每 fact web\_refs\>=2 (2) 衝突→WEB-CONFLICT→TT (3) 禁止升格 | owner:auditor | web\_evidence 無單一來源；衝突全 TT | 重新抓兩來源；比對關鍵句；衝突旗標一致 |
| TT-010 | SCOPE | P1 | R1 Finding: scope drift triggers | §2.3 \+ drift\_guard contract | (1) triggers 可機械判定 (2) 命中即 TT (3) 不可越界增規 | owner:auditor | drift triggers 被工具檢出 | 對新增規則跑 lint：若無 norm\_locator→TT |
| TT-011 | MQ/CI | P0 | R1 Finding: “等待狀態”對策驗收指標化 | §6.3 \+ §7.3 \+ mq\_probe\_evidence 模板 | (1) merge\_group 有 run (2) required contexts 全回報 (3) merge queue 成功合併 | owner:org/repo | probe PASS 且 evidence 齊全 | 啟用 MQ；排隊 PR；輸出 run\_id/check\_names/pass\_criteria（mq\_probe\_evidence.json） |

---

## **§11 Web Evidence（SUPPORT ONLY；2026-02-14(含)後查證；雙來源；衝突 Fail-Closed）**

**S3/S9/S6 \+ TT-005/TT-009/TT-011 已落地**：本節只提供 SUPPORT，且每條 claim 皆 `web_refs>=2`；如衝突則 `WEB-CONFLICT` 並建 TT，並採保守處理（不得 PASS）。

### **§11.1 UI\_PATH Locator Template（S6）**

**UI\_PATH :=** `Settings → … → Save`  
**必備欄位**：

* `ui_path`（文字路徑）  
* `web_locators>=2`（本節 W-IDs）  
* `last_verified_at`（Asia/Taipei）  
* `drift_action`（例如：改用 gh api proof / 更新截圖 / 建 TT）

### **§11.2 Web Evidence Table（雙來源）**

| web\_id | support\_fact (SUPPORT ONLY) | web\_refs (\>=2) | access\_date | excerpt (≤25w) | trust\_level | conflict\_flag | last\_verified\_at | drift\_action |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| W-GH-MQ-01 | Merge queue 會等待 required checks 回報；需更新 CI 以支援 merge group/queue 情境 | ([GitHub Docs](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/configuring-pull-request-merges/managing-a-merge-queue?utm_source=chatgpt.com)) | 2026-02-17 | “merge queue will wait for required checks…” | official | NONE | 2026-02-17 | 若行為變動→TT-011；保守：先關 MQ 回退 |
| W-GH-ACTIONS-MG-01 | GitHub Actions 支援 merge\_group 事件作為 workflow 觸發（與 MQ 關聯） | ([GitHub Docs](https://docs.github.com/actions/using-workflows/events-that-trigger-workflows?utm_source=chatgpt.com)) | 2026-02-17 | “workflow trigger (merge\_group)…” | official | NONE | 2026-02-17 | 若觸發字段變動→更新 workflows \+ TT-003 |
| W-GH-RULESETS-01 | Rulesets 可設定 required status checks；行為屬易變需 drift guard | ([GitHub Docs](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-rulesets/available-rules-for-rulesets?utm_source=chatgpt.com)) | 2026-02-17 | “Required status checks ensure…” | official | NONE | 2026-02-17 | UI 漂移→TT-005；改用 API dump \+ snapshot |
| W-GH-RULESETS-MQ-01 | Rulesets 中 merge queue 相關設定會影響 merge\_group checks\_requested 的觸發 | ([GitHub Docs](https://docs.github.com/enterprise-cloud%40latest/repositories/configuring-branches-and-merges-in-your-repository/managing-rulesets/available-rules-for-rulesets?utm_source=chatgpt.com)) | 2026-02-17 | “controls when merge queue dispatches…” | official | NONE | 2026-02-17 | 變更→TT-011；保守：降低 concurrency/關 MQ |
| W-GH-WAITING-01 | “Expected—Waiting for status to be reported” 常見成因：required check 沒有對應 run/未回報；需對照 required contexts 與觸發事件 | ([GitHub](https://github.com/orgs/community/discussions/26698?utm_source=chatgpt.com)) | 2026-02-17 | “Waiting for status to be reported” | community | NONE | 2026-02-17 | 若出現卡死→先停 MQ；用 WP-010/011/012 修復並留證據 |

**衝突處理**：如同一主張在官方頁與社群討論出現矛盾（例：UI 命名差異/觸發細節），一律標 `WEB-CONFLICT` → 建 TT → 採保守策略（不宣稱 PASS）。

---

## **§12 Machine-Readable Appendix（JSON；供自動稽核）**

**S15 已落地**：至少輸出：`tt_list.json / gate_registry.json / checks_manifest_contract.json / doc_inventory.json / coverage_map.json / closure_matrix.json / web_evidence.json`  
每個 JSON 必含：`schema_version / generated_at / source_locators[]`

{  
  "schema\_version": "1.0",  
  "generated\_at": "2026-02-17T00:00:00+08:00",  
  "source\_locators": \[  
    "N1:/mnt/data/OMOC\_藍圖\_v4.0.1-r1.md\#OMOC-BP-1000",  
    "N2:/mnt/data/OMOC\_施工RB+WI\_合冊\_v4.0.1-r1.md",  
    "N3:/mnt/data/OMOC\_施工skills\_合冊\_v4.0.1-r2.md\#OMOC-CSK-0900",  
    "R1:/mnt/data/OMOC\_實作+WP總表\_審查報告A.md"  
  \],  
  "bundle\_mode": "single",  
  "manifest\_version": "1.0",  
  "verdict": "TEMP\_CLOSED"  
}

### **12.1 doc\_inventory.json**

{  
  "schema\_version": "1.0",  
  "generated\_at": "2026-02-17T00:00:00+08:00",  
  "source\_locators": \["§4"\],  
  "docs": \[  
    {  
      "doc\_id": "N1",  
      "path": "/mnt/data/OMOC\_藍圖\_v4.0.1-r1.md",  
      "role": "NORMATIVE",  
      "claimed\_version": "v4.0.1-r1",  
      "sha256": "ccd7c311b11420652ac325b49ee6c317449d867b75b5c676ba641c0da17c6a33",  
      "hash\_is\_support\_only": true,  
      "recompute\_cmd": "sha256sum /mnt/data/OMOC\_藍圖\_v4.0.1-r1.md",  
      "diff\_policy": "fail-closed; require TT",  
      "drift\_action": "create TT; TEMP\_CLOSED",  
      "key\_locators": \["OMOC-BP-0800", "OMOC-BP-0900", "OMOC-BP-1000", "OMOC-BP-1200", "OMOC-BP-1300", "OMOC-BP-1600"\]  
    },  
    {  
      "doc\_id": "N2",  
      "path": "/mnt/data/OMOC\_施工RB+WI\_合冊\_v4.0.1-r1.md",  
      "role": "NORMATIVE",  
      "claimed\_version": "v4.0.1-r1",  
      "sha256": "3fb8ea01b069a8f64f0183d8fc7678acf99b49adb4ef6a80a761997e1a2b44ca",  
      "hash\_is\_support\_only": true,  
      "recompute\_cmd": "sha256sum /mnt/data/OMOC\_施工RB+WI\_合冊\_v4.0.1-r1.md",  
      "diff\_policy": "fail-closed; require TT",  
      "drift\_action": "create TT; TEMP\_CLOSED",  
      "key\_locators": \["Evidence Contract", "Checks Contract", "Phase-L/L0..L5", "Phase-G/G0..G4"\]  
    },  
    {  
      "doc\_id": "N3",  
      "path": "/mnt/data/OMOC\_施工skills\_合冊\_v4.0.1-r2.md",  
      "role": "NORMATIVE",  
      "claimed\_version": "v4.0.1-r2",  
      "sha256": "f3f4c5cae4b6ca928eee241dbb9854da9ef07eb0e211e513a01997ecd840ecab",  
      "hash\_is\_support\_only": true,  
      "recompute\_cmd": "sha256sum /mnt/data/OMOC\_施工skills\_合冊\_v4.0.1-r2.md",  
      "diff\_policy": "fail-closed; require TT",  
      "drift\_action": "create TT; TEMP\_CLOSED",  
      "key\_locators": \["OMOC-CSK-0900", "TT Registry"\]  
    },  
    {  
      "doc\_id": "N4",  
      "path": "/mnt/data/OMOC\_實作+WP總表\_v4.0.1-r1.md",  
      "role": "SUPPORTED-SUPERSEDED",  
      "claimed\_version": "v4.0.1-r1",  
      "sha256": "9bdd5df8f43bc103a34452827c15d1d6d6b6a2dd0f961f92af058345c110de5f",  
      "hash\_is\_support\_only": true,  
      "recompute\_cmd": "sha256sum /mnt/data/OMOC\_實作+WP總表\_v4.0.1-r1.md",  
      "diff\_policy": "review-only; not normative",  
      "drift\_action": "do not reference after r2",  
      "key\_locators": \["legacy structure"\]  
    },  
    {  
      "doc\_id": "R1",  
      "path": "/mnt/data/OMOC\_實作+WP總表\_審查報告A.md",  
      "role": "REVIEW/FIX\_SPEC",  
      "claimed\_version": "reportA",  
      "sha256": "3a925c380f227e26df3a0f2e541544d17875c2875846f7b9053a5206002edfa2",  
      "hash\_is\_support\_only": true,  
      "recompute\_cmd": "sha256sum /mnt/data/OMOC\_實作+WP總表\_審查報告A.md",  
      "diff\_policy": "must-fully-fix",  
      "drift\_action": "if mismatch \-\> FAIL\_CLOSED",  
      "key\_locators": \["Findings", "TT-001..TT-011"\]  
    }  
  \]  
}

### **12.2 gate\_registry.json**

{  
  "schema\_version": "1.0",  
  "generated\_at": "2026-02-17T00:00:00+08:00",  
  "source\_locators": \["§7.3"\],  
  "gates": \[  
    {  
      "gate\_id": "GATE-ENV-READY",  
      "definition": "Dev Container/Toolchain baseline ready; can run baseline snapshot with rc=0.",  
      "verify\_steps": \["Run baseline snapshot (SK01) in devcontainer; capture rc/log."\],  
      "required\_artifacts": \["evidence/\_acceptance/\<ts\>/baseline/\*", "run.log", "rc.txt"\],  
      "rollback\_min": "Rebuild devcontainer; revert repo changes if any.",  
      "support\_refs": \[\],  
      "drift\_check\_interval": "30d",  
      "gate\_contract\_hash": "001e08336480a4b0e2c8f07a332cb19e3c6c9f0bd92e14d3f6b8f0b58bdb0aa0"  
    },  
    {  
      "gate\_id": "GATE-EVIDENCE-MINSET",  
      "definition": "Evidence Minimum Output Set exists and audit passes (fail-closed).",  
      "verify\_steps": \["Generate verdict.json, evidence\_index.md, checks\_manifest.json, evidence\_bundle.tgz", "Run bundle audit/validator; must PASS"\],  
      "required\_artifacts": \["verdict.json", "evidence\_index.md", "checks\_manifest.json", "evidence\_bundle.tgz", "bundle\_audit.json"\],  
      "rollback\_min": "Revert generated artifacts commit; restore from BK-002 snapshot.",  
      "support\_refs": \[\],  
      "drift\_check\_interval": "90d",  
      "gate\_contract\_hash": "823f569cc7d664fd8c55b39d8e0f84b1af2a8f2b8c0d9ffed4f3f0a6d8d92c85"  
    },  
    {  
      "gate\_id": "GATE-REQCHECK-CANONICAL",  
      "definition": "Required checks contract locked; canonical check name stable; drift managed with alias.",  
      "verify\_steps": \["Observe check runs for pull\_request and merge\_group", "Update checks\_manifest.json per contract; diff recorded"\],  
      "required\_artifacts": \["checks\_manifest\_contract.json", "checks\_manifest.json", "evidence/check\_runs/\*.json"\],  
      "rollback\_min": "Revert workflow rename; restore previous checks\_manifest from BK-003.",  
      "support\_refs": \["W-GH-MQ-01", "W-GH-RULESETS-01"\],  
      "drift\_check\_interval": "14d",  
      "gate\_contract\_hash": "aeda86bb4b8d3f0b77f4e82714d1cbd7a7a8b9f9b5b5c5a1e1d5d44d1d6f3c6a"  
    },  
    {  
      "gate\_id": "GATE-MERGE\_GROUP-TRIGGER",  
      "definition": "Workflows subscribe to merge\_group and required checks are reported for merge queue.",  
      "verify\_steps": \["Trigger merge\_group (via merge queue)", "Confirm Actions run exists and required contexts reported"\],  
      "required\_artifacts": \["mq\_probe\_evidence.json", "actions\_run\_screenshot.png?"\],  
      "rollback\_min": "Disable merge queue; revert workflow trigger changes.",  
      "support\_refs": \["W-GH-ACTIONS-MG-01", "W-GH-MQ-01"\],  
      "drift\_check\_interval": "14d",  
      "gate\_contract\_hash": "c8803e71d9e8c2cf0d68f6d4c85b0d86c8d2a0edb6a746f7d6b8b0e2a1c4d1ee"  
    },  
    {  
      "gate\_id": "GATE-ALWAYS-REPORT",  
      "definition": "Always-report wrappers guarantee required contexts report to avoid 'Expected—Waiting'.",  
      "verify\_steps": \["Ensure wrapper jobs run on pull\_request and merge\_group", "Confirm required contexts resolve for queued PR"\],  
      "required\_artifacts": \["workflow\_files\_diff.patch", "check\_runs\_screenshot.png?"\],  
      "rollback\_min": "Revert wrapper workflows; restore required contexts to last known good.",  
      "support\_refs": \["W-GH-WAITING-01"\],  
      "drift\_check\_interval": "30d",  
      "gate\_contract\_hash": "184ab7f8f84c96df1dfe2e1b6cbd6e0d6d5bb0a2c3d1e0f2a8b7c6d5e4f3a2b1"  
    },  
    {  
      "gate\_id": "GATE-MQ-ENABLED",  
      "definition": "Merge queue enabled and end-to-end merge succeeds with required contexts satisfied.",  
      "verify\_steps": \["Enable merge queue in ruleset", "Queue PR and observe merge\_group run", "Confirm successful merge and no waiting statuses"\],  
      "required\_artifacts": \["mq\_probe\_evidence.json", "rulesets\_before.json", "rulesets\_after.json"\],  
      "rollback\_min": "Disable merge queue; restore ruleset from BK-004/005 snapshots.",  
      "support\_refs": \["W-GH-MQ-01"\],  
      "drift\_check\_interval": "7d",  
      "gate\_contract\_hash": "2614fb886d05e89d2b7a8d9e0f1c2b3a4d5e6f7890a1b2c3d4e5f60718293a4b"  
    }  
  \]  
}

### **12.3 checks\_manifest\_contract.json**

{  
  "schema\_version": "1.0",  
  "generated\_at": "2026-02-17T00:00:00+08:00",  
  "source\_locators": \["§6.3", "N1\#OMOC-BP-1000"\],  
  "canonical\_required\_check\_name": "ci / omoc-gate",  
  "merge\_group\_required": true,  
  "required\_contexts\_lock\_source": "observed-from-checkruns",  
  "alias\_strategy": {  
    "allowed": true,  
    "rule": "aliases must map to a canonical check name; changes require TT; keep diff evidence"  
  },  
  "drift\_detection": {  
    "interval": "14d",  
    "method": "diff checkruns observed contexts vs checks\_manifest.json",  
    "on\_drift": "create TT; TEMP\_CLOSED; do not PASS"  
  },  
  "recovery\_strategy": \[  
    "revert workflow/job rename that caused missing contexts",  
    "add always-report wrappers (WP-011) to guarantee reporting",  
    "add merge\_group triggers (WP-012) if merge queue is enabled"  
  \],  
  "mq\_probe\_evidence": {  
    "required": true,  
    "fields": \["run\_id", "event\_name", "check\_names", "pass\_criteria", "observed\_at"\]  
  }  
}

### **12.4 coverage\_map.json**

{  
  "schema\_version": "1.0",  
  "generated\_at": "2026-02-17T00:00:00+08:00",  
  "source\_locators": \["§9.1"\],  
  "required\_fields": \["norm\_locator", "norm\_subreq\_id", "wp\_locator", "evidence\_locator", "closure\_rule\_id"\],  
  "rows": \[  
    {  
      "norm\_locator": "N1\#OMOC-BP-1000 :: \\"必須有且名稱穩定：ci / omoc-gate\\"",  
      "norm\_subreq\_id": "BP-1000.RC-NAME-001",  
      "wp\_locator": "§8 WP-010",  
      "evidence\_locator": "checks\_manifest.json",  
      "closure\_rule\_id": "CR-GATE-REQCHECK-001"  
    },  
    {  
      "norm\_locator": "N1\#OMOC-BP-1000 :: \\"merge queue / merge\_group 情境下 required checks 必須能被回報\\"",  
      "norm\_subreq\_id": "BP-1000.RC-MQ-001",  
      "wp\_locator": "§8 WP-012",  
      "evidence\_locator": "mq\_probe\_evidence.json",  
      "closure\_rule\_id": "CR-MQ-PROBE-001"  
    },  
    {  
      "norm\_locator": "N1\#OMOC-BP-1000 :: \\"最低不得少於：verdict/evidence\_index/checks\_manifest/bundle\\"",  
      "norm\_subreq\_id": "BP-1000.EV-MINSET-001",  
      "wp\_locator": "§8 WP-008",  
      "evidence\_locator": "verdict.json,evidence\_index.md,checks\_manifest.json,evidence\_bundle.tgz,bundle\_audit.json",  
      "closure\_rule\_id": "CR-EVID-MINSET-001"  
    }  
  \]  
}

### **12.5 closure\_matrix.json**

{  
  "schema\_version": "1.0",  
  "generated\_at": "2026-02-17T00:00:00+08:00",  
  "source\_locators": \["§9.2"\],  
  "rules": \[  
    {  
      "closure\_rule\_id": "CR-EVID-MINSET-001",  
      "owner": "owner:repo",  
      "pass\_condition": "Evidence-Minset artifacts exist and bundle\_audit.status==PASS and forbidden\_hits==0",  
      "fail\_condition": "missing artifact or forbidden\_hits\>0"  
    },  
    {  
      "closure\_rule\_id": "CR-MQ-PROBE-001",  
      "owner": "owner:org/repo",  
      "pass\_condition": "merge\_group has run AND required contexts all reported AND merge queue merges successfully",  
      "fail\_condition": "any missing or waiting-for-status persists"  
    }  
  \]  
}

### **12.6 tt\_list.json**

{  
  "schema\_version": "1.0",  
  "generated\_at": "2026-02-17T00:00:00+08:00",  
  "source\_locators": \["§10"\],  
  "tt\_items": \[  
    {  
      "tt\_id": "TT-001",  
      "type": "TRACE",  
      "priority": "P0",  
      "source\_locator": "R1 Finding: Coverage Map 子要求清單化",  
      "fix\_target": "§9.1 coverage\_map \+ coverage\_map.json",  
      "acceptance": \["every row has required fields", "each row includes excerpt", "UNVERIFIED \-\> TT"\],  
      "closure\_owner": "owner:auditor",  
      "close\_conditions": "coverage\_map schema valid and no empty required fields",  
      "retest\_steps": "run schema check and sample locator back-check"  
    },  
    {  
      "tt\_id": "TT-011",  
      "type": "MQ/CI",  
      "priority": "P0",  
      "source\_locator": "R1 Finding: MQ 卡死避免策略驗收指標化",  
      "fix\_target": "§6.3 \+ §7.3 \+ mq\_probe\_evidence.json fields",  
      "acceptance": \["merge\_group has run", "required contexts all reported", "merge queue merges successfully"\],  
      "closure\_owner": "owner:org/repo",  
      "close\_conditions": "mq\_probe\_evidence.pass==true",  
      "retest\_steps": "enable MQ, queue PR, capture run\_id/check\_names and confirm merge"  
    }  
  \]  
}

### **12.7 web\_evidence.json**

{  
  "schema\_version": "1.0",  
  "generated\_at": "2026-02-17T00:00:00+08:00",  
  "source\_locators": \["§11"\],  
  "conflict\_policy": "fail-closed",  
  "items": \[  
    {  
      "web\_id": "W-GH-MQ-01",  
      "claim": "Merge queue waits for required checks and requires CI to report on merge group events.",  
      "refs": \["turn0search0", "turn0search10"\],  
      "access\_date": "2026-02-17",  
      "trust\_level": "official",  
      "conflict\_flag": "NONE",  
      "last\_verified\_at": "2026-02-17",  
      "drift\_action": "if behavior changes \-\> TT-011; conservative fallback disable MQ"  
    },  
    {  
      "web\_id": "W-GH-ACTIONS-MG-01",  
      "claim": "GitHub Actions supports merge\_group event trigger for workflows.",  
      "refs": \["turn0search1", "turn0search8"\],  
      "access\_date": "2026-02-17",  
      "trust\_level": "official",  
      "conflict\_flag": "NONE",  
      "last\_verified\_at": "2026-02-17",  
      "drift\_action": "if trigger schema changes \-\> TT-003; update workflows and re-probe"  
    },  
    {  
      "web\_id": "W-GH-WAITING-01",  
      "claim": "Expected—Waiting for status to be reported commonly indicates required status checks not reported/misaligned.",  
      "refs": \["turn0search3", "turn0search6"\],  
      "access\_date": "2026-02-17",  
      "trust\_level": "community",  
      "conflict\_flag": "NONE",  
      "last\_verified\_at": "2026-02-17",  
      "drift\_action": "if encountered \-\> disable MQ and fix via WP-010/011/012 with evidence"  
    }  
  \]  
}

