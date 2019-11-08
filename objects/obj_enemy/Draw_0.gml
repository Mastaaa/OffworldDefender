image_xscale_last = image_xscale
image_xscale = sign(path_get_x(global.path_enemy,path_position)-path_get_x(global.path_enemy,path_positionprevious))
if image_xscale = 0{
 image_xscale = image_xscale_last	
}
draw_set_color(c_red)
draw_rectangle((x-sprite_width/2), (y-(sprite_height+4)), (x+sprite_width/2), (y-(sprite_height+1)), false)
if position_meeting(mouse_x, mouse_y, self){
	draw_set_color(c_white)	
	draw_set_halign(fa_center)
	draw_set_valign(fa_bottom)
	draw_text_ext_transformed(x,(y-(sprite_height+16)),string(enemyhp) + "/" + string(enemyhpmax), 1, 200, 0.5, 0.5, 0)
}
draw_set_color(c_lime)
draw_rectangle((x-((sprite_width/2)*(enemyhp/enemyhpmax))), (y-(sprite_height+4)), (x+((sprite_width/2)*(enemyhp/enemyhpmax))), (y-(sprite_height+1)), false)
draw_self()