---
id: 0001
title: Add maintenance controls
created: 2026-08-28
started: 2026-08-28
closed:
---

## Problem

The CASE Method repository has no named ownership, structured issue intake, pull-request control, or automated documentation checks. Approved formatting defects also remain open.

## Scope

Add the maintenance controls approved in OKT-5. Repair the approved changelog defect from OKT-3. Add related-guidance navigation and local and pull-request documentation checks.

Implement the minimum valid Action rule approved in OKT-14. Do not add constrained-case examples until OKT-13 has a final scope decision.

Do not change severity, response targets, approval scope, method scope, escalation rules, or required fields. Keep each semantic finding linked to its separate decision issue.

## Acceptance criteria

- [x] The repository names its accountable and approval owners.
- [x] Issue forms and the pull-request template require a work class, validation, and approval.
- [x] CODEOWNERS or an equivalent reviewed control exists.
- [x] Local documentation checks pass.
- [ ] Pull-request documentation checks pass.
- [x] Each semantic finding links to a separate decision issue.
- [x] The Action guidance and Integrity Check implement the rule and refusal text approved in OKT-14.
- [x] No new constrained-case example precedes the final OKT-13 scope decision.

## Outcome

The branch adds the approved maintenance controls, fixes the Unreleased heading, and adds neutral related-guidance links. It also implements the minimum valid Action rule approved in OKT-14.

The scope, severity, and response-target findings remain pending in OKT-12, OKT-13, and OKT-15. No constrained-case examples were added because OKT-13 remains in review. Remote pull-request validation remains pending until the branch is pushed and a pull request is opened.

## Verification

- `git diff --check` passed on 2026-08-28.
- `./scripts/check-docs.sh` passed on 2026-08-28.
- `CHECK_EXTERNAL_LINKS=1 ./scripts/check-docs.sh` passed on 2026-08-28.
