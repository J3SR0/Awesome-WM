-- ==========================================================================
--																			|
--								TagList										|	
--																			|
-- ==========================================================================
local taglist = {}

-- ------------
-- Set buttons:
-- ------------
taglist.buttons = awful.util.table.join(
awful.button( { }, 1, awful.tag.viewonly),
awful.button( { modkey }, 1, awful.client.movetotag),
awful.button({ }, 3, awful.tag.viewtoggle),
awful.button({ modkey }, 3, awful.client.toggletag),
awful.button({ }, 4, awful.tag.viewnext),
awful.button({ }, 5, awful.tag.viewprev))

-- ----------------------------
-- For each screen, init Tasks:
-- ----------------------------
for s = 1, screen.count() do
  taglist[s] = awful.widget.taglist(s, awful.widget.taglist.label.all,
  taglist.buttons)
end

return taglist
-- ---------------------------------------------------------------------------
