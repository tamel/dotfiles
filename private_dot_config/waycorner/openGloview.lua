local gloview = hl.plugin.gloview
if gloview == nil then
  return
end
hl.dispatch(gloview.toggle)
