local map = vim.keymap.set

map("n", "<leader>i", function()
    vim.lsp.inlay_hint.enable(false)
end, { desc = "Disable Inlay Hints" })

map("t", "<esc><esc><esc>", "<C-\\><C-n>", { silent = true })

-- Delete without writing to register.
map("n", "<leader>dd", '"_d')
map("v", "<leader>dd", '"_d')
