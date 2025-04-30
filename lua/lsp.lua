-- LSP ZERO CONFIG SETUP
-- Configure language servers
-- No more LSP-ZERO

-- Enable MASON LSP package manager
require("mason").setup()

-- Enable inline error messages
vim.diagnostic.config({ virtual_text = true })

vim.lsp.enable('lua_ls')
vim.lsp.enable('gopls')
vim.lsp.enable('rust_analyzer')
