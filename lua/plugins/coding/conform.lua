return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	cmd = { "ConformInfo" },
	opts = {
		formatters_by_ft = {
			javascript = { "prettier" },
			typescript = { "prettier" },
			javascriptreact = { "prettier" },
			typescriptreact = { "prettier" },
			json = { "prettier" },
			html = { "prettier" },
			css = { "prettier" },
			markdown = { "prettier" },
			cs = { "csharpier" }
		},
		format_on_save = {
			lsp_fallback = true, -- Fall back to LSP if prettier is not available
			timeout_ms = 4000,
		},
		formatters = {
			prettier = {
				prepend_args = { "--trailing-comma", "es5" },
			},
		},
	},
}
