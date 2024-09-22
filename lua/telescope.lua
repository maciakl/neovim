-- TELESCOPE CONFIG
-------------------
-- To get telescope working on Windows you need to install rg and fd:
--	choco install fd
--	choco install ripgrep

vim.cmd([[
    " standard binding
	nnoremap <leader>ff <cmd>Telescope find_files<cr>
	nnoremap <leader>fg <cmd>Telescope live_grep<cr>
	nnoremap <leader>fb <cmd>Telescope buffers<cr>
	nnoremap <leader>fh <cmd>Telescope help_tags<cr>

    " lsp dependent bindings

    " show all symbols in the current buffer
    nnoremap <A-\> <cmd>Telescope lsp_document_symbols<cr>
    nnoremap <C-\> <cmd>Telescope lsp_workspace_symbols<cr>

    " show the definition of the word under the cursor
    nnoremap <leader>fd <cmd>Telescope lsp_definitions<cr>


    " Set Alt-Up and Alt-Down to open buffers and find files
    " Use Cmd-Up and Cmd-Down on Mac
    if has('mac')
        nnoremap <D-Up> <cmd>Telescope buffers<cr>
        nnoremap <D-Down> <cmd>Telescope find_files<cr>
    else
        nnoremap <A-Up> <cmd>Telescope buffers<cr>
        nnoremap <A-Down> <cmd>Telescope find_files<cr>
    endif
]])
