# The CASE Method

The CASE Method is a universal framework for requesting help, approval, or decision-making. It is a minimalist philosophy that prioritizes context, actionable details, and respect for asynchronous communication.

## Core Philosophy

We believe **"The Question is the Interface."**

Whether you are debugging code, fixing a stuck valve, requesting budget, or clarifying policy, the quality of the answer is strictly determined by the quality of the inputs. CASE is built on two immutable tenets:

1.  **Structure over Slogan:** "Asking nicely" is not enough. You must build a structured case for why you need assistance.
2.  **Context over Speed:** A fast, vague question creates slow, frustrating answers. We prioritize high-context, asynchronous "dumps" over real-time chatter.

## The CASE Framework

CASE stands for **C**ontext, **A**ction, **S**ymptom, and **E**vidence. These four attributes are required for any valid request:

| Attribute | Question | Focus |
|-----------|----------|-------|
| **C**ontext | *What are you trying to do?* | The Goal, the environment, the reason. |
| **A**ction | *What did you try?* | The Attempt, the self-service effort. |
| **S**ymptom | *What happened?* | The Barrier, the error message, the leak, the noise. |
| **E**vidence | *Can you prove it?* | The Details, logs, screenshots, photos, serial numbers. |

### Integrity Check (The 5-Minute Rule)
Before hitting send, perform a final integrity check:

*   **If you cannot fill out one of the rows:** You have not researched enough to ask.
*   **If your "Action" row is empty:** You are asking someone else to do your work.

## Why CASE?

Standard help requests often suffer from the "Lazy Question" anti-pattern. CASE uses a **Responsibility Model** to expose where the work belongs:

*   **Lazy Question:** "It's broken." -> Transfers all cognitive load to the helper.
*   **CASE Question:** "Here is the situation, the blockage, and the evidence." -> Keeps ownership with the asker, enabling the helper to unblock immediately.

### Why a Framework?

While there are many excellent guides on "how to ask," there has never been a formal, format-agnostic **framework** for structured requests. CASE was built to fill this void. It is directly inspired by:

*   **[How To Ask Questions The Smart Way](https://github.com/selfteaching/How-To-Ask-Questions-The-Smart-Way/blob/master/How-To-Ask-Questions-The-Smart-Way.md)** by Eric Steven Raymond.
*   **[How to ask for help](https://howtoaskfor.help/)** by draganczukp.

CASE unifies these philosophies into a framework that transitions from "reading a guide" to "executing a process."

## Implementation

The CASE Method is format-agnostic. It applies to Slack messages, Jira tickets, and email threads equally.

### Example 1: Software

> **Context:** I am trying to deploy the `feature-login` branch to staging to verify the new Single Sign-On (SSO) flow.
> **Action:** I ran `npm run deploy:staging` locally and verified that my IAM user has the `s3:PutObject` permission. I also confirmed the destination bucket exists via the AWS CLI.
> **Symptom:** The build fails at the "Upload to S3" step with a 403 Forbidden error.
> **Evidence:** See attached build log `error_log.txt`. The specific error is `AccessDenied: Access Denied` on line 45.

### Example 2: Hardware

> **Context:** I am trying to calibrate the position transmitter on Control Valve V-101 (Steam Supply) using a 475 Field Communicator.
> **Action:** I performed the auto-tune sequence and verified the supply air is stable at 6 bar. I also hooked up a Fluke 789 to measure the loop current.
> **Symptom:** The valve moves to 50% physically, but the feedback signal reads 14.5mA (approx 65%) instead of 12mA. It fails the linearity check with a "Drive Signal Saturation" error.
> **Evidence:** See photo of the communicator screen showing the error code and the hysteresis graph.

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