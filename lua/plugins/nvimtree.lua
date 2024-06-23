local Plugin = { 'nvim-tree/nvim-tree.lua' }

Plugin.dependencies = {
  { 'nvim-tree/nvim-web-devicons' },
}

Plugin.keys = {
  { '<leader>t', ':NvimTreeToggle<CR>', desc = "NvimTree - Toggle" },
  { '<leader>f', ':NvimTreeFocus<CR>',  desc = "NvimTree - Focus" },
}

Plugin.opts = {
  sort_by = "case_sensitive",
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
}

return Plugin
