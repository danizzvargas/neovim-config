return {
  'romgrk/barbar.nvim',
  dependencies = {
    'lewis6991/gitsigns.nvim',
    'nvim-tree/nvim-web-devicons',
  },
  event = { 'BufReadPre', 'BufNewFile' },
  init = function() vim.g.barbar_auto_setup = false end,
  opts = {
    sidebar_filetypes = {
      ['neo-tree'] = { event = 'BufWipeout' }
    },
  },
  keys = {
    { "<leader>c", "<cmd>BufferClose<cr>", desc = "Close buffer" },
    { "<leader>C", "<cmd>BufferCloseAllButVisible<cr>", desc = "Close all but pinned" },
    { "<leader>bn", "<cmd>BufferNext<cr>", desc = "Next" },
    { "<leader>bp", "<cmd>BufferPrevious<cr>", desc = "Previous" },
    { "<leader>bP", "<cmd>BufferPin<cr>", desc = " Pin" },
    { "<leader>bb", "<cmd>BufferPick<cr>", desc = "Pick" },
    { "<leader>br", "<cmd>BufferRestore<cr>", desc = "Restore" },
    { "<leader>b<", "<cmd>BufferMovePrevious<cr>", desc = "Move left" },
    { "<leader>b>", "<cmd>BufferMoveNext<cr>", desc = "Move right" },
    { "<leader>bd", "<cmd>BufferPickDelete<cr>", desc = "Pick delete" },
  },
  version = '^1.0.0',
}
