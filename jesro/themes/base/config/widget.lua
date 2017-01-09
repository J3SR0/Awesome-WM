
-- Tags List Widget
local taglist = {}
taglist.buttons = awful.util.table.join(
awful.button( { }, 1, awful.tag.viewonly),
awful.button( { modkey }, 1, awful.client.movetotag))

taglist = awful.widget.taglist(1, awful.widget.taglist.label.all, taglist.buttons)

-- Task List Widget
function tasklistFocusToggle(c)
  if c == client.focus then
	c.minimized = true
  else
	if not c:isvisible() then
	  awful.tag.viewonly(c:tags()[1])
	end
	-- This will also un-minimize
	-- the client, if needed
	client.focus = c
	c:raise()
  end
end

function tasklistHide()
  if instance then
	instance:hide()
	instance = nil
  else
	instance = awful.menu.clients({ width=250 })
  end
end

function taskFocusNext()
  awful.client.focus.byidx( 1)
  if client.focus then client.focus:raise() end
end

function taskFocusPrev()
  awful.client.focus.byidx(-1)
  if client.focus then client.focus:raise() end
end

local tasklist = {}
tasklist.buttons = awful.util.table.join(
awful.button({ }, 1, tasklistFocusToggle),
awful.button({ }, 3, tasklistHide),
awful.button({ }, 4, taskFocusNext),
awful.button({ }, 5, taskFocusPrev))

function onCreate(c) return awful.widget.tasklist.label.currenttags(c, 1) end
tasklist = awful.widget.tasklist(onCreate, tasklist.buttons)

-- Layouts
--

local layout = {}


-- TextClock
local textclock = awful.widget.textclock({ align = "right" })

-- Systray
local systray = widget({ type = "systray" })

widgets =
{
  tasklist,
  taglist,
  textclock,
  systray
}
