return {
	"saghen/blink.cmp",
	version = "*",
	dependencies = { "rafamadriz/friendly-snippets" },
	opts = {
		-- 1. CONFIGURAÇÃO GLOBAL (Editor/Modo Inserção)
		keymap = {
			preset = "none",
			["<C-Space>"] = { "show", "show_documentation", "hide_documentation" },
			["<CR>"] = { "accept", "fallback" },
			["<Tab>"] = { "select_next", "fallback" },
			["<S-Tab>"] = { "select_prev", "fallback" },
			["<Esc>"] = { "hide", "fallback" },
		},

		completion = {
			menu = { auto_show = true },
			trigger = { show_on_trigger_character = true },
			ghost_text = { enabled = true },
		},

		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
		},

		-- 2. CONFIGURAÇÃO ESPECÍFICA PARA CMDLINE (Modo :)
		cmdline = {
			enabled = true,
			sources = function()
				local type = vim.fn.getcmdtype()
				if type == "/" or type == "?" then
					return { "buffer" }
				end
				if type == ":" then
					return { "cmdline" }
				end
				return {}
			end,
			-- Opcional: min_keyword_length para o comando aparecer rápido
			completion = {
				menu = { auto_show = true },
			},
		},
	},
}
