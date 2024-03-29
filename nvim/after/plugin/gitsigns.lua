local status, gitsigns = pcall(require, "gitsigns")
if not status then
	return
end

gitsigns.setup({
	current_line_blame = true,
	on_attach = function(bufnr)
		local function map(mode, lhs, rhs, opts)
			opts = vim.tbl_extend("force", { noremap = true, silent = true }, opts or {})
			vim.api.nvim_buf_set_keymap(bufnr, mode, lhs, rhs, opts)
		end

		-- Navigation
		map("n", "]c", "&diff ? ']c' : '<cmd>Gitsigns next_hunk<CR>'", { expr = true })
		map("n", "[c", "&diff ? '[c' : '<cmd>Gitsigns prev_hunk<CR>'", { expr = true })

		-- Actions
		map("n", "<leader>hs", ":Gitsigns stage_hunk<CR>")
		map("v", "<leader>hs", ":Gitsigns stage_hunk<CR>")
		map("n", "<leader>hr", ":Gitsigns reset_hunk<CR>")
		map("v", "<leader>hr", ":Gitsigns reset_hunk<CR>")
		map("n", "<leader>hS", "<cmd>Gitsigns stage_buffer<CR>")
		map("n", "<leader>hu", "<cmd>Gitsigns undo_stage_hunk<CR>")
		map("n", "<leader>hR", "<cmd>Gitsigns reset_buffer<CR>")
	end,
})
