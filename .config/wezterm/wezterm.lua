local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- Font settings
config.font_size = 15
config.line_height = 0.8

--config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true

config.enable_wayland = true
-- config.warn_about_missing_glyphs = false

config.term = 'xterm-256color'  -- или 'xterm-256color' для максимальной совместимости

return config
