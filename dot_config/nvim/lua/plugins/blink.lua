return {
	"saghen/blink.cmp",
	version = "*",
	event = { "InsertEnter", "CmdlineEnter"},
	---@module 'blink.cmp'
	---@type blink.cmp.Config
	opts = {
		snippets = {
			preset = "default",
		},
		appearance = {
			use_nvim_cmp_as_default = false,
			nerd_font_variant = "mono",
		},
		completion = {
			accept = {
				auto_brackets = {
					enabled = true,
				},
			},
			menu = {
				draw = {
					treesitter = { "lsp" },
				},
			},
			documentation = {
				auto_show = true,
				auto_show_delay_ms = 200,
			},
			ghost_text = {
				enabled = vim.g.ai_cmp,
			},
		},
		-- signature = { enabled = true },
		sources = {
			default = { "lsp" },
		},

		cmdline = {
			enabled = true,
			keymap = {
				preset = "cmdline",
				["<Right>"] = false,
				["<Left>"] = false,
			},
			completion = {
				list = { selection = { preselect = false } },
				menu = {
					auto_show = function(ctx)
						return vim.fn.getcmdtype() == ":"
					end,
				},
				ghost_text = { enabled = true },
			},
		},
		keymap = {
			preset = "enter",
			["<C-y>"] = { "select_and_accept" },
		},
	},
}
