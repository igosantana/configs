local keymap = vim.keymap
local default_opts = { noremap = true, silent = true }

vim.g.mapleader = " "
keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Save
keymap.set("n", "<C-s>", ":w<cr>")

-- Open Fugitive
keymap.set("n", "<leader>of", ":G<cr> <C-w>o")

-- Do not yank with x
keymap.set("n", "x", '"_x')

-- Split window
keymap.set("n", "<leader>sh", ":sp<cr>", default_opts)
keymap.set("n", "<leader>sv", ":vs<cr>", default_opts)

-- Move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

-- Tmux move
keymap.set("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>")
keymap.set("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>")
keymap.set("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>")
keymap.set("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>")

-- Move selected line / block of text in visual mode
keymap.set("x", "<S-k>", ":move '<-2<CR>gv-gv", default_opts)
keymap.set("x", "<S-j>", ":move '>+1<CR>gv-gv", default_opts)

-- Cursor in the middle at search
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- Select word and replace
keymap.set("n", "<leader>wr", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Better ident
keymap.set("v", ">", ">gv", default_opts)
keymap.set("v", "<", "<gv", default_opts)

-- Paste over currently selected text without yanking it
keymap.set("v", "p", '"_dp', default_opts)

-- Cancel search highlights
keymap.set("n", "<ESC>", ":nohlsearch<Bar>:echo<CR>", default_opts)
