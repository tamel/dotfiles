return {
  "nvim-mini/mini.indentscope",
  version = "*",
  init = function()
    -- disable indents for these buffers
    vim.api.nvim_create_autocmd("FileType", {
      pattern = {
        "Trouble",
        "alpha",
        "dashboard",
        "fzf",
        "help",
        "lazy",
        "mason",
        "neo-tree",
        "neotest-summary",
        "notify",
        "snacks_dashboard",
        "snacks_notif",
        "snacks_terminal",
        "snacks_win",
        "toggleterm",
        "trouble",
      },
      callback = function()
        vim.b.miniindentscope_disable = true
      end,
    })
  end,
  opts = {
    symbol = "│",
    options = { try_as_border = true },
  },
}
