-- NEOVIDE GUI SETTINGS
-- these settings are only used in Neovide front end

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
