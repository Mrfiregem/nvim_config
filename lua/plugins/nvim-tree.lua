return {
  'nvim-tree/nvim-tree.lua',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  init = function()
    vim.g.loaded_netrw = 1
    vim.g.loadednetrwPlugin = 1
  end,
  config = true,
  keys = {
    { '<leader>t', '<cmd>NvimTreeToggle<cr>', desc = 'Toggle file tree visibility' },
  },
  cmd = {
    'NvimTreeToggle',
    'NvimTreeOpen',
    'NvimTreeClose',
  },
}
