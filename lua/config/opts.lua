-- Add line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Case-insensitive search and commands
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Indent with 2 spaces by default
vim.opt.expandtab = true
vim.opt.shiftwidth = 4

-- Show whiitespace character representations
vim.opt.list = true
vim.opt.listchars = {
    eol = '⏎',
    tab = '» ',
    extends = '›',
    precedes = '‹',
    nbsp = '␣',
    trail = '·',
}
