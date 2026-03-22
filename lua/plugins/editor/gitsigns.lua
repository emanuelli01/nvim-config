return {
	"lewis6991/gitsigns.nvim",
	event = { "BufReadPre", "BufNewFile" },
	opts = {
		current_line_blame = true,
		current_line_blame_opts = {
			virt_text = true,
			virt_text_pos = "eol",
			delay = 700,
		},
		current_line_blame_formatter = " <author>, <author_time:%R> - <summary>",
	},
	keys = {
		{
			"<leader>hp",
			function()
				require("gitsigns").preview_hunk()
			end,
			desc = "Preview Hunk",
		},
		{
			"<leader>hb",
			function()
				require("gitsigns").blame_line({ full = true })
			end,
			desc = "Full Blame (Popup)",
		},
		{
			"<leader>hd",
			function()
				require("gitsigns").diffthis()
			end,
			desc = "Diff Current File",
		},
	},
}
