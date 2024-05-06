require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		javascript = { { "prettierd" } },
		typescript = { "prettierd" },
		javascriptreact = { "prettierd" },
		typescriptreact = { "prettierd" },
		css = { "prettier" },
		html = { "prettier" },
		go = { "goimports", "gofumpt" },
	},
	format_on_save = {
		timeout_ms = 3000,
	},
})
