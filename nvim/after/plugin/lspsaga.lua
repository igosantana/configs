local saga = require("lspsaga")

saga.setup({
	finder = {
		keys = {
			vsplit = "v",
			split = "h",
			toggle_or_open = "<cr>",
		},
	},
})

local opts = { noremap = true, silent = true }
vim.keymap.set("n", "[d", "<Cmd>Lspsaga diagnostic_jump_next<cr>", opts)
vim.keymap.set("n", "]d", "<Cmd>Lspsaga diagnostic_jump_prev<cr>", opts)
vim.keymap.set("n", "K", "<Cmd>Lspsaga hover_doc<cr>", opts)
vim.keymap.set("n", "gd", "<Cmd>Lspsaga finder<cr>", opts)
vim.keymap.set("n", "<leader>ca", "<Cmd>Lspsaga code_action<cr>", opts)
