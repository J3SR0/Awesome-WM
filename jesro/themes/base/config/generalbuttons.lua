root.buttons(awful.util.table.join(
    awful.button({ }, 3, function () print("hello") end),
    awful.button({ }, 4, awful.tag.viewnext),
    awful.button({ }, 5, awful.tag.viewprev)))
