# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/), and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [1.1.0] - 2026-08-29

### Added
- Added a standalone Agent Skill for applying the CASE Method in Agent Skills-compatible clients.

## [1.0.0] - 2026-08-29

### Changed
- Limited CASE to outbound requests for help, approval, or a decision when a concrete blocker exists.
- Defined the required request record, C/A/S/E field order, and evidence standard.
- Defined severity by current impact and put immediate safety or containment action before the request.
- Replaced the previous examples with a self-contained S2 approval example.
- Simplified contribution requirements to focus on clear and reproducible changes.

### Removed
- Removed response targets and role-based responsibility rules.

## [0.2.0] - 2026-01-04

### Added
- Added "Operating Logic", "Data Structure", and "Responsibility Model" sections to README.
- Added comprehensive structural standards (Power of Three, 8-Point Hierarchy) to `CONTRIBUTING.md`.

### Changed
- Refactored `CONTRIBUTING.md` to align with CASE method terminology and framework standards.
- Standardized README structure, replacing blockquotes with tables for examples.
- Updated "Integrity Check", "Severity Levels", and "Glossary" in README.
- Update copyright year to 2026.

### Fixed
- Updated author link in documentation.
- Improved readability formatting for examples.

## [0.1.0] - 2025-12-28

### Added
- Initial release of **The CASE Method** documentation.
- Core framework definition: **Context**, **Action**, **Symptom**, **Evidence**.
- "Why CASE?" rationale, comparing structured requests vs. "lazy questions".
- Responsibility Model explanation to clarify ownership of technical requests.
- Implementation examples for both Software (debugging) and Hardware (instrumentation).
- "Abbreviations" reference table in README.
- Contribution guidelines in `CONTRIBUTING.md`.

[Unreleased]: https://github.com/oktoeight-com/oktoeight-case-method/compare/v1.1.0...HEAD
[1.1.0]: https://github.com/oktoeight-com/oktoeight-case-method/compare/v1.0.0...v1.1.0
[1.0.0]: https://github.com/oktoeight-com/oktoeight-case-method/compare/v0.2.0...v1.0.0
[0.2.0]: https://github.com/oktoeight-com/oktoeight-case-method/compare/v0.1.0...v0.2.0
[0.1.0]: https://github.com/oktoeight-com/oktoeight-case-method/releases/tag/v0.1.0
