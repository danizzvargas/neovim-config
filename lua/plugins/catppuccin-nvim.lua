-- Type: Style
-- Desc: Theme
return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			integrations = {
				barbar = true,
				neotree = true,
				mason = true,
				ufo = true,
				alpha = true,
				neogit = true,
			},
		})
		vim.cmd.colorscheme("catppuccin-frappe")
	end,
}
