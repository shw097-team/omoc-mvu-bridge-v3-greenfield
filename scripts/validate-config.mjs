import fs from "node:fs";
import { parse } from "jsonc-parser";
import Ajv2020 from "ajv/dist/2020.js";
import addFormats from "ajv-formats";

const [,, filePath, schemaUrl, schemaKind] = process.argv;
if (!filePath || !schemaUrl || !schemaKind) {
  console.error("usage: node validate-config.mjs <file> <schemaUrl> <schemaKind:opencode|ohmy>");
  process.exit(2);
}

const txt = fs.readFileSync(filePath, "utf8");
const cfg = parse(txt);

// --- 1) Schema validation (SUPPORT-only): do NOT let upstream schema quirks break Fail-Closed
const schemaTxt = await (await fetch(schemaUrl)).text();
const schema = JSON.parse(schemaTxt);

// Ajv strict-mode throws on unknown keywords like "ref" (non-JSON-Schema keyword).
// We disable strict here and enforce Fail-Closed via our own allowlists below.
const ajv = new Ajv2020({
  allErrors: true,
  strict: false
});
addFormats(ajv);

const validate = ajv.compile(schema);
const ok = validate(cfg);
if (!ok) {
  console.error(`[schema] FAIL file=${filePath}`);
  console.error(validate.errors);
  process.exit(10);
}
console.log(`[schema] PASS file=${filePath}`);

// --- 2) Fail-Closed unknown-keys gate (SSOT behavior): enforce allowlist
const ALLOWLIST = {
  opencode: new Set([
    "$schema",
    "autoupdate",
    "model",
    "small_model",
    "enabled_providers",
    "plugin",
    "permission",
    "share"
  ]),
  ohmy: new Set([
    "$schema",
    "agents",
    "categories",
    "disabled_mcps",
    "runtime_fallback",
    "sisyphus_agent",
    "background_task",
    "tmux",
    "lsp"
  ])
};

const allow = ALLOWLIST[schemaKind];
if (!allow) {
  console.error(`[gate] FAIL: unknown schemaKind=${schemaKind}`);
  process.exit(11);
}

const unknown = Object.keys(cfg || {}).filter(k => !allow.has(k));
if (unknown.length) {
  console.error(`[gate] FAIL_CLOSED file=${filePath}`);
  console.error(`[gate] unknown top-level keys: ${unknown.join(", ")}`);
  process.exit(12);
}

console.log(`[gate] PASS allowlist file=${filePath}`);
