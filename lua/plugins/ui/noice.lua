return {
	"folke/noice.nvim",
	event = "VeryLazy",
	opts = {
		lsp = {
			-- sobrescreve o hover e a assinatura do LSP para usar a interface do Noice
			override = {
				["vim.lsp.util.convert_input_to_markdown_lines"] = true,
				["vim.lsp.util.stylize_markdown"] = true,
				["cmp.entry.get_documentation"] = true,
			},
		},
		presets = {
			bottom_search = true, -- coloca a busca no rodapé, mas com estilo moderno
			command_palette = true, -- centraliza a linha de comando e a paleta de busca
			long_message_to_split = true, -- mensagens longas vão para um split lateral
			inc_rename = false, -- ativa interface para o plugin de renomear (se você tiver)
		},
	},
	dependencies = {
		-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
		"MunifTanjim/nui.nvim",
	},
}
