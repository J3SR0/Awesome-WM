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

require("debug")
local source_info					= debug.getinfo(1,'S').source
local type_char, path, filename		= string.match(source_info, "(@)(.+)(rc.lua)")
main_path							= path .. main_directory
theme_path							= main_path	.. "/themes/" .. themeName
module_path							= main_path	.. "/modules"

-- Init Module path
package.path = package.path .. ";"	.. module_path	.. "/?.lua"
package.path = package.path .. ";"	.. theme_path	.. "/?.lua"

-- Utility Packages
require ("utils.util")
require ("utils.meta")
require ("utils.awdebug")


require ("config")
