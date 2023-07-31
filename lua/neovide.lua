
vim.cmd([[
    colorscheme NeoSolarized

    let g:neovide_input_use_logo = 1
    map <D-v> "+p<CR>
    map! <D-v> <C-R>+
    tmap <D-v> <C-R>+
    vmap <D-c> "+y<CR>
]]);
