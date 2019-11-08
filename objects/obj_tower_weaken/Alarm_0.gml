if ds_list_size(inrange) > 0{
	j = 0
	while j < ds_list_size(inrange){
	{
		target = ds_list_find_value(inrange,j)
		if distance_to_object(target) < range and !(target.weak){
			bullet = instance_create_depth(x,y,0,obj_bullet_weaken)
			bullet.enemy = target
			bullet.str = str
			target.weak = true
			ds_list_delete(inrange,j)
			alarm_set(0, room_speed/spd)
			audio_play_sound(snd_weakenshot,1,0)
			exit
		}
	j++
	}
}
}
alarm_set(0, room_speed/spd)