-- UI configuration
------------------------------------

-- Set the theme
vim.cmd.colorscheme "catppuccin-mocha"

-- activate lualine
require('lualine').setup()

-- activate bufferline
-- enable diagnostics from nvim_lsp
require('bufferline').setup{
    options = {
        separator_style = "slant",
        diagnostics = "nvim_lsp",
        diagnostics_indicator = function(count, level)
            local icon = level:match("error") and "" or ""
            return " " .. icon .. count
        end,
    }
}
