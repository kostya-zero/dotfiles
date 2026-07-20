return {
    {
        "nvim-lint",
        enabled = false,
    },
    {
        "neovim/nvim-lspconfig",
        opts = {
            inlay_hints = { enabled = false },
            servers = {
                html = {},
                cssls = {},
                gopls = {
                    settings = {
                        gopls = {
                            analyses = {
                                ST1000 = false,
                            },
                        },
                    },
                },
                vtsls = false,
            },
        },
    },
}
