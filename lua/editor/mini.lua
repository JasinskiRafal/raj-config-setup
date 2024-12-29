return {
  -- Collection of various small independent plugins/modules

  -- Better Around/Inside textobjects
  --
  -- Examples:
  --  - va)  - [V]isually select [A]round [)]paren
  --  - yinq - [Y]ank [I]nside [N]ext [Q]uote
  --  - ci'  - [C]hange [I]nside [']quote
  {
    'echasnovski/mini.ai',
    opts = {
      n_lines = 500,
    },
  },

  -- Add/delete/replace surroundings (brackets, quotes, etc.)
  --
  -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
  -- - sd'   - [S]urround [D]elete [']quotes
  -- - sr)'  - [S]urround [R]eplace [)] [']
  {
    'echasnovski/mini.surround',
  },

  {
    'echasnovski/mini.pairs',
    config = function()
      require('mini.pairs').setup()
    end,
  },

  {
    'echasnovski/mini.trailspace',
  },

  {
    'echasnovski/mini.icons',
    config = function()
      require('mini.icons').mock_nvim_web_devicons()
    end,
  },
  -- ... and there is more!
  --  Check out: https://github.com/echasnovski/mini.nvim
}
