-- Type: Style
-- Desc: Initial dashboard
return {
  'goolord/alpha-nvim',
  dependencies = {
    'echasnovski/mini.icons',
    'nvim-lua/plenary.nvim'
  },
  config = function ()
    local dashboard = require("alpha.themes.dashboard")
    dashboard.section.header.val = {"Hello!"}
    require'alpha'.setup(require'alpha.themes.theta'.config)
  end
}
