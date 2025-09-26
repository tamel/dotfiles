return {
  "arnamak/stay-centered.nvim",
  lazy = false,
  keys = {
    {
      "<leader>st",
      function()
        require("stay-centered").toggle()
      end,
      desc = "StayCentered: toggle stay centered",
    },
  },
  opts = {
    skip_filetypes = { "ministarter", "toggleterm", "minifiles", "neotest-summary" },
    enabled = true,
    allow_scroll_move = true,
    disable_on_mouse = true,
  },
}
