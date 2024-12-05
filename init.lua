require("config.options")
require("config.lazy")

-- TODO: Move these commands to a different file.
-- Restore cursor position when a file is opened.
vim.api.nvim_create_autocmd("BufReadPost", {
  pattern = "*",
  callback = function()
    if vim.fn.line("'\"") > 0 and vim.fn.line("'\"") <= vim.fn.line('$') then
      vim.cmd("normal! g`\"")
    end
  end,
})
