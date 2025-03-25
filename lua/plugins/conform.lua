-- this is a formatting plugin based on installed formatters
return {
  'stevearc/conform.nvim',
  dependencies = {
    'williamboman/mason.nvim',
    config = true,
  },
  event = { 'BufWritePre' },
  cmd = { 'ConformInfo' },
  opts = {
    notify_on_error = true,
    format_on_save = {
      timeout_ms = 500,
      lsp_format = 'fallback',
    },
    formatters_by_ft = {
      lua = { 'stylua' },
      cpp = { 'clang-format' },
      c = { 'clang-format' },
      cmake = { 'cmake-format' },
      rust = { 'rustfmt' },
      python = { 'autopep8' },
    },
  },
}
