return {
  "nvim-treesitter/nvim-treesitter-context",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = "nvim-treesitter/nvim-treesitter",
  keys = {
    { "<leader>tt", "<cmd>TSContext toggle<cr>", desc = "Treesitter: Toggle Context" },
  },
  opts = {
    enable = false,
    separator = "-",
    zindex = 20,
  },
}
