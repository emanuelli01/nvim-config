local map = vim.keymap.set

map("i", "jk", "<Esc>", { desc = "Exit insert mode", silent = true })
map("t", "<C-w>k", [[<C-\><C-n><C-w>k]], { desc = "Go to upper window from terminal" })
map('n', '<leader>xx', vim.diagnostic.setloclist, { desc = "View error list" })
map('n', '<leader>xf', function()
	vim.diagnostic.open_float({ focusable = true })
end, { desc = "View error float" })
