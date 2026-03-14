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

### Option 1: Clone and register as a plugin

```bash
git clone https://github.com/finnrea78/clear-claude.git ~/.claude/plugins/clear-claude
```

Then add to your `~/.claude/settings.json`:

```json
{
  "enabledPlugins": {
    "clear-claude@local": true
  }
}
```

### Option 2: CLAUDE.md snippet

If you prefer not to install a plugin, copy the snippet from [`docs/claude-md-snippet.md`](docs/claude-md-snippet.md) into your project's `CLAUDE.md` file. This applies the same rules to a single project.

## Terminal Setup

For the best experience, configure your terminal for dyslexia-friendly reading. See [`docs/terminal-setup.md`](docs/terminal-setup.md) for font, color, and spacing recommendations with copy-paste config snippets.

**Quick version:**
- Use **Lexend** font at 14pt+ (or Verdana, Arial, Calibri)
- Avoid pure black on pure white — try Solarized Light
- Set line height to 1.5x
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
