-- https://github.com/folke/tokyonight.nvim
local tokyonight = {
    'folke/tokyonight.nvim',
    priority = 1000,
    lazy = true,
    opts = {},
}

-- https://github.com/Mofiqul/dracula.nvim
local dracula = {
    'https://github.com/Mofiqul/dracula.nvim',
    priority = 1000,
    lazy = true,
}

return {
    tokyonight,
    dracula,
}
