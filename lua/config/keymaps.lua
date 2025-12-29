local map = vim.keymap.set

map("i", "jk", "<Esc>", { desc = "Exit insert mode", silent = true })
map("t", "<C-w>k", [[<C-\><C-n><C-w>k]], { desc = "Go to upper window from terminal" })
map("n", "<C-=>", function()
	vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * 1.1
end, { desc = "Zoom in" })
map("n", "<C-->", function()
	vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * 0.9
end, { desc = "Zoom out" })
