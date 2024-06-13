-- NEOVIDE GUI SETTINGS
-- these settings are only used in Neovide front end

vim.o.guifont = "FiraCode Nerd Font:h14"
vim.g.neovide_padding_top = 0

-- particle effects
vim.g.neovide_cursor_vfx_mode = "railgun"

vim.cmd([[

    colorscheme NeoSolarized


    " enable Cmd+C amd Cmc+V 
    if has('mac')
        let g:neovide_input_use_logo = 1
        map <D-v> "+p<CR>
        map! <D-v> <C-R>+
        tmap <D-v> <C-R>+
        vmap <D-c> "+y<CR>
    endif

]]);
