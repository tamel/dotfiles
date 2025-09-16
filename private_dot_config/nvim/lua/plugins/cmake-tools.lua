return {
  "Civitasv/cmake-tools.nvim",
  depdendencies = {
    "nvim-lua/plenary.nvim",
  },
  event = "BufEnter *CMakeLists.txt",
  ft = { "cpp", "h", "cc", "hpp" },
  keys = {
    { "<leader>cmb",  "<cmd>CMakeBuild<CR>",              desc = "cmake: build" },
    { "<leader>cmr",  "<cmd>CMakeRun<CR>",                desc = "cmake: run" },
    { "<leader>cmd",  "<cmd>CMakeDebug<CR>",              desc = "cmake: debug" },
    { "<leader>cmg",  "<cmd>CMakeGenerate<CR>",           desc = "cmake: generate" },
    { "<leader>cmsl", "<cmd>CMakeSelectLaunchTarget<CR>", desc = "cmake: select launch target" },
    { "<leader>cmsb", "<cmd>CMakeSelectBuildTarget<CR>",  desc = "cmake: select build target" },
  },
  opts = {
    cmake_build_options = {
      "--parallel=8",
    },
    cmake_executor = {
      name = "toggleterm",
      opts = {
        direction = "horizontal",
        close_on_exit = false,
        auto_scroll = true,
        singelton = true,
      },
    },
    cmake_runner = {
      name = "toggleterm",
      opts = {
        direction = "horizontal",
        close_on_exit = false,
        auto_scroll = true,
        singelton = true,
      },
    },
    cmake_notifications = {
      executor = {
        enabled = false,
      },
      runner = {
        enabled = false,
      },
    }

  },
}
