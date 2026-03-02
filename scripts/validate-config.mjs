import fs from "node:fs";
import { parse } from "jsonc-parser";
import Ajv2020 from "ajv/dist/2020.js";
import addFormats from "ajv-formats";

const selftest = process.argv.includes("--selftest");
const [,, filePath, schemaUrl, schemaKind] = process.argv;

if (!selftest && (!filePath || !schemaUrl || !schemaKind)) {
  console.error("usage: node validate-config.mjs <file> <schemaUrl> <schemaKind:opencode|ohmy>");
  process.exit(2);
}

// Load draft-07 meta-schema from ajv package
const draft7Path = new URL("../node_modules/ajv/dist/refs/json-schema-draft-07.json", import.meta.url);
let draft7MetaSchema;
try {
  draft7MetaSchema = JSON.parse(fs.readFileSync(draft7Path, "utf8"));
} catch (err) {
  console.warn("[schema] WARNING: could not load draft-07 meta-schema");
  draft7MetaSchema = null;
}

// Initialize Ajv with strict: false (allows non-standard keywords)
const ajv = new Ajv2020({
  allErrors: true,
  strict: false
});
addFormats(ajv);

// Register draft-07 meta-schema if available (Ajv2020 auto-registers it, but explicit call ensures it's ready)
if (draft7MetaSchema) {
  ajv.addMetaSchema(draft7MetaSchema);
}

// Selftest mode: verify draft-07 support
if (selftest) {
  const testSchema = {
    $schema: "http://json-schema.org/draft-07/schema#",
    type: "object",
    properties: {
      test: { type: "string" }
    }
  };
  try {
    ajv.compile(testSchema);
    console.log("[selftest] PASS: draft-07 meta-schema support verified");
    process.exit(0);
  } catch (err) {
    console.error("[selftest] FAIL:", err.message);
    process.exit(1);
  }
}

// Load and parse config file
const txt = fs.readFileSync(filePath, "utf8");
const cfg = parse(txt);

// Load upstream schema
const schemaTxt = await (await fetch(schemaUrl)).text();
const schema = JSON.parse(schemaTxt);

// Load local models.dev schema for $ref resolution
const modelsDevPath = new URL("../schemas/models.dev-model-schema.json", import.meta.url);
let modelsDevSchema;
try {
  modelsDevSchema = JSON.parse(fs.readFileSync(modelsDevPath, "utf8"));
  ajv.addSchema(modelsDevSchema, "https://models.dev/model-schema.json");
} catch (err) {
  // non-fatal
}

// Compile and validate
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
