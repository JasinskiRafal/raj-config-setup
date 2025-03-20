return {
  { -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    main = 'nvim-treesitter.configs', -- Sets main module to use for opts
    opts = {
      auto_install = true,
      highlight = {
        enable = true,
      },
      indent = { enable = true },
      ensure_installed = { 'c', 'cpp', 'python', 'lua', 'cmake', 'meson', 'json', 'dockerfile', 'rust' },
    },
  },
}
