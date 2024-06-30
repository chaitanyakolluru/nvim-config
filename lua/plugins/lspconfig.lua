local Plugin = { 'neovim/nvim-lspconfig' }
local user = {}

Plugin.dependencies = {
  { 'hrsh7th/cmp-nvim-lsp' },
  { 'williamboman/mason.nvim' },
  { 'williamboman/mason-lspconfig.nvim' },
}

Plugin.cmd = { 'LspInfo', 'LspInstall', 'LspUnInstall' }

-- This is a list of filetypes that will be used to determine if the plugin should be loaded.
Plugin.ft = { "go", "json", "yaml", "protofuf", "lua", "helm", "markdown", "python", "rust", "text", "docker", "html",
  "terraform", "typescript" }

function Plugin.init()
  -- See :help vim.diagnostic.config()
  vim.diagnostic.config({
    virtual_text = true,
    severity_sort = false,
    float = {
      border = 'rounded',
      source = true,
    },
    signs = {
      text = {
        [vim.diagnostic.severity.ERROR] = '✘',
        [vim.diagnostic.severity.WARN] = '▲',
        [vim.diagnostic.severity.HINT] = '⚑',
        [vim.diagnostic.severity.INFO] = '»',
      },
    },
  })

  vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(
    vim.lsp.handlers.hover,
    { border = 'rounded' }
  )

  vim.lsp.handlers['textDocument/signatureHelp'] = vim.lsp.with(
    vim.lsp.handlers.signature_help,
    { border = 'rounded' }
  )
end

function Plugin.config()
  local lspconfig = require('lspconfig')
  local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

  local group = vim.api.nvim_create_augroup('lsp_cmds', { clear = true })

  vim.api.nvim_create_autocmd('LspAttach', {
    group = group,
    desc = 'LSP actions',
    callback = user.on_attach
  })

  -- Automatically organize imports on save
  vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*.go",
    callback = function()
      local params = vim.lsp.util.make_range_params()
      params.context = { only = { "source.organizeImports" } }
      -- buf_request_sync defaults to a 1000ms timeout. Depending on your
      -- machine and codebase, you may want longer. Add an additional
      -- argument after params if you find that you have to write the file
      -- twice for changes to be saved.
      -- E.g., vim.lsp.buf_request_sync(0, "textDocument/codeAction", params, 3000)
      local result = vim.lsp.buf_request_sync(0, "textDocument/codeAction", params)
      for cid, res in pairs(result or {}) do
        for _, r in pairs(res.result or {}) do
          if r.edit then
            local enc = (vim.lsp.get_client_by_id(cid) or {}).offset_encoding or "utf-16"
            vim.lsp.util.apply_workspace_edit(r.edit, enc)
          end
        end
      end
      vim.lsp.buf.format({ async = false })
    end
  })


  -- See :help mason-lspconfig-settings
  require('mason-lspconfig').setup({
    handlers = {
      -- See :help mason-lspconfig-dynamic-server-setup
      function(server)
        -- See :help lspconfig-setup
        lspconfig[server].setup({
          capabilities = lsp_capabilities,
        })
      end,
      ['lua_ls'] = function()
        -- if you install the language server for lua it will
        -- load the config from lua/plugins/lsp/lua_ls.lua
        require('plugins.lsp.lua_ls')
      end,
      ['gopls'] = function()
        require('plugins.lsp.gopls')
      end
    }
  })
end

--- setting up keymaps for lsp
function user.on_attach(event)
  local bufmap = function(mode, lhs, rhs, desc)
    local opts = { buffer = event.buf, desc = desc }
    vim.keymap.set(mode, lhs, rhs, opts)
  end

  -- You can search each function in the help page.
  -- For example :help vim.lsp.buf.hover()

  bufmap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', 'Hover documentation')
  bufmap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', 'Go to definition')
  bufmap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', 'Go to declaration')
  bufmap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', 'Go to implementation')
  bufmap('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', 'Go to type definition')
  bufmap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', 'Go to reference')
  bufmap('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', 'Show function signature')
  bufmap('n', 'gR', '<cmd>lua vim.lsp.buf.rename()<cr>', 'Rename symbol')
  bufmap('n', 'vca', '<cmd>lua vim.lsp.buf.code_action()<cr>', 'Execute code action')
  bufmap('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<cr>', 'Show line diagnostic')
  bufmap('n', ']d', '<cmd>lua vim.diagnostic.goto_prev()<cr>', 'Previous diagnostic')
  bufmap('n', '[d', '<cmd>lua vim.diagnostic.goto_next()<cr>', 'Next diagnostic')
end

return Plugin
