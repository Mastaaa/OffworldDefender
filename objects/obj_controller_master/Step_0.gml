if mouse_check_button_pressed(mb_right){
	with obj_ui_buywheel{
		instance_destroy(self)
		instance_destroy(obj_ui_buybuttons)
	}
	with obj_ui_sellwheel{
		instance_destroy(self)
		instance_destroy(obj_ui_sellbuttons)
	}
	if position_meeting(mouse_x, mouse_y, obj_tower){
		instance_create_depth(mouse_x, mouse_y, 0, obj_ui_sellwheel)
		audio_play_sound(snd_menu_open,1,0)
	}
	else{
		instance_create_depth(mouse_x, mouse_y, 0, obj_ui_buywheel)
		audio_play_sound(snd_menu_open,1,0)
	}
}

if health <= 0{
	room_goto(rm_gameover)	
}