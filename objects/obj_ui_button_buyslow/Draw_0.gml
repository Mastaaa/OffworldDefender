draw_self()
if position_meeting(mouse_x,mouse_y,self){
	draw_set_halign(fa_left)
	draw_set_valign(fa_middle)
	draw_set_color(c_blue)
	draw_text_transformed(x+6,y,"Frost Tower - Costs " + string(buyprice), 0.5, 0.5, 0)
}