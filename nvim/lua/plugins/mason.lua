return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = { auto_install = true },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "clangd", "cmake" }
      })
    end
  },
  {
    "jay-babu/mason-null-ls.nvim",
    lazy = false,
    config = function()
      require("mason-null-ls").setup({
        automatic_installation = true,
        ensure_installed = { "stylua", "clang_format", "cmake_format"}
      })
    end
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    lazy = false,
    config = function()
      require("mason-nvim-dap").setup({
        automatic_installation = true,
        ensure_installed = { "codelldb" }
      })
    end
  }
}
