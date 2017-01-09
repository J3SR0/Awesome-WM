util = {}

local package_path_save = package.path

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
  return res
end

function util.set_package_path(new_path)
  package_path_save = package.path
  if new_path ~= nil then
	package.path = new_path
  end
end

function util.restore_package_path()
  package.path = package_path_save
end

function util.saferequire(module_path, module_name)
  local save = package.path
  package.path = module_path
  res = require (module_name)
  package.path = save
  return res
end

return util
