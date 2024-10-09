-- Type: Code
-- Desc: Configure linters, formatters, etc. Depends on Mason.
return {
	"nvimtools/none-ls.nvim",
	keys = {
		{ "<leader>lf", vim.lsp.buf.format, desc = "Format" },
	},
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.isort,
				null_ls.builtins.formatting.black,
			},
		})
	end,
}
