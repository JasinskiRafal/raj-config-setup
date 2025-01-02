return {
  -- You can easily change to a different colorscheme.
  -- Change the name of the colorscheme plugin below, and then
  -- change the command in the config to whatever the name of that colorscheme is.
  --
  -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
  'Mofiqul/vscode.nvim',
  priority = 1000, -- Make sure to load this before all the other start plugins.
  opts = {
    style = 'dark',
    italic_comments = true,
    underline_links = true,
    disable_nvimtree_bg = true,
    color_overrides = {
      vscCursorDarkDark = '#2d2d2d',
    },
  },
  init = function()
    vim.cmd.colorscheme 'vscode'
  end,
}
