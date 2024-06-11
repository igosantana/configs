local keymap = vim.keymap
local default_opts = { noremap = true, silent = true }

vim.g.mapleader = " "

-- Quit nvim
keymap.set("n", "<leader>qq", ":qa!<CR>")
keymap.set("n", "<leader>wq", ":wq<CR>")
keymap.set("n", "<leader>qq", ":q<CR>")

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
keymap.set("n", "<C-h>", "<C-w>h")
keymap.set("n", "<C-k>", "<C-w>k")
keymap.set("n", "<C-j>", "<C-w>j")
keymap.set("n", "<C-l>", "<C-w>l")

-- Move selected line / block of text in visual mode
keymap.set("x", "<S-k>", ":move '<-2<CR>gv-gv", default_opts)
keymap.set("x", "<S-j>", ":move '>+1<CR>gv-gv", default_opts)

-- Cursor in the middle at search
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- Better ident
keymap.set("v", ">", ">gv", default_opts)
keymap.set("v", "<", "<gv", default_opts)

-- Paste over currently selected text without yanking it
keymap.set("v", "p", '"_dp', default_opts)

-- Cancel search highlights
keymap.set("n", "<ESC>", ":nohlsearch<Bar>:echo<CR>", default_opts)

vim.keymap.set("n", "-", "<CMD>Oil<CR>")
