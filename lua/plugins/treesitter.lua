return {
  'nvim-treesitter/nvim-treesitter',
  dependencies = {
    { 'nushell/tree-sitter-nu', lazy = true },
  },
  build = ':TSUpdate',
  config = function()
    local configs = require('nvim-treesitter.configs')

    ---@diagnostic disable-next-line: missing-fields
    configs.setup {
      highlight = { enable = true },
      indent = { enable = true },
      ensure_installed = require('config.treesitter-grammars'),
    }
  end,
}
