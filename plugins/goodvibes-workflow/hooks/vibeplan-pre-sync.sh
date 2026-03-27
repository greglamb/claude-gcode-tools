#!/bin/bash
# Vibeplan Pre-Sync - PreToolUse hook for Skill
# Automatically runs `episodic-memory sync` before vibeplan executes.

INPUT=$(cat)
SKILL=$(echo "$INPUT" | jq -r '.tool_input.skill // empty')

# Only trigger for vibeplan (short or fully-qualified name)
if [ "$SKILL" != "vibeplan" ] && [ "$SKILL" != "goodvibes-workflow:vibeplan" ]; then
  exit 0
fi

# Run episodic-memory sync
if command -v episodic-memory &>/dev/null; then
  episodic-memory sync 2>&1
else
  echo "Warning: episodic-memory CLI not found. Skipping sync." >&2
fi

exit 0
