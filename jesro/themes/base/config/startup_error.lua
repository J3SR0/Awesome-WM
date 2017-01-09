if awesome.startup_errors then
  naughty.notify({
	preset = naughty.config.presets.critical,
	title = "Statup Error...",
	text = awesome.startup_errors
  })
  return true
end
return false
