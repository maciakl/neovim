-- My Neovim setup cica 2023

vim.opt.showmatch = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.number = true
vim.opt.cc = "80"
vim.opt.syntax = "on"
vim.opt.cursorline = true
vim.opt.spell = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.cmd([[

    syntax on
	filetype plugin indent on

	" use jj to get out of insert mode
	inoremap jj <ESC>

	" remap leader to space
	let mapleader="\<space>"

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
