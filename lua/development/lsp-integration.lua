return {
  {
    'neovim/nvim-lspconfig',
    keys = function()
      return {
        { 'gd', require('telescope.builtin').lsp_definitions, { desc = '[G]oto [D]efinition' } },
        { 'gr', require('telescope.builtin').lsp_references, { desc = '[G]oto [R]eferences' } },
        { 'gI', require('telescope.builtin').lsp_implementations, { desc = '[G]oto [I]mplementation' } },
        { '<leader>D', require('telescope.builtin').lsp_type_definitions, { desc = 'Type [D]efinition' } },
        { '<leader>ds', require('telescope.builtin').lsp_document_symbols, { desc = '[D]ocument [S]ymbols' } },
        { '<leader>ws', require('telescope.builtin').lsp_dynamic_workspace_symbols, { desc = '[W]orkspace [S]ymbols' } },
        { '<leader>rn', vim.lsp.buf.rename, { desc = '[R]e[n]ame' } },
        { '<leader>ca', vim.lsp.buf.code_action, { desc = '[C]ode [A]ction', { 'n', 'x' } } },
        { 'gD', vim.lsp.buf.declaration, { desc = '[G]oto [D]eclaration' } },
      }
    end,
    config = function()
      local signs = { ERROR = '', WARN = '', INFO = '', HINT = '' }
      local diagnostic_signs = {}
      for type, icon in pairs(signs) do
        diagnostic_signs[vim.diagnostic.severity[type]] = icon
      end
      vim.diagnostic.config { signs = { text = diagnostic_signs } }
    end,
  },
  {
    'williamboman/mason-lspconfig.nvim',
    opts = {
      handlers = {
        function(server_name)
          require('lspconfig')[server_name].setup {}
        end,
      },
    },
  },
}
