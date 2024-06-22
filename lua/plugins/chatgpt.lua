local Plugin = { 'jackMort/ChatGPT.nvim' }

Plugin.dependencies = {
  "MunifTanjim/nui.nvim",
  "nvim-lua/plenary.nvim",
  "nvim-telescope/telescope.nvim"
}

function Plugin.config()
  require("chatgpt").setup()
end

return Plugin
