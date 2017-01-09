-- Add a new widget here
local taglist	= require ("taglist")
local tasklist	= require ("tasklist")
local systray	= require ("systray")
local textclock	= require ("textclock")

-- Organise your widgets here
local widgets = {}

-- ----------------------------
-- For each screen, init Tasks:
-- ----------------------------
for s = 1, screen.count() do
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
