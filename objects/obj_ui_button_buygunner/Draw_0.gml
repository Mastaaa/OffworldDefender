draw_self()
if position_meeting(mouse_x,mouse_y,self){
	draw_set_halign(fa_right)
	draw_set_valign(fa_center)
	draw_set_color(c_ltgray)
	draw_text_transformed(x-3,y,"Gunner Tower - Costs " + string(buyprice), 0.5, 0.5, 0)
}