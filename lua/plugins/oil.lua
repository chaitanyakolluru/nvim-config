local Plugin = { 'stevearc/oil.nvim' }

function Plugin.config()
  vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

  require("oil").setup({
    default_file_explorer = true,
    win_options = {
      wrap = true,
    },
    delete_to_trash = true,
    skip_confirm_for_simple_edits = true,
    view_options = {
      show_hidden = true,
      is_always_hidden = function(name, _)
        return name == '..' or name == '.git'
      end,
      natural_order = false,
    },
    keymaps = {
      ["g?"] = "actions.show_help",
      ["<CR>"] = "actions.select",
      ["<C-s>"] = { "actions.select", opts = { vertical = true }, desc = "Open the entry in a vertical split" },
      ["<C-h>"] = { false },
      ["<C-t>"] = { "actions.select", opts = { tab = true }, desc = "Open the entry in new tab" },
      ["<C-p>"] = "actions.preview",
      ["<C-c>"] = "actions.close",
      ["<C-r>"] = "actions.refresh",
      ["-"] = "actions.parent",
      ["_"] = "actions.open_cwd",
      ["`"] = "actions.cd",
      ["~"] = { "actions.cd", opts = { scope = "tab" }, desc = ":tcd to the current oil directory" },
      ["gs"] = "actions.change_sort",
      ["gx"] = "actions.open_external",
      ["g."] = "actions.toggle_hidden",
      ["g\\"] = "actions.toggle_trash",
    },
    -- Set to false to disable all of the above keymaps
    use_default_keymaps = false,
  })
end

return Plugin
