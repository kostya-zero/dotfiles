return {
	"webhooked/kanso.nvim",
	lazy = false,
	priority = 1000,
	opts = {
		background = {
			dark = "zen",
			light = "pearl",
		}
	},
	config = function(_, opts)
		require("kanso").setup(opts)
		vim.cmd("colorscheme kanso")
	end
}
