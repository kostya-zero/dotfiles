local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- Modules
local general = require("modules.general")
local appearance = require("modules.appearance")
local keys = require("modules.keys")

-- Apply configurations
general.apply_to_config(config)
appearance.apply_to_config(config)
keys.apply_to_config(config)

return config
