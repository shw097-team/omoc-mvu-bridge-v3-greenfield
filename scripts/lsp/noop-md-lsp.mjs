#!/usr/bin/env node
/**
 * noop-md-lsp.mjs
 *
 * Minimal stdio LSP server for Markdown.
 * Purpose: make `lsp_diagnostics` runnable for .md/.mdx in this repo environment.
 * Behavior: always publishes empty diagnostics.
 *
 * No external dependencies.
 */

let shutdownRequested = false;

function writeMessage(msg) {
  const json = JSON.stringify(msg);
  const payload = Buffer.from(json, "utf8");
  const header = Buffer.from(`Content-Length: ${payload.length}\r\n\r\n`, "utf8");
  process.stdout.write(Buffer.concat([header, payload]));
}

function respond(id, result) {
  writeMessage({ jsonrpc: "2.0", id, result });
}

function respondError(id, code, message) {
  writeMessage({ jsonrpc: "2.0", id, error: { code, message } });
}

function publishEmptyDiagnostics(uri) {
  if (!uri) return;
  writeMessage({
    jsonrpc: "2.0",
    method: "textDocument/publishDiagnostics",
    params: { uri, diagnostics: [] },
  });
}

function onMessage(msg) {
  if (!msg || typeof msg !== "object") return;
  const { id, method, params } = msg;

  // Requests
  if (method === "initialize") {
    // Minimal capabilities: sync full document.
    return respond(id, {
      capabilities: {
        textDocumentSync: 1,
      },
    });
  }

  if (method === "shutdown") {
    shutdownRequested = true;
    return respond(id, null);
  }

  // Notifications
  if (method === "exit") {
    process.exit(shutdownRequested ? 0 : 1);
  }

  if (method === "textDocument/didOpen") {
    return publishEmptyDiagnostics(params?.textDocument?.uri);
  }

  if (method === "textDocument/didChange") {
    return publishEmptyDiagnostics(params?.textDocument?.uri);
  }

  if (method === "textDocument/didClose") {
    return publishEmptyDiagnostics(params?.textDocument?.uri);
  }

  // Any other request: respond method not found.
  if (id !== undefined) {
    return respondError(id, -32601, `Method not found: ${String(method)}`);
  }
}

let buf = Buffer.alloc(0);

function tryParse() {
  while (true) {
    const sep = buf.indexOf("\r\n\r\n");
    if (sep === -1) return;
    const header = buf.slice(0, sep).toString("utf8");
    const m = header.match(/Content-Length:\s*(\d+)/i);
    if (!m) {
      // Invalid header; drop it.
      buf = buf.slice(sep + 4);
      continue;
    }
    const len = Number(m[1]);
    const total = sep + 4 + len;
    if (buf.length < total) return;
    const body = buf.slice(sep + 4, total).toString("utf8");
    buf = buf.slice(total);
    try {
      onMessage(JSON.parse(body));
    } catch {
      // ignore malformed JSON
    }
  }
}

process.stdin.on("data", (chunk) => {
  buf = Buffer.concat([buf, chunk]);
  tryParse();
});

process.stdin.on("end", () => {
  process.exit(0);
});
