return {
	"nvim-mini/mini.files",
	version = "*",
	keys = {
		{
			"<leader>ee",
			function()
				require("mini.files").open()
			end,
			desc = "Open mini.files at CWD",
		},
		{
			"<leader>ef",
			function()
				require("mini.files").open(vim.api.nvim_buf_get_name(0), false)
			end,
			desc = "Open mini.files at current file",
		},
	},
	opts = {
		windows = {
			preview = true,
			width_preview = 80,
		},
		mappings = {
			go_in_plus = "l",
			synchronize = "<CR>",
		},
	},
}
