local Plugin = { 'folke/todo-comments.nvim' }

Plugin.dependencies = {
  { 'nvim-lua/plenary.nvim' },
}

  Plugin.opts = {}

Plugin.keys = {
  { '<leader>tt', ':TodoTelescope<CR>', desc = "Todo Telescope" },
}

return Plugin

