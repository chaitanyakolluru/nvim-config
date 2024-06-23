local Plugin = { 'nvim-telescope/telescope.nvim' }

Plugin.version = '0.1.8'

Plugin.dependencies = {
  { 'nvim-lua/plenary.nvim' },
  { 'nvim-telescope/telescope-fzf-native.nvim' },
}

Plugin.keys = {
  --  -- file pickers
  { '<leader>sf', ':Telescope find_files<CR>', desc = "[S]earch [F]iles" },
  { '<leader>sg', ':Telescope git_files<CR>', desc = "Search [G]it [F]iles" },
  { '<leader>sG', ':Telescope live_grep<CR>', desc = "[S]earch by [G]rep" },
  { '<leader>sw', ':Telescope grep_string<CR>', desc = "[S]earch current [W]ord" },

  --  -- vim pickers
  { '<leader>sh', ':Telescope help_tags<CR>', desc = "[S]earch [H]elp" },
  { '<leader>sb', ':Telescope buffers<CR>', desc = "[S]earch [B]uffers" },
  { '<leader>sm', ':Telescope marks<CR>', desc = "[S]earch [M]arks" },
  { '<leader>sC', ':Telescope colorscheme<CR>', desc = "[S]earch [C]olorscheme" },
  { '<leader>sc', ':Telescope commands<CR>', desc = "[S]earch [C]ommands" },
  { '<leader>sH', ':Telescope highlights<CR>', desc = "[S]earch [H]ighlights" },

  --  -- neovim lsp pickers
  { 'gr', ':Telescope lsp_references<CR>', desc = "[G]oto [R]eferences" },
  { '<leader>ds', ':Telescope lsp_document_symbols<CR>', desc = "[D]ocument [S]ymbols" },
  { '<leader>ws', ':Telescope lsp_workspace_symbols<CR>', desc = "[W]orkspace [S]ymbols" },
  { '<leader>sd', ':Telescope diagnostics<CR>', desc = "[S]earch [D]iagnostics" },
}

Plugin.config = true

return Plugin
