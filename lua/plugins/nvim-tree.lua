-- File tree as a sidebar plugin
return {
  'nvim-tree/nvim-tree.lua',
  opts = {
    sort = {
      sorter = 'case_sensitive',
    },
    view = {},
    renderer = {
      group_empty = true,
    },
    update_focused_file = {
      enable = true,
    },
  },
}
