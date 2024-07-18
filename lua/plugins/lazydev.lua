-- Configures lua_ls to use the correct workspace libraries
return {
  'folke/lazydev.nvim',
  ft = 'lua',
  opts = {
    integrations = {
      cmp = false,
      coq = true,
    },
  },
  dependencies = { 'neovim/nvim-lspconfig' },
}
