local Plugin = { 'mbbill/undotree' }

Plugin.keys = {
  { '<leader>uu', ':UndotreeToggle<CR>', desc = "UndoTree Toggle" },
  { '<leader>uf', ':UndotreeFocus<CR>',  desc = "UndoTree Focus" },
}

Plugin.config = true

return Plugin
