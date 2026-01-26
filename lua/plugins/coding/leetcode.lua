return {
	"kawre/leetcode.nvim",
	build = ":TSUpdate", -- if you have `nvim-treesitter` installed
	dependencies = {
		-- include a picker of your choice, see picker section for more details
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
	},
	opts = {
		-- configuration goes here
	},
	config = function()
		require("leetcode").setup({
			arg = "leetcode.nvim",
			lang = "typescript", -- Altere aqui para "python", "javascript", "rust", etc.
		})
	end,
}
