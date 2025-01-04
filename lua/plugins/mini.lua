return {
  {
    'echasnovski/mini.ai',
    config = function()
      require('mini.ai').setup { n_lines = 500 }
    end,
  },

  {
    'echasnovski/mini.surround',
    config = function()
      require('mini.surround').setup()
    end,
  },

  {
    'echasnovski/mini.pairs',
    config = function()
      require('mini.pairs').setup()
    end,
  },

  {
    'echasnovski/mini.trailspace',
    config = function()
      require('mini.trailspace').setup()
    end,
  },

  {
    'echasnovski/mini.icons',
    config = function()
      require('mini.icons').setup()
      require('mini.icons').mock_nvim_web_devicons()
    end,
  },
}
