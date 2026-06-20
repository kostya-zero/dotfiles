local M = {}

function M.apply_to_config(config)
	config.default_prog = { "nu" }
	config.mux_enable_ssh_agent = false

	config.initial_rows = 30
	config.initial_cols = 110
	config.window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	}

	config.front_end = "WebGpu"
	config.cursor_blink_rate = 0
	config.default_cursor_style = "SteadyBlock"
	config.webgpu_power_preference = "HighPerformance"
	config.max_fps = 144
	config.animation_fps = 1
	config.automatically_reload_config = false
end

return M
