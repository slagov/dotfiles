local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.font_size = 15
config.line_height = 0.8

config.hide_tab_bar_if_only_one_tab = true
config.color_scheme = 'Tokyo Night'

-- config.term = 'wezterm' -- или 'xterm-256color' для максимальной совместимости

config.keys = {
    {
      key = 't',
      mods = 'CTRL',
      action = wezterm.action.SpawnTab 'CurrentPaneDomain',
    },
    {
    key = 'x',
    mods = 'CTRL',
    action = wezterm.action.CloseCurrentTab { confirm = false },
  }
}

return config
