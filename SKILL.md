---
name: oktoeight-case-method
description: Draft or review a paste-ready CASE request for help, approval, or a decision when a specific blocker exists. Use when an outbound request needs Context, Action, Symptom, Evidence, and impact-based severity.
---

# CASE Method

Prepare a complete outbound request that a recipient can act on. Preserve the CASE field order and classify severity from current impact.

## Invocation and scope

Use this skill when the user asks to create, revise, or review a CASE request, help request, support ticket, escalation, approval request, or decision request, and all of these conditions apply:

- The request will go to a named person or public support destination through a chosen channel.
- The sender needs help, approval, or a decision.
- A specific error, barrier, or unresolved choice blocks or impedes the work.

Do not use CASE for a status update, a general discussion, or an idea with no concrete blocker.

Immediate safety or containment action takes precedence. If the situation is not safe or contained, instruct the user to take that action first. Prepare the CASE request only after the situation is safe or contained.

## Required inputs

Obtain these facts from the user or the supplied material:

- the requested help, approval, or decision;
- the recipient;
- the outbound channel;
- the current impact needed to assign S1, S2, or S3;
- the goal, environment, and reason the work matters;
- the research, attempts, or preparation already completed, with the observed result of each action;
- the exact error, barrier, or unresolved choice;
- quoted logs or data, relevant version facts, or reachable artifacts that substantiate the symptom.

Do not invent missing actions, results, impact, evidence, recipients, or channels. Ask only for the facts needed to complete or correct the record.

## Severity

Assign one level from current impact:

- **S1:** Active production is unavailable, data is at risk, or the issue is safety-critical.
- **S2:** The blocker stops the work.
- **S3:** Work continues despite the blocker.

Use S1 when any S1 condition applies. Otherwise, use S2 when the blocker stops the work and S3 when work continues. Do not use urgency as a substitute for impact. Severity does not set a response time.

## Procedure

1. Check for an immediate safety or containment need. Stop request preparation until the situation is safe or contained.
2. Confirm that the request is outbound, asks for help, approval, or a decision, and concerns a concrete blocker.
3. State the concrete blocker and the help, approval, or decision that can resolve it.
4. Select the recipient and channel.
5. Assign severity from current impact by using the S1, S2, and S3 meanings above.
6. Write a one-line Summary that states the requested help, approval, or decision.
7. Write the four fields in this exact order:
   - **Context:** State the goal, environment, and why the work matters.
   - **Action:** State the research, attempts, or preparation and the observed result of each action.
   - **Symptom:** State the exact error, barrier, or unresolved choice.
   - **Evidence:** Quote logs or data, give relevant version facts, or identify reachable artifacts that substantiate the symptom.
8. Check each evidence item against a statement in the request. Evidence must substantiate that statement rather than repeat it as an unsupported claim.
9. Apply every refusal check below.
10. Return the completed record in the output format below. It must be ready to paste into the selected channel.

## Refusal behavior

Do not produce a CASE request when there is no concrete blocker or when the requested output is only a status update, general discussion, or unblocked idea. State briefly why CASE does not apply. Route the work only when a related installed skill fits, as defined below.

Do not finalize or present a request as ready to send until all of these conditions are corrected:

- **Missing why:** Context does not explain why the goal matters.
- **No action:** Action contains no research, attempt, preparation, or observed result.
- **Vague symptom:** Symptom does not name the exact error, barrier, or unresolved choice.
- **Unsubstantiated evidence:** Evidence repeats a claim without quoted facts or a reachable artifact.
- **Inflated severity:** The selected severity is higher than the current impact supports.

When a condition fails, name the failed condition and ask for the specific correction. Do not fabricate a correction. If the user asks for a higher severity than the impact supports, use the supported severity or refuse to mark the request ready until the severity is corrected.

## Output contract

Return the final request as plain text in this exact structure and field order:

```text
Summary: [one-line request]
Recipient: [person or public support destination]
Channel: [email, message, ticket, or other outbound channel]
Severity: [S1, S2, or S3]

Context
[goal, environment, and why]

Action
[research, attempts, preparation, and observed results]

Symptom
[exact error, barrier, or unresolved choice]

Evidence
[quoted logs or data, version facts, or reachable artifacts]
```

Replace every bracketed instruction with concrete content. Keep Context, Action, Symptom, and Evidence in C/A/S/E order. Do not add response-time promises based on severity. Do not add commentary inside the record. Unless the user requests another format, return only the paste-ready record after all checks pass.

## Conditional routing

CASE is complete and usable without any other skill. Never require a sibling skill to prepare a valid CASE request.

Use another installed Oktoeight skill only when its method fits the requested deliverable better:

- Use `oktoeight-core-method` when the user needs to define a bounded project before work starts and is not preparing an outbound request about a concrete blocker.
- Use `oktoeight-fast-method` when the user needs to prepare a meeting that must produce a decision and is not preparing an outbound request about a concrete blocker.

If the better-fitting sibling skill is not installed, do not pretend to run it. Explain that CASE does not apply, name the better-fitting skill, and provide no invented output from that method.
