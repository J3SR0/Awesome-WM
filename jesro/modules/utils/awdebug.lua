-- Debug Module: To display all the awesomes features
--
--

local debug = {}
-- Displays all the notifications types
--

function debug.lowNotification()
  naughty.notify(
  {
	preset = naughty.config.presets.normal,
	title = "Low Notification Test ...",
	text = "Lorem Ipsum"
  })
end

function debug.criticalNotification()
  naughty.notify(
  {
	preset = naughty.config.presets.critical,
	title = "Critical Notification Test ...",
	text = "Lorem Ipsum"
  })
end

function debug.normalNotification()
  naughty.notify(
  {
	preset = naughty.config.presets.normal,
	title = "Normal Notification Test ...",
	text = "Lorem Ipsum"
  })
end

function debug.notification()
  debug.lowNotification()
  debug.normalNotification()
  debug.criticalNotification()
end

return debug
