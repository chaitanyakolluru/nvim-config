-- Lua
vim.keymap.set("n", "<leader>qx", function() require("trouble").open() end, {desc = "Trouble - Open"})
vim.keymap.set("n", "<leader>qw", function() require("trouble").open("workspace_diagnostics") end, {desc = "Trouble - Workspace Diagnostics"})
vim.keymap.set("n", "<leader>qd", function() require("trouble").open("document_diagnostics") end, {desc = "Trouble - Document Diagnostics"})
vim.keymap.set("n", "<leader>ql", function() require("trouble").open("loclist") end, {desc = "Trouble - Location List"})
vim.keymap.set("n", "gR", function() require("trouble").open("lsp_references") end, {desc = "Trouble - LSP References"})
