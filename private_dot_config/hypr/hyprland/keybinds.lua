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
-- only for dwindl
-- hl.bind(mainMod .. " + O", hl.dsp.layout("togglesplit"))
hl.bind(mainMod .. " + H", hl.dsp.layout("focus left"))
hl.bind(mainMod .. " + L", hl.dsp.layout("focus right"))
hl.bind(mainMod .. " + K", hl.dsp.layout("focus up"))
hl.bind(mainMod .. " + J", hl.dsp.layout("focus down"))

-- swap column left if not on workspace 9
hl.bind(mainMod .. " + SHIFT + H", function()
  local workspace = hl.get_active_workspace()
  if workspace == nil or workspace.name == "9" then
    return
  end
  hl.dispatch(hl.dsp.layout("swapcol l"))
end)

-- swap column right if not on workspace 9
hl.bind(mainMod .. " + SHIFT + L", function()
  local workspace = hl.get_active_workspace()
  if workspace == nil or workspace.name == "9" then
    return
  end
  hl.dispatch(hl.dsp.layout("swapcol r"))
end)

-- swap up
hl.bind(mainMod .. " + SHIFT + K", function()
  local workspace = hl.get_active_workspace()
  if workspace == nil then
    return
  end

  if workspace.name == "9" then
    hl.dispatch(hl.dsp.layout("swapcol l"))
  else
    hl.dsp.window.move({ direction = "up" })
  end
end)

-- swap down
hl.bind(mainMod .. " + SHIFT + J", function()
  local workspace = hl.get_active_workspace()
  if workspace == nil then
    return
  end

  if workspace.name == "9" then
    hl.dispatch(hl.dsp.layout("swapcol r"))
  else
    hl.dsp.window.move({ direction = "down" })
  end
end)

-- consume or expel
hl.bind(mainMod .. " + Return", function()
  local workspace = hl.get_active_workspace()
  if workspace == nil or workspace.name == "9" then
    return
  end
  hl.dispatch(hl.dsp.layout("consume_or_expel prev"))
end)
hl.bind(mainMod .. " + SHIFT + Return", function()
  local workspace = hl.get_active_workspace()
  if workspace == nil or workspace.name == "9" then
    return
  end
  hl.dispatch(hl.dsp.layout("consume_or_expel next"))
end)

hl.bind(mainMod .. " + Z", hl.dsp.layout("center"))
hl.bind(mainMod .. " + U", hl.dsp.layout("fit visible"))

hl.bind(mainMod .. " + mouse:275", hl.dsp.window.close())
-- only for dwindle
hl.bind(mainMod .. " + mouse:274", hl.dsp.layout("fit visible"))
hl.bind(mainMod .. " + Left", hl.dsp.window.float())
hl.bind(mainMod .. " + right", hl.dsp.window.pseudo())


-- special binds
hl.bind("SUPER + N", hl.dsp.exec_cmd("activateBaseEffects"))
hl.bind("SUPER + O", hl.dsp.exec_cmd("activateDarkEffects"))

-- modifying workspaces
for i = 1, 10 do
  local key = i % 10 -- 10 maps to key 0
  hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
  hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

hl.bind(mainMod .. " + S", hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))


-- resizing
hl.bind(mainMod .. " + CONTROL + H", function()
  local workspace = hl.get_active_workspace()
  if workspace == nil or workspace.name == "9" then
    return
  end

  hl.dispatch(hl.dsp.layout("colresize -conf"))
end)
hl.bind(mainMod .. " + CONTROL + L", function()
  local workspace = hl.get_active_workspace()
  if workspace == nil or workspace.name == "9" then
    return
  end

  hl.dispatch(hl.dsp.layout("colresize +conf"))
end)

hl.config({ binds = { scroll_event_delay = false } })
hl.bind(mainMod .. " + mouse_down", hl.dsp.layout("move -50"))
hl.bind(mainMod .. " + mouse_up", hl.dsp.layout("move +50"))

-- resize binds
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

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

  -- hl.bind("ALT + Space", hl.dsp.exec_cmd("rofi -show drun"))
  -- hl.bind("ALT + Tab", hl.dsp.exec_cmd("rofi -show window"))
  hl.bind("SUPER + C", hl.dsp.window.close())

  hl.bind("SUPER + mouse:272", hl.dsp.window.drag(), { mouse = true })
  hl.bind("SUPER + mouse:273", hl.dsp.window.resize(), { mouse = true })

  hl.bind("SUPER + G", function()
    hl.dispatch(hl.dsp.exec_cmd("activateBaseEffects"))
    -- hl.dispatch(hl.dsp.exec_cmd("switch_wallpaper -r"))
    hl.dispatch(hl.dsp.submap("reset"))
  end)

  hl.bind("SUPER + F", hl.dsp.window.fullscreen())
  hl.bind("SUPER + P", hl.dsp.window.pseudo())
end)
-- end submap
