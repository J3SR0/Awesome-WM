-------------------------------
--   b"Base" awesome theme   --
-- By Wilfried "J3SR0" Magne --
-------------------------------
--
local theme = {}
-- Default variables
-- theme.thickness = nil
theme.font  = "terminus"

-- theme.bg_systray = nil

theme.bg_normal     = "#729fcf"
theme.bg_focus      = "#e2eeea"
theme.bg_urgent     = "#fce94f"
theme.bg_minimize   = "#0067ce"

-- theme.bg_systray = nil

theme.fg_normal     = "#2e3436"
theme.fg_focus      = "#2e3436"
theme.fg_urgent     = "#2e3436"
theme.fg_minimize   = "#2e3436"

theme.useless_gap   = "3"
theme.border_width  = "2"
theme.border_normal = "#dae3e0"
theme.border_focus  = "#729fcf"
theme.border_marked = "#eeeeec"
theme.wallpaper     = util.background("wall.jpg")

-- why wallpaper cmd ?
theme.wallpaper_cmd         = {"awsetbg " .. util.background("winter.jpg")}



-- arcchart
-- theme.arcchart_border_color = nil
-- theme.arcchart_color = nil
-- theme.arcchart_border_width = nil
-- theme.arcchart_paddings = nil

-- awesome
theme.awesome_icon  = "/usr/share/awesome/themes/sky/awesome-icon.png"

-- checkbox
-- theme.checkbox_border_width = nil
-- theme.checkbox_bg = nil
-- theme.checkbox_border_color = nil
-- theme.checkbox_check_border_color = nil
-- theme.checkbox_check_border_width = nil
-- theme.checkbox_check_color = nil
-- theme.checkbox_shape = nil
-- theme.checkbox_check_shape = nil
-- theme.checkbox_paddings = nil
-- theme.checkbox_color = nil

-- column
-- theme.column_count = nil

-- cursor
-- theme.cursor_mouse_resize = nil
-- theme.cursor_mouse_move = nil

-- gap
-- theme.gap_single_client = nil

-- graph
-- theme.graph_bg = nil
-- theme.graph_fg = nil
-- theme.graph_border_color = nil

-- icon
-- theme.icon_theme = nil

-- layout
theme.layout_fairh      = "/usr/share/awesome/themes/sky/layouts/fairh.png"
-- theme.layout_fairv = nil
-- theme.layout_magnifier = nil
-- theme.layout_cornernw = nil
-- theme.layout_cornerne = nil
-- theme.layout_cornersw = nil
-- theme.layout_cornerse = nil
-- theme.layout_spiral = nil
-- theme.layout_dwindle = nil
-- theme.layout_tile = nil
-- theme.layout_tiletop = nil
-- theme.layout_tilebottom = nil
-- theme.layout_tileleft = nil
-- theme.layout_floating = nil
-- theme.layout_max = nil
-- theme.layout_fullscreen = nil

-- master
-- theme.master_width_factor = nil
-- theme.master_fill_policy = nil
-- theme.master_count = nil

-- menu
theme.menu_submenu_icon = "/usr/share/awesome/themes/default/submenu.png"
theme.menu_height       = "10"
theme.menu_width        = "100"
-- theme.menu_border_color = nil
-- theme.menu_border_width = nil
-- theme.menu_fg_focus = nil
-- theme.menu_bg_focus = nil
-- theme.menu_fg_normal = nil
-- theme.menu_bg_normal = nil
-- theme.menu_submenu = nil

-- piechart
-- theme.piechart_border_color = nil
-- theme.piechart_border_width = nil
-- theme.piechart_colors = nil

-- progressbar
-- theme.progressbar_bg = nil
-- theme.progressbar_fg = nil
-- theme.progressbar_shape = nil
-- theme.progressbar_border_color = nil
-- theme.progressbar_border_width = nil
-- theme.progressbar_bar_shape = nil
-- theme.progressbar_bar_border_width = nil
-- theme.progressbar_bar_border_color = nil
-- theme.progressbar_margins = nil
-- theme.progressbar_paddings = nil

-- radialprogressbar
-- theme.radialprogressbar_border_color = nil
-- theme.radialprogressbar_color = nil
-- theme.radialprogressbar_border_width = nil
-- theme.radialprogressbar_paddings = nil

-- slider
-- theme.slider_bar_border_width = nil
-- theme.slider_bar_border_color = nil
-- theme.slider_handle_border_color = nil
-- theme.slider_handle_border_width = nil
-- theme.slider_handle_width = nil
-- theme.slider_handle_color = nil
-- theme.slider_handle_shape = nil
-- theme.slider_bar_shape = nil
-- theme.slider_bar_height = nil
-- theme.slider_bar_margins = nil
-- theme.slider_handle_margins = nil
-- theme.slider_bar_color = nil

-- snap
-- theme.snap_bg = nil
-- theme.snap_border_width = nil
-- theme.snap_shape = nil

-- systray
-- theme.systray_icon_spacing = nil

-- taglist
-- theme.taglist_fg_focus = nil
-- theme.taglist_bg_focus = nil
-- theme.taglist_fg_urgent = nil
-- theme.taglist_bg_urgent = nil
-- theme.taglist_bg_occupied = nil
-- theme.taglist_fg_occupied = nil
-- theme.taglist_bg_empty = nil
-- theme.taglist_fg_empty = nil
-- theme.taglist_bg_volatile = nil
-- theme.taglist_fg_volatile = nil
-- taglist_square ?
theme.taglist_squares       = "true"
-- theme.taglist_squares_sel = nil
-- theme.taglist_squares_unsel = nil
-- theme.taglist_squares_sel_empty = nil
-- theme.taglist_squares_unsel_empty = nil
-- theme.taglist_squares_resize = nil
-- theme.taglist_disable_icon = nil
-- theme.taglist_font = nil
-- theme.taglist_shape = nil
-- theme.taglist_shape_border_width = nil
-- theme.taglist_shape_border_color = nil
-- theme.taglist_shape_empty = nil
-- theme.taglist_shape_border_width_empty = nil
-- theme.taglist_shape_border_color_empty = nil
-- theme.taglist_shape_focus = nil
-- theme.taglist_shape_border_width_focus = nil
-- theme.taglist_shape_border_color_focus = nil
-- theme.taglist_shape_urgent = nil
-- theme.taglist_shape_border_width_urgent = nil
-- theme.taglist_shape_border_color_urgent = nil
-- theme.taglist_shape_volatile = nil
-- theme.taglist_shape_border_width_volatile = nil
-- theme.taglist_shape_border_color_volatile = nil

-- tasklist
-- theme.tasklist_fg_normal = nil
-- theme.tasklist_bg_normal = nil
-- theme.tasklist_fg_focus = nil
-- theme.tasklist_bg_focus = nil
-- theme.tasklist_fg_urgent = nil
-- theme.tasklist_bg_urgent = nil
-- theme.tasklist_fg_minimize = nil
-- theme.tasklist_bg_minimize = nil
-- theme.tasklist_bg_image_normal = nil
-- theme.tasklist_bg_image_focus = nil
-- theme.tasklist_bg_image_urgent = nil
-- theme.tasklist_bg_image_minimize = nil
-- theme.tasklist_disable_icon = nil
-- theme.tasklist_plain_task_name = nil
-- theme.tasklist_font = nil
-- theme.tasklist_align = nil
-- theme.tasklist_font_focus = nil
-- theme.tasklist_font_minimized = nil
-- theme.tasklist_font_urgent = nil
-- theme.tasklist_spacing = nil
-- theme.tasklist_shape = nil
-- theme.tasklist_shape_border_width = nil
-- theme.tasklist_shape_border_color = nil
-- theme.tasklist_shape_focus = nil
-- theme.tasklist_shape_border_width_focus = nil
-- theme.tasklist_shape_border_color_focus = nil
-- theme.tasklist_shape_minimized = nil
-- theme.tasklist_shape_border_width_minimized = nil
-- theme.tasklist_shape_border_color_minimized = nil
-- theme.tasklist_shape_urgent = nil
-- theme.tasklist_shape_border_width_urgent = nil
-- theme.tasklist_shape_border_color_urgent = nil

-- titlebar
-- theme.titlebar_fg_normal = nil
-- theme.titlebar_bg_normal = nil
-- theme.titlebar_bgimage_normal = nil
-- theme.titlebar_fg = nil
-- theme.titlebar_bg = nil
-- theme.titlebar_bgimage = nil
-- theme.titlebar_fg_focus = nil
-- theme.titlebar_bg_focus = nil
-- theme.titlebar_bgimage_focus = nil
-- theme.titlebar_floating_button_normal = nil
-- theme.titlebar_maximized_button_normal = nil
-- theme.titlebar_minimize_button_normal = nil

-- Close Button ?
theme.titlebar_close_button = "true"
-- theme.titlebar_close_button_normal = nil
-- theme.titlebar_ontop_button_normal = nil
-- theme.titlebar_sticky_button_normal = nil
-- theme.titlebar_floating_button_focus = nil
-- theme.titlebar_maximized_button_focus = nil
-- theme.titlebar_minimize_button_focus = nil
-- theme.titlebar_close_button_focus = nil
-- theme.titlebar_ontop_button_focus = nil
-- theme.titlebar_sticky_button_focus = nil
-- theme.titlebar_floating_button_normal_active = nil
-- theme.titlebar_maximized_button_normal_active = nil
-- theme.titlebar_ontop_button_normal_active = nil
-- theme.titlebar_sticky_button_normal_active = nil
-- theme.titlebar_floating_button_focus_active = nil
-- theme.titlebar_maximized_button_focus_active = nil
-- theme.titlebar_ontop_button_focus_active = nil
-- theme.titlebar_sticky_button_focus_active = nil
-- theme.titlebar_floating_button_normal_inactive = nil
-- theme.titlebar_maximized_button_normal_inactive = nil
-- theme.titlebar_ontop_button_normal_inactive = nil
-- theme.titlebar_sticky_button_normal_inactive = nil
-- theme.titlebar_floating_button_focus_inactive = nil
-- theme.titlebar_maximized_button_focus_inactive = nil
-- theme.titlebar_ontop_button_focus_inactive = nil
-- theme.titlebar_sticky_button_focus_inactive = nil

-- tooltip
-- theme.tooltip_border_color = nil
-- theme.tooltip_bg = nil
-- theme.tooltip_fg = nil
-- theme.tooltip_font = nil
-- theme.tooltip_border_width = nil
-- theme.tooltip_opacity = nil
-- theme.tooltip_shape = nil
-- theme.tooltip_align = nil

return theme
-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
