-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- config.color_scheme = 'Dark Pastel'
config.window_background_opacity = 0.8
config.hide_tab_bar_if_only_one_tab = true
config.enable_scroll_bar = true

config.window_background_gradient = {
  orientation = 'Vertical',

  colors = {
    '#080808',
    '#201616',
  },

  interpolation = 'Linear',

  blend = 'Rgb',
}

config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

config.inactive_pane_hsb = {
  saturation = 0.9,
  brightness = 0.8,
}

config.font = wezterm.font 'Monaspace Neon'

-- and finally, return the configuration to wezterm
return config
