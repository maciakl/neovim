-- PLUGIN CONFIG FILE

------------------------------------------------------------------------------
vim.pack.add {

    -- color scheme
    { src = "https://github.com/catppuccin/nvim", name = "catppuccin" },

    -- status bar
    { src = "https://github.com/akinsho/bufferline.nvim", tag = "*" },
    "https://github.com/nvim-lualine/lualine.nvim",

    -- dev icons (download font from nerdfonts.com)
    "https://github.com/nvim-tree/nvim-web-devicons",

    -- helpers
    "https://github.com/nvim-mini/mini.nvim",

    -- copilot
    "https://github.com/github/copilot.vim",

    -- fuzzy finder -- navigation
    "https://github.com/nvim-lua/plenary.nvim",
    "https://github.com/nvim-telescope/telescope.nvim",

    -- syntax highlighting
    "https://github.com/nvim-treesitter/nvim-treesitter",

    --================= LSP =================
    -- LSP auto-config
    "https://github.com/mason-org/mason.nvim",
    "https://github.com/mason-org/mason-lspconfig.nvim",
    "https://github.com/neovim/nvim-lspconfig",
}
------------------------------------------------------------------------------

-- PLUGIN SPECIFIC CONFIGURATIONS
-- These are kept in separate files for better organization

-- UI CONFIGURATION
-- theme, statusline, bufferline, etc.
require('ui')

-- MINI PLUGINS
-- Helper plugins to surround, comment, align, etc..
require('mini')

-- TELESCOPE CONFIG
-- Fuzzy finder, file/buffer picker
require('telescope')

-- TREE-SITTER SETUP
-- Syntax highlighting
require('treesitter')

-- LSP SETUP
-- Zero config LSP
require('lsp')
