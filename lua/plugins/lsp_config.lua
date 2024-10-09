-- Type: Code
-- Desc: LSP configuration
return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "pylsp",
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    keys = {
      { "<leader>lh", vim.lsp.buf.hover,       desc = "Hover" },
      { "gd",         vim.lsp.buf.definition,  desc = "Go definition" },
      { "<leader>la", vim.lsp.buf.code_action, desc = "Code action" },
    },
    init = function()
      require("which-key").add({
        { "<leader>l", group = " Language tools" },
      })
    end,
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.pylsp.setup({})
    end,
  },
}
