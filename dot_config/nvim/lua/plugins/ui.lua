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
                always_show_bufferline = true,
                indicator = {
                    style = "none",
                },
                separator_style = "none",
            },
        },
    },
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        ---@module "noice"
        ---@type NoiceConfig
        opts = {
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
}
