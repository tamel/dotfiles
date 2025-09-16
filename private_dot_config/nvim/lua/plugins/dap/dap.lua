return {
  "mfussenegger/nvim-dap",
  event = { "BufReadPre", "BufNewFile" },
  init = function()
    vim.api.nvim_set_hl(0, "DapCatppuccinRed", {
      fg = "#f38ba8",
    })
    vim.api.nvim_set_hl(0, "DapCatppuccinYellow", {
      fg = "#f0e2af",
    })

    vim.fn.sign_define("DapBreakpoint", { text = "", texthl = "DapCatppuccinRed", numhl = "DapCatppuccinRed" })
    vim.fn.sign_define("DapBreakpointCondition", { text = "C", texthl = "DapCatppuccinRed", numhl = "DapCatppuccinRed" })
    vim.fn.sign_define("DapLogPoint", { text = "L", texthl = "DapCatppuccinRed", numhl = "DapCatppuccinRed" })
    vim.fn.sign_define("DapStopped", { text = "⇨", texthl = "DapCatppuccinYellow", numhl = "DapCatppuccinYellow" })
  end,
  keys = {
    {
      "<leader>dbt",
      function()
        require("dap").toggle_breakpoint()
      end,
      desc = "Toggle Breakpoint",
    },
    {
      "<leader>dbc",
      function()
        require("dap").set_breakpoint(vim.fn.input("condition"), nil, nil)
      end,
      desc = "Create a conditional Breakpoint",
    },
    {
      "<leader>dbn",
      function()
        require("dap").set_breakpoint(nil, vim.fn.input("hit count"), nil)
      end,
      desc = "Create a count Breakpoint",
    },
    {
      "<leader>dbl",
      function()
        require("dap").set_breakpoint(nil, nil, vim.fn.input("message"))
      end,
      desc = "Create a log Breakpoint",
    },
    {
      "<F5>",
      function()
        require("dap").continue()
      end,
      desc = "Debug: continue",
    },
    {
      "<F10>",
      function()
        require("dap").step_over()
      end,
      desc = "Debug: step over",
    },
    {
      "<F11>",
      function()
        require("dap").step_into()
      end,
      desc = "Debug: step into",
    },
    {
      "<F12>",
      function()
        require("dap").step_out()
      end,
      desc = "Debug: step out",
    },
  },
}
