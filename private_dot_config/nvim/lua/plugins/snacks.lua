return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	keys = {
		{
			"<leader>ff",
			function()
				require("snacks").picker.files()
			end,
			desc = "Fuzzy find files in cwd",
		},
		{
			"<leader>fp",
			function()
				require("snacks").picker()
			end,
			desc = "Show available Snacks pickers",
		},
		{
			"<leader>fo",
			function()
				require("snacks").picker.lsp_symbols()
			end,
			desc = "Find LSP symbols (outline)",
		},
		{
			"<leader>fd",
			function()
				require("snacks").picker.diagnostics()
			end,
			desc = "Find workspace diagnostics",
		},
		{
			"<leader>fb",
			function()
				require("snacks").picker.buffers()
			end,
			desc = "Find open buffers",
		},
		{
			"<leader>fs",
			function()
				require("snacks").picker.grep()
			end,
			desc = "Find string in workspace",
		},
		{
			"<leader>fc",
			function()
				require("snacks").picker.commands()
			end,
			desc = "Find commands",
		},
		{
			"<leader>fl",
			function()
				require("snacks").picker.lines()
			end,
			desc = "Find lines in current buffer",
		},
		{
			"<leader>fn",
			function()
				require("snacks").picker.noice()
			end,
			desc = "Find notifications (noice)",
		},
		{
			"<leader>fe",
			function()
				require("snacks").picker.explorer()
			end,
			desc = "Open file explorer",
		},
		{
			"<leader>hb",
			function()
				require("snacks").git.blame_line()
			end,
			desc = "Open git blame for current line",
		},
	},
	opts = {
		picker = {
			enable = true,
			win = {
				input = {
					keys = {
						["t"] = "toggle_focus",
						["<C-c>"] = { "cancel", mode = "i" },
						["<Esc>"] = "cancel",
						["q"] = "close",
						["?"] = "toggle_help_input",
						["<CR>"] = { "confirm", mode = { "n", "i" } },
						["<s-CR>"] = { { "pick_win", "jump" }, mode = { "n", "i" } },
						["<c-TAB>"] = { "tab", mode = { "n", "i" } },
						["<c-CR>"] = { "edit_vsplit", mode = { "i", "n" } },
						["<c-s-CR>"] = { "edit_split", mode = { "i", "n" } },
						["<c-f>"] = { "toggle_follow", mode = { "i", "n" } },
						["<c-h>"] = { "toggle_hidden", mode = { "i", "n" } },
						["<c-i>"] = { "toggle_ignored", mode = { "i", "n" } },
						["<c-m>"] = { "toggle_maximize", mode = { "i", "n" } },
						-- ["<c-w>"] = "cycle_win",
						-- ["<c-p>"] = { "toggle_preview", mode = { "i", "n" } },
						-- ["<c-g>"] = { "toggle_live", mode = { "i", "n" } },
						["<c-u>"] = { "list_scroll_up", mode = { "i", "n" } },
						["<c-b>"] = { "layout_bottom", mode = { "i", "n" } },
						["G"] = "list_bottom",
						["gg"] = "list_top",
						["j"] = "list_down",
						["<c-j>"] = { "list_down", mode = { "i", "n" } },
						["k"] = "list_up",
						["<c-k>"] = { "list_up", mode = { "i", "n" } },
						["<c-d>"] = { "list_scroll_down", mode = { "i", "n" } },
						["<s-k>"] = "preview_scroll_up",
						["<s-j>"] = "preview_scroll_down",
					},
					b = {
						minipairs_disable = true,
					},
				},
			},
			list = {
				keys = {
					["t"] = "toggle_focus",
					["G"] = "list_bottom",
					["gg"] = "list_top",
					["j"] = "list_down",
					["k"] = "list_up",
					["<c-d>"] = { "list_scroll_down", mode = { "i", "n" } },
					["<c-u>"] = { "list_scroll_up", mode = { "i", "n" } },
					["<s-k>"] = "preview_scroll_up",
					["<s-j>"] = "preview_scroll_down",
					["<c-f>"] = { "toggle_follow", mode = { "i", "n" } },
					["<c-h>"] = { "toggle_hidden", mode = { "i", "n" } },
					["<c-i>"] = { "toggle_ignored", mode = { "i", "n" } },
					["<c-m>"] = { "toggle_maximize", mode = { "i", "n" } },
					-- ["<c-w>"] = "cycle_win",
					["<c-a>"] = "select_all",
					["<c-q>"] = "qflist",
					["<TAB>"] = "select_and_next",
					["<S-TAB>"] = "select_and_prev",
				},
			},
			wo = {
				conceallevel = 2,
				concealcursor = "nvc",
			},
		},
		git = {
			width = 0.6,
			height = 0.6,
			border = "rounded",
			title = " Git Blame ",
			title_pos = "center",
			ft = "git",
		},
	},
}
