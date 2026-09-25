-- Programs / modifiers used throughout the config, see hyprland.d/vars.lua
local vars = require("hyprland.vars")

-- Catppuccin Mocha colors (see catppuccin-mocha.lua)
local colors = require("catppuccin-mocha")

require("hyprland.environment")
require("hyprland.monitors")
require("hyprland.workspaces")
require("hyprland.windowrules")
require("hyprland.autostart")
require("hyprland.keybinds")

------------------
---- ANIMATIONS ----
------------------
hl.curve("wind", { type = "bezier", points = { { 0.05, 0.9 }, { 0.1, 1.05 } } })
hl.curve("winIn", { type = "bezier", points = { { 0.1, 1.1 }, { 0.1, 1.1 } } })
hl.curve("winOut", { type = "bezier", points = { { 0.3, -0.3 }, { 0, 1 } } })
hl.curve("liner", { type = "bezier", points = { { 1, 1 }, { 1, 1 } } })

hl.config({ animations = { enabled = true } })

hl.animation({ leaf = "windows", enabled = true, speed = 6, bezier = "wind", style = "slide" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 6, bezier = "winIn", style = "slide" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 5, bezier = "winOut", style = "slide" })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 5, bezier = "wind", style = "slide" })
hl.animation({ leaf = "border", enabled = true, speed = 1, bezier = "liner" })
hl.animation({ leaf = "borderangle", enabled = true, speed = 30, bezier = "liner", style = "loop" })
hl.animation({ leaf = "fade", enabled = true, speed = 10, bezier = "default" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 5, bezier = "wind" })

-----------------------
---- LOOK AND FEEL ----
-----------------------
hl.config({
  general = {
    allow_tearing = false,
    border_size = 2,
    col = {
      active_border = colors.mauve,
      inactive_border = colors.base,
    },
    gaps_in = 5,
    gaps_out = 20,
    layout = "dwindle",
    resize_on_border = false,
  },
  decoration = {
    rounding = 10,
    active_opacity = 1.0,
    inactive_opacity = 1.0,
    blur = {
      enabled = true,
      passes = 1,
      size = 3,
      vibrancy = 0.1696,
    },
    shadow = {
      enabled = true,
      range = 4,
      render_power = 3,
      color = "rgba(1a1a1aee)",
    },
  },
  dwindle = {
    preserve_split = true,
  },
  master = {
    new_status = "master",
  },
  misc = {
    disable_hyprland_logo = false,
    force_default_wallpaper = -1,
  },
  input = {
    follow_mouse = 1,
    kb_layout = "de",
    kb_options = "compose:menu",
    kb_variant = "nodeadkeys",
    numlock_by_default = true,
    sensitivity = -0.6,
    touchpad = {
      natural_scroll = false,
    },
  },
})

hl.device({
  name = "epic-mouse-v1",
  sensitivity = -0.5,
})
