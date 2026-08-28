# The CASE Method

The CASE Method structures outbound requests for help, approval, a decision, or policy clarification. Use it when another person must act or give an authoritative answer before work can proceed.

CASE structures the request. It does not replace the workflow or record that captures the resulting action, approval, decision, or policy.

## Core Philosophy

We believe **"The Question is the Interface."**

Whether you are debugging code, fixing a stuck valve, requesting budget, or clarifying policy, the quality of the answer is strictly determined by the quality of the inputs. CASE is built on three immutable tenets:

1.  **Structure over Slogan:** "Asking nicely" is not enough. You must build a structured case for why you need assistance.
2.  **Context over Speed:** A fast, vague question creates slow, frustrating answers. We prioritize high-context, asynchronous "dumps" over real-time chatter.
3.  **Artifacts over Conversations:** A request must produce a tangible artifact (ticket, Pull Request (PR), doc), not just a conversation thread.

## Why CASE?

Standard help requests suffer from the "Lazy Question" anti-pattern. CASE uses a **Responsibility Model** to expose where the work belongs:

| Approach | Statement | Impact |
| :--- | :--- | :--- |
| **Lazy Question** | *"It's broken."* | Transfers all cognitive load to the helper. |
| **CASE Question** | *"Here is the situation, the blockage, and the evidence."* | Keeps ownership with the asker, enabling the helper to unblock immediately. |

### vs. The Alternatives

| Framework | Focus | Blind Spot | CASE Solution |
| :--- | :--- | :--- | :--- |
| **SBAR** | Clinical Handoff (Situation, Background, Assessment, Recommendation (SBAR)) | Assumes asker knows the solution ("Recommendation"). | Optimized for the *unknown* ("Symptom"). |
| **Email Chain** | Threaded Conversation | Buried details; hard to track state. | **Structure** forces key details to the top. |
| **Drive-by** | Verbal Speed | Context loss; interrupts flow. | **Asynchronous** written default. |

## The CASE Framework

CASE stands for **C**ontext, **A**ction, **S**ymptom, and **E**vidence. These four attributes are required for any valid request. Severity is required metadata, not a fifth CASE attribute.

| Attribute | Question | Focus |
|-----------|----------|-------|
| **C**ontext | *What are you trying to do, and why?* | Goal, environment, reason. |
| **A**ction | *What preparation did you complete?* | Checks, options, results. |
| **S**ymptom | *What remains unresolved?* | Barrier, gate, choice. |
| **E**vidence | *What supports the request?* | Logs, artifacts, data. |

CASE covers four request types:

1. **Help request:** Support, troubleshooting, escalation, or a hand-off that asks another person to remove a barrier.
2. **Approval request:** Authorization for a specific action, artifact, exception, expenditure, or change.
3. **Decision request:** A choice between defined options or resolution of a stated trade-off.
4. **Policy-clarification request:** An authoritative interpretation of missing, ambiguous, or conflicting guidance for a concrete situation.

Escalation is a help request, not a separate request type.

| Request type | Action | Symptom | Evidence |
| :--- | :--- | :--- | :--- |
| **Help** | Investigation, safe checks, or a prepared hand-off. | The observed failure or barrier. | Logs, measurements, screenshots, or versions. |
| **Approval** | A prepared proposal, draft, exception, or change with its checks. | The specific approval gate. | The draft artifact, risk, cost, or rollback data. |
| **Decision** | Options considered and their results or trade-offs. | The unresolved choice or trade-off. | Option analysis, measurements, risk, or cost data. |
| **Policy clarification** | Sources reviewed and the ambiguity, gap, or conflict found. | The exact interpretation that remains unresolved. | Cited policy text and the concrete situation. |

### Responsibility Model

| Role | Responsibility |
| :--- | :--- |
| **Asker** | Research, structure, and evidence gathering. |
| **Responder** | Unblocking, decision-making, and approval. |

### Constrained Action

The Action field does not require an unsafe, unauthorized, or policy-setting act. A constrained Action is valid only when it:

1. Names the safety, authority, or policy constraint.
2. Records a completed preparation step and its result.
3. Names the next step controlled by the responsible authority.

The preparation step must reduce the responder's discovery work. Planning to investigate later does not satisfy this rule.

## Operating Logic

### Severity levels

The asker must declare Severity before submission. The responder can change it only with a recorded reason.

| Severity | Use when | Response target | Escalation |
| :--- | :--- | :--- | :--- |
| **S1 (Critical)** | An active safety hazard, production outage, revenue block, or deadline risk today requires an immediate interrupt. | No guaranteed acknowledgement time applies until Oktoeight has a staffed on-call rota. Act on a best-effort basis. | Notify the named recipient and Chief of Staff through the fastest available channel after posting the written CASE artifact. If no acknowledgement arrives within 15 elapsed minutes, escalate to the human company owner. Contact local emergency services first for imminent danger. |
| **S2 (Blocker)** | Work cannot proceed, but no S1 condition applies. | Acknowledge, validate severity, and name an owner or next action within 4 business hours. | At a target miss, escalate to the Chief of Staff. After 1 business day without acknowledgement, escalate to the human company owner. Reclassify immediately if the impact becomes an S1 condition. |
| **S3 (Normal)** | Work continues and a response within days is acceptable. | Acknowledge, validate severity, and name an owner or next action within 2 business days. | At a target miss, escalate to the Chief of Staff for normal triage. Do not escalate automatically to the human company owner unless the impact or severity changes. |

A response does not mean resolution. It means acknowledgement, severity validation, and a named owner or next action.

Business hours are Monday through Friday, 09:00-17:00 in `Europe/Berlin`. Daylight-saving changes follow that IANA time zone. Exclude Berlin public holidays and documented company-wide closure days. A business-hour clock carries time outside this window to the next business window. An elapsed clock runs continuously.

The response clock starts when the complete written CASE artifact reaches the approved channel. The recipient can pause the clock by identifying a missing CASE field. The clock resumes when the asker supplies that field. A safety hazard or active production failure still requires immediate escalation when evidence is incomplete.

Every request must name one recipient. A team or queue is valid only when it has a named accountable owner. The named recipient owns the response. A severity change uses the original receipt time, so reclassification cannot reset an overdue request.

### The CASE Integrity Check
Before hitting send, perform a final integrity check:

* **If you cannot fill out one of the rows:** You have not researched enough to ask.
* **If your "Action" row is empty:** You are asking someone else to do your work.
* **If a constrained Action omits the constraint, completed preparation and result, or authority-controlled next step:** Return: "CASE refusal: Action does not show preparation within the asker's control. State the constraint, the preparation completed and its result, and the authority-controlled next step."
* **If the Evidence is "See attached" without a summary:** You are increasing the helper's cognitive load.
* **If Severity, Recipient, or Channel is missing:** The CASE object is incomplete.
* **If the request is an approval, decision, or policy clarification:** Verify that Symptom names the exact gate, choice, ambiguity, gap, or conflict.
* **If Evidence does not support the request type:** Ask for the relevant logs, measurements, draft, option analysis, risk or cost data, or cited policy text.
* **If an approval, decision, or interpretation is made:** Link the CASE request to the authoritative outcome record.

## Data Structure

The CASE Method relies on **The CASE Data Object (Structured Text)**. It is a text block in an email, ticket, or chat message.

The canonical content has five required fields in this order:

1. **Severity:** `S1 (Critical)`, `S2 (Blocker)`, or `S3 (Normal)`.
2. **Context:** The intended outcome, environment or constraints, stakeholders, and reason.
3. **Action:** The completed investigation, checks, consultation, options, or draft, with results.
4. **Symptom:** The exact unresolved barrier or decision point.
5. **Evidence:** The material that lets the recipient verify and respond.

The object also requires delivery metadata:

- **Recipient:** One person, or a team or queue with a named accountable owner.
- **Channel:** The approved delivery channel.

Use this minimum template:

```markdown
**Severity:** S1 (Critical) | S2 (Blocker) | S3 (Normal)

**Context:** What are you trying to do, and why?

**Action:** What preparation did you complete, and what was the result?

**Symptom:** What exact barrier or decision point remains unresolved?

**Evidence:** Which logs, screenshots, measurements, versions, drafts, analysis, or policy text support the request?

**Recipient:** Who must respond?

**Channel:** Where will you send the request?
```

## Implementation

The CASE Method is format-agnostic. It applies to messages, tickets, and email threads equally.

### Example 1: Help request

| Attribute | Detail |
| :--- | :--- |
| **Severity** | S2 (Blocker) |
| **Context** | I need to function-test a live actuator after a control fault. The equipment is still in service and the area is not isolated. |
| **Action** | I did not cycle the live actuator because the area is not isolated. I reviewed the wiring diagram and collected the controller logs. An authorized operator must isolate the equipment and approve the proposed function test. |
| **Symptom** | The actuator test cannot proceed safely until an authorized operator isolates the equipment and approves the test. |
| **Evidence** | The attached wiring diagram, controller logs, and test plan show the fault and the proposed safe test. |
| **Recipient** | Authorized operator |
| **Channel** | Operations issue tracker |

### Example 2: Approval request

| Attribute | Detail |
| :--- | :--- |
| **Severity** | S3 (Normal) |
| **Context** | I need to update a protected repository configuration so the documentation check runs on each pull request. |
| **Action** | I confirmed that my account has read-only access and prepared the configuration change with a rollback step. The repository owner must approve and apply the protected-branch change. |
| **Symptom** | The protected-branch rule requires repository-owner approval before the change can be applied. |
| **Evidence** | The attached draft shows the proposed setting, expected check name, and rollback step. |
| **Recipient** | Repository owner |
| **Channel** | Pull request |

### Example 3: Decision request

| Attribute | Detail |
| :--- | :--- |
| **Severity** | S3 (Normal) |
| **Context** | I must select a connector for a prototype that reads ten temperature values each minute. The choice affects delivery time and future maintenance. |
| **Action** | I compared the two supported connectors against cost, setup time, and maintenance. Connector A costs less. Connector B uses the existing company library and removes one custom adapter. |
| **Symptom** | The unresolved choice is lower initial cost versus lower maintenance effort. The project owner must select one option. |
| **Evidence** | The linked comparison table lists cost, setup time, library support, and the recommended option. |
| **Recipient** | Project owner |
| **Channel** | Decision issue |

### Example 4: Policy-clarification request

| Attribute | Detail |
| :--- | :--- |
| **Severity** | S3 (Normal) |
| **Context** | I need to prepare a complete CASE example for an approval request. The repository guidance must define whether this request type is in scope. |
| **Action** | I reviewed the CASE README and contribution guide. The README includes approval requests, but the examples only cover troubleshooting. The method owner must decide whether approval requests remain in scope. |
| **Symptom** | The scope statement and examples give conflicting guidance about approval requests. |
| **Evidence** | The linked excerpts show the scope statement and the troubleshooting-only examples. |
| **Recipient** | Method owner |
| **Channel** | Method decision issue |

### Exclusions

Do not use CASE for:

- routine task assignment or delegation;
- status updates, FYI messages, announcements, or reports with no request for action;
- brainstorming, venting, informal discussion, or advice-seeking without a concrete blocked outcome;
- information lookup that the asker can complete through an available authoritative source;
- routine approvals already captured by a purpose-built workflow, unless an exception, ambiguity, or escalation needs narrative context;
- the final approval, decision record, policy text, or change record;
- emergency containment or immediate safety action when CASE preparation would delay the response; or
- requests that omit required preparation or evidence.

Apply immediate controls first during an emergency. Use CASE to document the follow-up escalation.

## Common Questions

*   **"But what if I just need a quick fix?"**
    *   "Quick fixes" without context are dangerous. CASE forces verification before action. If it is truly quick, writing the CASE will take 2 minutes.

*   **"Who decides the Severity?"**
    *   The Asker sets it initially. The response owner can upgrade or downgrade it with a recorded reason. If you mark a typo as **S1 (Critical)**, you lose the trust required for the next real emergency.

*   **"Can't I just phone someone?"**
    *   Verbal requests vanish. Written requests persist. You can phone *after* sending the CASE to alert them, but the artifact must exist to allow for asynchronous debugging and future reference.

## Related Guidance

- [CORE Method](https://github.com/oktoeight-com/oktoeight-core-method)
- [FAST Method](https://github.com/oktoeight-com/oktoeight-fast-method)
- [Oktoeight company philosophy](https://github.com/oktoeight-com/oktoeight-company-philosophy)

## Abbreviations

| Abbreviation | Definition |
|--------------|------------|
| **AWS** | Amazon Web Services |
| **CASE** | Context, Action, Symptom, Evidence |
| **CLI** | Command Line Interface |
| **IAM** | Identity and Access Management |
| **SBAR** | Situation, Background, Assessment, Recommendation |
| **SSO** | Single Sign-On |

## Contributing

We welcome improvements that align with our minimalist philosophy. Please see [CONTRIBUTING.md](CONTRIBUTING.md) for details on how to propose changes.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
