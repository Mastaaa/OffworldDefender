if position_meeting(mouse_x,mouse_y,self){
	if mouse_check_button_pressed(mb_left){
		if(score >= buyprice){
			audio_play_sound(snd_menu_tick,1,0)
			tower = instance_create_depth(parent.x,parent.y,0,obj_tower_gunner)
			tower.buyprice = buyprice
			instance_destroy(parent)
			instance_destroy(obj_ui_buybuttons)
			score -= buyprice
		}
		else{
			image_blend = c_red
		}
		
	}
}
if mouse_check_button_released(mb_left){
	image_blend = -1
}