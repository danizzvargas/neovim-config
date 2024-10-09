-- Type: Style
-- Desc: Initial dashboard
return {
  'goolord/alpha-nvim',
  dependencies = { "BlakeJC94/alpha-nvim-fortune" },
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

    dashboard.section.header.val = vim.split(logo, '\n')

    local fortune = require'alpha.fortune'()
    dashboard.section.buttons.val = {
      dashboard.button('n', '   New file', ':ene <BAR> startinsert<CR>'),
      dashboard.button("r", "   Recent file", ":e #<1<CR>"),
      dashboard.button('u', '󰚰   Update plugins', '<CMD>Lazy update<CR>'),
      dashboard.button('s', '   Neovim settings', ':e $MYVIMRC | :cd %:p:h | pwd<CR>'),
      dashboard.button('q', '󰩈   Quit', '<CMD>qa<CR>'),
      --{ type = "text", val = fortune, opts = { position = "center" } },
    }

    dashboard.section.footer.val = fortune

    vim.api.nvim_create_autocmd('User', {
      pattern = 'LazyVimStarted',
      desc = 'Add Alpha dashboard footer',
      once = true,
      callback = function()
        local stats = require('lazy').stats()
        local ms = math.floor(stats.startuptime * 100 + 0.5) / 100
        local msg = ' Loaded ' .. stats.count .. ' plugins  in ' .. ms .. ' ms '

        table.insert(
          dashboard.section.buttons.val,
            { type = "text", val = msg, opts = { position = "center" } })
        -- dashboard.section.footer.val = { ' ', ' ', ' ', msg }
        -- dashboard.section.header.opts.hl = 'DashboardFooter'
        pcall(vim.cmd.AlphaRedraw)
      end,
    })


    alpha.setup(dashboard.opts)
  end
}
