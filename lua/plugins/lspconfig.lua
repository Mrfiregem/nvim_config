return {
  'neovim/nvim-lspconfig',
  dependencies = {
    { 'ms-jpq/coq_nvim', branch = 'coq' },
    { 'ms-jpq/coq.artifacts', branch = 'artifacts' },
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },
    'clear-action.nvim',
  },
  ft = { 'lua', 'python', 'nu', 'rust' },
  init = function()
    vim.g.coq_settings = {
      auto_start = 'shut-up',
    }
  end,
  config = function()
    -- Setup mason to install lsp servers easily
    require('mason').setup()
    require('mason-lspconfig').setup {
      ensure_installed = { 'lua_ls', 'rust_analyzer', 'ruff' },
    }

    -- Run setup function for  each lsp installed by mason
    local coq_ensure_capabilities = require('coq').lsp_ensure_capabilities
    require('mason-lspconfig').setup_handlers {
      -- default for installed servers not configured seperately
      function(server_name)
        require('lspconfig')[server_name].setup(coq_ensure_capabilities {})
      end,

      -- lspconfig setups for servers installed outside of mason
      require('lspconfig').nushell.setup(coq_ensure_capabilities {}),
    }
  end,
}
