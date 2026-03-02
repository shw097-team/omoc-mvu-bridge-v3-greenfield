#!/usr/bin/env bash
set -euo pipefail

MODE="${1:-}"
CFG=".opencode/opencode.jsonc"
BACKUP=".opencode/opencode.jsonc.bak"

if [ ! -f "${CFG}" ]; then
  echo "FAIL: ${CFG} missing"
  exit 2
fi

cp -f "${CFG}" "${BACKUP}"

case "${MODE}" in
  off)
    # 移除 plugin 陣列中的 oh-my-opencode
    # 最小依賴：用 sed（JSONC 只要遵守你檔案格式；建議保持 plugin 一行一個條目）
    sed -i.bak 's/"oh-my-opencode@3.5.4"//g' "${CFG}"
    sed -i.bak 's/,\s*,/,/g' "${CFG}"
    echo "OK: oh-my-opencode disabled (backup at ${BACKUP})"
    ;;
  on)
    # 若沒有就補回（簡化：假設 plugin 陣列存在）
    if ! rg -q 'oh-my-opencode@3\.5\.4' "${CFG}"; then
      perl -0777 -pe 's/"plugin"\s*:\s*\[\s*/"plugin": [\n    "oh-my-opencode@3.5.4",\n    /' -i "${CFG}"
    fi
    echo "OK: oh-my-opencode enabled (backup at ${BACKUP})"
    ;;
  *)
    echo "Usage: $0 {on|off}"
    exit 1
    ;;
esac