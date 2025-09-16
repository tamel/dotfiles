return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  keys = {
    { "<leader>ac", "<cmd>CodeCompanionChat<CR>",    desc = "CodeCompanion: Open" },
    { "<leader>aa", "<cmd>CodeCompanionActions<CR>", desc = "CodeCompanion: Actions" },
    {
      "<leader>ai",
      function()
        local input = vim.fn.input("Waht shall I do: ")
        vim.api.nvim_command(":CodeCompanion " .. input)
      end,
      desc = "CodeCompanion: Inline"
    },
  },
  opts = {
    log_level = "TRACE",
    send_code = true,
    use_default_actions = true,
    use_default_prompts = true,
    adapters = {
      ollama =
          function()
            return require("codecompanion.adapters").extend("ollama", {
              env = {
                url = "http://127.0.0.1:11434",
              },
              schema = {
                model = {
                  default = "qwen3:14b",
                },
                num_ctx = {
                  default = 32768,
                },
              },
            })
          end,

    },
    strategies = {
      agent = {
        adapter = "ollama",
      },
      chat = {
        adapter = "ollama",
        slash_commands = {
          ["file"] = {
            -- Location to the slash command in CodeCompanion
            callback = "strategies.chat.slash_commands.file",
            description = "Select a file using Snacks",
            opts = {
              provider = "snacks", -- Can be "default", "telescope", "fzf_lua", "mini_pick" or "snacks"
              contains_code = true,
            },
          },
        }
      },
      inline = {
        adapter = "ollama",
      },
    },
    display = {
      action_palette = {
        provider = "default",
        opts = {
          show_default_actions = true,
          show_default_prompt_library = true,
        },
      },
    },
  },
}
