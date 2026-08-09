-- Encoding
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

-- Enable title
vim.opt.title = true

-- Enable 256 colors support
vim.opt.termguicolors = true

-- Shell
if vim.loop.os_uname().sysname == "Windows_NT" then
    vim.opt.shell = "pwsh"
else
    vim.opt.shell = "fish"
end

-- Tabs
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.autoindent = true
vim.opt.smartindent = true

-- Disable providers for plugins
vim.g.loaded_python3_provider = 0
vim.g.loaded_python_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0

-- No wrap lines
vim.opt.wrap = false

-- Highlight Search
vim.opt.hlsearch = true

-- Swap and backup
vim.opt.swapfile = false
vim.opt.backup = false

-- Disable conceallevel
vim.opt.conceallevel = 0

-- Disable mouse
vim.opt.mouse = ""

-- Ignore paths
vim.opt.wildignore:append({ "*/node_modules/*", "*/target/*" })

-- Filetypes
vim.filetype.add({
    extension = {
        mdx = "mdx",
        ccf = "kdl",
    },
})

-- LazyVim specific options
vim.g.lazyvim_blink_main = false
vim.g.lazyvim_ts_lsp = "tsgo"
vim.g.snacks_animate = false

-- Neovide
if vim.g.neovide then
    vim.o.guifont = "Lilex Nerd Font Mono:h12"
    vim.g.neovide_refresh_rate = 75
    vim.g.neovide_cursor_animation_length = 0
end
