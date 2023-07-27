# My Neovim Setup

My quick and dirty Neovim setup circa 2023.

## Dependencies

- [Plug](https://github.com/junegunn/vim-plug) - plugin manager
- [Nerd Font](https://www.nerdfonts.com/) - a patched icon font (eg. Fira)

- [ripgrep](https://github.com/BurntSushi/ripgrep)
- [fd](https://github.com/sharkdp/fd)


On windows run:

    choco install ripgrep
    choco install fd
    choco install llvm
    choco install mingw
    choco install python3


Don't use `winget` - neovim does not like the way it symlings `rg` and `fd`.

## Initial Setup

First time opening neovim, run:

    :PlugInstall

Close and re-open.

## Providers

Node:

    npm install neovim -g

Python:

    pip install neovim

## Troubleshooting

Check health:

    :checkhealth

Fix the stuff in red.
