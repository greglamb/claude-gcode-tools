---
name: verify-ui
description: |
  Build, run, screenshot, and verify UI changes in the iOS simulator.
  Captures a screenshot and checks the accessibility tree for issues.
allowed-tools: Read, Bash
disable-model-invocation: true
---

# Verify UI

Check if `xcodebuildmcp` is available by running `which xcodebuildmcp`.

**If xcodebuildmcp is available:**
1. Run `xcodebuildmcp build-and-run` to launch in the simulator
2. Wait for the app to launch, then run `xcodebuildmcp screenshot`
3. Run `xcodebuildmcp describe-ui` to get the accessibility tree
4. Analyze both the screenshot and accessibility tree

**If xcodebuildmcp is not available:**
1. Build with `xcodebuild build -scheme <scheme> -destination 'platform=iOS Simulator,name=iPhone 16'`
2. Boot the simulator if needed: `xcrun simctl boot <device-id>`
3. Install and launch: `xcrun simctl install booted <app-path>` then `xcrun simctl launch booted <bundle-id>`
4. Screenshot: `xcrun simctl io booted screenshot /tmp/screenshot.png`
5. Note: accessibility tree inspection (`describe-ui`) is not available without xcodebuildmcp. Review the screenshot and source code for accessibility issues manually.

**Report:**
- What's visible on screen
- Whether the UI matches the intended design/task
- Any accessibility issues (missing labels, poor contrast hints, touch target concerns)
- Suggested improvements if any

If the build fails, switch to the `/swift-dev:build-fix` workflow first.
