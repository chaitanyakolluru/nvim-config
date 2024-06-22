local Plugin = { 'tpope/vim-fugitive' }

function Plugin.config()
  vim.keymap.set("n", "<leader>gs", vim.cmd.Git, { desc = "Figitive - Git Status" });
end

return Plugin
