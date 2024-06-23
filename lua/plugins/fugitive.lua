local Plugin = { 'tpope/vim-fugitive' }

Plugin.keys = {
  { '<leader>gs', ':Git<CR>', desc = "Figitive - Git Status" },
}

Plugin.config = true

return Plugin
