draw_self()
if position_meeting(mouse_x,mouse_y,self){
	audio_play_sound(snd_menu_tick,1,0)
	draw_set_halign(fa_right)
	draw_set_valign(fa_middle)
	draw_set_color(c_yellow)
	draw_text_transformed(x-6,y,"Sell Tower: " + string(sellprice), 0.5, 0.5, 0)
}