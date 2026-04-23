# claude-gcode-tools

A collection of [Claude Code](https://docs.anthropic.com/en/docs/claude-code) plugins for AI-assisted development workflows.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Quick Start](#quick-start)
- [Included Plugins](#included-plugins)
- [Understanding Scopes](#understanding-scopes)
- [Install via npx skills (Alternative)](#install-via-npx-skills-alternative)
- [Recommended Extras](#recommended-extras)
- [Managing & Updating](#managing--updating)
- [License](#license)

## Prerequisites

- [Claude Code](https://docs.anthropic.com/en/docs/claude-code) installed and authenticated
- [Node.js](https://nodejs.org/) (for `npx skills` commands)

Some recommended extras have additional dependencies — these are noted per item.

## Quick Start

```bash
claude plugin marketplace add greglamb/claude-gcode-tools
claude plugin install swift-dev@claude-gcode-tools
```

> **Note:** The `goodvibes-workflow` plugin has been retired from this marketplace and absorbed into the [goodvibes](https://github.com/greglamb/goodvibes) plugin. See [Migration: goodvibes-workflow retired](#migration-goodvibes-workflow-retired-2026-04-23) below.

## Included Plugins

| Plugin                                                     | Description                                                                                                                                                 |
|------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [swift-dev](plugins/swift-dev/README.md)                   | Swift/Apple development — scaffolds deterministic project rules, installs Hudson Pro skills, and adds build-fix, TDD, verify-ui, health-check, review flows |
| vscode-api                                                 | VS Code Extension API documentation — commands, webviews, tree views, language features, activation events, contribution points, and the extension manifest |
| fish-shell                                                 | Fish shell (v4.0.2) documentation — scripting, configuration, syntax, and bash migration                                                                    |
| gas-typescript                                             | Best practices, patterns, and toolchain for Google Apps Script projects using TypeScript, Rollup, and clasp                                                 |
| project-documentation                                      | Documentation framework that resists decay — ADRs, conceptual guides, README templates, domain guides, and CLAUDE.md guidance                               |
| presentation-design                                        | Tool-agnostic slide presentation design — storytelling frameworks, color palettes, typography, layout patterns, and data visualization                      |

### Installation

First, add the marketplace (only needed once):

```bash
claude plugin marketplace add greglamb/claude-gcode-tools
```

Then install the plugins you want:

```bash
claude plugin install swift-dev@claude-gcode-tools
```

```bash
claude plugin install vscode-api@claude-gcode-tools
```

```bash
claude plugin install fish-shell@claude-gcode-tools
```

```bash
claude plugin install gas-typescript@claude-gcode-tools
```

```bash
claude plugin install project-documentation@claude-gcode-tools
```

```bash
claude plugin install presentation-design@claude-gcode-tools
```

## Understanding Scopes

Plugins and skills each have their own scope system that controls where they're installed. The defaults are **opposite** — be aware of this when mixing both systems.

### Plugin Scopes (`claude plugin install`)

| Scope       | Flag              | Location                  | Use Case                                      |
|-------------|-------------------|---------------------------|-----------------------------------------------|
| **User**    | _(default)_       | `~/.claude/settings.json` | Available across all projects                 |
| **Project** | `--scope project` | `.claude/settings.json`   | Committed with your project, shared with team |

```bash
# Example: install a plugin at project scope instead of the default user scope
claude plugin install vscode-api@claude-gcode-tools --scope project
```

### npx skills Scopes (`npx skills add`)

| Scope       | Flag        | Location            | Use Case                                      |
|-------------|-------------|---------------------|-----------------------------------------------|
| **Project** | _(default)_ | `.claude/skills/`   | Committed with your project, shared with team |
| **User**    | `-g`        | `~/.claude/skills/` | Available across all projects                 |

```bash
# Example: install a skill at user scope instead of the default project scope
npx skills add owner/repo -a claude-code -g
```

### Recommendation

> **As of March 2026**, scoped plugin usage in Claude Code is still buggy — installing plugins at project scope can lead to issues where they appear "installed" but aren't available, or can't be reinstalled at a different scope without manual edits to `installed_plugins.json`.
>
> **My recommendation:** Keep **marketplaces and plugins at user scope** (the default) and use **Vercel's `npx skills` at project scope** (also the default) when you want repo-level, team-shared configuration. Both defaults just work.

## Install via npx skills (Alternative)

Most of the included plugins are also available as standalone skills via Vercel's [`skills` CLI](https://github.com/vercel-labs/skills). This is useful if you don't need the full marketplace, want to install individual skills outside the plugin system, or want project-scoped installation that works reliably.

```bash
npx skills add https://github.com/greglamb/claude-gcode-tools/tree/main/plugins/vscode-api/skills/vscode-api -a claude-code
```

```bash
npx skills add https://github.com/greglamb/claude-gcode-tools/tree/main/plugins/fish-shell/skills/fish-shell -a claude-code
```

```bash
npx skills add https://github.com/greglamb/claude-gcode-tools/tree/main/plugins/gas-typescript/skills/gas-typescript -a claude-code
```

```bash
npx skills add https://github.com/greglamb/claude-gcode-tools/tree/main/plugins/project-documentation/skills/project-documentation -a claude-code
```

```bash
npx skills add https://github.com/greglamb/claude-gcode-tools/tree/main/plugins/presentation-design/skills/presentation-design -a claude-code
```

## Recommended Extras

Plugins, skills, and tools from other sources that pair well with this marketplace. Items marked with 🔌 are plugins (installed via `claude plugin install`). Items marked with 🧩 are skills (installed via `npx skills add`).

### General Plugins

<details>
<summary>🔌 <strong>superpowers</strong> — Extended planning, brainstorming, TDD, code review, and verification capabilities</summary>

Requires adding the third-party marketplace first (one-time setup):

```bash
claude plugin marketplace add obra/superpowers-marketplace
claude plugin install superpowers@superpowers-marketplace
```

</details>

<details>
<summary>🔌 <strong>episodic-memory</strong> — Persistent context and conversation recall across Claude Code sessions</summary>

From the same marketplace as superpowers (one-time setup if not already added):

```bash
claude plugin marketplace add obra/superpowers-marketplace
claude plugin install episodic-memory@superpowers-marketplace
```

</details>

<details>
<summary>🔌 <strong>skill-creator</strong> — Create, modify, and optimize Claude Code skills</summary>

Available from the built-in official marketplace — no marketplace setup needed.

```bash
claude plugin install skill-creator@claude-plugins-official
```

</details>

<details>
<summary>🔌 <strong>skill-seekers</strong> — Create AI skills from documentation, repos, and other sources</summary>

Requires [Skill Seekers](https://github.com/yusufkaraaslan/Skill_Seekers) (`uv tool install skill-seekers[mcp]` or `brew install skill-seekers`).

```bash
claude plugin install skill-seekers@claude-plugin-directory
```

</details>

### General Skills

<details>
<summary>🧩 <strong>Google Workspace CLI</strong> — CLI tools for Google Workspace APIs (Drive, Gmail, Calendar, Sheets, Docs, Chat, Admin)</summary>

Requires the [`gws` CLI](https://github.com/googleworkspace/cli) (`npm install -g @googleworkspace/cli` or `brew install googleworkspace-cli`), a [Google Cloud project](https://console.cloud.google.com/) with OAuth credentials, and authentication via `gws auth setup` + `gws auth login`. See the [gws README](https://github.com/googleworkspace/cli#authentication) for full setup instructions.

```bash
npx skills add https://github.com/googleworkspace/cli -a claude-code
```

</details>

<details>
<summary>🧩 <strong>Draw.io Diagrams</strong> — Generate native draw.io diagrams from natural language, with optional PNG/SVG/PDF export</summary>

Requires [draw.io Desktop](https://github.com/jgraph/drawio-desktop) for PNG/SVG/PDF export (optional — diagram generation works without it).

```bash
npx skills add https://github.com/jgraph/drawio-mcp/tree/main/skill-cli/drawio -a claude-code
```

</details>

<details>
<summary>🔌 <strong>PPTX (PowerPoint)</strong> — Create, read, edit, and convert PowerPoint presentations</summary>

Requires `uv tool install "markitdown[pptx]"`, `uv tool install Pillow`, and `npm install -g pptxgenjs`. LibreOffice optional for PDF conversion.

```bash
claude plugin marketplace add anthropics/skills
claude plugin install document-skills@anthropic-agent-skills
```

</details>

<details>
<summary>🧩 <strong>Microsoft Rust Guidelines</strong> — Enforces Microsoft's Pragmatic Rust Guidelines on every .rs file</summary>

No additional dependencies — generated guideline files are included in the repo.

```bash
npx skills add https://gitlab.com/lx-industries/ms-rust-skill.git -a claude-code
```

</details>

## Managing & Updating

### Marketplaces

```bash
# List configured marketplaces
claude plugin marketplace list

# Update a marketplace catalog
claude plugin marketplace update claude-gcode-tools

# Remove a marketplace (also uninstalls its plugins)
claude plugin marketplace remove claude-gcode-tools
```

Auto-update is available but **disabled by default for third-party marketplaces**. To enable it, open the `/plugin` UI in Claude Code, navigate to the Marketplaces tab, and select "Enable auto-update." When enabled, Claude Code refreshes marketplace data and updates installed plugins at startup.

### Plugins

```bash
# Disable a plugin without uninstalling
claude plugin disable plugin-name@marketplace-name

# Re-enable a disabled plugin
claude plugin enable plugin-name@marketplace-name

# Uninstall a plugin
claude plugin uninstall plugin-name@marketplace-name
```

> **Note:** As of March 2026, there is no `claude plugin upgrade` command. Plugin updates depend on marketplace auto-update or manually uninstalling and reinstalling. If auto-update doesn't pick up changes, the workaround is to delete the cached plugin from `~/.claude/plugins/cache/` and its entry in `~/.claude/plugins/installed_plugins.json`, then reinstall.

### npx skills

```bash
# Check if installed skills have updates available
npx skills check

# Update all installed skills to latest versions
npx skills update

# Remove a specific skill
npx skills remove skill-name -a claude-code

# Remove interactively (select from installed)
npx skills remove
```

## Migration: goodvibes-workflow retired (2026-04-23)

The `goodvibes-workflow` plugin has been merged into the [goodvibes plugin](https://github.com/greglamb/goodvibes). Existing users should:

1. Install goodvibes: `claude plugin install goodvibes@<marketplace>`
2. Uninstall goodvibes-workflow: `claude plugin uninstall goodvibes-workflow`
3. In each project using the old plugin, run `/goodvibes:setup` to migrate CLAUDE.md markers from `<!-- goodvibes-workflow:* -->` to `<!-- goodvibes:project-setup:* -->`, and to deploy the new `CHANGELOG_DIRECTIVES.md` quick-reference file.
4. Commands renamed: `/vibe*` → `/goodvibes:*`. Update any personal notes or scripts that reference the old names. `/vibedebug` was retired without a replacement — use `goodvibes:systematic-debugging` directly.

## License

MIT
