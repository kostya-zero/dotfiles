return {
    {
        "vyfor/cord.nvim",
        event = "VeryLazy",
        build = ":Cord update",
        enabled = true,
        opts = {
            idle = {
                enabled = false,
            },
            editor = {
                client = "lazyvim",
            },
        },
    },
    { "wakatime/vim-wakatime", lazy = false, enabled = false },
    {
        "nvim-neo-tree/neo-tree.nvim",
        keys = {
            { "<leader>e", "<cmd>Neotree float<cr>" },
        },
        opts = function(_, opts)
            opts.filesystem.bind_to_cwd = true
            return opts
        end,
    },
    {
        "folke/snacks.nvim",
        opts = function(_, opts)
            opts.dashboard = {
                enabled = true,
                preset = {
                    header = "",
                },
                sections = {
                    { section = "header" },
                    { width = 10, section = "keys", indent = 0, padding = 1 },
                    -- { icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
                    -- { icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
                    { section = "startup" },
                },
                scroll = { enabled = vim.g.snacks_animate },
                scope = { enabled = false },
            }
            return opts
        end,
    },
    {
        "brenoprata10/nvim-highlight-colors",
        event = "BufReadPre",
        opts = {
            render = "background",
            enable_hex = true,
            enable_short_hex = true,
            enable_rgb = true,
            enable_hsl = true,
            enable_hsl_without_function = true,
            enable_ansi = true,
            enable_var_usage = true,
            enable_tailwind = true,
        },
    },
}
