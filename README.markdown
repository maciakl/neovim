# My Neovim Setup

My quick and dirty Neovim setup circa 2024.

## Dependencies

- [Plug](https://github.com/junegunn/vim-plug) - plugin manager
- [Nerd Font](https://www.nerdfonts.com/) - a patched icon font (eg. Fira)

- [ripgrep](https://github.com/BurntSushi/ripgrep)
- [fd](https://github.com/sharkdp/fd)


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

## Providers

Node:

    npm install neovim -g

Python:

    pip install neovim

## Troubleshooting

Check health:

    :checkhealth

Fix the stuff in red.
