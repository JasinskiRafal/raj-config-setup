--  All keymaps

-- special callbacks
local live_grep_callback = function()
  require('telescope.builtin').live_grep {
    grep_open_files = true,
    prompt_title = 'Live Grep in Open Files',
  }
end

local function conform_format()
  require('conform').format { async = true, lsp_format = 'fallback' }
end

local function current_buffer_fuzzy_find()
  require('telescope.builtin').current_buffer_fuzzy_find()
end

local function debugger_continue()
  require('dap').continue()
end

local function debugger_step_into()
  require('dap').step_into()
end

local function debugger_step_over()
  require('dap').step_over()
end

local function debugger_step_out()
  require('dap').step_out()
end

local function debugger_toggle_breakpoint()
  require('dap').toggle_breakpoint()
end

local function debugger_set_breakpoint()
  require('dap').set_breakpoint(vim.fn.input 'Breakpoint condition: ')
end

local function debugger_toggle_ui()
  require('dapui').toggle()
end

local find_config_files_callback = function()
  require('telescope.builtin').find_files { cwd = vim.fn.stdpath 'config' }
end

local function find_all_files_callback()
  require('telescope.builtin').find_files { hidden = true, no_ignore = true }
end

-- helper function for mapping
local function map(button, command, options, mode)
  options = options or {}
  mode = mode or { 'n' }

  vim.keymap.set(mode, button, command, options)
end

-- Actual mapping of keys

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

map('<leader>t', conform_format, { desc = 'Format[T] buffer' }, '')

map('<leader>lg', '<cmd>LazyGit<cr>', { desc = '[L]azy[G]it' }, '')

map('<leader>fh', require('telescope.builtin').help_tags, { desc = '[F]ind [H]elp' })
map('<leader>fk', require('telescope.builtin').keymaps, { desc = '[F]ind [K]eymaps' })
map('<leader>ff', require('telescope.builtin').find_files, { desc = '[F]ind [F]iles' })
map('<leader>fa', find_all_files_callback, { desc = '[F]ind [A]ll' })
map('<leader>fs', require('telescope.builtin').builtin, { desc = '[F]ind Telescope' })
map('<leader>fw', require('telescope.builtin').grep_string, { desc = '[F]ind current [W]ord' })
map('<leader>fg', require('telescope.builtin').live_grep, { desc = '[F]ind by [G]rep' })
map('<leader>fd', require('telescope.builtin').diagnostics, { desc = '[F]ind [D]iagnostics' })
map('<leader>fr', require('telescope.builtin').resume, { desc = '[F]ind [R]estore last' })
map('<leader>f.', require('telescope.builtin').oldfiles, { desc = '[F]ind Recent Files ("." for repeat)' })
map('<leader><leader>', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })

map('<leader>/', current_buffer_fuzzy_find, { desc = '[/] Fuzzily search in current buffer' })

map('<leader>f/', live_grep_callback, { desc = '[F]ind [/] in Open Files' })

map('<leader>fn', find_config_files_callback, { desc = '[F]ind [N]eovim files' })

map('gd', vim.lsp.buf.definition, { desc = '[G]oto [D]efinition' })
map('gD', vim.lsp.buf.declaration, { desc = '[G]oto [D]eclaration' })
map('gr', vim.lsp.buf.references, { desc = '[G]oto [R]eferences' })
map('gI', vim.lsp.buf.implementation, { desc = '[G]oto [I]mplementation' })
map('<leader>D', vim.lsp.buf.type_definition, { desc = 'Type [D]efinition' })
map('<leader>ds', vim.lsp.buf.document_symbol, { desc = '[D]ocument [S]ymbols' })
map('<leader>ws', vim.lsp.buf.workspace_symbol, { desc = '[W]orkspace [S]ymbols' })
map('<leader>rn', vim.lsp.buf.rename, { desc = '[R]e[n]ame' })
map('<leader>ca', vim.lsp.buf.code_action, { desc = '[C]ode [A]ction' }, { 'n', 'x' })

map('<F5>', debugger_continue, { desc = 'Debug: Start/Continue' })
map('<F6>', debugger_toggle_ui, { desc = 'Debug: See last session result.' })
map('<F8>', debugger_step_over, { desc = 'Debug: Step Over' })
map('<F9>', debugger_step_into, { desc = 'Debug: Step Into' })
map('<F10>', debugger_step_out, { desc = 'Debug: Step Out' })
map('<leader>b', debugger_toggle_breakpoint, { desc = 'Debug: Toggle Breakpoint' })
map('<leader>B', debugger_set_breakpoint, { desc = 'Debug: Set Breakpoint' })
