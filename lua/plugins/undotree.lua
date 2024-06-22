local Plugin = { 'mbbill/undotree' }

function Plugin.config()
  vim.keymap.set("n", "<leader>uu", vim.cmd.UndotreeToggle, { desc = "UndoTree Toggle" })
  vim.keymap.set("n", "<leader>uf", vim.cmd.UndotreeFocus, { desc = "UndoTree Focus" })
end

return Plugin
