-- My Neovim setup cica 2023

-- basics
vim.opt.showmatch = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.cc = "80"
vim.opt.cursorline = true
vim.opt.spell = true

-- line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- tabs
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- disable swap files and backups, enable undo file
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

vim.scrolloff = 8
vim.opt.updatetime = 50

-- the leftmost margin
vim.opt.signcolumn = "yes"

-- remap leader to space
vim.g.mapleader = " "
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")


-- Move visually selected block with Shift-J and Shift-K

-- Legacy settings from .vimrc
vim.cmd([[

    syntax on
	filetype plugin indent on

	" use jj to get out of insert mode
	inoremap jj <ESC>

	" pressing <leader><space> clears the search highlights
	nmap <silent> <leader><space> :nohlsearch<CR>

	" use <leader>y and <leader>p to copy and paste from system clipboard
	noremap <leader>y "+y
	noremap <leader>Y "+Y

	" automatically jump to last misspelled word and correct it
	noremap <C-l> [sz=
	inoremap <C-l> <esc>[sz=

	" changing file types:
	command! DOS  set ff=dos  " force windows style line endings
	command! UNIX set ff=unix " force unix style line endings
	command! MAC  set ff=mac  " force mac style line endings

	" quick buffer switching
	nnoremap <A-left> :bprev<cr>
	nnoremap <A-right> :bnext<cr>

]])

require('plugins')

if vim.fn.has('win32') then
    require('windows')
end
