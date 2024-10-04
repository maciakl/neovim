-- Harpoon Setup
local harpoon = require("harpoon")
harpoon:setup()


-- Key Bindings
vim.keymap.set("n", "<F7>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
vim.keymap.set("n", "<F6>", function() harpoon:list():add() end)

vim.keymap.set("n", "<A-S-left>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<A-S-right>", function() harpoon:list():next() end)
