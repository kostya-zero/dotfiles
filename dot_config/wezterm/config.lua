local M = {}

function M.setup_config(wezterm)
	return {
		default_prog = { "nu" },
		mux_enable_ssh_agent = false,

		initial_rows = 30,
		initial_cols = 120,
		window_padding = {
			left = 0,
			right = 0,
			top = 0,
			bottom = 0,
		},

		front_end = "WebGpu",
		cursor_blink_rate = 0,
		default_cursor_style = "SteadyBlock",
		max_fps = 120,
		animation_fps = 120,

		font_size = 11,
		color_scheme = "jellybeans-mono",
		font = wezterm.font("JetBrainsMono Nerd Font Mono", { weight = "Medium" }),

		hide_tab_bar_if_only_one_tab = false,
		tab_max_width = 48,
		show_new_tab_button_in_tab_bar = false,
		use_fancy_tab_bar = false,
		tab_bar_at_bottom = true,
	}
end

return M
