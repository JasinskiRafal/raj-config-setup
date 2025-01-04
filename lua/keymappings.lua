--  All keymaps

local function map(button, command, options, mode)
  options = options or {}
  mode = mode or { 'n' }

  vim.keymap.set(mode, button, command, options)
end

map('<Esc>', '<cmd>nohlsearch<CR>')

map('<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

map('<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' }, 't')

map('<left>', '<cmd>echo "Use h to move!!"<CR>')
map('<right>', '<cmd>echo "Use l to move!!"<CR>')
map('<up>', '<cmd>echo "Use k to move!!"<CR>')
map('<down>', '<cmd>echo "Use j to move!!"<CR>')

map('<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
map('<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
map('<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
map('<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

map('<leader>as', ':ASToggle<CR>', { desc = 'Toggle [A]uto [S]ave<CR>' })

map('<leader>t', function()
  require('conform').format { async = true, lsp_format = 'fallback' }
end, {
  desc = 'Format[T] buffer',
}, '')

map('<leader>lg', '<cmd>LazyGit<cr>', { desc = '[L]azy[G]it' }, '')

map('<leader>fh', require('telescope.builtin').help_tags, { desc = '[F]ind [H]elp' })
map('<leader>fk', require('telescope.builtin').keymaps, { desc = '[F]ind [K]eymaps' })
map('<leader>ff', require('telescope.builtin').find_files, { desc = '[F]ind [F]iles' })
map('<leader>fs', require('telescope.builtin').builtin, { desc = '[F]ind Telescope' })
map('<leader>fw', require('telescope.builtin').grep_string, { desc = '[F]ind current [W]ord' })
map('<leader>fg', require('telescope.builtin').live_grep, { desc = '[F]ind by [G]rep' })
map('<leader>fd', require('telescope.builtin').diagnostics, { desc = '[F]ind [D]iagnostics' })
map('<leader>fr', require('telescope.builtin').resume, { desc = '[F]ind [R]estore last' })
map('<leader>f.', require('telescope.builtin').oldfiles, { desc = '[F]ind Recent Files ("." for repeat)' })
map('<leader><leader>', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })
map('<leader>/', function()
  require('telescope.builtin').current_buffer_fuzzy_find()
end, { desc = '[/] Fuzzily search in current buffer' })
map('<leader>f/', function()
  require('telescope.builtin').live_grep {
    grep_open_files = true,
    prompt_title = 'Live Grep in Open Files',
  }
end, { desc = '[F]ind [/] in Open Files' })
map('<leader>fn', function()
  require('telescope.builtin').find_files { cwd = vim.fn.stdpath 'config' }
end, { desc = '[F]ind [N]eovim files' })
map('gd', require('telescope.builtin').lsp_definitions, { desc = '[G]oto [D]efinition' })
map('gr', require('telescope.builtin').lsp_references, { desc = '[G]oto [R]eferences' })
map('gI', require('telescope.builtin').lsp_implementations, { desc = '[G]oto [I]mplementation' })
map('<leader>D', require('telescope.builtin').lsp_type_definitions, { desc = 'Type [D]efinition' })
map('<leader>ds', require('telescope.builtin').lsp_document_symbols, { desc = '[D]ocument [S]ymbols' })
map('<leader>ws', require('telescope.builtin').lsp_dynamic_workspace_symbols, { desc = '[W]orkspace [S]ymbols' })
map('<leader>rn', vim.lsp.buf.rename, { desc = '[R]e[n]ame' })
map('<leader>ca', vim.lsp.buf.code_action, { desc = '[C]ode [A]ction' }, { 'n', 'x' })
map('gD', vim.lsp.buf.declaration, { desc = '[G]oto [D]eclaration' })
