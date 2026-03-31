# HOW (extracted)


| field | value |
| ----- | ----- |
| external\_name | OMOC\_RIP-A：Agent Engine RIP（施工者/驗收官引擎） |
| internal\_short\_name | OMOC-RIP-A |
| version | v1.1.0 |
| generated\_at | 2026-02-21 (Asia/Taipei, UTC+08:00) |
| supersedes | v1.0.0 |
| overall\_verdict | **TEMP\_CLOSED**（Fail-Closed：需環境實跑證據才能轉 PASS） |
| one\_line\_conclusion | 「文件不再允許造假證據；但你還是得真的跑一次，才有資格說 PASS。」 |


---


| field | value |
| ----- | ----- |
| doc\_id | OMOC\_RIP-A |
| authority\_stack\_policy | Files-first / No-Source-No-Norm / SUPPORT-only / Fail-Closed |
| aligned\_wps\_hard | WP-007 / WP-010 / WP-011 |
| aligned\_wps\_route\_out | WP-008 / WP-012 / WP-013 / WP-014 |
| forbidden | token/secret 泄漏；任何示例一律 REDACTED |
| CR\_OPEN | 0 |
| status | READY（文件層） / TEMP\_CLOSED（環境證據層） |


---


| keyword | anchor | primary\_artifact |
| ----- | ----- | ----- |
| pr-only | \#omoc-rip-a-1500 | policy/omoc\_agent\_policy.yml |
| required checks / checks\_manifest | \#omoc-rip-a-1100 | scripts/omoc\_collect\_checks\_manifest.sh |
| always-report / merge\_group | \#omoc-rip-a-1200 | .github/workflows/omoc-gate.yml |
| evidence minset / bundle audit | \#omoc-rip-a-1100 | scripts/omoc\_pack\_evidence.sh |
| secrets\_scan=0 | \#omoc-rip-a-1100 | scripts/omoc\_secrets\_scan.sh |
| doc hygiene scan | \#omoc-rip-a-1100 | scripts/omoc\_doc\_hygiene\_scan.sh |
| superseded scan | \#omoc-rip-a-1100 | scripts/omoc\_superseded\_scan.sh |
| drift\_report / tt\_export | \#omoc-rip-a-1100 | scripts/omoc\_drift\_report.sh \+ scripts/omoc\_tt\_export.sh |
| pinned actions report | \#omoc-rip-a-1100 | scripts/omoc\_pinned\_actions\_report.sh |
| installer | \#omoc-rip-a-1200 | scripts/omoc\_install\_rip\_a.sh |


---


| section | anchor\_tag | html\_id |
| ----- | ----- | ----- |
| Cover | OMOC-RIP-A-0100 | omoc-rip-a-0100 |
| DocControl | O-rip-a-0200 |  |
| Diátaxis | OMOC-RIP-A-0300 | omoc-rip-a-0300 |
| TOC | OMOC-RIP-A-0400 | omoc-rip-a-0400 |
| QuickIndex | OMOC-RIP-A-0500 | omoc-rip-a-0500 |
| AnchorRegistry | OMOC-RIP-A-0600 | omoc-rip-a-0600 |
| Authority | OMOC-RIP-A-0700 | omoc-rip-a-0700 |
| Scope | OMOC-RIP-A-0800 | omoc-rip-a-0800 |
| Requirements | OMOC-RIP-A-0900 | omoc-rip-a-0900 |
| Architecture | OMOC-RIP-A-1000 | omoc-rip-a-1000 |
| ArtifactsContract | OMOC-RIP-A-1100 | omoc-rip-a-1100 |
| RepoArtifacts | OMOC-RIP-A-1200 | omoc-rip-a-1200 |
| Runbook | OMOC-RIP-A-1300 | omoc-rip-a-1300 |
| WI | OMOC-RIP-A-1400 | omoc-rip-a-1400 |
| Gates | OMOC-RIP-A-1500 | omoc-rip-a-1500 |
| Traceability | OMOC-RIP-A-1600 | omoc-rip-a-1600 |
| FindingsClosure | OMOC-RIP-A-1700 | omoc-rip-a-1700 |
| TTRegister | OMOC-RIP-A-1800 | omoc-rip-a-1800 |
| WebEvidence | OMOC-RIP-A-1900 | omoc-rip-a-1900 |
| ChangeLog | OMOC-RIP-A-2000 | omoc-rip-a-2000 |
| MachineSummary | OMOC-RIP-A-2100 | omoc-rip-a-2100 |


---


| req\_id | requirement | ssot\_locator (min) | rip\_a\_locator | DoD / acceptance |
| ----- | ----- | ----- | ----- | ----- |
| RIP-A-推） | RBWI Guardrails / Fail-Closed | L.policy | Gate: PR-only scan=0；命中即 FAIL\_CLOSED |  |
| RIP-A-REQ-002 | Evidence Minset（含硬件套） | WP-008 hard items | K.1/K.2 | verdict+checks\_manifest+evidence\_index+bundle+bundle\_audit+secrets\_scan=0 |
| RIP-A-REQ-003 | check0 spec | K.3 | expected/observed/diff/verdict/tt 齊備；expected 不可空（不可得→TEMP\_CLOSED+TT） |  |
| RIP-A-REQ-004 | Always-Report011 spec | L.workflow | 同名 required check 必回報；終結聚合 job 不可 skip |  |
| RIP-A-REQ-005 | merge\_group 觸發對齊 | WP-012/013 rkflow | merge\_group 事件存在；Mode A 能產 run\_proof（否則 TEMP\_CLOSED+TT） |  |
| RIP-A-REQ-006 | Secrets 禁入 \+ secretslls DoD | K.2 | secrets\_scan.log hits=0；forbidden\_patterns=0 |  |
| RIP-A-REQ-007 | Doc Hygiene 汙染=e | K.2 | scan hits=0；命中即 FAIL\_CLOSED |  |
| RIP-A-REQ-008 | Drift/Closure 三件套 | WP-014 | K.4 rift\_report 具欄位；tt\_export 可機器讀 |  |
| RIP-A-REQ-009 | skills validator/packager 強制 gateor | L.workflow \+ scripts | validate\_contracts rc==0 才能 PASS；否則 FAIL\_CLOSED |  |
| RIP-A-REQ-010 | high-risk require\_ guardrails \+ security notes | L.policy | 高風險動作需 ack；audit log 路徑存在 |  |
| RIP-A-REQ-011 | supply-chain minset（pinning+scan） | 總體方案 RIP-F 要求落點 | L.workflow \+ scripts | pinned\_actions\_report 可生成；zizmor/scorecard 以 required checks 固化 |
| RIP-A-REQ-012 | insentory） | 總體方案「RIP-Installer」 | L.installer | 重跑產新 TS evidence；可回滾（刪除落地檔） |


---


| req\_id | ssot\_locator | rip\_a\_locator | artifacts\[\] | evidence\[\] | closure\_rule | tt\_id |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| RIP-A-REQ-001 | RBWI Guardrails | L.policy | policy/omoc\_agent\_policy.yml | superseded\_scan.txt | GATE-PR-ONLY | TT-RIPA-001 |
| RIP-A-REQ-002 | WP-008 hard items | ts/omoc\_pack\_evidence.sh (skeleton via workflow) \+ bundle\_audit.json | verdict.json, evidence\_bundle.tgz | GATE-EVIDENCE-MINSET | TTQ-003 | WP-010 checks\_manifest |
| RIP-A-REQ-004 | WP-011 Always | L.workflow | .github/workflows/omoc-gate.yml | Actions logs \+ terminator proof | GATE-ALWAYS-REPORT | TT-RIPA-004 |
| RIP-A-REQ-006 | WP-008 \+ skills DoD | L.scan | scripts/omoc\_secrets\_scan.sh | secrets\_scan.log | hits=0 | TT-RIPA-006 |
| RIP-A-REQ-007 | WP-008 hygiene pan.sh | doc\_hygiene\_scan.txt | hits=0 | TT-RIPA-DOC-001 |  |  |
| RIP-A-REQ-008 | WP-014 drift/closure ripts/omoc\_drift\_report.sh \+ scripts/omoc\_tt\_export.sh | drift\_report.md \+ tt\_export.json | 三件套可生成 | TT-RIPA-DRIFT-001 |  |  |


---


| legacy\_section (v1.0.0) | status\_in\_v1.1.0 | locator |
| ----- | ----- | ----- |
| Cover Card / Doc Control | COVERED（強化） | A/B |
| Diátaxis / Anchor Registry | COVEy \+ repo-local TOC） | C/D/F |
| Authority / Scope | COVERED（加 Route-out 強制） | G/H |
| Requirements | COVERED（固定 schema \+ ≥10 子項） | I/P |
| Architecture | COVERED（加 require\_ack \+ audit） | J/L.policy |
| Artifacts / Workflows / Scripts | COVERED（移除 stub 造檔；新增 gate scripts） | K/L |
| Runbook / WI | COVERED（補「可重跑」與證據定位） | M/N |
| Gates / Traceability / TT / Web Evidence | COVERED（補 drift/tt\_export；CR\_OPEN=0） | O/P/R/S |
| Change Log / Machine Summary | COVERED（重寫且去污染） | T/U |


---


| finding\_id | claim (short) | patch\_landing | acceptance / retest | status |
| ----- | ----- | ----- | ----- | ----- |
| F-C-001 | WSP\_SCOPE\_MISSING | R.TT | 補齊 WSP v0 正文後再裁決 |  |
| F-E-001 | workflow stub/造檔 | L.2/L.12 \+ validator gate | validator 拒絕空檔；CI 需實跑證據（TT-RIPA-001） | TEMP\_CLOSED |
| F-D-001 | 缺 bundle\_audit+secrets\_scan=0 | L.2/L.4/L.12 | 產出 bundle\_audit.json \+ secrets\_scan.log hits=0 | PASS（文件層）/TEMP\_CLOSED（實跑層） |
| F-F-001 | doc hygiene 汙染 | L.5 | doc\_hygiene\_scan hits=0；插入污染應 FAIL\_CLOSED | PASS（文件層） |
| F-A-001 | merge\_group 回報缺口 | L.12 (merge\_group \+ terminator) | WP-012 Mode A MQ probe（TT-RIPA-004） | TEMP\_CLOSED |
| F-A-002 | evidence 可造假 | L.2 \+ validator | 空檔/echo 直接 FAIL\_CLOSED | PASS（文件層） |
| F-A-003 | secrets 防線未落地 | L.4 | secrets\_scan hits=0；反例測 FAIL\_CLOSED | PASS（文件層） |
| F-B-001 | drift 欄位不機械 | L.7/L.8 | drift\_report/tt\_export 可生成且可回放 | PASS（文件層） |
| F-B-003 | superseded\_scan gate 缺失 | L.6 | superseded\_scan hits=0；命中即 FAIL\_CLOSED | PASS（文件層） |
| F-F-002 | confused deputy require\_ack 缺失 | L.10 | high\_risk\_require\_ack \+ audit\_log path 存在 | PASS（文件層） |
| F-F-003 | pinning 稽核證據缺失 | L.9 | pinned\_actions\_report 可生成 | PASS（文件層） |
| F-C-003 | traceability 表格不穩 | P.1 固定 schema | parser 可讀（欄位齊全） | PASS |


---


| claim\_id | claim | sources (\>=2) | published\_at (if known) | accessed\_at | drift\_action | conflict\_flag |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| WEB-001 | merg觸發 workflows 才能回報 required checks | GitHub Docs merge queue ([GitHub Docs](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/configuring-pull-request-merges/managing-a-merge-queue)) ; GitHub Docs troubleshooting required status checks ([GitHub Docs](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/collaborating-on-repositories-with-code-quality-features/troubleshooting-required-status-checks)) | n/a | 2026-02-21T00:00:00+08:00 | NEEDS-TEST | NONE |
| WEB-002 | OpenHands 提供 GitHub Action/SDK 可作施工引擎候選 | OpenHands GitHub Action repo ([GitHub](https://github.com/All-Hands-AI/openhands-github-action)) ; OpenHands Action docs ([OpenHands Docs](https://allhandsai.mintlify.app/openhands/usage/run-openhands/github-action)) | 2025-12-22 (repo page) ([GitHub](https://github.com/All-Hands-AI/openhands-github-action)) | 2026-02-21T00:00:00+08:00 | NEEDS-TEST | NONE |
| WEB-003 | SWE-agent 支援用 \--actions.open\_pr 於 GitHub issue 解決後自動開 PR | SWE-agent tutorial ([GitHub](https://github.com/SWE-agent/SWE-agent/blob/main/docs/usage/cl_tutorial.md)) ; SWE-agent hello world docs ([Swe Agent](https://swe-agent.com/latest/usage/hello_world/)) | n/a | 2026-02-21T00:00:00+08:00 | NEEDS-TEST | NONE |
| WEB-004 | PR-Agent 可作 reviewer engine（Action/App 安裝與配置） | Qodo docs install ([Qodo Merge](https://qodo-merge-docs.qodo.ai/installation/github/)) ; PR-Agent repo 概述 ([GitHub](https://github.com/qodo-ai/pr-agent)) | n/a | 2026-02-21T00:00:00+08:00 | NEEDS-TEST | NONE |
| WEB-005 | zizmor 是 GitHub Actions 靜態安全分析工具（供應鏈硬化落點） | zizmor repo ([GitHub](https://github.com/zizmorcore/zizmor)) ; zizmor-action repo ([GitHub](https://github.com/zizmorcore/zizmor-action)) | n/a | 2026-02-21T00:00:00+08:00 | NEEDS-TEST | NONE |
| WEB-006 | OpenSSF Scorecard Action 可作 repo 安全健康度掃描 | scorecard-action repo ([GitHub](https://github.com/ossf/scorecard-action)) ; scorecard-action releases ([GitHub](https://github.com/ossf/scorecard-action/releases)) | 2025-09-30 (release example) ([GitHub](https://github.com/ossf/scorecard-action/releases)) | 2026-02-21T00:00:00+08:00 | NEEDS-TEST | NONE |
| WEB-007 | pinact 可用於釘定 actions 版本（pin to SHA） | pinact repo ([GitHub](https://github.com/suzuki-shunsuke/pinact)) ; GitHub secure use reference（第三方 actions 風險）([GitHub Docs](https://docs.github.com/en/actions/reference/security/secure-use)) | n/a | 2026-02-21T00:00:00+08:00 | NEEDS-TEST | NONE |

