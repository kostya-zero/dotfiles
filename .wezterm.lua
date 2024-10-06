local wt = require("wezterm")
local config = wt.config_builder()

-- Colors
-- config.color_scheme = "Apple System Colors"
-- config.color_scheme = "arcoiris"
config.color_scheme = "Bright (base16)"

-- Window
config.window_background_opacity = 0.8
config.enable_wayland = true
config.default_cursor_style = "SteadyBar"

-- Font
config.font = wt.font_with_fallback({
	{ family = "CaskaydiaCove Nerd Font Mono", harfbuzz_features = { "liga=1", "calt=1", "clig=1" } },
	"Noto Color Emoji",
})
config.font_size = 12.0
config.use_resize_increments = true

-- Tab bar
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = false

-- Padding
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

return config
