return {
  'Pocco81/auto-save.nvim',
  enabled = false,
  config = function()
    vim.keymap.set('n', '<leader>as', ':ASToggle<CR>', { desc = 'Toggle [A]uto [S]ave<CR>' })
  end,
}
