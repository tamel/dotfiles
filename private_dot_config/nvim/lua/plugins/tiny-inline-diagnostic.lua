return {
  "rachartier/tiny-inline-diagnostic.nvim",
  event = "VeryLazy",
  priority = 1000,
  keys = {
    {
      "<leader>ldt",
      function()
        require("tiny-inline-diagnostic").toggle()
      end,
      desc = "LSP: Toggle display of inline diagnostics",
    },
  },
  opts = {
    preset = "modern",
    options = {
      add_message = true,
      multilines = {
        enabled = true,
        always_show = true,
      },
      virt_texts = {
        -- Priority for virtual text display (higher values appear on top)
        -- Increase if other plugins (like GitBlame) override diagnostics
        priority = 2048,
      },
    },
  },
  config = function(opts)
    require("tiny-inline-diagnostic").setup(opts)
    vim.diagnostic.config({ virtual_text = false }) -- Disable default virtual text
  end,
}
