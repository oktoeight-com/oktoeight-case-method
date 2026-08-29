# The CASE Method

CASE prepares an outbound request for help, approval, or a decision when a concrete blocker exists. It gives the recipient the goal, prior work, exact barrier, and facts needed to respond.

## Use CASE when

Use CASE when all of these conditions apply:

- You will send the request to a named recipient through a chosen channel.
- You need help, approval, or a decision.
- A specific error, barrier, or unresolved choice blocks or impedes the work.

Do not use CASE for a status update, general discussion, or an idea that has no concrete blocker.

Immediate safety or containment action takes precedence. Take that action first. Prepare the CASE request once the situation is safe or contained.

## The CASE framework

Write the four fields in this order:

| Field | Include |
| --- | --- |
| **C — Context** | The goal, environment, and why the work matters. |
| **A — Action** | Research, attempts, preparation, and the observed result of each action. |
| **S — Symptom** | The exact error, barrier, or unresolved choice. |
| **E — Evidence** | Quoted logs or data, relevant version facts, or reachable artifacts that substantiate the symptom. |

Assign severity from the current impact:

- **S1:** Active production is unavailable, data is at risk, or the issue is safety-critical.
- **S2:** The blocker stops the work.
- **S3:** Work continues despite the blocker.

Severity does not set a response time.

## Required record

Every CASE request contains:

- a one-line **Summary** that states the requested help, approval, or decision;
- the **Recipient**;
- the **Channel**;
- the **Severity**;
- all four CASE fields.

Use this template. Keep Context, Action, Symptom, and Evidence in C/A/S/E order.

```text
Summary: <one-line request>
Recipient: <person or public support destination>
Channel: <email, message, ticket, or other outbound channel>
Severity: <S1, S2, or S3>

Context
<goal, environment, and why>

Action
<research, attempts, preparation, and observed results>

Symptom
<exact error, barrier, or unresolved choice>

Evidence
<quoted logs or data, version facts, or reachable artifacts>
```

## Apply CASE

1. State the concrete blocker and the help, approval, or decision that can resolve it.
2. Select the recipient and channel.
3. Assign severity from the current impact. Do not use urgency as a substitute for impact.
4. Write a one-line summary that tells the recipient what you need.
5. Complete Context, Action, Symptom, and Evidence in order.
6. Check that each evidence item substantiates a statement in the request, then send it.

## Refuse when

Do not send the request until you correct any of these conditions:

- **Missing why:** Context does not explain why the goal matters.
- **No action:** Action contains no research, attempt, preparation, or observed result.
- **Vague symptom:** Symptom does not name the exact error, barrier, or unresolved choice.
- **Unsubstantiated evidence:** Evidence repeats a claim without quoted facts or a reachable artifact.
- **Inflated severity:** The selected severity is higher than the current impact supports.

## Worked example

```text
Summary: Approve PostgreSQL 16 for the reporting service so implementation can continue
Recipient: Priya Nair
Channel: Email
Severity: S2

Context
I am preparing a reporting service on Ubuntu 24.04. The service must accept concurrent writes and restore from a daily backup. I need the database choice before I can finish the schema and migration code.

Action
I tested SQLite 3.45 and PostgreSQL 16.4 with 1,000 writes from 20 concurrent workers. I then restored each database from its backup. SQLite returned lock errors during the write test. PostgreSQL completed both the write test and restore. I also checked the hosting plan and confirmed that PostgreSQL 16 costs 250 NOK per month.

Symptom
Implementation is blocked until you approve either PostgreSQL 16 at 250 NOK per month or SQLite with a reduced concurrent-write requirement.

Evidence
The SQLite result was: `37 of 1,000 writes failed: database is locked`. The PostgreSQL result was: `0 of 1,000 writes failed`. Both restored backups contained all 1,000 records. The current hosting plan lists managed PostgreSQL 16 at `250 NOK/month`.
```

The example is S2 because the unresolved choice stops implementation. Its evidence is present in the request and supports the decision.

## Related methods

- [CORE](https://github.com/oktoeight-com/oktoeight-core-method) defines a bounded project before work starts.
- [FAST](https://github.com/oktoeight-com/oktoeight-fast-method) prepares a meeting that must produce a decision.

## Agent skill

This repository is also a portable [Agent Skill](https://agentskills.io). To install it, copy or clone this repository into the skills directory used by an Agent Skills-compatible client. Keep the directory name `oktoeight-case-method` so it matches the skill name in `SKILL.md`.

This skill works alone. To combine methods, install the [CORE Method](https://github.com/oktoeight-com/oktoeight-core-method) and [FAST Method](https://github.com/oktoeight-com/oktoeight-fast-method) as sibling skill directories. Each skill routes work to another installed Oktoeight skill only when that method fits better.

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) to propose a change.

## License

The CASE Method is available under the [MIT License](LICENSE).
