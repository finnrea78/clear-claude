---
description: "Set up your terminal with dyslexia-friendly fonts, colours, and spacing"
---

You are running the clear-claude terminal setup. Follow these steps exactly. Ask the user before making changes.

## Step 1: Detect the terminal

Run this to find the terminal emulator:
```bash
ps -o comm= -p $(xdotool getactivewindow getpid 2>/dev/null || ps -o ppid= -p $$ | tr -d ' ') 2>/dev/null || echo "unknown"
```

Also check which terminals are installed:
```bash
which gnome-terminal kitty ghostty alacritty 2>/dev/null
```

## Step 2: Check fonts

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

## Step 3: Configure Gnome Terminal

First, get the default profile ID:
```bash
PROFILE=$(gsettings get org.gnome.Terminal.ProfilesList default | tr -d "'")
```

Then apply these settings:
```bash
# Use a custom font
dconf write /org/gnome/terminal/legacy/profiles:/:$PROFILE/use-system-font false
dconf write /org/gnome/terminal/legacy/profiles:/:$PROFILE/font "'JetBrains Mono 14'"

# Solarized Light colours (reduced glare, good contrast)
dconf write /org/gnome/terminal/legacy/profiles:/:$PROFILE/use-theme-colors false
dconf write /org/gnome/terminal/legacy/profiles:/:$PROFILE/background-color "'#FDF6E3'"
dconf write /org/gnome/terminal/legacy/profiles:/:$PROFILE/foreground-color "'#657B83'"

# Disable bold colour to reduce visual noise
dconf write /org/gnome/terminal/legacy/profiles:/:$PROFILE/bold-color-same-as-fg true

# Increase scrollback for easier re-reading
dconf write /org/gnome/terminal/legacy/profiles:/:$PROFILE/scrollback-unlimited true
```

## Step 4: Configure Kitty (if installed)

If kitty is installed, create or update `~/.config/kitty/kitty.conf`:
```
font_family      JetBrains Mono
font_size        14.0
background       #FDF6E3
foreground       #657B83
modify_font cell_height 150%
```

## Step 5: Mark setup complete

```bash
mkdir -p ~/.config/clear-claude
touch ~/.config/clear-claude/setup-complete
```

Tell the user: "Terminal setup is done. You may need to open a new terminal window to see the changes."

## Important

- Use JetBrains Mono (monospace) for the terminal font, not Lexend (Lexend is not monospace)
- Always ask before running sudo commands
- Show the user what will change before applying
- Use the clear-claude formatting rules in all your responses during this process
