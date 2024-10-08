-- Type: Navigation
-- Desc: Advanced file browser
return {
  'nvim-telescope/telescope.nvim',
  keys = {
    { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
    { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live grep" },
    { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help tags" },
  },
  init = function()
    require("which-key").add({
      { "<leader>f", group = "󰍉 Find" },
    })
  end,
  tag = '0.1.8',
  dependencies = { 'nvim-lua/plenary.nvim' },
}

