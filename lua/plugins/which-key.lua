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
      { "<leader>s", group = "Custom shortcuts" },
      { "<leader>x", group = "Trouble" },
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
    { "<leader>sh", "<cmd>noh<cr>",                             desc = "Turn off highlighting" },
    { "<leader>sd", "<cmd>lua vim.diagnostic.open_float()<cr>", desc = "Open float diagnostic" },
    { "<leader>sj", "<cmd>.:!jq<cr>",                           desc = "Prettify JSON",         mode = "n" },
    { "<leader>sM", "<cmd>delmarks A-Z<cr>",                    desc = "Delete uppercase marks" },

    { "<leader>w",  "<cmd>set wrap!<cr>",                       desc = "Wrap/Unwrap" },
    { "<leader>L",  "<cmd>Lazy<cr>",                            desc = "Lazy" },
    { "<leader>q",  "<cmd>qa<cr>",                              desc = "Quit" },
  },
}
