-- Notification & Mandatory Packages
require ("awful")
require ("awful.autofocus")
require ("awful.rules")
require ("naughty")
require ("beautiful")

beautiful.init(util.theme(themeName))

-- Error Handling Packages
require ("errors.startup_error")
require ("errors.runtime_error")

-- General Config
require	("misc.default")

-- Theme and Bar/Widgets conf
require	("layouts.default")
require ("bars.top-bottom")

-- Bindings and Behavior
require	("tags.default")
require ("keybindings.vim_like")
require ("clientbuttons.default")
require ("buttons.default")
require ("rules.default")
require ("signals.default")
