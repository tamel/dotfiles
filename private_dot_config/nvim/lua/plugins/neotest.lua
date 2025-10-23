return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-neotest/nvim-nio",
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter",
    "nvim-neotest/neotest-python",
    "orjangj/neotest-ctest",
  },
  keys = {
    { "<leader>ntr", function() require("neotest").run.run() end,                     desc = "Neotest: run testcase" },
    { "<leader>ntd", function() require("neotest").run.run({ strategy = "dap" }) end, desc = "Neotest: debug testcase" },
    { "<leader>ntt", function() require("neotest").summary.toggle() end,              desc = "Neotest: open summary" },
    { "<leader>nto", function() require("neotest").output_panel.toggle() end,         desc = "Neotest: open output" },
    { "<leader>ntk", function() require("neotest").output.open() end,                 desc = "Neotest: open hover" },
    { "<leader>ntK", function() require("neotest").output.open({ enter = true }) end, desc = "Neotest: open hover (enter)" },
  },
  config = function()
    require("neotest").setup({
      adapters = {
        require("neotest-python")({
          dap = { justMyCode = false, },
        }),
        require("neotest-ctest").setup({}),
      },
      projects = {
        ["/workspaces/med-sevilla-swc"] = {
          discovery = {
            filter_dir = function(name, rel_path, root)
              return name ~= "build-debug" and name ~= "build-release"
            end,
          },
          adapters = {
            require("neotest-ctest").setup({
              is_test_file = function(file_path)
                local res = string.match(file_path, ".*/Test[^/]+%.cpp")
                if res then
                  return true
                else
                  return false
                end
              end,
              frameworks = { "gtest" },
            }),
          },
        },
      },
    })
  end,
}
