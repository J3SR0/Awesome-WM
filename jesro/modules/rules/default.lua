-- local beautiful = require("beautiful")

-- Rules
--

local general = 
{
  rule = { },
  properties = 
  {
	border_width = beautiful.border_width,
	border_color = beautiful.border_normal,
	focus = true,
	keys = clientkeys,
	buttons = clientbuttons
  }
}

local rules = 
{
  general
}
awful.rules.rules = awful.util.table.join(awful.rules.rules, rules)

