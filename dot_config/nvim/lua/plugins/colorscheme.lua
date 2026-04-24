return {
    "WTFox/jellybeans.nvim",
    lazy = false,
    priority = 1000,
    opts = {
        italics = false,
        transparent = false,
        background = {
            dark = "jellybeans_mono",
            light = "jellybeans_mono_light",
        },
        on_colors = function(c)
            c.foreground = "#c7c7c7"
        end,
    },
}
