-- PLUGIN CONFIG FILE
-- Install Plug from https://github.com/junegunn/vim-plug

-- Plug Block
------------------------------------------------------------------------------
vim.cmd([[

call plug#begin('~/AppData/Local/nvim/plugged')

    " color scheme
    Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

    " status bar
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " helpers
    Plug 'preservim/nerdcommenter'
    Plug 'tpope/vim-surround'
    Plug 'godlygeek/tabular'

    " dev icons (download a nerd font from https://www.nerdfonts.com/)
    Plug 'nvim-tree/nvim-web-devicons'

    " copilot
    Plug 'github/copilot.vim'

    " fuzzy finder
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' }

    " highlighting
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}


    "================= LSP =================

    " LSP auto-config
    Plug 'mason-org/mason.nvim'
    Plug 'mason-org/mason-lspconfig.nvim'
    Plug 'neovim/nvim-lspconfig'

call plug#end()

]])
------------------------------------------------------------------------------

-- PLUGIN SPECIFIC CONFIGURATIONS
-- These are kept in separate files for better organization

-- Theme
vim.cmd.colorscheme "catppuccin-mocha"

-- AIRLINE SETUP
require('airline')

-- TELESCOPE CONFIG
require('telescope')

-- TREESITTER SETUP
require('treesitter')

-- LSP CONFIG SETUP
require('lsp')
