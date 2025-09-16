return {
  "rcarriga/nvim-dap-ui",
  dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
  main = "dapui",
  keys = {
    { "<leader>du", function() require("dapui").toggle() end, desc = "Toggles DAP UI" }
  },
  config = true,
}
