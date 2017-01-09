local widgets	= require ("aw_widget")

bars = {}
-- --------------------------
-- For each screen, init Bar:
-- --------------------------
for s = 1, screen.count() do
  -- create the bar
  bars[s] = awful.wibox({ position = "top", screen = s })

  -- fill bar with widget
  bars[s].widgets = widgets[s]
end
