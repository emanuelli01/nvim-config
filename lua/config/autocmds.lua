-- Highlight text when copy (yank)
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank({
			higroup = "IncSearch", -- Highlight group (IncSearch is the default, usually yellow/orange)
			timeout = 100, -- Highlight duration in milliseconds
		})
	end,
})
