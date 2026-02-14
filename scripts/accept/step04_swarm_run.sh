#!/usr/bin/env bash
set -euo pipefail

ACC_UTC="${ACC_UTC:-$(date -u +%Y%m%dT%H%M%SZ)}"
STEP_ID="step-04"
ROOT="/workspaces/omoc-mvu-bridge-v3-greenfield"
ACC_DIR="${ROOT}/evidence/_acceptance/${ACC_UTC}/${STEP_ID}"
LOG_DIR="${ACC_DIR}/logs"
ART_DIR="${ACC_DIR}/artifacts"
mkdir -p "${LOG_DIR}" "${ART_DIR}"

have(){ command -v "$1" >/dev/null 2>&1; }

# Hard fail if opencode missing
if ! have opencode; then
  echo "FAIL_CLOSED: opencode missing in PATH" | tee "${ART_DIR}/precheck.txt"
  exit 2
fi

# Capture opencode basics
opencode --version | tee "${ART_DIR}/opencode_version.txt" >/dev/null
opencode run --help > "${ART_DIR}/opencode_run_help.txt" 2> "${LOG_DIR}/opencode_run_help.stderr.log" || true
opencode --help > "${ART_DIR}/opencode_help.txt" 2> "${LOG_DIR}/opencode_help.stderr.log" || true

# Detect YOLO delegation flag (do NOT assume)
YOLO_FLAG=""
if grep -q -- "--dangerously-skip-permissions" "${ART_DIR}/opencode_help.txt"; then
  YOLO_FLAG="--dangerously-skip-permissions"
elif grep -q -- "--yolo" "${ART_DIR}/opencode_help.txt"; then
  YOLO_FLAG="--yolo"
else
  # fallback to env-based yolo if supported by your config; still record UNVERIFIED
  YOLO_FLAG=""
fi

echo "YOLO_FLAG=${YOLO_FLAG:-UNVERIFIED}" | tee "${ART_DIR}/yolo_flag_detected.txt" >/dev/null

# Prepare acceptance script (local, no jq/python). PASS means: docker works + workflows exist.
cat > "${ROOT}/scripts/accept/step04_local_accept.sh" <<'ACCEPT'
#!/usr/bin/env bash
set -u
echo "UTC_NOW=$(date -u +%Y-%m-%dT%H:%M:%SZ)"
echo "PWD=$(pwd)"
echo "DOCKER=$(command -v docker >/dev/null 2>&1 && echo PRESENT || echo MISSING)"
if command -v docker >/dev/null 2>&1; then
  docker ps >/dev/null 2>&1 && echo "DOCKER_PS=PASS" || echo "DOCKER_PS=FAIL"
else
  echo "DOCKER_PS=FAIL"
fi
echo "WF_DOC_VALIDATE=$(test -f .github/workflows/doc-validate.yml && echo PRESENT || echo MISSING)"
echo "WF_OMOC_GATE=$(test -f .github/workflows/omoc-gate.yml && echo PRESENT || echo MISSING)"

# Fail-Closed criteria
ok="PASS"
command -v docker >/dev/null 2>&1 || ok="FAIL"
docker ps >/dev/null 2>&1 || ok="FAIL"
test -f .github/workflows/doc-validate.yml || ok="FAIL"
test -f .github/workflows/omoc-gate.yml || ok="FAIL"
echo "ACCEPT_VERDICT=${ok}"
ACCEPT
chmod +x "${ROOT}/scripts/accept/step04_local_accept.sh"

# Swarm prompt (4 roles + dynamic phases + max 3 fix loops)
read -r -d '' PROMPT <<'PROMPT'
你是 4 角色 Swarm，必須**強制輪替角色**輸出（每段第一行必須是：ROLE: <角色>）。
角色：
- Coordinator：拆解、排程、仲裁；禁止腦補；一切以 repo 內檔案為證。
- Evidence-Collector：建立可稽核跡證（diff、log、manifest、verdict、index）。
- Fixer：最小修改修補；不得擴張範圍；不得碰 secrets。
- Verifier：只負責跑驗收與判定 PASS/FAIL；FAIL 則回報原因與定位。

## Workflow（動態階段）
Phase 0（Coordinator）：
- 盤點目前缺什麼讓本地驗收 PASS（以 scripts/accept/step04_local_accept.sh 為唯一驗收準則）。
Phase 1（Evidence-Collector）：
- 建立 evidence 目錄（環境變數 ACC_DIR 已由外層提供），把所有命令輸出與 diff 落盤。
Phase 2（Fixer）：
- 以最小差異在 repo 內補齊：
  - .github/workflows/doc-validate.yml（最小可運作：checkout + 基本檔案存在性檢查）
  - .github/workflows/omoc-gate.yml（最小可運作：checkout + 跑 scripts/accept/step04_local_accept.sh）
- 不要引入新依賴；先把 check-run 名稱跑起來即可。
Phase 3（Verifier）：
- 跑：bash scripts/accept/step04_local_accept.sh
- 若 ACCEPT_VERDICT=PASS → 結束；否則回報缺口並進入 Phase 2（最多 3 輪）
Phase 4（Evidence-Collector + Coordinator）：
- 產出：
  - evidence_index.md（列出所有產物、用途）
  - checks_manifest.json（列出：docker_ps、wf_doc_validate、wf_omoc_gate、accept_verdict）
  - verdict.json（Fail-Closed：缺任何產物或驗收不通過即 FAIL_CLOSED）
- 最後列出「極限最小回傳跡證清單」（不得包含 secrets）。

## 必須執行並落盤的命令（每輪都要做）
- git status -sb
- git diff --name-only
- git diff（僅針對變更檔）
- bash scripts/accept/step04_local_accept.sh

限制：
- 禁止輸出/讀取 token、auth.json、.env 內容（只允許存在性/雜湊/遮罩）。
- 禁止長迴圈；修補最多 3 輪。
PROMPT

# Run opencode with timeouts; capture stdout/stderr
cd "${ROOT}"

# Always record a runner log
{
  echo "UTC_NOW=$(date -u +%Y-%m-%dT%H:%M:%SZ)"
  echo "ROOT=${ROOT}"
  echo "ACC_DIR=${ACC_DIR}"
  echo "CMD=opencode run --dir ${ROOT} --agent general ${YOLO_FLAG} ..."
} > "${ART_DIR}/runner_meta.txt"

# Apply env YOLO as fallback (UNVERIFIED if CLI flag missing)
export OPENCODE_YOLO="true"

# Execute (30 min cap)
timeout --preserve-status 1800 \
  opencode run --dir "${ROOT}" --agent "general" ${YOLO_FLAG} \
    --print-logs --log-level "INFO" \
    --title "Step-04 Swarm: workflows+local-accept iterative" \
    "${PROMPT}" \
  > "${LOG_DIR}/opencode_stdout.log" 2> "${LOG_DIR}/opencode_stderr.log" || true

# Post: create minimal bundle markers (some will be created by agent; we still ensure exist)
test -f "${ACC_DIR}/verdict.json" || echo '{"step_id":"step-04","verdict":"FAIL_CLOSED","reason":"missing_verdict.json"}' > "${ACC_DIR}/verdict.json"
test -f "${ACC_DIR}/checks_manifest.json" || echo '{"step_id":"step-04","checks":{},"note":"missing_checks_manifest.json"}' > "${ACC_DIR}/checks_manifest.json"
test -f "${ACC_DIR}/evidence_index.md" || printf "# evidence_index (step-04)\n- logs/opencode_stdout.log\n- logs/opencode_stderr.log\n" > "${ACC_DIR}/evidence_index.md"

echo "DONE: ${ACC_DIR}" | tee "${ACC_DIR}/_statusline.txt" >/dev/null
