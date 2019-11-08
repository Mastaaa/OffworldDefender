/// @description Normal Enemies
alarm_set(0,(30/tospawn_normal_total)*room_speed)
if tospawn_normal > 0{
	variance_coef = 1
	instance_create_depth(spawnx+13+variance, spawny-((13)/2)+variance, 0, obj_enemy_normal)
	tospawn_normal--
}