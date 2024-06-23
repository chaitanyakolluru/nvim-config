local Plugin = { 'nvim-treesitter/nvim-treesitter' }

Plugin.dependencies = { 'nvim-treesitter/playground' }

Plugin.build = ':TSUpdate'

-- This is a list of filetypes that will be used to determine if the plugin should be loaded.
Plugin.ft = { "go", "json", "yaml", "protofuf", "lua", "helm", "markdown", "python", "rust", "text", "docker", "html",
  "terraform", "typescript" }

function Plugin.config()
  require 'nvim-treesitter.configs'.setup {
    ensure_installed = {
      "javascript",
      "typescript",
      "go",
      "c",
      "lua",
      "vim",
      "vimdoc",
      "query",
      "yaml",
      "tmux",
      "bash",
      "dockerfile",
      "gitcommit",
      "gomod",
      "gosum",
      "gotmpl",
      "helm",
      "html",
      "json",
      "terraform",
    },

    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,

    -- Automatically install missing parsers when entering buffer
    -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
    auto_install = true,

    highlight = {
      enable = true,

      -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
      -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
      -- Using this option may slow down your editor, and you may see some duplicate highlights.
      -- Instead of true it can also be a list of languages
      additional_vim_regex_highlighting = false,
    },
  }
end

return Plugin
