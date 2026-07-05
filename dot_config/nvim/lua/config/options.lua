vim.g.mapleader = " "
vim.g.localleader = "\\"

if vim.loop.os_uname().sysname == "Windows_NT" then
	vim.opt.shell = "nu.exe"
else
	vim.opt.shell = "fish"
end

local opt = vim.opt

opt.encoding = "utf-8"
opt.fileencoding = "utf-8"

opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.title = true
opt.termguicolors = true
opt.mouse = ""
opt.clipboard = "unnamedplus"
opt.laststatus = 3
opt.shiftwidth = 4
opt.tabstop = 4
opt.smarttab = true
opt.breakindent = true
opt.autoindent = true
opt.smartindent = true
opt.wrap = false
opt.scrolloff = 5
opt.spelllang = { "en" }
opt.ruler = false
opt.showmode = false
opt.hlsearch = true
opt.backup = false
opt.swapfile = false
opt.confirm = true
opt.wildignore:append({ "*/node_modules/*", "*/target/*" })
opt.completeopt = "menu,menuone,noselect"
opt.conceallevel = 0

-- Filetypes
vim.filetype.add({
	extension = {
		mdx = "mdx",
		ccf = "kdl",
	},
})
