return {
  { "wakatime/vim-wakatime", lazy = false },
  {
    "rebelot/kanagawa.nvim",
    enabled = false,
    opts = {
      compile = true,
      theme = "dragon",
    },
  },
  {
    "olivercederborg/poimandres.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      local p = require("poimandres.palette")
      require("poimandres").setup({
        disable_background = true,
        dim_nc_background = true,
        highlight_groups = {
          LspReferenceText = { bg = p.background1 },
          LspReferenceRead = { bg = p.background1 },
          LspReferenceWrite = { bg = p.background1 },
        },
      })
    end,
    init = function()
      vim.cmd("colorscheme poimandres")
    end,
  },
  {
    "dinhhuy258/git.nvim",
    event = "BufReadPre",
    opts = {
      keymaps = {
        blame = "<Leader>gb",
        browse = "<Leader>go",
      },
    },
  },
}
