# Contributing to The CASE Method

We welcome improvements to the CASE Method that align with the following design and contribution standards.

## Reporting Issues

- Use the editorial-defect form for spelling, formatting, link, or wording corrections that do not change meaning.
- Use the method-proposal form for clarifications or changes to rules, roles, scope, severity, response targets, escalation, or required fields.
- Classify the work, state the validation, and name the required approval.
- Do not implement a method or policy proposal before the approval owner records a decision.

## Pull Request Process

1. **Fork** the repository and create your branch from `main`.
2. **Make your changes**. Keep them minimalist.
3. Run `./scripts/check-docs.sh`.
4. **Submit a Pull Request** with its issue, work class, validation, rollback, and required approval.

Read [MAINTAINERS.md](MAINTAINERS.md) before you propose a change. It defines ownership, review controls, and the approval boundary for method intent.

## The "Power of Three" Rule

Symmetry reduces cognitive load. The documentation must adhere to the rule of three:

1.  **Three Tenets:** Every "Core Philosophy" section must contain exactly three immutable tenets.
2.  **Three Alternatives:** Every "vs. The Alternatives" section must compare the method to exactly three existing frameworks.
3.  **Three-Noun Focus:** Every row in an "Attribute Table" must have a "Focus" column containing a three-noun list (e.g., "Goal, environment, reason").

## Structural Blueprint (The Required Hierarchy)

To ensure a uniform user experience, the documentation must follow this exact heading sequence:

1.  `# The CASE Method` (H1)
2.  `## Core Philosophy` (H2)
3.  `## Why CASE?` (H2)
4.  `## The CASE Framework` (H2)
5.  `## Operating Logic` (H2)
6.  `## Data Structure` (H2)
7.  `## Implementation` (H2)
8.  `## Common Questions` (H2)

The README can include reference sections after this required sequence. These sections include Related Guidance, Abbreviations, Contributing, and License.

## Component Standards

### 1. Responsibility Model
Include a sub-header `### Responsibility Model` under the `Framework` or `Operating Logic` section. Use a two-column table: `Role | Responsibility`.

### 2. The Integrity Check
The documentation must include `### The CASE Integrity Check`. Use a bulleted list with **If/Then** logic:
- `* **If [Condition]**: [Consequence]`

### 3. Data Object Naming
Refer to the core data structure as **"The CASE Data Object (Structured Text)"**.

## Visual Identity
- **Minimalist Markdown:** Use standard GitHub Flavored Markdown only.
- **No Emojis:** Maintain a professional, clinical aesthetic.
- **Bold Keys:** Always bold the key term or abbreviation in the first column of a table.

## Footers
The Abbreviations, Contributing, and License sections must maintain consistent phrasing and table styling within the documentation.
