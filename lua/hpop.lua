-- HELP POPUP
-- A reminder popup for my custom key bindings

local popup = require("plenary.popup")
local Win_id

-- Show a popup window with the given list of strings
function ShowPop(opts)
    local height = 20
    local width = 40
    local borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" }

    Win_id = popup.create(opts, {
        title = "Help",
        minwidth = width,
        minheight = height,
        borderchars = borderchars,
    })
    local bufnr = vim.api.nvim_win_get_buf(Win_id)
    vim.api.nvim_buf_set_keymap(bufnr, "n", "q", "<cmd>lua ClosePop()<CR>", { silent = false })
    vim.api.nvim_buf_set_keymap(bufnr, "n", "<esc>", "<cmd>lua ClosePop()<CR>", { silent = false })
end

-- Close the popup window
function ClosePop()
    vim.api.nvim_win_close(Win_id, true)
end

-- Show my custom key bindings and shortcuts I forget
function Helpme()
    ShowPop({
        " <ld><spc>     ➡ clear search",
        " <ld>y         ➡ system clipboard",
        " <C-l>         ➡ fix spelling",
        " ",
        " <A-left>      ➡ prev buff",
        " <A-right>     ➡ next buff",
        " <A-up>        ➡ search buffers",
        " <A-down>      ➡ search files",
        " ",
        " <A-\\>         ➡ lsp search doc symbols",
        " <C-\\>         ➡ lsp search proj symbols",
        " <C-o>         ➡ jump back to previous location",
        " <C-S>         ➡ sho LSP definition insert mode",
        " <C-x><C-o>    ➡ LSP autocomplete",
        " K             ➡ Show LSP definition",
        " gd            ➡ go to LSP definition",
        " ",
        " <S-j>         ➡ move selection down",
        " <S-k>         ➡ move selection up",
        " ",
        " cs]}          ➡ change [] to {}",
        " ysiw)         ➡ surround word with ()",
        " S)            ➡ surround selection with ()",
        " ",
        " <ld>cc        ➡ comment out line",
        " <ld>cu        ➡ uncomment line",
        " ",
        " :Tab /=       ➡ align on =",
        " ",
        " <C-w>v        ➡ split",
        " <C-w>w        ➡ switch split",
        " <C-w>c        ➡ close split",

    })
end

-- Bind the help popup to <leader>h
vim.cmd([[
    nnoremap <leader>h :lua Helpme()<CR>
]])
