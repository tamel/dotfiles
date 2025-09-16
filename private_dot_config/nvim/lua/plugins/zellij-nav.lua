return {
	"swaits/zellij-nav.nvim",
	lazy = true,
	keys = {
		{ "<c-h>", "<cmd>ZellijNavigateLeft<cr>", mode = { "n", "t" }, silent = true, desc = "navigate left" },
		{ "<c-j>", "<cmd>ZellijNavigateDown<cr>", mode = { "n", "t" }, silent = true, desc = "navigate down" },
		{ "<c-k>", "<cmd>ZellijNavigateUp<cr>", mode = { "n", "t" }, silent = true, desc = "navigate up" },
		{ "<c-l>", "<cmd>ZellijNavigateRight<cr>", mode = { "n", "t" }, silent = true, desc = "navigate right" },
	},
	opts = {},
}
