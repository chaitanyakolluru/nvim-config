local Plugin = {
  -- "sainnhe/gruvbox-material",
  "catppuccin/nvim",
  lazy = false,
  priority = 1000,
  opts = {},
}

Plugin.lazy = false
Plugin.priority = 1000

function Plugin.config()
  require("catppuccin").setup({
    style = "deep"
  })
  vim.cmd([[colorscheme catppuccin-mocha]])
end

return Plugin
