# My Neovim Setup

My quick and dirty Neovim setup circa 2025.

## Config Files

Neovim config files are located in:

    ~/.config/nvim/

Or on Windows:

    %LOCALAPPDATA%\nvim
    $Env:LOCALAPPDATA\nvim

## Dependencies

- [Plug](https://github.com/junegunn/vim-plug) - plugin manager
- [Nerd Font](https://www.nerdfonts.com/) - a patched icon font (I'm using Fira Code)

CLI utilities:

- [fd](https://github.com/sharkdp/fd) - fast search
- [fzf](https://github.com/junegunn/fzf) - fuzzy finder
- [ripgrep](https://github.com/BurntSushi/ripgrep) - fast grep
- [tree-sitter](https://github.com/tree-sitter/tree-sitter/tree/master/cli) - code parser for highlights
- [node.js](https://nodejs.org/) - required for LSP plugins

On windows use `scoop` to install CLI dependencies.

Run:

    scoop install fd, fzf, ripgrep, tree-sitter
    scoop install gzip, unzip, wget, llvm, mingw

On Mac use `brew`:

    brew install fd fzf ripgrep tree-sitter nodejs


## Initial Setup

Clone this repository to your Neovim config directory:

### Mac/Linux

```bash
git clone git@github.com:maciakl/neovim.git ~/.config/nvim
```

### Windows

```bash
git clone git@github.com:maciakl/neovim.git $Env:LOCALAPPDATA\nvim
```

### Post Config

Run `nvim` for the first time.

On the first run, Neovim will download and install the required plugins then close itself.

Upon re-opening the editor run:

    :Copilot setup

### Maintenance

For easy maintenance, plugins are installed in:

- On Mac/Unix/Linux: `~/.config/nvim/plugged/`
- On Windows: `%LOCALAPPDATA%\nvim\plugged\`

To update plugins, run:

    :PlugUpdate

## Terminal Setup

### Ghostty on Mac

Mac has no Alt key and macOS eats bindings that use the Option key if you are using neovim in the terminal. You have to tell your terminal to treat option as alt.

If you ae using Ghostty put the following lines in `~/.config/ghostty/config`

    macos-option-as-alt = left
    keybind = alt+left=unbind
    keybind = alt+right=unbind

### Windows Terminal

In Windows terminal <kbd>Ctrl</kbd>+<kbd>V</kbd> is bound to the *Paste* action breaking the vim block selection. To fix this:

- Press <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>,</kbd> to open the `settings.json` config file in the system default text editor
- Find the `keybindings` array under `actions`
- Comment out or change the the keybinding line in the folloiwing section:

```json
{
     "id": "User.paste",
     "keys": "ctrl+v"
},
```

This should take effect immediately withoug having to re-start the terminal app.

## Plugins

Following plugins are in use.

### Theme and UI

- [Catppuccin Theme](https://github.com/catppuccin/nvim) - color scheme
- [Airline](https://github.com/vim-airline/vim-airline) - status bar
- [Dev-Icons](https://github.com/nvim-tree/nvim-web-devicons) - icons

### Code Highlighting

- [Tree-Sitter](https://github.com/nvim-treesitter/nvim-treesitter) - superior code highlighting

### Fuzzy Finder & Navigation

- [Telescope](https://github.com/nvim-telescope/telescope.nvim) - easy navigation and search

### Helper Functions

- [Mini.nvim](https://github.com/echasnovski/mini.nvim) - align, comment, surround, autopairs, autocomplete

### LSP

This is the config-free LSP setup:

- [Mason](https://github.com/mason-org/mason.nvim) - language server manager/installer
- [Mason LSP Config](https://github.com/mason-org/mason-lspconfig.nvim) - bridge between Mason and LSP Config
- [LSP Config](https://github.com/neovim/nvim-lspconfig) - provides config files for all language servers

To instal a server run `:Mason`, pick a server from the list, press `i` to install it. That's it.

### Other Plugins

- [Github Copilot](https://github.com/github/copilot.vim) - ai autocomplete

## Providers

Install language providers:

    npm install neovim -g
    pip install neovim

## Troubleshooting

Check health:

    :checkhealth
