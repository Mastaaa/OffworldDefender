draw_self()
if radius <= range{
	draw_set_color(c_orange)
	draw_circle(x,y, radius, true)	
}
if position_meeting(mouse_x,mouse_y,self){
	draw_set_color(c_orange)
	draw_circle(x,y,range,true)
}