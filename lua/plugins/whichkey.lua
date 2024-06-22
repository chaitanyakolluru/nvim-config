local Plugin = { 'folke/which-key.nvim' }

function Plugin.config()
  vim.o.timeout = true
  vim.o.timeoutlen = 300
  require("which-key").setup {}
end

return Plugin
