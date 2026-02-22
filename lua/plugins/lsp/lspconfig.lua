return {
	"mason-org/mason-lspconfig.nvim",
	opts = {
		ensure_installed = { "lua_ls" },
	},
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
		"neovim/nvim-lspconfig",
	},
	config = function(_, opts)
		require("mason").setup()
		require("mason-lspconfig").setup(opts)

		-- Neovim 0.11+ usa vim.lsp.config + vim.lsp.enable
		-- vim.lsp.config('lua_ls', {})
		-- vim.lsp.config('nil_ls', {})
		-- vim.lsp.config('rust_analyzer', {})
		-- vim.lsp.config('omnisharp', {})

		vim.lsp.enable({ 'lua_ls', 'nil_ls' })
	end
}
