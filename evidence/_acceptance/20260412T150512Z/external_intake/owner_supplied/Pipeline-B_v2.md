## **0\) 封面卡**

* **日期**：2026-02-09（已用近一年內公開資料交叉比對；含 2026-02-07 前後可用的 repo/套件狀態）  
* **任務摘要（≤120字）**：對齊你 SSOT（RUNBOOK/SRS/ARCH/LBP）對 CA-METHOD/BACKTEST/PERFORM 的「可驗收、可回溯、Fail-Closed」要求，選出最少改輪子、最快可用的 Pipeline-B 工程組合 v2，並判定與原設計差異度。  
* **一句話結論**：**可行且符合「最小改輪子、最接近原設計、快速可用」：關鍵在「輪子只當引擎」，SSOT 要求的 Gate/證據/回放/提案契約必須由你自己的薄封裝握住；差異度整體屬「中低」，但 CA-BACKTEST 的過擬合防線與 CA-PERFORM 的 Top-3 可驗證提案仍需你補最小自研層。**

---

## **1\) 需求對齊（你要的 vs SSOT硬約束）**

### **1.1 Pipeline-B（RUNBOOK）對三子系統的硬要求（可驗證）**

你給的《Spartoi｜SubP1-LITE+MVP 開發 RUNBOOK & WI\_v1.4.0》把 Pipeline-B 拆成：

* **B-Strategy：CA-METHOD → CA-BACKTEST**，產出 `StrategyPack/<id>/method_card.md`、`backtest_report.md`、`backtest_artifacts/`，並綁 Gate（`G-SRC`、`G-BT-H`）。  
* **B-Learn：POST-INGEST → CA-PERFORM → FEEDBACK**，產出 `FeedbackPack/<id>/performance_report.md`、`upgrade_proposal.md（只提案）`、`evidence_links.json`，且明確「FeedbackPack 不可直接改 method\_card 定案」。

同檔亦規定三子系統的 **verify\_min/stopline**：

* **CA-METHOD**：只負責「方法定案與 method\_card」，MSC 必填/一致性不過就 STOP。  
* **CA-BACKTEST**：要求 `BT-Repro（資料 hash 一致）`＋回測衛生（防前視/防洩漏/成本注入），不過就 STOP；勝率 \<40% 只能 `RADAR_ONLY`。  
* **CA-PERFORM**：必出 `perf_summary.json`，且 **Top-3 改動建議 \+ 每條建議的驗證方式**；不可追溯或與方法卡矛盾就 STOP/HITL。

你要「低人工高自動化」其實不是在拚指標計算，而是在拚：\*\*能不能被 Gate 機械驗收、能不能回放、能不能追溯。\*\*如果把 CA-PERFORM 當成「畫圖組」，你會把 Gate 玩成「永遠 Expected」的永動機——很環保，但很欠揍。

### **1.2 你要求的工程取向（你的話翻成工程語）**

* **不造輪子**：回測/報表用成熟輪子，但**輸出形狀必須服從 SSOT**（MethodCard/BacktestReport/PerfSummary/證據索引）。  
* **最小修改工程量**：能靠「薄封裝（adapter）」解決的，不碰輪子核心。  
* **接近原設計（不求100%）**：保留 Gate/Stopline/Fail-Closed/可回溯「設計原意」，允許替換引擎。

---

## **2\) 研究摘要（大數據比對：現成輪子怎麼選才不踩雷）**

原則：只挑「社群踩過、文件可查、維護跡象明確」的輪子；「看起來正統但相容性地獄」的列為備援，不當主線。

### **2.1 CA-BACKTEST（回測引擎）候選與結論**

**核心事實**：RUNBOOK 要的是「可回放與可驗收」，不是你用哪個回測宗教。

**主線（MVP最快、低門檻）**

* `backtesting.py`：API 直覺、上手快，適合把 method\_card 快速落地成可跑回測與輸出報告。([GitHub](https://github.com/kernc/backtesting.py))

**主線（更貼近交易流程、事件驅動）**

* `backtrader`：老牌事件驅動框架，教學/範例多；適合當沖/隔日沖那種「部位/撮合/成本」更像真實交易流程的回測語義。([GitHub](https://github.com/mementum/backtrader))

**支線（研究加速、參數掃描）**

* `vectorbt`：向量化與大量參數掃描很香，但也最容易「不小心偷看未來」；適合當候選生成，不適合直接當 Gate 定案引擎。([GitHub](https://github.com/polakowo/vectorbt))

**備援（較完整框架，但相容成本偏高）**

* `zipline-reloaded`：是 Zipline 的維護分支；可用，但你要對 Python/NumPy 相容性更敏感（特別是新版本堆疊）。([PyPI](https://pypi.org/project/zipline-reloaded/))

**你 SSOT 里「必須補」但回測輪子通常不幫你做的：過擬合防線**

* Deflated Sharpe Ratio / PBO / CSCV 是經典方法論來源（Bailey & López de Prado 相關論文）。([davidhbailey.com](https://www.davidhbailey.com/dhbpapers/deflated-sharpe.pdf))  
* 可直接用的較乾淨實作：`jsharpe` 對 Sharpe/檢定與 DSR 有明確對應。([GitHub](https://github.com/tschm/jsharpe))  
* PBO/CSCV 的 Python 開源輪子品質參差（例如 `pypbo` 看得出仍偏研究原型）。([GitHub](https://github.com/esvhd/pypbo))  
  **結論**：PBO/CSCV 你很難「完全不寫」，但可以把自研縮成 **小而可測的 analyzer 模組**（不是回測引擎重寫）。

---

### **2.2 CA-PERFORM（績效/風險報告）候選與結論**

你 RUNBOOK 對 CA-PERFORM 的殺手鐧不是指標，而是：**Top-3 建議 \+ 每條建議可驗證**。所以輪子只能解決「算與畫」，**提案契約**要你控。

* `quantstats`：快速出 tearsheet/報表，非常符合你「低人工」與 Track-A（計算/視覺化）定位。([GitHub](https://github.com/ranaroussi/quantstats))  
* `Riskfolio-Lib`：更進階風險度量/最佳化（你不一定 MVP 就要用，但當你要「風險分解不是憑感覺」時很有用）。([riskfolio-lib.readthedocs.io](https://riskfolio-lib.readthedocs.io/))  
* `pyfolio-reloaded / empyrical-reloaded`：當你走 zipline 生態才需要；主線不建議先背這包相容成本。([GitHub](https://github.com/stefan-jansen/pyfolio-reloaded))

---

### **2.3 CA-METHOD（方法產出與可回溯）候選與結論**

CA-METHOD 的本質是「可審計規格產生器」，不是回測框架。最佳解是：**模板產卡 \+ Schema 驗證 \+ 版本/差異可追**。

* `Copier`：用模板把 method\_card 的必填段落「鎖死」，避免人工漏欄位；且支援模板演進與專案更新。([GitHub](https://github.com/copier-org/copier))  
* `Pydantic`：用模型把 MSC 必填欄位與約束落成機械驗證（CI/本地皆可）。([GitHub](https://github.com/pydantic/pydantic/releases))

---

## **3\) 完整方案（可執行）：Pipeline-B 工程組合方案 v2（含替代路徑）**

### **3.1 架構與流程（把輪子放回正確位置）**

Pipeline-B / StrategyPack  
  SpecPack \+ MarketDataSlicePointer  
        |  
        v  
  CA-METHOD  \--\> method\_card.md (+ method\_card.json front-matter)  \[Gate: G-SRC\]  
        |  
        v  
  CA-BACKTEST \--\> backtest\_report.json \+ artifacts/ \+ reproducibility\_manifest.json \[Gate: G-BT-H\]  
        |  
        v  
  (optional) Overfit Analyzer \--\> pbo.json \+ dsr.json \+ cscv.json  \[Gate: G-BT-H addon\]

Pipeline-B / FeedbackPack  
  trades\_pointer \+ StrategyPack(version\_ref)  
        |  
        v  
  POST-INGEST \--\> normalized\_trades.parquet \+ evidence\_links.json  
        |  
        v  
  CA-PERFORM \--\> perf\_summary.json \+ performance\_report.md \+ top3\_proposals.json \[Gate: PERFORM-Gate\]  
        |  
        v  
  FEEDBACK \--\> upgrade\_proposal.md (proposal only, no auto-apply)

**關鍵設計：雙輸出（人看 \+ 機械驗）**

* 人看：`*.md/*.html`（quantstats 等輪子很擅長）  
* 機械驗：`*.json`（Gate/可回溯/可回放必需）

### **3.2 工具鏈選型（主推 \+ 替代 \+ 切換條件）**

#### **A) 建議主推（最少爆炸半徑，最符合你「快速可用平衡」）**

* **CA-METHOD**：Copier \+ Pydantic  
  * 生成：method\_card.md（可讀）+ method\_card.json（可驗，建議用 YAML front-matter 或獨立 JSON）  
  * 驗證：MSC 欄位齊全、跨欄位一致性（矛盾即 STOP）  
* **CA-BACKTEST**：`backtesting.py`（MVP）或 `backtrader`（事件語義）二選一  
  * MVP 先上 `backtesting.py`，等你真的需要更像撮合/部位流程再切 `backtrader`。([GitHub](https://github.com/kernc/backtesting.py))  
* **研究加速支線**：`vectorbt` 只做候選產生，不直接過 Gate。([GitHub](https://github.com/polakowo/vectorbt))  
* **CA-PERFORM**：`quantstats`（Track-A）+（選配）Riskfolio-Lib（進階風險）([GitHub](https://github.com/ranaroussi/quantstats))  
* **交易日曆（強烈建議必裝）**：`exchange_calendars`（你做台股/交易日切片，沒有日曆就是自找麻煩）。([GitHub](https://github.com/gerrymanoim/exchange_calendars/releases))  
* **台股資料（低人工但要尊重限制）**：FinMind（API與維護狀態明確；2026-02-08 有更新跡象）。([GitHub](https://github.com/topics/opendata))

#### **B) 替代路徑（更貼近「正統框架」但導入成本更高）**

* `zipline-reloaded + pyfolio/empyrical-reloaded`：你想要更完整 pipeline 語義再上；否則先別把相容性地獄背到 MVP。([PyPI](https://pypi.org/project/zipline-reloaded/))  
* （工業級）Lean：若你未來要研究/回測/執行一致性更強的工業化路線，但這已超出「低門檻最短工期」。 *(本回合未重新抓 Lean 來源，建議你若真要走此路線再做第二輪比選與 PoC)*

### **3.3 你 SSOT 要求 vs 本方案：差異點與差異度（重點對照表）**

| 子系統 | SSOT設計原意（你文件精神） | 本方案保留什麼 | 必須補的最小自研薄層 | 差異度 |
| ----- | ----- | ----- | ----- | ----- |
| CA-METHOD | 方法必須「卡片化、可審計、MSC可驗、矛盾即STOP」 | 用模板把欄位鎖死；用 schema 做 verify\_min | 一個 `method_validator`（跨欄位一致性） | **低** |
| CA-BACKTEST | 回測必須可重現（資料hash）、有衛生防線、Fail-Closed | 用成熟引擎跑；輸出固定報告契約；加入交易日曆 | `repro_manifest` \+ `hygiene_checks` \+ **PBO/DSR/CSCV analyzer** | **中** |
| CA-PERFORM | 不只是算指標；要「Top-3 可驗證提案」且可追溯至數據 | quantstats 做 Track-A；perf\_summary.json 做機械驗收 | `proposal_generator`（Top-3）+ `evidence_linker` | **中** |

**差異度是否高？**  
不高到需要推翻重做；但也不低到「裝個套件就收工」。你真正要寫的，會集中在 **3 個薄層**：

1. MethodCard 驗證器、2) Backtest 可重現/衛生/過擬合 analyzer、3) Perform 的 Top-3 可驗證提案器。  
   其它都應該是「用輪子」。

### **3.4 衡量指標 / 驗收門檻（可量測 \+ 失敗保護 \+ 回退）**

你要快，就別再做「人腦驗收」。Gate 用 JSON 直接鎖死。

* **G-SRC（CA-METHOD）**  
  * `method_card.md` 存在  
  * `method_card.json` 通過 schema（必填）  
  * 一致性檢查：禁忌/輸出/適用盤態/風控不自相矛盾（矛盾即 STOP）  
* **G-BT-H（CA-BACKTEST）**  
  * `reproducibility_manifest.json`：包含資料切片 hash、引擎版本、參數、日曆版本  
  * `hygiene_report.json`：前視/洩漏/成本注入檢查結果  
  * **過擬合防線**：至少 DSR（可用 `jsharpe`）([GitHub](https://github.com/tschm/jsharpe))；PBO/CSCV 依需要逐步補齊（參考論文定義）([davidhbailey.com](https://www.davidhbailey.com/dhbpapers/backtest-prob.pdf))  
* **PERFORM-Gate（CA-PERFORM）**  
  * `perf_summary.json` 存在且字段齊全  
  * `top3_proposals.json`：3 條建議，每條都有  
    * 影響指標（引用 perf\_summary 指標 key）  
    * 證據指標來源（evidence\_links.json 指向的切片/交易紀錄）  
    * 可復驗命令（duckdb SQL 或腳本入口）

---

## **4\) 風險與對策（偵測→緩解→備援）**

### **4.1 技術風險**

* **相容性地獄（zipline 系）**  
  * 偵測：CI/本地環境解依賴失敗或 NumPy/Python 版本衝突  
  * 緩解：主線先用 backtesting.py/backtrader；zipline 只當備援  
  * 備援：完全不引入 zipline 生態，保留輸出契約一致即可  
* **向量化偷看未來（vectorbt 類）**  
  * 偵測：時間切片一致性測試（截斷點回測不該出現不合理跳躍）  
  * 緩解：vectorbt 僅做候選生成；定案回測用事件驅動/保守引擎  
  * 備援：關閉 vectorbt 支線

### **4.2 資料風險**

* **資料源速率限制/缺漏（台股資料常見）**  
  * 偵測：抓取記錄 response code、剩餘配額、缺值比率  
  * 緩解：落地快照 \+ hash；回測只吃快照  
  * 備援：切換資料源或改用自建切片倉

### **4.3 規範/治理風險**

* **「提案」被誤當「自動改策略」**  
  * 偵測：CI 掃描「直接改 method\_card」的變更與關鍵字  
  * 緩解：FeedbackPack 嚴格只輸出 upgrade\_proposal，不 auto-apply  
  * 備援：強制 HITL

### **4.4 單人營運風險**

* **你最大風險不是寫不出來，是寫出來沒人能驗**  
  * 偵測：沒有 evidence\_links / manifest / run ledger  
  * 緩解：每次跑都固定輸出 `run_id/` \+ JSON 產物 \+ 版本資訊  
  * 備援：Fail-Closed，不產生「看起來成功」的報告

---

## **5\) 來源索引（≥8，高品質；支撐本方案的關鍵輪子/方法論）**

1. backtesting.py（GitHub）([GitHub](https://github.com/kernc/backtesting.py))（CA-BACKTEST 主線 MVP）  
2. backtrader（GitHub）([GitHub](https://github.com/mementum/backtrader))（CA-BACKTEST 事件驅動主線）  
3. vectorbt（GitHub）([GitHub](https://github.com/polakowo/vectorbt))（研究加速支線）  
4. quantstats（GitHub）([GitHub](https://github.com/ranaroussi/quantstats))（CA-PERFORM Track-A 報表）  
5. Riskfolio-Lib（Docs/GitHub/conda-forge 更新）([riskfolio-lib.readthedocs.io](https://riskfolio-lib.readthedocs.io/))（進階風險/最佳化）  
6. Pydantic releases/changelog（結構化驗證）([GitHub](https://github.com/pydantic/pydantic/releases))（CA-METHOD 機械驗收）  
7. Copier（模板/專案腳手架）([GitHub](https://github.com/copier-org/copier))（CA-METHOD 產卡）  
8. The Deflated Sharpe Ratio（Bailey & López de Prado）([davidhbailey.com](https://www.davidhbailey.com/dhbpapers/deflated-sharpe.pdf))（過擬合防線理論）  
9. The Probability of Backtest Overfitting \+ CSCV（Bailey & López de Prado）([davidhbailey.com](https://www.davidhbailey.com/dhbpapers/backtest-prob.pdf))（PBO/CSCV）  
10. jsharpe（DSR/Sharpe 統計檢定實作）([GitHub](https://github.com/tschm/jsharpe))（減少自研成本）  
11. exchange\_calendars（交易日曆）([GitHub](https://github.com/gerrymanoim/exchange_calendars/releases))（交易日切片/回放一致性）  
12. FinMind（台股資料源與近況）([GitHub](https://github.com/topics/opendata))（資料取得可用性）

---

## **6\) 附錄：你可以立刻在 Codespaces 用來「鎖死」證據的命令**

由於本回合檔案檢索工具回傳錯誤（無法產生可點擊段落引用），我改用「檔案路徑 \+ 行號」提供可重現核對；你貼回輸出即可做最終裁決。

### **6.1 核對 RUNBOOK 的 Pipeline-B/Gate/Stopline（你自己一跑就知道我有沒有亂講）**

\# Pipeline-B 定義與 outputs/gate\_binding（約 1715\~1820 行附近）  
sed \-n '1700,1840p' "/mnt/data/Spartoi｜SubP1-LITE+MVP 開發 RUNBOOK & WI\_v1.4.0.md"

\# CA-METHOD / CA-BACKTEST / CA-PERFORM 的 verify\_min / stopline（約 3671\~4010 行附近）  
sed \-n '3660,3770p' "/mnt/data/Spartoi｜SubP1-LITE+MVP 開發 RUNBOOK & WI\_v1.4.0.md"  
sed \-n '3940,4045p' "/mnt/data/Spartoi｜SubP1-LITE+MVP 開發 RUNBOOK & WI\_v1.4.0.md"

### **6.2 你問的「是否符合最小改輪子、快速可用平衡」——我的可驗標準**

你只要能做到以下三件事，就等於達成你要的平衡（而且不需要重寫任何回測/報表輪子）：

1. **輸出契約固定**（MethodCard/BacktestReport/PerfSummary/Top-3 proposals 全都有 JSON 版）  
2. **可重現**（資料切片 hash \+ 引擎版本 \+ 參數 \+ 日曆版本）  
3. **Fail-Closed**（缺欄位/矛盾/不可追溯 → STOP，不產生假報告）

---

### **你要的最終裁決（直球）**

* **是的，你目前的方案方向符合**「最小改輪子、接近原設計、不求100%但快速可用」：因為它把輪子限制在 *engine*，把 SSOT 的 *contract/gate/evidence* 牢牢握在你自己的薄層。  
* **更符合需求的其他方案**只有一種情況才值得：你願意接受更高導入成本去換更完整的一體化研究/回測/執行一致性（例如 Lean/Zipline 路線）。在你明確要求「低門檻、低人工」的前提下，這通常是「把短工期換成長篇史詩」——你確定要這麼浪漫嗎？

