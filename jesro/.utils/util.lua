util = {}

function util.executionLocation()
  local res = os.execute("pwd > /tmp/.awesome.jesro")
  if res == 0 then
	local file = io.open("/tmp/.awesome.jesro")
	local content = file:read()
	return content
  else
	return ""
  end
end

function util.env(var)
  local res = os.getenv(var)
  return res
end

function util.theme()
  res = util.env("HOME") .. "/.config/awesome/" .. main_directory .. "/" .. themeName .. "/theme.lua"
  return res
end

function util.background(fileName)
  res = util.env("HOME") .. "/.config/awesome/" .. main_directory .. "/" .. themeName .. "/wallpapers/" .. fileName
  print (res)
  return res
end

return util
