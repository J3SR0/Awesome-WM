bars = {}
-- for every plugged screen
for s = 1, screen.count() do
  -- create the bar
  bars[s] = awful.wibox({ position = "top", screen = s })
  -- fill bar with widget
  bars[s].widgets =
  {
	tasklist[s],
	layout = awful.widget.layout.horizontal.rightleft -- Starting Layout ?
  }
end
