require("auto-session").setup({
	auto_restore_enable = false,
	auto_session_enable = true,
	auto_restore_supress_dirs = { "~/" },
})

vim.keymap.set("n", "<leader>wr", "<CMD>SessionRestore<CR>", { desc = "Restore session for cwd" })
vim.keymap.set("n", "<leader>ws", "<CMD>SessionSave<CR>", { desc = "Save session for auto session root dir" })
