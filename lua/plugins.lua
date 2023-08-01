-- PLUGIN CONFIG FILE
--

-- Install Plug from https://github.com/junegunn/vim-plug

-- Plug Block
vim.cmd([[

call plug#begin('~/AppData/Local/nvim/plugged')

	" themes
	Plug 'iCyMind/NeoSolarized'

	" status bar
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'


	" helpers
	Plug 'preservim/nerdcommenter'
	Plug 'tpope/vim-surround'
	Plug 'godlygeek/tabular'
    Plug 'mbbill/undotree'

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


-- UNDOTREE SETUP

vim.cmd([[ nnoremap <leader>uu :UndotreeToggle<CR>]])

-- TELESCOPE CONFIG
-------------------
-- To get telescope working on Windows you need to install rg and fd:
--	choco install fd
--	choco install ripgrep

vim.cmd([[
    " set basic shortcuts
	nnoremap <leader>ff <cmd>Telescope find_files<cr>
	nnoremap <leader>fg <cmd>Telescope live_grep<cr>
	nnoremap <leader>fb <cmd>Telescope buffers<cr>
	nnoremap <leader>fh <cmd>Telescope help_tags<cr>

    " set Alt-Up and Alt-Down to use Telescope for file and buffer browsing
    " use Cmd-Up and Cmd-Down on mac
    if has('mac')
        nnoremap <D-Up> <cmd>Telescope buffers<cr>
        nnoremap <D-Down> <cmd>Telescope find_files<cr>
    else
        nnoremap <A-Up> <cmd>Telescope buffers<cr>
        nnoremap <A-Down> <cmd>Telescope find_files<cr>
    endif
]])


-- COC SETUP
------------
-- to install language servers run CoCInstall
-- 	CoCInstall coc-vimlsp
-- 	CoCInstall coc-tsserver

vim.opt.writebackup = false

local keyset = vim.keymap.set

-- Autocomplete
function _G.check_back_space()
	local col = vim.fn.col('.') - 1
	return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end

-- Use Tab for trigger completion with characters ahead and navigate
local opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}
keyset("i", "<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', opts)
keyset("i", "<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], opts)

-- Make <CR> to accept selected completion item or notify coc.nvim to format
-- <C-g>u breaks current undo, please make your own choice
keyset("i", "<cr>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], opts)



-- TREESITTER SETUP
-------------------
require'nvim-treesitter.configs'.setup {
	-- A list of parser names, or "all" (the five listed parsers should always be installed)
	ensure_installed = { "c", "lua", "vim", "vimdoc", "query" },

	-- Install parsers synchronously (only applied to `ensure_installed`)
	sync_install = false,

	-- Automatically install missing parsers when entering buffer
	-- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
	auto_install = true,

	-- List of parsers to ignore installing (for "all")
	ignore_install = { "javascript" },

	highlight = {
		enable = true,

		-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
		-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
		-- Using this option may slow down your editor, and you may see some duplicate highlights.
		-- Instead of true it can also be a list of languages
		additional_vim_regex_highlighting = false,
	},
}


-- LSP ZERO CONFIG

local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

-- Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()
