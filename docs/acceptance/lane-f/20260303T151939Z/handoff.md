# Lane-F PASS 推送 Handoff（不版本化 evidence 樹）

## 📋 權威來源（唯一認證）
- **Primary**: `evidence/_acceptance/20260303T151939Z/lane_f_total/acceptance_report.json` (verdict: **PASS**, blockers: **[]**)
- **Copy for Review**: `docs/acceptance/lane-f/20260303T151939Z/acceptance_report.copy.json`

## ❓ 為什麼此PR不包含 `evidence/_acceptance/`？

### 1. **Repo政策觀察**
- `.gitignore` 第2行明確忽略: `evidence/_acceptance/`
- 註釋: "# OMOC-MVU: evidence should be generated, not versioned"
- **含義**: 證據應被生成，不應被版本化

### 2. **安全態勢**
- runpack設定: `do_not_upload_guard: true`
- **含義**: 除非明確授權，否則避免推送原始證據bundle

### 3. **可稽核交付方式**
- **推薦**: 使用 **PR + merge queue + CI workflow artifacts** 保留證據
- omoc-gate 工作流會自動打包證據為 `evidence_bundle.tgz`
- GitHub Actions artifact 自動保存（可供後續稽核）

---

## ✅ 本地驗證（一次指令）

```bash
cd /workspaces/omoc-mvu-bridge-v3-greenfield
cat evidence/_acceptance/20260303T151939Z/lane_f_total/acceptance_report.json | jq .
```

預期輸出:
```json
{
  "verdict": "PASS",
  "blockers": [],
  "gates": { "G0": "PASS", "G1": "PASS", "G2": "PASS", "G3": "PASS" }
}
```

---

## 📦 CI預期檢查

當此PR開啟時，下列檢查會自動運行:

| 檢查名 | 責任 | 預期結果 |
|--------|------|---------|
| `omoc / ci-gate` | gitleaks + doc-hygiene + bundle packing | ✅ PASS |
| `doc-validate` | 文件格式驗證 | ✅ PASS |

### `omoc / ci-gate` 詳細步驟:
1. 掃描祕密 (gitleaks) — 預期: **0 hits**
2. 檢查文件衛生 — 預期: **0 issues**
3. 掃描廢棄代碼 — 預期: **0 items**
4. **打包證據 bundle** → 產出 `evidence_bundle.tgz`
5. 生成 `bundle_audit.json` (result: PASS)

---

## 📥 如何取得 CI Artifacts（證據Bundle）

### 方式1: GitHub UI（推薦）
1. 打開此PR的 **Checks** 標籤頁
2. 展開 **omoc / ci-gate** workflow run
3. 捲至底部 **Artifacts** 區段
4. 下載 `evidence_bundle.tgz` 或相關report

### 方式2: GitHub CLI（快速）
```bash
gh run list --workflow omoc-gate.yml --branch evidence/lane-f-handoff-20260303T151939Z
gh run download <RUN_ID> --name evidence_bundle.tgz
tar -xzf evidence_bundle.tgz
cat verdict.json
```

---

## 🚀 推送指南

### 政策合規性：
- ✅ **不包含** `evidence/_acceptance/` (符合 .gitignore)
- ✅ **不direct push main** (使用PR + merge queue)
- ✅ **未上傳敏感證據** (安全合規)
- ✅ **保留完整審計追蹤** (CI artifacts)

### 分支命名:
- 分支: `evidence/lane-f-handoff-20260303T151939Z`
- 符合 repo 既有模式 (`evidence-*` 前綴 + ISO timestamp)

### 提交訊息:
```
docs(acceptance): promote Lane-F PASS handoff (ts=20260303T151939Z)
```
- 類型: `docs` (符合repo慣例)
- 範圍: `acceptance`
- 訊息簡潔，包含timestamp識別

### 合併策略:
- **勿** direct push → main
- **必須** 使用 PR + merge queue
- 所有自動檢查通過後，由repo維護者 merge

---

## 📍 Lane-F 下游流程（WP-009施工）

此 handoff 標記 Lane-F 為 **READY FOR PROMOTION**。下游工作:

| 流程 | 狀態 | 說明 |
|------|------|------|
| WP-001~008 runbook discovery | ✅ PASS | G0 gate verified |
| CI workflow presence | ✅ PASS | G1 gate verified |
| Secrets scan (0-hit baseline) | ✅ PASS | G2 gate verified |
| Baseline SHA resolution | ✅ PASS | G3 gate verified |
| **Promotion to WP-009** | ⏳ PENDING | Awaiting merge |

---

## 🔐 Authority & Compliance

- **Verdict Authority**: acceptance_report.json (SSOT)
- **Policy Citations**:
  - KPC::01_KPC_AUTHORITY_CONFLICT.md#kpc-0131-hr-acceptance-report
  - KPC::02_KPC_KNOWLEDGE_LIBRARY_POLICY.md#kpc-0211-do-not-upload
- **Generated**: 2026-03-03T16:00:00Z
- **Lane**: Lane-F (MSB-LF retest)
