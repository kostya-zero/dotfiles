-- Encoding
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

-- Enable title
vim.opt.title = true

-- Enable 256 colors support
vim.opt.termguicolors = true

-- Shell
vim.opt.shell = "nu.exe"

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

-- Disable mouse
vim.opt.mouse = ""

-- Ignore paths
vim.opt.wildignore:append({ "*/node_modules/*", "*/target/*" })

-- Neovide
vim.opt.guifont = "IosevkaTerm Nerd Font Mono:h20"
vim.g.neovide_position_animation_length = 0
vim.g.neovide_cursor_animation_length = 0.00
vim.g.neovide_cursor_trail_size = 0
vim.g.neovide_cursor_animate_in_insert_mode = false
vim.g.neovide_cursor_animate_command_line = false
vim.g.neovide_scroll_animation_far_lines = 0
vim.g.neovide_scroll_animation_length = 0.00
vim.g.neovide_floating_shadow = false
vim.g.neovide_floating_z_height = 0
vim.g.neovide_light_angle_degrees = 0
vim.g.neovide_light_radius = 0

-- Filetypes
vim.filetype.add({
    extension = {
        mdx = "mdx",
        ccf = "kdl",
    },
})

-- Disable inlay hints
vim.lsp.inlay_hint.enable(false)

-- Enable custom LSPs
vim.lsp.enable("go")

-- LazyVim specific options
vim.g.lazyvim_blink_main = false
-- vim.g.lazyvim_picker = "telescope"
vim.g.snacks_animate = false
vim.g.lazyvim_prettier_needs_config = true
