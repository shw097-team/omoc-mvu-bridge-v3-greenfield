import fs from "node:fs";
import path from "node:path";
import process from "node:process";
import stripJsonComments from "strip-json-comments";
import Ajv from "ajv";

function loadJsonc(filePath) {
  const raw = fs.readFileSync(filePath, "utf8");
  return JSON.parse(stripJsonComments(raw));
}

function validate(schemaPath, targetPath) {
  const ajv = new Ajv({ allErrors: true, strict: true });
  const schema = JSON.parse(fs.readFileSync(schemaPath, "utf8"));
  const data = loadJsonc(targetPath);

  const ok = ajv.validate(schema, data);
  if (!ok) {
    const msg = ajv.errorsText(ajv.errors, { separator: "\n" });
    throw new Error(`SCHEMA_VALIDATE_FAIL\nschema=${schemaPath}\nfile=${targetPath}\n${msg}`);
  }
}

try {
  validate("tools/schemas/opencode.schema.json", "opencode.jsonc");
  validate("tools/schemas/oh-my-opencode.schema.json", ".opencode/oh-my-opencode.jsonc");
  console.log("config_validate=PASS");
} catch (e) {
  console.error(String(e?.stack || e));
  process.exit(2);
}