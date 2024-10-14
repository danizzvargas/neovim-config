return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  opts = {
    filesystem = {
      follow_current_file = {
        enabled = true,
      },
    },
  },
  keys = {
    { "<leader>ee", "<cmd>Neotree toggle<cr>",  desc = "Explorer" },
    { "<leader>eb", "<cmd>Neotree buffers<cr>", desc = "Buffers" },
    { "<leader>ec", "<cmd>Neotree close<cr>",   desc = "Close explorer" },
  },
}
