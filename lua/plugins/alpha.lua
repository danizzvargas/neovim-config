-- Type: Style
-- Desc: Initial dashboard
return {
  'goolord/alpha-nvim',
  config = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.dashboard'

    local logo = [[



       ████ ██████           █████      ██
      ███████████             █████ 
      █████████ ███████████████████ ███   ███████████
     █████████  ███    █████████████ █████ ██████████████
    █████████ ██████████ █████████ █████ █████ ████ █████
  ███████████ ███    ███ █████████ █████ █████ ████ █████
 ██████  █████████████████████ ████ █████ █████ ████ ██████

    ]]

    dashboard.section.buttons.val = {
      dashboard.button('n', '   New file', ':ene <CR>'),
      dashboard.button('f', '   Find file', '<CMD>Telescope find_files <CR>'),
      dashboard.button('g', '   Find text', ':<CMD>Telescope live_grep <CR>'),
      dashboard.button('r', '   Recent files', '<CMD>Telescope oldfiles <CR>'),
      dashboard.button('u', '󰚰   Update plugins', '<CMD>Lazy update<CR>'),
      dashboard.button('s', '   Neovim settings', ':cd $HOME/.config/nvim | e init.lua<CR>'),
      dashboard.button('q', '󰩈   Quit', '<CMD>qa<CR>'),
    }

    dashboard.section.header.val = vim.split(logo, '\n')

    vim.api.nvim_create_autocmd('User', {
      pattern = 'LazyVimStarted',
      desc = 'Add Alpha dashboard footer',
      once = true,
      callback = function()
        local stats = require('lazy').stats()
        local ms = math.floor(stats.startuptime * 100 + 0.5) / 100
        dashboard.section.footer.val = { ' ', ' ', ' ', ' Loaded ' .. stats.count .. ' plugins  in ' .. ms .. ' ms ' }
        dashboard.section.header.opts.hl = 'DashboardFooter'
        pcall(vim.cmd.AlphaRedraw)
      end,
    })

    alpha.setup(dashboard.opts)
  end
}
