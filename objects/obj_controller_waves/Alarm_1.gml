/// @description Heavy Enemies
alarm_set(1,(30/tospawn_heavy_total)*(room_speed*0.5))
if tospawn_heavy > 0{
	variance_coef = 0
	instance_create_depth(spawnx+variance, spawny+variance, 0, obj_enemy_heavy)
	tospawn_heavy--
}