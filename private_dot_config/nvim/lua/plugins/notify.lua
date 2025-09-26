return {
  "rcarriga/nvim-notify",
  lazy = false,
  main = "notify",
  keys = {
    { "<leader>nd", function() require("notify").dismiss() end, desc = "Notify: Dismiss notifications" },
  },
  opts = {
    background_colour = "#000000",
    maxWidth = 200,
    render = "wrapped-compact",
    stages = "slide",
  },
}
