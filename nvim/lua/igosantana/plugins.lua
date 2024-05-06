local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
	"wbthomason/packer.nvim",
	"nvim-lua/plenary.nvim",
	"rebelot/kanagawa.nvim",
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.4",
		dependencies = { { "nvim-lua/plenary.nvim" } },
	},
	"nvim-treesitter/nvim-treesitter",
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-nvim-lsp",
	"L3MON4D3/LuaSnip",
	"numToStr/Comment.nvim",
	"lewis6991/gitsigns.nvim",
	"tpope/vim-fugitive",
	"akinsho/toggleterm.nvim",
	"stevearc/conform.nvim",
	"mfussenegger/nvim-lint",
	"nvim-tree/nvim-web-devicons",
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
	{
		"nvimdev/lspsaga.nvim",
	},
	"onsails/lspkind-nvim",
	"windwp/nvim-autopairs",
	"christoomey/vim-tmux-navigator",
	{ "ellisonleao/gruvbox.nvim", priority = 1000, config = true },
}

local opts = {}

require("lazy").setup(plugins, opts)
