-- Path of Exile
-- hl.window_rule({ name = "tag-poe", tag = "+poe", match = { title = "(Path of Exile)" } })
-- hl.window_rule({ name = "tag-poe", tag = "+poe", match = { class = "(steam_app_238960)" } })
-- hl.window_rule({ name = "fullscreen-poe", fullscreen = true, match = { tag = "poe" } })

-- awakened PoE Trade
hl.window_rule({
  name = "tag-apt",
  tag = "+apt",
  match = { title = "(Awakened PoE Trade)" },
})

hl.window_rule({
  name = "apt-1",
  float = true,
  no_blur = true,
  no_shadow = true,
  border_size = 0,
  pin = true,
  render_unfocused = true,
  size = { "monitor_w * 1", "monitor_h * 1" },
  center = true,
  match = { tag = "apt" },
})

hl.window_rule({
  name = "apt-2",
  no_focus = true,
  match = { tag = "apt" }, -- Disable auto-focus
})

-- inhibit hypridle on fullscreen apps
hl.window_rule({
  name = "idle-inhibit",
  idle_inhibit = "fullscreen",
  suppress_event = "maximize",
  match = { class = ".*" },
})

-- force tiling for certain apps
hl.window_rule({
  name = "tile-battlenet",
  tile = true,
  match = { title = "(Battle.net)" },
})

hl.window_rule({
  name = "tile-battlenet-chats",
  tile = true,
  match = { title = "(Battle.net - Chats and Groups)" },
})

hl.window_rule({
  name = "tile-vivaldi-settings",
  tile = true,
  match = { title = "(Vivaldi Settings:.*)" },
})

hl.window_rule({
  name = "tile-pob",
  tile = true,
  match = { title = "(.*Path of Building)" },
})

-- default
hl.window_rule({
  name = "defaults",
  no_focus = true,
  match = {
    class = "^$",
    title = "^$",
    xwayland = true,
    float = true,
    fullscreen = false,
    pin = false,
  },
})
