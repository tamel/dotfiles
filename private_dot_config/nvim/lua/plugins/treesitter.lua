return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  main = "nvim-treesitter.configs",
  opts = {
    highlight = {
      enable = true,
    },
    indent = { enable = true },
    -- enable autotagging (w/ nvim-ts-autotag plugin)
    autotag = {
      enable = true,
    },
    -- ensure these languages parsers are installed
    ensure_installed = {
      -- utility
      "awk",
      "bash",
      "doxygen",
      "ini",
      "json",
      "nix",
      "regex",
      "vim",
      "xml",
      "yaml",

      -- c ecosystem
      "c",
      "cpp",
      "cmake",
      "make",

      -- languages
      "c_sharp",
      "go",
      "java",
      "lua",
      "python",
      "rust",

      -- devops
      "dockerfile",
      "helm",

      -- webdev
      "angular",
      "css",
      "html",
      "sql",
      "typescript",

      -- markdown
      "markdown",
      "markdown_inline",

      -- git
      "git_config",
      "git_rebase",
      "gitignore",
      "gitcommit",
    },
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "<C-space>",
        node_incremental = "<C-space>",
        scope_incremental = false,
        node_decremental = "<bs>",
      },
    },
  },
}
