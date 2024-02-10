local mason = require("mason")
local lspconfig = require("mason-lspconfig")

mason.setup({})
lspconfig.setup({
	ensure_installed = { "tsserver", "gopls", "lua_ls" },
	handlers = {
		["lua_ls"] = function()
			require("lspconfig").lua_ls.setup({
				settings = {
					Lua = {
						diagnostics = {
							globals = { "vim" },
						},
					},
				},
			})
		end,
	},
})
