-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
    -- or                            , branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  use { "catppuccin/nvim", as = "catppuccin" }

  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
  use('nvim-treesitter/playground')
  use('mbbill/undotree')
  use('theprimeagen/harpoon')
  use('tpope/vim-fugitive')

  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lua' },

      -- Snippets
      { 'L3MON4D3/LuaSnip' },
      { 'rafamadriz/friendly-snippets' },
    }
  }

  use("folke/zen-mode.nvim")
  use("github/copilot.vim")
  use("eandrju/cellular-automaton.nvim")
  use("laytan/cloak.nvim")
  use("christoomey/vim-tmux-navigator")

  -- install without yarn or npm
  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })

  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional
    },
  }

  use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  })

  use({
    'Wansmer/treesj',
    requires = { 'nvim-treesitter/nvim-treesitter' },
    config = function()
      require('treesj').setup({
        ---@type boolean Use default keymaps (<space>m - toggle, <space>j - join, <space>s - split)
        use_default_keymaps = true,
        ---@type boolean Node with syntax error will not be formatted
        check_syntax_error = true,
        ---If line after join will be longer than max value,
        ---@type number If line after join will be longer than max value, node will not be formatted
        max_join_length = 2400,
        ---Cursor behavior:
        ---hold - cursor follows the node/place on which it was called
        ---start - cursor jumps to the first symbol of the node being formatted
        ---end - cursor jumps to the last symbol of the node being formatted
        ---@type 'hold'|'start'|'end'
        cursor_behavior = 'hold',
        ---@type boolean Notify about possible problems or not
        notify = true,
        ---@type table Presets for languages
        ---@type boolean Use `dot` for repeat action
        dot_repeat = true,
        ---@type nil|function Callback for treesj error handler. func (err_text, level, ...other_text)
        on_error = nil,
      })
    end,
  })

  use {
    'folke/trouble.nvim',
    requires = {
      'nvim-tree/nvim-web-devicons',
    },
    opts = {},
  }
end)
