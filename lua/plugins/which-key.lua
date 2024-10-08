-- Type: Navigation
-- Desc: Neovim keymaps.
return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    icons = {
      separator = "-",
      group = "",
      mappings = false,
    },
  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
    { "<leader>w", "<cmd>set wrap!<cr>", desc = "Wrap/Unwrap" },
    { "<leader>L", "<cmd>Lazy<cr>", desc = "Lazy" },
  },
}

