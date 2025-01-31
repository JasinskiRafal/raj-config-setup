return {
  {
    'WhoIsSethDaniel/mason-tool-installer.nvim',
    dependencies = {
      'williamboman/mason.nvim',
      config = true,
    },
    opts = {
      ensure_installed = {
        'clang-format',
        'stylua',
        'lua-language-server',
        'luacheck',
        'clangd',
        'cpplint',
        'rust-analyzer',
        'cmakelang',
        'cmake-language-server',
        'mesonlsp',
        'python-lsp-server',
        'debugpy',
        'pylint',
        'autopep8',
        'zls',
      },
      auto_update = true,
      run_on_start = true,
    },
  },
}
