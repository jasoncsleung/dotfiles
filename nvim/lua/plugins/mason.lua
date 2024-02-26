return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = { auto_install = true },
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "clangd", "cmake" },
			})
		end,
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		lazy = false,
		config = function()
			require("mason-tool-installer").setup({
				ensure_installed = { "luacheck", "cmakelint" },
			})
		end,
	},
	{
		"jay-babu/mason-nvim-dap.nvim",
		lazy = false,
		config = function()
			require("mason-nvim-dap").setup({
				automatic_installation = true,
				ensure_installed = { "codelldb" },
			})
		end,
	},
}
