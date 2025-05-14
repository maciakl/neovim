-- TELESCOPE CONFIG
-------------------
-- To get telescope working on Windows you need to install rg and fd:
--	choco install fd
--	choco install ripgrep

vim.cmd([[
    " standard binding
	nnoremap <leader>fg <cmd>Telescope live_grep<cr>
	nnoremap <leader>fb <cmd>Telescope buffers<cr>
	nnoremap <leader>fh <cmd>Telescope help_tags<cr>

    " lsp dependent bindings

    " show all symbols in the current buffer
    nnoremap <leader>\ <cmd>Telescope lsp_document_symbols<cr>
    nnoremap <C-\> <cmd>Telescope lsp_workspace_symbols<cr>

    " show the definition of the word under the cursor
    nnoremap <leader>fd <cmd>Telescope lsp_definitions<cr>


    " Set Alt-Up and Alt-Down to open buffers and find files
    nnoremap <A-Up> <cmd>Telescope buffers<cr>
    nnoremap <A-Down> <cmd>Telescope find_files<cr>
    nnoremap <A-\> <cmd>Telescope lsp_document_symbols<cr>
]])
