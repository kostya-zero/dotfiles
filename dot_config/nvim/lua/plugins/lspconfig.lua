return {
	"neovim/nvim-lspconfig",
	dependencies = { "saghen/blink.cmp" },
	event = { "BufReadPre", "BufNewFile" },
	config = function(_, _)
		local vim_capabilities = vim.lsp.protocol.make_client_capabilities()
		local capabilities = require("blink.cmp").get_lsp_capabilities(vim_capabilities)
		local map = vim.keymap.set

		map("n", "<leader>cl", function()
			Snacks.picker.lsp_config()
		end, { desc = "Lsp Info" })
		map("n", "gd", vim.lsp.buf.definition, { desc = "Goto Definition" })
		map("n", "gr", vim.lsp.buf.references, { desc = "References", nowait = true })
		map("n", "gI", vim.lsp.buf.implementation, { desc = "Goto Implementation" })
		map("n", "gD", vim.lsp.buf.declaration, { desc = "Goto Declaration" })
		map("n", "K", vim.lsp.buf.hover, { desc = "Hover" })
		map("n", "gK", function()
			vim.lsp.buf.signature_help()
		end, { desc = "Signature Help" })
		map("i", "<c-k>", function()
			vim.lsp.buf.signature_help()
		end, { desc = "Signature Help" })
		map({ "n", "x" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Actions" })
		map({ "n", "x" }, "<leader>cc", vim.lsp.codelens.run, { desc = "Run Codelens" })
		map("n", "<leader>cR", function()
			Snacks.rename.rename_file()
		end, { desc = "Rename file" })
		map("n", "<leader>cr", vim.lsp.buf.rename, { desc = "Rename" })
		map("n", "]]", function()
			Snacks.words.jump(vim.v.count1)
		end, {
			desc = "Next Reference",
		})
		map("n", "[[", function()
			Snacks.words.jump(-vim.v.count1)
		end, {
			desc = "Prev Reference",
		})

		vim.lsp.config("*", { capabilities = capabilities })
		vim.lsp.enable({
			"lua_ls",
			"tsgo",
			"gopls",
			"rust_analyzer",
			"nushell",
			"tailwindcss",
			"clangd",
			"oxlint",
			"oxfmt",
			"jsonls",
		})
	end,
}
