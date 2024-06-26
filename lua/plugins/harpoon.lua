local Plugin = { 'theprimeagen/harpoon' }

-- This is a list of filetypes that will be used to determine if the plugin should be loaded.
Plugin.ft = { "go", "json", "yaml", "protofuf", "lua", "helm", "markdown", "python", "rust", "text", "docker", "html",
  "terraform", "typescript" }

function Plugin.config()
  local mark = require("harpoon.mark")
  local ui = require("harpoon.ui")

  vim.keymap.set("n", "<leader>a", mark.add_file, { desc = "Harpoon - Add file" })
  vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu, { desc = "Harpoon - Toggle Menu " })

  vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end, { desc = "Harpoon - 1st" })
  vim.keymap.set("n", "<C-b>", function() ui.nav_file(2) end, { desc = "Harpoon - 2st" })
  vim.keymap.set("n", "<C-n>", function() ui.nav_file(3) end, { desc = "Harpoon - 3st" })
  vim.keymap.set("n", "<C-s>", function() ui.nav_file(4) end, { desc = "Harpoon - 4st" })
end

return Plugin
