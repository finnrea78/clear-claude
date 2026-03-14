# clear-claude

Dyslexia-friendly output formatting for Claude Code.

## Why This Exists

Programming is moving toward natural language. We write prompts, read AI-generated explanations, and review code through conversation. This shift creates a new barrier for dyslexic developers.

Dyslexic engineers have the logic, the problem-solving ability, and the architectural thinking that software demands. But when your primary interface becomes walls of text, reading speed becomes a bottleneck it was never meant to be.

**clear-claude removes that bottleneck.** It changes how Claude Code formats its output — shorter sentences, bullet points, clear structure, no italics. The technical content stays identical. Nothing is simplified or dumbed down.

This follows the same principle as [Barrington Stoke's](https://www.barringtonstoke.co.uk/) dyslexia-friendly book editions. Their version of Animal Farm is completely unabridged — same words, same story. Only the typography, spacing, and layout change. That is exactly what clear-claude does for Claude Code.

## What Changes

When clear-claude is active, Claude follows these formatting rules:

- **Short sentences** — 15-20 words max, one idea each
- **Bullet points over prose** — lists instead of dense paragraphs
- **Bold for emphasis** — never italic (italic distorts letter shapes)
- **Clear headers** — with whitespace between sections
- **Plain language** — jargon defined on first use
- **Active voice** — direct and clear
- **Key point first** — then supporting detail

**What stays the same:**
- Code blocks are unchanged
- Technical depth is unchanged
- File paths, commands, and identifiers are exact
- Nothing is omitted or simplified

## Installation

### Option 1: Clone and install (recommended)

Clone the repo anywhere you like:

```bash
git clone https://github.com/finnrea78/clear-claude.git ~/Developer/clear-claude
```

Run the install script:

```bash
~/Developer/clear-claude/install.sh
```

This does three things:
1. Symlinks the slash commands into `~/.claude/commands/clear-claude/`
2. Adds a SessionStart hook to `~/.claude/settings.json`
3. Makes the hook script executable

To update later, just `git pull` — the symlinks keep everything in sync.

### Option 2: Manual install

If you prefer to set things up yourself:

**1. Clone the repo:**

```bash
git clone https://github.com/finnrea78/clear-claude.git ~/Developer/clear-claude
```

**2. Create command symlinks:**

```bash
mkdir -p ~/.claude/commands/clear-claude
ln -sf ~/Developer/clear-claude/commands/status.md ~/.claude/commands/clear-claude/status.md
ln -sf ~/Developer/clear-claude/commands/terminal-setup.md ~/.claude/commands/clear-claude/terminal-setup.md
```

**3. Add the SessionStart hook to `~/.claude/settings.json`:**

Add this entry to the `hooks.SessionStart` array (create the array if it doesn't exist):

```json
{
  "hooks": [
    {
      "type": "command",
      "command": "YOUR_CLONE_PATH/hooks-handlers/session-start.sh"
    }
  ]
}
```

Replace `YOUR_CLONE_PATH` with the absolute path to your clone (e.g. `/home/you/Developer/clear-claude`).

**4. Make the hook executable:**

```bash
chmod +x ~/Developer/clear-claude/hooks-handlers/session-start.sh
```

### Option 3: CLAUDE.md snippet

If you only want the formatting rules for a single project (no commands or hooks), copy the snippet from [`docs/claude-md-snippet.md`](docs/claude-md-snippet.md) into your project's `CLAUDE.md` file.

## Terminal Setup

For the best experience, run `/clear-claude:terminal-setup` in Claude Code. It will configure your terminal with dyslexia-friendly fonts, colours, and spacing.

You can choose between **dark mode** and **light mode** (Solarized Dark / Solarized Light).

Supports: Gnome Terminal, Kitty, Ghostty, Alacritty.

**Quick version:**
- **JetBrains Mono** font at 14pt (monospace, good letter distinction)
- Avoid pure black on pure white — Solarized themes maintain 4.5:1+ contrast
- Line height at 1.5x, letter spacing increased 5%
- Keep terminal width around 80 columns

## The Research

Every formatting rule is backed by peer-reviewed research. The short version:

- **Letter spacing** doubled accuracy and increased reading speed by 20%+ (Zorzi et al., 2012)
- **Specialized dyslexia fonts are debunked** — the benefit comes from spacing, not letter shapes
- **Bold over italic** — BDA Style Guide recommendation
- **60-70 character lines** improve reading speed by up to 27%
- **Chunking** reduces cognitive load from documented working memory differences

Full citations and details: [`docs/research.md`](docs/research.md)

## Contributing

Contributions are welcome. If you are dyslexic and have suggestions for what helps you read better, please open an issue. Lived experience matters more than theory.

## License

MIT
