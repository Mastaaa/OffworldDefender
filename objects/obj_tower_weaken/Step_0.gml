str = level
range = 30+(level*5)
i = 0

while i < instance_number(obj_enemy){
	enemy = instance_find(obj_enemy, i)
	if (distance_to_object(enemy) < range) and (!enemy.weak){
		ds_list_add(inrange, enemy.id)
	}
	i++
}

j = 0

while j < ds_list_size(inrange){
	if distance_to_object(ds_list_find_value(inrange,j)) > range{
		ds_list_delete(inrange, j)
	}
	j++
}