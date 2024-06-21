-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/k387899/.cache/nvim/packer_hererocks/2.1.1716656478/share/lua/5.1/?.lua;/Users/k387899/.cache/nvim/packer_hererocks/2.1.1716656478/share/lua/5.1/?/init.lua;/Users/k387899/.cache/nvim/packer_hererocks/2.1.1716656478/lib/luarocks/rocks-5.1/?.lua;/Users/k387899/.cache/nvim/packer_hererocks/2.1.1716656478/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/k387899/.cache/nvim/packer_hererocks/2.1.1716656478/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["ChatGPT.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fchatgpt\frequire\0" },
    loaded = true,
    path = "/Users/k387899/.local/share/nvim/site/pack/packer/start/ChatGPT.nvim",
    url = "https://github.com/jackMort/ChatGPT.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/Users/k387899/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/k387899/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/k387899/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/Users/k387899/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/k387899/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/Users/k387899/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["copilot.vim"] = {
    loaded = true,
    path = "/Users/k387899/.local/share/nvim/site/pack/packer/start/copilot.vim",
    url = "https://github.com/github/copilot.vim"
  },
  ["diffview.nvim"] = {
    loaded = true,
    path = "/Users/k387899/.local/share/nvim/site/pack/packer/start/diffview.nvim",
    url = "https://github.com/sindrets/diffview.nvim"
  },
  everforest = {
    loaded = true,
    path = "/Users/k387899/.local/share/nvim/site/pack/packer/start/everforest",
    url = "https://github.com/sainnhe/everforest"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/Users/k387899/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  harpoon = {
    loaded = true,
    path = "/Users/k387899/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/theprimeagen/harpoon"
  },
  ["kanagawa.nvim"] = {
    loaded = true,
    path = "/Users/k387899/.local/share/nvim/site/pack/packer/start/kanagawa.nvim",
    url = "https://github.com/rebelot/kanagawa.nvim"
  },
  ["lsp-zero.nvim"] = {
    loaded = true,
    path = "/Users/k387899/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = true,
    path = "/Users/k387899/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/Users/k387899/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/Users/k387899/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/Users/k387899/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/Users/k387899/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/k387899/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-surround"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18nvim-surround\frequire\0" },
    loaded = true,
    path = "/Users/k387899/.local/share/nvim/site/pack/packer/start/nvim-surround",
    url = "https://github.com/kylechui/nvim-surround"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/Users/k387899/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/k387899/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/k387899/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["oil.nvim"] = {
    config = { "\27LJ\2\n/\0\2\3\0\2\0\b\6\0\0\0X\2\4Ä\6\0\1\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\t.git\a..›\a\1\0\6\0\25\0\0316\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0003\4\a\0=\4\b\3=\3\t\0025\3\n\0005\4\v\0005\5\f\0=\5\r\4=\4\14\0035\4\15\0005\5\16\0=\5\r\4=\4\17\0035\4\18\0005\5\19\0=\5\r\4=\4\20\0035\4\21\0005\5\22\0=\5\r\4=\4\23\3=\3\24\2B\0\2\1K\0\1\0\fkeymaps\6~\1\0\1\nscope\btab\1\2\2\0\15actions.cd\topts\0\tdesc&:tcd to the current oil directory\n<C-t>\1\0\1\btab\2\1\2\2\0\19actions.select\topts\0\tdesc\30Open the entry in new tab\n<C-h>\1\0\1\15horizontal\2\1\2\2\0\19actions.select\topts\0\tdesc)Open the entry in a horizontal split\n<C-s>\topts\1\0\1\rvertical\2\1\2\2\0\19actions.select\topts\0\tdesc'Open the entry in a vertical split\1\0\16\n<C-c>\18actions.close\ag\\\25actions.toggle_trash\n<C-p>\20actions.preview\ag.\26actions.toggle_hidden\n<C-t>\0\agx\26actions.open_external\6~\0\n<C-h>\0\ags\24actions.change_sort\6_\21actions.open_cwd\n<C-s>\0\6`\15actions.cd\t<CR>\19actions.select\6-\19actions.parent\ag?\22actions.show_help\n<C-r>\20actions.refresh\17view_options\21is_always_hidden\0\1\0\3\18natural_order\1\21is_always_hidden\0\16show_hidden\2\16win_options\1\0\1\twrap\2\1\0\a\26default_file_explorer\2\fkeymaps\0\24use_default_keymaps\1\17view_options\0\"skip_confirm_for_simple_edits\2\20delete_to_trash\2\16win_options\0\nsetup\boil\frequire\0" },
    loaded = true,
    path = "/Users/k387899/.local/share/nvim/site/pack/packer/start/oil.nvim",
    url = "https://github.com/stevearc/oil.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/k387899/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/Users/k387899/.local/share/nvim/site/pack/packer/start/playground",
    url = "https://github.com/nvim-treesitter/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/k387899/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ripgrep = {
    loaded = true,
    path = "/Users/k387899/.local/share/nvim/site/pack/packer/start/ripgrep",
    url = "https://github.com/BurntSushi/ripgrep"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/Users/k387899/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/k387899/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  treesj = {
    config = { "\27LJ\2\nÆ\1\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\a\ron_error\0\15dot_repeat\2\vnotify\2\20cursor_behavior\thold\20max_join_length\4\0£√áè\4\23check_syntax_error\2\24use_default_keymaps\2\nsetup\vtreesj\frequire\0" },
    loaded = true,
    path = "/Users/k387899/.local/share/nvim/site/pack/packer/start/treesj",
    url = "https://github.com/Wansmer/treesj"
  },
  undotree = {
    loaded = true,
    path = "/Users/k387899/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/k387899/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-helm"] = {
    loaded = true,
    path = "/Users/k387899/.local/share/nvim/site/pack/packer/start/vim-helm",
    url = "https://github.com/towolf/vim-helm"
  },
  ["vim-tmux-navigator"] = {
    loaded = true,
    path = "/Users/k387899/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator",
    url = "https://github.com/christoomey/vim-tmux-navigator"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\nt\0\0\3\0\a\0\0156\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\0\0009\0\1\0)\1,\1=\1\3\0006\0\4\0'\2\5\0B\0\2\0029\0\6\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\15timeoutlen\ftimeout\6o\bvim\0" },
    loaded = true,
    path = "/Users/k387899/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: treesj
time([[Config for treesj]], true)
try_loadstring("\27LJ\2\nÆ\1\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\a\ron_error\0\15dot_repeat\2\vnotify\2\20cursor_behavior\thold\20max_join_length\4\0£√áè\4\23check_syntax_error\2\24use_default_keymaps\2\nsetup\vtreesj\frequire\0", "config", "treesj")
time([[Config for treesj]], false)
-- Config for: oil.nvim
time([[Config for oil.nvim]], true)
try_loadstring("\27LJ\2\n/\0\2\3\0\2\0\b\6\0\0\0X\2\4Ä\6\0\1\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\t.git\a..›\a\1\0\6\0\25\0\0316\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0003\4\a\0=\4\b\3=\3\t\0025\3\n\0005\4\v\0005\5\f\0=\5\r\4=\4\14\0035\4\15\0005\5\16\0=\5\r\4=\4\17\0035\4\18\0005\5\19\0=\5\r\4=\4\20\0035\4\21\0005\5\22\0=\5\r\4=\4\23\3=\3\24\2B\0\2\1K\0\1\0\fkeymaps\6~\1\0\1\nscope\btab\1\2\2\0\15actions.cd\topts\0\tdesc&:tcd to the current oil directory\n<C-t>\1\0\1\btab\2\1\2\2\0\19actions.select\topts\0\tdesc\30Open the entry in new tab\n<C-h>\1\0\1\15horizontal\2\1\2\2\0\19actions.select\topts\0\tdesc)Open the entry in a horizontal split\n<C-s>\topts\1\0\1\rvertical\2\1\2\2\0\19actions.select\topts\0\tdesc'Open the entry in a vertical split\1\0\16\n<C-c>\18actions.close\ag\\\25actions.toggle_trash\n<C-p>\20actions.preview\ag.\26actions.toggle_hidden\n<C-t>\0\agx\26actions.open_external\6~\0\n<C-h>\0\ags\24actions.change_sort\6_\21actions.open_cwd\n<C-s>\0\6`\15actions.cd\t<CR>\19actions.select\6-\19actions.parent\ag?\22actions.show_help\n<C-r>\20actions.refresh\17view_options\21is_always_hidden\0\1\0\3\18natural_order\1\21is_always_hidden\0\16show_hidden\2\16win_options\1\0\1\twrap\2\1\0\a\26default_file_explorer\2\fkeymaps\0\24use_default_keymaps\1\17view_options\0\"skip_confirm_for_simple_edits\2\20delete_to_trash\2\16win_options\0\nsetup\boil\frequire\0", "config", "oil.nvim")
time([[Config for oil.nvim]], false)
-- Config for: nvim-surround
time([[Config for nvim-surround]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18nvim-surround\frequire\0", "config", "nvim-surround")
time([[Config for nvim-surround]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\nt\0\0\3\0\a\0\0156\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\0\0009\0\1\0)\1,\1=\1\3\0006\0\4\0'\2\5\0B\0\2\0029\0\6\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\15timeoutlen\ftimeout\6o\bvim\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: ChatGPT.nvim
time([[Config for ChatGPT.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fchatgpt\frequire\0", "config", "ChatGPT.nvim")
time([[Config for ChatGPT.nvim]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
