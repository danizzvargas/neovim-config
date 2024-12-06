return {
  {
    "m00qek/baleia.nvim",
    version = "*",
    config = function()
      vim.g.baleia = require("baleia").setup({})

      -- Command to colorize the current buffer
      vim.api.nvim_create_user_command("BaleiaColorize", function()
        vim.g.baleia.once(vim.api.nvim_get_current_buf())
      end, { bang = true })

      -- Command to show logs
      vim.api.nvim_create_user_command("BaleiaLogs", vim.g.baleia.logger.show, { bang = true })
    end,
  },
  {
    "Olical/conjure",
    ft = { "clojure", "fennel" },
    lazy = true,
    init = function()
      -- TODO: Apply format on save.

      --vim.keymap.set('n', '<localLeader>dt', 'i#nu/tap <ESC>', { desc = 'Add #nu/tap' })
      --vim.keymap.set('n', '<localLeader>dd', 'i#nu/tapd <ESC>', { desc = 'Add #nu/tapd' })
      -- vim.g["conjure#debug"] = true

      local wk = require("which-key")
      wk.add({
        { "<localleader>c", group = "Connect" },
        { "<localleader>e", group = "Evaluate" },
        { "<localleader>g", group = "Go to" },
        { "<localleader>l", group = "Logs" },
        { "<localleader>r", group = "Refresh" },
        { "<localleader>s", group = "Session" },
        { "<localleader>t", group = "Tests" },
        { "<localleader>v", group = "View" },
      })

      -- Allows to execute defflows.
      -- https://nubank.slack.com/archives/C41FQ2PND/p1642430779004700?thread_ts=1642425670.003500&cid=C41FQ2PND
      vim.g["conjure#client#clojure#nrepl#test#current_form_names"] = { "deftest", "defflow", "defflow-new-system" }

      -- Colorize output.
      vim.g["conjure#log#strip_ansi_escape_sequences_line_limit"] = 0
      vim.g.baleia = require("baleia").setup({})
      vim.api.nvim_create_autocmd({ "BufWinEnter" }, {
        pattern = "conjure-log-*",
        callback = function()
          vim.g.baleia.automatically(vim.api.nvim_get_current_buf())
        end,
      })
    end,
    dependencies = {
      "PaterJason/cmp-conjure",
      "m00qek/baleia.nvim",
    },
  },
  {
    "PaterJason/cmp-conjure",
    lazy = true,
    config = function()
      local cmp = require("cmp")
      local config = cmp.get_config()
      table.insert(config.sources, { name = "conjure" })
      return cmp.setup(config)
    end,
  },
  {
    "gpanders/nvim-parinfer",
    "PaterJason/nvim-treesitter-sexp",
    -- TODO: lazy load
    -- TODO: explore these plugins
  },
}
