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


" PLUGINS
" Install Plug from https://github.com/junegunn/vim-plug

call plug#begin('~/AppData/Local/nvim/plugged')
	" themes
	Plug 'iCyMind/NeoSolarized'

	" status bar
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'

	" navigation
	Plug 'Shougo/unite.vim'
	Plug 'preservim/nerdtree'

	" helpers
	Plug 'preservim/nerdcommenter'
	Plug 'tpope/vim-surround'
	Plug 'godlygeek/tabular'

	" dev icons
	" download a nerd fort https://www.nerdfonts.com/
	Plug 'nvim-tree/nvim-web-devicons'
	
	" code completion
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	
	" fuzzy finder
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.2' }

	" highlighting
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

call plug#end()

" Theme
colorscheme NeoSolarized


" Telescope
" To get telescope working on Windows you need to install rg and fd:
"	choco install fd
"	choco install ripgrep
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
