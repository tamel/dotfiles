return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	init = function()
		vim.api.nvim_create_user_command("FormatDisable", function(args)
			if args.bang then
				-- FormatDisable! will disable formatting just for this buffer
				vim.b.disable_autoformat = true
			else
				vim.g.disable_autoformat = true
			end
		end, { bang = true, desc = "Disable format on save" })
		vim.api.nvim_create_user_command("FormatEnable", function()
			vim.b.disable_autoformat = false
			vim.g.disable_autoformat = false
		end, { desc = "Enable format on save" })
	end,
	keys = {
		{
			"<leader>mp",
			function()
				require("conform").format({
					lsp_fallback = true,
					async = false,
					timeout_ms = 1000,
				})
			end,
			mode = { "n", "v" },
			desc = "Format file or range",
		},
		{
			"<leader>me",
			"<Cmd>FormatEnable<CR>",
			desc = "Enable format on save",
		},
		{
			"<leader>mda",
			"<Cmd>FormatDisable<CR>",
			desc = "Disable format on save for all files",
		},
		{
			"<leader>mdb",
			"<Cmd>FormatDisable!<CR>",
			desc = "Disable format on save for current buffer",
		},
	},
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			nix = { "alejandra" },
			markdown = { "prettier" },
		},
		format_on_save = function(bufnr)
			if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
				return
			end

			return { timeout_ms = 1000, lsp_fallback = true, async = false }
		end,
	},
}
