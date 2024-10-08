-- Type: Navigation
-- Desc: Tabline
return {
  {
    'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim',
      'nvim-tree/nvim-web-devicons',
    },
    event = { 'BufReadPre', 'BufNewFile' },
    init = function()
      vim.g.barbar_auto_setup = false
      require("which-key").add({
        { "<leader>b", group = "󰓩 Buffers" },
      })
    end,
    opts = {
      sidebar_filetypes = {
        ['neo-tree'] = {event = 'BufWipeout'}
      },
    },
    version = '^1.0.0',
    keys = {
      { "<leader>c", "<cmd>BufferClose<cr>", desc = "Close buffer" },
      { "<leader>C", "<cmd>BufferCloseAllButCurrent<cr>", desc = "Close all but current" },
      { "<leader>bl", "<cmd>BufferNext<cr>", desc = "Next" },
      { "<leader>bh", "<cmd>BufferPrevious<cr>", desc = "Previous" },
      { "<leader>bP", "<cmd>BufferPin<cr>", desc = " Pin" },
      { "<leader>bb", "<cmd>BufferPick<cr>", desc = "Pick" },
      { "<leader>br", "<cmd>BufferRestore<cr>", desc = "Restore" },
      { "<leader>b<", "<cmd>BufferMovePrevious<cr>", desc = "Move left" },
      { "<leader>b>", "<cmd>BufferMoveNext<cr>", desc = "Move right" },
      { "<leader>bd", "<cmd>BufferPickDelete<cr>", desc = "Pick delete" },
    },
  },
  {
    "tiagovla/scope.nvim",
    init = function()
      require('scope').setup {
        -- barbar integration
        hooks = {
          pre_tab_leave = function()
            vim.api.nvim_exec_autocmds('User', {pattern = 'ScopeTabLeavePre'})
          end,
          post_tab_enter = function()
            vim.api.nvim_exec_autocmds('User', {pattern = 'ScopeTabEnterPost'})
          end,
        },
      }
    end,
  },
}
