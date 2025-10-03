return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = {
    "nvim-mini/mini.files",
    "catppuccin/nvim",
  },
  lazy = true,
  event = "VeryLazy",
  keys = {
    { "<leader>to", "<cmd>tabnew<CR>",   desc = "Tab: Open new tab" },
    { "<leader>tx", "<cmd>tabclose<CR>", desc = "Tab: Close current tab" },
    { "<leader>tn", "<cmd>tabn<CR>",     desc = "Tab: Go to next tab" },
    { "<leader>tp", "<cmd>tabp<CR>",     desc = "Tab: Go to previous tab" },
    { "<leader>tf", "<cmd>tabnew %<CR>", desc = "Tab: Open current buffer in new tab" },
  },
  config = function()
    require("bufferline").setup({
      options = {
        mode = "tabs",
        always_show_bufferline = false,
        auto_toggle_bufferline = true,
      },
      highlights = require("catppuccin.special.bufferline").get_theme(),
    })
  end,
}
