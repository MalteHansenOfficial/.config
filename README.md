# Neovim Configuration based on Lazy.nvim

A **clean, modular, multiple file Neovim setup** built around **lazy.nvim**. This configuration focuses on a solid foundation without becoming too bloated.

## Table of Contents

- [Requirements](#requirements)
- [Installation Instructions](#installation-instructions)
- [Core Configuration (Explanation)](#core-configuration-explanation)
- [Plugin Installation](#plugin-installation)
- [Installed Plugins](#installed-plugins)
- [Installing a New Language](#installing-a-new-language)
- [Keyboard Shortcuts](#keyboard-shortcuts)

---

## Requirements

### Core
- **Neovim ≥ 0.9**
- **Git**
- **LuaRocks**
- **Node.js + npm or yarn**
- **Cargo**
- A [**Nerd Font**](https://www.nerdfonts.com/)

---

## Installation Instructions

**The installation instructions and the explanation of the core configuration are ai-generated!! (under supervision)**

#### Linux (Debian/Ubuntu)
```bash
sudo apt update
sudo apt install -y neovim git luarocks nodejs npm cargo
mkdir ~/.config/nvim
git clone https://github.com/MalteHansenOfficial/.config ~/.config/nvim
```

#### Linux (Fedora)
```bash
sudo dnf update
sudo dnf install -y neovim git luarocks nodejs npm cargo ripgrep
mkdir ~/.config/nvim
git clone https://github.com/MalteHansenOfficial/.config ~/.config/nvim
```

#### macOS (Homebrew)
```bash
brew install neovim git luarocks node yarn cargo
mkdir ~/.config/nvim
git clone https://github.com/MalteHansenOfficial/.config ~/.config/nvim
```

#### Windows (WSL or native)
- **Option 1: WSL**
  - Follow Linux instructions
- **Option 2: Native Windows**
  - Install [Neovim](https://github.com/neovim/neovim/releases)
  - Install Git ([Git for Windows](https://git-scm.com/download/win))
  - Install [Node.js](https://nodejs.org/)
  - Install [LuaRocks](https://luarocks.org/)
  - Install [Rust](https://www.rust-lang.org/tools/install)
  - Clone the repo to `%USERPROFILE%\AppData\Local\nvim`:
```powershell
git clone https://github.com/MalteHansenOfficial/.config $env:LOCALAPPDATA\nvim
```

---

After cloning, open Neovim and Lazy.nvim will automatically install all plugins:
```bash
nvim
```
Then run:
```vim
:checkhealth
```
to ensure everything is correctly installed.

Additionally, you should run ```:MarkdownPreviewInstall``` within Vim, to finish the installation of the MarkdownPreview plugin.

---

## Core Configuration (Explanation)

### options.lua

Editor behavior and UI defaults:
- Line numbers (absolute + relative)
- Indentation (2 spaces)
- Clipboard integration
- Better splits and scrolling
- Persistent undo

---

### keymaps.lua

Keymaps are grouped by feature:
- File operations
- Splits & windows
- Telescope
- Neo-tree
- Terminal
- LSP
- Git
- Debugging

Each keymap includes a `desc` so it integrates with **which-key**.

---

### langs.lua

This file is where you:
- Add Treesitter languages
- Later add language‑specific setup if needed

---

## Plugin Installation

Plugins are installed by creating files inside `lua/plugins/`.

### Example: nvim-lspconfig

Create `lua/plugins/nvim-lspconfig.lua`:

```lua
return {
  "neovim/nvim-lspconfig",
  name = "nvim-lspconfig",
}
```

> **Important:**
> - You do **not** install LSP servers here
> - LSP servers are installed later via **Mason**

---

## Installed Plugins

### UI & Base

- **nvim-web-devicons** – Filetype icons
- **catppuccin** – Colorscheme
- **lualine** – Statusline with mode, git, and LSP info

---

### Navigation & Workflow

- **telescope** – Fuzzy finder for files, grep, buffers
- **neo-tree** – File explorer
- **toggleterm** – Embedded terminal
- **which-key** – Displays available keybindings

---

### Syntax & Editing

- **nvim-treesitter** – Syntax highlighting & code structure
- **Comment.nvim** – Toggle comments
- **nvim-autopairs** – Auto-close brackets and quotes

---

### LSP Core

- **mason** – Installs LSPs, linters, formatters
- **mason-lspconfig** – Connects Mason with lspconfig
- **nvim-lspconfig** – LSP configuration

---

### Completion & Snippets

- **luasnip** – Snippet engine
- **blink.cmp** – Completion engine (requires Cargo)
- **lazydev** – Neovim & Lua development helpers

---

### Linting & Formatting

- **none-ls** – External linters & formatters via LSP
- **stylua** – Lua formatter
- **luacheck** – Lua linter
- **trouble** – Diagnostics list UI

---

### Debugging

- **nvim-dap** – Debug Adapter Protocol client
- **nvim-dap-ui** – Debugging UI

---

### Extras & Comfort

- **markdown-preview** – Live Markdown preview (install with npm or yarn)
- **brianhuster/autosave** – Automatic saving
- **gitsigns** – Git change indicators in the sign column

---

## Installing a New Language

### 1. Treesitter

Add the language to `langs.lua`:

```lua
require("nvim-treesitter").install { "python" }
```

---

### 2. LSP Server

Open Mason:
```vim
:Mason
```

Install the LSP (example: `pyright`).

No additional config is required for basic usage.

---

### 3. Formatter / Linter

Install tools via Mason (e.g. `black`, `ruff`) and register them in `none-ls` later if desired.

---

## Keyboard Shortcuts

**If not changed, <leader> is set to the space bar.**

### General
| Key | Action |
|----|-------|
| `<leader>w` | Save file |
| `<leader>q` | Quit buffer |
| `<leader>x` | Save & quit |

---

### Windows & Splits
| Key | Action |
|----|-------|
| `<leader>sv` | Vertical split |
| `<leader>sh` | Horizontal split |
| `<leader>sc` | Close split |
| `<leader>so` | Close other splits |

---

### Telescope
| Key | Action |
|----|-------|
| `<leader>ff` | Find files |
| `<leader>fg` | Live grep |
| `<leader>fb` | Buffers |
| `<leader>fh` | Help tags |

---

### File Explorer & Terminal
| Key | Action |
|----|-------|
| `<leader>e` | Toggle Neo-tree |
| `<leader>t` | Toggle terminal |

---

### LSP
| Key | Action |
|----|-------|
| `gd` | Go to definition |
| `gr` | References |
| `K` | Hover |
| `<leader>rn` | Rename |
| `<leader>ca` | Code action |
| `<leader>f` | Format |

---

### Git
| Key | Action |
|----|-------|
| `]c` / `[c` | Next / previous hunk |
| `<leader>gs` | Stage hunk |
| `<leader>gu` | Undo stage |
| `<leader>gp` | Preview hunk |

---

### Debugging
| Key | Action |
|----|-------|
| `<F5>` | Start / continue |
| `<F10>` | Step over |
| `<F11>` | Step into |
| `<F12>` | Step out |
| `<leader>db` | Toggle breakpoint |
| `<leader>du` | Toggle DAP UI |
