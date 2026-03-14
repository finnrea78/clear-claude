# Terminal Setup for Dyslexic Developers

These recommendations are based on research from the British Dyslexia Association (BDA), Zorzi et al. 2012, and WCAG accessibility standards.

## Fonts

**Best options:**
- **Lexend** — designed for reading fluency, with evidence of improved performance
- **Arial, Verdana, Tahoma, Calibri, Open Sans** — BDA-recommended sans-serif fonts
- **Century Gothic** — good letter differentiation

**For code (monospace):**
- **JetBrains Mono** — clear letter shapes, generous spacing
- **Fira Code** — distinct characters, good readability
- **Cascadia Code** — designed with accessibility in mind

**Size:** 14pt minimum. Larger is better.

**Avoid:** Decorative fonts, serif fonts, and italic text.

## Colours

**Key rule:** Avoid pure black (#000000) on pure white (#FFFFFF). The high contrast causes glare.

**Light themes — use warm backgrounds:**
- Solarized Light: background `#FDF6E3`, text `#657B83`
- Cream tint: background `#FFFBF0`, text `#333333`
- Soft peach: background `#FFF5EE`, text `#2D2D2D`

**Dark themes — soften the contrast:**
- Solarized Dark: background `#002B36`, text `#839496`
- Soft dark: background `#1E1E1E`, text `#D4D4D4`

**Contrast ratio:** Keep at least 4.5:1 (WCAG AA standard).

## Line Spacing

Set line height to **1.5x or greater**. Most terminals support this.

## Terminal Width

Set your terminal to about **80 columns**. This keeps content lines at 60-70 characters — the optimal range for reading speed.

## Terminal-Specific Config

### Ghostty

```
font-family = "Lexend"
font-size = 14
background = #FDF6E3
foreground = #657B83
```

### iTerm2

1. Go to **Preferences > Profiles > Text**
2. Set font to Lexend or Verdana, size 14+
3. Go to **Preferences > Profiles > Colors**
4. Import Solarized Light or set custom background to `#FDF6E3`

### Windows Terminal

Add to your `settings.json` profile:

```json
{
  "fontFace": "Lexend",
  "fontSize": 14,
  "background": "#FDF6E3",
  "foreground": "#657B83"
}
```

### Alacritty

```yaml
font:
  normal:
    family: "Lexend"
  size: 14.0

colors:
  primary:
    background: "#FDF6E3"
    foreground: "#657B83"
```

## Installing Lexend

- **Linux:** `sudo apt install fonts-lexend` or download from [Google Fonts](https://fonts.google.com/specimen/Lexend)
- **macOS:** Download from Google Fonts, double-click to install
- **Windows:** Download from Google Fonts, right-click > Install
