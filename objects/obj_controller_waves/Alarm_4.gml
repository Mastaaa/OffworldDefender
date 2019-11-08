/// @description Boss Enemies
alarm_set(4,(30/tospawn_boss_total)*room_speed)
if tospawn_boss > 0{
	variance_coef = 0
	instance_create_depth(spawnx+variance, spawny+variance, 0, obj_enemy_boss)
	tospawn_boss--
}