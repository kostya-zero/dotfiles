local wezterm = require("wezterm")
local act = wezterm.action
local config = wezterm.config_builder()

config = require("config").setup_config(wezterm)

config.keys = {}
for i = 1, 9 do
	table.insert(config.keys, {
		key = tostring(i),
		mods = "ALT",
		action = act.ActivateTab(i - 1),
	})
end

local appearance = require("appearance")
config.colors = appearance.colors
appearance.setup_status(wezterm)

return config
