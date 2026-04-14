---
name: review
description: |
  Code review of uncommitted changes using a dedicated Swift reviewer subagent.
  The subagent runs in a separate context with read-only tools and reviews
  against a Swift-specific checklist.
allowed-tools: Read, Bash
disable-model-invocation: true
---

# Code review

1. Run `git diff --stat` to see what files changed
2. Spawn the `swift-reviewer` subagent with the task: "Review the uncommitted changes in this project. Run `git diff` to see the full diff, then review each changed file against your checklist. Focus on correctness, concurrency safety, SwiftData rules, memory management, API deprecations, testability, and accessibility."
3. After the subagent returns its findings, summarize the results
4. If there are Critical issues, list them and offer to fix them
5. If clean, confirm the changes are ready to commit
