
-- Add a new widget here
local textclock	= require ("clock.textclock")

local widgets = {}
-- ------------------------------
-- For each screen, init widgets:
-- ------------------------------
for s = 1, screen.count() do
  -- Organise your widgets here
  widgets[s] =
  {
	textclock,
	layout = awful.widget.layout.horizontal.rightleft
  }
end

return widgets
-- ---------------------------------------------------------------------------
