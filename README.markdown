# My Neovim Setup

My quick and dirty Neovim setup circa 2023.

## Dependencies

- [Plug](https://github.com/junegunn/vim-plug) - plugin manager
- [ripgrep](https://github.com/BurntSushi/ripgrep)
- [fd](https://github.com/sharkdp/fd)

On windows run:

    choco install ripgrep
    choco install fd
    choco install llvm

Don't use `winget` - neovim does not like the way it symlings `rg` and `fd`.
