local map = vim.keymap.set

map("n", "<leader>i", function()
    vim.lsp.inlay_hint.enable(false)
end, { desc = "Disable Inlay Hints" })

-- Delete without writing to register.
map("n", "d", '"_d')
map("v", "d", '"_d')
map("n", "c", '"_c')
