return {
    {
        "craftzdog/solarized-osaka.nvim",
        lazy = true,
        opts = {
            transparent = true,
        },
    },
    {
        "oxidescheme/nvim",
        name = "oxide",
        lazy = true,
        ---@module "oxide"
        opts = {
            transparent = false,
            on_highlights = function(highlights, colors)
                highlights.SnacksIndent = { fg = "#383838" }
                return highlights
            end,
        },
    },
}
