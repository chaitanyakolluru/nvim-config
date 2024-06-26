local Plugin = { 'kylechui/nvim-surround' }

-- This is a list of filetypes that will be used to determine if the plugin should be loaded.
Plugin.ft = { "go", "json", "yaml", "protofuf", "lua", "helm", "markdown", "python", "rust", "text", "docker", "html",
  "terraform", "typescript" }

Plugin.version = '*'

function Plugin.config()
  require("nvim-surround").setup({})
end

return Plugin
