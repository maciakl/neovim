-- Windows Specific Settings

vim.cmd([[
    " make windows terminal behave
    if !has('gui')
        set t_Co=256
        set termguicolors
    endif
]]);
