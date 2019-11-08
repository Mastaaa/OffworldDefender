if distance_to_object(instance_nearest(x,y,obj_enemy)) < range{
	active = true
	audio_play_sound(snd_slam,1,0)
}
alarm_set(0,room_speed/spd)
radius = 0
j = 0
while j < instance_number(obj_enemy){
		enemy = instance_find(obj_enemy, j)
		if distance_to_object(enemy) <= range{
			enemy.shockwaveoncd = false
		}
		j++
	}