return {
  "swaits/zellij-nav.nvim",
  lazy = true,
  keys = {
    { "<c-h>", "<cmd>ZellijNavigateLeft<cr>",  mode = { "n", "t" }, silent = true, desc = "Window: navigate left" },
    { "<c-j>", "<cmd>ZellijNavigateDown<cr>",  mode = { "n", "t" }, silent = true, desc = "Window: navigate down" },
    { "<c-k>", "<cmd>ZellijNavigateUp<cr>",    mode = { "n", "t" }, silent = true, desc = "Window: navigate up" },
    { "<c-l>", "<cmd>ZellijNavigateRight<cr>", mode = { "n", "t" }, silent = true, desc = "Window: navigate right" },
  },
  opts = {},
}
