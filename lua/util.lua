-- POPUP
-- Rewritten to remove the dependency on plenary
-- Create a pop-up window displaying the lines
function Pop(lines)
    local buf = vim.api.nvim_create_buf(false, true) -- Create a new scratch buffer
    local ui = vim.api.nvim_list_uis()[1]            -- Get the first UI (usually the main UI)
    local ht = #lines                                -- Height of the popup

    local opts = {
        relative = 'editor',
        width = 52,
        height = ht,                -- Height based on the number of lines
        col = (ui.width - 50) / 2,  -- Center the popup horizontally
        row = (ui.height - ht) / 2, -- Center the popup vertically
        style = 'minimal',
        border = 'rounded',
    }

    local win = vim.api.nvim_open_win(buf, true, opts)    -- Open a new window with the buffer

    vim.api.nvim_buf_set_lines(buf, 0, -1, false, lines)  -- Add the lines to the buffer

    -- close the popup with 'q' or <esc>
    vim.api.nvim_buf_set_keymap(buf, 'n', 'q', '<cmd>lua vim.api.nvim_win_close(' .. win .. ', true)<CR>',
        { noremap = true, silent = true })
    vim.api.nvim_buf_set_keymap(buf, 'n', '<esc>', '<cmd>lua vim.api.nvim_win_close(' .. win .. ', true)<CR>',
        { noremap = true, silent = true })
end

-- Show a help popup with keybindings and commands
function Helpme()
    Pop({
        " ",
        " <ld><spc>     ➡ clear search",
        " <C-l>         ➡ fix spelling",
        " ",
        " <A-left>      ➡ prev buff",
        " <A-right>     ➡ next buff",
        " <A-up>        ➡ search buffers",
        " <A-down>      ➡ search files",
        " ",
        " <C-u>         ➡ move up screen",
        " <C-d>         ➡ move down screen",
        " }             ➡ move next para",
        " ",
        " <A-\\>         ➡ lsp search doc symbols",
        " <C-\\>         ➡ lsp search proj symbols",
        " <C-o>         ➡ jump back to previous location",
        " <C-S>         ➡ show LSP definition insert mode",
        " <C-x><C-o>    ➡ LSP autocomplete",
        " <ld>f         ➡ format file using lsp formatter",
        " K             ➡ Show LSP definition",
        " gd            ➡ go to LSP definition",
        " ",
        " <S-j>         ➡ move selection down",
        " <S-k>         ➡ move selection up",
        " ",
        " ga=           ➡ go align on =",
        " gcc           ➡ go comment the line",
        " gc            ➡ go comment region",
        " saiw)         ➡ surround add internal (word)",
        " saiw(         ➡ surround add internal ( word )",
        " sd)           ➡ surround delete ()",
        " ",
        " <C-w>v        ➡ split",
        " <C-w>w        ➡ switch split",
        " <C-w>c        ➡ close split",
        " ",
    })
end

-- Bind the help popup to <leader>h
vim.api.nvim_set_keymap('n', '<leader>h', ':lua Helpme()<CR>', { noremap = true, silent = true })
