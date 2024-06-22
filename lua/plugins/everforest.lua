local Plugin = { 'sainnhe/everforest' }

Plugin.lazy = false
Plugin.priority = 1000

function Plugin.config()
  vim.cmd([[colorscheme everforest]])
end

return Plugin
