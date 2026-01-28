-- PLUGIN CONFIG FILE
-- Install Plug from https://github.com/junegunn/vim-plug


-- Install plug if not already installed
require('plug')

-- SETTING THE PATH FOR PLUGGED PLUGINS
if vim.fn.has('win32') == 1 or vim.fn.has('win64') == 1 then
    vim.g.plugpath = '~/AppData/Local/nvim/plugged'
else
    vim.g.plugpath = '~/.config/nvim/plugged'
end

-- Plug Block
------------------------------------------------------------------------------
vim.cmd([[

call plug#begin(plugpath)

    " color scheme
    Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

    " status bar
    Plug 'akinsho/bufferline.nvim', { 'tag': '*' }
    Plug 'nvim-lualine/lualine.nvim'

    " dev icons (download font from nerdfonts.com)
    Plug 'nvim-tree/nvim-web-devicons'

    " helpers
    Plug 'nvim-mini/mini.nvim'

    " copilot
    Plug 'github/copilot.vim'

    " fuzzy finder -- navigation
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'

    " syntax highlighting
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

    "================= LSP =================

    " LSP auto-config
    Plug 'mason-org/mason.nvim'
    Plug 'mason-org/mason-lspconfig.nvim'
    Plug 'neovim/nvim-lspconfig'

call plug#end()

]])
------------------------------------------------------------------------------


-- check if the plugin directory exists and if not run :PlugInstall
-- then quit nvim to reload with the plugins installed
if vim.fn.isdirectory(vim.fn.expand(vim.g.plugpath)) == 0 then
    vim.cmd('PlugInstall --sync | qa')
    vim.cmd('qa')
end

-- PLUGIN SPECIFIC CONFIGURATIONS
-- These are kept in separate files for better organization

-- UI CONFIGURATION
require('ui')

-- MINI PLUGINS HELPER SETUP
require('mini')

-- TELESCOPE CONFIG
require('telescope')

-- TREE-SITTER SETUP
require('treesitter')

-- LSP CONFIG SETUP
require('lsp')
