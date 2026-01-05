# The CASE Method

The CASE Method is a universal framework for requesting help, approval, or decision-making. It is a minimalist philosophy that prioritizes context, actionable details, and respect for asynchronous communication.

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

CASE stands for **C**ontext, **A**ction, **S**ymptom, and **E**vidence. These four attributes are required for any valid request:

| Attribute | Question | Focus |
|-----------|----------|-------|
| **C**ontext | *What are you trying to do?* | Goal, environment, reason. |
| **A**ction | *What did you try?* | Attempt, research, results. |
| **S**ymptom | *What happened?* | Barrier, error, behavior. |
| **E**vidence | *Can you prove it?* | Logs, screenshots, data. |

### Responsibility Model

| Role | Responsibility |
| :--- | :--- |
| **Asker** | Research, structure, and evidence gathering. |
| **Responder** | Unblocking, decision-making, and approval. |

## Operating Logic

### Severity Levels
To prevent "everything is urgent" fatigue, CASE requires a declared severity:

*   **S1 (Critical):** System down, safety hazard, or blocked production. Requires immediate interrupt.
*   **S2 (Blocker):** Progress halted for one person/team. Requires same-day response.
*   **S3 (Normal):** Efficiency or cosmetic issue. Adhere to standard Service Level Agreements (SLAs).

### The CASE Integrity Check
Before hitting send, perform a final integrity check:

* **If you cannot fill out one of the rows:** You have not researched enough to ask.
* **If your "Action" row is empty:** You are asking someone else to do your work.
* **If the Evidence is "See attached" without a summary:** You are increasing the helper's cognitive load.

## Data Structure

The CASE Method relies on **The CASE Data Object (Structured Text)**: a text block (email, ticket, or chat message) containing the four keys.

## Implementation

The CASE Method is format-agnostic. It applies to messages, tickets, and email threads equally.

### Example 1: Software

| Attribute | Detail |
| :--- | :--- |
| **Context** | I am trying to deploy the `feature-login` branch to staging to verify the new Single Sign-On (SSO) flow. |
| **Action** | I ran `npm run deploy:staging` locally and verified that my Identity and Access Management (IAM) user has the `s3:PutObject` permission. I also confirmed the destination bucket exists via the AWS Command Line Interface (CLI). |
| **Symptom** | The build fails at the "Upload to S3" step with a 403 Forbidden error. |
| **Evidence** | See attached build log `error_log.txt`. The specific error is `AccessDenied: Access Denied` on line 45. |

### Example 2: Hardware

| Attribute | Detail |
| :--- | :--- |
| **Context** | I am trying to calibrate the position transmitter on Control Valve V-101 (Steam Supply) using a 475 Field Communicator. |
| **Action** | I performed the auto-tune sequence and verified the supply air is stable at 6 bar. I also hooked up a Fluke 789 to measure the loop current. |
| **Symptom** | The valve moves to 50% physically, but the feedback signal reads 14.5mA (approx 65%) instead of 12mA. It fails the linearity check with a "Drive Signal Saturation" error. |
| **Evidence** | See photo of the communicator screen showing the error code and the hysteresis graph. |

## Common Questions

*   **"But what if I just need a quick fix?"**
    *   "Quick fixes" without context are dangerous. CASE forces verification before action. If it is truly quick, writing the CASE will take 2 minutes.

*   **"Who decides the Severity?"**
    *   The Asker sets it initially, but the Responder has the right to downgrade it with cause. If you mark a typo as **S1 (Critical)**, you lose the trust required for the next real emergency.

*   **"Can't I just phone someone?"**
    *   Verbal requests vanish. Written requests persist. You can phone *after* sending the CASE to alert them, but the artifact must exist to allow for asynchronous debugging and future reference.

## Abbreviations

| Abbreviation | Definition |
|--------------|------------|
| **AWS** | Amazon Web Services |
| **CASE** | Context, Action, Symptom, Evidence |
| **CLI** | Command Line Interface |
| **IAM** | Identity and Access Management |
| **SBAR** | Situation, Background, Assessment, Recommendation |
| **SLA** | Service Level Agreement |
| **SSO** | Single Sign-On |

## Contributing

We welcome improvements that align with our minimalist philosophy. Please see [CONTRIBUTING.md](CONTRIBUTING.md) for details on how to propose changes.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.