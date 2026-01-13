-- Check if vim-plug is installed, if not, install it
-- Install Plug from https://github.com/junegunn/vim-plug

-- this is system dependent
if vim.fn.has('win32') == 1 or vim.fn.has('win64') == 1 then
    -- check if %LOCALAPPDATA%\nvim-data\site\autoload\plug.vim exists
    -- if it doesn't, download it from https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    -- and save it to that location
    local plug_path = vim.fn.stdpath('data') .. '\\site\\autoload\\plug.vim'
    if vim.fn.empty(vim.fn.glob(plug_path)) > 0 then
        vim.fn.system({
            'powershell', '-Command',
            'Invoke-WebRequest -Uri "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" -OutFile "' .. plug_path .. '"'
        })
    end
else
    -- On non-windows systems:
    -- check if ~/.local/share/nvim/site/autoload/plug.vim exists
    -- if it doesn't, download it from https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    -- and save it to that location
    -- NOTE: curl required
    local plug_path = vim.fn.stdpath('data') .. '/site/autoload/plug.vim'
    if vim.fn.empty(vim.fn.glob(plug_path)) > 0 then
        vim.fn.system({
            'sh', '-c',
            'curl -fLo ' .. plug_path .. ' --create-dirs ' ..
            'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
        })
    end
end
