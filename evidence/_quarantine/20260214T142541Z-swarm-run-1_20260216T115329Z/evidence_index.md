# Evidence Index

此資料夾包含本次 Swarm 執行產生之可稽核檔案，路徑：`evidence/_acceptance/20260214T142541Z-swarm-run-1`

- `git_status_before.txt`：執行修補前 `git status -sb` 的輸出。
- `git_diff_before.patch`：修補前對比補丁（僅變更檔）。
- `accept_before.txt`：修補前執行 `scripts/accept/step04_local_accept.sh` 的結果。
- `git_status_after.txt`：修補後 `git status -sb` 的輸出。
- `git_diff_after.patch`：修補後對比補丁（若無變更，檔案留空）。
- `accept_after.txt`：修補後執行 `scripts/accept/step04_local_accept.sh` 的結果（包含 PASS/FAIL）。
- `git_diff_names_before.txt`、`git_diff_names_after.txt`：變更檔名清單（前/後）。
- `git_branch.txt`、`git_branch_after.txt`：分支名稱快照。
- `ls_acc_dir.txt`：紀錄 ACC_DIR 列表內容。
- `checks_manifest.json`：機械可讀的檢查摘要（docker, workflows, accept_verdict）。
- `verdict.json`：最終驗收判定（Fail-Closed 規則）。

用途說明：供稽核、CI gate 診斷與追蹤，避免直接回傳工作目錄或秘密。
