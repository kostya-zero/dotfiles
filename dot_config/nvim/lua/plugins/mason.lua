return {
	"mason-org/mason.nvim",
	event = { "BufReadPre", "BufNewFile" },
	build = ":MasonUpdate",
	cmd = { "Mason", "MasonInstall", "MasonUpdate" },
	keys = { { "<leader>cm", "<cmd>Mason<cr>", desc = "Mason" } },
	opts_extend = { "ensure_installed" },
	opts = {
		ui = {
			icons = {
				package_installed = "✓",
				package_pending = "➜",
				package_uninstalled = "✗",
			},
		},
		ensure_installed = {
			"gopls",
			"gofumpt",
			"goimports",
			"oxfmt",
			"oxlint",
			"tsgo",
			"lua-language-server",
			"stylua",
		},
	},
	config = function(_, opts)
		require("mason").setup(opts)
		local mr = require("mason-registry")
		mr.refresh(function()
			for _, tool in ipairs(opts.ensure_installed) do
				local p = mr.get_package(tool)
				if not p:is_installed() then
					p:install()
				end
			end
		end)
	end,
}
