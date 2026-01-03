# The CASE Method

The CASE Method is a universal framework for requesting help, approval, or decision-making. It is a minimalist philosophy that prioritizes context, actionable details, and respect for asynchronous communication.

## Core Philosophy

We believe **"The Question is the Interface."**

Whether you are debugging code, fixing a stuck valve, requesting budget, or clarifying policy, the quality of the answer is strictly determined by the quality of the inputs. CASE is built on two immutable tenets:

1.  **Structure over Slogan:** "Asking nicely" is not enough. You must build a structured case for why you need assistance.
2.  **Context over Speed:** A fast, vague question creates slow, frustrating answers. We prioritize high-context, asynchronous "dumps" over real-time chatter.

## Why CASE?

Standard help requests suffer from the "Lazy Question" anti-pattern. CASE uses a **Responsibility Model** to expose where the work belongs:

| Approach | Statement | Impact |
| :--- | :--- | :--- |
| **Lazy Question** | "It's broken." | Transfers all cognitive load to the helper. |
| **CASE Question** | "Here is the situation, the blockage, and the evidence." | Keeps ownership with the asker, enabling the helper to unblock immediately. |

### vs. The Alternatives

| Framework | Focus | Blind Spot | CASE Solution |
| :--- | :--- | :--- | :--- |
| **SBAR** | Clinical Handoff | Assumes asker knows the solution ("Recommendation"). | Optimized for the *unknown* ("Symptom"). |


## The CASE Framework

CASE stands for **C**ontext, **A**ction, **S**ymptom, and **E**vidence. These four attributes are required for any valid request:

| Attribute | Question | Focus |
|-----------|----------|-------|
| **C**ontext | *What are you trying to do?* | The Goal, the environment, the reason. |
| **A**ction | *What did you try?* | The Attempt, the self-service effort. |
| **S**ymptom | *What happened?* | The Barrier, the error message, the leak, the noise. |
| **E**vidence | *Can you prove it?* | The Details, logs, screenshots, photos, serial numbers. |

## Operating Logic

### Severity Levels
To prevent "everything is urgent" fatigue, CASE requires a declared severity:

*   **S1 (Critical):** System down, safety hazard, or blocked production. Requires immediate interrupt.
*   **S2 (Blocker):** Progress halted for one person/team. Requires same-day response.
*   **S3 (Normal):** Efficiency or cosmetic issue. Adhere to standard SLAs.

## Data Structure

The CASE Request is a structured text block (email, ticket, or chat message) containing the four keys.

### Integrity Check (The 5-Minute Rule)
Before hitting send, perform a final integrity check:

*   **If you cannot fill out one of the rows:** You have not researched enough to ask.
*   **If your "Action" row is empty:** You are asking someone else to do your work.

## Implementation

The CASE Method is format-agnostic. It applies to messages, tickets, and email threads equally.

### Example 1: Software

| Attribute | Detail |
| :--- | :--- |
| **Context** | I am trying to deploy the `feature-login` branch to staging to verify the new Single Sign-On (SSO) flow. |
| **Action** | I ran `npm run deploy:staging` locally and verified that my IAM user has the `s3:PutObject` permission. I also confirmed the destination bucket exists via the AWS CLI. |
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
| **SSO** | Single Sign-On |

## Contributing

We welcome improvements that align with our minimalist philosophy. Please see [CONTRIBUTING.md](CONTRIBUTING.md) for details on how to propose changes.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.