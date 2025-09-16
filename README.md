# Vedic Haritha 🌿🕉️

A beautiful Neovim color scheme inspired by ancient Vedic wisdom and the natural greens of sacred groves. "Haritha" means "green" in Sanskrit, representing nature, growth, and tranquility.

## ✨ Features

- 🌿 **Vedic-inspired**: Earthy greens and natural tones
- 🎨 **Complete Treesitter support**: Modern syntax highlighting
- 🔍 **LSP integration**: Beautiful diagnostics and references
- 📱 **Plugin support**: Telescope, Neo-tree, GitSigns, and more
- ⚡ **Eye-friendly**: Optimized for long coding sessions
- 🕉️ **Peaceful coding**: Colors that promote focus and tranquility

## 📦 Installation

### Lazy.nvim (Recommended)

```lua
{
  "yourusername/vedic-haritha.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("vedic-haritha").setup()
    vim.cmd("colorscheme vedic-haritha")
  end,
}
```

### Packer.nvim

```lua
use {
  "yourusername/vedic-haritha.nvim",
  config = function()
    require("vedic-haritha").setup()
    vim.cmd("colorscheme vedic-haritha")
  end
}
```

### Vim-plug

```vim
Plug 'yourusername/vedic-haritha.nvim'
```

Then in your `init.lua`:

```lua
require("vedic-haritha").setup()
vim.cmd("colorscheme vedic-haritha")
```

### Manual Installation

1. Clone the repository:

```bash
git clone https://github.com/yourusername/vedic-haritha.nvim.git ~/.local/share/nvim/site/pack/plugins/start/vedic-haritha.nvim
```

2. Add to your Neovim config:

```lua
vim.cmd("colorscheme vedic-haritha")
```

## 🚀 Usage

After installation, activate the colorscheme with:

**Vim command:**

```vim
:colorscheme vedic-haritha
```

**Lua:**

```lua
require("vedic-haritha").load()
```

**Custom command:**

```vim
:VedicHaritha
```

## 🎨 Color Palette

| Element        | Hex Code  | Description                         |
| -------------- | --------- | ----------------------------------- |
| **Background** | `#14281e` | Deep forest green - main background |
| **Foreground** | `#d6d3c4` | Warm cream - primary text           |
| **Green**      | `#3fa34d` | Fresh leaf green - strings, growth  |
| **Red**        | `#781e1e` | Earth red - errors, constants       |
| **Blue**       | `#467798` | River blue - functions, flow        |
| **Yellow**     | `#b48c46` | Golden earth - warnings, highlights |
| **Cyan**       | `#4db6ac` | Sacred water - comments, wisdom     |
| **Orange**     | `#ff8733` | Sacred flame - special elements     |

### Semantic Usage

- **🌱 Strings & Growth**: Various shades of green
- **🔥 Keywords & Power**: Warm oranges and reds
- **💧 Comments & Flow**: Calming cyans and blues
- **⚡ Highlights**: Golden yellows for attention
- **🏔️ Structure**: Earthy browns and creams

## 📸 Screenshots

_Add your screenshots here showing the colorscheme in action!_

```lua
-- Example of how your code will look
local vedic = {
  wisdom = "Ancient knowledge in modern form",
  colors = { "green", "earth", "peace" },
  experience = function()
    return "Tranquil coding sessions"
  end
}

print("Welcome to Vedic Haritha! 🕉️")
```

## 🎯 Supported Plugins

- **Telescope** - Beautiful fuzzy finder styling
- **Neo-tree** - File explorer integration
- **GitSigns** - Git diff highlighting
- **LSP Diagnostics** - Error and warning display
- **Treesitter** - Modern syntax highlighting
- **Which-key** - Keybinding helper
- **Indent Blankline** - Indentation guides
- **And many more!**

## ⚙️ Configuration

The colorscheme works out of the box, but you can customize it:

```lua
require("vedic-haritha").setup({
  -- Add any custom options here in future versions
})
```

## 🤝 Contributing

Contributions are welcome! Feel free to:

- 🐛 Report bugs
- 💡 Suggest improvements
- 🎨 Propose color adjustments
- 📝 Improve documentation
- 🖼️ Add screenshots

## 🙏 Philosophy

Vedic Haritha is more than just a colorscheme - it's inspired by the ancient Vedic tradition of finding harmony with nature. The green tones represent:

- **🌿 Growth** - Continuous learning and improvement
- **🧘 Peace** - Calm, focused coding sessions
- **🌱 Nature** - Connection with the natural world
- **💚 Balance** - Harmony between functionality and beauty

## 📜 License

MIT License - feel free to use, modify, and distribute!

## 🌟 Show Your Support

If you enjoy Vedic Haritha, please:

- ⭐ Star this repository
- 🐦 Share on social media
- 💬 Tell your fellow developers
- 🙏 Spread the peaceful coding vibes!

---

_"Just as a tree grows towards the light, let your code flourish in the gentle embrace of Vedic Haritha."_ 🌳✨

**Made with 💚 for the Neovim community**
