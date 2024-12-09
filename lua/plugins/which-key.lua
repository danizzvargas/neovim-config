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
      { "<leader>j", group = "Json (unestable)" },
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
    { "<leader>w",  "<cmd>set wrap!<cr>",                       desc = "Wrap/Unwrap" },
    { "<leader>dd", "<cmd>lua vim.diagnostic.open_float()<cr>", desc = "Open float" },
    { "<leader>L",  "<cmd>Lazy<cr>",                            desc = "Lazy" },
    { "<leader>q",  "<cmd>qa<cr>",                              desc = "Quit" },
    { "<leader>jj", "<cmd>.:!jq<cr>",                           desc = "Prettify JSON", mode = "n" },
  },
}
