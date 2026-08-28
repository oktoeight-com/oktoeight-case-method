# Maintenance and ownership

## Owners

| Responsibility | Owner |
|---|---|
| Accountable owner | Methods & Documentation Maintainer |
| Approval owner for method intent | Chief of Staff |
| Repository code owner | [@jorgenbruntveit](https://github.com/jorgenbruntveit) |
| Website publication | Website Engineer through a separate reviewed change |

The accountable owner maintains document structure, terminology, examples, links, contribution guidance, releases, and documentation checks.

The Chief of Staff must approve changes to method intent. This approval boundary includes scope, severity, response targets, escalation rules, and required fields.

## Review control

All material changes use a pull request. The author must not approve and merge the same material change.

The repository code owner reviews editorial corrections. The Chief of Staff also approves clarifications and method changes. Record approval in the pull request or its linked decision issue.

If reviewers disagree about the work class, use the class with the higher approval requirement. The Chief of Staff decides the final class.

## Work classes

| Work class | Meaning | Required approval |
|---|---|---|
| Editorial correction | Fixes spelling, formatting, a broken link, or wording without changing behavior or meaning. | Accountable owner or delegated documentation reviewer |
| Clarification | Adds an explanation or example without changing required behavior. | Accountable owner and method reviewer |
| Method or policy change | Changes a rule, obligation, exception, threshold, role, scope, or required field. | Chief of Staff |

## Implemented method decisions

- OKT-12: Severity is required top-level metadata before the four CASE attributes.
- OKT-13: CASE covers help, approval, decision, and policy-clarification requests, with explicit exclusions.
- OKT-14: A constrained Action must name its constraint, completed preparation and result, and authority-controlled next step.
- OKT-15: CASE uses approved response targets, calendar rules, response ownership, and escalation paths.

Link each approved decision issue in the implementing pull request.
