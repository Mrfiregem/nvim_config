return {
  'mhartington/formatter.nvim',
  ft = { 'lua', 'python', 'sh', 'toml' },
  keys = {
    '<leader>f',
    '<leader>F',
  },
  config = function()
    -- Set formatters
    -- NOTE: Remember to add new filetypes above
    require('formatter').setup {
      filetype = {
        lua = { require('formatter.filetypes.lua').stylua },
        python = { require('formatter.filetypes.python').ruff },
        sh = { require('formatter.filetypes.sh').shfmt },
        toml = { require('formatter.filetypes.toml').taplo },
      },
    }

    -- Set keybinds
    vim.keymap.set('n', '<leader>f', '<cmd>Format<cr>', { silent = true })
    vim.keymap.set('n', '<leader>F', '<cmd>FormatWrite<cr>', { silent = true })

    -- Enable format-on-save
    local augroup = vim.api.nvim_create_augroup('FormatWrite', { clear = true })
    vim.api.nvim_create_autocmd('BufWritePost', { group = augroup, command = ':FormatWrite' })
  end,
}
