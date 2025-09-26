return {
  "folke/trouble.nvim",
  opts = {}, -- for default options, refer to the configuration section for custom setup.
  cmd = "Trouble",
  keys = {
    {
      "<leader>xd",
      "<cmd>Trouble diagnostics toggle<cr>",
      desc = "LSP: Open/close trouble diagnostics",
    },
    {
      "<leader>xq",
      "<cmd>Trouble quickfix toggle<cr>",
      desc = "Open/close trouble quickfix list",
    },
  },
}
