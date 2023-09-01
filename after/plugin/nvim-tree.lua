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

vim.api.nvim_set_keymap('n', '<leader>t', ':NvimTreeToggle<CR>',
  { noremap = true, silent = true, desc = "NvimTree - Toggle" })
vim.api.nvim_set_keymap('n', '<leader>f', ':NvimTreeFocus<CR>',
  { noremap = true, silent = true, desc = "NvimTree - Focus" })
