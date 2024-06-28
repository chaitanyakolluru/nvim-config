local Plugin = { 'epwalsh/obsidian.nvim' }

Plugin.dependencies = {
  { 'nvim-lua/plenary.nvim' },
}

Plugin.keys = {
  { '<leader>ofl', ':ObsidianFollowLink<CR>', desc = "Obsidian Follow Link" },
  { '<leader>obl', ':ObsidianBacklinks<CR>',  desc = "Obsidian Back Link" },
  { '<leader>ol',  ':ObsidianLinks<CR>',      desc = "Obsidian Links" },
  { '<leader>on',  ':ObsidianNew<CR>',        desc = "Obsidian New" },
  { '<leader>os',  ':ObsidianSearch<CR>',     desc = "Obsidian Search" },
  -- :ObsidianLink with the id or alias as a command on a visual selection to
  -- link the selection to the other md with the identifier
}

Plugin.version = "*"
Plugin.lazy = true
Plugin.ft = "markdown"


Plugin.opts = {
  workspaces = {
    {
      name = "obsidian-vault",
      path = "/Users/k387899/Documents/obsidian-vault",
    },
  },
  -- Optional, by default when you use `:ObsidianFollowLink` on a link to an external
  -- URL it will be ignored but you can customize this behavior here.
  ---@param url string
  follow_url_func = function(url)
    -- Open the URL in the default web browser.
    vim.fn.jobstart({ "open", url }) -- Mac OS
    -- vim.fn.jobstart({"xdg-open", url})  -- linux
  end,
}

return Plugin
