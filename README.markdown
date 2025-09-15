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

On windows use `scoop` to install CLI dependencies.

Run:

    scoop install fd
    scoop install fzf
    scoop install gzip
    scoop install llvm
    scoop install mingw
    scoop install python3
    scoop install ripgrep
    scoop install tree-sitter
    scoop install unzip
    scoop install wget

Don't use `winget` - neovim does not like the way it symlinks `rg` and `fd`.

## Initial Setup

Clone this repository to your Neovim config directory:

```bash
git clone git@github.com:maciakl/neovim.git ~/.config/nvim         # mac/linux
git clone git@github.com:maciakl/neovim.git $Env:LOCALAPPDATA\nvim # windows
```

Next, get the [Plug](https://github.com/junegunn/vim-plug) plugin manager installed.

On Mac/Unix/Linux:

    sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

On Windows:

    iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force

Open `nvim` and run:

    :PlugInstall
    :Copilot setup

Close and re-open.

## Mac Terminal

Mac has no Alt key and macOS eats bindings that use the Option key if you are using neovim in the terminal. You have to tell your terminal to treat option as alt.

If you ae using Ghostty put the following lines in `~/.config/ghostty/config`

    macos-option-as-alt = left
    keybind = alt+left=unbind
    keybind = alt+right=unbind


## GUI

Neovim is no longer bundled with nvim-qt. You can use [Neovide](https://neovide.dev/).

Install Neovide (it's fine to use `winget` for this):

    winget install neovide

or on Mac:

    brew install neovide

### Windows Context Menu

On Windows you can set up right click context menu:

    Windows Registry Editor Version 5.00

    [HKEY_CLASSES_ROOT\*\shell\Neovim]
    @="Edit with Neovim"
    "Icon"="\"C:\\Program Files\\Neovide\\neovide.exe\""

    [HKEY_CLASSES_ROOT\*\shell\Neovim\command]
    @="\"C:\\Program Files\\Neovide\\neovide.exe\" \"%1\""

Note, this only works for the legacy context menu, not the Windows 11 one.


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

Fix the stuff in red.
