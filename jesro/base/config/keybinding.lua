require("awful")

local callbacks = {}

-- General Callbacks
function callbacks.focusNextClient()
  awful.client.focus.byidx(1)
  if client.focus then client.focus:raise() end
end

function callbacks.focusPrevClient()
  awful.client.focus.byidx(-1)
  if client.focus then client.focus:raise() end
end

-- Layout Callbacks
function callbacks.swapNextClient() awful.client.swap.byidx( 1) end
function callbacks.swapPrevClient() awful.client.swap.byidx(-1) end
function callbacks.focusRelativeNextClient() awful.client.swap.byidx( 1) end
function callbacks.focusRelativePrevClient() awful.client.swap.byidx(-1) end

function callbacks.focusPreviousClient()
  awful.client.focus.history.previous()
  if client.focus then
	client.focus:raise()
  end
end

-- Programs Callbacks
function callbacks.spawnTerminal() awful.util.spawn(terminal) end
function callbacks.spawnBrowser() awful.util.spawn(browser) end

-- Keybindings
--
-- General 
keybinding = awful.util.table.join(
awful.key({ modkey,				},	"h",			awful.tag.viewprev ),
awful.key({ modkey,				}, 	"l",			awful.tag.viewnext ),
awful.key({ modkey,				}, 	"Escape",		awful.tag.history.restore ),
awful.key({ modkey,				}, 	"j",			callbacks.focusNextClient ),
awful.key({ modkey,				}, 	"k",			callbacks.focusPrevClient ))

-- Layout Manipulation
keybinding = awful.util.table.join(
keybinding,
awful.key({ modkey, "Shift"		}, "j",				callbacks.swapNextClient),
awful.key({ modkey, "Shift"   	}, "k",				callbacks.swapPrevClient),
awful.key({ modkey, "Control" 	}, "j",				callbacks.focusRelativeNextClient),
awful.key({ modkey, "Control" 	}, "k",				callbacks.focusRelativePrevClient),
awful.key({ modkey,           	}, "u",				awful.client.urgent.jumpto),
awful.key({ modkey,           	}, "Tab",			callbacks.focusPreviousClient))

-- Programs
keybinding = awful.util.table.join(
keybinding,
awful.key({ modkey,				}, "Return",		callbacks.spawnTerminal),
awful.key({ modkey, "Control" 	}, "r",				awesome.restart),
awful.key({ modkey, "Shift"   	}, "q",				awesome.quit),
awful.key({ modkey,				}, "f",				callbacks.spawnBrowser))

root.keys(keybinding)
