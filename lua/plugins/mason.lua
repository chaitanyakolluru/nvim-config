local Plugin = {'williamboman/mason.nvim'}

Plugin.lazy = false

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
