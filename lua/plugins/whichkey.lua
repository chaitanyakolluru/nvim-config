local Plugin = { 'folke/which-key.nvim' }

Plugin.cmd = { 'WhichKey' }

function Plugin.config()
  vim.o.timeout = true
  vim.o.timeoutlen = 300
  require("which-key").setup {}
end

return Plugin
