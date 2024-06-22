local Plugin = { 'williamboman/mason.nvim' }

Plugin.lazy = true

Plugin.cmd = { 'Mason', 'MasonUpdate', 'MasonInstall', 'MasonUnInstall' }

Plugin.dependencies = {
  { 'williamboman/mason-lspconfig.nvim' },
}

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
