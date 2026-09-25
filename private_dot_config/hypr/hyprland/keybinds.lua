local vars = require("hyprland.vars")
local mainMod = vars.mainMod
local terminal = vars.terminal
local fileManager = vars.fileManager

-- regular binds
hl.bind(mainMod .. " + C", hl.dsp.window.close())
hl.bind(mainMod .. " + M", hl.dsp.exit())
hl.bind(mainMod .. " + T", hl.dsp.window.float())
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen())
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())
hl.bind(mainMod .. " + Q", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + O", hl.dsp.layout("togglesplit"))
hl.bind(mainMod .. " + H", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + L", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + K", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + J", hl.dsp.focus({ direction = "down" }))
hl.bind(mainMod .. " + SHIFT + H", hl.dsp.window.move({ direction = "left" }))
hl.bind(mainMod .. " + SHIFT + L", hl.dsp.window.move({ direction = "right" }))
hl.bind(mainMod .. " + SHIFT + K", hl.dsp.window.move({ direction = "up" }))
hl.bind(mainMod .. " + SHIFT + J", hl.dsp.window.move({ direction = "down" }))

hl.bind(mainMod .. " + Space", hl.dsp.exec_cmd("rofi -show drun"))
hl.bind(mainMod .. " + Tab", hl.dsp.exec_cmd("rofi -show window"))
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd("rofi -show run"))

hl.bind(mainMod .. " + mouse:275", hl.dsp.window.close())
hl.bind(mainMod .. " + mouse:274", hl.dsp.layout("togglesplit"))
hl.bind(mainMod .. " + Left", hl.dsp.window.float())
hl.bind(mainMod .. " + right", hl.dsp.window.pseudo())
hl.bind(mainMod .. " + V", hl.dsp.exec_cmd("cliphist list | rofi -dmenu | cliphist decode | wl-copy"))

hl.bind("Print", hl.dsp.exec_cmd("screenshot $HOME/Pictures/Screenshots"))

-- special binds
hl.bind("SUPER + L", hl.dsp.exec_cmd("loginctl lock-session"))
hl.bind("SUPER + N", hl.dsp.exec_cmd("activateBaseEffects"))
hl.bind("SUPER + O", hl.dsp.exec_cmd("activateDarkEffects"))
hl.bind("SUPER + D", hl.dsp.exec_cmd("dunstctl close-all"))
hl.bind("SUPER + W", hl.dsp.exec_cmd("switch_wallpaper -l | rofi -dmenu | switch_wallpaper -s"))
hl.bind("SUPER + K", hl.dsp.exec_cmd("switch_wallpaper -k"))

-- modifying workspaces
for i = 1, 10 do
  local key = i % 10 -- 10 maps to key 0
  hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
  hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

hl.bind(mainMod .. " + S", hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

hl.bind("ALT + Control_L + 1", hl.dsp.workspace.move({ monitor = "DP-1" }))
hl.bind("ALT + Control_L + 2", hl.dsp.workspace.move({ monitor = "DP-2" }))

-- resizing
hl.bind(mainMod .. " + Control_L + H", hl.dsp.window.resize({ x = -50, y = 0, relative = true }))
hl.bind(mainMod .. " + Control_L + J", hl.dsp.window.resize({ x = 0, y = 50, relative = true }))
hl.bind(mainMod .. " + Control_L + K", hl.dsp.window.resize({ x = 0, y = -50, relative = true }))
hl.bind(mainMod .. " + Control_L + L", hl.dsp.window.resize({ x = 50, y = 0, relative = true }))

hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "r-1" }))
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "r+1" }))

-- resize binds
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- media binds
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 1%+"),
  { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 1%-"),
  { locked = true, repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
  { locked = true, repeating = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
  { locked = true, repeating = true })
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true, repeating = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true, repeating = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true, repeating = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true, repeating = true })

-- custom sub maps

-- gaming
hl.bind("SUPER + G", function()
  hl.dispatch(hl.dsp.exec_cmd("activateGamingEffects"))
  -- hl.dispatch(hl.dsp.exec_cmd("switch_wallpaper -k"))
  hl.dispatch(hl.dsp.submap("gaming"))
end)

-- begin submap
hl.define_submap("gaming", function()
  hl.bind("SUPER + 1", hl.dsp.focus({ workspace = 1 }))
  hl.bind("SUPER + 2", hl.dsp.focus({ workspace = 2 }))
  hl.bind("SUPER + 3", hl.dsp.focus({ workspace = 3 }))
  hl.bind("SUPER + 4", hl.dsp.focus({ workspace = 4 }))
  hl.bind("SUPER + 5", hl.dsp.focus({ workspace = 5 }))
  hl.bind("SUPER + 6", hl.dsp.focus({ workspace = 6 }))
  hl.bind("SUPER + 7", hl.dsp.focus({ workspace = 7 }))
  hl.bind("SUPER + 8", hl.dsp.focus({ workspace = 8 }))
  hl.bind("SUPER + Space", hl.dsp.focus({ workspace = 9 }))
  hl.bind("SUPER + 9", hl.dsp.focus({ workspace = 9 }))
  hl.bind("SUPER + 0", hl.dsp.focus({ workspace = 10 }))

  hl.bind("SUPER + SHIFT + 1", hl.dsp.window.move({ workspace = 1 }))
  hl.bind("SUPER + SHIFT + 2", hl.dsp.window.move({ workspace = 2 }))
  hl.bind("SUPER + SHIFT + 3", hl.dsp.window.move({ workspace = 3 }))
  hl.bind("SUPER + SHIFT + 4", hl.dsp.window.move({ workspace = 4 }))
  hl.bind("SUPER + SHIFT + 5", hl.dsp.window.move({ workspace = 5 }))
  hl.bind("SUPER + SHIFT + 6", hl.dsp.window.move({ workspace = 6 }))
  hl.bind("SUPER + SHIFT + 7", hl.dsp.window.move({ workspace = 7 }))
  hl.bind("SUPER + SHIFT + 8", hl.dsp.window.move({ workspace = 8 }))
  hl.bind("SUPER + SHIFT + 9", hl.dsp.window.move({ workspace = 9 }))
  hl.bind("SUPER + SHIFT + 0", hl.dsp.window.move({ workspace = 10 }))

  hl.bind("ALT + Space", hl.dsp.exec_cmd("rofi -show drun"))
  hl.bind("ALT + Tab", hl.dsp.exec_cmd("rofi -show window"))
  hl.bind("SUPER + C", hl.dsp.window.close())

  hl.bind("SUPER + mouse:272", hl.dsp.window.drag(), { mouse = true })
  hl.bind("SUPER + mouse:273", hl.dsp.window.resize(), { mouse = true })

  hl.bind("SUPER + G", function()
    hl.dispatch(hl.dsp.exec_cmd("activateBaseEffects"))
    -- hl.dispatch(hl.dsp.exec_cmd("switch_wallpaper -r"))
    hl.dispatch(hl.dsp.submap("reset"))
  end)

  hl.bind("SUPER + L", hl.dsp.exec_cmd("loginctl lock-session"))

  hl.bind("SUPER + F", hl.dsp.window.fullscreen())
  hl.bind("SUPER + P", hl.dsp.window.pseudo())

  hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 1%+"),
    { locked = true, repeating = true })
  hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 1%-"),
    { locked = true, repeating = true })
  hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
    { locked = true, repeating = true })
  hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
    { locked = true, repeating = true })

  hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true, repeating = true })
  hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true, repeating = true })
  hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true, repeating = true })
  hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true, repeating = true })
end)
-- end submap
