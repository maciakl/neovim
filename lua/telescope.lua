-- TELESCOPE CONFIG
-------------------
-- To get telescope working on Windows you need to install rg, fzf and fd:
--	scoop install fd
--	scoop install ripgrep
--	scoop install fzf

vim.cmd([[
    " standard binding
	nnoremap <A-g> <cmd>Telescope live_grep<cr>

    " LSP Dependent Bindings to show symbols
    nnoremap <C-\> <cmd>Telescope lsp_workspace_symbols<cr>
    nnoremap <A-\> <cmd>Telescope lsp_document_symbols<cr>

    nnoremap <leader>fd <cmd>Telescope lsp_definitions<cr>

    " Set Alt-Up and Alt-Down to open buffers and find files
    nnoremap <A-Up> <cmd>Telescope buffers<cr>
    nnoremap <A-Down> <cmd>Telescope find_files<cr>
]])
