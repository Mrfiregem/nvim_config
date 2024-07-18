-- Provides better code action support for lspconfig
return {
  'luckasRanarison/clear-action.nvim',
  lazy = true,
  opts = {
    mappings = {
      code_action = { '<leader>ca', 'Code Actions' },
      apply_first = { '<leader>cA', 'Apply first Code Action' },
    },
  },
}
