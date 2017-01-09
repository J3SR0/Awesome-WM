-- Runtime Errors Notifications
--
do
  local in_error = false
  awesome.add_signal("debug::error", 
  function (err)
	if in_error then return end
	in_error = true
	naughty.notify(
	{
	  preset = naughty.config.presets.critical,
	  title = "Runtime Error...",
	  text = err
	})
	in_error = false
  end)
end
