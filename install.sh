#!/usr/bin/env bash
set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
SETTINGS_FILE="$HOME/.claude/settings.json"
COMMANDS_DIR="$HOME/.claude/commands/clear-claude"

echo "Installing clear-claude..."

# 1. Create command symlinks
mkdir -p "$COMMANDS_DIR"
ln -sf "$SCRIPT_DIR/commands/status.md" "$COMMANDS_DIR/status.md"
ln -sf "$SCRIPT_DIR/commands/terminal-setup.md" "$COMMANDS_DIR/terminal-setup.md"
echo "  Symlinked commands to $COMMANDS_DIR"

# 2. Make hook executable
chmod +x "$SCRIPT_DIR/hooks-handlers/session-start.sh"
echo "  Made hook script executable"

# 3. Add SessionStart hook to settings.json
HOOK_COMMAND="$SCRIPT_DIR/hooks-handlers/session-start.sh"

if [ ! -f "$SETTINGS_FILE" ]; then
  # No settings file — create one with the hook
  mkdir -p "$(dirname "$SETTINGS_FILE")"
  cat > "$SETTINGS_FILE" << SETTINGS
{
  "hooks": {
    "SessionStart": [
      {
        "hooks": [
          {
            "type": "command",
            "command": "$HOOK_COMMAND"
          }
        ]
      }
    ]
  }
}
SETTINGS
  echo "  Created $SETTINGS_FILE with SessionStart hook"
elif grep -q "$HOOK_COMMAND" "$SETTINGS_FILE" 2>/dev/null; then
  echo "  SessionStart hook already present in settings.json"
else
  echo ""
  echo "  NOTE: Add this to the hooks.SessionStart array in $SETTINGS_FILE:"
  echo ""
  echo "  {"
  echo "    \"hooks\": ["
  echo "      {"
  echo "        \"type\": \"command\","
  echo "        \"command\": \"$HOOK_COMMAND\""
  echo "      }"
  echo "    ]"
  echo "  }"
  echo ""
  echo "  (Automatic JSON editing skipped to avoid corrupting your settings file.)"
fi

echo ""
echo "Done. Start a new Claude Code session to activate clear-claude."
echo "Run /clear-claude:status to verify it's working."
