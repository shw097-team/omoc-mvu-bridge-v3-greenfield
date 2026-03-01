#!/usr/bin/env node
import fs from 'fs';
import Ajv from 'ajv';
import addFormats from 'ajv-formats';
import { parse } from 'jsonc-parser';

const [schemaPath, configPath] = process.argv.slice(2);

if (!schemaPath || !configPath) {
  console.error('Usage: node opencode_config_validate.mjs <schema.json> <config.jsonc>');
  process.exit(1);
}

try {
  const schema = JSON.parse(fs.readFileSync(schemaPath, 'utf8'));
  const data = parse(fs.readFileSync(configPath, 'utf8'));
  
  const ajv = new Ajv({ allErrors: true, strict: true });
  addFormats(ajv);
  const validate = ajv.compile(schema);
  const ok = validate(data);
  
  if (!ok) {
    console.error('Validation errors:', validate.errors);
    process.exit(2);
  }
  
  process.exit(0);
} catch (err) {
  console.error('Fatal error:', err.message);
  process.exit(2);
}
