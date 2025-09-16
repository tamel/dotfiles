return {
	"nvim-mini/mini.starter",
	version = "*",
	config = function()
		local starter = require("mini.starter")
		starter.setup({

			header = "███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗\n"
				.. "████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║\n"
				.. "██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║\n"
				.. "██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║\n"
				.. "██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║\n"
				.. "╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝\n",
			footer = "",
			items = {
				{ action = "enew", name = "New Buffer", section = "Actions" },
				{ action = "qall", name = "Quit", section = "Actions" },
				{ action = "lua MiniFiles.open()", name = "Browse", section = "Files" },
				{ action = "lua Snacks.picker.files()", name = "Find Files", section = "Files" },
				starter.sections.recent_files,
			},
			content_hooks = {
				starter.gen_hook.adding_bullet(),
				starter.gen_hook.aligning("center", "center"),
			},
		})
	end,
}
