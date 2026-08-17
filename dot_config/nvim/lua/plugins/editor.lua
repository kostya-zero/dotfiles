return {
    {
        "vyfor/cord.nvim",
        event = "VeryLazy",
        build = ":Cord update",
        enabled = true,
        ---@module "cord"
        ---@type CordConfig
        opts = {
            display = {
                theme = "atom",
                flavor = "accent",
            },
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
            { "<leader>e", "<cmd>Neotree position=right<cr>", desc = "Open Neotree as Sidebar" },
        },
        enabled = true,
        ---@module "neo-tree"
        ---@class neotree.Config.Base
        opts = {
            filesystem = {
                bind_to_cwd = true,
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
    {
        "jim-fx/sudoku.nvim",
        cmd = "Sudoku",
        opts = {},
    },
}
