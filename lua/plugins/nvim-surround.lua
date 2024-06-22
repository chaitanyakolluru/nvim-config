local Plugin = { 'kylechui/nvim-surround' }

Plugin.version = '*'

function Plugin.config()
  require("nvim-surround").setup({})
end

return Plugin
