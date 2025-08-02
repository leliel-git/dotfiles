vim.opt.number = true
vim.opt.relativenumber = true
-- this options will force me to learn to use the keyboard
vim.opt.mouse = ""
vim.keymap.set("", "<up>", "<nop>", { noremap = true })
vim.keymap.set("", "<down>", "<nop>", { noremap = true })
vim.keymap.set("", "<right>", "<nop>", { noremap = true })
vim.keymap.set("", "<left>", "<nop>", { noremap = true })
vim.keymap.set("i", "<up>", "<nop>", { noremap = true })
vim.keymap.set("i", "<down>", "<nop>", { noremap = true })
vim.keymap.set("i", "<right>", "<nop>", { noremap = true })
vim.keymap.set("i", "<left>", "<nop>", { noremap = true })
-- use tabs for what they're supposed to be used
vim.g.rust_recommended_style = false
vim.g.markdown_recommended_style = false
-- 2 space indentation for .xml and .html files
vim.api.nvim_create_autocmd("FileType", {
	pattern = {"html", "xml"},
	callback = function()
		vim.opt_local.shiftwidth = 2
		vim.opt_local.tabstop = 2
		vim.opt_local.expandtab = true
	end,
})

local hidden = false

function ToggleHiddenAll()
	if not hidden then
		hidden = true
		vim.o.laststatus = 0
	else
		hidden = false
		vim.o.laststatus = 2
	end
end

ToggleHiddenAll()
vim.keymap.set('n', '<S-h>', '<Cmd>lua ToggleHiddenAll()<CR>', { noremap = true, silent = true })

-- set colorscheme
vim.cmd('colorscheme tokyodark')
