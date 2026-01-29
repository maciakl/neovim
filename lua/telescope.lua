-- TELESCOPE CONFIG
-------------------
-- To get telescope working on Windows you need to install rg, fzf and fd:
--	scoop install fd
--	scoop install ripgrep
--	scoop install fzf

local opts = { noremap = true, silent = true }

-- Live Grep with Alt-g
vim.api.nvim_set_keymap("n", "<A-g>", "<cmd>Telescope live_grep<cr>", opts)

-- LSP Dependent Bindings to show symbols with Alt-\ (file) and Ctrl-\ (workspace)
vim.api.nvim_set_keymap("n", "<A-\\>", "<cmd>Telescope lsp_document_symbols<cr>", opts)
vim.api.nvim_set_keymap("n", "<C-\\>", "<cmd>Telescope lsp_workspace_symbols<cr>", opts)

-- Browse project files with Alt-Down and Buffers with Alt-Up
vim.api.nvim_set_keymap("n", "<A-Up>", "<cmd>Telescope buffers<cr>", opts)
vim.api.nvim_set_keymap("n", "<A-Down>", "<cmd>Telescope find_files<cr>", opts)
