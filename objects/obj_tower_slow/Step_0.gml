slow = 0.05+(level*0.05)
range = 20+(level*5)
i = 0

while i < instance_number(obj_enemy){
	enemy = instance_find(obj_enemy, i)
	if distance_to_object(enemy) < range{
		enemy.frostslow = slow
		enemy.image_blend = c_aqua
	}
	else{
		enemy.frostslow = 0
		enemy.image_blend = -1
	}
	i++
}