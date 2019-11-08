if ds_list_size(inrange) > 0{
	j = 0
	while j < ds_list_size(inrange){
	{
		target = ds_list_find_value(inrange,j)
		if distance_to_object(target) < range{
			bullet = instance_create_depth(x+lengthdir_x(8,top.image_angle),y+lengthdir_y(8,top.image_angle),0,obj_bullet_gunner)
			bullet.enemy = target
			bullet.dmg = dmg
			alarm_set(0, room_speed/spd)
			audio_play_sound(snd_gunshot,1,0)
			exit
		}
	j++
	}
}
}
alarm_set(0, room_speed/spd)