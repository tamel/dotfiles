return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  lazy = false,
  build = ":TSUpdate",
  init = function()
    vim.api.nvim_create_autocmd("FileType", {
      group = vim.api.nvim_create_augroup("tree-sitter-enable", { clear = true }),
      callback = function(args)
        local lang = vim.treesitter.language.get_lang(args.match)
        if not lang or not vim.treesitter.language.add(lang) then return end

        if vim.treesitter.query.get(lang, "highlights") then vim.treesitter.start(args.buf) end

        if vim.treesitter.query.get(lang, "indents") then
          vim.opt_local.indentexpr = 'v:lua.require("nvim-treesitter").indentexpr()'
        end

        if vim.treesitter.query.get(lang, "folds") then
          vim.opt_local.foldmethod = "expr"
          vim.opt_local.foldexpr = "v:lua.vim.treesitter.foldexpr()"
        end
      end,
    })
  end,
  opts = {
    highlight = {
      enable = true,
    },
    indent = { enable = true },
    -- enable autotagging (w/ nvim-ts-autotag plugin)
    autotag = {
      enable = true,
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
  config = function(opts)
    local nvimTreesitter = require('nvim-treesitter')

    nvimTreesitter.setup(opts)

    nvimTreesitter.install({
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
    })
  end,
}
