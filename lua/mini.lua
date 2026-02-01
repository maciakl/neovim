-- MINI.NVIM CONFIG
-- This replaces a number of helper plugins
-- We are only using a fraction of this plugin's functionality

-- Replaces tpope/surround
require('mini.surround').setup()

-- Replaces nerdcommenter
require('mini.comment').setup()

-- replaces Tabularize
require('mini.align').setup()

-- Replaces vim.cmp
require('mini.completion').setup()

-- Autopairs
require('mini.pairs').setup()

-- File Browser (replaces netrw)
require('mini.files').setup({
    mappings = {
        go_in_plus = "<CR>", -- open files with enter
    }
})

-- Indent Line
require('mini.indentscope').setup()

-- Extend text objects
require('mini.ai').setup()
