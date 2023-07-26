set nocompatible
set showmatch
set hlsearch
set incsearch
set number
set cc=80
syntax on
set cursorline
set spell
set noswapfile

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

" plugins and plugin specific settings
source plugins.vim
