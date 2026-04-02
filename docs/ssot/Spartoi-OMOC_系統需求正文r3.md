# Spartoi-OMOC_系統需求正文

> external_name: `Spartoi-OMOC_系統需求正文`  
> doc_id: `SOMOC-SR-MAIN.v2026.03.13-r3`  
> version: `v2026.03.13-r3`  
> status: `DEFINITIVE_WITH_STRICT_COVERAGE_CLOSURE`  
> document_scope: `single-file full system requirements body`  
> default_rule: `Fail-Closed`  
> supersedes: `Spartoi-OMOC_系統需求正文（舊版）`、`Spartoi-OMOC_系統需求正文v2026.03.13-r2`，並工程性吸收/取代 `《Spartoi舊版需求總和》`、`《Spartoi｜P1_Q&A》`、`《Spartoi｜StRS+SyRS_v4.1.0》`、`《Spartoi系統21項需求》`  
> replaceability_policy: `within system-requirements scope, this document is the single primary requirements body; owner docs remain owner docs, but the five legacy requirement texts no longer need to be consulted for current development`  
> timezone: `Asia/Taipei`  
> intended_use: `requirements adjudication / system design baseline / subsystem scope lock / acceptance precondition reference`

---

## 文件定位與合法使用聲明

本文件是 **Spartoi-OMOC 在系統需求正文範圍內的唯一完整 Markdown 正文**。  
它不是審查報告、不是 patch note、不是導航骨架、不是 runbook、不是 package owner schema，也不是「先給方向、之後再補正文」的半成品。  
自本修訂版起，**後續開發在系統需求正文範圍，不再需要回查舊版《Spartoi-OMOC_系統需求正文》、`《Spartoi舊版需求總和》`、`《Spartoi｜P1_Q&A》`、`《Spartoi｜StRS+SyRS_v4.1.0》`、`《Spartoi系統21項需求》` 作為現行主參照**；這五份文件的仍有效內容，均已在本版被明示處置為 `absorbed / rewritten / route-out / archived / traceability-only / fail-closed`。

本文件同時遵守兩個邊界：

1. **本文件是需求正文主參照**：負責回答系統必須成為什麼、不得成為什麼、誰負責什麼、什麼算過、什麼時候必須停。  
2. **owner 文件仍是 owner 文件**：schema、validator、release guard、MC4 / WP.Master、Dev/Ops HOW、LBP 詳表、Package B/D/E engine 不在本文件內重寫，但本文件已把「何時必須 route-out、何者不可越權」寫死。

一句話版：**這份文件負責定法，不負責假裝自己同時是法院、工廠、包裝廠、安裝精靈與券商前台。**

---

## 目錄（TOC｜anchors-first）

1. [文件封面與文件定位](#1-文件封面與文件定位)
2. [導讀與使用規則](#2-導讀與使用規則)
3. [權威堆疊與裁決規則](#3-權威堆疊與裁決規則)
4. [舊需求／舊方案／舊 P0-P1 文檔的法律地位、吸收與封存規則](#4-舊需求舊方案舊-p0-p1-文檔的法律地位吸收與封存規則)
5. [系統整體目標、範圍、非範圍、成功條件](#5-系統整體目標範圍非範圍成功條件)
6. [現行工具鏈與主環境裁決](#6-現行工具鏈與主環境裁決)
7. [全域資料主幹、工件契約、證據與治理原則](#7-全域資料主幹工件契約證據與治理原則)
8. [15 子系統總覽與整體關係](#8-15-子系統總覽與整體關係)
9. [15 子系統逐一正文要求](#9-15-子系統逐一正文要求)
10. [跨子系統流程與 Pipeline / 五子系統 / A+B DB 對應](#10-跨子系統流程與-pipeline--五子系統--ab-db-對應)
11. [交易邊界、XQ / XS / HITL / Kill Switch / T0 / T1 / parity 規則](#11-交易邊界xqxs-hitlkill-switch--t0t1--parity-規則)
12. [Gate / Evidence / TT / CR_OPEN / CONFIGURE_REQUIRED / Fail-Closed 規則](#12-gate--evidence--tt--cr_open--configure_required--fail-closed-規則)
13. [Legacy absorption / rewrite / archive / traceability 說明](#13-legacy-absorption--rewrite--archive--traceability-說明)
14. [最終 replaceability / 使用裁決聲明](#14-最終-replaceability--使用裁決聲明)
15. [附錄 A：舊需求吸收關鍵面向總表](#附錄-a本文件直接吸收的舊需求關鍵面向清單)
16. [附錄 B：route-out 指引](#附錄-b本文件的-route-out-指引)
17. [附錄 C：直接規範來源集合](#附錄-c本文件使用的直接規範來源集合)
18. [附錄 D：五份舊需求／舊正文 closure matrix](#附錄-d五份舊需求舊正文-closure-matrix)
19. [附錄 E：High-risk RTM crosswalk](#附錄-ehigh-risk-rtm-crosswalk)
20. [附錄 F：P1→P4 文檔產出序列、DELIVER 交付總表與子系統級小 P1](#附錄-fp1p4-文檔產出序列deliver-交付總表與子系統級小-p1)
21. [附錄 G：supporting refs alias / availability ledger](#附錄-gsupporting-refs-alias--availability-ledger)

---

## Quick Index（給人與 AI/LLM 的最短路）

- 要找**唯一合法裁決序位**：看 §3.1  
- 要找**單人 + 多 AI/LLM 協作、No-API、WebTools-NA、語言規則**：看 §5.2  
- 要找**本地 VS / Docker / GitHub repo / OpenCode / Oh My OpenCode / GitHub Copilot PRO / Codespaces fallback**：看 §6  
- 要找**Python 3.13 最重核心 / PowerShell 7 最薄外殼 / Flet / Windows / 回貼驗證處置**：看 §6.3、§9.15  
- 要找**ReferenceDB / RunLedger / SpecPack / EvidencePack / mandatory artifact sets**：看 §7  
- 要找**15 子系統白名單、stable_id、display_name、macro_module_name**：看 §8.1  
- 要找**CA-METHOD / CA-BACKTEST / CA-PERFORM / XQ 邊界 / TVE / parity / 台股歷史分 K**：看 §9.5、§9.6、§9.12、§11  
- 要找**SEM³ / SQM-7 / 語意還原度 / Claim 庫 / 語義報告 / 對齊矩陣 / 四象限讀者區 / Job-Card / Evidence→Rules→Interface / source tiering / Hybrid retrieval**：看 §7.3、§8.4、§9.1~§9.4、§12  
- 要找**五份舊文檔如何被吸收與關閉**：看 §4、§13、附錄 D

---
## 1. 文件封面與文件定位

### 1.1 本文件的定位

本文件是 Spartoi-OMOC 在「新版系統需求正文」範圍內的唯一整合正文。  
它處理的不是操作教學，不是審查報告，也不是路由骨架，而是：

1. 系統整體目標、邊界、非目標與成功條件。
2. 現行工具鏈與主施工環境裁決。
3. 全域資料主幹與工件契約。
4. 15 子系統的正式職責、輸入、輸出、邊界、驗收與失敗處置。
5. Pipeline A / B / C 與五子系統的整體關係。
6. XQ / XS / WATCH / EXECUTE / HITL / Kill Switch / T0 / T1 的硬邊界。
7. Gate / Evidence / TT / CR_OPEN / CONFIGURE_REQUIRED / Fail-Closed 的正文級規則。
8. 舊需求、舊方案、舊 P0 / P1 文檔的吸收、改寫、封存與 traceability 規則。

### 1.2 本文件取代的對象

本文件在系統需求正文範圍內，正式取代以下五份舊文檔／舊正文：

- `舊版《Spartoi-OMOC_系統需求正文》`
- `《Spartoi｜P1_Q&A》`
- `《Spartoi｜StRS+SyRS_v4.1.0》`
- `《Spartoi系統21項需求》`
- `《Spartoi舊版需求總和》`

取代的意思不是把它們藏起來，而是把它們仍有效的需求、目標、約束、工件、驗收、邊界，重新落回現行 SSOT 體系下的可用正文。  
自本文件生效後，**五份舊需求／舊正文不再具有現行主施工依據地位**。

### 1.3 本文件不取代的對象

本文件不取代：

- `Spartoi-OMOC_SSOT_合冊` 全文。
- `Spartoi-OMOC_LBP_合冊` 全文。
- `Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊` 的 owner 邏輯與 package 邊界。
- `Spartoi-OMOC_SubP1-LITE+MVP_合冊` 的 Spine / Pack / Minimal schema owner 定義。
- `Ops RUNBOOK_合冊` 與 Dev/Ops RBWI 的 HOW。
- Package B / D / E 的 schema、validator、release guard、MC4 / WP.Master engine。

本文件的責任，是把這些 owner 文件之間的需求位置、中央義務與子系統責任，整理成**可獨立使用的系統需求正文**。  
它不是來搶 schema owner 的位置；一份需求正文妄圖重寫 validator，和用湯匙修火箭一樣，志向感人，結果可疑。

---

## 2. 導讀與使用規則

### 2.1 強制閱讀順序

後續閱讀與施工，固定遵守以下順序：

1. 先讀本文件第 3 章權威堆疊與裁決規則。
2. 再讀本文件第 5、6、7、8、10、11、12 章，把系統整體邊界先鎖定。
3. 接著依需求所在子系統，閱讀第 9 章對應子系統正文。
4. 需要 schema、evidence schema、TT state machine、validator、route register 時，route-out 至 Package B / E。
5. 需要 HOW / CLI / YAML / 操作步驟時，route-out 至 Dev/Ops Runbook。
6. 需要更細的接口、ADR、C4、fitness catalogue 時，route-out 至 LBP-B / C / D / E。
7. 任何「已閉合」「已 PASS」「已可 release」「已對齊 XQ parity」類主張，若無 owner 文件或 evidence supporting，均視為不成立。

### 2.2 全域使用規則

本文件強制採用下列全域規則：

- **No-Source-No-Norm**：沒有上游來源與 owner，不得把句子寫成終局規範。
- **No-Anchor-No-Claim**：沒有可回查定位，不得宣稱已覆蓋、已吸收、已取代、已關閉。
- **One-Rule-One-Place**：同一條規則只能有一個最終 owner；本文件只做中央正文裁決，不複寫 owner schema。
- **Blueprint ≠ Runbook ≠ Delivery**：契約、操作、交付不混寫。
- **Document replaceability ≠ Release readiness**：文檔可裁決，不代表 repo / validator / required checks 已可交付。
- **Fail-Closed**：來源不足、衝突未解、schema 缺失、驗證未落地、XQ parity 未校準、Gate 未觸發、threshold 未授權時，禁止硬判 PASS。
- **Legacy must be disposed, not ignored**：舊條目必須明示為 absorbed / rewritten / archived / route-out / traceability-only / fail-closed，其餘一律視為處置不完整。

### 2.3 本文件的可獨立性邊界

本文件必須獨立覆蓋四份舊文檔中的系統需求內容；但對於以下內容，本文件只做需求正文裁決，不在正文內展開 HOW：

- JSON / SQL / manifest schema 的逐欄位定義。
- validator、release guard、merge queue、checks engine 的實作。
- DevContainer / GitHub Actions / 操作按鍵流程。
- 實際下載腳本、實際資料來源 endpoint、實際 XQ 平台點擊步驟。

換句話說，本文件要能讓開發知道**系統必須成為什麼、不得成為什麼、誰負責什麼、什麼算過、什麼時候該停**；  
但不把自己寫成安裝手冊或神奇秘笈。

---

## 3. 權威堆疊與裁決規則

### 3.1 唯一合法權威堆疊

本次《Spartoi-OMOC_系統需求正文》之唯一合法裁決序位，固定如下；任何章節、任何子系統、任何附錄都不得擅自改寫：

1. `Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文`
2. `Spartoi-OMOC_SSOT_合冊`
3. `Spartoi-OMOC_LBP_合冊`
4. `Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊`
5. `Spartoi-OMOC_SubP1-LITE+MVP_合冊`
6. `OMOC_合冊`
7. `參考方案合冊`

補充硬規則：

- `Ops RUNBOOK_合冊` 只可作操作、落地、邊界與 route-out 輔助參照，不得推翻上列 1~7。  
- 低順位文件不得反向覆寫高順位文件。  
- owner 文件的 scope-lock 必須被尊重；高順位不是拿來越權重寫 schema owner 的藉口。  
- 若中央工程正文對某舊需求已明示 `archive / supersede / traceability-only / route-out / fail-closed`，本文件必須承接，不得私自復活舊規則。  
- 若高順位文件存在張力，先依順位，再依「更具機械可稽核性」裁決；仍無法裁決時，只允許 `TT / CR_OPEN / CONFIGURE_REQUIRED / FAIL_CLOSED`。

### 3.2 衝突裁決硬規則

1. **Higher authority wins**：高順位優先。  
2. **More concrete, machine-auditable clause wins**：同順位時，可機械稽核的具體條文優先於抽象口號。  
3. **Owner schema wins over consumer rewrite**：schema / validator / release guard / package contract 以 owner 文件為準。  
4. **Route-out is routing, not re-legislation**：route-out 是導流，不是偷偷再立法。  
5. **No-Source-No-Norm**：沒有直接來源依據，不得升格為 MUST。  
6. **No-Anchor-No-Claim**：沒有清楚定位，不得宣稱已吸收、已對齊、已 closure。  
7. **One-Rule-One-Place**：同一規則只能有一個最終 owner；其他地方只能引用或摘要，不得再造第二版。  
8. **Fail-Closed by default**：遇到缺件、缺定位、衝突未解、門檻未授權，一律向停機保命靠攏，而不是向幻想通過靠攏。

### 3.3 現行法理結論

本文件固定採納以下法理結論：

- 舊 P1 SRS / ARCH 已被現行 `Spartoi-OMOC_SRS_v8.1.0` 與 `Spartoi-OMOC_ARCH_v8.1.0` 合法取代。  
- `Spartoi系統21項需求`、`P0-Q&A`、舊需求總表、舊 GUI 憲法、舊 blind flow、舊 reviewer、舊雲端沙盒主路線，均不得回流成現行主體。  
- `GitHub Codespaces` 的法律地位是 **fallback only**，不是主路線，也不是禁用。  
- `OpenCode / Oh My OpenCode / GitHub Copilot PRO` 的法律地位是 **execution / provider slots**，不是新的 SSOT。  
- `Flet / Windows 桌面發行 / 回貼驗證` 不再是全系統憲法級剛性要求；它們的現行地位改寫為 **CA-UI 的條件式實作 profile 義務**，詳見 §6.3 與 §9.15。  
- 本文件對五份舊需求／舊正文具有 **正文級 replaceability**；但 release-level readiness 仍需由現行 owner docs、validator、manifest、required checks 與 release guard 另行裁決。

## 4. 舊需求／舊方案／舊 P0-P1 文檔的法律地位、吸收與封存規則

### 4.1 五份舊需求／舊正文的處置總則

五份舊文檔／舊正文中仍有效的需求，必須被下列方式之一處理：

- **absorbed**：保留語意，直接吸收進現行正文。
- **rewritten**：核心意圖保留，但依現行 SSOT 改寫。
- **route-out**：保留需求地位，但細節導向 owner 文檔。
- **archived**：正式退出現行正文，只保留歷史對照。
- **traceability-only**：僅保留追溯用途，不得作現行規範。
- **fail-closed**：需求意圖存在，但現行來源不足以定義為終局條文，暫以 TT / CONFIGURE_REQUIRED 處理。

### 4.2 P0 歷史材料與舊系統設計的吸收規則

P0 歷史材料、ΣHybrid / TriRAG / OBI 舊設計與凍結資料，只允許下列使用方式：

1. 作為歷史動機、需求起點、術語釐清與高價值設計訊號來源。
2. 作為 evidence extraction 的候選來源，用於形成新 Claim 庫、EvidenceCard、MethodSpec、驗證樣張、資料字典與補充樣本。
3. 作為 traceability 與 archive 對照材料。
4. 作為現行規格缺口補面時的支持性資料，但不得越級成現行憲法。

明確禁止：

- 把 P0 舊結構整包搬回現行主幹。
- 把舊工具鏈、舊路徑、舊交付形式、舊控制面語義直接當成現行 must。
- 因為「以前寫過」就繼承舊技術債與歷史包袱。
- 讓舊材料在未經 re-grounding 的情況下污染現行 schema、驗收與 gate。

### 4.3 零舊技術債吸收原則

P0 / 舊設計的吸收，固定採用以下流程：

1. **Quarantine**：先隔離舊材料，不直接引用為現行規範。
2. **Extract**：抽出高價值 evidence、術語、流程觀點、資料需求、驗證邏輯。
3. **Normalize**：轉成現行 stable_id、current artifact class、current gate semantics。
4. **Re-ground**：重新掛到現行 SSOT / LBP / Package owner。
5. **Adopt or Archive**：能對齊者吸收，不能對齊者封存。

### 4.4 五份舊需求／舊正文的總體裁決結果

| 舊需求主題 | 現行處置 |
|---|---|
| 單人 + 多 AI/LLM 協作、快速輕便高效 | **absorbed**，納入全域原則與 CA-COLLAB |
| No-API / 手動貼上 / WebTools-NA | **rewritten**，納入 No-API 基線與 CA-COLLAB / CA-UI |
| Flet 桌面軟體作唯一合法 UI | **rewritten / partially archived**；現行硬要求改為單一入口、一鍵最小閉環、evidence visible；Flet 改為候選實作，不再是唯一合法 |
| XQ 唯一下單端、WATCH 不下單、EXECUTE 僅 HITL | **absorbed**，成為現行硬邊界 |
| Kill Switch | **absorbed and rewritten**；保留安全意圖，但實際平倉執行必透過 XQ 觸點，不建立本地下單引擎 |
| 台股歷史資料 / 分K 資料庫 | **absorbed**，歸入 Data Backbone + CA-BACKTEST |
| 本地 DB 回測為主、XQ 回測為對照驗收 | **absorbed**，納入 Pipeline-B 主路徑 |
| 多 AI 盲抽象 → 交叉審 → 針對性整合 | **absorbed**，納入 CA-COLLAB 正式流程 |
| SEM³ / SQM-7 | **absorbed and route-out**；保留為驗證族與品質族，具體 schema / metrics 由 owner 文檔承接 |
| 勝率 >50%、週獲利 ≥ 週損失 3 倍 | **rewritten**；保留為策略績效目標與方法／績效驗收目標，不自動升格為所有 release 的無條件全域阻斷門檻 |
| 桌面 GUI EXE 一鍵安裝 / 一鍵執行 | **archived as mandatory / retained as optional delivery candidate** |

---

## 5. 系統整體目標、範圍、非範圍、成功條件

### 5.1 系統整體目標

Spartoi-OMOC 是一套給**單人操作者**使用的、**證據驅動**、**多 AI 協作**、**以 XQ 為交易落地端**的交易工程系統。  
其目標不是做全自動黑盒交易機器，而是把：

- 知識蒐集
- 語料治理
- 蒸餾與原語 formalization
- 方法制定
- 回測與衛生
- 技術分析
- 選股
- XS 轉譯
- 盯盤與 HITL handoff
- 事後績效分析
- 治理、索引、收納、協作與單一入口

組成一條可追溯、可驗收、可降級、可重播的工程閉環。

### 5.2 全域開發原則

本系統必須同時滿足以下原則：

1. **單人 + 多 AI/LLM 協作**：以單一開發者可持續維護為前提，允許多模型、多工具槽位、多 bundle 交接，但不得把協作複雜度本身做成新的工作負擔。  
2. **快速、輕便、簡易、高效**：最快開發速度、最高開發品質、最小返工 / 出錯風險三軸並行；不以沉重治理換取虛假安心。  
3. **全功能運行優先，但治理 / 觀測 / 驗收不得消失**：治理可最小化、可後置、可自動化；不可被刪除。  
4. **低耦合、可替換、可降級、可熱插拔**：停用局部能力時，不得破壞核心閉環；任一外部供給側失效時，系統必須能降級而非崩解。  
5. **純個人私用 / 非公開 / 非商用 / 非受管 / 非受監督**：不得為不存在的組織審批流程過度設計；但資金風險、資料風險、下單風險仍必須被嚴格隔離。  
6. **No-API 為基線**：No-LLM API、手動貼上、檔案交換、bundle replay、WebTools-NA 為合法基線；若引入其他自動化路徑，必須可回退至 No-API，且不得破壞可回放性。  
7. **不建立第二套 SSOT**：任何 prompt、session、agent workflow、slot tool、外部 Web 摘要都不得越級成制度根源。  
8. **不繼承舊技術債，但可提取高價值歷史證據**：ΣHybrid / TriRAG / OBI / 舊 P0/P1 材料只可經過 extraction → quarantine → normalize → re-ground → adopt-or-archive 流程後進入現行正文。  
9. **Evidence-first**：沒有 evidence pointer、run lineage、artifact hash、gate verdict 的漂亮敘述，一律不算完成。  
10. **One-rule-one-owner**：需求正文只定義需求正文；HOW、schema、validator、release guard、package contract 必須 route-out 到正確 owner。

#### 5.2.1 架構描述語言規則（必須可機械稽核）

本文件與後續衍生系統需求文檔，固定採用以下語言規則：

- **必用詞**：`Viewpoint`、`View`、`Concerns`、`Stakeholders`。  
- **合法結構單元**：`系統 / 子系統 / 元件 / 介面 / 工件 / 路由 / Gate / Evidence / Plane / Tier / Module / Macro Module`。  
- **字面禁用規則**：正文主描述區對 `layer / 分層 / 層` 採 **零命中** 規則。  
- **唯一例外白名單**：  
  1. 直接引用舊文件原名、檔名、章名；  
  2. legacy quote block；  
  3. closure matrix / RTM crosswalk / alias ledger 的歷史對照欄；  
  4. 本條語言規則自身。  
- **現行主寫作語法**：控制面 / 執行面 / 周邊面使用 `Plane`；權限、可信、授權與分類使用 `Tier`；宏分組使用 `Macro Module`；流程階段使用 `Stage`；profile 與 route 使用 `Mode / Profile / Route`。  
- **lint 規則**：任何新需求、子系統正文、增補章節，只要在非白名單區再次出現 `layer / 分層 / 層`，一律視為 `TT + rewrite required`。  
- **審查規則**：不得把現行 15CA 架構重新寫回「幾層幾層」；不得把 `Plane / Tier / Module` 偷換成被禁字。  

#### 5.2.2 成功條件的寫法規則

- 口號不得直接當需求。  
- `勝率 / 獲利 / 精準度 / 可靠度 / 顯著性 / drift / parity` 必須落成可量測語句、工件欄位、或 acceptance hook。  
- 無上位授權的精確門檻值不得私自立法；如需保留，必須轉為 `CR_OPEN / CONFIGURE_REQUIRED / Candidate-only evidence field`。  
- 舊 Q&A 中「勝率 > 50%，週獲利 ≥ 週損失 3 倍；最小可接受勝率 > 25%，週獲利 ≥ 週損失 1.5 倍」之意圖，保留為 **目標組 success criteria**，但實際阻擋與否仍受 owner docs 的 gate / metric / evidence 決定。

#### 5.2.3 多 AI/LLM 協作固定三階段

多 AI/LLM 協作流程固定採用：

1. **盲抽象（blind abstraction）**：各模型獨立處理，互不干擾。  
2. **交叉審（cross review）**：彼此檢查衝突、遺漏、過度推論。  
3. **針對性整合（targeted integration）**：由人或指定整合者裁決衝突並產出可追溯 bundle。

缺少其中任一階段的可追溯痕跡時，不得宣稱已完成多 AI 協作閉環。

### 5.3 使用前提

本系統在本文件中的假定前提為：

- 個人私用。
- 非公開、非商用。
- 非受監管交易系統。
- 使用者為單一主要操作者。
- 交易落地端為 XQ / XS 體系。
- LLM 協作以手動貼上、檔案匯入匯出、bundle 交換為主。
- 券商資料與市場資料供應可白名單允許，但不得在需求正文硬綁單一 endpoint / dataset / SDK。

### 5.4 系統範圍

本文件內的系統範圍包含：

- 15 個正式子系統與其跨系統互動。
- Pipeline A / B / C 與五子系統。
- ReferenceDB、RunLedger、DB-CORPUS、DB-MARKET、STORE-EVID。
- SpecPack / MethodPack / BacktestPack / XSPack / FeedbackPack / GovPack / CollabBundle。
- XQ 唯一下單端、WATCH / EXECUTE 邊界、HITL、Kill Switch、T0 / T1。
- Gate、Evidence、TT、CR_OPEN、CONFIGURE_REQUIRED、Fail-Closed。
- AI 易讀與 anti-miss / anti-confusion / anti-hallucination 需求。

### 5.5 非範圍

下列項目不屬於本文件要在正文內直接展開的內容：

- broker API 自動下單實作。
- 本地直接送單。
- 未授權的 XQ parity 成熟宣告。
- validator、schema engine、release guard 的實作細節。
- DevContainer / Actions / CI 的操作步驟。
- 任何新的第 16 個子系統。
- 用「支援某供應商」偷渡「綁定某供應商」。

### 5.6 成功條件與績效目標

#### 5.6.1 現行工程成功條件

以下為當前系統需求正文範圍內的成功條件：

1. 15 子系統白名單、stable_id、宏模組、工件責任與跨系統關係固定。
2. 本地主施工路線、execution slot、fallback 路線明確且不互相打架。
3. 統一資料主幹存在，且 RunLedger / ReferenceDB / DB-MARKET / STORE-EVID 的責任清楚。
4. Pipeline A / B / C 與五子系統的單向依賴與邊界明確。
5. XQ 唯一下單端與 WATCH / EXECUTE / HITL 邊界固定。
6. Gate / Evidence / TT / Fail-Closed 規則固定。
7. 五份舊需求／舊正文的有效內容已被吸收，且阻斷 replaceability 的蒸餾作業面 / hotplug / Gate 鍵位缺口已清零，後續在系統需求正文範圍不再需要回查舊文檔。
8. 舊需求、P0 材料、舊方案的法律地位已被明示，沒有靜默污染。
9. 任一子系統無法完成時，系統能正確降級，而非用語氣掩蓋缺口。

#### 5.6.2 吸收自舊需求的策略績效目標

吸收自 `P1_Q&A` 與 `StRS+SyRS_v4.1.0` 的策略績效目標如下：

- 主要目標：台股當沖勝率 > 50%，且週獲利 ≥ 週損失 3 倍。
- 最小可接受目標：台股當沖勝率 > 25%，且週獲利 ≥ 週損失 1.5 倍。
- 歷史候選觀測基線：勝率 ≥ 48% 等候選值，僅作對照，不得取代主要目標。

這些數值**保留為策略與績效閉環的目標性要求**，由 Pipeline-B / CA-PERFORM / fitness owner 承接；  
除非現行 threshold register、fitness catalogue 或 owner 文件明確授權，否則它們**不得被擅自擴張為所有 release 的一刀切阻斷門檻**。  
需求正文不能因為看到漂亮數字就熱血立法，這種行為和把願望直接上生產沒有本質差別。

---

## 6. 現行工具鏈與主環境裁決

### 6.1 主路線、執行槽位、供給側槽位、fallback 與封存

現行工具鏈固定裁決如下：

| 類別 | 裁決 | 法律地位 |
|---|---|---|
| 主路線 | Local VS + Docker / DevContainer + GitHub repo | `ACTIVE_PRIMARY` |
| 執行槽位 | OpenCode、Oh My OpenCode | `ACTIVE_EXECUTION_SLOT` |
| 模型供給側槽位 | GitHub Copilot PRO（協議內之雲端模型供應 / 協作供給側） | `ACTIVE_PROVIDER_SLOT` |
| fallback only | GitHub Codespaces | `ACTIVE_FALLBACK_ONLY` |
| 封存 / 移出 MVP 主路線 | Codex、Claude Code、舊雲端沙盒細節、Drive+rclone、WT-NA 精靈作為主施工介面、舊 Agent toggle、第三方 reviewer、blind flow | `ARCHIVED / REMOVED_FROM_PRIMARY` |

### 6.2 主施工語義

本系統的主施工語義固定為：

- **本地 VS**：主要閱讀、編輯、比對、debug 與審查環境。  
- **Docker / DevContainer**：主要執行環境與環境一致化語義。  
- **GitHub repo**：規格、程式、索引、manifest、evidence pointer 的主承載。  
- **OpenCode / Oh My OpenCode**：作為 execution slots，服務於協作、生成、審核與任務分流；不得越權成為制度 owner。  
- **GitHub Copilot PRO**：作為 provider-side model supply slot；可供應模型能力與協作資源，但不得覆寫 artifact ownership、schema ownership、gate ownership、或 release adjudication。  
- **GitHub Codespaces**：保留 bootstrap / reproduce / fallback 能力；不得被寫成現行主路線。

### 6.3 技術核心與外殼約束（舊需求硬約束回補）

#### 6.3.1 Python 3.13 最重核心

- `Python 3.13` 是現行系統的**最重核心語言**。  
- 策略決策、資料處理、方法制定、回測、分析、治理邏輯、驗證腳本、指標計算、bundle 檢核等主體邏輯，原則上必須由 Python 3.13 承載。  
- 若某子系統將主要決策邏輯偷偷移出 Python 3.13，而無 owner-doc 授權與明確收益證明，視為 architecture drift。

#### 6.3.2 PowerShell 7 最薄外殼

- `PowerShell 7` 的法律地位固定為**最薄外殼**。  
- 合法用途僅限：安裝、bootstrap、環境啟動、檔案搬移、路徑整理、包裝啟停、受控 shell wrapper。  
- `PowerShell 7 MUST NOT` 承載策略決策邏輯、方法計算邏輯、回測引擎邏輯、績效分析邏輯、或任何會改變交易判斷結果的核心演算法。  
- 若核心邏輯只能靠 PowerShell 7 成立，視為違規。

#### 6.3.3 本地 DB 與資料主幹約束

- 本地 DB 路線固定承認 `DuckDB` 為主查詢 / 主回測資料面，`SQLite` 為輕量索引 / ledger / audit 輔助面。  
- `DuckDB/SQLite/Parquet/DVC pointers` 為現行本地資料主幹合法組合；不得在需求正文範圍硬綁單一遠端 API 或單一資料供應商。  
- `ReferenceDB / RunLedger / DB-MARKET / STORE-EVID` 為現行 canonical backbone；其他 cache 僅可作 cache。

#### 6.3.4 Flet / Windows 發行 / 回貼驗證的現行法理處置

- `Flet` 不再是全系統唯一合法 UI 框架。  
- `Flet` 的現行地位是：**CA-UI 桌面 profile 的預設核准候選框架**。  
- 桌面 / Windows / 回貼驗證必須拆成四個可裁決狀態，不得再用一句「條件式 profile」含糊帶過：  
  1. `UI_SINGLE_ENTRY_ACTIVE`：已滿足單一入口、一鍵最小閉環、evidence visible；與是否桌面化無關。  
  2. `DESKTOP_PROFILE_CLAIMED`：主張桌面互動形態；此時必須提供 `ui_profile_manifest.json`、`desktop_smoke_record.json`。  
  3. `WINDOWS_PACKAGING_CLAIMED`：主張 Windows 安裝包 / EXE-like 交付；此時必須提供 `package_build_log`、`install_log`、`rollback_log`、`uninstall_log`。  
  4. `BACKPASTE_VERIFIED`：主張桌面 profile 與 No-API 手動貼回流程已驗證；此時必須提供 `backpaste_verification_log.json` 與對應 evidence。  
- 若專案主張 `DESKTOP_PROFILE_CLAIMED` 或以上任一狀態：  
  1. `Flet` 為預設核准候選；若使用 owner-approved equivalent，必須在 `ui_profile_manifest.json` 明示；  
  2. 必須保證 UI 本身可完成核心閉環，不得要求使用者另開 PY / PS7 才能補完關鍵步驟；  
  3. 必須提供 Windows 打包 / 安裝 / 回退 / 卸載證據；  
  4. 必須提供回貼驗證（manual paste / handoff correctness verification）證據；  
  5. UI 與 GOVERN 顯示的 `run_id / gate_verdict / degrade_label / evidence_ptr` 必須一致。  
- 若當前交付只主張 `UI_SINGLE_ENTRY_ACTIVE`，採 controlled TUI / CLI / light local page，則 `Flet / Windows 發行 / 回貼驗證` 不構成全系統 release blocker；但也不得宣稱桌面 profile 已完成。  
- 凡宣稱 `Windows desktop ready` 卻缺少 `package / install / rollback / backpaste / visible evidence` 任一件者，一律 `BLOCK_RELEASE`。  

### 6.4 執行模式與供給側抽象

本文件在需求正文中只承認以下抽象：

- `runner_mode`: `LOCAL_PRIMARY / FALLBACK_CODESPACES`  
- `execution_mode`: `RADAR_ONLY / AGENT_ASSIST / NON_AGENT`  
- `approval_mode`: `HITL_REQUIRED / READ_ONLY / RESEARCH_ONLY`  
- `tool_slot`: `OPENCODE / OHMYOPENCODE / NONE`  
- `provider_slot`: `GITHUB_COPILOT_PRO / NONE`

這些抽象只可用於 governance、run_config、evidence、drift 管理與責任分隔；不得被濫用為「隨便換主體」的免責卡。

### 6.5 工具鏈漂移管理規則

1. 任何 execution slot 或 provider slot 的加入 / 刪除，不得改變 SSOT、schema owner、validator owner、release guard owner。  
2. 任何主路線變更，必須不破壞本地落地、可重現、可稽核、可回放。  
3. 任何 fallback 路線不得要求與主路線雙倍投入，只需保證最小 bootstrap 與 reproduce。  
4. 任何已封存工具，不得因「歷史上有討論」而回流主正文。  
5. 工具鏈變更若導致 evidence、artifact、bundle、run_id 或 manifest 語義漂移，必須先修 owner docs，再修本正文；不可反過來。

## 7. 全域資料主幹、工件契約、證據與治理原則

### 7.1 統一資料主幹

系統必須建立統一資料主幹，以支撐 15 子系統之間的單向依賴與證據閉環。  
現行資料主幹固定為：

- **Git**：規格、索引、metadata、程式與輕量工件。
- **DVC**：大資料指針、資料版本對位、切片可重現。
- **Object Storage / Data Lake**：實體語料、Parquet、全量回測日誌與大檔。
- **ReferenceDB**：全域靜態資料與交易日曆。
- **RunLedger**：全域唯一 run-level lineage / audit 索引。
- **STORE-EVID**：Gate 證據三件套與相關 evidence blob。

### 7.2 資料主幹元件

| component_id | 角色 |
|---|---|
| DB-REF | 交易日曆、股票代碼、corporate actions、全域常數唯讀庫 |
| DB-LEDGER | 執行血緣、artifact hash、上下游引用、gate verdict 的 append-only 索引 |
| DB-CORPUS | 原始教材、語料快照與索引 |
| DB-MARKET | 市場行情資料湖與回測切片來源 |
| STORE-EVID | verdict / bundle / index / gate report 等證據集合 |

### 7.3 工件分類、mandatory artifact set 與 owner 原則

系統採用下列工件分類：

| artifact_class | 說明 | owner |
|---|---|---|
| ReferenceDB | 中央唯一參考資料主幹 | central data backbone |
| RunLedger | 中央唯一 run-level 索引簿 | central data backbone |
| SpecPack | 規格性輸出包 | producing subsystem |
| EvidencePack | 驗收證據包 | producing subsystem + CA-GOVERN |
| MethodPack | 方法與原語輸出包 | CA-METHOD |
| StrategyPack | Pipeline-B 的 frozen strategy bundle | CA-METHOD + CA-BACKTEST gated |
| BacktestPack | 回測與衛生輸出包 | CA-BACKTEST |
| XSPack | XS 腳本、parity、平台適配證跡 | CA-TRANSLATE |
| FeedbackPack | 績效分析與 uplift proposal 輸出包 | CA-PERFORM |
| GovPack | manifest / index / packaged evidence | CA-GOVERN |
| CollabBundle | 匯出匯入 bundle 與 session log | CA-COLLAB |
| UIProfilePack | 單一入口 profile、visible evidence、smoke record | CA-UI |

硬規則如下：

1. `ReferenceDB`、`RunLedger` 為中央唯一，不得 fork。  
2. Pipeline-C 與五子系統只可 consume Data Backbone，不得自建第二主幹。  
3. 向量索引與 embeddings 一律視為 cache，可重建，不是 SSOT。  
4. 所有 canonical 工件必須攜帶 `run_id / hash / lineage / upstream_refs / downstream_refs / owner`。  
5. 沒有 canonical deliverable，不得宣稱 subsystem deliverable exists。  
6. 沒有 owner-approved equivalent bundle，不得用「大概差不多」替代 mandatory artifact set。  
7. `artifact exists` 與 `release-ready` 是兩件事；前者存在不代表後者已通過。

#### 7.3.1 WRC / CORPUS / DISTILL mandatory artifact set

為封口審查報告點名的缺口，以下工件自本版起升格為正文級 mandatory artifact set：

**CA-WRC 必備**
- `source_registry`  
- `source_tiering_manifest`（至少支持 `high-trust / baseline-trust` 或 owner-approved 等價二級以上分類）  
- `provenance_log`  
- `usage_limit / method_admissibility policy`  
- `quarantine_register`

**CA-CORPUS 必備**
- `corpus_snapshot_manifest`  
- `anchor_chunk_map`  
- `retrieval_mode_policy`（必須明示 Hybrid retrieval 的合法模式、角色與 fallback）  
- `corpus_quarantine_register`  
- `source_to_chunk_lineage`

**CA-DISTILL 必備**
- `claim_registry`  
- `evidence_chain`  
- `semantic_report`  
- `alignment_matrix`  
- `reader_quadrants`（必含 `Tutorial / How-to / Reference / Explanation` 四象限）  
- `evidence_to_rules_interface_flow`  
- `job_card`  
- `evidence_cards`  
- `function_spec_chain`  
- `distill_consistency_report`  
- `distill_test_report`  
- `distill_bundle_manifest`  
- `source_usage_trace`

#### 7.3.2 Method / Backtest / Perform mandatory artifact set

**CA-METHOD 必備**
- `MethodCard`  
- `MethodSpec` 或 owner-approved 等價結構  
- `MethodPack`  
- `primitive_coverage_map`  
- `scenario_binding`  
- `StrategyPack draft`

**CA-BACKTEST 必備**
- `backtest_report.json`  
- `repro_manifest.json`  
- `slice_manifest`  
- `hygiene_report`  
- `overfit_report`  
- `parity_diff_report`（若宣稱 XQ parity）

**CA-PERFORM 必備**
- `performance_report`  
- `top3_proposals.json`  
- `drift_or_missing_inputs_statement`  
- `FeedbackPack`  
- `retest_linkage`

#### 7.3.3 語意還原度、SEM³、SQM-7 的工件化閉環

- `SEM³` 的三個主驗證面固定為 `SGF / MSC / TVE`。  
- `SQM-7` 的七大品質面固定保留為現行品質框架：語意忠實度、策略一致性、預測技術、選股品質、訊號與時序品質、執行品質、結果品質。  
- 任一子系統若聲稱「已對齊 SEM³ / 語意還原度 / SQM-7」，必須至少能指出其對應工件、報表、矩陣、或 evidence pointer；否則一律視為 slogan-only。  
- 為解決舊需求對固定鍵位 / 事件 / RTM 的要求，現行最小互通鍵位至少包含：  
  - `semantic_ok / method_ok / translation_ok`  
  - `sgf_score / sgf_threshold`  
  - `msc_score / msc_threshold`  
  - `tve_score / tve_threshold`  
  - `rtm_source_refs / rtm_spec_refs / evidence_ref`  
  若 owner 文檔採別名，必須提供 1:1 mapping，不得讓舊要求在欄位名漂移中蒸發。  
- 現行最小事件族至少包含：`seg.*`、`method.*`、`translation.*`、`hotplug.*`。  
- 現行最小報表族至少包含：`semantic_gate_report`、`method_gate_report`、`translation_gate_report`、`rtm_links`。  
- 若採用 `QA / NLI / self-consistency / Pass@k / schema validation` 等技術作為輔助證據，必須在報表中明示其是否啟用、輸出位置、與 `SGF / MSC / TVE` 的對應關係；若未採用，必須寫 `NA_with_rationale`，不得假裝不存在。  


#### 7.3.4 子系統交付最小契約（Subsystem delivery minimum contract）

每個 CA 的最終交付，至少必須落成以下最小集合，或 owner-approved 等價集合：

- `SS_README`  
- `SS_SRS`  
- `SS_ARCH`  
- `SS_DELIVER`  
- `WP.Master` 或等價交付/驗收契約  
- `manifest + checksums + TT register`

這裡的意思不是把整份 HOW 塞回系統需求正文，而是明確宣告：**任何子系統最終交付都不能只剩口號、截圖、或一份孤零零的 Markdown。**

### 7.4 台股大盤基線資料與台股歷史分K資料庫要求

本文件明文吸收舊需求中最容易被漏掉、卻最會在實作期爆炸的部分：**台股資料庫能力**。

#### 7.4.1 大盤歷史分K基線資料能力

系統必須支援取得並本地儲存台股大盤指數基線資料，用於：

- 回測期間對齊。
- 交易日完整性檢查。
- 資料覆蓋率稽核。
- 大盤偏見與 regime 對位。
- Pipeline-B / Pipeline-C 的共同時序基線。

最低必備覆蓋：

- 加權指數、櫃買指數。
- 1 分鐘 K、5 分鐘 K、日 K。
- 必要欄位：`date, time, open, high, low, close, volume`。
- 至少 1 年以上可追溯區段。
- 增量更新能力。
- gap / coverage / version_stamp / source_hint 稽核欄位。

#### 7.4.2 台股歷史分K資料庫能力

系統必須支援建立台股（大盤 + 個股）歷史分K資料庫，用於：

- CA-BACKTEST 的主路徑回測。
- XQ parity 對照。
- 回測切片重播。
- TA / SELECT / WATCH 的唯讀資料供應。
- 資料完整性、缺口、交易日對齊與覆蓋率檢查。

最低要求：

- 可建立可當沖股池與測試標的的歷史分K資料庫。
- 至少支援 50+ 測試標的的本地可查詢資料。
- 必須本地保存可重現切片，並可由 DVC / manifest 回指。
- 必須支援 version_stamp、source_hint、gap detection、trading-day alignment。
- 回測所用切片必須 materialize 為可稽核 slice，不得僅依賴遠端即時抓取。

#### 7.4.3 存放與 query 契約

歷史資料與回測主幹，固定採用以下契約：

- **全量資料湖**：`DB-MARKET`，以 Parquet 為主體，供大資料保存與查詢。
- **本地 query 主體**：DuckDB 為主，必要時搭配 SQLite 作稽核／索引。
- **ReferenceDB**：交易日曆、代碼表、corporate actions 等靜態參考資訊。
- **RunLedger**：記錄每一次回測與分析使用了哪一個 slice / version / hash。
- **切片回測**：每次正式回測必須鎖定 slice，避免結果隨資料源漂移。

#### 7.4.4 資料來源與供應商邊界

本文件只承認**支援外部介面範圍**，不承認**需求正文硬綁單一 endpoint / dataset / SDK**。  
因此，資料取得政策如下：

- 可白名單允許 FinMind、永豐金或等價資料來源。
- 規範正文只寫「支援來源類型與切換能力」，不寫死下載腳本。
- 系統不得依賴單一供應商才能成立。
- 若某資料來源失效，必須允許切換，不得導致整體需求正文失效。

#### 7.4.5 資料責任分工

- **CA-BACKTEST**：擁有回測所需資料切片的建置、讀取、完整性檢查與回放責任。
- **CA-GOVERN**：負責版本化、索引、evidence 收納與 lineage 對位。
- **CA-TA / CA-SELECT / CA-WATCH**：只能唯讀 consume，禁止自建第二套市場資料庫。
- **ReferenceDB owner**：負責交易日曆、代碼表、corporate actions 等全域常數管理。

### 7.5 舊資料、P0 歷史證據與防污染規則

舊資料與 P0 歷史證據的使用，必須遵守以下規則：

1. 舊資料可進 `DB-CORPUS` 或歷史證據 quarantine，不可直接混入現行 canonical store。
2. 舊資料若被提取為現行 claim / evidence / spec，必須重新附上新 lineage。
3. 舊材料中的制度常數不得直接蒸餾成現行規範；制度常數應收斂至 ReferenceDB / rule store。
4. 舊資料只能作 support 或 traceability，不能成為隱形 SSOT。
5. 歷史資料可用來補樣本、補證據、補術語，但不得繼承舊技術債。

---

## 8. 15 子系統總覽與整體關係

### 8.1 15 子系統白名單與宏模組

| Stable ID | 正式名稱 | 宏模組 | 主工件 |
|---|---|---|---|
| CA-WRC | 白名單廣域蒐集 | K.Knowledge-Ingest | Source manifest / WRC manifest |
| CA-CORPUS | 教材庫與 RAG | K.Knowledge-Ingest | Corpus snapshot |
| CA-DISTILL | 蒸餾 | K.Knowledge-Ingest | Distill bundle / Claim set |
| CA-DSL | 偽代碼原語庫 / 中立 DSL | S.Strategy-Formalize | Primitive library / DSL spec |
| CA-METHOD | 方法制定 | S.Strategy-Formalize | MethodCard / MethodPack |
| CA-BACKTEST | 回測 | B.Backtest-Learn | BacktestPack / Repro manifest |
| CA-TA | 技術分析 | F.Signal-Analysis | AnalysisPack / StoryCard |
| CA-SELECT | 選股 | F.Signal-Analysis | TopK list / Ranking evidence |
| CA-TRANSLATE | XS 轉譯 | O.Operate-XQ | XSPack / Parity report |
| CA-WATCH | 盯盤 | O.Operate-XQ | WatchScore / Handoff signal |
| CA-EXECUTE | 操盤 / HITL 交接 | O.Operate-XQ | Approval trace / Execute handoff |
| CA-PERFORM | 績效分析 | B.Backtest-Learn | FeedbackPack / Top-3 proposals |
| CA-GOVERN | 治理 / 索引 / 收納 | G.Govern-UI-Collab | GovPack |
| CA-COLLAB | 多 AI 協作 | G.Govern-UI-Collab | CollabBundle / Session log |
| CA-UI | 受控單一入口 | G.Govern-UI-Collab | UI entry / Evidence view |

### 8.2 整體拓撲

系統整體拓撲固定如下：

- **Pipeline A**：CA-WRC → CA-CORPUS → CA-DISTILL → CA-DSL
- **Pipeline B**：CA-METHOD → CA-BACKTEST → CA-PERFORM
- **Pipeline C（Planning / Compile）**：CA-TA → CA-SELECT → CA-TRANSLATE
- **XQ Runtime Boundary Layer**：CA-WATCH、CA-EXECUTE
- **五子系統（薄封裝 / 橫切）**：CA-GOVERN、CA-COLLAB、CA-UI，以及 XQ Runtime Boundary adapters（CA-WATCH / CA-EXECUTE）
- **交易落地端**：`XQ 全球贏家`為唯一實際盯盤 / 下單 / 成交執行端
- **資料主幹**：所有子系統讀寫皆回到統一 Data Backbone，不得建立平行憲法與平行資料主幹

**裁決補充：**
- `CA-TRANSLATE` 負責把方法卡、分析包、選股結果與劇本意圖，編譯為 `XQ 全球贏家` 可載入的 XS 與 parity / handoff artifacts。
- `CA-WATCH`、`CA-EXECUTE` 不得被實作或解讀為獨立於 `XQ 全球贏家` 之外的本地盯盤 / 下單引擎；其責任限於 XQ runtime 前後之觀測、HITL 交接、證跡回收、對帳與回饋接口。
- 因此，`WATCH / EXECUTE` 在命名上仍保留為獨立子系統，但在執行語義上屬於 `XQ 全球贏家` runtime boundary；不得反向推論出「本地第二交易執行端」存在。

### 8.3 整體設計約束

1. 不新增第 16 個子系統。
2. stable_id 永不變，display_name 可調整。
3. Pipeline A / B / C 單向依賴。
4. 五子系統為橫切薄封裝，不得自建第二主幹。
5. GOVERN、COLLAB、UI 不得偽裝成第二控制面或第二制度中心。
6. EXECUTE 不是本地下單器；只是 handoff / approval trace / safety boundary 的 owner。
7. WATCH 不下單；TRANSLATE 不決策；PERFORM 不直接改寫 MethodCard。

### 8.4 全流程閉環與 Hotplug 四路徑驗收規則

為封口舊需求與覆蓋度審查報告對 `ICT 技術模組熱插拔` 的缺口，本文件明確固定 Hotplug 四路徑：

1. **停用（disable）**：在 operator 明示關閉某模組時，系統仍須以 `minimum_viable_set` 維持端對端最小閉環，並明示 degrade label。  
2. **失效（failure / failover）**：模組在執行時失效時，必須落盤 `hotplug event`、切入 fallback 或 radar-only / configure-required，不得靜默跳過。  
3. **替換（replace）**：替換實作時，必須維持既有 interface contract、產出差異報告與回歸證據，不得只換名字不換責任。  
4. **回滾（rollback）**：替換或失效後，必須可回到上一個核准版本或上一個可執行 bundle，並留下 rollback evidence。  

**最小可行集（minimum viable set）硬規則**
- 最小可行集必須在 GOVERN / RunLedger 中可定位。  
- 停用非核心模組時，端對端閉環仍須能從 Pipeline-A 走到 Pipeline-C / WATCH，必要時以 `RADAR_ONLY / EXECUTE_DISABLED` 形式收斂。  
- 若停用已穿透到交易安全邊界，必須 fail-closed，不得以「還能看」冒充「還能用」。  

**Hotplug 事件最低鍵位**
- `module_id`  
- `action`（disable / failure / replace / rollback 或 owner-approved 等價映射）  
- `timestamp`  
- `reason`  
- `success`  
- `rollback_available`  
- `before_version / after_version`（若適用）  
- `diff_ref`（若適用）  
- `evidence_ref`  

**驗收要點**
- 停用路徑：停用後仍可完成最小閉環，且所有 degrade label 可見。  
- 失效路徑：失效後必須產生 `hotplug.*` 事件並切入合法降級，不得沉默失敗。  
- 替換路徑：替換後必須有 interface compatibility evidence 與 regression / parity / diff evidence。  
- 回滾路徑：回滾後必須可回放至先前 bundle，且 RunLedger / ReferenceDB / artifact lineage 一致。  

---

## 9. 15 子系統逐一正文要求

### 9.1 CA-WRC — 白名單廣域蒐集

**定位**  
CA-WRC 是系統知識進場的第一道正式入口，負責外部教材、研究資料、支持性來源的白名單蒐集、來源可信分級、usage limit 與 provenance 固化。

**In-scope**
- 白名單來源治理。
- source manifest、hash、provenance 建立。
- 來源 tiering、usage limit、差異化蒸餾策略掛點。
- quarantine 與 admissibility 初判。

**Out-of-scope**
- 語料切分與 RAG 索引細節。
- 蒸餾與語意裁決。
- 方法設計。
- 任何直接交易相關決策。

**核心職責**
- 建立 allowlist source collection 流程。
- 產出可審計來源清單與至少二級可信分級。
- 為 CA-CORPUS 提供可追溯原始輸入與 downstream admissibility hints。
- 攔截來源不明、來源越級、support-only 偽裝 normative 的資料。

**上游輸入**
- 外部白名單來源。
- 人工或多 AI 協作提出的蒐集任務。
- source_tier policy、usage_limit policy、governance policy。

**下游輸出**
- `source_registry`
- `source_tiering_manifest`
- `provenance_log`
- `usage_limit policy`
- `quarantine_register`

**主要功能**
- allowlist / denylist
- source tiering
- provenance 固化
- quarantine
- admissibility hints
- differential distillation policy link

**關鍵工件 / 產物**
- `source_registry.json`
- `source_tiering_manifest.json`
- `provenance_log.ndjson`
- `usage_limit_policy.yaml`
- `quarantine_register.jsonl`

**與其他子系統關係**
- 向 CA-CORPUS 提供可讀來源與 tier/usage 資訊。
- 與 CA-GOVERN 對接索引與收納。
- 與 CA-COLLAB 對接蒐集任務 bundle。

**工具鏈 / 執行環境約束**
- 主路線在本地 repo / DevContainer。
- 不得因 slot tool 差異而改變來源 tier 語義。
- 外部 Web 僅 support-only，不可越級。

**Gate / Evidence / 驗收要點**
- 來源必須可回指。
- 至少二級可信分類必須存在，且只可作用於治理、蒸餾策略與 admissibility，不可直接作用於交易決策。
- usage_limit 與 distill_policy_link 必須可被下游繼承。
- 缺 tier / provenance / usage_limit 任一項，不得進 canonical downstream。

**失敗、降級、TT、Fail-Closed**
- 無來源定位 → `UNVERIFIED`
- tier 不明 → `RADAR_ONLY`
- provenance 缺失 → `TT`
- 非白名單來源不得進入 canonical 流程

**舊需求吸收說明**
- 吸收 `白名單廣域蒐集語料庫` 舊要求。
- 吸收 `高可信 / 基礎可信` 分級與差異化蒸餾策略。
- 吸收「教材資料庫前置治理」與「防幻覺／防污染」要求。

**實作參照責任邊界**
- tier taxonomy 細節、欄位 schema、實際抓取腳本 route-out 至 owner docs。

### 9.2 CA-CORPUS — 教材庫與 RAG

**定位**  
CA-CORPUS 負責把來源材料整理為可追溯、可檢索、可回讀的語料快照，並把 Hybrid retrieval 明確寫成制度化的檢索政策，而不是只剩漂亮名詞。

**In-scope**
- corpus snapshot
- chunk / document registry
- retrieval-ready 索引
- 語料版本化與 lineage
- retrieval mode policy

**Out-of-scope**
- 直接蒸餾結論
- 方法制定
- 交易規則裁決
- 第二套知識憲法

**核心職責**
- 把 WRC 輸入整理為 canonical corpus snapshot。
- 提供 document-level / chunk-level retrievability。
- 維持語料版本與 lineage 對位。
- 把 GraphRAG / RAPTOR / CRAG / RAG-Triad 類內容限制在**檢索增強與 anti-miss 設計**，不得升格為新權威來源級別。

**上游輸入**
- CA-WRC 的原始來源與 provenance。
- 索引與 metadata 規則。
- retrieval policy 與 quarantine policy。

**下游輸出**
- `corpus_snapshot_manifest`
- `anchor_chunk_map`
- `retrieval_mode_policy`
- `source_to_chunk_lineage`
- `corpus_quarantine_register`

**主要功能**
- 語料整編
- retrieval indexing
- chunk traceability
- corpus versioning
- hybrid retrieval governance

**關鍵工件 / 產物**
- `corpus_snapshot_manifest.json`
- `corpus_index/` 或 owner-approved 等價索引
- `anchor_chunk_map.tsv`
- `retrieval_mode_policy.yaml`
- `corpus_quarantine_register.jsonl`

**與其他子系統關係**
- 供 CA-DISTILL 讀取。
- 供 GOVERN 建索引。
- 供 COLLAB 輸出引用 bundle。

**工具鏈 / 執行環境約束**
- 向量索引 / embeddings 僅為 cache，可重建，不可作 SSOT。
- Hybrid retrieval 只可作檢索設計，不可變成制度根源。
- 語料索引不得繞過 lineage。

**Gate / Evidence / 驗收要點**
- corpus snapshot 必須可重建。
- chunk 與來源需可回指。
- `retrieval_mode_policy` 必須明示：何時用 keyword、何時用 dense / graph / tree-style augmentation、何時回退、何者只是 cache side。
- 缺 lineage 或 retrieval policy → 不得進蒸餾。

**失敗、降級、TT、Fail-Closed**
- 無法追到來源的 chunk → quarantine。
- embeddings cache 毀損可重建，不得阻斷規範正文。
- canonical corpus 缺失 → `BLOCK_RELEASE` for dependent flow。

**舊需求吸收說明**
- 吸收舊需求中的「教材庫 + RAG」「Hybrid 檢索」「高 AI 易讀」「防遺漏」要求。
- 吸收 P0 歷史材料可作 evidence source 的前置治理。

**實作參照責任邊界**
- chunk schema、index schema、RAG cache 細節 route-out 至 owner 文檔。

### 9.3 CA-DISTILL — 蒸餾

**定位**  
CA-DISTILL 負責把語料轉為可回指的 claim、evidence、偽代碼候選與蒸餾 bundle，並把舊需求要求的 Claim 庫 / 語義報告 / 對齊矩陣 / 四象限讀者區 / Job-Card / Evidence→Rules→Interface 收斂，從「概念」升格為**正文級 mandatory artifacts**。

**In-scope**
- 蒸餾 bundle
- claim unitization
- evidence pairing
- semantic report
- alignment matrix
- `Tutorial / How-to / Reference / Explanation` 四象限輸出
- `Job-Card / EvidenceCards / FunctionSpec / pseudo` 結構鏈
- SGF 驗證前置資料

**Out-of-scope**
- 最終方法制定
- 平台轉譯
- 交易決策
- 制度常數的私設立法

**核心職責**
- 把教材與研究材料轉為可審計蒸餾產物。
- 保留 claim 與 evidence 的雙錨。
- 把台股制度常數從蒸餾文本中隔離，導向 rule store / ReferenceDB。
- 為 CA-DSL 提供 formalization-ready 的輸入。
- 把舊需求中的四象限讀者區、Evidence→Rules→Interface 收斂、Job-Card 制度，閉合為可稽核輸出形狀。

**上游輸入**
- corpus snapshot
- source metadata
- source tier / usage limit policy
- support-only 背景材料（不得越級）

**下游輸出**
- `claim_registry`
- `evidence_chain`
- `semantic_report`
- `alignment_matrix`
- `reader_quadrants`
- `job_card`
- `evidence_cards`
- `function_spec_chain`
- `evidence_to_rules_interface_flow`
- `distill_consistency_report`
- `distill_test_report`
- `distill_bundle_manifest`
- pseudo/function candidates

**主要功能**
- claim atomization
- evidence pairing
- semantic fidelity prep
- pseudo extraction
- source-aware distillation
- reader-quadrant packaging
- job-card guided distillation

**關鍵工件 / 產物**
- `claim_registry.json`
- `evidence_chain.jsonl`
- `semantic_report.md` 或 machine-readable 等價格式
- `alignment_matrix.tsv`
- `reader_quadrants.md` 或 bundle 等價格式
- `job_card.yaml` / `.json`
- `evidence_cards.jsonl`
- `function_spec_chain.yaml`
- `evidence_to_rules_interface_flow.md`
- `distill_consistency_report.md`
- `distill_test_report.json`
- `distill_bundle_manifest.json`
- `source_usage_trace.tsv`

**四象限讀者區（mandatory output shape）**
每個被核准進入 DSL formalization 的偽代碼 / 函數候選，必須同時具備以下四象限；這不是文件美化，而是蒸餾輸出契約：
- `Tutorial`：教學式引導，說明此產物在教材中的學習脈絡、核心概念、與最小 walkthrough。  
- `How-to`：任務式操作，說明在何種輸入 / 前置條件 / 操作步驟下可重演此產物。  
- `Reference`：規格式查閱，列出 signature、欄位、I/O、gate、失敗碼、限制與依賴。  
- `Explanation`：原理解釋，說明此產物為何這樣設計、哪些假設成立、哪些邊界不可跨越。  
硬規則：
1. 四象限不得缺任一象限。  
2. 每象限至少需有一個非空段落或 owner-approved 等價結構。  
3. 四象限均須可回指 source / claim / evidence pointer。  
4. 只出現標題、不出現實質內容，視為缺件。  

**Evidence→Rules→Interface 收斂規則**
蒸餾作業面必須明示並落盤以下收斂鏈：
1. `Adapters / source fragments / multimodal evidence`  
2. `EvidenceCards / claim units / source pointers`  
3. `Rules / constraints / normalized semantics`  
4. `FunctionSpec / pseudo candidate / interface-facing contract`  
5. `downstream formalization intent`（供 CA-DSL / CA-METHOD 使用）
硬規則：
- 不得從 evidence 直接跳到 interface，略過 rules 階段。  
- 不得只保留 pseudo，不保留其 rule rationale。  
- 不得只保留 rule，不保留其 evidence grounding。  
- 任一鏈節缺失，視為蒸餾 closure 未完成。  

**Job-Card / FunctionSpec 結構制度**
`Job-Card` 為蒸餾任務的結構化對話卡與 bundle 導引卡，至少必須包含：
- `task_description`
- `input_adapters`
- `expected_output_spec`
- `constraints_and_gates`
- `quadrant_checklist`
- `target_artifact_family`
- `version_stamp`
`FunctionSpec` 至少必須包含：
- `signature`
- `input_spec / output_spec`
- `preconditions / postconditions`
- `exception_handling`
- `evidence_refs`
- `rule_refs`
- `interface_contract_ref`
舊需求中的 `EvidenceCards → FunctionSpec → 偽代碼 → Adapters` 結構詞，現行正文固定解釋為：  
**必須保留 `EvidenceCards ↔ FunctionSpec ↔ 偽代碼 ↔ Adapters` 的完整 lineage；就前向收斂流程而言，預設路徑為 `Adapters / evidence fragments → EvidenceCards → FunctionSpec → 偽代碼 / 函數候選 → downstream interface binding`。**

**與其他子系統關係**
- 向 CA-DSL 輸出 formalization-ready 內容。
- 與 CA-GOVERN 共享索引與 evidence 收納。
- 與 CA-COLLAB 對接多 AI 蒸餾協作。
- 與 CA-UI 對接四象限可視化與 evidence visible。

**工具鏈 / 執行環境約束**
- No-API 基線下，允許手動貼上與 bundle 交換。
- execution slot 可協助蒸餾，但不得改變 owner 規則。
- support-only web 不能直接變成 normative claim。
- 多 AI 協作時，每階段輸出需標準化並落到 Job-Card / session log / consistency report。

**Gate / Evidence / 驗收要點**
- SGF 對齊證據必須存在。
- claim 與 evidence 至少雙錨定。
- `semantic_report` 必須解釋主要對齊 / 偏差 / 缺口。
- `alignment_matrix` 必須能把來源、claim、候選原語或方法對位起來。
- `reader_quadrants` 必須完整且有實質內容。
- `job_card`、`evidence_cards`、`function_spec_chain` 必須可回放。
- `evidence_to_rules_interface_flow` 必須能明示 evidence、rules、interface 三段收斂，不得以推測補票。
- 若採用 `QA / NLI / self-consistency / Pass@k` 等輔助證據，必須在 `distill_test_report` 中標明啟用狀態與結果，否則標記 `NA_with_rationale`。
- 無來源、無回指、無語意對齊、無四象限、無 Job-Card 結構 → 不得進 DSL formalization。

**失敗、降級、TT、Fail-Closed**
- SGF 未過 → 回退重蒸餾。
- claim 缺 evidence → quarantine。
- alignment_matrix 缺失 → `BLOCK_RELEASE` for downstream formalization。
- 四象限任一象限缺失 → `BLOCK_RELEASE`。
- Job-Card 必要欄位缺失 → `TT`，不得宣稱蒸餾任務完成。
- FunctionSpec 缺 signature / preconditions / exception handling 任一必要欄位 → `TT`。
- `Evidence→Rules→Interface` 任一鏈節缺失 → `FAIL_CLOSED`。
- 舊材料無法 re-ground → archive，不得硬吸收。

**舊需求吸收說明**
- 吸收 `SEM³`、`語意還原度`、`三重 RAG`、`盲抽象/交叉審/針對性整合` 前半段。
- 吸收「ICT PDF / 影片蒸餾偽代碼」與「不把常數蒸餾進方法」要求。
- 明確吸收 `Claim 庫 / 證據鏈 / 語義報告 / 對齊矩陣 / 四象限讀者區 / Job-Card / Evidence→Rules→Interface` 作為 mandatory artifact set。

**實作參照責任邊界**
- SGF schema、蒸餾報表格式、prompt orchestration 細節 route-out。
- 本條只固定必備輸出形狀與驗收義務，不在正文內展開 prompt 手冊。


### 9.4 CA-DSL — 偽代碼原語庫 / 中立 DSL

**定位**  
CA-DSL 是市場中立、平台中立的原語 formalization owner，負責建立 Primitive Library 與中立 DSL。

**In-scope**
- primitive library
- DSL spec
- EvidenceCard / primitive rationale
- constants isolation

**Out-of-scope**
- 最終方法決策
- 直接 XS 腳本輸出
- XQ 平台能力適配
- 交易執行決策

**核心職責**
- 將蒸餾結果 formalize 為可跨平台使用的中立表示。
- 建立 primitive、constraint family、evidence mapping。
- 管理制度常數與方法語義的分離。
- 提供 CA-METHOD 與 CA-TRANSLATE 的共同中介表示。

**上游輸入**
- distill bundle
- claim set
- rule constants
- reference rules

**下游輸出**
- primitive library
- DSL spec
- EvidenceCard
- formalized pseudo/function set
- `evidence_rule_map`
- `interface_contracts`

**主要功能**
- primitive formalization
- schema binding
- evidence-to-rule mapping
- rules-to-interface binding
- neutrality enforcement

**關鍵工件 / 產物**
- Primitive library
- DSL schema
- EvidenceCard
- Function spec / pseudo spec
- `evidence_rule_map.tsv`
- `interface_contracts.yaml`

**與其他子系統關係**
- 向 CA-METHOD 提供方法組裝基礎。
- 向 CA-TRANSLATE 提供平台中立輸入。
- 向 GOVERN 提供可索引 formal artifacts。

**工具鏈 / 執行環境約束**
- DSL 是中介表示，不是平台腳本。
- constants 必須集中管理，不可散落在各子系統臨時欄位。

**Gate / Evidence / 驗收要點**
- primitive 必須有 evidence pointer。
- DSL schema 必須可檢定。
- `evidence_rule_map` 必須能把 evidence、rule、primitive / interface contract 對位起來。
- Function spec / pseudo spec 必須保留 upstream `FunctionSpec` lineage，不得把蒸餾作業面結構洗平。
- 不能因平台限制反推方法邏輯。

**失敗、降級、TT、Fail-Closed**
- primitive 無 evidence → fail closed。
- `evidence_rule_map` 缺失或 evidence / rule / interface 任一對位斷裂 → `FAIL_CLOSED`。
- constants 與方法邏輯混寫 → TT / rewrite。
- 平台對應不完整 → 交由 CA-TRANSLATE 旗標化降級，不能回頭污染 DSL。

**舊需求吸收說明**
- 吸收 `偽代碼原語庫 / 中立DSL`、EvidenceCard、MethodSpec 等要求。
- 吸收 `Evidence→Rules→Interface` 在 formalization stage的完整對位義務。
- 吸收「市場中立、平台中立」原語庫需求。

**實作參照責任邊界**
- DSL schema owner 與 registry route-out 至 ICD / owner 文檔。

---

### 9.5 CA-METHOD — 方法制定

**定位**  
CA-METHOD 負責把 DSL / primitive / evidence 與台股微結構約束融合為可回測、可轉譯、可審查的 `MethodCard` / `MethodSpec` / `MethodPack`，並吸收舊體系中對方法母體、模組族與 StrategyPack 的有效要求。

**In-scope**
- `MethodCard / MethodSpec / MethodPack`
- 台股在地化方法 formalization
- 多方法卡組裝
- 衝突訊號裁決邏輯
- MSC 一致性
- StrategyPack draft / frozen handoff

**Out-of-scope**
- 回測執行引擎
- 實盤下單
- 直接修改執行平台狀態
- 以平台限制反向決定方法本體

**核心職責**
- 整合 ICT、類 ICT、互補方法與台股微結構規則。  
- 產出 `MethodCard`、`MethodSpec`、`MethodPack`、scenario binding、risk rationale。  
- 建立多方法卡組裝規則、優先級與衝突裁決。  
- 保證方法與原語、證據、規則之間語義一致。  
- 把舊材料中方法模組族、技巧族、方法母體需求，吸收為**可追溯 coverage registry**，而不是讓過時模組編號回流成現行主鍵。

**上游輸入**
- primitive library / DSL spec
- evidence set
- ReferenceDB / 微結構規則
- 舊材料中經 re-ground 的高價值設計

**下游輸出**
- `MethodCard`
- `MethodSpec`
- `MethodPack`
- `primitive_coverage_map`
- `scenario_binding`
- `StrategyPack draft`

**主要功能**
- 三源融合
- 方法卡定義
- 微結構規則合併
- conflict arbitration
- scenario / route_mode binding
- legacy module coverage mapping

**關鍵工件 / 產物**
- `MethodCard.md/json`
- `MethodSpec.json` 或 owner-approved 等價格式
- `MethodPack/`
- `primitive_coverage_map.tsv`
- `scenario_binding.json`
- `StrategyPack/`

**與其他子系統關係**
- 向 CA-BACKTEST 提供唯一方法輸入。
- 向 CA-TA / CA-SELECT 提供分析與選股上游方法語義。
- 向 CA-TRANSLATE 提供可轉譯結構。
- 接收 CA-PERFORM 的 proposal-only feedback，不接受其直接改寫。

**工具鏈 / 執行環境約束**
- 方法卡為 canonical source，不能被回測報表或平台腳本反向取代。
- 本地主路線優先；execution slot 只能協助生成與審查，不改 owner。

**Gate / Evidence / 驗收要點**
- 必須通過 MSC。  
- `MethodCard` 必須含中立 DSL 對位、微結構規則對位、風險聲明、scenario binding。  
- 多方法卡組裝與衝突裁決邏輯需可回放。  
- 若使用舊模組族 / 技巧族 / 107 模組占位要求，必須落到 `primitive_coverage_map` 或等價 coverage registry；不得讓舊模組編號成為現行 stable_id 或架構主鍵。

**失敗、降級、TT、Fail-Closed**
- MSC 未過 → 不得進 BACKTEST。  
- 微結構規則未綁定 → `CONFIGURE_REQUIRED`。  
- 只有 prompt 沒有 MethodCard / MethodSpec → 視為 draft，不得宣稱方法已成立。  
- legacy coverage 無法對位 → 允許 `traceability-only`，但不得偽裝為已完整吸收。

**舊需求吸收說明**
- 吸收 `MethodCard / MethodSpec / StrategyPack` 主工件要求。  
- 吸收「中立 DSL × 台股映射 × 方法制定」分工。  
- 吸收舊方法模組族與方法母體要求，但重寫為 coverage registry，而非恢復舊分類憲法。

**實作參照責任邊界**
- 精細欄位 schema、method registry、strategy packaging 細節 route-out 至 owner 文檔。

### 9.6 CA-BACKTEST — 回測

**定位**  
CA-BACKTEST 是 Pipeline-B 的回測與衛生 owner，負責以本地資料主幹驗證 MethodCard 的有效性、可重播性與過擬合防線。

**In-scope**
- 本地 DB 主路徑回測。
- `backtest_report / repro_manifest / hygiene checks / overfit report`。
- 歷史分K資料庫使用與回測切片管理。
- 樣本外、walk-forward、PBO / CSCV / DSR / PSR / WRC / SPA 等衛生與過擬合防線的**掛點、能力要求與證據欄位**。
- XQ 回測對照驗收。

**Out-of-scope**
- 實盤下單。
- broker API 交易。
- 直接改寫 MethodCard。
- 把 CA-PERFORM 變成回測替身。
- 自行建立第二套市場資料主幹。

**核心職責**
- 使用 MethodCard 與 DB-MARKET 進行可重播回測。  
- 明文落實 lookahead / leakage / overfitting 防線。  
- 對正式回測使用的資料切片進行鎖定與 evidence 化。  
- 將 XQ 回測僅用作平台對齊驗收，不取代本地主路徑。  
- 維護台股大盤基線資料與個股歷史分K資料在回測上下文中的完整性檢查責任。

**上游輸入**
- MethodCard / MethodPack
- DB-REF
- DB-MARKET / slice
- route_mode
- parity profile（若需要對照 XQ）

**下游輸出**
- `backtest_report.json`
- `repro_manifest.json`
- `slice_manifest.json`
- `hygiene_report.json`
- `overfit_report.json`
- `parity_diff_report.json`（若宣稱 XQ parity）
- StrategyPack validated segment

**主要功能**
- 本地 DuckDB / Parquet 回測
- slice locking
- replay / rebuild
- hygiene
- overfit defense
- XQ parity compare

**關鍵工件 / 產物**
- `BacktestPack/`
- `backtest_report.json`
- `repro_manifest.json`
- `slice_manifest.json`
- `hygiene_report.json`
- `overfit_report.json`
- `parity_diff_report.json`

**與其他子系統關係**
- 只接受 CA-METHOD 的 MethodCard 作為方法輸入。
- 向 CA-PERFORM 提供 `ART-BACKTEST-RESULT`。
- 向 GOVERN 提供回測 evidence。
- 允許 CA-TA / SELECT / WATCH 唯讀 consume 資料切片，但禁止它們自建第二庫。

**工具鏈 / 執行環境約束**
- 主路徑固定為本地 DB（DuckDB 為主，必要時輔以 SQLite 作稽核）。
- XQ 回測僅為平台對齊驗收。
- 正式回測資料必須本地保存並 versioned，不得只靠遠端臨時抓取。

**Gate / Evidence / 驗收要點**
- 可重現（Rebuild + Replay）是硬要求。  
- 必須產出 manifest / checksums / evidence links。  
- hygiene 未過，不得進 PERFORM proposal。  
- `PBO / CSCV / DSR / PSR / WRC / SPA` 若被 owner profile 選用，必須落在 `overfit_report` 或明示 `NA with rationale`；不得只寫名詞不留工件。  
- 資料切片、source_hint、version_stamp、gap detection 必須存在。

**失敗、降級、TT、Fail-Closed**
- 本地資料未鎖定 → `BLOCK_RELEASE`
- 缺 manifest / checksums → `BLOCK_RELEASE`
- hygiene 未過 → 不得輸出改善提案
- XQ parity 未校準 → `RADAR_ONLY`
- broker dependency 出現 → `EXECUTE_DISABLED / BLOCK_RELEASE`
- historical DB 缺口過大 → `TT / TEMP_CLOSED`

**舊需求吸收說明**
- 吸收「本地 DB 回測為主、XQ 回測為對照驗收」。
- 吸收「台股大盤基線資料與個股歷史分K資料庫」。
- 吸收「FinMind / 永豐金等來源可白名單允許，但不綁 endpoint」。
- 吸收「日內 / Weekly / RC 節拍治理」「樣本外」「walk-forward」「PBO / CSCV / DSR / PSR / WRC / SPA」相關防線要求，但不私設未授權數值門檻。

**實作參照責任邊界**
- backtest engine 選型、具體 probes、實際腳本與 report schema route-out 至 owner 文件與交付包。

### 9.7 CA-TA — 技術分析

**定位**  
CA-TA 負責根據 MethodCard 與市場資料生成技術分析包，作為 SELECT / WATCH 的上游決策輔助。

**In-scope**
- 技術指標計算
- 型態識別
- 微結構特徵生成
- AnalysisPack / StoryCard / RiskCard
- 初步評分與可檢定預測

**Out-of-scope**
- 最終選股決策
- 下單
- HITL handoff
- 直接操盤

**核心職責**
- 產出標準化分析包。
- 對齊台股微結構特性。
- 產生理由鏈與證據指標。
- 進行預測校準與鑑別力觀測。

**上游輸入**
- MethodCard
- DB-MARKET / slice
- ReferenceDB
- 大盤基線資料

**下游輸出**
- AnalysisPack
- StoryCard
- RiskCard
- indicator / feature outputs

**主要功能**
- 指標計算
- 型態與 regime 辨識
- 微結構守門
- 預測與校準觀測
- 理由鏈輸出

**關鍵工件 / 產物**
- AnalysisPack
- StoryCard
- RiskCard
- feature evidence bundle

**與其他子系統關係**
- 向 CA-SELECT 提供排序與候選依據。
- 向 CA-WATCH 提供盤中訊號前提。
- 與 CA-METHOD 保持 MSC 對齊。

**工具鏈 / 執行環境約束**
- 不得在本子系統內重寫方法卡。
- 不得把平台限制當作分析邏輯本體。
- 僅唯讀 consume 資料主幹。

**Gate / Evidence / 驗收要點**
- Analysis output 必須標準化。
- 理由鏈與 evidence pointer 必須存在。
- 必須接受微結構守門與 MSC 對齊。
- LOCAL↔平台的對位若未證實，不得過度宣稱 TVE 完成。

**失敗、降級、TT、Fail-Closed**
- 不符微結構約束的訊號必須過濾或降級。
- 理由鏈缺失 → `TT`
- 方法卡對齊不足 → 不得輸出可用分析包。

**舊需求吸收說明**
- 吸收「技術分析包」「微結構守門」「可檢定預測」「校準與鑑別」「理由鏈」。
- 吸收「日 / 週分析包」的產出要求。

**實作參照責任邊界**
- 詳細指標、計算公式與平台對照規則 route-out 至 owner 文檔。

---

### 9.8 CA-SELECT — 選股

**定位**  
CA-SELECT 負責把技術分析、流動性與成本約束整合為 TopK 候選清單。

**In-scope**
- 候選清單生成
- 分數、排名、信心度
- 兩段式粗選 / 精選
- 流動性與可成交性門檻
- 排名品質評估

**Out-of-scope**
- 最終交易決策
- 下單
- 盯盤邏輯
- 操盤風控實作

**核心職責**
- 產出標準 TopK list。
- 整合分析包、多維資料與市場成本特徵。
- 提供完整證據鏈。
- 防止低流動性陷阱與假訊號擠入候選名單。

**上游輸入**
- AnalysisPack
- MethodCard constraints
- DB-MARKET / liquidity features
- ReferenceDB

**下游輸出**
- TopK list
- ranking evidence
- candidate rationale
- coarse / fine selection results

**主要功能**
- score fusion
- ranking
- liquidity guard
- confidence assignment
- evidence chain assembly

**關鍵工件 / 產物**
- TopK list
- ranking evidence
- confidence report

**與其他子系統關係**
- 向 CA-TRANSLATE 提供目標標的。
- 向 CA-WATCH 提供監控候選池。
- 接收 CA-TA 分析包，不反向立法方法卡。

**工具鏈 / 執行環境約束**
- 僅唯讀 consume Data Backbone。
- 不得以外部模型結果取代 canonical ranking contract。

**Gate / Evidence / 驗收要點**
- TopK 必須包含代碼、分數、排名、信心度。
- 需通過可成交性與流動性門檻。
- 排名品質與命中率應可觀測。
- 完整證據鏈必須從教材 → 方法 → 特徵 → 分數 → 排名可回推。

**失敗、降級、TT、Fail-Closed**
- 流動性不足 → 降級或排除。
- score fusion 邏輯未明 → `TT`
- 證據鏈不完整 → 不得進 TRANSLATE / WATCH。

**舊需求吸收說明**
- 吸收「TopK」「分數、排名、信心度」「流動性成本」「證據鏈閉環」。
- 吸收「兩段輸出」「排名品質與命中率」要求。

**實作參照責任邊界**
- 精確 ranking metrics、細部 scoring function route-out。

---

### 9.9 CA-TRANSLATE — XS 轉譯

**定位**  
CA-TRANSLATE 是中立 DSL 到 XS 的唯一轉譯 owner，負責平台能力適配與等價驗證。

**In-scope**
- DSL → XS 轉譯
- compile / load / reference vs XS 比對
- parity report
- capability profile
- unsupported feature flags

**Out-of-scope**
- 方法設計
- 最終交易決策
- WATCH 實時訊號生成
- EXECUTE 批准與下單

**核心職責**
- 以解析 → 映射 → 生成三段式轉譯流程產出 XS。
- 提供選股腳本、指標腳本、交易腳本等型別轉譯。
- 定義欄位對應、能力缺口與旗標化降級。
- 維持 TVE / parity 能力。

**上游輸入**
- DSL spec
- MethodCard
- TopK / AnalysisPack
- platform capability profile

**下游輸出**
- XSPack
- compile / load artifacts
- parity report
- drift / degrade flags

**主要功能**
- parse / map / generate
- static check
- dynamic diff
- mutation / robustness checks
- capability gap flagging

**關鍵工件 / 產物**
- XSPack
- parity report
- capability profile
- field mapping matrix

**與其他子系統關係**
- 供 CA-WATCH / CA-EXECUTE / XQ 使用。
- 接收 METHOD / TA / SELECT 上游輸入。
- 向 GOVERN 落盤 parity evidence。

**工具鏈 / 執行環境約束**
- XQ / XS 為外部平台能力邊界。
- 未有 capability profile + parity report，不得宣稱 release-ready。
- 不得把平台妥協條件反推為上游方法本體。

**Gate / Evidence / 驗收要點**
- TVE 必須存在。
- compile / load / reference-vs-XS / parity report 必須可回查。
- 不支援功能需旗標化並降級，而不是沉默刪除。

**失敗、降級、TT、Fail-Closed**
- parity 未校準 → `RADAR_ONLY`
- 平台不支援功能 → flag + degrade
- 無 capability profile → `CONFIGURE_REQUIRED`
- 無 TVE / parity evidence → 不得進 WATCH / EXECUTE 主路徑

**舊需求吸收說明**
- 吸收 `XS 轉譯`、`TVE`、`平台貼入即用`、`變異測試 / 靜態檢查 / 動態差分`。
- 吸收 `WT-NA 記錄` 作為 No-API 手動重演痕跡，但不作主施工 interface。

**實作參照責任邊界**
- 轉譯規則細節、編譯檢查器、動態差分樣張 route-out。

---

### 9.10 CA-WATCH — 盯盤

**定位**  
CA-WATCH 是盤中事件驅動觀測 owner，負責產生訊號與 HITL 交接前的 radar-only 監測結果。

**In-scope**
- 即時監控
- signal trigger
- watch score
- microstructure-aware monitoring
- handoff signal preparation

**Out-of-scope**
- 下單
- 自動送單
- 交易最終批准
- 操盤事件帳本主責

**核心職責**
- 接收即時市場資料與候選清單。
- 根據 MethodCard / AnalysisPack / XS 邏輯產生觀測訊號。
- 管理 radar-only 模式、VI 行為、時間窗約束與 HITL 觸發門檻。

**上游輸入**
- XSPack
- TopK list
- AnalysisPack
- real-time feeds
- route_mode

**下游輸出**
- WatchScore
- signal packet
- HITL handoff input
- watch logs

**主要功能**
- signal rule engine
- resampling
- micro-price / OBI / liquidity signals
- radar-only monitoring
- handoff packaging

**關鍵工件 / 產物**
- watch logs
- signal packet
- handoff signal
- route_mode-marked monitoring output

**與其他子系統關係**
- 向 EXECUTE 提供交接前輸入。
- 向 GOVERN 落盤監控證據。
- 與 TRANSLATE 共享 parity / compile outputs。

**工具鏈 / 執行環境約束**
- WATCH 不下單。
- VI、收盤窗、route_mode、XQ 平台限制必須被明示處理。
- 只讀 consume 平台與資料資訊。

**Gate / Evidence / 驗收要點**
- 訊號需可追溯。
- 微結構約束違反時必須暫停或降級。
- route_mode 必須標記為 T0 / T1 / BOTH。

**失敗、降級、TT、Fail-Closed**
- parity 未完成 → radar-only
- 資料延遲 / 缺失 → degrade
- VI 狀態不明 → 暫停訊號
- 無 HITL 觸發資訊 → 不得交給 EXECUTE

**舊需求吸收說明**
- 吸收「盯盤發訊號」「WatchScore」「HITL 門檻」「VI 期間暫停訊號」「抓點精準度」要求。

**實作參照責任邊界**
- 實時 feed adapter、微觀價計算、延遲量測 route-out。

---

### 9.11 CA-EXECUTE — 操盤 / HITL 交接

**定位**  
CA-EXECUTE 是 XQ 落地前的 handoff / approval trace owner，不是本地下單器。

**In-scope**
- HITL approval trace
- execute handoff package
- approval logs
- safety boundary
- kill switch 入口與事件留痕

**Out-of-scope**
- 本地直接送單
- unattended broker execution
- 第二下單端
- 回測與績效計算

**核心職責**
- 接收 WATCH / TRANSLATE 的交接結果。
- 管理人工批准、approval trace、execute-disabled 安全模式。
- 將 kill switch、風控限制、路由模式與 approval evidence 落盤。
- 連接 XQ 作為唯一真實下單端。

**上游輸入**
- handoff packet
- approval request
- XSPack
- route_mode
- risk limits

**下游輸出**
- approval log
- execute handoff
- event ledger references
- XQ touchpoint evidence

**主要功能**
- HITL approval
- handoff trace
- risk boundary enforcement
- kill switch event logging
- execution status reflection

**關鍵工件 / 產物**
- approval_log.json
- execute handoff pack
- safety / kill-switch events
- event ledger refs

**與其他子系統關係**
- 接收 WATCH / TRANSLATE。
- 向 PERFORM 提供 Track-B 邊界資料（如有）。
- 向 GOVERN 提供 execute-related evidence。
- 實際下單在 XQ，不在本系統。

**工具鏈 / 執行環境約束**
- XQ 為唯一下單端。
- `allow_xsat` 預設 false。
- 未授權一律 `EXECUTE_DISABLED`。
- 本地不得建立 broker API 自動送單路徑。

**Gate / Evidence / 驗收要點**
- HITL approval evidence 必須存在。
- execute handoff 不得等同自動送單。
- kill switch 入口、approval trace、風控限制需可回查。

**失敗、降級、TT、Fail-Closed**
- 無 approval → `EXECUTE_DISABLED`
- 平台能力未核定 → `READ_ONLY / RADAR_ONLY`
- 任何試圖本地送單 → `BLOCK_RELEASE`
- kill switch 事件無留痕 → fail closed

**舊需求吸收說明**
- 吸收「首次進場需 HITL」「其後由 XQ/XS 處理後續操盤」「Kill Switch」「異常優先保命」「事件帳本」。
- 吸收舊需求中「半自動進場、人手一鍵清倉」的安全意圖。
- 但依現行 SSOT 改寫為：**本系統只擁有 handoff / approval trace / kill-switch entry contract，實際執行仍在 XQ 觸點完成。**

**實作參照責任邊界**
- XQ 實際操作步驟、平台模組能力、paid module 細節 route-out。

---

### 9.12 CA-PERFORM — 績效分析

**定位**  
CA-PERFORM 是全鏈路事後績效與改善建議 owner，負責分析 Track-A / Track-B、產出 FeedbackPack，但不得直接改寫方法。

**In-scope**
- 回測績效分析
- 執行偏差與 drift 評估（有資料時）
- top-3 proposals
- cost model / TCA / significance / half-life / drift 觀測
- performance report

**Out-of-scope**
- 即時交易決策
- 自動修改 MethodCard
- 直接驅動 EXECUTE
- 取代 BACKTEST 的 hygiene 職責

**核心職責**
- 接收回測結果並計算績效指標。  
- 於有執行資料時觀測 Track-B 可靠度與偏差。  
- 對本地與 XQ 表現進行 parity / drift 分析。  
- 產出 proposal-only 改進建議，回饋 CA-METHOD。  
- 維持 evidence-first：任何提案都必須可回溯至 backtest / execute / watch / govern 輸入，而非主觀靈感。

**上游輸入**
- ART-BACKTEST-RESULT
- execute / governance logs（若存在）
- run ledger references
- market / slice metadata

**下游輸出**
- `FeedbackPack`
- `top3_proposals.json`
- `performance_report.md`
- `parity_or_missing_inputs_statement.json`
- `retest_linkage.json`
- `perf_summary`

**主要功能**
- metrics computation
- significance correction
- half-life estimation
- drift detection
- TCA evaluation
- proposal generation

**關鍵工件 / 產物**
- `FeedbackPack/`
- `top3_proposals.json`
- `performance_report.md`
- `parity_or_missing_inputs_statement.json`
- `retest_linkage.json`

**與其他子系統關係**
- 接收 BACKTEST 輸出。
- 僅回饋 METHOD，不得直接改寫 MethodCard。
- 可消費 EXECUTE 邊界日誌，但不是 execute owner。

**工具鏈 / 執行環境約束**
- 在本地主環境完成分析與報表。
- 缺執行資料時可 TEMP_CLOSED，但必須輸出缺失原因。
- 不得把外部 Web 結論當成績效 must。

**Gate / Evidence / 驗收要點**
- 必須產出 proposal-only 輸出。  
- 每個 proposal 必含 evidence 指向、rollback 條件與 `HITL required`。  
- performance report 必須引用 `run_id / slice_id / manifest hashes / strategy version`。  
- 若 Track-B 資料缺失，需明示 missing_inputs，不能假裝世界和平。  
- 若使用半衰期、drift、顯著性校正、TCA 等分析，必須有對應欄位或 `NA with rationale`。

**失敗、降級、TT、Fail-Closed**
- hygiene 未過的回測結果不得進 proposal。
- 缺 execute logs → `TEMP_CLOSED` but explainable
- 未授權顯著性／drift 門檻 → `TT / CONFIGURE_REQUIRED`
- 任何自動寫回 MethodCard 的行為 → `BLOCK_RELEASE`

**舊需求吸收說明**
- 吸收「日 / 週 / 月績效閉環」「半衰期」「漂移偵測」「顯著性校正」「TCA」「績效報告」。
- 吸收「最高勝率／獲利／精準度」導向，但改寫為可量測、可回饋、不直改方法的閉環。
- 吸收 `績效分析作業面_升級方案` 中的抗過擬合、自穩定與 evidence-first 思路。

**實作參照責任邊界**
- 精確 metric catalogue、顯著性算法、report schema route-out 至 owner 文件。

### 9.13 CA-GOVERN — 治理 / 索引 / 收納

**定位**  
CA-GOVERN 是最小治理、最小索引、最小收納與最小降級決策落盤 owner。

**In-scope**
- index / manifest / evidence packaging
- run ledger write
- artifact registration
- route flags / degrade labels
- governance-facing packaging

**Out-of-scope**
- 第二控制面
- 第二治理引擎
- 取代所有子系統 owner 的 schema
- 變成重型 bureaucracy machine

**核心職責**
- 為每次 run 建立索引、收納與最小治理留痕。
- 寫入 `run_id / inputs / outputs / sha256 / route_flags / gate_verdict / degrade_label / evidence_refs`。
- 維持 canonical deliverable 與 alias 的一致性規則。
- 提供可回放、可稽核、可打包的 GovPack。

**上游輸入**
- 全子系統輸出
- gate results
- manifest / checksums
- run metadata

**下游輸出**
- GovPack
- run ledger entries
- packaged evidence
- route / degrade registry

**主要功能**
- artifact registration
- evidence indexing
- packaging
- lineage recording
- minimal orchestration

**關鍵工件 / 產物**
- GovPack
- manifest.json
- gate_report.json
- evidence_index.json
- run ledger rows

**與其他子系統關係**
- 橫切服務所有子系統。
- 不取代 Package B 的 gate registry。
- 不取代 Package E 的 validator / release guard。
- 與 UI 共同提供 evidence visible。

**工具鏈 / 執行環境約束**
- 必須在本地主路線可運作。
- 不得要求使用者手工搬運核心工件。
- 自動整理資料，但不偷渡第二制度。

**Gate / Evidence / 驗收要點**
- 每次 run 至少有 `manifest.json`、`gate_report.json`、`artifacts/`。
- 視需要補 `verdict.json`、`evidence_index.json`、`bundle.json`、`bundle_audit.json`。
- 沒有 canonical deliverable，不得宣稱 subsystem deliverable exists。

**失敗、降級、TT、Fail-Closed**
- run ledger 不可寫或毀損 → `BLOCK_RELEASE`
- evidence 不完整 → `BLOCK_RELEASE`
- alias 與 canonical 衝突 → 以 canonical 為準，並建 TT

**舊需求吸收說明**
- 吸收「資料管理與版本化」「自動歸檔／索引／版本化／可回溯」「禁止人工搬運」。
- 吸收「治理可後置但不得消失」並改寫為最小治理。

**實作參照責任邊界**
- schema、state machine、gate registry、release guard route-out 至 Package B / E。

---

### 9.14 CA-COLLAB — 多 AI 協作

**定位**  
CA-COLLAB 是多 AI/LLM 協作流程的正式 owner，負責 bundle 交換、對話掛載、session log、交叉審核流程化；它不是新憲法，但它必須把多模型協作變成可回放的管理系統。

**In-scope**
- blind abstraction / cross review / targeted integration
- collab bundle
- session log
- multi-model handoff discipline
- No-API collaboration packaging
- WebTools-NA template pack / operation pack
- provider / execution slot traceability

**Out-of-scope**
- 自動 API 編排成唯一基線
- 取代 GOVERN
- 取代 UI
- 自創新規範來源

**核心職責**
- 把多 AI 協作流程固化為可重播的 bundle / log / handoff。  
- 支援手動貼上、檔案交換、web-based LLM 協作。  
- 保障不同模型輸出的隔離、互審與整合裁決。  
- 記錄使用了哪一個 execution slot、哪一個 provider slot、由誰整合、何時交接、輸入輸出為何。  
- 把 `WebTools-NA` 從抽象 profile 補成正文級最低制度：模板包、操作包、回貼紀錄、回放包、provider 差異表。  

**上游輸入**
- 來自各子系統的 task bundle
- human prompts / outputs
- source references
- execution_slot / provider_slot metadata

**下游輸出**
- `CollabBundle`
- `session_log`
- `review_matrix`
- `integration_notes`
- `slot_usage_manifest`
- `wtna_template_pack`
- `wtna_operation_pack`

**主要功能**
- blind abstraction
- cross review
- targeted integration
- session packaging
- No-API replay support
- slot/provider traceability
- WebTools-NA prompt / copy / paste / verify workflow

**關鍵工件 / 產物**
- `CollabBundle.zip`
- `collab_session_*.json`
- `review_matrix.tsv`
- `integration_notes.md`
- `slot_usage_manifest.json`
- `wtna_prompt_pack/`
- `wtna_operation_pack/`
- `wtna_roundtrip_log.jsonl`
- `wtna_provider_matrix.tsv`

**與其他子系統關係**
- 橫切支援 WRC / DISTILL / METHOD / PERFORM 等知識密集流程。
- 與 UI 共同支撐單一入口的多 AI 操作。
- 與 GOVERN 共同維持 log / bundle 可回放。

**工具鏈 / 執行環境約束**
- No-API 是基線。
- execution slot 可變，但手動貼上與 bundle 交換流程必須不失效。
- provider slot 可變；現行核准 provider slot 為 `GitHub Copilot PRO`。  
- 不得把某單一 LLM 或某單一 provider 當成制度 owner。
- `WebTools-NA` 的現行地位不是主施工介面；它是 **No-API 手動重演與跨模型協作支援制度**。

**Gate / Evidence / 驗收要點**
- 協作流程必須可回放。  
- 至少能辨識誰輸出、誰審核、誰整合、使用了哪些 slot / provider。  
- 外部多模型輸出只能作資料，不得直接當 normative。  
- `wtna_prompt_pack` 至少要有：`prompt_template.md / input_contract.md / expected_output_shape.md / copy_paste_checklist.md`。  
- `wtna_operation_pack` 至少要有：`provider_profile.tsv / roundtrip_wi.md / failure_modes.md / replay_bundle_spec.md`。  
- 無 `wtna_roundtrip_log.jsonl` 時，不得宣稱 WebTools-NA 可重演。  

**失敗、降級、TT、Fail-Closed**
- 無 session log → `TT`
- 無審核痕跡 → 不得宣稱已整合
- 無法辨識來源模型、provider、或整合者 → 降級為 draft
- 有 template pack 但無 roundtrip log → `TEMP_CLOSED`
- provider 差異未揭露卻直接混用輸出 → `FAIL_CLOSED`

**舊需求吸收說明**
- 吸收「盲抽象 → 交叉審 → 針對性整合」。
- 吸收「No-API、手動貼上、WebTools-NA、掛載 GPT / Claude / Gemini / DeepSeek / Grok Web 端」。
- 吸收「多 AI 協作必須規則化並可驗收」。
- 吸收「WT-NA 紀錄」並重建為正文級模板包 / 操作包制度，而非只留 profile 名稱。

**實作參照責任邊界**
- prompt 模板的完整文案、具體協作 UI、provider 細節 format route-out 至 owner 文檔或 support docs，但最低模板與操作包制度已由本正文鎖定。

### 9.15 CA-UI — 受控單一入口

**定位**  
CA-UI 是全部子系統的受控單一入口，負責一鍵最小閉環與 evidence 可視化；它必須吸收舊版 Desktop App 的有價值要求，但不得把已被上位權威降級的桌面 GUI 憲法偷偷復活。

**In-scope**
- 單一入口
- 一鍵最小閉環
- evidence visible
- run / gate / output trace view
- controlled local entry
- conditional desktop profile

**Out-of-scope**
- 第二治理引擎
- 第二操作規範
- mandatory desktop GUI as constitution
- 要求使用者額外開 PY / PS7 才能完成核心流程

**核心職責**
- 為全部 MVP 子系統提供統一操作入口。  
- 讓使用者看見 `run_id / gate verdict / 主要輸出 / evidence / degrade label`。  
- 承接多 AI / governance / pipeline 執行的最小編排入口。  
- 在採用桌面實作 profile 時，承接 Flet / Windows 發行 / 回貼驗證的條件式義務。

**上游輸入**
- GOVERN 索引
- subsystem outputs
- collab bundles
- gate / run metadata
- UI profile selection

**下游輸出**
- `single_entry_interaction`
- `visible_evidence_pointers`
- `one_click_minimal_orchestration_trigger`
- `ui_profile_manifest`
- `ui_smoke_record`

**主要功能**
- entry
- visualization
- trigger
- state overview
- evidence drill-down
- conditional desktop packaging profile

**關鍵工件 / 產物**
- `UIProfilePack/`
- `ui_profile_manifest.json`
- `ui_smoke_record.json`
- `visible_evidence_state.json`
- `backpaste_verification_log.json`（若啟用桌面 / Windows profile）

**與其他子系統關係**
- 與 GOVERN、COLLAB 高度協作。
- 為全子系統提供進入與觀測面。
- 不承擔 schema owner 職責。

**工具鏈 / 執行環境約束**
- 合法形態可為 `local minimal entry / controlled TUI / controlled CLI / light local page / approved desktop profile`。  
- `桌面 GUI 唯一合法` 已正式降級出 MVP。  
- `Flet` 是**核准桌面 profile 的預設候選框架**，不是全系統唯一合法形態。  
- 若主張 `Windows 發行 / 桌面安裝包 / EXE-like experience`：必須同時具備 `打包 / 安裝 / 回退 / 卸載 / 回貼驗證 / evidence visible`，否則不得宣稱桌面 profile 已完成。

**Gate / Evidence / 驗收要點**
- 必須做到單一入口、一鍵最小閉環、evidence visible。  
- 不可要求使用者再打開額外 shell 才能完成核心閉環。  
- UI 不可把安全狀態與 degrade label 隱藏起來。  
- 若採桌面 profile：必須具備 `Flet(or owner-approved equivalent)`、`Windows packaging evidence`、`backpaste verification evidence`、`install/rollback evidence`。

**失敗、降級、TT、Fail-Closed**
- 無法顯示 evidence → 不得宣稱單一入口完成
- 入口需額外手工串接核心流程 → `TT`
- UI 與 GOVERN 狀態不一致 → `FAIL_CLOSED`
- 宣稱 Windows desktop ready 但無 packaging / rollback / backpaste evidence → `BLOCK_RELEASE`

**舊需求吸收說明**
- 吸收 `Desktop App / 全功能 UI / 一鍵執行 / 可觀測 / 自動化降級 / 手動回貼驗證 / Windows 發行` 的核心意圖。  
- 依現行權威改寫為：  
  - **全系統硬規則**：只要求單一入口、一鍵最小閉環、evidence visible。  
  - **桌面實作 profile 規格**：若選擇桌面 profile，才啟動 Flet / Windows / 回貼驗證等條件式義務。

**實作參照責任邊界**
- 具體 UI 框架、桌面打包、EXE 安裝、快捷方式、installer 細節 route-out 至交付範圍與實作 owner。

## 10. 跨子系統流程與 Pipeline / 五子系統 / A+B DB 對應

### 10.1 Pipeline A

**路徑**  
CA-WRC → CA-CORPUS → CA-DISTILL → CA-DSL

**目的**  
把外部教材、研究資料與舊歷史材料，轉為可 formalize 的 SpecPack / primitive-ready artifacts。

**主輸出**
- Source manifest
- corpus snapshot
- distill bundle
- `reader_quadrants`
- `Job-Card / EvidenceCards / FunctionSpec chain`
- `evidence_to_rules_interface_flow`
- primitive library / DSL spec

**硬規則**
- 外部 Web 只作 support-only。
- SGF 不過，不得進下游。
- 常數不入蒸餾，應導向 ReferenceDB / rule store。
- Pipeline-A 的蒸餾輸出不得跳過 `四象限讀者區`。
- Pipeline-A 的收斂鏈不得跳過 `Evidence→Rules→Interface` 任一步。
- Pipeline-A 的任務導引不得省略 `Job-Card` 結構與 `FunctionSpec` 追溯。
- 任一輸出若只有宣告標題、沒有實質內容，視為未產出。

### 10.2 Pipeline B

**路徑**  
CA-METHOD → CA-BACKTEST → CA-PERFORM

**目的**  
把 MethodCard 變成可重播、可驗證、可回饋的 StrategyPack / FeedbackPack 閉環。

**主輸出**
- MethodPack
- BacktestPack
- FeedbackPack
- repro manifest
- top-3 proposals

**硬規則**
- 本地 DB 回測為主體。
- XQ 回測只作平台對齊驗收。
- hygiene 未過不得進 proposal。
- PERFORM 不得直接改寫 MethodCard。

### 10.3 Pipeline C

**路徑**  
CA-TA → CA-SELECT → CA-TRANSLATE → CA-WATCH →（經 CA-EXECUTE handoff）→ XQ

**目的**  
把方法與資料轉為可監控、可轉譯、可 handoff 的盤中／盤後資產。

**主輸出**
- AnalysisPack
- TopK list
- XSPack
- signal packet
- approval trace

**硬規則**
- WATCH 不下單。
- EXECUTE 僅 handoff / approval trace。
- 未有 capability profile + parity report，不得宣稱 XQ parity ready。

### 10.4 五子系統

五子系統在現行正文中扮演橫切薄封裝角色：

- CA-EXECUTE：安全交接與 approval trace。
- CA-GOVERN：治理、索引、收納。
- CA-COLLAB：多 AI bundle / session log。
- CA-UI：單一入口與 evidence 可視。
- WATCH 與 EXECUTE 在交易觸點前後負責行為分流。

### 10.5 A+B DB 對應

A+B DB 的現行中央裁決為：

- Git 管規格與索引。
- DVC 管資料指針與版本。
- object storage 管版本化實體。
- ReferenceDB 與 RunLedger 為中央補齊、不可缺失的全域資料庫。
- Pipeline C 與五子系統只讀 consume，不得另起爐灶。

### 10.6 舊任務鏈與 15 子系統對位

吸收舊 `P1_Q&A` 的 a~m 任務後，固定對位如下：

- 教材蒐集 → CA-WRC / CA-CORPUS / CA-DISTILL
- 偽代碼台股化 → CA-DSL
- 方法草案 → CA-METHOD
- 台股歷史資料庫 → CA-BACKTEST
- 回測修補再定案 → CA-METHOD + CA-BACKTEST
- 日 / 週分析包 → CA-TA
- XS 轉譯 → CA-TRANSLATE
- 選股 → CA-SELECT
- XQ 盯盤 → CA-WATCH
- HITL 進場與後續 XQ 操盤 → CA-EXECUTE + XQ
- 績效閉環 → CA-PERFORM
- 全資料管理與版本化 → CA-GOVERN

---


### 10.7 P1→P4 文檔產出序列與 DELIVER 交付總表

為吸收舊《需求總和》對 `P1→P4 文檔產出序列 / DELIVER 交付總表` 的明示要求，本文件固定以下中央義務；此義務自本版起屬正文級規則，不再只留 route-out：

| phase | mandatory package family | minimum purpose | mandatory control object | fail-closed rule |
|---|---|---|---|---|
| `P1` | `README / SRS / ARCH / DELIVER` | 完成主參照、邊界、拓撲、交付總表 | `p1_doc_register.tsv` | 核心四檔缺一，不得宣稱 P1 freeze |
| `P2` | `Build / Run` | 完成可施工與最小可跑 | `p2_build_run_register.tsv` | 未與 P1 DELIVER 對位，不得進功能交付 |
| `P2.5` | `WT-NA / No-API replay line` | 固化人工貼上、手動重演、bundle replay | `wtna_delivery_register.tsv` | 無 replay 契約，不得宣稱 No-API 主線成立 |
| `P3` | `Govern / Index / Version / TT` | 完成治理、索引、版本、TT 收納 | `p3_govern_register.tsv` | 無索引與版本 manifest，不得宣稱可回溯 |
| `P4` | `Acceptance / Release / Closure` | 完成驗收、release guard、closure | `p4_acceptance_register.tsv` | 驗收缺件，不得宣稱最終閉合 |

`DELIVER` 在本文件中的最低正文責任固定如下：

- 必須存在 `deliver_total_register.tsv` 或等價機械可讀總表。  
- 每列至少必須有：`deliverable_id / producer / consumer / phase / order / owner / route_mode / gate_alias / template_gate_resolution / threshold_ref / evidence_minset / closure_state`。  
- `DELIVER` 不是單純交付清單；它是**新接手的人類或 AI 唯一合法的交付排序對照表**。  
- 未納入 `deliver_total_register.tsv` 的交付物，不得宣稱為現行正式 deliverable。  
- `P2 / P2.5 / P3 / P4` 的交付，必須能回指到 `P1` 的 DELIVER 列，否則視為漂移產物。  

### 10.8 子系統級小 P1 啟動規則

為吸收舊《需求總和》對「子系統級小 P1」的要求，本文件固定以下判定流程：

- 觸發時機：`ARCH Frozen` 後，任何子系統若同時出現 `scope expansion / new owner contract / new external touchpoint / new threshold_ref / new route_mode obligation` 其中任兩項，必須評估是否啟動 `subsystem_mini_p1`。  
- `subsystem_mini_p1` 的最低產物：  
  - `mini_p1_scope_lock.md`  
  - `mini_p1_inputs_outputs.tsv`  
  - `mini_p1_gate_threshold_map.tsv`  
  - `mini_p1_routeout_register.tsv`  
  - `mini_p1_delivery_delta.tsv`  
- 啟動判定表：

| trigger | must_open_mini_p1 | rationale |
|---|---|---|
| 新增外部平台接點或交易接點 | YES | 邊界與風險變更不可只靠口頭補充 |
| 新增 owner contract / validator dependency | YES | 需重新鎖定 owner 關係 |
| 只調整文案、不改 scope / gate / threshold / route | NO | 由正文或 owner docs 吸收即可 |
| 只新增 support-only 參照 | NO | 不構成子系統中央義務擴張 |
| 新增桌面 / Windows / No-API replay profile | YES | 需補 profile 契約與 evidence |

- 未完成 `subsystem_mini_p1` 卻直接擴張子系統 scope 者，一律 `TT + BLOCK_RELEASE`。  
- `subsystem_mini_p1` 只補該子系統增量，不重寫整份中央正文。  

---

## 11. 交易邊界、XQ/XS/HITL/Kill Switch / T0/T1 / parity 規則

### 11.1 XQ 唯一下單端

本系統對交易執行採取固定硬邊界：

1. 實際下單與成交，僅在 `XQ 全球贏家` 端完成。
2. 本地系統只產出檔案、訊號、分析、方法、回測、提案與 handoff traces。
3. 本地不得建立第二下單端。
4. 本地不得以 broker API 自動送單偽裝成 XQ parity。
5. EXECUTE 子系統不代表本地下單能力存在。

### 11.2 WATCH / EXECUTE 邊界

- **TRANSLATE**：只做 XS 規劃、轉譯、parity 與 handoff artifact 產出；不負責本地下單或本地 runtime 執行控制。  
- **WATCH**：只做觀測、提醒、交接包準備，不下單。  
- **EXECUTE**：只做 HITL handoff、approval trace、狀態接管與對帳，不得 unattended 下單。  
- `CA-WATCH`、`CA-EXECUTE` 不得在本地重建第二套盯盤、送單或倉位管理執行引擎；其實際執行觸點必須回到 `XQ 全球贏家`。  
- `allow_xsat` 預設 false。  
- 安全狀態固定允許 `RADAR_ONLY / EXECUTE_DISABLED / READ_ONLY_UI`。  
- 未獲授權之前，一切看起來像自動下單的東西都應被視為事故預告，不是功能亮點。

### 11.3 進場後自動操盤 choreography（正文級閉合）

為吸收 `P1_Q&A` 中「用戶手動確認進場後，XQ 依劇本自動建倉 / 加碼 / 減碼 / 停損 / 停利」的要求，同時不破壞現行 `XQ 唯一下單端 + WATCH 不下單 + EXECUTE 僅 HITL / handoff` 邊界，本文件固定以下 choreography：

#### 11.3.1 兩條證據鏈與對帳鎖死

- `A-chain`：Spartoi 劇本鏈，最少包含 `method_version / analysis_pack / hitl_decision / risk_limits / route_mode / execution_intent`。  
- `B-chain`：XQ / XS 執行鏈，最少包含 `order_ledger / fill_ledger / cancel_or_reject / incident_snapshot / reconcile_report`。  
- `reconcile`：A/B 兩鏈必須每日或每次關鍵事件對帳；未對帳不得宣稱劇本被正確執行。  

#### 11.3.2 狀態機

| state | owner | allowed action | required evidence | exit condition |
|---|---|---|---|---|
| `WatchOnly` | CA-WATCH | 偵測條件、發提醒、產出 HITL 選項 | `watch_event + rationale + hitl_request` | 進入 `EntryPending` 或回到 `WatchOnly` |
| `EntryPending` | CA-WATCH → CA-EXECUTE | 等待人類確認；不得送入場單 | `hitl_request + hitl_decision` | `approved` 才可進 `ManagePosition` |
| `ManagePosition` | CA-EXECUTE + XQ | 建倉後的加碼 / 減碼 / 停損 / 停利 / 出場管理 | `execution_intent + order_ledger + position_snapshot` | 部位歸零、Freeze、或 EmergencyStop |
| `Freeze` | CA-EXECUTE | 停止自動操盤，等待人工處理 | `incident_snapshot + reconcile_gap` | 人工解除或結束當日流程 |
| `EmergencyStop` | CA-EXECUTE + XQ | 停止策略、撤單 / 平倉、寫入事故證據 | `kill_switch_event + incident_snapshot + stop_result` | 安全確認後回到 `WatchOnly` |

#### 11.3.3 兩條落地路徑

- `B1`（首選）：**手動確認 → 由 XS / XQ 送入場單**。此路徑保留 HITL，同時避免手動單接管造成的狀態同步地獄。  
- `B2`（條件式保留）：**使用者手動下單後，再由 XQ / XS 接管管理**。此路徑只有在 `方向 / 成本 / 張數 / 可用資金 / route_mode / risk_limits` 全部對齊，且 `position_reconcile` PASS 時，才允許進入 `ManagePosition`；任一不一致即 `Freeze`。  

#### 11.3.4 建倉後自動操盤的合法邊界

- 允許的自動化只限 `ManagePosition` 內之 **加碼 / 減碼 / 停損 / 停利 / 出場**。  
- 進場動作本身仍受 `EntryPending + HITL` 限制。  
- `ManagePosition` 的每次動作，必須同時留存 `execution_intent` 與 `order_ledger`。  
- 無 `capability_profile + parity_report + reconcile_pass`，不得開啟建倉後自動操盤。  
- 任一資料缺失、能力不可達、或對帳失敗，即刻 `Freeze`；不得假裝系統仍安全。  

### 11.4 HITL

系統必須保留首次進場的人工確認與權限核可。  
任何未經 HITL 的實際進場聲明，均不得視為合格。

HITL 至少必須留下：

- approval event
- approver / operator
- timestamp
- route_mode
- handoff bundle ref
- risk limits / rollback conditions

### 11.5 Kill Switch

本文件保留舊需求對 Kill Switch 的安全意圖，但依現行 SSOT 與整合定案版 XQ/XS/Watch/Execute 方案改寫如下：

1. 系統必須提供**無條件一鍵停機與清倉入口**，且入口必須同時可由 UI、EXECUTE、以及 XQ handoff 邊界到達。  
2. Kill Switch 觸發後，系統必須進入 `EmergencyStop`；停止新訊號、停止新執行請求、停止策略，並啟動撤單 / 平倉流程。  
3. 每次觸發必須寫入 `incident_snapshot`，並保留 `觸發 → 送出 → 成交/拒單/未成交處置` 的實際時間戳；本文件不私自承諾固定單點 SLA，而是要求可量測分布。  
4. 若平台能力允許，必須保留「停止所有執行中策略」與「停止時是否刪除未成交」之實際選項與結果證據。  
5. Kill Switch 無演練紀錄、無 incident snapshot、或無對帳結果者，不得宣稱安控成立。  

### 11.6 T0 / T1 雙路由

`route_mode` 僅允許：

- `T0`
- `T1`
- `BOTH`

**T0 主線**
- 含 13:10 禁新倉。
- 含 13:20 強制清倉。
- 盤中劇本、監控與執行必須以 T0 標記。

**T1 副線**
- 不含 13:20 強清。
- 必須有隔夜監控與次日處置腳本。
- 盤後與次日的 handoff / monitoring 必須可追蹤。

TRANSLATE / WATCH / EXECUTE / BACKTEST 均必須標記 route_mode，  
避免日內規則跑去隔夜，或隔夜劇本偷渡回當沖。交易系統最可怕的不是虧錢，而是連自己現在在演哪一齣都不知道。

### 11.6 parity 規則

XQ parity 的現行裁決為：

1. 未有 capability profile + compile/load/reference-vs-XS + parity report，不得宣稱 parity ready。
2. parity 未校準時，只能 `RADAR_ONLY`。
3. XQ 回測是對照驗收，不是本地主回測的替身。
4. 平台能力缺口應旗標化與降級，不得沉默刪除。

---

## 12. Gate / Evidence / TT / CR_OPEN / CONFIGURE_REQUIRED / Fail-Closed 規則

### 12.1 Gate 三段架構

本文件承接中央工程正文，固定採用以下三段結構：

1. **Template Gate**：中央固定 8 個模板 Gate。  
2. **Alias Resolution**：子系統、流程、pack、runbook 可用 alias，但必須解析回模板 Gate。  
3. **Profile / Instance**：具體 profile、route_mode、threshold_ref、schema binding、evidence binding。  

任何 alias 若無法解析回模板 Gate，一律 `FAIL_CLOSED`。

### 12.2 8 個固定模板 Gate（正文級最低模板表）

| template_gate | formal_scope | minimum_input | minimum_output | minimum_check | fail-closed action |
|---|---|---|---|---|---|
| `G-SRC` | 來源、完整性、可回讀 | source manifest、hash、provenance | source check report | source / hash / provenance | 無來源定位或 hash 不可核對 → `FAIL_CLOSED` |
| `G-SEG-L` | 語意保真 / 小 golden set | claim set、source spans、semantic profile | semantic report | semantic fidelity | SGF 不成立 → 不得進下游 |
| `G-SCHEMA` | 結構、欄位、可解析性 | schema ref、instance artifact | schema validation report | schema validity | 不可解析或缺欄 → `FAIL_CLOSED` |
| `G-BT-H` | 回測衛生與可重播 | method card、historical snapshot、repro config | backtest hygiene report | repro + hygiene | 無法重播或衛生未過 → 不得進 proposal |
| `G-CONF-L` | 信心 / 候選 / uplift 類治理 | ranking / confidence input | confidence report / uplift report | confidence / ranking / uplift | exact floor 未授權時僅可報告，不得硬判 PASS |
| `G-XQ-PARITY` | XS / XQ parity | xs pack、capability profile、reference behavior | parity report | compile / load / reference-vs-XS / capability / parity | 任一缺失 → `EXECUTE_DISABLED` |
| `G-HITL-LOG` | 人工確認與事件日誌 | hitl request/decision、event stream | approval trace / event log | approval trace / event log | 無 approval trace → 不得進場 |
| `G-RUN` | 執行閉環與 packaging | run config、subsystem outputs | smoke report / packaging bundle | smoke / run_id / packaging / visible evidence | 無 run_id 或無 packaging → 不得宣稱閉環 |

### 12.3 Alias Resolution Table（最低必備）

| alias | resolution |
|---|---|
| `UI Gate` | `G-RUN[ui-profile]` |
| `GOVERN Gate` | `G-RUN[govern-packaging-profile] + G-SCHEMA[govern-manifest-profile]` |
| `SELECT Gate` | `G-CONF-L[select-profile]` |
| `PERFORM Gate` | `G-CONF-L[perform-uplift-profile] + G-BT-H[retest-profile]` |
| `COLLAB Gate` | `G-SRC[collab-source-profile] + G-SCHEMA[bundle-profile]` |
| `GATE-WRC-TIER` | `G-SRC[wrc-ingest-profile]` |
| `GATE-DISTILL-SGF` | `G-SEG-L[distill-semantic-profile]` |
| `GATE-DSL-PURITY` | `G-SCHEMA[dsl-purity-profile]` |
| `GATE-METHOD-MSC` | `G-SRC[method-source-profile]` |
| `GATE-BACKTEST-RC5` | `G-BT-H[repro-hygiene-profile]` |
| `GATE-TA-PREDICT` | `G-CONF-L[ta-profile]` |
| `GATE-SELECT-NDCG` | `G-CONF-L[select-profile]` |
| `GATE-TRANSLATE-TVE` | `G-XQ-PARITY[translate-profile]` |
| `GATE-WATCH-SIGNAL` | `G-HITL-LOG[watch-profile]` |
| `GATE-EXECUTE-HITL` | `G-HITL-LOG[execute-profile]` |

硬規則：

- `UI Gate` 與 `GOVERN Gate` 不是第 9、第 10 個模板 Gate。  
- 不得新增第 9 個模板 Gate。  
- 不得 alias 未解析就執行。  

### 12.4 Evidence 最低集合

每次可裁決執行至少必須存在：

- `manifest.json`
- `gate_report.json`
- `artifacts/`
- `run_id`
- `evidence_refs`

依情境補：

- `verdict.json`
- `evidence_index.json`
- `bundle_audit.json`
- `parity_report.json`
- `approval_trace.json`
- `reconcile_report.json`

若缺任一必要 evidence，依情境進入 `BLOCK_RELEASE / TEMP_CLOSED / TT / FAIL_CLOSED`，不得靠敘述補票。

### 12.5 Threshold Register（正文級狀態表）

| threshold_id | subject | state | use_rule |
|---|---|---|---|
| `THR-40PCT-LITERAL` | `>40%` literal requirement | `ACTIVE_LITERAL` | 可作需求存在依據，不可外推為精確公式 |
| `THR-CONF-METRIC-001` | confidence metric definition | `CONFIGURE_REQUIRED` | 只能出現在 `threshold_ref / report / config` |
| `THR-SELECT-FLOOR-001` | select exact floor / hit@k | `CONFIGURE_REQUIRED` | 未授權，不得寫死 |
| `THR-XQ-PARITY-001` | parity exact floor | `CONFIGURE_REQUIRED` | parity 必驗；exact floor 不得私定 |
| `THR-SEG-L` | semantic fidelity lite threshold | `ACTIVE` | 依 profile 驗證 |
| `THR-BT-H` | backtest hygiene | `ACTIVE` | 依 repro / hygiene profile 驗證 |
| `THR-CONF-REF` | confidence reference family | `CONFIGURE_REQUIRED` | 可引用，不得直接當 pass line |
| `THR-NONE` | no numeric threshold required | `ACTIVE` | 以結構 / 行為 / evidence 判定 |

### 12.6 TT、CR_OPEN 與 CONFIGURE_REQUIRED

#### TT（Test Tracking）

TT 用於處理：

- 衝突未解
- 門檻未授權
- parity 未校準
- owner 缺件
- 驗證未跑完
- literal lint 未通過

#### CR_OPEN

本文件採用 `CR_OPEN=0` 作 closure 目標。  
任何未關閉衝突，不得硬判為 fully closed；必須轉 `TT`，不得把 `CR_OPEN` 懸空留在正文內。

#### CONFIGURE_REQUIRED

`CONFIGURE_REQUIRED` 只允許出現在：

- `threshold_ref`
- `report`
- `manifest`
- `config`
- `capability declaration`

不得用 `CONFIGURE_REQUIRED` 偽裝成已通過之硬門檻。

### 12.7 Fail-Closed 行為

以下任一成立，即不得宣稱 PASS：

- 無來源定位
- 無 owner
- 無 validator / release guard supporting（若宣稱 release）
- schema / evidence / gate 必需項缺失
- parity 未校準
- hygiene 未過
- route_mode 未標記
- 企圖把外部 support-only 內容升格為 MUST
- 企圖用舊文檔繞過現行 SSOT
- alias 未解析
- threshold 未授權卻被寫死

### 12.8 狀態語義

| state | meaning |
|---|---|
| `ACTIVE` | 可直接作 PASS / FAIL 依據 |
| `ACTIVE_LITERAL` | 字面要求存在，但不得外推公式 |
| `CONFIGURE_REQUIRED` | 等待配置或授權；不得裝作已完成 |
| `TT` | 可追蹤待驗證事項 |
| `TEMP_CLOSED` | 暫結，但仍帶 TT 或待演練事項 |
| `FAIL_CLOSED` | 缺件、衝突、或違規時的預設結論 |
| `BLOCK_RELEASE` | 不可交付、不可宣稱 release-ready |
| `RADAR_ONLY` | 只可觀測，不得進實際執行 |
| `EXECUTE_DISABLED` | 禁止任何執行觸點升級 |
| `READ_ONLY_UI` | UI 僅可觀測，不可觸發核心動作 |
| `HITL_REQUIRED` | 必須人工確認後才可進下一步 |

### 12.9 document replaceability 與 release readiness 的差異

- **document replaceability**：指本文件已能在系統需求正文範圍內，回答系統必須成為什麼、不得成為什麼、誰負責什麼、什麼算過、什麼時候必須停。  
- **release readiness**：仍需 owner docs、validator、manifest、required checks、release guard 裁決。  
- 因此，`document replaceability = PASS` 不代表 `release readiness = PASS`。  
- 任何把兩者混為一談的說法，一律視為治理錯誤。  

---

## 13. Legacy absorption / rewrite / archive / traceability 說明

### 13.1 必須保留但不可回流為現行憲法的舊要求

| 舊要求 | 現行正文處置 |
|---|---|
| Flet 作唯一桌面 GUI | 改寫為單一入口與可觀測 UI 硬要求；Flet 僅保留為候選實作 |
| WebTools-NA 精靈作主施工介面 | 改寫為 No-API 手動重演與協作支援，不再是主施工 interface |
| 多跨 LLM blind flow / reviewer | 改寫為 CA-COLLAB 的 blind abstraction / cross review / targeted integration |
| 舊 Agent / 非Agent toggle | 改寫為 runner_mode / execution_mode / approval_mode / tool_slot 抽象 |
| 舊 P0 / P2 單檔母規格 | 僅保留 traceability 與 archive 對照 |

### 13.2 必須被完整吸收到現行正文的舊要求

下列舊要求不得再遺漏：

- 單人 + 多 AI/LLM 協作。
- 快速、輕便、簡易、高效。
- 全功能運行優先，但治理 / 觀測 / 驗收不能消失。
- No-API 基線與手動貼上檔案交接。
- XQ 唯一下單端、WATCH 不下單、EXECUTE 僅 handoff。
- HITL、Kill Switch。
- 台股大盤基線資料與台股歷史分K資料庫。
- 本地 DB 回測為主，XQ 回測作平台對照。
- SEM³ / SGF / MSC / TVE。
- SQM-7 品質量測導向。
- 多 AI 協作流程固定化。
- 產物自動歸檔 / 索引 / 版本化 / 可回溯。
- P0 歷史證據可提取，但不得繼承舊技術債。

### 13.3 必須明確封存的舊要求

下列舊要求在現行正文中應視為已封存或降級：

- 桌面 GUI 唯一合法。
- 以舊雲端沙盒作主施工語義。
- 以第三方 reviewer / blind flow 作核心制度。
- 把外部大模型工作方式本身寫成現行規範。
- 任何未經現行 owner 授權的歷史 threshold 直接變成 release gate。

### 13.4 吸收後的主使用裁決

自本文件起，開發者應遵循的規則很簡單：

- 要找系統需求正文，看本文件。
- 要找 schema、validator、release guard、HOW，去 owner 文件。
- 四象限讀者區、Evidence→Rules→Interface、Job-Card、Hotplug 四路徑，已在本文件正文中閉合，不再需要回查四份舊需求來補齊這些義務。
- 不要再拿四份舊文檔互相對撞，讓需求工程變成考古競賽。

---

## 14. 最終 replaceability / 使用裁決聲明

### 14.1 replaceability 聲明

本文件在**系統需求正文範圍**內，已完成以下工作：

- 對舊版《Spartoi-OMOC_系統需求正文》完成全量升級與修補。  
- 對 `《Spartoi舊版需求總和》`、`《Spartoi｜P1_Q&A》`、`《Spartoi｜StRS+SyRS_v4.1.0》`、`《Spartoi系統21項需求》` 的仍有效需求，完成 `absorbed / rewritten / route-out / archived / traceability-only / fail-closed` 工程性處置。  
- 對法理序位、工具鏈、技術核心與外殼約束、15 子系統、資料主幹、交易邊界、SEM³ / SQM-7 / 語意還原度、mandatory artifact sets、closure matrix，完成正文級閉合。  
- 對覆蓋度審查報告點名的四象限讀者區、Evidence→Rules→Interface、Job-Card、Hotplug 四路徑、SEM³ 固定鍵位 / 事件 / RTM，完成正文級修補。  
- 將不可直接沿用之舊要求，明示為 archive 或條件式 profile 義務，而非靜默消失。

因此，自本版起：

**後續開發、拆任務、做子系統需求、做交付包與驗收時，在系統需求正文範圍，不需要再回查舊版《Spartoi-OMOC_系統需求正文》與其餘五份舊需求／舊正文作為現行主參照。**

### 14.2 使用裁決聲明

本文件是後續開發的**主參照需求正文**。  
但任何涉及：

- schema
- validator
- release guard
- MC4 / WP.Master 契約
- Package B / D / E owner 定義
- Dev/Ops HOW
- LBP 的詳細 ICD / ADR / C4 / Fitness 目錄

仍必須 route-out 至現行 owner 文件。

也就是說：

- **需求正文主參照**：本文件  
- **制度根源與 owner 定義**：中央工程正文 → SSOT → LBP → Pack / SubP1 / OMOC / 參考方案  
- **操作與施工 HOW**：Runbook / MC4 / WP.Master / owner deliverables

### 14.3 結論

新版 Spartoi-OMOC 的系統需求正文，從本文件起固定為：

- 以 **中央工程正文 → SSOT → LBP → Pack A-E+工程指南 → SubP1-LITE+MVP → OMOC → 參考方案** 為唯一合法裁決序位；  
- 以 15 子系統白名單為正式結構；  
- 以本地 VS + Docker / DevContainer + GitHub repo 為主施工語義；  
- 以 OpenCode / Oh My OpenCode 為 execution slots，GitHub Copilot PRO 為 provider-side model supply slot，Codespaces 為 fallback only；  
- 以 Python 3.13 最重核心、PowerShell 7 最薄外殼為技術核心約束；  
- 以統一資料主幹、ReferenceDB、RunLedger、DB-MARKET、STORE-EVID 為資料骨幹；  
- 以 `XQ 全球贏家` 為唯一實際盯盤 / 下單 / 成交執行端，`CA-TRANSLATE` 為 XS 規劃 / parity owner，`CA-WATCH / CA-EXECUTE` 為 XQ runtime boundary adapters 為交易邊界；  
- 以 No-Source-No-Norm、No-Anchor-No-Claim、One-Rule-One-Place、Fail-Closed 為正文紀律；  
- 以 absorb / rewrite / archive / route-out / traceability-only / fail-closed 的合法處置，完成對五份舊需求／舊正文的正式替代。
- 以四象限讀者區、Evidence→Rules→Interface、Job-Card、Hotplug 四路徑、SEM³ 固定鍵位 / 事件 / RTM 的明文條文，完成覆蓋度審查報告所點名 blocker 的實質清零。

## 附錄 A：本文件直接吸收的舊需求關鍵面向清單

1. 單人 + 多 AI/LLM 協作。  
2. 快速、輕便、簡易、高效。  
3. 全功能優先但治理不能消失。  
4. No-API / 手動貼上 / 檔案交接重演 / WebTools-NA。  
5. SEM³ / SGF / MSC / TVE。  
6. SQM-7 品質量測思路。  
7. 台股大盤基線資料能力。  
8. 台股歷史分K資料庫能力。  
9. 本地 DB 回測主體。  
10. XQ 回測平台對照驗收。  
11. XQ 唯一下單端。  
12. WATCH 不下單。  
13. EXECUTE 僅 HITL handoff。  
14. Kill Switch 安全意圖。  
15. T0 / T1 作業窗。  
16. AnalysisPack / MethodCard / TopK / XSPack / FeedbackPack 等主工件意圖。  
17. 產物自動歸檔、索引、版本化、可回溯。  
18. 多 AI 盲抽象 / 交叉審 / 針對性整合。  
19. Claim 庫 / 證據鏈 / 語義報告 / 對齊矩陣。  
20. 來源可信分級、差異化蒸餾策略、Hybrid retrieval policy。  
21. Python 3.13 最重核心。  
22. PowerShell 7 最薄外殼。  
23. Viewpoint / View / Concerns / Stakeholders 與禁用 `layer` 類字彙。  
24. Flet / Windows 發行 / 回貼驗證的條件式實作 profile。  
25. P0 歷史證據可提取但不得繼承舊技術債。

## 附錄 B：本文件的 route-out 指引

- 要找 Gate registry / TT state machine / evidence schema → Package B / owner schema docs  
- 要找 validator / release guard / MC4 / WP.Master 契約 → Package E  
- 要找 DevContainer / workflow / checks / adapters → Package D  
- 要找操作步驟 / CLI / YAML / click path → Dev/Ops Runbook  
- 要找 ICD / ADR / C4 / fitness catalogue → LBP-B / C / D / E  
- 要找詳細 Pipeline-A / B / C 與 A+B DB 落地方案 → 參考方案合冊  
- 要找台股交易流程、XQ / XS 實際邊界、watch / execute 操作序 → Ops RUNBOOK_合冊  
- 要找 CA-METHOD / CA-BACKTEST / CA-PERFORM 的 bundle-level packaging / evidence / TT 實作 → 對應 MC4 合冊

## 附錄 C：本文件使用的直接規範來源集合

### 現行權威（依本文件裁決序位）
1. `Spartoi-OMOC_SubP1-LITE+MVP_中央工程正文`  
2. `Spartoi-OMOC_SSOT_合冊`  
3. `Spartoi-OMOC_LBP_合冊`  
4. `Spartoi-OMOC_SubP1-LITE+MVP_Pack A-E+工程指南_合冊`  
5. `Spartoi-OMOC_SubP1-LITE+MVP_合冊`  
6. `OMOC_合冊`  
7. `參考方案合冊`

### 輔助落地與邊界文件
- `Ops RUNBOOK_合冊`  
- `Spartoi-OMOC_SubP1-LITE+MVP_CA-METHOD_MC4合冊`（若實體未上傳，僅可 route-out，不得當唯一裁決源）  
- `Spartoi-OMOC_SubP1-LITE+MVP_CA-BACKTEST_MC4合冊`（若實體未上傳，僅可 route-out，不得當唯一裁決源）  
- `Spartoi-OMOC_SubP1-LITE+MVP_CA-PERFORM_MC4合冊`（若實體未上傳，僅可 route-out，不得當唯一裁決源）  
- `回測作業面_升級方案.txt`  
- `績效分析作業面_升級方案.txt`  
- `SEM³資料參考_合冊`  
- `Pipeline-B&C資料參考_合冊`（整合 alias，取代 `A/B` 的模糊表達）

### 被本文件取代的舊需求／舊正文
- `Spartoi-OMOC_系統需求正文（舊版）`  
- `Spartoi舊版需求總和`  
- `Spartoi｜P1_Q&A`  
- `Spartoi｜StRS+SyRS_v4.1.0`  
- `Spartoi系統21項需求`



## 附錄 D：五份舊需求／舊正文 closure matrix

| old_source | old_requirement_group | disposition | new_locator | closure_state |
|---|---|---|---|---|
| 舊版《Spartoi-OMOC_系統需求正文》 | 錯置權威序位 | rewritten | §3.1 | CLOSED |
| 舊版《Spartoi-OMOC_系統需求正文》 | replaceability 過度宣稱 | rewritten | §14 + 本附錄 | CLOSED |
| 舊版《Spartoi-OMOC_系統需求正文》 | 工具鏈半套化 | rewritten | §6 | CLOSED |
| 舊版《Spartoi-OMOC_系統需求正文》 | 缺少 mandatory artifacts 閉合 | rewritten | §7.3、§9.1~§9.4 | CLOSED |
| 舊版《Spartoi-OMOC_系統需求正文》 | Flet/Windows/回貼驗證處置不清 | rewritten | §6.3.4、§9.15 | CLOSED |
| 《Spartoi｜P1_Q&A》 | 單人使用 | absorbed | §5.2 | CLOSED |
| 《Spartoi｜P1_Q&A》 | 多 AI 協作主線 | absorbed | §5.2.3、§9.14 | CLOSED |
| 《Spartoi｜P1_Q&A》 | 教材蒐集→蒸餾→方法→回測→分析→XS→XQ→績效閉環 | absorbed | §8、§9、§10、§11 | CLOSED |
| 《Spartoi｜P1_Q&A》 | 台股歷史資料庫 | absorbed | §7.4、§9.6 | CLOSED |
| 《Spartoi｜P1_Q&A》 | XQ 全球贏家執行邊界 | absorbed | §11 | CLOSED |
| 《Spartoi｜P1_Q&A》 | 成功指標 / 最小可接受成功 | rewritten | §5.2.2、§5.6 | CLOSED |
| 《Spartoi｜P1_Q&A》 | QA/NLI / Schema Gate / Pass@k 輔助證據 | rewritten | §7.3.3、§9.3、§12 | CLOSED |
| 《Spartoi｜StRS+SyRS_v4.1.0》 | No-Source-No-Norm | absorbed | §2.2、§3.2、§12 | CLOSED |
| 《Spartoi｜StRS+SyRS_v4.1.0》 | Candidate-Threshold discipline | absorbed | §5.6.2、§12.3 | CLOSED |
| 《Spartoi｜StRS+SyRS_v4.1.0》 | No-API / WebTools-NA | absorbed | §5.2、§9.14 | CLOSED |
| 《Spartoi｜StRS+SyRS_v4.1.0》 | Python 3.13 / PowerShell 7 | absorbed | §6.3.1、§6.3.2 | CLOSED |
| 《Spartoi｜StRS+SyRS_v4.1.0》 | DuckDB/Parquet/本地 DB | absorbed | §6.3.3、§7.4、§9.6 | CLOSED |
| 《Spartoi｜StRS+SyRS_v4.1.0》 | Flet | rewritten | §6.3.4、§9.15 | CLOSED |
| 《Spartoi｜StRS+SyRS_v4.1.0》 | 台股大盤基線資料 | absorbed | §7.4.1 | CLOSED |
| 《Spartoi｜StRS+SyRS_v4.1.0》 | 四象限讀者區 | absorbed | §7.3.1、§9.3、§10.1 | CLOSED |
| 《Spartoi｜StRS+SyRS_v4.1.0》 | Job-Card / 對話卡格式 | absorbed | §7.3.1、§9.3、§9.14、§10.1 | CLOSED |
| 《Spartoi｜StRS+SyRS_v4.1.0》 | Evidence→Rules→Interface 收斂 | absorbed | §9.3、§9.4、§10.1 | CLOSED |
| 《Spartoi｜StRS+SyRS_v4.1.0》 | Hotplug 能力 / 最小可行集 / 事件鍵位 | absorbed and rewritten | §8.4、§12 | CLOSED |
| 《Spartoi系統21項需求》 | 單人 + 多 AI/LLM 協作 | absorbed | §5.2、§9.14 | CLOSED |
| 《Spartoi系統21項需求》 | 架構描述語言規則 | absorbed | §5.2.1 | CLOSED |
| 《Spartoi系統21項需求》 | Python 3.13 最重核心 | absorbed | §6.3.1 | CLOSED |
| 《Spartoi系統21項需求》 | PowerShell 7 最薄外殼 | absorbed | §6.3.2 | CLOSED |
| 《Spartoi系統21項需求》 | SEM³ / SQM-7 | absorbed | §7.3.3、§12 | CLOSED |
| 《Spartoi系統21項需求》 | 語意還原度 / Claim 雙錨 / 常數不入蒸餾 | absorbed | §9.3、§9.4、§12 | CLOSED |
| 《Spartoi系統21項需求》 | 15 個子系統全量展開 | absorbed | §8、§9 | CLOSED |
| 《Spartoi系統21項需求》 | 全功能/流程與 ICT 技術模組熱插拔四路徑 | absorbed and rewritten | §8.4、§10、§12 | CLOSED |
| 《Spartoi系統21項需求》 | 蒸餾四象限 / Job-Card / FunctionSpec | absorbed | §7.3.1、§9.3、§10.1 | CLOSED |
| 《Spartoi舊版需求總和》 | 高可信 / 基礎可信 來源分級 | absorbed | §7.3.1、§9.1 | CLOSED |
| 《Spartoi舊版需求總和》 | Hybrid retrieval | absorbed | §9.2 | CLOSED |
| 《Spartoi舊版需求總和》 | Claim 庫 / 證據鏈 / 語義報告 / 對齊矩陣 | absorbed | §7.3.1、§9.3 | CLOSED |
| 《Spartoi舊版需求總和》 | 四象限讀者區 | absorbed | §7.3.1、§9.3、§10.1 | CLOSED |
| 《Spartoi舊版需求總和》 | Evidence→Rules→Interface | absorbed | §9.3、§9.4、§10.1 | CLOSED |
| 《Spartoi舊版需求總和》 | Job-Card / EvidenceCards / FunctionSpec 鏈 | absorbed | §7.3.1、§9.3、§9.4 | CLOSED |
| 《Spartoi舊版需求總和》 | Desktop App / Flet / Windows / 回貼驗證 | rewritten | §6.3.4、§9.15 | CLOSED |
| 《Spartoi舊版需求總和》 | 熱插拔 / 全流程閉環 / 最小可行集 | absorbed and rewritten | §5.2、§8.4、§10、§12 | CLOSED |
| 《Spartoi舊版需求總和》 | XQ / XS / TVE / parity / 手動重演 | absorbed | §9.9、§11、§12 | CLOSED |
| 《Spartoi舊版需求總和》 | 固定鍵位 / 事件 / RTM | absorbed and rewritten | §7.3.3、§12 | CLOSED |
| 五份舊文檔共同項 | 需要 route-out 至 owner docs 的 schema / validator / HOW | route-out | §2、附錄 B | CLOSED |
| 五份舊文檔共同項 | 舊制度常數、舊 GUI 憲法、舊 blind flow、舊 reviewer | archived / traceability-only | §3.3、§4、§13 | CLOSED |

> closure rule：本附錄的 `CLOSED` 代表「在系統需求正文範圍內已完成工程性處置，且覆蓋度審查報告點名之 blocker 已在正文有實質落點」；不代表 release-level 驗收、schema 細節或實作細節已自動通過。


## 附錄 E：High-risk RTM crosswalk

| old_family | child_item | new_locator | disposition | closure_state |
|---|---|---|---|---|
| `REQ21` | 字面禁用詞規則 | §5.2.1 | rewritten with literal lint whitelist | CLOSED |
| `REQ21` | Python 3.13 最重核心 | §6.3.1 | absorbed | CLOSED |
| `REQ21` | PowerShell 7 最薄外殼 | §6.3.2 | absorbed | CLOSED |
| `REQ21` | No-LLM API / 手動貼上 / WebTools-NA | §5.2、§9.14 | rewritten with template/operation pack | CLOSED |
| `REQ21` | SEM³ / SQM-7 | §7.3.3、§12 | absorbed | CLOSED |
| `REQ21` | Desktop App / Flet / Windows / 回貼驗證 | §6.3.4、§9.15 | rewritten as conditional profile with state machine | CLOSED |
| `P1_Q&A` | 單人使用 / 多 AI 協作 | §5.2、§9.14 | absorbed | CLOSED |
| `P1_Q&A` | a~m 任務鏈 | §10.6、§11.3 | absorbed and expanded | CLOSED |
| `P1_Q&A` | 手動確認進場後自動操盤 | §11.3 | rewritten into choreography state machine | CLOSED |
| `P1_Q&A` | 台股歷史資料庫 | §7.4、§9.6 | absorbed | CLOSED |
| `P1_Q&A` | 成功指標 / 最小可接受成功 | §5.2.2、§5.6 | rewritten with threshold discipline | CLOSED |
| `StRS+SyRS` | No-Source-No-Norm | §2.2、§3.2、§12 | absorbed | CLOSED |
| `StRS+SyRS` | Candidate-Threshold discipline | §5.2.2、§12.5 | absorbed and formalized | CLOSED |
| `StRS+SyRS` | RTM complete tables | 附錄 E、附錄 D | rewritten as high-risk crosswalk for正文 scope | CLOSED |
| `StRS+SyRS` | 四象限讀者區 / Job-Card / Evidence→Rules→Interface | §7.3.1、§9.3、§9.4、§10.1 | absorbed | CLOSED |
| `OLDSUM` | P1→P4 文檔產出序列 | §10.7、附錄 F | absorbed and formalized | CLOSED |
| `OLDSUM` | DELIVER 交付總表 | §10.7、附錄 F | absorbed and formalized | CLOSED |
| `OLDSUM` | 子系統級小 P1 | §10.8、附錄 F | absorbed and formalized | CLOSED |
| `OLDSUM` | P0 歷史證據防污染 | §4.2、§7.5 | absorbed | CLOSED |
| `OLDSUM` | 雲地雙線 / No-API / 單人多 AI | §5.2、§6、§9.14 | absorbed | CLOSED |
| `UP-GATE` | 8 fixed template gates | §12.1、§12.2、§12.3 | absorbed from central | CLOSED |
| `UP-THRESHOLD` | threshold register states | §12.5、§12.6、§12.8 | absorbed from central | CLOSED |
| `UP-XQ` | XQ parity exact floor not privately legislated | §12.5、§11.6 | absorbed | CLOSED |
| `UP-XQ` | XQ sole endpoint / WATCH / EXECUTE | §11.1、§11.2、§11.3 | absorbed and expanded | CLOSED |
| `UP-UI` | UI Gate / GOVERN Gate alias resolution | §12.3 | absorbed | CLOSED |
| `UP-FLET` | 桌面 GUI 已降級出 MVP | §6.3.4、§9.15 | absorbed from central | CLOSED |

## 附錄 F：P1→P4 文檔產出序列、DELIVER 交付總表與子系統級小 P1

### F.1 P1→P4 最低順序

1. `README`：入口、路由、治理、安全。  
2. `SRS`：需求、驗收、Gate 字典入口。  
3. `ARCH`：拓撲、資料主幹、工件契約、15CA registry。  
4. `DELIVER`：交付總表、產出順序、phase 對位。  
5. `P2 Build / Run`：施工與最小可跑。  
6. `P2.5 WT-NA`：No-API 手動重演專線。  
7. `P3 Govern`：版本、索引、TT、manifest。  
8. `P4 Acceptance`：驗收、release guard、closure。  

### F.2 DELIVER 總表最低欄位

| field | meaning |
|---|---|
| `deliverable_id` | 交付主鍵 |
| `phase` | P1 / P2 / P2.5 / P3 / P4 |
| `order` | 交付順序 |
| `producer` | 生產者 |
| `consumer` | 消費者 |
| `owner` | owner doc / owner pack |
| `route_mode` | T0 / T1 / BOTH / N/A |
| `gate_alias` | 本地使用的 gate 名稱 |
| `template_gate_resolution` | 解析回模板 Gate 的結果 |
| `threshold_ref` | 允許引用的 threshold ref |
| `evidence_minset` | 最低證據組 |
| `closure_state` | CLOSED / TEMP_CLOSED / TT |

### F.3 子系統級小 P1 啟動摘要

| subsystem condition | action |
|---|---|
| scope 擴張且新增 external touchpoint | 開 mini P1 |
| 新增 owner contract / validator dependency | 開 mini P1 |
| 只修 wording / alias / typo | 不開 mini P1 |
| 新增桌面 profile、Windows packaging、No-API replay profile | 開 mini P1 |
| 新增 XQ 付費模組或執行能力主張 | 開 mini P1 + TT |

## 附錄 G：supporting refs alias / availability ledger

| requested_or_legacy_name | resolved_name_used_in_this_revision | availability | use_rule |
|---|---|---|---|
| `參考方案_合冊.md` | `參考方案合冊.md` | AVAILABLE | 可作第 7 順位設計與落地參照 |
| `Pipeline-B&C資料參考_合冊A/B` | `Pipeline-B&C資料參考_合冊.md` | AVAILABLE_AS_SINGLE_FILE | 以單一整合檔使用，不再拆 A/B |
| `Spartoi-OMOC_SubP1-LITE+MVP_CA-METHOD_MC4合冊` | 同名未於本回合實體提供 | ROUTE_OUT_ONLY | 不得當唯一裁決源 |
| `Spartoi-OMOC_SubP1-LITE+MVP_CA-BACKTEST_MC4合冊` | 同名未於本回合實體提供 | ROUTE_OUT_ONLY | 不得當唯一裁決源 |
| `Spartoi-OMOC_SubP1-LITE+MVP_CA-PERFORM_MC4合冊` | 同名未於本回合實體提供 | ROUTE_OUT_ONLY | 不得當唯一裁決源 |
| `回測作業面_升級方案.txt` | supporting reference via uploaded bundle naming | PARTIAL_ALIAS | 僅作補強，不得推翻前 1~7 |
| `績效分析作業面_升級方案.txt` | supporting reference via uploaded bundle naming | PARTIAL_ALIAS | 僅作補強，不得推翻前 1~7 |
| `桌面 GUI 唯一合法` | `controlled single entry + conditional desktop profile` | SUPERSEDED | 不得回流為現行硬規則 |
| `WT-NA 精靈作主施工介面` | `No-API 手動重演與協作支援制度` | REWRITTEN | 不得寫回主施工主線 |
