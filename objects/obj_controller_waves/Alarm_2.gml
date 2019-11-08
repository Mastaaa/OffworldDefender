/// @description Fast Enemies
alarm_set(2,(30/tospawn_fast_total)*room_speed)
if tospawn_fast > 0{
	variance_coef = 2
	instance_create_depth(spawnx+variance, spawny+variance, 0, obj_enemy_fast)
	tospawn_fast--
}