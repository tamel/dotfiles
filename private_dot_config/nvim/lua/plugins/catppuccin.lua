return {
	"catppuccin/nvim",
	name = "catppuccin",
	-- priority = 1000,
	init = function()
		vim.cmd.colorscheme("catppuccin")
	end,
	opts = {
		flavour = "mocha",
		integrations = {
			cmp = true,
			gitsigns = true,
			treesitter = true,
			nvimtree = true,
			notify = true,
			bufferline = true,
			mini = {
				enabled = true,
			},
		},
		transparent_background = true,
	},
}
