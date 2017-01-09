root.buttons(awful.util.table.join(
    awful.button({ }, 3, function () print("rightClick") end),
    awful.button({ }, 4, awful.tag.viewnext),
    awful.button({ }, 5, awful.tag.viewprev)))
