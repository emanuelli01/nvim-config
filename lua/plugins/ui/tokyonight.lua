return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {
			style = "moon",  -- storm, dark, day, moon
			transparent = true, -- Ativa a transparência para o Kitty
			terminal_colors = true,
			styles = {
				-- Opcional: garante que janelas flutuantes e sidebars também sejam transparentes
				sidebars = "transparent",
				floats = "transparent",
			},
		},
		config = function(_, opts)
			require("tokyonight").setup(opts)
			vim.cmd([[colorscheme tokyonight]])
		end,
	},
}
