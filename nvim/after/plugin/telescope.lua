local builtin = require("telescope.builtin")
local actions = require("telescope.actions")

vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
vim.keymap.set("n", "<C-p>", builtin.git_files, {})
vim.keymap.set("n", "<leader>fw", builtin.live_grep, {})
vim.keymap.set("n", "<leader>rf", builtin.oldfiles, {})

require("telescope").setup({
	defaults = {
		mappings = {
			n = {
				["<C-w>"] = actions.send_selected_to_qflist,
				["<S-v>"] = actions.select_vertical,
				["<S-h>"] = actions.select_horizontal,
			},
		},
	},
	pickers = {
		find_files = {
			find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
		},
	},
})
