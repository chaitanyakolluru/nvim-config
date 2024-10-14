local Plugin = { 'tpope/vim-fugitive' }

Plugin.lazy = false

Plugin.keys = {
  { '<leader>gs', ':Git<CR>', desc = "Figitive - Git Status" },
}

return Plugin
