return {
	"stevearc/conform.nvim",
	dependencies = { "mason.nvim" },
	event = { "BufReadPre", "BufNewFile" },
	cmd = "ConformInfo",
	keys = {
		{
			"<leader>cF",
			function()
				require("conform").format({ formatters = { "injected" }, timeout_ms = 3000 })
			end,
			mode = { "n", "x" },
			desc = "Format Injected Langs",
		},
	},
	opts = {
		default_format_opts = {
			timeout_ms = 3000,
			async = false, -- not recommended to change
			quiet = false, -- not recommended to change
			lsp_format = "fallback", -- not recommended to change
		},
		format_on_save = {
			timeout_ms = 500,
			lsp_format = "fallback",
		},
		formatters_by_ft = {
			lua = { "stylua" },
			go = { "goimports", "gofumpt" },
			rust = { "rustfmt" },
			c = { "clang-format" },
			cpp = { "clang-format" },
			typescript = { "oxfmt" },
			javascript = { "oxfmt" },
			javascriptreact = { "oxfmt" },
			typescriptreact = { "oxfmt" },
		},
	},
}
