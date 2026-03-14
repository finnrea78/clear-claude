---
description: "Set up your terminal with dyslexia-friendly fonts, colours, and spacing"
---

You are running the clear-claude terminal setup. Follow these steps exactly. Ask the user before making changes.

## Step 1: Ask the user for their colour preference

Ask: "Do you prefer **dark mode** or **light mode** for your terminal?"

Save their choice for use in Step 4.

**Light mode colours (Solarized Light — cream-tinted, reduced glare):**
- Background: `#FDF6E3`
- Foreground: `#657B83`

**Dark mode colours (Solarized Dark — low glare, warm tones):**
- Background: `#002B36`
- Foreground: `#839496`

Both options avoid pure black on pure white and maintain WCAG AA contrast ratio (4.5:1+).

## Step 2: Detect the terminal

Run this to find the terminal emulator:
```bash
ps -o comm= -p $(xdotool getactivewindow getpid 2>/dev/null || ps -o ppid= -p $$ | tr -d ' ') 2>/dev/null || echo "unknown"
```

Also check which terminals are installed:
```bash
which gnome-terminal kitty ghostty alacritty 2>/dev/null
```

## Step 3: Check fonts

Check if dyslexia-friendly fonts are installed:
```bash
fc-list | grep -i "lexend" && echo "--- Lexend found ---" || echo "--- Lexend NOT found ---"
fc-list | grep -i "JetBrains Mono" && echo "--- JetBrains Mono found ---" || echo "--- JetBrains Mono NOT found ---"
```

If Lexend is missing, install it:
```bash
sudo apt install -y fonts-lexend
```

If JetBrains Mono is missing, install it:
```bash
sudo apt install -y fonts-jetbrains-mono
```

After installing, refresh the font cache:
```bash
fc-cache -f
```

## Step 4: Configure Gnome Terminal

First, get the default profile ID:
```bash
PROFILE=$(gsettings get org.gnome.Terminal.ProfilesList default | tr -d "'")
```

Then apply these settings (use the colours from the user's choice in Step 1):
```bash
# Use a custom font — 14pt for readability
dconf write /org/gnome/terminal/legacy/profiles:/:$PROFILE/use-system-font false
dconf write /org/gnome/terminal/legacy/profiles:/:$PROFILE/font "'JetBrains Mono 14'"

# Colours — use the user's chosen mode (light or dark values from Step 1)
dconf write /org/gnome/terminal/legacy/profiles:/:$PROFILE/use-theme-colors false
dconf write /org/gnome/terminal/legacy/profiles:/:$PROFILE/background-color "'BACKGROUND_HEX'"
dconf write /org/gnome/terminal/legacy/profiles:/:$PROFILE/foreground-color "'FOREGROUND_HEX'"

# Disable bold colour to reduce visual noise
dconf write /org/gnome/terminal/legacy/profiles:/:$PROFILE/bold-color-same-as-fg true

# Increase scrollback for easier re-reading
dconf write /org/gnome/terminal/legacy/profiles:/:$PROFILE/scrollback-unlimited true

# Letter spacing — increase to reduce visual crowding (Zorzi et al., 2012)
# Gnome Terminal does not support letter-spacing directly.
# The font size increase and cell height (via Kitty/Ghostty) compensate.
```

## Step 5: Configure Kitty (if installed)

If kitty is installed, create or update `~/.config/kitty/kitty.conf` (use the colours from Step 1):
```
# Font
font_family      JetBrains Mono
font_size        14.0

# Colours — substitute the user's chosen mode
background       BACKGROUND_HEX
foreground       FOREGROUND_HEX

# Spacing — increases line height and letter spacing to reduce crowding
modify_font cell_height 150%
modify_font cell_width 105%
modify_font baseline 0
```

## Step 6: Configure Ghostty (if installed)

If ghostty is installed, create or update `~/.config/ghostty/config` (use the colours from Step 1):
```
# Font
font-family = JetBrains Mono
font-size = 14

# Colours — substitute the user's chosen mode
background = BACKGROUND_HEX
foreground = FOREGROUND_HEX

# Spacing — line height and letter spacing
adjust-cell-height = 50%
adjust-cell-width = 5%
```

## Step 7: Configure Alacritty (if installed)

If alacritty is installed, create or update `~/.config/alacritty/alacritty.toml` (use the colours from Step 1):
```toml
[font]
size = 14.0

[font.normal]
family = "JetBrains Mono"

[colors.primary]
background = "BACKGROUND_HEX"
foreground = "FOREGROUND_HEX"

[env]
# Alacritty does not support per-cell spacing adjustments.
# The increased font size provides the primary readability benefit.
```

## Step 8: Mark setup complete

Save the user's colour preference so it can be referenced later:
```bash
mkdir -p ~/.config/clear-claude
echo "COLOUR_MODE" > ~/.config/clear-claude/colour-mode
touch ~/.config/clear-claude/setup-complete
```

Replace `COLOUR_MODE` with either `light` or `dark` based on their choice.

Tell the user: "Terminal setup is done. You may need to open a new terminal window to see the changes."

## Important

- Use JetBrains Mono (monospace) for the terminal font, not Lexend (Lexend is not monospace)
- Always ask before running sudo commands
- Show the user what will change before applying
- Only configure terminals that are actually installed — skip the rest
- Replace `BACKGROUND_HEX` and `FOREGROUND_HEX` with the actual hex values from the user's chosen colour mode
- Use the clear-claude formatting rules in all your responses during this process
