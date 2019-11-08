if !instance_exists(obj_ui_buywheel) and !instance_exists(obj_ui_sellwheel){
	x = mouse_x
	y = mouse_y
	move_snap(16,16)
	x-=8
	y-=8
}