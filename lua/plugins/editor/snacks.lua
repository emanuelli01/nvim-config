return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	---@type snacks.Config
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
		bigfile = { enabled = true },
		dashboard = { enabled = false },
		explorer = { enabled = true },
		indent = { enabled = true },
		input = { enabled = true },
		picker = { enabled = true },
		notifier = { enabled = true },
		quickfile = { enabled = true },
		scope = { enabled = true },
		scroll = { enabled = true },
		statuscolumn = { enabled = false },
		words = { enabled = true },
		lualine = { enabled = true },
		terminal = {
			win = {
				position = "bottom", -- Define a posição na parte inferior
				height = 0.25,
			},
		},
	},
	keys = {
		{
			"<C-t>",
			function()
				Snacks.terminal.toggle()
			end,
			desc = "Toggle Terminal",
		},
		{
			"<C-t>",
			function()
				vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<C-\\><C-n>", true, true, true), "n", false)
				Snacks.terminal.toggle()
			end,
			mode = "t",
			desc = "Toggle Terminal",
		},
		{
			"<leader>ff",
			function()
				Snacks.picker.files()
			end,
			desc = "Procurar Arquivos",
		},
		{
			"<leader>fg",
			function()
				Snacks.picker.grep()
			end,
			desc = "Buscar Texto (Grep)",
		},
		{
			"<leader>fb",
			function()
				Snacks.picker.buffers()
			end,
			desc = "Buffers Abertos",
		},
		{
			"<leader>fh",
			function()
				Snacks.picker.help()
			end,
			desc = "Ajuda (Help Tags)",
		},
		{
			"<leader>e",
			function()
				Snacks.explorer()
			end,
			desc = "Explorador de Arquivos",
		},
		{
			"<leader>bd",
			function()
				Snacks.bufdelete()
			end,
			desc = "Fechar Buffer",
		},
		{
			"gd",
			function()
				Snacks.picker.lsp_definitions()
			end,
			desc = "Goto Definition",
		},
		{
			"<leader>ss",
			function()
				Snacks.picker.lsp_symbols()
			end,
			desc = "LSP Symbols",
		},
		{
			"gr",
			function()
				Snacks.picker.lsp_references()
			end,
			nowait = true,
			desc = "References",
		},
		{
			"<leader>gg",
			function()
				Snacks.lazygit.open({
					win = {
						position = "float",
						width = 0.9,
						height = 0.9,
						border = "rounded",
					},
				})
			end,
			desc = "LazyGit",
		},
		{
			"<leader>ca",
			function()
				Snacks.picker.lsp_actions()
			end,
			desc = "Code Actions",
		},
	},
}
