---
name: tdd
description: |
  Test-driven development workflow for Swift. Strict Red-Green-Refactor using
  Swift Testing framework (@Test, #expect). Writes failing tests first, implements
  minimum code to pass, then refactors.
  Use when implementing a feature with tests, or when asked to use TDD.
  Trigger with "implement with TDD", "test first", or /swift-dev:tdd.
allowed-tools: Read, Write, Edit, MultiEdit, Bash
argument-hint: "<feature description>"
---

# Test-driven development

Implement the requested feature using strict TDD (Red-Green-Refactor). $ARGUMENTS

To run builds and tests: use `xcodebuildmcp` commands if available (`which xcodebuildmcp`), otherwise fall back to `xcodebuild` or `swift build`/`swift test`.

**RED phase:**
1. Write failing tests FIRST using Swift Testing (`@Test`, `#expect`)
2. Use descriptive test names: `@Test("Description of expected behavior")`
3. Run tests — confirm they fail for the right reason

**GREEN phase:**
4. Write the minimum implementation to make tests pass
5. Run tests again — confirm all pass
6. Do NOT add code that isn't required by a test

**REFACTOR phase:**
7. Clean up — extract methods, improve naming, remove duplication
8. Run tests again — confirm nothing broke
9. Check coverage: aim for ≥75% on the new code

**Exit criteria:**
- All tests pass
- Build succeeds
- Code follows project conventions (check `.claude/rules/` for applicable rules)
- Report: tests written, implementation summary, coverage estimate
