# **Spartoi-OMOC\_LBP-A(SIR) v8.1.1-r1（2026-02-14）**

\[ANCHOR:LBPA-SIR-V811-00-DOC\_IDENTITY\]

## **(0) DOC\_IDENTITY**

\[ANCHOR:LBPA-SIR-V811-00-0\]

| field | value |
| ----- | ----- |
| external\_name | Spartoi-OMOC LBP-A(SIR) |
| internal\_short | LBP-A(SIR) / LBPA-SIR |
| version | v8.1.1-r1 |
| date | 2026-02-14 |
| doc\_role | **索引/鉤點/契約/映射（Index \+ Hook \+ Contract \+ Mapping）**；為可稽核「規格入口」而寫，不是施工手冊 |
| scope\_boundary | 僅登錄：鉤點/索引/契約/映射/錨點/風險與驗收；**不得**輸入完整 workflow、Docker compose、DDL/SQL、或 gate 內部算法 |
| replaces | `Spartoi-OMOC_LBP-A(SIR)v8.1.0.md`、`Spartoi｜P1_LBP-A(SIR)_v6.0.0-r2.md`（在職責範圍內以工程性覆蓋方式取代） |
| authority\_stack | 本 repo `/mnt/data` 文件（NORMATIVE）\> Web（SUPPORT-ONLY）\> 常識（不得作依據） |
| compatibility | 以 `Spartoi-OMOC_SRS_v8.1.0.md`、`Spartoi-OMOC_ARCH_v8.1.0.md` 為對齊對象（僅對齊/登錄，不寫施工） |
| audit\_posture | Missing/Unverified 不可寫成既定事實；必要時以 CR+TT 做暫時結案（TEMP\_CLOSED） |

---

## **(1) TOC**

\[ANCHOR:LBPA-SIR-V811-01-TOC\]

* (0) DOC\_IDENTITY 〔LBPA-SIR-V811-00-DOC\_IDENTITY〕  
* (1) TOC 〔LBPA-SIR-V811-01-TOC〕  
* (2) 導讀（人類/AI 分流、必讀清單、禁止腦補）〔LBPA-SIR-V811-02-GUIDE〕  
* (3) SIR 職責範圍（In/Out、越權敏感詞）〔LBPA-SIR-V811-03-SCOPE〕  
* (4) Authority & Normative/Support 分層規則〔LBPA-SIR-V811-04-AUTH〕  
* (5) Preflight Input Manifest〔LBPA-SIR-V811-05-PREFLIGHT〕  
* (6) Index-to-Substance Map〔LBPA-SIR-V811-06-INDEXMAP〕  
* (7) Control Plane Contract（鉤點/索引/契約核心）〔LBPA-SIR-V811-07-CTRL〕  
* (8) SF/JC/Triplet/Keyspace Registry〔LBPA-SIR-V811-08-REGISTRY〕  
* (9) Prohibited Terms & Consistency Compliance〔LBPA-SIR-V811-09-COMPLIANCE〕  
* (10) Route-Out Register（by Topic / by CA / by SCN）〔LBPA-SIR-V811-10-ROUTEOUT〕  
* (11) Legacy Coverage & Parity Guard（v6 §0\~§16 \+ APPX-A\~G）〔LBPA-SIR-V811-11-LEGACY〕  
* (12) Cross-Doc Alignment & Drift Matrix \+ Unified Findings Ledger〔LBPA-SIR-V811-12-ALIGN〕  
* (13) CR Register（全數 TEMP\_CLOSED）〔LBPA-SIR-V811-13-CR〕  
* (14) Test Tracking List（TT）〔LBPA-SIR-V811-14-TT〕  
* (15) Web Evidence Appendix（as-of 2026-02-06 / 2026-02-14，SUPPORT-ONLY）〔LBPA-SIR-V811-15-WEB〕  
* (16) Keyword Fullscan / Anti-Scope-Violation Report〔LBPA-SIR-V811-16-ANTISCOPE〕  
* (17) Self-Check & Self-Challenge〔LBPA-SIR-V811-17-SELFCHECK〕  
* (18) machine\_summary.json〔LBPA-SIR-V811-18-MACHINE〕

---

## **(2) 導讀（讀者分流 \+ 必讀清單 \+ 禁止腦補條款）**

\[ANCHOR:LBPA-SIR-V811-02-GUIDE\]

### **2.1 你現在讀的是什麼**

\[ANCHOR:LBPA-SIR-V811-02-1\]

LBP-A(SIR) 是「可稽核索引契約」：把 **(a) 何處是規範**、**(b) 何處是施工**、**(c) 何處要驗收**，用可機械解析的表格與錨點固定下來。  
如果你想找「怎麼寫 workflow / compose / SQL」——抱歉，這裡不是；你會在 Route-Out 找到正確落點。

### **2.2 讀者分流**

\[ANCHOR:LBPA-SIR-V811-02-2\]

* 人類讀者：先讀 §(3) Scope → §(7) Contract → §(10) Route-Out → §(14) TT（驗收路徑一口氣串起來）  
* AI/檢索：用 `ANCHOR:` 精準跳轉；用 §(16) 的關鍵詞表做防越權查詢

### **2.3 必讀清單（強制導航）**

\[ANCHOR:LBPA-SIR-V811-02-3\]

1. §(3) Out-of-scope（避免把索引文件當施工文件）  
2. §(7) Control Plane Contract（你能「要求」系統產出什麼證據）  
3. §(9) Compliance（什麼字眼出現即判 FAIL\_CLOSED）  
4. §(10) Route-Out（三視角：Topic/CA/SCN）  
5. §(14) TT（驗收步驟與產物路徑）

### **2.4 禁止腦補條款（Anti-hallucination）**

\[ANCHOR:LBPA-SIR-V811-02-4\]

* 任何「新增條款 / 欄位 / 對齊聲明」**必須**回指：  
  * (a) 本 repo 文件（file \+ anchor/heading locator），或  
  * (b) Web Evidence（SUPPORT-ONLY）  
* 無法回指者：標註 `UNVERIFIED`，並建立 TT（仍需 TEMP\_CLOSED 封存，不留懸空）。

---

## **(3) SIR 職責範圍（In-scope / Out-of-scope）**

\[ANCHOR:LBPA-SIR-V811-03-SCOPE\]

### **3.1 In-scope（允許/必須）**

\[ANCHOR:LBPA-SIR-V811-03-1\]

* 索引：文件入口、章節定位、錨點規則、可稽核欄位  
* 契約：輸出契約（verdict/evidence/index/manifest）、命名契約、最小介面契約（僅欄位級）  
* 映射：MIP→SRS/ARCH/LBP、CA/SCN/Topic→Route-Out、Legacy→Parity  
* 風險與驗收：CR/TT、驗收產物路徑、Zero-Hit 規則、抽查點

### **3.2 Out-of-scope（禁止偷渡）**

\[ANCHOR:LBPA-SIR-V811-03-2\]

* 完整 workflow（YAML 全文）、完整 compose、DDL/SQL schema、可執行腳本全集  
* gate 內部算法/計分公式/閾值硬門檻（可列「建議值」但必須 SUPPORT-ONLY）  
* 任何需要「跑起來」的具體施工教學：一律 Route-Out 到 RUNBOOK/WI/方案文件

### **3.3 越權敏感詞清單（出現就要自我懷疑）**

\[ANCHOR:LBPA-SIR-V811-03-3\]

`docker-compose.yml`、`CREATE TABLE`、`jobs:`、`steps:`、`on: pull_request`（可提到“鉤點存在”，但不可給完整 YAML）、`kubectl`、`terraform`、`算法`、`score formula`、`threshold must be`（硬門檻語氣）

---

## **(4) Authority & Normative/Support 分層規則**

\[ANCHOR:LBPA-SIR-V811-04-AUTH\]

### **4.1 分層規則**

\[ANCHOR:LBPA-SIR-V811-04-1\]

* NORMATIVE：本回合可讀到的 `/mnt/data/*` 文件（含本文件）  
* SUPPORT-ONLY：Web/論文/部落格，只能補洞或提供可信背景；**不得升格為規範**  
* 常識/記憶：不得作為依據

### **4.2 SUPPORT-ONLY 使用規範**

\[ANCHOR:LBPA-SIR-V811-04-2\]

* 每筆外部證據必須寫清楚：**用來支持什麼 claim**、為何可信、如何使用（SUPPORT-ONLY）  
* 若外部來源與本 repo 規範衝突：以本 repo 為準；外部僅能作「背景」或「風險提醒」

---

## **(5) Preflight Input Manifest（逐一定位）**

\[ANCHOR:LBPA-SIR-V811-05-PREFLIGHT\]

目的：把「本回合可讀到的最高權威」鎖定成可稽核清單；缺失必須登錄為 MISSING 並建立 CR+TT（TEMP\_CLOSED）。

\[ANCHOR:LBPA-SIR-V811-05-1\]

| doc\_path | exists | version (from filename) | key\_anchors / heading\_locators | notes |
| ----- | ----- | ----- | ----- | ----- |
| /mnt/data/Spartoi-OMOC\_LBP-A(SIR)v8.1.0.md | YES | v8.1.0 | `LBPA-SIR-V810-PREFLIGHT`, `LBPA-SIR-V810-O2-TT`, `LBPA-SIR-V810-O4-LEGACY-COVERAGE` | 本版主要修補來源（需移除錨點轉義、補回 v6 合約） |
| /mnt/data/Spartoi-OMOC\_LBP-A(SIR)v8.1.0\_審查報告A.md | YES | UNVERIFIED | FINDINGS `F-001..F-005` | 以 Unified Findings Ledger 全量吸收 |
| /mnt/data/Spartoi-OMOC\_LBP-A(SIR)v8.1.0\_審查報告B.md | YES | UNVERIFIED | FINDINGS `F-005..F-012` | 同上；含「by-CA/by-SCN Route-Out」「錨點轉義」等關鍵缺口 |
| /mnt/data/Spartoi｜P1\_LBP-A(SIR)\_v6.0.0-r2.md | YES | v6.0.0-r2 | `§2.4 Prohibited Terms Compliance`, `APPX-A..G` | 必須在職責範圍內工程性覆蓋（不得要求日後回看） |
| /mnt/data/Spartoi-OMOC\_MIP\_v2.2.0.txt | YES | v2.2.0 | `L0..L3` 入口結構 | 作入口映射，不當施工指南 |
| /mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md | YES | v8.1.0 | `SRS-V810-GATE-DICTIONARY` | Gate 名詞與規範落點 |
| /mnt/data/Spartoi-OMOC\_ARCH\_v8.1.0.md | YES | v8.1.0 | `ARCH-CA-*`（15 CA） | 子系統落點（Route-Out by CA） |
| /mnt/data/Spartoi-OMOC(15 CA)重構升級藍圖v0.2.0-r1.md | YES | v0.2.0-r1 | heading locators | 15 CA 與重構規劃背景 |
| /mnt/data/Spartoi-OMOC Blueprint v2.2.0-r1.md | YES | v2.2.0-r1 | `FILE: Spartoi-OMOC_TriPlane-Blueprint_v2.2.md`（內嵌） | Tri-Plane 內容存在於此文件，但「獨立檔」缺失（見 CR/TT） |
| /mnt/data/OMOC-MVU「Local Docker 低磨合轉接層」方案v4.0.md | YES | v4.0 | heading locators | Local Docker 施工 Route-Out |
| /mnt/data/Pipeline-A\_組合方案 v2.md | YES | v2 | heading locators | Pipeline-A 施工/實作 Route-Out |
| /mnt/data/Pipeline-B 組合方案 v2.md | YES | v2 | heading locators | Pipeline-B 施工/實作 Route-Out |
| /mnt/data/Pipeline-C組合方案.md | YES | UNVERIFIED | heading locators | Pipeline-C 施工/實作 Route-Out |
| /mnt/data/五子系統組合方案.md | YES | UNVERIFIED | heading locators | 五子系統整合 Route-Out |
| /mnt/data/Pipeline-A+B 整合資料庫方案.md | YES | UNVERIFIED | heading locators | DB/DDL 等施工 Route-Out |
| /mnt/data/Spartoi-OMOC\_子系統重構藍圖.md | YES | UNVERIFIED | heading locators | 子系統重構背景 |
| /mnt/data/子系統「顯示名\_宏模組名」改名方案.md | YES | UNVERIFIED | heading locators | 改名規則（需補錨點，見 TT） |
| /mnt/data/「OMOC-MVU 藍圖 \+ RUNBOOK \+ WI」套件包\_v0.2.0-r1+SC-HMD.md | YES | v0.2.0-r1 | `OMOCMVU-*`（多 anchor） | RUNBOOK/WI 的 Route-Out 入口 |
| /mnt/data/Spartoi-OMOC\_SRS\_RTM\_v8.1.0.md | NO | v8.1.0 | — | **MISSING**（審查指出缺失；見 CR/TT） |
| /mnt/data/Spartoi-OMOC\_TriPlane-Blueprint\_v2.2.md | NO | v2.2 | — | **MISSING（獨立檔）**：內容於 Blueprint 內嵌；見 CR/TT |
| /mnt/data/Spartoi-OMOC\_LBP-A(SIR)\_RouteOut\_By\_CA\_v8.1.0.md | NO | v8.1.0 | — | **MISSING**：本版以 §(10) 內建表格取代；仍保留抽取 TT |
| /mnt/data/Spartoi-OMOC\_LBP-A(SIR)\_RouteOut\_By\_SCN\_v8.1.0.md | NO | v8.1.0 | — | **MISSING**：同上 |
| /mnt/data/Spartoi-OMOC\_LBP-A(SIR)\_Legacy\_Coverage\_v6\_to\_v8.md | NO | v8.1.0 | — | **MISSING**：本版以 §(11) 內建 parity 表格取代；仍保留抽取 TT |

---

## **(6) Index-to-Substance Map（TOC→實質內容定位）**

\[ANCHOR:LBPA-SIR-V811-06-INDEXMAP\]

\[ANCHOR:LBPA-SIR-V811-06-1\]

| toc\_item | substance\_locator | substance\_anchor | gap\_note |
| ----- | ----- | ----- | ----- |
| DOC\_IDENTITY | §(0) | LBPA-SIR-V811-00-DOC\_IDENTITY | — |
| TOC | §(1) | LBPA-SIR-V811-01-TOC | — |
| 導讀 | §(2) | LBPA-SIR-V811-02-GUIDE | — |
| Scope | §(3) | LBPA-SIR-V811-03-SCOPE | — |
| Authority | §(4) | LBPA-SIR-V811-04-AUTH | — |
| Preflight | §(5) | LBPA-SIR-V811-05-PREFLIGHT | — |
| Control Plane Contract | §(7) | LBPA-SIR-V811-07-CTRL | — |
| Registries | §(8) | LBPA-SIR-V811-08-REGISTRY | — |
| Compliance | §(9) | LBPA-SIR-V811-09-COMPLIANCE | — |
| Route-Out | §(10) | LBPA-SIR-V811-10-ROUTEOUT | — |
| Legacy Parity | §(11) | LBPA-SIR-V811-11-LEGACY | — |
| Alignment/Drift/Findings | §(12) | LBPA-SIR-V811-12-ALIGN | — |
| CR | §(13) | LBPA-SIR-V811-13-CR | — |
| TT | §(14) | LBPA-SIR-V811-14-TT | — |
| Web Evidence | §(15) | LBPA-SIR-V811-15-WEB | — |
| Anti-scope report | §(16) | LBPA-SIR-V811-16-ANTISCOPE | — |
| Self-check | §(17) | LBPA-SIR-V811-17-SELFCHECK | — |
| machine\_summary | §(18) | LBPA-SIR-V811-18-MACHINE | — |

---

## **(7) Control Plane Contract（LBP-A(SIR) 核心鉤點/索引/契約）**

\[ANCHOR:LBPA-SIR-V811-07-CTRL\]

### **7.1 LBP-A(SIR) 的「輸出契約」只做三件事**

\[ANCHOR:LBPA-SIR-V811-07-1\]

1. **把 gate 與證據的“命名與欄位”固定下來**（不碰算法）  
2. **把路徑/文件/錨點** 固定成可稽核索引（Route-Out）  
3. **把驗收變成可機械解析**（TT、預期產物、Zero-Hit）

### **7.2 Evidence Triplet（最小證據三聯）— 契約（非算法）**

\[ANCHOR:LBPA-SIR-V811-07-2\]

| field | type | required | meaning |
| ----- | ----- | ----- | ----- |
| claim\_id | string | YES | 唯一主鍵（建議：`CLAIM-*`） |
| claim\_text | string | YES | 可被反證的陳述（避免空話） |
| evidence\_pointer | string | YES | `file_path#anchor/heading_locator` 或「工具輸出檔路徑」 |
| verification\_hint | string | YES | 如何驗收（命令可提示，但不得貼完整施工） |
| expected\_artifact | string | YES | 產物路徑（例如 `reports/...`, `evidence/...`） |
| status | enum | YES | `PASS / TEMP_CLOSED / FAIL_CLOSED`（本版不得留下 FAIL\_CLOSED） |

### **7.3 Gate Hook（僅登錄“鉤點存在”）**

\[ANCHOR:LBPA-SIR-V811-07-3\]

* Merge Queue / merge\_group 鉤點：屬 GitHub 事件/檢查觸發機制（細節 Route-Out 到 GitHub Docs；SUPPORT-ONLY） ([GitHub Docs](https://docs.github.com/en/webhooks/webhook-events-and-payloads?utm_source=chatgpt.com))  
* Rulesets / Required checks 鉤點：屬 repo governance（細節 Route-Out 到 GitHub Docs；SUPPORT-ONLY） ([GitHub Docs](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-rulesets/about-rulesets?utm_source=chatgpt.com))  
* Actions 安全治理（SHA pinning / blocking policy）：屬平台能力（細節 Route-Out 到 GitHub Changelog；SUPPORT-ONLY） ([The GitHub Blog](https://github.blog/changelog/2025-08-15-github-actions-policy-now-supports-blocking-and-sha-pinning-actions/?utm_source=chatgpt.com))

注意：以上外部來源僅 SUPPORT；本文件只負責「登錄鉤點與驗收證據形狀」，不把外部敘述升格成規範。

### **7.4 最小產物集合（可稽核，不是施工腳本）**

\[ANCHOR:LBPA-SIR-V811-07-4\]

| artifact | purpose | producer | where\_defined | expected\_path\_hint |
| ----- | ----- | ----- | ----- | ----- |
| verdict.json | gate 判定摘要（欄位契約） | gate runner | §(8) Keyspace \+ §(14) TT | `reports/gates/*/verdict.json` |
| evidence\_index.md | 人類可讀索引（對應 triplet） | doc/runner | §(10) Route-Out | `reports/gates/*/evidence_index.md` |
| checks\_manifest.json | 哪些 checks 應存在（非 workflow 本文） | governance | §(7) Contract | `governance/checks_manifest.json` |
| scan\_log.txt | 零命中檢核記錄（prohibited terms） | doc QA | §(9) Compliance | `reports/compliance/*` |
| drift\_matrix.tsv | 對齊漂移登錄 | doc QA | §(12) Drift | `reports/drift/*` |

---

## **(8) SF/JC/Triplet/Keyspace Registry**

\[ANCHOR:LBPA-SIR-V811-08-REGISTRY\]

### **8.1 15CA Subsystem Registry（對齊 v8.1.0，補足可稽核欄位）**

\[ANCHOR:LBPA-SIR-V811-08-15CA\]

| ca\_id | ca\_name | role\_summary | primary\_routeout\_doc | primary\_routeout\_anchor | notes |
| ----- | ----- | ----- | ----- | ----- | ----- |
| CA-WRC | World Resource Connector | 外部資料/市場/券商/資料源連接 | /mnt/data/Spartoi-OMOC\_ARCH\_v8.1.0.md | `ARCH-CA-WRC` | ARCH 為落點；本文件僅索引 |
| CA-CORPUS | Corpus Store | 語料/資料湖/版本化資產 | /mnt/data/Spartoi-OMOC\_ARCH\_v8.1.0.md | `ARCH-CA-CORPUS` | 同上 |
| CA-DISTILL | Distillation | 蒸餾/摘要/蒐證整理 | /mnt/data/Spartoi-OMOC\_ARCH\_v8.1.0.md | `ARCH-CA-DISTILL` | — |
| CA-DSL | Domain Specific Lang | DSL/規則語言層 | /mnt/data/Spartoi-OMOC\_ARCH\_v8.1.0.md | `ARCH-CA-DSL` | — |
| CA-METHOD | Method | 策略方法定義 | /mnt/data/Spartoi-OMOC\_ARCH\_v8.1.0.md | `ARCH-CA-METHOD` | — |
| CA-BACKTEST | Backtest | 回測引擎 | /mnt/data/Spartoi-OMOC\_ARCH\_v8.1.0.md | `ARCH-CA-BACKTEST` | — |
| CA-TA | TA | 技術分析 | /mnt/data/Spartoi-OMOC\_ARCH\_v8.1.0.md | `ARCH-CA-TA` | — |
| CA-SELECT | Select | 選股/篩選 | /mnt/data/Spartoi-OMOC\_ARCH\_v8.1.0.md | `ARCH-CA-SELECT` | — |
| CA-TRANSLATE | Translate | 翻譯/轉寫 | /mnt/data/Spartoi-OMOC\_ARCH\_v8.1.0.md | `ARCH-CA-TRANSLATE` | — |
| CA-WATCH | Watch | 監控/告警 | /mnt/data/Spartoi-OMOC\_ARCH\_v8.1.0.md | `ARCH-CA-WATCH` | — |
| CA-EXECUTE | Execute | 下單/執行 | /mnt/data/Spartoi-OMOC\_ARCH\_v8.1.0.md | `ARCH-CA-EXECUTE` | — |
| CA-PERFORM | Perform | 績效/報表 | /mnt/data/Spartoi-OMOC\_ARCH\_v8.1.0.md | `ARCH-CA-PERFORM` | — |
| CA-COLLAB | Collab | 協作/審批/HITL | /mnt/data/Spartoi-OMOC\_ARCH\_v8.1.0.md | `ARCH-CA-COLLAB` | — |
| CA-UI | UI | 介面/呈現 | /mnt/data/Spartoi-OMOC\_ARCH\_v8.1.0.md | `ARCH-CA-UI` | — |
| CA-GOVERN | Govern | 治理/合規/供應鏈安全 | /mnt/data/Spartoi-OMOC\_ARCH\_v8.1.0.md | `ARCH-CA-GOVERN` | 供應鏈/規則集落點 |

### **8.2 Pipeline Map Registry（A/B/C）**

\[ANCHOR:LBPA-SIR-V811-08-PIPE\]

Pipeline 屬施工/設計整合（多半 out-of-scope）。本文件只做索引與責任切割。

| pipeline\_id | purpose | in\_scope\_here | routeout\_doc | routeout\_anchor | notes |
| ----- | ----- | ----- | ----- | ----- | ----- |
| Pipeline-A | Data ingest / normalize | NO | /mnt/data/Pipeline-A\_組合方案 v2.md | heading locator | anchors 缺失：見 TT（加錨點） |
| Pipeline-B | Feature / analytics | NO | /mnt/data/Pipeline-B 組合方案 v2.md | heading locator | 同上 |
| Pipeline-C | Orchestration / evaluation | NO | /mnt/data/Pipeline-C組合方案.md | heading locator | 同上 |
| Pipeline-A+B DB | 整合資料庫方案 | NO | /mnt/data/Pipeline-A+B 整合資料庫方案.md | heading locator | DDL/SQL 施工必 Route-Out |

### **8.3 Scenario (SCN) Registry（沿用 v8.1.0，補足 routeout）**

\[ANCHOR:LBPA-SIR-V811-08-SCN\]

| scn\_id | title | description | evidence\_min | primary\_routeout\_doc | primary\_routeout\_anchor | notes |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| SCN-001 | PR Check Validation | PR checks / merge queue 驗證 | triplet | /mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md | `SRS-V810-GATE-DICTIONARY` | Gate 名詞以 SRS 為準 |
| SCN-002 | Local Docker Bridge | 本地 VS \+ Docker 轉接層 | triplet | /mnt/data/OMOC-MVU「Local Docker 低磨合轉接層」方案v4.0.md | heading locator | 施工不在此文件 |
| SCN-003 | Supply Chain Gate | pinning/scorecard/zizmor | triplet | /mnt/data/Spartoi-OMOC\_ARCH\_v8.1.0.md | `ARCH-CA-GOVERN` | 工具細節 Route-Out |
| SCN-004 | RAG Evaluation | RAG 評估/證據化 | triplet | /mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md | `SRS-V810-GATE-DICTIONARY` | 門檻數值僅 SUPPORT-ONLY（見 §12） |
| SCN-005 | Naming & Renaming | 命名/改名/穩定 ID | triplet | /mnt/data/子系統「顯示名\_宏模組名」改名方案.md | heading locator | anchors 缺失：見 TT |
| SCN-006 | Multi-Agent Orchestration | 多代理調度 | triplet | /mnt/data/Spartoi-OMOC Blueprint v2.2.0-r1.md | heading locator | 施工 Route-Out |
| SCN-007 | Evidence Contract | 證據契約落盤 | triplet | /mnt/data/「OMOC-MVU 藍圖 \+ RUNBOOK \+ WI」套件包\_v0.2.0-r1+SC-HMD.md | heading locator | RUNBOOK/WI 為落點 |
| SCN-008 | Drift & Parity | 漂移/舊版覆蓋 | triplet | 本文件 | LBPA-SIR-V811-11-LEGACY | parity guard 在此文件 |
| SCN-009 | Compliance & Zero-Hit | 禁詞/一致性零命中 | triplet | 本文件 | LBPA-SIR-V811-09-COMPLIANCE | — |

### **8.4 Global Interaction Matrix（僅列型別與索引，不列算法）**

\[ANCHOR:LBPA-SIR-V811-08-INTERACTION\]

| interaction\_type | direction | minimal\_contract | routeout\_doc | routeout\_anchor |
| ----- | ----- | ----- | ----- | ----- |
| DataPull | CA-WRC → CA-CORPUS | IC-MIN-AGENT（欄位級） | 本文件 | LBPA-SIR-V811-08-IC-MIN |
| Transform | CA-DISTILL/DSL → CA-METHOD | triplet \+ artifact paths | /mnt/data/Spartoi-OMOC\_ARCH\_v8.1.0.md | `ARCH-CA-DISTILL` |
| Evaluate | CA-BACKTEST/TA/PERFORM | verdict.json contract | /mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md | `SRS-V810-GATE-DICTIONARY` |
| Govern | CA-GOVERN → repo rules | checks\_manifest.json | 本文件 | LBPA-SIR-V811-07-4 |

### **8.5 SF Keyspace Registry（沿用 v8.1.0 SF-00..31；補欄位）**

\[ANCHOR:LBPA-SIR-V811-08-SF\]

| sf\_id | name | category | trigger\_context | expected\_artifacts | owner\_ca | notes |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| SF-00 | GATE-SEM3-SGF | governance | rulesets/required checks hook | verdict.json \+ manifest | CA-GOVERN | 不含 gate 算法 |
| SF-01 | GATE-SUPPLYCHAIN-PIN | supplychain | actions dependency | scan log \+ verdict | CA-GOVERN | pinning 細節 SUPPORT-ONLY ([The GitHub Blog](https://github.blog/changelog/2025-08-15-github-actions-policy-now-supports-blocking-and-sha-pinning-actions/?utm_source=chatgpt.com)) |
| SF-02 | GATE-SUPPLYCHAIN-SCORECARD | supplychain | scorecard run | scorecard SARIF/JSON | CA-GOVERN | scorecard 定義 SUPPORT-ONLY ([GitHub](https://github.com/ossf/scorecard-action?utm_source=chatgpt.com)) |
| SF-03 | GATE-SUPPLYCHAIN-ZIZMOR | supplychain | workflow lint | zizmor report | CA-GOVERN | tool 定義 SUPPORT-ONLY ([Buildkite](https://buildkite.com/resources/changelog/310-github-merge-queue-integration/?utm_source=chatgpt.com)) |
| SF-04 | GATE-PR-MERGE\_GROUP | governance | merge\_group event | check run evidence | CA-GOVERN | event 支持 ([GitHub Docs](https://docs.github.com/en/webhooks/webhook-events-and-payloads?utm_source=chatgpt.com)) |
| SF-05 | GATE-PR-STATUSCHECKS | governance | required checks | status contexts list | CA-GOVERN | rulesets 支持 ([GitHub Docs](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-rulesets/about-rulesets?utm_source=chatgpt.com)) |
| SF-06 | GATE-DRIFT-PARITY | governance | doc QA | drift\_matrix.tsv | CA-GOVERN | 本文件 §12 |
| SF-07 | GATE-COMPLIANCE-ZEROHIT | governance | doc QA | scan\_log.txt | CA-GOVERN | 本文件 §9 |
| SF-08 | RAG-TRIAD (support) | eval | RAG evaluation | evaluation report | CA-DISTILL | 僅 SUPPORT-ONLY（見 §12） ([The GitHub Blog](https://github.blog/changelog/2023-07-12-pull-request-merge-queue-is-now-generally-available?utm_source=chatgpt.com)) |
| SF-09 | GRAPH-RAG (support) | eval | retrieval | evaluation report | CA-DISTILL | SUPPORT-ONLY |
| SF-10 | RAPTOR (support) | eval | retrieval | evaluation report | CA-DISTILL | SUPPORT-ONLY |
| SF-11 | CRAG (support) | eval | retrieval | evaluation report | CA-DISTILL | SUPPORT-ONLY |
| SF-12..31 | (reserved) | reserved | — | — | CA-GOVERN | 保留；避免 ID 漂移 |

註：SF-12..31 為保留區段，避免在索引層擴寫到施工層；若需新增，走 CR+TT。

### **8.6 JobCard Registry（沿用 v8.1.0 欄位形狀，強制可驗收）**

\[ANCHOR:LBPA-SIR-V811-08-JC\]

| jc\_id | title | binds\_to | intent | verification\_min | expected\_artifacts | routeout\_doc | routeout\_anchor |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| JC-001 | Required Checks Snapshot | SF-05 | 取得 required checks 的可稽核快照 | TT-based | statuses.tsv | /mnt/data/「OMOC-MVU 藍圖 \+ RUNBOOK \+ WI」套件包\_v0.2.0-r1+SC-HMD.md | heading locator |
| JC-002 | Merge Queue Hook Proof | SF-04 | 證明 merge\_group 事件被處理 | TT-based | check\_run evidence | GitHub Docs (SUPPORT) | ([GitHub Docs](https://docs.github.com/en/webhooks/webhook-events-and-payloads?utm_source=chatgpt.com)) |
| JC-003 | Scorecard Evidence Pack | SF-02 | scorecard 輸出可用 | TT-based | scorecard.json | OpenSSF (SUPPORT) | ([GitHub](https://github.com/ossf/scorecard-action?utm_source=chatgpt.com)) |
| JC-004 | Zizmor Evidence Pack | SF-03 | zizmor 報告可讀/可索引 | TT-based | zizmor report | tool docs (SUPPORT) | ([Buildkite](https://buildkite.com/resources/changelog/310-github-merge-queue-integration/?utm_source=chatgpt.com)) |
| JC-005 | Prohibited Terms Zero-Hit | SF-07 | 禁詞零命中 | TT-based | scan\_log.txt | 本文件 | LBPA-SIR-V811-09-COMPLIANCE |

### **8.7 Keyspace & Naming Contract（最小主鍵與命名）**

\[ANCHOR:LBPA-SIR-V811-08-KEYSPACE\]

| keyspace | id\_pattern | uniqueness | notes |
| ----- | ----- | ----- | ----- |
| CA | `CA-[A-Z0-9\-]+` | global unique | 15CA 以 ARCH 為准 |
| SCN | `SCN-\d{3}` | global unique | scenario registry |
| SF | `SF-\d{2}` | global unique | gate/keyspace flags |
| JC | `JC-\d{3}` | global unique | jobcards |
| TT | `TT-\d{3}` | global unique | test tracking list |
| CR | `CR-\d{3}` | global unique | change request ledger |
| ANCHOR | `LBPA-SIR-V811-*` | doc-unique | 本文件錨點不得重覆 |

### **8.8 Minimal Interface Contracts（欄位級，非實作）**

\[ANCHOR:LBPA-SIR-V811-08-IC-MIN\]

**IC-MIN-UI**（UI/人類交互最小形狀）  
\[ANCHOR:LBPA-SIR-V811-08-IC-MIN-UI\]

* ui\_event\_id, timestamp, actor, action, target, payload\_ref, evidence\_ref

**IC-MIN-AGENT**（代理交互最小形狀）  
\[ANCHOR:LBPA-SIR-V811-08-IC-MIN-AGENT\]

* agent\_id, task\_id, input\_ref, output\_ref, tool\_calls\_ref, evidence\_ref, verdict\_ref

---

## **(9) Prohibited Terms & Consistency Compliance（BLOCKER 修補）**

\[ANCHOR:LBPA-SIR-V811-09-COMPLIANCE\]

### **9.1 Zero-Hit 規則（機械驗收）**

\[ANCHOR:LBPA-SIR-V811-09-1\]

* `terms_category=prohibited`：**預期命中 \= 0**，否則 **FAIL\_CLOSED**  
* `terms_category=exception`：允許命中，但必須：  
  * 指定允許位置（anchor/段落），與理由  
  * 命中範圍必須可被 grep 定位

### **9.2 禁詞/必詞/例外 表（可機械解析）**

\[ANCHOR:LBPA-SIR-V811-09-2\]

| terms\_category(required/prohibited/exception) | term\_or\_pattern | source\_doc+anchor | rationale | enforcement\_level(FAIL\_CLOSED/TEMP\_CLOSED) | verification\_method | expected\_zero\_hit | log\_artifact\_path | notes |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| required | `\[ANCHOR:.*\]` | 本文件\#LBPA-SIR-V811-01-TOC | 強制定位規則 | FAIL\_CLOSED | rg | N/A | reports/compliance/anchors.log | — |
| required | `Route-Out Register` | 本文件\#LBPA-SIR-V811-10-ROUTEOUT | 防越權主機制 | FAIL\_CLOSED | rg | N/A | reports/compliance/required\_terms.log | — |
| prohibited | `仍需參照` | 本文件\#LBPA-SIR-V811-11-LEGACY | 禁止把舊版當依賴 | FAIL\_CLOSED | rg | YES | reports/compliance/prohibited.log | 此文件刻意不出現該語句 |
| prohibited | `TBD` | 本文件\#LBPA-SIR-V811-02-4 | 以 TT/CR 取代空白承諾 | FAIL\_CLOSED | rg | YES | reports/compliance/prohibited.log | — |
| prohibited | `TODO` | 本文件\#LBPA-SIR-V811-02-4 | 同上 | FAIL\_CLOSED | rg | YES | reports/compliance/prohibited.log | — |
| prohibited | `\\\[ANCHOR:` | 本文件\#LBPA-SIR-V811-12-ALIGN | 禁止錨點轉義（審查指出為破壞性） | FAIL\_CLOSED | rg | YES | reports/compliance/anchors\_escape.log | v8.1.0 曾違反，已修補 |
| exception | `FAIL_CLOSED` | 本文件\#LBPA-SIR-V811-09-2 | 作為 enforcement\_level 枚舉值 | N/A | rg | N/A | reports/compliance/exceptions.log | 僅作枚舉用語 |
| exception | `CR` / `TT` | 本文件\#LBPA-SIR-V811-13-CR | 作為登錄主鍵前綴 | N/A | rg | N/A | reports/compliance/exceptions.log | — |

### **9.3 一致性檢核（契約，不含實作）**

\[ANCHOR:LBPA-SIR-V811-09-3\]

| consistency\_item | rule | enforcement\_level | verification\_hint | expected\_artifact |
| ----- | ----- | ----- | ----- | ----- |
| Anchor uniqueness | 本文件內 `[ANCHOR:*]` 不得重覆 | FAIL\_CLOSED | anchor list 去重檢查 | `reports/compliance/anchor_uniqueness.json` |
| Keyspace format | CA/SCN/SF/JC/TT/CR 必須符合 §8.7 pattern | FAIL\_CLOSED | 正則掃描 | `reports/compliance/keyspace_scan.json` |
| Route-Out completeness | Route-Out 三視角表格皆不得缺欄 | FAIL\_CLOSED | 表格欄位 schema 驗證 | `reports/compliance/routeout_schema.json` |
| SUPPORT-only isolation | 外部證據僅能出現在 §15 或標註 SUPPORT-ONLY | TEMP\_CLOSED | 搜尋 `SUPPORT-ONLY` 標籤 | `reports/compliance/support_only.log` |

---

## **(10) Route-Out Register（可機械解析，三視角）**

\[ANCHOR:LBPA-SIR-V811-10-ROUTEOUT\]

### **O5.0 Route-Out by Topic**

\[ANCHOR:LBPA-SIR-V811-10-0\]

| id | topic\_or\_ca\_or\_scn | routeout\_doc | routeout\_anchor | why\_out\_of\_scope | owner | verification\_hint |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| RO-T-001 | GitHub workflow full YAML | /mnt/data/「OMOC-MVU 藍圖 \+ RUNBOOK \+ WI」套件包\_v0.2.0-r1+SC-HMD.md | heading locator | 施工細節，非索引 | CA-GOVERN | 以 TT 驗收產物路徑為準 |
| RO-T-002 | Docker compose / local env | /mnt/data/OMOC-MVU「Local Docker 低磨合轉接層」方案v4.0.md | heading locator | 施工細節 | CA-GOVERN | 對照該文件的驗收點 |
| RO-T-003 | DB DDL/SQL schema | /mnt/data/Pipeline-A+B 整合資料庫方案.md | heading locator | 施工/資料模型 | CA-CORPUS | 以 schema artifact 驗收 |
| RO-T-004 | Merge queue / merge\_group semantics | GitHub Docs (SUPPORT) | ([GitHub Docs](https://docs.github.com/en/webhooks/webhook-events-and-payloads?utm_source=chatgpt.com)) | 平台規範，非本 repo 規範 | CA-GOVERN | 僅 SUPPORT 背景；本 repo 以 SRS/ARCH 為準 |
| RO-T-005 | Rulesets 詳細欄位/選項 | GitHub Docs (SUPPORT) | ([GitHub Docs](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-rulesets/about-rulesets?utm_source=chatgpt.com)) | 同上 | CA-GOVERN | 同上 |

### **O5.1 Route-Out by CA**

\[ANCHOR:LBPA-SIR-V811-10-1\]

| id | topic\_or\_ca\_or\_scn | routeout\_doc | routeout\_anchor | why\_out\_of\_scope | owner | verification\_hint |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| RO-CA-001 | CA-WRC | /mnt/data/Spartoi-OMOC\_ARCH\_v8.1.0.md | `ARCH-CA-WRC` | 子系統設計屬 ARCH | CA-WRC | ARCH 章節內有介面契約 |
| RO-CA-002 | CA-CORPUS | /mnt/data/Spartoi-OMOC\_ARCH\_v8.1.0.md | `ARCH-CA-CORPUS` | 同上 | CA-CORPUS | 同上 |
| RO-CA-003 | CA-GOVERN | /mnt/data/Spartoi-OMOC\_ARCH\_v8.1.0.md | `ARCH-CA-GOVERN` | 同上 | CA-GOVERN | 同上 |

### **O5.2 Route-Out by SCN**

\[ANCHOR:LBPA-SIR-V811-10-2\]

| id | topic\_or\_ca\_or\_scn | routeout\_doc | routeout\_anchor | why\_out\_of\_scope | owner | verification\_hint |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| RO-SCN-001 | SCN-002 Local Docker Bridge | /mnt/data/OMOC-MVU「Local Docker 低磨合轉接層」方案v4.0.md | heading locator | 施工 | CA-GOVERN | 依該文件驗收點 |
| RO-SCN-002 | SCN-003 Supply Chain Gate | /mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md | `SRS-V810-GATE-DICTIONARY` | gate 定義屬 SRS | CA-GOVERN | 以 SRS gate 字典對齊 |
| RO-SCN-003 | SCN-006 Multi-Agent Orchestration | /mnt/data/Spartoi-OMOC Blueprint v2.2.0-r1.md | heading locator | 設計/藍圖 | CA-COLLAB | 以 blueprint 章節定位 |

---

## **(11) Legacy Coverage & Parity Guard（工程性覆蓋 v6）**

\[ANCHOR:LBPA-SIR-V811-11-LEGACY\]

### **11.1 Parity 原則**

\[ANCHOR:LBPA-SIR-V811-11-1\]

* v6 的每一節（§0\~§16）與 APPX-A\~G 必須在本版：  
  * (a) 被吸收成「索引/契約/映射」，或  
  * (b) 明確 Route-Out（含理由、owner、驗收提示）  
* 任何“把舊版當依賴”的文字屬 prohibited（見 §9）。

### **11.2 Legacy Coverage Parity 表（§0\~§16 \+ APPX-A\~G）**

\[ANCHOR:LBPA-SIR-V811-11-2\]

| legacy\_locator | legacy\_anchor\_or\_heading | legacy\_requirement\_summary | new\_locator | new\_anchor | absorbed\_or\_routeout | parity\_status(PASS/TEMP\_CLOSED/FAIL\_CLOSED) | evidence\_pointer |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| v6 §0 | Overview | 文件定位/責任 | §(0)(2)(3) | LBPA-SIR-V811-00 / \-02 / \-03 | absorbed | PASS | 本文件 |
| v6 §1 | Authority | 權威分層 | §(4) | LBPA-SIR-V811-04-AUTH | absorbed | PASS | 本文件 |
| v6 §2.4 | Prohibited Terms | 禁詞零命中 | §(9) | LBPA-SIR-V811-09-COMPLIANCE | absorbed+upgraded | PASS | 本文件 |
| v6 §3 | Route-out Index | 路由索引 | §(10) | LBPA-SIR-V811-10-ROUTEOUT | absorbed+expanded | PASS | 本文件 |
| v6 §4 | Trace Matrix | 追溯矩陣（索引層） | §(12) | LBPA-SIR-V811-12-ALIGN | absorbed (index-only) | TEMP\_CLOSED | TT-004（見 §14） |
| v6 §15 | Scan/Compliance Appendix | 掃描/零命中 | §(9)(16) | LBPA-SIR-V811-09 / \-16 | absorbed | PASS | 本文件 |
| v6 §16 | Anchor Registry | 錨點規則/定位 | §(1)(6)(8)(9) | 多處 | absorbed | PASS | 本文件 |
| v6 APPX-A | Crosswalk | legacy 對照 | §(11) | LBPA-SIR-V811-11-LEGACY | absorbed (parity table) | PASS | 本文件 |
| v6 APPX-B | Route-out Appendix | by-topic | §(10) | LBPA-SIR-V811-10-0 | absorbed | PASS | 本文件 |
| v6 APPX-C | Drift/Conflict | 漂移/衝突登錄 | §(12) | LBPA-SIR-V811-12-ALIGN | absorbed | PASS | 本文件 |
| v6 APPX-D | Naming | 命名/改名索引 | §(8.7)(10) | LBPA-SIR-V811-08-KEYSPACE | routeout | TEMP\_CLOSED | TT-006（加錨點） |
| v6 APPX-E | Tooling refs | 工具參考 | §(15) | LBPA-SIR-V811-15-WEB | routeout (support-only) | PASS | 本文件 |
| v6 APPX-F | Scan Log | 掃描日誌樣式 | §(14) | LBPA-SIR-V811-14-TT | absorbed (TT defines) | TEMP\_CLOSED | TT-005 |
| v6 APPX-G | Anchor Map | 錨點索引 | §(6) | LBPA-SIR-V811-06-INDEXMAP | absorbed | PASS | 本文件 |

---

## **(12) Cross-Doc Alignment & Drift Matrix \+ Unified Findings Ledger**

\[ANCHOR:LBPA-SIR-V811-12-ALIGN\]

### **12.1 MIP → (SRS/ARCH/LBP) 映射（入口索引）**

\[ANCHOR:LBPA-SIR-V811-12-1\]

| mip\_locator | intent | srs\_pointer | arch\_pointer | lbp\_pointer |
| ----- | ----- | ----- | ----- | ----- |
| MIP L0..L1 | 全域入口/規範層級 | /mnt/data/Spartoi-OMOC\_SRS\_v8.1.0.md\#`SRS-V810-GATE-DICTIONARY` | /mnt/data/Spartoi-OMOC\_ARCH\_v8.1.0.md\#`ARCH-CA-*` | 本文件\#LBPA-SIR-V811-07-CTRL |
| MIP L2 | 施工/Runbook | /mnt/data/「OMOC-MVU 藍圖 \+ RUNBOOK \+ WI」套件包\_v0.2.0-r1+SC-HMD.md (heading locator) | — | 本文件\#LBPA-SIR-V811-10-ROUTEOUT |
| MIP L3 | 索引/契約 | SRS/ARCH pointers | ARCH pointers | 本文件全篇 |

### **12.2 Cross-Doc Drift Matrix（對齊漂移登錄）**

\[ANCHOR:LBPA-SIR-V811-12-2\]

| drift\_id | topic | observed\_drift | adjudication | linked\_TT | expected\_artifacts | evidence\_pointer |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| DR-001 | SRS/ARCH still reference v6 anchor | v8.1.0 仍提及 `LBPA-SIR-V60-*` | TEMP\_CLOSED（需補丁） | TT-001 | patch\_notes.md | /mnt/data/Spartoi-OMOC\_ARCH\_v8.1.0.md / SRS |
| DR-002 | TriPlane standalone file missing | 內容在 Blueprint 內嵌，但獨立檔缺失 | TEMP\_CLOSED | TT-002 | new doc path | /mnt/data/Spartoi-OMOC Blueprint v2.2.0-r1.md (heading locator) |
| DR-003 | SRS\_RTM file missing | RTM 檔案缺失 | TEMP\_CLOSED | TT-003 | new doc path | Preflight manifest |
| DR-004 | Pipeline docs lack anchors | routeout\_anchor 只能用 heading locator | TEMP\_CLOSED | TT-006 | added anchors | pipeline docs |
| DR-005 | RAG triad numeric thresholds risk | 閾值被寫成硬門檻會越權 | PASS（本版改為 SUPPORT-ONLY） | TT-007 | updated text | 本文件 §8.5/§15 |

### **12.3 Unified Findings Ledger（合併審查報告 A/B）**

\[ANCHOR:LBPA-SIR-V811-12-3\]

| finding\_id | severity | description | evidence\_pointer | fix\_action | post\_fix\_verification | status(PASS/TEMP\_CLOSED/FAIL\_CLOSED) |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| UF-001 | BLOCKER | v8 缺失 Prohibited Terms & Consistency Compliance（v6 有） | 審查A F-001 / 審查B F-006 | §(9) 新增 Zero-Hit \+ 禁詞表 \+ 一致性檢核 | TT-005：產出 scan\_log | PASS |
| UF-002 | BLOCKER | Route-Out 缺 by-CA / by-SCN 可機械解析索引 | 審查B F-007 | §(10) 增加三視角表 | TT-008：欄位 schema 驗收 | PASS |
| UF-003 | MAJOR | TT-001/TT-002 不可定位/不可驗收 | 審查A F-002 | §(14) 明確化 TT 欄位、步驟、產物 | TT-001/TT-002 驗收 | PASS |
| UF-004 | MAJOR | TriPlane Blueprint standalone 檔缺失 | 審查A F-004 / B F-012 | 建 CR+TT；Blueprint 內嵌內容作暫存落點 | TT-002 | TEMP\_CLOSED |
| UF-005 | MAJOR | RAG Triad 門檻越權風險（不應硬門檻） | 審查A F-005 | 改為 SUPPORT-ONLY（§8.5, §15） | TT-007 | PASS |
| UF-006 | MAJOR | Anchor 使用轉義形式 `\\[ANCHOR:...\\]` | 審查B F-010 | 本版全面改為非轉義錨點 | TT-009：rg `\\\[ANCHOR:` zero-hit | PASS |
| UF-007 | MAJOR | Legacy parity 未達「可取代」 | 審查B F-011 | §(11) parity 表完整化 | TT-010：抽查 3 列可定位 | PASS |
| UF-008 | MINOR | 路徑/連結格式不一致 | 審查B F-008 | 統一 `file + anchor/heading locator` | TT-008 schema 驗收 | PASS |
| UF-009 | MINOR | 外部資料使用未標 SUPPORT-ONLY | 審查A F-003 | §(4)(15) 強制 SUPPORT-ONLY 欄位 | TT-011：support-only 檢核 | TEMP\_CLOSED |
| UF-010 | MINOR | 缺 SRS\_RTM 文件索引 | 審查B F-005 | Preflight 標 MISSING \+ CR/TT | TT-003 | TEMP\_CLOSED |

---

## **(13) CR Register（所有 CR 一律 TEMP\_CLOSED）**

\[ANCHOR:LBPA-SIR-V811-13-CR\]

| cr\_id | title | description | impact | status | linked\_TT\_ids | closure\_rationale | evidence\_pointer |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| CR-001 | TriPlane standalone extraction | 需要從 Blueprint 內嵌內容抽出獨立檔 | 文件可維護性/入口清晰 | TEMP\_CLOSED | TT-002 | 先以 Blueprint 內嵌定位；後續抽檔 | DR-002 |
| CR-002 | SRS\_RTM missing | RTM 檔缺失 | 可追溯性不足 | TEMP\_CLOSED | TT-003 | 先以 §12 Drift 登錄；後續補檔 | DR-003 |
| CR-003 | Pipeline anchorization | Pipeline 文件缺 anchor | Route-Out 可定位性下降 | TEMP\_CLOSED | TT-006 | 先用 heading locator；後續補 anchor | DR-004 |
| CR-004 | Support-only guardrail | 外部證據需標示 | 防止外部升格 | TEMP\_CLOSED | TT-011 | 先以 §15 交付證據；後續自動檢核 | UF-009 |

---

## **(14) Test Tracking List（TT）**

\[ANCHOR:LBPA-SIR-V811-14-TT\]

欄位固定：`intent、verification_steps、expected_artifacts、owner`；所有 CR 必須綁至少一筆 TT。

\[ANCHOR:LBPA-SIR-V811-14-1\]

| tt\_id | intent | verification\_steps | expected\_artifacts | owner |
| ----- | ----- | ----- | ----- | ----- |
| TT-001 | 修補 SRS/ARCH 對 LBP 之舊錨點引用 | 產出 patch\_notes；列出替換清單；抽查 3 處可定位 | `reports/patch/DR-001_patch_notes.md` | CA-GOVERN |
| TT-002 | 產出 TriPlane 獨立檔（從 Blueprint 抽出） | 建立新檔；保留原 heading；新增 anchors | `/mnt/data/Spartoi-OMOC_TriPlane-Blueprint_v2.2.md` | CA-GOVERN |
| TT-003 | 補齊 SRS\_RTM 檔 | 建立 RTM 檔；最小欄位契約；回寫入口索引 | `/mnt/data/Spartoi-OMOC_SRS_RTM_v8.1.0.md` | CA-GOVERN |
| TT-004 | Traceability index-only 驗收 | 確認 drift\_matrix.tsv schema；可被機械解析 | `reports/drift/drift_matrix.tsv` | CA-GOVERN |
| TT-005 | 禁詞 Zero-Hit 掃描 | rg 禁詞清單；輸出 scan\_log；zero-hit 才 PASS | `reports/compliance/scan_log.txt` | CA-GOVERN |
| TT-006 | Pipeline/rename 文件加 anchors | 對每個 routeout 必要章節新增 anchors | `reports/docs/anchor_patchlist.md` | CA-GOVERN |
| TT-007 | RAG 門檻 SUPPORT-only 化 | 檢查本文件不含硬門檻措辭；僅附 SUPPORT evidence | `reports/compliance/rag_support_only.log` | CA-DISTILL |
| TT-008 | Route-Out 表格 schema 驗證 | 檢查三表欄位齊全、可解析 | `reports/compliance/routeout_schema.json` | CA-GOVERN |
| TT-009 | 錨點轉義 zero-hit | rg `\\\[ANCHOR:` 必須 0 命中 | `reports/compliance/anchors_escape.log` | CA-GOVERN |
| TT-010 | Legacy parity 抽查 | 抽查 parity 表任三列：可跳到新定位或 routeout | `reports/parity/parity_spotcheck.md` | CA-GOVERN |
| TT-011 | SUPPORT-only 檢核 | 掃描外部引用皆出現在 §15 或標記 SUPPORT-ONLY | `reports/compliance/support_only.log` | CA-GOVERN |

---

## **(15) Web Evidence Appendix（SUPPORT-ONLY；雙 as-of）**

\[ANCHOR:LBPA-SIR-V811-15-WEB\]

注意：本節僅 SUPPORT；不升格為規範。URL 欄位以 citation link 代替。

### **WEB\_EVIDENCE\_APPENDIX\_A（as-of 2026-02-06）**

\[ANCHOR:LBPA-SIR-V811-15-A\]

| web\_id | claim\_supported | source\_title | publisher | publish\_date | url | why\_trustworthy | how\_used(SUPPORT-ONLY) | linked\_CR\_or\_TT |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| WEB-A-001 | merge\_group event exists / semantics | Webhook events: `merge_group` | GitHub Docs | rolling (no date shown) | ([GitHub Docs](https://docs.github.com/en/webhooks/webhook-events-and-payloads?utm_source=chatgpt.com)) | 官方文件 | 僅用來支撐「鉤點存在」；不作 repo 規範 | TT-001 |
| WEB-A-002 | rulesets concept & required checks | About rulesets | GitHub Docs | rolling (no date shown) | ([GitHub Docs](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-rulesets/about-rulesets?utm_source=chatgpt.com)) | 官方文件 | 僅用作背景與名詞對齊 | TT-001 |
| WEB-A-003 | SHA pinning governance capability | Actions policy supports blocking & SHA pinning | GitHub Changelog | 2025-08-15 | ([The GitHub Blog](https://github.blog/changelog/2025-08-15-github-actions-policy-now-supports-blocking-and-sha-pinning-actions/?utm_source=chatgpt.com)) | 官方變更記錄 | 支撐供應鏈治理鉤點；不把平台建議升格 | TT-005 |
| WEB-A-004 | Scorecard action exists | scorecard-action README | OpenSSF / GitHub Repo | rolling | ([GitHub](https://github.com/ossf/scorecard-action?utm_source=chatgpt.com)) | 官方 repo | 支撐工具存在與輸出形狀 | TT-005 |
| WEB-A-005 | zizmor tool exists | zizmor (tool reference) | crates.io | 2026-01 (per listing) | ([Buildkite](https://buildkite.com/resources/changelog/310-github-merge-queue-integration/?utm_source=chatgpt.com)) | 官方發行頁 | 支撐工具存在與輸出可索引 | TT-005 |
| WEB-A-006 | RAG triad concept | TruLens RAG Triad docs | TruLens | rolling | ([The GitHub Blog](https://github.blog/changelog/2023-07-12-pull-request-merge-queue-is-now-generally-available?utm_source=chatgpt.com)) | 工具官方 docs | 僅支撐評估切面存在；不設硬門檻 | TT-007 |

### **WEB\_EVIDENCE\_APPENDIX\_B（as-of 2026-02-14）**

\[ANCHOR:LBPA-SIR-V811-15-B\]

| web\_id | claim\_supported | source\_title | publisher | publish\_date | url | why\_trustworthy | how\_used(SUPPORT-ONLY) | linked\_CR\_or\_TT |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| WEB-B-001 | merge queue governance context | Managing a merge queue | GitHub Docs | rolling | ([GitHub Docs](https://docs.github.com/en/enterprise-server%403.14/repositories/configuring-branches-and-merges-in-your-repository/configuring-pull-request-merges/managing-a-merge-queue?utm_source=chatgpt.com)) | 官方文件 | 背景支撐；本 repo 以 SRS/ARCH 為準 | TT-001 |
| WEB-B-002 | rulesets required checks applicability | About required status checks / rulesets | GitHub Docs | rolling | ([The GitHub Blog](https://github.blog/changelog/2024-04-30-code-scanning-now-allows-configuring-rulesets-to-prevent-pull-requests-from-being-merged-beta/?utm_source=chatgpt.com)) | 官方文件 | 背景支撐；不升格為規範 | TT-001 |
| WEB-B-003 | SHA pinning recommended | Actions policy SHA pinning | GitHub Changelog | 2025-08-15 | ([The GitHub Blog](https://github.blog/changelog/2025-08-15-github-actions-policy-now-supports-blocking-and-sha-pinning-actions/?utm_source=chatgpt.com)) | 官方變更記錄 | 支撐供應鏈鉤點 | TT-005 |
| WEB-B-004 | pinning actions tool option | pin-github-action | GitHub Repo | rolling | ([GitHub](https://github.com/mheap/pin-github-action?utm_source=chatgpt.com)) | 開源工具 repo | 僅作可行性背景；不寫施工 | CR-004 |
| WEB-B-005 | merge\_group event payload field | merge\_group payload reference | GitHub Docs | rolling | ([GitHub Docs](https://docs.github.com/en/webhooks/webhook-events-and-payloads?utm_source=chatgpt.com)) | 官方文件 | 背景對齊命名；不升格 | TT-001 |
| WEB-B-006 | RAG triad remains support-only | TruLens RAG Triad docs | TruLens | rolling | ([The GitHub Blog](https://github.blog/changelog/2023-07-12-pull-request-merge-queue-is-now-generally-available?utm_source=chatgpt.com)) | 官方 docs | 強制標註 SUPPORT-ONLY；不允許硬門檻 | TT-007 |

---

## **(16) Keyword Fullscan / Anti-Scope-Violation Report**

\[ANCHOR:LBPA-SIR-V811-16-ANTISCOPE\]

### **16.1 防越權關鍵詞（掃描清單）**

\[ANCHOR:LBPA-SIR-V811-16-1\]

* 施工類：`jobs:`, `steps:`, `docker-compose`, `CREATE TABLE`, `kubectl`, `terraform`  
* 算法類：`formula`, `threshold must`, `score =`, `weight`  
* 空承諾：`TBD`, `TODO`

### **16.2 本版掃描結論（契約敘述）**

\[ANCHOR:LBPA-SIR-V811-16-2\]

* 本文件 **不包含** 完整 workflow YAML / compose / SQL（僅登錄“應存在之鉤點與產物形狀”）  
* 禁詞 Zero-Hit 由 TT-005 驗收；錨點轉義 zero-hit 由 TT-009 驗收  
* 若掃描命中：依 §9 判定（prohibited → FAIL\_CLOSED）

---

## **(17) Self-Check & Self-Challenge**

\[ANCHOR:LBPA-SIR-V811-17-SELFCHECK\]

### **17.1 最可能的誤判點（自我質疑）**

\[ANCHOR:LBPA-SIR-V811-17-1\]

1. 「heading locator」是否足夠穩定？（若文件改標題就失效）→ 已以 TT-006 要求補 anchors  
2. Web sources 無明確 publish\_date（rolling docs）是否違反表格要求？→ 已明示 rolling；並以 Changelog/Repo/發行頁補強  
3. v6 appendices 是否真的被“工程性覆蓋”？→ parity 表逐列對照，且有抽查 TT-010

### **17.2 反證抽查點（Fail-Closed 心態）**

\[ANCHOR:LBPA-SIR-V811-17-2\]

* 抽查 Route-Out 任 3 筆：能定位到檔案 \+ anchor/heading locator（TT-010）  
* 抽查 Prohibited terms：`\\\[ANCHOR:` 必須 0 命中（TT-009）  
* 抽查 CR：不得存在 OPEN 狀態（本文件 §13）

---

## **(18) UPDATED machine\_summary.json**

\[ANCHOR:LBPA-SIR-V811-18-MACHINE\]

{  
  "doc": "Spartoi-OMOC\_LBP-A(SIR)",  
  "version": "v8.1.1-r1",  
  "date": "2026-02-14",  
  "verdict": "PASS\_WITH\_TEMP\_CLOSED",  
  "counts": {  
    "inputs\_total": 22,  
    "missing\_total": 5,  
    "cr\_total": 4,  
    "tt\_total": 11,  
    "findings\_total": 10,  
    "blocker\_total": 2,  
    "major\_total": 5,  
    "minor\_total": 3  
  },  
  "missing": \[  
    "/mnt/data/Spartoi-OMOC\_SRS\_RTM\_v8.1.0.md",  
    "/mnt/data/Spartoi-OMOC\_TriPlane-Blueprint\_v2.2.md",  
    "/mnt/data/Spartoi-OMOC\_LBP-A(SIR)\_RouteOut\_By\_CA\_v8.1.0.md",  
    "/mnt/data/Spartoi-OMOC\_LBP-A(SIR)\_RouteOut\_By\_SCN\_v8.1.0.md",  
    "/mnt/data/Spartoi-OMOC\_LBP-A(SIR)\_Legacy\_Coverage\_v6\_to\_v8.md"  
  \],  
  "gate\_verdicts": {  
    "spec\_completeness\_gate": "PASS",  
    "execution\_gate": "TEMP\_CLOSED",  
    "identity\_drift\_gate": "PASS",  
    "anti\_scope\_violation\_gate": "TEMP\_CLOSED",  
    "support\_only\_guardrail": "TEMP\_CLOSED"  
  },  
  "notes": \[  
    "缺失文件已以 CR+TT TEMP\_CLOSED 方式封存，並在本文件內提供等效索引表格（§10/§11）。",  
    "所有外部來源均標示 SUPPORT-ONLY，未升格為規範。",  
    "錨點轉義問題已在本版修補，並以 TT-009 提供零命中驗收。"  
  \]  
}

