-- Type: Style
-- Desc: Statusline
return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup {
      extensions = { 'neo-tree' },
      options = {
        theme = "catppuccin",
      }
    }
  end
}
