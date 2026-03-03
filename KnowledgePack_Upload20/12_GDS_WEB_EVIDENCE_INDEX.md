# 12_GDS_WEB_EVIDENCE_INDEX (SUPPORT-only / driftable / double-source required)
<a id="gds-1200-cover"></a>

- mode: SUPPORT-only
- rule: each driftable claim requires refs>=2 AND domain>=2; otherwise QUARANTINE + TT(DRIFT)
- note: this file is evidence ledger; it must NOT introduce new MUST/不得 norms.

## WE-OMO (OMOC release / flags / compatibility)
<a id="we-omo-0000"></a>

### WE-OMO-REL-001: OMOC release details (version/flags/compat)
<a id="we-omo-rel-001"></a>

- status: ACTIVE
- accessed_at: 2026-03-03T06:22:00Z
- last_verified_at: 2026-03-03T06:22:00Z
- next_probe: 2026-03-10T06:22:00Z
- claim: "OMOC release details require double-source verification (refs>=2, domain>=2)."
- refs:
  - id: W-OMO-REL-01
    domain: repo:omoc-mvu-bridge-v3-greenfield
    url: https://github.com/oh-my-opencode/omoc-mvu-bridge-v3-greenfield
    accessed_at: 2026-03-03T06:22:00Z
  - id: W-OMO-REL-02
    domain: self:AGENTS.md
    url: file://./AGENTS.md (project rules v1.2.1)
    accessed_at: 2026-03-03T06:22:00Z
- notes:
  - "Populate via explicit DRIFT_PROBE run; keep SUPPORT-only."
  - "If refs/domain not satisfied -> keep QUARANTINE + TT(DRIFT)/CR_OPEN-001."

## WE-OMO-IMP (counterfeit / third-party download monitoring)
<a id="we-omo-imp-0000"></a>

### WE-OMO-IMP-001: counterfeit/third-party download sites monitoring
<a id="we-omo-imp-001"></a>

- status: ACTIVE_MONITORING
- scope: "Track known counterfeit/3rd-party download domains + takedown signals"
- refs:
  - id: W-OMO-IMP-01
    domain: UNVERIFIED
    url: UNVERIFIED
    accessed_at: UNVERIFIED
  - id: W-OMO-IMP-02
    domain: UNVERIFIED
    url: UNVERIFIED
    accessed_at: UNVERIFIED
- next_probe: SCHEDULED (see .github/workflows/cr_open_tt_probe.yml)
- notes:
  - "Evidence will remain SUPPORT-only; closure requires monitoring infra + probe cadence."

## WE-MCP (MCP server incidents/vulns drift monitoring)
<a id="we-mcp-0000"></a>

### WE-MCP-SEC-001: MCP server incidents/vulns drift monitoring
<a id="we-mcp-sec-001"></a>

- status: ACTIVE_MONITORING
- refs:
  - id: W-MCP-SEC-01
    domain: UNVERIFIED
    url: UNVERIFIED
    accessed_at: UNVERIFIED
  - id: W-MCP-SEC-02
    domain: UNVERIFIED
    url: UNVERIFIED
    accessed_at: UNVERIFIED
- next_probe: SCHEDULED (see .github/workflows/cr_open_tt_probe.yml)
- notes:
  - "Populate via explicit DRIFT_PROBE; keep SUPPORT-only."
