return {
	"neovim/nvim-lspconfig",
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} }
	},

	config = function()
		vim.lsp.config("powershell_es", {
			bundle_path = vim.fn.expand("$POWERSHELL_DIST_ROOT"),
			shell = "pwsh",
		})
		vim.lsp.enable({ "lua_ls", "nil_ls" })
	end,
}
