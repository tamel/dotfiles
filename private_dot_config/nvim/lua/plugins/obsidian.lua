return {
  "obsidian-nvim/obsidian.nvim",
  version = "3.14.8",
  dependencies = {
    "folke/snacks.nvim",
  },
  keys = {
    {
      "<leader>obs",
      "<cmd>Obsidian<cr>",
      desc = "Obsidian: open menu"
    },
    {
      "<leader>objc",
      "<cmd>Obsidian today<cr>",
      desc = "Obsidian: Open today's journal",
    },
    {
      "<leader>objp",
      "<cmd>Obsidian yesterday<cr>",
      desc = "Obsidian: Open yesterday's journal",
    },
    {
      "<leader>objn",
      "<cmd>Obsidian tomorrow<cr>",
      desc = "Obsidian: Open tomorrow's journal",
    },
    {
      "<leader>obnn",
      function()
        local api = require("obsidian.api")
        local title = vim.fn.input("note title")
        api.new_from_template(title, "note")
      end,
      desc = "Obsidian: Creante new note",
    },
    {
      "<leader>obil",
      "<cmd>Obsidian link<cr>",
      mode = "v",
      desc = "Obsidian insert link",
    },
  },
  opts = {
    legacy_commands = false,
    notes_subdir = "notes",
    note_id_func = function(title)
      if title == nil then
        return nil
      end
      local name = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
      return name
    end,
    frontmatter = {
      enabled = false,
    },
    templates = {
      folder = "templates",
    },
    workspaces = {
      {
        name = "personal",
        path = "~/Documents/Notes/personal_notes",
      },
    },
    picker = {
      -- name = "snacks",
    },
    checkbox = {
      enabled = true,
      create_new = true,
      order = { " ", "x", "-" }
    },
    daily_notes = {
      folder = "journals",
      workdays_only = false,
      default_tags = {},
      template = "journal",
    },
  }
}
