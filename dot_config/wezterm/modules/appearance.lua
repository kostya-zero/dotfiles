local wezterm = require("wezterm")
local helpers = require("utils.helpers")

local JB_BG = "#151515"
local JB_FG = "#e8e8d3"
local JB_ACTIVE_BG = "#b39066" -- Yellow accent
local JB_ACTIVE_FG = "#151515"
local JB_INACTIVE_BG = "#333333"
local JB_INACTIVE_FG = "#888888"
local JB_STATUS_BLUE = "#8197bf"

local M = {}

function M.apply_to_config(config)
	-- General Appearance
	config.font_size = 11
	config.color_scheme = "jellybeans-mono"
	config.font = wezterm.font("JetBrainsMono Nerd Font Mono", { weight = "Medium" })

	-- Tab Bar
	config.hide_tab_bar_if_only_one_tab = false
	config.tab_max_width = 48
	config.show_new_tab_button_in_tab_bar = false
	config.use_fancy_tab_bar = false
	config.tab_bar_at_bottom = true

	config.colors = {
		tab_bar = {
			background = JB_BG,
			active_tab = {
				bg_color = JB_ACTIVE_BG,
				fg_color = JB_ACTIVE_FG,
			},
			inactive_tab = {
				bg_color = JB_INACTIVE_BG,
				fg_color = JB_INACTIVE_FG,
			},
			inactive_tab_hover = {
				bg_color = JB_INACTIVE_BG,
				fg_color = JB_FG,
				italic = false,
			},
			new_tab = {
				bg_color = JB_BG,
				fg_color = JB_FG,
			},
		},
	}

	M.setup_status()
end

function M.setup_status()
	wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
		local SOLID_RIGHT_ARROW = wezterm.nerdfonts.pl_left_hard_divider
		local bg = JB_INACTIVE_BG
		local fg = JB_INACTIVE_FG

		if tab.is_active then
			bg = JB_ACTIVE_BG
			fg = JB_ACTIVE_FG
		end

		local next_bg = JB_BG
		local next_tab = tabs[tab.tab_index + 2]
		if next_tab then
			if next_tab.is_active then
				next_bg = JB_ACTIVE_BG
			else
				next_bg = JB_INACTIVE_BG
			end
		end

		local index = tab.tab_index + 1
		local cwd = helpers.get_cwd_name(tab.active_pane)
		local title = string.format("%d  %s", index, cwd)

		-- Use custom title if set
		if tab.tab_title and #tab.tab_title > 0 then
			title = string.format("%d  %s", index, tab.tab_title)
		end

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
		local SOLID_LEFT_ARROW = wezterm.nerdfonts.pl_right_hard_divider
		local bg = JB_BG
		local fg = JB_STATUS_BLUE
		local workspace = window:active_workspace()

		window:set_right_status(wezterm.format({
			{ Background = { Color = "none" } },
			{ Foreground = { Color = fg } },
			{ Text = SOLID_LEFT_ARROW },
			{ Background = { Color = fg } },
			{ Foreground = { Color = bg } },
			{ Text = " " .. workspace .. " " },
		}))
	end)
end

return M
