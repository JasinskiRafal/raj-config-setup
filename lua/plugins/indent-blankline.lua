return {
  {
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',
    opts = {
      indent = {
        char = '╎',
      },
      scope = {
        char = '┃',
        highlight = { 'CursorLineNr' },
        show_end = false,
      },
    },
  },
}
