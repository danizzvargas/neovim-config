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
  init = function()
    require("which-key").add({
      { "<leader>b", group = "Buffer" },
      { "<leader>d", group = "Diagnostic" },
      { "<leader>f", group = "Files" },
      { "<leader>g", group = "Git" },
      { "<leader>l", group = "Language" },
      { "<leader>t", group = "Trouble" },
    })
  end,
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
    { "<leader>h",  "<cmd>set hlsearch!<cr>",                   desc = "Toggle highlighting" },
    { "<leader>d",  "<cmd>lua vim.diagnostic.open_float()<cr>", desc = "Open float diagnostic" },
    { "<leader>J",  "<cmd>.:!jq<cr>",                           desc = "Prettify JSON",         mode = "n" },
    { "<leader>dm", "<cmd>delmarks A-Z<cr>",                    desc = "Delete uppercase marks" },
    { "<leader>w",  "<cmd>set wrap!<cr>",                       desc = "Wrap/Unwrap" },
    { "<leader>q",  "<cmd>qa<cr>",                              desc = "Quit" },

    { "<leader>s",  "<cmd>split<cr>",                           desc = "Window split" },
    { "<leader>v",  "<cmd>vsplit<cr>",                          desc = "Window vertical split" },
    { "<leader>c",  "<cmd>close<cr>",                           desc = "Window vertical split" },
  },
}
