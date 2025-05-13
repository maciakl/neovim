-- LSP ZERO CONFIG SETUP
-- Configure language servers
-- No more LSP-ZERO

-- Enable MASON LSP package manager
require("mason").setup()
require("mason-lspconfig").setup()

-- Enable inline error messages
vim.diagnostic.config({ virtual_text = true })

-- K to show function signature
 vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>')
 -- gd to go to definition
 vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>')
