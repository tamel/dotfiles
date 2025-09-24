return {
  "nvim-mini/mini.starter",
  version = "*",
  config = function()
    local starter = require("mini.starter")
    starter.setup({

      header = " _   _  _____ _____  _   _ ________  ___\n"
          .. "| \\ | ||  ___|  _  || | | |_   _|  \\/  |\n"
          .. "|  \\| || |__ | | | || | | | | | | .  . |\n"
          .. "| . ` ||  __|| | | || | | | | | | |\\/| |\n"
          .. "| |\\  || |___\\ \\_/ /\\ \\_/ /_| |_| |  | |\n"
          .. "\\_| \\_/\\____/ \\___/  \\___/ \\___/\\_|  |_/\n",



      footer = "",
      items = {
        { action = "enew",                      name = "New Buffer", section = "Actions" },
        { action = "qall",                      name = "Quit",       section = "Actions" },
        { action = "lua MiniFiles.open()",      name = "Browse",     section = "Files" },
        { action = "lua Snacks.picker.files()", name = "Find Files", section = "Files" },
        { action = "RemoteStart",               name = "Start",      section = "Remote" },
        starter.sections.recent_files,
      },
      content_hooks = {
        starter.gen_hook.adding_bullet(),
        starter.gen_hook.aligning("center", "center"),
      },
    })
  end,
}
