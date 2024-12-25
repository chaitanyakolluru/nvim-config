-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "Catpuccin Mocha"

config.window_decorations = "RESIZE"

config.font_size = 20
config.line_height = 1.0

config.max_fps = 120

config.initial_rows = 50
config.initial_cols = 150

config.term = "xterm-256color"

config.hide_tab_bar_if_only_one_tab = true

config.window_background_opacity = 0.9
config.macos_window_background_blur = 100

config.font = wezterm.font('JetBrainsMonoNL Nerd Font', {
  weight = 'Bold',
})


-- and finally, return the configuration to wezterm
return config
