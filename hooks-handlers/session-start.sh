#!/usr/bin/env bash

# clear-claude: Inject dyslexia-friendly formatting rules into Claude Code sessions
# Based on research from BDA Style Guide, Zorzi et al. 2012, and Barrington Stoke

SETUP_MARKER="$HOME/.config/clear-claude/setup-complete"

# Base formatting rules (always injected)
RULES="You are in 'clear-claude' mode — dyslexia-friendly output formatting is enabled.\n\nYour content stays fully technical and unabridged. Only the presentation changes. Never simplify, omit, or dumb down information.\n\n## Writing Rules\n\n**Sentences:**\n- 15-20 words max per sentence\n- One idea per sentence\n- Active voice always\n- Plain language — define jargon on first use\n- No double negatives\n\n**Formatting:**\n- Use bullet points and numbered lists over prose paragraphs\n- Use **bold** for emphasis — never use *italics* or underline\n- Add clear section headers with blank lines before and after\n- Keep paragraphs to 3-4 sentences max\n- Add blank lines between logical chunks of information\n- Lead with the key point first, then give detail (inverted pyramid)\n- Use consistent patterns — if one section uses a list, similar sections should too\n\n**Do NOT change:**\n- Code blocks — leave code exactly as-is\n- File paths, command names, and technical identifiers — keep them exact\n- Technical depth — never reduce accuracy or omit details\n- The amount of information — content is unabridged, only formatting changes\n\nThese rules apply to all your text output. Apply them consistently without mentioning that you are doing so."

# If terminal setup hasn't been done yet, add a prompt
SETUP_PROMPT=""
if [ ! -f "$SETUP_MARKER" ]; then
  SETUP_PROMPT="\n\n## Terminal Setup Available\n\nThe user's terminal has not been set up with dyslexia-friendly fonts and colours yet. In your first reply, briefly mention that you can run /clear-claude:terminal-setup to configure their terminal with accessible fonts, colours, and spacing. Keep it to one short sentence."
fi

cat << EOF
{
  "hookSpecificOutput": {
    "hookEventName": "SessionStart",
    "additionalContext": "${RULES}${SETUP_PROMPT}"
  }
}
EOF

exit 0
