-- File tree as a sidebar plugin
return {
  'nvim-tree/nvim-tree.lua',
  opts = {
    sort = {
      sorter = 'case_sensitive',
    },
    git = {
      ignore = true,
    },
    filters = {
      git_ignored = true,
    },
    renderer = {
      group_empty = true,
    },
    update_focused_file = {
      enable = true,
    },
  },
}
