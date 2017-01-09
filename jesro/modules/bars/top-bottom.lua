-- -----------------------------------------------------|
--														|
--						Bars							|
--														|
-- -----------------------------------------------------|
local path_save = package.path
package.path = module_path .. "/bars/?.lua"
-- util.set_package_path(module_path .. "/bars/?.lua;")

-- Choose your Bar[s]
require ("top_bar.default")
require ("bottom_bar.default")

-- ----------------------------------------------------
package.path = path_save 
-- util.restore_package_path()
