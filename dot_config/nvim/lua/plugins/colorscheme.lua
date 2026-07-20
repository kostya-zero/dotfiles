return {
    {
        "craftzdog/solarized-osaka.nvim",
        lazy = false,
        enabled = false,
        priority = 1000,

        opts = {},
    },
    {
        "webhooked/kanso.nvim",
        lazy = true,
        priority = 1000,
        ---@module "kanso"
        ---@type KansoConfig
        opts = {
            background = {
                dark = "zen",
                light = "pearl",
            },
        },
    },
}
