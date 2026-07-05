return {
	"nvim-lualine/lualine.nvim",
	opts = {
		options = {
			theme = "auto",
			globalstatus = vim.o.laststatus == 3,
			disabled_filetypes = { statusline = { "snacks_dashboard" } },
		},
		extensions = { "neo-tree", "lazy" },
		sections = {
			lualine_a = { "mode" },
			lualine_b = { "branch" },
			lualine_c = {
				"diagnostics",
				{ "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
				{ "filename", path = 1, padding = { left = 0, right = 1 } },
			},
			lualine_x = {
				{
					"diff",
					source = function()
						local gitsigns = vim.b.gitsigns_status_dict
						if gitsigns then
							return {
								added = gitsigns.added,
								modified = gitsigns.changed,
								removed = gitsigns.removed,
							}
						end
					end,
				},
			},
			lualine_y = {
				{ "progress", separator = " ", padding = { left = 1, right = 0 } },
				{ "location", padding = { left = 0, right = 1 } },
			},
			lualine_z = {
				function()
					return " " .. os.date("%R")
				end,
			},
		},
	},
	event = "VeryLazy",
}
