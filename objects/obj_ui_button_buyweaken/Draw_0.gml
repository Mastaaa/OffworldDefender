draw_self()
if position_meeting(mouse_x,mouse_y,self){
	draw_set_halign(fa_middle)
	draw_set_valign(fa_top)
	draw_set_color(c_olive)
	draw_text_transformed(x,y+3,"Weaken Tower - Costs " + string(buyprice), 0.5, 0.5, 0)
}