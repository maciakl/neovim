-- LSP ZERO CONFIG SETUP
-- Configure language servers
-- No more LSP-ZERO

-- Enable MASON LSP package manager
require("mason").setup()
require("mason-lspconfig").setup()

-- Enable inline error messages
vim.diagnostic.config({ virtual_text = true })

-- <A-i> to show function signature
vim.keymap.set('n', '<A-i>', '<cmd>lua vim.lsp.buf.hover()<cr>')
vim.keymap.set('n', '<A-o>', '<cmd>lua vim.diagnostic.open_float()<cr>')

vim.keymap.set('n', '<A-n>', '<cmd>lua vim.diagnostic.goto_next()<cr>')
vim.keymap.set('n', '<A-p>', '<cmd>lua vim.diagnostic.goto_prev()<cr>')

-- gd to go to definition <ld>gd show definition in a split
vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>')
vim.keymap.set('n', '<leader>gd', '<cmd>vsplit | lua vim.lsp.buf.definition()<cr>')


-- format buffer with LSP
vim.keymap.set('n', '<leader>f', '<cmd>lua vim.lsp.buf.format()<cr>')
