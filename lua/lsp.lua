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


-- LSP KEYMAPS
-- show signature
 vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>')
 -- go to definition
 vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>')
