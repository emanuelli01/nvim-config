return {
	"lewis6991/gitsigns.nvim",
	event = { "BufReadPre", "BufNewFile" }, -- Melhor que VeryLazy para garantir que carregue ao abrir arquivos
	opts = {
		current_line_blame = true,
		current_line_blame_opts = {
			virt_text = true,
			virt_text_pos = "eol", -- coloca ao final da linha
			delay = 1000, -- atraso em ms para aparecer
		},
		current_line_blame_formatter = " <author>, <author_time:%R> - <summary>",
	},
	keys = {
		-- Atalhos usando a sintaxe correta do Lazy.nvim
		{
			"<leader>hp",
			function()
				require("gitsigns").preview_hunk()
			end,
			desc = "Preview Hunk (Ver mudança na linha)",
		},
		{
			"<leader>hb",
			function()
				require("gitsigns").blame_line({ full = true })
			end,
			desc = "Blame Completo (Popup)",
		},
		{
			"<leader>hd",
			function()
				require("gitsigns").diffthis()
			end,
			desc = "Diff do arquivo atual",
		},
	},
}
