return {
    {
        "vyfor/cord.nvim",
        event = "VeryLazy",
        build = ":Cord update",
        enabled = false,
        opts = {
            idle = {
                enabled = false,
            },
            editor = {
                client = "lazyvim",
            },
        },
    },
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
            opts.dashboard.preset.header = ""
            opts.dashboard.sections = {
                -- { section = "header" },
                { width = 10, section = "keys", indent = 0, padding = 1 },
                { section = "startup" },
            }
            return opts
        end,
    },
}
