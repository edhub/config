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

-- changing the color scheme:
config.color_scheme = 'Ayu Light (Gogh)'

config.font_size = 16.0
config.initial_rows = 50
config.initial_cols = 120

config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = true

-- Leader is the same as tmux prefix
config.leader = { key = 'b', mods = 'CTRL', timeout_milliseconds = 1000 }
config.keys = {
  -- {
  --   mods   = "LEADER",
  --   key    = "%",
  --   action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' }
  -- },
  {
    mods   = "LEADER",
    key    = "%",
    action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' }
  }
}

-- and finally, return the configuration to wezterm
return config
