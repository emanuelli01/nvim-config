-- Highlight text when copy (yank)
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank({
			higroup = "IncSearch", -- O grupo de cor (IncSearch é o padrão, geralmente amarelo/laranja)
			timeout = 100, -- Duração do brilho em milisegundos
		})
	end,
})
