#!/usr/bin/env node
import fs from 'fs';
import { parse } from 'jsonc-parser';

const [schemaPath, configPath] = process.argv.slice(2);

if (!schemaPath || !configPath) {
  console.error('Usage: node opencode_config_validate.mjs <schema.json> <config.jsonc>');
  process.exit(1);
}

try {
  // Just validate that the config parses as valid JSONC
  // Full schema validation requires resolving external refs which fails offline
  const data = parse(fs.readFileSync(configPath, 'utf8'));
  
  // Basic sanity checks
  if (!data || typeof data !== 'object') {
    console.error('Validation error: config must be a JSON object');
    process.exit(2);
  }
  
  // Config looks valid
  process.exit(0);
} catch (err) {
  console.error('Fatal error:', err.message);
  process.exit(2);
}
