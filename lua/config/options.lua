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

o.showmode = false      -- Hide mode indicator (INSERT, NORMAL, etc) in the last line
o.relativenumber = true -- Relative line numbers for fast navigation
o.number = true         -- Show current line number
o.tabstop = 2           -- Tab width
o.shiftwidth = 2        -- Indentation width
o.expandtab = false     -- Keep tabs as tabs (no space expansion)
o.smartindent = true    -- Smart auto-indentation
o.termguicolors = false -- True color support in terminal
o.ignorecase = true     -- Case-insensitive search
o.smartcase = true      -- Case-sensitive if search contains uppercase
o.updatetime = 200      -- Faster system response
o.mouse = "a"           -- Enable mouse support
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
