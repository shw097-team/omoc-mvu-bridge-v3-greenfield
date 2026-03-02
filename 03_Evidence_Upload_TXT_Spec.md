\---  
doc\_id: 03\_Evidence\_Upload\_TXT\_Spec  
external\_name: "OMOC｜實作驗收加速器（Orchestrator）\_03\_Evidence\_Upload\_TXT\_Spec"  
internal\_short\_name: "OMOC-EVID-TXT-SPEC"  
version: "v4.1.0-r1+orchestrator.bp2"  
generated\_at: "2026-02-26T00:00:00+08:00"  
timezone: "Asia/Taipei (UTC+08:00)"  
baseline\_web\_date: "2026-02-25"  
mode: "Files-first (Local Pack=SSOT) \+ WTNA (Web=SUPPORT-only driftable) \+ Fail-Closed"  
compatibility\_targets:  
  \- "GPT Builder Knowledge upload (≤20 files; Files-first)"  
  \- "Chat UI copy/paste (single TXT per turn)"  
  \- "CI evidence bundle (artifact hashes \+ optional attestations)"  
  \- "OMOC-MVU Lane-F (bash-first)"  
  \- "Spartoi SubP1 Lane-P (interop; TT wiring)"  
hard\_rules:  
  \- "Single TXT per turn: WP-00X\_evidence\_upload.txt"  
  \- "Fail-Closed verdict semantics: PASS | TEMP\_CLOSED | FAIL\_CLOSED"  
  \- "No-Source-No-Norm: any MUST/不得/裁決門檻需帶 ssot\_doc+ssot\_locator+excerpt\_le\_25；缺任一→UNVERIFIED→TT→TEMP\_CLOSED"  
  \- "Tool Router: bash | github\_ui | opencode 三選一；同回合不得混用（除非 SSOT 明確允許）"  
  \- "Secrets/PII forbidden: 疑似外洩→至少 TEMP\_CLOSED；確定命中→FAIL\_CLOSED；永不索取原始 secrets"  
  \- "Evidence Lint Gate 前移：EVIDENCE\_UPLOADED 先 lint；不過=STOP-BLOCKER（只允許補證據或開 TT）"  
  \- "Web SUPPORT-only: 每個 support\_fact 需 web\_refs\>=2 且預設需跨網域；衝突=WEB\_CONFLICT→QUARANTINE→TT"  
  \- "Integrity: body\_sha256(不含 FOOTER) \+ artifact sha256；可重算步驟必寫"  
\---

\# \*\*OMOC｜實作驗收加速器（Orchestrator）\_03\_Evidence\_Upload\_TXT\_Spec\*\*  
\[ANCHOR:OMOC-EVID-03-TOP\]

\> 你可以把這份規格當成「裁決口徑的唯一入口」：沒有它，你不是在驗收，而是在寫回憶錄。

\---

\#\# \*\*0) TOC\*\*  
\[ANCHOR:OMOC-EVID-03-TOC\]

1\. Purpose / Scope / Non-goals    
2\. Naming / Location Conventions    
3\. Size, Noise, Log Policy（噪音治理）    
4\. TXT Structural Grammar（可機械驗證語法）    
5\. Block Definitions（10 blocks \+ Footer）    
6\. Evidence Minset & Verifier Policy    
7\. Tool-Neutral Evidence Model（bash / github\_ui / opencode）    
8\. Failure Patterns（高頻事故模板）    
9\. Driftable Fact Blocks & Web Evidence Contract    
10\. Lint / Validator Rules（Machine Rules）    
11\. TT Wiring（Evidence TXT ↔ TT Spec ↔ Artifacts）    
12\. Appendices（可複製模板 \+ 範例）    
13\. Alignment Matrix（藍圖v2.0 / 升級方案 / 筆記-1..4）

\---

\#\# \*\*1) Purpose / Scope / Non-goals\*\*  
\[ANCHOR:OMOC-EVID-03-0100\]

\#\#\# \*\*1.1 Purpose\*\*  
\[ANCHOR:OMOC-EVID-03-0110\]

本規格定義「每回合必須上傳的單一 TXT 證據檔」之 \*\*命名、格式、必填欄位、可機械驗證規則、去敏/去秘密紅線、完整性（hash）、以及對接 OMOC GateKit / TT / CI evidence bundle\*\* 的方式，使裁決（PASS / TEMP\_CLOSED / FAIL\_CLOSED）可稽核、可回放、可重跑、可回滾。

\#\#\# \*\*1.2 Scope\*\*  
\[ANCHOR:OMOC-EVID-03-0120\]

Evidence TXT 必須可承載三種工具路徑且同一份語法一致（tool-neutral）：

1\) \*\*bash / CLI\*\*（本地/CI/Codespaces）    
2\) \*\*GitHub UI\*\*（Settings / PR / Actions / Merge Queue 等路徑）    
3\) \*\*opencode\*\*（多代理：Planner / Executor / Verifier / Evidence-Collector）

\#\#\# \*\*1.3 Non-goals（明確不做）\*\*  
\[ANCHOR:OMOC-EVID-03-0130\]

\- 不在 Evidence TXT 內重貼大量原始 logs（只允許摘要 \+ 指針 \+ artifact）。    
\- 不把 Web 內容當作規範（Web 永遠 SUPPORT-only）。    
\- 不用「我覺得」替代 locator proof（缺定位＝不可裁決）。

\---

\#\# \*\*2) Naming / Location Conventions\*\*  
\[ANCHOR:OMOC-EVID-03-0200\]

\#\#\# \*\*2.1 Evidence TXT 檔名（MUST）\*\*  
\[ANCHOR:OMOC-EVID-03-0210\]

\- 檔名：\`WP-00X\_evidence\_upload.txt\`    
\- \`HEADER.case\_id\`：\`WP-00X-YYYYMMDD-rNN\`（同一天多次修正以 rNN 遞增）

\#\#\# \*\*2.2 Evidence Bundle（SHOULD）\*\*  
\[ANCHOR:OMOC-EVID-03-0220\]

若有 CI / repo evidence bundle，建議採固定路徑（可被腳本收集）：

\- \`evidence/\_acceptance/\<ISO8601\_TS\>/...\`（artifact、logs、screenshots、json）    
\- \`evidence\_bundle.tgz\`（minset 打包）    
\- \`bundle\_audit.json\`（禁敏掃描與排除規則結果）

\---

\#\# \*\*3) Size, Noise, Log Policy（噪音治理）\*\*  
\[ANCHOR:OMOC-EVID-03-0300\]

\> 你最常見的失敗不是「沒做」，而是「把正確訊號淹死在垃圾 log 裡」。

\#\#\# \*\*3.1 Size Policy（MUST）\*\*  
\[ANCHOR:OMOC-EVID-03-0310\]

\- Evidence TXT 本體：\*\*只放摘要與可裁決訊號\*\*    
\- 大量輸出：移出到 artifact（log file / json），TXT 只留 \`log\_index\_ptr\` / \`first\_seen\_line\_no\` / \`match\_patterns\[\]\`

\#\#\# \*\*3.2 Repetition Compression（MUST）\*\*  
\[ANCHOR:OMOC-EVID-03-0320\]

\- 任一行內容連續重複 ≥ 5 次，必須壓縮為：    
  \`"\<REPEATED xN\> \<line\>"\`

\#\#\# \*\*3.3 Log Excerpt Allowlist（MUST）\*\*  
\[ANCHOR:OMOC-EVID-03-0330\]

\- \`OUTPUTS.stdout\_excerpt\` / \`OUTPUTS.stderr\_excerpt\`：    
  \- \*\*最多 200 行或 8KB（以先到者為準）\*\*    
  \- 必須已去敏（REDACTIONS 有記錄）

\#\#\# \*\*3.4 Noise Governance（MUST）\*\*  
\[ANCHOR:OMOC-EVID-03-0340\]

Evidence TXT 若包含大量無關資訊，必須改成「索引化」：

\- \`log\_index\_ptr\`：artifact path \+ sha256    
\- \`match\_patterns\[\]\`：例如 \`error|fail|forbidden|timeout|permission|merge\_group\`

\---

\#\# \*\*4) TXT Structural Grammar（可機械驗證語法）\*\*  
\[ANCHOR:OMOC-EVID-03-0400\]

\#\#\# \*\*4.1 Fixed Block Order（MUST）\*\*  
\[ANCHOR:OMOC-EVID-03-0410\]

Evidence TXT \*\*MUST\*\* 依下列順序出現（不可交換；不可缺塊；不可插入未知頂層塊）：

1\. \`\#\# HEADER\`    
2\. \`\#\# DECISION\`    
3\. \`\#\# ACTIONS\`    
4\. \`\#\# OUTPUTS\`    
5\. \`\#\# ARTIFACTS\`    
6\. \`\#\# SCREENSHOTS\`    
7\. \`\#\# REDACTIONS\`    
8\. \`\#\# TT\`    
9\. \`\#\# WEB\_EVIDENCE\_INDEX\`    
10\. \`\#\# FOOTER\_INTEGRITY\`

\#\#\# \*\*4.2 Field Syntax（MUST）\*\*  
\[ANCHOR:OMOC-EVID-03-0420\]

\- \`key: value\` 一行一欄    
\- list 使用 \`-\`    
\- 多行值 \*\*僅允許\*\*：  
  \- \`OUTPUTS.stdout\_excerpt\`    
  \- \`OUTPUTS.stderr\_excerpt\`    
  使用 fenced block（\`\`\`）或縮排

\*\*禁止\*\*：自由文本淹沒欄位；任何自由文本必置於明確欄位（例如 \`notes:\`）。

\#\#\# \*\*4.3 EBNF（等價格式描述；MUST）\*\*  
\[ANCHOR:OMOC-EVID-03-0430\]

\> EBNF 目的是給 lint/validator 實作對齊；不要把它當詩朗誦。

document \= header, decision, actions, outputs, artifacts, screenshots, redactions, tt, web, footer ;

nl \= "\\n" ;  
ws \= " " | "\\t" ;  
hex64 \= 64\*( "0"…"9" | "a"…"f" ) ;  
iso8601\_tz \= 4DIGIT,"-",2DIGIT,"-",2DIGIT,"T",2DIGIT,":",2DIGIT,":",2DIGIT,("+",2DIGIT,":",2DIGIT | "Z") ;

block\_title \= "\#\#", ws, ("HEADER"|"DECISION"|"ACTIONS"|"OUTPUTS"|"ARTIFACTS"|"SCREENSHOTS"|"REDACTIONS"|"TT"|"WEB\_EVIDENCE\_INDEX"|"FOOTER\_INTEGRITY"), nl ;

kv\_line \= key, ":", ws?, value, nl ;  
key \= 1\*(ALPHA | DIGIT | "\_" | "-" ) ;  
value \= \*(CHAR \- nl) ;

header \= "\#\# HEADER", nl, 1\*( header\_kv ) ;  
header\_kv \= ( "case\_id"|"wp\_id"|"profile"|"scope\_lock"|"repo"|"branch"|"commit"|"author"|"created\_at"|  
"tool\_choice"|"os"|"shell"|"working\_dir"|"toolchain\_snapshot"|  
"data\_classification\_tags"|"contains\_forbidden"|"redaction\_ruleset\_id"|"spec\_version" ), ":", ws?, value, nl ;

decision \= "\#\# DECISION", nl,  
"verdict:", ws?, ("PASS"|"TEMP\_CLOSED"|"FAIL\_CLOSED"), nl,  
"basis:", ws?, ("evidence\_only\_no\_speculation"), nl,  
"checkpoint\_id:", ws?, value, nl,  
"summary:", ws?, value, nl ;

actions \= "\#\# ACTIONS", nl, 1\*( action\_item ) ;  
action\_item \= "-", ws, "step\_id:", ws?, value, nl,  
ws, "intent:", ws?, value, nl,  
ws, "command\_or\_ui\_path:", ws?, value, nl,  
ws, "expected\_outcome:", ws?, value, nl ;

outputs \= "\#\# OUTPUTS", nl,  
"stdout\_excerpt:", ws?, value, nl,  
"stderr\_excerpt:", ws?, value, nl,  
"exit\_code:", ws?, value, nl,  
"key\_lines:", nl, \*( "-", ws?, value, nl ) ;

artifacts \= "\#\# ARTIFACTS", nl, 1\*( artifact\_item ) ;  
artifact\_item \= "-", ws, "path:", ws?, value, nl,  
ws, "sha256:", ws?, hex64, nl,  
ws, "size\_bytes:", ws?, value, nl,  
ws, "purpose:", ws?, value, nl ;

screenshots \= "\#\# SCREENSHOTS", nl, \*( screenshot\_item ) ;  
screenshot\_item \= "-", ws, "id:", ws?, value, nl,  
ws, "question:", ws?, value, nl,  
ws, "file\_or\_url:", ws?, value, nl,  
ws, "sha256:", ws?, (hex64|"UNKNOWN"), nl ;

redactions \= "\#\# REDACTIONS", nl, \*( redaction\_item ) ;  
redaction\_item \= "-", ws, "category:", ws?, value, nl,  
ws, "marker:", ws?, value, nl,  
ws, "reason:", ws?, value, nl ;

tt \= "\#\# TT", nl, "tt\_count:", ws?, value, nl, \*( tt\_item ) ;  
web \= "\#\# WEB\_EVIDENCE\_INDEX", nl, "web\_count:", ws?, value, nl, \*( web\_item ) ;

footer \= "\#\# FOOTER\_INTEGRITY", nl, 1\*( footer\_kv ) ;  
footer\_kv \= ( "body\_sha256"|"body\_sha256\_method"|"body\_sha256\_scope"|"recompute\_steps" ), ":", ws?, value, nl ;

\---

\#\# \*\*5) Block Definitions（10 blocks \+ Footer）\*\*  
\[ANCHOR:OMOC-EVID-03-0500\]

\#\#\# \*\*5.1 HEADER（MUST）\*\*  
\[ANCHOR:OMOC-EVID-03-0510\]

\*\*Required keys（key 不得缺；值可 UNKNOWN/N/A）\*\*：

\- \`case\_id\`：\`WP-00X-YYYYMMDD-rNN\`    
\- \`wp\_id\`：\`WP-00X\`    
\- \`profile\`：\`OMOC-MVU-LaneF | SubP1-LaneP | OMOC-Full\`    
\- \`scope\_lock\`：例如 \`Lane-F/WP-00X\`、\`Lane-P/Subsystem-07\`    
\- \`repo\`：\`owner/repo\` 或 \`N/A\`    
\- \`branch\`：branch 名或 \`N/A\`    
\- \`commit\`：sha 或 \`N/A\`    
\- \`author\`：人名或 \`N/A\`    
\- \`created\_at\`：ISO8601 含時區    
\- \`tool\_choice\`：\`bash | github\_ui | opencode\`    
\- \`os\` / \`shell\` / \`working\_dir\`    
\- \`toolchain\_snapshot\`：\*\*去敏\*\*的工具鏈摘要（版本/環境，不含 token）    
\- \`data\_classification\_tags\`：如 \`\["LOGS","PII","SECRETS"\]\`    
\- \`contains\_forbidden\`：\`true|false|unknown\`（unknown 視為至少 TEMP\_CLOSED）    
\- \`redaction\_ruleset\_id\`：如 \`RR-PRIV-001\`    
\- \`spec\_version\`：必須等於本文件 version（便於漂移偵測）

\*\*SSOT basis（本地）\*\*：    
\- CC-REQ-0022（單檔 evidence 收斂）    
\- CC-REQ-0023（forbidden members / secrets exclusion）    
\- CC-REQ-0010（Tool Router 三選一）/ CC-REQ-0011（hysteresis 防抖）

\#\#\# \*\*5.2 DECISION（MUST）\*\*  
\[ANCHOR:OMOC-EVID-03-0520\]

\- \`verdict\`：\`PASS | TEMP\_CLOSED | FAIL\_CLOSED\`    
\- \`basis\`：固定 \`evidence\_only\_no\_speculation\`    
\- \`checkpoint\_id\`：本回合裁決的唯一 checkpoint（例如 \`GATEKIT\_PREFLIGHT:G0\`、\`WP-014:DRIFT\_CLOSURE\`）    
\- \`summary\`：1–3 行，\*\*只寫可被 evidence 指向的結論\*\*

\#\#\# \*\*5.3 ACTIONS（MUST）\*\*  
\[ANCHOR:OMOC-EVID-03-0530\]

每一步必須能被「機械重跑」或「最小重走 UI」：

\- \`step\_id\`：\`S01\`…    
\- \`intent\`：一句話說要驗證什麼    
\- \`command\_or\_ui\_path\`：    
  \- bash：單一命令或短命令鏈    
  \- github\_ui：可重走的 UI 路徑（\`Settings → Branches → …\`）    
  \- opencode：\`Planner:\` / \`Executor:\` / \`Verifier:\` / \`Collector:\` 的階段指針    
\- \`expected\_outcome\`：必須可對應到 \`OUTPUTS.key\_lines\` 或 \`ARTIFACTS\`（不接受「應該會成功」）

\#\#\# \*\*5.4 OUTPUTS（MUST）\*\*  
\[ANCHOR:OMOC-EVID-03-0540\]

\- \`stdout\_excerpt\` / \`stderr\_excerpt\`：遵守 §3.3    
\- \`exit\_code\`：bash 必填；UI/opencode 可填 \`N/A\`    
\- \`key\_lines\[\]\`：列出 \*\*最少\*\* 2 行可裁決訊號（如 \`merge\_group runs=0\`、\`forbidden\_scan=0\`）

\#\#\# \*\*5.5 ARTIFACTS（MUST）\*\*  
\[ANCHOR:OMOC-EVID-03-0550\]

每筆 artifact 必含：

\- \`path\`    
\- \`sha256\`（64 hex）    
\- \`size\_bytes\`（整數）    
\- \`purpose\`（一句話，對應哪個 gate/claim）

\*\*最低要求\*\*：    
\- 至少 1 件 artifact（除了 Evidence TXT 自己）    
\- 若 \`contains\_forbidden \!= false\` → 必須有 \`bundle\_audit.json\` 類型 artifact

\> 供應鏈加固（可選）：若你有 CI，建議補 \`attestation\_ref\`（GitHub artifact attestations / SLSA provenance）作為額外完整性證明（見 §12.6）。

\#\#\# \*\*5.6 SCREENSHOTS（CONDITIONAL MUST）\*\*  
\[ANCHOR:OMOC-EVID-03-0560\]

\- 若 \`tool\_choice=github\_ui\`：\*\*至少 1 張\*\*    
\- 每張必含 \`question\`（可裁決問題），例如：    
  \- 「Merge Queue 是否啟用？哪個 UI 控制證明？」    
  \- 「是否存在 event=merge\_group 的 workflow runs？」

\#\#\# \*\*5.7 REDACTIONS（MUST）\*\*  
\[ANCHOR:OMOC-EVID-03-0570\]

\- 每筆 redaction 必含：\`category / marker / reason\`    
\- \`marker\` 必須符合：\`\[REDACTED:\<category\>:\<reason\>\]\`    
\- 任何疑似 secrets/PII：不得保留可逆資訊；必要時只留摘要或 hash

\#\#\# \*\*5.8 TT（MUST；可 minref）\*\*  
\[ANCHOR:OMOC-EVID-03-0580\]

\- \`tt\_count: \<int\>\`    
\- 若 \`tt\_count\>0\`，允許兩種模式：

\*\*Mode A: inline\_full（高成本；少用）\*\*    
\- TT item 直接 inline 且欄位需齊全（對齊 \`04\_TT\_TestTrack\_Spec.md\`）

\*\*Mode B: minref \+ tt\_export.json（推薦）\*\*    
\- Evidence TXT 只放最小 TT 欄位（見 §11.2）    
\- 並在 ARTIFACTS 內提供 \`tt\_export.json\`（完整 TT 由 artifact 承載）

\#\#\# \*\*5.9 WEB\_EVIDENCE\_INDEX（CONDITIONAL MUST）\*\*  
\[ANCHOR:OMOC-EVID-03-0590\]

\- \`web\_count: \<int\>\`    
\- Web 永遠 SUPPORT-only；不可把 web claim 寫成 MUST 規範    
\- 每個條目必含（見 §9.2 template）：    
  \- \`web\_id\`、\`claim\`、\`publisher\`、\`canonical\_url\`、\`published\_at\`、\`accessed\_at\`、\`last\_verified\_at\`、\`purpose\`、\`drift\_action\`、\`web\_refs\[\]\`

\#\#\# \*\*5.10 FOOTER\_INTEGRITY（MUST）\*\*  
\[ANCHOR:OMOC-EVID-03-05F0\]

為解決「hash 寫進檔內造成雞生蛋」問題，本規格定義：

\- \`body\_sha256\`：\*\*只對 BODY 範圍做 hash\*\*（不含 FOOTER\_INTEGRITY block）    
\- \`body\_sha256\_scope\`：固定字串：\`START..END\_OF\_WEB\_EVIDENCE\_INDEX\`    
\- \`recompute\_steps\[\]\`：必提供至少 1 條可重算命令

\---

\#\# \*\*6) Evidence Minset & Verifier Policy\*\*  
\[ANCHOR:OMOC-EVID-03-0600\]

\#\#\# \*\*6.1 Minimum Evidence Set（總則；MUST）\*\*  
\[ANCHOR:OMOC-EVID-03-0610\]

每回合至少要讓人能回答三個問題（不然你就是在賣故事）：

1\) \*\*你做了什麼\*\*（ACTIONS）    
2\) \*\*結果是什麼\*\*（OUTPUTS \+ ARTIFACTS）    
3\) \*\*能不能重跑或重走\*\*（command\_or\_ui\_path \+ hashes \+ recompute\_steps）

\#\#\# \*\*6.2 Tool-specific Minset（MUST）\*\*  
\[ANCHOR:OMOC-EVID-03-0620\]

\*\*A) bash\*\*    
\- \`OUTPUTS.exit\_code\` 必填    
\- 至少 1 個可重算 artifact hash    
\- \`recompute\_steps\` 至少包含：body hash \+ 任一 artifact hash

\*\*B) github\_ui\*\*    
\- UI path 必須可重走    
\- SCREENSHOTS：每張有可裁決 question    
\- 若涉及 driftable UI/規則：WEB\_EVIDENCE\_INDEX 必須有對應條目（雙來源；或 EXCEPTION→TT）

\*\*C) opencode\*\*    
\- ACTIONS 必須清楚區分階段（Planner/Executor/Verifier/Collector）    
\- 若宣稱 PASS 且涉及高風險裁決：Verifier SHOULD 介入（見 6.3）

\#\#\# \*\*6.3 When a Verifier Is Required（SHOULD；忽略=TEMP\_CLOSED）\*\*  
\[ANCHOR:OMOC-EVID-03-0630\]

Verifier SHOULD 二次驗證的情境：

\- Evidence TXT 由同一人產出且涉及高風險 PASS（例如關閉重大 TT）    
\- 涉及 secrets 外洩疑似事件（需獨立確認已遮罩且可裁決）    
\- merge\_group runtime（Mode A）不可觀測時：\*\*不得判 PASS\*\*，只能 TEMP\_CLOSED \+ TT

\---

\#\# \*\*7) Tool-Neutral Evidence Model（bash / github\_ui / opencode）\*\*  
\[ANCHOR:OMOC-EVID-03-0700\]

\#\#\# \*\*7.1 Tool Choice Field（MUST）\*\*  
\[ANCHOR:OMOC-EVID-03-0710\]

\`HEADER.tool\_choice\` \*\*MUST\*\* ∈ \`{bash, github\_ui, opencode}\`    
並且 \`ACTIONS.command\_or\_ui\_path\` 必須依 tool\_choice 使用正確語彙（命令 / UI path / stage pointer）。

\#\#\# \*\*7.2 Hysteresis（MUST）\*\*  
\[ANCHOR:OMOC-EVID-03-0720\]

同一 TT 未 CLOSED 前不得切換工具路徑；若要切換，必須在 TT 中記錄 unlock 條件與 retest plan。

\---

\#\# \*\*8) Failure Patterns（高頻事故模板）\*\*  
\[ANCHOR:OMOC-EVID-03-0800\]

\#\#\# \*\*8.1 printf / YAML 破壞（bash 產生 evidence 時最常見）\*\*  
\[ANCHOR:OMOC-EVID-03-0810\]

\- 禁止：\`printf "- ..."\`（可能被視為 option，導致截斷/缺段）    
\- 建議：    
  \- \`printf \-- "- key: %s\\n" "$v"\`    
  \- 或使用 \`cat \<\<'EOF'\` heredoc 一次寫入，再做 hash

\#\#\# \*\*8.2 footer SHA mismatch（最傷效率的返工回路）\*\*  
\[ANCHOR:OMOC-EVID-03-0820\]

必須採流程：

1\) 先完成 BODY（到 WEB\_EVIDENCE\_INDEX 結束）    
2\) 計算 \`body\_sha256\`    
3\) 最後 append \`FOOTER\_INTEGRITY\`（只記錄 body hash \+ 重算步驟）    
4\) lint 驗證 \`body\_sha256 \== recompute(body)\`

\#\#\# \*\*8.3 Merge Queue / required checks 卡死（driftable）\*\*  
\[ANCHOR:OMOC-EVID-03-0830\]

\- 若 repo 啟用 merge queue：workflow 必須支援 \`merge\_group\` 事件（GitHub 官方要求）    
\- 若無 Mode A runtime 證據：不得 PASS，必 TEMP\_CLOSED \+ TT（把問題關進 close\_criteria/test\_probe）

\#\#\# \*\*8.4 Secrets / PII 外洩疑慮\*\*  
\[ANCHOR:OMOC-EVID-03-0840\]

\- 命中 forbidden patterns：FAIL\_CLOSED    
\- 不確定：TEMP\_CLOSED \+ TT（先做去敏、再補證據；禁止索取原始 secrets）

\---

\#\# \*\*9) Driftable Fact Blocks & Web Evidence Contract\*\*  
\[ANCHOR:OMOC-EVID-03-0900\]

\#\#\# \*\*9.1 什麼是 driftable（MUST 先承認）\*\*  
\[ANCHOR:OMOC-EVID-03-0910\]

以下都屬 driftable（可變動，不能寫死）：

\- GPT Builder UI、Knowledge 上限/處理方式、預設模型更替    
\- GitHub Merge Queue / merge\_group 行為與 UI    
\- 安全最佳實務（prompt injection/供應鏈）

\#\#\# \*\*9.2 Web Evidence Entry Template（MUST if web\_count\>0）\*\*  
\[ANCHOR:OMOC-EVID-03-0920\]

\> 記住：Web 是證人，不是法官。

web\_id: WEB-YYYYMMDD-\#\#\#  
claim: "\<one sentence; SUPPORT-only\>"  
publisher: "\<org/site\>"  
canonical\_url: ""  
published\_at: "YYYY-MM-DD|UNKNOWN"  
accessed\_at: "YYYY-MM-DDThh:mm:ss+08:00"  
last\_verified\_at: "YYYY-MM-DDThh:mm:ss+08:00"  
purpose: "\<which driftable fact / which gate this supports\>"  
drift\_action: "KEEP|UPDATE|QUARANTINE"  
injection\_risk: "LOW|MED|HIGH"  
domain\_diversity: "OK|EXCEPTION"  
domain\_diversity\_reason: ""  
web\_refs:

* "" \# should be different domain  
* "" \# should be different domain  
  related\_tt:  
* "TT-..."

\#\#\# \*\*9.3 This-run Web Evidence Seeds（2026-02-25 baseline；SUPPORT-only）\*\*  
\[ANCHOR:OMOC-EVID-03-0930\]

\> 這些條目是「可變動事實」的種子；若未來與 SSOT 衝突，必須 QUARANTINE \+ TT。

1\) \*\*WEB-20260225-001\*\* Knowledge in GPTs（limits \+ chunk/embeddings）    
\- refs:    
  \- https://help.openai.com/en/articles/8843948-knowledge-in-gpts    
  \- https://community.openai.com/t/my-gpt-knowledge-base-best-practices/589487  

2\) \*\*WEB-20260225-002\*\* Key Guidelines（trigger/instruction pairs \+ delimiters）    
\- refs:    
  \- https://help.openai.com/en/articles/9358033-key-guidelines-for-writing-instructions-for-custom-gpts    
  \- https://help.openai.com/zh-hant/articles/9358033-key-guidelines-for-writing-instructions-for-custom-gpts  

3\) \*\*WEB-20260225-003\*\* Default model updated to GPT-5.2 (driftable)    
\- refs:    
  \- https://help.openai.com/zh-hant/articles/20001051-retiring-gpt-4o-and-other-chatgpt-models    
  \- https://help.openai.com/en/articles/11909943-gpt-52-in-chatgpt  

4\) \*\*WEB-20260225-004\*\* Merge Queue requires merge\_group trigger    
\- refs:    
  \- https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/configuring-pull-request-merges/managing-a-merge-queue    
  \- https://github.blog/changelog/2022-08-18-merge-group-webhook-event-and-github-actions-workflow-trigger/  

5\) \*\*WEB-20260225-005\*\* Prompt injection as confused deputy（Web content treated as DATA）    
\- refs:    
  \- https://genai.owasp.org/llmrisk/llm01-prompt-injection/    
  \- https://www.ncsc.gov.uk/blog-post/prompt-injection-is-not-sql-injection  

6\) \*\*WEB-20260225-006\*\* Data Controls / GPTs privacy（training opt-out; driftable）    
\- refs:    
  \- https://help.openai.com/en/articles/8554402-gpts-data-privacy-faq    
  \- https://help.openai.com/en/articles/7730893-data-controls-faq  

7\) \*\*WEB-20260225-007\*\* Devcontainer spec（deterministic dev env）    
\- refs:    
  \- https://devcontainers.github.io/implementors/spec/    
  \- https://github.com/devcontainers/spec  

8\) \*\*WEB-20260225-008\*\* pre-commit（hooks manager; shift-left）    
\- refs:    
  \- https://pre-commit.com/    
  \- https://github.com/pre-commit/pre-commit  

9\) \*\*WEB-20260225-009\*\* gitleaks（secret scanning）    
\- refs:    
  \- https://github.com/gitleaks/gitleaks    
  \- https://gitleaks.io/  

10\) \*\*WEB-20260225-010\*\* check-jsonschema（schema validation \+ pre-commit hooks）    
\- refs:    
  \- https://github.com/python-jsonschema/check-jsonschema    
  \- https://check-jsonschema.readthedocs.io/  

11\) \*\*WEB-20260225-011\*\* actionlint / zizmor（Actions lint \+ security）    
\- refs:    
  \- https://github.com/rhysd/actionlint    
  \- https://github.com/zizmorcore/zizmor  

12\) \*\*WEB-20260225-012\*\* GitHub artifact attestations / provenance（可選加固）    
\- refs:    
  \- https://docs.github.com/actions/security-for-github-actions/using-artifact-attestations/using-artifact-attestations-to-establish-provenance-for-builds    
  \- https://slsa.dev/spec/draft/build-provenance  

\---

\#\# \*\*10) Lint / Validator Rules（Machine Rules）\*\*  
\[ANCHOR:OMOC-EVID-03-1000\]

\> Lint 的精神：你不會希望裁決官閱讀你的情緒，只想讀你的證據。

\#\#\# \*\*10.1 Machine Rules（MUST）\*\*  
\[ANCHOR:OMOC-EVID-03-1010\]

1\) \*\*Block order\*\*：必須符合 §4.1    
2\) \*\*Required HEADER keys\*\*：§5.1 列的 key 全部必須存在（值可 UNKNOWN/N/A，但 key 不得缺）    
3\) \*\*HEADER.spec\_version\*\*：必須等於本 spec version（否則視為格式漂移）    
4\) \*\*DECISION.verdict\*\*：僅允許 \`PASS|TEMP\_CLOSED|FAIL\_CLOSED\`    
5\) \*\*DECISION.basis\*\*：僅允許 \`evidence\_only\_no\_speculation\`    
6\) \*\*created\_at ISO8601+TZ\*\*：必須可解析（含時區）    
7\) \*\*tool\_choice enum\*\*：\`bash|github\_ui|opencode\`    
8\) \*\*sha256 format\*\*：\`^\[0-9a-f\]{64}$\`（ARTIFACTS \+ FOOTER.body\_sha256）    
9\) \*\*ARTIFACTS completeness\*\*：每筆必含 \`path/sha256/size\_bytes/purpose\`，且 \`size\_bytes\` 為整數    
10\) \*\*SCREENSHOTS integrity\*\*：若存在 screenshots item，必含 \`id/question/file\_or\_url/sha256\`；\`question\` 必須是可裁決問題    
11\) \*\*REDACTIONS marker\*\*：必須符合 \`^\\\[REDACTED:\[^:\\\]\]+:\[^\\\]\]+\\\]$\`    
12\) \*\*TT wiring\*\*：    
    \- \`tt\_count\>0\` 時：必須至少有一筆 TT entry（inline 或 minref）    
    \- minref 模式下：必須在 ARTIFACTS 內提供 \`tt\_export.json\`（purpose 明確）    
13\) \*\*Web Evidence constraints\*\*：    
    \- \`web\_count\>0\` 時：每筆 web item 必含 \`drift\_action\` 且 \`web\_refs\>=2\`    
    \- 預設要求跨網域；若做 EXCEPTION，必須同時建立 TT（type=WEB\_EVIDENCE\_WEAK）    
14\) \*\*Noise governance\*\*：符合 §3（repeated compression、excerpt 限制、索引化）    
15\) \*\*contains\_forbidden\*\*：若為 \`true|unknown\` → verdict 不得為 PASS（至少 TEMP\_CLOSED）

\#\#\# \*\*10.2 Human Checklist（最小人工核對）\*\*  
\[ANCHOR:OMOC-EVID-03-1020\]

\- 你能否用 ACTIONS 重跑或重走？    
\- key\_lines 是否真能支持 DECISION.summary？    
\- 是否出現任何敏感內容的「可逆線索」？（可逆=仍算外洩風險）

\#\#\# \*\*10.3 Lint Rules YAML（實作提示；OPTIONAL）\*\*  
\[ANCHOR:OMOC-EVID-03-1030\]

\> 這段是給 \`scripts/evidence\_lint.sh\` 或任何 validator 實作對齊用；不是給人讀爽的。

\`\`\`yaml  
lint:  
  blocks\_order:  
    \- HEADER  
    \- DECISION  
    \- ACTIONS  
    \- OUTPUTS  
    \- ARTIFACTS  
    \- SCREENSHOTS  
    \- REDACTIONS  
    \- TT  
    \- WEB\_EVIDENCE\_INDEX  
    \- FOOTER\_INTEGRITY  
  required\_header\_keys:  
    \- case\_id  
    \- wp\_id  
    \- profile  
    \- scope\_lock  
    \- repo  
    \- branch  
    \- commit  
    \- author  
    \- created\_at  
    \- tool\_choice  
    \- os  
    \- shell  
    \- working\_dir  
    \- toolchain\_snapshot  
    \- data\_classification\_tags  
    \- contains\_forbidden  
    \- redaction\_ruleset\_id  
    \- spec\_version  
  verdict\_enum: \[PASS, TEMP\_CLOSED, FAIL\_CLOSED\]  
  tool\_choice\_enum: \[bash, github\_ui, opencode\]  
  sha256\_regex: "^\[0-9a-f\]{64}$"  
  redaction\_marker\_regex: "^\\\\\[REDACTED:\[^:\\\\\]\]+:\[^\\\\\]\]+\\\\\]$"  
  excerpt\_max\_lines: 200  
  web\_refs\_min: 2

---

## **11\) TT Wiring（Evidence TXT ↔ TT Spec ↔ Artifacts）**

\[ANCHOR:OMOC-EVID-03-1100\]

### **11.1 TT 最小欄位（minref；MUST if used）**

\[ANCHOR:OMOC-EVID-03-1110\]

minref 模式下，每筆 TT 至少要有：

* `tt_id`  
* `status`  
* `severity`  
* `priority`  
* `scope` / `type`  
* `gap_summary` / `impact`  
* `ssot_doc` / `ssot_locator` / `excerpt_le_25`  
* `decision_gate`（這個 TT 卡在哪個 gate）  
* `close_criteria`（可驗證）  
* `test_probe`（工具 \+ 命令/步驟）  
* `evidence_expected[]`（可映射到 evidence blocks/artifacts）  
* `web_evidence_ids[]`（若使用 web）  
* `drift_action`（KEEP/UPDATE/QUARANTINE）

並且 **必須**提供 artifact：`tt_export.json`（完整 TT 內容在那裡）。

### **11.2 TT minref Template（可複製）**

\[ANCHOR:OMOC-EVID-03-1120\]

tt\_id: TT-YYYYMMDD-NNNN  
status: OPEN|INVESTIGATING|MITIGATING|TEMP\_CLOSED|CLOSED  
created\_at: 2026-02-26T00:00:00+08:00  
severity: STOP\_BLOCKER|MAJOR|MINOR  
priority: P0|P1|P2  
scope: "\<what contract/area\>"  
type: GAP|DRIFT|SECURITY|LOCATOR\_MISSING|WEB\_EVIDENCE\_WEAK  
gap\_summary: "\<one paragraph\>"  
impact: "\<one paragraph\>"  
ssot\_doc: "/mnt/data/01\_OMOC\_Core\_Contract.md"  
ssot\_locator: "CC-REQ-00XX"  
excerpt\_le\_25: "\<=25 words excerpt"  
decision\_gate: "GATEKIT\_PREFLIGHT:G0"  
close\_criteria: "\<verifiable criteria\>"  
test\_probe:  
  tool: bash|github\_ui|opencode  
  command\_or\_steps: "\<string\>"  
evidence\_expected:  
  \- "evidence\_upload.txt::OUTPUTS.key\_lines"  
  \- "artifact::bundle\_audit.json"  
web\_evidence\_ids:  
  \- "WEB-20260225-004"  
drift\_action: KEEP|UPDATE|QUARANTINE

---

## **12\) Appendices（可直接複製）**

\[ANCHOR:OMOC-EVID-03-1200\]

### **12.1 Minimal evidence\_upload.txt Template（MUST skeleton）**

\[ANCHOR:OMOC-EVID-03-1210\]

你只要照抄這個骨架，90% 的格式漂移會自動消失。

\#\# HEADER  
case\_id: WP-00X-YYYYMMDD-r01  
wp\_id: WP-00X  
profile: OMOC-MVU-LaneF|SubP1-LaneP|OMOC-Full  
scope\_lock: \<e.g. Lane-F/WP-00X\>  
repo: \<owner/repo or N/A\>  
branch: \<branch or N/A\>  
commit: \<sha or N/A\>  
author: \<name or N/A\>  
created\_at: 2026-02-26T00:00:00+08:00  
tool\_choice: bash|github\_ui|opencode  
os: \<...\>  
shell: \<...\>  
working\_dir: \<...\>  
toolchain\_snapshot: "\<sanitized versions/config; no tokens\>"  
data\_classification\_tags: \["LOGS","PII","SECRETS"\]  
contains\_forbidden: false|true|unknown  
redaction\_ruleset\_id: RR-PRIV-001  
spec\_version: v4.1.0-r1+orchestrator.bp2

\#\# DECISION  
verdict: PASS|TEMP\_CLOSED|FAIL\_CLOSED  
basis: evidence\_only\_no\_speculation  
checkpoint\_id: \<one checkpoint only\>  
summary: \<1-3 lines\>

\#\# ACTIONS  
\- step\_id: S01  
  intent: \<one sentence\>  
  command\_or\_ui\_path: \<single command OR single UI path OR opencode stage\>  
  expected\_outcome: \<one sentence\>

\#\# OUTPUTS  
stdout\_excerpt: |  
  \<short; \<=200 lines\>  
stderr\_excerpt: |  
  \<short; \<=200 lines\>  
exit\_code: 0|N/A  
key\_lines:  
\- \<line1\>  
\- \<line2\>  
log\_index\_ptr: \<artifact path+sha256 if needed\>

\#\# ARTIFACTS  
\- path: \<path\>  
  sha256: \<hex64\>  
  size\_bytes: \<int\>  
  purpose: \<one sentence\>

\#\# SCREENSHOTS  
\# if none: leave empty  
\# \- id: IMG-01  
\#   question: \<decidable question\>  
\#   file\_or\_url: \<path or url\>  
\#   sha256: \<hex64|UNKNOWN\>

\#\# REDACTIONS  
\# if none: leave empty  
\# \- category: secrets|pii|internal\_url  
\#   marker: \[REDACTED:secrets:token\_hidden\]  
\#   reason: never share tokens/keys

\#\# TT  
tt\_count: 0  
\# if tt\_count\>0: include tt items (minref) and provide tt\_export.json in ARTIFACTS

\#\# WEB\_EVIDENCE\_INDEX  
web\_count: 0  
\# if web\_count\>0: include web items with web\_refs\>=2

\#\# FOOTER\_INTEGRITY  
body\_sha256: \<hex64\>  
body\_sha256\_method: "sha256sum(body\_range) | awk '{print $1}'"  
body\_sha256\_scope: "START..END\_OF\_WEB\_EVIDENCE\_INDEX"  
recompute\_steps:  
\- "\<command1\>"  
\- "\<command2\>"

### **12.2 Example（bash）**

\[ANCHOR:OMOC-EVID-03-1220\]

* bash 的關鍵是：`exit_code` \+ `key_lines` \+ `artifact hashes` \+ `recompute_steps`。

### **12.3 Example（github\_ui）**

\[ANCHOR:OMOC-EVID-03-1230\]

* UI 的關鍵是：可重走路徑 \+ 截圖對應可裁決問題 \+ driftable 事實用 WEB\_EVIDENCE\_INDEX 關起來。

### **12.4 Example（opencode）**

\[ANCHOR:OMOC-EVID-03-1240\]

* opencode 的關鍵是：階段化 \+ Verifier 條件 \+ 不可觀測就不 PASS。

### **12.5 Hash recompute（bash 推薦；UI 替代）**

\[ANCHOR:OMOC-EVID-03-1250\]

**bash（推薦）**

* BODY hash（不含 FOOTER）：  
  * `sed '/^## FOOTER_INTEGRITY/,$d' WP-00X_evidence_upload.txt | sha256sum | awk '{print $1}'`  
* artifact hash：  
  * `sha256sum path/to/artifact | awk '{print $1}'`

**UI（替代證明）**  
若無法使用 bash：

* 提供「產生 hash 的工具與版本」與「截圖證明」  
* SCREENSHOTS 的 `question` 必須指向「hash 如何生成」這個可裁決點

### **12.6 Optional Hardening：Artifact Attestations / SLSA Provenance**

\[ANCHOR:OMOC-EVID-03-1260\]

若你有 CI，建議補：

* `attestation_ref`（GitHub artifact attestations）  
* `provenance_ref`（SLSA build provenance predicate）

用途：提高「這個 artifact 真的是那個 workflow 產生」的可驗證性（供應鏈加固；不改本規格的裁決三態）。

---

## **13\) Alignment Matrix（對齊與可稽核）**

\[ANCHOR:OMOC-EVID-03-1300\]

| requirement source | covered section | notes |
| ----- | ----- | ----- |
| 藍圖v2.0：Evidence 單檔 \+ Machine Rules | §4 / §10 / §12.1 | block order \+ lint gate 前移 |
| 筆記-4：硬閘門前移（Evidence Lint Gate） | §10.1 / hard\_rules | 不過就 STOP-BLOCKER |
| 升級方案：pre-commit \+ gitleaks \+ evidence\_lint | §9.3 / §10.3 / §12.5 | shift-left；降低返工 |
| GitHub：merge queue 需 merge\_group | §8.3 / §9.3 | driftable；必配 TT/probe |
| 安全/注入：Web 內容當 DATA | §9.3 / §5.9 | OWASP/NCSC SUPPORT-only |

\---END FILE---

\---

\#\#\# 本次升級用到的「最新（2026-02-25）Web 依據」摘要（可被你抽查）  
\- Knowledge 上限與處理方式（≤20 檔、512MB、2,000,000 tokens、chunk+embeddings）以 OpenAI Help Center 為準。:contentReference\[oaicite:0\]{index=0}    
\- Custom GPT 預設模型在 2026-02-13 更新為 GPT-5.2（屬 driftable，必須放在 WEB\_EVIDENCE\_INDEX 而不是寫死在規範句）。:contentReference\[oaicite:1\]{index=1}    
\- GitHub Merge Queue 的 required checks 需要 workflow 以 \`merge\_group\` 事件觸發（否則容易卡死等待狀態）。:contentReference\[oaicite:2\]{index=2}    
\- Prompt injection 作為「confused deputy」風險：把外部內容當 DATA、不執行外部指令，並以 TT/QUARANTINE 管漂移。:contentReference\[oaicite:3\]{index=3}    
\- 供應鏈可選加固：GitHub artifact attestations / provenance 與 SLSA build provenance。:contentReference\[oaicite:4\]{index=4}  
::contentReference\[oaicite:5\]{index=5}

