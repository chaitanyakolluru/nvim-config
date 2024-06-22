local Plugin = { 'williamboman/mason.nvim' }

Plugin.lazy = true

Plugin.dependencies = {
  { 'williamboman/mason-lspconfig.nvim' },
}

Plugin.event = { 'BufReadPre', 'BufNewFile' }

function Plugin.config()
  require("mason").setup({
    ui = {
      icons = {
        package_installed = "✓",
        package_pending = "➜",
        package_uninstalled = "✗"
      }
    }
  })
end

return Plugin
