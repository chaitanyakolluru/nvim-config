local Plugin = { 'Wansmer/treesj' }

Plugin.keys = { '<space>m', '<space>j', '<space>s' }

Plugin.dependencies = { 'nvim-treesitter/nvim-treesitter' }

function Plugin.config()
    require('treesj').setup({ --[[ your config ]] })
end

return Plugin
