local nvim_lsp = require('nvim_lsp')

nvim_lsp.ltex.setup {
  settings = {
    ltex = {
      dictionary = {
        ['en-US'] = { 'perf', 'ci' },
      },
    },
  },
}
