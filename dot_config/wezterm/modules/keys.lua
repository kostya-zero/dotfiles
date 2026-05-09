local wezterm = require("wezterm")
local act = wezterm.action

local M = {}

function M.apply_to_config(config)
	config.keys = {
		{
			key = "b",
			mods = "ALT",
			action = wezterm.action_callback(function(window, pane)
				local overrides = window:get_config_overrides() or {}
				if overrides.enable_tab_bar == false then
					overrides.enable_tab_bar = true
				else
					overrides.enable_tab_bar = false
				end
				window:set_config_overrides(overrides)
			end),
		},
		{
			key = "e",
			mods = "ALT",
			action = act.PromptInputLine({
				description = "Enter new name for tab",
				action = wezterm.action_callback(function(window, pane, line)
					if line then
						window:active_tab():set_title(line)
					end
				end),
			}),
		},
	}

	-- Numeric tab activation
	for i = 1, 9 do
		table.insert(config.keys, {
			key = tostring(i),
			mods = "ALT",
			action = act.ActivateTab(i - 1),
		})
	end
end

return M
