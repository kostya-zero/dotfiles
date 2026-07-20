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
            { "<leader>E", "<cmd>Neotree position=float<cr>", desc = "Open floating Neotree" },
            { "<leader>e", "<cmd>Neotree position=right<cr>", desc = "Open Neotree on the right side" },
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
        ---@module "snacks"
        ---@type snacks.Config.base
        opts = {
            dashboard = {
                width = 40,
                preset = {
                    header = "",
                    keys = {
                        {
                            icon = " ",
                            key = "f",
                            desc = "Find File",
                            action = ":lua Snacks.dashboard.pick('files')",
                        },
                        {
                            icon = "󰊢 ",
                            key = "g",
                            desc = "Open Neogit",
                            action = ":Neogit",
                        },
                        { icon = " ", key = "s", desc = "Restore Session", section = "session" },
                        {
                            icon = "󰒲 ",
                            key = "l",
                            desc = "Lazy",
                            action = ":Lazy",
                            enabled = package.loaded.lazy ~= nil,
                        },
                        { icon = " ", key = "q", desc = "Quit", action = ":qa" },
                    },
                },
                sections = {
                    { section = "keys", gap = 0, padding = 1 },
                    { section = "startup" },
                },
            },
        },
    },
}
