# Agent Instructions

Before starting any task in this repository:

1. Run `make agents/sync`. It writes the shared Plus3 IT instructions for this repository's tardigrade-ci version to `.agents/plus3it/AGENTS.md`.
2. Read `.agents/plus3it/AGENTS.md` and follow it together with this file. If the sync fails, tell the user, and don't guess the conventions.

These rules always apply, even without the shared instructions:

- Don't push, open pull requests, publish releases, or apply infrastructure changes unless the user asks. List those steps for a person in your final report.
- Don't edit files under `.agents/plus3it/`; they are generated and overwritten by the sync.

@.agents/plus3it/AGENTS.md

## Repository-specific

### Purpose

This Terraform module creates AWS VPC IPAM resources: an IPAM, its scopes, pools, pool CIDRs, pool CIDR allocations, and a next-CIDR preview. All of it is configured through the single `vpc_ipam` object input, and each part is optional, so the module can be called several times to build a pool hierarchy. It outputs the IPAM (`ipam`), the pools (`pools`), the scopes (`scopes`), and the pool CIDRs (`pool_cidr`).
