local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.default_prog = { "nu.exe" }
config.mux_enable_ssh_agent = false

config.initial_cols = 120
config.initial_rows = 32

config.webgpu_power_preference = "HighPerformance"
config.front_end = "WebGpu"

config.hide_tab_bar_if_only_one_tab = true

config.cursor_blink_rate = 0
config.default_cursor_style = "SteadyBlock"

config.font_size = 12
config.color_scheme = "Solarized Dark - Patched"
config.font = wezterm.font("Lilex Nerd Font Mono", { weight = "Medium" })

config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

return config
