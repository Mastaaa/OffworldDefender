dmg = 15+(level*5)
spd = 0.5+(level*0.5)
range = 60+(level*15)
i = 0

while i < instance_number(obj_enemy){
	enemy = instance_find(obj_enemy, i)
	if distance_to_object(enemy) < range{
		ds_list_add(inrange, enemy.id)
	}
	i++
}

