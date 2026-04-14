---
name: build-fix
description: |
  Autonomous build-fix loop for Swift projects. Builds, reads errors,
  fixes source files, and rebuilds until green.
allowed-tools: Read, Write, Edit, MultiEdit, Bash
disable-model-invocation: true
---

# Build-fix loop

Run the full build-fix loop autonomously. Do NOT ask for confirmation between iterations.

First, check if `xcodebuildmcp` is available by running `which xcodebuildmcp`.

**If xcodebuildmcp is available:**
1. Run `xcodebuildmcp discover` to confirm project settings
2. Run `xcodebuildmcp build-sim` to build for the simulator
3. If build fails, read the structured error output — each error has a file path, line number, and description
4. Fix each error in the source files
5. Rebuild and repeat until the build succeeds
6. Run `xcodebuildmcp test-sim` to verify tests still pass

**If xcodebuildmcp is not available:**
1. Detect the scheme and destination from `xcodebuild -list` or `Package.swift`
2. Run `xcodebuild build -scheme <scheme> -destination 'platform=iOS Simulator,name=iPhone 16' 2>&1` (or `swift build` for SPM-only projects)
3. Parse errors from the output — look for lines matching `path/file.swift:line:col: error:`
4. Fix each error in the source files
5. Rebuild and repeat until the build succeeds
6. Run `xcodebuild test -scheme <scheme> -destination 'platform=iOS Simulator,name=iPhone 16' 2>&1` (or `swift test`) to verify tests still pass

Report: what was broken, what you fixed, and final build/test status.
