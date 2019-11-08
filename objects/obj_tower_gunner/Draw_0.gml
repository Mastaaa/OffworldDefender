if(ds_list_size(inrange) > 0){
	enemy = ds_list_find_value(inrange,0)
	if instance_exists(enemy){
		dir = point_direction(x,y,enemy.x, enemy.y)
		draw_sprite_ext(spr_gunner_top,-1,x,y,1,1,dir,c_white,1)
		dir_last = dir
	}
}
else draw_sprite_ext(spr_gunner_top,-1,x,y,1,1,dir_last,c_white,1)
draw_self()
if position_meeting(mouse_x,mouse_y,self){
	draw_set_color(c_ltgray)
	draw_circle(x,y,range,true)
}