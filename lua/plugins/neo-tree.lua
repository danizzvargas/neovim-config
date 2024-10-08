-- Type: Navigation
-- Desc: File system explorer
return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    window = {
      position = "left",
      width = 30,
    },
    filesystem = {
      follow_current_file = {
        enabled = true,
      },
    },
  },
  keys = {
    { "<leader>ee", "<cmd>Neotree toggle<cr>", desc = "Toggle explorer" },
    { "<leader>eb", "<cmd>Neotree buffers<cr>", desc = "Buffers" },
    { "<leader>ec", "<cmd>Neotree close<cr>", desc = "Close explorer" },
  },
  init = function()
    require("which-key").add {
      { "<leader>e", group = " Explorer" },
    }
  end,
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },
}

