vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "[P]roject [V]iew" })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Shift visual block Down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "shift visual block Up" })

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Page Down" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Page Up" })
vim.keymap.set("n", "n", "nzzzv", { desc = "Next forward and center" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Next reverse and center" })

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]], { desc = "Paste and Delete from register" })

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Yank selected text into system clipboard" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Yank from cursor to end of line into system clipboard" })

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "Quiet Delete" })

vim.keymap.set("n", "<leader>ff", vim.lsp.buf.format, { desc = "[F]ormat [F]ile" })

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz", { desc = "Navigate Up on Compiler Errors" })
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz", { desc = "Navigate Down on Compiler Errors" })
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz", { desc = "Navigate Up on Location List(Diagnostics)" })
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz", { desc = "Navigate Down on Location List(Diagnostics)" })

vim.keymap.set("n", "<leader>sr", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { desc = "Search and Replace selected word in a file" })
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true, desc = "Chmod +x" })

vim.keymap.set("n", "<leader><leader>", function() vim.cmd("so") end, { desc = "Shout Out" })

-- to set if err nil thingy in Go
vim.keymap.set(
  "n",
  "<leader>ee",
  "oif err != nil {<CR>}<Esc>Oreturn err<Esc>"
)
