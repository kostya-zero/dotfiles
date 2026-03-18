local wezterm = require("wezterm")
local act = wezterm.action
local config = wezterm.config_builder()

local SOLID_LEFT_ARROW = wezterm.nerdfonts.pl_right_hard_divider
local SOLID_RIGHT_ARROW = wezterm.nerdfonts.pl_left_hard_divider

local function basename(path)
	if not path or path == "" then
		return "?"
	end

	path = path:gsub("[/\\]+$", "")
	return path:match("([^/\\]+)$") or path
end

local function get_cwd_name(pane)
	local cwd = pane.current_working_dir
	if not cwd then
		return "?"
	end

	if cwd.file_path then
		return basename(cwd.file_path)
	end

	local s = tostring(cwd)
	s = s:gsub("^file://[^/]*", "")
	s = s:gsub("%%20", " ")
	return basename(s)
end

config.default_prog = { "nu.exe" }
config.mux_enable_ssh_agent = false

config.initial_cols = 120
config.initial_rows = 30
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
config.color_scheme = "Solarized Osaka"
config.font = wezterm.font("Lilex Nerd Font Mono", { weight = "Medium" })

config.hide_tab_bar_if_only_one_tab = false
config.show_new_tab_button_in_tab_bar = false
config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = true
config.colors = {
	tab_bar = {
		background = "#001419",
		active_tab = {
			bg_color = "#001419",
			fg_color = "#268bd3",
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

wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
	local bg = "#001e27"
	local fg = "#eae3cb"
	if tab.is_active then
		bg = "#b28500"
		fg = "#eae3cb"
	end

	local next_bg = "#1a1b26"
	local next_tab = tabs[tab.tab_index + 2]

	if next_tab then
		if next_tab.is_active then
			next_bg = "#b28500"
		else
			next_bg = "#001e27"
		end
	end

	local index = tab.tab_index + 1
	local cwd = get_cwd_name(tab.active_pane)
	local title = string.format("%d: %s", index, cwd)

	return {
		{ Background = { Color = bg } },
		{ Foreground = { Color = fg } },
		{ Text = " " .. title .. " " },

		{ Background = { Color = next_bg } },
		{ Foreground = { Color = bg } },
		{ Text = SOLID_RIGHT_ARROW },
	}
end)

wezterm.on("update-status", function(window)
	local color_scheme = window:effective_config().resolved_palette
	local bg = color_scheme.background
	local fg = "#9eabac"

	window:set_right_status(wezterm.format({
		{ Background = { Color = "none" } },
		{ Foreground = { Color = fg } },
		{ Text = SOLID_LEFT_ARROW },
		{ Background = { Color = fg } },
		{ Foreground = { Color = bg } },
		{ Text = " " .. wezterm.hostname() .. " " },
	}))
end)

return config
