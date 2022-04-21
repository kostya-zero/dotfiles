require "paq" {
    "andweeb/presence.nvim";
    "nvim-lualine/lualine.nvim";
    "kyazdani42/nvim-web-devicons";
    "jacoborus/tender.vim";
    "navarasu/onedark.nvim";
    "romgrk/barbar.nvim";
    "kyazdani42/nvim-tree.lua";
    "goolord/alpha-nvim";
    "neoclide/coc.nvim";
    "MunifTanjim/nui.nvim";
    "nvim-lua/plenary.nvim";
    "CosmicNvim/cosmic-ui";
    "ntk148v/vim-horizon";
}

require'alpha'.setup(require'alpha.themes.zero'.config)

vim.cmd("colorscheme horizon")

require("presence"):setup({
    -- General options
    neovim_image_text   = "The One True Text Editor",
    main_image          = "neovim",
    client_id           = "793271441293967371",
    log_level           = nil,
    enable_line_number  = true,
    blacklist           = {},
    buttons             = true,
    file_assets         = {},

    -- Rich Presence text options
    editing_text        = "Editing %s",
    file_explorer_text  = "Explore %s",
    git_commit_text     = "Commiting changes to Git",
    plugin_manager_text = "Checking plugins",
    reading_text        = "Viewing %s",
    workspace_text      = "Working in %s",
    line_number_text    = "Line %s of %s",
})

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'horizon',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
    globalstatus = false,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}

vim.g.bufferline = {
  animation = true,
  auto_hide = false,
  tabpages = true,
  closable = false,
  clickable = false,
  exclude_ft = {'javascript'},
  exclude_name = {'package.json'},
  icons = true,
  icon_custom_colors = false,
  icon_separator_active = '▎',
  icon_separator_inactive = '▎',
  icon_close_tab = '',
  icon_close_tab_modified = '●',
  icon_pinned = '車',
  insert_at_end = false,
  insert_at_start = false,
  maximum_padding = 1,
  maximum_length = 30,
  semantic_letters = true,
  letters = 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP',
  no_name_title = nil,
}

require('lualine').setup()
vim.wo.number = true

require'nvim-tree'.setup { -- BEGIN_DEFAULT_OPTS
  auto_reload_on_write = true,
  disable_netrw = false,
  hide_root_folder = false,
  hijack_cursor = false,
  hijack_netrw = true,
  hijack_unnamed_buffer_when_opening = false,
  ignore_buffer_on_setup = false,
  open_on_setup = false,
  open_on_setup_file = false,
  open_on_tab = false,
  sort_by = "name",
  update_cwd = false,
  view = {
    width = 30,
    height = 30,
    side = "left",
    preserve_window_proportions = false,
    number = false,
    relativenumber = false,
    signcolumn = "yes",
    mappings = {
      custom_only = false,
      list = {
        -- user mappings go here
      },
    },
  },
  renderer = {
    indent_markers = {
      enable = false,
      icons = {
        corner = "└ ",
        edge = "│ ",
        none = "  ",
      },
    },
  },
  hijack_directories = {
    enable = true,
    auto_open = true,
  },
  update_focused_file = {
    enable = false,
    update_cwd = false,
    ignore_list = {},
  },
  ignore_ft_on_setup = {},
  system_open = {
    cmd = nil,
    args = {},
  },
  diagnostics = {
    enable = false,
    show_on_dirs = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
  filters = {
    dotfiles = false,
    custom = {},
    exclude = {},
  },
  git = {
    enable = true,
    ignore = true,
    timeout = 400,
  },
  actions = {
    use_system_clipboard = true,
    change_dir = {
      enable = true,
      global = false,
    },
    open_file = {
      quit_on_open = false,
      resize_window = false,
      window_picker = {
        enable = true,
        chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
        exclude = {
          filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame" },
          buftype = { "nofile", "terminal", "help" },
        },
      },
    },
  },
  trash = {
    cmd = "trash",
    require_confirm = true,
  },
  log = {
    enable = false,
    truncate = false,
    types = {
      all = false,
      config = false,
      copy_paste = false,
      git = false,
      profile = false,
    },
  },
} -- END_DEFAULT_OPTS

vim.g.nvim_tree_bindings = {
	["<C-n>"] = "open_vertical_split",
	["u"] = "open_current_window",
}
