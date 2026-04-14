#!/usr/bin/env bash
set -euo pipefail

# Run SwiftLint on edited .swift files. Non-blocking (exit 0).
# Feeds lint warnings back as context for Claude to self-correct.

FILE_PATH=$(jq -r '.tool_input.file_path // .tool_input.filePath // ""')

# Only lint Swift files
if [[ "$FILE_PATH" != *.swift ]]; then
  exit 0
fi

# Only activate in Swift projects
if [ ! -f Package.swift ] && ! ls *.xcodeproj &>/dev/null 2>&1 && ! ls *.xcworkspace &>/dev/null 2>&1; then
  exit 0
fi

# Skip if SwiftLint not installed
if ! command -v swiftlint &>/dev/null; then
  exit 0
fi

LINT_OUTPUT=$(swiftlint lint --path "$FILE_PATH" --quiet 2>/dev/null || true)

if [ -n "$LINT_OUTPUT" ]; then
  echo "$LINT_OUTPUT" | head -20 | jq -Rs --arg fp "$FILE_PATH" '{additionalContext: ("SwiftLint issues in " + $fp + ":\n" + . + "\nPlease fix these lint issues.")}'
fi

exit 0
