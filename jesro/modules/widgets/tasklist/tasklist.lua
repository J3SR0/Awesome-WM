-- ==========================================================================
--																			|
--								TaskList									|	
--																			|
-- ==========================================================================

local tasklist = {}

-- ----------
-- Callbacks:
-- ----------
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
	instance = awful.menu.clients({ width = 250 })
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

-- ------------
-- Set buttons:
-- ------------
tasklist.buttons = awful.util.table.join(
awful.button({ }, 1, tasklistFocusToggle),
awful.button({ }, 3, tasklistHide),
awful.button({ }, 4, taskFocusNext),
awful.button({ }, 5, taskFocusPrev))

-- ----------------------------
-- For each screen, init Tasks:
-- ----------------------------
for s = 1, screen.count() do
  tasklist[s] = awful.widget.tasklist(
  function(c)
	return awful.widget.tasklist.label.currenttags(c, s)
  end,
  tasklist.buttons)
end

return tasklist
-- ---------------------------------------------------------------------------
