require'lspconfig'.pylsp.setup{
  settings = {
    pylsp = {
      pylsp = {
        plugins = {
          pycodestyle = {
            enabled = true,
            ignore = {'W391', 'E501'},
            maxLineLength = 100
          }
        }
      }
    }
  }
}

