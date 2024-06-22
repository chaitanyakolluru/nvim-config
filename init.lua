local load = function(mod)
  package.loaded[mod] = nil
  require(mod)
end

load('chai.settings')
load('chai.keymaps')
load('chai.lazy')

vim.lsp.set_log_level("debug")

