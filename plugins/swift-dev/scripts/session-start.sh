#!/usr/bin/env bash
set -euo pipefail

# Inject project context at session start.
# stdout JSON with additionalContext is added to Claude's context.

PROJECT_NAME=$(basename "$(pwd)")
BRANCH=$(git branch --show-current 2>/dev/null || echo "unknown")
SWIFT_VERSION=$(swift --version 2>/dev/null | head -1 | grep -oE '[0-9]+\.[0-9]+(\.[0-9]+)?' | head -1 || echo "unknown")
XCODE_VERSION=$(xcodebuild -version 2>/dev/null | head -1 || echo "unknown")

XBMCP="unavailable"
if command -v xcodebuildmcp &>/dev/null; then
  XBMCP="available"
fi

DIRTY=""
if ! git diff --quiet 2>/dev/null; then
  DIRTY=" (uncommitted changes)"
fi

# Detect if this is actually a Swift project
IS_SWIFT="false"
if [ -f Package.swift ] || ls *.xcodeproj &>/dev/null 2>&1 || ls *.xcworkspace &>/dev/null 2>&1; then
  IS_SWIFT="true"
fi

if [ "$IS_SWIFT" = "true" ]; then
  CONTEXT="Swift project: ${PROJECT_NAME} | Branch: ${BRANCH}${DIRTY} | Swift ${SWIFT_VERSION} | ${XCODE_VERSION} | xcodebuildmcp: ${XBMCP}"

  # Check if project has been initialized
  if [ ! -d ".claude/rules" ]; then
    CONTEXT="${CONTEXT} | NOT INITIALIZED — run /swift-dev:init to scaffold rules and install dependencies"
  fi

  # Inform Claude which build tooling to use
  if [ "$XBMCP" = "available" ]; then
    CONTEXT="${CONTEXT} | Use xcodebuildmcp CLI for builds and tests (run xcodebuildmcp --help for commands)"
  else
    CONTEXT="${CONTEXT} | Use xcodebuild and xcrun simctl for builds and tests"
  fi

  jq -n --arg ctx "$CONTEXT" '{additionalContext: $ctx}'
fi
