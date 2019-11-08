spd = 1+(level*0.25)
range = 20+(level*5)
dmg = 10+(level*5)
if active = true and radius <= range{
	i = 0
	while i < instance_number(obj_enemy){
		enemy = instance_find(obj_enemy, i)
		if distance_to_object(enemy) <= radius and enemy.shockwaveoncd = false{
			enemy.enemyhp -= dmg*enemy.enemydmgmult
			enemy.shockwaveoncd = true
		}
		i++
	}
	radius += 3
}
else active = false