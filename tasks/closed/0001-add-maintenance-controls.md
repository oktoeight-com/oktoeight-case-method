---
id: 0001
title: Add maintenance controls
created: 2026-08-28
started: 2026-08-28
closed: 2026-08-28
---

## Problem

The CASE Method repository has no named ownership, structured issue intake, pull-request control, or automated documentation checks. Approved formatting defects also remain open.

## Scope

Add the maintenance controls approved in OKT-5. Repair the approved changelog defect from OKT-3. Add related-guidance navigation and local and pull-request documentation checks.

Implement the method decisions approved in OKT-12 through OKT-15. Add only the constrained-case examples retained by the approved OKT-13 scope.

Do not change approval scope beyond the approved decisions. Keep each semantic finding linked to its separate decision issue.

## Acceptance criteria

- [x] The repository names its accountable and approval owners.
- [x] Issue forms and the pull-request template require a work class, validation, and approval.
- [x] CODEOWNERS or an equivalent reviewed control exists.
- [x] Local documentation checks pass.
- [x] Pull-request documentation checks pass.
- [x] Each semantic finding links to a separate decision issue.
- [x] The Action guidance and Integrity Check implement the rule and refusal text approved in OKT-14.
- [x] No new constrained-case example precedes the final OKT-13 scope decision.
- [x] Severity is required top-level metadata in each complete object, template, and example.
- [x] The scope, examples, exclusions, and field meanings implement OKT-13.
- [x] The response targets, clock rules, owners, and escalation paths implement OKT-15.
- [x] No undefined SLA reference remains.

## Outcome

The branch adds the approved maintenance controls, fixes the Unreleased heading, and adds neutral related-guidance links. It implements the Severity, scope, minimum Action, and response-target decisions approved in OKT-12 through OKT-15. Pull request #1 provides the required review path. Chief of Staff approval remains required before merge.

## Verification

- `git diff --check` passed on 2026-08-28.
- `./scripts/check-docs.sh` passed on 2026-08-28.
- `CHECK_EXTERNAL_LINKS=1 ./scripts/check-docs.sh` passed on 2026-08-28.
- `rg -n '\bSLA(s)?\b|service-level agreement' README.md CONTRIBUTING.md MAINTAINERS.md` returned no matches on 2026-08-28.
- The GitHub `Documentation` workflow passed on pull request #1 on 2026-08-28.
