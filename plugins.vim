
" PLUGIN CONFIG
"""""""""""""""

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
	" download a nerd font from https://www.nerdfonts.com/
	Plug 'nvim-tree/nvim-web-devicons'
	
	" code completion
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	
	" fuzzy finder
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.2' }

	" highlighting
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

call plug#end()


" TELESCOPE CONFIG
""""""""""""""""""
" To get telescope working on Windows you need to install rg and fd:
"	choco install fd
"	choco install ripgrep
"

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
