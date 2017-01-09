
-- Add a new widget here
local taglist	= require ("taglist.taglist")
local tasklist	= require ("tasklist.tasklist")
local systray	= require ("systray.systray")
local textclock	= require ("clock.textclock")

local widgets = {}
-- ------------------------------
-- For each screen, init widgets:
-- ------------------------------
for s = 1, screen.count() do
  -- Organise your widgets here
  widgets[s] =
  {
	{
	  -- from left to right
	  taglist[s],
	  layout = awful.widget.layout.horizontal.leftright
	},
	-- from right to left
	textclock,
	s == 1 and systray or nil,
	tasklist[s],
	layout = awful.widget.layout.horizontal.rightleft
  }
end

return widgets
-- ---------------------------------------------------------------------------
