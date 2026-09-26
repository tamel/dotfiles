local vars = require("hyprland.vars")
local colors = require("catppuccin-mocha")

local mainMod = vars.mainMod

local pluginDir = os.getenv("HYPR_PLUGIN_DIR")
if pluginDir == nil then
  return;
end

hl.plugin.load(pluginDir .. "/lib/libgloview.so")

if hl.plugin.gloview ~= nil then
  hl.config({
    plugin = {
      gloview = {
        layout = "natural",
        strip_active_border = colors.mauve,
        strip_hover_border = colors.overlay2,
        select_border = colors.mauve,
        hover_border = colors.mauve,

        scroll_switches_workspace = 0,
        focus_follows_mouse = 0,
        exit_on_click = 0,

        passthrough_keys = 0,
        key_close = "ESC",
        key_next_workspace = "SHIFT+L",
        key_prev_workspace = "SHIFT+H",
        key_activate = "ENTER",
        key_close_window = "C",
        key_left = "H",
        key_down = "J",
        key_up = "K",
        key_right = "L",
        key_desktop = "",
        key_all_workspaces = "",
      }
    }
  })


  hl.bind(mainMod .. " + O",
    function()
      hl.dispatch(hl.dsp.cursor.move_to_corner({ corner = 0 }))
      hl.dispatch(hl.plugin.gloview.toggle)
    end)
end
