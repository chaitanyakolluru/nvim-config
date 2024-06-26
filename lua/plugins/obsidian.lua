local Plugin = { 'epwalsh/obsidian.nvim' }

Plugin.dependencies = {
  { 'nvim-lua/plenary.nvim' },
}

Plugin.version = "*"
Plugin.lazy = true
Plugin.ft = "markdown"


Plugin.opts = {
  workspaces = {
    {
      name = "obsidian-vault",
      path = "/Users/k387899/Documents/obsidian-vault",
    },
  },
}

return Plugin
