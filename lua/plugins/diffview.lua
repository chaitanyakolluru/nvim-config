local Plugin = { 'sindrets/diffview.nvim' }

function Plugin.config()
  vim.keymap.set("n", "<leader>do", vim.cmd.DiffviewOpen, { desc = "DiffviewOpen" });
  vim.keymap.set("n", "<leader>dc", vim.cmd.DiffviewClose, { desc = "DiffviewClose" });
  vim.keymap.set("n", "<leader>dfh", vim.cmd.DiffviewFileHistory, { desc = "DiffviewFileHistory" });
  vim.keymap.set("n", "<leader>dff", vim.cmd.DiffviewFocusFiles, { desc = "DiffviewFocusFiles" });
end

return Plugin
