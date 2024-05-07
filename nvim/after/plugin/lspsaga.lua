local saga = require("lspsaga")

saga.setup({
	finder = {
		keys = {
			toggle_or_open = "<cr>",
		},
	},
})

local opts = { noremap = true, silent = true }
vim.keymap.set("n", "[d", "<Cmd>Lspsaga diagnostic_jump_next<cr>", opts)
vim.keymap.set("n", "]d", "<Cmd>Lspsaga diagnostic_jump_prev<cr>", opts)
