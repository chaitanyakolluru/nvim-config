local Plugin = { 'nvim-telescope/telescope-fzf-native.nvim' }

Plugin.lazy = true

Plugin.build = {
  'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build',
}

return Plugin

