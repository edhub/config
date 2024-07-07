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

-- font size 14 is good for a larger screen. 16 is good for 16 inch mbp screen.
config.font_size = 15.0
config.initial_rows = 50
config.initial_cols = 120

config.font = wezterm.font_with_fallback {
  'Hack Nerd Font',
  'PingFang SC',
}

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

config.window_close_confirmation = 'NeverPrompt'

function clip_var(var)
  if #var > 10 then
      return string.sub(var, 1, 10) .. ".."
  else
      return var
  end
end

wezterm.on(
  'format-tab-title',
  function(tab, tabs, panes, config, hover, max_width)
    local cwd = tab.active_pane.current_working_dir
    local folder_name = cwd.path:match("([^/]+)$")
    return ' '.. clip_var(folder_name).. ' '
  end
)

-- and finally, return the configuration to wezterm
return config
