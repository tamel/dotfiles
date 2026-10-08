function activate_keybinds()
  vim.keymap.set("n", "<leader>ntr", function() require("neotest").run.run() end,
    { desc = "Neotest: run testcase" })
  vim.keymap.set("n", "<leader>ntd", function() require("neotest").run.run({ strategy = "dap" }) end,
    { desc = "Neotest: debug testcase" })
  vim.keymap.set("n", "<leader>ntt", function() require("neotest").summary.toggle() end,
    { desc = "Neotest: open summary" })
  vim.keymap.set("n", "<leader>nto", function() require("neotest").output_panel.toggle() end,
    { desc = "Neotest: open output" })
  vim.keymap.set("n", "<leader>ntk", function() require("neotest").output.open() end,
    { desc = "Neotest: open hover" })
  vim.keymap.set("n", "<leader>ntK", function() require("neotest").output.open({ enter = true }) end,
    { desc = "Neotest: open hover (enter)" })
end

function load_sevilla_setup()
  require("neotest").setup({
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
  })

  activate_keybinds()
end

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
  keys = { { "<leader>ntls", load_sevilla_setup, desc = "Neotest: load sevilla setup" },
  },
  config = false,
}
