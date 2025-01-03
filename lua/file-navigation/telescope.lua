return {
  'nvim-telescope/telescope.nvim',
  event = 'VimEnter',
  branch = '0.1.x',
  dependencies = {
    { 'nvim-lua/plenary.nvim' },
    { -- If encountering errors, see telescope-fzf-native README for installation instructions
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make',
      cond = function()
        return vim.fn.executable 'make' == 1
      end,
    },
    { 'nvim-tree/nvim-web-devicons' },
  },
  keys = function()
    return {
      { '<leader>fh', require('telescope.builtin').help_tags, { desc = '[F]ind [H]elp' }, mode = 'n' },
      { '<leader>fk', require('telescope.builtin').keymaps, { desc = '[F]ind [K]eymaps' }, mode = 'n' },
      { '<leader>ff', require('telescope.builtin').find_files, { desc = '[F]ind [F]iles' }, mode = 'n' },
      { '<leader>fs', require('telescope.builtin').builtin, { desc = '[F]ind Telescope' }, mode = 'n' },
      { '<leader>fw', require('telescope.builtin').grep_string, { desc = '[F]ind current [W]ord' }, mode = 'n' },
      { '<leader>fg', require('telescope.builtin').live_grep, { desc = '[F]ind by [G]rep' }, mode = 'n' },
      { '<leader>fd', require('telescope.builtin').diagnostics, { desc = '[F]ind [D]iagnostics' }, mode = 'n' },
      { '<leader>fr', require('telescope.builtin').resume, { desc = '[F]ind [R]estore last' }, mode = 'n' },
      { '<leader>f.', require('telescope.builtin').oldfiles, { desc = '[F]ind Recent Files ("." for repeat)' }, mode = 'n' },
      { '<leader><leader>', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' }, mode = 'n' },
      {
        '<leader>/',
        function()
          require('telescope.builtin').current_buffer_fuzzy_find()
        end,
        { desc = '[/] Fuzzily search in current buffer' },
        mode = 'n',
      },
      {
        '<leader>f/',
        function()
          require('telescope.builtin').live_grep {
            grep_open_files = true,
            prompt_title = 'Live Grep in Open Files',
          }
        end,
        { desc = '[F]ind [/] in Open Files' },
        mode = 'n',
      },
      {
        '<leader>fn',
        function()
          require('telescope.builtin').find_files { cwd = vim.fn.stdpath 'config' }
        end,
        { desc = '[F]ind [N]eovim files' },
        mode = 'n',
      },
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
    pcall(require('telescope').load_extension, 'fzf')
    pcall(require('telescope').load_extension, 'ui-select')
  end,
}
