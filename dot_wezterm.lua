local wezterm = require("wezterm")
local act = wezterm.action
local config = wezterm.config_builder()

local function basename(s)
	return string.gsub(s, "(.*[\\])(.*)", "%2")
end

config.default_prog = { "nu.exe" }
config.mux_enable_ssh_agent = false

config.initial_cols = 120
config.initial_rows = 35
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

config.front_end = "WebGpu"

config.cursor_blink_rate = 0
config.default_cursor_style = "SteadyBlock"

config.keys = {}
for i = 1, 9 do
	table.insert(config.keys, {
		key = tostring(i),
		mods = "ALT",
		action = act.ActivateTab(i - 1),
	})
end

config.font_size = 14
config.color_scheme = "Solarized Dark - Patched"
config.font = wezterm.font("Lilex Nerd Font Mono", { weight = "Medium" })

config.hide_tab_bar_if_only_one_tab = false
config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = true
config.colors = {
	tab_bar = {
		background = "#001e27",
		active_tab = {
			bg_color = "#a57706",
			fg_color = "#eae3cb",
		},
		inactive_tab = {
			bg_color = "#001e27",
			fg_color = "#eae3cb",
		},
		inactive_tab_hover = {
			bg_color = "#001e27",
			fg_color = "#eae3cb",
			italic = false,
		},
		new_tab = {
			bg_color = "#001e27",
			fg_color = "#eae3cb",
		},
	},
}

return config
