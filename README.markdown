# My Neovim Setup

My quick and dirty Neovim setup circa 2024.

## Config Files

Neovim config files are located in:

    ~/.config/nvim/

Or on Windows:

    %LOCALAPPDATA%\nvim

## Dependencies

- [Plug](https://github.com/junegunn/vim-plug) - plugin manager
- [Nerd Font](https://www.nerdfonts.com/) - a patched icon font (eg. Fira)

- [ripgrep](https://github.com/BurntSushi/ripgrep) - fast grep
- [fd](https://github.com/sharkdp/fd) - fast file search
- [tree-sitter](https://github.com/tree-sitter/tree-sitter/tree/master/cli) - code parser for hilights


On windows use `choco` or `scoop` to install CLI dependencies.

Run:

    choco install ripgrep
    choco install fd
    choco install llvm
    choco install mingw
    choco install python3
    choco install gzip
    choco install unzip
    choco install wget
    choco install tree-sitter

Don't use `winget` - neovim does not like the way it symlinks `rg` and `fd`.

## Initial Setup

First, get the Plug installed.

On Mac/Unix/Linux:

    sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

On Windows:

    iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force

First time opening neovim, run:

    :PlugInstall
    :Copilot setup

Close and re-open.

## GUI

Neovim is no longer bundled with nvim-qt. You can use [Neovide](https://neovide.dev/).

Install Neovide (it's fine to use `winget` for this):

    winget install neovide

or on Mac:

    brew install neovide


On Windows you can set up right click context menu:

    Windows Registry Editor Version 5.00

    [HKEY_CLASSES_ROOT\*\shell\Neovim]
    @="Edit with Neovim"
    "Icon"="\"C:\\Program Files\\Neovide\\neovide.exe\""

    [HKEY_CLASSES_ROOT\*\shell\Neovim\command]
    @="\"C:\\Program Files\\Neovide\\neovide.exe\" \"%1\""


## Plugins

Following plugins are in use.

### Theme and UI

- [NeoSolarized Theme](https://github.com/overcache/NeoSolarized)
- [Airline](https://github.com/vim-airline/vim-airline)
- [Dev-Icons](https://github.com/nvim-tree/nvim-web-devicons)

### Code Hithlightighting

- [Tree-Sitter](https://github.com/nvim-treesitter/nvim-treesitter)

### Fuzzy Finder & Navigation

- [Telescope](https://github.com/nvim-telescope/telescope.nvim)

### LSP

- [Mason](https://github.com/williamboman/mason.nvim)
- [Mason LSP-Config](https://github.com/williamboman/mason-lspconfig.nvim)
- [LSP Config](https://github.com/neovim/nvim-lspconfig)


### Other

- [Surround](https://github.com/tpope/vim-surround)
- [Tabular](https://github.com/godlygeek/tabular)
- [NERD Commenter](https://github.com/preservim/nerdcommenter)
- [Copilot](https://github.com/github/copilot.vim)

## Providers

Node:

    npm install neovim -g

Python:

    pip install neovim

## Troubleshooting

Check health:

    :checkhealth

Fix the stuff in red.
