return {
  {
    "lualine.nvim",
    opts = function(_, opts)
      local icons = LazyVim.config.icons
      opts.options = {
        theme = "poimandres",
        component_separators = "",
        section_separators = "",
      }

      opts.sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch" },
        lualine_c = { "filename" },
        lualine_x = { "filetype" },
        lualine_y = {
          {
            "diagnostics",
            symbols = {
              error = icons.diagnostics.Error,
              warn = icons.diagnostics.Warn,
              info = icons.diagnostics.Info,
              hint = icons.diagnostics.Hint,
            },
          },
        },
        lualine_z = { "location" },
      }
    end,
  },
}
