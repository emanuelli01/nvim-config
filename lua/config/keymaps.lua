local map = vim.keymap.set

map("i", "jk", "<Esc>", { desc = "Exit insert mode", silent = true })
map("n", "^", "<C-6>", { desc = "Go to the last buffer opened" })

map({ "n", "v" }, "<leader>ca", function()
	vim.lsp.buf.code_action()
end, { desc = "Code Actions" })

-- errors
map("n", "<leader>xx", vim.diagnostic.setloclist, { desc = "View error list" })
map("n", "<leader>xf", function()
	vim.diagnostic.open_float({ focusable = true })
end, { desc = "View error float" })

-- Workaround's
map("t", "<C-w>k", [[<C-\><C-n><C-w>k]], { desc = "Go to upper window from terminal" })
map("t", "<C-w>h", [[<C-\><C-n><C-w>h]], { desc = "Go to left window from AI" })
map("n", "<Esc>", "<cmd>noh<cr><Esc>", { desc = "Escape and Clear hlsearch" }) -- Clear search highlight when pressing ESC in normal mode
