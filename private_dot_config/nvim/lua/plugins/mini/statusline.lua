return {
	"nvim-mini/mini.statusline",
	version = "*",
	dependencies = "chrisgrieser/nvim-recorder",
	opts = {
		content = {
			active = function()
				local MiniStatusline = require("mini.statusline")
				local mode, mode_hl = MiniStatusline.section_mode({ trunc_width = 120 })
				local git = MiniStatusline.section_git({ trunc_width = 40 })
				local diff = MiniStatusline.section_diff({ trunc_width = 75 })
				local diagnostics = MiniStatusline.section_diagnostics({ trunc_width = 75 })
				local lsp = MiniStatusline.section_lsp({ trunc_width = 75 })
				local filename = MiniStatusline.section_filename({ trunc_width = 140 })
				local fileinfo = MiniStatusline.section_fileinfo({ trunc_width = 120 })
				local recorder_displaySlots = require("recorder").displaySlots()
				local recorder_status = require("recorder").recordingStatus()

				return MiniStatusline.combine_groups({
					{ hl = mode_hl, strings = { mode } },
					{ hl = "MiniStatuslineDevinfo", strings = { git, diff, diagnostics, lsp } },
					"%<", -- Mark general truncate point
					{ hl = "MiniStatuslineFilename", strings = { filename } },
					"%=", -- End left alignment
					{ hl = "MiniStatuslineFilename", strings = { recorder_displaySlots, recorder_status } },
					{ hl = "MiniStatuslineFileinfo", strings = { fileinfo } },
					{ hl = mode_hl, strings = { "%p%%", "%v:%l" } },
				})
			end,
		},
	},
}
