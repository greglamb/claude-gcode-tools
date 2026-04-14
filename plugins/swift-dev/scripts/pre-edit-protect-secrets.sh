#!/usr/bin/env bash
set -euo pipefail

# Block edits to sensitive files. Exit 2 = block with reason to stderr.
# Only activates in Swift projects.

# Quick check: is this a Swift project?
if [ ! -f Package.swift ] && ! ls *.xcodeproj &>/dev/null 2>&1 && ! ls *.xcworkspace &>/dev/null 2>&1; then
  exit 0
fi

FILE_PATH=$(jq -r '.tool_input.file_path // .tool_input.filePath // ""')

case "$FILE_PATH" in
  *.env|*.env.*|*Secrets.swift|*secrets.swift|*Credentials.swift|*credentials.swift|*GoogleService-Info.plist|*.p12|*.mobileprovision|*.provisionprofile)
    echo "Blocked: $FILE_PATH is a sensitive file. Do not write secrets or credentials." >&2
    exit 2
    ;;
esac

exit 0
