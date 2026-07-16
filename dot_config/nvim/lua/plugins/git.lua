return {
    {
        "NeogitOrg/neogit",
        dependencies = {
            "esmuellert/codediff.nvim", -- optional
            "folke/snacks.nvim", -- optional
        },
        cmd = "Neogit",
        keys = {
            { "<leader>gg", "<cmd>Neogit<cr>", desc = "Show Neogit UI" },
        },
    },
}
