-- PLUGIN CONFIG FILE
-- Install Plug from https://github.com/junegunn/vim-plug

-- Plug Block
------------------------------------------------------------------------------
vim.cmd([[

call plug#begin('~/AppData/Local/nvim/plugged')

    " color scheme (solarized dark)
    Plug 'iCyMind/NeoSolarized'

    " status bar
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'


    " helpers
    Plug 'preservim/nerdcommenter'
    Plug 'tpope/vim-surround'
    Plug 'godlygeek/tabular'
    Plug 'mbbill/undotree'

    " dev icons (download a nerd font from https://www.nerdfonts.com/)
    Plug 'nvim-tree/nvim-web-devicons'

    " code completion
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " copilot
    Plug 'github/copilot.vim'

    " fuzzy finder
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.2' }

    " highlighting
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

    " Harpoon bookmarking
    Plug 'ThePrimeagen/harpoon', {'branch' : 'harpoon2'}



    "================= LSP =================

    " LSP auto-config
    Plug 'neovim/nvim-lspconfig'                           " Required
    Plug 'williamboman/mason.nvim', {'do': ':MasonUpdate'} " Optional
    Plug 'williamboman/mason-lspconfig.nvim'               " Optional

    " Autocompletion
    Plug 'hrsh7th/nvim-cmp'     " Required
    Plug 'hrsh7th/cmp-nvim-lsp' " Required
    Plug 'L3MON4D3/LuaSnip'     " Required

    Plug 'VonHeikemen/lsp-zero.nvim', {'branch': 'v2.x'}

call plug#end()

]])
------------------------------------------------------------------------------

-- PLUGIN SPECIFIC CONFIGURATIONS
-- These are kept in separate files for better organization

-- UNDOTREE SETUP
vim.cmd([[ nnoremap <leader>uu :UndotreeToggle<CR>]])

-- AIRLINE SETUP
require('airline')

-- TELESCOPE CONFIG
require('telescope')

-- COC SETUP
require('coc')

-- TREESITTER SETUP
require('treesitter')

-- HARPOON SETUP
require('harpooncfg')

-- LSP ZERO CONFIG SETUP
require('lsp')
