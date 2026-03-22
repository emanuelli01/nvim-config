return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {
			style = "storm", -- storm, dark, day, moon
			transparent = true, -- Enable transparency for Kitty
			terminal_colors = true,
			styles = {
				-- Ensures floating windows and sidebars are also transparent
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
