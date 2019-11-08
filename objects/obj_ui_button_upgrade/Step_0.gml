if position_meeting(mouse_x,mouse_y,self){
	if mouse_check_button_pressed(mb_left){
		if(score >= upgprice) and target.level < 5{
			audio_play_sound(snd_menu_tick,1,0)
			target.level++
			score -= upgprice
		}
		else{
			image_blend = c_red
		}
		
	}
}
if mouse_check_button_released(mb_left){
	image_blend = -1
}