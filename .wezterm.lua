-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "Catpuccin Mocha"

config.window_decorations = "RESIZE"

config.initial_rows = 50
config.initial_cols = 150

config.term = "xterm-256color"

config.hide_tab_bar_if_only_one_tab = true

config.font = wezterm.font('JetBrainsMonoNL Nerd Font', {
  weight = 'Bold',
})

config.font_size = 20

-- and finally, return the configuration to wezterm
return config
