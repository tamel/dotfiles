return {
	"nvim-mini/mini.icons",
	version = "*",
	opts = {},
	config = function(opts)
		local miniIcons = require("mini.icons")
		miniIcons.setup(opts)
		miniIcons.mock_nvim_web_devicons()
	end,
}
