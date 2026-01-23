-- My Neovim setup cica 2025

-- basics
vim.opt.showmatch       = true
vim.opt.hlsearch        = true
vim.opt.incsearch       = true
vim.opt.cc              = "81"
vim.opt.cursorline      = true
vim.opt.spell           = true
vim.opt.syntax          = "on"
vim.opt.filetype.plugin = true
vim.opt.filetype.indent = true
vim.opt.winborder       = "rounded"

-- line numbers
vim.opt.number          = true
vim.opt.relativenumber  = true

-- tabs
vim.opt.tabstop         = 4
vim.opt.softtabstop     = 4
vim.opt.shiftwidth      = 4
vim.opt.expandtab       = true
vim.opt.smartindent     = true

-- disable swap files and backups, enable undo file
vim.opt.swapfile        = false
vim.opt.backup          = false
vim.opt.undofile        = true

vim.scrolloff           = 8
vim.opt.updatetime      = 50

-- the leftmost margin
vim.opt.signcolumn      = "yes"

-- remap leader to space
vim.g.mapleader         = " "

-- escape insert mode with jj
vim.keymap.set("i", "jj", "<ESC>", { noremap = true, silent = true })

-- clear search highlights with <leader><space>
vim.keymap.set("n", "<leader><space>", ":nohlsearch<CR>", { noremap = true, silent = true })

-- automatically jump to last misspelled word and correct it
vim.keymap.set("n", "<C-l>", "[sz=", { noremap = true, silent = true })
vim.keymap.set("i", "<C-l>", "<ESC>[sz=", { noremap = true, silent = true })

-- move visually selected block with Shift-J and Shift-K
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- quick buffer switching
vim.keymap.set("n", "<A-left>", ":bprev<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<A-right>", ":bnext<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<A-k>", ":bw!<CR>", { noremap = true, silent = true })

-- copy to system clipboard
vim.keymap.set("n", "<leader>y", '"+y', { noremap = true, silent = true })
vim.keymap.set("n", "<leader>yy", '"+yy', { noremap = true, silent = true })
vim.keymap.set("v", "<leader>y", '"+y', { noremap = true, silent = true })

-- paste from system clipboard
vim.keymap.set("n", "<leader>p", '"+p', { noremap = true, silent = true })

-- changing the file types
vim.api.nvim_create_user_command('DOS', function() vim.cmd('set ff=dos') end, {})
vim.api.nvim_create_user_command('UNIX', function() vim.cmd('set ff=unix') end, {})
vim.api.nvim_create_user_command('MAC', function() vim.cmd('set ff=mac') end, {})

-- edit the init.lua file
vim.api.nvim_create_user_command('CONFIG', function()
    vim.cmd('edit ' .. vim.env.MYVIMRC)
    vim.cmd('cd ' .. vim.fn.fnamemodify(vim.env.MYVIMRC, ':p:h'))
end, {})
--
-- Various helper functions and utilities
require('util')

-- PLUGIN HANDLING
require('plugins')

-- NEOVIDE GUI SETTINGS
if vim.g.neovide then
    require('neovide');
end
