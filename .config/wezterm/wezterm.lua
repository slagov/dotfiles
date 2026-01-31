local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.font_size = 15
config.line_height = 0.8

config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = true

config.color_scheme = 'Adventure Time (Gogh)'

config.window_decorations = 'NONE'

config.initial_cols = 100
config.initial_rows = 30

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
    },
    {
        key = 'Tab',
        mods = 'CTRL',
        action = wezterm.action.ActivateTabRelative(1),
    },
    {
        key = 'Tab',
        mods = 'CTRL|SHIFT',
        action = wezterm.action.ActivateTabRelative(-1),
    },
}

return config
