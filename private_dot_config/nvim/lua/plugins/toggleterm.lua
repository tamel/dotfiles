return {
  "akinsho/toggleterm.nvim",
  version = "*",
  -- lazy = false,
  keys = {
    { "<leader>ct", "<cmd>ToggleTermToggleAll<CR>", mode = "t", desc = "Console: close toggle term" },
    { "<leader>jk", "<C-\\><C-N>",                  mode = "t", desc = "Console: switch from terminal to normal mode" },
    { "<leader>ct" },
  },
  opts = {
    open_mapping = [[<leader>ct]],
    autochdir = true,
    insert_mappings = false,
    shell = "fish",
  },
}
