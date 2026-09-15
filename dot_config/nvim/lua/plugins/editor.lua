return {
    {
        "vyfor/cord.nvim",
        event = "VeryLazy",
        build = ":Cord update",
        enabled = false,
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
        "stevearc/oil.nvim",
        cmd = "Oil",
        keys = {
            { "<leader>e", "<cmd>Oil --float --preview<cr>", desc = "Open Oil" },
            { "-", "<cmd>Oil --float --preview<cr>", desc = "Open Oil" },
        },
        ---@module "oil"
        ---@class oil.Config
        opts = {
            columns = {
                "icon",
                { "permissions", highlight = "Type" },
                { "size", highlight = "String" },
                { "mtime", highlight = "Keyword" },
            },
            keymaps = {
                ["q"] = { "actions.close", mode = "n" },
                ["h"] = { "actions.parent", mode = "n" },
                ["l"] = { "actions.select", mode = "n" },
            },
            delete_to_trash = true,
            skip_confirm_for_simple_edits = true,
            preview_win = {
                preview_method = "fast_scratch",
                update_on_cursor_moved = true,
            },
            view_options = {
                show_hidden = true,
            },
            float = {
                padding = 7,
                border = "rounded",
                preview_split = "right",
            },
        },
    },
    {
        "esmuellert/codediff.nvim",
        cmd = "CodeDiff",
        keys = {
            { "<leader>cD", "<cmd>CodeDiff<cr>", desc = "Open CodeDiff" },
        },
        opts = {
            explorer = {
                auto_open_on_cursor = true,
            },
        },
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
            { "<leader>e", false },
            {
                "<leader>E",
                function()
                    Snacks.explorer()
                end,
                desc = "Open Snacks explorer",
            },
        },
        ---@module "snacks"
        ---@type snacks.Config.base
        opts = {
            scroll = {
                enabled = false,
            },
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
