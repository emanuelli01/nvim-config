local o = vim.opt
local global = vim.g
local diag = vim.diagnostic

if global.neovide then
	vim.keymap.set("n", "<C-=>", function()
		global.neovide_scale_factor = global.neovide_scale_factor * 1.1
	end, { desc = "Zoom in" })
	vim.keymap.set("n", "<C-->", function()
		global.neovide_scale_factor = global.neovide_scale_factor * 0.9
	end, { desc = "Zoom out" })
	global.neovide_refresh_rate = 75
	global.neovide_scale_factor = 0.9
	global.neovide_cursor_animation_length = 0.11
	global.neovide_cursor_vfx_mode = "" --"railgun", "torpedo", "pixiedust", "sonic", "ripple", "asteroids"
end

global.mapleader = " "
global.maplocalleader = "\\"

o.showmode = false -- Não mostra o modo (INSERT, NORMAL, etc) na última linha
o.relativenumber = true -- Números relativos para pular linhas rápido
o.number = true -- Mostra o número da linha atual
o.tabstop = 2 -- Tamanho do Tab
o.shiftwidth = 2 -- Tamanho da indentação
o.expandtab = false -- Transforma Tab em espaços
o.smartindent = true -- Indentação inteligente
o.termguicolors = false -- Suporte a cores reais no terminal
o.ignorecase = true -- Ignora maiúsculas na busca
o.smartcase = true -- Não ignora se houver uma maiúscula na busca
o.updatetime = 200 -- Resposta mais rápida do sistema
o.mouse = "a" -- Habilita o uso do mouse
o.clipboard = "unnamedplus"
o.splitright = true
o.splitbelow = true

diag.config({
	signs = false,
	-- virtual_text = {
	-- 	spacing = 4,
	-- 	prefix = "",
	-- 	format = function(diagnostic)
	-- 		local icons = {
	-- 			[diag.severity.ERROR] = "󰅚 ",
	-- 			[diag.severity.WARN] = "󰀪 ",
	-- 			[diag.severity.HINT] = "󰌶 ",
	-- 			[diag.severity.INFO] = "󰋽 ",
	-- 		}
	-- 		local icon = icons[diagnostic.severity] or ""
	-- 		return string.format("%s %s", icon, diagnostic.message)
	-- 	end,
	-- },
	underline = true,
	update_in_insert = false,
	severity_sort = true,
})

vim.filetype.add({
	extension = {
		hbs = "html",
		handlebars = "html",
	},
})
