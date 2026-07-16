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
    {
        "nvim-neo-tree/neo-tree.nvim",
        keys = {
            { "<leader>e", "<cmd>Neotree position=float<cr>", desc = "Open floating Neotree" },
            { "<leader>E", "<cmd>Neotree position=right<cr>", desc = "Open Neotree on the right side" },
        },
        ---@module "neo-tree"
        ---@type neotree.Config.Base
        opts = {
            hide_root_node = true,
            retain_hidden_root_indent = true,
            close_if_last_window = true,
            filesystem = {
                bind_to_cwd = true,
                use_libuv_file_watcher = true,
            },
            window = {
                width = "30",
                position = "right",
            },
        },
    },
    {
        "esmuellert/codediff.nvim",
        cmd = "CodeDiff",
    },
    {
        "Bekaboo/dropbar.nvim",
        enabled = false,
        event = "LazyFile",
        opts = {},
    },
    {
        "folke/snacks.nvim",
        keys = {
            { "<leader>gg", false },
        },
        opts = function(_, opts)
            opts.dashboard.preset.header = [[
            ]]
            opts.dashboard.sections = {
                -- { section = "header" },
                { width = 2, section = "keys", indent = 0, padding = 1 },
                { section = "startup" },
            }
            return opts
        end,
    },
}
