return {
	"0x00-ketsu/maximizer.nvim",
	event = "VeryLazy",
	keys = {
		{
			"<leader>sm",
			function()
				require("maximizer").toggle()
			end,
			desc = "toggle maximized state of the current split",
		},
	},
	opts = {},
}
