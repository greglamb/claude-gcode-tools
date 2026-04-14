---
name: health-check
description: |
  Comprehensive project health audit across all layers — build, tests,
  Axiom auditors, and code quality scans for deprecated APIs, unsafe
  concurrency, and SwiftData misuse.
allowed-tools: Read, Bash, Grep, Glob
disable-model-invocation: true
---

# Project health check

Run a full project health check using all available tools.

To run builds and tests: use `xcodebuildmcp` commands if available (`which xcodebuildmcp`), otherwise fall back to `xcodebuild` or `swift build`/`swift test`.

**Build health:**
1. Build the project — report any errors or warnings
2. Run the full test suite — report pass/fail counts

**Axiom audits** (check if Axiom is available by running `/axiom:health-check` — if Claude reports the command is not found, skip this section and note Axiom is not installed):
3. `/axiom:audit concurrency` — check for data races and isolation issues
4. `/axiom:audit memory` — scan for retain cycles and leaks
5. `/axiom:health-check` — run all relevant Axiom auditors

**Code quality** (grep/glob the codebase for known issues):
6. `foregroundColor(` usage (should be `foregroundStyle(`)
7. Non-optional SwiftData relationships (`: [SomeModel]` without `?`)
8. `@unchecked Sendable` usage that should be verified
9. `NavigationView` usage (should be `NavigationStack`)
10. `@Attribute(.unique)` usage in SwiftData models
11. `.onAppear { Task {` patterns (should be `.task {`)

**Report** a summary: build status, test results, issues found grouped by severity (Critical / Warning / Info), and recommended fixes.
