local Plugin = { 'folke/noice.nvim' }

Plugin.event = "VeryLazy"

Plugin.dependencies = {
  -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
  "MunifTanjim/nui.nvim",
  -- OPTIONAL:
  --   `nvim-notify` is only needed, if you want to use the notification view.
  --   If not available, we use `mini` as the fallback
  "rcarriga/nvim-notify",
}
Plugin.keys = {
  { '<leader>nd', ':NoiceDismiss<CR>', desc = "Noice Dismiss" },
}

function Plugin.config()
  require("noice").setup({
    lsp = {
      override = {
        -- override the default lsp markdown formatter with Noice
        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
        -- override the lsp markdown formatter with Noice
        ["vim.lsp.util.stylize_markdown"] = true,
        -- override cmp documentation with Noice (needs the other options to work)
        ["cmp.entry.get_documentation"] = true,
      },
    },
    presets = {
      bottom_search = true,         -- use a classic bottom cmdline for search
      command_palette = true,       -- position the cmdline and popupmenu together
      long_message_to_split = true, -- long messages will be sent to a split
      inc_rename = false,           -- enables an input dialog for inc-rename.nvim
      lsp_doc_border = false,       -- add a border to hover docs and signature help
    },
    routes = {
    {
      view = "split",
      filter = { event = "msg_show", min_height = 5 },
    },
  },
  })
end

return Plugin
