-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])
return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")
	use("nvim-lua/plenary.nvim")
	use("rebelot/kanagawa.nvim")
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.4",
		-- or                            , branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
	use({ "williamboman/mason.nvim" })
	use({ "williamboman/mason-lspconfig.nvim" })
	use({ "neovim/nvim-lspconfig" })
	use({ "hrsh7th/nvim-cmp" })
	use({ "hrsh7th/cmp-nvim-lsp" })
	use({ "L3MON4D3/LuaSnip" })
	use("numToStr/Comment.nvim")
	use("lewis6991/gitsigns.nvim") -- Gitsigns
	use("tpope/vim-fugitive")
	use("akinsho/toggleterm.nvim") --toggleterm
	use({ "stevearc/conform.nvim" })
	use({ "mfussenegger/nvim-lint" })
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "nvim-tree/nvim-web-devicons", opt = true },
	})
	use({
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use({
		"nvimdev/lspsaga.nvim",
		after = "nvim-lspconfig",
	})
	use("onsails/lspkind-nvim")
	use("windwp/nvim-autopairs")
	use("christoomey/vim-tmux-navigator")
end)
