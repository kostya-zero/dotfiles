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
            { "<leader>e", "<cmd>Neotree position=float<cr>", desc = "Open Neotree on the right side" },
        },
        enabled = true,
        ---@module "neo-tree"
        ---@class neotree.Config.Base
        opts = {
            hide_root_node = false,
            retain_hidden_root_indent = false,
            close_if_last_window = true,
            filesystem = {
                bind_to_cwd = true,
                use_libuv_file_watcher = true,
            },
            window = {
                width = 30,
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
            picker = {
                sources = {
                    explorer = {
                        layout = {
                            hidden = { "input" },
                            layout = {
                                position = "right",
                                width = 30,
                            },
                        },
                    },
                    files = {
                        layout = {
                            preset = "vertical",
                        },
                    },
                },
            },
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
                            {
                                icon = " ",
                                key = "c",
                                desc = "Config",
                                action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})",
                            },
                        },
                        -- { icon = " ", key = "s", desc = "Restore Session", section = "session" },
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
            indent = {
                animate = {
                    enabled = false,
                },
                scope = {
                    enabled = false,
                },
            },
        },
    },
}
