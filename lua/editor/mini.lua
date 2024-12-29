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
    }
  },

  -- Add/delete/replace surroundings (brackets, quotes, etc.)
  --
  -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
  -- - sd'   - [S]urround [D]elete [']quotes
  -- - sr)'  - [S]urround [R]eplace [)] [']
  {
    'echasnovski/mini.surround',
  },

  -- Simple and easy statusline.
  --  You could remove this setup call if you don't like it,
  --  and try some other statusline plugin
  {
    'echasnovski/mini.statusline',
    opts = {
      -- You can configure sections in the statusline by overriding their
      -- default behavior. For example, here we set the section for
      -- cursor location to LINE:COLUMN
      ---@diagnostic disable-next-line: duplicate-set-field
      section_location = function()
        return '%2l:%-2v'
      end,
    },
  },

  {
    'echasnovski/mini.icons',
    config = function()
      require("mini.icons").mock_nvim_web_devicons()
    end,
  },
  -- ... and there is more!
  --  Check out: https://github.com/echasnovski/mini.nvim
}
