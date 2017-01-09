-- Directory Name 
-- This Directory must be located in /path/to/home_dir/.config/awesome/
main_directory = "jesro"

-- Choose your theme here
-- 
-- A Theme is a directory located inside the main Directory
-- It must contain a theme.lua file just as a classic awesome theme file
-- It also contains a "config" directory with all the necessary configuration
-- lua files
themeName = "vaapad"

home_directory = os.getenv("HOME")

local main_path		= home_directory	.. "/.config/awesome/"	.. main_directory
local theme_path	= main_path			.. "/"					.. themeName

package.path = package.path .. ";"	.. main_path	.. "/.utils/?.lua"
package.path = package.path .. ";"	.. theme_path	.. "/config/?.lua"

-- Notification & Mandatory Packages
require ("awful")
require ("awful.autofocus")
require ("awful.rules")
require ("naughty")
require ("beautiful")

-- Utility Packages
require ("util")
require ("meta")
require ("awdebug")

-- Config Packages
require	("general")
require ("startup_error")
require ("runtime_error")

-- Theme and Bar/Widgets conf
require ("theme_module")
require	("layout")
require ("top_bar")

-- Bindings and Behavior
require	("tags")
require ("keybinding")
require ("clientbuttons")
require ("generalbuttons")
require ("rules")
require ("signal")
