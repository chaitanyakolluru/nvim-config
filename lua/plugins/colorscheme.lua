local Plugin = {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
}

Plugin.lazy = false
Plugin.priority = 1000

function Plugin.config()
  vim.cmd([[colorscheme tokyonight-storm]])
end

return Plugin
