return {
    {
        "webhooked/kanso.nvim",
        lazy = true,
        priority = 1000,
        ---@module "kanso"
        ---@type KansoConfig
        opts = {
            transparent = false,
            background = {
                dark = "zen",
                light = "pearl",
            },
        },
    },
}
