local Plugin = { 'nvim-tree/nvim-tree.lua' }

Plugin.lazy = true

-- This is a list of filetypes that will be used to determine if the plugin should be loaded.
Plugin.ft = { "go", "json", "yaml", "protofuf", "lua", "helm", "markdown", "python", "rust", "text", "docker", "html",
  "terraform", "typescript" }

Plugin.dependencies = {
  { 'nvim-tree/nvim-web-devicons' },
}

function Plugin.config()
  vim.api.nvim_set_keymap('n', '<leader>t', ':NvimTreeToggle<CR>',
    { noremap = true, silent = true, desc = "NvimTree - Toggle" })
  vim.api.nvim_set_keymap('n', '<leader>f', ':NvimTreeFocus<CR>',
    { noremap = true, silent = true, desc = "NvimTree - Focus" })

  require("nvim-tree").setup({
    sort_by = "case_sensitive",
    view = {
      width = 30,
    },
    renderer = {
      group_empty = true,
    },
    filters = {
      dotfiles = true,
    },
  })
end

return Plugin
