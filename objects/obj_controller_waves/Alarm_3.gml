/// @description Swarm Enemies
if tospawn_swarm > 0{
	variance_coef = 10
	instance_create_depth(spawnx+variance, spawny+variance, 0, obj_enemy_swarm)
	tospawn_swarm--
}
if (floor(tospawn_swarm/5) != tospawn_swarm/5){
		alarm_set(3,0.1*room_speed)	
}
else alarm_set(3,(30/tospawn_swarm_total)*(room_speed*10))
