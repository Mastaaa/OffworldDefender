if position_meeting(mouse_x,mouse_y,self){
	if mouse_check_button_pressed(mb_left){
		instance_destroy(parent)
		instance_destroy(obj_ui_sellbuttons)
		score += sellprice
		instance_destroy(target)
	}
}