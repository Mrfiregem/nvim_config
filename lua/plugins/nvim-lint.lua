return {
  'mfussenegger/nvim-lint',
  ft = { 'python', 'sh' },
  config = function()
    local lint = require('lint')

    lint.linters_by_ft = {
      python = { 'ruff' },
      sh = { 'shellcheck' },
    }

    local augroup = vim.api.nvim_create_augroup('nvimLint', { clear = true })
    vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWritePost' }, {
      callback = function()
        lint.try_lint()
      end,
    })
  end,
}
