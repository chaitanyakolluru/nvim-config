local Plugin = {
  "sainnhe/gruvbox-material",
  lazy = false,
  priority = 1000,
  opts = {},
}

Plugin.lazy = false
Plugin.priority = 1000

function Plugin.config()
  vim.cmd([[colorscheme gruvbox-material]])
end

return Plugin
