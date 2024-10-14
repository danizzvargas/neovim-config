return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  config = function()
    require("ibl").setup {
      indent = { char = "│" },
      exclude = { filetypes = { "dashboard" } },
    }
  end
}
