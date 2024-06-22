local Plugin = { 'iamcco/markdown-preview.nvim' }

function Plugin.build()
  vim.fn["mkdp#util#install"]()
end

return Plugin
