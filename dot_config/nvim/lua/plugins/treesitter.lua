return {
	"nvim-treesitter/nvim-treesitter",
	build = function()
		local TS = require("nvim-treesitter")
		TS.update(nil, { summary = true })
	end,
	event = { "BufReadPre", "BufNewFile", "VeryLazy" },
	commit = vim.fn.has("nvim-0.12") == 0 and "7caec274fd19c12b55902a5b795100d21531391f" or nil,
	branch = "main",
	version = false,
	cmd = { "TSUpdate", "TSInstall", "TSLog", "TSUninstall" },
	opts_extend = { "ensure_installed" },
	opts = {
		indent = { enable = true },
		ensure_installed = {
			"bash",
			"c",
			"cpp",
			"diff",
			"html",
			"javascript",
			"jsdoc",
			"json",
			"just",
			"lua",
			"luadoc",
			"luap",
			"markdown",
			"markdown_inline",
			"printf",
			"python",
			"query",
			"regex",
			"toml",
			"tsx",
			"typescript",
			"vim",
			"vimdoc",
			"xml",
			"yaml",

			"go",
			"gomod",
			"gowork",
			"gosum",

			"rust",
			"ron",
		},
	},
	config = function(_, opts)
		local treesitter = require("nvim-treesitter")

		treesitter.install(opts.ensure_installed)

		vim.api.nvim_create_autocmd("FileType", {
			pattern = "*",
			callback = function(args)
				local buf = args.buf
				local ft = vim.bo[buf].filetype

				local lang = vim.treesitter.language.get_lang(ft)
				if not lang then
					return
				end

				local ok_add = pcall(vim.treesitter.language.add, lang)
				if not ok_add then
					return
				end

				pcall(vim.treesitter.start, buf, lang)
			end,
		})
	end,
}
