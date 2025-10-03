return {
  "catppuccin/nvim",
  name = "catppuccin",
  -- priority = 1000,
  init = function()
    vim.cmd.colorscheme("catppuccin")
  end,
  opts = {
    flavour = "mocha",
    integrations = {
      flash = true,
      gitsigns = true,
      indent_blankline = {
        enabled = true,
        scope_color = "mauve",
        colored_indent_levels = false,
      },
      mason = true,
      neotest = true,
      cmp = true,
      noice = true,
      dap = true,
      dap_ui = true,
      notify = true,
      treesitter_context = true,
      overseer = true,
      snacks = {
        enabled = true,
        indent_scope_color = "mauve",
      },
      telescope = {
        enabled = true,
      },
      which_key = true,
      mini = {
        enabled = true,
        indentscope_color = "mauve",
      },



      bufferline = true,
    },
    transparent_background = true,
  },
}
