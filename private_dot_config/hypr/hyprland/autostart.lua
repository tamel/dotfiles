hl.on("hyprland.start", function()
  -- active base effects
  hl.exec_cmd("activateBaseEffects")
  -- hl.exec_cmd("sleep 2 && switch_wallpaper -r")

  -- hl.exec_cmd("/nix/store/bkr9c3s7jhy670ajvvg7y1q5vvq42vb3-polkit-gnome-0.105/libexec/polkit-gnome-authentication-agent-1")

  -- we need to do this, because enabling dunst seems not possible
  hl.exec_cmd("systemctl --user start dunst")

  -- clipboard stuff
  hl.exec_cmd("wl-paste --type text --watch cliphist store")
  hl.exec_cmd("wl-paste --type image --watch cliphist store")
end)
