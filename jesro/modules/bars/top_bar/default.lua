-- -----------------------------------------------------|
--														|
--					Top Bar								|
--														|
-- -----------------------------------------------------|
local path_save = package.path
package.path = module_path .. "/widgets/?.lua"

-- Choose the content of the bar
local widgets	= require ("default")

bars = {}
-- --------------------------
-- For each screen, init Bar:
-- --------------------------
for s = 1, screen.count() do
  -- create the bar
  bars[s] = awful.wibox(
  { 
	screen = s,
	position = "top", 
	height = "17",
	border_width = "1",
	border_color = "#000000"
  })

  -- fill bar with widget
  bars[s].widgets = widgets[s]
end

package.path = path_save 
