return {
    {
        "akinsho/bufferline.nvim",
        ---@module "bufferline"
        ---@type bufferline.UserConfig
        opts = {
            options = {
                show_buffer_close_icons = false,
                show_close_icon = false,
                show_tab_indicators = false,
                modified_icon = "",
                always_show_bufferline = false,
                indicator = {
                    style = "none",
                },
                separator_style = "thin",
            },
        },
    },
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        ---@module "noice"
        ---@type NoiceConfig
        opts = {
            cmdline = {
                view = "cmdline",
            },
            routes = {
                filter = {
                    event = "notify",
                    find = "No information available",
                },
                opts = { skip = true },
            },
            presets = {
                lsp_doc_border = true,
            },
        },
    },
    {
        "folke/which-key.nvim",
        opts = {
            preset = "classic",
        },
    },
}
