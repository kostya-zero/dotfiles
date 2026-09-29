return {
    {
        "nvim-lint",
        enabled = false,
    },
    {
        "neovim/nvim-lspconfig",
        opts = {
            inlay_hints = { enabled = false },
            folds = { enabled = false },
            servers = {
                html = {},
                cssls = {},
                vtsls = false,
            },
        },
    },
}
