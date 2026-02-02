return {
 {
    "windwp/nvim-ts-autotag",
    opts = {}, -- Isso ativa o plugin com a config padrão
  },
	{
		"neovim/nvim-lspconfig",
		config = function()
			vim.lsp.config("ts_ls", {
				cmd = { "typescript-language-server", "--stdio" },
			})

			vim.lsp.enable("ts_ls")
		end,
	},
}

