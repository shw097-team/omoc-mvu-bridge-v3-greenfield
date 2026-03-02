# **\[WP4-S00\] 《OMOC\_WP-004+RB+WI》— WP-004：Phase-L/L2 Auth Isolation & gh CLI Proof（v4.0.1-r2）**

**doc\_id**：OMOC\_WP-004+RB+WI  
**doc\_title**：WP-004：Phase-L/L2 Auth Isolation & gh CLI Proof  
**external\_name**：OMOC\_WP-004+RB+WI  
**internal\_short\_name**：WP-004-L2-AUTH-ISOLATION-GH-PROOF  
**version**：v4.0.1-r2  
**status (Fail-Closed)**：TEMP\_CLOSED（原因：平台/登入/權限屬 driftable；外部僅 SUPPORT；缺環境實測不得宣告 PASS）  
**date**：2026-02-18（Asia/Taipei, UTC+08:00）  
**baseline\_web\_date**：2026-02-14  
**access\_date**：2026-02-18  
**access\_datetime**：2026-02-18T10:26:01+08:00  
**authority\_stack（裁決規則）**：A0《OMOC\_藍圖》＞A1《OMOC\_施工RB+WI\_合冊》＞A2《OMOC\_施工skills\_合冊》＞B《OMOC\_實作+WP總表》＞SUPPORT（外部僅佐證易變行為；不得凌駕 NORMATIVE）

**Authority Stack Locator Proof（NORMATIVE）**

* `LOCATOR = BP:/mnt/data/OMOC_藍圖_v4.0.1-r1.md | 4. Authority Stack & Conflict Rules | [ANCHOR:OMOC-BP-0400]`  
* `LOCATOR = RBWI:/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md | Cover | [ANCHOR:OMOC-RBWI-COVER]`  
* `LOCATOR = CSK:/mnt/data/OMOC_施工skills_合冊_v4.0.1-r2.md | SK08 Evidence Packager | forbidden_patterns + must_include + result`  
* `LOCATOR = WP-MASTER:/mnt/data/OMOC_實作+WP總表_v4.0.1-r2.md | WP Summary Table row=WP-004 (Phase-L/L2)`

---

## **Change Log（r1 → r2）**

* 修正 **WP-MASTER 版本漂移**：N4 統一改用 `OMOC_實作+WP總表_v4.0.1-r2.md`，並以該表 WP-004 row 作為權威定位。  
* 修補 **RBWI L2 正文可定位性**：新增可驗證的 L2 locator proof 與短摘錄（不再用「宣告」充當證據）。  
* 新增 **Forbidden Commands（硬禁）**：明確禁止會吐 token 或導致 secrets 落地/入包的命令與檢測方法。  
* 新增 **GH\_TOKEN / GITHUB\_TOKEN precedence（SUPPORT）** 與 **不落地策略**（只記狀態，不輸出 token）。([GitHub CLI](https://cli.github.com/manual/gh_help_environment))  
* 新增 **UI\_PATH Gate**：規格化欄位（WEB\_LOCATORs≥2 \+ last\_verified\_at \+ drift\_action），或明示 NO\_UI。([GitHub Docs](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/enabling-features-for-your-repository/managing-github-actions-settings-for-a-repository))  
* 將「未登入不阻斷」改為 **可機械驗證的門檻矩陣**（PASS / TEMP\_CLOSED / FAIL\_CLOSED）。  
* Doc Inventory 擴充：納入 NBR-1\~3、T、R；並新增 **一致性對照表（≥10欄位）**。  
* Coverage Map 強化：每條 rq 具備 `wp004_locator + norm_locator + proof_quote(<=25字)`；缺 quote 一律 TT→TEMP\_CLOSED。  
* TT Register 整理：CR\_OPEN=0；每筆 TT 都有 close\_conditions / retest\_steps / owner\_role / status。

---

## **\[WP4-S01\] TOC（含穩定錨點碼）**

* \[WP4-S00\] Header \+ Authority Stack \+ Version  
* \[WP4-S01\] TOC  
* \[WP4-S02\] Reader Guide（索引/映射/錨點）  
* \[WP4-S03\] Scope & Non-Goals  
* \[WP4-S04\] Definitions（Auth Isolation / gh CLI Proof / Evidence / Gate / TT）  
* \[WP4-S05\] Inputs（Doc Inventory \+ Locator Proof \+ Consistency Table）  
* \[WP4-S06\] SOP 執行紀錄表（可稽核模板）  
* \[WP4-S07\] Requirements Decomposition（\>=12）  
* \[WP4-S08\] Coverage Map（含 norm quote\<=25字）  
* \[WP4-S09\] Drift & Conflict Ledger（r1→r2、RBWI L2 狀態）  
* \[WP4-S10\] Gates / Thresholds（含 UI\_PATH Gate；未登入不阻斷矩陣化）  
* \[WP4-S11\] Runbook（可重跑施工：step() / rollback / 去敏 / skip）  
* \[WP4-S12\] WI（工作指導書：做什麼/何時/產出/失敗怎麼辦/回滾點）  
* \[WP4-S13\] Evidence Contract（minset/路徑/去敏/打包/Fail-Closed）  
* \[WP4-S14\] Rollback/Recovery（logout/清理/復原）  
* \[WP4-S15\] TT Register（CR\_OPEN=0）  
* \[WP4-S16\] Self-Audit Checklist（勾選清單）  
* \[WP4-S17\] Web Evidence Appendix（\>=8；SUPPORT only）  
* \[WP4-S18\] Risk Register（secrets/權限/漂移/誤刪/注入等）

**穩定錨點策略（本文件）**

* 以 `"[WP4-Sxx]"` \+ 本文件內 `#WP4-Sxx` 連結作為穩定引用鍵。  
* 禁用 HTML comment（不使用 `<!-- -->`）。  
* 任何「規格性句子」必須在 `[WP4-S07]~[WP4-S10]` 可被定位與驗收（Fail-Closed：找不到就 TT）。

---

## **\[WP4-S02\] Reader Guide（索引/映射/錨點）**

### **1\) 你要完成什麼（別把登入當理所當然）**

WP-004 的目標不是「讓 gh 一定可用」，而是把 **身份/權限的可變動性**變成**可稽核證據**：

* gh CLI 在不在？  
* `gh auth status` 是否可執行、輸出是否去敏？  
* 若未登入：**不阻斷**但必須形成可機械驗證的 TEMP\_CLOSED 證據鏈  
* 若登入：可選產出 `gh repo view --json ...`（同樣去敏）  
* 全程 **不得吐 token / 不得把憑證落地到 evidence\_bundle**

### **2\) Anchor Registry（本文件全部 anchors）**

| anchor\_id | section\_title |
| ----- | ----- |
| WP4-S00 | Header |
| WP4-S01 | TOC |
| WP4-S02 | Reader Guide |
| WP4-S03 | Scope & Non-Goals |
| WP4-S04 | Definitions |
| WP4-S05 | Inputs |
| WP4-S06 | SOP Record |
| WP4-S07 | Requirements Decomposition |
| WP4-S08 | Coverage Map |
| WP4-S09 | Drift & Conflict Ledger |
| WP4-S10 | Gates / Thresholds |
| WP4-S11 | Runbook |
| WP4-S12 | WI |
| WP4-S13 | Evidence Contract |
| WP4-S14 | Rollback/Recovery |
| WP4-S15 | TT Register |
| WP4-S16 | Self-Audit Checklist |
| WP4-S17 | Web Evidence Appendix |
| WP4-S18 | Risk Register |
| WP4-RB-01 | Runbook step() template |
| WP4-RB-02 | Redaction & scan toolbox |

### **3\) Quick Index（關鍵名詞/檔案/命令）**

* **NORMATIVE**：`/mnt/data/OMOC_藍圖_v4.0.1-r1.md`、`/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md`、`/mnt/data/OMOC_施工skills_合冊_v4.0.1-r2.md`、`/mnt/data/OMOC_實作+WP總表_v4.0.1-r2.md`  
* **L2 核心命令（必做）**：`gh auth status`（但輸出必去敏）  
* **可選命令**：`gh repo view --json ...`（同樣去敏；不可用要留痕）  
* **禁用命令（硬禁）**：`gh auth token`（會輸出 token）([GitHub CLI](https://cli.github.com/manual/gh_auth_token))  
* **Evidence 最小集**：`verdict.json / checks_manifest.json / evidence_index.md / bundle_audit.json / evidence_bundle.tgz`（見 `[WP4-S13]`）  
* **驗收路徑（WP-MASTER）**：`evidence/_acceptance/${TS}/WP-004`（見 `[WP4-S05]`）

---

## **\[WP4-S03\] Scope & Non-Goals**

### **Scope（本 WP 必做）**

1. 驗證/記錄 gh CLI 可用性（可用/不可用都要有證據）  
2. 必做：產出 `gh auth status` 的去敏證據（可失敗但必留痕）  
3. 可選：產出 `gh repo view --json ...` 去敏證據；若不用/不可用也要記錄原因  
4. 依 Evidence Contract：產出 minset \+ 打包 \+ `bundle_audit.json`（Fail-Closed）  
5. 提供 rollback / recovery（至少包含 `gh auth logout` 的安全用法）

**NORMATIVE Locator Proof（RBWI L2）**

* `LOCATOR = RBWI:/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md | L2 — 身份隔離 | [ANCHOR:OMOC-RBWI-L2] | step "L2-gh-auth"`（proof\_quote：`gh auth status`）  
* `LOCATOR = RBWI:/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md | L2 — 身份隔離 | [ANCHOR:OMOC-RBWI-L2] | step "L2-gh-repo"`（proof\_quote：`gh repo view --json`）

### **Non-Goals（本 WP 明確不做）**

* 不要求你登入；不要求你建立/輸出任何 token/secret  
* 不把外部文章升格為 OMOC 規範（外部永遠 SUPPORT）  
* 不改動 rulesets/merge queue/required checks（屬其他 WP/Phase）

---

## **\[WP4-S04\] Definitions（Reference）**

* **Auth Isolation**：把「身份/權限」視為 driftable 狀態；必須以證據證明或明確隔離（未登入也必須可稽核）。  
  * `LOCATOR = RBWI:/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md | L2 — 身份隔離 | [ANCHOR:OMOC-RBWI-L2]`（proof\_quote：`避免多帳號...衝突`）  
* **gh CLI Proof**：以 `gh auth status`（必做）與 `gh repo view --json ...`（可選）輸出證據；且 **不得吐 token**。  
  * `LOCATOR = RBWI:/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md | [ANCHOR:OMOC-RBWI-L2]`（proof\_quote：`timeout 1m gh auth status`）  
* **Evidence（證據）**：可稽核輸出（log/rc/index/manifest/bundle/audit），且必須去敏與禁止 secrets 落地。  
  * `LOCATOR = RBWI:/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md | Evidence Contract | [ANCHOR:OMOC-RBWI-EVIDENCE-CONTRACT]`（proof\_quote：`Evidence Minimum Output Set`）  
  * `LOCATOR = CSK:/mnt/data/OMOC_施工skills_合冊_v4.0.1-r2.md | SK08 Evidence Packager`（proof\_quote：`bundle_audit.json`）  
* **Gate（門檻）**：可機械驗證的 Entry/Exit/DoD；Fail-Closed：不滿足 → TT → TEMP\_CLOSED（阻斷級 → FAIL\_CLOSED）。  
* **TT（TEST\_TRACK）**：未覆蓋/不可驗證/漂移項的追蹤單；CR\_OPEN 必須為 0。  
  * `LOCATOR = BP:/mnt/data/OMOC_藍圖_v4.0.1-r1.md | 16. TEST_TRACK | [ANCHOR:OMOC-BP-1600]`（proof\_quote：`CR_OPEN 為 0`）

---

## **\[WP4-S05\] Inputs（Doc Inventory \+ Locator Proof \+ Consistency Table）**

### **5.1 Doc Inventory（必含版本與 locator\_strategy）**

本任務以本對話專案檔案庫為 NORMATIVE；以下為可讀且可雜湊定位之輸入清單。

| doc\_id | path | version\_claim | authority | sha256 | bytes | locator\_strategy |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| N1 (BP) | `/mnt/data/OMOC_藍圖_v4.0.1-r1.md` | v4.0.1-r1 | A0 | `ccd7c311b11420652ac325b49ee6c317449d867b75b5c676ba641c0da17c6a33` | 36139 | anchors（例：`OMOC-BP-0400/1000/1600`） |
| N2 (RBWI) | `/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md` | v4.0.1-r1 | A1 | `3fb8ea01b069a8f64f0183d8fc7678acf99b49adb4ef6a80a761997e1a2b44ca` | 45818 | anchors（例：`OMOC-RBWI-COVER/L2/EVIDENCE-CONTRACT`） |
| N3 (CSK) | `/mnt/data/OMOC_施工skills_合冊_v4.0.1-r2.md` | v4.0.1-r2 | A2 | `f3f4c5cae4b6ca928eee241dbb9854da9ef07eb0e211e513a01997ecd840ecab` | 84815 | skills sections（例：`SK08 Evidence Packager`） |
| N4 (WP-MASTER) | `/mnt/data/OMOC_實作+WP總表_v4.0.1-r2.md` | v4.0.1-r2 | B | `ffb92a86c26e12cc3d6bf492694fb81477f985f8f50d0744c4944dbdae1a49a9` | 54886 | table row（`WP-004`） |
| NBR-1 | `/mnt/data/OMOC_WP-001+RB+WI_v4.0.1-r2.md` | v4.0.1-r2 | NORMATIVE(near) | `9d379a473ca2af7f3202982775815e8cf80c283cba3f1239e8381c89e0d0f1f9` | 41578 | wp anchors/sections |
| NBR-2 | `/mnt/data/OMOC_WP-002+RB+WI_v4.0.1-r2.md` | v4.0.1-r2 | NORMATIVE(near) | `5e38e2137cf0230400ab32261544c0df4a641bafbf92b5d8f575a7751e20ed5c` | 39664 | headings/tables |
| NBR-3 | `/mnt/data/OMOC_WP-003+RB+WI_v4.0.1-r2.md` | v4.0.1-r2 | NORMATIVE(near) | `e8fde679effe030dac1445dfbb27240b9e1ceb4caa56ef568a3c5504b941b29b` | 44125 | anchors/step templates |
| T (old) | `/mnt/data/OMOC_WP-004+RB+WI.md` | v4.0.1-r1-aligned | TARGET(legacy) | `0f5a3dbadab79df8a10fb237afa5f6df153cdaa666ddf2f51ee06b426c3b5378` | 38517 | `[WP4-S00..S16]` |
| R (review) | `/mnt/data/OMOC_WP-004+RB+WI_審查報告.md` | RPT-WP004-20260218-01 | REVIEW | `dcc6ead1b08e529106f2fada9c75f6fb0f9a783e5881edc89fdc29377e88da37` | 28752 | sections `7.x` |

### **5.2 WP-MASTER（N4 r2）對齊定位（BLOCKER 修補）**

* `LOCATOR = WP-MASTER:/mnt/data/OMOC_實作+WP總表_v4.0.1-r2.md | WP Summary Table | row "WP-004 | Phase-L/L2 Auth Isolation & gh CLI Proof"`  
* proof\_quote（\<=25字）：`WP-004 | Phase-L/L2`

**WP-004 的權威欄位（N4 r2 row 摘要）**

* phase/step：Phase-L / L2  
* purpose：Auth Isolation & gh CLI Proof  
* status：TEMP\_CLOSED  
* outdir：`evidence/_acceptance/${TS}/WP-004`

### **5.3 一致性對照表（與 WP-001\~003；\>=10 欄位）**

目的：避免「格式一致性」變口號；此表用來做結構稽核與差異裁決。

| Field\# | field\_name | WP-001 value | WP-001 locator | WP-002 value | WP-002 locator | WP-003 value | WP-003 locator | WP-004 value | WP-004 locator |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| 01 | header fixed fields | present | NBR-1 header | present | NBR-2 header | present | NBR-3 header | present | \[WP4-S00\] |
| 02 | TOC | present | NBR-1 TOC | present | NBR-2 index | present | NBR-3 TOC | present | \[WP4-S01\] |
| 03 | Anchor Registry | present | NBR-1 (Anchor Registry refs) | N/A/variant | NBR-2 | present | NBR-3 | present | \[WP4-S02\] |
| 04 | Doc Inventory | present | NBR-1 fixed outputs mention | present | NBR-2 | present | NBR-3 | present | \[WP4-S05\] |
| 05 | Requirements \+ Coverage | present | NBR-1 “Coverage Matrix” | present | NBR-2 | present | NBR-3 | present | \[WP4-S07\]/\[WP4-S08\] |
| 06 | TT register (CR\_OPEN=0) | present | NBR-1 status note | present | NBR-2 | present | NBR-3 | present | \[WP4-S15\] |
| 07 | Evidence Triplet | present | NBR-1 outputs list | present | NBR-2 | present | NBR-3 | present | \[WP4-S13\] |
| 08 | Drift ledger | present | NBR-1 drift sections | present | NBR-2 | present | NBR-3 | present | \[WP4-S09\] |
| 09 | Runbook \+ WI | present | NBR-1 runbook/WI | present | NBR-2 | present | NBR-3 | present | \[WP4-S11\]/\[WP4-S12\] |
| 10 | Self-audit checklist | present | NBR-1 checklist | present | NBR-2 | present | NBR-3 | present | \[WP4-S16\] |

差異裁決：若近鄰文件對同一欄位採不同命名/欄位集合，WP-004 以 **可機械驗證**為優先（Fail-Closed）。

---

## **\[WP4-S06\] SOP 執行紀錄表（可稽核模板）**

本表是「你真的照流程做了」的最低證據模板；實做時請輸出到 `evidence/_acceptance/${TS}/WP-004/sop_record.md`。

| step\_no | action | command\_or\_ui | expected\_artifacts | pass\_criteria | fail\_action |
| ----- | ----- | ----- | ----- | ----- | ----- |
| 1 | Resolve TS \+ outdir | CLI | `.../WP-004/` exists | dir exists | FAIL\_CLOSED |
| 2 | gh presence proof | `command -v gh` | `gh_presence.log` \+ `rc.txt` | log exists | TEMP\_CLOSED \+ TT |
| 3 | gh auth status proof | `gh auth status` | `gh_auth_status.txt` \+ `L2-gh-auth.log` | redacted logs exist | TEMP\_CLOSED \+ TT |
| 4 | optional repo view | `gh repo view --json ...` | `L2-gh-repo.log` or `skip.note` | one of them exists | TEMP\_CLOSED |
| 5 | bundle pack \+ audit | SK08 pack | `evidence_bundle.tgz` \+ `bundle_audit.json` | audit result PASS | FAIL\_CLOSED |
| 6 | verdict finalize | write verdict.json | `verdict.json` | conforms | TEMP\_CLOSED |

---

## **\[WP4-S07\] Requirements Decomposition（\>=12）**

| rq\_id | source\_norm\_locator | short\_requirement | driftable? | must\_have\_evidence | acceptance\_hint |
| ----- | ----- | ----- | ----- | ----- | ----- |
| RQ-WP004-001 | N4 WP-004 row (r2) | Inputs/locators 必對齊 N4=r2 的 WP-004 欄位 | N | Y | grep r1 refs must be 0 |
| RQ-WP004-002 | RBWI L2 `L2-gh-auth` | 必做 `gh auth status`；可失敗但必留痕與去敏 | Y | Y | `L2-gh-auth.log` \+ `gh_auth_status.txt` |
| RQ-WP004-003 | RBWI L2 `L2-gh-repo` | 可選 `gh repo view --json ...`；不用也需記錄原因 | Y | Y | `L2-gh-repo.log` 或 `skip.note` |
| RQ-WP004-004 | RBWI Evidence Contract | Evidence minset：log/rc/index/manifest/bundle/audit | N | Y | minset 1:1 映射 |
| RQ-WP004-005 | BP DoD Evidence Minset | 必出 `verdict.json/checks_manifest.json/evidence_index.md/...` | N | Y | bundle\_audit result PASS |
| RQ-WP004-006 | BP TT rules | UNVERIFIED/缺口 必建 TT 並保持 CR\_OPEN=0 | N | Y | TT register 完整 |
| RQ-WP004-007 | RBWI L2 intent | Auth Isolation 邊界清單化（隔離維度/禁止案例） | Y | Y | reviewer 勾選核對 |
| RQ-WP004-008 | WP-MASTER outdir | 產物必落 `evidence/_acceptance/${TS}/WP-004` | N | Y | 路徑一致 |
| RQ-WP004-009 | CSK SK08 | 打包需遵守 SK08 must\_include/forbidden\_patterns/result | N | Y | `bundle_audit.json` 結構正確 |
| RQ-WP004-010 | (SUPPORT) gh env precedence | 明確寫出 GH\_TOKEN/GITHUB\_TOKEN precedence；只記狀態不吐 token | Y | Y | 文內策略 \+ 不落地 |
| RQ-WP004-011 | (SUPPORT) PAT types | 說明 fine-grained vs classic PAT 風險與最小權限（SUPPORT） | Y | N | 有 SUPPORT 引用且不升格 |
| RQ-WP004-012 | UI\_PATH Gate rule | 若涉及 UI：WEB\_LOCATORs≥2 \+ last\_verified\_at \+ drift\_action；否則 NO\_UI | Y | Y | UI\_PATH 區塊可判定 |
| RQ-WP004-013 | Security: forbidden commands | 硬禁會吐 token 的命令 \+ 機械檢查（grep） | Y | Y | FORBID 表 \+ grep 規則 |
| RQ-WP004-014 | Secrets safety | 去敏需涵蓋 token/username/email；禁止把 gh config/credential store 打包 | Y | Y | scan PASS \+ exclude list |

---

## **\[WP4-S08\] Coverage Map（含 norm quote\<=25字；缺 quote→TT→TEMP\_CLOSED）**

| rq\_id | status | wp004\_locator | norm\_locator | proof\_quote (\<=25字) | gap\_summary | tt\_ref |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| RQ-WP004-001 | PASS | \[WP4-S05\] | N4 WP-004 row (r2) | \`WP-004 | Phase-L/L2\` | r1 refs removed |
| RQ-WP004-002 | PASS | \[WP4-S11\] | RBWI L2 `L2-gh-auth` | `gh auth status` | — | TT-WP004-002(CLOSED) |
| RQ-WP004-003 | PASS | \[WP4-S11\] | RBWI L2 `L2-gh-repo` | `gh repo view --json` | skip 模板已補 | TT-WP004-003(CLOSED) |
| RQ-WP004-004 | PASS | \[WP4-S13\] | RBWI Evidence Contract | `Evidence Minimum Output Set` | — | TT-WP004-004(TEMP\_CLOSED) |
| RQ-WP004-005 | PASS | \[WP4-S13\] | BP Evidence Minset | `verdict.json` | — | TT-WP004-005(TEMP\_CLOSED) |
| RQ-WP004-006 | PASS | \[WP4-S15\] | BP TT rules | `CR_OPEN 為 0` | — | TT-WP004-006(CLOSED) |
| RQ-WP004-007 | PASS | \[WP4-S04\]/\[WP4-S10\] | RBWI L2 intent | `身份隔離` | 維度/禁止案已列 | TT-WP004-007(CLOSED) |
| RQ-WP004-008 | PASS | \[WP4-S11\] | N4 WP-004 outdir | `evidence/_acceptance` | — | TT-WP004-008(CLOSED) |
| RQ-WP004-009 | PASS | \[WP4-S13\] | CSK SK08 | `must_include` | — | TT-WP004-009(CLOSED) |
| RQ-WP004-010 | TEMP\_CLOSED | \[WP4-S13\] | (SUPPORT) gh env | `GH_TOKEN` | 外部易變；僅 SUPPORT | TT-WP004-010(TEMP\_CLOSED) |
| RQ-WP004-011 | TEMP\_CLOSED | \[WP4-S17\] | (SUPPORT) GitHub PAT docs | `fine-grained` | 僅 SUPPORT | TT-WP004-011(TEMP\_CLOSED) |
| RQ-WP004-012 | PASS | \[WP4-S10\] | (SUPPORT) GitHub docs | `Workflow permissions` | UI Gate 已規格化 | TT-WP004-012(CLOSED) |
| RQ-WP004-013 | PASS | \[WP4-S13\] | (SUPPORT) gh auth token manual | `Outputs` | FORBID 表已補 | TT-WP004-013(CLOSED) |
| RQ-WP004-014 | PASS | \[WP4-RB-02\]/\[WP4-S13\] | CSK SK08 forbidden\_patterns | `forbidden_patterns` | exclude/scan 已補 | TT-WP004-014(CLOSED) |

---

## **\[WP4-S09\] Drift & Conflict Ledger（含 r1→r2 裁決、RBWI L2 驗證狀態）**

| ledger\_id | type | before | after | decision | impact | drift\_action |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| DRIFT-WP004-001 | version | N4=r1 引用 | N4=r2 固定 | 以 N4 r2 為 SSOT | 避免 evidence\_locator 錯位 | grep `WP總表_v4.0.1-r1`\=0 |
| DRIFT-WP004-002 | RBWI L2 verify | “L2 正文不可定位” | L2 正文可定位 | 關閉 UNVERIFIED | Coverage 可引用 norm quote | 若 anchor 改名→TT |
| DRIFT-WP004-003 | token handling | “去敏宣告” | Forbidden Commands \+ scan | Fail-Closed 收斂 | 降低 secrets 落地風險 | grep FORBID patterns |
| DRIFT-WP004-004 | UI ambiguity | 未 Gate 化 | UI\_PATH Gate 明確化 | NO\_UI 或 UI 欄位齊全 | 減少漏 UI 風險 | web locator 漂移→更新 |

---

## **\[WP4-S10\] Gates / Thresholds（可機械驗證）**

### **10.1 Entry Gate（進場）**

| gate\_id | rule | mechanical\_check | fail\_action |
| ----- | ----- | ----- | ----- |
| EG-01 | 已解析 TS/outdir | `test -d evidence/_acceptance/$TS/WP-004` | FAIL\_CLOSED |
| EG-02 | 禁止 secrets 外洩配置 | \`test \! \-d \~/.config/gh |  |
| EG-03 | 禁用命令掃描（施工腳本/文件） | `grep -RIn "gh auth token" .`（應只出現在 FORBID 表） | FAIL\_CLOSED |

### **10.2 Exit Gate（退場）**

| gate\_id | rule | mechanical\_check | verdict |
| ----- | ----- | ----- | ----- |
| XG-01 | 必要證據檔存在 | `test -f .../WP-004/gh_auth_status.txt` 等 | PASS / TEMP\_CLOSED |
| XG-02 | 去敏掃描 PASS | `scan_secrets`（見 \[WP4-RB-02\]） | PASS / FAIL\_CLOSED |
| XG-03 | SK08 打包完成 | `test -f evidence_bundle.tgz && test -f bundle_audit.json` | PASS / FAIL\_CLOSED |
| XG-04 | bundle\_audit result=PASS | `jq -r .result bundle_audit.json` | PASS / FAIL\_CLOSED |

### **10.3 「未登入不阻斷」硬門檻矩陣（避免 Fail-Open）**

| scenario | observable signals | required artifacts | decision |
| ----- | ----- | ----- | ----- |
| A) gh 不存在 | `rc` 非 0 且 `command -v gh` 失敗 | `gh_presence.log` \+ `rc.txt` \+ `skip.note` | TEMP\_CLOSED（需補環境） |
| B) gh 存在但未登入 | `gh auth status` 顯示 not logged in（去敏後） | `L2-gh-auth.log` \+ `gh_auth_status.txt` \+ `rc.txt` | TEMP\_CLOSED（不阻斷，但不得宣告 PASS） |
| C) gh 存在且登入 | `gh auth status` 顯示 logged in（去敏後） | 同上 \+ 可選 `L2-gh-repo.log` | PASS（僅限本 WP；後續仍可能 drift） |
| D) 出現 token/secret 命中 | scan 命中或使用 FORBID 命令 | `scan_report.txt` | FAIL\_CLOSED（立即停） |
| E) bundle\_audit \!= PASS | `.result != PASS` | `bundle_audit.json` | FAIL\_CLOSED（不得前進） |

### **10.4 UI\_PATH Gate（NO\_UI 或規格化 UI；本 WP 預設 需要 UI 說明但不強制執行）**

**UI\_PATH 模式裁決**：

* 若你完全不做 UI：必須明示 `NO_UI: true`（並在 SOP 記錄）。  
* 若你需要 UI（常見：Actions workflow permissions / PAT 管理）：必須提供下列欄位（Fail-Closed：缺欄位→TT→TEMP\_CLOSED）。

**UI\_PATH（規格化欄位）**

* `NO_UI`: `false`  
* `WEB_LOCATOR_1`: GitHub Docs（Actions settings / workflow permissions）`(see [WP4-S17])` ([GitHub Docs](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/enabling-features-for-your-repository/managing-github-actions-settings-for-a-repository))  
* `WEB_LOCATOR_2`: GitHub Docs（GITHUB\_TOKEN / workflow auth & permissions）`(see [WP4-S17])` ([GitHub Docs](https://docs.github.com/actions/reference/authentication-in-a-workflow))  
* `last_verified_at`: `2026-02-18`  
* `drift_action`: `若 UI/Docs 結構改版→以站內搜尋關鍵字 "workflow permissions" / "GITHUB_TOKEN permissions" 重新定位並更新 WEB_LOCATORs`

---

## **\[WP4-S11\] Runbook（可重跑施工：step() / rollback / 去敏 / skip case）**

### **11.1 施工前提（Fail-Closed）**

* 本 Runbook **不會**要求你輸入 token；也 **禁止**任何會吐 token 的命令（見 \[WP4-S13.2\]）。  
* 所有輸出先去敏再落盤（token/username/email）。  
* 任一「可變行為」只能被記錄，不得被宣告為 OMOC 規範（外部永遠 SUPPORT）。

### **11.2 目錄與變數（與 N4 WP-004 outdir 對齊）**

* `TS`：時間戳（建議 UTC 格式，如 `20260218T022601Z`）  
* `OUTDIR`：`evidence/_acceptance/${TS}/WP-004`  
* `LOGDIR`：`${OUTDIR}/log`

### **11.3 最小可重跑流程（Local shell）**

set \-euo pipefail

TS="${TS:-$(date \-u \+%Y%m%dT%H%M%SZ)}"  
OUTDIR="evidence/\_acceptance/${TS}/WP-004"  
LOGDIR="${OUTDIR}/log"  
mkdir \-p "${LOGDIR}"

RCFILE="${OUTDIR}/rc.txt"  
: \> "${RCFILE}"

\# 0\) record context (non-secret)  
( uname \-a; echo "TS=${TS}"; pwd ) \> "${OUTDIR}/context.txt" 2\>&1 || true

\# 1\) gh presence  
if command \-v gh \>/dev/null 2\>&1; then  
  gh \--version \> "${OUTDIR}/gh\_version.txt" 2\>&1 || true  
  echo "gh\_present=1" \>\> "${RCFILE}"  
else  
  echo "gh\_present=0" \>\> "${RCFILE}"  
  echo "SKIP: gh not installed" \> "${OUTDIR}/skip.note"  
fi

### **11.4 L2-gh-auth（必做；可失敗但必留痕；輸出必去敏）**

**NORMATIVE**：RBWI L2 指定 `timeout 1m gh auth status || true`。

* `LOCATOR = RBWI:/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md | [ANCHOR:OMOC-RBWI-L2] | step "L2-gh-auth"`（proof\_quote：`gh auth status`）

\# redaction \+ capture (see \[WP4-RB-02\] for robust version)  
timeout 1m gh auth status 2\>&1 | sed \-E \\  
  \-e 's/(Logged in to \[^ \]+ as )\[A-Za-z0-9\_-\]+/\\1REDACTED\_USER/g' \\  
  \-e 's/(Logged in to \[^ \]+ as ).\*/\\1REDACTED\_USER/g' \\  
  \> "${OUTDIR}/gh\_auth\_status.txt" || true

cp "${OUTDIR}/gh\_auth\_status.txt" "${LOGDIR}/L2-gh-auth.log" || true  
echo "L2-gh-auth\_rc=$?" \>\> "${RCFILE}"

### **11.5 L2-gh-repo（可選；不可用或不執行也要留痕）**

**NORMATIVE**：RBWI L2 指定 `timeout 1m gh repo view --json ... || true`。

* `LOCATOR = RBWI:/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md | [ANCHOR:OMOC-RBWI-L2] | step "L2-gh-repo"`（proof\_quote：`gh repo view --json`）

if \[\[ "${DO\_REPO\_VIEW:-0}" \== "1" \]\]; then  
  timeout 1m gh repo view \--json nameWithOwner,isPrivate,defaultBranchRef,viewerPermission 2\>&1 \\  
    | sed \-E 's/\[A-Za-z0-9.\_%+-\]+@\[A-Za-z0-9.-\]+\\.\[A-Za-z\]{2,}/REDACTED\_EMAIL/g' \\  
    \> "${LOGDIR}/L2-gh-repo.log" || true  
  echo "L2-gh-repo\_rc=$?" \>\> "${RCFILE}"  
else  
  echo "SKIP: DO\_REPO\_VIEW=0" \> "${OUTDIR}/repo\_view.skip.note"  
  echo "L2-gh-repo\_rc=SKIP" \>\> "${RCFILE}"  
fi

### **11.6 Secrets scan（Fail-Closed）**

* 若掃描命中 token/secret/email/username 風險模式：**FAIL\_CLOSED**（先修復再往下）  
* 具體掃描工具見 \[WP4-RB-02\]。

### **11.7 打包（依 CSK SK08；Fail-Closed）**

* **NORMATIVE**：SK08 定義 `must_include` / `forbidden_patterns` / `result`，且 `result` 必須為 `PASS` 才算通過。  
  * `LOCATOR = CSK:/mnt/data/OMOC_施工skills_合冊_v4.0.1-r2.md | SK08 | must_include + forbidden_patterns + result`

\# 用 SK08 的策略打包（若你已在 repo 內落地 SK08 腳本，請直接呼叫它）  
\# 這裡只規範「結果必須等價」：bundle\_audit.json.result 必須 PASS

\# (示意) 你應產出：  
\# \- evidence\_bundle.tgz  
\# \- bundle\_audit.json  
\# 並確保 bundle\_audit.json.result \== PASS

### **11.8 verdict.json / checks\_manifest.json / evidence\_index.md（最小證據三件套 \+ index）**

* **NORMATIVE（BP DoD）**：  
  * `LOCATOR = BP:/mnt/data/OMOC_藍圖_v4.0.1-r1.md | 10.2 Evidence Minimum Output Set | [ANCHOR:OMOC-BP-1000]`（proof\_quote：`verdict.json`）

若你尚未有全域生成器：本 WP 允許先以「本 WP 範圍內的最小版」產出，並保持 TEMP\_CLOSED（不得宣告 PASS）。

---

## **\[WP4-S12\] WI（工作指導書：做什麼/何時/產出什麼/失敗怎麼辦/回滾點）**

### **WI-1：你要做什麼（按順序）**

1. 建立 `TS` 與 `OUTDIR`  
2. 確認 `gh` 是否存在（存在/不存在都要留證據）  
3. 必做：執行 `gh auth status`，**先去敏再落盤**  
4. 可選：執行 `gh repo view --json ...` 或寫 `repo_view.skip.note`  
5. 做 secrets scan（命中即 FAIL\_CLOSED）  
6. 依 SK08 打包與產出 `bundle_audit.json`（result 必須 PASS）  
7. 產出 `verdict.json/checks_manifest.json/evidence_index.md`（或建立 TT 保持 TEMP\_CLOSED）

### **WI-2：做完要產出什麼（最小集）**

* `evidence/_acceptance/${TS}/WP-004/context.txt`  
* `evidence/_acceptance/${TS}/WP-004/gh_version.txt`（若 gh 存在）  
* `evidence/_acceptance/${TS}/WP-004/gh_auth_status.txt`（必做）  
* `evidence/_acceptance/${TS}/WP-004/log/L2-gh-auth.log`（必做）  
* `evidence/_acceptance/${TS}/WP-004/log/L2-gh-repo.log` 或 `repo_view.skip.note`  
* `evidence/_acceptance/${TS}/WP-004/rc.txt`  
* `evidence_bundle.tgz` \+ `bundle_audit.json`（SK08）  
* `verdict.json` \+ `checks_manifest.json` \+ `evidence_index.md`

### **WI-3：失敗怎麼辦（Fail-Closed 路徑）**

* 找不到 gh：**不阻斷**，但 `TEMP_CLOSED`，並在 TT 記錄要補的環境條件  
* `gh auth status` timeout：保留 log \+ rc，仍 `TEMP_CLOSED`  
* secrets scan 命中：**立刻 FAIL\_CLOSED**（先修復 redaction/排除清單，再重跑）  
* `bundle_audit.json.result != PASS`：**FAIL\_CLOSED**（不得前進）

### **WI-4：備份點/回滾點**

* 備份點：`OUTDIR` 建立後即為最低備份點  
* 回滾點：見 \[WP4-S14\]（logout/清理；不刪整包）

---

## **\[WP4-S13\] Evidence Contract（minset/路徑/去敏/打包與 Fail-Closed）**

### **13.1 Evidence Minimum Output Set（NORMATIVE 對齊）**

**BP DoD（NORMATIVE）**

* `LOCATOR = BP:/mnt/data/OMOC_藍圖_v4.0.1-r1.md | 10.2 Evidence Minimum Output Set | [ANCHOR:OMOC-BP-1000]`  
* proof\_quote（\<=25字）：`verdict.json`

**RBWI Evidence Contract（NORMATIVE）**

* `LOCATOR = RBWI:/mnt/data/OMOC_施工RB+WI_合冊_v4.0.1-r1.md | Evidence Contract | [ANCHOR:OMOC-RBWI-EVIDENCE-CONTRACT]`  
* proof\_quote（\<=25字）：`Evidence Minimum Output Set`

**CSK SK08（NORMATIVE）**

* `LOCATOR = CSK:/mnt/data/OMOC_施工skills_合冊_v4.0.1-r2.md | SK08`  
* proof\_quote（\<=25字）：`must_include`

### **13.2 Forbidden Commands（硬禁：會吐 token / 會導致 secrets 落地）**

| forbid\_id | command/pattern | why\_forbidden | mechanical\_check |
| ----- | ----- | ----- | ----- |
| FORBID-01 | `gh auth token` | 會直接輸出 token（高風險外洩）([GitHub CLI](https://cli.github.com/manual/gh_auth_token)) | `grep -RIn "gh auth token" .`（只能出現在本表） |
| FORBID-02 | `echo $GH_TOKEN` / `printenv GH_TOKEN` / \`env | grep TOKEN\` | 會把 token 打到 stdout/log |
| FORBID-03 | `cat ~/.config/gh/hosts.yml` | 可能暴露憑證/host 設定；且禁止入包 | bundle exclude \+ scan |
| FORBID-04 | `set -x`（在任何 token 可能存在的 shell） | 會把命令與變數展開寫入 log | grep `set -x` in scripts |

允許命令（示例）：`gh --version`、`gh auth status`、`gh repo view --json ...`（均需先去敏再落盤）。

### **13.3 去敏/遮罩規則（必須可機械檢查）**

* **不得落盤**：token/secret/password、username（若出現於 `gh auth status`）、email  
* **統一替換字串**：`REDACTED_TOKEN`、`REDACTED_USER`、`REDACTED_EMAIL`

掃描規則（示例；可擴充）：

* Email：`[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}`  
* GitHub classic token 常見前綴：`ghp_`（僅作風險偵測，不宣告完整）  
* 任何包含 `token|secret|password` 的明顯片段（大小寫不敏感）

### **13.4 evidence\_bundle 排除清單（禁止把憑證/設定收進包）**

* `~/.config/gh/`（GitHub CLI 設定/hosts）  
* `~/.git-credentials`、`~/.netrc`、任何 `.env` / `*.env`  
* 任何檔名符合 CSK SK08 `forbidden_patterns`：`**/.env`, `**/*.env`, `**/*token*`, `**/*secret*`, `**/*password*`

（NORMATIVE）SK08 forbidden\_patterns：([OWASP Foundation](https://owasp.org/www-project-top-10-for-large-language-model-applications/))（此引用僅支援 OWASP，SK08 屬本地；以 locator proof 為準）

### **13.5 打包與 bundle\_audit（Fail-Closed）**

* `bundle_audit.json.result` 必須為 `PASS`（否則 FAIL\_CLOSED）  
* `must_include` 至少包含：  
  * `verdict.json`  
  * `checks_manifest.json`  
  * `evidence_index.md`  
  * `bundle_audit.json`  
  * `evidence/_acceptance/${TS}/...`（含 `WP-004/`）

若你的 repo 已有 SK08 腳本：以腳本輸出為準；本 WP 僅要求結果等價、且不得引入 secrets。

---

## **\[WP4-S14\] Rollback/Recovery（logout/清理/復原）**

### **14.1 安全 logout（不輸出 token）**

\# 可選：只在你確定要清理本機狀態時執行  
gh auth logout \--hostname github.com || true

### **14.2 清理本次 WP 產物（避免誤刪整包）**

\# 只刪本次 WP-004 子目錄；禁止 rm \-rf evidence/\_acceptance  
rm \-rf "evidence/\_acceptance/${TS}/WP-004" || true

### **14.3 恢復 bundle\_audit.json（若你誤改）**

git checkout \-- bundle\_audit.json || true

---

## **\[WP4-S15\] TT Register（CR\_OPEN=0；每筆都有 close\_conditions / retest\_steps）**

規則：任何缺口/不可驗證/飄移 → 先 TT，再 TEMP\_CLOSED；不得留 OPEN。  
NORMATIVE：`LOCATOR = BP:/mnt/data/OMOC_藍圖_v4.0.1-r1.md | [ANCHOR:OMOC-BP-1600]`（proof\_quote：`CR_OPEN 為 0`）

| tt\_id | title | reason | related\_rq\_ids | close\_conditions | retest\_steps | owner\_role | status |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| TT-WP004-001 | WP-MASTER 對齊 r2 並更新 locators | DRIFT | RQ-WP004-001 | 文內已無 r1 引用 | `grep -n "WP總表_v4.0.1-r1" OMOC_WP-004+RB+WI.md`\=0 | WP-004 Maintainer | CLOSED(DOC) |
| TT-WP004-002 | RBWI L2 正文 locator proof | UNVERIFIED→VERIFIED | RQ-WP004-002/003/007 | 已可定位 L2 並提供短 quote | 搜 `ANCHOR:OMOC-RBWI-L2` 可見 step | SSOT Curator | CLOSED(DOC) |
| TT-WP004-003 | repo view skip 模板 | GAP | RQ-WP004-003 | `repo_view.skip.note` 模板存在 | 設 `DO_REPO_VIEW=0` 產出 skip | Runbook Owner | CLOSED(DOC) |
| TT-WP004-004 | RBWI Evidence Contract 逐欄位對照 | RISK | RQ-WP004-004 | 實跑一次並核對 minset 1:1 | 以真實產物比對表格 | Evidence Auditor | TEMP\_CLOSED |
| TT-WP004-005 | BP DoD 產物與 bundle\_audit gate 實測 | RISK | RQ-WP004-005 | `bundle_audit.result=PASS` | 故意製造 FAIL 案例再修復 | Gatekeeper | TEMP\_CLOSED |
| TT-WP004-006 | TT register 欄位完整性 | CONSISTENCY | RQ-WP004-006 | 本表欄位齊全且 CR\_OPEN=0 | 靜態審查本文件 | Auditor | CLOSED(DOC) |
| TT-WP004-007 | Auth Isolation 維度/禁止案清單化 | GAP | RQ-WP004-007 | 見 \[WP4-S04\]/\[WP4-S10\] 已列出 | reviewer 勾選核對 | Scope Officer | CLOSED(DOC) |
| TT-WP004-010 | GH\_TOKEN/GITHUB\_TOKEN precedence（SUPPORT） | DRIFTABLE | RQ-WP004-010 | SUPPORT 引用存在且不升格 | 追蹤官方文檔更新 | Security Auditor | TEMP\_CLOSED |
| TT-WP004-011 | PAT 類型差異（SUPPORT） | DRIFTABLE | RQ-WP004-011 | SUPPORT 引用存在且不升格 | 追蹤官方文檔更新 | Security Auditor | TEMP\_CLOSED |
| TT-WP004-012 | UI\_PATH Gate 完整性 | STRUCTURE | RQ-WP004-012 | UI\_PATH 欄位齊全 | 檢查本文件 UI\_PATH 區塊 | Drift Auditor | CLOSED(DOC) |
| TT-WP004-013 | Forbidden Commands 硬禁 \+ 機械檢查 | SECURITY | RQ-WP004-013 | FORBID 表存在 | grep 命中只限本表 | Security Auditor | CLOSED(DOC) |
| TT-WP004-014 | 禁止把 gh config/cred store 打包 | SECURITY | RQ-WP004-014 | exclude 清單存在 | `tar -tzf` 確認無 \~/.config/gh | Security Auditor | CLOSED(DOC) |

**CR\_OPEN**：0

---

## **\[WP4-S16\] Self-Audit Checklist（輸出前勾選）**

* Header 含 doc\_id/doc\_title/version/date/baseline\_web\_date/access\_date/authority\_stack  
* TOC 可用且 anchors 全列於 Anchor Registry  
* Doc Inventory 含 N1\~N4、NBR-1\~3、T、R，且含 version\_claim \+ locator\_strategy  
* Requirements Decomposition ≥12 且欄位齊全  
* Coverage Map 每條 rq 有 wp004\_locator \+ norm\_locator \+ proof\_quote(\<=25字)  
* Runbook 含：目的/命令/輸出檔/rc 判讀/失敗處置/回滾點  
* Forbidden Commands 表存在且可 grep 檢測  
* GH\_TOKEN/GITHUB\_TOKEN precedence 以 SUPPORT 呈現且不升格  
* UI\_PATH Gate：NO\_UI 或 WEB\_LOCATORs≥2 \+ last\_verified\_at \+ drift\_action  
* Evidence Contract 含 minset/路徑/去敏/排除清單/打包/Fail-Closed  
* TT Register：CR\_OPEN=0；每筆 TT 非 OPEN  
* Drift & Conflict Ledger 含 r1→r2、RBWI L2 驗證狀態  
* Web Evidence Appendix ≥8 且標明 SUPPORT  
* Risk Register 覆蓋 secrets/權限/漂移/誤刪/注入

---

## **\[WP4-S17\] Web Evidence Appendix（SUPPORT only；\>=8）**

規則：外部資料僅 SUPPORT（描述易變行為/風險提醒），不得覆寫 NORMATIVE。

| source\_id | title | domain | url | access\_date | claim\_supported | mapped\_to | trust\_notes |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| WEB-001 | gh auth token | cli.github.com | `https://cli.github.com/manual/gh_auth_token` | 2026-02-18 | 該命令輸出 token（高風險） | FORBID-01 | 官方 CLI manual。([GitHub CLI](https://cli.github.com/manual/gh_auth_token)) |
| WEB-002 | gh help environment | cli.github.com | `https://cli.github.com/manual/gh_help_environment` | 2026-02-18 | GH\_TOKEN/GITHUB\_TOKEN precedence 與覆蓋行為 | RQ-WP004-010 | 官方 CLI manual。([GitHub CLI](https://cli.github.com/manual/gh_help_environment)) |
| WEB-003 | gh auth status | cli.github.com | `https://cli.github.com/manual/gh_auth_status` | 2026-02-18 | `gh auth status` 用途與輸出行為（不應吐 token） | RQ-WP004-002 | 官方 CLI manual。([GitHub CLI](https://cli.github.com/manual/gh_auth_status)) |
| WEB-004 | Use GITHUB\_TOKEN for authentication in workflows | docs.github.com | `https://docs.github.com/actions/reference/authentication-in-a-workflow` | 2026-02-18 | GITHUB\_TOKEN 用法與 permissions 調整 | UI\_PATH / RISK permissions | GitHub 官方文件。([GitHub Docs](https://docs.github.com/actions/reference/authentication-in-a-workflow)) |
| WEB-005 | GITHUB\_TOKEN (concepts/security) | docs.github.com | `https://docs.github.com/en/actions/concepts/security/github_token` | 2026-02-18 | GITHUB\_TOKEN 概念與權限限制 | RISK permissions | GitHub 官方文件。([GitHub Docs](https://docs.github.com/en/actions/concepts/security/github_token)) |
| WEB-006 | Managing GitHub Actions settings for a repository | docs.github.com | `https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/enabling-features-for-your-repository/managing-github-actions-settings-for-a-repository` | 2026-02-18 | Workflow permissions UI/設定位置 | UI\_PATH Gate | GitHub 官方文件。([GitHub Docs](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/enabling-features-for-your-repository/managing-github-actions-settings-for-a-repository)) |
| WEB-007 | Managing your personal access tokens | docs.github.com | `https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens` | 2026-02-18 | PAT 管理與安全建議（最小權限/到期） | RQ-WP004-011 | GitHub 官方文件。([GitHub Docs](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens)) |
| WEB-008 | Fine-grained personal access tokens (announcement/context) | github.blog | `https://github.blog/security/application-security/fine-grained-personal-access-tokens-for-github/` | 2026-02-18 | fine-grained vs classic 的方向與風險語境 | RQ-WP004-011 | GitHub 官方 Blog。([The GitHub Blog](https://github.blog/security/application-security/introducing-fine-grained-personal-access-tokens-for-github/)) |
| WEB-009 | OWASP LLM01 Prompt Injection | genai.owasp.org | `https://genai.owasp.org/llmrisk/llm01-prompt-injection/` | 2026-02-18 | prompt-injection 風險（僅提醒：資料/指令分離） | Risk: injection | OWASP 官方。([OWASP Gen AI Security Project](https://genai.owasp.org/llmrisk/llm01-prompt-injection/)) |
| WEB-010 | OWASP LLM Prompt Injection Prevention Cheat Sheet | cheatsheetseries.owasp.org | `https://cheatsheetseries.owasp.org/cheatsheets/LLM_Prompt_Injection_Prevention_Cheat_Sheet.html` | 2026-02-18 | 防護要點（僅 SUPPORT） | Risk: injection | OWASP 官方。([cheatsheetseries.owasp.org](https://cheatsheetseries.owasp.org/cheatsheets/LLM_Prompt_Injection_Prevention_Cheat_Sheet.html)) |

---

## **\[WP4-S18\] Risk Register（secrets/權限/漂移/誤刪/注入等）**

| risk\_id | scenario | trigger | impact | detection | mitigation | residual\_level |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| RISK-001 | secrets 外洩（token） | 使用 `gh auth token` 或印 env | token 落 log/入包 | FORBID grep \+ scan | 硬禁命令 \+ 去敏 \+ FAIL\_CLOSED | Low |
| RISK-002 | 身份混用（Auth Isolation 破功） | 本機殘留 GH\_TOKEN/GITHUB\_TOKEN | 用錯身份讀 repo | `gh auth status`（去敏） | 施工前清理 env；只記狀態 | Medium |
| RISK-003 | Actions 權限過大 | workflow 未設最小 permissions | 供應鏈/越權風險 | review workflow | 僅 SUPPORT 提醒最小權限([GitHub Docs](https://docs.github.com/actions/reference/authentication-in-a-workflow)) | Medium |
| RISK-004 | UI 漂移 | GitHub Settings UI 改版 | 操作路徑失效 | UI\_PATH drift | 以 docs locators \+ drift\_action 重新定位 | Medium |
| RISK-005 | 誤刪證據 | `rm -rf evidence/_acceptance` | 證據不可追 | CI 缺檔 | 限定只刪 WP-004 子目錄 | Low |
| RISK-006 | prompt-injection 影響施工決策 | 把不可信文本當指令 | 規範被覆寫/誤操作 | 審查輸入 | 明示資料/指令分離（SUPPORT）([OWASP Gen AI Security Project](https://genai.owasp.org/llmrisk/llm01-prompt-injection/)) | Low |

---

## **\[WP4-RB-01\] Runbook step() Template（可重用骨架）**

\# NOTE: Avoid eval. Keep commands explicit. Always redact before writing logs.

step() {  
  local name="$1"; shift  
  local log="${LOGDIR}/${name}.log"  
  local rc

  echo "==\> ${name}" \>\> "${log}"  
  ( "$@" ) 2\>&1 | redact\_stream \>\> "${log}" || true  
  rc="${PIPESTATUS\[0\]:-0}"

  echo "${name}\_rc=${rc}" \>\> "${RCFILE}"  
  return 0  
}

## **\[WP4-RB-02\] Redaction & Scan Toolbox（去敏 \+ 掃描；Fail-Closed）**

redact\_stream() {  
  sed \-E \\  
    \-e 's/\[A-Za-z0-9.\_%+-\]+@\[A-Za-z0-9.-\]+\\.\[A-Za-z\]{2,}/REDACTED\_EMAIL/g' \\  
    \-e 's/(Logged in to \[^ \]+ as )\[A-Za-z0-9\_-\]+/\\1REDACTED\_USER/g' \\  
    \-e 's/(ghp\_)\[A-Za-z0-9\]{20,}/\\1REDACTED\_TOKEN/g' \\  
    \-e 's/(github\_pat\_)\[A-Za-z0-9\_\]{20,}/\\1REDACTED\_TOKEN/g'  
}

scan\_secrets() {  
  local target="${1:?target\_dir}"  
  local report="${2:-${target}/scan\_report.txt}"  
  : \> "${report}"

  \# basic heuristics (extend as needed)  
  grep \-RInE \\  
    '(ghp\_\[A-Za-z0-9\]{20,}|github\_pat\_\[A-Za-z0-9\_\]{20,}|token|secret|password|\[A-Za-z0-9.\_%+-\]+@\[A-Za-z0-9.-\]+\\.\[A-Za-z\]{2,})' \\  
    "${target}" \>\> "${report}" || true

  if \[\[ \-s "${report}" \]\]; then  
    echo "SCAN\_RESULT=FAIL\_CLOSED" \>\> "${RCFILE}"  
    return 1  
  fi

  echo "SCAN\_RESULT=PASS" \>\> "${RCFILE}"  
  return 0  
}

---

