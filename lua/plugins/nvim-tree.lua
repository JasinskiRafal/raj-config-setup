-- File tree as a sidebar plugin
return {
  'nvim-tree/nvim-tree.lua',
  opts = {
    actions = {
      change_dir = {
        restrict_above_cwd = true,
      },
    },
    sort = {
      sorter = 'case_sensitive',
    },
    git = {
      ignore = true,
    },
    filters = {
      git_ignored = false,
    },
    renderer = {
      group_empty = true,
    },
    update_focused_file = {
      enable = true,
    },
  },
}
